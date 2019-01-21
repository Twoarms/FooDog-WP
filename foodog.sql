-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Lun 21 Janvier 2019 à 11:42
-- Version du serveur :  5.7.24-0ubuntu0.18.04.1
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
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-01-04 09:12:02', '2019-01-04 09:12:02', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

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
(80, 17, '_edit_lock', '1547204272:1'),
(81, 18, '_wp_attached_file', '2019/01/2.jpeg'),
(82, 18, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1350;s:6:\"height\";i:900;s:4:\"file\";s:14:\"2019/01/2.jpeg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"2-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"2-300x200.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"2-768x512.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"2-1024x683.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"single-post\";a:4:{s:4:\"file\";s:14:\"2-350x233.jpeg\";s:5:\"width\";i:350;s:6:\"height\";i:233;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"footer-post\";a:4:{s:4:\"file\";s:13:\"2-100x67.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:67;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"Hero-one\";a:4:{s:4:\"file\";s:14:\"2-480x320.jpeg\";s:5:\"width\";i:480;s:6:\"height\";i:320;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"Hero-post\";a:4:{s:4:\"file\";s:14:\"2-180x120.jpeg\";s:5:\"width\";i:180;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(85, 17, '_thumbnail_id', '18'),
(88, 22, '_edit_lock', '1547204109:1'),
(89, 23, '_wp_attached_file', '2019/01/8.jpeg'),
(90, 23, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:634;s:6:\"height\";i:951;s:4:\"file\";s:14:\"2019/01/8.jpeg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"8-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"8-200x300.jpeg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"single-post\";a:4:{s:4:\"file\";s:14:\"8-167x250.jpeg\";s:5:\"width\";i:167;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"footer-post\";a:4:{s:4:\"file\";s:13:\"8-67x100.jpeg\";s:5:\"width\";i:67;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"Hero-one\";a:4:{s:4:\"file\";s:14:\"8-213x320.jpeg\";s:5:\"width\";i:213;s:6:\"height\";i:320;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"Hero-post\";a:4:{s:4:\"file\";s:14:\"8-107x160.jpeg\";s:5:\"width\";i:107;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(93, 22, '_thumbnail_id', '23'),
(96, 26, '_edit_lock', '1547202673:1'),
(97, 27, '_wp_attached_file', '2019/01/10.jpeg'),
(98, 27, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1350;s:6:\"height\";i:900;s:4:\"file\";s:15:\"2019/01/10.jpeg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"10-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"10-300x200.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"10-768x512.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"10-1024x683.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"single-post\";a:4:{s:4:\"file\";s:15:\"10-350x233.jpeg\";s:5:\"width\";i:350;s:6:\"height\";i:233;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"footer-post\";a:4:{s:4:\"file\";s:14:\"10-100x67.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:67;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"Hero-one\";a:4:{s:4:\"file\";s:15:\"10-480x320.jpeg\";s:5:\"width\";i:480;s:6:\"height\";i:320;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"Hero-post\";a:4:{s:4:\"file\";s:15:\"10-180x120.jpeg\";s:5:\"width\";i:180;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(99, 28, '_edit_lock', '1547204596:1'),
(100, 29, '_wp_attached_file', '2019/01/9.jpeg'),
(101, 29, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1350;s:6:\"height\";i:900;s:4:\"file\";s:14:\"2019/01/9.jpeg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"9-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"9-300x200.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"9-768x512.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"9-1024x683.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"single-post\";a:4:{s:4:\"file\";s:14:\"9-350x233.jpeg\";s:5:\"width\";i:350;s:6:\"height\";i:233;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"footer-post\";a:4:{s:4:\"file\";s:13:\"9-100x67.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:67;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"Hero-one\";a:4:{s:4:\"file\";s:14:\"9-480x320.jpeg\";s:5:\"width\";i:480;s:6:\"height\";i:320;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"Hero-post\";a:4:{s:4:\"file\";s:14:\"9-180x120.jpeg\";s:5:\"width\";i:180;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(103, 28, '_edit_last', '1'),
(104, 26, '_edit_last', '1'),
(105, 22, '_edit_last', '1'),
(110, 28, '_thumbnail_id', '7'),
(111, 17, '_edit_last', '1');

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
(5, 1, '2019-01-04 11:24:19', '0000-00-00 00:00:00', '{\n    \"twentynineteen::nav_menu_locations[menu-1]\": {\n        \"value\": -6462368927544345000,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-04 11:24:16\"\n    },\n    \"twentynineteen::nav_menu_locations[social]\": {\n        \"value\": -6462368927544345000,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-04 11:24:16\"\n    },\n    \"nav_menu[-6462368927544345000]\": {\n        \"value\": {\n            \"name\": \"lien r\\u00e9seau sociaux\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-04 11:24:16\"\n    },\n    \"nav_menu_item[-4881638377833691000]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"custom\",\n            \"title\": \"Facebook\",\n            \"url\": \"http://localhost/wordpress\",\n            \"target\": \"_blank\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Accueil\",\n            \"nav_menu_term_id\": -6462368927544345000,\n            \"_invalid\": false,\n            \"type_label\": \"Lien personnalis\\u00e9\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-04 11:24:16\"\n    },\n    \"nav_menu_item[-6011701114505689000]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"custom\",\n            \"title\": \"Twitter\",\n            \"url\": \"http://localhost/wordpress\",\n            \"target\": \"_blank\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Accueil\",\n            \"nav_menu_term_id\": -6462368927544345000,\n            \"_invalid\": false,\n            \"type_label\": \"Lien personnalis\\u00e9\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-04 11:24:16\"\n    },\n    \"understrap::nav_menu_locations[main-menu]\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-07 11:11:48\"\n    },\n    \"nav_menu_item[12]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 1,\n            \"object\": \"category\",\n            \"type\": \"taxonomy\",\n            \"type_label\": \"Cat\\u00e9gorie\",\n            \"url\": \"http://localhost/wordpress/index.php/category/community/\",\n            \"title\": \"Community\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 2,\n            \"position\": 1,\n            \"status\": \"publish\",\n            \"original_title\": \"community\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-07 11:11:48\"\n    }\n}', '', '', 'draft', 'closed', 'closed', '', '14bf276e-a763-4847-af1f-bc05e58f0ecf', '', '', '2019-01-07 11:11:48', '2019-01-07 11:11:48', '', 0, 'http://localhost/wordpress/?p=5', 0, 'customize_changeset', '', 0),
(6, 1, '2019-01-07 10:01:04', '2019-01-07 10:01:04', '<!-- wp:image {\"id\":7} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/wordpress/wp-content/uploads/2019/01/1.jpeg\" alt=\"alternatif\" class=\"wp-image-7\"/><figcaption>légende</figcaption></figure>\n<!-- /wp:image -->', 'Test1', '', 'trash', 'open', 'open', '', 'test1__trashed', '', '', '2019-01-08 08:27:13', '2019-01-08 08:27:13', '', 0, 'http://localhost/wordpress/?p=6', 0, 'post', '', 0),
(7, 1, '2019-01-07 10:00:39', '2019-01-07 10:00:39', 'description', 'Chien title', 'légende', 'inherit', 'open', 'closed', '', '1', '', '', '2019-01-07 10:00:59', '2019-01-07 10:00:59', '', 6, 'http://localhost/wordpress/wp-content/uploads/2019/01/1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(8, 1, '2019-01-07 10:01:04', '2019-01-07 10:01:04', '<!-- wp:image {\"id\":7} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/wordpress/wp-content/uploads/2019/01/1.jpeg\" alt=\"alternatif\" class=\"wp-image-7\"/><figcaption>légende</figcaption></figure>\n<!-- /wp:image -->', 'Test1', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2019-01-07 10:01:04', '2019-01-07 10:01:04', '', 6, 'http://localhost/wordpress/index.php/2019/01/07/6-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2019-01-07 10:23:48', '2019-01-07 10:23:48', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-01-07 10:23:48', '2019-01-07 10:23:48', '', 1, 'http://localhost/wordpress/index.php/2019/01/07/1-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2019-01-07 11:09:09', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-01-07 11:09:09', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=11', 1, 'nav_menu_item', '', 0),
(12, 1, '2019-01-07 11:10:49', '2019-01-07 11:10:49', '', 'Community', '', 'publish', 'closed', 'closed', '', '12', '', '', '2019-01-07 12:56:42', '2019-01-07 12:56:42', '', 0, 'http://localhost/wordpress/?p=12', 1, 'nav_menu_item', '', 0),
(13, 1, '2019-01-07 11:10:50', '2019-01-07 11:10:50', ' ', '', '', 'publish', 'closed', 'closed', '', '13', '', '', '2019-01-07 12:56:42', '2019-01-07 12:56:42', '', 0, 'http://localhost/wordpress/?p=13', 2, 'nav_menu_item', '', 0),
(14, 1, '2019-01-07 11:10:50', '2019-01-07 11:10:50', ' ', '', '', 'publish', 'closed', 'closed', '', '14', '', '', '2019-01-07 12:56:42', '2019-01-07 12:56:42', '', 0, 'http://localhost/wordpress/?p=14', 3, 'nav_menu_item', '', 0),
(15, 1, '2019-01-07 11:10:50', '2019-01-07 11:10:50', ' ', '', '', 'publish', 'closed', 'closed', '', '15', '', '', '2019-01-07 12:56:42', '2019-01-07 12:56:42', '', 0, 'http://localhost/wordpress/?p=15', 4, 'nav_menu_item', '', 0),
(16, 1, '2019-01-07 11:10:50', '2019-01-07 11:10:50', ' ', '', '', 'publish', 'closed', 'closed', '', '16', '', '', '2019-01-07 12:56:42', '2019-01-07 12:56:42', '', 0, 'http://localhost/wordpress/?p=16', 5, 'nav_menu_item', '', 0),
(17, 1, '2019-01-08 08:30:47', '2019-01-08 08:30:47', '<!-- wp:paragraph -->\n<p> Health-conscious consumers are skilled ar deciphering nutrition facts labels. We know to monitor our sodium intke avoid carrageenan and high</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Le&nbsp;<strong>Lorem Ipsum</strong>&nbsp;est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n\'a pas fait que survivre cinq siècles, mais s\'est aussi adapté à la bureautique informatique, sans que son contenu n\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'THE && DOG FOOD LABEL TRICKS EVERY OWNER NEEDS TO KNOW', '', 'publish', 'open', 'open', '', 'the-dog-food-label-tricks-every-owner-needs-to-know', '', '', '2019-01-11 10:57:52', '2019-01-11 10:57:52', '', 0, 'http://localhost/wordpress/?p=17', 0, 'post', '', 0),
(18, 1, '2019-01-08 08:30:39', '2019-01-08 08:30:39', '', '2', '', 'inherit', 'open', 'closed', '', '2', '', '', '2019-01-08 08:30:39', '2019-01-08 08:30:39', '', 17, 'http://localhost/wordpress/wp-content/uploads/2019/01/2.jpeg', 0, 'attachment', 'image/jpeg', 0),
(19, 1, '2019-01-08 08:30:47', '2019-01-08 08:30:47', '<!-- wp:paragraph -->\n<p> Health-conscious consumers are skilled ar deciphering nutrition facts labels. We know to monitor our sodium intke avoid carrageenan and high</p>\n<!-- /wp:paragraph -->', 'THE && DOG FOOD LABEL TRICKS EVERY OWNER NEEDS TO KNOW', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2019-01-08 08:30:47', '2019-01-08 08:30:47', '', 17, 'http://localhost/wordpress/index.php/2019/01/08/17-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2019-01-08 08:32:06', '2019-01-08 08:32:06', '<!-- wp:paragraph -->\n<p> Health-conscious consumers are skilled ar deciphering nutrition facts labels. We know to monitor our sodium intke avoid carrageenan and high</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Le&nbsp;<strong>Lorem Ipsum</strong>&nbsp;est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n\'a pas fait que survivre cinq siècles, mais s\'est aussi adapté à la bureautique informatique, sans que son contenu n\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'THE && DOG FOOD LABEL TRICKS EVERY OWNER NEEDS TO KNOW', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2019-01-08 08:32:06', '2019-01-08 08:32:06', '', 17, 'http://localhost/wordpress/index.php/2019/01/08/17-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2019-01-08 08:34:27', '2019-01-08 08:34:27', '<!-- wp:paragraph -->\n<p>So you\'ve discovered the many issue with commercial pet food and have decided that a home cooked diet is much</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Le&nbsp;<strong>Lorem Ipsum</strong>&nbsp;est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n\'a pas fait que survivre cinq siècles, mais s\'est aussi adapté à la bureautique informatique, sans que son contenu n\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.</p>\n<!-- /wp:paragraph -->', 'COOKING FOR YOUR DOG, WATCH OUT FOR THESE NUTRIENT DEFICIENCIES', '', 'publish', 'open', 'open', '', 'cooking-for-your-dog-watch-out-for-these-nutrient-deficiencies', '', '', '2019-01-11 10:31:07', '2019-01-11 10:31:07', '', 0, 'http://localhost/wordpress/?p=22', 0, 'post', '', 0),
(23, 1, '2019-01-08 08:34:08', '2019-01-08 08:34:08', '', '8', '', 'inherit', 'open', 'closed', '', '8', '', '', '2019-01-08 08:34:08', '2019-01-08 08:34:08', '', 22, 'http://localhost/wordpress/wp-content/uploads/2019/01/8.jpeg', 0, 'attachment', 'image/jpeg', 0),
(24, 1, '2019-01-08 08:34:27', '2019-01-08 08:34:27', '<!-- wp:paragraph -->\n<p>So you\'ve discovered the many issue with commercial pet food and have decided that a home cooked diet is much</p>\n<!-- /wp:paragraph -->', 'COOKING FOR YOUR DOG, WATCH OUT FOR THESE NUTRIENT DEFICIENCIES', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2019-01-08 08:34:27', '2019-01-08 08:34:27', '', 22, 'http://localhost/wordpress/index.php/2019/01/08/22-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2019-01-08 08:34:54', '2019-01-08 08:34:54', '<!-- wp:paragraph -->\n<p>So you\'ve discovered the many issue with commercial pet food and have decided that a home cooked diet is much</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Le&nbsp;<strong>Lorem Ipsum</strong>&nbsp;est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n\'a pas fait que survivre cinq siècles, mais s\'est aussi adapté à la bureautique informatique, sans que son contenu n\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.</p>\n<!-- /wp:paragraph -->', 'COOKING FOR YOUR DOG, WATCH OUT FOR THESE NUTRIENT DEFICIENCIES', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2019-01-08 08:34:54', '2019-01-08 08:34:54', '', 22, 'http://localhost/wordpress/index.php/2019/01/08/22-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2019-01-08 08:37:39', '2019-01-08 08:37:39', '<!-- wp:paragraph -->\n<p>We know you love every inch ot your dog s body just the way it is, but pudge can become a Le <strong>Lorem Ipsum</strong> est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n\'a pas fait que survivre cinq siècles, mais s\'est aussi adapté à la bureautique informatique, sans que son contenu n\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.</p>\n<!-- /wp:paragraph -->', 'WHY YOU SHOULD BE FEEDING YOUR DOG SARDINES', '', 'draft', 'open', 'open', '', '', '', '', '2019-01-11 10:31:13', '2019-01-11 10:31:13', '', 0, 'http://localhost/wordpress/?p=26', 0, 'post', '', 0),
(27, 1, '2019-01-08 08:37:38', '2019-01-08 08:37:38', '', '10', '', 'inherit', 'open', 'closed', '', '10', '', '', '2019-01-08 08:37:38', '2019-01-08 08:37:38', '', 26, 'http://localhost/wordpress/wp-content/uploads/2019/01/10.jpeg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2019-01-08 08:39:01', '2019-01-08 08:39:01', '<!-- wp:paragraph -->\n<p>Whether you prefer your turkey deep fried or roasted and your potatoes mashed or sweet, Thanksgiving has one unviersal truth: Le&nbsp;<strong>Lorem Ipsum</strong>&nbsp;est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n\'a pas fait que survivre cinq siècles, mais s\'est aussi adapté à la bureautique informatique, sans que son contenu n\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.</p>\n<!-- /wp:paragraph -->', 'WHAT FAMILY REALLY MEANS TO YOUR DOG', '', 'publish', 'open', 'open', '', 'what-family-really-means-to-your-dog', '', '', '2019-01-11 10:49:59', '2019-01-11 10:49:59', '', 0, 'http://localhost/wordpress/?p=28', 0, 'post', '', 0),
(29, 1, '2019-01-08 08:39:00', '2019-01-08 08:39:00', '', '9', '', 'inherit', 'open', 'closed', '', '9', '', '', '2019-01-08 08:39:00', '2019-01-08 08:39:00', '', 28, 'http://localhost/wordpress/wp-content/uploads/2019/01/9.jpeg', 0, 'attachment', 'image/jpeg', 0),
(31, 1, '2019-01-11 10:30:53', '2019-01-11 10:30:53', '<!-- wp:paragraph -->\n<p>Whether you prefer your turkey deep fried or roasted and your potatoes mashed or sweet, Thanksgiving has one unviersal truth: Le <strong>Lorem Ipsum</strong> est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n\'a pas fait que survivre cinq siècles, mais s\'est aussi adapté à la bureautique informatique, sans que son contenu n\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.</p>\n<!-- /wp:paragraph -->', 'WHAT FAMILY REALLY MEANS TO YOUR DOG', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2019-01-11 10:30:53', '2019-01-11 10:30:53', '', 28, 'http://localhost/wordpress/index.php/2019/01/11/28-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2019-01-11 10:30:57', '2019-01-11 10:30:57', '<!-- wp:paragraph -->\n<p>We know you love every inch ot your dog s body just the way it is, but pudge can become a Le <strong>Lorem Ipsum</strong> est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n\'a pas fait que survivre cinq siècles, mais s\'est aussi adapté à la bureautique informatique, sans que son contenu n\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.</p>\n<!-- /wp:paragraph -->', 'WHY YOU SHOULD BE FEEDING YOUR DOG SARDINES', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2019-01-11 10:30:57', '2019-01-11 10:30:57', '', 26, 'http://localhost/wordpress/index.php/2019/01/11/26-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2019-01-11 10:49:59', '2019-01-11 10:49:59', '<!-- wp:paragraph -->\n<p>Whether you prefer your turkey deep fried or roasted and your potatoes mashed or sweet, Thanksgiving has one unviersal truth: Le&nbsp;<strong>Lorem Ipsum</strong>&nbsp;est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n\'a pas fait que survivre cinq siècles, mais s\'est aussi adapté à la bureautique informatique, sans que son contenu n\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.</p>\n<!-- /wp:paragraph -->', 'WHAT FAMILY REALLY MEANS TO YOUR DOG', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2019-01-11 10:49:59', '2019-01-11 10:49:59', '', 28, 'http://localhost/wordpress/index.php/2019/01/11/28-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2019-01-18 13:34:56', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-01-18 13:34:56', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=34', 0, 'post', '', 0);

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
(12, 'Wellness', 'wellness', 0);

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
(28, 1, 0);

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
(1, 1, 'category', '', 0, 3),
(2, 2, 'nav_menu', '', 0, 5),
(9, 9, 'category', '', 0, 0),
(10, 10, 'category', '', 0, 0),
(11, 11, 'category', '', 0, 0),
(12, 12, 'category', '', 0, 0);

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
(16, 1, 'session_tokens', 'a:1:{s:64:\"009a9ee122a5a798956c17da940564856b8acbe0b808ee30416781646eacaa9b\";a:4:{s:10:\"expiration\";i:1547991295;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:104:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:5:\"login\";i:1547818495;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '34'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(21, 1, 'wp_user-settings', 'libraryContent=browse'),
(22, 1, 'wp_user-settings-time', '1546855380'),
(23, 1, 'nav_menu_recently_edited', '2');

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
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;
--
-- AUTO_INCREMENT pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT pour la table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
