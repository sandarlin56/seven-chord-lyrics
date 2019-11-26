-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 26, 2019 at 11:33 AM
-- Server version: 5.7.27-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `g`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `song_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `title`, `image`, `created_at`, `updated_at`, `song_id`) VALUES
(1, 'hello album', 'albums/November2019/URxWCAQgRud0RVi5g27A.jpg', '2019-11-22 02:08:02', '2019-11-22 02:08:02', NULL),
(2, 'Gfatt album', 'albums/November2019/jYS0KrQlvsSjoSIoO9O1.jpg', '2019-11-22 02:26:00', '2019-11-25 02:14:58', NULL),
(3, 'Sai Sai maw', 'albums/November2019/Wekc3MzmShFbLYLGq50C.jpeg', '2019-11-25 02:26:54', '2019-11-25 02:26:54', NULL),
(4, 'Happy birthday', 'albums/November2019/wRS2hki8jhcSaL99MrzZ.jpg', '2019-11-25 02:27:31', '2019-11-25 02:27:31', NULL),
(5, 'Luu Htar Ka Lu', 'albums/November2019/jvXjByjOJsXvgzrscLld.jpg', '2019-11-25 02:28:53', '2019-11-25 02:28:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

CREATE TABLE `artists` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `album_id` int(11) DEFAULT NULL,
  `genre_id` int(11) DEFAULT NULL,
  `song_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`id`, `image`, `name`, `bio`, `created_at`, `updated_at`, `album_id`, `genre_id`, `song_id`) VALUES
(1, 'artists/November2019/PRKvOjhArnkPCw5OnMXl.jpg', 'Bobby', 'She is a best singer She is a best singerShe is a best singerShe is a best singerShe is a best singerShe is a best singer', '2019-11-22 03:00:00', '2019-11-25 02:15:25', NULL, NULL, NULL),
(2, 'artists/November2019/CpQBrHmUFggU4QVna4V8.jpeg', 'ATinChoSwe', 'Her song is popular. Her song is popular. Her song is popular. Her song is popular. Her song is popular.', '2019-11-25 02:37:30', '2019-11-25 02:37:30', NULL, NULL, NULL),
(3, 'artists/November2019/lpJ98H5i46BgSIPjbwsH.jpg', 'WineSuKhingThein', 'In order for creating tasks to work, we need to specify on the Task model what fields we can write to:\r\nIn order for creating tasks to work, we need to specify on the Task model what fields we can write to:', '2019-11-25 02:47:38', '2019-11-25 02:47:38', NULL, NULL, NULL),
(4, 'artists/November2019/nXUUg4ja3ZBhQ8Znaq5F.jpeg', 'J Fire', 'In order for creating tasks to work, we need to specify on the Task model what fields we can write to:\r\nIn order for creating tasks to work, we need to specify on the Task model what fields we can write to:', '2019-11-25 02:48:27', '2019-11-25 02:48:27', NULL, NULL, NULL),
(5, 'artists/November2019/EQt8rxwJxgO6FzNnBcSU.jpg', 'WaiLa', 'In order for creating tasks to work, we need to specify on the Task model what fields we can write to:\r\nIn order for creating tasks to work, we need to specify on the Task model what fields we can write to:', '2019-11-25 02:52:07', '2019-11-25 02:52:07', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2019-11-22 00:53:26', '2019-11-22 00:53:26'),
(2, NULL, 1, 'Category 2', 'category-2', '2019-11-22 00:53:26', '2019-11-22 00:53:26');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(56, 10, 'id', 'hidden', 'Id', 1, 1, 1, 1, 1, 1, '{}', 1),
(57, 10, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(58, 10, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 3),
(59, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(60, 10, 'updated_at', 'timestamp', 'Updated At', 0, 1, 1, 1, 1, 1, '{}', 5),
(61, 10, 'album_id', 'text', 'Album Id', 0, 1, 1, 1, 1, 1, '{}', 6),
(62, 12, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(63, 12, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(64, 12, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 3),
(65, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(66, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(67, 10, 'song_belongsto_album_relationship', 'relationship', 'albums', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Album\",\"table\":\"albums\",\"type\":\"belongsTo\",\"column\":\"album_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"albums\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(68, 15, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(69, 15, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 2),
(70, 15, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 3),
(71, 15, 'bio', 'text_area', 'Bio', 0, 1, 1, 1, 1, 1, '{}', 4),
(72, 15, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(73, 15, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(74, 15, 'song_id', 'hidden', 'Song Id', 0, 1, 1, 1, 1, 1, '{}', 7),
(75, 10, 'artist_id', 'text', 'Artist Id', 0, 1, 1, 1, 1, 1, '{}', 7),
(76, 10, 'song_belongsto_artist_relationship', 'relationship', 'artists', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Artist\",\"table\":\"artists\",\"type\":\"belongsTo\",\"column\":\"artist_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"albums\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(81, 16, 'id', 'hidden', 'Id', 1, 1, 1, 1, 1, 1, '{}', 1),
(82, 16, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 2),
(83, 16, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 3),
(84, 16, 'sort_by', 'text', 'Sort By', 0, 1, 1, 1, 1, 1, '{}', 4),
(85, 16, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(86, 16, 'updated_at', 'timestamp', 'Updated At', 0, 1, 1, 1, 1, 1, '{}', 6),
(87, 16, 'song_id', 'text', 'Song Id', 0, 1, 1, 1, 1, 1, '{}', 7),
(90, 10, 'song_belongsto_genre_relationship', 'relationship', 'genres', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Genre\",\"table\":\"genres\",\"type\":\"belongsTo\",\"column\":\"genre_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"albums\",\"pivot\":\"0\",\"taggable\":\"0\"}', 9),
(91, 10, 'genre_id', 'text', 'Genre Id', 0, 1, 1, 1, 1, 1, '{}', 8),
(92, 16, 'genre_belongsto_song_relationship', 'relationship', 'songs', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Song\",\"table\":\"songs\",\"type\":\"belongsTo\",\"column\":\"song_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"albums\",\"pivot\":\"0\",\"taggable\":null}', 8);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2019-11-22 00:53:25', '2019-11-22 00:53:25'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2019-11-22 00:53:25', '2019-11-22 00:53:25'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2019-11-22 00:53:25', '2019-11-22 00:53:25'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2019-11-22 00:53:26', '2019-11-22 00:53:26'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2019-11-22 00:53:26', '2019-11-22 00:53:26'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2019-11-22 00:53:26', '2019-11-22 00:53:26'),
(10, 'songs', 'songs', 'Song', 'Songs', NULL, 'App\\Song', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-11-22 01:43:06', '2019-11-22 04:13:31'),
(12, 'albums', 'albums', 'Album', 'Albums', NULL, 'App\\Album', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-11-22 02:06:14', '2019-11-22 02:26:04'),
(15, 'artists', 'artists', 'Artist', 'Artists', NULL, 'App\\Artist', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-11-22 02:37:05', '2019-11-22 02:47:48'),
(16, 'genres', 'genres', 'Genre', 'Genres', NULL, 'App\\Genre', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-11-22 03:50:48', '2019-11-22 04:18:31');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `song_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `image`, `name`, `sort_by`, `created_at`, `updated_at`, `song_id`) VALUES
(1, 'genres/November2019/R3Je9BWfyzBE2Bw7n4n2.jpg', 'hello', 1, '2019-11-22 04:19:00', '2019-11-25 02:52:51', 1),
(2, 'genres/November2019/xaIh5F4N7ORaBEiEJRHy.jpeg', NULL, 2, '2019-11-25 02:10:00', '2019-11-25 02:10:39', 3),
(3, 'genres/November2019/AIntR0uV7EaXhbsG4jLQ.jpg', 'Track', 3, '2019-11-25 02:53:34', NULL, 2),
(4, 'genres/November2019/WXVtzvGpgGQgkYx5YLFM.jpeg', NULL, 4, '2019-11-25 02:54:00', '2019-11-25 03:02:09', 3);

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2019-11-22 00:53:25', '2019-11-22 00:53:25');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2019-11-22 00:53:25', '2019-11-22 00:53:25', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2019-11-22 00:53:25', '2019-11-22 00:53:25', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2019-11-22 00:53:25', '2019-11-22 00:53:25', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2019-11-22 00:53:25', '2019-11-22 00:53:25', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2019-11-22 00:53:25', '2019-11-22 00:53:25', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 10, '2019-11-22 00:53:25', '2019-11-22 00:53:25', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 11, '2019-11-22 00:53:25', '2019-11-22 00:53:25', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2019-11-22 00:53:25', '2019-11-22 00:53:25', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2019-11-22 00:53:25', '2019-11-22 00:53:25', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2019-11-22 00:53:25', '2019-11-22 00:53:25', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 8, '2019-11-22 00:53:26', '2019-11-22 00:53:26', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 6, '2019-11-22 00:53:26', '2019-11-22 00:53:26', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 7, '2019-11-22 00:53:26', '2019-11-22 00:53:26', 'voyager.pages.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 13, '2019-11-22 00:53:26', '2019-11-22 00:53:26', 'voyager.hooks', NULL),
(15, 1, 'Songs', '', '_self', NULL, NULL, NULL, 15, '2019-11-22 01:43:06', '2019-11-22 01:43:06', 'voyager.songs.index', NULL),
(16, 1, 'Albums', '', '_self', NULL, NULL, NULL, 16, '2019-11-22 02:06:14', '2019-11-22 02:06:14', 'voyager.albums.index', NULL),
(17, 1, 'Artists', '', '_self', NULL, NULL, NULL, 17, '2019-11-22 02:37:05', '2019-11-22 02:37:05', 'voyager.artists.index', NULL),
(18, 1, 'Genres', '', '_self', NULL, NULL, NULL, 18, '2019-11-22 03:50:48', '2019-11-22 03:50:48', 'voyager.genres.index', NULL);

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2016_01_01_000000_create_pages_table', 2),
(25, '2016_01_01_000000_create_posts_table', 2),
(26, '2016_02_15_204651_create_categories_table', 2),
(27, '2017_04_11_000000_alter_post_nullable_fields_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2019-11-22 00:53:26', '2019-11-22 00:53:26');

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2019-11-22 00:53:25', '2019-11-22 00:53:25'),
(2, 'browse_bread', NULL, '2019-11-22 00:53:25', '2019-11-22 00:53:25'),
(3, 'browse_database', NULL, '2019-11-22 00:53:25', '2019-11-22 00:53:25'),
(4, 'browse_media', NULL, '2019-11-22 00:53:25', '2019-11-22 00:53:25'),
(5, 'browse_compass', NULL, '2019-11-22 00:53:25', '2019-11-22 00:53:25'),
(6, 'browse_menus', 'menus', '2019-11-22 00:53:25', '2019-11-22 00:53:25'),
(7, 'read_menus', 'menus', '2019-11-22 00:53:25', '2019-11-22 00:53:25'),
(8, 'edit_menus', 'menus', '2019-11-22 00:53:25', '2019-11-22 00:53:25'),
(9, 'add_menus', 'menus', '2019-11-22 00:53:25', '2019-11-22 00:53:25'),
(10, 'delete_menus', 'menus', '2019-11-22 00:53:25', '2019-11-22 00:53:25'),
(11, 'browse_roles', 'roles', '2019-11-22 00:53:25', '2019-11-22 00:53:25'),
(12, 'read_roles', 'roles', '2019-11-22 00:53:25', '2019-11-22 00:53:25'),
(13, 'edit_roles', 'roles', '2019-11-22 00:53:25', '2019-11-22 00:53:25'),
(14, 'add_roles', 'roles', '2019-11-22 00:53:25', '2019-11-22 00:53:25'),
(15, 'delete_roles', 'roles', '2019-11-22 00:53:25', '2019-11-22 00:53:25'),
(16, 'browse_users', 'users', '2019-11-22 00:53:25', '2019-11-22 00:53:25'),
(17, 'read_users', 'users', '2019-11-22 00:53:25', '2019-11-22 00:53:25'),
(18, 'edit_users', 'users', '2019-11-22 00:53:25', '2019-11-22 00:53:25'),
(19, 'add_users', 'users', '2019-11-22 00:53:25', '2019-11-22 00:53:25'),
(20, 'delete_users', 'users', '2019-11-22 00:53:25', '2019-11-22 00:53:25'),
(21, 'browse_settings', 'settings', '2019-11-22 00:53:25', '2019-11-22 00:53:25'),
(22, 'read_settings', 'settings', '2019-11-22 00:53:25', '2019-11-22 00:53:25'),
(23, 'edit_settings', 'settings', '2019-11-22 00:53:25', '2019-11-22 00:53:25'),
(24, 'add_settings', 'settings', '2019-11-22 00:53:25', '2019-11-22 00:53:25'),
(25, 'delete_settings', 'settings', '2019-11-22 00:53:25', '2019-11-22 00:53:25'),
(26, 'browse_categories', 'categories', '2019-11-22 00:53:26', '2019-11-22 00:53:26'),
(27, 'read_categories', 'categories', '2019-11-22 00:53:26', '2019-11-22 00:53:26'),
(28, 'edit_categories', 'categories', '2019-11-22 00:53:26', '2019-11-22 00:53:26'),
(29, 'add_categories', 'categories', '2019-11-22 00:53:26', '2019-11-22 00:53:26'),
(30, 'delete_categories', 'categories', '2019-11-22 00:53:26', '2019-11-22 00:53:26'),
(31, 'browse_posts', 'posts', '2019-11-22 00:53:26', '2019-11-22 00:53:26'),
(32, 'read_posts', 'posts', '2019-11-22 00:53:26', '2019-11-22 00:53:26'),
(33, 'edit_posts', 'posts', '2019-11-22 00:53:26', '2019-11-22 00:53:26'),
(34, 'add_posts', 'posts', '2019-11-22 00:53:26', '2019-11-22 00:53:26'),
(35, 'delete_posts', 'posts', '2019-11-22 00:53:26', '2019-11-22 00:53:26'),
(36, 'browse_pages', 'pages', '2019-11-22 00:53:26', '2019-11-22 00:53:26'),
(37, 'read_pages', 'pages', '2019-11-22 00:53:26', '2019-11-22 00:53:26'),
(38, 'edit_pages', 'pages', '2019-11-22 00:53:26', '2019-11-22 00:53:26'),
(39, 'add_pages', 'pages', '2019-11-22 00:53:26', '2019-11-22 00:53:26'),
(40, 'delete_pages', 'pages', '2019-11-22 00:53:26', '2019-11-22 00:53:26'),
(41, 'browse_hooks', NULL, '2019-11-22 00:53:26', '2019-11-22 00:53:26'),
(42, 'browse_songs', 'songs', '2019-11-22 01:43:06', '2019-11-22 01:43:06'),
(43, 'read_songs', 'songs', '2019-11-22 01:43:06', '2019-11-22 01:43:06'),
(44, 'edit_songs', 'songs', '2019-11-22 01:43:06', '2019-11-22 01:43:06'),
(45, 'add_songs', 'songs', '2019-11-22 01:43:06', '2019-11-22 01:43:06'),
(46, 'delete_songs', 'songs', '2019-11-22 01:43:06', '2019-11-22 01:43:06'),
(47, 'browse_albums', 'albums', '2019-11-22 02:06:14', '2019-11-22 02:06:14'),
(48, 'read_albums', 'albums', '2019-11-22 02:06:14', '2019-11-22 02:06:14'),
(49, 'edit_albums', 'albums', '2019-11-22 02:06:14', '2019-11-22 02:06:14'),
(50, 'add_albums', 'albums', '2019-11-22 02:06:14', '2019-11-22 02:06:14'),
(51, 'delete_albums', 'albums', '2019-11-22 02:06:14', '2019-11-22 02:06:14'),
(52, 'browse_artists', 'artists', '2019-11-22 02:37:05', '2019-11-22 02:37:05'),
(53, 'read_artists', 'artists', '2019-11-22 02:37:05', '2019-11-22 02:37:05'),
(54, 'edit_artists', 'artists', '2019-11-22 02:37:05', '2019-11-22 02:37:05'),
(55, 'add_artists', 'artists', '2019-11-22 02:37:05', '2019-11-22 02:37:05'),
(56, 'delete_artists', 'artists', '2019-11-22 02:37:05', '2019-11-22 02:37:05'),
(57, 'browse_genres', 'genres', '2019-11-22 03:50:48', '2019-11-22 03:50:48'),
(58, 'read_genres', 'genres', '2019-11-22 03:50:48', '2019-11-22 03:50:48'),
(59, 'edit_genres', 'genres', '2019-11-22 03:50:48', '2019-11-22 03:50:48'),
(60, 'add_genres', 'genres', '2019-11-22 03:50:48', '2019-11-22 03:50:48'),
(61, 'delete_genres', 'genres', '2019-11-22 03:50:48', '2019-11-22 03:50:48');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-11-22 00:53:26', '2019-11-22 00:53:26'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-11-22 00:53:26', '2019-11-22 00:53:26'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-11-22 00:53:26', '2019-11-22 00:53:26'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-11-22 00:53:26', '2019-11-22 00:53:26');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2019-11-22 00:53:25', '2019-11-22 00:53:25'),
(2, 'user', 'Normal User', '2019-11-22 00:53:25', '2019-11-22 00:53:25');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `album_id` int(11) DEFAULT NULL,
  `artist_id` int(11) DEFAULT NULL,
  `genre_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`id`, `title`, `image`, `created_at`, `updated_at`, `album_id`, `artist_id`, `genre_id`) VALUES
(1, 'hello', 'songs/November2019/JcRPsOCzZGBj29bm1XRV.jpeg', '2019-11-22 02:18:16', '2019-11-22 02:18:16', 1, NULL, NULL),
(2, 'David Lai', 'songs/November2019/y0gY1cMVW8LetOyyWCmX.jpg', '2019-11-22 02:22:36', '2019-11-22 02:22:36', 1, NULL, NULL),
(3, 'All I ever need', 'songs/November2019/aKGFYZ1GSsTAhpibahlM.jpeg', '2019-11-22 02:23:23', '2019-11-22 02:23:23', 1, NULL, NULL),
(4, 'Gfatt song', 'songs/November2019/zyOMPBuz1dej7tHzODML.jpg', '2019-11-22 02:24:31', '2019-11-22 02:24:31', 1, NULL, NULL),
(5, 'chang', 'songs/November2019/V9PJLrF0Dw4a5ivXoFVx.jpeg', '2019-11-22 02:25:25', '2019-11-22 02:25:25', 1, NULL, NULL),
(6, 'Moesong', 'songs/November2019/nZDBOCnlkUGzmyak1FAP.jpeg', '2019-11-22 02:28:08', '2019-11-22 02:28:08', 2, NULL, NULL),
(7, 'everyday', 'songs/November2019/JBKfNBFSXI5R5OillHi4.jpeg', '2019-11-22 02:28:56', '2019-11-22 02:28:56', 2, NULL, NULL),
(8, 'hello album', 'songs/November2019/zOwZxLI6xBypxg6ZNaAh.jpeg', '2019-11-22 03:33:00', '2019-11-25 02:32:16', 3, 1, 1),
(9, 'Linn lat par kyal lo', 'songs/November2019/kCnL7reStgyO1DK0wsT5.jpeg', '2019-11-25 02:34:00', '2019-11-25 03:24:01', 5, 1, 1),
(10, 'ToHome', 'songs/November2019/Q4MwxeiCfrvoLFiNdvK6.jpeg', '2019-11-25 03:25:08', NULL, 3, 5, 3);

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2019-11-22 00:53:26', '2019-11-22 00:53:26'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2019-11-22 00:53:26', '2019-11-22 00:53:26'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2019-11-22 00:53:26', '2019-11-22 00:53:26'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2019-11-22 00:53:26', '2019-11-22 00:53:26'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2019-11-22 00:53:26', '2019-11-22 00:53:26'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2019-11-22 00:53:26', '2019-11-22 00:53:26'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2019-11-22 00:53:26', '2019-11-22 00:53:26'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2019-11-22 00:53:26', '2019-11-22 00:53:26'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2019-11-22 00:53:26', '2019-11-22 00:53:26'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2019-11-22 00:53:26', '2019-11-22 00:53:26'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2019-11-22 00:53:26', '2019-11-22 00:53:26'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2019-11-22 00:53:26', '2019-11-22 00:53:26'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2019-11-22 00:53:26', '2019-11-22 00:53:26'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2019-11-22 00:53:26', '2019-11-22 00:53:26'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2019-11-22 00:53:26', '2019-11-22 00:53:26'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2019-11-22 00:53:26', '2019-11-22 00:53:26'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2019-11-22 00:53:26', '2019-11-22 00:53:26'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2019-11-22 00:53:26', '2019-11-22 00:53:26'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2019-11-22 00:53:26', '2019-11-22 00:53:26'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2019-11-22 00:53:26', '2019-11-22 00:53:26'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2019-11-22 00:53:26', '2019-11-22 00:53:26'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2019-11-22 00:53:26', '2019-11-22 00:53:26'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2019-11-22 00:53:26', '2019-11-22 00:53:26'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2019-11-22 00:53:26', '2019-11-22 00:53:26'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2019-11-22 00:53:26', '2019-11-22 00:53:26'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2019-11-22 00:53:26', '2019-11-22 00:53:26'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2019-11-22 00:53:26', '2019-11-22 00:53:26'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2019-11-22 00:53:26', '2019-11-22 00:53:26'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2019-11-22 00:53:26', '2019-11-22 00:53:26'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2019-11-22 00:53:26', '2019-11-22 00:53:26');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$zraTTMMNfERS0Z5G69vbaeIoeOEsXUhQVWbactKdoUDIYWMdri4Hy', 'Xc1otUCt4AcNhBlUqyMYJF0Og7jv5A0JtAS55kEMLatekM95VIvFyeIfQIMi', NULL, '2019-11-22 00:53:26', '2019-11-22 00:53:26');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `artists`
--
ALTER TABLE `artists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;
--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
