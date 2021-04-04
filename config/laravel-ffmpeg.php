<?php

return [
    'ffmpeg' => [
        // Local Path Windows
        // 'binaries' => env('FFMPEG_BINARIES', 'C:\ffmpeg\bin\ffmpeg.exe'),
        // Local Path Mac
        // 'binaries' => env('FFMPEG_BINARIES', '/usr/local/bin/ffmpeg'),
        // Server Path
        'binaries' => env('FFMPEG_BINARIES', '/usr/bin/ffmpeg'),
        'threads'  => 12,
    ],

    'ffprobe' => [
        // Local Path Windows
        // 'binaries' => env('FFMPEG_BINARIES', 'C:\ffmpeg\bin\ffmpeg.exe'),
        // Local Path Mac
        // 'binaries' => env('FFMPEG_BINARIES', '/usr/local/bin/ffmpeg'),
        // Server Path
        'binaries' => env('FFPROBE_BINARIES', '/usr/bin/ffprobe'),
    ],

    'timeout' => 3600,

    'enable_logging' => true,
];