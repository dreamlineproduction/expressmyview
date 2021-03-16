<?php

namespace App\Jobs;

use App\Podcast;
use FFMpeg\Coordinate\Dimension;
use FFMpeg\Filters\Video\VideoFilters;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Storage;
use ProtoneMedia\LaravelFFMpeg\Support\FFMpeg;

class ProcessPodcast implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    /**
     * @var Podcast $video
     */
    protected $video;
    /**
     * @var int $width
     */
    protected $width;
    /**
     * @var int $height
     */
    protected $height;

    /**
     * Create a new job instance.
     *
     * @param Podcast $video
     * @param int $width
     * @param int $height
     *
     * @return void
     */
    public function __construct(Podcast $video, int $width, int $height)
    {
        $this->video = $video->withoutRelations();
        $this->width = $width;
        $this->height = $height;
    }

    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle()
    {
        try {
            $media = FFMpeg::fromDisk('public')
                ->open('/podcast/' . $this->video->filename);
            $format = new \FFMpeg\Format\Video\X264('libmp3lame');

            if ($this->width >= 640) {
                FFMpeg::fromDisk('public')
                    ->open('/podcast/' . $this->video->filename)
                    ->addFilter(function (VideoFilters $filters) {
                        $filters->resize(new Dimension(640, 360));
                    })
                    ->export()
                    ->toDisk('s3')
                    ->inFormat($format)
                    ->save('public/podcast/360/' . $this->video->filename);
//                $this->video->video_360p = Storage::disk('s3')->url('public/podcast/360/' . $this->video->filename);
                $this->video->converted = 360;
                $this->video->save();
            }
            if ($this->width >= 854) {
                FFMpeg::fromDisk('public')
                    ->open('/podcast/' . $this->video->filename)
                    ->addFilter(function (VideoFilters $filters) {
                        $filters->resize(new Dimension(854, 480));
                    })
                    ->export()
                    ->toDisk('s3')
                    ->inFormat($format)
                    ->save('public/podcast/480/' . $this->video->filename);
                $this->video->converted = 480;
                $this->video->save();
            }
            if ($this->width >= 1280) {
                FFMpeg::fromDisk('public')
                    ->open('/podcast/' . $this->video->filename)
                    ->addFilter(function (VideoFilters $filters) {
                        $filters->resize(new Dimension(1280, 720));
                    })
                    ->export()
                    ->toDisk('s3')
                    ->inFormat($format)
                    ->save('public/podcast/720/' . $this->video->filename);
                $this->video->converted = 720;
                $this->video->save();
            }
            if ($this->width >= 1920) {
                FFMpeg::fromDisk('public')
                    ->open('/podcast/' . $this->video->filename)
                    ->addFilter(function (VideoFilters $filters) {
                        $filters->resize(new Dimension(1920, 1080));
                    })
                    ->export()
                    ->toDisk('s3')
                    ->inFormat($format)
                    ->save('public/podcast/1080/' . $this->video->filename);
                $this->video->converted = 1080;
                $this->video->save();
            }

            unlink(storage_path('/app/public/podcast/' . $this->video->filename));

            /*$ffmpeg = FFMpeg::create();

            $video = $ffmpeg->open(storage_path('/app/public/podcast/' . $this->video->filename));
            $format = new \FFMpeg\Format\Video\X264('libmp3lame');
            if ($this->width >= 1920) {
                $video
                    ->filters()
                    ->resize(new \FFMpeg\Coordinate\Dimension(1920, 1080))
                    ->synchronize();
                $p1080Path = storage_path('/app/public/podcast/1080');
                if (!file_exists($p1080Path)) {
                    mkdir($p1080Path, 0777, true);
                }
                $video->save($format, $p1080Path . '/' . $this->video->filename);
                $this->video->video_1080p = url('/storage/podcast/1080/' . $this->video->filename);
            }
            if ($this->width >= 1280) {
                $video
                    ->filters()
                    ->resize(new \FFMpeg\Coordinate\Dimension(1280, 720))
                    ->synchronize();
                $p720Path = storage_path('/app/public/podcast/720');
                if (!file_exists($p720Path)) {
                    mkdir($p720Path, 0777, true);
                }
                $video->save($format, $p720Path . '/' . $this->video->filename);
                $this->video->video_720p = url('/storage/podcast/720/' . $this->video->filename);
            }
            if ($this->width >= 854) {
                $video
                    ->filters()
                    ->resize(new \FFMpeg\Coordinate\Dimension(854, 480))
                    ->synchronize();
                $p480Path = storage_path('/app/public/podcast/480');
                if (!file_exists($p480Path)) {
                    mkdir($p480Path, 0777, true);
                }
                $video->save($format, $p480Path . '/' . $this->video->filename);
                $this->video->video_480p = url('/storage/podcast/480/' . $this->video->filename);
            }
            if ($this->width >= 640) {
                $video
                    ->filters()
                    ->resize(new \FFMpeg\Coordinate\Dimension(640, 360))
                    ->synchronize();
                $p360Path = storage_path('/app/public/podcast/360');
                if (!file_exists($p360Path)) {
                    mkdir($p360Path, 0777, true);
                }
                $video->save($format, $p360Path . '/' . $this->video->filename);
                $this->video->video_360p = url('/storage/podcast/360/' . $this->video->filename);
            }*/

        } catch (\Exception $exception) {
            Log::error(print_r($exception, true));
        }
    }
}
