<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddIsliveColumn extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
      Schema::table('live_streams', function (Blueprint $table) {
          $table->boolean('islive');
          $table->string('hostid');
          $table->integer('totalviews');
      });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
      Schema::table('live_streams', function (Blueprint $table) {
          $table->dropColumn('islive');
          $table->dropColumn('hostid');
          $table->dropColumn('totalviews');
      });
    }
}
