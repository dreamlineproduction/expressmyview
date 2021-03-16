<?php

namespace App\Http\Controllers\Admin;

use App\Category;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;

class CategoriesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index()
    {
        $categories = Category::all();
        return view('admin.categories.index', compact('categories'));
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
     * @return \Illuminate\Http\RedirectResponse
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required'
        ]);

        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator);
        }

        $category = new Category();
        $category->name = $request->input('name');
        $category->slug = Str::slug($request->input('name'));
        $category->status = $request->input('active') ? 1 : 0;
        if ($category->save()) {
            return redirect()->back()->with('success-msg', 'Category added successfully.');
        } else {
            return redirect()->back()->with('error-msg', 'Category could not be added.');
        }
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
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\RedirectResponse
     */
    public function update(Request $request, Category $category)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required'
        ]);

        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator);
        }

        $category->name = $request->input('name');
        $category->slug = Str::slug($request->input('name'));
        $category->status = $request->input('active') ? 1 : 0;
        if ($category->save()) {
            return redirect()->back()->with('success-msg', 'Category added successfully.');
        } else {
            return redirect()->back()->with('error-msg', 'Category could not be added.');
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Category $category)
    {
        $podcastsCount = $category->podcasts()->count();
        if ($podcastsCount > 0) {
            return redirect()->back()->with('error-msg', 'Category could not be deleted because there are ' . $podcastsCount . ' videos under this category.');
        } elseif ($category->delete()) {
            return redirect()->back()->with('success-msg', 'Category deleted successfully.');
        } else {
            return redirect()->back()->with('error-msg', 'Category could not be deleted.');
        }
    }
}
