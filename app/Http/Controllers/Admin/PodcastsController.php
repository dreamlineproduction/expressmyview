<?php

namespace App\Http\Controllers\Admin;

use App\Cast;
use App\Category;
use App\Http\Controllers\Controller;
use App\Language;
use App\License;
use App\Podcast;
use App\Tag;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;

class PodcastsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $type = $request->input('type');
        $query = Podcast::with('channel', 'user', 'categories');
        if ($type) {
            $query->where('file_type', $type);
        }
        $podcasts = $query->where('status', '!=', 0)->get();
        $viewData = array(
            'podcasts' => $podcasts,
            'heading' => (empty($type) ?: ucfirst($type) . ' ') . 'Podcasts'
        );
        return view('admin.podcasts.index', $viewData);
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
    public function edit(Podcast $podcast)
    {
        $viewData = array(
            'podcast' => $podcast,
            'channels' => $podcast->user->channels,
            'categories' => Category::where('status', 1)->get(),
            'licenses' => License::where('status', 1)->get(),
            'languages' => Language::all(),
            'tags' => $podcast->tags()->get(['name'])->pluck('name')->toArray(),
            'casts' => $podcast->casts()->get(['name'])->pluck('name')->toArray(),
            'selectedCategories' => $podcast->categories()->get(['category_id'])->pluck('category_id')->toArray()
        );
        return view('admin.podcasts.edit', $viewData);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\RedirectResponse
     */
    public function update(Request $request, Podcast $podcast)
    {
        $validator = Validator::make($request->all(), [
            'channel' => 'required',
            'title' => 'required|string',
            'privacy' => 'required',
            'license' => 'required',
            'languages' => 'required',
            'comments_allowed' => 'required',
            'categories' => 'required',
            'thumbnail' => 'nullable|image'
        ]);

        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator);
        } else {
            if ($request->hasFile('thumbnail')) {
                $coverFilename = null;
                $oldCoverFilename = $podcast->thumbnail;
                if ($request->file('thumbnail')->store('public/podcast/thumbnail')) {
                    $coverFilename = $request->file('thumbnail')->hashName();
                    if (!empty($oldCoverFilename)) {
                        Storage::disk('s3')->delete('public/podcast/thumbnail' . $oldCoverFilename);
                    }

                } else {
                    return redirect()->back()->with('error_msg', 'An error occurred. Please try again.');
                }
            } else {
                $coverFilename = $podcast->thumbnail;
            }

            $podcast->channel_id = $request->input('channel');
            $podcast->title = $request->input('title');
            $podcast->description = $request->input('description');
            $podcast->privacy = $request->input('privacy');
            $podcast->license_id = $request->input('license');
            $podcast->comments_allowed = $request->input('comments_allowed');
            $podcast->thumbnail = $coverFilename;
            $podcast->status = $request->input('status') == 'yes' ? 1 : 0;
            DB::beginTransaction();
            try {
                $podcast->save();

                $languages = $request->input('languages');
                $podcast->languages()->sync($languages);

                $categories = $request->input('categories');
                $podcast->categories()->sync($categories);

                $tags = explode(',', $request->input('tags'));
                $tagIds = array();
                foreach ($tags as $tag) {
                    if (!empty($tag)) {
                        $tagDetails = Tag::where('name', $tag)->first();
                        if (!empty($tagDetails)) {
                            $tagIds[] = $tagDetails->id;
                        } else {
                            $newTag = new Tag();
                            $newTag->name = $tag;
                            $newTag->slug = Str::slug($tag);
                            $newTag->save();
                            $tagIds[] = $newTag->id;
                        }
                    }
                }
                $podcast->tags()->sync($tagIds);

                $casts = explode(',', $request->input('cast'));
                $castIds = array();
                foreach ($casts as $cast) {
                    if (!empty($cast)) {
                        $castDetails = Cast::where('name', $cast)->first();
                        if (!empty($castDetails)) {
                            $castIds[] = $castDetails->id;
                        } else {
                            $newCast = new Cast();
                            $newCast->name = $cast;
                            $newCast->slug = Str::slug($cast);
                            $newCast->save();
                            $castIds[] = $newCast->id;
                        }
                    }
                }
                $podcast->casts()->sync($castIds);

                DB::commit();

                return redirect()->back()->with('success_msg', 'Podcast saved successfully.');
            } catch (\Exception $exception) {
                DB::rollBack();

                return redirect()->back()->with('error_msg', 'An error occurred. Please try again.');
            }
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\RedirectResponse
     */
    public function destroy(Podcast $podcast)
    {
        if ($podcast->delete()) {
            Storage::disk('s3')->delete('public/podcast/thumbnail/' . $podcast->thumbnail);
            if ($podcast->file_type == 'video') {
                try {
                    if (Storage::disk('s3')->exists('public/podcast/360/' . $podcast->filename)) {
                        Storage::disk('s3')->delete('public/podcast/360/' . $podcast->filename);
                    }
                    if (Storage::disk('s3')->exists('public/podcast/480/' . $podcast->filename)) {
                        Storage::disk('s3')->delete('public/podcast/480/' . $podcast->filename);
                    }
                    if (Storage::disk('s3')->exists('public/podcast/720/' . $podcast->filename)) {
                        Storage::disk('s3')->delete('public/podcast/720/' . $podcast->filename);
                    }
                    if (Storage::disk('s3')->exists('public/podcast/1080/' . $podcast->filename)) {
                        Storage::disk('s3')->delete('public/podcast/1080/' . $podcast->filename);
                    }

                } catch (\Exception $exception) {
                    //
                }
            } else {
                if (Storage::disk('s3')->exists('public/podcast/audio/' . $podcast->filename)) {
                    Storage::disk('s3')->delete('public/podcast/audio/' . $podcast->filename);
                }
            }

            return redirect()->back()->with('success-msg', 'Podcast deleted successfully.');
        } else {
            return redirect()->back()->with('error-msg', 'An error occurred. Please try again.');
        }
    }
}
