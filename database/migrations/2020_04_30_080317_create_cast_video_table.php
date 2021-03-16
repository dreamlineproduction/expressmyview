<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCastVideoTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('cast_video', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('cast_id');
            $table->unsignedBigInteger('video_id');
            $table->timestamps();

            $table->foreign('cast_id')->references('id')->on('casts')->onDelete('cascade');
            $table->foreign('video_id')->references('id')->on('videos')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('cast_video');
    }
}
