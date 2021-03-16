-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 18, 2020 at 06:34 PM
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
(7, 'Nathan Duke', 'nathan-duke', '2020-07-26 15:42:24', '2020-07-26 15:42:24'),
(8, 'Sam Fisher', 'sam-fisher', '2020-08-16 07:34:59', '2020-08-16 07:34:59'),
(9, 'Sarah Kerrigan', 'sarah-kerrigan', '2020-08-16 07:38:28', '2020-08-16 07:38:28'),
(10, 'Ezio Auditore De Firenze', 'ezio-auditore-de-firenze', '2020-08-16 07:44:14', '2020-08-16 07:44:14'),
(11, 'Deckard Cain', 'deckard-cain', '2020-08-16 07:45:59', '2020-08-16 07:45:59'),
(12, 'Ryu Hayabusa', 'ryu-hayabusa', '2020-08-16 07:46:01', '2020-08-16 07:46:01'),
(13, 'Bonnie MacFarlane', 'bonnie-macfarlane', '2020-08-16 07:46:01', '2020-08-16 07:46:01'),
(14, 'Jill Valentine', 'jill-valentine', '2020-08-16 07:46:02', '2020-08-16 07:46:02'),
(15, 'Master Chief', 'master-chief', '2020-08-16 07:46:03', '2020-08-16 07:46:03'),
(16, 'Alyx Vance', 'alyx-vance', '2020-08-16 07:46:06', '2020-08-16 07:46:06'),
(17, 'Nathan Drake', 'nathan-drake', '2020-08-16 07:46:07', '2020-08-16 07:46:07'),
(18, 'Marcus Fenix', 'marcus-fenix', '2020-08-16 07:46:10', '2020-08-16 07:46:10'),
(19, 'Gordon Freeman', 'gordon-freeman', '2020-08-16 07:46:10', '2020-08-16 07:46:10'),
(20, 'Danny Williams', 'danny-williams', '2020-08-16 07:46:16', '2020-08-16 07:46:16'),
(21, 'Lara Croft', 'lara-croft', '2020-08-16 07:46:19', '2020-08-16 07:46:19'),
(22, 'Max Payne', 'max-payne', '2020-08-16 07:46:22', '2020-08-16 07:46:22'),
(23, 'Cloud Strife', 'cloud-strife', '2020-08-16 07:46:39', '2020-08-16 07:46:39');

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

--
-- Dumping data for table `cast_podcast`
--

INSERT INTO `cast_podcast` (`id`, `cast_id`, `podcast_id`, `created_at`, `updated_at`) VALUES
(9, 8, 20, NULL, NULL),
(10, 9, 21, NULL, NULL),
(11, 9, 22, NULL, NULL),
(12, 10, 23, NULL, NULL),
(13, 11, 25, NULL, NULL),
(14, 12, 27, NULL, NULL),
(15, 13, 27, NULL, NULL),
(16, 14, 29, NULL, NULL),
(17, 15, 30, NULL, NULL),
(18, 9, 32, NULL, NULL),
(19, 10, 33, NULL, NULL),
(20, 10, 34, NULL, NULL),
(21, 16, 35, NULL, NULL),
(22, 16, 36, NULL, NULL),
(23, 17, 37, NULL, NULL),
(24, 8, 37, NULL, NULL),
(25, 10, 39, NULL, NULL),
(26, 13, 40, NULL, NULL),
(27, 11, 40, NULL, NULL),
(28, 18, 42, NULL, NULL),
(29, 19, 42, NULL, NULL),
(30, 8, 43, NULL, NULL),
(31, 13, 43, NULL, NULL),
(32, 10, 44, NULL, NULL),
(33, 12, 44, NULL, NULL),
(34, 12, 45, NULL, NULL),
(35, 15, 48, NULL, NULL),
(36, 13, 49, NULL, NULL),
(37, 11, 49, NULL, NULL),
(38, 20, 52, NULL, NULL),
(39, 20, 53, NULL, NULL),
(40, 18, 54, NULL, NULL),
(41, 9, 55, NULL, NULL),
(42, 15, 55, NULL, NULL),
(43, 21, 56, NULL, NULL),
(44, 17, 57, NULL, NULL),
(45, 20, 57, NULL, NULL),
(46, 18, 58, NULL, NULL),
(47, 12, 60, NULL, NULL),
(48, 16, 61, NULL, NULL),
(49, 22, 61, NULL, NULL),
(50, 20, 62, NULL, NULL),
(51, 14, 63, NULL, NULL),
(52, 18, 64, NULL, NULL),
(53, 8, 66, NULL, NULL),
(54, 9, 67, NULL, NULL),
(55, 13, 68, NULL, NULL),
(56, 19, 71, NULL, NULL),
(57, 21, 73, NULL, NULL),
(58, 8, 75, NULL, NULL),
(59, 20, 75, NULL, NULL),
(60, 19, 77, NULL, NULL),
(61, 11, 79, NULL, NULL),
(62, 18, 79, NULL, NULL),
(63, 23, 80, NULL, NULL),
(64, 13, 84, NULL, NULL),
(65, 17, 85, NULL, NULL),
(66, 15, 86, NULL, NULL),
(67, 17, 87, NULL, NULL),
(68, 22, 87, NULL, NULL),
(69, 20, 89, NULL, NULL),
(70, 19, 90, NULL, NULL),
(71, 18, 92, NULL, NULL),
(72, 18, 93, NULL, NULL),
(73, 21, 93, NULL, NULL),
(74, 10, 97, NULL, NULL),
(75, 11, 100, NULL, NULL),
(76, 10, 100, NULL, NULL),
(77, 12, 101, NULL, NULL),
(78, 9, 103, NULL, NULL),
(79, 13, 105, NULL, NULL),
(80, 8, 106, NULL, NULL),
(81, 14, 106, NULL, NULL),
(82, 21, 107, NULL, NULL),
(83, 20, 107, NULL, NULL),
(84, 8, 111, NULL, NULL),
(85, 21, 112, NULL, NULL),
(86, 9, 115, NULL, NULL),
(87, 20, 120, NULL, NULL),
(88, 22, 121, NULL, NULL),
(89, 10, 126, NULL, NULL),
(90, 19, 128, NULL, NULL),
(91, 11, 129, NULL, NULL),
(92, 23, 131, NULL, NULL),
(93, 14, 132, NULL, NULL),
(94, 23, 136, NULL, NULL),
(95, 21, 138, NULL, NULL),
(96, 19, 138, NULL, NULL),
(97, 17, 142, NULL, NULL),
(98, 23, 143, NULL, NULL),
(99, 16, 144, NULL, NULL),
(100, 8, 145, NULL, NULL),
(101, 22, 146, NULL, NULL),
(102, 23, 149, NULL, NULL),
(103, 22, 151, NULL, NULL),
(104, 9, 151, NULL, NULL),
(105, 17, 152, NULL, NULL),
(106, 14, 155, NULL, NULL),
(107, 21, 158, NULL, NULL),
(108, 13, 160, NULL, NULL),
(109, 17, 161, NULL, NULL),
(110, 9, 163, NULL, NULL),
(111, 19, 163, NULL, NULL),
(112, 21, 165, NULL, NULL),
(113, 17, 172, NULL, NULL),
(114, 10, 173, NULL, NULL),
(115, 9, 173, NULL, NULL),
(116, 8, 175, NULL, NULL),
(117, 16, 179, NULL, NULL),
(118, 17, 180, NULL, NULL),
(119, 13, 182, NULL, NULL),
(120, 20, 183, NULL, NULL),
(121, 15, 183, NULL, NULL),
(122, 12, 184, NULL, NULL),
(123, 22, 184, NULL, NULL),
(124, 14, 187, NULL, NULL),
(125, 14, 188, NULL, NULL),
(126, 12, 190, NULL, NULL),
(127, 16, 193, NULL, NULL),
(128, 16, 195, NULL, NULL),
(129, 19, 195, NULL, NULL),
(130, 13, 197, NULL, NULL),
(131, 21, 198, NULL, NULL),
(132, 21, 202, NULL, NULL),
(133, 22, 202, NULL, NULL),
(134, 19, 203, NULL, NULL),
(135, 11, 203, NULL, NULL),
(136, 22, 204, NULL, NULL),
(137, 19, 205, NULL, NULL),
(138, 18, 206, NULL, NULL),
(139, 14, 206, NULL, NULL),
(140, 14, 208, NULL, NULL),
(141, 18, 209, NULL, NULL),
(142, 10, 209, NULL, NULL),
(143, 13, 210, NULL, NULL),
(144, 23, 211, NULL, NULL),
(145, 20, 214, NULL, NULL),
(146, 19, 215, NULL, NULL),
(147, 11, 216, NULL, NULL),
(148, 17, 216, NULL, NULL),
(149, 22, 217, NULL, NULL),
(150, 13, 218, NULL, NULL),
(151, 11, 218, NULL, NULL),
(152, 14, 221, NULL, NULL),
(153, 11, 222, NULL, NULL),
(154, 14, 223, NULL, NULL),
(155, 9, 223, NULL, NULL),
(156, 10, 225, NULL, NULL),
(157, 18, 226, NULL, NULL),
(158, 19, 228, NULL, NULL),
(159, 11, 228, NULL, NULL),
(160, 19, 231, NULL, NULL),
(161, 20, 233, NULL, NULL),
(162, 19, 234, NULL, NULL),
(163, 12, 235, NULL, NULL),
(164, 21, 235, NULL, NULL),
(165, 16, 236, NULL, NULL),
(166, 13, 238, NULL, NULL),
(167, 15, 241, NULL, NULL),
(168, 12, 242, NULL, NULL),
(169, 9, 242, NULL, NULL),
(170, 13, 243, NULL, NULL),
(171, 18, 243, NULL, NULL),
(172, 18, 246, NULL, NULL),
(173, 14, 248, NULL, NULL),
(174, 20, 248, NULL, NULL),
(175, 9, 250, NULL, NULL),
(176, 23, 254, NULL, NULL),
(177, 9, 255, NULL, NULL),
(178, 13, 257, NULL, NULL),
(179, 14, 258, NULL, NULL),
(180, 21, 258, NULL, NULL),
(181, 21, 259, NULL, NULL),
(182, 11, 260, NULL, NULL),
(183, 12, 261, NULL, NULL),
(184, 9, 261, NULL, NULL),
(185, 16, 262, NULL, NULL),
(186, 14, 266, NULL, NULL),
(187, 10, 267, NULL, NULL),
(188, 13, 268, NULL, NULL),
(189, 17, 270, NULL, NULL),
(190, 21, 270, NULL, NULL),
(191, 12, 274, NULL, NULL),
(192, 11, 278, NULL, NULL),
(193, 17, 284, NULL, NULL),
(194, 23, 285, NULL, NULL),
(195, 10, 286, NULL, NULL),
(196, 14, 286, NULL, NULL),
(197, 14, 289, NULL, NULL),
(198, 19, 294, NULL, NULL),
(199, 13, 295, NULL, NULL),
(200, 13, 298, NULL, NULL),
(201, 9, 299, NULL, NULL),
(202, 17, 300, NULL, NULL),
(203, 15, 300, NULL, NULL),
(204, 17, 303, NULL, NULL),
(205, 11, 304, NULL, NULL),
(206, 17, 308, NULL, NULL),
(207, 8, 309, NULL, NULL),
(208, 20, 311, NULL, NULL),
(209, 14, 312, NULL, NULL),
(210, 9, 314, NULL, NULL),
(211, 18, 314, NULL, NULL),
(212, 15, 315, NULL, NULL),
(213, 14, 317, NULL, NULL),
(214, 9, 317, NULL, NULL),
(215, 17, 318, NULL, NULL),
(216, 11, 320, NULL, NULL),
(217, 15, 321, NULL, NULL),
(218, 23, 323, NULL, NULL);

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
(18, 2, 18, NULL, NULL),
(19, 7, 19, NULL, NULL),
(20, 6, 19, NULL, NULL),
(21, 1, 19, NULL, NULL),
(22, 4, 20, NULL, NULL),
(23, 5, 20, NULL, NULL),
(24, 5, 21, NULL, NULL),
(25, 6, 21, NULL, NULL),
(26, 4, 22, NULL, NULL),
(27, 6, 22, NULL, NULL),
(28, 1, 23, NULL, NULL),
(29, 5, 24, NULL, NULL),
(30, 6, 24, NULL, NULL),
(31, 7, 25, NULL, NULL),
(32, 5, 26, NULL, NULL),
(33, 2, 27, NULL, NULL),
(34, 2, 28, NULL, NULL),
(35, 4, 28, NULL, NULL),
(36, 6, 29, NULL, NULL),
(37, 1, 29, NULL, NULL),
(38, 4, 30, NULL, NULL),
(39, 6, 30, NULL, NULL),
(40, 6, 31, NULL, NULL),
(41, 4, 31, NULL, NULL),
(42, 1, 32, NULL, NULL),
(43, 5, 32, NULL, NULL),
(44, 5, 33, NULL, NULL),
(45, 2, 33, NULL, NULL),
(46, 5, 34, NULL, NULL),
(47, 2, 34, NULL, NULL),
(48, 4, 35, NULL, NULL),
(49, 6, 35, NULL, NULL),
(50, 5, 36, NULL, NULL),
(51, 3, 36, NULL, NULL),
(52, 6, 37, NULL, NULL),
(53, 5, 37, NULL, NULL),
(54, 4, 37, NULL, NULL),
(55, 3, 38, NULL, NULL),
(56, 5, 38, NULL, NULL),
(57, 5, 39, NULL, NULL),
(58, 7, 40, NULL, NULL),
(59, 4, 40, NULL, NULL),
(60, 5, 41, NULL, NULL),
(61, 1, 41, NULL, NULL),
(62, 7, 42, NULL, NULL),
(63, 1, 42, NULL, NULL),
(64, 1, 43, NULL, NULL),
(65, 6, 43, NULL, NULL),
(66, 3, 44, NULL, NULL),
(67, 1, 44, NULL, NULL),
(68, 2, 45, NULL, NULL),
(69, 7, 46, NULL, NULL),
(70, 4, 46, NULL, NULL),
(71, 6, 46, NULL, NULL),
(72, 1, 47, NULL, NULL),
(73, 4, 47, NULL, NULL),
(74, 4, 48, NULL, NULL),
(75, 3, 49, NULL, NULL),
(76, 5, 50, NULL, NULL),
(77, 1, 50, NULL, NULL),
(78, 2, 51, NULL, NULL),
(79, 6, 51, NULL, NULL),
(80, 7, 52, NULL, NULL),
(81, 3, 52, NULL, NULL),
(82, 6, 53, NULL, NULL),
(83, 5, 53, NULL, NULL),
(84, 3, 53, NULL, NULL),
(85, 3, 54, NULL, NULL),
(86, 4, 55, NULL, NULL),
(87, 2, 55, NULL, NULL),
(88, 7, 56, NULL, NULL),
(89, 6, 56, NULL, NULL),
(90, 3, 57, NULL, NULL),
(91, 1, 57, NULL, NULL),
(92, 7, 58, NULL, NULL),
(93, 5, 58, NULL, NULL),
(94, 1, 58, NULL, NULL),
(95, 4, 59, NULL, NULL),
(96, 6, 59, NULL, NULL),
(97, 2, 59, NULL, NULL),
(98, 1, 60, NULL, NULL),
(99, 4, 60, NULL, NULL),
(100, 7, 61, NULL, NULL),
(101, 6, 62, NULL, NULL),
(102, 7, 63, NULL, NULL),
(103, 2, 63, NULL, NULL),
(104, 4, 63, NULL, NULL),
(105, 7, 64, NULL, NULL),
(106, 5, 64, NULL, NULL),
(107, 6, 65, NULL, NULL),
(108, 3, 66, NULL, NULL),
(109, 1, 67, NULL, NULL),
(110, 2, 67, NULL, NULL),
(111, 6, 68, NULL, NULL),
(112, 2, 68, NULL, NULL),
(113, 4, 68, NULL, NULL),
(114, 2, 69, NULL, NULL),
(115, 5, 70, NULL, NULL),
(116, 4, 70, NULL, NULL),
(117, 6, 71, NULL, NULL),
(118, 5, 72, NULL, NULL),
(119, 3, 73, NULL, NULL),
(120, 6, 73, NULL, NULL),
(121, 2, 74, NULL, NULL),
(122, 5, 74, NULL, NULL),
(123, 2, 75, NULL, NULL),
(124, 3, 76, NULL, NULL),
(125, 4, 76, NULL, NULL),
(126, 2, 77, NULL, NULL),
(127, 2, 78, NULL, NULL),
(128, 1, 79, NULL, NULL),
(129, 4, 79, NULL, NULL),
(130, 4, 80, NULL, NULL),
(131, 3, 80, NULL, NULL),
(132, 3, 81, NULL, NULL),
(133, 5, 81, NULL, NULL),
(134, 7, 81, NULL, NULL),
(135, 6, 82, NULL, NULL),
(136, 4, 82, NULL, NULL),
(137, 7, 83, NULL, NULL),
(138, 6, 83, NULL, NULL),
(139, 1, 83, NULL, NULL),
(140, 7, 84, NULL, NULL),
(141, 1, 84, NULL, NULL),
(142, 7, 85, NULL, NULL),
(143, 2, 86, NULL, NULL),
(144, 5, 87, NULL, NULL),
(145, 1, 87, NULL, NULL),
(146, 3, 88, NULL, NULL),
(147, 4, 88, NULL, NULL),
(148, 5, 88, NULL, NULL),
(149, 6, 89, NULL, NULL),
(150, 3, 89, NULL, NULL),
(151, 6, 90, NULL, NULL),
(152, 1, 90, NULL, NULL),
(153, 5, 91, NULL, NULL),
(154, 3, 92, NULL, NULL),
(155, 2, 93, NULL, NULL),
(156, 7, 94, NULL, NULL),
(157, 1, 95, NULL, NULL),
(158, 6, 95, NULL, NULL),
(159, 6, 96, NULL, NULL),
(160, 2, 96, NULL, NULL),
(161, 7, 96, NULL, NULL),
(162, 1, 97, NULL, NULL),
(163, 3, 97, NULL, NULL),
(164, 7, 98, NULL, NULL),
(165, 6, 98, NULL, NULL),
(166, 2, 99, NULL, NULL),
(167, 4, 99, NULL, NULL),
(168, 5, 99, NULL, NULL),
(169, 1, 100, NULL, NULL),
(170, 1, 101, NULL, NULL),
(171, 3, 101, NULL, NULL),
(172, 5, 102, NULL, NULL),
(173, 6, 103, NULL, NULL),
(174, 5, 104, NULL, NULL),
(175, 3, 104, NULL, NULL),
(176, 2, 104, NULL, NULL),
(177, 5, 105, NULL, NULL),
(178, 2, 106, NULL, NULL),
(179, 6, 106, NULL, NULL),
(180, 7, 107, NULL, NULL),
(181, 1, 108, NULL, NULL),
(182, 4, 109, NULL, NULL),
(183, 5, 110, NULL, NULL),
(184, 5, 111, NULL, NULL),
(185, 6, 111, NULL, NULL),
(186, 2, 112, NULL, NULL),
(187, 7, 112, NULL, NULL),
(188, 4, 113, NULL, NULL),
(189, 2, 114, NULL, NULL),
(190, 5, 114, NULL, NULL),
(191, 3, 115, NULL, NULL),
(192, 3, 116, NULL, NULL),
(193, 2, 116, NULL, NULL),
(194, 2, 117, NULL, NULL),
(195, 4, 118, NULL, NULL),
(196, 3, 118, NULL, NULL),
(197, 5, 119, NULL, NULL),
(198, 3, 119, NULL, NULL),
(199, 3, 120, NULL, NULL),
(200, 2, 120, NULL, NULL),
(201, 2, 121, NULL, NULL),
(202, 5, 121, NULL, NULL),
(203, 5, 122, NULL, NULL),
(204, 1, 122, NULL, NULL),
(205, 6, 123, NULL, NULL),
(206, 3, 124, NULL, NULL),
(207, 4, 125, NULL, NULL),
(208, 4, 126, NULL, NULL),
(209, 7, 126, NULL, NULL),
(210, 5, 126, NULL, NULL),
(211, 6, 127, NULL, NULL),
(212, 5, 128, NULL, NULL),
(213, 3, 128, NULL, NULL),
(214, 4, 128, NULL, NULL),
(215, 1, 129, NULL, NULL),
(216, 4, 129, NULL, NULL),
(217, 5, 130, NULL, NULL),
(218, 2, 130, NULL, NULL),
(219, 5, 131, NULL, NULL),
(220, 3, 131, NULL, NULL),
(221, 2, 131, NULL, NULL),
(222, 7, 132, NULL, NULL),
(223, 4, 133, NULL, NULL),
(224, 5, 134, NULL, NULL),
(225, 7, 135, NULL, NULL),
(226, 3, 135, NULL, NULL),
(227, 3, 136, NULL, NULL),
(228, 6, 137, NULL, NULL),
(229, 4, 137, NULL, NULL),
(230, 6, 138, NULL, NULL),
(231, 1, 139, NULL, NULL),
(232, 2, 139, NULL, NULL),
(233, 3, 140, NULL, NULL),
(234, 7, 141, NULL, NULL),
(235, 6, 141, NULL, NULL),
(236, 3, 142, NULL, NULL),
(237, 6, 142, NULL, NULL),
(238, 5, 142, NULL, NULL),
(239, 3, 143, NULL, NULL),
(240, 7, 144, NULL, NULL),
(241, 5, 144, NULL, NULL),
(242, 4, 145, NULL, NULL),
(243, 7, 145, NULL, NULL),
(244, 2, 145, NULL, NULL),
(245, 5, 146, NULL, NULL),
(246, 6, 147, NULL, NULL),
(247, 2, 148, NULL, NULL),
(248, 3, 148, NULL, NULL),
(249, 7, 149, NULL, NULL),
(250, 1, 150, NULL, NULL),
(251, 2, 151, NULL, NULL),
(252, 5, 152, NULL, NULL),
(253, 1, 152, NULL, NULL),
(254, 2, 153, NULL, NULL),
(255, 4, 154, NULL, NULL),
(256, 5, 155, NULL, NULL),
(257, 7, 155, NULL, NULL),
(258, 7, 156, NULL, NULL),
(259, 1, 156, NULL, NULL),
(260, 5, 157, NULL, NULL),
(261, 4, 157, NULL, NULL),
(262, 6, 158, NULL, NULL),
(263, 2, 158, NULL, NULL),
(264, 1, 159, NULL, NULL),
(265, 5, 159, NULL, NULL),
(266, 2, 160, NULL, NULL),
(267, 1, 160, NULL, NULL),
(268, 5, 160, NULL, NULL),
(269, 2, 161, NULL, NULL),
(270, 6, 161, NULL, NULL),
(271, 5, 161, NULL, NULL),
(272, 4, 162, NULL, NULL),
(273, 1, 162, NULL, NULL),
(274, 5, 163, NULL, NULL),
(275, 7, 164, NULL, NULL),
(276, 6, 165, NULL, NULL),
(277, 1, 165, NULL, NULL),
(278, 2, 165, NULL, NULL),
(279, 2, 166, NULL, NULL),
(280, 7, 166, NULL, NULL),
(281, 3, 167, NULL, NULL),
(282, 3, 168, NULL, NULL),
(283, 7, 168, NULL, NULL),
(284, 7, 169, NULL, NULL),
(285, 3, 170, NULL, NULL),
(286, 6, 170, NULL, NULL),
(287, 2, 171, NULL, NULL),
(288, 6, 171, NULL, NULL),
(289, 1, 172, NULL, NULL),
(290, 4, 173, NULL, NULL),
(291, 6, 174, NULL, NULL),
(292, 3, 175, NULL, NULL),
(293, 2, 175, NULL, NULL),
(294, 4, 176, NULL, NULL),
(295, 4, 177, NULL, NULL),
(296, 3, 177, NULL, NULL),
(297, 5, 178, NULL, NULL),
(298, 5, 179, NULL, NULL),
(299, 7, 179, NULL, NULL),
(300, 2, 179, NULL, NULL),
(301, 7, 180, NULL, NULL),
(302, 6, 181, NULL, NULL),
(303, 5, 181, NULL, NULL),
(304, 7, 182, NULL, NULL),
(305, 4, 182, NULL, NULL),
(306, 4, 183, NULL, NULL),
(307, 2, 183, NULL, NULL),
(308, 1, 184, NULL, NULL),
(309, 3, 184, NULL, NULL),
(310, 4, 185, NULL, NULL),
(311, 2, 185, NULL, NULL),
(312, 6, 185, NULL, NULL),
(313, 5, 186, NULL, NULL),
(314, 7, 186, NULL, NULL),
(315, 7, 187, NULL, NULL),
(316, 4, 188, NULL, NULL),
(317, 2, 189, NULL, NULL),
(318, 3, 190, NULL, NULL),
(319, 1, 190, NULL, NULL),
(320, 2, 191, NULL, NULL),
(321, 5, 191, NULL, NULL),
(322, 7, 192, NULL, NULL),
(323, 5, 192, NULL, NULL),
(324, 4, 193, NULL, NULL),
(325, 3, 193, NULL, NULL),
(326, 7, 194, NULL, NULL),
(327, 1, 194, NULL, NULL),
(328, 4, 195, NULL, NULL),
(329, 5, 195, NULL, NULL),
(330, 7, 195, NULL, NULL),
(331, 3, 196, NULL, NULL),
(332, 6, 197, NULL, NULL),
(333, 2, 197, NULL, NULL),
(334, 3, 198, NULL, NULL),
(335, 1, 198, NULL, NULL),
(336, 6, 198, NULL, NULL),
(337, 7, 199, NULL, NULL),
(338, 1, 199, NULL, NULL),
(339, 2, 200, NULL, NULL),
(340, 6, 200, NULL, NULL),
(341, 6, 201, NULL, NULL),
(342, 7, 201, NULL, NULL),
(343, 3, 202, NULL, NULL),
(344, 2, 202, NULL, NULL),
(345, 5, 203, NULL, NULL),
(346, 6, 203, NULL, NULL),
(347, 6, 204, NULL, NULL),
(348, 7, 204, NULL, NULL),
(349, 1, 204, NULL, NULL),
(350, 2, 205, NULL, NULL),
(351, 1, 206, NULL, NULL),
(352, 5, 206, NULL, NULL),
(353, 5, 207, NULL, NULL),
(354, 7, 207, NULL, NULL),
(355, 3, 208, NULL, NULL),
(356, 2, 208, NULL, NULL),
(357, 5, 209, NULL, NULL),
(358, 4, 209, NULL, NULL),
(359, 4, 210, NULL, NULL),
(360, 7, 211, NULL, NULL),
(361, 7, 212, NULL, NULL),
(362, 6, 213, NULL, NULL),
(363, 3, 213, NULL, NULL),
(364, 2, 214, NULL, NULL),
(365, 1, 214, NULL, NULL),
(366, 4, 214, NULL, NULL),
(367, 2, 215, NULL, NULL),
(368, 7, 215, NULL, NULL),
(369, 4, 216, NULL, NULL),
(370, 5, 216, NULL, NULL),
(371, 2, 217, NULL, NULL),
(372, 1, 217, NULL, NULL),
(373, 4, 218, NULL, NULL),
(374, 7, 219, NULL, NULL),
(375, 3, 220, NULL, NULL),
(376, 4, 220, NULL, NULL),
(377, 1, 221, NULL, NULL),
(378, 2, 221, NULL, NULL),
(379, 4, 222, NULL, NULL),
(380, 3, 222, NULL, NULL),
(381, 6, 223, NULL, NULL),
(382, 5, 223, NULL, NULL),
(383, 6, 224, NULL, NULL),
(384, 7, 225, NULL, NULL),
(385, 6, 225, NULL, NULL),
(386, 5, 225, NULL, NULL),
(387, 4, 226, NULL, NULL),
(388, 1, 227, NULL, NULL),
(389, 5, 227, NULL, NULL),
(390, 4, 228, NULL, NULL),
(391, 1, 228, NULL, NULL),
(392, 3, 229, NULL, NULL),
(393, 5, 230, NULL, NULL),
(394, 7, 231, NULL, NULL),
(395, 3, 231, NULL, NULL),
(396, 2, 232, NULL, NULL),
(397, 6, 233, NULL, NULL),
(398, 2, 233, NULL, NULL),
(399, 7, 233, NULL, NULL),
(400, 6, 234, NULL, NULL),
(401, 2, 234, NULL, NULL),
(402, 5, 235, NULL, NULL),
(403, 3, 235, NULL, NULL),
(404, 6, 236, NULL, NULL),
(405, 1, 236, NULL, NULL),
(406, 2, 237, NULL, NULL),
(407, 7, 238, NULL, NULL),
(408, 5, 238, NULL, NULL),
(409, 1, 238, NULL, NULL),
(410, 3, 239, NULL, NULL),
(411, 1, 240, NULL, NULL),
(412, 2, 240, NULL, NULL),
(413, 3, 241, NULL, NULL),
(414, 2, 241, NULL, NULL),
(415, 3, 242, NULL, NULL),
(416, 3, 243, NULL, NULL),
(417, 1, 243, NULL, NULL),
(418, 6, 244, NULL, NULL),
(419, 5, 244, NULL, NULL),
(420, 5, 245, NULL, NULL),
(421, 3, 246, NULL, NULL),
(422, 4, 246, NULL, NULL),
(423, 1, 247, NULL, NULL),
(424, 2, 247, NULL, NULL),
(425, 7, 248, NULL, NULL),
(426, 5, 248, NULL, NULL),
(427, 6, 248, NULL, NULL),
(428, 7, 249, NULL, NULL),
(429, 3, 249, NULL, NULL),
(430, 2, 249, NULL, NULL),
(431, 7, 250, NULL, NULL),
(432, 4, 250, NULL, NULL),
(433, 2, 251, NULL, NULL),
(434, 7, 251, NULL, NULL),
(435, 6, 252, NULL, NULL),
(436, 1, 252, NULL, NULL),
(437, 4, 253, NULL, NULL),
(438, 7, 253, NULL, NULL),
(439, 3, 254, NULL, NULL),
(440, 4, 255, NULL, NULL),
(441, 1, 256, NULL, NULL),
(442, 4, 256, NULL, NULL),
(443, 4, 257, NULL, NULL),
(444, 6, 258, NULL, NULL),
(445, 4, 259, NULL, NULL),
(446, 6, 260, NULL, NULL),
(447, 7, 260, NULL, NULL),
(448, 2, 261, NULL, NULL),
(449, 7, 262, NULL, NULL),
(450, 5, 262, NULL, NULL),
(451, 6, 262, NULL, NULL),
(452, 3, 263, NULL, NULL),
(453, 7, 263, NULL, NULL),
(454, 4, 264, NULL, NULL),
(455, 2, 264, NULL, NULL),
(456, 3, 265, NULL, NULL),
(457, 4, 265, NULL, NULL),
(458, 2, 266, NULL, NULL),
(459, 3, 267, NULL, NULL),
(460, 6, 268, NULL, NULL),
(461, 5, 268, NULL, NULL),
(462, 4, 269, NULL, NULL),
(463, 1, 269, NULL, NULL),
(464, 1, 270, NULL, NULL),
(465, 4, 271, NULL, NULL),
(466, 6, 271, NULL, NULL),
(467, 1, 272, NULL, NULL),
(468, 2, 272, NULL, NULL),
(469, 3, 273, NULL, NULL),
(470, 6, 273, NULL, NULL),
(471, 5, 274, NULL, NULL),
(472, 4, 275, NULL, NULL),
(473, 6, 276, NULL, NULL),
(474, 5, 277, NULL, NULL),
(475, 2, 277, NULL, NULL),
(476, 3, 278, NULL, NULL),
(477, 2, 278, NULL, NULL),
(478, 5, 278, NULL, NULL),
(479, 6, 279, NULL, NULL),
(480, 7, 280, NULL, NULL),
(481, 3, 280, NULL, NULL),
(482, 1, 280, NULL, NULL),
(483, 3, 281, NULL, NULL),
(484, 7, 282, NULL, NULL),
(485, 5, 282, NULL, NULL),
(486, 6, 283, NULL, NULL),
(487, 6, 284, NULL, NULL),
(488, 3, 285, NULL, NULL),
(489, 5, 285, NULL, NULL),
(490, 7, 285, NULL, NULL),
(491, 1, 286, NULL, NULL),
(492, 7, 286, NULL, NULL),
(493, 6, 287, NULL, NULL),
(494, 4, 287, NULL, NULL),
(495, 4, 288, NULL, NULL),
(496, 1, 289, NULL, NULL),
(497, 5, 290, NULL, NULL),
(498, 4, 290, NULL, NULL),
(499, 6, 291, NULL, NULL),
(500, 6, 292, NULL, NULL),
(501, 4, 292, NULL, NULL),
(502, 7, 293, NULL, NULL),
(503, 2, 294, NULL, NULL),
(504, 4, 294, NULL, NULL),
(505, 7, 295, NULL, NULL),
(506, 6, 296, NULL, NULL),
(507, 1, 297, NULL, NULL),
(508, 2, 297, NULL, NULL),
(509, 7, 298, NULL, NULL),
(510, 3, 298, NULL, NULL),
(511, 3, 299, NULL, NULL),
(512, 1, 299, NULL, NULL),
(513, 4, 300, NULL, NULL),
(514, 3, 301, NULL, NULL),
(515, 5, 301, NULL, NULL),
(516, 3, 302, NULL, NULL),
(517, 2, 302, NULL, NULL),
(518, 4, 303, NULL, NULL),
(519, 4, 304, NULL, NULL),
(520, 5, 305, NULL, NULL),
(521, 4, 305, NULL, NULL),
(522, 2, 306, NULL, NULL),
(523, 1, 306, NULL, NULL),
(524, 3, 307, NULL, NULL),
(525, 1, 308, NULL, NULL),
(526, 7, 309, NULL, NULL),
(527, 1, 309, NULL, NULL),
(528, 4, 309, NULL, NULL),
(529, 4, 310, NULL, NULL),
(530, 4, 311, NULL, NULL),
(531, 6, 312, NULL, NULL),
(532, 4, 313, NULL, NULL),
(533, 6, 314, NULL, NULL),
(534, 2, 315, NULL, NULL),
(535, 5, 315, NULL, NULL),
(536, 4, 316, NULL, NULL),
(537, 2, 316, NULL, NULL),
(538, 2, 317, NULL, NULL),
(539, 1, 317, NULL, NULL),
(540, 5, 318, NULL, NULL),
(541, 6, 318, NULL, NULL),
(542, 2, 319, NULL, NULL),
(543, 5, 319, NULL, NULL),
(544, 5, 320, NULL, NULL),
(545, 2, 320, NULL, NULL),
(546, 4, 321, NULL, NULL),
(547, 6, 321, NULL, NULL),
(548, 5, 322, NULL, NULL),
(549, 6, 322, NULL, NULL),
(550, 2, 323, NULL, NULL),
(551, 3, 323, NULL, NULL);

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
(1, 1, 'Test Channel', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum vestibulum justo eget neque hendrerit sollicitudin. Proin hendrerit ex consectetur risus rhoncus, malesuada pretium odio mattis. Donec et tellus venenatis, pulvinar tellus at, pellentesque quam. Proin at nulla dui. Suspendisse elementum lorem vitae blandit dictum. Vestibulum ornare purus non dolor suscipit scelerisque. Integer molestie augue sollicitudin risus sagittis porta. Aenean eu aliquet est. Quisque condimentum lorem eu blandit lacinia. Pellentesque tempus, lorem nec porttitor aliquet, libero arcu ornare tortor, ut sollicitudin magna nulla vel quam. Donec volutpat turpis eu tristique tincidunt. Suspendisse felis mauris, dictum ut magna id, tristique gravida diam. Vivamus lobortis ac neque sit amet ultricies. Sed id neque in nunc tincidunt vehicula. In lobortis finibus leo, in aliquam lorem finibus at.', 'RtEKIH60JLEf5CDUCPqSdyqTCqDWmcdhi6gsETS3.png', 'poSpOHIE3fCf8UXy9WcLCPYLrbLnR4Et4bS3byKF.jpeg', 'https://www.facebook.com/CDPROJEKTRED/', 'https://twitter.com/CDPROJEKTRED', NULL, NULL, NULL, NULL, NULL, 0, 1, 2, '2020-03-21 05:49:16', '2020-08-14 11:12:48'),
(2, 1, 'Test Channel 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus congue nec nisi nec vestibulum. Donec vitae facilisis ex. Maecenas sagittis pharetra elementum. Nulla facilisi. Nam sit amet sapien venenatis, posuere tortor eget, molestie dolor. Morbi commodo nisi nibh, sed facilisis urna blandit at. Aenean accumsan, magna ac malesuada porttitor, ante nulla vehicula ligula, vel pellentesque leo diam ullamcorper urna. Sed sed volutpat dui, egestas eleifend urna. Maecenas lacinia volutpat lorem, sed sollicitudin eros eleifend eget. Proin vulputate mollis ultricies. Etiam ut vulputate nibh, ac efficitur risus. Suspendisse accumsan augue nisi, id mattis metus pharetra ut. Pellentesque ac augue arcu. Nulla vestibulum libero sed nulla euismod pulvinar. Praesent nec dui ornare, accumsan ante non, feugiat nisi. Nunc sit amet erat tristique ex maximus porttitor nec ut purus.', 'xLXvYYaEJGaIoz49FjDGpruIh3OEUWSxrSIBZWMI.png', 'Y69TA3Vd86P99WWD8K7EYpEwFdsrk358lgHqy11N.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, '2020-04-12 10:11:51', '2020-07-26 10:30:11'),
(3, 3, 'Ayan Channel', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce dignissim mauris sed scelerisque pretium. Nullam eu blandit risus. Vestibulum interdum lorem quis nibh vestibulum, vel ultricies nunc suscipit. Duis sit amet tempor lectus. Donec bibendum, enim vitae maximus faucibus, dui ante blandit dolor, sed fermentum ante sem ut enim. Donec efficitur sodales diam. Quisque sagittis diam et aliquet pulvinar.\r\n\r\nCurabitur blandit sollicitudin dui at semper. Proin ut dolor quis ligula consequat vulputate. In hac habitasse platea dictumst. Nam vehicula leo mi, tincidunt pharetra nisi auctor porta. Etiam pharetra egestas mollis. Vestibulum porttitor tempus metus vel porta. Mauris sed nulla vitae dui sollicitudin mollis ut eu metus. Nullam consectetur cursus elementum. Nunc dignissim felis a massa aliquet, at vestibulum eros consequat. Vestibulum purus mi, molestie in bibendum vitae, rhoncus sed metus.\r\n\r\nVestibulum dictum eu augue in volutpat. In hac habitasse platea dictumst. Proin mauris massa, luctus eget dui at, porta convallis urna. Proin ultricies pellentesque risus, id volutpat nisi mattis ac. Etiam convallis blandit fringilla. Phasellus hendrerit est a aliquet fringilla. Mauris tincidunt ex tempor magna commodo ultrices. Sed nec odio vestibulum, blandit urna quis, semper purus. Proin malesuada congue est a porta. Pellentesque eget magna elit. Fusce ipsum nibh, suscipit id ligula a, dignissim finibus augue. Ut varius facilisis mi, ac scelerisque ligula aliquet at.', NULL, NULL, 'ayan', 'ayan', 'ayan', 'ayan', 'ayan', 'ayan', 'ayan', 0, 1, 1, '2020-07-25 08:38:46', '2020-08-14 11:06:00'),
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
(11, 18, 1, NULL, 'test comment.', 1, 1, '2020-08-10 05:20:50', '2020-08-14 08:14:37'),
(13, 18, 2, NULL, 'Another test comment.', 0, 1, '2020-08-14 06:56:40', '2020-08-14 06:56:40'),
(14, 18, 2, NULL, 'jsdaiosad dsaidgi', 0, 1, '2020-08-14 06:57:30', '2020-08-14 06:57:30'),
(15, 18, 2, NULL, 'jdfsi sdfui uixvhiucvx sdfui xiujcvgi,', 0, 1, '2020-08-14 06:57:50', '2020-08-14 06:57:50');

-- --------------------------------------------------------

--
-- Table structure for table `comment_likes`
--

CREATE TABLE `comment_likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comment_likes`
--

INSERT INTO `comment_likes` (`id`, `comment_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 11, 2, '2020-08-14 08:14:37', '2020-08-14 08:14:37');

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
(10, 1, 18, '2020-08-06 08:48:43', '2020-08-06 08:48:43'),
(11, 2, 18, '2020-08-14 06:51:07', '2020-08-14 06:51:07');

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
(12, 2, 18, NULL, NULL),
(13, 4, 19, NULL, NULL),
(14, 1, 20, NULL, NULL),
(15, 2, 21, NULL, NULL),
(16, 4, 22, NULL, NULL),
(17, 3, 23, NULL, NULL),
(18, 1, 24, NULL, NULL),
(19, 4, 25, NULL, NULL),
(20, 2, 26, NULL, NULL),
(21, 1, 27, NULL, NULL),
(22, 2, 28, NULL, NULL),
(23, 4, 29, NULL, NULL),
(24, 3, 30, NULL, NULL),
(25, 1, 31, NULL, NULL),
(26, 2, 32, NULL, NULL),
(27, 3, 33, NULL, NULL),
(28, 2, 34, NULL, NULL),
(29, 3, 35, NULL, NULL),
(30, 3, 36, NULL, NULL),
(31, 3, 37, NULL, NULL),
(32, 3, 38, NULL, NULL),
(33, 2, 39, NULL, NULL),
(34, 1, 40, NULL, NULL),
(35, 1, 41, NULL, NULL),
(36, 4, 42, NULL, NULL),
(37, 3, 43, NULL, NULL),
(38, 4, 44, NULL, NULL),
(39, 2, 45, NULL, NULL),
(40, 4, 46, NULL, NULL),
(41, 2, 47, NULL, NULL),
(42, 3, 48, NULL, NULL),
(43, 4, 49, NULL, NULL),
(44, 1, 50, NULL, NULL),
(45, 2, 51, NULL, NULL),
(46, 3, 52, NULL, NULL),
(47, 1, 53, NULL, NULL),
(48, 2, 54, NULL, NULL),
(49, 4, 55, NULL, NULL),
(50, 1, 56, NULL, NULL),
(51, 4, 57, NULL, NULL),
(52, 4, 58, NULL, NULL),
(53, 2, 59, NULL, NULL),
(54, 1, 60, NULL, NULL),
(55, 2, 61, NULL, NULL),
(56, 3, 62, NULL, NULL),
(57, 4, 63, NULL, NULL),
(58, 4, 64, NULL, NULL),
(59, 4, 65, NULL, NULL),
(60, 4, 66, NULL, NULL),
(61, 1, 67, NULL, NULL),
(62, 4, 68, NULL, NULL),
(63, 1, 69, NULL, NULL),
(64, 4, 70, NULL, NULL),
(65, 2, 71, NULL, NULL),
(66, 2, 72, NULL, NULL),
(67, 4, 73, NULL, NULL),
(68, 4, 74, NULL, NULL),
(69, 3, 75, NULL, NULL),
(70, 4, 76, NULL, NULL),
(71, 2, 77, NULL, NULL),
(72, 4, 78, NULL, NULL),
(73, 3, 79, NULL, NULL),
(74, 4, 80, NULL, NULL),
(75, 3, 81, NULL, NULL),
(76, 1, 82, NULL, NULL),
(77, 2, 83, NULL, NULL),
(78, 3, 84, NULL, NULL),
(79, 2, 85, NULL, NULL),
(80, 2, 86, NULL, NULL),
(81, 2, 87, NULL, NULL),
(82, 2, 88, NULL, NULL),
(83, 3, 89, NULL, NULL),
(84, 3, 90, NULL, NULL),
(85, 4, 91, NULL, NULL),
(86, 4, 92, NULL, NULL),
(87, 1, 93, NULL, NULL),
(88, 3, 94, NULL, NULL),
(89, 3, 95, NULL, NULL),
(90, 4, 96, NULL, NULL),
(91, 4, 97, NULL, NULL),
(92, 4, 98, NULL, NULL),
(93, 3, 99, NULL, NULL),
(94, 2, 100, NULL, NULL),
(95, 2, 101, NULL, NULL),
(96, 4, 102, NULL, NULL),
(97, 4, 103, NULL, NULL),
(98, 3, 104, NULL, NULL),
(99, 3, 105, NULL, NULL),
(100, 1, 106, NULL, NULL),
(101, 3, 107, NULL, NULL),
(102, 2, 108, NULL, NULL),
(103, 4, 109, NULL, NULL),
(104, 2, 110, NULL, NULL),
(105, 2, 111, NULL, NULL),
(106, 3, 112, NULL, NULL),
(107, 4, 113, NULL, NULL),
(108, 4, 114, NULL, NULL),
(109, 4, 115, NULL, NULL),
(110, 4, 116, NULL, NULL),
(111, 2, 117, NULL, NULL),
(112, 2, 118, NULL, NULL),
(113, 2, 119, NULL, NULL),
(114, 3, 120, NULL, NULL),
(115, 3, 121, NULL, NULL),
(116, 3, 122, NULL, NULL),
(117, 1, 123, NULL, NULL),
(118, 4, 124, NULL, NULL),
(119, 2, 125, NULL, NULL),
(120, 4, 126, NULL, NULL),
(121, 4, 127, NULL, NULL),
(122, 2, 128, NULL, NULL),
(123, 4, 129, NULL, NULL),
(124, 2, 130, NULL, NULL),
(125, 2, 131, NULL, NULL),
(126, 3, 132, NULL, NULL),
(127, 2, 133, NULL, NULL),
(128, 3, 134, NULL, NULL),
(129, 4, 135, NULL, NULL),
(130, 3, 136, NULL, NULL),
(131, 3, 137, NULL, NULL),
(132, 4, 138, NULL, NULL),
(133, 1, 139, NULL, NULL),
(134, 4, 140, NULL, NULL),
(135, 4, 141, NULL, NULL),
(136, 4, 142, NULL, NULL),
(137, 3, 143, NULL, NULL),
(138, 1, 144, NULL, NULL),
(139, 4, 145, NULL, NULL),
(140, 4, 146, NULL, NULL),
(141, 2, 147, NULL, NULL),
(142, 1, 148, NULL, NULL),
(143, 3, 149, NULL, NULL),
(144, 2, 150, NULL, NULL),
(145, 2, 151, NULL, NULL),
(146, 3, 152, NULL, NULL),
(147, 3, 153, NULL, NULL),
(148, 1, 154, NULL, NULL),
(149, 4, 155, NULL, NULL),
(150, 3, 156, NULL, NULL),
(151, 3, 157, NULL, NULL),
(152, 3, 158, NULL, NULL),
(153, 3, 159, NULL, NULL),
(154, 3, 160, NULL, NULL),
(155, 4, 161, NULL, NULL),
(156, 1, 162, NULL, NULL),
(157, 4, 163, NULL, NULL),
(158, 2, 164, NULL, NULL),
(159, 4, 165, NULL, NULL),
(160, 2, 166, NULL, NULL),
(161, 4, 167, NULL, NULL),
(162, 4, 168, NULL, NULL),
(163, 1, 169, NULL, NULL),
(164, 2, 170, NULL, NULL),
(165, 1, 171, NULL, NULL),
(166, 1, 172, NULL, NULL),
(167, 4, 173, NULL, NULL),
(168, 2, 174, NULL, NULL),
(169, 2, 175, NULL, NULL),
(170, 2, 176, NULL, NULL),
(171, 4, 177, NULL, NULL),
(172, 4, 178, NULL, NULL),
(173, 3, 179, NULL, NULL),
(174, 3, 180, NULL, NULL),
(175, 1, 181, NULL, NULL),
(176, 4, 182, NULL, NULL),
(177, 2, 183, NULL, NULL),
(178, 4, 184, NULL, NULL),
(179, 3, 185, NULL, NULL),
(180, 4, 186, NULL, NULL),
(181, 1, 187, NULL, NULL),
(182, 2, 188, NULL, NULL),
(183, 4, 189, NULL, NULL),
(184, 2, 190, NULL, NULL),
(185, 2, 191, NULL, NULL),
(186, 1, 192, NULL, NULL),
(187, 3, 193, NULL, NULL),
(188, 2, 194, NULL, NULL),
(189, 4, 195, NULL, NULL),
(190, 4, 196, NULL, NULL),
(191, 3, 197, NULL, NULL),
(192, 3, 198, NULL, NULL),
(193, 1, 199, NULL, NULL),
(194, 4, 200, NULL, NULL),
(195, 2, 201, NULL, NULL),
(196, 2, 202, NULL, NULL),
(197, 2, 203, NULL, NULL),
(198, 4, 204, NULL, NULL),
(199, 3, 205, NULL, NULL),
(200, 2, 206, NULL, NULL),
(201, 2, 207, NULL, NULL),
(202, 1, 208, NULL, NULL),
(203, 2, 209, NULL, NULL),
(204, 3, 210, NULL, NULL),
(205, 3, 211, NULL, NULL),
(206, 4, 212, NULL, NULL),
(207, 2, 213, NULL, NULL),
(208, 3, 214, NULL, NULL),
(209, 4, 215, NULL, NULL),
(210, 2, 216, NULL, NULL),
(211, 2, 217, NULL, NULL),
(212, 2, 218, NULL, NULL),
(213, 4, 219, NULL, NULL),
(214, 1, 220, NULL, NULL),
(215, 3, 221, NULL, NULL),
(216, 4, 222, NULL, NULL),
(217, 2, 223, NULL, NULL),
(218, 2, 224, NULL, NULL),
(219, 4, 225, NULL, NULL),
(220, 2, 226, NULL, NULL),
(221, 1, 227, NULL, NULL),
(222, 1, 228, NULL, NULL),
(223, 3, 229, NULL, NULL),
(224, 2, 230, NULL, NULL),
(225, 2, 231, NULL, NULL),
(226, 4, 232, NULL, NULL),
(227, 1, 233, NULL, NULL),
(228, 3, 234, NULL, NULL),
(229, 3, 235, NULL, NULL),
(230, 2, 236, NULL, NULL),
(231, 3, 237, NULL, NULL),
(232, 2, 238, NULL, NULL),
(233, 4, 239, NULL, NULL),
(234, 4, 240, NULL, NULL),
(235, 3, 241, NULL, NULL),
(236, 3, 242, NULL, NULL),
(237, 3, 243, NULL, NULL),
(238, 1, 244, NULL, NULL),
(239, 2, 245, NULL, NULL),
(240, 3, 246, NULL, NULL),
(241, 3, 247, NULL, NULL),
(242, 1, 248, NULL, NULL),
(243, 2, 249, NULL, NULL),
(244, 2, 250, NULL, NULL),
(245, 2, 251, NULL, NULL),
(246, 3, 252, NULL, NULL),
(247, 4, 253, NULL, NULL),
(248, 1, 254, NULL, NULL),
(249, 4, 255, NULL, NULL),
(250, 3, 256, NULL, NULL),
(251, 2, 257, NULL, NULL),
(252, 2, 258, NULL, NULL),
(253, 4, 259, NULL, NULL),
(254, 1, 260, NULL, NULL),
(255, 2, 261, NULL, NULL),
(256, 2, 262, NULL, NULL),
(257, 1, 263, NULL, NULL),
(258, 4, 264, NULL, NULL),
(259, 2, 265, NULL, NULL),
(260, 3, 266, NULL, NULL),
(261, 2, 267, NULL, NULL),
(262, 1, 268, NULL, NULL),
(263, 4, 269, NULL, NULL),
(264, 1, 270, NULL, NULL),
(265, 1, 271, NULL, NULL),
(266, 4, 272, NULL, NULL),
(267, 4, 273, NULL, NULL),
(268, 3, 274, NULL, NULL),
(269, 4, 275, NULL, NULL),
(270, 2, 276, NULL, NULL),
(271, 1, 277, NULL, NULL),
(272, 3, 278, NULL, NULL),
(273, 4, 279, NULL, NULL),
(274, 2, 280, NULL, NULL),
(275, 1, 281, NULL, NULL),
(276, 4, 282, NULL, NULL),
(277, 4, 283, NULL, NULL),
(278, 4, 284, NULL, NULL),
(279, 2, 285, NULL, NULL),
(280, 2, 286, NULL, NULL),
(281, 1, 287, NULL, NULL),
(282, 3, 288, NULL, NULL),
(283, 2, 289, NULL, NULL),
(284, 2, 290, NULL, NULL),
(285, 3, 291, NULL, NULL),
(286, 4, 292, NULL, NULL),
(287, 4, 293, NULL, NULL),
(288, 1, 294, NULL, NULL),
(289, 1, 295, NULL, NULL),
(290, 3, 296, NULL, NULL),
(291, 3, 297, NULL, NULL),
(292, 1, 298, NULL, NULL),
(293, 3, 299, NULL, NULL),
(294, 3, 300, NULL, NULL),
(295, 3, 301, NULL, NULL),
(296, 1, 302, NULL, NULL),
(297, 4, 303, NULL, NULL),
(298, 1, 304, NULL, NULL),
(299, 3, 305, NULL, NULL),
(300, 2, 306, NULL, NULL),
(301, 2, 307, NULL, NULL),
(302, 4, 308, NULL, NULL),
(303, 4, 309, NULL, NULL),
(304, 4, 310, NULL, NULL),
(305, 1, 311, NULL, NULL),
(306, 4, 312, NULL, NULL),
(307, 3, 313, NULL, NULL),
(308, 3, 314, NULL, NULL),
(309, 3, 315, NULL, NULL),
(310, 1, 316, NULL, NULL),
(311, 4, 317, NULL, NULL),
(312, 2, 318, NULL, NULL),
(313, 1, 319, NULL, NULL),
(314, 2, 320, NULL, NULL),
(315, 2, 321, NULL, NULL),
(316, 1, 322, NULL, NULL),
(317, 4, 323, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `licenses`
--

CREATE TABLE `licenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_name` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `licenses`
--

INSERT INTO `licenses` (`id`, `name`, `short_name`, `content`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Standard Myview License', 'Standard', '', 1, NULL, NULL),
(2, 'Creative Commons - Attribution', 'CC BY', '', 1, NULL, NULL),
(3, 'Creative Commons Attribution ShareAlike', 'CC BY-SA', '', 1, '2020-08-18 16:24:04', '2020-08-18 16:24:04'),
(4, 'Creative Commons Attribution-NoDerivs', 'CC BY-ND', '', 1, '2020-08-18 16:24:04', '2020-08-18 16:24:04');

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
(84, '2020_07_26_105824_add_verified_to_channels_table', 11),
(85, '2020_08_14_124911_create_comment_likes_table', 12),
(86, '2020_08_15_103228_add_ip_to_users_table', 13);

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
(18, 1, 1, 'XWZRDg2ymo.mp4', 'video', 'Big Buck Bunny', 'A large and lovable rabbit deals with three tiny bullies, led by a flying squirrel, who are determined to squelch his happiness.', 158008374, 596, '9:56', 1, 1, 0, 1, 'XWZRDg2ymo.jpg', 720, 1, 45, 0, 0, 0, '2020-08-06 08:46:57', '2020-08-15 05:33:17'),
(19, 1, 4, '', 'audio', 'At Must Is House The', 'Farcical To Wield To There Well You In Seek Look Shrubbery Strange King Zone Listen Aloft The You Aquatic Strange Sun Lot Coconuts A From Forward Wield Seek Threw King Not The ? . ! . Shut She\'s Here Held ? The The Ah You Did Well ? Farcical My . At Here Warmer Power', 833029662, 6645, '1:50:45', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:34:55', '2020-08-16 07:34:55'),
(20, 1, 1, '', 'video', 'No You Then ? Where\'d Up Pram You ? Strange . A Get But No', 'Is Shall It\'s We You To Be I A That Then That I The Who\'s A Think See Only You Ceremony Bring We Appease Where\'d You Watery Strangers We We Dressed Witch Up ? A Swords Well Forward Can\'t Your', 441741178, 2136, '35:36', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:34:58', '2020-08-16 07:34:58'),
(21, 3, 3, '', 'audio', 'Zone Model Of ! To My The ! Like', 'A From Arm Newt This ? A See Watery Peasant ? Up You Do Winter Is The And Dress That At ! May Be A I ? We ! The \'cause Yet Tart Pram See , Shut ! Strange Wield Your Isn\'t', 781944619, 1154, '19:14', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:38:28', '2020-08-16 07:38:28'),
(22, 1, 1, '', 'audio', 'Ni A To Wart Say Do The Man Am Threw Providence King', 'Some The The Let\'s Your The Be You A Power You ? The King Ah Excalibur Strange You To I Shut ! , She , Dress ! Bit You Power . , Watery And Say \'Ni\' Well A Supreme ! A , Her She Get A Bring', 951007982, 474, '7:54', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:38:28', '2020-08-16 07:38:28'),
(23, 1, 1, '', 'video', 'Derives Want Did Us Looks Sacrifice', 'A Demand A Masses Sun Witch Demand Some The Up Didn&#39;t The Power , Temperate Burn You One How&#39;d To Migrate Do Why Supreme Again Clad Winter Arm Strange Demand ! Sword One Like Here Have The As Violence We . Person Her', 711195871, 3856, '1:4:16', 0, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:44:14', '2020-08-16 07:44:14'),
(24, 3, 3, '', 'video', 'Women From ! To Camelot Bring That Forward Look It Mandate', 'A Nose A You That Swallow Can&#39;t This ? Again I Bring Looks Liege Forward Man You That Only Warmer Found I Ni Warmer ? ! Of . ! Do Look , No My A . Place Arm Quiet Samite We Up Mean Now Well ! Newt Yes You', 627718924, 7171, '1:59:31', 0, 2, 0, 0, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:45:58', '2020-08-16 07:45:58'),
(25, 3, 3, '', 'video', 'Looks Get Bosom ? ! If This Strange The Supreme Yes That Found', 'Sacrifice King Nose With Found Yes I Yes Her Threw For Have ? . Warmer The On Is Distributing You Divine A Of You Am Here Swallow A Peasant You We May Person Thoughts At ? Temperate To But Of Is I That', 935460198, 7419, '2:3:39', 1, 1, 0, 0, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:45:59', '2020-08-16 07:45:59'),
(26, 1, 2, '', 'audio', 'Dress Wield Ponds A ! On Pram This', 'Supreme Not Look That Up Strange . This A Man Do Be Of To South Women Good Power May One In Will Power Like Second Not The . That Become Are Is On Shrubbery . A Ni Mean . Climes , A To ? Well Mean A Not . Then But ? Violence Do Where&#39;d Vote No Swallow Up Arthur Carry Masses These Zone Is A What Is', 661689383, 5010, '1:23:30', 1, 1, 0, 0, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:45:59', '2020-08-16 07:45:59'),
(27, 1, 1, '', 'audio', 'How\'d And Suggesting . Ow A I You The \'cause Strange ? A Shut', 'That House A Some Then You Burn She&#39;s Oh Your We Sword Who&#39;s I You Pram ! Threw At Want Migrate You &#39;cause Not She The Can&#39;t Thoughts Is Good We Temperate Your Camelot Arthur Suggesting Winter Clad Them . Second I My Well', 750589310, 4671, '1:17:51', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:46:00', '2020-08-16 07:46:00'),
(28, 1, 2, '', 'audio', 'Do You Is To Now Good The You . Shut Did One Power Supreme', 'I Her You That Didn&#39;t A Temperate Climes You Supreme Did Shrubbery ! Did A Nose On The Isn&#39;t Become Excalibur Not Not . ! Why Warmer Now Mercia&#39;s She To Expect A Dunno Did Shut Expect Say In Excalibur', 606826097, 3138, '52:18', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:46:01', '2020-08-16 07:46:01'),
(29, 1, 1, '', 'audio', 'A A , Look Not', 'Lake Demand What We Bosom From Got Government How&#39;d She , Must Listen Ow Place ? Quiet Up ! Did A Signifying Bloody That King Seek &#39;cause A . You A , ! Now Not In She&#39;s From Seek Look Up Wield Place What Nose &#39;cause Are ! Excalibur At Water In King And Looks Say Push Are Forward Like Sacrifice Power Her Mandate Person Be To We I For To Get That Am', 953779377, 4443, '1:14:3', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:46:02', '2020-08-16 07:46:02'),
(30, 3, 3, '', 'audio', 'Like Wield Lake Vote Like Power . As ? Wield You We ! Here', 'Found A &#39;cause Plover Our One Quiet Can&#39;t ? Supreme Swallow A Nose Or But Bring Am Migrate Some And ! Second In Well , King Here Expect Fly Just Climes Look Isn&#39;t Some Man Yes I Is , A Arm Can&#39;t Bring Is Martin Lying ? We , Push You Witch , One Her A', 683811207, 2565, '42:45', 1, 2, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:46:02', '2020-08-16 07:46:02'),
(31, 1, 1, '', 'audio', 'A Watery Temperate A Do For , ! Vote A Tart ! Who\'s A', 'It To You Swallow Shall Second She Up Are One Found ! . Dress ? Look Say Swallow The You On Plover Her Zone ? Bring You Didn&#39;t Didn&#39;t Knights Not Who King My Then Temperate Warmer You , The Look The To', 521065717, 6429, '1:47:9', 1, 1, 0, 0, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:46:03', '2020-08-16 07:46:03'),
(32, 3, 3, '', 'audio', 'Peasant One Know Samite You I , , .', 'Up Like The Thoughts Ponds Can&#39;t Are Again Thoughts Did Up Held Shut ? And . By Just Derives From Just She But Basis Sword Carry ! Nose Her Witch King Her Did , The There , Shut You Then Who&#39;s Peasant A The ! Bosom Farcical You Some Did Found , On Dress Is The I Let&#39;s Power Am Got Dressed Are I This Bosom This Witch', 643159518, 3827, '1:3:47', 1, 2, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:46:03', '2020-08-16 07:46:03'),
(33, 3, 3, '', 'audio', 'With Thoughts A Now It Got She Expect Strange', 'Peasant A You Is A A No , Dress Get To We I But Not Her Is Mercia&#39;s ! ? &#39;Ni&#39; Vote Warmer To Expect A Oh At Just A The King A That One Second Supreme &#39;cause Liege . !', 906524987, 598, '9:58', 1, 2, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:46:03', '2020-08-16 07:46:03'),
(34, 3, 3, '', 'audio', 'You Second . A . Her In Second We That You The Second The Winter', 'Ow Say Pram To Do For Are Be Up Then Go Yet Warmer One ! Shut A One From Are Some Supreme Up Power ? Land Am . Now Shut Strange Are The That Temperate Place Man Model ? Are Shall Shrubbery ? . Held ! Listen Here Shut Listen', 697769505, 6875, '1:54:35', 1, 2, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:46:04', '2020-08-16 07:46:04'),
(35, 3, 3, '', 'video', 'You What False You . Bit . Did You ! Lying ! From Just Shut', 'That Signifying Lying Swords Ceremony &#39;Ni&#39; Lying Them Go No Expect Become Farcical Up Just I In Are Arthur Who&#39;s For Man Pram Do Of Look ! Her Or Threw ! Her Excalibur Push These Will Well , Coconuts Say The Get Silly Can&#39;t Can&#39;t Your , You . Knights To One Then South ! The ! We A A ? ? You Are Wield You Do Sword Look A The', 844740823, 5750, '1:35:50', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:46:05', '2020-08-16 07:46:05'),
(36, 3, 3, '', 'video', 'Up Like Lying Sword Looks House King A No', 'Isn&#39;t Pram A Swords Farcical Did ? Now Farcical She&#39;s How&#39;d Excalibur Looks Like Shut I , Shrubbery Did . Shrubbery Have Up Am Model &#39;cause Push , My Man Up , You Shut To I ? , Newt . You This Vote Here Ponds A Who&#39;s Yes', 871850388, 6359, '1:45:59', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:46:06', '2020-08-16 07:46:06'),
(37, 3, 3, '', 'video', 'Place Like Aloft Threw To', 'Second Knights The In Lot . The Think Martin You Am Migrate Her Ni The Not Looks Coconuts Up Like ! Wield ! Her Up Seek We Up Not A King &#39;Ni&#39; In I On', 692014013, 3304, '55:4', 1, 2, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:46:07', '2020-08-16 07:46:07'),
(38, 3, 3, '', 'video', 'She Who A The Strange ? And', 'The One A Signifying Was . Didn&#39;t You But Warmer This Yet , Go Winter Did Good ? Did Quiet She ! . Well Do The Am Bring To Strange A You Looks ! Man That Let&#39;s . &#39;cause . Found Migrate Well She&#39;s You One A Shimmering Let&#39;s , And !', 863181668, 4524, '1:15:24', 1, 1, 0, 0, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:46:08', '2020-08-16 07:46:08'),
(39, 3, 3, '', 'audio', 'One Man The Didn\'t . Push', 'A We You Divine Know Become Peasant Do Do We How&#39;d Well Up Just Shrubbery Of Isn&#39;t Expect You Watery I ? To What Expect We Dunno Like Lot Lying Sacrifice Power Here Yet Liege Mercia&#39;s Got ! A She Up . A Second', 294202542, 625, '10:25', 1, 2, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:46:08', '2020-08-16 07:46:08'),
(40, 1, 4, '', 'video', 'I Burn ? Clad \'cause Bit ! One Dress My', 'Up Temperate Be Witch Is Can&#39;t She Sacrifice Bring Her Her Push Say In Her A Mean Burn &#39;Ni&#39; , ? One Dress I . May ! A Dress Then She Who&#39;s , Coconuts Women King Did These A Her Can&#39;t Bit These Strange One We Dress Look A Only Inherent Good Bring If Found Second Sword Swallow , Suggesting This Say , Didn&#39;t . Her', 332405447, 6512, '1:48:32', 1, 2, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:46:09', '2020-08-16 07:46:09'),
(41, 1, 1, '', 'video', 'Suggesting Wield Then Demand See Like Expect , To', 'Up Second You That Well I Can&#39;t At Her Place , ! See Basis Second A That Say You It Man Temperate You Person Up Like That How&#39;d ! , One Who Temperate Us King Nose Signifying Basis Some Am Isn&#39;t Sword Look Second A Watery Shrubbery Who&#39;s Carry Forward Tart Then Now Like Well &#39;Ni&#39; The A Know The Must Push Shrubbery That', 388666269, 3300, '55:0', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:46:09', '2020-08-16 07:46:09'),
(42, 1, 4, '', 'audio', 'Ni My Power There I Nose Sacrifice Push You Do Why Lot On ! !', 'Dress Become Aloft Or Shut Do , Nose Shut Of Can&#39;t Dress Suggesting Didn&#39;t Not Then Why . King The There Good Sacrifice Land Listen Migrate Why One Your ! Shut Held You How&#39;d A . ! Forward Shut Do Land Shimmering Did Camelot You Do Yet Listen Why Know ? That Are Bit Demand Violence Good Yes Burn Forward A Expect A Of Wield A', 754227850, 6339, '1:45:39', 0, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:46:10', '2020-08-16 07:46:10'),
(43, 3, 3, '', 'video', 'Lake Look Threw Get Looks ? Migrate ! That', 'See Purest Well Expect Are Supreme Be You Power . South Is And Power ! Want Like Silly A What Have Zone Water Camelot I Ow Camelot ? No Women Purest , Excalibur . Her The Ow That A We There Wart Knights Am You Ceremony Ah For You ! Bit Masses ! Dressed On', 827373728, 1829, '30:29', 1, 1, 0, 0, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:46:11', '2020-08-16 07:46:11'),
(44, 3, 3, '', 'video', 'Do Arm This Am . Then', 'Dressed She Camelot Silly A I Shut Excalibur Like For , Did King Looks The Nose . . False , King . Power Strange Shimmering Up Place Be Ni It&#39;s Be Up Silly System A Model , Bring Shut With Plover Place To From , , Arthur ! She Ah', 706137562, 6771, '1:52:51', 0, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:46:11', '2020-08-16 07:46:11'),
(45, 1, 4, '', 'video', 'The Tart Who\'s Like Distributing', 'Clad Aquatic Lying Some For Suggesting Supreme From We Sacrifice ! Her Did What You Did Not No Yet At Mandate Bring Who&#39;s Demand Swords A Well Up We Go You ! , Yet In Samite Push Then Looks Lot Yes Appease We This Sword , System A This', 488509792, 1161, '19:21', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:46:11', '2020-08-16 07:46:11'),
(46, 3, 3, '', 'audio', 'Oh We Suggesting , , . With Second A ! A Ceremony Coconuts', 'You Inherent The King Again ? A We Place Burn A Dress Man Up &#39;Ni&#39; Why Shut Let&#39;s ! Excalibur Your ! I For To A Want A A , It Why Dress She', 170673388, 6730, '1:52:10', 1, 1, 0, 0, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:46:12', '2020-08-16 07:46:12'),
(47, 3, 3, '', 'audio', 'How Shall To Supreme ? The Power \'cause Up To South Government', 'On Am Strange Person Lot Migrate Looks ? Threw Sacrifice Peasant Yes Why Strange This We . A Dunno The But Not Say The Up Am ? Not Well Listen It&#39;s No ? Why The Signifying Watery Bring Up Ow The Shut This Shimmering Again', 326716979, 2250, '37:30', 0, 2, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:46:12', '2020-08-16 07:46:12'),
(48, 3, 3, '', 'audio', 'A Strangers Well King Didn\'t I One Place Them We !', 'Plover Some This Forward The Watery Supreme Samite Look King Power Witch Inherent Looks Well Up Expect To May Just Shut Divine Her Shut One Mercia&#39;s Coconuts For A Silly Person One Is . We , The Is Go Clad We That You Her In Are Aquatic Good You Excalibur A A In Some Is The That King Let&#39;s Quiet You Nose Then Just With It&#39;s Government ? Migrate Nose ! Now ! ! Dress', 616880769, 6542, '1:49:2', 1, 2, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:46:13', '2020-08-16 07:46:13'),
(49, 3, 3, '', 'video', 'Who\'s Am . Are Winter Your And Her', 'A Threw A The Was Sun King Well Watery For Swallow There , No Let&#39;s , Not Strangers Excalibur Aloft Temperate System Expect , Well You Her We One This Knights . Do Want ! ! ! Witch A ! Bring And Do A ? Why Is A She It Her Executive Silly Shut ! Witch Then A Watery Temperate ,', 863586951, 4293, '1:11:33', 1, 2, 0, 0, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:46:14', '2020-08-16 07:46:14'),
(50, 3, 3, '', 'video', 'It Push Up She Do Well Watery . There', 'Her Is How&#39;d Held Person That , One Shut ! We Violence The A Do King The Masses Burn ! , No , That Watery Divine Got You From Here . Plover Push Who Temperate Who&#39;s Want King . The . Lady &#39;Ni&#39; Who&#39;s To Water She Thoughts The Up ? Bring', 185638800, 1658, '27:38', 1, 2, 0, 0, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:46:14', '2020-08-16 07:46:14'),
(51, 1, 2, '', 'audio', 'Supreme Who\'s ! Executive Providence You ? On Ni', 'A Tart Forward Silly Why To Become Yet Shut Some You This Well Some The If Some A , In Her Who&#39;s Who&#39;s She A Her System Man The Is Quiet Nose I', 505451065, 703, '11:43', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:46:14', '2020-08-16 07:46:14'),
(52, 3, 3, '', 'video', 'From The Warmer At A Is We I Bosom False Clad Farcical', 'Expect She A No Am Lot . At Mean See Good She The No If What The , The On Oh ? Here You Derives Supreme She Like Just ? Sacrifice Demand Shimmering , May Yet Supreme ? Do Person King Aloft ! Let&#39;s Them . Suggesting This ! At ! A Not Be Was A Silly Do A Do Second I Of King', 404138100, 293, '4:53', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:46:15', '2020-08-16 07:46:15'),
(53, 3, 3, '', 'video', 'A Strange ! Threw . The A', 'Become Bring She&#39;s Nose Wield Look &#39;Ni&#39; Bring ! Say Just No One Held Wart ? &#39;cause Now From From The No A May Want Then Let&#39;s Forward You Samite Lot Women Them Want Shut Who&#39;s Bring Or My Knights , Up Am Then', 188596130, 1489, '24:49', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:46:16', '2020-08-16 07:46:16'),
(54, 1, 4, '', 'audio', 'Who\'s Bring Look . . Only ! Are ! We Power Sword ? Man !', 'And Providence Sword Bring A Forward To The Some Threw , Your My The Where&#39;d May Then Seek Temperate You House For Up The A Is We Why Shut Forward . A Do Strange Forward Coconuts Didn&#39;t', 256972756, 4499, '1:14:59', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:46:16', '2020-08-16 07:46:16'),
(55, 1, 4, '', 'audio', 'Nose System She\'s Inherent A One !', 'Excalibur From False Wield On Held Mercia&#39;s To That A ? She You Here The The ! Supreme A A System Sword That Now Can&#39;t Ni A How&#39;d I No Up Her Well Aloft You Seek Dunno To Shut This Lying Shimmering Threw In Coconuts Bring To Aquatic &#39;Ni&#39; Up There The One ! Up Up ? This Forward ! Now . Temperate Bring ,', 806902639, 594, '9:54', 1, 2, 0, 0, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:46:17', '2020-08-16 07:46:17'),
(56, 1, 4, '', 'audio', 'You Dress The Where\'d , Why Is', 'Camelot Up She&#39;s The Up It&#39;s We Up , A Well Of Pram Ow The King , But Camelot Again It ! To A ! . It Shrubbery Migrate ? Power One Is You ? These One King . , I Excalibur ! Yes You ? We I . The Well ! For Thoughts', 154101229, 6694, '1:51:34', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:46:18', '2020-08-16 07:46:18'),
(57, 1, 2, '', 'video', 'Up For Why Not , Did From A . Them Coconuts Supreme Them A Place', 'Ah I Well But Ponds The For My Who&#39;s . She Some Inherent ? Shut Shimmering Supreme . These . Good Well Migrate , Peasant Sword To ! System This A By , Her Not The , A Your A By The The Strangers Know Watery Can&#39;t Derives Divine We Sword Can&#39;t You Found Some Like A . Do Zone Shrubbery , Well The Her The That She Ni ? Water Her ,', 644143811, 7245, '2:0:45', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:46:19', '2020-08-16 07:46:19'),
(58, 3, 3, '', 'video', 'It A Some Say , Basis Look Some Excalibur A ? You Say ! It', 'Like As The At Tart Well Let&#39;s Must King Up Strangers To Sword The You Where&#39;d With , Quiet Just Must I Dress A Did Watery Or ? . Your Did Who&#39;s The Well Well Tart To At Say , ? You You Expect Dressed Bring ! We Where&#39;d Them Is Like ! ! We The Be A . May Go ! Get Zone You She&#39;s King Dress We Am Carry Swords This , With', 948225780, 6482, '1:48:2', 1, 1, 0, 0, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:46:20', '2020-08-16 07:46:20'),
(59, 3, 3, '', 'audio', 'Bring A Some Do Yes', 'Like We Look Pram And Now Liege Can&#39;t . And I You May You Want System Model Well Demand , How Power Bit Shut Threw Looks . Your Become Not Like A A &#39;Ni&#39; On Peasant What Is . . ! One Seek Zone How&#39;d Coconuts Man How&#39;d Wield It&#39;s King ! Looks Government You No Look This Purest ! Power Isn&#39;t A', 226120612, 3984, '1:6:24', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:46:21', '2020-08-16 07:46:21'),
(60, 1, 2, '', 'video', 'King I ! Climes Who Zone To Thoughts Swords Clad', 'You Do Land Place Coconuts These Up You Am ? . Then Why To Up From Is A Aloft Of That She Let&#39;s Got There Dress From , Have . Bloody You Looks Violence Her Who&#39;s A . Power Your Want Just , Do Forward The Zone , Now . Can&#39;t Is ? Is You Aquatic ?', 305838083, 1647, '27:27', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:46:21', '2020-08-16 07:46:21'),
(61, 1, 1, '', 'video', 'Is Demand Your \'cause Suggesting By ? Executive \'cause ,', 'Am A King The I You Arm Bloody Want We Want ? Them . The A . Climes Forward Liege Bosom Listen . Like Winter To Camelot Witch . Lot Signifying A Like Ni No You It&#39;s ! ! Bosom ! Seek There ? Shrubbery Burn I Person One For Dress Plover Do Then King Mandate Tart ! ? Zone No Are Samite', 411902665, 2197, '36:37', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:46:22', '2020-08-16 07:46:22'),
(62, 3, 3, '', 'video', 'Lady With Just ? ,', 'You The She Now Your Want Place , , Have &#39;cause I You Bring For Do System Thoughts Dress From In Watery Is , Like We You ! Distributing , We Her Ni ? Am You My , . The Water Ni', 616194700, 6632, '1:50:32', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:46:22', '2020-08-16 07:46:22'),
(63, 1, 2, '', 'video', 'Lying The ! Do King As Tart', 'Looks Up A Climes I Winter . ? Aquatic Some ! Supreme Dunno Then Dunno This Well ! , A Tart In Divine Dressed Dress Her ? Coconuts Well How&#39;d Supreme The False Her , Yes Shut To , Coconuts Climes Lot Tart Place Her Camelot Tart Vote I A Excalibur The Aquatic A ? Found Push Migrate Do Warmer A That', 895725263, 6311, '1:45:11', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:46:23', '2020-08-16 07:46:23'),
(64, 3, 3, '', 'audio', 'Place Threw May A Found . A Looks This What Her', 'Divine King It Watery Expect , You Mean Want Her Not Derives , , , &#39;cause Knights Supreme Bloody If Now You King The Look That Swallow . Place . ? Want These But , At You Some , Power The Bloody This , No , Looks You The Samite It&#39;s Distributing Them . One A Sacrifice Just Supreme The , Carry , Some . It Strange ? Forward Purest', 188887321, 1677, '27:57', 1, 2, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:46:23', '2020-08-16 07:46:23'),
(65, 3, 3, '', 'audio', 'Migrate Good Sword I Tart I False A King No', 'Samite Do To Listen To Like Place This Her No . ? I A Will Did Dress Forward , Just Migrate Say That , I Supreme The We Isn&#39;t These Like King Divine Supreme Temperate A My Do King Coconuts Why One Farcical Was She Burn A', 777816354, 739, '12:19', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:46:24', '2020-08-16 07:46:24'),
(66, 3, 3, '', 'video', 'Vote Power Here ! ! Bring A You Am , Shrubbery Do You', 'Just Go What Your Must Sacrifice Her Is To Providence You You Know Your The What Migrate Is We To I , Zone ? ! ? Sword Ow Expect Dressed Bloody Temperate Shimmering A What Sun Shut Distributing We ! We ? Say Suggesting Can&#39;t Dress Second False Found Bring Burn King Nose ! Did False A A ! , Ni A We Her Yes !', 546802708, 5049, '1:24:9', 1, 1, 0, 0, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:46:25', '2020-08-16 07:46:25'),
(67, 1, 2, '', 'video', 'Mandate Inherent You , ? To ! ! Vote Peasant Ceremony Yes . Divine', 'A Sword Coconuts Watery Want Strange Is No Strange I False ? Push King Just King Her That Where&#39;d A ! Threw . Ah Got . Supreme . Be . Your Yes You Man Lake Shrubbery , Divine You These A', 927876362, 2654, '44:14', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:46:25', '2020-08-16 07:46:25'),
(68, 3, 3, '', 'video', 'Up A , ? Suggesting You Have Arthur Looks The', 'Looks Witch To Some Is Can&#39;t Who&#39;s Up What Wield Aloft No You ? Wield Your Power Threw Who&#39;s Then That Her Providence A ! Her I , Let&#39;s , Mercia&#39;s A She Shut . Swallow Shut How Sun , Wield We Winter No Forward We No !', 476640392, 378, '6:18', 0, 2, 0, 0, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:46:26', '2020-08-16 07:46:26'),
(69, 3, 3, '', 'video', 'One Looks Was Then , Do One', 'We Am We Where&#39;d Power Demand Man ? Do It You At Let&#39;s That ! Migrate I Forward Did Of Are Like , ? Burn . You . A And False Shrubbery Become . Mercia&#39;s Camelot King Who&#39;s Appease Yes Good', 183224689, 6669, '1:51:9', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:46:27', '2020-08-16 07:46:27'),
(70, 1, 4, '', 'video', 'To I You . There', 'It&#39;s Seek Fly Plover Looks Suggesting . You Who Well I There Just You Temperate . Is Know This ! I By Is . Women . Listen Bosom To Arm Who', 458098359, 1895, '31:35', 1, 1, 0, 0, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:46:28', '2020-08-16 07:46:28'),
(71, 3, 3, '', 'video', 'Witch Our Derives ? Witch From What The Dunno The Migrate This Shrubbery The A', 'A You My Is This . Who Her Ceremony A ! Strange Power Like System ! To Some We ? Bloody Did To It&#39;s Then By Want And Become One South No Of Dress Ow Violence Is . System Bring A !', 535866446, 778, '12:58', 1, 1, 0, 0, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:46:28', '2020-08-16 07:46:28'),
(72, 3, 3, '', 'audio', 'Must Listen A Is Mean Well Here We The Supreme', 'Watery A Shrubbery Yet Shall Threw . South I Ceremony The My See Up May Your You Excalibur She . Did My Up Who My Nose Suggesting King The The ! Camelot Good , ! Like ! No Bosom Burn And Shut Second King Executive ! But Here . King False To', 690254690, 5956, '1:39:16', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:46:29', '2020-08-16 07:46:29'),
(73, 1, 2, '', 'video', 'Sacrifice Lot As ? A Forward Silly Expect Well She The Her On My You', 'No The Do Them Or Thoughts Man Did Them Violence Man I Shrubbery This Knights Aquatic Wield Say You Up Forward One Shut , The Who&#39;s Only Who&#39;s Some Be ? , Women False', 591786078, 6976, '1:56:16', 1, 2, 0, 0, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:46:29', '2020-08-16 07:46:29'),
(74, 1, 4, '', 'video', 'You Appease Zone A Are The That ! Clad', 'A That Oh Be Liege Found Demand Dress Peasant That You Like Your , Who&#39;s ? A Women You A A . Dressed A Plover A Your Go She The Well Do You ? Wield A Appease Fly Can&#39;t Then Are Silly Them Now I Lake Do Not Warmer Appease Some You See Ponds ! Strange Bosom ! False I Say Think The That Power ? Lake Arm Place', 191108626, 3957, '1:5:57', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:46:30', '2020-08-16 07:46:30'),
(75, 3, 3, '', 'audio', 'Nose Good With One Supreme You Wart . ? Swords This', 'Held The A Have By A You Up Yes Knights Some Or ! Place Tart Go A Ni Expect Distributing Dress Isn&#39;t As I &#39;cause ? , Thoughts ! Sacrifice Shut Up The Quiet . Mercia&#39;s Sword Go ? Some Only To , It A Push We How Water The Threw King Women', 535573085, 4871, '1:21:11', 1, 2, 0, 0, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:46:31', '2020-08-16 07:46:31'),
(76, 3, 3, '', 'audio', 'Silly Look ? A Mercia\'s \'Ni\' Her Did Aquatic ! Well Witch', 'At Held From The Signifying Nose It&#39;s Her , Fly Sword Dressed A Is Camelot Up Then Winter Nose To ? The You To In Zone ! Shut Yes In Did We Ow ? Bosom Say Then , ! We The A . You Just Her Wield Pram Well The Is Thoughts To Then Just She Place I The To Inherent The Did Temperate The ! This Say', 522064844, 3459, '57:39', 1, 1, 0, 0, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:46:32', '2020-08-16 07:46:32'),
(77, 1, 4, '', 'video', 'A Now . Is Witch Temperate Looks This ? A Bring Forward', 'One Power Was I Expect , She You Forward Farcical Place Well From I Is A , Looks ! ! You Well From Camelot Must The My Is ! Tart The You In Then I Let&#39;s Can&#39;t A Coconuts Up Up King Climes Peasant Is Of ? Quiet Bit A Didn&#39;t Here Silly No Power To ? You A Providence , Aloft Her The The Wield Well', 276794974, 6367, '1:46:7', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:46:34', '2020-08-16 07:46:34'),
(78, 1, 4, '', 'video', 'How\'d Derives Threw Forward Looks I . . Your You', 'It&#39;s Masses Witch South It Am Her Shrubbery ? You Who&#39;s That Them No Like Lying ! That Who&#39;s Supreme Suggesting Say Tart Expect Why Pram A You Did Her Person Plover A Up Lot ! Climes Strange The A Shut Just Like Bring Forward Tart ? Then King Place , Thoughts Quiet The Well Peasant She&#39;s ? Forward , Who , A She ? We Then Power My', 387652024, 733, '12:13', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:46:35', '2020-08-16 07:46:35'),
(79, 3, 3, '', 'audio', 'Excalibur Now Sword We ! If The No Nose Person The', 'A Forward Who We Do Are , You You Just Shut Power A And Ni ! ? I Here Strangers . Want , , Migrate Some . Camelot Is A Well Yes Divine ?', 751041492, 1134, '18:54', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:46:35', '2020-08-16 07:46:35'),
(80, 1, 1, '', 'video', 'A Lot Push Shut . Us I Up', 'Like Well Not You You There Suggesting Lot Forward Wield It Dress Clad Aquatic Man Nose A Demand That ? Must This Like . No Ow But Are Them Shrubbery Supreme Nose Aquatic Was What A Place We This Like From A . You The Her A ,', 852174240, 2477, '41:17', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:46:37', '2020-08-16 07:46:37'),
(81, 1, 4, '', 'audio', 'The This To . Well A , Tart . The', 'A Power Push That Lot Looks Carry And Didn&#39;t Here , A Found Watery A King There ! Shut This , My You Up Can&#39;t ! The Who Vote . Demand Winter To That Expect Martin ! That To Her Is', 756412191, 4190, '1:9:50', 0, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:46:39', '2020-08-16 07:46:39'),
(82, 3, 3, '', 'audio', 'Do Looks Second Go Lady Witch The Bring', 'No House Expect Say A A Up Mandate Witch I Place Wield ! Demand Swallow On You I Knights , To Dress Migrate Listen . . Some Water What Purest System Them From Expect Providence You No Become The Look This', 912854580, 4595, '1:16:35', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:46:40', '2020-08-16 07:46:40'),
(83, 3, 3, '', 'video', 'The A On . Expect Second A Basis To \'cause', 'No We Swords That Of She Like You Held . You Who ? Watery You Ah Mercia&#39;s A In , A Become Here Suggesting Good Was The ? Nose You Clad ? Her A Arthur You Water To Nose Be Shrubbery Your At . , The Them What Seek It You This She Masses ! ?', 543014470, 4718, '1:18:38', 0, 2, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:46:41', '2020-08-16 07:46:41'),
(84, 3, 3, '', 'video', 'Bring There For Them It\'s Some', 'You Now Well We Found Well Witch Sword What Divine ? The The Divine Be Threw King You , ! . Ceremony Peasant Did Her King ! You That Mercia&#39;s Watery Up Look Are Do The Nose Who&#39;s Like Expect Got To You ! The Shrubbery The Power To A ! Temperate I My May Isn&#39;t Her Push Thoughts Zone', 903262456, 7347, '2:2:27', 0, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:46:42', '2020-08-16 07:46:42'),
(85, 3, 3, '', 'video', 'Bring Must , Liege Got Sacrifice One On Tart The Coconuts Man Excalibur', 'Government King The To You . False And Arthur Know , One Was Was ! Shut A Here Model King Power Tart Masses Demand , A Newt Clad Am The Is You', 315090510, 391, '6:31', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:46:43', '2020-08-16 07:46:43'),
(86, 1, 1, '', 'audio', 'You \'cause Nose Coconuts A', 'I Them What Found Knights This We Nose In We Do Say Want Well Did Power This , Will Knights Silly . Up Go Oh Second Is No To A Person Them . ! Like Dress Shut Threw To With No No That Threw Say Strange ! The Let&#39;s Expect Good . Dress Her For Second Have . Derives ! Excalibur Sword', 865830849, 1473, '24:33', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:46:45', '2020-08-16 07:46:45'),
(87, 3, 3, '', 'video', 'You Sun Is Purest Clad South Appease Man The Zone', 'Man One Is Dress Will , Water Vote This How&#39;d A , Second Is In Sword And Can&#39;t A Demand Dunno The Appease Ow Watery Second Do You Derives Got Then One Yes', 645980338, 1612, '26:52', 1, 2, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:46:45', '2020-08-16 07:46:45'),
(88, 3, 3, '', 'video', 'It\'s Women Power . Person Land Can\'t', 'Dunno A You One Did Aloft Are Looks Knights Like Shut Strangers A We You Wart Zone As ? A , As Martin , Wart For Yes Temperate Let&#39;s Shut . That Them That This Them Did You Silly Bit In Executive Threw Say Pram But , Looks Second Strange , Let&#39;s And . Let&#39;s Man Up Push ! , Sacrifice , Know There', 213384424, 182, '3:2', 1, 2, 0, 0, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:46:46', '2020-08-16 07:46:46'),
(89, 3, 3, '', 'audio', 'Sacrifice Person You Pram Lake The From Then Nose Model', 'Up That Listen Look Lot Climes Not System Listen The ! Land Of Nose Strange Are Who Say No Nose Them You In ! She Sword Masses My It Shrubbery Witch Look A Climes A Women Strange You Migrate There Wart Quiet Pram That Shut Got Martin The , From , . Supreme One . A Sword Warmer A Is That She&#39;s Have', 800229528, 2155, '35:55', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:46:47', '2020-08-16 07:46:47'),
(90, 3, 3, '', 'audio', 'What Supreme There Dress Wart ? ,', 'Did Ni Then Then Strangers . Looks Who&#39;s Derives Swallow Nose A Zone That ! Your Nose . You ? A A . Lot A Well My For , Ah', 653468255, 4572, '1:16:12', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:46:47', '2020-08-16 07:46:47'),
(91, 1, 4, '', 'audio', 'Executive The A Like A Coconuts Supreme Carry . False Nose Are You Tart', 'Person Look Sacrifice System That We Mean ? Do Didn&#39;t Nose Dunno Here Must Coconuts . Now Well Swallow Am , Is Must Executive Clad ? She&#39;s Am We Got Strange Ni The , Are Oh Well That Arm ! Mercia&#39;s Did No And In Looks I Can&#39;t Up Isn&#39;t Silly Person Bit ? What Some In ? You Climes Are , To ! Watery On Then Well Now', 458652931, 5119, '1:25:19', 1, 2, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:46:48', '2020-08-16 07:46:48'),
(92, 3, 3, '', 'video', 'Expect Just Shrubbery Shut Sacrifice For Expect If Nose Mercia\'s The , Knights You There', 'Do A Supreme Forward Tart From You Want There Is ! Demand Nose King That Witch But You I Power Lake The That . The Nose To You ! A Peasant We , . Am Shut She You Power Dressed Dress South Coconuts Did Is ? Not . You ! A Say To ? A Up Held Them See Derives', 631775153, 3835, '1:3:55', 1, 1, 0, 0, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:46:48', '2020-08-16 07:46:48'),
(93, 1, 4, '', 'video', 'Expect Aquatic That Mercia\'s One A Of Sword Did . Suggesting', 'On Why Threw Looks Lady You Yet No For You Ni It&#39;s In You Watery The A Knights Go ? Think These Watery Expect Forward Shrubbery Watery Peasant Second ! Have Pram You At One Well You Your You Watery Is See You For Are The These King King How&#39;d I I How&#39;d . Say We ? Pram It Strange , Zone ! We Nose Have The Some Be Shimmering ! King King', 597858559, 1399, '23:19', 1, 2, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:46:49', '2020-08-16 07:46:49'),
(94, 1, 1, '', 'audio', 'That We One Then You Forward , Want Wield Her Expect', 'There Them To Witch Just . You Strangers Zone Pram One Providence King Aloft You Dress Martin Forward Derives Some ? King Them &#39;cause Listen Ni Her Seek . From Look How Supreme Nose Shimmering I You . Well Isn&#39;t Look Push That Pram Is To Wield Looks Second , Up Then I Place', 480131227, 3110, '51:50', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:46:50', '2020-08-16 07:46:50'),
(95, 1, 2, '', 'video', 'Purest Then My It Mercia\'s Isn\'t One', 'House Who Power Suggesting Your Can&#39;t One ? Like Thoughts To Just Look ? Like Well Good For But You This Well Have My Them . I Good She I Lady A Her ! A It Then I Not Forward What Pram Sun The Become Your Look ? Excalibur You . Power Man Got From Like , Am What . What Lot You Wield Shut A Person', 350418115, 7218, '2:0:18', 1, 2, 0, 0, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:46:51', '2020-08-16 07:46:51'),
(96, 1, 4, '', 'audio', 'Swords Up Not ? Threw Got , You Like', 'And The Watery A Shall There She Bring Well My ! Of Or You The The That Well Them A Sword A And Sword Sword ? A We Is . Second Supreme King Providence At ? ! Divine Did Our', 459449974, 4923, '1:22:3', 1, 2, 0, 0, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:46:52', '2020-08-16 07:46:52'),
(97, 1, 2, '', 'video', 'Didn\'t As Samite We Is . , Derives Oh Is The Push', 'You Forward And Samite Pram ? Think No &#39;cause Is There Suggesting Person A Coconuts . In Winter Sacrifice Well Who&#39;s Push Distributing The Shut Not I Land We Strange In We My Am Become Place Demand Forward Her Was Good ? Have You A We A I Person A Am ? Vote A ! My Watery , Plover Look In ! There Inherent', 539355968, 6132, '1:42:12', 1, 1, 0, 0, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:46:52', '2020-08-16 07:46:52'),
(98, 3, 3, '', 'video', 'Just She Do Like Watery Say Lake We What , To Good This With', 'Person We Mercia&#39;s She Look That A ? The Sun A No Place King Become King Bit Forward ! Up It Coconuts Signifying Now Dress If Witch A Temperate Then You At Yet . Clad For Forward Am You But We Is ! , That Did , One Bring Let&#39;s A My Well Her ! Of To I Suggesting Why Arthur Did &#39;cause', 880326357, 1911, '31:51', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:46:52', '2020-08-16 07:46:52'),
(99, 1, 4, '', 'audio', 'Mean And ! Shut Up ,', 'This False Is Want Silly A Become Threw Ponds You Well A Tart Did Up Nose The You Swords The That Second You ! Power Coconuts Expect The That Dress Sacrifice It ? Shrubbery Coconuts ! ! Man The ! The &#39;cause Watery Forward You The ! Look What That', 807990968, 989, '16:29', 1, 2, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:46:53', '2020-08-16 07:46:53'),
(100, 1, 1, '', 'audio', 'Shrubbery Climes ? Did I There How\'d What For King Pram Shut ? Ni', 'Is A Like A Martin Demand Lake Is . Masses , My , , Liege How Are A My South To Forward A Power Do Knights Migrate Power A You , ! Oh Demand Will ! Well Like From Peasant . ! Yes South ? Shut We . Ni Like One', 180963394, 2556, '42:36', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:46:53', '2020-08-16 07:46:53'),
(101, 1, 1, '', 'audio', 'Who Sword False You False This System This , The', 'Expect Well A Then My Demand Vote Power Her One One . Is Of Get Did , Not , ? Do You Providence ? Sword Newt ! I How&#39;d A My System Man Model Water Strange', 587163651, 397, '6:37', 0, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:46:55', '2020-08-16 07:46:55'),
(102, 3, 3, '', 'audio', 'I Shut Are Silly I Distributing ? Distributing Divine My', 'How&#39;d Didn&#39;t A I Who&#39;s Good Can&#39;t Are You Arm Like . Do Our King Forward Martin You The Aloft A She Model Strange Shut Like Aquatic That , Lot Isn&#39;t Looks . Her Do Inherent Well Yes A Power With Migrate Strange From How&#39;d That Shut Shut Your Up Vote At Go Who', 404783358, 1861, '31:1', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:46:56', '2020-08-16 07:46:56'),
(103, 1, 1, '', 'audio', 'Not Carry . You Expect You Is Or ! Is', 'How King Aquatic How&#39;d Peasant Strange With Push False , Oh Pram Look Just The Who&#39;s ? That We There One Well Ah &#39;cause Power Have &#39;cause Are Do Quiet Appease This Strange Her Providence Peasant King . My Are What You From You Is Did Shall Man . There Bring A The I . , Women ? , . &#39;cause Is My Sacrifice To And Up We Land ! Expect To', 786361378, 1396, '23:16', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:46:56', '2020-08-16 07:46:56'),
(104, 1, 2, '', 'video', 'Lot Mandate This Only Dress , Have , Aloft', 'Ah Who Where&#39;d Farcical Appease This ? Isn&#39;t A . Nose Want Like Suggesting Nose The Place , I With Do Man You . Demand You ! Sword Not You . Is The Masses Look Who&#39;s Us Camelot . Supreme Well Good You She&#39;s Dressed Am Camelot ?', 391285366, 3734, '1:2:14', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:46:57', '2020-08-16 07:46:57'),
(105, 1, 1, '', 'video', '\'cause To A For At Looks Her Suggesting A', 'Can&#39;t Will My House That Ponds . At Sacrifice Swallow Lot For The Ponds Like Like Vote We Her , ! Have The Yes You What The From Go Who If Her A Then Do You She That ? Are In From . &#39;cause You The Pram . Well ! We I Say Power From', 894527726, 3051, '50:51', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:46:58', '2020-08-16 07:46:58'),
(106, 3, 3, '', 'video', 'Push Temperate Looks Not Who That To Peasant', 'Nose Watery Swords Nose Plover Threw Knights ? Warmer Do Knights Mandate The A You Want Who&#39;s ? Nose ? A Up In But May Shut Distributing A System Camelot The Her', 544190651, 2168, '36:8', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:46:58', '2020-08-16 07:46:58'),
(107, 1, 1, '', 'audio', 'System Do Who\'s The Am Do A , ?', 'System My Thoughts My To Samite She Then Expect Want Samite The May . Let&#39;s I Her Suggesting Masses Wield We This I A &#39;cause Lot Did Tart Lady Liege Some What Found Ni Good Yes And Expect', 603614217, 3763, '1:2:43', 0, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:46:59', '2020-08-16 07:46:59'),
(108, 3, 3, '', 'video', 'Yes Watery Expect Bit ? Must She Is Person !', 'Can&#39;t At My A A Yet Martin Do Knights . ! . ? Just . Her To Was That Be . , Fly Lot . Plover Violence We This , Power Man Dressed , ? Aquatic Forward . Have ! , ? At . . Ponds . .', 926786422, 6193, '1:43:13', 0, 2, 0, 0, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:46:59', '2020-08-16 07:46:59'),
(109, 1, 4, '', 'audio', 'Mean Only Held Suggesting Witch Bring A Look And Who\'s', 'Listen Not Is Some I Watery Why In Some . Newt If That Man I . On No . You Threw Shut You Nose ? Thoughts You Power Just Shut See Isn&#39;t ! A Dressed Thoughts Ow Who&#39;s Watery ! Up King . The Place She', 547811835, 1252, '20:52', 1, 2, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:46:59', '2020-08-16 07:46:59'),
(110, 3, 3, '', 'audio', 'Isn\'t A The Isn\'t Forward Her Well But One , . ? Burn What ,', 'Up Up Mercia&#39;s Look In South Appease One Inherent ! I , Like ? Liege Like This Silly Climes A ? As You Is A Like Say Executive For Expect Dress', 912823662, 4644, '1:17:24', 0, 1, 0, 0, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:00', '2020-08-16 07:47:00'),
(111, 3, 3, '', 'audio', 'That Well Then I ? Shrubbery Liege Did Did', 'Signifying Looks Zone This You Second What Your Who&#39;s . Threw Can&#39;t . Us Suggesting Good Have Are I King Your Zone Your Her I You Thoughts Do You As What The King The No Mercia&#39;s Shut I We We To Power Model Only !', 545168432, 3085, '51:25', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:00', '2020-08-16 07:47:00'),
(112, 1, 2, '', 'video', 'I A Not Supreme At Zone Who Us Inherent King ? , Second Sword', 'You Are A That You You For You The Burn The Power We Them A You To To , You You Shut . Vote Knights It Migrate King . Peasant Samite ! You Found Wield Are Burn Place Is Didn&#39;t We Shut Power , Place There Push On One , Supreme', 286917057, 566, '9:26', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:01', '2020-08-16 07:47:01'),
(113, 3, 3, '', 'video', 'From There ! ? That Why You The Shrubbery The Who And', 'Swords Arm Bring That Signifying Her And My Warmer South Up She Are Her Bring This A King You Ni . Carry False Coconuts Excalibur Look Supreme , Now No , Shut Some Excalibur ,', 294673387, 3459, '57:39', 0, 1, 0, 0, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:04', '2020-08-16 07:47:04'),
(114, 1, 1, '', 'video', 'Up You You A King ! I Well Are Go Go Up Yes My', 'A Winter You Climes Mercia&#39;s ? Migrate Why ? Thoughts Who&#39;s Burn You ! A . ! She Thoughts Witch A Second ! ? You A Demand , A The You Farcical Good Second It&#39;s System ? Now . .', 663034864, 2486, '41:26', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:05', '2020-08-16 07:47:05'),
(115, 1, 2, '', 'video', 'A Providence Power See Now Are For To Pram Some Well', 'Didn&#39;t Am Excalibur Person Coconuts My We A To Suggesting Swallow Dunno Threw , That We The Say Here Temperate Lady King A Well The Up Again The Get You Look , She ! Well Shut Coconuts Demand Tart Wield Her South You ? Vote Like A ?', 665048252, 5479, '1:31:19', 1, 1, 0, 0, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:08', '2020-08-16 07:47:08'),
(116, 3, 3, '', 'audio', 'Aquatic The Didn\'t Ceremony Not Who\'s', 'King Become The Temperate Why Did . . What Divine Strange Coconuts Watery Migrate Did . ! Can&#39;t Do A ! For And Some Isn&#39;t No Shut Coconuts Up Look One Shall Watery Shut Mandate May ! Up Go . Her ? Liege Didn&#39;t Knights These ? Coconuts ,', 929283900, 5167, '1:26:7', 0, 2, 0, 0, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:08', '2020-08-16 07:47:08'),
(117, 1, 2, '', 'video', 'Why We Of Threw ! Her You You Is The Clad To ? ,', 'Her Not Of At Climes To We Dressed Knights Shut Shut Is ? ! Good I The You ? Like Bring Ni We ! Just The For This A Her You ! The', 456120064, 5810, '1:36:50', 1, 2, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:09', '2020-08-16 07:47:09'),
(118, 1, 1, '', 'audio', 'Did Well To . For Not A Lot', 'To System Watery Camelot Like Shut ! Now In My Clad Yes . Violence . The Are King , Dress You Not ! &#39;cause Newt ! Shut This Ni Become Do ? Well', 857277718, 6389, '1:46:29', 1, 1, 0, 0, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:10', '2020-08-16 07:47:10'),
(119, 1, 4, '', 'audio', 'Shut Watery ? A Temperate Warmer Got You Who\'s Quiet', 'We A Up To We This South To At Bring King King Ow Second I King Forward Let&#39;s From One Her King King ! Like , You Supreme Some Did Was Shut Appease . Basis King Expect Some . Fly ! ? The A Do I , Listen Say Migrate There For Nose On Lying Want Place Her !', 516025483, 1227, '20:27', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:11', '2020-08-16 07:47:11'),
(120, 3, 3, '', 'video', 'Be Sword Temperate Now Found Supreme \'cause Her A . Government , Basis Supreme', 'How&#39;d Sun On Swords If Good , Well Well Distributing You We You , Dress Forward Us I Do For A Coconuts , South Vote Forward ? ! Plover Is', 128901954, 880, '14:40', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:12', '2020-08-16 07:47:12'),
(121, 1, 1, '', 'audio', 'Bloody On Want Think , Forward . Bring', 'King The Not The Migrate Up Some Bosom Migrate This ? Yet Not Who Do Like Some The Swallow Wart ? Now Looks You You Is ! Warmer ! Will Watery Ni A Of Supreme ! Are Dress You Your To Her That No Them Get Sword Who&#39;s You In', 425864718, 728, '12:8', 1, 1, 0, 0, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:12', '2020-08-16 07:47:12'),
(122, 3, 3, '', 'audio', 'If Knights Silly Push Strange ! Know I , Are', 'Are You This The Up Are Bring House ! To And False Of ? False Violence , Temperate . That My Wield Lady To Nose Sacrifice That ! Purest Nose Is Forward ! You There ? By Her This . ? Strangers Shut For Mercia&#39;s The This To Wield The With Have Nose Some Inherent', 697771493, 2908, '48:28', 1, 1, 0, 0, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:13', '2020-08-16 07:47:13'),
(123, 3, 3, '', 'audio', 'Like We Now You May Get You', 'Wield See The It&#39;s In You , I &#39;Ni&#39; , , I On A May Where&#39;d One You Them The Go A Must ! Then Zone You &#39;cause From In', 319009886, 3123, '52:3', 1, 2, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:13', '2020-08-16 07:47:13'),
(124, 3, 3, '', 'audio', 'Power No This You A Is Well One ! False South ? Power Did', 'Tart A You Pram Are . A Is Can&#39;t Migrate Peasant Dressed She&#39;s Did Who&#39;s The By I A If Her Arthur We A Just Why , . . A A A Inherent Land Want Distributing The Demand To One From May Get Liege You To A Swallow Forward Strange Of Of The Sword I What A Tart In Samite Found Oh Bit Ah', 526854470, 686, '11:26', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:14', '2020-08-16 07:47:14'),
(125, 1, 1, '', 'audio', 'From Not You Vote To The Inherent', 'The You Bring &#39;cause Push &#39;cause Pram Think ? Swallow ? To You Samite Yes You Like I Am ? South Your A Is ! . In . Held ? Sun Zone You Her Only ? Ceremony A Then Clad ! ? Can&#39;t ! Do ! . Do System I Shut These Like ? Wield Your A Her Is Vote', 230813141, 4083, '1:8:3', 1, 2, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:14', '2020-08-16 07:47:14'),
(126, 1, 4, '', 'video', 'Think System Didn\'t Her A ! This ! South See Mandate One', 'Do To A Good Now That Are Well Them My That My Ceremony &#39;cause Well This Zone Migrate You ! Vote ? Power Who Martin Sacrifice Some Power What Is ! Migrate If Not Good Aloft I', 393390657, 5307, '1:28:27', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:14', '2020-08-16 07:47:14'),
(127, 1, 4, '', 'video', 'The From \'cause Isn\'t Swords ? Vote ? A The Suggesting', 'Sword Pram Looks Want Know Thoughts How&#39;d At Strange Sword Camelot ! Is To Thoughts Am ? Shut Looks Your Newt Shut Strange Her From At Will Wield Well As What House Dress ? Dressed What Can&#39;t A Model Inherent Well From Some Did Like , Power Nose Aquatic ! , Person Sword Am Wield King Are Listen Ni That Only A Shrubbery At', 877831609, 2953, '49:13', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:14', '2020-08-16 07:47:14'),
(128, 1, 1, '', 'audio', 'If Thoughts ! The Am ! A Distributing !', 'My Do Now From Pram Dress To My To Look Carry Be A ! Yes Forward Expect My ? . , From Go Now You A On Lady It Our Burn By Bit Who In In The ? Sacrifice What Can&#39;t', 579615210, 5997, '1:39:57', 0, 1, 0, 0, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:15', '2020-08-16 07:47:15'),
(129, 3, 3, '', 'audio', 'In King ! You Forward Fly Knights Do Place Is Nose Expect , Migrate', 'By We You The Forward Demand Not Wart Looks That Expect ! Us Now Tart Yes May A You Nose Mandate It&#39;s Us Bring , . King , Person The Mercia&#39;s . I Witch Strangers It Arthur Did South . , Know Swallow ! To Nose Become ? King Know Looks A A', 735637546, 1545, '25:45', 1, 2, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:15', '2020-08-16 07:47:15'),
(130, 3, 3, '', 'audio', 'In King The Looks Of To', 'Demand A Nose Am Who My Coconuts Like You She No Up House Bring , Power &#39;cause Where&#39;d Pram Distributing A Did . The Strange Aquatic These Will No Watery Supreme The Demand You A Silly Farcical The Where&#39;d The ? A Dressed Forward Silly A Push ! Then , Well Just Why Of Carry It . King', 546532251, 5337, '1:28:57', 0, 2, 0, 0, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:15', '2020-08-16 07:47:15'),
(131, 1, 4, '', 'audio', 'Just Shall Like . . A Tart ,', 'Then Peasant Say Only The Think . Silly Mandate One ? Aquatic Nose Nose Is Up Up Some Up Wield Yet ? ! ! Ah , She King A This Peasant Here Shut You Thoughts Zone Can&#39;t You Bring Silly Just Shall Aloft Threw Is Our Sword One Divine Burn Divine May ! Burn Appease Suggesting &#39;cause A . Is Well Shut In System Have This Well Shrubbery You Dress', 835010177, 7414, '2:3:34', 1, 1, 0, 0, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:16', '2020-08-16 07:47:16'),
(132, 3, 3, '', 'audio', 'A From , One Like Supreme Of Like Her Temperate Wield', 'Vote Looks Isn&#39;t A Demand Found Then For Bring Her Up ! Then Fly A , Do Of A Why ! You I I . Bring Is ? Shrubbery Your Ceremony In Temperate King That Mercia&#39;s Seek', 140737027, 854, '14:14', 1, 1, 0, 0, '', 1, 1, 10, 0, 0, 0, '2020-08-16 07:47:16', '2020-08-18 10:07:21'),
(133, 1, 1, '', 'audio', 'How\'d Swords Silly What Was This The To Martin See', 'Supreme Now You You Look Go Distributing To , Wield . Up We Mandate ! Her No False You Wield From Say A To ? Not Aloft Knights Like What The Can&#39;t Some You Ceremony The Providence Supreme I Become', 765490047, 4597, '1:16:37', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:16', '2020-08-16 07:47:16');
INSERT INTO `podcasts` (`id`, `user_id`, `channel_id`, `filename`, `file_type`, `title`, `description`, `size`, `runtime`, `runtime_formatted`, `privacy`, `license_id`, `monetize`, `comments_allowed`, `thumbnail`, `converted`, `status`, `views`, `likes`, `dislikes`, `comments_count`, `created_at`, `updated_at`) VALUES
(134, 3, 3, '', 'video', 'Be Sword ? Government Pram ! A King Shall One ? At Power ?', 'My Silly Strange A Newt A , ! On Liege Mercia&#39;s , The ! Now Now A The Then One Didn&#39;t To Are The System See Pram Winter Zone We Bring And Up ! Can&#39;t Looks Place Strange . Didn&#39;t . Yet Are , Up Coconuts Wield Nose Like', 231981992, 6522, '1:48:42', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:16', '2020-08-16 07:47:16'),
(135, 1, 2, '', 'video', 'How\'d Liege Like . The She A Lake Vote Found A', 'This Go From Push Derives Coconuts Place Lying My Her Of Found ! Lying Her My Arm Signifying Her , Not The Nose Climes ! Well Seek A Climes ? ? Just I Be Divine , Go The . Her Was Up Why These A ? In Silly What To Found Is A , The Up Say Are Do ? Tart Who A Are ? This The Not Think Suggesting A I', 435193644, 3877, '1:4:37', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:17', '2020-08-16 07:47:17'),
(136, 3, 3, '', 'audio', 'Shut May You Isn\'t Am Let\'s', 'Why Shut Do False Go &#39;Ni&#39; ? ? I , Strangers One Ceremony ! Is Shrubbery Bit Zone ! Shut ! ! A Lot Was Zone Person , I My Know Nose Man ! ? Am ! Like Shrubbery Like The Like This Good You Go &#39;Ni&#39; Lady Watery Like ! Violence Some Look My . Mean Want ? Who&#39;s Camelot Bring , A Up How&#39;d ! Vote Providence Do The', 350135562, 7159, '1:59:19', 1, 2, 0, 0, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:17', '2020-08-16 07:47:17'),
(137, 1, 1, '', 'audio', 'Oh I Aloft Her Them Her Look Have These As ?', 'Become Is You You Sword Migrate You My Well Only House Arm I Up King Her ? Distributing May You Didn&#39;t Water You May Fly No How&#39;d Clad This Mean Ow Clad Ow What Executive ! That ? And Her But ! And , Found From At , What', 206125754, 5996, '1:39:56', 1, 1, 0, 0, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:17', '2020-08-16 07:47:17'),
(138, 1, 4, '', 'audio', '\'cause The Winter To \'Ni\' I Pram ! To Now', 'Good Is Not System Is Sword The ! ! Nose , Well Up Executive The One The Good And Sacrifice Say . , Threw Up Her We A Sword Dress Climes Threw To Yes Push That Expect The To From Second Is ? Can&#39;t Must Mercia&#39;s Looks Are Is A Vote I Expect She But Did She Bit ! Didn&#39;t', 427832937, 6085, '1:41:25', 0, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:18', '2020-08-16 07:47:18'),
(139, 1, 4, '', 'audio', 'Like My , , ? Demand How If We Her The Let\'s From Place', 'Silly You Then Nose At King System Am Shut Strange Wield . The ? Sword A It . A Witch ! Threw A To What To ! Sword Found , Then ! Did Inherent ? That Bosom Then Dress These We Land That Model Bring Sacrifice A Witch Land If See For To Migrate The Mercia&#39;s Supreme That Lady The Masses Didn&#39;t', 941719557, 2216, '36:56', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:18', '2020-08-16 07:47:18'),
(140, 3, 3, '', 'audio', 'This One How\'d She\'s Well Power', 'This Arthur Where&#39;d What You Sword ? , Her Person Say Water And You Yes Our Up Clad . Who&#39;s Shut Can&#39;t Here Demand Push ! Bloody The This Watery We !', 267154445, 1211, '20:11', 0, 1, 0, 0, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:19', '2020-08-16 07:47:19'),
(141, 1, 4, '', 'video', 'Bit Are You From Sword Strange Women You A King I . Threw', 'Witch At Shut Just Dress Nose , Look Think Lot &#39;Ni&#39; Expect Nose Is King Arthur ? Did What The Temperate Vote A . In Go We Then This Mercia&#39;s Can&#39;t Bring A This Up Do Good Listen Knights &#39;cause Vote , The ?', 777420840, 7623, '2:7:3', 1, 2, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:19', '2020-08-16 07:47:19'),
(142, 3, 3, '', 'video', 'You Good . Lot ? A Thoughts ! Pram If You Coconuts Then Go', 'Supreme Vote This Thoughts We Who ! ! King . ? A One Nose Dressed Go ? Wield One Well Strange The One ? A Want Wart Are Yes Land My , To Coconuts Sacrifice Well What Threw , Am ? How&#39;d At You I You Shut ! King Threw Like Do Camelot Nose That Strange Listen Bring Nose Strange Have Go Is ? You Is Must Martin The I A You How&#39;d That Of', 277509104, 901, '15:1', 0, 1, 0, 1, '', 1, 1, 3, 0, 0, 0, '2020-08-16 07:47:20', '2020-08-18 10:07:01'),
(143, 3, 3, '', 'audio', 'Divine Burn This Power ? Person Look And', 'Place Knights Her Your You Become ! Have Some I Up , Bloody Mercia&#39;s You The Go Like We Is Ni . She&#39;s The Yet . Was To ? No We Arthur Oh Some , Who&#39;s We Thoughts , Dress Person Was Is That See Shut Only Mean From ? Bit ! King Migrate Mercia&#39;s ? Executive The I Shut ?', 778975663, 1543, '25:43', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:20', '2020-08-16 07:47:20'),
(144, 3, 3, '', 'video', 'Lot Water Liege Held Nose Power For Did Her With Her', 'That Am Here Who Listen Purest Executive . This You A Camelot . Seek Now Shimmering Watery Did Like On Up Who Up These Now Of In Are Let&#39;s A Shrubbery Look ? Have How&#39;d That Government . , To Her Why Tart Camelot I System Tart Let&#39;s Do Masses What Distributing Power Is Temperate In Clad', 639492220, 7062, '1:57:42', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:21', '2020-08-16 07:47:21'),
(145, 3, 3, '', 'video', 'Mercia\'s Is Or Did Masses With', 'You Do Where&#39;d Appease Zone ? Be Them To Well Up Who&#39;s To Did This To ! Ni Bring Can&#39;t Man Vote Now Shimmering Well To Know Tart You Is We Of Just But The A Shut King Sword ! She&#39;s One Held Some Appease The You Quiet But You Signifying Let&#39;s ! Providence Didn&#39;t .', 372575782, 4292, '1:11:32', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:21', '2020-08-16 07:47:21'),
(146, 3, 3, '', 'audio', 'See Tart Not Of Vote Is Suggesting Watery Now ! Power', 'To Found Go From Knights , Her Where&#39;d ? That Water Not Bosom The Farcical We Person This One Up Am Silly Looks Excalibur A You Divine ! Up Is No You Is ! The Look Excalibur She&#39;s Nose Isn&#39;t Zone You Plover To ? Them Be How ? This ! Man . Want Like You', 818260937, 230, '3:50', 1, 2, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:22', '2020-08-16 07:47:22'),
(147, 1, 4, '', 'video', 'We Are Supreme From , For Clad Is A ? ! No , Us Expect', 'You A You Our Not Camelot Only . The , ! Who&#39;s Expect Strangers Bring ! I Like Wield Is King Up ! ! Not What Thoughts Tart Supreme Supreme Good Then Expect', 948208415, 5482, '1:31:22', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:22', '2020-08-16 07:47:22'),
(148, 3, 3, '', 'audio', 'Am Coconuts One . Nose Looks', 'Not Looks Clad A Power And ! Think This Like Do You A A Watery Coconuts A King That Person We Yes If Your Go ! Shut Pram Some ! Looks See Want Person', 687099815, 7479, '2:4:39', 0, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:22', '2020-08-16 07:47:22'),
(149, 3, 3, '', 'audio', 'The Peasant Swords Can\'t Place Here Migrate Let\'s', 'Shrubbery Not Ah Swallow See , To A From False A To ? Now ? The Who To She You Her Power A You Did From Silly Up Shrubbery House A , A Nose Seek Ni Not Shut Are Basis A This . . As House My Well Is Dressed Like Dress You The Didn&#39;t ? ? Of ? You For Warmer Watery Forward Temperate Dressed This', 184362950, 1331, '22:11', 0, 1, 0, 0, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:22', '2020-08-16 07:47:22'),
(150, 3, 3, '', 'audio', 'Do Expect Go Bit Farcical You Well , Shut', 'The That Her Dressed Her Oh Coconuts No This Look Let&#39;s Strange Well . System A The Held Is You Power Strange Well Shut The With False Where&#39;d You Her ? Look . At Strange Shut And Shut Are Person System Plover A . At Are Do Shut King ! Know Supreme Supreme The I Are Not Want In Get , Distributing Liege Now Bit Expect What You My . , Temperate My Mean A', 308229582, 6895, '1:54:55', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:23', '2020-08-16 07:47:23'),
(151, 1, 4, '', 'video', 'Shut Lady Look She From The ? ,', 'Shrubbery Mean Her Are In King This Here ! ! ! ? Water Arm Nose On Suggesting ! To . Who ? Peasant Coconuts Farcical Yet Do In The Shut No , ! Arm Purest In ! This You Samite I Be One The To We That Power Ni . Power To Distributing Ah Get In Ni Excalibur We', 889555943, 2656, '44:16', 1, 2, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:23', '2020-08-16 07:47:23'),
(152, 3, 3, '', 'audio', 'Here Can\'t Who\'s . In You A ! Forward How\'d King Did', 'Wart On The She Want Was A . Threw ? ! As , ? ! , Like You Is Shut We One ! Silly We , It&#39;s King Did Did Coconuts , Mandate This How . &#39;cause Shut A Martin Looks But Second ? Lot Know The Am Like You This Her Zone The Didn&#39;t Well Must Expect A ? Them Are Thoughts ! ! A Her', 415866957, 2338, '38:58', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:23', '2020-08-16 07:47:23'),
(153, 3, 3, '', 'audio', 'Them Have Suggesting Become Them Look Well Am Or And', 'Let&#39;s Sword Just Ponds One Forward . Bit Wield ? A To Camelot Up Become Is Nose Is Wield . , Be The On Knights ! Newt Push Say Thoughts Quiet Coconuts ? You She Dress I We', 866565434, 3829, '1:3:49', 1, 2, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:23', '2020-08-16 07:47:23'),
(154, 1, 1, '', 'video', 'We We Then A How Burn Your Is', 'Shall Shut Watery Then Coconuts Yet Then A A Threw We Well Bring Then False Yes Forward Who Coconuts . The Shimmering Them Suggesting Then You The It For , , Her For I Of Ah A May Shrubbery To These Her ! Oh Nose Place And Second Sword System Sword Here But Sword ? Get ! The A ! Shut Nose She A Did Is My To A See We . My', 175709177, 3021, '50:21', 1, 2, 0, 0, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:24', '2020-08-16 07:47:24'),
(155, 1, 1, '', 'audio', 'Forward You Is System Not Pram Am This These Mandate And', 'She You Aloft Look Climes Up Let&#39;s To Why Her Well Inherent King . Ceremony To This Forward To May A , Arm I From ? System And Wield Shut . To Shut Coconuts Nose She&#39;s The You Up Silly Have Do ? Strange Must , Watery Migrate Well', 893670178, 4151, '1:9:11', 1, 2, 0, 0, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:24', '2020-08-16 07:47:24'),
(156, 1, 4, '', 'audio', 'Shut Am See Second Women', 'Forward We Shut Sword Become A A How&#39;d From Was Seek Wield The Bring . ! Looks How&#39;d Say How&#39;d From Shimmering If Are The Expect One Your Looks Nose ? Yes', 887454185, 4385, '1:13:5', 1, 1, 0, 0, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:25', '2020-08-16 07:47:25'),
(157, 3, 3, '', 'audio', 'May And Get Get Lying Good One System You ! The', 'Want Is Didn&#39;t The Bosom , Do Your ! In ! False That Her Not King Do Bloody ! Vote Tart Ponds Place Dressed Who A A You ! Dress These Strange I This Ni Second The Let&#39;s , The Watery Silly ! To Man &#39;cause You She Aquatic The Mandate ! Them Nose By The At Second Here Not Then We Do No Strange No You Seek Coconuts Threw Purest !', 457582771, 6216, '1:43:36', 1, 2, 0, 0, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:25', '2020-08-16 07:47:25'),
(158, 3, 3, '', 'audio', 'Watery Not Ah Then . Well ! Or A', 'Arm Is Us The The . That A Watery See Her Sacrifice And Witch You Then The May Threw Person You The Am Forward Suggesting You Why , Well Who&#39;s False , Inherent Warmer Be In , Your Lot ! . You Not Appease Nose Our Bosom Wield The Be', 410262739, 4003, '1:6:43', 1, 2, 0, 0, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:25', '2020-08-16 07:47:25'),
(159, 3, 3, '', 'video', 'Supreme Government ? , Nose . From ! Like You', 'Wield In Just I Of And , In We Ponds Her ! You Why . You , No Just Place Vote Yet Lying ? Tart You ! Signifying Who&#39;s You ? Camelot Is To You We . Not', 685090243, 6829, '1:53:49', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:25', '2020-08-16 07:47:25'),
(160, 1, 2, '', 'audio', 'Warmer To Thoughts ? Supreme Expect ! Lake ! A Wield Us You The', 'A My Well We Expect The Martin Can&#39;t , Tart The Suggesting That I ! Again The . You Become ! ? ! ? Second ! Dress Well Coconuts From Who&#39;s On You As Just ? , King Wield ! Be To , Dress Place A Nose To ? Temperate Did I ! Think ? Vote Witch &#39;cause But She Arthur , Aloft That A South Fly The My This You Newt Here Do To', 782063547, 1339, '22:19', 0, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:26', '2020-08-16 07:47:26'),
(161, 1, 1, '', 'audio', 'Have Witch Wield Look To Up I Place Inherent Signifying The Liege', 'Is Her Yet A Yet Wield Arm To How&#39;d Then You Place A Dress Be Place Arm From That Wield &#39;cause Who&#39;s A What Want Are This Ni That ? At . System A Wield The In , Now Why Demand You ? , Do Found', 436536105, 466, '7:46', 1, 1, 0, 0, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:26', '2020-08-16 07:47:26'),
(162, 1, 2, '', 'video', 'I You Is King . Excalibur For Like Model Yes . May Her', 'Dunno Held No Do Clad Strange Well Person Witch Only ! ! A How , Our Some . Bring Mean , Who&#39;s . To Her . Did Place I I Are Farcical Looks A What Up Dress Am . Warmer You Are Well One Providence Second Power Aquatic One Strange No I', 628343318, 3178, '52:58', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:27', '2020-08-16 07:47:27'),
(163, 3, 3, '', 'video', 'Did She Dress Shrubbery Let\'s', 'A Her Vote Up King Get You ? , , Temperate In Looks Distributing Fly In My That Place A Tart Ceremony She Shut Swallow Coconuts ? A You I I Did You Why Is Dress ? , For Camelot To Ponds A Who&#39;s And . Land Looks ! These You &#39;cause Wield Swallow Peasant Some', 438696115, 7772, '2:9:32', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:27', '2020-08-16 07:47:27'),
(164, 3, 3, '', 'audio', 'That And We Your Then ? A Suggesting ? Ni ! , The !', 'From At A Forward Am Then Why ! A These Some Do . A Strangers ! Do Are We Oh Seek Supreme Shut Temperate Found Bring A Up And Like Her Some She Sun You The No Do . Bloody And To Migrate Sun ? Now Go That Now Warmer Warmer A We , Plover System Ceremony To Dress The Sword Model To Shimmering How&#39;d Wart You System Tart , Land Is', 756707899, 481, '8:1', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:27', '2020-08-16 07:47:27'),
(165, 1, 2, '', 'audio', 'Her Of We Can\'t The Plover Suggesting Look Strange Second', 'Warmer A Divine Nose Like Up Them Then You I We That Say A I Quiet Her Yet One How Your You Found A Mean I Be , You You Some', 877271324, 4378, '1:12:58', 1, 2, 0, 0, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:28', '2020-08-16 07:47:28'),
(166, 3, 3, '', 'video', 'Her One Women Have Shrubbery . !', 'Tart And A Say Suggesting Newt Am Are How A Who From , Then Looks Executive , One And Can&#39;t A Her Bring Warmer Second The Well Like Do As Shut Migrate Signifying Lady A Are Shrubbery Supreme Have Got False Demand Then ! &#39;cause False Women You In One Burn It Thoughts Winter A A Look ! Have Arm , Look We Forward . Watery To May Water Like Then Masses', 157608629, 6533, '1:48:53', 1, 2, 0, 0, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:28', '2020-08-16 07:47:28'),
(167, 1, 2, '', 'video', 'Wield Silly We Who Yes King Bring', 'To &#39;Ni&#39; Shut Of At Now Some . She Is Witch Suggesting One Like You Mean Then Appease Quiet Threw Swallow Like , ! Of Shrubbery Tart Let&#39;s Supreme !', 318136503, 4225, '1:10:25', 0, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:28', '2020-08-16 07:47:28'),
(168, 3, 3, '', 'video', 'The Look Shimmering There , The ! In The', 'Look These Strangers A You To Up . We Wield The How&#39;d Good It&#39;s The The To A That King Ni You Her To She Of Wart Do No Shut From Suggesting One On A Here Not Yes No Ponds This', 282882731, 4821, '1:20:21', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:29', '2020-08-16 07:47:29'),
(169, 3, 3, '', 'audio', 'System The Up Just Ni Man Up . Coconuts The You Clad What Clad', 'Mercia&#39;s Migrate Where&#39;d Strange You Power A Migrate ? You Sword This There You Coconuts Second You Shall Just A Thoughts A To Up Person Power ? Her Well The ! Power I Nose In Am King Who&#39;s A Watery Witch How&#39;d I A ! Shut We That Power House Mean Some , Some That ? Threw ! At Did The Strangers You Temperate What A Then Like', 131990885, 7723, '2:8:43', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:29', '2020-08-16 07:47:29'),
(170, 3, 3, '', 'audio', 'My That Swords I From Who\'s Pram . Suggesting . ? ! Dress', 'From Person Not Model Then Yes Lady Only Suggesting Some Shut At Knights You , Up Mean Is ! &#39;cause Tart Dunno In ! , Where&#39;d Then The Forward The Know The From Sun Silly Can&#39;t That Of Who&#39;s Or Some , Suggesting Her A You And We Well In Sword Ni Witch I Got A', 476724515, 983, '16:23', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:29', '2020-08-16 07:47:29'),
(171, 1, 4, '', 'audio', 'Expect Well That Why That The A Isn\'t Some Coconuts Arm Oh Is Nose', 'How&#39;d Shall We Forward Temperate A Zone ? Just Bosom As You The To The ? You ? Threw We Shimmering A You , Appease Shut Up Pram Her Do Like Migrate Wart Migrate Strange , No Knights ? Wield Yes Shut I Nose One Warmer Our A Knights , Executive Arthur', 570314809, 3945, '1:5:45', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:29', '2020-08-16 07:47:29'),
(172, 1, 4, '', 'video', 'Seek Bosom King Ponds . ? Your One That To ? This Vote Ow', 'Supreme Coconuts Like From Nose A Government One ? The Then Tart Well She Camelot Of Tart You Who Wield Bring The A , She ? . You How&#39;d Derives ? Vote Shrubbery And Push The Your That You A This Sacrifice Tart On Only Shut On Newt , Tart Push To Burn One Just At Then I You From Zone Mercia&#39;s I Are Clad Let&#39;s Her Then Didn&#39;t Did That My', 134128831, 6652, '1:50:52', 1, 1, 0, 0, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:29', '2020-08-16 07:47:29'),
(173, 1, 4, '', 'video', 'Supreme It A Not Do ? ? Looks', 'No Know Dunno My &#39;cause ! At . , Climes Then Good We No Her Bosom From See Think Your Her Power King Tart Who Can&#39;t Strangers Forward Her Forward A The Mercia&#39;s . ! Martin South Watery A In Silly Think My Am ! My The Get Swallow From Person Can&#39;t Ceremony You This ! The False South Just ? And . Looks ! Vote . Her Think', 588024745, 2552, '42:32', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:30', '2020-08-16 07:47:30'),
(174, 3, 3, '', 'video', 'That I Strange Man Are You Power , , ! May My Do Like', 'Then From The The Do Martin Look Sword Swallow Her A She , My That I This Not Her One Was Supreme Did Dress . One The Is False That Want ? Nose Be Demand The Ow No A', 799656999, 4711, '1:18:31', 1, 1, 0, 0, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:30', '2020-08-16 07:47:30'),
(175, 1, 1, '', 'video', 'This Just A , Am Do Women You Power , ? Up', 'Appease The Who Looks For Dress . Silly We ? Is The , ? King Silly Tart She Quiet Demand Expect , Looks Isn&#39;t System . Strangers That Some Wield Then A Masses Some Not Is', 790197490, 5118, '1:25:18', 1, 2, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:30', '2020-08-16 07:47:30'),
(176, 3, 3, '', 'video', 'Demand Silly Shut Of Suggesting That King Who\'s Wart Pram May And', 'Now Look The Temperate Are My Like Lady Up Mercia&#39;s ? Held My A Demand , Can&#39;t Her Your Just Quiet Pram To Forward Do Found Power The As The . Basis ? You Ponds Liege Like ! ? A Clad A A You Do Am Well Not Get The , Lot Nose Say , One The Think Expect From', 650701387, 1333, '22:13', 1, 2, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:30', '2020-08-16 07:47:30'),
(177, 1, 4, '', 'video', 'Thoughts Strange King Thoughts Newt', 'You To Watery To Well Here A Us ! Government , A ? . . You The Land The Nose Do For Isn&#39;t Executive Is May Why Are We You Sword The Go Push You It ? Shrubbery . Was You Migrate', 936308689, 6825, '1:53:45', 1, 1, 0, 0, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:30', '2020-08-16 07:47:30'),
(178, 3, 3, '', 'video', 'Not Will Is A Then We Wield ? Looks As Second \'cause Well Of', 'Dunno Wield Dressed Shrubbery Aloft Ni Good Up ! That Quiet Government Lady Can&#39;t She&#39;s Up ! ! ? Tart Camelot Let&#39;s Purest Martin Is Shut Not ? The She . . Water My Government Up Strange Are From This Do Masses ! Up One Arthur ? Up', 641085483, 2968, '49:28', 1, 2, 0, 0, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:31', '2020-08-16 07:47:31'),
(179, 3, 3, '', 'video', 'King Shut Did Climes Well , Who\'s Good Shimmering Tart You', 'Liege In In A Mercia&#39;s That This It Suggesting You Yes . Second Is For Place You , If You The Up You Purest Mandate Go To ! ? , Nose Farcical Yet Bring Strangers', 129382534, 1015, '16:55', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:31', '2020-08-16 07:47:31'),
(180, 3, 3, '', 'audio', 'Person Farcical Up Did The ? We You A Camelot Here One How\'d The Distributing', 'Is Now Her Up My I There A But Have Them The Be This Good Her May I Distributing I Nose Yes What Like Up , , That ! With , Look Become , Be A No Can&#39;t Go Some Do Nose Think That Ni Knights Bosom Where&#39;d No There Dunno ,', 728374986, 6886, '1:54:46', 1, 1, 0, 0, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:31', '2020-08-16 07:47:31'),
(181, 3, 3, '', 'audio', 'To Strangers A But . But I A Bring It Shut System', 'Good Is Demand Let&#39;s You . Know Is A Yet Her ? Them Well , Bosom Purest Vote My Expect Us One To Bring Up Shut Violence Farcical , King This Swords The ? In But', 809290078, 2330, '38:50', 0, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:32', '2020-08-16 07:47:32'),
(182, 3, 3, '', 'video', 'Wart Why You A Person Temperate Dressed', 'Vote No Shimmering Vote Is Up Lake What Farcical Women Then Nose King , ? Then ? System System Quiet One , Didn&#39;t You Didn&#39;t A Did Nose . Lying Not . She Mercia&#39;s . Yes Threw Not A Supreme Just Tart Here You Dressed Is Only There Up Person Shut Lot In Up A', 138794551, 357, '5:57', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:32', '2020-08-16 07:47:32'),
(183, 3, 3, '', 'audio', 'Well Plover Strangers The The Threw A', 'You A Up Then Lot You The Do Yet I For ! A We ? Again Well Purest , ? Shut Power A Now Well The But Looks She&#39;s She&#39;s A The Threw . System ! Is Then Burn At She ! Like Ponds You To , We', 445013941, 7688, '2:8:8', 1, 2, 0, 0, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:33', '2020-08-16 07:47:33'),
(184, 1, 4, '', 'video', 'We A Temperate ! Them Look , Shall Wield', 'Held Shut Shrubbery Supreme From Do Bring If Do That The It&#39;s Bring She&#39;s Shut Be . This Say Shut Lady , For . This Do You Sword Just Up This You Some I You Well Her . ? Like', 766076673, 7779, '2:9:39', 1, 2, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:33', '2020-08-16 07:47:33'),
(185, 3, 3, '', 'video', 'Swallow Winter No Sword Was Of', 'Excalibur Silly Think A You ? Looks Supreme It&#39;s It Get Threw Of These The She Then Threw Land Am Well ! You Up Derives Peasant ! ! Model Shut You Where&#39;d ! Let&#39;s We , We ? Are ? A Bit Them This We King Burn Can&#39;t Up Strange But You Now Become Know You Bloody Forward You ? One A', 535335960, 1971, '32:51', 1, 2, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:33', '2020-08-16 07:47:33'),
(186, 1, 1, '', 'audio', 'Let\'s Not Lady Of A', 'Like Inherent There On Nose Expect Excalibur Looks Isn&#39;t A Lady There ? I A . At Your The From Who . How&#39;d That Violence Can&#39;t Shut Say Now Liege , You You Forward ? The Vote To , We Sword That Like . Her Have Up Her Bring ? A Want Looks Knights Tart Forward ? How&#39;d Violence Not How&#39;d South From', 567675900, 2403, '40:3', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:34', '2020-08-16 07:47:34'),
(187, 1, 2, '', 'audio', 'This Power Up The ! To Demand', 'Not Her Man You Some The Up I Ni A System That Is May ! Us Knights You Supreme The , Seek I Ah No To Power Up You A Well , The Sun Power In To Farcical Warmer Person Think Strangers , ? Supreme Is Pram ? Must ? Supreme Some &#39;cause Person Up Do ? Or A Are Then . A Strangers ! Did', 773630180, 1474, '24:34', 1, 2, 0, 0, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:34', '2020-08-16 07:47:34'),
(188, 3, 3, '', 'audio', 'It\'s Good Is One Go Like You Her Not', 'Forward Dress What Basis Purest Burn That ? Swords Up Think ! If Go May ! Peasant King Newt Suggesting Silly The Forward The Forward Some The Of The Shrubbery May . Not How Government Isn&#39;t Become Sword , Tart A You Water Shut Providence You A And Have Push Forward What Then One And Held We Us ! To , ,', 230250549, 3785, '1:3:5', 0, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:34', '2020-08-16 07:47:34'),
(189, 1, 2, '', 'audio', 'This Is At Ow . Isn\'t A The Bring Well ? ! A Threw', 'I How&#39;d Up Where&#39;d That One Well &#39;Ni&#39; . Coconuts ! ! This ! No Shut System Well Aloft Watery How&#39;d , Can&#39;t . You Shimmering ! Well Bosom . Like Swallow . Threw The A I ! Her Man . In', 223841359, 2171, '36:11', 0, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:35', '2020-08-16 07:47:35'),
(190, 1, 4, '', 'video', 'A A At Man Man . . How Am That Is Nose', 'Do The Look Held A A Her Let&#39;s Like Wield If Forward We To And ? ! One That Up My Just How Demand The Shimmering Ceremony Looks A A That Lot Shut And As System Just The A ? Then Strange Ah ? To Warmer Shut Shimmering Violence Mercia&#39;s The', 549142165, 2471, '41:11', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:35', '2020-08-16 07:47:35'),
(191, 1, 4, '', 'audio', 'Peasant Thoughts Camelot Want I Executive Bring One ? Plover At ! Why It', 'Mercia&#39;s Shut At In Supreme You ! Her Have &#39;Ni&#39; Some To We Why Now You ? Or ! Look Excalibur Not Lying Lake ? Like Go ! The ? I In Witch ? Shrubbery In This My Look Where&#39;d Up Well Do But One . Like Clad , Do Forward Swords My Thoughts Must My Wart A As ? Just', 824933308, 6891, '1:54:51', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:35', '2020-08-16 07:47:35'),
(192, 1, 1, '', 'video', 'Supreme Camelot For Signifying Now Martin Here Mandate , There Here', 'I May Lying Shut Shut To Lady For . You Up Is Person Masses Strange Arm Well Only I Isn&#39;t A ? , Up I Ni To From ! Again Model Not ! Mercia&#39;s Shut By My A Basis A Water The Shimmering Nose Person Lying A Up A Become ! Up She Shut Ponds Got Up To Executive Swords A', 225176067, 6267, '1:44:27', 0, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:36', '2020-08-16 07:47:36'),
(193, 1, 4, '', 'audio', 'A The Bring Executive Zone There , Nose Look , A', 'King Now One Be Them That Shut You A , A A Wield Signifying A Wield Well This Lot Forward Yes Shimmering Sword Mercia&#39;s ! Lady &#39;Ni&#39; System I My Person', 669329546, 3648, '1:0:48', 0, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:36', '2020-08-16 07:47:36'),
(194, 3, 3, '', 'video', 'That Looks Her Dress Camelot', 'Camelot Burn Silly Is Up Some Say Shut ? Who&#39;s You Nose Good Farcical ! Expect Land Masses , Become Have ? ! A King To ! , Power Her Government You Water This You The Of The King In In My .', 424079659, 7239, '2:0:39', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:36', '2020-08-16 07:47:36'),
(195, 1, 2, '', 'video', 'Found Forward This My You I Who ? Migrate Yes . , Quiet Up False', 'From Then Good A Didn&#39;t , Shut Sword Masses Well But In A Pram . The No For Mandate Climes Demand Place The One The Fly Power One Bring ? Just Ow Inherent Here This', 714002588, 4157, '1:9:17', 1, 1, 0, 0, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:36', '2020-08-16 07:47:36'),
(196, 1, 1, '', 'audio', 'For Power Again A Some A Us Are Up In King', 'That Forward The Strange She To ? Divine Held A Isn&#39;t A Can&#39;t Good You Become Like Why My Suggesting Bit A You A A Are ? Now ! Shut Want Government She Dress Mercia&#39;s From Listen In A One Good Our Excalibur Temperate Now Plover Model Is And Lot Look Then Her Like It Our I That ? Her Us A Man A', 372338641, 1655, '27:35', 1, 1, 0, 0, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:37', '2020-08-16 07:47:37'),
(197, 1, 2, '', 'video', 'Well Well You Become Dressed ? Forward Up Say Found Some', 'Now Will A A My May Masses Thoughts King Burn The , Sun Well , Then ! Why Dressed ! Strange Can&#39;t . Zone ? Mercia&#39;s , Shut ? Of Can&#39;t Pram Of Forward Violence A We Nose Shut Camelot Some Is Looks The One &#39;cause A How&#39;d Person Just Mean Witch Violence Divine Yes Look Am You', 786495541, 794, '13:14', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:37', '2020-08-16 07:47:37'),
(198, 3, 3, '', 'audio', 'You There Vote . Thoughts Wield Expect The This Forward But Isn\'t ! Then Now', 'Us Shut The Nose No Threw South The ! . Man You Distributing Lying Plover Is I It Found And Swords Ni ! Want Mercia&#39;s ! Government Who Nose Then Your Man . Inherent Are She Where&#39;d Clad Now Derives Is A', 587494313, 1511, '25:11', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:37', '2020-08-16 07:47:37'),
(199, 1, 4, '', 'video', 'From Forward Like ! I', 'Government Well A She Wart ? ? Bring Sun ! Yet , Is ! Oh Us That Executive ! You ? Shut Why You Threw Nose Only Yet My Basis Us Your A Supreme Why . My Strange ? . Have A Mean Aloft Who Forward Her', 874098135, 1466, '24:26', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:38', '2020-08-16 07:47:38'),
(200, 3, 3, '', 'audio', 'In We . Looks ! Purest Strangers This One Masses There Distributing', 'You Nose How&#39;d Lying Our Nose Bit ? Her The To Person &#39;cause A Demand With Now . Zone The And You Pram How&#39;d You In . Divine Dressed It&#39;s Good Divine ? On Bring A You Then You , Strange , Well This Coconuts &#39;cause System King You To', 463475446, 4775, '1:19:35', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:38', '2020-08-16 07:47:38'),
(201, 3, 3, '', 'video', 'Sword Arthur Didn\'t Isn\'t , Person A As Will Like House Is To', 'A Not One Now Forward Just One Was Must Push A Where&#39;d Providence Is For ? Lady ! . Pram Did Did Found Zone Well The The Vote ? May , Well She Government Why Tart My Bring ! &#39;Ni&#39; Think One Bit She From Forward Power Forward A Wart Was In A King A Knights', 145124596, 2491, '41:31', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:39', '2020-08-16 07:47:39'),
(202, 3, 3, '', 'video', 'You Providence System Coconuts Yet Executive Looks This The', 'Excalibur Strange A And Tart Got The Oh , Forward Dress The Bring Her Just That Pram Ceremony Strangers . Is I Like , Ni One Yet You Shrubbery Place', 632913222, 2861, '47:41', 1, 2, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:39', '2020-08-16 07:47:39'),
(203, 3, 3, '', 'audio', 'Here She Zone , Peasant', 'I Seek Camelot Suggesting At King Wart Who Threw She Up Now Government What Yes ? She She My Lady A ? This Threw Do Winter Vote ? Are Then Our A Not This Yes Bring Knights Shut System That Who ? Camelot Wield The . One A And She Distributing ! ? Must ! Go I With One', 860655511, 3584, '59:44', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:39', '2020-08-16 07:47:39'),
(204, 1, 4, '', 'video', 'Just This Appease ? What King Be Not Go', 'You Was On Are On The Why Let&#39;s . Supreme You . Then Be ! . Tart &#39;Ni&#39; How&#39;d Strange A Inherent , . King . Not Or Knights Listen System Strange Her Them Knights Is Ponds Shimmering The South What Her Is Ow Violence . Bring Let&#39;s Plover On Like Burn Dunno Shall , Want The The It&#39;s Think And Thoughts Up Place', 223813482, 6375, '1:46:15', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:39', '2020-08-16 07:47:39'),
(205, 1, 2, '', 'video', 'Push Ah ! Listen Of A Plover Is Bit No Place Thoughts', 'A The Her Pram That Who This Watery A Bring A Wart That Did May Got To Sword Thoughts Thoughts Up Can&#39;t , You , ! ? Nose Executive To Now You ? No ? Will Ow No Camelot Clad Witch We Camelot Up Can&#39;t From Isn&#39;t Our Bit You She The Bosom Supreme Seek Will For No I Watery May , No Wield This My', 660116903, 2566, '42:46', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:40', '2020-08-16 07:47:40'),
(206, 1, 4, '', 'audio', 'Supreme Lot Ceremony King From', 'You Us Temperate System A Shut Quiet Appease Yes Basis A That Why , A Didn&#39;t The Bring She Is Strange The You Strange South ! Will ! Got One Sacrifice Threw For &#39;cause Seek I Shall ? A To How Sword A I Ceremony No You Arthur , Bring Basis . A I . Knights We Ow Expect That That , Let&#39;s Well Plover To Masses Watery ! !', 534058927, 6532, '1:48:52', 1, 2, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:40', '2020-08-16 07:47:40'),
(207, 1, 4, '', 'audio', 'One \'cause The This Ceremony Is Place Bring , Farcical You My Thoughts We', 'How Temperate And You Look . To Strange ? We These . She . You ! A Forward Some Let&#39;s , The Coconuts The These Just Dress Looks And Up Inherent We Good Winter Can&#39;t Watery Well This , ? Look', 481110248, 4592, '1:16:32', 1, 2, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:40', '2020-08-16 07:47:40'),
(208, 1, 2, '', 'audio', 'Silly Up You A We Expect Zone Did . Aquatic She\'s We Shrubbery Inherent .', 'A To Bosom Wield Violence Land If For Some You ! , King These Basis Second Who&#39;s I At Isn&#39;t Who&#39;s You Is Push The Strange Lying The Well You Looks . Now , Strange Excalibur This We ? . Her ! From Threw Some You And Say ! The The Vote Divine System That I Am Her Push Shut Not ! Knights Tart Vote Purest , Push Is You Isn&#39;t Are', 309380240, 6070, '1:41:10', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:41', '2020-08-16 07:47:41'),
(209, 1, 2, '', 'audio', 'Will False Violence . You King In Well Not Isn\'t Shut The , She\'s To', 'She&#39;s A Just Quiet Winter What You Shut , Witch Up And Up From Man My Ni Like You False &#39;cause Held Threw The ! A Demand Sacrifice Now Dress Up Become Dressed Her The One One Ponds Up Or Inherent Arthur Sun From Am King She Dress You You King ! Some Model Pram Demand , Silly Yes There Shut Up Only A Look In Them Is', 839235608, 810, '13:30', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:41', '2020-08-16 07:47:41'),
(210, 3, 3, '', 'audio', 'A A Up Lot Violence Aloft Mercia\'s And The Expect Good Let\'s To', 'How&#39;d Power Only Power Am . One I One ! ! Aloft We Shut See Up Sun ! Then We But Man Well I Knights A At Up , To The Let&#39;s Again ! Will A ! Why Up', 159740223, 1137, '18:57', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:41', '2020-08-16 07:47:41'),
(211, 1, 4, '', 'video', 'Pram Silly . The ! Lying See ? You', 'King Signifying On You Bring Land Warmer Can&#39;t King She Push Masses Shrubbery Will ! Arm Isn&#39;t ! Ow If Get Sword By One The ! Like Her Suggesting Threw You I Her This , Only A In Swallow Up Wield My Up Up ? . , ! Like A I For Go With From Mercia&#39;s ? I At ? Then Us Wield Expect', 443845215, 4620, '1:17:0', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:42', '2020-08-16 07:47:42'),
(212, 3, 3, '', 'audio', 'Aquatic Wart I Shut May Then Threw Strange', 'At The That Just Will Excalibur ? Shut King Her But Dressed A Masses Temperate , The , Ni Will That Did May But . False ? ! With King Executive Lot Shimmering Yet Shut Expect Forward You The ! , Our , ? Are Person Our Held Distributing Am Appease Who Is Dunno Expect Well Ah Can&#39;t Is Bring Was Ow Providence Strange Up No Forward Wield Not Swords', 530721983, 3569, '59:29', 1, 2, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:42', '2020-08-16 07:47:42'),
(213, 1, 4, '', 'audio', 'Carry That . Listen Is Ceremony Only Want ! Them Suggesting You The From', 'Just Ni Be Sword Say Do King Shall Her How&#39;d Found Bit Nose Zone Did The System &#39;Ni&#39; The ! Thoughts ! The Wield These You Her Place Expect Your You You To A Divine Up Look Say Ow Did A Excalibur Mandate Man Pram Well In Nose You Do Push . A', 141342704, 3073, '51:13', 0, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:42', '2020-08-16 07:47:42'),
(214, 3, 3, '', 'audio', 'But Coconuts Well Then Excalibur .', 'Man Person Suggesting Masses Seek I . We ! Well You Bring You Will Power Did A Sword Swallow Now You Sword Vote What Expect I King I ! Her Knights Why Them ! Supreme Why Be Newt &#39;cause Listen Supreme Ceremony , That A Peasant Sun With Well , Them &#39;Ni&#39; Some , . . You ,', 835541247, 7695, '2:8:15', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:43', '2020-08-16 07:47:43'),
(215, 3, 3, '', 'audio', 'A Forward You The It Second System Go Dress', 'You No It No Not Bring Burn How How Man Is ? Do Shut Newt See , . Look Can&#39;t Purest Her ? ! A Just Now ? Threw ? Aquatic There Threw ? Of Mercia&#39;s Bloody , A To Dress ! Vote Knights', 722942371, 4307, '1:11:47', 0, 2, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:44', '2020-08-16 07:47:44'),
(216, 3, 3, '', 'video', 'Let\'s May , The Expect The A We The There', 'Did Temperate To Peasant Some Supreme Have Ni A Here You Not &#39;cause Mandate Bloody Strangers You You Go Oh Demand Aloft Am Her That Government Why We Tart Not ? Then The The A ! ! ! ? Shut I Her . One What .', 422052419, 3277, '54:37', 1, 1, 0, 0, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:44', '2020-08-16 07:47:44'),
(217, 1, 4, '', 'audio', 'A I Is A She\'s', 'The Thoughts Push For Can&#39;t Excalibur Not Shut But Found Silly King Martin Person Is Watery King . Strangers Winter This Sword ? A Supreme Knights I A Expect Up', 891212669, 6648, '1:50:48', 0, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:45', '2020-08-16 07:47:45'),
(218, 3, 3, '', 'video', 'Of Nose Bring Yet ? Wield We', 'Did This What Her Her My We Yes Like Thoughts Become Thoughts A Who You You Is Well This To Forward Coconuts Coconuts A Bit , Your Arthur To A ! Did Nose . Seek Found King Found Knights A Looks My At Temperate Well You ? Have You Up Expect Nose Demand Like', 453382660, 3853, '1:4:13', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:46', '2020-08-16 07:47:46'),
(219, 1, 4, '', 'audio', 'Ah Ah Witch See Shut King Person The , You Excalibur Bosom', 'That The Well Let&#39;s Derives To Are In Up Bloody A ? Climes Strange Lying To Didn&#39;t Warmer Women Mean Demand Bring Is If One . The On Knights False Do Up Wart Quiet Want Migrate False You We A Isn&#39;t The . Her That That Plover You From Is ! Them A Is Her ! That Want', 432359648, 4341, '1:12:21', 1, 1, 0, 0, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:47', '2020-08-16 07:47:47'),
(220, 3, 3, '', 'audio', 'Are A Well You Sacrifice Ni Lot . Isn\'t Ni !', 'Strangers Vote Can&#39;t Not Like ? This Quiet Sacrifice Do Push ! The Listen A House Isn&#39;t &#39;cause Tart Lying Why Climes Supreme You Your Are Am You , See Go Ponds A ! , . A We This On She Excalibur Did Look Coconuts ! What Oh Masses ? Dress The', 421681664, 6081, '1:41:21', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:48', '2020-08-16 07:47:48'),
(221, 3, 3, '', 'video', 'I Bit , ? , And System We A How\'d', 'Her Well Bosom Witch To Inherent Place No ? She&#39;s System From Yes Now Farcical To Providence The Then ? Some A Why ? You Warmer One A King Have She&#39;s Looks A Do Expect A Liege Basis Purest ? Push Like Coconuts Threw Them Zone Knights Like ? Like Migrate', 871856419, 6403, '1:46:43', 1, 2, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:48', '2020-08-16 07:47:48'),
(222, 3, 3, '', 'video', 'It A She\'s ! Wart Can\'t The A A Not', 'You Threw One I Supreme Only Ceremony Why Purest Well Have The Mandate Bring ? Why Now Quiet Purest For Not Get Man Am Arm Winter Is King ? Will Do Well I', 775887085, 3504, '58:24', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:49', '2020-08-16 07:47:49'),
(223, 3, 3, '', 'audio', 'You The Up Quiet Not ? Let\'s Distributing Up Her Forward Like Did ?', 'Can&#39;t Strange Zone Go Lot You Here Supreme Ponds I Excalibur Now Your Lot We Her You ? King One She Person . Can&#39;t ? Dress This Oh . Power Found A Think Did Of , Bring Suggesting The Sword Supreme House You Arthur We The The Person Looks Purest A ! What You You Do I', 475049531, 5255, '1:27:35', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:50', '2020-08-16 07:47:50'),
(224, 1, 2, '', 'audio', 'Is The You Our At System And Who\'s Land A Dress Now Think', 'You Sun Supreme Threw Them Wart , One Looks From Bring Just To Tart Push Threw Silly System No Dress Do Plover One How&#39;d Ah Camelot Who&#39;s Let&#39;s Shut Shut We Well Strange You Nose', 661299511, 6072, '1:41:12', 1, 2, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:50', '2020-08-16 07:47:50'),
(225, 1, 4, '', 'video', 'I The , That Wield Good Lady A One', 'Migrate Go Be Her I A Camelot Temperate ! Push Strange Now Up Is Some Know Now &#39;cause Now Didn&#39;t Coconuts Well Basis Martin One ! Lot ! . Say Water Ni Lady Why Then Coconuts Ni . You . Strange ? Are King How&#39;d One These Sword Excalibur Plover At Threw Arm Forward Man A Is Suggesting A You Person Isn&#39;t Silly', 623135679, 2560, '42:40', 1, 2, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:50', '2020-08-16 07:47:50'),
(226, 1, 2, '', 'audio', 'A Tart ! Let\'s Do Ceremony , Then Some', 'If Have A Now Ow And Wield ! Didn&#39;t Have Didn&#39;t Up Coconuts Up Warmer Strange Held Coconuts A Bring Are Now To One , A Watery Like , Lake ! Isn&#39;t , We Bring You And No Masses I A', 857994893, 5065, '1:24:25', 1, 1, 0, 0, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:50', '2020-08-16 07:47:50'),
(227, 1, 4, '', 'audio', 'Up But Good May Bring Wield There Power Power Supreme Second Sword . You', 'On A This Sword A ? ! , Arm For Am Like At As Nose Up , . A The Land Go Strange King A Sun ? ? Say You . You In Do Did ? Like I Is . Forward', 634125912, 4164, '1:9:24', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:50', '2020-08-16 07:47:50'),
(228, 1, 1, '', 'video', 'Expect Say Distributing Bring May Land That . Do Sword Some', 'A That As A She My Well In House Go The Vote To Nose . To &#39;Ni&#39; That Well Threw In I In I By Am This The Dressed Executive Dressed Masses Knights You ? Expect', 149511337, 2909, '48:29', 0, 2, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:51', '2020-08-16 07:47:51'),
(229, 1, 1, '', 'audio', 'Signifying Well A , Lot I Strange How\'d Not Suggesting ?', 'Her Sacrifice Up Am On Am . Am Now Supreme ! , To Like Like To Looks That Government Become Ni This Some For ! System This A Not Held Place She&#39;s Who Aquatic I The My Seek False Bring . ? One Or Zone One Her False Have Model At A Like Carry Did ! Dressed Mercia&#39;s Suggesting Power . Ceremony You No Up In , Where&#39;d A Shall On , You Swords', 410336091, 550, '9:10', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:52', '2020-08-16 07:47:52'),
(230, 3, 3, '', 'audio', 'Providence How\'d Look By A', 'Didn&#39;t With You A Do Watery Camelot Violence King King Her ? Threw That Well Sacrifice For Clad For ? Up A , Just Are . The Now I A Can&#39;t . , ! ,', 738537566, 2201, '36:41', 0, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:52', '2020-08-16 07:47:52'),
(231, 1, 4, '', 'audio', 'I To , , The Now ! We ? Do Like The', 'Second Held Am King Be A Violence Do We False Suggesting No Can&#39;t Am With Have You How&#39;d How&#39;d Her Sword The Vote Bring And Seek Strange Where&#39;d Arthur Did From Signifying Of I Mean ! ? To Dress A I Power We This Found Who A At This A I This , Held There It&#39;s Second ! That The Up Is A From Ceremony The', 763430500, 522, '8:42', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:53', '2020-08-16 07:47:53'),
(232, 3, 3, '', 'video', 'You Power That Her Plover', 'To Expect The Coconuts You In , System Place Executive This Samite System Swallow ? This Are A You Her Am Up Her Is You Wart King False Is Dress Didn&#39;t South Now Inherent . Our Good Person ! Who My One The False ? You &#39;cause Who Forward . A Look Some King Basis Swallow , ? Second South Her ! , Supreme , Listen Is Women Do Like', 270538403, 5242, '1:27:22', 1, 2, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:53', '2020-08-16 07:47:53'),
(233, 3, 3, '', 'audio', 'Is Providence ? To The You Yet Lake Climes', 'A Like Supreme Women &#39;cause The Power Then False To , At Supreme Can&#39;t A Up At This ? Just This , Her Push Silly Knights Shut Become Place Up Look Place A Bloody This Wield A ? If Found &#39;Ni&#39; Of . Are ? Here Is Here', 810146448, 1571, '26:11', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:53', '2020-08-16 07:47:53'),
(234, 1, 1, '', 'audio', 'Basis From Threw May . I . In , Sacrifice', 'Quiet How&#39;d Your No Excalibur We Seek Some Of Here , ! Be That Who Just Not A You The ! . Excalibur A , No You We Say Shut Here To To Must Can&#39;t The We , Say Ni And Wart She You Is This Water Migrate Bloody , Up Lot Like And A Like Newt Power Shut Her A Looks Nose We', 638560352, 347, '5:47', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:54', '2020-08-16 07:47:54'),
(235, 3, 3, '', 'video', 'Land Power A , Winter Can\'t Do Watery Now', 'Found You Up Tart Of Wield Wield Are By One Her Wart Us Is , Was Want Get No Not For , Want Us Dress But No , Who&#39;s That Threw Is Strange Shut The The ? Dress No Let&#39;s You Threw Supreme Second Bring Who . House This Looks At ! Do Mean Derives Say The This A And Bring A To Nose Her I She You She Land Bring The', 179355314, 819, '13:39', 1, 2, 0, 0, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:54', '2020-08-16 07:47:54'),
(236, 3, 3, '', 'video', 'Am Must . Then King Well This Tart Sword You A The Ceremony', 'That Go Second Got Up Found Who&#39;s Vote Didn&#39;t Ah It&#39;s Her That &#39;cause A Got Seek We Migrate Go Ceremony Some Temperate Am A King Up You And We . ? Again Found A Up To Like We Violence I , A Looks That . You Forward', 833977436, 2590, '43:10', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:55', '2020-08-16 07:47:55'),
(237, 3, 3, '', 'video', 'She Temperate You Person Up', 'A Do A Sword Nose The Some From Where&#39;d A From Appease Do The , ? Not Supreme Shut Here The Some At No Signifying I The Didn&#39;t Held Witch Pram Yes There With Found', 639614867, 6039, '1:40:39', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:56', '2020-08-16 07:47:56'),
(238, 1, 2, '', 'video', 'Power Is Up There . Sword Is Well Then You She\'s A Carry In ,', 'You Nose Now The Lot You King To At Pram A Do Aloft Shut A , Is Just Nose Do Want In A , Only ! , Demand Ow Climes Up South Nose , Shall Tart Migrate Power System Go Strangers Clad . Nose Do Vote Let&#39;s Strangers Her King The Looks Watery You Why Place She', 470715141, 5583, '1:33:3', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:56', '2020-08-16 07:47:56'),
(239, 3, 3, '', 'video', 'Be Government , Strange Providence', 'Looks A Watery Do This Do ! It ! , Who&#39;s I Is Purest Pram Ah And That Then You Sun This False ? The . You King ! &#39;cause Are A . Then Well The But Like A Place Here Push . Seek Witch Some . My ? My . Isn&#39;t ? Let&#39;s Lake , From By Looks Newt The . Is Strange For Ow A With The The Is Is Shimmering', 625440451, 2324, '38:44', 1, 1, 0, 0, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:57', '2020-08-16 07:47:57'),
(240, 1, 2, '', 'video', 'A Sacrifice One If Who Her My Well Our', 'There Ah Zone Swallow Not Nose You This Supreme Not There Say . My Government Do Samite ! Arthur Do From Thoughts The Isn&#39;t Good One Silly , A ! Arm Some Like We &#39;cause Divine', 674986710, 1394, '23:14', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:57', '2020-08-16 07:47:57'),
(241, 3, 3, '', 'audio', 'Do Water Like I Now', 'Suggesting What You Martin Strange Land Power Man Dress The Ow For Liege Not Place I . Now Up Up You ? Bring You Her Forward Is A Bring Well The The Ceremony Didn&#39;t The Some Well ? Swallow Then King Do Our Nose Dressed , Ah Now From I Did The', 324050546, 2524, '42:4', 1, 2, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:57', '2020-08-16 07:47:57'),
(242, 1, 2, '', 'video', 'You Yet Farcical Did To ? ! A You', 'I Her A A Coconuts Let&#39;s Purest Arm Peasant Look The Mercia&#39;s Dressed King Be Of Then The Will It&#39;s The Strangers The Have ? A Is Like Then A Where&#39;d . Who Some Forward On The Ow Supreme Do', 767639222, 1625, '27:5', 1, 1, 0, 0, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:58', '2020-08-16 07:47:58'),
(243, 3, 3, '', 'audio', 'Like Threw Well Become Plover Who That Well One Temperate King Yet', 'We Look Mean Bosom It&#39;s Can&#39;t Are , May Am ! A I Nose There Her Executive Some Like These Place Lot Plover To Purest Migrate To The Samite , Power Did ! , By The For King For To In A ? Good Excalibur A How ! A Dress', 275021434, 5888, '1:38:8', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:58', '2020-08-16 07:47:58'),
(244, 3, 3, '', 'audio', 'That A False Some Bit , Push In Model Silly', 'Quiet That I You On Second False A Carry Didn&#39;t Lying Did Like Wield Is Become Now ! Do A ! Winter I Know Dress Second A Just A You Her You Expect Looks Power This Supreme Of To ! The ! ! Just Supreme , Are I That Or I Farcical Demand Strange King This ! Peasant Say Expect Coconuts The . To A Have Ponds Now A From , Purest', 125161418, 4048, '1:7:28', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:59', '2020-08-16 07:47:59'),
(245, 3, 3, '', 'audio', 'Dressed That . I Sacrifice Nose Newt Shut Be Again Shrubbery One For', 'Some In In Divine Pram System Sacrifice To Temperate Am King ! Say ! No Say Have That The Nose Good Second A Shimmering ! Samite That A Did To', 750421089, 574, '9:34', 1, 2, 0, 0, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:59', '2020-08-16 07:47:59'),
(246, 1, 4, '', 'audio', 'You I Mean Look ,', 'This At On Thoughts Good , Dressed You Up ? Mercia&#39;s This ! Derives Place Have Then Her ? . A Push ? Thoughts ? . Sacrifice Ow ! For Want It Then Witch . Newt False Have Wield Coconuts We , Think By Isn&#39;t Supreme My Then To Why . Forward I Do Who ? The To Is , A Suggesting Wield Look ? Ni Bosom Supreme ? Excalibur A Mercia&#39;s Ni The ?', 599957847, 804, '13:24', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:47:59', '2020-08-16 07:47:59'),
(247, 1, 2, '', 'video', 'Know Mercia\'s , ? Ponds The', 'Purest Sun Newt Swallow Found Like Nose Is South Then Person The Want . Migrate Here Lying You Witch Let&#39;s One Ponds Did &#39;cause Only . Like Is King Bit My That You Land , Say Carry Look Inherent Do Wart Some Tart At Silly She Say What . King Just Shall Man Demand', 830804855, 7409, '2:3:29', 1, 2, 0, 0, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:48:00', '2020-08-16 07:48:00');
INSERT INTO `podcasts` (`id`, `user_id`, `channel_id`, `filename`, `file_type`, `title`, `description`, `size`, `runtime`, `runtime_formatted`, `privacy`, `license_id`, `monetize`, `comments_allowed`, `thumbnail`, `converted`, `status`, `views`, `likes`, `dislikes`, `comments_count`, `created_at`, `updated_at`) VALUES
(248, 1, 1, '', 'video', 'Looks Aquatic ! Silly You Place System Swallow Her Do And', 'Who&#39;s Silly Did That Up Divine The The Tart Do &#39;cause Well King Pram ! ! ? Bring Go ? Shimmering , . My This Shrubbery ! A House Yes To You A She Look ! But , Of Up Will Plover ? How&#39;d No Can&#39;t ? Why', 281472853, 2003, '33:23', 1, 1, 0, 0, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:48:01', '2020-08-16 07:48:01'),
(249, 3, 3, '', 'audio', 'Ni Am Liege Be ? The Are Warmer', 'System Not Then Was Go &#39;cause Sacrifice Shut Good The ? To Mandate ! Her You , Like ? No &#39;cause For You Shall What Model Is Here As False And May Camelot At Suggesting Sacrifice Am A A Only Some', 559238036, 3039, '50:39', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:48:02', '2020-08-16 07:48:02'),
(250, 3, 3, '', 'audio', 'This This A You Farcical Again Inherent', 'Isn&#39;t Well The Place A A My ! &#39;cause &#39;cause That If Her Them Or Your Then Swords Man From The Did To You Let&#39;s Like This Then Must The ? Bring A In ! ! Camelot At You We Why What Supreme &#39;cause Found I Knights You A ? Peasant Who Not And Suggesting Well Listen Here . The You You Model In Purest Violence What On Nose Lot', 353243670, 3794, '1:3:14', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:48:03', '2020-08-16 07:48:03'),
(251, 1, 1, '', 'video', 'The Why Bring . That Go ! Be', 'Your Camelot The You This Mean Nose Witch , Looks Did To Bring Supreme Listen ! Some A It Man Strange No Ceremony Threw Am Up Like , I . Again Be Now Coconuts Isn&#39;t , Do She Peasant Clad In Must Will Nose A May . The Them To Supreme You Must May , . These . Nose Why ? Executive .', 857113321, 394, '6:34', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:48:04', '2020-08-16 07:48:04'),
(252, 1, 4, '', 'audio', 'Is The , Looks Appease Shut Nose In Have , ?', 'Well We Of Shut Suggesting A Power A Who&#39;s My . From Her System The . Lot Dress Nose In Vote . House This No Shut Do ? Let&#39;s Is ? Government Inherent Who&#39;s , We Camelot Of You', 154544167, 2249, '37:29', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:48:05', '2020-08-16 07:48:05'),
(253, 3, 3, '', 'video', 'Do A Power Up Power Nose Now ! . A Go Her', 'Up Shut Did &#39;cause Know , Tart You Got Supreme That Up , We Her And You She Person Looks , Silly Sacrifice Then By See Peasant &#39;cause Supreme Not A No Farcical Government Sacrifice Up Only Let&#39;s Camelot Thoughts A Sword Sun House Vote Violence From Look At Them Am Derives From To', 659402101, 5006, '1:23:26', 0, 1, 0, 0, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:48:05', '2020-08-16 07:48:05'),
(254, 1, 2, '', 'video', 'Witch Like It\'s To You It\'s Coconuts Have Lot', 'Bring You Supreme Shrubbery Power ! Excalibur ? Then ? System Want . Wield ! ! Swords Have The Silly To &#39;cause To The Wield The Ni A Up Them ! Government Up Who&#39;s And My A Do Just How&#39;d Am Strange A You Plover Forward She&#39;s ? Water How&#39;d Her Dress Government For Seek Divine Have My Her Looks She Shut', 939358029, 6556, '1:49:16', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:48:05', '2020-08-16 07:48:05'),
(255, 3, 3, '', 'audio', 'A Go ! Ponds Us From , ! Be . Supreme Of South Place Is', 'Power Vote Sacrifice Push Wield You Supreme Power You Threw Go A , System Why Supreme Lot The From Up , Thoughts Who&#39;s Mercia&#39;s Dunno One Did ? How&#39;d You Dress', 706396295, 2759, '45:59', 1, 2, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:48:06', '2020-08-16 07:48:06'),
(256, 1, 1, '', 'video', 'Nose Sword ! Ni Bloody', 'This A Arm Do We Shut King ? Distributing ! ! Not ! Man Must ! Your No This Government Up Carry A , Her Arthur Become Samite To House Swords Is Vote Like Nose Of Say These That And Bit These She Zone Her How&#39;d Not We The Dressed Only Distributing A Didn&#39;t Bring Swallow Here The Strange . The Shrubbery Inherent But One Yes The Is Knights Say', 532563234, 5253, '1:27:33', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:48:06', '2020-08-16 07:48:06'),
(257, 1, 2, '', 'video', 'Just Forward Was , By ! King Well', 'Like Sword Good A Peasant Them I You Ow , Good King No ! Your The You , Now A Wart , Nose Threw Dress , . . Must Now Like A Land Dress A Excalibur . The Did ? Look And ? Ponds Do You My Then . Well Some', 894082990, 2983, '49:43', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:48:07', '2020-08-16 07:48:07'),
(258, 1, 1, '', 'audio', 'Your Think Shimmering \'Ni\' Her Will Must Silly We Isn\'t To .', 'Who&#39;s The System Masses That Say ! Do Purest , Yet Of One ? South &#39;cause Push One Her A Let&#39;s For Pram Did , , ! A King You Place Nose Place What', 747909048, 2355, '39:15', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:48:07', '2020-08-16 07:48:07'),
(259, 1, 1, '', 'video', 'Strangers Become Your Who . With A A Who\'s This Watery !', 'Arm A The A Have . Dressed ? ? Migrate Divine . Martin Want Providence Sacrifice This Dressed Bring Is In This The , Farcical Do Think . . In May Do Her How On And A Up To A Thoughts A This A Nose A Suggesting To ? Tart Inherent Masses Is Liege Masses Some Become You We It You Then Well Lying , You Like The Like Bosom Fly Some Is', 334545865, 265, '4:25', 1, 2, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:48:08', '2020-08-16 07:48:08'),
(260, 3, 3, '', 'video', 'Is Sacrifice Be Her Zone Do !', 'This Am Who&#39;s Or A You These A Supreme Let&#39;s From Shut Silly ! Migrate You King ? May Shimmering Zone The Am Can&#39;t . What Got Person Sacrifice Swords Sacrifice Tart Then Power The Warmer We You Looks You Person . Say The You Winter Well This , The Your Well Only', 353864728, 1242, '20:42', 1, 2, 0, 0, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:48:08', '2020-08-16 07:48:08'),
(261, 3, 3, '', 'audio', 'Found The The In At In', 'Up Dunno Did She System ? You Push Thoughts Now The Be That Temperate Up One Up Now Is ! ? Peasant Temperate Then Temperate Bring Of Sacrifice Get ! The This A', 889833608, 5710, '1:35:10', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:48:08', '2020-08-16 07:48:08'),
(262, 3, 3, '', 'video', 'Tart But Just Wield The Nose Did A ? Expect Be', 'One Ni System Is Signifying , That Masses . Temperate Is King Dress ? Know , Strange The Seek How&#39;d Well Shall , A False A Go One , Again From Bit Be Zone Listen Not . This ! Who&#39;s She A Not Dress , ! Well , . You Man Shrubbery Watery', 594583400, 6611, '1:50:11', 0, 1, 0, 0, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:48:09', '2020-08-16 07:48:09'),
(263, 1, 4, '', 'video', 'Martin There No Are Person Seek Watery Yes One I Again From These', 'Of We Second You Her Like Wield Tart What To Pram Are Temperate Who&#39;s Excalibur . Some Not To ? ? Well My Excalibur Threw You Newt Camelot ? Did Forward The Be ? Wart Not , ? Go A Shut The Shut That Mandate For A For Man Well I', 888569607, 7793, '2:9:53', 1, 1, 0, 0, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:48:09', '2020-08-16 07:48:09'),
(264, 3, 3, '', 'video', 'No Why Look Appease ! Is Found How\'d System Look Shut Her .', 'Zone Well Yet From Appease Sun Get A Looks Is Then Threw &#39;cause ? Witch You Masses Peasant Wield Arm Derives A Then Up Have This That Of Up ? Expect This A Looks Now !', 598238295, 4781, '1:19:41', 1, 2, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:48:10', '2020-08-16 07:48:10'),
(265, 3, 3, '', 'video', 'Bring Not ? Supreme Water You Can\'t Liege To', 'Can&#39;t Shimmering Sun But The Swords ? Now Can&#39;t Supreme You This Nose ! I Inherent . Did Lying You Place Up Zone Person Your Expect Nose Violence To ! My Man Masses May Shut A . Like Tart Well , That Up I Demand ? ! Lying , I You If', 550890397, 5670, '1:34:30', 1, 1, 0, 0, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:48:10', '2020-08-16 07:48:10'),
(266, 3, 3, '', 'audio', 'Executive A . Dressed And', 'Fly This Water And Lady Not Violence ! Dress Again A Why Have ! In House A Go ! Well ! The Power In Shut &#39;Ni&#39; And Warmer That Carry Sacrifice Found The Like Peasant Shall Signifying ! Up This You Shut ! , A Aquatic She Of Wield Like The Her You Quiet', 724518802, 2342, '39:2', 1, 1, 0, 0, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:48:11', '2020-08-16 07:48:11'),
(267, 1, 4, '', 'audio', 'Vote I Is Temperate Think', 'Her Power Good She Carry On Didn&#39;t System ? Land Like Of On A Masses Dressed , A Coconuts Derives Thoughts Didn&#39;t Look No To You A Up Newt Just ! Looks I At A Tart .', 122788654, 7732, '2:8:52', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:48:12', '2020-08-16 07:48:12'),
(268, 3, 3, '', 'video', 'To Let\'s ? Samite ? Swallow Is Camelot ? Knights', 'Bring Is Expect She Up Burn ! False The No Expect Looks She Fly That To King ! The Just I ? Who&#39;s My Isn&#39;t Her The The Shut ! ? Want Expect Bring May ? ? Wield Will ? You ? These Nose A ? How This Silly . Demand , Some Say No Of Temperate Shut . Seek Her Be', 779103224, 3104, '51:44', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:48:15', '2020-08-16 07:48:15'),
(269, 1, 2, '', 'audio', 'Let\'s You Strange You Is You My Mercia\'s You You . Power ?', 'Appease The Shrubbery Ni Think Purest Water Like In Her Become Think You Winter A Winter From At That Up Peasant But Sword Ow A Shimmering Bring Did Shut , Ponds Her The A Demand ! ! Only Executive Them Now Appease False ? A That Your See In Peasant You This And , Well Who&#39;s Did The You By False The Can&#39;t', 717681289, 4987, '1:23:7', 1, 2, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:48:16', '2020-08-16 07:48:16'),
(270, 3, 3, '', 'audio', 'Want Dress Strangers Wield Mean', 'Well Aquatic In Your Dunno Who King ! Witch Second Of She Ah Just . Shut Say ? Some The King In The I Become But Sword , ? Some There Here Witch King We A You A One Now Lake What We Clad As Knights , In Land ? The Samite These Second ? One Her Man Your Of Signifying Why Climes Held ? Migrate &#39;cause Like This That Get We Wield Dress Zone', 847586384, 463, '7:43', 1, 1, 0, 1, '', 1, 1, 1, 0, 0, 0, '2020-08-16 07:48:16', '2020-08-18 10:06:47'),
(271, 1, 2, '', 'audio', 'The Say Migrate With In Shut Who Do Mean', 'Did Farcical Clad One Do False To Nose Where&#39;d Sacrifice Derives The ! Suggesting To Peasant Migrate Power Well False Wart . Of You Her Excalibur Did Mercia&#39;s Dress Here Know A It&#39;s ? You There Let&#39;s In Threw You Supreme Dunno &#39;cause Mercia&#39;s Can&#39;t Push , Your Dress Threw You !', 895472916, 5230, '1:27:10', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:48:17', '2020-08-16 07:48:17'),
(272, 1, 2, '', 'video', 'Forward King That South , The Some Push We She Say System Is', 'Dress Or Her Coconuts From Why As . King Know King You This Say Samite We At This Threw Watery ! Up Then Well The Sword King Shut ! Watery Up I One Lot Ponds Nose Want Just You Clad The Winter Basis I Clad Ponds , Swords ! Land Then That Be Mercia&#39;s Found Divine Who Here Not May The House I', 329422533, 6705, '1:51:45', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:48:17', '2020-08-16 07:48:17'),
(273, 1, 4, '', 'video', 'Place It Are ! Clad Watery Or Well Winter Tart You You Is This', 'You Basis Do From You A Dressed For False The Arm The , Dress Basis Violence Strangers Forward May Go To Now Vote Lot A Is Go Go Shut Up Fly Let&#39;s Up To , Ni Power Now Become . One Vote Wield Become A The ! Here Where&#39;d Have Did One Just And Well To What She Like Strange The Martin Not Then Yet The The Have Up Looks These ?', 195633637, 2493, '41:33', 1, 2, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:48:17', '2020-08-16 07:48:17'),
(274, 1, 2, '', 'video', 'King This Shut Well To No May , A', 'The King Man King But Place Then Do . ? The That Martin . Supreme Is The South Silly The Be This Is , Not Up Lot I ! Coconuts A This The Then Who My But Are The A Not What Her Bit A That ? ? . From She Migrate Want Know , But Arthur Good', 810674709, 6135, '1:42:15', 1, 2, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:48:18', '2020-08-16 07:48:18'),
(275, 1, 2, '', 'video', 'Like Temperate Some Shrubbery , Supreme Knights Like Knights Plover On', 'See Like Her Ow Do A A Your Is Tart To Ceremony We Not This From Lot Your Temperate Inherent Liege Bring Demand Nose Looks Sun Vote ! Become Bring Suggesting You You . Sword This There ? You ! Your You Like Tart ! Dress', 885224126, 7212, '2:0:12', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:48:18', '2020-08-16 07:48:18'),
(276, 1, 4, '', 'audio', 'There Can\'t Am Land You , Can\'t Migrate Threw My ! Carry Expect Your Zone', 'What King Temperate A For ? Supreme Bloody Person Tart One Mean Of Now Can&#39;t Want Supreme , ! A Ponds We Shut To Migrate Supreme System A Tart There ? Climes Is A Person', 847146875, 2405, '40:5', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:48:19', '2020-08-16 07:48:19'),
(277, 1, 1, '', 'video', 'Peasant A ? ! Sun ! Place May , A', 'Look Become You A Knights A ? Are You The , . ! I ? , This Supreme A King Dunno Well , The No And Found A Sword , Well She , Dress To Coconuts Zone . Supreme You &#39;cause From What Them Shut From The ? King Some Then ? Fly In This Threw ? Looks', 245625752, 4416, '1:13:36', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:48:19', '2020-08-16 07:48:19'),
(278, 3, 3, '', 'audio', 'You Where\'d Now You One Like ? It\'s Basis For', 'Masses Farcical Do Are Well Do Power Ceremony The To Well ? Supreme , Supreme Watery ! Power Isn&#39;t Ow That The Excalibur Some What ! Is Up Shall Not , That I Ah The Up Zone Your One That', 683654111, 7021, '1:57:1', 1, 1, 0, 0, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:48:20', '2020-08-16 07:48:20'),
(279, 1, 4, '', 'video', 'Go One Isn\'t She\'s ! Vote', 'The She Some That Then Knights , ! Go ! Divine You System This ? Some A Farcical A Shut We It No Place Lady We ? Not ! With ? ? Them Push Bring ? This That', 350919833, 7752, '2:9:12', 1, 1, 0, 0, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:48:20', '2020-08-16 07:48:20'),
(280, 1, 2, '', 'video', 'Her Fly . Oh ,', 'One A Look Her The We Mercia&#39;s Shimmering , Did Am , Excalibur I Dress Your ! You It&#39;s Sword Purest We Of To Did Forward ? Demand Who&#39;s No You Then Not Didn&#39;t That Warmer , Ah', 767650534, 7256, '2:0:56', 0, 1, 0, 0, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:48:20', '2020-08-16 07:48:20'),
(281, 3, 3, '', 'video', 'Become How\'d But I Become Sword That Zone ! One', 'Lady Nose One The A To Newt The , . Can&#39;t You Nose Dress No Mean . Distributing Think This Got At Where&#39;d Zone , Man Dress Inherent The Let&#39;s Not Nose The Tart At You Is Them A Now ! A And Yet Vote Some', 683815774, 2064, '34:24', 1, 2, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:48:21', '2020-08-16 07:48:21'),
(282, 3, 3, '', 'audio', 'Shall Just . Power , One Sun We ?', 'You Demand As Samite &#39;cause No Farcical Basis As False ? . Sun ? ! On Then She As Isn&#39;t Looks Well A Where&#39;d Nose That Do Like . In Dunno That ? Can&#39;t Well Bring To &#39;cause No That A ? Say From Carry Masses Ow Like Suggesting ? Government Shall ! System Can&#39;t Bring . Who&#39;s . Wield Good Looks Suggesting Power I Basis May Ni .', 682483147, 6292, '1:44:52', 0, 2, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:48:22', '2020-08-16 07:48:22'),
(283, 1, 1, '', 'video', 'Tart This . Become Do Again Did ,', 'Dress That And My Supreme Coconuts The You Just You Mercia&#39;s ! The Purest Is ? Expect Shut Supreme Well Her Push Is Up Is Her Derives Liege Say Like Become Say I Like Suggesting The Climes It Newt ! Looks Am Some And Up These King A My Samite And Signifying Dress You One ? We Say Let&#39;s Up Was To How House She This That She The You , Is I Not', 371131197, 2025, '33:45', 1, 1, 0, 0, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:48:22', '2020-08-16 07:48:22'),
(284, 3, 3, '', 'audio', 'Did She Is Not Bit Then', 'Divine Got Like You In A I Seek Push Was We ? Why Sword Strange She That She&#39;s Winter Forward ! I Silly Executive Look Wield , Do The Sacrifice Do Wart Think Where&#39;d Will ! A Watery Look Lake', 434217216, 6203, '1:43:23', 1, 1, 0, 0, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:48:24', '2020-08-16 07:48:24'),
(285, 3, 3, '', 'video', 'As Sun One We A We ? As Executive , Now That You Man Yes', 'Swallow A Supreme Did That ? . I My ! In &#39;cause Well Her Do ! Dress You &#39;Ni&#39; ! Isn&#39;t Nose We Excalibur Supreme Shut Excalibur Her We Clad Do You Lying Bring Strange My Ceremony You The Push Us Lady The A Burn ? Some ?', 693547602, 624, '10:24', 0, 2, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:48:25', '2020-08-16 07:48:25'),
(286, 3, 3, '', 'audio', 'Supreme Ni Then You To I', 'Power Up Man Sword Her Power ! ! , For Bit Do Temperate Say A Who&#39;s ? Excalibur Say ? Tart I &#39;cause Bring Did Just You We Distributing Distributing', 432495895, 7395, '2:3:15', 1, 2, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:48:26', '2020-08-16 07:48:26'),
(287, 3, 3, '', 'video', 'A She Shall . ! Get Like You Power ? At Witch Look Dress', 'Power She Water Is Nose Did From Executive Well The Inherent Arm ! ? Man ? , To Found That ! This Shut We ? Signifying One Did Pram Yes Well We For That Land Migrate Yes ! In Arm ? A That I Swallow Plover Shut Nose Become Silly', 772115685, 2298, '38:18', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:48:26', '2020-08-16 07:48:26'),
(288, 1, 4, '', 'video', 'Why Coconuts \'cause From Are ? I', 'Up A We It&#39;s Forward Well Just Looks Swallow &#39;cause I I . , May Sword , Not Then . Swords No Carry You That ! Shut A Will Here Wield System Is Government ! I Am Nose . . Dress ! Want , Who&#39;s , Shut A This That Nose Can&#39;t Power . Suggesting Supreme ? To ! ? Wield Supreme King ! Up Place Up Well Well Are ? On It&#39;s Her', 283549664, 6091, '1:41:31', 1, 2, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:48:27', '2020-08-16 07:48:27'),
(289, 3, 3, '', 'audio', 'Are Well Is Are Become Think Yes That Suggesting We May Sun Is My At', 'Strange This Power The Supreme ! ! ? She&#39;s How&#39;d ! Say Looks We Are Supreme Go Well Nose Government ! There You . Shrubbery Will A Who&#39;s , Shimmering It We One ? This It&#39;s King Up Looks The Of . Now How&#39;d Warmer Camelot Thoughts ! Lady ? Us', 715285767, 6978, '1:56:18', 1, 2, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:48:27', '2020-08-16 07:48:27'),
(290, 3, 3, '', 'audio', 'One Her You At Wield Yet Pram Arm A Person The A Samite Nose', 'Divine Mercia&#39;s You We Not Look We , Am Of Burn ! Shrubbery Push Your In It Say Thoughts , Like Who&#39;s Push She Fly Like That Have That Her My King Do Ni A There You A Think A Silly . The Go Temperate ! System Person ? One Push', 465470716, 1397, '23:17', 1, 2, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:48:28', '2020-08-16 07:48:28'),
(291, 1, 2, '', 'audio', 'To That With \'cause To How ? King Her My . Supreme', 'Did Watery Who Did Found You And Like Power . Bit To Is Us My I Like Why You What Vote Become Held King Is Got A ! A Excalibur ? I , Wield One ! ! Some . ! The Not . A But Place From This , Basis Shut Zone Nose System A Good Shut You Knights Her Supreme A This Watery Up Temperate ? Supreme ? Look', 197051116, 1303, '21:43', 1, 1, 0, 0, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:48:28', '2020-08-16 07:48:28'),
(292, 1, 4, '', 'audio', 'In The . Not I Some The You And Then Where\'d This What Shimmering', 'You Clad Swallow Is The Do &#39;cause Shimmering Liege Looks ? . ! False Sword That Them Knights Zone Temperate The Sword Not , ? Mean , Strange Strange Shut Looks ? Go Nose Pram You King Dress A . Wield One', 311081162, 3931, '1:5:31', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:48:28', '2020-08-16 07:48:28'),
(293, 1, 4, '', 'video', 'Your Threw , Like King . Again False Yet Expect Zone Look', 'Good House She Is The King Got Aquatic Supreme A Say Peasant , You ! Up What My Held Well A ? How&#39;d I Just The Our Yet Sacrifice ? There Her Expect Then Up . You Sacrifice Camelot I You Can&#39;t Sword . Look May Expect Demand Is Lot Threw Forward Will Did We You Some I A ! Masses Witch Our For We , Well False For Knights Up But The', 836869777, 3393, '56:33', 1, 2, 0, 0, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:48:29', '2020-08-16 07:48:29'),
(294, 3, 3, '', 'video', 'Divine Threw Just Signifying . Only Isn\'t Up The Temperate Be Seek A Not', 'She Divine Not We Like Man One Aquatic In Well False What Bring You ? Them ? Government You Or The A Now . Nose A Was Like From In We We A We Who ? Temperate Why Now Looks One , , Supreme Dress Be Your Can&#39;t Like You Your Found ! Become Suggesting . Not To These It Look Lot Bring Then ,', 572158218, 5101, '1:25:1', 1, 1, 0, 0, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:48:29', '2020-08-16 07:48:29'),
(295, 1, 4, '', 'audio', 'Do Swallow Threw Of The Where\'d A Basis The Your Did', 'Shut Model Didn&#39;t Want Arm Silly That At Lot ! Tart Power Like On Place What One ! Well Shimmering Pram Supreme Lot Who You You A Like Only Not She Shut Some Up I Am Looks Up ! ?', 946288291, 3459, '57:39', 1, 2, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:48:30', '2020-08-16 07:48:30'),
(296, 3, 3, '', 'audio', 'Dress Sword King You She Well ! ? For No The That Can\'t', 'Thoughts In Nose Push Can&#39;t Like How Model . You With Are Warmer Now Man Do On Just Are Like , Well Did Who&#39;s That Up Lying I Well There The Watery , Have , Person Nose Up . My ! My', 601100806, 2947, '49:7', 1, 1, 0, 0, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:48:30', '2020-08-16 07:48:30'),
(297, 1, 1, '', 'video', 'This From ! It In You Martin', 'Like My Nose Mercia&#39;s False I Watery . One Will Divine Dress Threw ? Know . Can&#39;t Held Her Pram ! Lake Who&#39;s That Ni We You The , To . . Yet Look Seek She Power ? , Be Signifying Lot ! The Did This Who&#39;s We !', 584860030, 6195, '1:43:15', 1, 1, 0, 0, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:48:30', '2020-08-16 07:48:30'),
(298, 1, 2, '', 'audio', 'Appease To To Strange To Power Our I Like The , , Up Why Have', 'The Not Some The Found The Tart Bring Sword The Held Can&#39;t Nose That Now . Look Climes Found Person &#39;cause On No No Witch Here My Am ? Temperate We Of Her King Wield Is I Shut This ? . Not Well Yes One Just Can&#39;t Again . Peasant Inherent Vote Her Do A On ? Go The Farcical To , That . Power Bring ! Expect Person', 314166896, 3469, '57:49', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:48:31', '2020-08-16 07:48:31'),
(299, 1, 1, '', 'video', 'Be Her ! Not ! House ? Look At Up Inherent ! ?', 'Masses The Up Here Am Up Who If Isn&#39;t False . ? Liege ! Found Lot You Why How Basis ? , Shut To . To Your Is ? Push We One Tart Not Well She Watery In Oh What Camelot Strange And We With Wart Then Supreme Not Second On ! One ? Go Look ? You The Sword Ni Well ! ,', 176709740, 6315, '1:45:15', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:48:31', '2020-08-16 07:48:31'),
(300, 1, 2, '', 'audio', 'Forward Not A Dress I How ! , Strange Isn\'t . Some Supreme Forward Up', 'Sacrifice Who Suggesting No Masses Her You Again Excalibur Strangers You A There That Up For . A Nose From Of Say Excalibur &#39;cause Bring The That Aloft Why But Is The A ? Mandate Mean ? Again Tart , Ponds Seek Mean . Arm May We Plover King , See', 934165528, 6819, '1:53:39', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:48:32', '2020-08-16 07:48:32'),
(301, 1, 2, '', 'video', 'Man Her Held You I This Like . Her Pram ? ! My How\'d', 'Why Ni The A My In Forward Did ! The Again You Of Are Is A We This Demand Did Thoughts &#39;cause The The Do ! Purest Who The Your Swallow Dress Forward Shut Second Inherent You Executive A The ! ! Where&#39;d Farcical A Did Expect ? Witch Go Ni , Like What Want Like Shut You Warmer Shut The She The The Found Supreme ? Plover Purest Look That . Camelot', 899806975, 5311, '1:28:31', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:48:33', '2020-08-16 07:48:33'),
(302, 1, 2, '', 'audio', 'You Like ! Sword Strange', 'Women Winter Didn&#39;t One Place Push She At Of The ! A A My Lady We Bosom Person Just The Up , A In Supreme The Well Is Then In You Shimmering Her A On ! ?', 189594317, 494, '8:14', 0, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:48:34', '2020-08-16 07:48:34'),
(303, 1, 4, '', 'audio', 'From A Power Who\'s Yes One ? Water Power', 'Are Look Her Look Basis . The ? A Quiet I My With You Swords , Purest Sacrifice We Carry Newt Must A Will Her No That Is Wield Is Do Lake , Well Her You Do For Just ? Up . Nose My We ? &#39;cause Swallow Lot , One That Expect The Migrate Found Clad Here From Just', 295330203, 7126, '1:58:46', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:48:35', '2020-08-16 07:48:35'),
(304, 3, 3, '', 'audio', 'Bring Nose , Isn\'t Bring Like Bit Place A Signifying How\'d Mandate Want How A', 'That Looks Like King To Dunno That ! On ! Dunno , ? One Expect Up False Forward By Ni Only Her , Want Ni Shrubbery Her Migrate Just Shut Do Up Second Why Yes A Supreme Didn&#39;t ! A Is A Dress I Power Her . My Up There But !', 482431290, 7507, '2:5:7', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:48:36', '2020-08-16 07:48:36'),
(305, 3, 3, '', 'audio', 'You Well , The Threw', 'Do False Supreme Lady Of She A , You Shut Silly Can&#39;t Up Here Now Nose See A Can&#39;t Supreme Lake Must ! No Shrubbery Strange Looks Her Shrubbery Camelot Peasant Up Am Are ? To Mandate South Up', 860804861, 6731, '1:52:11', 1, 1, 0, 0, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:48:36', '2020-08-16 07:48:36'),
(306, 3, 3, '', 'audio', 'Appease A ! Expect Winter I Not She', 'Her To System Water She ! I One Witch Listen Up Yes Sacrifice , ? At We Lake Lot We . This I Fly No ? Executive I Are Didn&#39;t I To Shut Your Migrate Or ? Become Strange We', 837314522, 3276, '54:36', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:48:37', '2020-08-16 07:48:37'),
(307, 1, 1, '', 'video', 'Say A ! Let\'s The Them', 'That Not Why Zone Then A Sacrifice How&#39;d My Up Appease Your Them ! I Model A Water , Nose Is Ow Purest This Think Up Who&#39;s Become You Forward Again Do Her Not Am She&#39;s Good Your , I Second', 227501006, 3476, '57:56', 1, 2, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:48:38', '2020-08-16 07:48:38'),
(308, 3, 3, '', 'video', 'Expect That Expect Dress System King The ? Will', 'What Supreme Be From Migrate Dress Model Dress Yet Well Are Threw Well Why Didn&#39;t Executive ! Nose , Here You Nose Why Just From , No Derives A You Then Are These Up ? A . Knights To One Basis Person Her . Looks Strange Supreme Forward . You I Can&#39;t That Tart', 186214047, 1290, '21:30', 1, 2, 0, 0, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:48:38', '2020-08-16 07:48:38'),
(309, 3, 3, '', 'video', 'But A Demand The , Look Swords', 'Supreme Good Strange What Power Yes Basis Zone Go Is Well Do ! One Them Us Bring ! She You ! Man Quiet ! Do Why , ! Martin Sword King , Power', 548442449, 6858, '1:54:18', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:48:40', '2020-08-16 07:48:40'),
(310, 1, 2, '', 'audio', 'Dressed You Then South The ! Martin Arm King', 'King Migrate A Shimmering May , ! Oh Strange Witch The Do And You Have . Now Her Did You ! A A . Warmer Lot Zone Up It Now You Camelot Shrubbery The Push Like Demand Dress You Is Her . Dress Some ! Do Clad , Then Like Am Say You I A Farcical Have Just Of Place Who Arm One Her ? . Will Mean Power The Like Excalibur !', 754852627, 7467, '2:4:27', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:48:40', '2020-08-16 07:48:40'),
(311, 3, 3, '', 'audio', 'How\'d Newt Knights Knights . From Vote I Second Up That Silly Well Is', 'Who&#39;s As Do Shrubbery Ow Here . Coconuts Supreme Push It&#39;s . Up You To We ! Listen We Watery ? A Them Her Burn That ? , Of One Then Power To A Knights But Like Watery Coconuts No The The We Pram Then King At Did You Isn&#39;t Listen Shut She Good From A Temperate Thoughts Want Look May Well', 133040137, 1513, '25:13', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:48:41', '2020-08-16 07:48:41'),
(312, 1, 4, '', 'video', 'I Watery Then She , The A', 'Mercia&#39;s To Nose You You . Sword ? Knights The Dressed You Up Lake Become Your ? On Watery Lot I The One I Found Push To Silly Suggesting Shimmering Who Farcical', 809116494, 4451, '1:14:11', 1, 2, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:48:42', '2020-08-16 07:48:42'),
(313, 3, 3, '', 'video', 'Power A . Her A ? Well Do ! One Did', 'A Bloody &#39;cause Will Is Second Just The Like A Become False Strange Didn&#39;t You A Power . Tart Did That Vote I I She&#39;s , Mean , Up For Power A ! Like Let&#39;s Did In ! Well King Them Isn&#39;t ? Winter', 877191061, 7158, '1:59:18', 1, 1, 0, 0, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:48:42', '2020-08-16 07:48:42'),
(314, 1, 2, '', 'audio', 'Power And , Have Looks One Camelot The We Lot', 'Sacrifice You Climes Silly Not Do ? Looks Us Model ! ? Coconuts But Well Is Vote A Supreme The , Ah In I For In Not Supreme Some This King Bring She King At Good A Now A Sword You Go , , Distributing Them Migrate Do A . . Bit At Coconuts Why Divine . Martin Shrubbery Found Be Forward Do I Second Do Up Threw Power You .', 955828149, 3108, '51:48', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:48:43', '2020-08-16 07:48:43'),
(315, 1, 4, '', 'audio', 'Her Peasant ? . Dress Seek Her Vote There', 'Do Them The A The ? Silly Say ! To Tart ? Did You . But What Ceremony Her My Why A Say Mercia&#39;s That Second Migrate We Who&#39;s Lot Then Expect For Threw These Then Demand You My , Expect You , , On Now Man Ponds Must Shimmering Appease ! Pram , Oh Land Be Dress Up Must Just That Supreme ! ! Coconuts Threw', 204892217, 2669, '44:29', 1, 2, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:48:44', '2020-08-16 07:48:44'),
(316, 1, 1, '', 'audio', 'Expect A Did Bring You Didn\'t', 'A Not False Up Clad Well Witch , A Of ? A Place Here ! You You Not The Watery . Say I Power Suggesting Peasant Supreme . Ni You Like Zone The These Watery I Her What With A My Of With In You Like Lady Are Her There Dress Up From Are Are Is . Vote A Do , No Excalibur Her , That Want', 874348692, 2407, '40:7', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:48:45', '2020-08-16 07:48:45'),
(317, 3, 3, '', 'video', 'Temperate Dunno Say That A . Us Bloody We Us Thoughts Then Wart', 'See Well This Do Witch In Do From From Masses You Let&#39;s Become A Bosom Ni ? Peasant Bloody Well Where&#39;d Sword No Sacrifice Knights Shut ? System A ! Ni To Shut Who&#39;s Watery ! Have She A Aloft What Again You She We Bloody , To One Dress How&#39;d One Up Thoughts Shrubbery Expect . Winter This Place Well Will Now Now Sword Her', 864427359, 3606, '1:0:6', 1, 2, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:48:46', '2020-08-16 07:48:46'),
(318, 3, 3, '', 'audio', 'Your Is Zone A . How\'d Sun Divine', 'We Do Looks Or Shall Yes This Aquatic False Who&#39;s Martin Excalibur . Some Swords Sword Ponds Excalibur Do ! Man ? Peasant One Lake , The At ? Be Well Suggesting Swords &#39;Ni&#39; King Good A , Wield Wield Camelot Must And . In', 816753863, 6044, '1:40:44', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:48:47', '2020-08-16 07:48:47'),
(319, 3, 3, '', 'audio', 'Say The Forward You A Here South Found Then , The My ?', 'Lying Nose Lake Masses You Nose Found Divine You Shut I ! . Now This Become Just Shut You Nose Lying Basis What What On . The It&#39;s Shut A Do Sword Pram It&#39;s Nose Pram Plover Ceremony Up . Winter Who&#39;s Zone Well Like Then , ? Burn Lady , ! Your Must That Shut A On Dress One Swords My Expect Here', 598885956, 6380, '1:46:20', 1, 1, 0, 0, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:48:48', '2020-08-16 07:48:48'),
(320, 1, 2, '', 'video', 'Basis To Not Shut Bosom Thoughts Say', 'Think Held Her She This A ? ? A Not A Her Sword ! One Like Expect Dress Plover Ni The Then Become Knights You Violence , We Them That Dress You Power Think Her A Appease Her Here', 366454889, 6677, '1:51:17', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:48:49', '2020-08-16 07:48:49'),
(321, 3, 3, '', 'audio', 'A Person Man ? ! False . Suggesting Do Martin Like The', 'On We Providence A Place As For , Providence Like Silly I Temperate ! . From The I The You Up Did This A My A Mean Fly That Like Is Is That Sun That . . Camelot , The Sword , Well Migrate Tart ? To Not Migrate A Be . My Not Lying', 288560654, 6629, '1:50:29', 1, 1, 0, 1, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:48:50', '2020-08-16 07:48:50'),
(322, 3, 3, '', 'audio', 'Know With Land Thoughts Did Yet', 'Climes My A She Of This The , Divine ! Lot Excalibur . For To Government She Be I Is . ! Like On May Well My Must ! Violence Shrubbery To ! Liege Look , , But I To A Held Shut Let&#39;s Mean', 951995225, 7284, '2:1:24', 1, 2, 0, 0, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:48:50', '2020-08-16 07:48:50'),
(323, 3, 3, '', 'video', 'It Sacrifice Did Land ! If ,', 'Mercia&#39;s May Yes Power Coconuts Looks Did That Arm Up Who&#39;s Her Pram Why From ! Lot The No Like No Person Shimmering It&#39;s Basis Our . Some Lying Isn&#39;t Was Bloody To Bring I , Did Well Mercia&#39;s It Looks', 680160800, 6578, '1:49:38', 1, 1, 0, 0, '', 1, 1, 0, 0, 0, 0, '2020-08-16 07:48:50', '2020-08-16 07:48:50');

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
(37, 26, 18, NULL, NULL),
(38, 27, 19, NULL, NULL),
(39, 28, 19, NULL, NULL),
(40, 29, 20, NULL, NULL),
(41, 30, 20, NULL, NULL),
(42, 31, 20, NULL, NULL),
(43, 32, 20, NULL, NULL),
(44, 33, 21, NULL, NULL),
(45, 34, 22, NULL, NULL),
(46, 35, 22, NULL, NULL),
(47, 36, 22, NULL, NULL),
(48, 37, 22, NULL, NULL),
(49, 38, 23, NULL, NULL),
(50, 33, 23, NULL, NULL),
(51, 39, 23, NULL, NULL),
(52, 40, 24, NULL, NULL),
(53, 41, 24, NULL, NULL),
(54, 42, 24, NULL, NULL),
(55, 43, 24, NULL, NULL),
(56, 44, 25, NULL, NULL),
(57, 29, 25, NULL, NULL),
(58, 45, 26, NULL, NULL),
(59, 46, 26, NULL, NULL),
(60, 47, 27, NULL, NULL),
(61, 48, 27, NULL, NULL),
(62, 49, 28, NULL, NULL),
(63, 50, 28, NULL, NULL),
(64, 51, 28, NULL, NULL),
(65, 48, 29, NULL, NULL),
(66, 52, 29, NULL, NULL),
(67, 53, 30, NULL, NULL),
(68, 54, 30, NULL, NULL),
(69, 55, 30, NULL, NULL),
(70, 38, 31, NULL, NULL),
(71, 30, 31, NULL, NULL),
(72, 56, 31, NULL, NULL),
(73, 57, 32, NULL, NULL),
(74, 58, 32, NULL, NULL),
(75, 59, 33, NULL, NULL),
(76, 45, 33, NULL, NULL),
(77, 60, 33, NULL, NULL),
(78, 61, 34, NULL, NULL),
(79, 62, 34, NULL, NULL),
(80, 63, 34, NULL, NULL),
(81, 62, 35, NULL, NULL),
(82, 64, 35, NULL, NULL),
(83, 65, 36, NULL, NULL),
(84, 66, 36, NULL, NULL),
(85, 67, 37, NULL, NULL),
(86, 28, 37, NULL, NULL),
(87, 58, 37, NULL, NULL),
(88, 55, 38, NULL, NULL),
(89, 68, 38, NULL, NULL),
(90, 69, 39, NULL, NULL),
(91, 35, 39, NULL, NULL),
(92, 66, 40, NULL, NULL),
(93, 70, 40, NULL, NULL),
(94, 60, 40, NULL, NULL),
(95, 67, 41, NULL, NULL),
(96, 71, 41, NULL, NULL),
(97, 72, 41, NULL, NULL),
(98, 73, 42, NULL, NULL),
(99, 62, 42, NULL, NULL),
(100, 68, 42, NULL, NULL),
(101, 41, 43, NULL, NULL),
(102, 74, 43, NULL, NULL),
(103, 31, 43, NULL, NULL),
(104, 75, 43, NULL, NULL),
(105, 34, 44, NULL, NULL),
(106, 76, 45, NULL, NULL),
(107, 66, 45, NULL, NULL),
(108, 54, 46, NULL, NULL),
(109, 58, 46, NULL, NULL),
(110, 41, 46, NULL, NULL),
(111, 77, 47, NULL, NULL),
(112, 65, 48, NULL, NULL),
(113, 55, 48, NULL, NULL),
(114, 27, 48, NULL, NULL),
(115, 78, 48, NULL, NULL),
(116, 45, 49, NULL, NULL),
(117, 57, 49, NULL, NULL),
(118, 37, 49, NULL, NULL),
(119, 79, 50, NULL, NULL),
(120, 80, 50, NULL, NULL),
(121, 55, 51, NULL, NULL),
(122, 81, 51, NULL, NULL),
(123, 76, 52, NULL, NULL),
(124, 82, 53, NULL, NULL),
(125, 74, 53, NULL, NULL),
(126, 76, 54, NULL, NULL),
(127, 68, 55, NULL, NULL),
(128, 83, 55, NULL, NULL),
(129, 84, 56, NULL, NULL),
(130, 78, 56, NULL, NULL),
(131, 85, 56, NULL, NULL),
(132, 86, 57, NULL, NULL),
(133, 87, 57, NULL, NULL),
(134, 88, 57, NULL, NULL),
(135, 89, 58, NULL, NULL),
(136, 47, 58, NULL, NULL),
(137, 80, 59, NULL, NULL),
(138, 32, 60, NULL, NULL),
(139, 47, 60, NULL, NULL),
(140, 90, 60, NULL, NULL),
(141, 49, 61, NULL, NULL),
(142, 86, 61, NULL, NULL),
(143, 91, 62, NULL, NULL),
(144, 42, 62, NULL, NULL),
(145, 63, 63, NULL, NULL),
(146, 33, 63, NULL, NULL),
(147, 90, 64, NULL, NULL),
(148, 92, 64, NULL, NULL),
(149, 93, 64, NULL, NULL),
(150, 76, 65, NULL, NULL),
(151, 28, 65, NULL, NULL),
(152, 89, 66, NULL, NULL),
(153, 94, 66, NULL, NULL),
(154, 40, 66, NULL, NULL),
(155, 59, 67, NULL, NULL),
(156, 82, 67, NULL, NULL),
(157, 48, 67, NULL, NULL),
(158, 95, 68, NULL, NULL),
(159, 96, 68, NULL, NULL),
(160, 39, 69, NULL, NULL),
(161, 97, 69, NULL, NULL),
(162, 80, 70, NULL, NULL),
(163, 55, 70, NULL, NULL),
(164, 30, 70, NULL, NULL),
(165, 94, 70, NULL, NULL),
(166, 98, 71, NULL, NULL),
(167, 55, 71, NULL, NULL),
(168, 53, 72, NULL, NULL),
(169, 31, 72, NULL, NULL),
(170, 82, 72, NULL, NULL),
(171, 68, 73, NULL, NULL),
(172, 99, 73, NULL, NULL),
(173, 100, 74, NULL, NULL),
(174, 91, 75, NULL, NULL),
(175, 48, 75, NULL, NULL),
(176, 101, 76, NULL, NULL),
(177, 28, 76, NULL, NULL),
(178, 102, 77, NULL, NULL),
(179, 49, 77, NULL, NULL),
(180, 71, 78, NULL, NULL),
(181, 39, 78, NULL, NULL),
(182, 86, 79, NULL, NULL),
(183, 73, 79, NULL, NULL),
(184, 96, 80, NULL, NULL),
(185, 103, 80, NULL, NULL),
(186, 104, 80, NULL, NULL),
(187, 72, 81, NULL, NULL),
(188, 83, 81, NULL, NULL),
(189, 91, 81, NULL, NULL),
(190, 102, 82, NULL, NULL),
(191, 77, 82, NULL, NULL),
(192, 105, 82, NULL, NULL),
(193, 29, 83, NULL, NULL),
(194, 46, 83, NULL, NULL),
(195, 104, 83, NULL, NULL),
(196, 51, 84, NULL, NULL),
(197, 55, 84, NULL, NULL),
(198, 44, 84, NULL, NULL),
(199, 39, 85, NULL, NULL),
(200, 97, 85, NULL, NULL),
(201, 75, 86, NULL, NULL),
(202, 73, 86, NULL, NULL),
(203, 67, 87, NULL, NULL),
(204, 54, 87, NULL, NULL),
(205, 88, 87, NULL, NULL),
(206, 61, 88, NULL, NULL),
(207, 43, 89, NULL, NULL),
(208, 106, 89, NULL, NULL),
(209, 16, 90, NULL, NULL),
(210, 81, 90, NULL, NULL),
(211, 107, 90, NULL, NULL),
(212, 64, 91, NULL, NULL),
(213, 108, 91, NULL, NULL),
(214, 62, 91, NULL, NULL),
(215, 80, 92, NULL, NULL),
(216, 54, 92, NULL, NULL),
(217, 61, 93, NULL, NULL),
(218, 69, 93, NULL, NULL),
(219, 70, 94, NULL, NULL),
(220, 31, 94, NULL, NULL),
(221, 57, 95, NULL, NULL),
(222, 109, 95, NULL, NULL),
(223, 31, 96, NULL, NULL),
(224, 110, 96, NULL, NULL),
(225, 78, 97, NULL, NULL),
(226, 105, 97, NULL, NULL),
(227, 111, 98, NULL, NULL),
(228, 82, 98, NULL, NULL),
(229, 105, 99, NULL, NULL),
(230, 78, 99, NULL, NULL),
(231, 83, 99, NULL, NULL),
(232, 101, 100, NULL, NULL),
(233, 27, 100, NULL, NULL),
(234, 32, 101, NULL, NULL),
(235, 67, 101, NULL, NULL),
(236, 97, 101, NULL, NULL),
(237, 55, 102, NULL, NULL),
(238, 103, 103, NULL, NULL),
(239, 43, 104, NULL, NULL),
(240, 112, 104, NULL, NULL),
(241, 67, 105, NULL, NULL),
(242, 100, 105, NULL, NULL),
(243, 113, 105, NULL, NULL),
(244, 65, 105, NULL, NULL),
(245, 55, 106, NULL, NULL),
(246, 111, 106, NULL, NULL),
(247, 31, 106, NULL, NULL),
(248, 107, 107, NULL, NULL),
(249, 81, 107, NULL, NULL),
(250, 49, 107, NULL, NULL),
(251, 72, 108, NULL, NULL),
(252, 59, 109, NULL, NULL),
(253, 106, 109, NULL, NULL),
(254, 87, 109, NULL, NULL),
(255, 109, 109, NULL, NULL),
(256, 36, 110, NULL, NULL),
(257, 113, 111, NULL, NULL),
(258, 108, 111, NULL, NULL),
(259, 93, 112, NULL, NULL),
(260, 95, 112, NULL, NULL),
(261, 102, 113, NULL, NULL),
(262, 52, 113, NULL, NULL),
(263, 79, 113, NULL, NULL),
(264, 114, 114, NULL, NULL),
(265, 90, 114, NULL, NULL),
(266, 40, 115, NULL, NULL),
(267, 34, 116, NULL, NULL),
(268, 115, 116, NULL, NULL),
(269, 70, 116, NULL, NULL),
(270, 116, 117, NULL, NULL),
(271, 88, 117, NULL, NULL),
(272, 64, 117, NULL, NULL),
(273, 31, 117, NULL, NULL),
(274, 46, 118, NULL, NULL),
(275, 90, 119, NULL, NULL),
(276, 73, 119, NULL, NULL),
(277, 117, 120, NULL, NULL),
(278, 70, 120, NULL, NULL),
(279, 31, 120, NULL, NULL),
(280, 49, 121, NULL, NULL),
(281, 113, 121, NULL, NULL),
(282, 66, 122, NULL, NULL),
(283, 33, 123, NULL, NULL),
(284, 75, 124, NULL, NULL),
(285, 110, 125, NULL, NULL),
(286, 30, 125, NULL, NULL),
(287, 28, 126, NULL, NULL),
(288, 41, 127, NULL, NULL),
(289, 78, 127, NULL, NULL),
(290, 115, 128, NULL, NULL),
(291, 60, 128, NULL, NULL),
(292, 61, 129, NULL, NULL),
(293, 65, 130, NULL, NULL),
(294, 47, 130, NULL, NULL),
(295, 55, 130, NULL, NULL),
(296, 56, 130, NULL, NULL),
(297, 58, 131, NULL, NULL),
(298, 27, 132, NULL, NULL),
(299, 36, 133, NULL, NULL),
(300, 111, 134, NULL, NULL),
(301, 46, 135, NULL, NULL),
(302, 16, 135, NULL, NULL),
(303, 72, 136, NULL, NULL),
(304, 77, 137, NULL, NULL),
(305, 62, 137, NULL, NULL),
(306, 76, 137, NULL, NULL),
(307, 67, 138, NULL, NULL),
(308, 31, 138, NULL, NULL),
(309, 107, 139, NULL, NULL),
(310, 95, 139, NULL, NULL),
(311, 42, 139, NULL, NULL),
(312, 115, 140, NULL, NULL),
(313, 116, 140, NULL, NULL),
(314, 29, 141, NULL, NULL),
(315, 78, 141, NULL, NULL),
(316, 101, 141, NULL, NULL),
(317, 118, 142, NULL, NULL),
(318, 29, 142, NULL, NULL),
(319, 75, 143, NULL, NULL),
(320, 43, 144, NULL, NULL),
(321, 38, 144, NULL, NULL),
(322, 48, 145, NULL, NULL),
(323, 98, 145, NULL, NULL),
(324, 60, 145, NULL, NULL),
(325, 28, 146, NULL, NULL),
(326, 109, 146, NULL, NULL),
(327, 42, 147, NULL, NULL),
(328, 58, 147, NULL, NULL),
(329, 114, 148, NULL, NULL),
(330, 39, 149, NULL, NULL),
(331, 59, 149, NULL, NULL),
(332, 57, 150, NULL, NULL),
(333, 96, 150, NULL, NULL),
(334, 99, 150, NULL, NULL),
(335, 50, 151, NULL, NULL),
(336, 68, 151, NULL, NULL),
(337, 109, 152, NULL, NULL),
(338, 113, 152, NULL, NULL),
(339, 56, 152, NULL, NULL),
(340, 30, 153, NULL, NULL),
(341, 119, 153, NULL, NULL),
(342, 106, 153, NULL, NULL),
(343, 73, 154, NULL, NULL),
(344, 91, 154, NULL, NULL),
(345, 107, 155, NULL, NULL),
(346, 45, 155, NULL, NULL),
(347, 62, 155, NULL, NULL),
(348, 28, 155, NULL, NULL),
(349, 29, 156, NULL, NULL),
(350, 109, 156, NULL, NULL),
(351, 41, 157, NULL, NULL),
(352, 105, 157, NULL, NULL),
(353, 61, 158, NULL, NULL),
(354, 74, 159, NULL, NULL),
(355, 102, 159, NULL, NULL),
(356, 66, 159, NULL, NULL),
(357, 104, 159, NULL, NULL),
(358, 35, 160, NULL, NULL),
(359, 77, 161, NULL, NULL),
(360, 49, 161, NULL, NULL),
(361, 95, 161, NULL, NULL),
(362, 59, 162, NULL, NULL),
(363, 113, 163, NULL, NULL),
(364, 88, 163, NULL, NULL),
(365, 62, 164, NULL, NULL),
(366, 78, 164, NULL, NULL),
(367, 29, 165, NULL, NULL),
(368, 86, 166, NULL, NULL),
(369, 68, 166, NULL, NULL),
(370, 120, 166, NULL, NULL),
(371, 27, 167, NULL, NULL),
(372, 85, 167, NULL, NULL),
(373, 71, 168, NULL, NULL),
(374, 74, 168, NULL, NULL),
(375, 93, 169, NULL, NULL),
(376, 55, 170, NULL, NULL),
(377, 34, 170, NULL, NULL),
(378, 107, 171, NULL, NULL),
(379, 31, 171, NULL, NULL),
(380, 60, 172, NULL, NULL),
(381, 44, 173, NULL, NULL),
(382, 51, 173, NULL, NULL),
(383, 69, 174, NULL, NULL),
(384, 28, 174, NULL, NULL),
(385, 37, 175, NULL, NULL),
(386, 40, 175, NULL, NULL),
(387, 52, 175, NULL, NULL),
(388, 39, 175, NULL, NULL),
(389, 80, 176, NULL, NULL),
(390, 97, 176, NULL, NULL),
(391, 121, 176, NULL, NULL),
(392, 116, 177, NULL, NULL),
(393, 53, 177, NULL, NULL),
(394, 44, 177, NULL, NULL),
(395, 111, 178, NULL, NULL),
(396, 73, 178, NULL, NULL),
(397, 54, 179, NULL, NULL),
(398, 103, 180, NULL, NULL),
(399, 77, 181, NULL, NULL),
(400, 114, 181, NULL, NULL),
(401, 103, 182, NULL, NULL),
(402, 84, 183, NULL, NULL),
(403, 46, 184, NULL, NULL),
(404, 40, 184, NULL, NULL),
(405, 38, 185, NULL, NULL),
(406, 54, 185, NULL, NULL),
(407, 88, 186, NULL, NULL),
(408, 92, 186, NULL, NULL),
(409, 45, 187, NULL, NULL),
(410, 102, 187, NULL, NULL),
(411, 16, 187, NULL, NULL),
(412, 35, 188, NULL, NULL),
(413, 50, 188, NULL, NULL),
(414, 73, 189, NULL, NULL),
(415, 99, 189, NULL, NULL),
(416, 54, 189, NULL, NULL),
(417, 78, 190, NULL, NULL),
(418, 73, 190, NULL, NULL),
(419, 63, 190, NULL, NULL),
(420, 97, 190, NULL, NULL),
(421, 42, 191, NULL, NULL),
(422, 116, 191, NULL, NULL),
(423, 97, 191, NULL, NULL),
(424, 33, 192, NULL, NULL),
(425, 88, 192, NULL, NULL),
(426, 84, 192, NULL, NULL),
(427, 63, 193, NULL, NULL),
(428, 112, 193, NULL, NULL),
(429, 119, 194, NULL, NULL),
(430, 76, 194, NULL, NULL),
(431, 116, 195, NULL, NULL),
(432, 97, 195, NULL, NULL),
(433, 30, 196, NULL, NULL),
(434, 75, 196, NULL, NULL),
(435, 49, 196, NULL, NULL),
(436, 122, 196, NULL, NULL),
(437, 54, 197, NULL, NULL),
(438, 105, 198, NULL, NULL),
(439, 119, 198, NULL, NULL),
(440, 84, 199, NULL, NULL),
(441, 93, 200, NULL, NULL),
(442, 87, 200, NULL, NULL),
(443, 123, 201, NULL, NULL),
(444, 86, 202, NULL, NULL),
(445, 77, 202, NULL, NULL),
(446, 122, 203, NULL, NULL),
(447, 36, 203, NULL, NULL),
(448, 65, 204, NULL, NULL),
(449, 124, 204, NULL, NULL),
(450, 71, 205, NULL, NULL),
(451, 64, 205, NULL, NULL),
(452, 47, 205, NULL, NULL),
(453, 36, 206, NULL, NULL),
(454, 45, 206, NULL, NULL),
(455, 43, 207, NULL, NULL),
(456, 113, 207, NULL, NULL),
(457, 106, 207, NULL, NULL),
(458, 61, 207, NULL, NULL),
(459, 113, 208, NULL, NULL),
(460, 112, 208, NULL, NULL),
(461, 82, 208, NULL, NULL),
(462, 93, 209, NULL, NULL),
(463, 62, 209, NULL, NULL),
(464, 88, 209, NULL, NULL),
(465, 121, 210, NULL, NULL),
(466, 123, 210, NULL, NULL),
(467, 68, 211, NULL, NULL),
(468, 31, 211, NULL, NULL),
(469, 60, 212, NULL, NULL),
(470, 99, 212, NULL, NULL),
(471, 71, 212, NULL, NULL),
(472, 93, 213, NULL, NULL),
(473, 113, 213, NULL, NULL),
(474, 96, 214, NULL, NULL),
(475, 124, 214, NULL, NULL),
(476, 103, 215, NULL, NULL),
(477, 68, 215, NULL, NULL),
(478, 31, 216, NULL, NULL),
(479, 40, 216, NULL, NULL),
(480, 49, 216, NULL, NULL),
(481, 64, 217, NULL, NULL),
(482, 109, 217, NULL, NULL),
(483, 91, 217, NULL, NULL),
(484, 95, 217, NULL, NULL),
(485, 116, 218, NULL, NULL),
(486, 96, 219, NULL, NULL),
(487, 70, 220, NULL, NULL),
(488, 98, 220, NULL, NULL),
(489, 114, 221, NULL, NULL),
(490, 55, 222, NULL, NULL),
(491, 49, 223, NULL, NULL),
(492, 81, 224, NULL, NULL),
(493, 88, 225, NULL, NULL),
(494, 54, 225, NULL, NULL),
(495, 62, 226, NULL, NULL),
(496, 60, 227, NULL, NULL),
(497, 47, 227, NULL, NULL),
(498, 47, 228, NULL, NULL),
(499, 46, 228, NULL, NULL),
(500, 108, 228, NULL, NULL),
(501, 35, 228, NULL, NULL),
(502, 27, 229, NULL, NULL),
(503, 85, 229, NULL, NULL),
(504, 100, 230, NULL, NULL),
(505, 70, 230, NULL, NULL),
(506, 98, 231, NULL, NULL),
(507, 28, 231, NULL, NULL),
(508, 104, 232, NULL, NULL),
(509, 80, 233, NULL, NULL),
(510, 108, 233, NULL, NULL),
(511, 33, 233, NULL, NULL),
(512, 47, 234, NULL, NULL),
(513, 84, 234, NULL, NULL),
(514, 122, 235, NULL, NULL),
(515, 90, 235, NULL, NULL),
(516, 78, 236, NULL, NULL),
(517, 83, 236, NULL, NULL),
(518, 35, 237, NULL, NULL),
(519, 79, 238, NULL, NULL),
(520, 50, 239, NULL, NULL),
(521, 63, 240, NULL, NULL),
(522, 27, 240, NULL, NULL),
(523, 116, 240, NULL, NULL),
(524, 95, 241, NULL, NULL),
(525, 98, 242, NULL, NULL),
(526, 99, 243, NULL, NULL),
(527, 38, 243, NULL, NULL),
(528, 75, 243, NULL, NULL),
(529, 91, 243, NULL, NULL),
(530, 122, 244, NULL, NULL),
(531, 30, 244, NULL, NULL),
(532, 94, 245, NULL, NULL),
(533, 124, 245, NULL, NULL),
(534, 74, 246, NULL, NULL),
(535, 110, 247, NULL, NULL),
(536, 66, 247, NULL, NULL),
(537, 47, 247, NULL, NULL),
(538, 79, 247, NULL, NULL),
(539, 88, 248, NULL, NULL),
(540, 97, 248, NULL, NULL),
(541, 41, 249, NULL, NULL),
(542, 33, 249, NULL, NULL),
(543, 71, 250, NULL, NULL),
(544, 38, 250, NULL, NULL),
(545, 43, 250, NULL, NULL),
(546, 82, 251, NULL, NULL),
(547, 99, 251, NULL, NULL),
(548, 63, 251, NULL, NULL),
(549, 36, 251, NULL, NULL),
(550, 63, 252, NULL, NULL),
(551, 76, 252, NULL, NULL),
(552, 50, 252, NULL, NULL),
(553, 99, 253, NULL, NULL),
(554, 35, 253, NULL, NULL),
(555, 30, 254, NULL, NULL),
(556, 39, 254, NULL, NULL),
(557, 40, 255, NULL, NULL),
(558, 37, 255, NULL, NULL),
(559, 92, 255, NULL, NULL),
(560, 122, 256, NULL, NULL),
(561, 44, 256, NULL, NULL),
(562, 39, 256, NULL, NULL),
(563, 44, 257, NULL, NULL),
(564, 16, 257, NULL, NULL),
(565, 99, 257, NULL, NULL),
(566, 44, 258, NULL, NULL),
(567, 33, 259, NULL, NULL),
(568, 71, 259, NULL, NULL),
(569, 90, 259, NULL, NULL),
(570, 76, 260, NULL, NULL),
(571, 100, 261, NULL, NULL),
(572, 42, 262, NULL, NULL),
(573, 48, 263, NULL, NULL),
(574, 102, 264, NULL, NULL),
(575, 101, 264, NULL, NULL),
(576, 124, 265, NULL, NULL),
(577, 122, 265, NULL, NULL),
(578, 77, 265, NULL, NULL),
(579, 16, 266, NULL, NULL),
(580, 102, 266, NULL, NULL),
(581, 82, 266, NULL, NULL),
(582, 124, 267, NULL, NULL),
(583, 50, 267, NULL, NULL),
(584, 35, 267, NULL, NULL),
(585, 52, 267, NULL, NULL),
(586, 78, 268, NULL, NULL),
(587, 34, 268, NULL, NULL),
(588, 34, 269, NULL, NULL),
(589, 71, 269, NULL, NULL),
(590, 82, 270, NULL, NULL),
(591, 55, 270, NULL, NULL),
(592, 62, 270, NULL, NULL),
(593, 123, 271, NULL, NULL),
(594, 65, 271, NULL, NULL),
(595, 34, 271, NULL, NULL),
(596, 56, 272, NULL, NULL),
(597, 98, 273, NULL, NULL),
(598, 55, 273, NULL, NULL),
(599, 89, 273, NULL, NULL),
(600, 86, 274, NULL, NULL),
(601, 52, 274, NULL, NULL),
(602, 36, 275, NULL, NULL),
(603, 114, 275, NULL, NULL),
(604, 49, 276, NULL, NULL),
(605, 121, 276, NULL, NULL),
(606, 46, 276, NULL, NULL),
(607, 94, 277, NULL, NULL),
(608, 78, 277, NULL, NULL),
(609, 99, 278, NULL, NULL),
(610, 123, 278, NULL, NULL),
(611, 44, 279, NULL, NULL),
(612, 86, 279, NULL, NULL),
(613, 74, 280, NULL, NULL),
(614, 60, 280, NULL, NULL),
(615, 37, 281, NULL, NULL),
(616, 100, 281, NULL, NULL),
(617, 110, 282, NULL, NULL),
(618, 78, 282, NULL, NULL),
(619, 87, 283, NULL, NULL),
(620, 93, 283, NULL, NULL),
(621, 71, 283, NULL, NULL),
(622, 37, 284, NULL, NULL),
(623, 70, 284, NULL, NULL),
(624, 84, 285, NULL, NULL),
(625, 108, 285, NULL, NULL),
(626, 81, 286, NULL, NULL),
(627, 54, 286, NULL, NULL),
(628, 34, 286, NULL, NULL),
(629, 95, 287, NULL, NULL),
(630, 34, 288, NULL, NULL),
(631, 118, 288, NULL, NULL),
(632, 80, 288, NULL, NULL),
(633, 95, 288, NULL, NULL),
(634, 81, 289, NULL, NULL),
(635, 94, 289, NULL, NULL),
(636, 109, 289, NULL, NULL),
(637, 80, 289, NULL, NULL),
(638, 54, 290, NULL, NULL),
(639, 83, 291, NULL, NULL),
(640, 95, 291, NULL, NULL),
(641, 37, 292, NULL, NULL),
(642, 91, 292, NULL, NULL),
(643, 125, 292, NULL, NULL),
(644, 125, 293, NULL, NULL),
(645, 65, 293, NULL, NULL),
(646, 86, 293, NULL, NULL),
(647, 48, 294, NULL, NULL),
(648, 90, 295, NULL, NULL),
(649, 112, 295, NULL, NULL),
(650, 28, 296, NULL, NULL),
(651, 62, 296, NULL, NULL),
(652, 71, 297, NULL, NULL),
(653, 43, 297, NULL, NULL),
(654, 75, 297, NULL, NULL),
(655, 111, 298, NULL, NULL),
(656, 93, 298, NULL, NULL),
(657, 95, 298, NULL, NULL),
(658, 98, 299, NULL, NULL),
(659, 74, 300, NULL, NULL),
(660, 80, 300, NULL, NULL),
(661, 117, 300, NULL, NULL),
(662, 65, 301, NULL, NULL),
(663, 71, 301, NULL, NULL),
(664, 74, 302, NULL, NULL),
(665, 37, 302, NULL, NULL),
(666, 100, 303, NULL, NULL),
(667, 83, 303, NULL, NULL),
(668, 63, 303, NULL, NULL),
(669, 104, 304, NULL, NULL),
(670, 102, 304, NULL, NULL),
(671, 64, 305, NULL, NULL),
(672, 116, 306, NULL, NULL),
(673, 119, 306, NULL, NULL),
(674, 86, 307, NULL, NULL),
(675, 16, 307, NULL, NULL),
(676, 110, 307, NULL, NULL),
(677, 34, 308, NULL, NULL),
(678, 52, 308, NULL, NULL),
(679, 54, 308, NULL, NULL),
(680, 118, 308, NULL, NULL),
(681, 59, 309, NULL, NULL),
(682, 116, 310, NULL, NULL),
(683, 63, 310, NULL, NULL),
(684, 119, 310, NULL, NULL),
(685, 40, 311, NULL, NULL),
(686, 106, 311, NULL, NULL),
(687, 87, 311, NULL, NULL),
(688, 69, 311, NULL, NULL),
(689, 28, 312, NULL, NULL),
(690, 47, 312, NULL, NULL),
(691, 63, 312, NULL, NULL),
(692, 108, 313, NULL, NULL),
(693, 51, 313, NULL, NULL),
(694, 101, 313, NULL, NULL),
(695, 57, 314, NULL, NULL),
(696, 45, 314, NULL, NULL),
(697, 113, 315, NULL, NULL),
(698, 50, 315, NULL, NULL),
(699, 79, 316, NULL, NULL),
(700, 122, 316, NULL, NULL),
(701, 42, 316, NULL, NULL),
(702, 89, 317, NULL, NULL),
(703, 67, 317, NULL, NULL),
(704, 95, 317, NULL, NULL),
(705, 30, 318, NULL, NULL),
(706, 28, 318, NULL, NULL),
(707, 117, 318, NULL, NULL),
(708, 107, 319, NULL, NULL),
(709, 42, 320, NULL, NULL),
(710, 33, 320, NULL, NULL),
(711, 114, 320, NULL, NULL),
(712, 80, 320, NULL, NULL),
(713, 32, 321, NULL, NULL),
(714, 92, 321, NULL, NULL),
(715, 115, 321, NULL, NULL),
(716, 38, 322, NULL, NULL),
(717, 92, 323, NULL, NULL),
(718, 58, 323, NULL, NULL);

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
(14, 1, 2, '2020-08-14 11:12:48', '2020-08-14 11:12:48');

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
(26, 'animation', 'animation', '2020-08-06 06:42:53', '2020-08-06 06:42:53'),
(27, 'nofilter', 'nofilter', '2020-08-16 07:34:57', '2020-08-16 07:34:57'),
(28, 'luxury', 'luxury', '2020-08-16 07:34:57', '2020-08-16 07:34:57'),
(29, 'paris', 'paris', '2020-08-16 07:34:58', '2020-08-16 07:34:58'),
(30, 'blackandwhite', 'blackandwhite', '2020-08-16 07:34:58', '2020-08-16 07:34:58'),
(31, 'vsco', 'vsco', '2020-08-16 07:34:58', '2020-08-16 07:34:58'),
(32, 'nyc', 'nyc', '2020-08-16 07:34:58', '2020-08-16 07:34:58'),
(33, 'smile', 'smile', '2020-08-16 07:38:28', '2020-08-16 07:38:28'),
(34, 'followme', 'followme', '2020-08-16 07:38:29', '2020-08-16 07:38:29'),
(35, 'instapic', 'instapic', '2020-08-16 07:38:29', '2020-08-16 07:38:29'),
(36, 'summer', 'summer', '2020-08-16 07:38:29', '2020-08-16 07:38:29'),
(37, 'TagsForLikes', 'tagsforlikes', '2020-08-16 07:38:29', '2020-08-16 07:38:29'),
(38, 'gym', 'gym', '2020-08-16 07:44:14', '2020-08-16 07:44:14'),
(39, 'night', 'night', '2020-08-16 07:44:14', '2020-08-16 07:44:14'),
(40, 'london', 'london', '2020-08-16 07:45:58', '2020-08-16 07:45:58'),
(41, 'model', 'model', '2020-08-16 07:45:58', '2020-08-16 07:45:58'),
(42, 'lol', 'lol', '2020-08-16 07:45:58', '2020-08-16 07:45:58'),
(43, 'Repost', 'repost', '2020-08-16 07:45:58', '2020-08-16 07:45:58'),
(44, 'party', 'party', '2020-08-16 07:45:59', '2020-08-16 07:45:59'),
(45, 'girls', 'girls', '2020-08-16 07:46:00', '2020-08-16 07:46:00'),
(46, 'pink', 'pink', '2020-08-16 07:46:00', '2020-08-16 07:46:00'),
(47, 'likeforlike', 'likeforlike', '2020-08-16 07:46:00', '2020-08-16 07:46:00'),
(48, 'sky', 'sky', '2020-08-16 07:46:01', '2020-08-16 07:46:01'),
(49, 'girl', 'girl', '2020-08-16 07:46:02', '2020-08-16 07:46:02'),
(50, 'style', 'style', '2020-08-16 07:46:02', '2020-08-16 07:46:02'),
(51, 'me', 'me', '2020-08-16 07:46:02', '2020-08-16 07:46:02'),
(52, 'autumn', 'autumn', '2020-08-16 07:46:02', '2020-08-16 07:46:02'),
(53, 'photo', 'photo', '2020-08-16 07:46:02', '2020-08-16 07:46:02'),
(54, 'pretty', 'pretty', '2020-08-16 07:46:02', '2020-08-16 07:46:02'),
(55, 'love', 'love', '2020-08-16 07:46:02', '2020-08-16 07:46:02'),
(56, 'vscocam', 'vscocam', '2020-08-16 07:46:03', '2020-08-16 07:46:03'),
(57, 'picoftheday', 'picoftheday', '2020-08-16 07:46:03', '2020-08-16 07:46:03'),
(58, 'follow', 'follow', '2020-08-16 07:46:03', '2020-08-16 07:46:03'),
(59, 'life', 'life', '2020-08-16 07:46:04', '2020-08-16 07:46:04'),
(60, 'beach', 'beach', '2020-08-16 07:46:04', '2020-08-16 07:46:04'),
(61, 'beauty', 'beauty', '2020-08-16 07:46:04', '2020-08-16 07:46:04'),
(62, 'art', 'art', '2020-08-16 07:46:04', '2020-08-16 07:46:04'),
(63, 'awesome', 'awesome', '2020-08-16 07:46:04', '2020-08-16 07:46:04'),
(64, 'food', 'food', '2020-08-16 07:46:06', '2020-08-16 07:46:06'),
(65, 'igers', 'igers', '2020-08-16 07:46:07', '2020-08-16 07:46:07'),
(66, 'landscape', 'landscape', '2020-08-16 07:46:07', '2020-08-16 07:46:07'),
(67, 'cool', 'cool', '2020-08-16 07:46:07', '2020-08-16 07:46:07'),
(68, 'foodporn', 'foodporn', '2020-08-16 07:46:08', '2020-08-16 07:46:08'),
(69, 'nature', 'nature', '2020-08-16 07:46:08', '2020-08-16 07:46:08'),
(70, 'Home', 'home', '2020-08-16 07:46:09', '2020-08-16 07:46:09'),
(71, 'follow4follow', 'follow4follow', '2020-08-16 07:46:10', '2020-08-16 07:46:10'),
(72, 'like', 'like', '2020-08-16 07:46:10', '2020-08-16 07:46:10'),
(73, 'work', 'work', '2020-08-16 07:46:10', '2020-08-16 07:46:10'),
(74, 'music', 'music', '2020-08-16 07:46:11', '2020-08-16 07:46:11'),
(75, 'f4f', 'f4f', '2020-08-16 07:46:11', '2020-08-16 07:46:11'),
(76, 'motivation', 'motivation', '2020-08-16 07:46:11', '2020-08-16 07:46:11'),
(77, 'followforfollow', 'followforfollow', '2020-08-16 07:46:13', '2020-08-16 07:46:13'),
(78, 'Halloween', 'halloween', '2020-08-16 07:46:13', '2020-08-16 07:46:13'),
(79, 'Family', 'family', '2020-08-16 07:46:14', '2020-08-16 07:46:14'),
(80, 'artist', 'artist', '2020-08-16 07:46:14', '2020-08-16 07:46:14'),
(81, 'fall', 'fall', '2020-08-16 07:46:15', '2020-08-16 07:46:15'),
(82, 'fit', 'fit', '2020-08-16 07:46:16', '2020-08-16 07:46:16'),
(83, 'TBT', 'tbt', '2020-08-16 07:46:18', '2020-08-16 07:46:18'),
(84, 'happiness', 'happiness', '2020-08-16 07:46:18', '2020-08-16 07:46:18'),
(85, 'ootd', 'ootd', '2020-08-16 07:46:19', '2020-08-16 07:46:19'),
(86, 'black', 'black', '2020-08-16 07:46:20', '2020-08-16 07:46:20'),
(87, 'photographer', 'photographer', '2020-08-16 07:46:20', '2020-08-16 07:46:20'),
(88, 'healthy', 'healthy', '2020-08-16 07:46:20', '2020-08-16 07:46:20'),
(89, 'fitness', 'fitness', '2020-08-16 07:46:21', '2020-08-16 07:46:21'),
(90, 'l4l', 'l4l', '2020-08-16 07:46:21', '2020-08-16 07:46:21'),
(91, 'goals', 'goals', '2020-08-16 07:46:23', '2020-08-16 07:46:23'),
(92, 'newyork', 'newyork', '2020-08-16 07:46:24', '2020-08-16 07:46:24'),
(93, 'funny', 'funny', '2020-08-16 07:46:24', '2020-08-16 07:46:24'),
(94, 'Selfie', 'selfie', '2020-08-16 07:46:25', '2020-08-16 07:46:25'),
(95, 'fashion', 'fashion', '2020-08-16 07:46:26', '2020-08-16 07:46:26'),
(96, 'swag', 'swag', '2020-08-16 07:46:27', '2020-08-16 07:46:27'),
(97, 'photography', 'photography', '2020-08-16 07:46:27', '2020-08-16 07:46:27'),
(98, 'like4like', 'like4like', '2020-08-16 07:46:28', '2020-08-16 07:46:28'),
(99, 'instagram', 'instagram', '2020-08-16 07:46:30', '2020-08-16 07:46:30'),
(100, 'sun', 'sun', '2020-08-16 07:46:31', '2020-08-16 07:46:31'),
(101, 'fashionblogger', 'fashionblogger', '2020-08-16 07:46:33', '2020-08-16 07:46:33'),
(102, 'makeup', 'makeup', '2020-08-16 07:46:34', '2020-08-16 07:46:34'),
(103, 'instagood', 'instagood', '2020-08-16 07:46:38', '2020-08-16 07:46:38'),
(104, 'blue', 'blue', '2020-08-16 07:46:38', '2020-08-16 07:46:38'),
(105, 'blogger', 'blogger', '2020-08-16 07:46:41', '2020-08-16 07:46:41'),
(106, 'hair', 'hair', '2020-08-16 07:46:47', '2020-08-16 07:46:47'),
(107, 'lifestyle', 'lifestyle', '2020-08-16 07:46:47', '2020-08-16 07:46:47'),
(108, 'bestoftheday', 'bestoftheday', '2020-08-16 07:46:48', '2020-08-16 07:46:48'),
(109, 'photooftheday', 'photooftheday', '2020-08-16 07:46:51', '2020-08-16 07:46:51'),
(110, 'sunset', 'sunset', '2020-08-16 07:46:52', '2020-08-16 07:46:52'),
(111, 'travel', 'travel', '2020-08-16 07:46:53', '2020-08-16 07:46:53'),
(112, 'instamood', 'instamood', '2020-08-16 07:46:58', '2020-08-16 07:46:58'),
(113, 'cute', 'cute', '2020-08-16 07:46:58', '2020-08-16 07:46:58'),
(114, 'health', 'health', '2020-08-16 07:47:07', '2020-08-16 07:47:07'),
(115, 'design', 'design', '2020-08-16 07:47:09', '2020-08-16 07:47:09'),
(116, 'instalike', 'instalike', '2020-08-16 07:47:10', '2020-08-16 07:47:10'),
(117, 'hot', 'hot', '2020-08-16 07:47:12', '2020-08-16 07:47:12'),
(118, 'inspiration', 'inspiration', '2020-08-16 07:47:20', '2020-08-16 07:47:20'),
(119, 'fun', 'fun', '2020-08-16 07:47:24', '2020-08-16 07:47:24'),
(120, 'Beautiful', 'beautiful', '2020-08-16 07:47:28', '2020-08-16 07:47:28'),
(121, 'happy', 'happy', '2020-08-16 07:47:30', '2020-08-16 07:47:30'),
(122, 'instadaily', 'instadaily', '2020-08-16 07:47:37', '2020-08-16 07:47:37'),
(123, 'friends', 'friends', '2020-08-16 07:47:39', '2020-08-16 07:47:39'),
(124, 'fitfam', 'fitfam', '2020-08-16 07:47:40', '2020-08-16 07:47:40'),
(125, 'amazing', 'amazing', '2020-08-16 07:48:29', '2020-08-16 07:48:29');

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
  `ip` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0 - Blocked, 1 - Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `hide_email`, `email_verified_at`, `password`, `user_type`, `ip`, `remember_token`, `status`, `created_at`, `updated_at`) VALUES
(1, 'John Doe', 'jd@email.com', 1, '2020-05-08 09:23:12', '$2y$10$y1kqjfcRD8Ky4mabic2IsuPpkXHe7ruv/5NM7j5ZdesdcflHAgble', 'user', '', 'nupQjZqK5bSZQ6TMiDPgzqtRB0mLO83VtGzmfcNhwg6WVLlyofsYnQRsW0oC', 1, '2020-03-14 08:52:22', '2020-08-10 04:36:09'),
(2, 'User One', 'user1@email.com', 1, '2020-05-04 05:11:44', '$2y$10$iKCFFfYFfMWQMGbyQVYKi.T.gw1UvmAXdWWiLVEK91Kg2sWoN/oDS', 'user', '', 'w7TkEZazObwXO7vidyoDaxGRnpdYIf1wrO6Zs3lqrnE0vF86m1Qw9Jjb9vEj', 1, '2020-05-03 09:58:24', '2020-08-14 08:19:59'),
(3, 'My View', 'ayanloveme2006@gmail.com', 0, NULL, '$2y$10$3amyKa.3kEGwU0wqqjF9cOLDVgsSN4TBZH2UgsIa2NuMOX4pLVUkK', 'admin', '', 'dNq4JVgT1uwlEl7Lggc7mg8RlAU1aX1N7sq2BP1j7SkkikbcOZ3L4hpFZ8y8', 1, '2020-07-15 23:57:11', '2020-07-25 09:10:55'),
(5, NULL, 'user2@email.com', 0, '2020-07-16 00:02:53', '$2y$10$RZ8.ilD9c0p6Yw8MT.Lt.etppLgOjeVwFxLiNQJlzo8m85UIzoN8q', 'user', '', NULL, 1, '2020-07-15 23:57:53', '2020-07-15 23:57:53'),
(6, NULL, 'user3@email.com', 0, '2020-07-16 00:02:53', '$2y$10$EVX0WqJbShEDToVN.WrV3OcFZTMrU6oEi/rqYMqCc2A08qbABCPC6', 'user', '', NULL, 1, '2020-07-15 23:57:53', '2020-07-15 23:57:53'),
(7, NULL, 'user4@email.com', 0, '2020-07-16 00:02:54', '$2y$10$9RYiMKpfgb2IcAjSiE53nuNwqP83CwJp9CVo1GPEnFcQM1yjrvl7i', 'user', '', NULL, 1, '2020-07-15 23:57:54', '2020-07-15 23:57:54'),
(8, 'Jane Doe', 'jd2@email.com', 0, '2020-08-15 05:45:55', '$2y$10$FqK.DVAy6ORVmLb6m2O2eumfoH7.eW.RY.D73VJt.spZdVsTkDnym', 'user', '::1', 'ZVzV7Sa9RfjAQ26Nk6JP5up8hOnDq4a7GdhxrAbpKq1H2C0JR8f7CbjLWCOq', 1, '2020-08-15 05:36:39', '2020-08-15 05:45:55');

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
(2, 2, 'AZqnMZ6l7ZLf40vJWF4C0SGyJQqjaMIonRsJB3MN.jpeg', '1112223334', 'aaaaaaa aaaaaaaaa aaaaaaaaaa aaaaaaaaa', 'Angola City 1', 'Bengo', 'Angola', '11223344', '2020-05-03 09:58:24', '2020-08-14 08:20:00'),
(3, 3, NULL, '1234567890', 'Shyamnagar Rahuta Jora Mondir', 'Kolkata', 'West Bengal', 'India', '743127', '2020-07-15 23:57:11', '2020-07-25 09:10:55'),
(4, 5, NULL, '+919293949596', NULL, NULL, NULL, NULL, NULL, '2020-07-15 23:57:53', '2020-07-15 23:57:53'),
(5, 6, NULL, '+919293949596', NULL, NULL, NULL, NULL, NULL, '2020-07-15 23:57:53', '2020-07-15 23:57:53'),
(6, 7, NULL, '+919293949596', NULL, NULL, NULL, NULL, NULL, '2020-07-15 23:57:54', '2020-07-15 23:57:54'),
(7, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-08-15 05:36:39', '2020-08-15 05:36:39');

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
-- Indexes for table `comment_likes`
--
ALTER TABLE `comment_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comment_likes_comment_id_foreign` (`comment_id`),
  ADD KEY `comment_likes_user_id_foreign` (`user_id`);

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
ALTER TABLE `podcasts` ADD FULLTEXT KEY `videos_fulltext_index` (`title`,`description`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `cast_live_stream`
--
ALTER TABLE `cast_live_stream`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cast_podcast`
--
ALTER TABLE `cast_podcast`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=219;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=552;

--
-- AUTO_INCREMENT for table `channels`
--
ALTER TABLE `channels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `comment_likes`
--
ALTER TABLE `comment_likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `histories`
--
ALTER TABLE `histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=318;

--
-- AUTO_INCREMENT for table `licenses`
--
ALTER TABLE `licenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `podcasts`
--
ALTER TABLE `podcasts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=324;

--
-- AUTO_INCREMENT for table `podcast_tag`
--
ALTER TABLE `podcast_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=719;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_profiles`
--
ALTER TABLE `user_profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
-- Constraints for table `comment_likes`
--
ALTER TABLE `comment_likes`
  ADD CONSTRAINT `comment_likes_comment_id_foreign` FOREIGN KEY (`comment_id`) REFERENCES `comments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comment_likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

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
