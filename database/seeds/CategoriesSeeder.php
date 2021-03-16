<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class CategoriesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('categories')->insert([
            [
                'name' => 'Art',
                'slug' => 'art'
            ],
            [
                'name' => 'Business',
                'slug' => 'business'
            ],
            [
                'name' => 'Comedy',
                'slug' => 'comedy'
            ],
            [
                'name' => 'Education',
                'slug' => 'education'
            ],
            [
                'name' => 'News',
                'slug' => 'news'
            ],
            [
                'name' => 'photography',
                'slug' => 'Photography'
            ],
            [
                'name' => 'Sports',
                'slug' => 'sports'
            ],
            [
                'name' => 'Technology',
                'slug' => 'technology'
            ],
            [
                'name' => 'Video Game',
                'slug' => 'video-game'
            ]
        ]);
    }
}
