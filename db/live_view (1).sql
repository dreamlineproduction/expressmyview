-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 20, 2020 at 04:48 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `live_view`
--

-- --------------------------------------------------------

--
-- Table structure for table `casts`
--

CREATE TABLE `casts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `casts`
--

INSERT INTO `casts` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(3, 'Ram Smith', 'ram-smith', '2020-05-03 08:40:13', '2020-05-03 08:40:13'),
(4, 'Sam Smith', 'sam-smith', '2020-05-03 08:40:13', '2020-05-03 08:40:13'),
(5, 'coach', 'coach', '2020-05-04 06:59:43', '2020-05-04 06:59:43'),
(6, 'joe', 'joe', '2020-05-04 06:59:43', '2020-05-04 06:59:43');

-- --------------------------------------------------------

--
-- Table structure for table `cast_live_stream`
--

CREATE TABLE `cast_live_stream` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cast_id` bigint(20) UNSIGNED NOT NULL,
  `live_stream_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cast_podcast`
--

CREATE TABLE `cast_podcast` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cast_id` bigint(20) UNSIGNED NOT NULL,
  `podcast_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Business', 'business', 1, NULL, NULL),
(2, 'Comedy', 'comedy', 1, NULL, NULL),
(3, 'Education', 'education', 1, NULL, NULL),
(4, 'News', 'news', 1, NULL, NULL),
(5, 'Sports & Fitness', 'sports-fitness', 1, NULL, '2020-07-20 07:08:22'),
(6, 'Technology', 'technology', 1, NULL, NULL),
(7, 'Fashion', 'fashion', 1, '2020-07-20 07:07:46', '2020-07-20 07:07:46');

-- --------------------------------------------------------

--
-- Table structure for table `category_live_stream`
--

CREATE TABLE `category_live_stream` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `live_stream_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_live_stream`
--

INSERT INTO `category_live_stream` (`id`, `category_id`, `live_stream_id`, `created_at`, `updated_at`) VALUES
(1, 2, 3, NULL, NULL),
(2, 3, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category_podcast`
--

CREATE TABLE `category_podcast` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `podcast_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_podcast`
--

INSERT INTO `category_podcast` (`id`, `category_id`, `podcast_id`, `created_at`, `updated_at`) VALUES
(11, 3, 2, NULL, NULL),
(14, 1, 9, NULL, NULL),
(15, 3, 9, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `channels`
--

CREATE TABLE `channels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pinterest` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tiktok` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `subscribers` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `channels`
--

INSERT INTO `channels` (`id`, `user_id`, `name`, `description`, `logo`, `banner`, `facebook`, `twitter`, `youtube`, `instagram`, `pinterest`, `linkedin`, `tiktok`, `status`, `subscribers`, `created_at`, `updated_at`) VALUES
(1, 1, 'Test Channel', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum vestibulum justo eget neque hendrerit sollicitudin. Proin hendrerit ex consectetur risus rhoncus, malesuada pretium odio mattis. Donec et tellus venenatis, pulvinar tellus at, pellentesque quam. Proin at nulla dui. Suspendisse elementum lorem vitae blandit dictum. Vestibulum ornare purus non dolor suscipit scelerisque. Integer molestie augue sollicitudin risus sagittis porta. Aenean eu aliquet est. Quisque condimentum lorem eu blandit lacinia. Pellentesque tempus, lorem nec porttitor aliquet, libero arcu ornare tortor, ut sollicitudin magna nulla vel quam. Donec volutpat turpis eu tristique tincidunt. Suspendisse felis mauris, dictum ut magna id, tristique gravida diam. Vivamus lobortis ac neque sit amet ultricies. Sed id neque in nunc tincidunt vehicula. In lobortis finibus leo, in aliquam lorem finibus at.', 'rKUleO1XL7dEI6oEWHsv7ZTFFcLBFtU4vijonuVA.png', 'pr1edSTcoe9yhFAz8L66lyo2hKnuSmVWeawug0Xs.jpeg', 'https://www.facebook.com/CDPROJEKTRED/', 'https://twitter.com/CDPROJEKTRED', NULL, NULL, NULL, NULL, NULL, 1, 0, '2020-03-21 05:49:16', '2020-03-21 05:49:16'),
(2, 1, 'Test Channel 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus congue nec nisi nec vestibulum. Donec vitae facilisis ex. Maecenas sagittis pharetra elementum. Nulla facilisi. Nam sit amet sapien venenatis, posuere tortor eget, molestie dolor. Morbi commodo nisi nibh, sed facilisis urna blandit at. Aenean accumsan, magna ac malesuada porttitor, ante nulla vehicula ligula, vel pellentesque leo diam ullamcorper urna. Sed sed volutpat dui, egestas eleifend urna. Maecenas lacinia volutpat lorem, sed sollicitudin eros eleifend eget. Proin vulputate mollis ultricies. Etiam ut vulputate nibh, ac efficitur risus. Suspendisse accumsan augue nisi, id mattis metus pharetra ut. Pellentesque ac augue arcu. Nulla vestibulum libero sed nulla euismod pulvinar. Praesent nec dui ornare, accumsan ante non, feugiat nisi. Nunc sit amet erat tristique ex maximus porttitor nec ut purus.', 'xLXvYYaEJGaIoz49FjDGpruIh3OEUWSxrSIBZWMI.png', 'Y69TA3Vd86P99WWD8K7EYpEwFdsrk358lgHqy11N.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2020-04-12 10:11:51', '2020-04-12 10:11:51');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `podcast_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `likes` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `podcast_id`, `user_id`, `parent_id`, `message`, `likes`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 1, NULL, 'This is a test.', 0, 1, '2020-06-06 08:42:17', '2020-06-06 08:42:17'),
(2, 2, 1, NULL, 'This is another test comment.', 0, 1, '2020-06-06 08:43:58', '2020-06-06 08:43:58'),
(3, 9, 1, NULL, 'This is a test comment for the audio podcast.', 0, 1, '2020-06-26 04:34:16', '2020-06-26 04:34:16'),
(4, 9, 1, NULL, 'This is another test comment.', 0, 1, '2020-06-26 04:35:42', '2020-06-26 04:35:42'),
(5, 9, 1, NULL, 'This is yet another test comment. (3)', 0, 1, '2020-06-26 04:50:51', '2020-06-26 04:50:51'),
(6, 9, 1, NULL, 'Fourth comment.', 0, 1, '2020-06-26 04:57:56', '2020-06-26 04:57:56'),
(7, 9, 1, NULL, 'Fifth comment.', 0, 1, '2020-06-26 05:21:20', '2020-06-26 05:21:20'),
(9, 9, 1, NULL, 'Corporis deserunt quod dolor ut. Quibusdam dolorem voluptates voluptatem aut dolorem consequatur non. Dolor adipisci asperiores a modi voluptatem et commodi.', 0, 1, '2020-06-27 12:49:42', '2020-06-27 12:49:42');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `failed_jobs`
--

INSERT INTO `failed_jobs` (`id`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(1, 'database', 'default', '{\"uuid\":\"c31974d7-0375-42cd-990b-b9d2ee96745f\",\"displayName\":\"App\\\\Jobs\\\\ProcessPodcast\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\ProcessPodcast\",\"command\":\"O:23:\\\"App\\\\Jobs\\\\ProcessPodcast\\\":11:{s:8:\\\"\\u0000*\\u0000video\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:9:\\\"App\\\\Video\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:8:\\\"\\u0000*\\u0000width\\\";i:1280;s:9:\\\"\\u0000*\\u0000height\\\";i:720;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Alchemy\\BinaryDriver\\Exception\\ExecutionFailureException: ffmpeg failed to execute command C:\\ffmpeg\\bin\\ffmpeg.EXE -y -i \"C:\\xampp\\htdocs\\live_view\\storage\\/app/public/podcast/nWlJpL92oq.mp4\" -async 1 -metadata:s:v:0 start_time=0 -vcodec libx264 -acodec libfaac -b:v 1000k -refs 6 -coder 1 -sc_threshold 40 -flags +loop -me_range 16 -subq 7 -i_qfactor 0.71 -qcomp 0.6 -qdiff 4 -trellis 1 -b:a 128k -vf \"[in]scale=854:480 [out]\" -pass 1 -passlogfile \"C:\\Users\\Deb\\AppData\\Local\\Temp\\ffmpeg-passes5ebe9074033ace2pby/pass-5ebe907403645\" \"C:\\xampp\\htdocs\\live_view\\storage\\/app/public/podcast/480/nWlJpL92oq.mp4\":\n\nError Output:\n\n ffmpeg version git-2020-03-27-e34157f Copyright (c) 2000-2020 the FFmpeg developers\r\n  built with gcc 9.2.1 (GCC) 20200122\r\n  configuration: --enable-gpl --enable-version3 --enable-sdl2 --enable-fontconfig --enable-gnutls --enable-iconv --enable-libass --enable-libdav1d --enable-libbluray --enable-libfreetype --enable-libmp3lame --enable-libopencore-amrnb --enable-libopencore-amrwb --enable-libopenjpeg --enable-libopus --enable-libshine --enable-libsnappy --enable-libsoxr --enable-libsrt --enable-libtheora --enable-libtwolame --enable-libvpx --enable-libwavpack --enable-libwebp --enable-libx264 --enable-libx265 --enable-libxml2 --enable-libzimg --enable-lzma --enable-zlib --enable-gmp --enable-libvidstab --enable-libvorbis --enable-libvo-amrwbenc --enable-libmysofa --enable-libspeex --enable-libxvid --enable-libaom --enable-libmfx --enable-ffnvcodec --enable-cuda-llvm --enable-cuvid --enable-d3d11va --enable-nvenc --enable-nvdec --enable-dxva2 --enable-avisynth --enable-libopenmpt --enable-amf\r\n  libavutil      56. 42.101 / 56. 42.101\r\n  libavcodec     58. 76.100 / 58. 76.100\r\n  libavformat    58. 42.100 / 58. 42.100\r\n  libavdevice    58.  9.103 / 58.  9.103\r\n  libavfilter     7. 77.100 /  7. 77.100\r\n  libswscale      5.  6.101 /  5.  6.101\r\n  libswresample   3.  6.100 /  3.  6.100\r\n  libpostproc    55.  6.100 / 55.  6.100\r\n[mov,mp4,m4a,3gp,3g2,mj2 @ 00000230a867ed40] st: 0 edit list: 1 Missing key frame while searching for timestamp: 0\r\n[mov,mp4,m4a,3gp,3g2,mj2 @ 00000230a867ed40] st: 0 edit list 1 Cannot find an index entry before timestamp: 0.\r\nInput #0, mov,mp4,m4a,3gp,3g2,mj2, from \'C:\\xampp\\htdocs\\live_view\\storage\\/app/public/podcast/nWlJpL92oq.mp4\':\r\n  Metadata:\r\n    major_brand     : mp42\r\n    minor_version   : 0\r\n    compatible_brands: mp42mp41\r\n    creation_time   : 2014-07-18T06:00:15.000000Z\r\n  Duration: 00:00:21.29, start: 0.000000, bitrate: 14904 kb/s\r\n    Stream #0:0(eng): Video: h264 (High) (avc1 / 0x31637661), yuv420p(tv, bt709), 1280x720 [SAR 1:1 DAR 16:9], 14517 kb/s, 25 fps, 25 tbr, 25k tbn, 50 tbc (default)\r\n    Metadata:\r\n      creation_time   : 2014-07-18T06:00:15.000000Z\r\n      handler_name    : ?Mainconcept Video Media Handler\r\n      encoder         : AVC Coding\r\n    Stream #0:1(eng): Audio: aac (LC) (mp4a / 0x6134706D), 48000 Hz, stereo, fltp, 189 kb/s (default)\r\n    Metadata:\r\n      creation_time   : 2014-07-18T06:00:15.000000Z\r\n      handler_name    : #Mainconcept MP4 Sound Media Handler\r\nUnknown encoder \'libfaac\'\r\n in C:\\xampp\\htdocs\\live_view\\vendor\\alchemy\\binary-driver\\src\\Alchemy\\BinaryDriver\\ProcessRunner.php:95\nStack trace:\n#0 C:\\xampp\\htdocs\\live_view\\vendor\\alchemy\\binary-driver\\src\\Alchemy\\BinaryDriver\\ProcessRunner.php(73): Alchemy\\BinaryDriver\\ProcessRunner->doExecutionFailure(\'C:\\\\ffmpeg\\\\bin\\\\f...\', \'ffmpeg version ...\')\n#1 C:\\xampp\\htdocs\\live_view\\vendor\\alchemy\\binary-driver\\src\\Alchemy\\BinaryDriver\\AbstractBinary.php(207): Alchemy\\BinaryDriver\\ProcessRunner->run(Object(Symfony\\Component\\Process\\Process), Object(SplObjectStorage), false)\n#2 C:\\xampp\\htdocs\\live_view\\vendor\\alchemy\\binary-driver\\src\\Alchemy\\BinaryDriver\\AbstractBinary.php(136): Alchemy\\BinaryDriver\\AbstractBinary->run(Object(Symfony\\Component\\Process\\Process), false, Array)\n#3 C:\\xampp\\htdocs\\live_view\\vendor\\php-ffmpeg\\php-ffmpeg\\src\\FFMpeg\\Media\\AbstractVideo.php(96): Alchemy\\BinaryDriver\\AbstractBinary->command(Array, false, Array)\n#4 C:\\xampp\\htdocs\\live_view\\app\\Jobs\\ProcessPodcast.php(87): FFMpeg\\Media\\AbstractVideo->save(Object(FFMpeg\\Format\\Video\\X264), \'C:\\\\xampp\\\\htdocs...\')\n#5 [internal function]: App\\Jobs\\ProcessPodcast->handle()\n#6 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(33): call_user_func_array(Array, Array)\n#7 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#8 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(91): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#9 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#10 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(592): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#11 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(94): Illuminate\\Container\\Container->call(Array)\n#12 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\ProcessPodcast))\n#13 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\ProcessPodcast))\n#14 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#15 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(83): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\ProcessPodcast), false)\n#16 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\ProcessPodcast))\n#17 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\ProcessPodcast))\n#18 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(85): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#19 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(59): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\ProcessPodcast))\n#20 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#21 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(356): Illuminate\\Queue\\Jobs\\Job->fire()\n#22 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(306): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#23 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(132): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#24 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#25 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#26 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#27 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(33): call_user_func_array(Array, Array)\n#28 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#29 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(91): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#30 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#31 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(592): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#32 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(134): Illuminate\\Container\\Container->call(Array)\n#33 C:\\xampp\\htdocs\\live_view\\vendor\\symfony\\console\\Command\\Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#34 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#35 C:\\xampp\\htdocs\\live_view\\vendor\\symfony\\console\\Application.php(912): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#36 C:\\xampp\\htdocs\\live_view\\vendor\\symfony\\console\\Application.php(264): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#37 C:\\xampp\\htdocs\\live_view\\vendor\\symfony\\console\\Application.php(140): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#38 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#39 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#40 C:\\xampp\\htdocs\\live_view\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#41 {main}\n\nNext FFMpeg\\Exception\\RuntimeException: Encoding failed in C:\\xampp\\htdocs\\live_view\\vendor\\php-ffmpeg\\php-ffmpeg\\src\\FFMpeg\\Media\\AbstractVideo.php:106\nStack trace:\n#0 C:\\xampp\\htdocs\\live_view\\app\\Jobs\\ProcessPodcast.php(87): FFMpeg\\Media\\AbstractVideo->save(Object(FFMpeg\\Format\\Video\\X264), \'C:\\\\xampp\\\\htdocs...\')\n#1 [internal function]: App\\Jobs\\ProcessPodcast->handle()\n#2 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(33): call_user_func_array(Array, Array)\n#3 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#4 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(91): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#5 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#6 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(592): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#7 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(94): Illuminate\\Container\\Container->call(Array)\n#8 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\ProcessPodcast))\n#9 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\ProcessPodcast))\n#10 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#11 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(83): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\ProcessPodcast), false)\n#12 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\ProcessPodcast))\n#13 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\ProcessPodcast))\n#14 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(85): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#15 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(59): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\ProcessPodcast))\n#16 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#17 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(356): Illuminate\\Queue\\Jobs\\Job->fire()\n#18 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(306): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#19 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(132): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#20 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#21 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#22 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#23 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(33): call_user_func_array(Array, Array)\n#24 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#25 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(91): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#26 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#27 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(592): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#28 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(134): Illuminate\\Container\\Container->call(Array)\n#29 C:\\xampp\\htdocs\\live_view\\vendor\\symfony\\console\\Command\\Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#30 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#31 C:\\xampp\\htdocs\\live_view\\vendor\\symfony\\console\\Application.php(912): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 C:\\xampp\\htdocs\\live_view\\vendor\\symfony\\console\\Application.php(264): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 C:\\xampp\\htdocs\\live_view\\vendor\\symfony\\console\\Application.php(140): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#35 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#36 C:\\xampp\\htdocs\\live_view\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#37 {main}', '2020-05-15 07:22:04'),
(2, 'database', 'default', '{\"uuid\":\"4d5249e6-b2b8-4e6c-b67b-b4cea83c69fa\",\"displayName\":\"App\\\\Jobs\\\\ProcessPodcast\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\ProcessPodcast\",\"command\":\"O:23:\\\"App\\\\Jobs\\\\ProcessPodcast\\\":11:{s:8:\\\"\\u0000*\\u0000video\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:9:\\\"App\\\\Video\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:8:\\\"\\u0000*\\u0000width\\\";i:1280;s:9:\\\"\\u0000*\\u0000height\\\";i:720;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'ErrorException: Undefined variable: p480Path in C:\\xampp\\htdocs\\live_view\\app\\Jobs\\ProcessPodcast.php:87\nStack trace:\n#0 C:\\xampp\\htdocs\\live_view\\app\\Jobs\\ProcessPodcast.php(87): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(8, \'Undefined varia...\', \'C:\\\\xampp\\\\htdocs...\', 87, Array)\n#1 [internal function]: App\\Jobs\\ProcessPodcast->handle()\n#2 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(33): call_user_func_array(Array, Array)\n#3 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#4 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(91): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#5 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#6 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(592): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#7 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(94): Illuminate\\Container\\Container->call(Array)\n#8 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\ProcessPodcast))\n#9 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\ProcessPodcast))\n#10 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#11 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(83): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\ProcessPodcast), false)\n#12 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\ProcessPodcast))\n#13 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\ProcessPodcast))\n#14 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(85): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#15 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(59): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\ProcessPodcast))\n#16 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#17 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(356): Illuminate\\Queue\\Jobs\\Job->fire()\n#18 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(306): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#19 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(132): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#20 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#21 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#22 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#23 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(33): call_user_func_array(Array, Array)\n#24 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#25 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(91): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#26 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#27 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(592): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#28 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(134): Illuminate\\Container\\Container->call(Array)\n#29 C:\\xampp\\htdocs\\live_view\\vendor\\symfony\\console\\Command\\Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#30 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#31 C:\\xampp\\htdocs\\live_view\\vendor\\symfony\\console\\Application.php(912): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 C:\\xampp\\htdocs\\live_view\\vendor\\symfony\\console\\Application.php(264): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 C:\\xampp\\htdocs\\live_view\\vendor\\symfony\\console\\Application.php(140): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#35 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#36 C:\\xampp\\htdocs\\live_view\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#37 {main}', '2020-05-15 07:25:06'),
(3, 'database', 'default', '{\"uuid\":\"c0b87e98-204c-4d85-be60-82839f7ace5f\",\"displayName\":\"App\\\\Jobs\\\\ProcessPodcast\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\ProcessPodcast\",\"command\":\"O:23:\\\"App\\\\Jobs\\\\ProcessPodcast\\\":11:{s:8:\\\"\\u0000*\\u0000video\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:9:\\\"App\\\\Video\\\";s:2:\\\"id\\\";i:2;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:8:\\\"\\u0000*\\u0000width\\\";i:1280;s:9:\\\"\\u0000*\\u0000height\\\";i:720;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'ErrorException: Undefined variable: p480Path in C:\\xampp\\htdocs\\live_view\\app\\Jobs\\ProcessPodcast.php:87\nStack trace:\n#0 C:\\xampp\\htdocs\\live_view\\app\\Jobs\\ProcessPodcast.php(87): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(8, \'Undefined varia...\', \'C:\\\\xampp\\\\htdocs...\', 87, Array)\n#1 [internal function]: App\\Jobs\\ProcessPodcast->handle()\n#2 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(33): call_user_func_array(Array, Array)\n#3 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#4 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(91): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#5 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#6 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(592): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#7 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(94): Illuminate\\Container\\Container->call(Array)\n#8 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\ProcessPodcast))\n#9 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\ProcessPodcast))\n#10 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#11 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(83): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\ProcessPodcast), false)\n#12 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\ProcessPodcast))\n#13 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\ProcessPodcast))\n#14 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(85): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#15 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(59): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\ProcessPodcast))\n#16 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#17 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(356): Illuminate\\Queue\\Jobs\\Job->fire()\n#18 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(306): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#19 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(132): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#20 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#21 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#22 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#23 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(33): call_user_func_array(Array, Array)\n#24 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#25 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(91): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#26 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#27 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(592): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#28 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(134): Illuminate\\Container\\Container->call(Array)\n#29 C:\\xampp\\htdocs\\live_view\\vendor\\symfony\\console\\Command\\Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#30 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#31 C:\\xampp\\htdocs\\live_view\\vendor\\symfony\\console\\Application.php(912): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 C:\\xampp\\htdocs\\live_view\\vendor\\symfony\\console\\Application.php(264): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 C:\\xampp\\htdocs\\live_view\\vendor\\symfony\\console\\Application.php(140): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#35 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#36 C:\\xampp\\htdocs\\live_view\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#37 {main}', '2020-05-15 07:26:37'),
(4, 'database', 'default', '{\"uuid\":\"115ebad4-c6e8-4722-99a6-789db3e00729\",\"displayName\":\"App\\\\Jobs\\\\ProcessPodcast\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\ProcessPodcast\",\"command\":\"O:23:\\\"App\\\\Jobs\\\\ProcessPodcast\\\":11:{s:8:\\\"\\u0000*\\u0000video\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:9:\\\"App\\\\Video\\\";s:2:\\\"id\\\";i:3;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:8:\\\"\\u0000*\\u0000width\\\";i:1280;s:9:\\\"\\u0000*\\u0000height\\\";i:720;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'ErrorException: Undefined variable: p480Path in C:\\xampp\\htdocs\\live_view\\app\\Jobs\\ProcessPodcast.php:87\nStack trace:\n#0 C:\\xampp\\htdocs\\live_view\\app\\Jobs\\ProcessPodcast.php(87): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(8, \'Undefined varia...\', \'C:\\\\xampp\\\\htdocs...\', 87, Array)\n#1 [internal function]: App\\Jobs\\ProcessPodcast->handle()\n#2 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(33): call_user_func_array(Array, Array)\n#3 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#4 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(91): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#5 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#6 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(592): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#7 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(94): Illuminate\\Container\\Container->call(Array)\n#8 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\ProcessPodcast))\n#9 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\ProcessPodcast))\n#10 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#11 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(83): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\ProcessPodcast), false)\n#12 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\ProcessPodcast))\n#13 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\ProcessPodcast))\n#14 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(85): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#15 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(59): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\ProcessPodcast))\n#16 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#17 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(356): Illuminate\\Queue\\Jobs\\Job->fire()\n#18 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(306): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#19 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(132): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#20 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#21 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#22 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#23 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(33): call_user_func_array(Array, Array)\n#24 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#25 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(91): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#26 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#27 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(592): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#28 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(134): Illuminate\\Container\\Container->call(Array)\n#29 C:\\xampp\\htdocs\\live_view\\vendor\\symfony\\console\\Command\\Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#30 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#31 C:\\xampp\\htdocs\\live_view\\vendor\\symfony\\console\\Application.php(912): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 C:\\xampp\\htdocs\\live_view\\vendor\\symfony\\console\\Application.php(264): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 C:\\xampp\\htdocs\\live_view\\vendor\\symfony\\console\\Application.php(140): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#35 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#36 C:\\xampp\\htdocs\\live_view\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#37 {main}', '2020-05-15 07:28:47');
INSERT INTO `failed_jobs` (`id`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(5, 'database', 'default', '{\"uuid\":\"ffe211ee-15e6-4d1a-a697-1d563d93192f\",\"displayName\":\"App\\\\Jobs\\\\ProcessPodcast\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\ProcessPodcast\",\"command\":\"O:23:\\\"App\\\\Jobs\\\\ProcessPodcast\\\":11:{s:8:\\\"\\u0000*\\u0000video\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:9:\\\"App\\\\Video\\\";s:2:\\\"id\\\";i:4;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:8:\\\"\\u0000*\\u0000width\\\";i:1280;s:9:\\\"\\u0000*\\u0000height\\\";i:720;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'ErrorException: Undefined variable: p480Path in C:\\xampp\\htdocs\\live_view\\app\\Jobs\\ProcessPodcast.php:87\nStack trace:\n#0 C:\\xampp\\htdocs\\live_view\\app\\Jobs\\ProcessPodcast.php(87): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(8, \'Undefined varia...\', \'C:\\\\xampp\\\\htdocs...\', 87, Array)\n#1 [internal function]: App\\Jobs\\ProcessPodcast->handle()\n#2 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(33): call_user_func_array(Array, Array)\n#3 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#4 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(91): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#5 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#6 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(592): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#7 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(94): Illuminate\\Container\\Container->call(Array)\n#8 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\ProcessPodcast))\n#9 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\ProcessPodcast))\n#10 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#11 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(83): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\ProcessPodcast), false)\n#12 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\ProcessPodcast))\n#13 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\ProcessPodcast))\n#14 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(85): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#15 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(59): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\ProcessPodcast))\n#16 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#17 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(356): Illuminate\\Queue\\Jobs\\Job->fire()\n#18 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(306): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#19 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(132): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#20 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#21 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#22 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#23 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(33): call_user_func_array(Array, Array)\n#24 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#25 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(91): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#26 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#27 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(592): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#28 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(134): Illuminate\\Container\\Container->call(Array)\n#29 C:\\xampp\\htdocs\\live_view\\vendor\\symfony\\console\\Command\\Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#30 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#31 C:\\xampp\\htdocs\\live_view\\vendor\\symfony\\console\\Application.php(912): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 C:\\xampp\\htdocs\\live_view\\vendor\\symfony\\console\\Application.php(264): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 C:\\xampp\\htdocs\\live_view\\vendor\\symfony\\console\\Application.php(140): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#35 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#36 C:\\xampp\\htdocs\\live_view\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#37 {main}', '2020-05-15 07:36:00'),
(6, 'database', 'default', '{\"uuid\":\"00f98234-b518-4806-b805-fcafdd37b89e\",\"displayName\":\"App\\\\Jobs\\\\ProcessPodcast\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\ProcessPodcast\",\"command\":\"O:23:\\\"App\\\\Jobs\\\\ProcessPodcast\\\":11:{s:8:\\\"\\u0000*\\u0000video\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:9:\\\"App\\\\Video\\\";s:2:\\\"id\\\";i:5;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:8:\\\"\\u0000*\\u0000width\\\";i:1280;s:9:\\\"\\u0000*\\u0000height\\\";i:720;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Alchemy\\BinaryDriver\\Exception\\ExecutionFailureException: ffmpeg failed to execute command C:\\ffmpeg\\bin\\ffmpeg.EXE -y -i \"C:\\xampp\\htdocs\\live_view\\storage\\/app/public/podcast/bXWEVM784P.mp4\" -async 1 -metadata:s:v:0 start_time=0 -vcodec libx264 -acodec libfaac -b:v 1000k -refs 6 -coder 1 -sc_threshold 40 -flags +loop -me_range 16 -subq 7 -i_qfactor 0.71 -qcomp 0.6 -qdiff 4 -trellis 1 -b:a 128k -vf \"[in]scale=854:480 [out]\" -pass 1 -passlogfile \"C:\\Users\\Deb\\AppData\\Local\\Temp\\ffmpeg-passes5ebe94158b1a8ugizj/pass-5ebe94158b347\" \"C:\\xampp\\htdocs\\live_view\\storage\\/app/public/podcast/480/bXWEVM784P.mp4\":\n\nError Output:\n\n ffmpeg version git-2020-03-27-e34157f Copyright (c) 2000-2020 the FFmpeg developers\r\n  built with gcc 9.2.1 (GCC) 20200122\r\n  configuration: --enable-gpl --enable-version3 --enable-sdl2 --enable-fontconfig --enable-gnutls --enable-iconv --enable-libass --enable-libdav1d --enable-libbluray --enable-libfreetype --enable-libmp3lame --enable-libopencore-amrnb --enable-libopencore-amrwb --enable-libopenjpeg --enable-libopus --enable-libshine --enable-libsnappy --enable-libsoxr --enable-libsrt --enable-libtheora --enable-libtwolame --enable-libvpx --enable-libwavpack --enable-libwebp --enable-libx264 --enable-libx265 --enable-libxml2 --enable-libzimg --enable-lzma --enable-zlib --enable-gmp --enable-libvidstab --enable-libvorbis --enable-libvo-amrwbenc --enable-libmysofa --enable-libspeex --enable-libxvid --enable-libaom --enable-libmfx --enable-ffnvcodec --enable-cuda-llvm --enable-cuvid --enable-d3d11va --enable-nvenc --enable-nvdec --enable-dxva2 --enable-avisynth --enable-libopenmpt --enable-amf\r\n  libavutil      56. 42.101 / 56. 42.101\r\n  libavcodec     58. 76.100 / 58. 76.100\r\n  libavformat    58. 42.100 / 58. 42.100\r\n  libavdevice    58.  9.103 / 58.  9.103\r\n  libavfilter     7. 77.100 /  7. 77.100\r\n  libswscale      5.  6.101 /  5.  6.101\r\n  libswresample   3.  6.100 /  3.  6.100\r\n  libpostproc    55.  6.100 / 55.  6.100\r\n[mov,mp4,m4a,3gp,3g2,mj2 @ 000002693b78ed40] st: 0 edit list: 1 Missing key frame while searching for timestamp: 0\r\n[mov,mp4,m4a,3gp,3g2,mj2 @ 000002693b78ed40] st: 0 edit list 1 Cannot find an index entry before timestamp: 0.\r\nInput #0, mov,mp4,m4a,3gp,3g2,mj2, from \'C:\\xampp\\htdocs\\live_view\\storage\\/app/public/podcast/bXWEVM784P.mp4\':\r\n  Metadata:\r\n    major_brand     : mp42\r\n    minor_version   : 0\r\n    compatible_brands: mp42mp41\r\n    creation_time   : 2014-07-18T06:00:15.000000Z\r\n  Duration: 00:00:21.29, start: 0.000000, bitrate: 14904 kb/s\r\n    Stream #0:0(eng): Video: h264 (High) (avc1 / 0x31637661), yuv420p(tv, bt709), 1280x720 [SAR 1:1 DAR 16:9], 14517 kb/s, 25 fps, 25 tbr, 25k tbn, 50 tbc (default)\r\n    Metadata:\r\n      creation_time   : 2014-07-18T06:00:15.000000Z\r\n      handler_name    : ?Mainconcept Video Media Handler\r\n      encoder         : AVC Coding\r\n    Stream #0:1(eng): Audio: aac (LC) (mp4a / 0x6134706D), 48000 Hz, stereo, fltp, 189 kb/s (default)\r\n    Metadata:\r\n      creation_time   : 2014-07-18T06:00:15.000000Z\r\n      handler_name    : #Mainconcept MP4 Sound Media Handler\r\nUnknown encoder \'libfaac\'\r\n in C:\\xampp\\htdocs\\live_view\\vendor\\alchemy\\binary-driver\\src\\Alchemy\\BinaryDriver\\ProcessRunner.php:95\nStack trace:\n#0 C:\\xampp\\htdocs\\live_view\\vendor\\alchemy\\binary-driver\\src\\Alchemy\\BinaryDriver\\ProcessRunner.php(73): Alchemy\\BinaryDriver\\ProcessRunner->doExecutionFailure(\'C:\\\\ffmpeg\\\\bin\\\\f...\', \'ffmpeg version ...\')\n#1 C:\\xampp\\htdocs\\live_view\\vendor\\alchemy\\binary-driver\\src\\Alchemy\\BinaryDriver\\AbstractBinary.php(207): Alchemy\\BinaryDriver\\ProcessRunner->run(Object(Symfony\\Component\\Process\\Process), Object(SplObjectStorage), false)\n#2 C:\\xampp\\htdocs\\live_view\\vendor\\alchemy\\binary-driver\\src\\Alchemy\\BinaryDriver\\AbstractBinary.php(136): Alchemy\\BinaryDriver\\AbstractBinary->run(Object(Symfony\\Component\\Process\\Process), false, Array)\n#3 C:\\xampp\\htdocs\\live_view\\vendor\\php-ffmpeg\\php-ffmpeg\\src\\FFMpeg\\Media\\AbstractVideo.php(96): Alchemy\\BinaryDriver\\AbstractBinary->command(Array, false, Array)\n#4 C:\\xampp\\htdocs\\live_view\\app\\Jobs\\ProcessPodcast.php(87): FFMpeg\\Media\\AbstractVideo->save(Object(FFMpeg\\Format\\Video\\X264), \'C:\\\\xampp\\\\htdocs...\')\n#5 [internal function]: App\\Jobs\\ProcessPodcast->handle()\n#6 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(33): call_user_func_array(Array, Array)\n#7 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#8 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(91): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#9 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#10 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(592): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#11 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(94): Illuminate\\Container\\Container->call(Array)\n#12 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\ProcessPodcast))\n#13 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\ProcessPodcast))\n#14 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#15 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(83): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\ProcessPodcast), false)\n#16 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\ProcessPodcast))\n#17 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\ProcessPodcast))\n#18 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(85): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#19 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(59): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\ProcessPodcast))\n#20 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#21 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(356): Illuminate\\Queue\\Jobs\\Job->fire()\n#22 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(306): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#23 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(132): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#24 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#25 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#26 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#27 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(33): call_user_func_array(Array, Array)\n#28 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#29 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(91): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#30 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#31 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(592): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#32 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(134): Illuminate\\Container\\Container->call(Array)\n#33 C:\\xampp\\htdocs\\live_view\\vendor\\symfony\\console\\Command\\Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#34 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#35 C:\\xampp\\htdocs\\live_view\\vendor\\symfony\\console\\Application.php(912): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#36 C:\\xampp\\htdocs\\live_view\\vendor\\symfony\\console\\Application.php(264): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#37 C:\\xampp\\htdocs\\live_view\\vendor\\symfony\\console\\Application.php(140): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#38 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#39 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#40 C:\\xampp\\htdocs\\live_view\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#41 {main}\n\nNext FFMpeg\\Exception\\RuntimeException: Encoding failed in C:\\xampp\\htdocs\\live_view\\vendor\\php-ffmpeg\\php-ffmpeg\\src\\FFMpeg\\Media\\AbstractVideo.php:106\nStack trace:\n#0 C:\\xampp\\htdocs\\live_view\\app\\Jobs\\ProcessPodcast.php(87): FFMpeg\\Media\\AbstractVideo->save(Object(FFMpeg\\Format\\Video\\X264), \'C:\\\\xampp\\\\htdocs...\')\n#1 [internal function]: App\\Jobs\\ProcessPodcast->handle()\n#2 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(33): call_user_func_array(Array, Array)\n#3 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#4 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(91): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#5 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#6 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(592): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#7 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(94): Illuminate\\Container\\Container->call(Array)\n#8 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\ProcessPodcast))\n#9 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\ProcessPodcast))\n#10 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#11 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(83): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\ProcessPodcast), false)\n#12 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\ProcessPodcast))\n#13 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\ProcessPodcast))\n#14 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(85): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#15 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(59): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\ProcessPodcast))\n#16 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#17 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(356): Illuminate\\Queue\\Jobs\\Job->fire()\n#18 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(306): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#19 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(132): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#20 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#21 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#22 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#23 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(33): call_user_func_array(Array, Array)\n#24 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#25 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(91): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#26 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#27 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(592): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#28 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(134): Illuminate\\Container\\Container->call(Array)\n#29 C:\\xampp\\htdocs\\live_view\\vendor\\symfony\\console\\Command\\Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#30 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#31 C:\\xampp\\htdocs\\live_view\\vendor\\symfony\\console\\Application.php(912): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 C:\\xampp\\htdocs\\live_view\\vendor\\symfony\\console\\Application.php(264): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 C:\\xampp\\htdocs\\live_view\\vendor\\symfony\\console\\Application.php(140): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#35 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#36 C:\\xampp\\htdocs\\live_view\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#37 {main}', '2020-05-15 07:37:34'),
(7, 'database', 'default', '{\"uuid\":\"a4e818f0-d23e-4098-9ffb-f7756e622fa8\",\"displayName\":\"App\\\\Jobs\\\\ProcessPodcast\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\ProcessPodcast\",\"command\":\"O:23:\\\"App\\\\Jobs\\\\ProcessPodcast\\\":11:{s:8:\\\"\\u0000*\\u0000video\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:9:\\\"App\\\\Video\\\";s:2:\\\"id\\\";i:6;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:8:\\\"\\u0000*\\u0000width\\\";i:1280;s:9:\\\"\\u0000*\\u0000height\\\";i:720;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Alchemy\\BinaryDriver\\Exception\\ExecutionFailureException: ffmpeg failed to execute command C:\\ffmpeg\\bin\\ffmpeg.EXE -y -i \"C:\\xampp\\htdocs\\live_view\\storage\\/app/public/podcast/2KAjoqB15Z.mp4\" -async 1 -metadata:s:v:0 start_time=0 -vcodec libx264 -acodec libfaac -b:v 1000k -refs 6 -coder 1 -sc_threshold 40 -flags +loop -me_range 16 -subq 7 -i_qfactor 0.71 -qcomp 0.6 -qdiff 4 -trellis 1 -b:a 128k -vf \"[in]scale=854:480 [out]\" -pass 1 -passlogfile \"C:\\Users\\Deb\\AppData\\Local\\Temp\\ffmpeg-passes5ebe943b204c74u9jb/pass-5ebe943b20668\" \"C:\\xampp\\htdocs\\live_view\\storage\\/app/public/podcast/480/2KAjoqB15Z.mp4\":\n\nError Output:\n\n ffmpeg version git-2020-03-27-e34157f Copyright (c) 2000-2020 the FFmpeg developers\r\n  built with gcc 9.2.1 (GCC) 20200122\r\n  configuration: --enable-gpl --enable-version3 --enable-sdl2 --enable-fontconfig --enable-gnutls --enable-iconv --enable-libass --enable-libdav1d --enable-libbluray --enable-libfreetype --enable-libmp3lame --enable-libopencore-amrnb --enable-libopencore-amrwb --enable-libopenjpeg --enable-libopus --enable-libshine --enable-libsnappy --enable-libsoxr --enable-libsrt --enable-libtheora --enable-libtwolame --enable-libvpx --enable-libwavpack --enable-libwebp --enable-libx264 --enable-libx265 --enable-libxml2 --enable-libzimg --enable-lzma --enable-zlib --enable-gmp --enable-libvidstab --enable-libvorbis --enable-libvo-amrwbenc --enable-libmysofa --enable-libspeex --enable-libxvid --enable-libaom --enable-libmfx --enable-ffnvcodec --enable-cuda-llvm --enable-cuvid --enable-d3d11va --enable-nvenc --enable-nvdec --enable-dxva2 --enable-avisynth --enable-libopenmpt --enable-amf\r\n  libavutil      56. 42.101 / 56. 42.101\r\n  libavcodec     58. 76.100 / 58. 76.100\r\n  libavformat    58. 42.100 / 58. 42.100\r\n  libavdevice    58.  9.103 / 58.  9.103\r\n  libavfilter     7. 77.100 /  7. 77.100\r\n  libswscale      5.  6.101 /  5.  6.101\r\n  libswresample   3.  6.100 /  3.  6.100\r\n  libpostproc    55.  6.100 / 55.  6.100\r\n[mov,mp4,m4a,3gp,3g2,mj2 @ 000002e63492ed40] st: 0 edit list: 1 Missing key frame while searching for timestamp: 0\r\n[mov,mp4,m4a,3gp,3g2,mj2 @ 000002e63492ed40] st: 0 edit list 1 Cannot find an index entry before timestamp: 0.\r\nInput #0, mov,mp4,m4a,3gp,3g2,mj2, from \'C:\\xampp\\htdocs\\live_view\\storage\\/app/public/podcast/2KAjoqB15Z.mp4\':\r\n  Metadata:\r\n    major_brand     : mp42\r\n    minor_version   : 0\r\n    compatible_brands: mp42mp41\r\n    creation_time   : 2014-07-18T06:00:15.000000Z\r\n  Duration: 00:00:21.29, start: 0.000000, bitrate: 14904 kb/s\r\n    Stream #0:0(eng): Video: h264 (High) (avc1 / 0x31637661), yuv420p(tv, bt709), 1280x720 [SAR 1:1 DAR 16:9], 14517 kb/s, 25 fps, 25 tbr, 25k tbn, 50 tbc (default)\r\n    Metadata:\r\n      creation_time   : 2014-07-18T06:00:15.000000Z\r\n      handler_name    : ?Mainconcept Video Media Handler\r\n      encoder         : AVC Coding\r\n    Stream #0:1(eng): Audio: aac (LC) (mp4a / 0x6134706D), 48000 Hz, stereo, fltp, 189 kb/s (default)\r\n    Metadata:\r\n      creation_time   : 2014-07-18T06:00:15.000000Z\r\n      handler_name    : #Mainconcept MP4 Sound Media Handler\r\nUnknown encoder \'libfaac\'\r\n in C:\\xampp\\htdocs\\live_view\\vendor\\alchemy\\binary-driver\\src\\Alchemy\\BinaryDriver\\ProcessRunner.php:95\nStack trace:\n#0 C:\\xampp\\htdocs\\live_view\\vendor\\alchemy\\binary-driver\\src\\Alchemy\\BinaryDriver\\ProcessRunner.php(73): Alchemy\\BinaryDriver\\ProcessRunner->doExecutionFailure(\'C:\\\\ffmpeg\\\\bin\\\\f...\', \'ffmpeg version ...\')\n#1 C:\\xampp\\htdocs\\live_view\\vendor\\alchemy\\binary-driver\\src\\Alchemy\\BinaryDriver\\AbstractBinary.php(207): Alchemy\\BinaryDriver\\ProcessRunner->run(Object(Symfony\\Component\\Process\\Process), Object(SplObjectStorage), false)\n#2 C:\\xampp\\htdocs\\live_view\\vendor\\alchemy\\binary-driver\\src\\Alchemy\\BinaryDriver\\AbstractBinary.php(136): Alchemy\\BinaryDriver\\AbstractBinary->run(Object(Symfony\\Component\\Process\\Process), false, Array)\n#3 C:\\xampp\\htdocs\\live_view\\vendor\\php-ffmpeg\\php-ffmpeg\\src\\FFMpeg\\Media\\AbstractVideo.php(96): Alchemy\\BinaryDriver\\AbstractBinary->command(Array, false, Array)\n#4 C:\\xampp\\htdocs\\live_view\\app\\Jobs\\ProcessPodcast.php(87): FFMpeg\\Media\\AbstractVideo->save(Object(FFMpeg\\Format\\Video\\X264), \'C:\\\\xampp\\\\htdocs...\')\n#5 [internal function]: App\\Jobs\\ProcessPodcast->handle()\n#6 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(33): call_user_func_array(Array, Array)\n#7 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#8 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(91): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#9 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#10 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(592): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#11 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(94): Illuminate\\Container\\Container->call(Array)\n#12 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\ProcessPodcast))\n#13 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\ProcessPodcast))\n#14 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#15 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(83): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\ProcessPodcast), false)\n#16 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\ProcessPodcast))\n#17 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\ProcessPodcast))\n#18 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(85): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#19 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(59): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\ProcessPodcast))\n#20 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#21 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(356): Illuminate\\Queue\\Jobs\\Job->fire()\n#22 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(306): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#23 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(132): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#24 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#25 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#26 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#27 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(33): call_user_func_array(Array, Array)\n#28 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#29 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(91): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#30 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#31 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(592): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#32 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(134): Illuminate\\Container\\Container->call(Array)\n#33 C:\\xampp\\htdocs\\live_view\\vendor\\symfony\\console\\Command\\Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#34 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#35 C:\\xampp\\htdocs\\live_view\\vendor\\symfony\\console\\Application.php(912): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#36 C:\\xampp\\htdocs\\live_view\\vendor\\symfony\\console\\Application.php(264): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#37 C:\\xampp\\htdocs\\live_view\\vendor\\symfony\\console\\Application.php(140): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#38 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#39 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#40 C:\\xampp\\htdocs\\live_view\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#41 {main}\n\nNext FFMpeg\\Exception\\RuntimeException: Encoding failed in C:\\xampp\\htdocs\\live_view\\vendor\\php-ffmpeg\\php-ffmpeg\\src\\FFMpeg\\Media\\AbstractVideo.php:106\nStack trace:\n#0 C:\\xampp\\htdocs\\live_view\\app\\Jobs\\ProcessPodcast.php(87): FFMpeg\\Media\\AbstractVideo->save(Object(FFMpeg\\Format\\Video\\X264), \'C:\\\\xampp\\\\htdocs...\')\n#1 [internal function]: App\\Jobs\\ProcessPodcast->handle()\n#2 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(33): call_user_func_array(Array, Array)\n#3 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#4 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(91): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#5 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#6 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(592): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#7 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(94): Illuminate\\Container\\Container->call(Array)\n#8 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\ProcessPodcast))\n#9 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\ProcessPodcast))\n#10 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#11 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(83): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\ProcessPodcast), false)\n#12 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\ProcessPodcast))\n#13 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\ProcessPodcast))\n#14 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(85): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#15 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(59): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\ProcessPodcast))\n#16 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#17 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(356): Illuminate\\Queue\\Jobs\\Job->fire()\n#18 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(306): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#19 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(132): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#20 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#21 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#22 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#23 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(33): call_user_func_array(Array, Array)\n#24 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#25 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(91): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#26 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#27 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(592): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#28 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(134): Illuminate\\Container\\Container->call(Array)\n#29 C:\\xampp\\htdocs\\live_view\\vendor\\symfony\\console\\Command\\Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#30 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#31 C:\\xampp\\htdocs\\live_view\\vendor\\symfony\\console\\Application.php(912): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 C:\\xampp\\htdocs\\live_view\\vendor\\symfony\\console\\Application.php(264): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 C:\\xampp\\htdocs\\live_view\\vendor\\symfony\\console\\Application.php(140): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#35 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#36 C:\\xampp\\htdocs\\live_view\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#37 {main}', '2020-05-15 07:38:12');
INSERT INTO `failed_jobs` (`id`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(8, 'database', 'default', '{\"uuid\":\"5263eab3-bfbd-4ef9-a31d-fcdd8bf918ed\",\"displayName\":\"App\\\\Jobs\\\\ProcessPodcast\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\ProcessPodcast\",\"command\":\"O:23:\\\"App\\\\Jobs\\\\ProcessPodcast\\\":11:{s:8:\\\"\\u0000*\\u0000video\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:9:\\\"App\\\\Video\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:8:\\\"\\u0000*\\u0000width\\\";i:1280;s:9:\\\"\\u0000*\\u0000height\\\";i:720;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'ErrorException: Undefined property: FFMpeg\\Media\\Video::$filename in C:\\xampp\\htdocs\\live_view\\app\\Jobs\\ProcessPodcast.php:79\nStack trace:\n#0 C:\\xampp\\htdocs\\live_view\\app\\Jobs\\ProcessPodcast.php(79): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(8, \'Undefined prope...\', \'C:\\\\xampp\\\\htdocs...\', 79, Array)\n#1 [internal function]: App\\Jobs\\ProcessPodcast->handle()\n#2 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(33): call_user_func_array(Array, Array)\n#3 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#4 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(91): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#5 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#6 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(592): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#7 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(94): Illuminate\\Container\\Container->call(Array)\n#8 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\ProcessPodcast))\n#9 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\ProcessPodcast))\n#10 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#11 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(83): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\ProcessPodcast), false)\n#12 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\ProcessPodcast))\n#13 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\ProcessPodcast))\n#14 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(85): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#15 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(59): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\ProcessPodcast))\n#16 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#17 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(356): Illuminate\\Queue\\Jobs\\Job->fire()\n#18 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(306): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#19 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(132): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#20 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#21 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#22 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#23 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(33): call_user_func_array(Array, Array)\n#24 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#25 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(91): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#26 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#27 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(592): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#28 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(134): Illuminate\\Container\\Container->call(Array)\n#29 C:\\xampp\\htdocs\\live_view\\vendor\\symfony\\console\\Command\\Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#30 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#31 C:\\xampp\\htdocs\\live_view\\vendor\\symfony\\console\\Application.php(912): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 C:\\xampp\\htdocs\\live_view\\vendor\\symfony\\console\\Application.php(264): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 C:\\xampp\\htdocs\\live_view\\vendor\\symfony\\console\\Application.php(140): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#35 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#36 C:\\xampp\\htdocs\\live_view\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#37 {main}', '2020-05-16 05:16:21'),
(9, 'database', 'default', '{\"uuid\":\"72fb0a79-6ada-4bcc-8a6b-9218329be4e0\",\"displayName\":\"App\\\\Jobs\\\\ProcessPodcast\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\ProcessPodcast\",\"command\":\"O:23:\\\"App\\\\Jobs\\\\ProcessPodcast\\\":11:{s:8:\\\"\\u0000*\\u0000video\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:9:\\\"App\\\\Video\\\";s:2:\\\"id\\\";i:2;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:8:\\\"\\u0000*\\u0000width\\\";i:1280;s:9:\\\"\\u0000*\\u0000height\\\";i:720;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'ErrorException: Undefined property: FFMpeg\\Media\\Video::$filename in C:\\xampp\\htdocs\\live_view\\app\\Jobs\\ProcessPodcast.php:79\nStack trace:\n#0 C:\\xampp\\htdocs\\live_view\\app\\Jobs\\ProcessPodcast.php(79): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(8, \'Undefined prope...\', \'C:\\\\xampp\\\\htdocs...\', 79, Array)\n#1 [internal function]: App\\Jobs\\ProcessPodcast->handle()\n#2 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(33): call_user_func_array(Array, Array)\n#3 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#4 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(91): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#5 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#6 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(592): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#7 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(94): Illuminate\\Container\\Container->call(Array)\n#8 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\ProcessPodcast))\n#9 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\ProcessPodcast))\n#10 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#11 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(83): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\ProcessPodcast), false)\n#12 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\ProcessPodcast))\n#13 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\ProcessPodcast))\n#14 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(85): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#15 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(59): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\ProcessPodcast))\n#16 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#17 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(356): Illuminate\\Queue\\Jobs\\Job->fire()\n#18 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(306): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#19 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(132): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#20 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#21 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#22 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#23 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(33): call_user_func_array(Array, Array)\n#24 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#25 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(91): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#26 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#27 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(592): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#28 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(134): Illuminate\\Container\\Container->call(Array)\n#29 C:\\xampp\\htdocs\\live_view\\vendor\\symfony\\console\\Command\\Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#30 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#31 C:\\xampp\\htdocs\\live_view\\vendor\\symfony\\console\\Application.php(912): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 C:\\xampp\\htdocs\\live_view\\vendor\\symfony\\console\\Application.php(264): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 C:\\xampp\\htdocs\\live_view\\vendor\\symfony\\console\\Application.php(140): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#35 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#36 C:\\xampp\\htdocs\\live_view\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#37 {main}', '2020-05-16 10:52:40'),
(10, 'database', 'default', '{\"uuid\":\"9ce7397b-ecf1-4a3d-8e78-d496d4eea1c0\",\"displayName\":\"App\\\\Jobs\\\\ProcessPodcast\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\ProcessPodcast\",\"command\":\"O:23:\\\"App\\\\Jobs\\\\ProcessPodcast\\\":11:{s:8:\\\"\\u0000*\\u0000video\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:9:\\\"App\\\\Video\\\";s:2:\\\"id\\\";i:3;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:8:\\\"\\u0000*\\u0000width\\\";i:1280;s:9:\\\"\\u0000*\\u0000height\\\";i:720;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'ErrorException: Undefined property: FFMpeg\\Media\\Video::$filename in C:\\xampp\\htdocs\\live_view\\app\\Jobs\\ProcessPodcast.php:79\nStack trace:\n#0 C:\\xampp\\htdocs\\live_view\\app\\Jobs\\ProcessPodcast.php(79): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(8, \'Undefined prope...\', \'C:\\\\xampp\\\\htdocs...\', 79, Array)\n#1 [internal function]: App\\Jobs\\ProcessPodcast->handle()\n#2 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(33): call_user_func_array(Array, Array)\n#3 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#4 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(91): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#5 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#6 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(592): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#7 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(94): Illuminate\\Container\\Container->call(Array)\n#8 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\ProcessPodcast))\n#9 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\ProcessPodcast))\n#10 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#11 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(83): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\ProcessPodcast), false)\n#12 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\ProcessPodcast))\n#13 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\ProcessPodcast))\n#14 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(85): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#15 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(59): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\ProcessPodcast))\n#16 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#17 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(356): Illuminate\\Queue\\Jobs\\Job->fire()\n#18 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(306): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#19 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(132): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#20 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#21 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#22 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#23 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(33): call_user_func_array(Array, Array)\n#24 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#25 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(91): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#26 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#27 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(592): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#28 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(134): Illuminate\\Container\\Container->call(Array)\n#29 C:\\xampp\\htdocs\\live_view\\vendor\\symfony\\console\\Command\\Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#30 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#31 C:\\xampp\\htdocs\\live_view\\vendor\\symfony\\console\\Application.php(912): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 C:\\xampp\\htdocs\\live_view\\vendor\\symfony\\console\\Application.php(264): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 C:\\xampp\\htdocs\\live_view\\vendor\\symfony\\console\\Application.php(140): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#35 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#36 C:\\xampp\\htdocs\\live_view\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#37 {main}', '2020-05-16 11:08:27'),
(11, 'database', 'default', '{\"uuid\":\"59660d7c-b951-4961-af0e-bbeb1624d90b\",\"displayName\":\"App\\\\Jobs\\\\ProcessPodcast\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\ProcessPodcast\",\"command\":\"O:23:\\\"App\\\\Jobs\\\\ProcessPodcast\\\":11:{s:8:\\\"\\u0000*\\u0000video\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:9:\\\"App\\\\Video\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:8:\\\"\\u0000*\\u0000width\\\";i:1280;s:9:\\\"\\u0000*\\u0000height\\\";i:720;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Illuminate\\Database\\Eloquent\\ModelNotFoundException: No query results for model [App\\Video]. in C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Builder.php:472\nStack trace:\n#0 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesAndRestoresModelIdentifiers.php(102): Illuminate\\Database\\Eloquent\\Builder->firstOrFail()\n#1 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesAndRestoresModelIdentifiers.php(57): App\\Jobs\\ProcessPodcast->restoreModel(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#2 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesModels.php(116): App\\Jobs\\ProcessPodcast->getRestoredPropertyValue(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#3 [internal function]: App\\Jobs\\ProcessPodcast->__unserialize(Array)\n#4 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(53): unserialize(\'O:23:\"App\\\\Jobs\\\\...\')\n#5 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#6 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(356): Illuminate\\Queue\\Jobs\\Job->fire()\n#7 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(306): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#8 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(132): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#9 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#10 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#11 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#12 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(33): call_user_func_array(Array, Array)\n#13 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#14 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(91): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#15 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#16 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(592): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#17 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(134): Illuminate\\Container\\Container->call(Array)\n#18 C:\\xampp\\htdocs\\live_view\\vendor\\symfony\\console\\Command\\Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#19 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#20 C:\\xampp\\htdocs\\live_view\\vendor\\symfony\\console\\Application.php(912): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#21 C:\\xampp\\htdocs\\live_view\\vendor\\symfony\\console\\Application.php(264): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#22 C:\\xampp\\htdocs\\live_view\\vendor\\symfony\\console\\Application.php(140): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#23 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#24 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#25 C:\\xampp\\htdocs\\live_view\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#26 {main}', '2020-05-16 12:29:53');

-- --------------------------------------------------------

--
-- Table structure for table `histories`
--

CREATE TABLE `histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `podcast_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `histories`
--

INSERT INTO `histories` (`id`, `user_id`, `podcast_id`, `created_at`, `updated_at`) VALUES
(2, 1, 2, '2020-06-11 10:20:58', '2020-06-11 10:20:58'),
(4, 1, 9, '2020-06-24 04:18:28', '2020-06-24 04:18:28');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(18, 'default', '{\"uuid\":\"2b09b70b-d6d1-4b76-8edb-7ef985272b34\",\"displayName\":\"App\\\\Jobs\\\\ProcessAudioPodcast\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\ProcessAudioPodcast\",\"command\":\"O:28:\\\"App\\\\Jobs\\\\ProcessAudioPodcast\\\":9:{s:8:\\\"\\u0000*\\u0000audio\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:11:\\\"App\\\\Podcast\\\";s:2:\\\"id\\\";i:5;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1592499804, 1592499804),
(19, 'default', '{\"uuid\":\"ad22d040-1891-4df2-99c0-b2a8babe3ba1\",\"displayName\":\"App\\\\Jobs\\\\ProcessAudioPodcast\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\ProcessAudioPodcast\",\"command\":\"O:28:\\\"App\\\\Jobs\\\\ProcessAudioPodcast\\\":9:{s:8:\\\"\\u0000*\\u0000audio\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:11:\\\"App\\\\Podcast\\\";s:2:\\\"id\\\";i:6;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1592923216, 1592923216),
(20, 'default', '{\"uuid\":\"4bcc2f04-86d2-4a09-83d5-0f3f6b2106d1\",\"displayName\":\"App\\\\Jobs\\\\ProcessAudioPodcast\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\ProcessAudioPodcast\",\"command\":\"O:28:\\\"App\\\\Jobs\\\\ProcessAudioPodcast\\\":9:{s:8:\\\"\\u0000*\\u0000audio\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:11:\\\"App\\\\Podcast\\\";s:2:\\\"id\\\";i:7;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1592990868, 1592990868),
(21, 'default', '{\"uuid\":\"40f1a1bc-3e9c-4972-ac15-a760964b4486\",\"displayName\":\"App\\\\Jobs\\\\ProcessAudioPodcast\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\ProcessAudioPodcast\",\"command\":\"O:28:\\\"App\\\\Jobs\\\\ProcessAudioPodcast\\\":9:{s:8:\\\"\\u0000*\\u0000audio\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:11:\\\"App\\\\Podcast\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1592991016, 1592991016),
(22, 'default', '{\"uuid\":\"382f4c33-20bc-44ad-b671-5f8b76914c99\",\"displayName\":\"App\\\\Jobs\\\\ProcessAudioPodcast\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\ProcessAudioPodcast\",\"command\":\"O:28:\\\"App\\\\Jobs\\\\ProcessAudioPodcast\\\":9:{s:8:\\\"\\u0000*\\u0000audio\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:11:\\\"App\\\\Podcast\\\";s:2:\\\"id\\\";i:9;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1592992067, 1592992067),
(23, 'default', '{\"uuid\":\"0288fdbc-a229-4ca0-92e9-a5f8bbf40fe8\",\"displayName\":\"App\\\\Jobs\\\\ProcessPodcast\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\ProcessPodcast\",\"command\":\"O:23:\\\"App\\\\Jobs\\\\ProcessPodcast\\\":11:{s:8:\\\"\\u0000*\\u0000video\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:11:\\\"App\\\\Podcast\\\";s:2:\\\"id\\\";i:10;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:8:\\\"\\u0000*\\u0000width\\\";i:1280;s:9:\\\"\\u0000*\\u0000height\\\";i:720;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1594906573, 1594906573),
(24, 'default', '{\"uuid\":\"7e56296b-cde9-4551-99d6-ae4d87cbc767\",\"displayName\":\"App\\\\Jobs\\\\ProcessPodcast\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\ProcessPodcast\",\"command\":\"O:23:\\\"App\\\\Jobs\\\\ProcessPodcast\\\":11:{s:8:\\\"\\u0000*\\u0000video\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:11:\\\"App\\\\Podcast\\\";s:2:\\\"id\\\";i:11;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:8:\\\"\\u0000*\\u0000width\\\";i:426;s:9:\\\"\\u0000*\\u0000height\\\";i:240;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1594906935, 1594906935);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `code`, `name`, `created_at`, `updated_at`) VALUES
(1, 'de', 'German', NULL, NULL),
(2, 'en', 'English', NULL, NULL),
(3, 'fr', 'French', NULL, NULL),
(4, 'it', 'Italian', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `language_live_stream`
--

CREATE TABLE `language_live_stream` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `live_stream_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `language_live_stream`
--

INSERT INTO `language_live_stream` (`id`, `language_id`, `live_stream_id`, `created_at`, `updated_at`) VALUES
(2, 2, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `language_podcast`
--

CREATE TABLE `language_podcast` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `podcast_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `language_podcast`
--

INSERT INTO `language_podcast` (`id`, `language_id`, `podcast_id`, `created_at`, `updated_at`) VALUES
(8, 2, 2, NULL, NULL),
(10, 2, 9, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `licenses`
--

CREATE TABLE `licenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `licenses`
--

INSERT INTO `licenses` (`id`, `name`, `content`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Standard Myview License', '', 1, NULL, NULL),
(2, 'Creative Commons - Attribution', '', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `podcast_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `live_streams`
--

CREATE TABLE `live_streams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `channel_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `stream_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stream_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `privacy` tinyint(4) DEFAULT 1 COMMENT '0-Private, 1-Public',
  `license_id` bigint(20) UNSIGNED DEFAULT NULL,
  `monetize` tinyint(1) DEFAULT 0,
  `comments_allowed` tinyint(1) DEFAULT 1,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `likes` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `dislikes` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `comments_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `live_streams`
--

INSERT INTO `live_streams` (`id`, `user_id`, `channel_id`, `title`, `description`, `stream_id`, `stream_key`, `privacy`, `license_id`, `monetize`, `comments_allowed`, `thumbnail`, `views`, `likes`, `dislikes`, `comments_count`, `created_at`, `updated_at`) VALUES
(3, 1, 2, 'Jellyfish 3', 'This is yet another test stream.', 'li5RhrDANmRQMUXWWmtfKHCu', 'ad315ef1-4701-4a05-b5d5-3c9ba181f0bd', 1, 1, 0, 1, 'DdrKvmMs7P9vwtw3BRr2sAVutEnukk3tvl8LlrpE.jpeg', 2, 0, 0, 0, '2020-05-11 05:22:48', '2020-05-13 06:15:47');

-- --------------------------------------------------------

--
-- Table structure for table `live_stream_tag`
--

CREATE TABLE `live_stream_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `live_stream_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `live_stream_tag`
--

INSERT INTO `live_stream_tag` (`id`, `tag_id`, `live_stream_id`, `created_at`, `updated_at`) VALUES
(1, 17, 3, NULL, NULL),
(2, 18, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(9, '2014_10_12_000000_create_users_table', 1),
(10, '2014_10_12_100000_create_password_resets_table', 1),
(11, '2019_08_19_000000_create_failed_jobs_table', 1),
(12, '2020_03_13_141438_create_user_profiles_table', 1),
(13, '2020_03_16_115911_create_channels_table', 2),
(58, '2020_03_26_043721_create_licenses_table', 3),
(59, '2020_03_27_073240_create_casts_table', 3),
(60, '2020_03_27_151512_create_categories_table', 3),
(61, '2020_03_27_151526_create_tags_table', 3),
(62, '2020_03_27_151536_create_languages_table', 3),
(63, '2020_03_27_151646_create_videos_table', 3),
(64, '2020_04_29_123749_create_language_video_table', 3),
(65, '2020_04_29_124011_create_category_video_table', 3),
(66, '2020_04_29_124030_create_tag_video_table', 3),
(67, '2020_04_30_080317_create_cast_video_table', 3),
(69, '2020_05_06_161403_create_live_streams_table', 4),
(70, '2020_05_11_104305_create_language_live_stream_table', 5),
(71, '2020_05_11_104555_create_category_live_stream_table', 5),
(72, '2020_05_11_104632_create_cast_live_stream_table', 5),
(73, '2020_05_11_104811_create_live_stream_tag_table', 5),
(74, '2020_05_13_101913_create_jobs_table', 6),
(75, '2020_05_15_132722_add_status_to_videos_table', 7),
(76, '2020_05_18_141435_create_subscriptions_table', 8),
(77, '2020_05_18_185708_create_likes_table', 9),
(78, '2020_05_19_144621_create_comments_table', 9),
(79, '2020_06_02_043238_create_histories_table', 9),
(82, '2020_07_20_003916_create_settings_table', 10);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `podcasts`
--

CREATE TABLE `podcasts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `channel_id` bigint(20) UNSIGNED DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_360p` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_480p` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_720p` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_1080p` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_type` enum('video','audio') COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `runtime` int(10) UNSIGNED DEFAULT NULL,
  `runtime_formatted` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `privacy` tinyint(4) DEFAULT 1 COMMENT '0-Private, 1-Public',
  `license_id` bigint(20) UNSIGNED DEFAULT NULL,
  `monetize` tinyint(1) DEFAULT 0,
  `comments_allowed` tinyint(1) DEFAULT 1,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 - Draft, 1 - Published, 2 - Disabled',
  `views` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `likes` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `dislikes` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `comments_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `podcasts`
--

INSERT INTO `podcasts` (`id`, `user_id`, `channel_id`, `filename`, `video_360p`, `video_480p`, `video_720p`, `video_1080p`, `file_type`, `title`, `description`, `size`, `runtime`, `runtime_formatted`, `privacy`, `license_id`, `monetize`, `comments_allowed`, `thumbnail`, `status`, `views`, `likes`, `dislikes`, `comments_count`, `created_at`, `updated_at`) VALUES
(2, 1, 1, 'E7ALg8q7rv.mp4', 'http://localhost/live_view/public/storage/podcast/360/E7ALg8q7rv.mp4', 'http://localhost/live_view/public/storage/podcast/480/E7ALg8q7rv.mp4', 'http://localhost/live_view/public/storage/podcast/720/E7ALg8q7rv.mp4', NULL, 'video', 'Star Trails', 'A star trail is a type of photograph that uses long exposure times to capture the apparent motion of stars in the night sky due to Earth\'s rotation. A star-trail photograph shows individual stars as streaks across the image, with longer exposures yielding longer arcs.\n\nTypical shutter speeds for a star trail range from 15 minutes to several hours, requiring a \"Bulb\" setting on the camera to open the shutter for a period longer than usual. However, a more practiced technique is to blend a number of frames together to create the final star trail image.\n\nStar trails have been used by professional astronomers to measure the quality of observing locations for major telescopes.', 39665059, 21, '0:21', 1, 1, 0, 1, 'E7ALg8q7rv.jpg', 1, 4, 0, 0, 0, '2020-05-16 12:30:11', '2020-05-18 14:35:46'),
(9, 1, 1, 'K7MBlkkO4J.mp3', NULL, NULL, NULL, NULL, 'audio', 'Dhoom-Pichuk-Dhoom_(webmusic.in)', 'This is a test audio podcast.', 4643422, 290, '4:50', 1, 1, 0, 1, '3aGGKdVmSzR3y1OYdhlFGmB2yDpZCQv5X26v0229.jpeg', 1, 0, 0, 0, 0, '2020-06-24 04:17:47', '2020-06-24 04:18:28'),
(10, 1, NULL, '7B2WWg1927.mp4', NULL, NULL, NULL, NULL, 'video', NULL, NULL, 1481480, 9, '0:8', 1, NULL, 0, 1, '7B2WWg1927.jpg', 0, 0, 0, 0, 0, '2020-07-16 08:06:12', '2020-07-16 08:06:12'),
(11, 1, NULL, 'y8n5kKNkmo.mp4', NULL, NULL, NULL, NULL, 'video', NULL, NULL, 39867041, 1386, '23:5', 1, NULL, 0, 1, 'y8n5kKNkmo.jpg', 0, 0, 0, 0, 0, '2020-07-16 08:12:15', '2020-07-16 08:12:15');

-- --------------------------------------------------------

--
-- Table structure for table `podcast_tag`
--

CREATE TABLE `podcast_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `podcast_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `podcast_tag`
--

INSERT INTO `podcast_tag` (`id`, `tag_id`, `podcast_id`, `created_at`, `updated_at`) VALUES
(27, 19, 2, NULL, NULL),
(28, 20, 2, NULL, NULL),
(31, 22, 9, NULL, NULL),
(32, 23, 9, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `setting_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `setting_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('text','textarea','url','email','number','date') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `setting_name`, `setting_value`, `type`, `created_at`, `updated_at`) VALUES
(1, 'site_name', 'Live View', 'text', '2020-07-19 21:50:29', '2020-07-19 21:50:29'),
(2, 'facebook_link', '', 'url', '2020-07-19 21:50:29', '2020-07-19 21:50:29'),
(3, 'youtube_link', '', 'url', '2020-07-19 21:50:29', '2020-07-19 21:50:29'),
(4, 'twitter_link', '', 'url', '2020-07-19 21:50:29', '2020-07-19 21:50:29'),
(5, 'copyright_text', '@copyright Live View 2020', 'text', '2020-07-19 21:50:29', '2020-07-19 21:50:29');

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `channel_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'jellyfish', 'jellyfish', '2020-05-01 09:48:22', '2020-05-01 09:48:22'),
(2, 'fish', 'fish', '2020-05-01 09:48:22', '2020-05-01 09:48:22'),
(3, 'star', 'star', '2020-05-03 07:39:34', '2020-05-03 07:39:34'),
(4, 'trail', 'trail', '2020-05-03 07:39:34', '2020-05-03 07:39:34'),
(5, 'star trail', 'star-trail', '2020-05-03 07:39:34', '2020-05-03 07:39:34'),
(6, '3', '3', '2020-05-03 08:27:00', '2020-05-03 08:27:00'),
(7, ' 4', '4', '2020-05-03 08:27:00', '2020-05-03 08:27:00'),
(8, ' 5', '5', '2020-05-03 08:27:00', '2020-05-03 08:27:00'),
(9, '6', '6', '2020-05-03 08:38:30', '2020-05-03 08:38:30'),
(10, ' 7', '7', '2020-05-03 08:38:30', '2020-05-03 08:38:30'),
(11, ' 8', '8', '2020-05-03 08:38:30', '2020-05-03 08:38:30'),
(12, '9', '9', '2020-05-03 08:40:13', '2020-05-03 08:40:13'),
(13, ' 10', '10', '2020-05-03 08:40:13', '2020-05-03 08:40:13'),
(14, ' 11', '11', '2020-05-03 08:40:13', '2020-05-03 08:40:13'),
(15, 'hiit', 'hiit', '2020-05-04 06:59:43', '2020-05-04 06:59:43'),
(16, 'workout', 'workout', '2020-05-04 06:59:43', '2020-05-04 06:59:43'),
(17, 'gaming', 'gaming', '2020-05-11 05:22:48', '2020-05-11 05:22:48'),
(18, 'ps4', 'ps4', '2020-05-11 05:22:48', '2020-05-11 05:22:48'),
(19, 'stars', 'stars', '2020-05-15 09:57:31', '2020-05-15 09:57:31'),
(20, 'Star trails', 'star-trails', '2020-05-16 05:18:07', '2020-05-16 05:18:07'),
(21, 'Starry Trails', 'starry-trails', '2020-05-16 11:17:54', '2020-05-16 11:17:54'),
(22, 'aaa', 'aaa', '2020-06-24 04:01:15', '2020-06-24 04:01:15'),
(23, 'abc', 'abc', '2020-06-24 04:01:15', '2020-06-24 04:01:15');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` enum('admin','user') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0 - Blocked, 1 - Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `user_type`, `remember_token`, `status`, `created_at`, `updated_at`) VALUES
(1, 'John Doe', 'jd@email.com', '2020-05-08 09:23:12', '$2y$10$y1kqjfcRD8Ky4mabic2IsuPpkXHe7ruv/5NM7j5ZdesdcflHAgble', 'user', 'KeQULjvWH3t8S2z8UIlSdPE9nG0Wr9AkL6hHspzbucTDjGSugOAW4zPp8UQB', 1, '2020-03-14 08:52:22', '2020-05-08 09:23:12'),
(2, NULL, 'user1@email.com', '2020-05-04 05:11:44', '$2y$10$iKCFFfYFfMWQMGbyQVYKi.T.gw1UvmAXdWWiLVEK91Kg2sWoN/oDS', 'user', 'TbmxaW9o1bdUroI4qrWN43QvqPkYRyFepM3lbcaoX3bblmErbLZ5XKvD11Vc', 1, '2020-05-03 09:58:24', '2020-05-04 05:11:44'),
(3, NULL, 'admin@email.com', '2020-07-16 00:02:11', '$2y$10$3amyKa.3kEGwU0wqqjF9cOLDVgsSN4TBZH2UgsIa2NuMOX4pLVUkK', 'admin', 'WxnQ8sKnbzMXnmSbBJnZaVhj35rTQrKv5xZFVz0t4Ng22hB4i3myNbGpRmTJ', 1, '2020-07-15 23:57:11', '2020-07-15 23:57:11'),
(5, NULL, 'user2@email.com', '2020-07-16 00:02:53', '$2y$10$RZ8.ilD9c0p6Yw8MT.Lt.etppLgOjeVwFxLiNQJlzo8m85UIzoN8q', 'user', NULL, 1, '2020-07-15 23:57:53', '2020-07-15 23:57:53'),
(6, NULL, 'user3@email.com', '2020-07-16 00:02:53', '$2y$10$EVX0WqJbShEDToVN.WrV3OcFZTMrU6oEi/rqYMqCc2A08qbABCPC6', 'user', NULL, 1, '2020-07-15 23:57:53', '2020-07-15 23:57:53'),
(7, NULL, 'user4@email.com', '2020-07-16 00:02:54', '$2y$10$9RYiMKpfgb2IcAjSiE53nuNwqP83CwJp9CVo1GPEnFcQM1yjrvl7i', 'user', NULL, 1, '2020-07-15 23:57:54', '2020-07-15 23:57:54');

-- --------------------------------------------------------

--
-- Table structure for table `user_profiles`
--

CREATE TABLE `user_profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_profiles`
--

INSERT INTO `user_profiles` (`id`, `user_id`, `avatar`, `phone`, `address`, `city`, `state`, `country`, `zip`, `created_at`, `updated_at`) VALUES
(1, 1, 'c7Pi8kNtyuhd0fvtmoWAPSmaztgHX4xBnREo6N1x.jpeg', '9876541234', '14 Boulevard', 'Los Angeles', 'California', 'United States', '32123', '2020-03-14 08:52:22', '2020-05-08 08:34:27'),
(2, 2, NULL, '+9876543121', NULL, NULL, NULL, NULL, NULL, '2020-05-03 09:58:24', '2020-05-03 09:58:24'),
(3, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-15 23:57:11', '2020-07-15 23:57:11'),
(4, 5, NULL, '+919293949596', NULL, NULL, NULL, NULL, NULL, '2020-07-15 23:57:53', '2020-07-15 23:57:53'),
(5, 6, NULL, '+919293949596', NULL, NULL, NULL, NULL, NULL, '2020-07-15 23:57:53', '2020-07-15 23:57:53'),
(6, 7, NULL, '+919293949596', NULL, NULL, NULL, NULL, NULL, '2020-07-15 23:57:54', '2020-07-15 23:57:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `casts`
--
ALTER TABLE `casts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cast_live_stream`
--
ALTER TABLE `cast_live_stream`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cast_live_stream_cast_id_foreign` (`cast_id`),
  ADD KEY `cast_live_stream_live_stream_id_foreign` (`live_stream_id`);

--
-- Indexes for table `cast_podcast`
--
ALTER TABLE `cast_podcast`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cast_video_cast_id_foreign` (`cast_id`),
  ADD KEY `cast_video_video_id_foreign` (`podcast_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_live_stream`
--
ALTER TABLE `category_live_stream`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_live_stream_category_id_foreign` (`category_id`),
  ADD KEY `category_live_stream_live_stream_id_foreign` (`live_stream_id`);

--
-- Indexes for table `category_podcast`
--
ALTER TABLE `category_podcast`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_video_category_id_foreign` (`category_id`),
  ADD KEY `category_video_video_id_foreign` (`podcast_id`);

--
-- Indexes for table `channels`
--
ALTER TABLE `channels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `channels_user_id_foreign` (`user_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_video_id_foreign` (`podcast_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `histories`
--
ALTER TABLE `histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `histories_user_id_foreign` (`user_id`),
  ADD KEY `histories_video_id_foreign` (`podcast_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `language_live_stream`
--
ALTER TABLE `language_live_stream`
  ADD PRIMARY KEY (`id`),
  ADD KEY `language_live_stream_language_id_foreign` (`language_id`),
  ADD KEY `language_live_stream_live_stream_id_foreign` (`live_stream_id`);

--
-- Indexes for table `language_podcast`
--
ALTER TABLE `language_podcast`
  ADD PRIMARY KEY (`id`),
  ADD KEY `language_video_language_id_foreign` (`language_id`),
  ADD KEY `language_video_video_id_foreign` (`podcast_id`);

--
-- Indexes for table `licenses`
--
ALTER TABLE `licenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `likes_video_id_foreign` (`podcast_id`),
  ADD KEY `likes_user_id_foreign` (`user_id`);

--
-- Indexes for table `live_streams`
--
ALTER TABLE `live_streams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `live_streams_user_id_foreign` (`user_id`),
  ADD KEY `live_streams_channel_id_foreign` (`channel_id`),
  ADD KEY `live_streams_license_id_foreign` (`license_id`);

--
-- Indexes for table `live_stream_tag`
--
ALTER TABLE `live_stream_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `live_stream_tag_tag_id_foreign` (`tag_id`),
  ADD KEY `live_stream_tag_live_stream_id_foreign` (`live_stream_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `podcasts`
--
ALTER TABLE `podcasts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `videos_user_id_foreign` (`user_id`),
  ADD KEY `videos_channel_id_foreign` (`channel_id`),
  ADD KEY `videos_license_id_foreign` (`license_id`);

--
-- Indexes for table `podcast_tag`
--
ALTER TABLE `podcast_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tag_video_tag_id_foreign` (`tag_id`),
  ADD KEY `tag_video_video_id_foreign` (`podcast_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscriptions_channel_id_foreign` (`channel_id`),
  ADD KEY `subscriptions_user_id_foreign` (`user_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_profiles`
--
ALTER TABLE `user_profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_profiles_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `casts`
--
ALTER TABLE `casts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cast_live_stream`
--
ALTER TABLE `cast_live_stream`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cast_podcast`
--
ALTER TABLE `cast_podcast`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `category_live_stream`
--
ALTER TABLE `category_live_stream`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category_podcast`
--
ALTER TABLE `category_podcast`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `channels`
--
ALTER TABLE `channels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `histories`
--
ALTER TABLE `histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `language_live_stream`
--
ALTER TABLE `language_live_stream`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `language_podcast`
--
ALTER TABLE `language_podcast`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `licenses`
--
ALTER TABLE `licenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `live_streams`
--
ALTER TABLE `live_streams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `live_stream_tag`
--
ALTER TABLE `live_stream_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `podcasts`
--
ALTER TABLE `podcasts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `podcast_tag`
--
ALTER TABLE `podcast_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_profiles`
--
ALTER TABLE `user_profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cast_live_stream`
--
ALTER TABLE `cast_live_stream`
  ADD CONSTRAINT `cast_live_stream_cast_id_foreign` FOREIGN KEY (`cast_id`) REFERENCES `casts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cast_live_stream_live_stream_id_foreign` FOREIGN KEY (`live_stream_id`) REFERENCES `live_streams` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cast_podcast`
--
ALTER TABLE `cast_podcast`
  ADD CONSTRAINT `cast_video_cast_id_foreign` FOREIGN KEY (`cast_id`) REFERENCES `casts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cast_video_video_id_foreign` FOREIGN KEY (`podcast_id`) REFERENCES `podcasts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `category_live_stream`
--
ALTER TABLE `category_live_stream`
  ADD CONSTRAINT `category_live_stream_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_live_stream_live_stream_id_foreign` FOREIGN KEY (`live_stream_id`) REFERENCES `live_streams` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `category_podcast`
--
ALTER TABLE `category_podcast`
  ADD CONSTRAINT `category_video_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_video_video_id_foreign` FOREIGN KEY (`podcast_id`) REFERENCES `podcasts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `channels`
--
ALTER TABLE `channels`
  ADD CONSTRAINT `channels_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `comments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_video_id_foreign` FOREIGN KEY (`podcast_id`) REFERENCES `podcasts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `histories`
--
ALTER TABLE `histories`
  ADD CONSTRAINT `histories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `histories_video_id_foreign` FOREIGN KEY (`podcast_id`) REFERENCES `podcasts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `language_live_stream`
--
ALTER TABLE `language_live_stream`
  ADD CONSTRAINT `language_live_stream_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `language_live_stream_live_stream_id_foreign` FOREIGN KEY (`live_stream_id`) REFERENCES `live_streams` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `language_podcast`
--
ALTER TABLE `language_podcast`
  ADD CONSTRAINT `language_video_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `language_video_video_id_foreign` FOREIGN KEY (`podcast_id`) REFERENCES `podcasts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `likes_video_id_foreign` FOREIGN KEY (`podcast_id`) REFERENCES `podcasts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `live_streams`
--
ALTER TABLE `live_streams`
  ADD CONSTRAINT `live_streams_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `live_streams_license_id_foreign` FOREIGN KEY (`license_id`) REFERENCES `licenses` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `live_streams_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `live_stream_tag`
--
ALTER TABLE `live_stream_tag`
  ADD CONSTRAINT `live_stream_tag_live_stream_id_foreign` FOREIGN KEY (`live_stream_id`) REFERENCES `live_streams` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `live_stream_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `podcasts`
--
ALTER TABLE `podcasts`
  ADD CONSTRAINT `videos_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `videos_license_id_foreign` FOREIGN KEY (`license_id`) REFERENCES `licenses` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `videos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `podcast_tag`
--
ALTER TABLE `podcast_tag`
  ADD CONSTRAINT `tag_video_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tag_video_video_id_foreign` FOREIGN KEY (`podcast_id`) REFERENCES `podcasts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD CONSTRAINT `subscriptions_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subscriptions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_profiles`
--
ALTER TABLE `user_profiles`
  ADD CONSTRAINT `user_profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
