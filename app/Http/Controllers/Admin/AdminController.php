<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Setting;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class AdminController extends Controller
{
    public function index()
    {
        return view('admin.dashboard');
    }

    public function settings()
    {
        $settings = Setting::all();
        return view('admin.settings', compact('settings'));
    }

    public function updateSettings(Request $request)
    {
        $newSettings = $request->input('setting');
        foreach ($newSettings as $settingName => $settingValue) {
            DB::table('settings')->where('setting_name', $settingName)->update(['setting_value' => $settingValue ?: '']);
        }
        return redirect()->back()->with('success-msg', 'Settings updated successfully.');
    }

    public function editPassword()
    {
        return view('admin.password');
    }

    public function updatePassword(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'current_password' => 'required',
            'new_password' => 'required|confirmed',
        ]);

        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator);
        } else {
            $user = Auth::user();
            if (Hash::check($request->input('current_password'), $user->password)) {
                $user->password = Hash::make($request->input('password'));
                if ($user->save()) {
                    return redirect()->back()->with('success-msg', 'Password updated successfully.');
                } else {
                    return redirect()->back()->with('error_msg', 'An error occurred. Please try again.');
                }
            } else {
                return redirect()->back()->with('error_msg', 'Incorrect password provided.');
            }
        }
    }
}
