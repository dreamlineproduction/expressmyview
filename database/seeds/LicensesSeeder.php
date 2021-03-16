<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class LicensesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('licenses')->insert([
            [
                'name' => 'Standard Myview License',
                'short_name' => 'Standard Myview',
                'content' => '',
                'created_at' => \Carbon\Carbon::now()->toDateTimeString(),
                'updated_at' => \Carbon\Carbon::now()->toDateTimeString(),
            ],
            [
                'name' => 'Creative Commons Attribution',
                'short_name' => 'CC BY',
                'content' => '',
                'created_at' => \Carbon\Carbon::now()->toDateTimeString(),
                'updated_at' => \Carbon\Carbon::now()->toDateTimeString(),
            ],
            [
                'name' => 'Creative Commons Attribution-ShareAlike',
                'short_name' => 'CC BY-SA',
                'content' => '',
                'created_at' => \Carbon\Carbon::now()->toDateTimeString(),
                'updated_at' => \Carbon\Carbon::now()->toDateTimeString(),
            ],
            [
                'name' => 'Creative Commons Attribution-NoDerivs',
                'short_name' => 'CC BY-ND',
                'content' => '',
                'created_at' => \Carbon\Carbon::now()->toDateTimeString(),
                'updated_at' => \Carbon\Carbon::now()->toDateTimeString(),
            ],
            [
                'name' => 'Creative Commons Attribution-NonCommercial',
                'short_name' => 'CC BY-NC',
                'content' => '',
                'created_at' => \Carbon\Carbon::now()->toDateTimeString(),
                'updated_at' => \Carbon\Carbon::now()->toDateTimeString(),
            ],
            [
                'name' => 'Creative Commons Attribution-NonCommercial-ShareAlike',
                'short_name' => 'CC BY-NC-SA',
                'content' => '',
                'created_at' => \Carbon\Carbon::now()->toDateTimeString(),
                'updated_at' => \Carbon\Carbon::now()->toDateTimeString(),
            ],
            [
                'name' => 'Creative Commons Attribution-NonCommercial-NoDerivs',
                'short_name' => 'CC BY-NC-ND',
                'content' => '',
                'created_at' => \Carbon\Carbon::now()->toDateTimeString(),
                'updated_at' => \Carbon\Carbon::now()->toDateTimeString(),
            ],
        ]);
    }
}
