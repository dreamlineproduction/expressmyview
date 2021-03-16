<?php

namespace App\Jobs;

use App\Podcast;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;
use ProtoneMedia\LaravelFFMpeg\Support\FFMpeg;

class ProcessAudioPodcast implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    /**
     * @var Podcast $audio
     */
    protected $audio;

    /**
     * Create a new job instance.
     *
     * @param Podcast $audio
     *
     * @return void
     */
    public function __construct(Podcast $audio)
    {
        $this->audio = $audio;
    }

    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle()
    {
        try {
            FFMpeg::fromDisk('public')
                ->open('/podcast/' . $this->audio->filename)
                ->export()
                ->toDisk('s3')
                ->inFormat(new \FFMpeg\Format\Audio\Mp3())
                ->save('public/podcast/audio/' . $this->audio->filename);

            $this->audio->converted = 1;
            $this->audio->save();

            unlink(storage_path('/app/public/podcast/' . $this->audio->filename));

            /*$ffmpeg = FFMpeg::create();

            $audio = $ffmpeg->open(storage_path('/app/public/podcast/' . $this->audio->filename));
            $format = new \FFMpeg\Format\Audio\Mp3();

            $audio->save($format, storage_path('/app/public/podcast/audio') . '/' . $this->audio->filename);*/
        } catch (\Exception $exception) {
            //
        }
    }
}
