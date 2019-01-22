-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 22 jan. 2019 à 13:16
-- Version du serveur :  5.7.23
-- Version de PHP :  7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `foodog2`
--
CREATE DATABASE IF NOT EXISTS `foodog2` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `foodog2`;

-- --------------------------------------------------------

--
-- Structure de la table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_commentmeta`
--

INSERT INTO `wp_commentmeta` (`meta_id`, `comment_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_trash_meta_status', '1'),
(2, 2, '_wp_trash_meta_time', '1548086018');

-- --------------------------------------------------------

--
-- Structure de la table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
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
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-01-04 09:12:02', '2019-01-04 09:12:02', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0),
(2, 44, 'baptiste.bourlet@gmail.com', 'baptiste.bourlet@gmail.com', '', '::1', '2019-01-21 16:45:37', '2019-01-21 15:45:37', '', 0, 'trash', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '', 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
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
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=210 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_postmeta`
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
(76, 5, '_edit_lock', '1546874971:1'),
(77, 22, '_menu_item_type', 'custom'),
(78, 22, '_menu_item_menu_item_parent', '0'),
(79, 22, '_menu_item_object_id', '22'),
(80, 22, '_menu_item_object', 'custom'),
(81, 22, '_menu_item_target', '_blank'),
(82, 22, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(83, 22, '_menu_item_xfn', ''),
(84, 22, '_menu_item_url', 'http://localhost/wordpress'),
(85, 23, '_menu_item_type', 'custom'),
(86, 23, '_menu_item_menu_item_parent', '0'),
(87, 23, '_menu_item_object_id', '23'),
(88, 23, '_menu_item_object', 'custom'),
(89, 23, '_menu_item_target', '_blank'),
(90, 23, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(91, 23, '_menu_item_xfn', ''),
(92, 23, '_menu_item_url', 'http://localhost/wordpress'),
(93, 5, '_wp_trash_meta_status', 'publish'),
(94, 5, '_wp_trash_meta_time', '1546874973'),
(95, 26, '_wp_trash_meta_status', 'publish'),
(96, 26, '_wp_trash_meta_time', '1546875027'),
(97, 27, '_wp_trash_meta_status', 'publish'),
(98, 27, '_wp_trash_meta_time', '1546875229'),
(102, 31, '_edit_lock', '1546937083:1'),
(103, 32, '_wp_attached_file', '2019/01/Capture001.png'),
(104, 32, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:22:\"2019/01/Capture001.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"Capture001-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"Capture001-300x169.png\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"Capture001-768x432.png\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"Capture001-1024x576.png\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(105, 33, '_wp_attached_file', '2019/01/adorable-animal-breed-159541-1.jpg'),
(106, 33, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4928;s:6:\"height\";i:3264;s:4:\"file\";s:42:\"2019/01/adorable-animal-breed-159541-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:42:\"adorable-animal-breed-159541-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:42:\"adorable-animal-breed-159541-1-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:42:\"adorable-animal-breed-159541-1-768x509.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:509;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:43:\"adorable-animal-breed-159541-1-1024x678.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:678;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(109, 35, '_edit_lock', '1546937367:1'),
(110, 36, '_wp_attached_file', '2019/01/animal-cute-animals-dog-59523.jpg'),
(111, 36, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2878;s:6:\"height\";i:1871;s:4:\"file\";s:41:\"2019/01/animal-cute-animals-dog-59523.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:41:\"animal-cute-animals-dog-59523-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:41:\"animal-cute-animals-dog-59523-300x195.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:195;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:41:\"animal-cute-animals-dog-59523-768x499.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:499;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:42:\"animal-cute-animals-dog-59523-1024x666.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:666;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(114, 38, '_edit_lock', '1546937559:1'),
(115, 39, '_wp_attached_file', '2019/01/animal-blur-canine-485294.jpg'),
(116, 39, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3872;s:6:\"height\";i:2592;s:4:\"file\";s:37:\"2019/01/animal-blur-canine-485294.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"animal-blur-canine-485294-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:37:\"animal-blur-canine-485294-300x201.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:201;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:37:\"animal-blur-canine-485294-768x514.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:514;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:38:\"animal-blur-canine-485294-1024x685.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:685;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(119, 41, '_edit_lock', '1546937715:1'),
(120, 42, '_wp_attached_file', '2019/01/adorable-animal-canine-1564506.jpg'),
(121, 42, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4692;s:6:\"height\";i:3016;s:4:\"file\";s:42:\"2019/01/adorable-animal-canine-1564506.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:42:\"adorable-animal-canine-1564506-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:42:\"adorable-animal-canine-1564506-300x193.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:193;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:42:\"adorable-animal-canine-1564506-768x494.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:494;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:43:\"adorable-animal-canine-1564506-1024x658.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:658;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(124, 44, '_edit_lock', '1546938349:1'),
(125, 45, '_wp_attached_file', '2019/01/adorable-animal-breed-159541-2.jpg'),
(126, 45, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4928;s:6:\"height\";i:3264;s:4:\"file\";s:42:\"2019/01/adorable-animal-breed-159541-2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:42:\"adorable-animal-breed-159541-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:42:\"adorable-animal-breed-159541-2-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:42:\"adorable-animal-breed-159541-2-768x509.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:509;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:43:\"adorable-animal-breed-159541-2-1024x678.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:678;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(127, 44, '_oembed_17d2913e174f96f9e51f371bd42142f4', '{{unknown}}'),
(128, 47, '_edit_lock', '1547027789:1'),
(129, 48, '_menu_item_type', 'taxonomy'),
(130, 48, '_menu_item_menu_item_parent', '0'),
(131, 48, '_menu_item_object_id', '11'),
(132, 48, '_menu_item_object', 'category'),
(133, 48, '_menu_item_target', ''),
(134, 48, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(135, 48, '_menu_item_xfn', ''),
(136, 48, '_menu_item_url', ''),
(137, 49, '_menu_item_type', 'taxonomy'),
(138, 49, '_menu_item_menu_item_parent', '0'),
(139, 49, '_menu_item_object_id', '12'),
(140, 49, '_menu_item_object', 'category'),
(141, 49, '_menu_item_target', ''),
(142, 49, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(143, 49, '_menu_item_xfn', ''),
(144, 49, '_menu_item_url', ''),
(145, 50, '_menu_item_type', 'taxonomy'),
(146, 50, '_menu_item_menu_item_parent', '0'),
(147, 50, '_menu_item_object_id', '10'),
(148, 50, '_menu_item_object', 'category'),
(149, 50, '_menu_item_target', ''),
(150, 50, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(151, 50, '_menu_item_xfn', ''),
(152, 50, '_menu_item_url', ''),
(153, 51, '_menu_item_type', 'taxonomy'),
(154, 51, '_menu_item_menu_item_parent', '0'),
(155, 51, '_menu_item_object_id', '1'),
(156, 51, '_menu_item_object', 'category'),
(157, 51, '_menu_item_target', ''),
(158, 51, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(159, 51, '_menu_item_xfn', ''),
(160, 51, '_menu_item_url', ''),
(161, 47, '_wp_trash_meta_status', 'publish'),
(162, 47, '_wp_trash_meta_time', '1547027828'),
(163, 52, '_wp_trash_meta_status', 'publish'),
(164, 52, '_wp_trash_meta_time', '1547028927'),
(165, 53, '_edit_lock', '1547029295:1'),
(166, 53, '_wp_trash_meta_status', 'publish'),
(167, 53, '_wp_trash_meta_time', '1547029310'),
(168, 54, '_edit_lock', '1547029355:1'),
(169, 54, '_wp_trash_meta_status', 'publish'),
(170, 54, '_wp_trash_meta_time', '1547029374'),
(171, 55, '_wp_trash_meta_status', 'publish'),
(172, 55, '_wp_trash_meta_time', '1547031399'),
(173, 56, '_edit_lock', '1547031525:1'),
(174, 56, '_wp_trash_meta_status', 'publish'),
(175, 56, '_wp_trash_meta_time', '1547031544'),
(176, 57, '_wp_trash_meta_status', 'publish'),
(177, 57, '_wp_trash_meta_time', '1547031647'),
(180, 59, '_wp_attached_file', '2019/01/facebook.jpg'),
(181, 59, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:900;s:6:\"height\";i:620;s:4:\"file\";s:20:\"2019/01/facebook.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"facebook-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"facebook-300x207.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:207;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"facebook-768x529.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:529;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(182, 60, '_wp_attached_file', '2019/01/twitter.png'),
(183, 60, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:19:\"2019/01/twitter.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"twitter-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(184, 61, '_wp_attached_file', '2019/01/insta.jpg'),
(185, 61, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:200;s:6:\"height\";i:200;s:4:\"file\";s:17:\"2019/01/insta.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"insta-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(186, 62, '_wp_attached_file', '2019/01/logo-facebook_318-10753.jpg'),
(187, 62, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:347;s:6:\"height\";i:626;s:4:\"file\";s:35:\"2019/01/logo-facebook_318-10753.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"logo-facebook_318-10753-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"logo-facebook_318-10753-166x300.jpg\";s:5:\"width\";i:166;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(189, 64, '_wp_attached_file', '2019/01/Find01-512.png'),
(190, 64, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:22:\"2019/01/Find01-512.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"Find01-512-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"Find01-512-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(192, 65, '_wp_trash_meta_status', 'publish'),
(193, 65, '_wp_trash_meta_time', '1547456977'),
(194, 66, '_wp_attached_file', '2019/01/cropped-animal-cute-animals-dog-59523.jpg'),
(195, 66, '_wp_attachment_context', 'site-icon'),
(196, 66, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:49:\"2019/01/cropped-animal-cute-animals-dog-59523.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:49:\"cropped-animal-cute-animals-dog-59523-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:49:\"cropped-animal-cute-animals-dog-59523-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:49:\"cropped-animal-cute-animals-dog-59523-270x270.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:49:\"cropped-animal-cute-animals-dog-59523-192x192.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:49:\"cropped-animal-cute-animals-dog-59523-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:47:\"cropped-animal-cute-animals-dog-59523-32x32.jpg\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(197, 67, '_wp_attached_file', '2019/01/cropped-animal-cute-animals-dog-59523-1.jpg'),
(198, 67, '_wp_attachment_context', 'custom-logo'),
(199, 67, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1870;s:6:\"height\";i:1871;s:4:\"file\";s:51:\"2019/01/cropped-animal-cute-animals-dog-59523-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:51:\"cropped-animal-cute-animals-dog-59523-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:51:\"cropped-animal-cute-animals-dog-59523-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:51:\"cropped-animal-cute-animals-dog-59523-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:53:\"cropped-animal-cute-animals-dog-59523-1-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(200, 68, '_wp_trash_meta_status', 'publish'),
(201, 68, '_wp_trash_meta_time', '1547462433'),
(202, 69, '_edit_lock', '1547721090:1'),
(203, 69, '_customize_restore_dismissed', '1'),
(204, 71, '_edit_lock', '1547724457:1'),
(205, 71, '_customize_restore_dismissed', '1'),
(206, 72, '_edit_lock', '1547805987:1'),
(207, 72, '_customize_restore_dismissed', '1'),
(208, 73, '_wp_trash_meta_status', 'publish'),
(209, 73, '_wp_trash_meta_time', '1548086114');

-- --------------------------------------------------------

--
-- Structure de la table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
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
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-01-04 09:12:02', '2019-01-04 09:12:02', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2019-01-07 10:23:48', '2019-01-07 10:23:48', '', 0, 'http://localhost/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2019-01-04 09:12:02', '2019-01-04 09:12:02', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/wordpress/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2019-01-04 09:12:02', '2019-01-04 09:12:02', '', 0, 'http://localhost/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-01-04 09:12:02', '2019-01-04 09:12:02', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/wordpress.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2019-01-04 09:12:02', '2019-01-04 09:12:02', '', 0, 'http://localhost/wordpress/?page_id=3', 0, 'page', '', 0),
(5, 1, '2019-01-07 16:29:33', '2019-01-07 15:29:33', '{\n    \"twentynineteen::nav_menu_locations[menu-1]\": {\n        \"value\": -6462368927544345000,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-04 11:24:16\"\n    },\n    \"twentynineteen::nav_menu_locations[social]\": {\n        \"value\": -6462368927544345000,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-04 11:24:16\"\n    },\n    \"nav_menu[-6462368927544345000]\": {\n        \"value\": {\n            \"name\": \"lien r\\u00e9seau sociaux\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-04 11:24:16\"\n    },\n    \"nav_menu_item[-4881638377833691000]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"custom\",\n            \"title\": \"Facebook\",\n            \"url\": \"http://localhost/wordpress\",\n            \"target\": \"_blank\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Accueil\",\n            \"nav_menu_term_id\": -6462368927544345000,\n            \"_invalid\": false,\n            \"type_label\": \"Lien personnalis\\u00e9\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-04 11:24:16\"\n    },\n    \"nav_menu_item[-6011701114505689000]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"custom\",\n            \"title\": \"Twitter\",\n            \"url\": \"http://localhost/wordpress\",\n            \"target\": \"_blank\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Accueil\",\n            \"nav_menu_term_id\": -6462368927544345000,\n            \"_invalid\": false,\n            \"type_label\": \"Lien personnalis\\u00e9\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-04 11:24:16\"\n    },\n    \"understrap::nav_menu_locations[main-menu]\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-07 11:11:48\"\n    },\n    \"nav_menu_item[12]\": {\n        \"value\": {\n            \"object_id\": 1,\n            \"object\": \"category\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"taxonomy\",\n            \"title\": \"Community\",\n            \"url\": \"http://localhost/wordpress/index.php/category/community/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"community\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"Cat\\u00e9gorie\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-07 15:29:33\"\n    },\n    \"custom_css[understrap_child]\": {\n        \"value\": \".navbar-default {\\n\\tbackground: red;\\n}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-07 15:29:33\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '14bf276e-a763-4847-af1f-bc05e58f0ecf', '', '', '2019-01-07 16:29:33', '2019-01-07 15:29:33', '', 0, 'http://localhost/wordpress/?p=5', 0, 'customize_changeset', '', 0),
(6, 1, '2019-01-07 10:01:04', '2019-01-07 10:01:04', '<!-- wp:image {\"id\":7} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/wordpress/wp-content/uploads/2019/01/1.jpeg\" alt=\"alternatif\" class=\"wp-image-7\"/><figcaption>légende</figcaption></figure>\n<!-- /wp:image -->', 'Test1', '', 'publish', 'open', 'open', '', 'test1', '', '', '2019-01-07 10:11:56', '2019-01-07 10:11:56', '', 0, 'http://localhost/wordpress/?p=6', 0, 'post', '', 0),
(7, 1, '2019-01-07 10:00:39', '2019-01-07 10:00:39', 'description', 'Chien title', 'légende', 'inherit', 'open', 'closed', '', '1', '', '', '2019-01-07 10:00:59', '2019-01-07 10:00:59', '', 6, 'http://localhost/wordpress/wp-content/uploads/2019/01/1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(8, 1, '2019-01-07 10:01:04', '2019-01-07 10:01:04', '<!-- wp:image {\"id\":7} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/wordpress/wp-content/uploads/2019/01/1.jpeg\" alt=\"alternatif\" class=\"wp-image-7\"/><figcaption>légende</figcaption></figure>\n<!-- /wp:image -->', 'Test1', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2019-01-07 10:01:04', '2019-01-07 10:01:04', '', 6, 'http://localhost/wordpress/index.php/2019/01/07/6-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2019-01-07 10:23:48', '2019-01-07 10:23:48', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-01-07 10:23:48', '2019-01-07 10:23:48', '', 1, 'http://localhost/wordpress/index.php/2019/01/07/1-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2019-01-07 11:09:09', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-01-07 11:09:09', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=11', 1, 'nav_menu_item', '', 0),
(12, 1, '2019-01-07 11:10:49', '2019-01-07 11:10:49', '', 'Community', '', 'publish', 'closed', 'closed', '', '12', '', '', '2019-01-07 16:29:33', '2019-01-07 15:29:33', '', 0, 'http://localhost/wordpress/?p=12', 1, 'nav_menu_item', '', 0),
(13, 1, '2019-01-07 11:10:50', '2019-01-07 11:10:50', ' ', '', '', 'publish', 'closed', 'closed', '', '13', '', '', '2019-01-07 12:56:42', '2019-01-07 12:56:42', '', 0, 'http://localhost/wordpress/?p=13', 2, 'nav_menu_item', '', 0),
(14, 1, '2019-01-07 11:10:50', '2019-01-07 11:10:50', ' ', '', '', 'publish', 'closed', 'closed', '', '14', '', '', '2019-01-07 12:56:42', '2019-01-07 12:56:42', '', 0, 'http://localhost/wordpress/?p=14', 3, 'nav_menu_item', '', 0),
(15, 1, '2019-01-07 11:10:50', '2019-01-07 11:10:50', ' ', '', '', 'publish', 'closed', 'closed', '', '15', '', '', '2019-01-07 12:56:42', '2019-01-07 12:56:42', '', 0, 'http://localhost/wordpress/?p=15', 4, 'nav_menu_item', '', 0),
(16, 1, '2019-01-07 11:10:50', '2019-01-07 11:10:50', ' ', '', '', 'publish', 'closed', 'closed', '', '16', '', '', '2019-01-07 12:56:42', '2019-01-07 12:56:42', '', 0, 'http://localhost/wordpress/?p=16', 5, 'nav_menu_item', '', 0),
(22, 1, '2019-01-07 16:29:33', '2019-01-07 15:29:33', '', 'Facebook', '', 'publish', 'closed', 'closed', '', 'facebook', '', '', '2019-01-07 16:29:33', '2019-01-07 15:29:33', '', 0, 'http://localhost/foodog/2019/01/07/facebook/', 1, 'nav_menu_item', '', 0),
(23, 1, '2019-01-07 16:29:33', '2019-01-07 15:29:33', '', 'Twitter', '', 'publish', 'closed', 'closed', '', 'twitter', '', '', '2019-01-07 16:29:33', '2019-01-07 15:29:33', '', 0, 'http://localhost/foodog/2019/01/07/twitter/', 2, 'nav_menu_item', '', 0),
(24, 1, '2019-01-07 16:29:33', '2019-01-07 15:29:33', '', 'understrap_child', '', 'publish', 'closed', 'closed', '', 'understrap_child', '', '', '2019-01-07 16:33:49', '2019-01-07 15:33:49', '', 0, 'http://localhost/foodog/2019/01/07/understrap_child/', 0, 'custom_css', '', 0),
(25, 1, '2019-01-07 16:29:33', '2019-01-07 15:29:33', '.navbar-default {\n	background: red;\n}', 'understrap_child', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2019-01-07 16:29:33', '2019-01-07 15:29:33', '', 24, 'http://localhost/foodog/2019/01/07/24-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2019-01-07 16:30:27', '2019-01-07 15:30:27', '{\n    \"custom_css[understrap_child]\": {\n        \"value\": \".navbar-default {\\n\\tbackground: red;\\n}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-07 15:30:27\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c12662d8-6428-4ebb-8d26-296fb3e58abf', '', '', '2019-01-07 16:30:27', '2019-01-07 15:30:27', '', 0, 'http://localhost/foodog/2019/01/07/c12662d8-6428-4ebb-8d26-296fb3e58abf/', 0, 'customize_changeset', '', 0),
(27, 1, '2019-01-07 16:33:49', '2019-01-07 15:33:49', '{\n    \"custom_css[understrap_child]\": {\n        \"value\": \"\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-07 15:33:49\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2bd8329b-0982-476f-b384-4fb11333b8d4', '', '', '2019-01-07 16:33:49', '2019-01-07 15:33:49', '', 0, 'http://localhost/foodog/2019/01/07/2bd8329b-0982-476f-b384-4fb11333b8d4/', 0, 'customize_changeset', '', 0),
(28, 1, '2019-01-07 16:33:49', '2019-01-07 15:33:49', '', 'understrap_child', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2019-01-07 16:33:49', '2019-01-07 15:33:49', '', 24, 'http://localhost/foodog/2019/01/07/24-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2019-01-08 09:47:03', '2019-01-08 08:47:03', '<!-- wp:image {\"id\":33,\"align\":\"center\",\"width\":549,\"height\":361} -->\n<div class=\"wp-block-image\"><figure class=\"aligncenter is-resized\"><img src=\"http://localhost/foodog/wp-content/uploads/2019/01/adorable-animal-breed-159541-1-1024x678.jpg\" alt=\"\" class=\"wp-image-33\" width=\"549\" height=\"361\"/></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4>Dog\'s life</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque quas aperiam, cumque assumenda ipsam debitis voluptas, qui quam dolore molestias non. Amet, veritatis ipsum error officia at accusantium!  Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque quas aperiam, cumque assumenda ipsam debitis voluptas, qui quam dolore molestias non. Amet, veritatis ipsum error officia at accusantium! Iusto, quas. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4> Dog eat</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque quas aperiam, cumque assumenda ipsam debitis voluptas, qui quam dolore molestias non. Amet, veritatis ipsum error officia at accusantium! Iusto, quas.  Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque quas aperiam, cumque assumenda ipsam debitis voluptas, qui quam dolore molestias non. Amet, veritatis ipsum error officia at accusantium! Iusto, quas. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4>When dog playing</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque quas aperiam, cumque assumenda ipsam debitis voluptas, qui quam dolore molestias non. Amet, veritatis ipsum error officia at accusantium! Iusto, quas.  Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque quas aperiam, cumque assumenda ipsam debitis voluptas, qui quam dolore molestias non. Amet, veritatis ipsum error officia at accusantium! Iusto, quas. </p>\n<!-- /wp:paragraph -->', 'How your therapy dog can   change someone\'s life.', '', 'publish', 'open', 'open', '', 'how-your-therapy-dog-can-change-someones-life', '', '', '2019-01-08 09:47:03', '2019-01-08 08:47:03', '', 0, 'http://localhost/foodog/?p=31', 0, 'post', '', 0),
(32, 1, '2019-01-08 09:31:18', '2019-01-08 08:31:18', '', 'Capture001', '', 'inherit', 'open', 'closed', '', 'capture001', '', '', '2019-01-08 09:31:18', '2019-01-08 08:31:18', '', 31, 'http://localhost/foodog/wp-content/uploads/2019/01/Capture001.png', 0, 'attachment', 'image/png', 0),
(33, 1, '2019-01-08 09:32:10', '2019-01-08 08:32:10', '', 'adorable-animal-breed-159541', '', 'inherit', 'open', 'closed', '', 'adorable-animal-breed-159541', '', '', '2019-01-08 09:32:10', '2019-01-08 08:32:10', '', 31, 'http://localhost/foodog/wp-content/uploads/2019/01/adorable-animal-breed-159541-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(34, 1, '2019-01-08 09:47:03', '2019-01-08 08:47:03', '<!-- wp:image {\"id\":33,\"align\":\"center\",\"width\":549,\"height\":361} -->\n<div class=\"wp-block-image\"><figure class=\"aligncenter is-resized\"><img src=\"http://localhost/foodog/wp-content/uploads/2019/01/adorable-animal-breed-159541-1-1024x678.jpg\" alt=\"\" class=\"wp-image-33\" width=\"549\" height=\"361\"/></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4>Dog\'s life</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque quas aperiam, cumque assumenda ipsam debitis voluptas, qui quam dolore molestias non. Amet, veritatis ipsum error officia at accusantium!  Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque quas aperiam, cumque assumenda ipsam debitis voluptas, qui quam dolore molestias non. Amet, veritatis ipsum error officia at accusantium! Iusto, quas. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4> Dog eat</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque quas aperiam, cumque assumenda ipsam debitis voluptas, qui quam dolore molestias non. Amet, veritatis ipsum error officia at accusantium! Iusto, quas.  Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque quas aperiam, cumque assumenda ipsam debitis voluptas, qui quam dolore molestias non. Amet, veritatis ipsum error officia at accusantium! Iusto, quas. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4>When dog playing</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque quas aperiam, cumque assumenda ipsam debitis voluptas, qui quam dolore molestias non. Amet, veritatis ipsum error officia at accusantium! Iusto, quas.  Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque quas aperiam, cumque assumenda ipsam debitis voluptas, qui quam dolore molestias non. Amet, veritatis ipsum error officia at accusantium! Iusto, quas. </p>\n<!-- /wp:paragraph -->', 'How your therapy dog can   change someone\'s life.', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2019-01-08 09:47:03', '2019-01-08 08:47:03', '', 31, 'http://localhost/foodog/2019/01/08/31-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2019-01-08 09:51:48', '2019-01-08 08:51:48', '<!-- wp:image {\"id\":36} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/foodog/wp-content/uploads/2019/01/animal-cute-animals-dog-59523-1024x666.jpg\" alt=\"\" class=\"wp-image-36\"/><figcaption><br></figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4>Why dog is benefics</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque quas aperiam, cumque assumenda ipsam debitis voluptas, qui quam dolore molestias non. Amet, veritatis ipsum error officia at accusantium! Iusto, quas.  </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque quas aperiam, cumque assumenda ipsam debitis voluptas, qui quam dolore molestias non. Amet, veritatis ipsum error officia at accusantium! Iusto, quas. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4>Everyone like dogs</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque quas aperiam, cumque assumenda ipsam debitis voluptas, qui quam dolore molestias non. Amet, veritatis ipsum error officia at accusantium! Iusto, quas. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque quas aperiam, cumque assumenda ipsam debitis voluptas, qui quam dolore molestias non. Amet, veritatis ipsum error officia at accusantium! Iusto, quas. </p>\n<!-- /wp:paragraph -->', 'Working like a dog : benefics of dog in a office', '', 'publish', 'open', 'open', '', 'working-like-a-dog-benefics-of-dog-in-a-office', '', '', '2019-01-08 09:51:48', '2019-01-08 08:51:48', '', 0, 'http://localhost/foodog/?p=35', 0, 'post', '', 0),
(36, 1, '2019-01-08 09:48:13', '2019-01-08 08:48:13', '', 'animal-cute-animals-dog-59523', '', 'inherit', 'open', 'closed', '', 'animal-cute-animals-dog-59523', '', '', '2019-01-08 09:48:13', '2019-01-08 08:48:13', '', 35, 'http://localhost/foodog/wp-content/uploads/2019/01/animal-cute-animals-dog-59523.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2019-01-08 09:51:48', '2019-01-08 08:51:48', '<!-- wp:image {\"id\":36} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/foodog/wp-content/uploads/2019/01/animal-cute-animals-dog-59523-1024x666.jpg\" alt=\"\" class=\"wp-image-36\"/><figcaption><br></figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4>Why dog is benefics</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque quas aperiam, cumque assumenda ipsam debitis voluptas, qui quam dolore molestias non. Amet, veritatis ipsum error officia at accusantium! Iusto, quas.  </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque quas aperiam, cumque assumenda ipsam debitis voluptas, qui quam dolore molestias non. Amet, veritatis ipsum error officia at accusantium! Iusto, quas. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4>Everyone like dogs</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque quas aperiam, cumque assumenda ipsam debitis voluptas, qui quam dolore molestias non. Amet, veritatis ipsum error officia at accusantium! Iusto, quas. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque quas aperiam, cumque assumenda ipsam debitis voluptas, qui quam dolore molestias non. Amet, veritatis ipsum error officia at accusantium! Iusto, quas. </p>\n<!-- /wp:paragraph -->', 'Working like a dog : benefics of dog in a office', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2019-01-08 09:51:48', '2019-01-08 08:51:48', '', 35, 'http://localhost/foodog/2019/01/08/35-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2019-01-08 09:55:00', '2019-01-08 08:55:00', '<!-- wp:image {\"id\":39} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/foodog/wp-content/uploads/2019/01/animal-blur-canine-485294-1024x685.jpg\" alt=\"\" class=\"wp-image-39\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4>What your dog prefer</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque quas aperiam, cumque assumenda ipsam debitis voluptas, qui quam dolore molestias non. Amet, veritatis ipsum error officia at accusantium! Iusto, quas. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque quas aperiam, cumque assumenda ipsam debitis voluptas, qui quam dolore molestias non. Amet, veritatis ipsum error officia at accusantium! Iusto, quas. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4>All what you can for help him</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque quas aperiam, cumque assumenda ipsam debitis voluptas, qui quam dolore molestias non. Amet, veritatis ipsum error officia at accusantium! Iusto, quas.  Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque quas aperiam, cumque assumenda ipsam debitis voluptas, qui quam dolore molestias non. Amet, veritatis ipsum error officia at accusantium! Iusto, quas. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque quas aperiam, cumque assumenda ipsam debitis voluptas, qui quam dolore molestias non. Amet, veritatis ipsum error officia at accusantium! Iusto, quas. </p>\n<!-- /wp:paragraph -->', 'What family really means to your dog', '', 'publish', 'open', 'open', '', 'what-family-really-means-to-your-dog', '', '', '2019-01-08 09:55:00', '2019-01-08 08:55:00', '', 0, 'http://localhost/foodog/?p=38', 0, 'post', '', 0),
(39, 1, '2019-01-08 09:53:01', '2019-01-08 08:53:01', '', 'animal-blur-canine-485294', '', 'inherit', 'open', 'closed', '', 'animal-blur-canine-485294', '', '', '2019-01-08 09:53:01', '2019-01-08 08:53:01', '', 38, 'http://localhost/foodog/wp-content/uploads/2019/01/animal-blur-canine-485294.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2019-01-08 09:55:00', '2019-01-08 08:55:00', '<!-- wp:image {\"id\":39} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/foodog/wp-content/uploads/2019/01/animal-blur-canine-485294-1024x685.jpg\" alt=\"\" class=\"wp-image-39\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4>What your dog prefer</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque quas aperiam, cumque assumenda ipsam debitis voluptas, qui quam dolore molestias non. Amet, veritatis ipsum error officia at accusantium! Iusto, quas. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque quas aperiam, cumque assumenda ipsam debitis voluptas, qui quam dolore molestias non. Amet, veritatis ipsum error officia at accusantium! Iusto, quas. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4>All what you can for help him</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque quas aperiam, cumque assumenda ipsam debitis voluptas, qui quam dolore molestias non. Amet, veritatis ipsum error officia at accusantium! Iusto, quas.  Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque quas aperiam, cumque assumenda ipsam debitis voluptas, qui quam dolore molestias non. Amet, veritatis ipsum error officia at accusantium! Iusto, quas. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque quas aperiam, cumque assumenda ipsam debitis voluptas, qui quam dolore molestias non. Amet, veritatis ipsum error officia at accusantium! Iusto, quas. </p>\n<!-- /wp:paragraph -->', 'What family really means to your dog', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2019-01-08 09:55:00', '2019-01-08 08:55:00', '', 38, 'http://localhost/foodog/2019/01/08/38-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2019-01-08 09:57:18', '2019-01-08 08:57:18', '<!-- wp:image {\"id\":42} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/foodog/wp-content/uploads/2019/01/adorable-animal-canine-1564506-1024x658.jpg\" alt=\"\" class=\"wp-image-42\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4>Hasard title</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque quas aperiam, cumque assumenda ipsam debitis voluptas, qui quam dolore molestias non. Amet, veritatis ipsum error officia at accusantium! Iusto, quas. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque quas aperiam, cumque assumenda ipsam debitis voluptas, qui quam dolore molestias non. Amet, veritatis ipsum error officia at accusantium! Iusto, quas. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4>Other hasard title</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque quas aperiam, cumque assumenda ipsam debitis voluptas, qui quam dolore molestias non. Amet, veritatis ipsum error officia at accusantium! Iusto, quas. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque quas aperiam, cumque assumenda ipsam debitis voluptas, qui quam dolore molestias non. Amet, veritatis ipsum error officia at accusantium! Iusto, quas. </p>\n<!-- /wp:paragraph -->', 'How to keep your dog running away', '', 'publish', 'open', 'open', '', 'how-to-keep-your-dog-running-away', '', '', '2019-01-08 09:57:18', '2019-01-08 08:57:18', '', 0, 'http://localhost/foodog/?p=41', 0, 'post', '', 0),
(42, 1, '2019-01-08 09:55:58', '2019-01-08 08:55:58', '', 'adorable-animal-canine-1564506', '', 'inherit', 'open', 'closed', '', 'adorable-animal-canine-1564506', '', '', '2019-01-08 09:55:58', '2019-01-08 08:55:58', '', 41, 'http://localhost/foodog/wp-content/uploads/2019/01/adorable-animal-canine-1564506.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2019-01-08 09:57:18', '2019-01-08 08:57:18', '<!-- wp:image {\"id\":42} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/foodog/wp-content/uploads/2019/01/adorable-animal-canine-1564506-1024x658.jpg\" alt=\"\" class=\"wp-image-42\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4>Hasard title</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque quas aperiam, cumque assumenda ipsam debitis voluptas, qui quam dolore molestias non. Amet, veritatis ipsum error officia at accusantium! Iusto, quas. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque quas aperiam, cumque assumenda ipsam debitis voluptas, qui quam dolore molestias non. Amet, veritatis ipsum error officia at accusantium! Iusto, quas. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4>Other hasard title</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque quas aperiam, cumque assumenda ipsam debitis voluptas, qui quam dolore molestias non. Amet, veritatis ipsum error officia at accusantium! Iusto, quas. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque quas aperiam, cumque assumenda ipsam debitis voluptas, qui quam dolore molestias non. Amet, veritatis ipsum error officia at accusantium! Iusto, quas. </p>\n<!-- /wp:paragraph -->', 'How to keep your dog running away', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2019-01-08 09:57:18', '2019-01-08 08:57:18', '', 41, 'http://localhost/foodog/2019/01/08/41-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2019-01-08 10:08:07', '2019-01-08 09:08:07', '<!-- wp:image {\"id\":45} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/foodog/wp-content/uploads/2019/01/adorable-animal-breed-159541-2-1024x678.jpg\" alt=\"\" class=\"wp-image-45\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4>Why dog\'s playing</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque quas aperiam, cumque assumenda ipsam debitis voluptas, qui quam dolore molestias non. Amet, veritatis ipsum error officia at accusantium! Iusto, quas. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque quas aperiam, cumque assumenda ipsam debitis voluptas, qui quam dolore molestias non. Amet, veritatis ipsum error officia at accusantium! Iusto, quas. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4>Why dogs never want to play whith me</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque quas aperiam, cumque assumenda ipsam debitis voluptas, qui quam dolore molestias non. Amet, veritatis ipsum error officia at accusantium! Iusto, quas. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque quas aperiam, cumque assumenda ipsam debitis voluptas, qui quam dolore molestias non. Amet, veritatis ipsum error officia at accusantium! Iusto, quas. </p>\n<!-- /wp:paragraph -->', 'How to keep your dog\'s skin and coat healthy', '', 'publish', 'open', 'open', '', 'how-to-keep-your-dogs-skin-and-coat-healthy', '', '', '2019-01-08 10:08:07', '2019-01-08 09:08:07', '', 0, 'http://localhost/foodog/?p=44', 0, 'post', '', 0),
(45, 1, '2019-01-08 10:04:09', '2019-01-08 09:04:09', '', 'adorable-animal-breed-159541', '', 'inherit', 'open', 'closed', '', 'adorable-animal-breed-159541-2', '', '', '2019-01-08 10:04:09', '2019-01-08 09:04:09', '', 44, 'http://localhost/foodog/wp-content/uploads/2019/01/adorable-animal-breed-159541-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2019-01-08 10:08:07', '2019-01-08 09:08:07', '<!-- wp:image {\"id\":45} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/foodog/wp-content/uploads/2019/01/adorable-animal-breed-159541-2-1024x678.jpg\" alt=\"\" class=\"wp-image-45\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4>Why dog\'s playing</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque quas aperiam, cumque assumenda ipsam debitis voluptas, qui quam dolore molestias non. Amet, veritatis ipsum error officia at accusantium! Iusto, quas. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque quas aperiam, cumque assumenda ipsam debitis voluptas, qui quam dolore molestias non. Amet, veritatis ipsum error officia at accusantium! Iusto, quas. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4>Why dogs never want to play whith me</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque quas aperiam, cumque assumenda ipsam debitis voluptas, qui quam dolore molestias non. Amet, veritatis ipsum error officia at accusantium! Iusto, quas. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque quas aperiam, cumque assumenda ipsam debitis voluptas, qui quam dolore molestias non. Amet, veritatis ipsum error officia at accusantium! Iusto, quas. </p>\n<!-- /wp:paragraph -->', 'How to keep your dog\'s skin and coat healthy', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2019-01-08 10:08:07', '2019-01-08 09:08:07', '', 44, 'http://localhost/foodog/2019/01/08/44-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2019-01-09 10:57:07', '2019-01-09 09:57:07', '{\n    \"understrap_child::nav_menu_locations[primary]\": {\n        \"value\": -206133246702022660,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-09 09:56:21\"\n    },\n    \"nav_menu[-206133246702022660]\": {\n        \"value\": {\n            \"name\": \"menuHead\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-09 09:56:21\"\n    },\n    \"nav_menu_item[-2297993517070495700]\": {\n        \"value\": {\n            \"object_id\": 11,\n            \"object\": \"category\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"taxonomy\",\n            \"title\": \"Nutrition\",\n            \"url\": \"http://localhost/foodog/category/nutrition/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Nutrition\",\n            \"nav_menu_term_id\": -206133246702022660,\n            \"_invalid\": false,\n            \"type_label\": \"Cat\\u00e9gorie\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-09 09:57:07\"\n    },\n    \"nav_menu_item[-3925639110007965700]\": {\n        \"value\": {\n            \"object_id\": 12,\n            \"object\": \"category\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"taxonomy\",\n            \"title\": \"Wellness\",\n            \"url\": \"http://localhost/foodog/category/wellness/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Wellness\",\n            \"nav_menu_term_id\": -206133246702022660,\n            \"_invalid\": false,\n            \"type_label\": \"Cat\\u00e9gorie\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-09 09:57:07\"\n    },\n    \"nav_menu_item[-4255551063119487000]\": {\n        \"value\": {\n            \"object_id\": 10,\n            \"object\": \"category\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"taxonomy\",\n            \"title\": \"Lifestyle\",\n            \"url\": \"http://localhost/foodog/category/lifestyle/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Lifestyle\",\n            \"nav_menu_term_id\": -206133246702022660,\n            \"_invalid\": false,\n            \"type_label\": \"Cat\\u00e9gorie\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-09 09:57:07\"\n    },\n    \"nav_menu_item[-921688726695235600]\": {\n        \"value\": {\n            \"object_id\": 1,\n            \"object\": \"category\",\n            \"menu_item_parent\": 0,\n            \"position\": 4,\n            \"type\": \"taxonomy\",\n            \"title\": \"community\",\n            \"url\": \"http://localhost/foodog/category/community/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"community\",\n            \"nav_menu_term_id\": -206133246702022660,\n            \"_invalid\": false,\n            \"type_label\": \"Cat\\u00e9gorie\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-09 09:57:07\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9acc7021-c74c-484c-90fc-f1a92d8d6955', '', '', '2019-01-09 10:57:07', '2019-01-09 09:57:07', '', 0, 'http://localhost/foodog/?p=47', 0, 'customize_changeset', '', 0),
(48, 1, '2019-01-09 10:57:08', '2019-01-09 09:57:08', ' ', '', '', 'publish', 'closed', 'closed', '', '48', '', '', '2019-01-09 11:21:50', '2019-01-09 10:21:50', '', 0, 'http://localhost/foodog/2019/01/09/48/', 1, 'nav_menu_item', '', 0),
(49, 1, '2019-01-09 10:57:08', '2019-01-09 09:57:08', ' ', '', '', 'publish', 'closed', 'closed', '', '49', '', '', '2019-01-09 11:21:50', '2019-01-09 10:21:50', '', 0, 'http://localhost/foodog/2019/01/09/49/', 3, 'nav_menu_item', '', 0),
(50, 1, '2019-01-09 10:57:08', '2019-01-09 09:57:08', ' ', '', '', 'publish', 'closed', 'closed', '', '50', '', '', '2019-01-09 11:21:50', '2019-01-09 10:21:50', '', 0, 'http://localhost/foodog/2019/01/09/50/', 2, 'nav_menu_item', '', 0),
(51, 1, '2019-01-09 10:57:08', '2019-01-09 09:57:08', ' ', '', '', 'publish', 'closed', 'closed', '', '51', '', '', '2019-01-09 11:21:50', '2019-01-09 10:21:50', '', 0, 'http://localhost/foodog/2019/01/09/51/', 6, 'nav_menu_item', '', 0),
(52, 1, '2019-01-09 11:15:27', '2019-01-09 10:15:27', '{\n    \"understrap_child::nav_menu_locations[primary]\": {\n        \"value\": 14,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-09 10:15:27\"\n    },\n    \"nav_menu[14]\": {\n        \"value\": {\n            \"name\": \"menuHead\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-09 10:15:27\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6b3fa704-386b-43db-9a8d-2fb519d9f811', '', '', '2019-01-09 11:15:27', '2019-01-09 10:15:27', '', 0, 'http://localhost/foodog/2019/01/09/6b3fa704-386b-43db-9a8d-2fb519d9f811/', 0, 'customize_changeset', '', 0),
(53, 1, '2019-01-09 11:21:50', '2019-01-09 10:21:50', '{\n    \"nav_menu_item[48]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 11,\n            \"object\": \"category\",\n            \"type\": \"taxonomy\",\n            \"type_label\": \"Cat\\u00e9gorie\",\n            \"url\": \"http://localhost/foodog/category/nutrition/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 14,\n            \"position\": 1,\n            \"status\": \"publish\",\n            \"original_title\": \"Nutrition\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-09 10:21:17\"\n    },\n    \"nav_menu_item[49]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 12,\n            \"object\": \"category\",\n            \"type\": \"taxonomy\",\n            \"type_label\": \"Cat\\u00e9gorie\",\n            \"url\": \"http://localhost/foodog/category/wellness/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 14,\n            \"position\": 3,\n            \"status\": \"publish\",\n            \"original_title\": \"Wellness\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-09 10:21:50\"\n    },\n    \"nav_menu_item[50]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 10,\n            \"object\": \"category\",\n            \"type\": \"taxonomy\",\n            \"type_label\": \"Cat\\u00e9gorie\",\n            \"url\": \"http://localhost/foodog/category/lifestyle/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 14,\n            \"position\": 2,\n            \"status\": \"publish\",\n            \"original_title\": \"Lifestyle\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-09 10:21:50\"\n    },\n    \"understrap_child::nav_menu_locations[primary]\": {\n        \"value\": 14,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-09 10:21:50\"\n    },\n    \"nav_menu_item[51]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 1,\n            \"object\": \"category\",\n            \"type\": \"taxonomy\",\n            \"type_label\": \"Cat\\u00e9gorie\",\n            \"url\": \"http://localhost/foodog/category/community/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 14,\n            \"position\": 6,\n            \"status\": \"publish\",\n            \"original_title\": \"community\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-09 10:21:50\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '34a68585-3936-4f9f-bb81-b8dbd37fc3a0', '', '', '2019-01-09 11:21:50', '2019-01-09 10:21:50', '', 0, 'http://localhost/foodog/?p=53', 0, 'customize_changeset', '', 0),
(54, 1, '2019-01-09 11:22:54', '2019-01-09 10:22:54', '{\n    \"nav_menu[14]\": {\n        \"value\": {\n            \"name\": \"menuhead\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-09 10:22:54\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f9467016-cf82-4f31-97df-6e7e1bcdf606', '', '', '2019-01-09 11:22:54', '2019-01-09 10:22:54', '', 0, 'http://localhost/foodog/?p=54', 0, 'customize_changeset', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(55, 1, '2019-01-09 11:56:39', '2019-01-09 10:56:39', '{\n    \"widget_archives[2]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTozOntzOjU6InRpdGxlIjtzOjA6IiI7czo1OiJjb3VudCI7aTowO3M6ODoiZHJvcGRvd24iO2k6MDt9\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"88c63769df4325aa503f10781134ba7b\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-09 10:56:39\"\n    },\n    \"widget_recent-posts[2]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTozOntzOjU6InRpdGxlIjtzOjA6IiI7czo2OiJudW1iZXIiO2k6NTtzOjk6InNob3dfZGF0ZSI7YjowO30=\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"2a26a3f7bdadcfcd213aec542f1c28a1\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-09 10:56:39\"\n    },\n    \"sidebars_widgets[right-sidebar]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-09 10:56:39\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '060a195d-9c8b-4be0-ad29-0c24fce02219', '', '', '2019-01-09 11:56:39', '2019-01-09 10:56:39', '', 0, 'http://localhost/foodog/2019/01/09/060a195d-9c8b-4be0-ad29-0c24fce02219/', 0, 'customize_changeset', '', 0),
(56, 1, '2019-01-09 11:59:04', '2019-01-09 10:59:04', '{\n    \"sidebars_widgets[statichero]\": {\n        \"value\": [\n            \"recent-posts-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-09 10:58:00\"\n    },\n    \"widget_recent-posts[4]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTozOntzOjU6InRpdGxlIjtzOjA6IiI7czo2OiJudW1iZXIiO2k6NTtzOjk6InNob3dfZGF0ZSI7YjowO30=\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"2a26a3f7bdadcfcd213aec542f1c28a1\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-09 10:58:00\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '454d5f3c-bfcc-43c7-b669-d21df7e42efc', '', '', '2019-01-09 11:59:04', '2019-01-09 10:59:04', '', 0, 'http://localhost/foodog/?p=56', 0, 'customize_changeset', '', 0),
(57, 1, '2019-01-09 12:00:47', '2019-01-09 11:00:47', '{\n    \"understrap_child::understrap_container_type\": {\n        \"value\": \"container\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-09 11:00:47\"\n    },\n    \"understrap_child::understrap_sidebar_position\": {\n        \"value\": \"right\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-09 11:00:47\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '66f5bce3-3065-4cfa-9421-00177722da64', '', '', '2019-01-09 12:00:47', '2019-01-09 11:00:47', '', 0, 'http://localhost/foodog/2019/01/09/66f5bce3-3065-4cfa-9421-00177722da64/', 0, 'customize_changeset', '', 0),
(59, 1, '2019-01-11 11:34:01', '2019-01-11 10:34:01', '', 'facebook', '', 'inherit', 'open', 'closed', '', 'facebook-2', '', '', '2019-01-11 11:34:01', '2019-01-11 10:34:01', '', 0, 'http://localhost/foodog/wp-content/uploads/2019/01/facebook.jpg', 0, 'attachment', 'image/jpeg', 0),
(60, 1, '2019-01-11 11:34:25', '2019-01-11 10:34:25', '', 'twitter', '', 'inherit', 'open', 'closed', '', 'twitter-2', '', '', '2019-01-11 11:34:25', '2019-01-11 10:34:25', '', 0, 'http://localhost/foodog/wp-content/uploads/2019/01/twitter.png', 0, 'attachment', 'image/png', 0),
(61, 1, '2019-01-11 11:35:18', '2019-01-11 10:35:18', '', 'insta', '', 'inherit', 'open', 'closed', '', 'insta', '', '', '2019-01-11 11:35:18', '2019-01-11 10:35:18', '', 0, 'http://localhost/foodog/wp-content/uploads/2019/01/insta.jpg', 0, 'attachment', 'image/jpeg', 0),
(62, 1, '2019-01-11 11:37:29', '2019-01-11 10:37:29', '', 'logo-facebook_318-10753', '', 'inherit', 'open', 'closed', '', 'logo-facebook_318-10753', '', '', '2019-01-11 11:37:29', '2019-01-11 10:37:29', '', 0, 'http://localhost/foodog/wp-content/uploads/2019/01/logo-facebook_318-10753.jpg', 0, 'attachment', 'image/jpeg', 0),
(64, 1, '2019-01-14 09:22:34', '2019-01-14 08:22:34', '', 'Find01-512', '', 'inherit', 'open', 'closed', '', 'find01-512', '', '', '2019-01-14 09:22:34', '2019-01-14 08:22:34', '', 0, 'http://localhost/foodog/wp-content/uploads/2019/01/Find01-512.png', 0, 'attachment', 'image/png', 0),
(65, 1, '2019-01-14 10:09:37', '2019-01-14 09:09:37', '{\n    \"understrap_child::understrap_container_type\": {\n        \"value\": \"container\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-14 09:09:37\"\n    },\n    \"understrap_child::understrap_sidebar_position\": {\n        \"value\": \"right\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-14 09:09:37\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '5c2d1069-58b6-4b9e-99b4-c4a86314dcb3', '', '', '2019-01-14 10:09:37', '2019-01-14 09:09:37', '', 0, 'http://localhost/foodog/2019/01/14/5c2d1069-58b6-4b9e-99b4-c4a86314dcb3/', 0, 'customize_changeset', '', 0),
(66, 1, '2019-01-14 11:39:45', '2019-01-14 10:39:45', 'http://localhost/foodog/wp-content/uploads/2019/01/cropped-animal-cute-animals-dog-59523.jpg', 'cropped-animal-cute-animals-dog-59523.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-animal-cute-animals-dog-59523-jpg', '', '', '2019-01-14 11:39:45', '2019-01-14 10:39:45', '', 0, 'http://localhost/foodog/wp-content/uploads/2019/01/cropped-animal-cute-animals-dog-59523.jpg', 0, 'attachment', 'image/jpeg', 0),
(67, 1, '2019-01-14 11:40:21', '2019-01-14 10:40:21', 'http://localhost/foodog/wp-content/uploads/2019/01/cropped-animal-cute-animals-dog-59523-1.jpg', 'cropped-animal-cute-animals-dog-59523-1.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-animal-cute-animals-dog-59523-1-jpg', '', '', '2019-01-14 11:40:21', '2019-01-14 10:40:21', '', 0, 'http://localhost/foodog/wp-content/uploads/2019/01/cropped-animal-cute-animals-dog-59523-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(68, 1, '2019-01-14 11:40:33', '2019-01-14 10:40:33', '{\n    \"site_icon\": {\n        \"value\": 66,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-14 10:40:33\"\n    },\n    \"understrap_child::custom_logo\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-14 10:40:33\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '07023837-14ed-463f-a1fc-62e566b90ea6', '', '', '2019-01-14 11:40:33', '2019-01-14 10:40:33', '', 0, 'http://localhost/foodog/2019/01/14/07023837-14ed-463f-a1fc-62e566b90ea6/', 0, 'customize_changeset', '', 0),
(69, 1, '2019-01-17 11:31:30', '0000-00-00 00:00:00', '{\n    \"sidebars_widgets[hero]\": {\n        \"value\": [\n            \"search-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-17 10:31:30\"\n    },\n    \"widget_search[4]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-17 10:31:30\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'c6184b70-2894-46da-a88b-8f131fdc13c0', '', '', '2019-01-17 11:31:30', '0000-00-00 00:00:00', '', 0, 'http://localhost/foodog/?p=69', 0, 'customize_changeset', '', 0),
(70, 1, '2019-01-17 11:43:03', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-01-17 11:43:03', '0000-00-00 00:00:00', '', 0, 'http://localhost/foodog/?p=70', 0, 'post', '', 0),
(71, 1, '2019-01-17 12:26:36', '0000-00-00 00:00:00', '{\n    \"sidebars_widgets[right-sidebar]\": {\n        \"value\": [\n            \"categories-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-17 11:26:36\"\n    },\n    \"widget_categories[4]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-17 11:26:36\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '895d93d9-b698-4b10-a2e8-6f8403925833', '', '', '2019-01-17 12:26:36', '0000-00-00 00:00:00', '', 0, 'http://localhost/foodog/?p=71', 0, 'customize_changeset', '', 0),
(72, 1, '2019-01-17 14:57:31', '0000-00-00 00:00:00', '{\n    \"sidebars_widgets[right-sidebar]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-17 13:57:31\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'b78fb54d-2d7b-42df-8562-8652633f32b1', '', '', '2019-01-17 14:57:31', '0000-00-00 00:00:00', '', 0, 'http://localhost/foodog/?p=72', 0, 'customize_changeset', '', 0),
(73, 1, '2019-01-21 16:55:14', '2019-01-21 15:55:14', '{\n    \"sidebars_widgets[right-sidebar]\": {\n        \"value\": [\n            \"recent-posts-2\",\n            \"recent-comments-2\",\n            \"meta-2\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-21 15:55:14\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'cf4dff62-56b1-41db-8486-9ff838da8a2e', '', '', '2019-01-21 16:55:14', '2019-01-21 15:55:14', '', 0, 'http://localhost/foodog/2019/01/21/cf4dff62-56b1-41db-8486-9ff838da8a2e/', 0, 'customize_changeset', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'community', 'community', 0),
(2, 'Footer', 'footer', 0),
(9, 'Featured', 'featured', 0),
(10, 'Lifestyle', 'lifestyle', 0),
(11, 'Nutrition', 'nutrition', 0),
(12, 'Wellness', 'wellness', 0),
(13, 'lien réseau sociaux', 'lien-reseau-sociaux', 0),
(14, 'menuhead', 'menuhead', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(6, 1, 0),
(12, 2, 0),
(13, 2, 0),
(14, 2, 0),
(15, 2, 0),
(16, 2, 0),
(22, 13, 0),
(23, 13, 0),
(31, 10, 0),
(35, 12, 0),
(38, 9, 0),
(41, 9, 0),
(44, 9, 0),
(48, 14, 0),
(49, 14, 0),
(50, 14, 0),
(51, 14, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 5),
(9, 9, 'category', '', 0, 3),
(10, 10, 'category', '', 0, 1),
(11, 11, 'category', '', 0, 0),
(12, 12, 'category', '', 0, 1),
(13, 13, 'nav_menu', '', 0, 2),
(14, 14, 'nav_menu', '', 0, 4);

-- --------------------------------------------------------

--
-- Structure de la table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'baptiste.bourlet@gmail.com'),
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
(16, 1, 'session_tokens', 'a:1:{s:64:\"c09b65b0f4b6352598c3c2ada43cea6916b1e09606f10061c1ef5fe0f8dd922d\";a:4:{s:10:\"expiration\";i:1548237480;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:5:\"login\";i:1548064680;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '70'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:2:\"::\";}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse'),
(20, 1, 'wp_user-settings-time', '1546853106'),
(21, 1, 'nav_menu_recently_edited', '2'),
(22, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(23, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}');

-- --------------------------------------------------------

--
-- Structure de la table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'baptiste.bourlet@gmail.com', '$P$BUmKSKe8zT8OUW9K/cDAqjPuHPT6Go.', 'baptiste-bourletgmail-com', 'baptiste.bourlet@gmail.com', '', '2019-01-07 08:47:27', '', 0, 'baptiste.bourlet@gmail.com');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
