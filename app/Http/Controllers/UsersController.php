<?php

namespace App\Http\Controllers;

use App\LiveStream;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use PragmaRX\Countries\Package\Countries;
use Illuminate\Support\Facades\Storage;

class UsersController extends Controller
{
    public function account()
    {
        $authenticatedUser = Auth::user();
        $podcasts = $authenticatedUser->podcasts()->where('status', 1);
        $podcasts2 = clone $podcasts;
        $streams = LiveStream::where('user_id', $authenticatedUser->id)->latest()->take(4)->get();

        $videos = $podcasts->where('file_type', 'video')->latest()->take(4)->with('channel')->get();
        $audios = $podcasts2->where('file_type', 'audio')->latest()->take(4)->with('channel')->get();

        $viewData = [
            'user' => $authenticatedUser,
            'channels' => $authenticatedUser->channels,
            'videos' => $videos,
            'audios' => $audios,
            'streams' => $streams,
        ];
        return view('users.account', $viewData);
    }

    public function settings()
    {
        $user = Auth::user();
        $user->load('profile');

        $countries = new Countries();
        $allCountries = $countries->all()->sortBy('name.common')->pluck('name.common');

        if (!empty($user->profile->country)) {
            $states = $countries->where('name.common', $user->profile->country)->first()->hydrateStates()->states->sortBy('name')->pluck('name', 'postal');
        } else {
            $states = array();
        }

//        if (!empty($user->profile->state)) {
//            $cities = $countries->where('name.common', $user->profile->billing_country)->first()->hydrateStates()->states->sortBy('name')->pluck('name', 'postal');
//        } else {
//            $cities = null;
//        }

        $viewData = [
            'user' => $user,
            'countries' => $allCountries,
            'states' => $states
        ];
        return view('users.settings', $viewData);
    }

    public function updateSettings(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required|string',
            'phone' => 'required|string',
            'address' => 'required|string',
            'city' => 'required|string',
            'state' => 'required|string',
            'country' => 'required|string',
            'zip' => 'required|string',
            'avatar' => 'nullable|image',
        ]);

        if ($validator->fails()) {
            $errors = $validator->getMessageBag()->toArray();
            $errorsArray = array();
            foreach ($errors as $error) {
                $errorsArray[] = $error[0];
            }

            return new Response(array(
                'status' => 0,
                'message' => '<ul><li>' . implode('</li><li>', $errorsArray) . '</li></ul>'
            ));
        } else {
            $user = Auth::user();

            if ($request->hasFile('avatar')) {
                $avatarFilename = null;
                $oldAvatarFilename = $user->profile->avatar;
                if ($request->file('avatar')->store('public/users/avatar')) {
                    $avatarFilename = $request->file('avatar')->hashName();
                    if (!empty($oldAvatarFilename)) {
                         Storage::disk('s3')->delete('public/users/avatar' . '/' . $oldAvatarFilename);
//                         Storage::delete(storage_path('public/users/avatar') . '/' . $oldAvatarFilename);
                    }

                } else {
                    return new Response([
                        'status' => 0,
                        'message' => 'An error occurred. Please try again.'
                    ]);
                }
            } else {
                $avatarFilename = $user->profile->avatar;
            }

            DB::beginTransaction();
            try {
                $user->name = $request->input('name');
                $user->hide_email = $request->input('hide_email') == 'yes' ? 1 : 0;
                $user->save();

                $profile = $user->profile;
                $profile->phone = $request->input('phone');
                $profile->address = $request->input('address');
                $profile->city = $request->input('city');
                $profile->state = $request->input('state');
                $profile->country = $request->input('country');
                $profile->zip = $request->input('zip');
                $profile->avatar = $avatarFilename;
                $profile->save();

                DB::commit();

                return new Response(array(
                    'status' => 1,
                    'message' => 'Profile updated successfully.'
                ));
            } catch (\Exception $exception) {
                DB::rollBack();

                return new Response([
                    'status' => 0,
                    'message' => 'An error occurred. Please try again.'
                ]);
            }
        }
    }

    public function getStates(Request $request)
    {
        $countryName = $request->input('country');
        if (empty($countryName)) {
            return response()->json([
                'status' => 0,
                'message' => 'Please specify a country.'
            ]);
        } else {
            $countries = new Countries();
            $states = $countries->where('name.common', $countryName)->first()->hydrateStates()->states->sortBy('name')->pluck('name', 'postal');
            $statesOptions = '';
            foreach ($states as $state) {
                $statesOptions .= '<option value="' . $state . '">' . $state . '</option>';
            }

            return response()->json([
                'status' => 1,
                'states' => $statesOptions
            ]);
        }
    }

    public function editPassword()
    {
        $user = Auth::user();
        return view('users.password', compact('user'));
    }

    public function updatePassword(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'current_password' => 'required|string',
            'password' => 'required|min:8|confirmed|string',
        ]);
        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator);
        } else {
            $user = Auth::user();
            if (Hash::check($request->input('current_password'), $user->password)) {
                $user->password = Hash::make($request->input('password'));
                if ($user->save()) {
                    return redirect()->back()->with('success_msg', 'Password updated successfully.');
                } else {
                    return redirect()->back()->with('error_msg', 'Password could not be updated.');
                }
            } else {
                $validator->getMessageBag()->add('current_password', 'Password provided is incorrect.');
                return redirect()->back()->withErrors($validator);
            }
        }
    }
}
