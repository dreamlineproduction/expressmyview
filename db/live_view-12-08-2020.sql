-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2020 at 06:12 PM
-- Server version: 10.4.11-MariaDB-log
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
(6, 'joe', 'joe', '2020-05-04 06:59:43', '2020-05-04 06:59:43'),
(7, 'Nathan Duke', 'nathan-duke', '2020-07-26 15:42:24', '2020-07-26 15:42:24');

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
(18, 2, 18, NULL, NULL);

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
  `verified` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `subscribers` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `channels`
--

INSERT INTO `channels` (`id`, `user_id`, `name`, `description`, `logo`, `banner`, `facebook`, `twitter`, `youtube`, `instagram`, `pinterest`, `linkedin`, `tiktok`, `verified`, `status`, `subscribers`, `created_at`, `updated_at`) VALUES
(1, 1, 'Test Channel', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum vestibulum justo eget neque hendrerit sollicitudin. Proin hendrerit ex consectetur risus rhoncus, malesuada pretium odio mattis. Donec et tellus venenatis, pulvinar tellus at, pellentesque quam. Proin at nulla dui. Suspendisse elementum lorem vitae blandit dictum. Vestibulum ornare purus non dolor suscipit scelerisque. Integer molestie augue sollicitudin risus sagittis porta. Aenean eu aliquet est. Quisque condimentum lorem eu blandit lacinia. Pellentesque tempus, lorem nec porttitor aliquet, libero arcu ornare tortor, ut sollicitudin magna nulla vel quam. Donec volutpat turpis eu tristique tincidunt. Suspendisse felis mauris, dictum ut magna id, tristique gravida diam. Vivamus lobortis ac neque sit amet ultricies. Sed id neque in nunc tincidunt vehicula. In lobortis finibus leo, in aliquam lorem finibus at.', 'RtEKIH60JLEf5CDUCPqSdyqTCqDWmcdhi6gsETS3.png', 'poSpOHIE3fCf8UXy9WcLCPYLrbLnR4Et4bS3byKF.jpeg', 'https://www.facebook.com/CDPROJEKTRED/', 'https://twitter.com/CDPROJEKTRED', NULL, NULL, NULL, NULL, NULL, 0, 1, 2, '2020-03-21 05:49:16', '2020-08-04 01:46:32'),
(2, 1, 'Test Channel 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus congue nec nisi nec vestibulum. Donec vitae facilisis ex. Maecenas sagittis pharetra elementum. Nulla facilisi. Nam sit amet sapien venenatis, posuere tortor eget, molestie dolor. Morbi commodo nisi nibh, sed facilisis urna blandit at. Aenean accumsan, magna ac malesuada porttitor, ante nulla vehicula ligula, vel pellentesque leo diam ullamcorper urna. Sed sed volutpat dui, egestas eleifend urna. Maecenas lacinia volutpat lorem, sed sollicitudin eros eleifend eget. Proin vulputate mollis ultricies. Etiam ut vulputate nibh, ac efficitur risus. Suspendisse accumsan augue nisi, id mattis metus pharetra ut. Pellentesque ac augue arcu. Nulla vestibulum libero sed nulla euismod pulvinar. Praesent nec dui ornare, accumsan ante non, feugiat nisi. Nunc sit amet erat tristique ex maximus porttitor nec ut purus.', 'xLXvYYaEJGaIoz49FjDGpruIh3OEUWSxrSIBZWMI.png', 'Y69TA3Vd86P99WWD8K7EYpEwFdsrk358lgHqy11N.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, '2020-04-12 10:11:51', '2020-07-26 10:30:11'),
(3, 3, 'Ayan Channel', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce dignissim mauris sed scelerisque pretium. Nullam eu blandit risus. Vestibulum interdum lorem quis nibh vestibulum, vel ultricies nunc suscipit. Duis sit amet tempor lectus. Donec bibendum, enim vitae maximus faucibus, dui ante blandit dolor, sed fermentum ante sem ut enim. Donec efficitur sodales diam. Quisque sagittis diam et aliquet pulvinar.\r\n\r\nCurabitur blandit sollicitudin dui at semper. Proin ut dolor quis ligula consequat vulputate. In hac habitasse platea dictumst. Nam vehicula leo mi, tincidunt pharetra nisi auctor porta. Etiam pharetra egestas mollis. Vestibulum porttitor tempus metus vel porta. Mauris sed nulla vitae dui sollicitudin mollis ut eu metus. Nullam consectetur cursus elementum. Nunc dignissim felis a massa aliquet, at vestibulum eros consequat. Vestibulum purus mi, molestie in bibendum vitae, rhoncus sed metus.\r\n\r\nVestibulum dictum eu augue in volutpat. In hac habitasse platea dictumst. Proin mauris massa, luctus eget dui at, porta convallis urna. Proin ultricies pellentesque risus, id volutpat nisi mattis ac. Etiam convallis blandit fringilla. Phasellus hendrerit est a aliquet fringilla. Mauris tincidunt ex tempor magna commodo ultrices. Sed nec odio vestibulum, blandit urna quis, semper purus. Proin malesuada congue est a porta. Pellentesque eget magna elit. Fusce ipsum nibh, suscipit id ligula a, dignissim finibus augue. Ut varius facilisis mi, ac scelerisque ligula aliquet at.', NULL, NULL, 'ayan', 'ayan', 'ayan', 'ayan', 'ayan', 'ayan', 'ayan', 0, 1, 1, '2020-07-25 08:38:46', '2020-07-26 10:30:12'),
(4, 1, 'Test Channel 3', 'Consequatur praesentium nulla eius. Ut quae dolore quam et corporis ut ipsam natus. Corporis et nobis minus id ab eaque repudiandae consequatur. \r\nFuga qui impedit tenetur illum ratione provident odit non sit. Quis repudiandae similique facilis distinctio tempora. Fuga officia totam consectetur incidunt doloremque quo reiciendis in.\r\n\r\n\r\nIste ut mollitia veritatis corrupti qui fugit quibusdam. Sunt fugiat iure voluptas aspernatur itaque. Voluptatem quam aut.', 'edQYf4PSGNiFJ7mS7hMbByWJfvMcVWt6wRHP94Nu.jpeg', '1pW9M0Ig8EMIuLe2Jnkcx9c6Ekvt7JmgYocqPfKW.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, '2020-08-11 13:16:54', '2020-08-11 13:16:54');

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
(11, 18, 1, NULL, 'test comment.', 0, 1, '2020-08-10 05:20:50', '2020-08-10 05:20:50');

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
(11, 'database', 'default', '{\"uuid\":\"59660d7c-b951-4961-af0e-bbeb1624d90b\",\"displayName\":\"App\\\\Jobs\\\\ProcessPodcast\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\ProcessPodcast\",\"command\":\"O:23:\\\"App\\\\Jobs\\\\ProcessPodcast\\\":11:{s:8:\\\"\\u0000*\\u0000video\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:9:\\\"App\\\\Video\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:8:\\\"\\u0000*\\u0000width\\\";i:1280;s:9:\\\"\\u0000*\\u0000height\\\";i:720;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Illuminate\\Database\\Eloquent\\ModelNotFoundException: No query results for model [App\\Video]. in C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Builder.php:472\nStack trace:\n#0 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesAndRestoresModelIdentifiers.php(102): Illuminate\\Database\\Eloquent\\Builder->firstOrFail()\n#1 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesAndRestoresModelIdentifiers.php(57): App\\Jobs\\ProcessPodcast->restoreModel(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#2 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesModels.php(116): App\\Jobs\\ProcessPodcast->getRestoredPropertyValue(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#3 [internal function]: App\\Jobs\\ProcessPodcast->__unserialize(Array)\n#4 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(53): unserialize(\'O:23:\"App\\\\Jobs\\\\...\')\n#5 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#6 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(356): Illuminate\\Queue\\Jobs\\Job->fire()\n#7 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(306): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#8 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(132): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#9 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#10 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#11 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#12 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(33): call_user_func_array(Array, Array)\n#13 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#14 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(91): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#15 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#16 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(592): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#17 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(134): Illuminate\\Container\\Container->call(Array)\n#18 C:\\xampp\\htdocs\\live_view\\vendor\\symfony\\console\\Command\\Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#19 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#20 C:\\xampp\\htdocs\\live_view\\vendor\\symfony\\console\\Application.php(912): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#21 C:\\xampp\\htdocs\\live_view\\vendor\\symfony\\console\\Application.php(264): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#22 C:\\xampp\\htdocs\\live_view\\vendor\\symfony\\console\\Application.php(140): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#23 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#24 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#25 C:\\xampp\\htdocs\\live_view\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#26 {main}', '2020-05-16 12:29:53'),
(12, 'database', 'default', '{\"uuid\":\"2b09b70b-d6d1-4b76-8edb-7ef985272b34\",\"displayName\":\"App\\\\Jobs\\\\ProcessAudioPodcast\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\ProcessAudioPodcast\",\"command\":\"O:28:\\\"App\\\\Jobs\\\\ProcessAudioPodcast\\\":9:{s:8:\\\"\\u0000*\\u0000audio\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:11:\\\"App\\\\Podcast\\\";s:2:\\\"id\\\";i:5;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Illuminate\\Database\\Eloquent\\ModelNotFoundException: No query results for model [App\\Podcast]. in C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Builder.php:472\nStack trace:\n#0 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesAndRestoresModelIdentifiers.php(102): Illuminate\\Database\\Eloquent\\Builder->firstOrFail()\n#1 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesAndRestoresModelIdentifiers.php(57): App\\Jobs\\ProcessAudioPodcast->restoreModel(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#2 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesModels.php(122): App\\Jobs\\ProcessAudioPodcast->getRestoredPropertyValue(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#3 [internal function]: App\\Jobs\\ProcessAudioPodcast->__unserialize(Array)\n#4 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(53): unserialize(\'O:28:\"App\\\\Jobs\\\\...\')\n#5 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#6 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(356): Illuminate\\Queue\\Jobs\\Job->fire()\n#7 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(306): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#8 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(132): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#9 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#10 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#11 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#12 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): call_user_func_array(Array, Array)\n#13 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(37): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#14 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#15 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(39): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#16 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(596): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#17 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(134): Illuminate\\Container\\Container->call(Array)\n#18 C:\\xampp\\htdocs\\live_view\\vendor\\symfony\\console\\Command\\Command.php(258): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#19 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#20 C:\\xampp\\htdocs\\live_view\\vendor\\symfony\\console\\Application.php(911): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#21 C:\\xampp\\htdocs\\live_view\\vendor\\symfony\\console\\Application.php(264): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#22 C:\\xampp\\htdocs\\live_view\\vendor\\symfony\\console\\Application.php(140): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#23 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#24 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#25 C:\\xampp\\htdocs\\live_view\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#26 {main}', '2020-08-04 06:31:57'),
(13, 'database', 'default', '{\"uuid\":\"ad22d040-1891-4df2-99c0-b2a8babe3ba1\",\"displayName\":\"App\\\\Jobs\\\\ProcessAudioPodcast\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\ProcessAudioPodcast\",\"command\":\"O:28:\\\"App\\\\Jobs\\\\ProcessAudioPodcast\\\":9:{s:8:\\\"\\u0000*\\u0000audio\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:11:\\\"App\\\\Podcast\\\";s:2:\\\"id\\\";i:6;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Illuminate\\Database\\Eloquent\\ModelNotFoundException: No query results for model [App\\Podcast]. in C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Builder.php:472\nStack trace:\n#0 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesAndRestoresModelIdentifiers.php(102): Illuminate\\Database\\Eloquent\\Builder->firstOrFail()\n#1 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesAndRestoresModelIdentifiers.php(57): App\\Jobs\\ProcessAudioPodcast->restoreModel(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#2 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesModels.php(122): App\\Jobs\\ProcessAudioPodcast->getRestoredPropertyValue(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#3 [internal function]: App\\Jobs\\ProcessAudioPodcast->__unserialize(Array)\n#4 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(53): unserialize(\'O:28:\"App\\\\Jobs\\\\...\')\n#5 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#6 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(356): Illuminate\\Queue\\Jobs\\Job->fire()\n#7 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(306): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#8 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(132): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#9 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#10 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#11 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#12 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): call_user_func_array(Array, Array)\n#13 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(37): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#14 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#15 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(39): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#16 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(596): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#17 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(134): Illuminate\\Container\\Container->call(Array)\n#18 C:\\xampp\\htdocs\\live_view\\vendor\\symfony\\console\\Command\\Command.php(258): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#19 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#20 C:\\xampp\\htdocs\\live_view\\vendor\\symfony\\console\\Application.php(911): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#21 C:\\xampp\\htdocs\\live_view\\vendor\\symfony\\console\\Application.php(264): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#22 C:\\xampp\\htdocs\\live_view\\vendor\\symfony\\console\\Application.php(140): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#23 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#24 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#25 C:\\xampp\\htdocs\\live_view\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#26 {main}', '2020-08-04 06:31:57');
INSERT INTO `failed_jobs` (`id`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(14, 'database', 'default', '{\"uuid\":\"4bcc2f04-86d2-4a09-83d5-0f3f6b2106d1\",\"displayName\":\"App\\\\Jobs\\\\ProcessAudioPodcast\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\ProcessAudioPodcast\",\"command\":\"O:28:\\\"App\\\\Jobs\\\\ProcessAudioPodcast\\\":9:{s:8:\\\"\\u0000*\\u0000audio\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:11:\\\"App\\\\Podcast\\\";s:2:\\\"id\\\";i:7;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Illuminate\\Database\\Eloquent\\ModelNotFoundException: No query results for model [App\\Podcast]. in C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Builder.php:472\nStack trace:\n#0 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesAndRestoresModelIdentifiers.php(102): Illuminate\\Database\\Eloquent\\Builder->firstOrFail()\n#1 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesAndRestoresModelIdentifiers.php(57): App\\Jobs\\ProcessAudioPodcast->restoreModel(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#2 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesModels.php(122): App\\Jobs\\ProcessAudioPodcast->getRestoredPropertyValue(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#3 [internal function]: App\\Jobs\\ProcessAudioPodcast->__unserialize(Array)\n#4 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(53): unserialize(\'O:28:\"App\\\\Jobs\\\\...\')\n#5 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#6 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(356): Illuminate\\Queue\\Jobs\\Job->fire()\n#7 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(306): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#8 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(132): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#9 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#10 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#11 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#12 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): call_user_func_array(Array, Array)\n#13 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(37): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#14 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#15 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(39): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#16 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(596): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#17 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(134): Illuminate\\Container\\Container->call(Array)\n#18 C:\\xampp\\htdocs\\live_view\\vendor\\symfony\\console\\Command\\Command.php(258): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#19 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#20 C:\\xampp\\htdocs\\live_view\\vendor\\symfony\\console\\Application.php(911): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#21 C:\\xampp\\htdocs\\live_view\\vendor\\symfony\\console\\Application.php(264): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#22 C:\\xampp\\htdocs\\live_view\\vendor\\symfony\\console\\Application.php(140): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#23 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#24 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#25 C:\\xampp\\htdocs\\live_view\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#26 {main}', '2020-08-04 06:31:57'),
(15, 'database', 'default', '{\"uuid\":\"40f1a1bc-3e9c-4972-ac15-a760964b4486\",\"displayName\":\"App\\\\Jobs\\\\ProcessAudioPodcast\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\ProcessAudioPodcast\",\"command\":\"O:28:\\\"App\\\\Jobs\\\\ProcessAudioPodcast\\\":9:{s:8:\\\"\\u0000*\\u0000audio\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:11:\\\"App\\\\Podcast\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Illuminate\\Database\\Eloquent\\ModelNotFoundException: No query results for model [App\\Podcast]. in C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Builder.php:472\nStack trace:\n#0 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesAndRestoresModelIdentifiers.php(102): Illuminate\\Database\\Eloquent\\Builder->firstOrFail()\n#1 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesAndRestoresModelIdentifiers.php(57): App\\Jobs\\ProcessAudioPodcast->restoreModel(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#2 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\SerializesModels.php(122): App\\Jobs\\ProcessAudioPodcast->getRestoredPropertyValue(Object(Illuminate\\Contracts\\Database\\ModelIdentifier))\n#3 [internal function]: App\\Jobs\\ProcessAudioPodcast->__unserialize(Array)\n#4 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(53): unserialize(\'O:28:\"App\\\\Jobs\\\\...\')\n#5 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#6 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(356): Illuminate\\Queue\\Jobs\\Job->fire()\n#7 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(306): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#8 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(132): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#9 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#10 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#11 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#12 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): call_user_func_array(Array, Array)\n#13 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(37): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#14 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#15 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(39): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#16 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(596): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#17 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(134): Illuminate\\Container\\Container->call(Array)\n#18 C:\\xampp\\htdocs\\live_view\\vendor\\symfony\\console\\Command\\Command.php(258): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#19 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#20 C:\\xampp\\htdocs\\live_view\\vendor\\symfony\\console\\Application.php(911): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#21 C:\\xampp\\htdocs\\live_view\\vendor\\symfony\\console\\Application.php(264): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#22 C:\\xampp\\htdocs\\live_view\\vendor\\symfony\\console\\Application.php(140): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#23 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#24 C:\\xampp\\htdocs\\live_view\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#25 C:\\xampp\\htdocs\\live_view\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#26 {main}', '2020-08-04 06:31:57');

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
(10, 1, 18, '2020-08-06 08:48:43', '2020-08-06 08:48:43');

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
(12, 2, 18, NULL, NULL);

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
(82, '2020_07_20_003916_create_settings_table', 10),
(83, '2020_07_25_120719_create_pages_table', 11),
(84, '2020_07_26_105824_add_verified_to_channels_table', 11);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `content`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Terms & Conditions', 'terms-conditions', '<h2><strong>Terms and Conditions</strong></h2>\r\n\r\n<p>Welcome to My View!</p>\r\n\r\n<p>These terms and conditions outline the rules and regulations for the use of Express My View\'s Website, located at https://expressmyview.com/.</p>\r\n\r\n<p>By accessing this website we assume you accept these terms and conditions. Do not continue to use My View if you do not agree to take all of the terms and conditions stated on this page. </p>\r\n\r\n<p>The following terminology applies to these Terms and Conditions, Privacy Statement and Disclaimer Notice and all Agreements: \"Client\", \"You\" and \"Your\" refers to you, the person log on this website and compliant to the Company’s terms and conditions. \"The Company\", \"Ourselves\", \"We\", \"Our\" and \"Us\", refers to our Company. \"Party\", \"Parties\", or \"Us\", refers to both the Client and ourselves. All terms refer to the offer, acceptance and consideration of payment necessary to undertake the process of our assistance to the Client in the most appropriate manner for the express purpose of meeting the Client’s needs in respect of provision of the Company’s stated services, in accordance with and subject to, prevailing law of Netherlands. Any use of the above terminology or other words in the singular, plural, capitalization and/or he/she or they, are taken as interchangeable and therefore as referring to same.</p>\r\n\r\n<h3><strong>Cookies</strong></h3>\r\n\r\n<p>We employ the use of cookies. By accessing My View, you agreed to use cookies in agreement with the Express My View\'s Privacy Policy.</p>\r\n\r\n<p>Most interactive websites use cookies to let us retrieve the user’s details for each visit. Cookies are used by our website to enable the functionality of certain areas to make it easier for people visiting our website. Some of our affiliate/advertising partners may also use cookies.</p>\r\n\r\n<h3><strong>License</strong></h3>\r\n\r\n<p>Unless otherwise stated, Express My View and/or its licensors own the intellectual property rights for all material on My View. All intellectual property rights are reserved. You may access this from My View for your own personal use subjected to restrictions set in these terms and conditions.</p>\r\n\r\n<p>You must not:</p>\r\n<ul>\r\n    <li>Republish material from My View</li>\r\n    <li>Sell, rent or sub-license material from My View</li>\r\n    <li>Reproduce, duplicate or copy material from My View</li>\r\n    <li>Redistribute content from My View</li>\r\n</ul>\r\n\r\n<p>This Agreement shall begin on the date hereof.</p>\r\n\r\n<p>Parts of this website offer an opportunity for users to post and exchange opinions and information in certain areas of the website. Express My View does not filter, edit, publish or review Comments prior to their presence on the website. Comments do not reflect the views and opinions of Express My View,its agents and/or affiliates. Comments reflect the views and opinions of the person who post their views and opinions. To the extent permitted by applicable laws, Express My View shall not be liable for the Comments or for any liability, damages or expenses caused and/or suffered as a result of any use of and/or posting of and/or appearance of the Comments on this website.</p>\r\n\r\n<p>Express My View reserves the right to monitor all Comments and to remove any Comments which can be considered inappropriate, offensive or causes breach of these Terms and Conditions.</p>\r\n\r\n<p>You warrant and represent that:</p>\r\n\r\n<ul>\r\n    <li>You are entitled to post the Comments on our website and have all necessary licenses and consents to do so;</li>\r\n    <li>The Comments do not invade any intellectual property right, including without limitation copyright, patent or trademark of any third party;</li>\r\n    <li>The Comments do not contain any defamatory, libelous, offensive, indecent or otherwise unlawful material which is an invasion of privacy</li>\r\n    <li>The Comments will not be used to solicit or promote business or custom or present commercial activities or unlawful activity.</li>\r\n</ul>\r\n\r\n<p>You hereby grant Express My View a non-exclusive license to use, reproduce, edit and authorize others to use, reproduce and edit any of your Comments in any and all forms, formats or media.</p>\r\n\r\n<h3><strong>Hyperlinking to our Content</strong></h3>\r\n\r\n<p>The following organizations may link to our Website without prior written approval:</p>\r\n\r\n<ul>\r\n    <li>Government agencies;</li>\r\n    <li>Search engines;</li>\r\n    <li>News organizations;</li>\r\n    <li>Online directory distributors may link to our Website in the same manner as they hyperlink to the Websites of other listed businesses; and</li>\r\n    <li>System wide Accredited Businesses except soliciting non-profit organizations, charity shopping malls, and charity fundraising groups which may not hyperlink to our Web site.</li>\r\n</ul>\r\n\r\n<p>These organizations may link to our home page, to publications or to other Website information so long as the link: (a) is not in any way deceptive; (b) does not falsely imply sponsorship, endorsement or approval of the linking party and its products and/or services; and (c) fits within the context of the linking party’s site.</p>\r\n\r\n<p>We may consider and approve other link requests from the following types of organizations:</p>\r\n\r\n<ul>\r\n    <li>commonly-known consumer and/or business information sources;</li>\r\n    <li>dot.com community sites;</li>\r\n    <li>associations or other groups representing charities;</li>\r\n    <li>online directory distributors;</li>\r\n    <li>internet portals;</li>\r\n    <li>accounting, law and consulting firms; and</li>\r\n    <li>educational institutions and trade associations.</li>\r\n</ul>\r\n\r\n<p>We will approve link requests from these organizations if we decide that: (a) the link would not make us look unfavorably to ourselves or to our accredited businesses; (b) the organization does not have any negative records with us; (c) the benefit to us from the visibility of the hyperlink compensates the absence of Express My View; and (d) the link is in the context of general resource information.</p>\r\n\r\n<p>These organizations may link to our home page so long as the link: (a) is not in any way deceptive; (b) does not falsely imply sponsorship, endorsement or approval of the linking party and its products or services; and (c) fits within the context of the linking party’s site.</p>\r\n\r\n<p>If you are one of the organizations listed in paragraph 2 above and are interested in linking to our website, you must inform us by sending an e-mail to Express My View. Please include your name, your organization name, contact information as well as the URL of your site, a list of any URLs from which you intend to link to our Website, and a list of the URLs on our site to which you would like to link. Wait 2-3 weeks for a response.</p>\r\n\r\n<p>Approved organizations may hyperlink to our Website as follows:</p>\r\n\r\n<ul>\r\n    <li>By use of our corporate name; or</li>\r\n    <li>By use of the uniform resource locator being linked to; or</li>\r\n    <li>By use of any other description of our Website being linked to that makes sense within the context and format of content on the linking party’s site.</li>\r\n</ul>\r\n\r\n<p>No use of Express My View\'s logo or other artwork will be allowed for linking absent a trademark license agreement.</p>\r\n\r\n<h3><strong>iFrames</strong></h3>\r\n\r\n<p>Without prior approval and written permission, you may not create frames around our Webpages that alter in any way the visual presentation or appearance of our Website.</p>\r\n\r\n<h3><strong>Content Liability</strong></h3>\r\n\r\n<p>We shall not be hold responsible for any content that appears on your Website. You agree to protect and defend us against all claims that is rising on your Website. No link(s) should appear on any Website that may be interpreted as libelous, obscene or criminal, or which infringes, otherwise violates, or advocates the infringement or other violation of, any third party rights.</p>\r\n\r\n<h3><strong>Your Privacy</strong></h3>\r\n\r\n<p>Please read Privacy Policy</p>\r\n\r\n<h3><strong>Reservation of Rights</strong></h3>\r\n\r\n<p>We reserve the right to request that you remove all links or any particular link to our Website. You approve to immediately remove all links to our Website upon request. We also reserve the right to amen these terms and conditions and it’s linking policy at any time. By continuously linking to our Website, you agree to be bound to and follow these linking terms and conditions.</p>\r\n\r\n<h3><strong>Removal of links from our website</strong></h3>\r\n\r\n<p>If you find any link on our Website that is offensive for any reason, you are free to contact and inform us any moment. We will consider requests to remove links but we are not obligated to or so or to respond to you directly.</p>\r\n\r\n<p>We do not ensure that the information on this website is correct, we do not warrant its completeness or accuracy; nor do we promise to ensure that the website remains available or that the material on the website is kept up to date.</p>\r\n\r\n<h3><strong>Disclaimer</strong></h3>\r\n\r\n<p>To the maximum extent permitted by applicable law, we exclude all representations, warranties and conditions relating to our website and the use of this website. Nothing in this disclaimer will:</p>\r\n\r\n<ul>\r\n    <li>limit or exclude our or your liability for death or personal injury;</li>\r\n    <li>limit or exclude our or your liability for fraud or fraudulent misrepresentation;</li>\r\n    <li>limit any of our or your liabilities in any way that is not permitted under applicable law; or</li>\r\n    <li>exclude any of our or your liabilities that may not be excluded under applicable law.</li>\r\n</ul>\r\n\r\n<p>The limitations and prohibitions of liability set in this Section and elsewhere in this disclaimer: (a) are subject to the preceding paragraph; and (b) govern all liabilities arising under the disclaimer, including liabilities arising in contract, in tort and for breach of statutory duty.</p>\r\n\r\n<p>As long as the website and the information and services on the website are provided free of charge, we will not be liable for any loss or damage of any nature.</p>', 1, '2020-07-25 07:10:30', '2020-07-26 14:18:52'),
(2, 'Privacy Policy', 'privacy-policy', '<h1>Privacy Policy for Express My View</h1>\r\n\r\n<p>At expressmyview, accessible from https://expressmyview.com/, one of our main priorities is the privacy of our visitors. This Privacy Policy document contains types of information that is collected and recorded by expressmyview and how we use it.</p>\r\n\r\n<p>If you have additional questions or require more information about our Privacy Policy, do not hesitate to contact us.</p>\r\n\r\n<p>This Privacy Policy applies only to our online activities and is valid for visitors to our website with regards to the information that they shared and/or collect in expressmyview. This policy is not applicable to any information collected offline or via channels other than this website.</p>\r\n\r\n<h2>Consent</h2>\r\n\r\n<p>By using our website, you hereby consent to our Privacy Policy and agree to its terms.</p>\r\n\r\n<h2>Information we collect</h2>\r\n\r\n<p>The personal information that you are asked to provide, and the reasons why you are asked to provide it, will be made clear to you at the point we ask you to provide your personal information.</p>\r\n<p>If you contact us directly, we may receive additional information about you such as your name, email address, phone number, the contents of the message and/or attachments you may send us, and any other information you may choose to provide.</p>\r\n<p>When you register for an Account, we may ask for your contact information, including items such as name, company name, address, email address, and telephone number.</p>\r\n\r\n<h2>How we use your information</h2>\r\n\r\n<p>We use the information we collect in various ways, including to:</p>\r\n\r\n<ul>\r\n<li>Provide, operate, and maintain our webste</li>\r\n<li>Improve, personalize, and expand our webste</li>\r\n<li>Understand and analyze how you use our webste</li>\r\n<li>Develop new products, services, features, and functionality</li>\r\n<li>Communicate with you, either directly or through one of our partners, including for customer service, to provide you with updates and other information relating to the webste, and for marketing and promotional purposes</li>\r\n<li>Send you emails</li>\r\n<li>Find and prevent fraud</li>\r\n</ul>\r\n\r\n<h2>Log Files</h2>\r\n\r\n<p>expressmyview follows a standard procedure of using log files. These files log visitors when they visit websites. All hosting companies do this and a part of hosting services\' analytics. The information collected by log files include internet protocol (IP) addresses, browser type, Internet Service Provider (ISP), date and time stamp, referring/exit pages, and possibly the number of clicks. These are not linked to any information that is personally identifiable. The purpose of the information is for analyzing trends, administering the site, tracking users\' movement on the website, and gathering demographic information. Our Privacy Policy was created with the help of the <a href=\"https://www.privacypolicygenerator.info\">Privacy Policy Generator</a> and the <a href=\"https://www.privacypolicyonline.com/privacy-policy-generator/\">Online Privacy Policy Generator</a>.</p>\r\n\r\n<h2>Cookies and Web Beacons</h2>\r\n\r\n<p>Like any other website, expressmyview uses \'cookies\'. These cookies are used to store information including visitors\' preferences, and the pages on the website that the visitor accessed or visited. The information is used to optimize the users\' experience by customizing our web page content based on visitors\' browser type and/or other information.</p>\r\n\r\n<p>For more general information on cookies, please read <a href=\"https://www.cookieconsent.com/what-are-cookies/\">\"What Are Cookies\"</a>.</p>\r\n\r\n<h2>Google DoubleClick DART Cookie</h2>\r\n\r\n<p>Google is one of a third-party vendor on our site. It also uses cookies, known as DART cookies, to serve ads to our site visitors based upon their visit to www.website.com and other sites on the internet. However, visitors may choose to decline the use of DART cookies by visiting the Google ad and content network Privacy Policy at the following URL – <a href=\"https://policies.google.com/technologies/ads\">https://policies.google.com/technologies/ads</a></p>\r\n\r\n<h2>Our Advertising Partners</h2>\r\n\r\n<p>Some of advertisers on our site may use cookies and web beacons. Our advertising partners are listed below. Each of our advertising partners has their own Privacy Policy for their policies on user data. For easier access, we hyperlinked to their Privacy Policies below.</p>\r\n\r\n<ul>\r\n    <li>\r\n        <p>Google</p>\r\n        <p><a href=\"https://policies.google.com/technologies/ads\">https://policies.google.com/technologies/ads</a></p>\r\n    </li>\r\n</ul>\r\n\r\n<h2>Advertising Partners Privacy Policies</h2>\r\n\r\n<P>You may consult this list to find the Privacy Policy for each of the advertising partners of expressmyview.</p>\r\n\r\n<p>Third-party ad servers or ad networks uses technologies like cookies, JavaScript, or Web Beacons that are used in their respective advertisements and links that appear on expressmyview, which are sent directly to users\' browser. They automatically receive your IP address when this occurs. These technologies are used to measure the effectiveness of their advertising campaigns and/or to personalize the advertising content that you see on websites that you visit.</p>\r\n\r\n<p>Note that expressmyview has no access to or control over these cookies that are used by third-party advertisers.</p>\r\n\r\n<h2>Third Party Privacy Policies</h2>\r\n\r\n<p>expressmyview\'s Privacy Policy does not apply to other advertisers or websites. Thus, we are advising you to consult the respective Privacy Policies of these third-party ad servers for more detailed information. It may include their practices and instructions about how to opt-out of certain options. </p>\r\n\r\n<p>You can choose to disable cookies through your individual browser options. To know more detailed information about cookie management with specific web browsers, it can be found at the browsers\' respective websites.</p>\r\n\r\n<h2>CCPA Privacy Rights (Do Not Sell My Personal Information)</h2>\r\n\r\n<p>Under the CCPA, among other rights, California consumers have the right to:</p>\r\n<p>Request that a business that collects a consumer\'s personal data disclose the categories and specific pieces of personal data that a business has collected about consumers.</p>\r\n<p>Request that a business delete any personal data about the consumer that a business has collected.</p>\r\n<p>Request that a business that sells a consumer\'s personal data, not sell the consumer\'s personal data.</p>\r\n<p>If you make a request, we have one month to respond to you. If you would like to exercise any of these rights, please contact us.</p>\r\n\r\n<h2>GDPR Data Protection Rights</h2>\r\n\r\n<p>We would like to make sure you are fully aware of all of your data protection rights. Every user is entitled to the following:</p>\r\n<p>The right to access – You have the right to request copies of your personal data. We may charge you a small fee for this service.</p>\r\n<p>The right to rectification – You have the right to request that we correct any information you believe is inaccurate. You also have the right to request that we complete the information you believe is incomplete.</p>\r\n<p>The right to erasure – You have the right to request that we erase your personal data, under certain conditions.</p>\r\n<p>The right to restrict processing – You have the right to request that we restrict the processing of your personal data, under certain conditions.</p>\r\n<p>The right to object to processing – You have the right to object to our processing of your personal data, under certain conditions.</p>\r\n<p>The right to data portability – You have the right to request that we transfer the data that we have collected to another organization, or directly to you, under certain conditions.</p>\r\n<p>If you make a request, we have one month to respond to you. If you would like to exercise any of these rights, please contact us.</p>\r\n\r\n<h2>Children\'s Information</h2>\r\n\r\n<p>Another part of our priority is adding protection for children while using the internet. We encourage parents and guardians to observe, participate in, and/or monitor and guide their online activity.</p>\r\n\r\n<p>expressmyview does not knowingly collect any Personal Identifiable Information from children under the age of 13. If you think that your child provided this kind of information on our website, we strongly encourage you to contact us immediately and we will do our best efforts to promptly remove such information from our records.</p>', 1, '2020-07-25 07:10:30', '2020-07-26 14:55:02'),
(3, 'Cookie Policy', 'cookie-policy', '<h1 style=\"font-size: 36px; margin-bottom: 18px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102);\">Cookie Policy for Express My View</h1><h1><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">This is the Cookie Policy for Express My View, accessible from https://expressmyview.com</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><span style=\"font-weight: 700;\">What Are Cookies</span></p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">As is common practice with almost all professional websites this site uses cookies, which are tiny files that are downloaded to your computer, to improve your experience. This page describes what information they gather, how we use it and why we sometimes need to store these cookies. We will also share how you can prevent these cookies from being stored however this may downgrade or \'break\' certain elements of the sites functionality.</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">For more general information on cookies, please read&nbsp;<a href=\"https://www.cookieconsent.com/what-are-cookies/\" style=\"color: rgb(93, 136, 179);\">\"What Are Cookies\"</a>.</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><span style=\"font-weight: 700;\">How We Use Cookies</span></p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">We use cookies for a variety of reasons detailed below. Unfortunately in most cases there are no industry standard options for disabling cookies without completely disabling the functionality and features they add to this site. It is recommended that you leave on all cookies if you are not sure whether you need them or not in case they are used to provide a service that you use.</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><span style=\"font-weight: 700;\">Disabling Cookies</span></p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">You can prevent the setting of cookies by adjusting the settings on your browser (see your browser Help for how to do this). Be aware that disabling cookies will affect the functionality of this and many other websites that you visit. Disabling cookies will usually result in also disabling certain functionality and features of the this site. Therefore it is recommended that you do not disable cookies.</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><span style=\"font-weight: 700;\">The Cookies We Set</span></p><ul style=\"margin-bottom: 10px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><li><p style=\"margin-bottom: 20px;\">Account related cookies</p><p style=\"margin-bottom: 20px;\">If you create an account with us then we will use cookies for the management of the signup process and general administration. These cookies will usually be deleted when you log out however in some cases they may remain afterwards to remember your site preferences when logged out.</p></li><li><p style=\"margin-bottom: 20px;\">Login related cookies</p><p style=\"margin-bottom: 20px;\">We use cookies when you are logged in so that we can remember this fact. This prevents you from having to log in every single time you visit a new page. These cookies are typically removed or cleared when you log out to ensure that you can only access restricted features and areas when logged in.</p></li><li><p style=\"margin-bottom: 20px;\">Forms related cookies</p><p style=\"margin-bottom: 20px;\">When you submit data to through a form such as those found on contact pages or comment forms cookies may be set to remember your user details for future correspondence.</p></li></ul><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><span style=\"font-weight: 700;\">Third Party Cookies</span></p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">In some special cases we also use cookies provided by trusted third parties. The following section details which third party cookies you might encounter through this site.</p><ul style=\"margin-bottom: 10px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><li><p style=\"margin-bottom: 20px;\">This site uses Google Analytics which is one of the most widespread and trusted analytics solution on the web for helping us to understand how you use the site and ways that we can improve your experience. These cookies may track things such as how long you spend on the site and the pages that you visit so we can continue to produce engaging content.</p><p style=\"margin-bottom: 20px;\">For more information on Google Analytics cookies, see the official Google Analytics page.</p></li><li><p style=\"margin-bottom: 20px;\">From time to time we test new features and make subtle changes to the way that the site is delivered. When we are still testing new features these cookies may be used to ensure that you receive a consistent experience whilst on the site whilst ensuring we understand which optimisations our users appreciate the most.</p></li><li><p style=\"margin-bottom: 20px;\">We also use social media buttons and/or plugins on this site that allow you to connect with your social network in various ways. For these to work the following social media sites including; {List the social networks whose features you have integrated with your site?:12}, will set cookies through our site which may be used to enhance your profile on their site or contribute to the data they hold for various purposes outlined in their respective privacy policies.</p></li></ul><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><span style=\"font-weight: 700;\">More Information</span></p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Hopefully that has clarified things for you and as was previously mentioned if there is something that you aren\'t sure whether you need or not it\'s usually safer to leave cookies enabled in case it does interact with one of the features you use on our site. This Cookies Policy was created with the help of the&nbsp;<a href=\"https://www.cookiepolicygenerator.com/cookie-policy-generator/\" style=\"color: rgb(93, 136, 179);\">Cookies Policy Template Generator</a>&nbsp;and the&nbsp;<a href=\"https://www.privacypolicytemplate.net/\" style=\"color: rgb(93, 136, 179);\">Privacy Policy Template Generator</a>.</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">However if you are still looking for more information then you can contact us through one of our preferred contact methods:</p><ul style=\"margin-bottom: 10px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><li>By visiting this link: https://expressmyview.com</li></ul></h1><ul>\r\n</ul>', 1, '2020-07-25 07:10:30', '2020-07-26 15:16:02');

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
  `converted` smallint(4) NOT NULL DEFAULT 0 COMMENT 'Video - max resolution, Audio - 1, Not yet converted - 0',
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 - Draft, 1 - Published, 2 - Disabled',
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

INSERT INTO `podcasts` (`id`, `user_id`, `channel_id`, `filename`, `file_type`, `title`, `description`, `size`, `runtime`, `runtime_formatted`, `privacy`, `license_id`, `monetize`, `comments_allowed`, `thumbnail`, `converted`, `status`, `views`, `likes`, `dislikes`, `comments_count`, `created_at`, `updated_at`) VALUES
(18, 1, 1, 'XWZRDg2ymo.mp4', 'video', 'Big Buck Bunny', 'A large and lovable rabbit deals with three tiny bullies, led by a flying squirrel, who are determined to squelch his happiness.', 158008374, 596, '9:56', 1, 1, 0, 1, 'XWZRDg2ymo.jpg', 720, 1, 0, 0, 0, 0, '2020-08-06 08:46:57', '2020-08-06 09:01:34');

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
(36, 25, 18, NULL, NULL),
(37, 26, 18, NULL, NULL);

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
(2, 'facebook_link', 'https://www.facebook.com/', 'url', '2020-07-19 21:50:29', '2020-07-19 21:50:29'),
(3, 'youtube_link', 'https://www.youtube.com/', 'url', '2020-07-19 21:50:29', '2020-07-19 21:50:29'),
(4, 'twitter_link', 'https://twitter.com/', 'url', '2020-07-19 21:50:29', '2020-07-19 21:50:29'),
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

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `channel_id`, `user_id`, `created_at`, `updated_at`) VALUES
(3, 1, 3, '2020-07-25 06:21:38', '2020-07-25 06:21:38'),
(6, 2, 2, '2020-07-26 10:30:11', '2020-07-26 10:30:11'),
(7, 3, 2, '2020-07-26 10:30:12', '2020-07-26 10:30:12'),
(8, 1, 2, '2020-07-26 10:31:35', '2020-07-26 10:31:35');

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
(23, 'abc', 'abc', '2020-06-24 04:01:15', '2020-06-24 04:01:15'),
(24, 'audio', 'audio', '2020-07-26 15:42:24', '2020-07-26 15:42:24'),
(25, 'bunny', 'bunny', '2020-08-06 06:42:53', '2020-08-06 06:42:53'),
(26, 'animation', 'animation', '2020-08-06 06:42:53', '2020-08-06 06:42:53');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hide_email` tinyint(1) NOT NULL DEFAULT 0,
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

INSERT INTO `users` (`id`, `name`, `email`, `hide_email`, `email_verified_at`, `password`, `user_type`, `remember_token`, `status`, `created_at`, `updated_at`) VALUES
(1, 'John Doe', 'jd@email.com', 1, '2020-05-08 09:23:12', '$2y$10$y1kqjfcRD8Ky4mabic2IsuPpkXHe7ruv/5NM7j5ZdesdcflHAgble', 'user', 'nupQjZqK5bSZQ6TMiDPgzqtRB0mLO83VtGzmfcNhwg6WVLlyofsYnQRsW0oC', 1, '2020-03-14 08:52:22', '2020-08-10 04:36:09'),
(2, NULL, 'user1@email.com', 0, '2020-05-04 05:11:44', '$2y$10$iKCFFfYFfMWQMGbyQVYKi.T.gw1UvmAXdWWiLVEK91Kg2sWoN/oDS', 'user', 'DUeXHuSttAj76NqkpQGK2N7uLcLEGanmHA1SibwN6INFnS7s1qFEzybBj6Qy', 1, '2020-05-03 09:58:24', '2020-05-04 05:11:44'),
(3, 'My View', 'ayanloveme2006@gmail.com', 0, NULL, '$2y$10$3amyKa.3kEGwU0wqqjF9cOLDVgsSN4TBZH2UgsIa2NuMOX4pLVUkK', 'admin', 'dNq4JVgT1uwlEl7Lggc7mg8RlAU1aX1N7sq2BP1j7SkkikbcOZ3L4hpFZ8y8', 1, '2020-07-15 23:57:11', '2020-07-25 09:10:55'),
(5, NULL, 'user2@email.com', 0, '2020-07-16 00:02:53', '$2y$10$RZ8.ilD9c0p6Yw8MT.Lt.etppLgOjeVwFxLiNQJlzo8m85UIzoN8q', 'user', NULL, 1, '2020-07-15 23:57:53', '2020-07-15 23:57:53'),
(6, NULL, 'user3@email.com', 0, '2020-07-16 00:02:53', '$2y$10$EVX0WqJbShEDToVN.WrV3OcFZTMrU6oEi/rqYMqCc2A08qbABCPC6', 'user', NULL, 1, '2020-07-15 23:57:53', '2020-07-15 23:57:53'),
(7, NULL, 'user4@email.com', 0, '2020-07-16 00:02:54', '$2y$10$9RYiMKpfgb2IcAjSiE53nuNwqP83CwJp9CVo1GPEnFcQM1yjrvl7i', 'user', NULL, 1, '2020-07-15 23:57:54', '2020-07-15 23:57:54');

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
(1, 1, 'N7ro0TKrTtKEZfDWsUTs0E6I9CzDfeVcU13uaCE2.png', '9876541234', '14 Boulevard', 'Los Angeles', 'California', 'United States', '32123', '2020-03-14 08:52:22', '2020-08-02 09:22:08'),
(2, 2, NULL, '+9876543121', NULL, NULL, NULL, NULL, NULL, '2020-05-03 09:58:24', '2020-05-03 09:58:24'),
(3, 3, NULL, '1234567890', 'Shyamnagar Rahuta Jora Mondir', 'Kolkata', 'West Bengal', 'India', '743127', '2020-07-15 23:57:11', '2020-07-25 09:10:55'),
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
-- Indexes for table `pages`
--
ALTER TABLE `pages`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cast_live_stream`
--
ALTER TABLE `cast_live_stream`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cast_podcast`
--
ALTER TABLE `cast_podcast`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `channels`
--
ALTER TABLE `channels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `histories`
--
ALTER TABLE `histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `podcasts`
--
ALTER TABLE `podcasts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `podcast_tag`
--
ALTER TABLE `podcast_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

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
