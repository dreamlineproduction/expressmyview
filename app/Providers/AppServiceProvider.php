<?php

namespace App\Providers;

use App\Channel;
use App\Setting;
use App\Subscription;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        view()->composer('partials.sidebar', function ($view) {
            if (Auth::check()) {
                $subscriptions = Channel::whereIn(
                    'id', Subscription::where('user_id', Auth::user()->id)->get(['channel_id'])->pluck('channel_id')->toArray()
                )->get();
            } else {
                $subscriptions = null;
            }
            $view->with('subscriptions', $subscriptions);
        });

        view()->composer('layouts.*', function ($view) {
            $settings = Setting::whereIn('setting_name', ['facebook_link', 'youtube_link', 'twitter_link'])->get();
            $settingsArray = array();
            foreach ($settings as $setting) {
                $settingsArray[$setting->setting_name] = $setting->setting_value;
            }
            $view->with('settings', $settingsArray);
        });
    }
}
