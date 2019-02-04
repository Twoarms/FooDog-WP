-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Ven 01 Février 2019 à 16:49
-- Version du serveur :  5.7.25-0ubuntu0.18.04.2
-- Version de PHP :  7.0.32-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `foodog`
--
CREATE DATABASE IF NOT EXISTS `foodog` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `foodog`;

-- --------------------------------------------------------

--
-- Structure de la table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-01-04 09:12:02', '2019-01-04 09:12:02', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0),
(2, 28, 'touftouf', 'thomasbailleux2@gmail.com', '', '::1', '2019-01-22 09:31:58', '2019-01-22 09:31:58', 'Test 1 2 3', 0, '1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '', 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(4, 6, '_edit_lock', '1546855773:1'),
(5, 7, '_wp_attached_file', '2019/01/1.jpeg'),
(6, 7, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:660;s:6:\"height\";i:919;s:4:\"file\";s:14:\"2019/01/1.jpeg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"1-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"1-215x300.jpeg\";s:5:\"width\";i:215;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"single-post\";a:4:{s:4:\"file\";s:14:\"1-180x250.jpeg\";s:5:\"width\";i:180;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"footer-post\";a:4:{s:4:\"file\";s:13:\"1-72x100.jpeg\";s:5:\"width\";i:72;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"Hero-one\";a:4:{s:4:\"file\";s:14:\"1-230x320.jpeg\";s:5:\"width\";i:230;s:6:\"height\";i:320;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"Hero-post\";a:4:{s:4:\"file\";s:14:\"1-115x160.jpeg\";s:5:\"width\";i:115;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(7, 7, '_wp_attachment_image_alt', 'alternatif'),
(12, 6, '_thumbnail_id', '7'),
(13, 1, '_wp_trash_meta_status', 'publish'),
(14, 1, '_wp_trash_meta_time', '1546856628'),
(15, 1, '_wp_desired_post_slug', 'hello-world'),
(16, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(18, 11, '_menu_item_type', 'taxonomy'),
(19, 11, '_menu_item_menu_item_parent', '0'),
(20, 11, '_menu_item_object_id', '1'),
(21, 11, '_menu_item_object', 'category'),
(22, 11, '_menu_item_target', ''),
(23, 11, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(24, 11, '_menu_item_xfn', ''),
(25, 11, '_menu_item_url', ''),
(26, 11, '_menu_item_orphaned', '1546859350'),
(27, 12, '_menu_item_type', 'taxonomy'),
(28, 12, '_menu_item_menu_item_parent', '0'),
(29, 12, '_menu_item_object_id', '1'),
(30, 12, '_menu_item_object', 'category'),
(31, 12, '_menu_item_target', ''),
(32, 12, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(33, 12, '_menu_item_xfn', ''),
(34, 12, '_menu_item_url', ''),
(36, 13, '_menu_item_type', 'taxonomy'),
(37, 13, '_menu_item_menu_item_parent', '0'),
(38, 13, '_menu_item_object_id', '9'),
(39, 13, '_menu_item_object', 'category'),
(40, 13, '_menu_item_target', ''),
(41, 13, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(42, 13, '_menu_item_xfn', ''),
(43, 13, '_menu_item_url', ''),
(45, 14, '_menu_item_type', 'taxonomy'),
(46, 14, '_menu_item_menu_item_parent', '0'),
(47, 14, '_menu_item_object_id', '10'),
(48, 14, '_menu_item_object', 'category'),
(49, 14, '_menu_item_target', ''),
(50, 14, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(51, 14, '_menu_item_xfn', ''),
(52, 14, '_menu_item_url', ''),
(54, 15, '_menu_item_type', 'taxonomy'),
(55, 15, '_menu_item_menu_item_parent', '0'),
(56, 15, '_menu_item_object_id', '11'),
(57, 15, '_menu_item_object', 'category'),
(58, 15, '_menu_item_target', ''),
(59, 15, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(60, 15, '_menu_item_xfn', ''),
(61, 15, '_menu_item_url', ''),
(63, 16, '_menu_item_type', 'taxonomy'),
(64, 16, '_menu_item_menu_item_parent', '0'),
(65, 16, '_menu_item_object_id', '12'),
(66, 16, '_menu_item_object', 'category'),
(67, 16, '_menu_item_target', ''),
(68, 16, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(69, 16, '_menu_item_xfn', ''),
(70, 16, '_menu_item_url', ''),
(77, 6, '_wp_trash_meta_status', 'publish'),
(78, 6, '_wp_trash_meta_time', '1546936033'),
(79, 6, '_wp_desired_post_slug', 'test1'),
(80, 17, '_edit_lock', '1549034884:1'),
(81, 18, '_wp_attached_file', '2019/01/2.jpeg'),
(82, 18, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1350;s:6:\"height\";i:900;s:4:\"file\";s:14:\"2019/01/2.jpeg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"2-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"2-300x200.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"2-768x512.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"2-1024x683.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"single-post\";a:4:{s:4:\"file\";s:14:\"2-350x233.jpeg\";s:5:\"width\";i:350;s:6:\"height\";i:233;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"footer-post\";a:4:{s:4:\"file\";s:13:\"2-100x67.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:67;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"Hero-one\";a:4:{s:4:\"file\";s:14:\"2-480x320.jpeg\";s:5:\"width\";i:480;s:6:\"height\";i:320;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"Hero-post\";a:4:{s:4:\"file\";s:14:\"2-180x120.jpeg\";s:5:\"width\";i:180;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(85, 17, '_thumbnail_id', '29'),
(88, 22, '_edit_lock', '1549034883:1'),
(89, 23, '_wp_attached_file', '2019/01/8.jpeg'),
(90, 23, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:634;s:6:\"height\";i:951;s:4:\"file\";s:14:\"2019/01/8.jpeg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"8-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"8-200x300.jpeg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"single-post\";a:4:{s:4:\"file\";s:14:\"8-167x250.jpeg\";s:5:\"width\";i:167;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"footer-post\";a:4:{s:4:\"file\";s:13:\"8-67x100.jpeg\";s:5:\"width\";i:67;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"Hero-one\";a:4:{s:4:\"file\";s:14:\"8-213x320.jpeg\";s:5:\"width\";i:213;s:6:\"height\";i:320;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"Hero-post\";a:4:{s:4:\"file\";s:14:\"8-107x160.jpeg\";s:5:\"width\";i:107;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(93, 22, '_thumbnail_id', '29'),
(96, 26, '_edit_lock', '1549034883:1'),
(97, 27, '_wp_attached_file', '2019/01/10.jpeg'),
(98, 27, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1350;s:6:\"height\";i:900;s:4:\"file\";s:15:\"2019/01/10.jpeg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"10-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"10-300x200.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"10-768x512.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"10-1024x683.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"single-post\";a:4:{s:4:\"file\";s:15:\"10-350x233.jpeg\";s:5:\"width\";i:350;s:6:\"height\";i:233;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"footer-post\";a:4:{s:4:\"file\";s:14:\"10-100x67.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:67;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"Hero-one\";a:4:{s:4:\"file\";s:15:\"10-480x320.jpeg\";s:5:\"width\";i:480;s:6:\"height\";i:320;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"Hero-post\";a:4:{s:4:\"file\";s:15:\"10-180x120.jpeg\";s:5:\"width\";i:180;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(99, 28, '_edit_lock', '1549034883:1'),
(100, 29, '_wp_attached_file', '2019/01/9.jpeg'),
(101, 29, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1350;s:6:\"height\";i:900;s:4:\"file\";s:14:\"2019/01/9.jpeg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"9-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"9-300x200.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"9-768x512.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"9-1024x683.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"single-post\";a:4:{s:4:\"file\";s:14:\"9-350x233.jpeg\";s:5:\"width\";i:350;s:6:\"height\";i:233;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"footer-post\";a:4:{s:4:\"file\";s:13:\"9-100x67.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:67;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"Hero-one\";a:4:{s:4:\"file\";s:14:\"9-480x320.jpeg\";s:5:\"width\";i:480;s:6:\"height\";i:320;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"Hero-post\";a:4:{s:4:\"file\";s:14:\"9-180x120.jpeg\";s:5:\"width\";i:180;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(103, 28, '_edit_last', '1'),
(104, 26, '_edit_last', '1'),
(105, 22, '_edit_last', '1'),
(110, 28, '_thumbnail_id', '29'),
(111, 17, '_edit_last', '1'),
(112, 35, '_edit_lock', '1549034882:1'),
(115, 35, '_thumbnail_id', '29'),
(118, 37, '_edit_lock', '1549034882:1'),
(121, 37, '_thumbnail_id', '29'),
(122, 39, '_edit_lock', '1549034880:1'),
(125, 39, '_thumbnail_id', '29'),
(144, 5, '_edit_lock', '1548149095:1'),
(145, 44, '_menu_item_type', 'custom'),
(146, 44, '_menu_item_menu_item_parent', '0'),
(147, 44, '_menu_item_object_id', '44'),
(148, 44, '_menu_item_object', 'custom'),
(149, 44, '_menu_item_target', '_blank'),
(150, 44, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(151, 44, '_menu_item_xfn', ''),
(152, 44, '_menu_item_url', 'http://localhost/wordpress'),
(153, 45, '_menu_item_type', 'custom'),
(154, 45, '_menu_item_menu_item_parent', '0'),
(155, 45, '_menu_item_object_id', '45'),
(156, 45, '_menu_item_object', 'custom'),
(157, 45, '_menu_item_target', '_blank'),
(158, 45, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(159, 45, '_menu_item_xfn', ''),
(160, 45, '_menu_item_url', 'http://localhost/wordpress'),
(161, 5, '_wp_trash_meta_status', 'publish'),
(162, 5, '_wp_trash_meta_time', '1548149103'),
(165, 46, '_wp_trash_meta_status', 'publish'),
(166, 46, '_wp_trash_meta_time', '1548149191'),
(177, 47, '_wp_trash_meta_status', 'publish'),
(178, 47, '_wp_trash_meta_time', '1548170720'),
(179, 48, '_wp_trash_meta_status', 'publish'),
(180, 48, '_wp_trash_meta_time', '1548318178'),
(181, 49, '_wp_attached_file', '2019/01/cropped-1.jpeg'),
(182, 49, '_wp_attachment_context', 'site-icon'),
(183, 49, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:22:\"2019/01/cropped-1.jpeg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"cropped-1-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"cropped-1-300x300.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"single-post\";a:4:{s:4:\"file\";s:22:\"cropped-1-250x250.jpeg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"footer-post\";a:4:{s:4:\"file\";s:22:\"cropped-1-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"Hero-one\";a:4:{s:4:\"file\";s:22:\"cropped-1-320x320.jpeg\";s:5:\"width\";i:320;s:6:\"height\";i:320;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"Hero-post\";a:4:{s:4:\"file\";s:22:\"cropped-1-160x160.jpeg\";s:5:\"width\";i:160;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:22:\"cropped-1-270x270.jpeg\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:22:\"cropped-1-192x192.jpeg\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:22:\"cropped-1-180x180.jpeg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:20:\"cropped-1-32x32.jpeg\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(184, 50, '_wp_trash_meta_status', 'publish'),
(185, 50, '_wp_trash_meta_time', '1548318634'),
(188, 39, '_edit_last', '1'),
(191, 39, '_yoast_wpseo_primary_category', '9'),
(192, 39, '_yoast_wpseo_content_score', '30'),
(193, 53, '_edit_lock', '1549034880:1'),
(196, 53, '_thumbnail_id', '29'),
(197, 53, '_edit_last', '1'),
(200, 53, '_yoast_wpseo_primary_category', '1'),
(201, 53, '_yoast_wpseo_content_score', '60'),
(206, 56, '_edit_lock', '1549034880:1'),
(209, 56, '_thumbnail_id', '29'),
(210, 56, '_edit_last', '1'),
(213, 56, '_yoast_wpseo_primary_category', '1'),
(214, 56, '_yoast_wpseo_content_score', '60'),
(219, 58, '_edit_lock', '1549023108:1'),
(220, 59, '_edit_lock', '1549034879:1'),
(223, 59, '_thumbnail_id', '29'),
(224, 59, '_edit_last', '1'),
(227, 59, '_yoast_wpseo_primary_category', '11'),
(228, 59, '_yoast_wpseo_content_score', '30'),
(267, 37, '_edit_last', '1'),
(270, 37, '_yoast_wpseo_primary_category', '9'),
(271, 37, '_yoast_wpseo_content_score', '90'),
(282, 35, '_edit_last', '1'),
(285, 35, '_yoast_wpseo_primary_category', '11'),
(286, 35, '_yoast_wpseo_content_score', '60'),
(327, 28, '_yoast_wpseo_primary_category', '1'),
(328, 28, '_yoast_wpseo_content_score', '30'),
(331, 26, '_thumbnail_id', '29'),
(334, 26, '_yoast_wpseo_primary_category', '1'),
(335, 26, '_yoast_wpseo_content_score', '30'),
(340, 22, '_yoast_wpseo_primary_category', '1'),
(341, 22, '_yoast_wpseo_content_score', '60'),
(346, 17, '_yoast_wpseo_primary_category', '1'),
(347, 17, '_yoast_wpseo_content_score', '60');

-- --------------------------------------------------------

--
-- Structure de la table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-01-04 09:12:02', '2019-01-04 09:12:02', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2019-01-07 10:23:48', '2019-01-07 10:23:48', '', 0, 'http://localhost/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2019-01-04 09:12:02', '2019-01-04 09:12:02', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/wordpress/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2019-01-04 09:12:02', '2019-01-04 09:12:02', '', 0, 'http://localhost/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-01-04 09:12:02', '2019-01-04 09:12:02', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/wordpress.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2019-01-04 09:12:02', '2019-01-04 09:12:02', '', 0, 'http://localhost/wordpress/?page_id=3', 0, 'page', '', 0),
(5, 1, '2019-01-22 09:25:02', '2019-01-22 09:25:02', '{\n    \"twentynineteen::nav_menu_locations[menu-1]\": {\n        \"value\": -6462368927544345000,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-04 11:24:16\"\n    },\n    \"twentynineteen::nav_menu_locations[social]\": {\n        \"value\": -6462368927544345000,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-04 11:24:16\"\n    },\n    \"nav_menu[-6462368927544345000]\": {\n        \"value\": {\n            \"name\": \"lien r\\u00e9seau sociaux\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-04 11:24:16\"\n    },\n    \"nav_menu_item[-4881638377833691000]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"custom\",\n            \"title\": \"Facebook\",\n            \"url\": \"http://localhost/wordpress\",\n            \"target\": \"_blank\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Accueil\",\n            \"nav_menu_term_id\": -6462368927544345000,\n            \"_invalid\": false,\n            \"type_label\": \"Lien personnalis\\u00e9\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-04 11:24:16\"\n    },\n    \"nav_menu_item[-6011701114505689000]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"custom\",\n            \"title\": \"Twitter\",\n            \"url\": \"http://localhost/wordpress\",\n            \"target\": \"_blank\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Accueil\",\n            \"nav_menu_term_id\": -6462368927544345000,\n            \"_invalid\": false,\n            \"type_label\": \"Lien personnalis\\u00e9\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-04 11:24:16\"\n    },\n    \"understrap::nav_menu_locations[main-menu]\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-07 11:11:48\"\n    },\n    \"nav_menu_item[12]\": {\n        \"value\": {\n            \"object_id\": 1,\n            \"object\": \"category\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"taxonomy\",\n            \"title\": \"Community\",\n            \"url\": \"http://localhost/wordpress/index.php/category/community/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"community\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"Cat\\u00e9gorie\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-22 09:24:55\"\n    },\n    \"sidebars_widgets[commentary]\": {\n        \"value\": [\n            \"recent-comments-5\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-22 09:24:55\"\n    },\n    \"widget_recent-comments[4]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToyOntzOjU6InRpdGxlIjtzOjA6IiI7czo2OiJudW1iZXIiO2k6NTt9\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"51005c0dc67405ea9ceae670da12dd98\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-22 09:24:55\"\n    },\n    \"widget_text[3]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-22 09:24:55\"\n    },\n    \"widget_recent-comments[5]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-22 09:24:55\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '14bf276e-a763-4847-af1f-bc05e58f0ecf', '', '', '2019-01-22 09:25:02', '2019-01-22 09:25:02', '', 0, 'http://localhost/wordpress/?p=5', 0, 'customize_changeset', '', 0),
(6, 1, '2019-01-07 10:01:04', '2019-01-07 10:01:04', '<!-- wp:image {\"id\":7} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/wordpress/wp-content/uploads/2019/01/1.jpeg\" alt=\"alternatif\" class=\"wp-image-7\"/><figcaption>légende</figcaption></figure>\n<!-- /wp:image -->', 'Test1', '', 'trash', 'open', 'open', '', 'test1__trashed', '', '', '2019-01-08 08:27:13', '2019-01-08 08:27:13', '', 0, 'http://localhost/wordpress/?p=6', 0, 'post', '', 0),
(7, 1, '2019-01-07 10:00:39', '2019-01-07 10:00:39', 'description', 'Chien title', 'légende', 'inherit', 'open', 'closed', '', '1', '', '', '2019-01-07 10:00:59', '2019-01-07 10:00:59', '', 6, 'http://localhost/wordpress/wp-content/uploads/2019/01/1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(8, 1, '2019-01-07 10:01:04', '2019-01-07 10:01:04', '<!-- wp:image {\"id\":7} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/wordpress/wp-content/uploads/2019/01/1.jpeg\" alt=\"alternatif\" class=\"wp-image-7\"/><figcaption>légende</figcaption></figure>\n<!-- /wp:image -->', 'Test1', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2019-01-07 10:01:04', '2019-01-07 10:01:04', '', 6, 'http://localhost/wordpress/index.php/2019/01/07/6-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2019-01-07 10:23:48', '2019-01-07 10:23:48', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-01-07 10:23:48', '2019-01-07 10:23:48', '', 1, 'http://localhost/wordpress/index.php/2019/01/07/1-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2019-01-07 11:09:09', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-01-07 11:09:09', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=11', 1, 'nav_menu_item', '', 0),
(12, 1, '2019-01-07 11:10:49', '2019-01-07 11:10:49', '', 'Community', '', 'publish', 'closed', 'closed', '', '12', '', '', '2019-01-22 09:25:03', '2019-01-22 09:25:03', '', 0, 'http://localhost/wordpress/?p=12', 1, 'nav_menu_item', '', 0),
(13, 1, '2019-01-07 11:10:50', '2019-01-07 11:10:50', ' ', '', '', 'publish', 'closed', 'closed', '', '13', '', '', '2019-01-07 12:56:42', '2019-01-07 12:56:42', '', 0, 'http://localhost/wordpress/?p=13', 2, 'nav_menu_item', '', 0),
(14, 1, '2019-01-07 11:10:50', '2019-01-07 11:10:50', ' ', '', '', 'publish', 'closed', 'closed', '', '14', '', '', '2019-01-07 12:56:42', '2019-01-07 12:56:42', '', 0, 'http://localhost/wordpress/?p=14', 3, 'nav_menu_item', '', 0),
(15, 1, '2019-01-07 11:10:50', '2019-01-07 11:10:50', ' ', '', '', 'publish', 'closed', 'closed', '', '15', '', '', '2019-01-07 12:56:42', '2019-01-07 12:56:42', '', 0, 'http://localhost/wordpress/?p=15', 4, 'nav_menu_item', '', 0),
(16, 1, '2019-01-07 11:10:50', '2019-01-07 11:10:50', ' ', '', '', 'publish', 'closed', 'closed', '', '16', '', '', '2019-01-07 12:56:42', '2019-01-07 12:56:42', '', 0, 'http://localhost/wordpress/?p=16', 5, 'nav_menu_item', '', 0),
(17, 1, '2019-01-08 08:30:47', '2019-01-08 08:30:47', '<!-- wp:paragraph -->\n<p> Health-conscious consumers are skilled ar deciphering nutrition facts labels. We know to monitor our sodium intke avoid carrageenan and high</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Le&nbsp;<strong>Lorem Ipsum</strong>&nbsp;est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n\'a pas fait que survivre cinq siècles, mais s\'est aussi adapté à la bureautique informatique, sans que son contenu n\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'THE && DOG FOOD LABEL TRICKS EVERY OWNER NEEDS TO KNOW', '', 'publish', 'open', 'open', '', 'the-dog-food-label-tricks-every-owner-needs-to-know', '', '', '2019-02-01 15:29:43', '2019-02-01 15:29:43', '', 0, 'http://localhost/wordpress/?p=17', 0, 'post', '', 0),
(18, 1, '2019-01-08 08:30:39', '2019-01-08 08:30:39', '', '2', '', 'inherit', 'open', 'closed', '', '2', '', '', '2019-01-08 08:30:39', '2019-01-08 08:30:39', '', 17, 'http://localhost/wordpress/wp-content/uploads/2019/01/2.jpeg', 0, 'attachment', 'image/jpeg', 0),
(19, 1, '2019-01-08 08:30:47', '2019-01-08 08:30:47', '<!-- wp:paragraph -->\n<p> Health-conscious consumers are skilled ar deciphering nutrition facts labels. We know to monitor our sodium intke avoid carrageenan and high</p>\n<!-- /wp:paragraph -->', 'THE && DOG FOOD LABEL TRICKS EVERY OWNER NEEDS TO KNOW', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2019-01-08 08:30:47', '2019-01-08 08:30:47', '', 17, 'http://localhost/wordpress/index.php/2019/01/08/17-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2019-01-08 08:32:06', '2019-01-08 08:32:06', '<!-- wp:paragraph -->\n<p> Health-conscious consumers are skilled ar deciphering nutrition facts labels. We know to monitor our sodium intke avoid carrageenan and high</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Le&nbsp;<strong>Lorem Ipsum</strong>&nbsp;est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n\'a pas fait que survivre cinq siècles, mais s\'est aussi adapté à la bureautique informatique, sans que son contenu n\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'THE && DOG FOOD LABEL TRICKS EVERY OWNER NEEDS TO KNOW', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2019-01-08 08:32:06', '2019-01-08 08:32:06', '', 17, 'http://localhost/wordpress/index.php/2019/01/08/17-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2019-01-08 08:34:27', '2019-01-08 08:34:27', '<!-- wp:paragraph -->\n<p>So you\'ve discovered the many issue with commercial pet food and have decided that a home cooked diet is much</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Le&nbsp;<strong>Lorem Ipsum</strong>&nbsp;est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n\'a pas fait que survivre cinq siècles, mais s\'est aussi adapté à la bureautique informatique, sans que son contenu n\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.</p>\n<!-- /wp:paragraph -->', 'COOKING FOR YOUR DOG, WATCH OUT FOR THESE NUTRIENT DEFICIENCIES', '', 'publish', 'open', 'open', '', 'cooking-for-your-dog-watch-out-for-these-nutrient-deficiencies', '', '', '2019-02-01 15:29:37', '2019-02-01 15:29:37', '', 0, 'http://localhost/wordpress/?p=22', 0, 'post', '', 0),
(23, 1, '2019-01-08 08:34:08', '2019-01-08 08:34:08', '', '8', '', 'inherit', 'open', 'closed', '', '8', '', '', '2019-01-08 08:34:08', '2019-01-08 08:34:08', '', 22, 'http://localhost/wordpress/wp-content/uploads/2019/01/8.jpeg', 0, 'attachment', 'image/jpeg', 0),
(24, 1, '2019-01-08 08:34:27', '2019-01-08 08:34:27', '<!-- wp:paragraph -->\n<p>So you\'ve discovered the many issue with commercial pet food and have decided that a home cooked diet is much</p>\n<!-- /wp:paragraph -->', 'COOKING FOR YOUR DOG, WATCH OUT FOR THESE NUTRIENT DEFICIENCIES', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2019-01-08 08:34:27', '2019-01-08 08:34:27', '', 22, 'http://localhost/wordpress/index.php/2019/01/08/22-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2019-01-08 08:34:54', '2019-01-08 08:34:54', '<!-- wp:paragraph -->\n<p>So you\'ve discovered the many issue with commercial pet food and have decided that a home cooked diet is much</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Le&nbsp;<strong>Lorem Ipsum</strong>&nbsp;est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n\'a pas fait que survivre cinq siècles, mais s\'est aussi adapté à la bureautique informatique, sans que son contenu n\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.</p>\n<!-- /wp:paragraph -->', 'COOKING FOR YOUR DOG, WATCH OUT FOR THESE NUTRIENT DEFICIENCIES', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2019-01-08 08:34:54', '2019-01-08 08:34:54', '', 22, 'http://localhost/wordpress/index.php/2019/01/08/22-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2019-01-08 08:37:39', '2019-01-08 08:37:39', '<!-- wp:paragraph -->\n<p>We know you love every inch ot your dog s body just the way it is, but pudge can become a Le&nbsp;<strong>Lorem Ipsum</strong>&nbsp;est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n\'a pas fait que survivre cinq siècles, mais s\'est aussi adapté à la bureautique informatique, sans que son contenu n\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.</p>\n<!-- /wp:paragraph -->', 'WHY YOU SHOULD BE FEEDING YOUR DOG SARDINES', '', 'publish', 'open', 'open', '', 'why-you-should-be-feeding-your-dog-sardines', '', '', '2019-02-01 15:29:30', '2019-02-01 15:29:30', '', 0, 'http://localhost/wordpress/?p=26', 0, 'post', '', 0),
(27, 1, '2019-01-08 08:37:38', '2019-01-08 08:37:38', '', '10', '', 'inherit', 'open', 'closed', '', '10', '', '', '2019-01-08 08:37:38', '2019-01-08 08:37:38', '', 26, 'http://localhost/wordpress/wp-content/uploads/2019/01/10.jpeg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2019-01-08 08:39:01', '2019-01-08 08:39:01', '<!-- wp:paragraph -->\n<p>Whether you prefer your turkey deep fried or roasted and your potatoes mashed or sweet, Thanksgiving has one unviersal truth: Le&nbsp;<strong>Lorem Ipsum</strong>&nbsp;est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n\'a pas fait que survivre cinq siècles, mais s\'est aussi adapté à la bureautique informatique, sans que son contenu n\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.</p>\n<!-- /wp:paragraph -->', 'WHAT FAMILY REALLY MEANS TO YOUR DOG', '', 'publish', 'open', 'open', '', 'what-family-really-means-to-your-dog', '', '', '2019-02-01 15:29:22', '2019-02-01 15:29:22', '', 0, 'http://localhost/wordpress/?p=28', 0, 'post', '', 1),
(29, 1, '2019-01-08 08:39:00', '2019-01-08 08:39:00', '', '9', '', 'inherit', 'open', 'closed', '', '9', '', '', '2019-01-08 08:39:00', '2019-01-08 08:39:00', '', 28, 'http://localhost/wordpress/wp-content/uploads/2019/01/9.jpeg', 0, 'attachment', 'image/jpeg', 0),
(31, 1, '2019-01-11 10:30:53', '2019-01-11 10:30:53', '<!-- wp:paragraph -->\n<p>Whether you prefer your turkey deep fried or roasted and your potatoes mashed or sweet, Thanksgiving has one unviersal truth: Le <strong>Lorem Ipsum</strong> est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n\'a pas fait que survivre cinq siècles, mais s\'est aussi adapté à la bureautique informatique, sans que son contenu n\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.</p>\n<!-- /wp:paragraph -->', 'WHAT FAMILY REALLY MEANS TO YOUR DOG', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2019-01-11 10:30:53', '2019-01-11 10:30:53', '', 28, 'http://localhost/wordpress/index.php/2019/01/11/28-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2019-01-11 10:30:57', '2019-01-11 10:30:57', '<!-- wp:paragraph -->\n<p>We know you love every inch ot your dog s body just the way it is, but pudge can become a Le <strong>Lorem Ipsum</strong> est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n\'a pas fait que survivre cinq siècles, mais s\'est aussi adapté à la bureautique informatique, sans que son contenu n\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.</p>\n<!-- /wp:paragraph -->', 'WHY YOU SHOULD BE FEEDING YOUR DOG SARDINES', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2019-01-11 10:30:57', '2019-01-11 10:30:57', '', 26, 'http://localhost/wordpress/index.php/2019/01/11/26-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2019-01-11 10:49:59', '2019-01-11 10:49:59', '<!-- wp:paragraph -->\n<p>Whether you prefer your turkey deep fried or roasted and your potatoes mashed or sweet, Thanksgiving has one unviersal truth: Le&nbsp;<strong>Lorem Ipsum</strong>&nbsp;est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n\'a pas fait que survivre cinq siècles, mais s\'est aussi adapté à la bureautique informatique, sans que son contenu n\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.</p>\n<!-- /wp:paragraph -->', 'WHAT FAMILY REALLY MEANS TO YOUR DOG', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2019-01-11 10:49:59', '2019-01-11 10:49:59', '', 28, 'http://localhost/wordpress/index.php/2019/01/11/28-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2019-01-21 14:42:36', '2019-01-21 14:42:36', '<!-- wp:paragraph -->\n<p>On sait depuis longtemps que travailler avec du texte lisible et contenant du sens est source de distractions, et empêche de se concentrer sur la mise en page elle-même. L\'avantage du Lorem Ipsum sur un texte générique comme \'Du texte. Du texte. Du texte.\' est qu\'il possède une distribution de lettres plus ou moins normale, et en tout cas comparable avec celle du français standard. De nombreuses suites logicielles de mise en page ou éditeurs de sites Web ont fait du Lorem Ipsum leur faux texte par défaut, et une recherche pour \'Lorem Ipsum\' vous conduira vers de nombreux sites qui n\'en sont encore qu\'à leur phase de construction. Plusieurs versions sont apparues avec le temps, parfois par accident, souvent intentionnellement (histoire d\'y rajouter de petits clins d\'oeil, voire des phrases embarassantes).</p>\n<!-- /wp:paragraph -->', 'SUPERFOODS IN YOUR KITCHEN: PUMPKINS FOR DOGS', '', 'publish', 'open', 'open', '', 'superfoods-in-your-kitchen-pumpkins-for-dogs', '', '', '2019-02-01 15:29:14', '2019-02-01 15:29:14', '', 0, 'http://localhost/wordpress/?p=35', 0, 'post', '', 0),
(36, 1, '2019-01-21 14:42:36', '2019-01-21 14:42:36', '<!-- wp:paragraph -->\n<p>On sait depuis longtemps que travailler avec du texte lisible et contenant du sens est source de distractions, et empêche de se concentrer sur la mise en page elle-même. L\'avantage du Lorem Ipsum sur un texte générique comme \'Du texte. Du texte. Du texte.\' est qu\'il possède une distribution de lettres plus ou moins normale, et en tout cas comparable avec celle du français standard. De nombreuses suites logicielles de mise en page ou éditeurs de sites Web ont fait du Lorem Ipsum leur faux texte par défaut, et une recherche pour \'Lorem Ipsum\' vous conduira vers de nombreux sites qui n\'en sont encore qu\'à leur phase de construction. Plusieurs versions sont apparues avec le temps, parfois par accident, souvent intentionnellement (histoire d\'y rajouter de petits clins d\'oeil, voire des phrases embarassantes).</p>\n<!-- /wp:paragraph -->', 'SUPERFOODS IN YOUR KITCHEN: PUMPKINS FOR DOGS', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2019-01-21 14:42:36', '2019-01-21 14:42:36', '', 35, 'http://localhost/wordpress/index.php/2019/01/21/35-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2019-01-21 14:43:11', '2019-01-21 14:43:11', '<!-- wp:paragraph -->\n<p>Plusieurs variations de Lorem Ipsum peuvent être trouvées ici ou là, mais la majeure partie d\'entre elles a été altérée</p>\n<!-- /wp:paragraph -->', 'THE TRUTH ABOUT TABLE SCRAPS FOR DOGS', '', 'publish', 'open', 'open', '', 'the-truth-about-table-scraps-for-dogs', '', '', '2019-02-01 15:29:07', '2019-02-01 15:29:07', '', 0, 'http://localhost/wordpress/?p=37', 0, 'post', '', 0),
(38, 1, '2019-01-21 14:43:11', '2019-01-21 14:43:11', '', 'THE TRUTH ABOUT TABLE SCRAPS FOR DOGS', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2019-01-21 14:43:11', '2019-01-21 14:43:11', '', 37, 'http://localhost/wordpress/index.php/2019/01/21/37-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2019-01-21 14:43:46', '2019-01-21 14:43:46', '<!-- wp:paragraph -->\n<p>Plusieurs variations de Lorem Ipsum peuvent être trouvées ici ou là, mais la majeure partie d\'entre elles a été altérée par l\'addition d\'humour ou de mots aléatoires qui ne ressemblent pas une seconde à du texte standard.</p>\n<!-- /wp:paragraph -->', 'SUPERFOODS IN YOUR KITCHEN: APPLE CIDER VINEGAR FOR DOGS', 'TEST 123', 'publish', 'open', 'open', '', 'superfoods-in-your-kitchen-apple-cider-vinegar-for-dogs', '', '', '2019-02-01 15:29:04', '2019-02-01 15:29:04', '', 0, 'http://localhost/wordpress/?p=39', 0, 'post', '', 0),
(40, 1, '2019-01-21 14:43:46', '2019-01-21 14:43:46', '<!-- wp:paragraph -->\n<p>Plusieurs variations de Lorem Ipsum peuvent être trouvées ici ou là, mais la majeure partie d\'entre elles a été altérée par l\'addition d\'humour ou de mots aléatoires qui ne ressemblent pas une seconde à du texte standard. Si vous voulez utiliser un passage du Lorem Ipsum, vous devez être sûr qu\'il n\'y a rien d\'embarrassant caché dans le texte. Tous les générateurs de Lorem Ipsum sur Internet tendent à reproduire le même extrait sans fin, ce qui fait de lipsum.com le seul vrai générateur de Lorem Ipsum. Iil utilise un dictionnaire de plus de 200 mots latins, en combinaison de plusieurs structures de phrases, pour générer un Lorem Ipsum irréprochable. Le Lorem Ipsum ainsi obtenu ne contient aucune répétition, ni ne contient des mots farfelus, ou des touches d\'humour.</p>\n<!-- /wp:paragraph -->', 'SUPERFOODS IN YOUR KITCHEN: APPLE CIDER VINEGAR FOR DOGS', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2019-01-21 14:43:46', '2019-01-21 14:43:46', '', 39, 'http://localhost/wordpress/index.php/2019/01/21/39-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2019-01-21 14:43:59', '2019-01-21 14:43:59', '<!-- wp:paragraph -->\n<p>Plusieurs variations de Lorem Ipsum peuvent être trouvées ici ou là, mais la majeure partie d\'entre elles a été altérée par l\'addition d\'humour ou de mots aléatoires qui ne ressemblent pas une seconde à du texte standard. Si vous voulez utiliser un passage du Lorem Ipsum, vous devez être sûr qu\'il n\'y a rien d\'embarrassant caché dans le texte. Tous les générateurs de Lorem Ipsum sur Internet tendent à reproduire le même extrait sans fin, ce qui fait de lipsum.com le seul vrai générateur de Lorem Ipsum. Iil utilise un dictionnaire de plus de 200 mots latins, en combinaison de plusieurs structures de phrases, pour générer un Lorem Ipsum irréprochable. Le Lorem Ipsum ainsi obtenu ne contient aucune répétition, ni ne contient des mots farfelus, ou des touches d\'humour.</p>\n<!-- /wp:paragraph -->', 'THE TRUTH ABOUT TABLE SCRAPS FOR DOGS', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2019-01-21 14:43:59', '2019-01-21 14:43:59', '', 37, 'http://localhost/wordpress/index.php/2019/01/21/37-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2019-01-22 09:25:02', '2019-01-22 09:25:02', '', 'Facebook', '', 'publish', 'closed', 'closed', '', 'facebook', '', '', '2019-01-22 09:25:02', '2019-01-22 09:25:02', '', 0, 'http://localhost/wordpress/index.php/2019/01/22/facebook/', 1, 'nav_menu_item', '', 0),
(45, 1, '2019-01-22 09:25:02', '2019-01-22 09:25:02', '', 'Twitter', '', 'publish', 'closed', 'closed', '', 'twitter', '', '', '2019-01-22 09:25:02', '2019-01-22 09:25:02', '', 0, 'http://localhost/wordpress/index.php/2019/01/22/twitter/', 2, 'nav_menu_item', '', 0),
(46, 1, '2019-01-22 09:26:31', '2019-01-22 09:26:31', '{\n    \"sidebars_widgets[commentary]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-22 09:26:31\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '69f09190-21ab-4eb6-a193-d27ba4f408cd', '', '', '2019-01-22 09:26:31', '2019-01-22 09:26:31', '', 0, 'http://localhost/wordpress/index.php/2019/01/22/69f09190-21ab-4eb6-a193-d27ba4f408cd/', 0, 'customize_changeset', '', 0),
(47, 1, '2019-01-22 15:25:20', '2019-01-22 15:25:20', '{\n    \"sidebars_widgets[rechercher]\": {\n        \"value\": [\n            \"search-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-22 15:25:20\"\n    },\n    \"widget_search[4]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-22 15:25:20\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '3acf2a3c-4ca1-4df7-b573-9dec085aca6d', '', '', '2019-01-22 15:25:20', '2019-01-22 15:25:20', '', 0, 'http://localhost/wordpress/index.php/2019/01/22/3acf2a3c-4ca1-4df7-b573-9dec085aca6d/', 0, 'customize_changeset', '', 0),
(48, 1, '2019-01-24 08:22:58', '2019-01-24 08:22:58', '{\n    \"blogname\": {\n        \"value\": \"FooDog\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-24 08:22:58\"\n    },\n    \"blogdescription\": {\n        \"value\": \"FooDog\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-24 08:22:58\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '79706928-243d-4f9d-b31e-2c8bc4d15d09', '', '', '2019-01-24 08:22:58', '2019-01-24 08:22:58', '', 0, 'http://localhost/wordpress/index.php/2019/01/24/79706928-243d-4f9d-b31e-2c8bc4d15d09/', 0, 'customize_changeset', '', 0),
(49, 1, '2019-01-24 08:30:26', '2019-01-24 08:30:26', 'http://localhost/wordpress/wp-content/uploads/2019/01/cropped-1.jpeg', 'cropped-1.jpeg', '', 'inherit', 'open', 'closed', '', 'cropped-1-jpeg', '', '', '2019-01-24 08:30:26', '2019-01-24 08:30:26', '', 0, 'http://localhost/wordpress/wp-content/uploads/2019/01/cropped-1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2019-01-24 08:30:34', '2019-01-24 08:30:34', '{\n    \"site_icon\": {\n        \"value\": 49,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-24 08:30:34\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '8b1cea29-dc89-46ff-9284-fabf0d044e76', '', '', '2019-01-24 08:30:34', '2019-01-24 08:30:34', '', 0, 'http://localhost/wordpress/index.php/2019/01/24/8b1cea29-dc89-46ff-9284-fabf0d044e76/', 0, 'customize_changeset', '', 0),
(51, 1, '2019-01-30 09:00:10', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-01-30 09:00:10', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=51', 0, 'post', '', 0),
(52, 1, '2019-01-30 09:18:08', '2019-01-30 09:18:08', '<!-- wp:paragraph -->\n<p>Plusieurs variations de Lorem Ipsum peuvent être trouvées ici ou là, mais la majeure partie d\'entre elles a été altérée par l\'addition d\'humour ou de mots aléatoires qui ne ressemblent pas une seconde à du texte standard. Si vous voulez utiliser un passage du Lorem Ipsum, vous devez être sûr qu\'il n\'y a rien d\'embarrassant caché dans le texte. Tous les générateurs de Lorem Ipsum sur Internet tendent à reproduire le même extrait sans fin, ce qui fait de lipsum.com le seul vrai générateur de Lorem Ipsum. Iil utilise un dictionnaire de plus de 200 mots latins, en combinaison de plusieurs structures de phrases, pour générer un Lorem Ipsum irréprochable. Le Lorem Ipsum ainsi obtenu ne contient aucune répétition, ni ne contient des mots farfelus, ou des touches d\'humour.</p>\n<!-- /wp:paragraph -->', 'SUPERFOODS IN YOUR KITCHEN: APPLE CIDER VINEGAR FOR DOGS', 'TEST 123', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2019-01-30 09:18:08', '2019-01-30 09:18:08', '', 39, 'http://localhost/wordpress/index.php/2019/01/30/39-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2019-01-30 09:23:26', '2019-01-30 09:23:26', 'dfgdfgdfg', 'TEST CHIEN 5', 'dfgdfgdfgdfg', 'publish', 'open', 'open', '', 'test-chien-5', '', '', '2019-02-01 15:28:56', '2019-02-01 15:28:56', '', 0, 'http://localhost/wordpress/?p=53', 0, 'post', '', 0),
(54, 1, '2019-01-30 09:23:26', '2019-01-30 09:23:26', '', 'TEST CHIEN 5', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2019-01-30 09:23:26', '2019-01-30 09:23:26', '', 53, 'http://localhost/wordpress/index.php/2019/01/30/53-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2019-01-30 09:27:10', '2019-01-30 09:27:10', 'dfgdfgdfg', 'TEST CHIEN 5', 'dfgdfgdfgdfg', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2019-01-30 09:27:10', '2019-01-30 09:27:10', '', 53, 'http://localhost/wordpress/index.php/2019/01/30/53-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2019-01-30 09:40:03', '2019-01-30 09:40:03', 'sdfdsffdssdfdsfdsfsdfsdfsdf', 'test 6 CHIEN', 'dgggfdgdfgd', 'publish', 'open', 'open', '', 'test-6-chien', '', '', '2019-01-30 09:40:24', '2019-01-30 09:40:24', '', 0, 'http://localhost/wordpress/?p=56', 0, 'post', '', 0),
(57, 1, '2019-01-30 09:40:03', '2019-01-30 09:40:03', 'sdfdsffdssdfdsfdsfsdfsdfsdf', 'test 6 CHIEN', 'dgggfdgdfgd', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2019-01-30 09:40:03', '2019-01-30 09:40:03', '', 56, 'http://localhost/wordpress/index.php/2019/01/30/56-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2019-02-01 12:11:47', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-02-01 12:11:47', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=58', 0, 'post', '', 0),
(59, 1, '2019-02-01 12:12:38', '2019-02-01 12:12:38', 'lorem\nlorem\nlorem\nlorem\nlorem', 'Test7', 'lorem\nlorem\nlorem\nlorem\nlorem', 'publish', 'open', 'open', '', 'test7', '', '', '2019-02-01 15:28:49', '2019-02-01 15:28:49', '', 0, 'http://localhost/wordpress/?p=59', 0, 'post', '', 0),
(60, 1, '2019-02-01 12:12:38', '2019-02-01 12:12:38', 'loremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremlorem', 'Test7', 'loremloremloremloremlorem', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2019-02-01 12:12:38', '2019-02-01 12:12:38', '', 59, 'http://localhost/wordpress/index.php/2019/02/01/59-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2019-02-01 12:21:19', '2019-02-01 12:21:19', 'loremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremlorem', 'Test7', 'loremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremlorem', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2019-02-01 12:21:19', '2019-02-01 12:21:19', '', 59, 'http://localhost/wordpress/index.php/2019/02/01/59-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2019-02-01 13:27:10', '2019-02-01 13:27:10', 'loremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremlorem', 'Test7', 'lorem\nlorem\nlorem\nlorem\nlorem', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2019-02-01 13:27:10', '2019-02-01 13:27:10', '', 59, 'http://localhost/wordpress/index.php/2019/02/01/59-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2019-02-01 13:27:26', '2019-02-01 13:27:26', 'lorem\nlorem\nlorem\nlorem\nlorem', 'Test7', 'lorem\nlorem\nlorem\nlorem\nlorem', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2019-02-01 13:27:26', '2019-02-01 13:27:26', '', 59, 'http://localhost/wordpress/index.php/2019/02/01/59-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2019-02-01 13:34:45', '2019-02-01 13:34:45', '<!-- wp:paragraph -->\n<p>Plusieurs variations de Lorem Ipsum peuvent être trouvées ici ou là, mais la majeure partie d\'entre elles a été altérée par l\'addition d\'humour ou de mots aléatoires qui ne ressemblent pas une seconde à du texte standard. Si vous voulez utiliser un passage du Lorem Ipsum, vous devez être sûr qu\'il n\'y a rien d\'embarrassant caché dans le texte. Tous les générateurs de Lorem Ipsum</p>\n<!-- /wp:paragraph -->', 'SUPERFOODS IN YOUR KITCHEN: APPLE CIDER VINEGAR FOR DOGS', 'TEST 123', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2019-02-01 13:34:45', '2019-02-01 13:34:45', '', 39, 'http://localhost/wordpress/index.php/2019/02/01/39-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2019-02-01 13:35:41', '2019-02-01 13:35:41', '<!-- wp:paragraph -->\n<p>Plusieurs variations de Lorem Ipsum peuvent être trouvées ici ou là, mais la majeure partie d\'entre elles a été altérée par l\'addition d\'humour ou de mots aléatoires qui ne ressemblent pas une seconde à du texte standard. Si vous voulez utiliser un passage du Lorem Ipsum, vous devez être sûr qu\'il n\'y a rien d\'embarrassant caché dans le texte. Tous les générateurs de Lorem Ipsum sur Internet tendent à reproduire le même extrait sans fin, ce qui fait de lipsum.com le seul vrai générateur de Lorem Ipsum.</p>\n<!-- /wp:paragraph -->', 'THE TRUTH ABOUT TABLE SCRAPS FOR DOGS', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2019-02-01 13:35:41', '2019-02-01 13:35:41', '', 37, 'http://localhost/wordpress/index.php/2019/02/01/37-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2019-02-01 14:01:57', '2019-02-01 14:01:57', '<!-- wp:paragraph -->\n<p>Plusieurs variations de Lorem Ipsum peuvent être trouvées ici ou là, mais la majeure partie d\'entre elles a été altérée par l\'addition d\'humour ou de mots aléatoires qui ne ressemblent pas une seconde à du texte standard. Si vous voulez utiliser un passage du Lorem Ipsum, vous devez être sûr qu\'il n\'y a rien d\'embarrassant caché dans le texte..</p>\n<!-- /wp:paragraph -->', 'THE TRUTH ABOUT TABLE SCRAPS FOR DOGS', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2019-02-01 14:01:57', '2019-02-01 14:01:57', '', 37, 'http://localhost/wordpress/index.php/2019/02/01/37-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2019-02-01 14:02:16', '2019-02-01 14:02:16', '<!-- wp:paragraph -->\n<p>Plusieurs variations de Lorem Ipsum peuvent être trouvées ici ou là, mais la majeure partie d\'entre elles a été altérée</p>\n<!-- /wp:paragraph -->', 'THE TRUTH ABOUT TABLE SCRAPS FOR DOGS', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2019-02-01 14:02:16', '2019-02-01 14:02:16', '', 37, 'http://localhost/wordpress/index.php/2019/02/01/37-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2019-02-01 14:02:57', '2019-02-01 14:02:57', '<!-- wp:paragraph -->\n<p>On sait depuis longtemps que travailler avec du texte lisible et contenant du sens est source de distractions, et empêche de se concentrer sur la mise en page elle-même.</p>\n<!-- /wp:paragraph -->', 'SUPERFOODS IN YOUR KITCHEN: PUMPKINS FOR DOGS', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2019-02-01 14:02:57', '2019-02-01 14:02:57', '', 35, 'http://localhost/wordpress/index.php/2019/02/01/35-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2019-02-01 14:03:30', '2019-02-01 14:03:30', '<!-- wp:paragraph -->\n<p>On sait depuis longtemps que travailler avec du texte lisible et contenant du sens est source de distractions, et empêche de se concentrer sur la mise en page elle-même. L\'avantage du Lorem Ipsum sur un texte générique comme \'Du texte. Du texte. Du texte.\' est qu\'il possède une distribution de lettres plus ou moins normale, et en tout cas comparable avec celle du français standard. De nombreuses suites logicielles de mise en page ou éditeurs de sites Web ont fait du Lorem Ipsum leur faux texte par défaut, et une recherche pour \'Lorem Ipsum\' vous conduira vers de nombreux sites qui n\'en sont encore qu\'à leur phase de construction. Plusieurs versions sont apparues avec le temps, parfois par accident, souvent intentionnellement (histoire d\'y rajouter de petits clins d\'oeil, voire des phrases embarassantes).</p>\n<!-- /wp:paragraph -->', 'SUPERFOODS IN YOUR KITCHEN: PUMPKINS FOR DOGS', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2019-02-01 14:03:30', '2019-02-01 14:03:30', '', 35, 'http://localhost/wordpress/index.php/2019/02/01/35-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(70, 1, '2019-02-01 14:03:45', '2019-02-01 14:03:45', '<!-- wp:paragraph -->\n<p>On sait depuis longtemps que travailler avec du texte lisible et contenant du sens est source de distractions, et empêche de se concentrer sur la mise en page elle-même.</p>\n<!-- /wp:paragraph -->', 'SUPERFOODS IN YOUR KITCHEN: PUMPKINS FOR DOGS', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2019-02-01 14:03:45', '2019-02-01 14:03:45', '', 35, 'http://localhost/wordpress/index.php/2019/02/01/35-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2019-02-01 14:03:55', '2019-02-01 14:03:55', '<!-- wp:paragraph -->\n<p>On sait depuis longtemps que travailler avec du texte lisible et contenant du sens est source de distractions, et empêche de se concentrer sur la mise en page elle-même. L\'avantage du Lorem Ipsum sur un texte générique comme \'Du texte. Du texte. Du texte.\' est qu\'il possède une distribution de lettres plus ou moins normale, et en tout cas comparable avec celle du français standard. De nombreuses suites logicielles de mise en page ou éditeurs de sites Web ont fait du Lorem Ipsum leur faux texte par défaut, et une recherche pour \'Lorem Ipsum\' vous conduira vers de nombreux sites qui n\'en sont encore qu\'à leur phase de construction. Plusieurs versions sont apparues avec le temps, parfois par accident, souvent intentionnellement (histoire d\'y rajouter de petits clins d\'oeil, voire des phrases embarassantes).</p>\n<!-- /wp:paragraph -->', 'SUPERFOODS IN YOUR KITCHEN: PUMPKINS FOR DOGS', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2019-02-01 14:03:55', '2019-02-01 14:03:55', '', 35, 'http://localhost/wordpress/index.php/2019/02/01/35-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2019-02-01 14:04:21', '2019-02-01 14:04:21', '<!-- wp:paragraph -->\n<p>Plusieurs variations de Lorem Ipsum peuvent être trouvées ici ou là, mais la majeure partie d\'entre elles a été altérée par l\'addition d\'humour ou de mots aléatoires qui ne ressemblent pas une seconde à du texte standard.</p>\n<!-- /wp:paragraph -->', 'SUPERFOODS IN YOUR KITCHEN: APPLE CIDER VINEGAR FOR DOGS', 'TEST 123', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2019-02-01 14:04:21', '2019-02-01 14:04:21', '', 39, 'http://localhost/wordpress/index.php/2019/02/01/39-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2019-02-01 15:29:29', '2019-02-01 15:29:29', '<!-- wp:paragraph -->\n<p>We know you love every inch ot your dog s body just the way it is, but pudge can become a Le&nbsp;<strong>Lorem Ipsum</strong>&nbsp;est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n\'a pas fait que survivre cinq siècles, mais s\'est aussi adapté à la bureautique informatique, sans que son contenu n\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.</p>\n<!-- /wp:paragraph -->', 'WHY YOU SHOULD BE FEEDING YOUR DOG SARDINES', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2019-02-01 15:29:29', '2019-02-01 15:29:29', '', 26, 'http://localhost/wordpress/index.php/2019/02/01/26-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'community', 'community', 0),
(2, 'Footer', 'footer', 0),
(9, 'Featured', 'featured', 0),
(10, 'Lifestyle', 'lifestyle', 0),
(11, 'Nutrition', 'nutrition', 0),
(12, 'Wellness', 'wellness', 0),
(13, 'lien réseau sociaux', 'lien-reseau-sociaux', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(6, 1, 0),
(12, 2, 0),
(13, 2, 0),
(14, 2, 0),
(15, 2, 0),
(16, 2, 0),
(17, 1, 0),
(22, 1, 0),
(26, 1, 0),
(28, 1, 0),
(35, 11, 0),
(37, 9, 0),
(39, 9, 0),
(44, 13, 0),
(45, 13, 0),
(53, 1, 0),
(56, 1, 0),
(59, 1, 0),
(59, 9, 0),
(59, 10, 0),
(59, 11, 0),
(59, 12, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 7),
(2, 2, 'nav_menu', '', 0, 5),
(9, 9, 'category', '', 0, 3),
(10, 10, 'category', '', 0, 1),
(11, 11, 'category', '', 0, 2),
(12, 12, 'category', '', 0, 1),
(13, 13, 'nav_menu', '', 0, 2);

-- --------------------------------------------------------

--
-- Structure de la table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'touftouf'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy,theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"c66fe02d952810510d2d4da40ba68a67d591740a60ed4796aae93a02c26963d4\";a:4:{s:10:\"expiration\";i:1549285554;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:104:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:5:\"login\";i:1548075954;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '51'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(21, 1, 'wp_user-settings', 'libraryContent=browse'),
(22, 1, 'wp_user-settings-time', '1546855380'),
(23, 1, 'nav_menu_recently_edited', '2'),
(24, 1, 'wp_yoast_notifications', 'a:2:{i:0;a:2:{s:7:\"message\";s:195:\"Ne ratez pas vos erreurs d’exploration : <a href=\"http://localhost/wordpress/wp-admin/admin.php?page=wpseo_search_console&tab=settings\">connectez-vous avec votre Google Search Console ici</a>.\";s:7:\"options\";a:9:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:17:\"wpseo-dismiss-gsc\";s:5:\"nonce\";N;s:8:\"priority\";d:0.5;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}i:1;a:2:{s:7:\"message\";s:473:\"Nous adorerions que vous essayiez la nouvelle analyse Yoast SEO améliorée ! Activez-la <a href=\"#top#features\" onclick=\"jQuery(\'#features-tab\').click()\">dans l’onglet « Fonctionnalités »</a> dans les réglages de Yoast SEO. <a href=\"https://yoa.st/recalibration-beta-notice?php_version=7.0.32&platform=wordpress&platform_version=5.0.3&software=free&software_version=9.5&role=administrator&days_active=8\" target=\"_blank\">En savoir plus sur la nouvelle analyse</a>.\";s:7:\"options\";a:9:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:37:\"wpseo-recalibration-meta-notification\";s:5:\"nonce\";N;s:8:\"priority\";i:1;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}}');

-- --------------------------------------------------------

--
-- Structure de la table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'touftouf', '$P$BinHh9FCww32CB.d.wAI2rLgswPodP/', 'touftouf', 'thomasbailleux2@gmail.com', '', '2019-01-04 09:12:02', '1546850260:$P$BHY2qfe/MI234mvKwFc/K65IbkpJ9q1', 0, 'touftouf');

-- --------------------------------------------------------

--
-- Structure de la table `wp_yoast_seo_links`
--

DROP TABLE IF EXISTS `wp_yoast_seo_links`;
CREATE TABLE `wp_yoast_seo_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `target_post_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_yoast_seo_meta`
--

DROP TABLE IF EXISTS `wp_yoast_seo_meta`;
CREATE TABLE `wp_yoast_seo_meta` (
  `object_id` bigint(20) UNSIGNED NOT NULL,
  `internal_link_count` int(10) UNSIGNED DEFAULT NULL,
  `incoming_link_count` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_yoast_seo_meta`
--

INSERT INTO `wp_yoast_seo_meta` (`object_id`, `internal_link_count`, `incoming_link_count`) VALUES
(17, 0, 0),
(22, 0, 0),
(26, 0, 0),
(28, 0, 0),
(34, 0, 0),
(35, 0, 0),
(37, 0, 0),
(39, 0, 0),
(42, 0, 0),
(53, 0, 0),
(56, 0, 0),
(59, 0, 0);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Index pour la table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Index pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Index pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Index pour la table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Index pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Index pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Index pour la table `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_direction` (`post_id`,`type`);

--
-- Index pour la table `wp_yoast_seo_meta`
--
ALTER TABLE `wp_yoast_seo_meta`
  ADD UNIQUE KEY `object_id` (`object_id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=348;
--
-- AUTO_INCREMENT pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
--
-- AUTO_INCREMENT pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT pour la table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
