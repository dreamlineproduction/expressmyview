<?php

namespace App\Http\Controllers;

use App\Category;
use App\License;
use App\Podcast;
use Carbon\Carbon;
use Illuminate\Http\Request;

class SearchesController extends Controller
{
    public function search(Request $request)
    {
        $query = $request->get('q');

        if (strlen($query) == 0) {
            return redirect()->back();
        }
        
        $category = Category::where('slug', $request->get('category'))->first();
        $created = $request->get('uploaded');
        $duration = $request->get('duration');
        $license = License::where('short_name', urldecode($request->get('license')))->first();
        $orderBy = $request->get('order-by');

        $podcasts = Podcast::select(['id', 'channel_id', 'title', 'description', 'runtime_formatted', 'thumbnail', 'file_type', 'views', 'created_at'])
            ->whereRaw('MATCH (title, description) AGAINST (? IN BOOLEAN MODE)', $query)
            ->when($category, function ($query, $category) {
                return $query->whereHas('categories', function ($query) use ($category) {
                    $query->where('categories.id', $category->id);
                });
            })
            ->when($created, function ($query, $created) {
                if ($created == 'last-hour') {
                    return $query->where('created_at', '>', Carbon::now()->subHour());
                } elseif ($created == 'today') {
                    return $query->where('created_at', '>', Carbon::now()->subDay());
                } elseif ($created == 'this-week') {
                    return $query->where('created_at', '>', Carbon::now()->subWeek());
                } elseif ($created == 'this-month') {
                    return $query->where('created_at', '>', Carbon::now()->subMonth());
                } elseif ($created == 'this-year') {
                    return $query->where('created_at', '>', Carbon::now()->subYear());
                } else {
                    return $query;
                }
            })
            ->when($duration, function ($query, $duration) {
                if ($duration == 'short') {
                    return $query->where('runtime', '<', 240);
                } elseif ($duration == 'long') {
                    return $query->where('runtime', '>', 1200);
                } elseif ($duration == 'medium') {
                    return $query->whereBetween('runtime', [240, 1200]);
                } else {
                    return $query;
                }
            })
            ->when($license, function ($query, $license) {
                if ($license && $license != 'any') {
                    return $query->where('license_id', $license->id);
                } else {
                    return $query;
                }
            })
            ->with('channel')
            ->when($orderBy, function ($query, $orderBy) {
                if ($orderBy == 'upload-date') {
                    return $query->latest();
                } elseif ($orderBy == 'most-popular') {
                    return $query->orderBy('views', 'desc');
                } elseif ($orderBy == 'most-liked') {
                    return $query->orderBy('likes', 'desc');
                } elseif ($orderBy == 'longest') {
                    return $query->orderBy('runtime', 'desc');
                } elseif ($orderBy == 'shortest') {
                    return $query->orderBy('runtime', 'asc');
                } elseif ($orderBy == 'title-asc') {
                    return $query->orderBy('title');
                } elseif ($orderBy == 'title-desc') {
                    return $query->orderBy('title', 'desc');
                } else {
                    return $query;
                }
            })
            ->paginate(12);
        $viewData = [
            'title' => 'Search results for ' . $query,
            'query' => $query,
            'podcasts' => $podcasts,
            'categories' => Category::where('status', 1)->get(),
            'licenses' => License::where('status', 1)->get(),
            'type' => '',
            'selectedCategory' => $category ? $category->id : null,
            'uploaded' => $created,
            'duration' => $duration,
            'selectedLicense' => $license ? $license->id : null,
            'orderBy' => $orderBy
        ];
        return view('users.search', $viewData);
    }
}
