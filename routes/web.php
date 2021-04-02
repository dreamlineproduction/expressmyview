<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', 'HomeController@index')->name('home');

Auth::routes(['verify' => true]);

Route::resource('channel', 'ChannelsController')->except('index');
Route::get('/channels', 'ChannelsController@index')->name('channel.index');
Route::get('/channel/{channel}/about', 'ChannelsController@about')->name('channel.about');

Route::group(['middleware' => ['verified']], function () {
    Route::get('/account', 'UsersController@account')->name('my.account');

    Route::get('/settings', 'UsersController@settings')->name('my.settings');
    Route::match(['put', 'patch'], '/settings', 'UsersController@updateSettings')->name('my.settings.update');

    Route::get('/password', 'UsersController@editPassword')->name('my.password');
    Route::match(['put', 'patch'], '/password', 'UsersController@updatePassword')->name('my.password.update');

    Route::get('/history', 'HistoriesController@index')->name('history.index');
    Route::delete('/history/{history}', 'HistoriesController@remove');

    Route::get('/live-stream/create', 'LiveStreamsController@create')->name('live-stream.create');
    Route::post('/live-stream/store', 'LiveStreamsController@store')->name('live-stream.store');
    Route::get('/live-stream/{stream}/edit', 'LiveStreamsController@edit')->name('live-stream.edit');
    Route::match(['put', 'patch'], '/live-stream/{stream}/update', 'LiveStreamsController@update')->name('live-stream.update');
    Route::delete('/live-stream/{stream}/delete', 'LiveStreamsController@destroy')->name('live-stream.delete');
    Route::post('/live-stream/setlive', 'LiveStreamsController@editLiveStatus')->name('live-stream.setlive');
    Route::post('/live-stream/{stream}/publish', 'LiveStreamsController@publish')->name('live-stream.publish');
    Route::match(['put', 'patch'], '/live-stream/{stream}/update', 'LiveStreamsController@update')->name('live-stream.update');
    Route::post('/live-stream/cloudrecording', 'LiveStreamsController@cloudrecording')->name('live-stream.cloudrecording');

    Route::get('/podcast/create', 'PodcastsController@create')->name('podcast.create');
    Route::post('/podcast/upload', 'PodcastsController@upload')->name('podcast.upload');
    Route::get('/podcast/{podcast}/edit', 'PodcastsController@edit')->name('podcast.edit');
    Route::match(['put', 'patch'], '/podcast/{podcast}/update', 'PodcastsController@update')->name('podcast.update');
    Route::delete('/podcast/{podcast}/delete', 'PodcastsController@destroy')->name('podcast.delete');

    Route::get('/my-podcasts/{type?}', 'PodcastsController@getMyPodcasts')->name('my.podcasts');
    Route::get('/my-livestreams', 'LiveStreamsController@getMyLiveStreams')->name('my.livestreams');
    Route::get('/my-recordedstreams', 'LiveStreamsController@getMyRecordedStreams')->name('my.recordedstreams');

    Route::post('/podcast/{podcast}/comment', 'CommentsController@store')->name('comment.store');
    Route::post('/podcast/comment/{comment}/like', 'CommentsController@like')->name('comment.like');
    Route::delete('/podcast/comment/{comment}', 'CommentsController@destroy')->name('comment.destroy');

    Route::get('/states', 'UsersController@getStates')->name('states.get');

    Route::match(['put', 'patch'], 'channel/{channel}/subscribe', 'SubscriptionsController@changeSubscriptionStatus');
    Route::match(['put', 'patch'], 'podcast/{podcast}/subscribe', 'SubscriptionsController@changeSubscriptionStatus');
    Route::match(['put', 'patch'], 'podcast/{podcast}/like', 'PodcastsController@changeLikeStatus');

    Route::get('/my-subscriptions', 'SubscriptionsController@mySubscriptions')->name('my.subscriptions');
    Route::get('/my-channels', 'ChannelsController@getMyChannels')->name('my.channels');

    Route::delete('/channel/{channel}/delete', 'ChannelsController@destroy')->name('channel.destroy');
    Route::get('channel/{channel}/verify', 'ChannelsController@getVerificationForm')->name('channel.verify.request');
});

Route::get('/live-streams/all', 'LiveStreamsController@index')->name('live-streams.all');
Route::get('/live-stream/watch/{stream}','LiveStreamsController@watch')->name('live-streams.watch');
Route::get('/live-stream/view/{stream}','LiveStreamsController@view')->name('live-streams.view');
Route::get('/live-stream/{stream}', 'LiveStreamsController@show')->name('live-stream.show');
Route::post('/live-stream/views', 'LiveStreamsController@getConnectedViewers')->name('live-stream.views');

Route::get('/podcasts/{type}/{user?}', 'PodcastsController@index')->name('podcast.index');
Route::get('/podcasts/{type?}', 'PodcastsController@index')->name('podcast.index');
Route::get('/podcast/{podcast}', 'PodcastsController@show')->name('podcast.show');
Route::get('/podcast/category/{category}', 'PodcastsController@getPodcastsByCategory')->name('podcast.getByCategory');
Route::get('/podcast/tag/{tag}', 'PodcastsController@getPodcastsByTag')->name('podcast.getByTag');
Route::get('/podcast/{podcast}/comments', 'CommentsController@getComments')->name('comments.get');

Route::get('/search', 'SearchesController@search')->name('search');

//Route::get('/home', 'HomeController@index')->name('home');

Route::group(
    [
        'middleware' => ['auth', 'admin'],
        'namespace' => 'Admin',
        'prefix' => 'admin',
        'as' => 'admin.',
    ],
    function() {
        Route::get('/', 'AdminController@index')->name('dashboard');
        Route::get('/settings', 'AdminController@settings')->name('settings.edit');
        Route::match(['post', 'put', 'patch'], '/settings', 'AdminController@updateSettings')->name('settings.update');
        Route::resource('user', 'UsersController');
        Route::resource('channel', 'ChannelsController');
        Route::resource('category', 'CategoriesController');
        Route::resource('podcast', 'PodcastsController');
        Route::get('/password', 'AdminController@editPassword')->name('password.edit');
        Route::match(['put', 'patch'], '/password', 'AdminController@updatePassword')->name('password.update');
        Route::get('/pages', 'PagesController@index')->name('page.index');
        Route::get('/page/{page}', 'PagesController@edit')->name('page.edit');
        Route::match(['put', 'patch'], '/page/{page}', 'PagesController@update')->name('page.update');
    }
);

Route::get('/page/{page}', 'Admin\PagesController@show')->name('page.show');

Route::get('upload', function() {
    $files = Storage::disk('spaces')->files('uploads');

    return view('upload', compact('files'));
});

Route::post('upload', function() {
    Storage::disk('spaces')->putFile('uploads', request()->file, 'public');

    return redirect()->back();
});
