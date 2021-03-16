<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCastLiveStreamTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('cast_live_stream', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('cast_id');
            $table->unsignedBigInteger('live_stream_id');
            $table->timestamps();

            $table->foreign('cast_id')->references('id')->on('casts')->onDelete('cascade');
            $table->foreign('live_stream_id')->references('id')->on('live_streams')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('cast_live_stream');
    }
}
