<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class PageSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('pages')->insert([
            [
                'title' => 'Terms & Conditions',
                'slug' => \Illuminate\Support\Str::slug('Terms & Conditions'),
                'content' => '',
                'status' => 1,
                'created_at' => \Carbon\Carbon::now()->toDateTimeString(),
                'updated_at' => \Carbon\Carbon::now()->toDateTimeString(),
            ],
            [
                'title' => 'Privacy Policy',
                'slug' => \Illuminate\Support\Str::slug('Privacy Policy'),
                'content' => '',
                'status' => 1,
                'created_at' => \Carbon\Carbon::now()->toDateTimeString(),
                'updated_at' => \Carbon\Carbon::now()->toDateTimeString(),
            ],
            [
                'title' => 'Cookie Policy',
                'slug' => \Illuminate\Support\Str::slug('Cookie Policy'),
                'content' => '',
                'status' => 1,
                'created_at' => \Carbon\Carbon::now()->toDateTimeString(),
                'updated_at' => \Carbon\Carbon::now()->toDateTimeString(),
            ],
        ]);
    }
}
