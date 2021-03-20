<?php

/**
 * Returns formatted subscribers count
 *
 * @param int $count
 * @return string
 */
function formatSubscribersCount($count, $precision = 2) {
    if ($count > 1000000) {
        $formattedCount = round($count / 1000000, $precision, PHP_ROUND_HALF_DOWN) . 'M';
    } elseif ($count > 1000) {
        $formattedCount = round($count / 1000, $precision, PHP_ROUND_HALF_DOWN) . 'K';
    } else {
        $formattedCount = $count;
    }
    return $formattedCount;
}

/**
 * Returns formatted views count
 *
 * @param int $count
 * @return string
 */
function formatViewsCount($count, $precision = 2) {
    if ($count > 1000000) {
        $formattedCount = round($count / 1000000, $precision, PHP_ROUND_HALF_DOWN) . 'M';
    } elseif ($count > 1000) {
        $formattedCount = round($count / 1000, $precision, PHP_ROUND_HALF_DOWN) . 'K';
    } else {
        $formattedCount = $count;
    }
    return $formattedCount;
}

/**
 * Returns formatted video runtime
 *
 * @param int $runtime
 * @param bool $short
 * @return string
 */
function formatVideoRuntime($runtime, $short = true) {
    $hours = (int)($runtime / 3600);
    $remainingTime = $runtime - $hours * 3600;
    $minutes = (int)($remainingTime / 60);
    $seconds = (int)($remainingTime - $minutes * 60);
    if ($hours > 0) {
        return $hours . ':' . $minutes . ':' . $seconds;
    } else {
        return $minutes . ':' . $seconds;
    }
}

/**
 * Returns whether a user is subscribed to a channel or not
 *
 * @param int $channelId
 * @param int $userId
 * @return bool
 */
function isSubscribed(int $channelId, int $userId) {
    if (\App\Subscription::where('channel_id', $channelId)->where('user_id', $userId)->count() > 0) {
        return true;
    } else {
        return false;
    }
}

/**
 * Checks whether a user has liked a video or not.
 *
 * @param int $podcastId
 * @param int $userId
 * @return bool
 */
function isLiked(int $podcastId, int $userId) {
    if(\App\Like::where('podcast_id', $podcastId)->where('user_id', $userId)->count() > 0) {
        return true;
    } else {
        return false;
    }
}

/**
 * Checks whether a user has liked a comment or not.
 *
 * @param int $commentId
 * @param int|null $userId
 * @return bool
 */
function isCommentLiked(int $commentId, int $userId = null) {
    if (!\Illuminate\Support\Facades\Auth::check()) {
        return false;
    } else {
        if (!$userId) {
            $userId = \Illuminate\Support\Facades\Auth::user()->id;

            $liked = \App\CommentLike::where('comment_id', $commentId)->where('user_id', $userId)->count();
            if ($liked == 0) {
                return false;
            } else {
                return true;
            }
        }
    }
}

function time_elapsed_string($datetime, $full=false){
    $now = new DateTime;
    $ago = new DateTime($datetime);
    $diff = $now->diff($ago);

    $diff->w = floor($diff->d / 7);
    $diff->d -= $diff->w * 7;

    $string = array(
        'y' => 'year',
        'm' => 'month',
        'w' => 'week',
        'd' => 'day',
        'h' => 'hour',
        'i' => 'minute',
        's' => 'second',
    );
    foreach ($string as $k => &$v) {
        if ($diff->$k) {
            $v = $diff->$k . ' ' . $v . ($diff->$k > 1 ? 's' : '');
        } else {
            unset($string[$k]);
        }
    }

    if (!$full) $string = array_slice($string, 0, 1);
    return $string ? implode(', ', $string) . ' ago' : 'just now';
}

function getSetting(string $settingName) {
    return \Illuminate\Support\Facades\DB::table('settings')->where('setting_name', $settingName)->value('setting_value');
}

function getFile($file) {
    $file = \Illuminate\Support\Facades\Storage::disk('s3')->get($file);
    $mimetype = \GuzzleHttp\Psr7\mimetype_from_filename($file);
    $headers = [
        'Content-Type' => $mimetype,
    ];
    return response($file, 200, $headers);
}
