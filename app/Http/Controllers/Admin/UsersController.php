<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;
use PragmaRX\Countries\Package\Countries;

class UsersController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index()
    {
        $users = User::with('profile')->withCount('channels')->get();
        $viewData = array(
            'users' => $users
        );
        return view('admin.users.index', $viewData);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function edit(User $user)
    {
        $user->load('profile');
        $countries = new Countries();
        $allCountries = $countries->all()->sortBy('name.common')->pluck('name.common');
        if (!empty($user->profile->country)) {
            $states = $countries->where('name.common', $user->profile->country)->first()->hydrateStates()->states->sortBy('name')->pluck('name', 'postal');
        } else {
            $states = array();
        }

        $viewData = array(
            'user' => $user,
            'countries' => $allCountries,
            'states' => $states
        );
        return view('admin.users.edit', $viewData);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param User $user
     * @return \Illuminate\Http\RedirectResponse|Response
     */
    public function update(Request $request, User $user)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required|string',
            'email' => 'required|email',
            'phone' => 'required|string',
            'address' => 'required|string',
            'city' => 'required|string',
            'state' => 'required|string',
            'country' => 'required|string',
            'zip' => 'required|string',
            'avatar' => 'nullable|image',
        ]);

        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator);
        } else {
            if ($request->hasFile('avatar')) {
                $avatarFilename = null;
                $oldAvatarFilename = $user->profile->avatar;
                if ($request->file('avatar')->store('public/users/avatar')) {
                    $avatarFilename = $request->file('avatar')->hashName();
                    if (!empty($oldAvatarFilename)) {
                        Storage::disk('s3')->delete('public/users/avatar' . '/' . $oldAvatarFilename);
                    }

                } else {
                    return redirect()->back()->with('error-msg', 'An error occurred. Please try again.');
                }
            } else {
                $avatarFilename = $user->profile->avatar;
            }

            DB::beginTransaction();
            try {
                $user->name = $request->input('name');
                if ($request->input('email') != $user->email) {
                    $user->email = $request->input('email');
                    $user->email_verified_at = null;
                }
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

                return redirect()->back()->with('success-msg', 'Profile updated successfully.');
            } catch (\Exception $exception) {
                DB::rollBack();

                return redirect()->back()->with('error-msg', 'An error occurred. Please try again.');
            }
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param User $user
     * @return \Illuminate\Http\RedirectResponse|Response
     * @throws \Exception
     */
    public function destroy(User $user)
    {
        $avatar = $user->profile->avatar;
        if ($user->delete()) {
            if (!empty($avatar) && file_exists(storage_path('/app/public/users/avatar') . '/' . $avatar)) {
                Storage::disk('s3')->delete('public/users/avatar' . '/' . $avatar);
            }

            return redirect()->back()->with('success-msg', 'User deleted successfully.');
        } else {
            return redirect()->back()->with('error-msg', 'User could not be deleted.');
        }
    }
}
