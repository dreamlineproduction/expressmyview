<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateLiveStreamsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('live_streams', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('user_id')->nullable();
            $table->unsignedBigInteger('channel_id')->nullable();
            $table->string('title');
            $table->text('description');
            $table->string('stream_id');
            $table->string('stream_key');
            $table->tinyInteger('privacy')->comment('0-Private, 1-Public')->default(1)->nullable();
            $table->unsignedBigInteger('license_id')->nullable();
            $table->boolean('monetize')->default(false)->nullable();
            $table->boolean('comments_allowed')->default(true)->nullable();
            $table->string('thumbnail')->nullable();
            $table->unsignedBigInteger('views')->default(0);
            $table->unsignedInteger('likes')->default(0);
            $table->unsignedInteger('dislikes')->default(0);
            $table->unsignedInteger('comments_count')->default(0);
            $table->timestamps();

            $table->foreign('user_id')->references('id')->on('users')->onDelete('set null');
            $table->foreign('channel_id')->references('id')->on('channels')->onDelete('set null');
            $table->foreign('license_id')->references('id')->on('licenses')->onDelete('set null');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('live_streams');
    }
}
