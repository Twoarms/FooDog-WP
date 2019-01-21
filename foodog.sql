-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Lun 21 Janvier 2019 à 10:47
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

UPDATE IGNORE `wp_comments` SET `comment_ID` = 1,`comment_post_ID` = 1,`comment_author` = 'A WordPress Commenter',`comment_author_email` = 'wapuu@wordpress.example',`comment_author_url` = 'https://wordpress.org/',`comment_author_IP` = '',`comment_date` = '2019-01-04 09:12:02',`comment_date_gmt` = '2019-01-04 09:12:02',`comment_content` = 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',`comment_karma` = 0,`comment_approved` = 'post-trashed',`comment_agent` = '',`comment_type` = '',`comment_parent` = 0,`user_id` = 0 WHERE `wp_comments`.`comment_ID` = 1;

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

UPDATE IGNORE `wp_postmeta` SET `meta_id` = 1,`post_id` = 2,`meta_key` = '_wp_page_template',`meta_value` = 'default' WHERE `wp_postmeta`.`meta_id` = 1;
UPDATE IGNORE `wp_postmeta` SET `meta_id` = 2,`post_id` = 3,`meta_key` = '_wp_page_template',`meta_value` = 'default' WHERE `wp_postmeta`.`meta_id` = 2;
UPDATE IGNORE `wp_postmeta` SET `meta_id` = 4,`post_id` = 6,`meta_key` = '_edit_lock',`meta_value` = '1546855773:1' WHERE `wp_postmeta`.`meta_id` = 4;
UPDATE IGNORE `wp_postmeta` SET `meta_id` = 5,`post_id` = 7,`meta_key` = '_wp_attached_file',`meta_value` = '2019/01/1.jpeg' WHERE `wp_postmeta`.`meta_id` = 5;
UPDATE IGNORE `wp_postmeta` SET `meta_id` = 6,`post_id` = 7,`meta_key` = '_wp_attachment_metadata',`meta_value` = 'a:5:{s:5:\"width\";i:660;s:6:\"height\";i:919;s:4:\"file\";s:14:\"2019/01/1.jpeg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"1-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"1-215x300.jpeg\";s:5:\"width\";i:215;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"single-post\";a:4:{s:4:\"file\";s:14:\"1-180x250.jpeg\";s:5:\"width\";i:180;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"footer-post\";a:4:{s:4:\"file\";s:13:\"1-72x100.jpeg\";s:5:\"width\";i:72;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"Hero-one\";a:4:{s:4:\"file\";s:14:\"1-230x320.jpeg\";s:5:\"width\";i:230;s:6:\"height\";i:320;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"Hero-post\";a:4:{s:4:\"file\";s:14:\"1-115x160.jpeg\";s:5:\"width\";i:115;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}' WHERE `wp_postmeta`.`meta_id` = 6;
UPDATE IGNORE `wp_postmeta` SET `meta_id` = 7,`post_id` = 7,`meta_key` = '_wp_attachment_image_alt',`meta_value` = 'alternatif' WHERE `wp_postmeta`.`meta_id` = 7;
UPDATE IGNORE `wp_postmeta` SET `meta_id` = 12,`post_id` = 6,`meta_key` = '_thumbnail_id',`meta_value` = '7' WHERE `wp_postmeta`.`meta_id` = 12;
UPDATE IGNORE `wp_postmeta` SET `meta_id` = 13,`post_id` = 1,`meta_key` = '_wp_trash_meta_status',`meta_value` = 'publish' WHERE `wp_postmeta`.`meta_id` = 13;
UPDATE IGNORE `wp_postmeta` SET `meta_id` = 14,`post_id` = 1,`meta_key` = '_wp_trash_meta_time',`meta_value` = '1546856628' WHERE `wp_postmeta`.`meta_id` = 14;
UPDATE IGNORE `wp_postmeta` SET `meta_id` = 15,`post_id` = 1,`meta_key` = '_wp_desired_post_slug',`meta_value` = 'hello-world' WHERE `wp_postmeta`.`meta_id` = 15;
UPDATE IGNORE `wp_postmeta` SET `meta_id` = 16,`post_id` = 1,`meta_key` = '_wp_trash_meta_comments_status',`meta_value` = 'a:1:{i:1;s:1:\"1\";}' WHERE `wp_postmeta`.`meta_id` = 16;
UPDATE IGNORE `wp_postmeta` SET `meta_id` = 18,`post_id` = 11,`meta_key` = '_menu_item_type',`meta_value` = 'taxonomy' WHERE `wp_postmeta`.`meta_id` = 18;
UPDATE IGNORE `wp_postmeta` SET `meta_id` = 19,`post_id` = 11,`meta_key` = '_menu_item_menu_item_parent',`meta_value` = '0' WHERE `wp_postmeta`.`meta_id` = 19;
UPDATE IGNORE `wp_postmeta` SET `meta_id` = 20,`post_id` = 11,`meta_key` = '_menu_item_object_id',`meta_value` = '1' WHERE `wp_postmeta`.`meta_id` = 20;
UPDATE IGNORE `wp_postmeta` SET `meta_id` = 21,`post_id` = 11,`meta_key` = '_menu_item_object',`meta_value` = 'category' WHERE `wp_postmeta`.`meta_id` = 21;
UPDATE IGNORE `wp_postmeta` SET `meta_id` = 22,`post_id` = 11,`meta_key` = '_menu_item_target',`meta_value` = '' WHERE `wp_postmeta`.`meta_id` = 22;
UPDATE IGNORE `wp_postmeta` SET `meta_id` = 23,`post_id` = 11,`meta_key` = '_menu_item_classes',`meta_value` = 'a:1:{i:0;s:0:\"\";}' WHERE `wp_postmeta`.`meta_id` = 23;
UPDATE IGNORE `wp_postmeta` SET `meta_id` = 24,`post_id` = 11,`meta_key` = '_menu_item_xfn',`meta_value` = '' WHERE `wp_postmeta`.`meta_id` = 24;
UPDATE IGNORE `wp_postmeta` SET `meta_id` = 25,`post_id` = 11,`meta_key` = '_menu_item_url',`meta_value` = '' WHERE `wp_postmeta`.`meta_id` = 25;
UPDATE IGNORE `wp_postmeta` SET `meta_id` = 26,`post_id` = 11,`meta_key` = '_menu_item_orphaned',`meta_value` = '1546859350' WHERE `wp_postmeta`.`meta_id` = 26;
UPDATE IGNORE `wp_postmeta` SET `meta_id` = 27,`post_id` = 12,`meta_key` = '_menu_item_type',`meta_value` = 'taxonomy' WHERE `wp_postmeta`.`meta_id` = 27;
UPDATE IGNORE `wp_postmeta` SET `meta_id` = 28,`post_id` = 12,`meta_key` = '_menu_item_menu_item_parent',`meta_value` = '0' WHERE `wp_postmeta`.`meta_id` = 28;
UPDATE IGNORE `wp_postmeta` SET `meta_id` = 29,`post_id` = 12,`meta_key` = '_menu_item_object_id',`meta_value` = '1' WHERE `wp_postmeta`.`meta_id` = 29;
UPDATE IGNORE `wp_postmeta` SET `meta_id` = 30,`post_id` = 12,`meta_key` = '_menu_item_object',`meta_value` = 'category' WHERE `wp_postmeta`.`meta_id` = 30;
UPDATE IGNORE `wp_postmeta` SET `meta_id` = 31,`post_id` = 12,`meta_key` = '_menu_item_target',`meta_value` = '' WHERE `wp_postmeta`.`meta_id` = 31;
UPDATE IGNORE `wp_postmeta` SET `meta_id` = 32,`post_id` = 12,`meta_key` = '_menu_item_classes',`meta_value` = 'a:1:{i:0;s:0:\"\";}' WHERE `wp_postmeta`.`meta_id` = 32;
UPDATE IGNORE `wp_postmeta` SET `meta_id` = 33,`post_id` = 12,`meta_key` = '_menu_item_xfn',`meta_value` = '' WHERE `wp_postmeta`.`meta_id` = 33;
UPDATE IGNORE `wp_postmeta` SET `meta_id` = 34,`post_id` = 12,`meta_key` = '_menu_item_url',`meta_value` = '' WHERE `wp_postmeta`.`meta_id` = 34;
UPDATE IGNORE `wp_postmeta` SET `meta_id` = 36,`post_id` = 13,`meta_key` = '_menu_item_type',`meta_value` = 'taxonomy' WHERE `wp_postmeta`.`meta_id` = 36;
UPDATE IGNORE `wp_postmeta` SET `meta_id` = 37,`post_id` = 13,`meta_key` = '_menu_item_menu_item_parent',`meta_value` = '0' WHERE `wp_postmeta`.`meta_id` = 37;
UPDATE IGNORE `wp_postmeta` SET `meta_id` = 38,`post_id` = 13,`meta_key` = '_menu_item_object_id',`meta_value` = '9' WHERE `wp_postmeta`.`meta_id` = 38;
UPDATE IGNORE `wp_postmeta` SET `meta_id` = 39,`post_id` = 13,`meta_key` = '_menu_item_object',`meta_value` = 'category' WHERE `wp_postmeta`.`meta_id` = 39;
UPDATE IGNORE `wp_postmeta` SET `meta_id` = 40,`post_id` = 13,`meta_key` = '_menu_item_target',`meta_value` = '' WHERE `wp_postmeta`.`meta_id` = 40;
UPDATE IGNORE `wp_postmeta` SET `meta_id` = 41,`post_id` = 13,`meta_key` = '_menu_item_classes',`meta_value` = 'a:1:{i:0;s:0:\"\";}' WHERE `wp_postmeta`.`meta_id` = 41;
UPDATE IGNORE `wp_postmeta` SET `meta_id` = 42,`post_id` = 13,`meta_key` = '_menu_item_xfn',`meta_value` = '' WHERE `wp_postmeta`.`meta_id` = 42;
UPDATE IGNORE `wp_postmeta` SET `meta_id` = 43,`post_id` = 13,`meta_key` = '_menu_item_url',`meta_value` = '' WHERE `wp_postmeta`.`meta_id` = 43;
UPDATE IGNORE `wp_postmeta` SET `meta_id` = 45,`post_id` = 14,`meta_key` = '_menu_item_type',`meta_value` = 'taxonomy' WHERE `wp_postmeta`.`meta_id` = 45;
UPDATE IGNORE `wp_postmeta` SET `meta_id` = 46,`post_id` = 14,`meta_key` = '_menu_item_menu_item_parent',`meta_value` = '0' WHERE `wp_postmeta`.`meta_id` = 46;
UPDATE IGNORE `wp_postmeta` SET `meta_id` = 47,`post_id` = 14,`meta_key` = '_menu_item_object_id',`meta_value` = '10' WHERE `wp_postmeta`.`meta_id` = 47;
UPDATE IGNORE `wp_postmeta` SET `meta_id` = 48,`post_id` = 14,`meta_key` = '_menu_item_object',`meta_value` = 'category' WHERE `wp_postmeta`.`meta_id` = 48;
UPDATE IGNORE `wp_postmeta` SET `meta_id` = 49,`post_id` = 14,`meta_key` = '_menu_item_target',`meta_value` = '' WHERE `wp_postmeta`.`meta_id` = 49;
UPDATE IGNORE `wp_postmeta` SET `meta_id` = 50,`post_id` = 14,`meta_key` = '_menu_item_classes',`meta_value` = 'a:1:{i:0;s:0:\"\";}' WHERE `wp_postmeta`.`meta_id` = 50;
UPDATE IGNORE `wp_postmeta` SET `meta_id` = 51,`post_id` = 14,`meta_key` = '_menu_item_xfn',`meta_value` = '' WHERE `wp_postmeta`.`meta_id` = 51;
UPDATE IGNORE `wp_postmeta` SET `meta_id` = 52,`post_id` = 14,`meta_key` = '_menu_item_url',`meta_value` = '' WHERE `wp_postmeta`.`meta_id` = 52;
UPDATE IGNORE `wp_postmeta` SET `meta_id` = 54,`post_id` = 15,`meta_key` = '_menu_item_type',`meta_value` = 'taxonomy' WHERE `wp_postmeta`.`meta_id` = 54;
UPDATE IGNORE `wp_postmeta` SET `meta_id` = 55,`post_id` = 15,`meta_key` = '_menu_item_menu_item_parent',`meta_value` = '0' WHERE `wp_postmeta`.`meta_id` = 55;
UPDATE IGNORE `wp_postmeta` SET `meta_id` = 56,`post_id` = 15,`meta_key` = '_menu_item_object_id',`meta_value` = '11' WHERE `wp_postmeta`.`meta_id` = 56;
UPDATE IGNORE `wp_postmeta` SET `meta_id` = 57,`post_id` = 15,`meta_key` = '_menu_item_object',`meta_value` = 'category' WHERE `wp_postmeta`.`meta_id` = 57;
UPDATE IGNORE `wp_postmeta` SET `meta_id` = 58,`post_id` = 15,`meta_key` = '_menu_item_target',`meta_value` = '' WHERE `wp_postmeta`.`meta_id` = 58;
UPDATE IGNORE `wp_postmeta` SET `meta_id` = 59,`post_id` = 15,`meta_key` = '_menu_item_classes',`meta_value` = 'a:1:{i:0;s:0:\"\";}' WHERE `wp_postmeta`.`meta_id` = 59;
UPDATE IGNORE `wp_postmeta` SET `meta_id` = 60,`post_id` = 15,`meta_key` = '_menu_item_xfn',`meta_value` = '' WHERE `wp_postmeta`.`meta_id` = 60;
UPDATE IGNORE `wp_postmeta` SET `meta_id` = 61,`post_id` = 15,`meta_key` = '_menu_item_url',`meta_value` = '' WHERE `wp_postmeta`.`meta_id` = 61;
UPDATE IGNORE `wp_postmeta` SET `meta_id` = 63,`post_id` = 16,`meta_key` = '_menu_item_type',`meta_value` = 'taxonomy' WHERE `wp_postmeta`.`meta_id` = 63;
UPDATE IGNORE `wp_postmeta` SET `meta_id` = 64,`post_id` = 16,`meta_key` = '_menu_item_menu_item_parent',`meta_value` = '0' WHERE `wp_postmeta`.`meta_id` = 64;
UPDATE IGNORE `wp_postmeta` SET `meta_id` = 65,`post_id` = 16,`meta_key` = '_menu_item_object_id',`meta_value` = '12' WHERE `wp_postmeta`.`meta_id` = 65;
UPDATE IGNORE `wp_postmeta` SET `meta_id` = 66,`post_id` = 16,`meta_key` = '_menu_item_object',`meta_value` = 'category' WHERE `wp_postmeta`.`meta_id` = 66;
UPDATE IGNORE `wp_postmeta` SET `meta_id` = 67,`post_id` = 16,`meta_key` = '_menu_item_target',`meta_value` = '' WHERE `wp_postmeta`.`meta_id` = 67;
UPDATE IGNORE `wp_postmeta` SET `meta_id` = 68,`post_id` = 16,`meta_key` = '_menu_item_classes',`meta_value` = 'a:1:{i:0;s:0:\"\";}' WHERE `wp_postmeta`.`meta_id` = 68;
UPDATE IGNORE `wp_postmeta` SET `meta_id` = 69,`post_id` = 16,`meta_key` = '_menu_item_xfn',`meta_value` = '' WHERE `wp_postmeta`.`meta_id` = 69;
UPDATE IGNORE `wp_postmeta` SET `meta_id` = 70,`post_id` = 16,`meta_key` = '_menu_item_url',`meta_value` = '' WHERE `wp_postmeta`.`meta_id` = 70;
UPDATE IGNORE `wp_postmeta` SET `meta_id` = 77,`post_id` = 6,`meta_key` = '_wp_trash_meta_status',`meta_value` = 'publish' WHERE `wp_postmeta`.`meta_id` = 77;
UPDATE IGNORE `wp_postmeta` SET `meta_id` = 78,`post_id` = 6,`meta_key` = '_wp_trash_meta_time',`meta_value` = '1546936033' WHERE `wp_postmeta`.`meta_id` = 78;
UPDATE IGNORE `wp_postmeta` SET `meta_id` = 79,`post_id` = 6,`meta_key` = '_wp_desired_post_slug',`meta_value` = 'test1' WHERE `wp_postmeta`.`meta_id` = 79;
UPDATE IGNORE `wp_postmeta` SET `meta_id` = 80,`post_id` = 17,`meta_key` = '_edit_lock',`meta_value` = '1547204272:1' WHERE `wp_postmeta`.`meta_id` = 80;
UPDATE IGNORE `wp_postmeta` SET `meta_id` = 81,`post_id` = 18,`meta_key` = '_wp_attached_file',`meta_value` = '2019/01/2.jpeg' WHERE `wp_postmeta`.`meta_id` = 81;
UPDATE IGNORE `wp_postmeta` SET `meta_id` = 82,`post_id` = 18,`meta_key` = '_wp_attachment_metadata',`meta_value` = 'a:5:{s:5:\"width\";i:1350;s:6:\"height\";i:900;s:4:\"file\";s:14:\"2019/01/2.jpeg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"2-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"2-300x200.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"2-768x512.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"2-1024x683.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"single-post\";a:4:{s:4:\"file\";s:14:\"2-350x233.jpeg\";s:5:\"width\";i:350;s:6:\"height\";i:233;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"footer-post\";a:4:{s:4:\"file\";s:13:\"2-100x67.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:67;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"Hero-one\";a:4:{s:4:\"file\";s:14:\"2-480x320.jpeg\";s:5:\"width\";i:480;s:6:\"height\";i:320;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"Hero-post\";a:4:{s:4:\"file\";s:14:\"2-180x120.jpeg\";s:5:\"width\";i:180;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}' WHERE `wp_postmeta`.`meta_id` = 82;
UPDATE IGNORE `wp_postmeta` SET `meta_id` = 85,`post_id` = 17,`meta_key` = '_thumbnail_id',`meta_value` = '18' WHERE `wp_postmeta`.`meta_id` = 85;
UPDATE IGNORE `wp_postmeta` SET `meta_id` = 88,`post_id` = 22,`meta_key` = '_edit_lock',`meta_value` = '1547204109:1' WHERE `wp_postmeta`.`meta_id` = 88;
UPDATE IGNORE `wp_postmeta` SET `meta_id` = 89,`post_id` = 23,`meta_key` = '_wp_attached_file',`meta_value` = '2019/01/8.jpeg' WHERE `wp_postmeta`.`meta_id` = 89;
UPDATE IGNORE `wp_postmeta` SET `meta_id` = 90,`post_id` = 23,`meta_key` = '_wp_attachment_metadata',`meta_value` = 'a:5:{s:5:\"width\";i:634;s:6:\"height\";i:951;s:4:\"file\";s:14:\"2019/01/8.jpeg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"8-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"8-200x300.jpeg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"single-post\";a:4:{s:4:\"file\";s:14:\"8-167x250.jpeg\";s:5:\"width\";i:167;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"footer-post\";a:4:{s:4:\"file\";s:13:\"8-67x100.jpeg\";s:5:\"width\";i:67;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"Hero-one\";a:4:{s:4:\"file\";s:14:\"8-213x320.jpeg\";s:5:\"width\";i:213;s:6:\"height\";i:320;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"Hero-post\";a:4:{s:4:\"file\";s:14:\"8-107x160.jpeg\";s:5:\"width\";i:107;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}' WHERE `wp_postmeta`.`meta_id` = 90;
UPDATE IGNORE `wp_postmeta` SET `meta_id` = 93,`post_id` = 22,`meta_key` = '_thumbnail_id',`meta_value` = '23' WHERE `wp_postmeta`.`meta_id` = 93;
UPDATE IGNORE `wp_postmeta` SET `meta_id` = 96,`post_id` = 26,`meta_key` = '_edit_lock',`meta_value` = '1547202673:1' WHERE `wp_postmeta`.`meta_id` = 96;
UPDATE IGNORE `wp_postmeta` SET `meta_id` = 97,`post_id` = 27,`meta_key` = '_wp_attached_file',`meta_value` = '2019/01/10.jpeg' WHERE `wp_postmeta`.`meta_id` = 97;
UPDATE IGNORE `wp_postmeta` SET `meta_id` = 98,`post_id` = 27,`meta_key` = '_wp_attachment_metadata',`meta_value` = 'a:5:{s:5:\"width\";i:1350;s:6:\"height\";i:900;s:4:\"file\";s:15:\"2019/01/10.jpeg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"10-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"10-300x200.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"10-768x512.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"10-1024x683.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"single-post\";a:4:{s:4:\"file\";s:15:\"10-350x233.jpeg\";s:5:\"width\";i:350;s:6:\"height\";i:233;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"footer-post\";a:4:{s:4:\"file\";s:14:\"10-100x67.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:67;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"Hero-one\";a:4:{s:4:\"file\";s:15:\"10-480x320.jpeg\";s:5:\"width\";i:480;s:6:\"height\";i:320;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"Hero-post\";a:4:{s:4:\"file\";s:15:\"10-180x120.jpeg\";s:5:\"width\";i:180;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}' WHERE `wp_postmeta`.`meta_id` = 98;
UPDATE IGNORE `wp_postmeta` SET `meta_id` = 99,`post_id` = 28,`meta_key` = '_edit_lock',`meta_value` = '1547204596:1' WHERE `wp_postmeta`.`meta_id` = 99;
UPDATE IGNORE `wp_postmeta` SET `meta_id` = 100,`post_id` = 29,`meta_key` = '_wp_attached_file',`meta_value` = '2019/01/9.jpeg' WHERE `wp_postmeta`.`meta_id` = 100;
UPDATE IGNORE `wp_postmeta` SET `meta_id` = 101,`post_id` = 29,`meta_key` = '_wp_attachment_metadata',`meta_value` = 'a:5:{s:5:\"width\";i:1350;s:6:\"height\";i:900;s:4:\"file\";s:14:\"2019/01/9.jpeg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"9-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"9-300x200.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"9-768x512.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"9-1024x683.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"single-post\";a:4:{s:4:\"file\";s:14:\"9-350x233.jpeg\";s:5:\"width\";i:350;s:6:\"height\";i:233;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"footer-post\";a:4:{s:4:\"file\";s:13:\"9-100x67.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:67;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"Hero-one\";a:4:{s:4:\"file\";s:14:\"9-480x320.jpeg\";s:5:\"width\";i:480;s:6:\"height\";i:320;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"Hero-post\";a:4:{s:4:\"file\";s:14:\"9-180x120.jpeg\";s:5:\"width\";i:180;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}' WHERE `wp_postmeta`.`meta_id` = 101;
UPDATE IGNORE `wp_postmeta` SET `meta_id` = 103,`post_id` = 28,`meta_key` = '_edit_last',`meta_value` = '1' WHERE `wp_postmeta`.`meta_id` = 103;
UPDATE IGNORE `wp_postmeta` SET `meta_id` = 104,`post_id` = 26,`meta_key` = '_edit_last',`meta_value` = '1' WHERE `wp_postmeta`.`meta_id` = 104;
UPDATE IGNORE `wp_postmeta` SET `meta_id` = 105,`post_id` = 22,`meta_key` = '_edit_last',`meta_value` = '1' WHERE `wp_postmeta`.`meta_id` = 105;
UPDATE IGNORE `wp_postmeta` SET `meta_id` = 110,`post_id` = 28,`meta_key` = '_thumbnail_id',`meta_value` = '7' WHERE `wp_postmeta`.`meta_id` = 110;
UPDATE IGNORE `wp_postmeta` SET `meta_id` = 111,`post_id` = 17,`meta_key` = '_edit_last',`meta_value` = '1' WHERE `wp_postmeta`.`meta_id` = 111;

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

UPDATE IGNORE `wp_posts` SET `ID` = 1,`post_author` = 1,`post_date` = '2019-01-04 09:12:02',`post_date_gmt` = '2019-01-04 09:12:02',`post_content` = '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->',`post_title` = 'Hello world!',`post_excerpt` = '',`post_status` = 'trash',`comment_status` = 'open',`ping_status` = 'open',`post_password` = '',`post_name` = 'hello-world__trashed',`to_ping` = '',`pinged` = '',`post_modified` = '2019-01-07 10:23:48',`post_modified_gmt` = '2019-01-07 10:23:48',`post_content_filtered` = '',`post_parent` = 0,`guid` = 'http://localhost/wordpress/?p=1',`menu_order` = 0,`post_type` = 'post',`post_mime_type` = '',`comment_count` = 1 WHERE `wp_posts`.`ID` = 1;
UPDATE IGNORE `wp_posts` SET `ID` = 2,`post_author` = 1,`post_date` = '2019-01-04 09:12:02',`post_date_gmt` = '2019-01-04 09:12:02',`post_content` = '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/wordpress/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->',`post_title` = 'Sample Page',`post_excerpt` = '',`post_status` = 'publish',`comment_status` = 'closed',`ping_status` = 'open',`post_password` = '',`post_name` = 'sample-page',`to_ping` = '',`pinged` = '',`post_modified` = '2019-01-04 09:12:02',`post_modified_gmt` = '2019-01-04 09:12:02',`post_content_filtered` = '',`post_parent` = 0,`guid` = 'http://localhost/wordpress/?page_id=2',`menu_order` = 0,`post_type` = 'page',`post_mime_type` = '',`comment_count` = 0 WHERE `wp_posts`.`ID` = 2;
UPDATE IGNORE `wp_posts` SET `ID` = 3,`post_author` = 1,`post_date` = '2019-01-04 09:12:02',`post_date_gmt` = '2019-01-04 09:12:02',`post_content` = '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/wordpress.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->',`post_title` = 'Privacy Policy',`post_excerpt` = '',`post_status` = 'draft',`comment_status` = 'closed',`ping_status` = 'open',`post_password` = '',`post_name` = 'privacy-policy',`to_ping` = '',`pinged` = '',`post_modified` = '2019-01-04 09:12:02',`post_modified_gmt` = '2019-01-04 09:12:02',`post_content_filtered` = '',`post_parent` = 0,`guid` = 'http://localhost/wordpress/?page_id=3',`menu_order` = 0,`post_type` = 'page',`post_mime_type` = '',`comment_count` = 0 WHERE `wp_posts`.`ID` = 3;
UPDATE IGNORE `wp_posts` SET `ID` = 5,`post_author` = 1,`post_date` = '2019-01-04 11:24:19',`post_date_gmt` = '0000-00-00 00:00:00',`post_content` = '{\n    \"twentynineteen::nav_menu_locations[menu-1]\": {\n        \"value\": -6462368927544345000,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-04 11:24:16\"\n    },\n    \"twentynineteen::nav_menu_locations[social]\": {\n        \"value\": -6462368927544345000,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-04 11:24:16\"\n    },\n    \"nav_menu[-6462368927544345000]\": {\n        \"value\": {\n            \"name\": \"lien r\\u00e9seau sociaux\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-04 11:24:16\"\n    },\n    \"nav_menu_item[-4881638377833691000]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"custom\",\n            \"title\": \"Facebook\",\n            \"url\": \"http://localhost/wordpress\",\n            \"target\": \"_blank\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Accueil\",\n            \"nav_menu_term_id\": -6462368927544345000,\n            \"_invalid\": false,\n            \"type_label\": \"Lien personnalis\\u00e9\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-04 11:24:16\"\n    },\n    \"nav_menu_item[-6011701114505689000]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"custom\",\n            \"title\": \"Twitter\",\n            \"url\": \"http://localhost/wordpress\",\n            \"target\": \"_blank\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Accueil\",\n            \"nav_menu_term_id\": -6462368927544345000,\n            \"_invalid\": false,\n            \"type_label\": \"Lien personnalis\\u00e9\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-04 11:24:16\"\n    },\n    \"understrap::nav_menu_locations[main-menu]\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-07 11:11:48\"\n    },\n    \"nav_menu_item[12]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 1,\n            \"object\": \"category\",\n            \"type\": \"taxonomy\",\n            \"type_label\": \"Cat\\u00e9gorie\",\n            \"url\": \"http://localhost/wordpress/index.php/category/community/\",\n            \"title\": \"Community\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 2,\n            \"position\": 1,\n            \"status\": \"publish\",\n            \"original_title\": \"community\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-01-07 11:11:48\"\n    }\n}',`post_title` = '',`post_excerpt` = '',`post_status` = 'draft',`comment_status` = 'closed',`ping_status` = 'closed',`post_password` = '',`post_name` = '14bf276e-a763-4847-af1f-bc05e58f0ecf',`to_ping` = '',`pinged` = '',`post_modified` = '2019-01-07 11:11:48',`post_modified_gmt` = '2019-01-07 11:11:48',`post_content_filtered` = '',`post_parent` = 0,`guid` = 'http://localhost/wordpress/?p=5',`menu_order` = 0,`post_type` = 'customize_changeset',`post_mime_type` = '',`comment_count` = 0 WHERE `wp_posts`.`ID` = 5;
UPDATE IGNORE `wp_posts` SET `ID` = 6,`post_author` = 1,`post_date` = '2019-01-07 10:01:04',`post_date_gmt` = '2019-01-07 10:01:04',`post_content` = '<!-- wp:image {\"id\":7} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/wordpress/wp-content/uploads/2019/01/1.jpeg\" alt=\"alternatif\" class=\"wp-image-7\"/><figcaption>légende</figcaption></figure>\n<!-- /wp:image -->',`post_title` = 'Test1',`post_excerpt` = '',`post_status` = 'trash',`comment_status` = 'open',`ping_status` = 'open',`post_password` = '',`post_name` = 'test1__trashed',`to_ping` = '',`pinged` = '',`post_modified` = '2019-01-08 08:27:13',`post_modified_gmt` = '2019-01-08 08:27:13',`post_content_filtered` = '',`post_parent` = 0,`guid` = 'http://localhost/wordpress/?p=6',`menu_order` = 0,`post_type` = 'post',`post_mime_type` = '',`comment_count` = 0 WHERE `wp_posts`.`ID` = 6;
UPDATE IGNORE `wp_posts` SET `ID` = 7,`post_author` = 1,`post_date` = '2019-01-07 10:00:39',`post_date_gmt` = '2019-01-07 10:00:39',`post_content` = 'description',`post_title` = 'Chien title',`post_excerpt` = 'légende',`post_status` = 'inherit',`comment_status` = 'open',`ping_status` = 'closed',`post_password` = '',`post_name` = '1',`to_ping` = '',`pinged` = '',`post_modified` = '2019-01-07 10:00:59',`post_modified_gmt` = '2019-01-07 10:00:59',`post_content_filtered` = '',`post_parent` = 6,`guid` = 'http://localhost/wordpress/wp-content/uploads/2019/01/1.jpeg',`menu_order` = 0,`post_type` = 'attachment',`post_mime_type` = 'image/jpeg',`comment_count` = 0 WHERE `wp_posts`.`ID` = 7;
UPDATE IGNORE `wp_posts` SET `ID` = 8,`post_author` = 1,`post_date` = '2019-01-07 10:01:04',`post_date_gmt` = '2019-01-07 10:01:04',`post_content` = '<!-- wp:image {\"id\":7} -->\n<figure class=\"wp-block-image\"><img src=\"http://localhost/wordpress/wp-content/uploads/2019/01/1.jpeg\" alt=\"alternatif\" class=\"wp-image-7\"/><figcaption>légende</figcaption></figure>\n<!-- /wp:image -->',`post_title` = 'Test1',`post_excerpt` = '',`post_status` = 'inherit',`comment_status` = 'closed',`ping_status` = 'closed',`post_password` = '',`post_name` = '6-revision-v1',`to_ping` = '',`pinged` = '',`post_modified` = '2019-01-07 10:01:04',`post_modified_gmt` = '2019-01-07 10:01:04',`post_content_filtered` = '',`post_parent` = 6,`guid` = 'http://localhost/wordpress/index.php/2019/01/07/6-revision-v1/',`menu_order` = 0,`post_type` = 'revision',`post_mime_type` = '',`comment_count` = 0 WHERE `wp_posts`.`ID` = 8;
UPDATE IGNORE `wp_posts` SET `ID` = 9,`post_author` = 1,`post_date` = '2019-01-07 10:23:48',`post_date_gmt` = '2019-01-07 10:23:48',`post_content` = '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->',`post_title` = 'Hello world!',`post_excerpt` = '',`post_status` = 'inherit',`comment_status` = 'closed',`ping_status` = 'closed',`post_password` = '',`post_name` = '1-revision-v1',`to_ping` = '',`pinged` = '',`post_modified` = '2019-01-07 10:23:48',`post_modified_gmt` = '2019-01-07 10:23:48',`post_content_filtered` = '',`post_parent` = 1,`guid` = 'http://localhost/wordpress/index.php/2019/01/07/1-revision-v1/',`menu_order` = 0,`post_type` = 'revision',`post_mime_type` = '',`comment_count` = 0 WHERE `wp_posts`.`ID` = 9;
UPDATE IGNORE `wp_posts` SET `ID` = 11,`post_author` = 1,`post_date` = '2019-01-07 11:09:09',`post_date_gmt` = '0000-00-00 00:00:00',`post_content` = ' ',`post_title` = '',`post_excerpt` = '',`post_status` = 'draft',`comment_status` = 'closed',`ping_status` = 'closed',`post_password` = '',`post_name` = '',`to_ping` = '',`pinged` = '',`post_modified` = '2019-01-07 11:09:09',`post_modified_gmt` = '0000-00-00 00:00:00',`post_content_filtered` = '',`post_parent` = 0,`guid` = 'http://localhost/wordpress/?p=11',`menu_order` = 1,`post_type` = 'nav_menu_item',`post_mime_type` = '',`comment_count` = 0 WHERE `wp_posts`.`ID` = 11;
UPDATE IGNORE `wp_posts` SET `ID` = 12,`post_author` = 1,`post_date` = '2019-01-07 11:10:49',`post_date_gmt` = '2019-01-07 11:10:49',`post_content` = '',`post_title` = 'Community',`post_excerpt` = '',`post_status` = 'publish',`comment_status` = 'closed',`ping_status` = 'closed',`post_password` = '',`post_name` = '12',`to_ping` = '',`pinged` = '',`post_modified` = '2019-01-07 12:56:42',`post_modified_gmt` = '2019-01-07 12:56:42',`post_content_filtered` = '',`post_parent` = 0,`guid` = 'http://localhost/wordpress/?p=12',`menu_order` = 1,`post_type` = 'nav_menu_item',`post_mime_type` = '',`comment_count` = 0 WHERE `wp_posts`.`ID` = 12;
UPDATE IGNORE `wp_posts` SET `ID` = 13,`post_author` = 1,`post_date` = '2019-01-07 11:10:50',`post_date_gmt` = '2019-01-07 11:10:50',`post_content` = ' ',`post_title` = '',`post_excerpt` = '',`post_status` = 'publish',`comment_status` = 'closed',`ping_status` = 'closed',`post_password` = '',`post_name` = '13',`to_ping` = '',`pinged` = '',`post_modified` = '2019-01-07 12:56:42',`post_modified_gmt` = '2019-01-07 12:56:42',`post_content_filtered` = '',`post_parent` = 0,`guid` = 'http://localhost/wordpress/?p=13',`menu_order` = 2,`post_type` = 'nav_menu_item',`post_mime_type` = '',`comment_count` = 0 WHERE `wp_posts`.`ID` = 13;
UPDATE IGNORE `wp_posts` SET `ID` = 14,`post_author` = 1,`post_date` = '2019-01-07 11:10:50',`post_date_gmt` = '2019-01-07 11:10:50',`post_content` = ' ',`post_title` = '',`post_excerpt` = '',`post_status` = 'publish',`comment_status` = 'closed',`ping_status` = 'closed',`post_password` = '',`post_name` = '14',`to_ping` = '',`pinged` = '',`post_modified` = '2019-01-07 12:56:42',`post_modified_gmt` = '2019-01-07 12:56:42',`post_content_filtered` = '',`post_parent` = 0,`guid` = 'http://localhost/wordpress/?p=14',`menu_order` = 3,`post_type` = 'nav_menu_item',`post_mime_type` = '',`comment_count` = 0 WHERE `wp_posts`.`ID` = 14;
UPDATE IGNORE `wp_posts` SET `ID` = 15,`post_author` = 1,`post_date` = '2019-01-07 11:10:50',`post_date_gmt` = '2019-01-07 11:10:50',`post_content` = ' ',`post_title` = '',`post_excerpt` = '',`post_status` = 'publish',`comment_status` = 'closed',`ping_status` = 'closed',`post_password` = '',`post_name` = '15',`to_ping` = '',`pinged` = '',`post_modified` = '2019-01-07 12:56:42',`post_modified_gmt` = '2019-01-07 12:56:42',`post_content_filtered` = '',`post_parent` = 0,`guid` = 'http://localhost/wordpress/?p=15',`menu_order` = 4,`post_type` = 'nav_menu_item',`post_mime_type` = '',`comment_count` = 0 WHERE `wp_posts`.`ID` = 15;
UPDATE IGNORE `wp_posts` SET `ID` = 16,`post_author` = 1,`post_date` = '2019-01-07 11:10:50',`post_date_gmt` = '2019-01-07 11:10:50',`post_content` = ' ',`post_title` = '',`post_excerpt` = '',`post_status` = 'publish',`comment_status` = 'closed',`ping_status` = 'closed',`post_password` = '',`post_name` = '16',`to_ping` = '',`pinged` = '',`post_modified` = '2019-01-07 12:56:42',`post_modified_gmt` = '2019-01-07 12:56:42',`post_content_filtered` = '',`post_parent` = 0,`guid` = 'http://localhost/wordpress/?p=16',`menu_order` = 5,`post_type` = 'nav_menu_item',`post_mime_type` = '',`comment_count` = 0 WHERE `wp_posts`.`ID` = 16;
UPDATE IGNORE `wp_posts` SET `ID` = 17,`post_author` = 1,`post_date` = '2019-01-08 08:30:47',`post_date_gmt` = '2019-01-08 08:30:47',`post_content` = '<!-- wp:paragraph -->\n<p> Health-conscious consumers are skilled ar deciphering nutrition facts labels. We know to monitor our sodium intke avoid carrageenan and high</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Le&nbsp;<strong>Lorem Ipsum</strong>&nbsp;est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n\'a pas fait que survivre cinq siècles, mais s\'est aussi adapté à la bureautique informatique, sans que son contenu n\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->',`post_title` = 'THE && DOG FOOD LABEL TRICKS EVERY OWNER NEEDS TO KNOW',`post_excerpt` = '',`post_status` = 'publish',`comment_status` = 'open',`ping_status` = 'open',`post_password` = '',`post_name` = 'the-dog-food-label-tricks-every-owner-needs-to-know',`to_ping` = '',`pinged` = '',`post_modified` = '2019-01-11 10:57:52',`post_modified_gmt` = '2019-01-11 10:57:52',`post_content_filtered` = '',`post_parent` = 0,`guid` = 'http://localhost/wordpress/?p=17',`menu_order` = 0,`post_type` = 'post',`post_mime_type` = '',`comment_count` = 0 WHERE `wp_posts`.`ID` = 17;
UPDATE IGNORE `wp_posts` SET `ID` = 18,`post_author` = 1,`post_date` = '2019-01-08 08:30:39',`post_date_gmt` = '2019-01-08 08:30:39',`post_content` = '',`post_title` = '2',`post_excerpt` = '',`post_status` = 'inherit',`comment_status` = 'open',`ping_status` = 'closed',`post_password` = '',`post_name` = '2',`to_ping` = '',`pinged` = '',`post_modified` = '2019-01-08 08:30:39',`post_modified_gmt` = '2019-01-08 08:30:39',`post_content_filtered` = '',`post_parent` = 17,`guid` = 'http://localhost/wordpress/wp-content/uploads/2019/01/2.jpeg',`menu_order` = 0,`post_type` = 'attachment',`post_mime_type` = 'image/jpeg',`comment_count` = 0 WHERE `wp_posts`.`ID` = 18;
UPDATE IGNORE `wp_posts` SET `ID` = 19,`post_author` = 1,`post_date` = '2019-01-08 08:30:47',`post_date_gmt` = '2019-01-08 08:30:47',`post_content` = '<!-- wp:paragraph -->\n<p> Health-conscious consumers are skilled ar deciphering nutrition facts labels. We know to monitor our sodium intke avoid carrageenan and high</p>\n<!-- /wp:paragraph -->',`post_title` = 'THE && DOG FOOD LABEL TRICKS EVERY OWNER NEEDS TO KNOW',`post_excerpt` = '',`post_status` = 'inherit',`comment_status` = 'closed',`ping_status` = 'closed',`post_password` = '',`post_name` = '17-revision-v1',`to_ping` = '',`pinged` = '',`post_modified` = '2019-01-08 08:30:47',`post_modified_gmt` = '2019-01-08 08:30:47',`post_content_filtered` = '',`post_parent` = 17,`guid` = 'http://localhost/wordpress/index.php/2019/01/08/17-revision-v1/',`menu_order` = 0,`post_type` = 'revision',`post_mime_type` = '',`comment_count` = 0 WHERE `wp_posts`.`ID` = 19;
UPDATE IGNORE `wp_posts` SET `ID` = 21,`post_author` = 1,`post_date` = '2019-01-08 08:32:06',`post_date_gmt` = '2019-01-08 08:32:06',`post_content` = '<!-- wp:paragraph -->\n<p> Health-conscious consumers are skilled ar deciphering nutrition facts labels. We know to monitor our sodium intke avoid carrageenan and high</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Le&nbsp;<strong>Lorem Ipsum</strong>&nbsp;est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n\'a pas fait que survivre cinq siècles, mais s\'est aussi adapté à la bureautique informatique, sans que son contenu n\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->',`post_title` = 'THE && DOG FOOD LABEL TRICKS EVERY OWNER NEEDS TO KNOW',`post_excerpt` = '',`post_status` = 'inherit',`comment_status` = 'closed',`ping_status` = 'closed',`post_password` = '',`post_name` = '17-revision-v1',`to_ping` = '',`pinged` = '',`post_modified` = '2019-01-08 08:32:06',`post_modified_gmt` = '2019-01-08 08:32:06',`post_content_filtered` = '',`post_parent` = 17,`guid` = 'http://localhost/wordpress/index.php/2019/01/08/17-revision-v1/',`menu_order` = 0,`post_type` = 'revision',`post_mime_type` = '',`comment_count` = 0 WHERE `wp_posts`.`ID` = 21;
UPDATE IGNORE `wp_posts` SET `ID` = 22,`post_author` = 1,`post_date` = '2019-01-08 08:34:27',`post_date_gmt` = '2019-01-08 08:34:27',`post_content` = '<!-- wp:paragraph -->\n<p>So you\'ve discovered the many issue with commercial pet food and have decided that a home cooked diet is much</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Le&nbsp;<strong>Lorem Ipsum</strong>&nbsp;est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n\'a pas fait que survivre cinq siècles, mais s\'est aussi adapté à la bureautique informatique, sans que son contenu n\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.</p>\n<!-- /wp:paragraph -->',`post_title` = 'COOKING FOR YOUR DOG, WATCH OUT FOR THESE NUTRIENT DEFICIENCIES',`post_excerpt` = '',`post_status` = 'publish',`comment_status` = 'open',`ping_status` = 'open',`post_password` = '',`post_name` = 'cooking-for-your-dog-watch-out-for-these-nutrient-deficiencies',`to_ping` = '',`pinged` = '',`post_modified` = '2019-01-11 10:31:07',`post_modified_gmt` = '2019-01-11 10:31:07',`post_content_filtered` = '',`post_parent` = 0,`guid` = 'http://localhost/wordpress/?p=22',`menu_order` = 0,`post_type` = 'post',`post_mime_type` = '',`comment_count` = 0 WHERE `wp_posts`.`ID` = 22;
UPDATE IGNORE `wp_posts` SET `ID` = 23,`post_author` = 1,`post_date` = '2019-01-08 08:34:08',`post_date_gmt` = '2019-01-08 08:34:08',`post_content` = '',`post_title` = '8',`post_excerpt` = '',`post_status` = 'inherit',`comment_status` = 'open',`ping_status` = 'closed',`post_password` = '',`post_name` = '8',`to_ping` = '',`pinged` = '',`post_modified` = '2019-01-08 08:34:08',`post_modified_gmt` = '2019-01-08 08:34:08',`post_content_filtered` = '',`post_parent` = 22,`guid` = 'http://localhost/wordpress/wp-content/uploads/2019/01/8.jpeg',`menu_order` = 0,`post_type` = 'attachment',`post_mime_type` = 'image/jpeg',`comment_count` = 0 WHERE `wp_posts`.`ID` = 23;
UPDATE IGNORE `wp_posts` SET `ID` = 24,`post_author` = 1,`post_date` = '2019-01-08 08:34:27',`post_date_gmt` = '2019-01-08 08:34:27',`post_content` = '<!-- wp:paragraph -->\n<p>So you\'ve discovered the many issue with commercial pet food and have decided that a home cooked diet is much</p>\n<!-- /wp:paragraph -->',`post_title` = 'COOKING FOR YOUR DOG, WATCH OUT FOR THESE NUTRIENT DEFICIENCIES',`post_excerpt` = '',`post_status` = 'inherit',`comment_status` = 'closed',`ping_status` = 'closed',`post_password` = '',`post_name` = '22-revision-v1',`to_ping` = '',`pinged` = '',`post_modified` = '2019-01-08 08:34:27',`post_modified_gmt` = '2019-01-08 08:34:27',`post_content_filtered` = '',`post_parent` = 22,`guid` = 'http://localhost/wordpress/index.php/2019/01/08/22-revision-v1/',`menu_order` = 0,`post_type` = 'revision',`post_mime_type` = '',`comment_count` = 0 WHERE `wp_posts`.`ID` = 24;
UPDATE IGNORE `wp_posts` SET `ID` = 25,`post_author` = 1,`post_date` = '2019-01-08 08:34:54',`post_date_gmt` = '2019-01-08 08:34:54',`post_content` = '<!-- wp:paragraph -->\n<p>So you\'ve discovered the many issue with commercial pet food and have decided that a home cooked diet is much</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Le&nbsp;<strong>Lorem Ipsum</strong>&nbsp;est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n\'a pas fait que survivre cinq siècles, mais s\'est aussi adapté à la bureautique informatique, sans que son contenu n\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.</p>\n<!-- /wp:paragraph -->',`post_title` = 'COOKING FOR YOUR DOG, WATCH OUT FOR THESE NUTRIENT DEFICIENCIES',`post_excerpt` = '',`post_status` = 'inherit',`comment_status` = 'closed',`ping_status` = 'closed',`post_password` = '',`post_name` = '22-revision-v1',`to_ping` = '',`pinged` = '',`post_modified` = '2019-01-08 08:34:54',`post_modified_gmt` = '2019-01-08 08:34:54',`post_content_filtered` = '',`post_parent` = 22,`guid` = 'http://localhost/wordpress/index.php/2019/01/08/22-revision-v1/',`menu_order` = 0,`post_type` = 'revision',`post_mime_type` = '',`comment_count` = 0 WHERE `wp_posts`.`ID` = 25;
UPDATE IGNORE `wp_posts` SET `ID` = 26,`post_author` = 1,`post_date` = '2019-01-08 08:37:39',`post_date_gmt` = '2019-01-08 08:37:39',`post_content` = '<!-- wp:paragraph -->\n<p>We know you love every inch ot your dog s body just the way it is, but pudge can become a Le <strong>Lorem Ipsum</strong> est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n\'a pas fait que survivre cinq siècles, mais s\'est aussi adapté à la bureautique informatique, sans que son contenu n\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.</p>\n<!-- /wp:paragraph -->',`post_title` = 'WHY YOU SHOULD BE FEEDING YOUR DOG SARDINES',`post_excerpt` = '',`post_status` = 'draft',`comment_status` = 'open',`ping_status` = 'open',`post_password` = '',`post_name` = '',`to_ping` = '',`pinged` = '',`post_modified` = '2019-01-11 10:31:13',`post_modified_gmt` = '2019-01-11 10:31:13',`post_content_filtered` = '',`post_parent` = 0,`guid` = 'http://localhost/wordpress/?p=26',`menu_order` = 0,`post_type` = 'post',`post_mime_type` = '',`comment_count` = 0 WHERE `wp_posts`.`ID` = 26;
UPDATE IGNORE `wp_posts` SET `ID` = 27,`post_author` = 1,`post_date` = '2019-01-08 08:37:38',`post_date_gmt` = '2019-01-08 08:37:38',`post_content` = '',`post_title` = '10',`post_excerpt` = '',`post_status` = 'inherit',`comment_status` = 'open',`ping_status` = 'closed',`post_password` = '',`post_name` = '10',`to_ping` = '',`pinged` = '',`post_modified` = '2019-01-08 08:37:38',`post_modified_gmt` = '2019-01-08 08:37:38',`post_content_filtered` = '',`post_parent` = 26,`guid` = 'http://localhost/wordpress/wp-content/uploads/2019/01/10.jpeg',`menu_order` = 0,`post_type` = 'attachment',`post_mime_type` = 'image/jpeg',`comment_count` = 0 WHERE `wp_posts`.`ID` = 27;
UPDATE IGNORE `wp_posts` SET `ID` = 28,`post_author` = 1,`post_date` = '2019-01-08 08:39:01',`post_date_gmt` = '2019-01-08 08:39:01',`post_content` = '<!-- wp:paragraph -->\n<p>Whether you prefer your turkey deep fried or roasted and your potatoes mashed or sweet, Thanksgiving has one unviersal truth: Le&nbsp;<strong>Lorem Ipsum</strong>&nbsp;est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n\'a pas fait que survivre cinq siècles, mais s\'est aussi adapté à la bureautique informatique, sans que son contenu n\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.</p>\n<!-- /wp:paragraph -->',`post_title` = 'WHAT FAMILY REALLY MEANS TO YOUR DOG',`post_excerpt` = '',`post_status` = 'publish',`comment_status` = 'open',`ping_status` = 'open',`post_password` = '',`post_name` = 'what-family-really-means-to-your-dog',`to_ping` = '',`pinged` = '',`post_modified` = '2019-01-11 10:49:59',`post_modified_gmt` = '2019-01-11 10:49:59',`post_content_filtered` = '',`post_parent` = 0,`guid` = 'http://localhost/wordpress/?p=28',`menu_order` = 0,`post_type` = 'post',`post_mime_type` = '',`comment_count` = 0 WHERE `wp_posts`.`ID` = 28;
UPDATE IGNORE `wp_posts` SET `ID` = 29,`post_author` = 1,`post_date` = '2019-01-08 08:39:00',`post_date_gmt` = '2019-01-08 08:39:00',`post_content` = '',`post_title` = '9',`post_excerpt` = '',`post_status` = 'inherit',`comment_status` = 'open',`ping_status` = 'closed',`post_password` = '',`post_name` = '9',`to_ping` = '',`pinged` = '',`post_modified` = '2019-01-08 08:39:00',`post_modified_gmt` = '2019-01-08 08:39:00',`post_content_filtered` = '',`post_parent` = 28,`guid` = 'http://localhost/wordpress/wp-content/uploads/2019/01/9.jpeg',`menu_order` = 0,`post_type` = 'attachment',`post_mime_type` = 'image/jpeg',`comment_count` = 0 WHERE `wp_posts`.`ID` = 29;
UPDATE IGNORE `wp_posts` SET `ID` = 31,`post_author` = 1,`post_date` = '2019-01-11 10:30:53',`post_date_gmt` = '2019-01-11 10:30:53',`post_content` = '<!-- wp:paragraph -->\n<p>Whether you prefer your turkey deep fried or roasted and your potatoes mashed or sweet, Thanksgiving has one unviersal truth: Le <strong>Lorem Ipsum</strong> est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n\'a pas fait que survivre cinq siècles, mais s\'est aussi adapté à la bureautique informatique, sans que son contenu n\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.</p>\n<!-- /wp:paragraph -->',`post_title` = 'WHAT FAMILY REALLY MEANS TO YOUR DOG',`post_excerpt` = '',`post_status` = 'inherit',`comment_status` = 'closed',`ping_status` = 'closed',`post_password` = '',`post_name` = '28-revision-v1',`to_ping` = '',`pinged` = '',`post_modified` = '2019-01-11 10:30:53',`post_modified_gmt` = '2019-01-11 10:30:53',`post_content_filtered` = '',`post_parent` = 28,`guid` = 'http://localhost/wordpress/index.php/2019/01/11/28-revision-v1/',`menu_order` = 0,`post_type` = 'revision',`post_mime_type` = '',`comment_count` = 0 WHERE `wp_posts`.`ID` = 31;
UPDATE IGNORE `wp_posts` SET `ID` = 32,`post_author` = 1,`post_date` = '2019-01-11 10:30:57',`post_date_gmt` = '2019-01-11 10:30:57',`post_content` = '<!-- wp:paragraph -->\n<p>We know you love every inch ot your dog s body just the way it is, but pudge can become a Le <strong>Lorem Ipsum</strong> est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n\'a pas fait que survivre cinq siècles, mais s\'est aussi adapté à la bureautique informatique, sans que son contenu n\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.</p>\n<!-- /wp:paragraph -->',`post_title` = 'WHY YOU SHOULD BE FEEDING YOUR DOG SARDINES',`post_excerpt` = '',`post_status` = 'inherit',`comment_status` = 'closed',`ping_status` = 'closed',`post_password` = '',`post_name` = '26-revision-v1',`to_ping` = '',`pinged` = '',`post_modified` = '2019-01-11 10:30:57',`post_modified_gmt` = '2019-01-11 10:30:57',`post_content_filtered` = '',`post_parent` = 26,`guid` = 'http://localhost/wordpress/index.php/2019/01/11/26-revision-v1/',`menu_order` = 0,`post_type` = 'revision',`post_mime_type` = '',`comment_count` = 0 WHERE `wp_posts`.`ID` = 32;
UPDATE IGNORE `wp_posts` SET `ID` = 33,`post_author` = 1,`post_date` = '2019-01-11 10:49:59',`post_date_gmt` = '2019-01-11 10:49:59',`post_content` = '<!-- wp:paragraph -->\n<p>Whether you prefer your turkey deep fried or roasted and your potatoes mashed or sweet, Thanksgiving has one unviersal truth: Le&nbsp;<strong>Lorem Ipsum</strong>&nbsp;est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n\'a pas fait que survivre cinq siècles, mais s\'est aussi adapté à la bureautique informatique, sans que son contenu n\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.</p>\n<!-- /wp:paragraph -->',`post_title` = 'WHAT FAMILY REALLY MEANS TO YOUR DOG',`post_excerpt` = '',`post_status` = 'inherit',`comment_status` = 'closed',`ping_status` = 'closed',`post_password` = '',`post_name` = '28-revision-v1',`to_ping` = '',`pinged` = '',`post_modified` = '2019-01-11 10:49:59',`post_modified_gmt` = '2019-01-11 10:49:59',`post_content_filtered` = '',`post_parent` = 28,`guid` = 'http://localhost/wordpress/index.php/2019/01/11/28-revision-v1/',`menu_order` = 0,`post_type` = 'revision',`post_mime_type` = '',`comment_count` = 0 WHERE `wp_posts`.`ID` = 33;
UPDATE IGNORE `wp_posts` SET `ID` = 34,`post_author` = 1,`post_date` = '2019-01-18 13:34:56',`post_date_gmt` = '0000-00-00 00:00:00',`post_content` = '',`post_title` = 'Brouillon auto',`post_excerpt` = '',`post_status` = 'auto-draft',`comment_status` = 'open',`ping_status` = 'open',`post_password` = '',`post_name` = '',`to_ping` = '',`pinged` = '',`post_modified` = '2019-01-18 13:34:56',`post_modified_gmt` = '0000-00-00 00:00:00',`post_content_filtered` = '',`post_parent` = 0,`guid` = 'http://localhost/wordpress/?p=34',`menu_order` = 0,`post_type` = 'post',`post_mime_type` = '',`comment_count` = 0 WHERE `wp_posts`.`ID` = 34;

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

UPDATE IGNORE `wp_terms` SET `term_id` = 1,`name` = 'community',`slug` = 'community',`term_group` = 0 WHERE `wp_terms`.`term_id` = 1;
UPDATE IGNORE `wp_terms` SET `term_id` = 2,`name` = 'Footer',`slug` = 'footer',`term_group` = 0 WHERE `wp_terms`.`term_id` = 2;
UPDATE IGNORE `wp_terms` SET `term_id` = 9,`name` = 'Featured',`slug` = 'featured',`term_group` = 0 WHERE `wp_terms`.`term_id` = 9;
UPDATE IGNORE `wp_terms` SET `term_id` = 10,`name` = 'Lifestyle',`slug` = 'lifestyle',`term_group` = 0 WHERE `wp_terms`.`term_id` = 10;
UPDATE IGNORE `wp_terms` SET `term_id` = 11,`name` = 'Nutrition',`slug` = 'nutrition',`term_group` = 0 WHERE `wp_terms`.`term_id` = 11;
UPDATE IGNORE `wp_terms` SET `term_id` = 12,`name` = 'Wellness',`slug` = 'wellness',`term_group` = 0 WHERE `wp_terms`.`term_id` = 12;

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

UPDATE IGNORE `wp_term_relationships` SET `object_id` = 1,`term_taxonomy_id` = 1,`term_order` = 0 WHERE `wp_term_relationships`.`object_id` = 1 AND `wp_term_relationships`.`term_taxonomy_id` = 1;
UPDATE IGNORE `wp_term_relationships` SET `object_id` = 6,`term_taxonomy_id` = 1,`term_order` = 0 WHERE `wp_term_relationships`.`object_id` = 6 AND `wp_term_relationships`.`term_taxonomy_id` = 1;
UPDATE IGNORE `wp_term_relationships` SET `object_id` = 12,`term_taxonomy_id` = 2,`term_order` = 0 WHERE `wp_term_relationships`.`object_id` = 12 AND `wp_term_relationships`.`term_taxonomy_id` = 2;
UPDATE IGNORE `wp_term_relationships` SET `object_id` = 13,`term_taxonomy_id` = 2,`term_order` = 0 WHERE `wp_term_relationships`.`object_id` = 13 AND `wp_term_relationships`.`term_taxonomy_id` = 2;
UPDATE IGNORE `wp_term_relationships` SET `object_id` = 14,`term_taxonomy_id` = 2,`term_order` = 0 WHERE `wp_term_relationships`.`object_id` = 14 AND `wp_term_relationships`.`term_taxonomy_id` = 2;
UPDATE IGNORE `wp_term_relationships` SET `object_id` = 15,`term_taxonomy_id` = 2,`term_order` = 0 WHERE `wp_term_relationships`.`object_id` = 15 AND `wp_term_relationships`.`term_taxonomy_id` = 2;
UPDATE IGNORE `wp_term_relationships` SET `object_id` = 16,`term_taxonomy_id` = 2,`term_order` = 0 WHERE `wp_term_relationships`.`object_id` = 16 AND `wp_term_relationships`.`term_taxonomy_id` = 2;
UPDATE IGNORE `wp_term_relationships` SET `object_id` = 17,`term_taxonomy_id` = 1,`term_order` = 0 WHERE `wp_term_relationships`.`object_id` = 17 AND `wp_term_relationships`.`term_taxonomy_id` = 1;
UPDATE IGNORE `wp_term_relationships` SET `object_id` = 22,`term_taxonomy_id` = 1,`term_order` = 0 WHERE `wp_term_relationships`.`object_id` = 22 AND `wp_term_relationships`.`term_taxonomy_id` = 1;
UPDATE IGNORE `wp_term_relationships` SET `object_id` = 26,`term_taxonomy_id` = 1,`term_order` = 0 WHERE `wp_term_relationships`.`object_id` = 26 AND `wp_term_relationships`.`term_taxonomy_id` = 1;
UPDATE IGNORE `wp_term_relationships` SET `object_id` = 28,`term_taxonomy_id` = 1,`term_order` = 0 WHERE `wp_term_relationships`.`object_id` = 28 AND `wp_term_relationships`.`term_taxonomy_id` = 1;

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

UPDATE IGNORE `wp_term_taxonomy` SET `term_taxonomy_id` = 1,`term_id` = 1,`taxonomy` = 'category',`description` = '',`parent` = 0,`count` = 3 WHERE `wp_term_taxonomy`.`term_taxonomy_id` = 1;
UPDATE IGNORE `wp_term_taxonomy` SET `term_taxonomy_id` = 2,`term_id` = 2,`taxonomy` = 'nav_menu',`description` = '',`parent` = 0,`count` = 5 WHERE `wp_term_taxonomy`.`term_taxonomy_id` = 2;
UPDATE IGNORE `wp_term_taxonomy` SET `term_taxonomy_id` = 9,`term_id` = 9,`taxonomy` = 'category',`description` = '',`parent` = 0,`count` = 0 WHERE `wp_term_taxonomy`.`term_taxonomy_id` = 9;
UPDATE IGNORE `wp_term_taxonomy` SET `term_taxonomy_id` = 10,`term_id` = 10,`taxonomy` = 'category',`description` = '',`parent` = 0,`count` = 0 WHERE `wp_term_taxonomy`.`term_taxonomy_id` = 10;
UPDATE IGNORE `wp_term_taxonomy` SET `term_taxonomy_id` = 11,`term_id` = 11,`taxonomy` = 'category',`description` = '',`parent` = 0,`count` = 0 WHERE `wp_term_taxonomy`.`term_taxonomy_id` = 11;
UPDATE IGNORE `wp_term_taxonomy` SET `term_taxonomy_id` = 12,`term_id` = 12,`taxonomy` = 'category',`description` = '',`parent` = 0,`count` = 0 WHERE `wp_term_taxonomy`.`term_taxonomy_id` = 12;

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

UPDATE IGNORE `wp_usermeta` SET `umeta_id` = 1,`user_id` = 1,`meta_key` = 'nickname',`meta_value` = 'touftouf' WHERE `wp_usermeta`.`umeta_id` = 1;
UPDATE IGNORE `wp_usermeta` SET `umeta_id` = 2,`user_id` = 1,`meta_key` = 'first_name',`meta_value` = '' WHERE `wp_usermeta`.`umeta_id` = 2;
UPDATE IGNORE `wp_usermeta` SET `umeta_id` = 3,`user_id` = 1,`meta_key` = 'last_name',`meta_value` = '' WHERE `wp_usermeta`.`umeta_id` = 3;
UPDATE IGNORE `wp_usermeta` SET `umeta_id` = 4,`user_id` = 1,`meta_key` = 'description',`meta_value` = '' WHERE `wp_usermeta`.`umeta_id` = 4;
UPDATE IGNORE `wp_usermeta` SET `umeta_id` = 5,`user_id` = 1,`meta_key` = 'rich_editing',`meta_value` = 'true' WHERE `wp_usermeta`.`umeta_id` = 5;
UPDATE IGNORE `wp_usermeta` SET `umeta_id` = 6,`user_id` = 1,`meta_key` = 'syntax_highlighting',`meta_value` = 'true' WHERE `wp_usermeta`.`umeta_id` = 6;
UPDATE IGNORE `wp_usermeta` SET `umeta_id` = 7,`user_id` = 1,`meta_key` = 'comment_shortcuts',`meta_value` = 'false' WHERE `wp_usermeta`.`umeta_id` = 7;
UPDATE IGNORE `wp_usermeta` SET `umeta_id` = 8,`user_id` = 1,`meta_key` = 'admin_color',`meta_value` = 'fresh' WHERE `wp_usermeta`.`umeta_id` = 8;
UPDATE IGNORE `wp_usermeta` SET `umeta_id` = 9,`user_id` = 1,`meta_key` = 'use_ssl',`meta_value` = '0' WHERE `wp_usermeta`.`umeta_id` = 9;
UPDATE IGNORE `wp_usermeta` SET `umeta_id` = 10,`user_id` = 1,`meta_key` = 'show_admin_bar_front',`meta_value` = 'true' WHERE `wp_usermeta`.`umeta_id` = 10;
UPDATE IGNORE `wp_usermeta` SET `umeta_id` = 11,`user_id` = 1,`meta_key` = 'locale',`meta_value` = '' WHERE `wp_usermeta`.`umeta_id` = 11;
UPDATE IGNORE `wp_usermeta` SET `umeta_id` = 12,`user_id` = 1,`meta_key` = 'wp_capabilities',`meta_value` = 'a:1:{s:13:\"administrator\";b:1;}' WHERE `wp_usermeta`.`umeta_id` = 12;
UPDATE IGNORE `wp_usermeta` SET `umeta_id` = 13,`user_id` = 1,`meta_key` = 'wp_user_level',`meta_value` = '10' WHERE `wp_usermeta`.`umeta_id` = 13;
UPDATE IGNORE `wp_usermeta` SET `umeta_id` = 14,`user_id` = 1,`meta_key` = 'dismissed_wp_pointers',`meta_value` = 'wp496_privacy,theme_editor_notice' WHERE `wp_usermeta`.`umeta_id` = 14;
UPDATE IGNORE `wp_usermeta` SET `umeta_id` = 15,`user_id` = 1,`meta_key` = 'show_welcome_panel',`meta_value` = '1' WHERE `wp_usermeta`.`umeta_id` = 15;
UPDATE IGNORE `wp_usermeta` SET `umeta_id` = 16,`user_id` = 1,`meta_key` = 'session_tokens',`meta_value` = 'a:1:{s:64:\"009a9ee122a5a798956c17da940564856b8acbe0b808ee30416781646eacaa9b\";a:4:{s:10:\"expiration\";i:1547991295;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:104:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:5:\"login\";i:1547818495;}}' WHERE `wp_usermeta`.`umeta_id` = 16;
UPDATE IGNORE `wp_usermeta` SET `umeta_id` = 17,`user_id` = 1,`meta_key` = 'wp_dashboard_quick_press_last_post_id',`meta_value` = '34' WHERE `wp_usermeta`.`umeta_id` = 17;
UPDATE IGNORE `wp_usermeta` SET `umeta_id` = 18,`user_id` = 1,`meta_key` = 'community-events-location',`meta_value` = 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}' WHERE `wp_usermeta`.`umeta_id` = 18;
UPDATE IGNORE `wp_usermeta` SET `umeta_id` = 19,`user_id` = 1,`meta_key` = 'managenav-menuscolumnshidden',`meta_value` = 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}' WHERE `wp_usermeta`.`umeta_id` = 19;
UPDATE IGNORE `wp_usermeta` SET `umeta_id` = 20,`user_id` = 1,`meta_key` = 'metaboxhidden_nav-menus',`meta_value` = 'a:1:{i:0;s:12:\"add-post_tag\";}' WHERE `wp_usermeta`.`umeta_id` = 20;
UPDATE IGNORE `wp_usermeta` SET `umeta_id` = 21,`user_id` = 1,`meta_key` = 'wp_user-settings',`meta_value` = 'libraryContent=browse' WHERE `wp_usermeta`.`umeta_id` = 21;
UPDATE IGNORE `wp_usermeta` SET `umeta_id` = 22,`user_id` = 1,`meta_key` = 'wp_user-settings-time',`meta_value` = '1546855380' WHERE `wp_usermeta`.`umeta_id` = 22;
UPDATE IGNORE `wp_usermeta` SET `umeta_id` = 23,`user_id` = 1,`meta_key` = 'nav_menu_recently_edited',`meta_value` = '2' WHERE `wp_usermeta`.`umeta_id` = 23;

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

UPDATE IGNORE `wp_users` SET `ID` = 1,`user_login` = 'touftouf',`user_pass` = '$P$BinHh9FCww32CB.d.wAI2rLgswPodP/',`user_nicename` = 'touftouf',`user_email` = 'thomasbailleux2@gmail.com',`user_url` = '',`user_registered` = '2019-01-04 09:12:02',`user_activation_key` = '1546850260:$P$BHY2qfe/MI234mvKwFc/K65IbkpJ9q1',`user_status` = 0,`display_name` = 'touftouf' WHERE `wp_users`.`ID` = 1;

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
