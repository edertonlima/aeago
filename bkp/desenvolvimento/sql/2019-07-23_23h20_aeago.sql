-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 24-Jul-2019 às 02:18
-- Versão do servidor: 5.7.26
-- versão do PHP: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aeago`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_commentmeta`
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_comments`
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Um comentarista do WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-06-13 00:43:21', '2019-06-13 03:43:21', 'Olá, isso é um comentário.\nPara começar a moderar, editar e excluir comentários, visite a tela de Comentários no painel.\nAvatares de comentaristas vêm a partir do <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_links`
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM AUTO_INCREMENT=479 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/aeago', 'yes'),
(2, 'home', 'http://localhost/aeago', 'yes'),
(3, 'blogname', 'AEAGO', 'yes'),
(4, 'blogdescription', 'Associação dos Engenheiros Agrônomos de Goiás', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'edertton@gmail.com', 'yes'),
(7, 'start_of_week', '0', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j \\d\\e F, Y', 'yes'),
(24, 'time_format', 'à\\s H:i', 'yes'),
(25, 'links_updated_date_format', 'j \\d\\e F \\d\\e Y, H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%category%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:157:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:12:\"associado/?$\";s:29:\"index.php?post_type=associado\";s:42:\"associado/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?post_type=associado&feed=$matches[1]\";s:37:\"associado/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?post_type=associado&feed=$matches[1]\";s:29:\"associado/page/([0-9]{1,})/?$\";s:47:\"index.php?post_type=associado&paged=$matches[1]\";s:30:\"associado/page/?([0-9]{1,})/?$\";s:47:\"index.php?post_type=associado&paged=$matches[1]\";s:8:\"forum/?$\";s:25:\"index.php?post_type=forum\";s:38:\"forum/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=forum&feed=$matches[1]\";s:33:\"forum/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=forum&feed=$matches[1]\";s:25:\"forum/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=forum&paged=$matches[1]\";s:26:\"forum/page/?([0-9]{1,})/?$\";s:43:\"index.php?post_type=forum&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:37:\"associado/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"associado/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"associado/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"associado/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"associado/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"associado/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:28:\"(associado)/([^/]+)/embed/?$\";s:79:\"index.php?post_type=associado&slug=$matches[1]&associado=$matches[2]&embed=true\";s:32:\"(associado)/([^/]+)/trackback/?$\";s:73:\"index.php?post_type=associado&slug=$matches[1]&associado=$matches[2]&tb=1\";s:52:\"(associado)/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:85:\"index.php?post_type=associado&slug=$matches[1]&associado=$matches[2]&feed=$matches[3]\";s:47:\"(associado)/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:85:\"index.php?post_type=associado&slug=$matches[1]&associado=$matches[2]&feed=$matches[3]\";s:40:\"(associado)/([^/]+)/page/?([0-9]{1,})/?$\";s:86:\"index.php?post_type=associado&slug=$matches[1]&associado=$matches[2]&paged=$matches[3]\";s:47:\"(associado)/([^/]+)/comment-page-([0-9]{1,})/?$\";s:86:\"index.php?post_type=associado&slug=$matches[1]&associado=$matches[2]&cpage=$matches[3]\";s:36:\"(associado)/([^/]+)(?:/([0-9]+))?/?$\";s:85:\"index.php?post_type=associado&slug=$matches[1]&associado=$matches[2]&page=$matches[3]\";s:26:\"associado/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"associado/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"associado/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"associado/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"associado/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"associado/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:44:\"(associado)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:63:\"index.php?post_type=associado&slug=$matches[1]&feed=$matches[2]\";s:39:\"(associado)/(feed|rdf|rss|rss2|atom)/?$\";s:63:\"index.php?post_type=associado&slug=$matches[1]&feed=$matches[2]\";s:20:\"(associado)/embed/?$\";s:57:\"index.php?post_type=associado&slug=$matches[1]&embed=true\";s:32:\"(associado)/page/?([0-9]{1,})/?$\";s:64:\"index.php?post_type=associado&slug=$matches[1]&paged=$matches[2]\";s:39:\"(associado)/comment-page-([0-9]{1,})/?$\";s:64:\"index.php?post_type=associado&slug=$matches[1]&cpage=$matches[2]\";s:14:\"(associado)/?$\";s:46:\"index.php?post_type=associado&slug=$matches[1]\";s:33:\"forum/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"forum/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"forum/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"forum/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"forum/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"forum/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"(forum)/([^/]+)/embed/?$\";s:71:\"index.php?post_type=forum&slug=$matches[1]&forum=$matches[2]&embed=true\";s:28:\"(forum)/([^/]+)/trackback/?$\";s:65:\"index.php?post_type=forum&slug=$matches[1]&forum=$matches[2]&tb=1\";s:48:\"(forum)/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:77:\"index.php?post_type=forum&slug=$matches[1]&forum=$matches[2]&feed=$matches[3]\";s:43:\"(forum)/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:77:\"index.php?post_type=forum&slug=$matches[1]&forum=$matches[2]&feed=$matches[3]\";s:36:\"(forum)/([^/]+)/page/?([0-9]{1,})/?$\";s:78:\"index.php?post_type=forum&slug=$matches[1]&forum=$matches[2]&paged=$matches[3]\";s:43:\"(forum)/([^/]+)/comment-page-([0-9]{1,})/?$\";s:78:\"index.php?post_type=forum&slug=$matches[1]&forum=$matches[2]&cpage=$matches[3]\";s:32:\"(forum)/([^/]+)(?:/([0-9]+))?/?$\";s:77:\"index.php?post_type=forum&slug=$matches[1]&forum=$matches[2]&page=$matches[3]\";s:22:\"forum/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:32:\"forum/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:52:\"forum/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"forum/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"forum/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:28:\"forum/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:40:\"(forum)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?post_type=forum&slug=$matches[1]&feed=$matches[2]\";s:35:\"(forum)/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?post_type=forum&slug=$matches[1]&feed=$matches[2]\";s:16:\"(forum)/embed/?$\";s:53:\"index.php?post_type=forum&slug=$matches[1]&embed=true\";s:28:\"(forum)/page/?([0-9]{1,})/?$\";s:60:\"index.php?post_type=forum&slug=$matches[1]&paged=$matches[2]\";s:35:\"(forum)/comment-page-([0-9]{1,})/?$\";s:60:\"index.php?post_type=forum&slug=$matches[1]&cpage=$matches[2]\";s:10:\"(forum)/?$\";s:42:\"index.php?post_type=forum&slug=$matches[1]\";s:46:\"forum/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?categoria_forum=$matches[1]&feed=$matches[2]\";s:41:\"forum/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?categoria_forum=$matches[1]&feed=$matches[2]\";s:22:\"forum/([^/]+)/embed/?$\";s:48:\"index.php?categoria_forum=$matches[1]&embed=true\";s:34:\"forum/([^/]+)/page/?([0-9]{1,})/?$\";s:55:\"index.php?categoria_forum=$matches[1]&paged=$matches[2]\";s:16:\"forum/([^/]+)/?$\";s:37:\"index.php?categoria_forum=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:31:\".+?/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\".+?/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\".+?/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\".+?/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\".+?/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\".+?/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"(.+?)/([^/]+)/embed/?$\";s:63:\"index.php?category_name=$matches[1]&name=$matches[2]&embed=true\";s:26:\"(.+?)/([^/]+)/trackback/?$\";s:57:\"index.php?category_name=$matches[1]&name=$matches[2]&tb=1\";s:46:\"(.+?)/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:41:\"(.+?)/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:34:\"(.+?)/([^/]+)/page/?([0-9]{1,})/?$\";s:70:\"index.php?category_name=$matches[1]&name=$matches[2]&paged=$matches[3]\";s:41:\"(.+?)/([^/]+)/comment-page-([0-9]{1,})/?$\";s:70:\"index.php?category_name=$matches[1]&name=$matches[2]&cpage=$matches[3]\";s:30:\"(.+?)/([^/]+)(?:/([0-9]+))?/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&page=$matches[3]\";s:20:\".+?/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:30:\".+?/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:50:\".+?/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\".+?/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\".+?/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:26:\".+?/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:38:\"(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:14:\"(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:26:\"(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:33:\"(.+?)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&cpage=$matches[2]\";s:8:\"(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:59:\"simple-post-type-permalinks/simple-post-type-permalinks.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'myweb', 'yes'),
(41, 'stylesheet', 'myweb', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '415', 'yes'),
(59, 'thumbnail_size_h', '245', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '320', 'yes'),
(62, 'medium_size_h', '568', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1170', 'yes'),
(65, 'large_size_h', '508', 'yes'),
(66, 'image_default_link_type', '', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:59:\"simple-post-type-permalinks/simple-post-type-permalinks.php\";a:2:{i:0;s:14:\"SPTP\\Bootstrap\";i:1;s:9:\"uninstall\";}}', 'no'),
(82, 'timezone_string', 'America/Sao_Paulo', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'pt_BR', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'cron', 'a:6:{i:1563882203;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1563896603;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1563939801;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1563939999;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1563940001;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(104, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'recovery_keys', 'a:0:{}', 'yes'),
(122, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1563880449;s:7:\"checked\";a:1:{s:5:\"myweb\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(476, '_site_transient_timeout_theme_roots', '1563882248', 'no'),
(477, '_site_transient_theme_roots', 'a:1:{s:5:\"myweb\";s:7:\"/themes\";}', 'no'),
(411, 'categoria_forum_children', 'a:0:{}', 'yes'),
(244, 'acf_version', '5.8.1', 'yes'),
(246, 'sptp_queue_flush_rewrite_rules', '0', 'yes'),
(249, 'acf_pro_license', 'YToyOntzOjM6ImtleSI7czo3MjoiYjNKa1pYSmZhV1E5T0RjMU9EbDhkSGx3WlQxa1pYWmxiRzl3WlhKOFpHRjBaVDB5TURFMkxUQTRMVEUwSURFNE9qTTNPak0zIjtzOjM6InVybCI7czoyMjoiaHR0cDovL2xvY2FsaG9zdC9hZWFnbyI7fQ==', 'yes'),
(251, 'sptp_options', 'a:2:{s:24:\"sptp_associado_structure\";s:20:\"associado/%postname%\";s:20:\"sptp_forum_structure\";s:16:\"forum/%postname%\";}', 'yes'),
(446, '_transient_timeout_acf_plugin_updates', '1563911417', 'no'),
(447, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.8.2\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"5.2\";s:7:\"package\";s:239:\"https://connect.advancedcustomfields.com/v2/plugins/download?token=eyJwIjoicHJvIiwiayI6ImIzSmtaWEpmYVdROU9EYzFPRGw4ZEhsd1pUMWtaWFpsYkc5d1pYSjhaR0YwWlQweU1ERTJMVEE0TFRFMElERTRPak0zT2pNMyIsIndwX3VybCI6Imh0dHA6XC9cL2xvY2FsaG9zdFwvYWVhZ28ifQ==\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:1:{s:7:\"default\";s:66:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg\";}}}s:10:\"expiration\";i:86400;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.8.1\";}}', 'no'),
(385, '_site_transient_browser_fb5aee71803d8bd8a4d749f5f6fdab81', 'a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"69.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:24:\"https://www.firefox.com/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(386, '_site_transient_timeout_php_check_6b697d679328a3c033f27d9ce3f7f22b', '1563931126', 'no'),
(387, '_site_transient_php_check_6b697d679328a3c033f27d9ce3f7f22b', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(136, 'can_compress_scripts', '1', 'no'),
(384, '_site_transient_timeout_browser_fb5aee71803d8bd8a4d749f5f6fdab81', '1563931125', 'no'),
(478, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1563880450;s:7:\"checked\";a:4:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.8.1\";s:19:\"akismet/akismet.php\";s:5:\"4.1.2\";s:9:\"hello.php\";s:5:\"1.7.2\";s:59:\"simple-post-type-permalinks/simple-post-type-permalinks.php\";s:5:\"2.0.5\";}s:8:\"response\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.8.2\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"5.2\";s:7:\"package\";s:239:\"https://connect.advancedcustomfields.com/v2/plugins/download?token=eyJwIjoicHJvIiwiayI6ImIzSmtaWEpmYVdROU9EYzFPRGw4ZEhsd1pUMWtaWFpsYkc5d1pYSjhaR0YwWlQweU1ERTJMVEE0TFRFMElERTRPak0zT2pNMyIsIndwX3VybCI6Imh0dHA6XC9cL2xvY2FsaG9zdFwvYWVhZ28ifQ==\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:1:{s:7:\"default\";s:66:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:59:\"simple-post-type-permalinks/simple-post-type-permalinks.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:41:\"w.org/plugins/simple-post-type-permalinks\";s:4:\"slug\";s:27:\"simple-post-type-permalinks\";s:6:\"plugin\";s:59:\"simple-post-type-permalinks/simple-post-type-permalinks.php\";s:11:\"new_version\";s:5:\"2.0.5\";s:3:\"url\";s:58:\"https://wordpress.org/plugins/simple-post-type-permalinks/\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/plugin/simple-post-type-permalinks.2.0.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:80:\"https://ps.w.org/simple-post-type-permalinks/assets/icon-256x256.png?rev=1126124\";s:2:\"1x\";s:80:\"https://ps.w.org/simple-post-type-permalinks/assets/icon-128x128.png?rev=1126124\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:83:\"https://ps.w.org/simple-post-type-permalinks/assets/banner-1544x500.png?rev=1126124\";s:2:\"1x\";s:82:\"https://ps.w.org/simple-post-type-permalinks/assets/banner-772x250.png?rev=1126124\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(229, 'category_children', 'a:0:{}', 'yes'),
(243, 'recently_activated', 'a:0:{}', 'yes'),
(142, 'theme_mods_twentynineteen', 'a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1560397626;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(143, 'current_theme', 'My Web', 'yes'),
(144, 'theme_mods_myweb', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(145, 'theme_switched', '', 'yes'),
(260, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.2.2.zip\";s:6:\"locale\";s:5:\"pt_BR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.2.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.2\";s:7:\"version\";s:5:\"5.2.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1563880444;s:15:\"version_checked\";s:5:\"5.2.2\";s:12:\"translations\";a:0:{}}', 'no'),
(207, 'new_admin_email', 'edertton@gmail.com', 'yes'),
(218, 'recovery_mode_email_last_sent', '1561609266', 'yes');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_postmeta`
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
) ENGINE=MyISAM AUTO_INCREMENT=625 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 6, '_edit_lock', '1561617158:1'),
(6, 1, '_wp_trash_meta_status', 'publish'),
(7, 1, '_wp_trash_meta_time', '1561591181'),
(8, 1, '_wp_desired_post_slug', 'ola-mundo'),
(9, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(39, 20, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1380;s:6:\"height\";i:921;s:4:\"file\";s:21:\"2019/06/valio84sl.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"valio84sl-415x245.jpg\";s:5:\"width\";i:415;s:6:\"height\";i:245;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"valio84sl-320x214.jpg\";s:5:\"width\";i:320;s:6:\"height\";i:214;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"valio84sl-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"valio84sl-761x508.jpg\";s:5:\"width\";i:761;s:6:\"height\";i:508;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"detalhe-post\";a:4:{s:4:\"file\";s:22:\"valio84sl-1170x508.jpg\";s:5:\"width\";i:1170;s:6:\"height\";i:508;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"mini-vertical-post\";a:4:{s:4:\"file\";s:21:\"valio84sl-320x568.jpg\";s:5:\"width\";i:320;s:6:\"height\";i:568;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"mini-post\";a:4:{s:4:\"file\";s:21:\"valio84sl-415x245.jpg\";s:5:\"width\";i:415;s:6:\"height\";i:245;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(30, 15, '_edit_lock', '1561618403:1'),
(38, 20, '_wp_attached_file', '2019/06/valio84sl.jpg'),
(29, 14, '_edit_lock', '1561848425:1'),
(31, 16, '_edit_lock', '1561617163:1'),
(43, 21, '_wp_attached_file', '2019/06/banco-de-imagens-agronegocio-3.jpg'),
(42, 6, '_thumbnail_id', '20'),
(44, 21, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:853;s:4:\"file\";s:42:\"2019/06/banco-de-imagens-agronegocio-3.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:42:\"banco-de-imagens-agronegocio-3-415x245.jpg\";s:5:\"width\";i:415;s:6:\"height\";i:245;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:42:\"banco-de-imagens-agronegocio-3-320x213.jpg\";s:5:\"width\";i:320;s:6:\"height\";i:213;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:42:\"banco-de-imagens-agronegocio-3-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:42:\"banco-de-imagens-agronegocio-3-762x508.jpg\";s:5:\"width\";i:762;s:6:\"height\";i:508;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"detalhe-post\";a:4:{s:4:\"file\";s:43:\"banco-de-imagens-agronegocio-3-1170x508.jpg\";s:5:\"width\";i:1170;s:6:\"height\";i:508;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"mini-vertical-post\";a:4:{s:4:\"file\";s:42:\"banco-de-imagens-agronegocio-3-320x568.jpg\";s:5:\"width\";i:320;s:6:\"height\";i:568;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"mini-post\";a:4:{s:4:\"file\";s:42:\"banco-de-imagens-agronegocio-3-415x245.jpg\";s:5:\"width\";i:415;s:6:\"height\";i:245;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(48, 22, '_wp_attached_file', '2019/06/soja_ciorganicos.jpg'),
(47, 16, '_thumbnail_id', '21'),
(49, 22, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1620;s:6:\"height\";i:1080;s:4:\"file\";s:28:\"2019/06/soja_ciorganicos.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"soja_ciorganicos-415x245.jpg\";s:5:\"width\";i:415;s:6:\"height\";i:245;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"soja_ciorganicos-320x213.jpg\";s:5:\"width\";i:320;s:6:\"height\";i:213;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"soja_ciorganicos-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:28:\"soja_ciorganicos-762x508.jpg\";s:5:\"width\";i:762;s:6:\"height\";i:508;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"detalhe-post\";a:4:{s:4:\"file\";s:29:\"soja_ciorganicos-1170x508.jpg\";s:5:\"width\";i:1170;s:6:\"height\";i:508;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"mini-vertical-post\";a:4:{s:4:\"file\";s:28:\"soja_ciorganicos-320x568.jpg\";s:5:\"width\";i:320;s:6:\"height\";i:568;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"mini-post\";a:4:{s:4:\"file\";s:28:\"soja_ciorganicos-415x245.jpg\";s:5:\"width\";i:415;s:6:\"height\";i:245;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(52, 14, '_thumbnail_id', '23'),
(59, 23, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:1275;s:4:\"file\";s:22:\"2019/06/377A9886-1.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"377A9886-1-415x245.jpg\";s:5:\"width\";i:415;s:6:\"height\";i:245;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"377A9886-1-320x199.jpg\";s:5:\"width\";i:320;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"377A9886-1-768x478.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:478;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"377A9886-1-816x508.jpg\";s:5:\"width\";i:816;s:6:\"height\";i:508;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"detalhe-post\";a:4:{s:4:\"file\";s:23:\"377A9886-1-1170x508.jpg\";s:5:\"width\";i:1170;s:6:\"height\";i:508;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"mini-vertical-post\";a:4:{s:4:\"file\";s:22:\"377A9886-1-320x568.jpg\";s:5:\"width\";i:320;s:6:\"height\";i:568;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"mini-post\";a:4:{s:4:\"file\";s:22:\"377A9886-1-415x245.jpg\";s:5:\"width\";i:415;s:6:\"height\";i:245;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(58, 23, '_wp_attached_file', '2019/06/377A9886-1.jpg'),
(57, 15, '_thumbnail_id', '22'),
(67, 27, '_edit_lock', '1563340646:1'),
(66, 27, '_edit_last', '1'),
(109, 27, '_thumbnail_id', '47'),
(110, 43, '_edit_last', '1'),
(111, 43, '_thumbnail_id', '48'),
(112, 43, 'status_associado', '1'),
(113, 43, '_status_associado', 'field_5d194e19efeeb'),
(114, 43, 'email_associado', 'joao@gmail.com'),
(115, 43, '_email_associado', 'field_5d194d357e5a1'),
(116, 43, 'senha_associado', '123'),
(117, 43, '_senha_associado', 'field_5d194d627e5a2'),
(118, 43, 'nome_associado', 'João'),
(119, 43, '_nome_associado', 'field_5d1977d7e744b'),
(120, 43, 'sobrenome_associado', 'Roberto Felipe'),
(121, 43, '_sobrenome_associado', 'field_5d1977ede744c'),
(122, 43, '_edit_lock', '1562216256:1'),
(123, 49, '_wp_attached_file', '2019/07/pessoa-assexuada.jpg'),
(124, 49, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:945;s:6:\"height\";i:630;s:4:\"file\";s:28:\"2019/07/pessoa-assexuada.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"pessoa-assexuada-415x245.jpg\";s:5:\"width\";i:415;s:6:\"height\";i:245;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"pessoa-assexuada-320x213.jpg\";s:5:\"width\";i:320;s:6:\"height\";i:213;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"pessoa-assexuada-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:28:\"pessoa-assexuada-762x508.jpg\";s:5:\"width\";i:762;s:6:\"height\";i:508;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"detalhe-post\";a:4:{s:4:\"file\";s:28:\"pessoa-assexuada-945x508.jpg\";s:5:\"width\";i:945;s:6:\"height\";i:508;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"mini-vertical-post\";a:4:{s:4:\"file\";s:28:\"pessoa-assexuada-320x568.jpg\";s:5:\"width\";i:320;s:6:\"height\";i:568;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"mini-post\";a:4:{s:4:\"file\";s:28:\"pessoa-assexuada-415x245.jpg\";s:5:\"width\";i:415;s:6:\"height\";i:245;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(71, 29, '_edit_last', '1'),
(72, 29, '_edit_lock', '1563418291:1'),
(73, 31, '_edit_last', '1'),
(74, 31, '_edit_lock', '1563331888:1'),
(75, 27, 'email_associado', 'edertton@gmail.com'),
(76, 27, '_email_associado', 'field_5d194d357e5a1'),
(77, 27, 'senha_associado', '123'),
(78, 27, '_senha_associado', 'field_5d194d627e5a2'),
(79, 27, 'status_associado', '1'),
(80, 27, '_status_associado', 'field_5d194e19efeeb'),
(81, 35, '_edit_last', '1'),
(82, 35, '_edit_lock', '1563415818:1'),
(83, 27, 'nome_associado', 'Ederton'),
(84, 27, '_nome_associado', 'field_5d1977d7e744b'),
(85, 27, 'sobrenome_associado', 'Lima'),
(86, 27, '_sobrenome_associado', 'field_5d1977ede744c'),
(87, 38, '_edit_last', '1'),
(88, 38, '_edit_lock', '1561951802:1'),
(89, 41, '_edit_last', '1'),
(90, 41, '_edit_lock', '1562271355:1'),
(91, 42, '_wp_attached_file', '2019/07/Homem-confiante.jpg'),
(92, 42, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:720;s:6:\"height\";i:405;s:4:\"file\";s:27:\"2019/07/Homem-confiante.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"Homem-confiante-415x245.jpg\";s:5:\"width\";i:415;s:6:\"height\";i:245;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"Homem-confiante-320x180.jpg\";s:5:\"width\";i:320;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"mini-vertical-post\";a:4:{s:4:\"file\";s:27:\"Homem-confiante-320x405.jpg\";s:5:\"width\";i:320;s:6:\"height\";i:405;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"mini-post\";a:4:{s:4:\"file\";s:27:\"Homem-confiante-415x245.jpg\";s:5:\"width\";i:415;s:6:\"height\";i:245;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(93, 41, '_thumbnail_id', '42'),
(94, 41, '_wp_old_date', '2019-07-03'),
(95, 41, 'status_associado', '1'),
(96, 41, '_status_associado', 'field_5d194e19efeeb'),
(97, 41, 'email_associado', 'jeffersonarantes@gmail.com'),
(98, 41, '_email_associado', 'field_5d194d357e5a1'),
(99, 41, 'senha_associado', '123'),
(100, 41, '_senha_associado', 'field_5d194d627e5a2'),
(101, 41, 'nome_associado', 'Jeferson'),
(102, 41, '_nome_associado', 'field_5d1977d7e744b'),
(103, 41, 'sobrenome_associado', 'da Silva'),
(104, 41, '_sobrenome_associado', 'field_5d1977ede744c'),
(105, 47, '_wp_attached_file', '2019/06/bracos-africanos-novos-excited-felizes-do-cruzamento-do-homem-na-caixa-e-vista-da-camera_1262-12351.jpg'),
(106, 47, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:626;s:6:\"height\";i:417;s:4:\"file\";s:111:\"2019/06/bracos-africanos-novos-excited-felizes-do-cruzamento-do-homem-na-caixa-e-vista-da-camera_1262-12351.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:111:\"bracos-africanos-novos-excited-felizes-do-cruzamento-do-homem-na-caixa-e-vista-da-camera_1262-12351-415x245.jpg\";s:5:\"width\";i:415;s:6:\"height\";i:245;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:111:\"bracos-africanos-novos-excited-felizes-do-cruzamento-do-homem-na-caixa-e-vista-da-camera_1262-12351-320x213.jpg\";s:5:\"width\";i:320;s:6:\"height\";i:213;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"mini-vertical-post\";a:4:{s:4:\"file\";s:111:\"bracos-africanos-novos-excited-felizes-do-cruzamento-do-homem-na-caixa-e-vista-da-camera_1262-12351-320x417.jpg\";s:5:\"width\";i:320;s:6:\"height\";i:417;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"mini-post\";a:4:{s:4:\"file\";s:111:\"bracos-africanos-novos-excited-felizes-do-cruzamento-do-homem-na-caixa-e-vista-da-camera_1262-12351-415x245.jpg\";s:5:\"width\";i:415;s:6:\"height\";i:245;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(107, 48, '_wp_attached_file', '2019/06/pexels-photo-683381.jpeg'),
(108, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1880;s:6:\"height\";i:1253;s:4:\"file\";s:32:\"2019/06/pexels-photo-683381.jpeg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"pexels-photo-683381-415x245.jpeg\";s:5:\"width\";i:415;s:6:\"height\";i:245;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"pexels-photo-683381-320x213.jpeg\";s:5:\"width\";i:320;s:6:\"height\";i:213;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"pexels-photo-683381-768x512.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:32:\"pexels-photo-683381-762x508.jpeg\";s:5:\"width\";i:762;s:6:\"height\";i:508;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"detalhe-post\";a:4:{s:4:\"file\";s:33:\"pexels-photo-683381-1170x508.jpeg\";s:5:\"width\";i:1170;s:6:\"height\";i:508;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"mini-vertical-post\";a:4:{s:4:\"file\";s:32:\"pexels-photo-683381-320x568.jpeg\";s:5:\"width\";i:320;s:6:\"height\";i:568;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"mini-post\";a:4:{s:4:\"file\";s:32:\"pexels-photo-683381-415x245.jpeg\";s:5:\"width\";i:415;s:6:\"height\";i:245;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(125, 44, '_edit_last', '1'),
(126, 44, '_edit_lock', '1562216251:1'),
(127, 44, '_thumbnail_id', '49'),
(128, 44, 'status_associado', '1'),
(129, 44, '_status_associado', 'field_5d194e19efeeb'),
(130, 44, 'email_associado', 'silvana@gmail.com'),
(131, 44, '_email_associado', 'field_5d194d357e5a1'),
(132, 44, 'senha_associado', '123'),
(133, 44, '_senha_associado', 'field_5d194d627e5a2'),
(134, 44, 'nome_associado', 'Silvana'),
(135, 44, '_nome_associado', 'field_5d1977d7e744b'),
(136, 44, 'sobrenome_associado', 'Menezes da Silva'),
(137, 44, '_sobrenome_associado', 'field_5d1977ede744c'),
(138, 51, '_wp_attached_file', '2019/07/4-razoes-para-ser-uma-pessoa-mais-curiosa-thumb-570.jpg'),
(139, 51, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:570;s:6:\"height\";i:380;s:4:\"file\";s:63:\"2019/07/4-razoes-para-ser-uma-pessoa-mais-curiosa-thumb-570.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:63:\"4-razoes-para-ser-uma-pessoa-mais-curiosa-thumb-570-415x245.jpg\";s:5:\"width\";i:415;s:6:\"height\";i:245;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:63:\"4-razoes-para-ser-uma-pessoa-mais-curiosa-thumb-570-320x213.jpg\";s:5:\"width\";i:320;s:6:\"height\";i:213;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"mini-vertical-post\";a:4:{s:4:\"file\";s:63:\"4-razoes-para-ser-uma-pessoa-mais-curiosa-thumb-570-320x380.jpg\";s:5:\"width\";i:320;s:6:\"height\";i:380;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"mini-post\";a:4:{s:4:\"file\";s:63:\"4-razoes-para-ser-uma-pessoa-mais-curiosa-thumb-570-415x245.jpg\";s:5:\"width\";i:415;s:6:\"height\";i:245;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(140, 50, '_edit_last', '1'),
(141, 50, '_edit_lock', '1562216250:1'),
(142, 50, '_thumbnail_id', '51'),
(143, 50, 'status_associado', '1'),
(144, 50, '_status_associado', 'field_5d194e19efeeb'),
(145, 50, 'email_associado', 'leticia@gmail.com'),
(146, 50, '_email_associado', 'field_5d194d357e5a1'),
(147, 50, 'senha_associado', '123'),
(148, 50, '_senha_associado', 'field_5d194d627e5a2'),
(149, 50, 'nome_associado', 'Letícia'),
(150, 50, '_nome_associado', 'field_5d1977d7e744b'),
(151, 50, 'sobrenome_associado', 'Marcado Rodrigues'),
(152, 50, '_sobrenome_associado', 'field_5d1977ede744c'),
(153, 52, '_wp_attached_file', '2019/07/saiba-como-a-educacao-ajuda-voce-a-ser-uma-pessoa-melhor.jpeg'),
(154, 52, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:670;s:6:\"height\";i:670;s:4:\"file\";s:69:\"2019/07/saiba-como-a-educacao-ajuda-voce-a-ser-uma-pessoa-melhor.jpeg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:69:\"saiba-como-a-educacao-ajuda-voce-a-ser-uma-pessoa-melhor-415x245.jpeg\";s:5:\"width\";i:415;s:6:\"height\";i:245;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:69:\"saiba-como-a-educacao-ajuda-voce-a-ser-uma-pessoa-melhor-320x320.jpeg\";s:5:\"width\";i:320;s:6:\"height\";i:320;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:69:\"saiba-como-a-educacao-ajuda-voce-a-ser-uma-pessoa-melhor-508x508.jpeg\";s:5:\"width\";i:508;s:6:\"height\";i:508;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"detalhe-post\";a:4:{s:4:\"file\";s:69:\"saiba-como-a-educacao-ajuda-voce-a-ser-uma-pessoa-melhor-670x508.jpeg\";s:5:\"width\";i:670;s:6:\"height\";i:508;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"mini-vertical-post\";a:4:{s:4:\"file\";s:69:\"saiba-como-a-educacao-ajuda-voce-a-ser-uma-pessoa-melhor-320x568.jpeg\";s:5:\"width\";i:320;s:6:\"height\";i:568;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"mini-post\";a:4:{s:4:\"file\";s:69:\"saiba-como-a-educacao-ajuda-voce-a-ser-uma-pessoa-melhor-415x245.jpeg\";s:5:\"width\";i:415;s:6:\"height\";i:245;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(155, 45, '_edit_last', '1'),
(156, 45, '_edit_lock', '1562216249:1'),
(157, 45, '_thumbnail_id', '52'),
(158, 45, 'status_associado', '1'),
(159, 45, '_status_associado', 'field_5d194e19efeeb'),
(160, 45, 'email_associado', 'julianafernanda@gmail.com'),
(161, 45, '_email_associado', 'field_5d194d357e5a1'),
(162, 45, 'senha_associado', '123'),
(163, 45, '_senha_associado', 'field_5d194d627e5a2'),
(164, 45, 'nome_associado', 'Juliana'),
(165, 45, '_nome_associado', 'field_5d1977d7e744b'),
(166, 45, 'sobrenome_associado', 'Fernanda Milas'),
(167, 45, '_sobrenome_associado', 'field_5d1977ede744c'),
(168, 46, '_edit_last', '1'),
(169, 46, '_edit_lock', '1562217342:1'),
(170, 53, '_wp_attached_file', '2019/07/homem-que-sorri-com-os-bracos-cruzados_1187-2903.jpg'),
(171, 53, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:626;s:6:\"height\";i:781;s:4:\"file\";s:60:\"2019/07/homem-que-sorri-com-os-bracos-cruzados_1187-2903.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:60:\"homem-que-sorri-com-os-bracos-cruzados_1187-2903-415x245.jpg\";s:5:\"width\";i:415;s:6:\"height\";i:245;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:60:\"homem-que-sorri-com-os-bracos-cruzados_1187-2903-320x399.jpg\";s:5:\"width\";i:320;s:6:\"height\";i:399;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:60:\"homem-que-sorri-com-os-bracos-cruzados_1187-2903-407x508.jpg\";s:5:\"width\";i:407;s:6:\"height\";i:508;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"detalhe-post\";a:4:{s:4:\"file\";s:60:\"homem-que-sorri-com-os-bracos-cruzados_1187-2903-626x508.jpg\";s:5:\"width\";i:626;s:6:\"height\";i:508;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"mini-vertical-post\";a:4:{s:4:\"file\";s:60:\"homem-que-sorri-com-os-bracos-cruzados_1187-2903-320x568.jpg\";s:5:\"width\";i:320;s:6:\"height\";i:568;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"mini-post\";a:4:{s:4:\"file\";s:60:\"homem-que-sorri-com-os-bracos-cruzados_1187-2903-415x245.jpg\";s:5:\"width\";i:415;s:6:\"height\";i:245;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(172, 46, '_thumbnail_id', '53'),
(173, 46, 'status_associado', '1'),
(174, 46, '_status_associado', 'field_5d194e19efeeb'),
(175, 46, 'email_associado', 'rogerio@gmail.com'),
(176, 46, '_email_associado', 'field_5d194d357e5a1'),
(177, 46, 'senha_associado', '123'),
(178, 46, '_senha_associado', 'field_5d194d627e5a2'),
(179, 46, 'nome_associado', 'Rogério'),
(180, 46, '_nome_associado', 'field_5d1977d7e744b'),
(181, 46, 'sobrenome_associado', 'Marques de Azevedo'),
(182, 46, '_sobrenome_associado', 'field_5d1977ede744c'),
(183, 54, '_edit_last', '1'),
(184, 54, '_edit_lock', '1562217341:1'),
(185, 55, '_wp_attached_file', '2019/07/5591e66dcd7ab3.068551755591e66dbebbf2.42211153.jpg'),
(186, 55, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:480;s:4:\"file\";s:58:\"2019/07/5591e66dcd7ab3.068551755591e66dbebbf2.42211153.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:58:\"5591e66dcd7ab3.068551755591e66dbebbf2.42211153-415x245.jpg\";s:5:\"width\";i:415;s:6:\"height\";i:245;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:58:\"5591e66dcd7ab3.068551755591e66dbebbf2.42211153-320x240.jpg\";s:5:\"width\";i:320;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"mini-vertical-post\";a:4:{s:4:\"file\";s:58:\"5591e66dcd7ab3.068551755591e66dbebbf2.42211153-320x480.jpg\";s:5:\"width\";i:320;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"mini-post\";a:4:{s:4:\"file\";s:58:\"5591e66dcd7ab3.068551755591e66dbebbf2.42211153-415x245.jpg\";s:5:\"width\";i:415;s:6:\"height\";i:245;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(187, 54, '_thumbnail_id', '55'),
(188, 54, 'status_associado', '1'),
(189, 54, '_status_associado', 'field_5d194e19efeeb'),
(190, 54, 'email_associado', 'mariaantonela@gmail.com'),
(191, 54, '_email_associado', 'field_5d194d357e5a1'),
(192, 54, 'senha_associado', '123'),
(193, 54, '_senha_associado', 'field_5d194d627e5a2'),
(194, 54, 'nome_associado', 'Maria'),
(195, 54, '_nome_associado', 'field_5d1977d7e744b'),
(196, 54, 'sobrenome_associado', 'Antonela Rodrigues'),
(197, 54, '_sobrenome_associado', 'field_5d1977ede744c'),
(198, 56, '_edit_last', '1'),
(199, 56, '_edit_lock', '1562217334:1'),
(200, 57, '_wp_attached_file', '2019/07/formato-thumb-blog_AnaMariaDelpino.jpg'),
(201, 57, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3674;s:6:\"height\";i:2449;s:4:\"file\";s:46:\"2019/07/formato-thumb-blog_AnaMariaDelpino.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:46:\"formato-thumb-blog_AnaMariaDelpino-415x245.jpg\";s:5:\"width\";i:415;s:6:\"height\";i:245;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:46:\"formato-thumb-blog_AnaMariaDelpino-320x213.jpg\";s:5:\"width\";i:320;s:6:\"height\";i:213;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:46:\"formato-thumb-blog_AnaMariaDelpino-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:46:\"formato-thumb-blog_AnaMariaDelpino-762x508.jpg\";s:5:\"width\";i:762;s:6:\"height\";i:508;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"detalhe-post\";a:4:{s:4:\"file\";s:47:\"formato-thumb-blog_AnaMariaDelpino-1170x508.jpg\";s:5:\"width\";i:1170;s:6:\"height\";i:508;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"mini-vertical-post\";a:4:{s:4:\"file\";s:46:\"formato-thumb-blog_AnaMariaDelpino-320x568.jpg\";s:5:\"width\";i:320;s:6:\"height\";i:568;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"mini-post\";a:4:{s:4:\"file\";s:46:\"formato-thumb-blog_AnaMariaDelpino-415x245.jpg\";s:5:\"width\";i:415;s:6:\"height\";i:245;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:25:\"GB Producoes Fotograficas\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(202, 56, '_thumbnail_id', '57'),
(203, 56, 'status_associado', '1'),
(204, 56, '_status_associado', 'field_5d194e19efeeb'),
(205, 56, 'email_associado', 'nilcedamelia@gmail.com'),
(206, 56, '_email_associado', 'field_5d194d357e5a1'),
(207, 56, 'senha_associado', '123'),
(208, 56, '_senha_associado', 'field_5d194d627e5a2'),
(209, 56, 'nome_associado', 'Nilce'),
(210, 56, '_nome_associado', 'field_5d1977d7e744b'),
(211, 56, 'sobrenome_associado', 'Damélia Romana da Silva'),
(212, 56, '_sobrenome_associado', 'field_5d1977ede744c'),
(213, 58, '_edit_last', '1'),
(214, 58, '_edit_lock', '1562217340:1'),
(215, 59, '_wp_attached_file', '2019/07/E-uma-pessoa-feliz-ou-apenas-alegre.jpg'),
(216, 59, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:724;s:4:\"file\";s:47:\"2019/07/E-uma-pessoa-feliz-ou-apenas-alegre.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:47:\"E-uma-pessoa-feliz-ou-apenas-alegre-415x245.jpg\";s:5:\"width\";i:415;s:6:\"height\";i:245;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:47:\"E-uma-pessoa-feliz-ou-apenas-alegre-320x290.jpg\";s:5:\"width\";i:320;s:6:\"height\";i:290;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:47:\"E-uma-pessoa-feliz-ou-apenas-alegre-768x695.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:695;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:47:\"E-uma-pessoa-feliz-ou-apenas-alegre-561x508.jpg\";s:5:\"width\";i:561;s:6:\"height\";i:508;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"detalhe-post\";a:4:{s:4:\"file\";s:47:\"E-uma-pessoa-feliz-ou-apenas-alegre-800x508.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:508;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"mini-vertical-post\";a:4:{s:4:\"file\";s:47:\"E-uma-pessoa-feliz-ou-apenas-alegre-320x568.jpg\";s:5:\"width\";i:320;s:6:\"height\";i:568;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"mini-post\";a:4:{s:4:\"file\";s:47:\"E-uma-pessoa-feliz-ou-apenas-alegre-415x245.jpg\";s:5:\"width\";i:415;s:6:\"height\";i:245;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(217, 58, '_thumbnail_id', '59'),
(218, 58, 'status_associado', '1'),
(219, 58, '_status_associado', 'field_5d194e19efeeb'),
(220, 58, 'email_associado', 'amandamioto@gmail.com'),
(221, 58, '_email_associado', 'field_5d194d357e5a1'),
(222, 58, 'senha_associado', '123'),
(223, 58, '_senha_associado', 'field_5d194d627e5a2'),
(224, 58, 'nome_associado', 'Amanda'),
(225, 58, '_nome_associado', 'field_5d1977d7e744b'),
(226, 58, 'sobrenome_associado', 'Mioto Nunes'),
(227, 58, '_sobrenome_associado', 'field_5d1977ede744c'),
(228, 60, '_edit_last', '1'),
(229, 60, '_edit_lock', '1562217347:1'),
(230, 61, '_wp_attached_file', '2019/07/pessoa-ruim.jpg'),
(231, 61, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:979;s:6:\"height\";i:460;s:4:\"file\";s:23:\"2019/07/pessoa-ruim.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"pessoa-ruim-415x245.jpg\";s:5:\"width\";i:415;s:6:\"height\";i:245;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"pessoa-ruim-320x150.jpg\";s:5:\"width\";i:320;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"pessoa-ruim-768x361.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:361;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"mini-vertical-post\";a:4:{s:4:\"file\";s:23:\"pessoa-ruim-320x460.jpg\";s:5:\"width\";i:320;s:6:\"height\";i:460;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"mini-post\";a:4:{s:4:\"file\";s:23:\"pessoa-ruim-415x245.jpg\";s:5:\"width\";i:415;s:6:\"height\";i:245;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(232, 60, '_thumbnail_id', '61'),
(233, 60, 'status_associado', '1'),
(234, 60, '_status_associado', 'field_5d194e19efeeb'),
(235, 60, 'email_associado', 'nandamaria@gmail.com'),
(236, 60, '_email_associado', 'field_5d194d357e5a1'),
(237, 60, 'senha_associado', '123'),
(238, 60, '_senha_associado', 'field_5d194d627e5a2'),
(239, 60, 'nome_associado', 'Nanda'),
(240, 60, '_nome_associado', 'field_5d1977d7e744b'),
(241, 60, 'sobrenome_associado', 'Maria de Jesus'),
(242, 60, '_sobrenome_associado', 'field_5d1977ede744c'),
(243, 62, '_edit_last', '1'),
(244, 62, '_edit_lock', '1562217323:1'),
(245, 63, '_wp_attached_file', '2019/07/I98JM9OX_400x400.jpg'),
(246, 63, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:28:\"2019/07/I98JM9OX_400x400.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"I98JM9OX_400x400-400x245.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:245;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"I98JM9OX_400x400-320x320.jpg\";s:5:\"width\";i:320;s:6:\"height\";i:320;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"mini-vertical-post\";a:4:{s:4:\"file\";s:28:\"I98JM9OX_400x400-320x400.jpg\";s:5:\"width\";i:320;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"mini-post\";a:4:{s:4:\"file\";s:28:\"I98JM9OX_400x400-400x245.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:245;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(247, 62, '_thumbnail_id', '63'),
(248, 62, 'status_associado', '1'),
(249, 62, '_status_associado', 'field_5d194e19efeeb'),
(250, 62, 'email_associado', 'tuliomarcelo@gmail.com'),
(251, 62, '_email_associado', 'field_5d194d357e5a1'),
(252, 62, 'senha_associado', '123'),
(253, 62, '_senha_associado', 'field_5d194d627e5a2'),
(254, 62, 'nome_associado', 'Túlio'),
(255, 62, '_nome_associado', 'field_5d1977d7e744b'),
(256, 62, 'sobrenome_associado', 'Marcelo da Silva Lima'),
(257, 62, '_sobrenome_associado', 'field_5d1977ede744c'),
(258, 64, '_edit_last', '1'),
(259, 64, '_edit_lock', '1562217322:1'),
(260, 65, '_wp_attached_file', '2019/07/carlos_pessoa-2-1.jpg'),
(261, 65, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:1200;s:4:\"file\";s:29:\"2019/07/carlos_pessoa-2-1.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"carlos_pessoa-2-1-415x245.jpg\";s:5:\"width\";i:415;s:6:\"height\";i:245;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"carlos_pessoa-2-1-320x480.jpg\";s:5:\"width\";i:320;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"carlos_pessoa-2-1-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:29:\"carlos_pessoa-2-1-339x508.jpg\";s:5:\"width\";i:339;s:6:\"height\";i:508;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"detalhe-post\";a:4:{s:4:\"file\";s:29:\"carlos_pessoa-2-1-800x508.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:508;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"mini-vertical-post\";a:4:{s:4:\"file\";s:29:\"carlos_pessoa-2-1-320x568.jpg\";s:5:\"width\";i:320;s:6:\"height\";i:568;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"mini-post\";a:4:{s:4:\"file\";s:29:\"carlos_pessoa-2-1-415x245.jpg\";s:5:\"width\";i:415;s:6:\"height\";i:245;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:23:\"© 2012 - João Avelino\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(262, 64, '_thumbnail_id', '65'),
(263, 64, 'status_associado', '1'),
(264, 64, '_status_associado', 'field_5d194e19efeeb'),
(265, 64, 'email_associado', 'joaolima@gmail.com'),
(266, 64, '_email_associado', 'field_5d194d357e5a1'),
(267, 64, 'senha_associado', '123'),
(268, 64, '_senha_associado', 'field_5d194d627e5a2'),
(269, 64, 'nome_associado', 'João'),
(270, 64, '_nome_associado', 'field_5d1977d7e744b'),
(271, 64, 'sobrenome_associado', 'Lima'),
(272, 64, '_sobrenome_associado', 'field_5d1977ede744c'),
(273, 66, '_edit_last', '1'),
(274, 66, '_edit_lock', '1562217322:1'),
(275, 67, '_wp_attached_file', '2019/07/thumb_AleB.jpg'),
(276, 67, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3674;s:6:\"height\";i:2449;s:4:\"file\";s:22:\"2019/07/thumb_AleB.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"thumb_AleB-415x245.jpg\";s:5:\"width\";i:415;s:6:\"height\";i:245;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"thumb_AleB-320x213.jpg\";s:5:\"width\";i:320;s:6:\"height\";i:213;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"thumb_AleB-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"thumb_AleB-762x508.jpg\";s:5:\"width\";i:762;s:6:\"height\";i:508;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"detalhe-post\";a:4:{s:4:\"file\";s:23:\"thumb_AleB-1170x508.jpg\";s:5:\"width\";i:1170;s:6:\"height\";i:508;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"mini-vertical-post\";a:4:{s:4:\"file\";s:22:\"thumb_AleB-320x568.jpg\";s:5:\"width\";i:320;s:6:\"height\";i:568;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"mini-post\";a:4:{s:4:\"file\";s:22:\"thumb_AleB-415x245.jpg\";s:5:\"width\";i:415;s:6:\"height\";i:245;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:25:\"GB Producoes Fotograficas\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(277, 66, '_thumbnail_id', '67'),
(278, 66, 'status_associado', '1'),
(279, 66, '_status_associado', 'field_5d194e19efeeb'),
(280, 66, 'email_associado', 'brunojulio@gmail.com'),
(281, 66, '_email_associado', 'field_5d194d357e5a1'),
(282, 66, 'senha_associado', '123'),
(283, 66, '_senha_associado', 'field_5d194d627e5a2'),
(284, 66, 'nome_associado', 'Breno'),
(285, 66, '_nome_associado', 'field_5d1977d7e744b'),
(286, 66, 'sobrenome_associado', 'Júlio Pereira'),
(287, 66, '_sobrenome_associado', 'field_5d1977ede744c'),
(288, 68, '_edit_last', '1'),
(289, 68, '_edit_lock', '1562217321:1'),
(290, 69, '_wp_attached_file', '2019/07/feliz-consigo-entre-os-sinais-de-uma-pessoa-feliz.jpg'),
(291, 69, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:330;s:4:\"file\";s:61:\"2019/07/feliz-consigo-entre-os-sinais-de-uma-pessoa-feliz.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:61:\"feliz-consigo-entre-os-sinais-de-uma-pessoa-feliz-415x245.jpg\";s:5:\"width\";i:415;s:6:\"height\";i:245;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:61:\"feliz-consigo-entre-os-sinais-de-uma-pessoa-feliz-320x176.jpg\";s:5:\"width\";i:320;s:6:\"height\";i:176;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"mini-vertical-post\";a:4:{s:4:\"file\";s:61:\"feliz-consigo-entre-os-sinais-de-uma-pessoa-feliz-320x330.jpg\";s:5:\"width\";i:320;s:6:\"height\";i:330;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"mini-post\";a:4:{s:4:\"file\";s:61:\"feliz-consigo-entre-os-sinais-de-uma-pessoa-feliz-415x245.jpg\";s:5:\"width\";i:415;s:6:\"height\";i:245;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(292, 68, '_thumbnail_id', '69'),
(293, 68, 'status_associado', '1'),
(294, 68, '_status_associado', 'field_5d194e19efeeb'),
(295, 68, 'email_associado', 'cleidebruna@gmail.com'),
(296, 68, '_email_associado', 'field_5d194d357e5a1'),
(297, 68, 'senha_associado', '123'),
(298, 68, '_senha_associado', 'field_5d194d627e5a2'),
(299, 68, 'nome_associado', 'Cleide'),
(300, 68, '_nome_associado', 'field_5d1977d7e744b'),
(301, 68, 'sobrenome_associado', 'Bruna Rodrigues'),
(302, 68, '_sobrenome_associado', 'field_5d1977ede744c'),
(303, 70, '_edit_last', '1'),
(304, 70, '_edit_lock', '1562217320:1'),
(305, 71, '_wp_attached_file', '2019/07/Qual-é-o-Perfil-do-Empreendedor.jpg'),
(306, 71, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:616;s:6:\"height\";i:391;s:4:\"file\";s:45:\"2019/07/Qual-é-o-Perfil-do-Empreendedor.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:45:\"Qual-é-o-Perfil-do-Empreendedor-415x245.jpg\";s:5:\"width\";i:415;s:6:\"height\";i:245;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:45:\"Qual-é-o-Perfil-do-Empreendedor-320x203.jpg\";s:5:\"width\";i:320;s:6:\"height\";i:203;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"mini-vertical-post\";a:4:{s:4:\"file\";s:45:\"Qual-é-o-Perfil-do-Empreendedor-320x391.jpg\";s:5:\"width\";i:320;s:6:\"height\";i:391;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"mini-post\";a:4:{s:4:\"file\";s:45:\"Qual-é-o-Perfil-do-Empreendedor-415x245.jpg\";s:5:\"width\";i:415;s:6:\"height\";i:245;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(307, 70, '_thumbnail_id', '71'),
(308, 70, 'status_associado', '1'),
(309, 70, '_status_associado', 'field_5d194e19efeeb'),
(310, 70, 'email_associado', 'pedrokiorena@gmail.com'),
(311, 70, '_email_associado', 'field_5d194d357e5a1'),
(312, 70, 'senha_associado', '123'),
(313, 70, '_senha_associado', 'field_5d194d627e5a2'),
(314, 70, 'nome_associado', 'Pedro'),
(315, 70, '_nome_associado', 'field_5d1977d7e744b'),
(316, 70, 'sobrenome_associado', 'Kiorena'),
(317, 70, '_sobrenome_associado', 'field_5d1977ede744c'),
(318, 72, '_edit_last', '1'),
(319, 72, '_edit_lock', '1562217320:1'),
(320, 73, '_wp_attached_file', '2019/07/27151441599410.jpg'),
(321, 73, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:458;s:4:\"file\";s:26:\"2019/07/27151441599410.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"27151441599410-415x245.jpg\";s:5:\"width\";i:415;s:6:\"height\";i:245;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"27151441599410-320x229.jpg\";s:5:\"width\";i:320;s:6:\"height\";i:229;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"mini-vertical-post\";a:4:{s:4:\"file\";s:26:\"27151441599410-320x458.jpg\";s:5:\"width\";i:320;s:6:\"height\";i:458;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"mini-post\";a:4:{s:4:\"file\";s:26:\"27151441599410-415x245.jpg\";s:5:\"width\";i:415;s:6:\"height\";i:245;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(322, 72, '_thumbnail_id', '73'),
(323, 72, 'status_associado', '1'),
(324, 72, '_status_associado', 'field_5d194e19efeeb'),
(325, 72, 'email_associado', 'suelen@gmail.com'),
(326, 72, '_email_associado', 'field_5d194d357e5a1'),
(327, 72, 'senha_associado', '123'),
(328, 72, '_senha_associado', 'field_5d194d627e5a2'),
(329, 72, 'nome_associado', 'Suelen'),
(330, 72, '_nome_associado', 'field_5d1977d7e744b'),
(331, 72, 'sobrenome_associado', 'Zuriana Silva'),
(332, 72, '_sobrenome_associado', 'field_5d1977ede744c'),
(333, 75, '_wp_attached_file', '2019/07/sinais-que-comprovam-que-voce-tem-se-tornado-uma-pessoa-melhor-a-cada-dia-1.jpg'),
(334, 75, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:760;s:6:\"height\";i:500;s:4:\"file\";s:87:\"2019/07/sinais-que-comprovam-que-voce-tem-se-tornado-uma-pessoa-melhor-a-cada-dia-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:87:\"sinais-que-comprovam-que-voce-tem-se-tornado-uma-pessoa-melhor-a-cada-dia-1-415x245.jpg\";s:5:\"width\";i:415;s:6:\"height\";i:245;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:87:\"sinais-que-comprovam-que-voce-tem-se-tornado-uma-pessoa-melhor-a-cada-dia-1-320x211.jpg\";s:5:\"width\";i:320;s:6:\"height\";i:211;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"mini-vertical-post\";a:4:{s:4:\"file\";s:87:\"sinais-que-comprovam-que-voce-tem-se-tornado-uma-pessoa-melhor-a-cada-dia-1-320x500.jpg\";s:5:\"width\";i:320;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"mini-post\";a:4:{s:4:\"file\";s:87:\"sinais-que-comprovam-que-voce-tem-se-tornado-uma-pessoa-melhor-a-cada-dia-1-415x245.jpg\";s:5:\"width\";i:415;s:6:\"height\";i:245;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(335, 74, '_edit_last', '1'),
(336, 74, '_edit_lock', '1563396877:1'),
(337, 74, '_thumbnail_id', '75'),
(338, 74, 'status_associado', '1'),
(339, 74, '_status_associado', 'field_5d194e19efeeb'),
(340, 74, 'email_associado', 'luciana@gmail.com'),
(341, 74, '_email_associado', 'field_5d194d357e5a1'),
(342, 74, 'senha_associado', '123'),
(343, 74, '_senha_associado', 'field_5d194d627e5a2'),
(344, 74, 'nome_associado', 'Luciana '),
(345, 74, '_nome_associado', 'field_5d1977d7e744b'),
(346, 74, 'sobrenome_associado', 'Oliver Albino'),
(347, 74, '_sobrenome_associado', 'field_5d1977ede744c'),
(348, 78, '_edit_last', '1'),
(349, 78, '_edit_lock', '1562285570:1'),
(350, 80, '_edit_last', '1'),
(351, 80, '_edit_lock', '1562285551:1'),
(352, 79, '_edit_last', '1'),
(353, 79, '_edit_lock', '1563420007:1'),
(354, 81, '_edit_last', '1'),
(355, 81, '_edit_lock', '1563420179:1'),
(356, 82, '_edit_last', '1'),
(357, 82, '_edit_lock', '1562288094:1'),
(358, 83, '_edit_last', '1'),
(359, 83, '_edit_lock', '1563480525:1'),
(360, 29, 'autor-forum', '27'),
(361, 29, '_autor-forum', 'field_5d1e8d0c9bdf4'),
(362, 82, 'autor-forum', '66'),
(363, 82, '_autor-forum', 'field_5d1e8d0c9bdf4'),
(364, 81, 'autor-forum', '27'),
(365, 81, '_autor-forum', 'field_5d1e8d0c9bdf4'),
(366, 80, 'autor-forum', '41'),
(367, 80, '_autor-forum', 'field_5d1e8d0c9bdf4'),
(368, 79, 'autor-forum', '41'),
(369, 79, '_autor-forum', 'field_5d1e8d0c9bdf4'),
(370, 78, 'autor-forum', '68'),
(371, 78, '_autor-forum', 'field_5d1e8d0c9bdf4'),
(372, 85, '_edit_last', '1'),
(373, 85, '_edit_lock', '1563416054:1'),
(374, 27, 'num_carteira_associado', '1137/D-GO'),
(375, 27, '_num_carteira_associado', 'field_5d2e8dcb8e6ad'),
(379, 91, '_wp_trash_meta_status', 'publish'),
(378, 91, '_edit_lock', '1563336738:1'),
(380, 91, '_wp_trash_meta_time', '1563336952'),
(381, 91, '_wp_desired_post_slug', 'my-post-2'),
(382, 92, '_edit_lock', '1563336932:1'),
(383, 95, '_edit_lock', '1563341364:1'),
(384, 97, '_edit_lock', '1563343320:1'),
(385, 98, 'autor-forum', '97'),
(386, 98, '_autor-forum', 'field_5d1e8d0c9bdf4'),
(387, 98, '_edit_lock', '1563343673:1'),
(388, 99, 'autor-forum', '27'),
(389, 99, '_autor-forum', 'field_5d1e8d0c9bdf4'),
(390, 99, '_edit_lock', '1563344043:1'),
(391, 99, '_edit_last', '1'),
(392, 99, 'posts-forum', ''),
(393, 99, '_posts-forum', 'field_5d1ea1a91a12a'),
(394, 100, 'autor-forum', '99'),
(395, 100, '_autor-forum', 'field_5d1e8d0c9bdf4'),
(396, 101, 'autor-forum', '100'),
(397, 101, '_autor-forum', 'field_5d1e8d0c9bdf4'),
(398, 102, 'autor-forum', '101'),
(399, 102, '_autor-forum', 'field_5d1e8d0c9bdf4'),
(400, 103, 'autor-forum', '27'),
(401, 103, '_autor-forum', 'field_5d1e8d0c9bdf4'),
(402, 103, '_edit_lock', '1563344060:1'),
(403, 103, '_wp_trash_meta_status', 'publish'),
(404, 103, '_wp_trash_meta_time', '1563344222'),
(405, 103, '_wp_desired_post_slug', '121212121234234234-3'),
(406, 102, '_wp_trash_meta_status', 'publish'),
(407, 102, '_wp_trash_meta_time', '1563344222'),
(408, 102, '_wp_desired_post_slug', '121212121234234234-2'),
(409, 101, '_wp_trash_meta_status', 'publish'),
(410, 101, '_wp_trash_meta_time', '1563344222'),
(411, 101, '_wp_desired_post_slug', '121212121234234234'),
(412, 100, '_wp_trash_meta_status', 'publish'),
(413, 100, '_wp_trash_meta_time', '1563344222'),
(414, 100, '_wp_desired_post_slug', 'qweqeqeqeqe'),
(415, 99, '_wp_trash_meta_status', 'publish'),
(416, 99, '_wp_trash_meta_time', '1563344222'),
(417, 99, '_wp_desired_post_slug', 'teste-correto'),
(418, 98, '_wp_trash_meta_status', 'publish'),
(419, 98, '_wp_trash_meta_time', '1563344222'),
(420, 98, '_wp_desired_post_slug', 'teste-ederton'),
(421, 97, '_wp_trash_meta_status', 'publish'),
(422, 97, '_wp_trash_meta_time', '1563344222'),
(423, 97, '_wp_desired_post_slug', 'qweqweqe'),
(424, 95, '_wp_trash_meta_status', 'publish'),
(425, 95, '_wp_trash_meta_time', '1563344222'),
(426, 95, '_wp_desired_post_slug', 'teste-forum'),
(427, 94, '_wp_trash_meta_status', 'publish'),
(428, 94, '_wp_trash_meta_time', '1563344222'),
(429, 94, '_wp_desired_post_slug', 'forum-1'),
(430, 92, '_wp_trash_meta_status', 'publish'),
(431, 92, '_wp_trash_meta_time', '1563344222'),
(432, 92, '_wp_desired_post_slug', 'my-post-2'),
(433, 82, '_wp_trash_meta_status', 'publish'),
(434, 82, '_wp_trash_meta_time', '1563344222'),
(435, 82, '_wp_desired_post_slug', 'producao-nesta-seca'),
(436, 104, 'autor-forum', '27'),
(437, 104, '_autor-forum', 'field_5d1e8d0c9bdf4'),
(438, 104, '_edit_lock', '1563344425:1'),
(439, 105, 'autor-forum', '27'),
(440, 105, '_autor-forum', 'field_5d1e8d0c9bdf4'),
(441, 106, 'autor-forum', '27'),
(442, 106, '_autor-forum', 'field_5d1e8d0c9bdf4'),
(443, 107, 'autor-forum', '27'),
(444, 107, '_autor-forum', 'field_5d1e8d0c9bdf4'),
(445, 107, '_wp_trash_meta_status', 'publish'),
(446, 107, '_wp_trash_meta_time', '1563345984'),
(447, 107, '_wp_desired_post_slug', 'categoria-ok'),
(448, 106, '_wp_trash_meta_status', 'publish'),
(449, 106, '_wp_trash_meta_time', '1563345984'),
(450, 106, '_wp_desired_post_slug', 'colocando-categoria'),
(451, 105, '_wp_trash_meta_status', 'publish'),
(452, 105, '_wp_trash_meta_time', '1563345984'),
(453, 105, '_wp_desired_post_slug', 'testando-novamento'),
(454, 104, '_wp_trash_meta_status', 'publish'),
(455, 104, '_wp_trash_meta_time', '1563345984');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(456, 104, '_wp_desired_post_slug', 'criando-novo-forum'),
(457, 81, 'posts-forum_0_autor-post', 'a:1:{i:0;s:2:\"66\";}'),
(458, 81, '_posts-forum_0_autor-post', 'field_5d1ea1e01a12b'),
(459, 81, 'posts-forum_0_texto-post', 'Leap into electronic typesetting, remaining essentially unchanged.'),
(576, 79, '_posts-forum_0_resposta-post', 'field_5d2f82283a460'),
(577, 79, 'posts-forum_0_data-post', '17 de julho, 2019 às 23:50'),
(478, 81, '_posts-forum_0_resposta-post', 'field_5d2f82283a460'),
(477, 81, 'posts-forum_0_resposta-post', ''),
(569, 29, 'posts-forum_1_resposta-post', '0'),
(570, 29, '_posts-forum_1_resposta-post', 'field_5d2f82283a460'),
(460, 81, '_posts-forum_0_texto-post', 'field_5d2f81de3a45f'),
(461, 81, 'posts-forum', '5'),
(462, 81, '_posts-forum', 'field_5d1ea1a91a12a'),
(571, 79, 'posts-forum_0_autor-post', 'a:1:{i:0;s:2:\"27\";}'),
(572, 79, '_posts-forum_0_autor-post', 'field_5d1ea1e01a12b'),
(573, 79, 'posts-forum_0_texto-post', 'It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more reacently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.'),
(575, 79, 'posts-forum_0_resposta-post', ''),
(574, 79, '_posts-forum_0_texto-post', 'field_5d2f81de3a45f'),
(485, 81, 'posts-forum_0_data-post', '17 de julho, 2010 às 18:53'),
(486, 81, '_posts-forum_0_data-post', 'field_5d2f8f8e7f406'),
(568, 29, '_posts-forum_1_data-post', 'field_5d2f8f8e7f406'),
(567, 29, 'posts-forum_1_data-post', '17 de julho, 2019 às 23:29'),
(566, 29, '_posts-forum_1_texto-post', 'field_5d2f81de3a45f'),
(565, 29, 'posts-forum_1_texto-post', 'It was popularised in the 1960s with the release of Letraset '),
(562, 29, '_posts-forum_0_resposta-post', 'field_5d2f82283a460'),
(563, 29, 'posts-forum_1_autor-post', 'a:1:{i:0;s:2:\"27\";}'),
(564, 29, '_posts-forum_1_autor-post', 'field_5d1ea1e01a12b'),
(561, 29, 'posts-forum_0_resposta-post', ''),
(559, 29, 'posts-forum', '2'),
(560, 29, '_posts-forum', 'field_5d1ea1a91a12a'),
(558, 29, '_posts-forum_0_data-post', 'field_5d2f8f8e7f406'),
(556, 29, '_posts-forum_0_texto-post', 'field_5d2f81de3a45f'),
(557, 29, 'posts-forum_0_data-post', '17 de julho, 2019 às 23:21'),
(555, 29, 'posts-forum_0_texto-post', 'scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.'),
(554, 29, '_posts-forum_0_autor-post', 'field_5d1ea1e01a12b'),
(553, 29, 'posts-forum_0_autor-post', 'a:1:{i:0;s:2:\"60\";}'),
(550, 81, '_posts-forum_2_data-post', 'field_5d2f8f8e7f406'),
(551, 81, 'posts-forum_2_resposta-post', ''),
(552, 81, '_posts-forum_2_resposta-post', 'field_5d2f82283a460'),
(549, 81, 'posts-forum_2_data-post', '17 de julho, 2019 às 23:09'),
(548, 81, '_posts-forum_2_texto-post', 'field_5d2f81de3a45f'),
(547, 81, 'posts-forum_2_texto-post', '1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.'),
(546, 81, '_posts-forum_2_autor-post', 'field_5d1ea1e01a12b'),
(545, 81, 'posts-forum_2_autor-post', 'a:1:{i:0;s:2:\"68\";}'),
(544, 81, '_posts-forum_1_resposta-post', 'field_5d2f82283a460'),
(543, 81, 'posts-forum_1_resposta-post', ''),
(542, 81, '_posts-forum_1_data-post', 'field_5d2f8f8e7f406'),
(540, 81, '_posts-forum_1_texto-post', 'field_5d2f81de3a45f'),
(541, 81, 'posts-forum_1_data-post', '17 de julho, 2019 às 18:54'),
(539, 81, 'posts-forum_1_texto-post', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.'),
(538, 81, '_posts-forum_1_autor-post', 'field_5d1ea1e01a12b'),
(537, 81, 'posts-forum_1_autor-post', 'a:1:{i:0;s:2:\"58\";}'),
(578, 79, '_posts-forum_0_data-post', 'field_5d2f8f8e7f406'),
(579, 79, 'posts-forum', '2'),
(580, 79, '_posts-forum', 'field_5d1ea1a91a12a'),
(581, 79, 'posts-forum_1_autor-post', 'a:1:{i:0;s:2:\"66\";}'),
(582, 79, '_posts-forum_1_autor-post', 'field_5d1ea1e01a12b'),
(583, 79, 'posts-forum_1_texto-post', '1960s with the release of Letraset'),
(584, 79, '_posts-forum_1_texto-post', 'field_5d2f81de3a45f'),
(585, 79, 'posts-forum_1_resposta-post', '0'),
(586, 79, '_posts-forum_1_resposta-post', 'field_5d2f82283a460'),
(587, 79, 'posts-forum_1_data-post', '17 de julho, 2019 às 23:53'),
(588, 79, '_posts-forum_1_data-post', 'field_5d2f8f8e7f406'),
(589, 81, 'posts-forum_3_autor-post', 'a:1:{i:0;s:2:\"27\";}'),
(590, 81, '_posts-forum_3_autor-post', 'field_5d1ea1e01a12b'),
(591, 81, 'posts-forum_3_texto-post', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.\r\n\r\nIt was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more reacently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.\r\n'),
(592, 81, '_posts-forum_3_texto-post', 'field_5d2f81de3a45f'),
(593, 81, 'posts-forum_3_resposta-post', '1'),
(594, 81, '_posts-forum_3_resposta-post', 'field_5d2f82283a460'),
(595, 81, 'posts-forum_3_data-post', '18 de julho, 2019 às 00:09'),
(596, 81, '_posts-forum_3_data-post', 'field_5d2f8f8e7f406'),
(597, 81, 'posts-forum_4_autor-post', 'a:1:{i:0;s:2:\"27\";}'),
(598, 81, '_posts-forum_4_autor-post', 'field_5d1ea1e01a12b'),
(599, 81, 'posts-forum_4_texto-post', 'It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.'),
(600, 81, '_posts-forum_4_texto-post', 'field_5d2f81de3a45f'),
(601, 81, 'posts-forum_4_resposta-post', '3'),
(602, 81, '_posts-forum_4_resposta-post', 'field_5d2f82283a460'),
(603, 81, 'posts-forum_4_data-post', '18 de julho, 2019 às 00:21'),
(604, 81, '_posts-forum_4_data-post', 'field_5d2f8f8e7f406'),
(605, 113, '_edit_lock', '1563832079:1'),
(609, 115, '_edit_lock', '1563843399:1'),
(608, 113, '_thumbnail_id', '22'),
(615, 117, '_edit_lock', '1563842681:1'),
(614, 115, '_thumbnail_id', '23'),
(618, 117, '_thumbnail_id', '21'),
(621, 117, '_wp_old_date', '2019-07-22'),
(624, 115, '_wp_old_date', '2019-07-22');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_posts`
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
) ENGINE=MyISAM AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-06-13 00:43:21', '2019-06-13 03:43:21', '<!-- wp:paragraph -->\n<p>Boas-vindas ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!</p>\n<!-- /wp:paragraph -->', 'Olá, mundo!', '', 'trash', 'open', 'open', '', 'ola-mundo__trashed', '', '', '2019-06-26 20:19:41', '2019-06-26 23:19:41', '', 0, 'http://localhost/aeago/?p=1', 0, 'post', '', 1),
(2, 1, '2019-06-13 00:43:21', '2019-06-13 03:43:21', '<!-- wp:paragraph -->\n<p>Esta é uma página de exemplo. É diferente de um post no blog porque ela permanecerá em um lugar e aparecerá na navegação do seu site na maioria dos temas. Muitas pessoas começam com uma página que as apresenta a possíveis visitantes do site. Ela pode dizer algo assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Olá! Eu sou um mensageiro de bicicleta durante o dia, ator aspirante à noite, e este é o meu site. Eu moro em São Paulo, tenho um grande cachorro chamado Rex e gosto de tomar caipirinha (e banhos de chuva).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...ou alguma coisa assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>A Companhia de Miniaturas XYZ foi fundada em 1971, e desde então tem fornecido miniaturas de qualidade ao público. Localizada na cidade de Itu, a XYZ emprega mais de 2.000 pessoas e faz coisas grandiosas para a comunidade da cidade.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como um novo usuário do WordPress, você deveria ir ao <a href=\"http://localhost/aeago/wp-admin/\">painel</a> para excluir essa página e criar novas páginas para o seu conteúdo. Divirta-se!</p>\n<!-- /wp:paragraph -->', 'Página de exemplo', '', 'publish', 'closed', 'open', '', 'pagina-exemplo', '', '', '2019-06-13 00:43:21', '2019-06-13 03:43:21', '', 0, 'http://localhost/aeago/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-06-13 00:43:21', '2019-06-13 03:43:21', '<!-- wp:heading --><h2>Quem somos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>O endereço do nosso site é: http://localhost/aeago.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Quais dados pessoais coletamos e porque</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comentários</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Quando os visitantes deixam comentários no site, coletamos os dados mostrados no formulário de comentários, além do endereço de IP e de dados do navegador do visitante, para auxiliar na detecção de spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Uma sequência anonimizada de caracteres criada a partir do seu e-mail (também chamada de hash) poderá ser enviada para o Gravatar para verificar se você usa o serviço. A política de privacidade do Gravatar está disponível aqui: https://automattic.com/privacy/. Depois da aprovação do seu comentário, a foto do seu perfil fica visível publicamente junto de seu comentário.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Mídia</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Se você envia imagens para o site, evite enviar as que contenham dados de localização incorporados (EXIF GPS). Visitantes podem baixar estas imagens do site e extrair delas seus dados de localização.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Formulários de contato</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Ao deixar um comentário no site, você poderá optar por salvar seu nome, e-mail e site nos cookies. Isso visa seu conforto, assim você não precisará preencher seus  dados novamente quando fizer outro comentário. Estes cookies duram um ano.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você tem uma conta e acessa este site, um cookie temporário será criado para determinar se seu navegador aceita cookies. Ele não contém nenhum dado pessoal e será descartado quando você fechar seu navegador.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Quando você acessa sua conta no site, também criamos vários cookies para salvar os dados da sua conta e suas escolhas de exibição de tela. Cookies de login são mantidos por dois dias e cookies de opções de tela por um ano. Se você selecionar &quot;Lembrar-me&quot;, seu acesso será mantido por duas semanas. Se você se desconectar da sua conta, os cookies de login serão removidos.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você editar ou publicar um artigo, um cookie adicional será salvo no seu navegador. Este cookie não inclui nenhum dado pessoal e simplesmente indica o ID do post referente ao artigo que você acabou de editar. Ele expira depois de 1 dia.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Mídia incorporada de outros sites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Artigos neste site podem incluir conteúdo incorporado como, por exemplo, vídeos, imagens, artigos, etc. Conteúdos incorporados de outros sites se comportam exatamente da mesma forma como se o visitante estivesse visitando o outro site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Estes sites podem coletar dados sobre você, usar cookies, incorporar rastreamento adicional de terceiros e monitorar sua interação com este conteúdo incorporado, incluindo sua interação com o conteúdo incorporado se você tem uma conta e está conectado com o site.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Análises</h3><!-- /wp:heading --><!-- wp:heading --><h2>Com quem partilhamos seus dados</h2><!-- /wp:heading --><!-- wp:heading --><h2>Por quanto tempo mantemos os seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Se você deixar um comentário, o comentário e os seus metadados são conservados indefinidamente. Fazemos isso para que seja possível reconhecer e aprovar automaticamente qualquer comentário posterior ao invés de retê-lo para moderação.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Para usuários que se registram no nosso site (se houver), também guardamos as informações pessoais que fornecem no seu perfil de usuário. Todos os usuários podem ver, editar ou excluir suas informações pessoais a qualquer momento (só não é possível alterar o seu username). Os administradores de sites também podem ver e editar estas informações.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Quais os seus direitos sobre seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Se você tiver uma conta neste site ou se tiver deixado comentários, pode solicitar um arquivo exportado dos dados pessoais que mantemos sobre você, inclusive quaisquer dados que nos tenha fornecido. Também pode solicitar que removamos qualquer dado pessoal que mantemos sobre você. Isto não inclui nenhuns dados que somos obrigados a manter para propósitos administrativos, legais ou de segurança.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Para onde enviamos seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Comentários de visitantes podem ser marcados por um serviço automático de detecção de spam.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Suas informações de contato</h2><!-- /wp:heading --><!-- wp:heading --><h2>Informações adicionais</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Como protegemos seus dados</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Quais são nossos procedimentos contra violação de dados</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>De quais terceiros nós recebemos dados</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Quais tomadas de decisão ou análises de perfil automatizadas fazemos com os dados de usuários</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Requisitos obrigatórios de divulgação para sua categoria profissional</h3><!-- /wp:heading -->', 'Política de privacidade', '', 'draft', 'closed', 'open', '', 'politica-de-privacidade', '', '', '2019-06-13 00:43:21', '2019-06-13 03:43:21', '', 0, 'http://localhost/aeago/?page_id=3', 0, 'page', '', 0),
(6, 1, '2019-06-26 20:08:21', '2019-06-26 23:08:21', '<!-- wp:paragraph -->\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32 </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\n\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\n\n</p>\n<!-- /wp:paragraph -->', 'Agronegócio: Como nosso setor ajuda a mover o Brasil', 'O agronegócio vem sustentando a economia brasileira, sendo um dos setores de maior participação no PIB. Compreender como ele é formado permite saber como e onde vamos dê certo. ', 'publish', 'open', 'open', '', 'agronegocio-como-nosso-setor-ajuda-a-mover-o-brasil', '', '', '2019-06-27 02:48:19', '2019-06-27 05:48:19', '', 0, 'http://localhost/aeago/?p=6', 0, 'post', '', 0),
(7, 1, '2019-06-26 20:08:21', '2019-06-26 23:08:21', '', 'Agronegócio: Como nosso setor ajuda a mover o Brasil', 'O agronegócio vem sustentando a economia brasileira, sendo um dos setores de maior participação no PIB. Compreender como ele é formado permite saber como e onde vamos dê certo. ', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2019-06-26 20:08:21', '2019-06-26 23:08:21', '', 6, 'http://localhost/aeago/2019/06/26/6-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2019-06-26 20:19:41', '2019-06-26 23:19:41', '<!-- wp:paragraph -->\n<p>Boas-vindas ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!</p>\n<!-- /wp:paragraph -->', 'Olá, mundo!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-06-26 20:19:41', '2019-06-26 23:19:41', '', 1, 'http://localhost/aeago/2019/06/26/1-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2019-06-27 02:48:13', '2019-06-27 05:48:13', '', 'valio84sl', '', 'inherit', 'open', 'closed', '', 'valio84sl', '', '', '2019-06-27 02:48:13', '2019-06-27 05:48:13', '', 6, 'http://localhost/aeago/wp-content/uploads/2019/06/valio84sl.jpg', 0, 'attachment', 'image/jpeg', 0),
(10, 1, '2019-06-26 20:50:05', '2019-06-26 23:50:05', '<!-- wp:paragraph -->\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32 </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\n\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\n\n</p>\n<!-- /wp:paragraph -->', 'Agronegócio: Como nosso setor ajuda a mover o Brasil', 'O agronegócio vem sustentando a economia brasileira, sendo um dos setores de maior participação no PIB. Compreender como ele é formado permite saber como e onde vamos dê certo. ', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2019-06-26 20:50:05', '2019-06-26 23:50:05', '', 6, 'http://localhost/aeago/2019/06/26/6-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2019-06-27 02:37:42', '2019-06-27 05:37:42', '<!-- wp:paragraph -->\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32 </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\n\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\n\n</p>\n<!-- /wp:paragraph -->', 'Agronegócio: Como nosso setor ajuda a mover o Brasil', 'O agronegócio vem sustentando a economia brasileira, sendo um dos setores de maior participação no PIB. Compreender como ele é formado permite saber como e onde vamos dê certo. ', 'inherit', 'closed', 'closed', '', '6-autosave-v1', '', '', '2019-06-27 02:37:42', '2019-06-27 05:37:42', '', 6, 'http://localhost/aeago/2019/06/27/6-autosave-v1/', 0, 'revision', '', 0),
(14, 1, '2019-06-27 02:41:15', '2019-06-27 05:41:15', '<!-- wp:paragraph -->\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32 </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p> The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham. </p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>\n\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\n\n</p>\n<!-- /wp:paragraph -->', 'A Produção no Cerrado do Brasil', 'Com a terra vermelha do cerrado produtiva devido a vários atributos da região, tais como: clima estável, quantidade de chuva adequada, solo e topografia equilibradas, somado aos avanços tecnológicos, investimentos no solo, sementes e irrigação, a produção em regiões do cerrado brasileiro passou a ser bem atrativa.', 'publish', 'open', 'open', '', 'a-producao-no-cerrado-do-brasil', '', '', '2019-06-27 03:55:36', '2019-06-27 06:55:36', '', 0, 'http://localhost/aeago/?p=14', 0, 'post', '', 0),
(15, 1, '2019-06-27 02:40:20', '2019-06-27 05:40:20', '<!-- wp:paragraph -->\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32 </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\n\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\n\n</p>\n<!-- /wp:paragraph -->', 'Evolução da Produção de Grãos', 'Recordes Batidos Evolução da área plantada, produtividade e produção', 'publish', 'open', 'open', '', 'evolucao-da-producao-de-graos', '', '', '2019-06-27 03:39:56', '2019-06-27 06:39:56', '', 0, 'http://localhost/aeago/?p=15', 0, 'post', '', 0),
(16, 1, '2019-06-27 02:39:04', '2019-06-27 05:39:04', '<!-- wp:paragraph -->\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32 </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\n\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\n\n</p>\n<!-- /wp:paragraph -->', 'O Agronegócio no Brasil', 'A agropecuária brasileira é um bem gigantesco, um campo cheio de oportunidades de investimento e desenvolvimento.', 'publish', 'open', 'open', '', 'o-agronegocio-no-brasil', '', '', '2019-06-27 03:33:30', '2019-06-27 06:33:30', '', 0, 'http://localhost/aeago/?p=16', 0, 'post', '', 0),
(17, 1, '2019-06-27 02:39:04', '2019-06-27 05:39:04', '<!-- wp:paragraph -->\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32 </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\n\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\n\n</p>\n<!-- /wp:paragraph -->', 'O Agronegócio no Brasil', 'A agropecuária brasileira é um bem gigantesco, um campo cheio de oportunidades de investimento e desenvolvimento.', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2019-06-27 02:39:04', '2019-06-27 05:39:04', '', 16, 'http://localhost/aeago/2019/06/27/16-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2019-06-27 02:40:20', '2019-06-27 05:40:20', '<!-- wp:paragraph -->\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32 </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\n\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\n\n</p>\n<!-- /wp:paragraph -->', 'Evolução da Produção de Grãos', 'Recordes Batidos Evolução da área plantada, produtividade e produção', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2019-06-27 02:40:20', '2019-06-27 05:40:20', '', 15, 'http://localhost/aeago/2019/06/27/15-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2019-06-27 02:41:15', '2019-06-27 05:41:15', '<!-- wp:paragraph -->\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32 </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\n\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\n\n</p>\n<!-- /wp:paragraph -->', 'A Produção no Cerrado do Brasil', 'Com a terra vermelha do cerrado produtiva devido a vários atributos da região, tais como: clima estável, quantidade de chuva adequada, solo e topografia equilibradas, somado aos avanços tecnológicos, investimentos no solo, sementes e irrigação, a produção em regiões do cerrado brasileiro passou a ser bem atrativa.', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2019-06-27 02:41:15', '2019-06-27 05:41:15', '', 14, 'http://localhost/aeago/2019/06/27/14-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2019-06-27 03:32:56', '2019-06-27 06:32:56', '', 'banco-de-imagens-agronegocio-3', '', 'inherit', 'open', 'closed', '', 'banco-de-imagens-agronegocio-3', '', '', '2019-06-27 03:32:56', '2019-06-27 06:32:56', '', 16, 'http://localhost/aeago/wp-content/uploads/2019/06/banco-de-imagens-agronegocio-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(22, 1, '2019-06-27 03:35:25', '2019-06-27 06:35:25', '', 'soja_ciorganicos', '', 'inherit', 'open', 'closed', '', 'soja_ciorganicos', '', '', '2019-06-27 03:35:25', '2019-06-27 06:35:25', '', 14, 'http://localhost/aeago/wp-content/uploads/2019/06/soja_ciorganicos.jpg', 0, 'attachment', 'image/jpeg', 0),
(23, 1, '2019-06-27 03:40:16', '2019-06-27 06:40:16', '', '377A9886-1', '', 'inherit', 'open', 'closed', '', '377a9886-1', '', '', '2019-06-27 03:40:16', '2019-06-27 06:40:16', '', 14, 'http://localhost/aeago/wp-content/uploads/2019/06/377A9886-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(24, 1, '2019-06-27 03:54:26', '2019-06-27 06:54:26', '<!-- wp:verse -->\n<pre class=\"wp-block-verse\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</pre>\n<!-- /wp:verse -->\n\n<!-- wp:paragraph -->\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32 </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\n\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\n\n</p>\n<!-- /wp:paragraph -->', 'A Produção no Cerrado do Brasil', 'Com a terra vermelha do cerrado produtiva devido a vários atributos da região, tais como: clima estável, quantidade de chuva adequada, solo e topografia equilibradas, somado aos avanços tecnológicos, investimentos no solo, sementes e irrigação, a produção em regiões do cerrado brasileiro passou a ser bem atrativa.', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2019-06-27 03:54:26', '2019-06-27 06:54:26', '', 14, 'http://localhost/aeago/2019/06/27/14-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2019-06-29 19:14:14', '2019-06-29 22:14:14', '', 'Ederton Lima', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.', 'publish', 'closed', 'closed', '', 'ederton-lima', '', '', '2019-07-16 23:58:08', '2019-07-17 02:58:08', '', 0, 'http://localhost/aeago/?post_type=associado&#038;p=27', 0, 'associado', '', 0),
(49, 1, '2019-07-04 00:16:57', '2019-07-04 03:16:57', '', 'pessoa-assexuada', '', 'inherit', 'open', 'closed', '', 'pessoa-assexuada', '', '', '2019-07-04 00:16:57', '2019-07-04 03:16:57', '', 44, 'http://localhost/aeago/wp-content/uploads/2019/07/pessoa-assexuada.jpg', 0, 'attachment', 'image/jpeg', 0),
(29, 1, '2019-06-29 19:32:52', '2019-06-29 22:32:52', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.\r\n\r\nIt was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more reacently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'Preciso comprar um novo maquinário', 'Estou pesquisando alguns equipamentos para meu negócio, gostaria de saber se alguém já utiliza, recomenda ou tem alguma recomendação.', 'publish', 'closed', 'closed', '', 'preciso-comprar-um-novo-maquinario', '', '', '2019-07-17 23:30:14', '2019-07-18 02:30:14', '', 0, 'http://localhost/aeago/?post_type=forum&#038;p=29', 0, 'forum', '', 0),
(30, 1, '2019-06-29 19:38:16', '2019-06-29 22:38:16', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Preciso comprar um novo maquinário', 'Estou pesquisando alguns equipamentos para meu negócio, gostaria de saber se alguém já utiliza, recomenda ou tem alguma recomendação.', 'inherit', 'closed', 'closed', '', '29-autosave-v1', '', '', '2019-06-29 19:38:16', '2019-06-29 22:38:16', '', 29, 'http://localhost/aeago/geral/29-autosave-v1/', 0, 'revision', '', 0),
(31, 1, '2019-06-30 21:03:04', '2019-07-01 00:03:04', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"associado\";}}}s:8:\"position\";s:4:\"side\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:34:\"Dados de acesso para os associados\";}', 'Dados de acesso', 'dados-de-acesso', 'publish', 'closed', 'closed', '', 'group_5d194d07a1307', '', '', '2019-06-30 23:19:23', '2019-07-01 02:19:23', '', 0, 'http://localhost/aeago/?post_type=acf-field-group&#038;p=31', 0, 'acf-field-group', '', 0),
(32, 1, '2019-06-30 21:03:04', '2019-07-01 00:03:04', 'a:9:{s:4:\"type\";s:5:\"email\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'E-mail', 'email_associado', 'publish', 'closed', 'closed', '', 'field_5d194d357e5a1', '', '', '2019-06-30 21:06:00', '2019-07-01 00:06:00', '', 31, 'http://localhost/aeago/?post_type=acf-field&#038;p=32', 1, 'acf-field', '', 0),
(26, 1, '2019-06-27 03:55:36', '2019-06-27 06:55:36', '<!-- wp:paragraph -->\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32 </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p> The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham. </p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>\n\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\n\n</p>\n<!-- /wp:paragraph -->', 'A Produção no Cerrado do Brasil', 'Com a terra vermelha do cerrado produtiva devido a vários atributos da região, tais como: clima estável, quantidade de chuva adequada, solo e topografia equilibradas, somado aos avanços tecnológicos, investimentos no solo, sementes e irrigação, a produção em regiões do cerrado brasileiro passou a ser bem atrativa.', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2019-06-27 03:55:36', '2019-06-27 06:55:36', '', 14, 'http://localhost/aeago/2019/06/27/14-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2019-06-30 21:03:04', '2019-07-01 00:03:04', 'a:8:{s:4:\"type\";s:8:\"password\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Senha', 'senha_associado', 'publish', 'closed', 'closed', '', 'field_5d194d627e5a2', '', '', '2019-06-30 21:06:00', '2019-07-01 00:06:00', '', 31, 'http://localhost/aeago/?post_type=acf-field&#038;p=33', 2, 'acf-field', '', 0),
(34, 1, '2019-06-30 21:05:49', '2019-07-01 00:05:49', 'a:10:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:0;s:2:\"ui\";i:1;s:10:\"ui_on_text\";s:3:\"Sim\";s:11:\"ui_off_text\";s:4:\"Não\";}', 'Associado Ativo', 'status_associado', 'publish', 'closed', 'closed', '', 'field_5d194e19efeeb', '', '', '2019-06-30 23:19:23', '2019-07-01 02:19:23', '', 31, 'http://localhost/aeago/?post_type=acf-field&#038;p=34', 0, 'acf-field', '', 0),
(35, 1, '2019-07-01 00:03:49', '2019-07-01 03:03:49', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"associado\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:29:\"Dados principais do associado\";}', 'Dados Pessoais', 'dados-pessoais', 'publish', 'closed', 'closed', '', 'group_5d1977c645ed2', '', '', '2019-07-16 23:55:51', '2019-07-17 02:55:51', '', 0, 'http://localhost/aeago/?post_type=acf-field-group&#038;p=35', 0, 'acf-field-group', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(36, 1, '2019-07-01 00:03:49', '2019-07-01 03:03:49', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Nome', 'nome_associado', 'publish', 'closed', 'closed', '', 'field_5d1977d7e744b', '', '', '2019-07-01 00:03:49', '2019-07-01 03:03:49', '', 35, 'http://localhost/aeago/?post_type=acf-field&p=36', 0, 'acf-field', '', 0),
(37, 1, '2019-07-01 00:03:49', '2019-07-01 03:03:49', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Sobrenome', 'sobrenome_associado', 'publish', 'closed', 'closed', '', 'field_5d1977ede744c', '', '', '2019-07-01 00:03:49', '2019-07-01 03:03:49', '', 35, 'http://localhost/aeago/?post_type=acf-field&p=37', 1, 'acf-field', '', 0),
(38, 1, '2019-07-01 00:18:10', '2019-07-01 03:18:10', '', 'Sair', '', 'publish', 'closed', 'closed', '', 'sair', '', '', '2019-07-01 00:29:51', '2019-07-01 03:29:51', '', 0, 'http://localhost/aeago/?page_id=38', 0, 'page', '', 0),
(39, 1, '2019-07-01 00:18:10', '2019-07-01 03:18:10', '', 'Logout', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2019-07-01 00:18:10', '2019-07-01 03:18:10', '', 38, 'http://localhost/aeago/geral/38-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2019-07-01 00:29:51', '2019-07-01 03:29:51', '', 'Sair', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2019-07-01 00:29:51', '2019-07-01 03:29:51', '', 38, 'http://localhost/aeago/geral/38-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2019-07-04 00:13:03', '2019-07-04 03:13:03', '', 'Jeferson da Silva', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.', 'publish', 'closed', 'closed', '', 'jeferson-da-silva', '', '', '2019-07-04 01:57:38', '2019-07-04 04:57:38', '', 0, 'http://localhost/aeago/?post_type=associado&#038;p=41', 0, 'associado', '', 0),
(42, 1, '2019-07-04 00:12:54', '2019-07-04 03:12:54', '', 'Homem-confiante', '', 'inherit', 'open', 'closed', '', 'homem-confiante', '', '', '2019-07-04 00:12:54', '2019-07-04 03:12:54', '', 41, 'http://localhost/aeago/wp-content/uploads/2019/07/Homem-confiante.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2019-07-04 00:16:35', '2019-07-04 03:16:35', '', 'João Roberto Felipe', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.', 'publish', 'closed', 'closed', '', 'joao-roberto-felipe', '', '', '2019-07-04 01:57:46', '2019-07-04 04:57:46', '', 0, 'http://localhost/aeago/?post_type=associado&#038;p=43', 0, 'associado', '', 0),
(44, 1, '2019-07-04 00:17:49', '2019-07-04 03:17:49', '', 'Silvana Menezes da Silva', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.', 'publish', 'closed', 'closed', '', 'silvana-menezes-da-silva', '', '', '2019-07-04 01:57:53', '2019-07-04 04:57:53', '', 0, 'http://localhost/aeago/?post_type=associado&#038;p=44', 0, 'associado', '', 0),
(45, 1, '2019-07-04 00:20:43', '2019-07-04 03:20:43', '', 'Juliana Fernanda Milas', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.', 'publish', 'closed', 'closed', '', 'juliana-fernanda-milas', '', '', '2019-07-04 01:58:15', '2019-07-04 04:58:15', '', 0, 'http://localhost/aeago/?post_type=associado&#038;p=45', 0, 'associado', '', 0),
(46, 1, '2019-07-04 00:21:45', '2019-07-04 03:21:45', '', 'Rogério Marques de Azevedo', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.', 'publish', 'closed', 'closed', '', 'rogerio-marques-de-azevedo', '', '', '2019-07-04 01:59:56', '2019-07-04 04:59:56', '', 0, 'http://localhost/aeago/?post_type=associado&#038;p=46', 0, 'associado', '', 0),
(47, 1, '2019-07-04 00:14:42', '2019-07-04 03:14:42', '', 'bracos-africanos-novos-excited-felizes-do-cruzamento-do-homem-na-caixa-e-vista-da-camera_1262-12351', '', 'inherit', 'open', 'closed', '', 'bracos-africanos-novos-excited-felizes-do-cruzamento-do-homem-na-caixa-e-vista-da-camera_1262-12351', '', '', '2019-07-04 00:14:42', '2019-07-04 03:14:42', '', 27, 'http://localhost/aeago/wp-content/uploads/2019/06/bracos-africanos-novos-excited-felizes-do-cruzamento-do-homem-na-caixa-e-vista-da-camera_1262-12351.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2019-07-04 00:14:43', '2019-07-04 03:14:43', '', 'pexels-photo-683381', '', 'inherit', 'open', 'closed', '', 'pexels-photo-683381', '', '', '2019-07-04 00:14:43', '2019-07-04 03:14:43', '', 27, 'http://localhost/aeago/wp-content/uploads/2019/06/pexels-photo-683381.jpeg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2019-07-04 00:19:05', '2019-07-04 03:19:05', '', 'Letícia Marcado Rodrigues', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.', 'publish', 'closed', 'closed', '', 'leticia-marcado-rodrigues', '', '', '2019-07-04 01:58:07', '2019-07-04 04:58:07', '', 0, 'http://localhost/aeago/?post_type=associado&#038;p=50', 0, 'associado', '', 0),
(51, 1, '2019-07-04 00:18:27', '2019-07-04 03:18:27', '', '4-razoes-para-ser-uma-pessoa-mais-curiosa-thumb-570', '', 'inherit', 'open', 'closed', '', '4-razoes-para-ser-uma-pessoa-mais-curiosa-thumb-570', '', '', '2019-07-04 00:18:27', '2019-07-04 03:18:27', '', 50, 'http://localhost/aeago/wp-content/uploads/2019/07/4-razoes-para-ser-uma-pessoa-mais-curiosa-thumb-570.jpg', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2019-07-04 00:19:35', '2019-07-04 03:19:35', '', 'saiba-como-a-educacao-ajuda-voce-a-ser-uma-pessoa-melhor', '', 'inherit', 'open', 'closed', '', 'saiba-como-a-educacao-ajuda-voce-a-ser-uma-pessoa-melhor', '', '', '2019-07-04 00:19:35', '2019-07-04 03:19:35', '', 45, 'http://localhost/aeago/wp-content/uploads/2019/07/saiba-como-a-educacao-ajuda-voce-a-ser-uma-pessoa-melhor.jpeg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2019-07-04 00:21:31', '2019-07-04 03:21:31', '', 'homem-que-sorri-com-os-bracos-cruzados_1187-2903', '', 'inherit', 'open', 'closed', '', 'homem-que-sorri-com-os-bracos-cruzados_1187-2903', '', '', '2019-07-04 00:21:31', '2019-07-04 03:21:31', '', 46, 'http://localhost/aeago/wp-content/uploads/2019/07/homem-que-sorri-com-os-bracos-cruzados_1187-2903.jpg', 0, 'attachment', 'image/jpeg', 0),
(54, 1, '2019-07-04 00:22:48', '2019-07-04 03:22:48', '', 'Maria Antonela Rodrigues', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.', 'publish', 'closed', 'closed', '', 'maria-antonela-rodrigues', '', '', '2019-07-04 01:59:54', '2019-07-04 04:59:54', '', 0, 'http://localhost/aeago/?post_type=associado&#038;p=54', 0, 'associado', '', 0),
(55, 1, '2019-07-04 00:22:41', '2019-07-04 03:22:41', '', '5591e66dcd7ab3.068551755591e66dbebbf2.42211153', '', 'inherit', 'open', 'closed', '', '5591e66dcd7ab3-068551755591e66dbebbf2-42211153', '', '', '2019-07-04 00:22:41', '2019-07-04 03:22:41', '', 54, 'http://localhost/aeago/wp-content/uploads/2019/07/5591e66dcd7ab3.068551755591e66dbebbf2.42211153.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2019-07-04 00:24:08', '2019-07-04 03:24:08', '', 'Nilce Damélia Romana da Silva', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.', 'publish', 'closed', 'closed', '', 'nilce-damelia-romana-da-silva', '', '', '2019-07-04 01:59:48', '2019-07-04 04:59:48', '', 0, 'http://localhost/aeago/?post_type=associado&#038;p=56', 0, 'associado', '', 0),
(57, 1, '2019-07-04 00:23:51', '2019-07-04 03:23:51', '', 'formato-thumb-blog_AnaMariaDelpino', '', 'inherit', 'open', 'closed', '', 'formato-thumb-blog_anamariadelpino', '', '', '2019-07-04 00:23:51', '2019-07-04 03:23:51', '', 56, 'http://localhost/aeago/wp-content/uploads/2019/07/formato-thumb-blog_AnaMariaDelpino.jpg', 0, 'attachment', 'image/jpeg', 0),
(58, 1, '2019-07-04 00:25:17', '2019-07-04 03:25:17', '', 'Amanda Mioto Nunes', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.', 'publish', 'closed', 'closed', '', 'amanda-mioto-nunes', '', '', '2019-07-04 01:59:45', '2019-07-04 04:59:45', '', 0, 'http://localhost/aeago/?post_type=associado&#038;p=58', 0, 'associado', '', 0),
(59, 1, '2019-07-04 00:25:01', '2019-07-04 03:25:01', '', 'E-uma-pessoa-feliz-ou-apenas-alegre', '', 'inherit', 'open', 'closed', '', 'e-uma-pessoa-feliz-ou-apenas-alegre', '', '', '2019-07-04 00:25:01', '2019-07-04 03:25:01', '', 58, 'http://localhost/aeago/wp-content/uploads/2019/07/E-uma-pessoa-feliz-ou-apenas-alegre.jpg', 0, 'attachment', 'image/jpeg', 0),
(60, 1, '2019-07-04 00:26:17', '2019-07-04 03:26:17', '', 'Nanda Maria de Jesus', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.', 'publish', 'closed', 'closed', '', 'nanda-maria-de-jesus', '', '', '2019-07-04 02:17:54', '2019-07-04 05:17:54', '', 0, 'http://localhost/aeago/?post_type=associado&#038;p=60', 0, 'associado', '', 0),
(61, 1, '2019-07-04 00:26:08', '2019-07-04 03:26:08', '', 'pessoa-ruim', '', 'inherit', 'open', 'closed', '', 'pessoa-ruim', '', '', '2019-07-04 00:26:08', '2019-07-04 03:26:08', '', 60, 'http://localhost/aeago/wp-content/uploads/2019/07/pessoa-ruim.jpg', 0, 'attachment', 'image/jpeg', 0),
(62, 1, '2019-07-04 00:27:10', '2019-07-04 03:27:10', '', 'Túlio Marcelo da Silva Lima', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.', 'publish', 'closed', 'closed', '', 'tulio-marcelo-da-silva-lima', '', '', '2019-07-04 01:59:38', '2019-07-04 04:59:38', '', 0, 'http://localhost/aeago/?post_type=associado&#038;p=62', 0, 'associado', '', 0),
(63, 1, '2019-07-04 00:27:04', '2019-07-04 03:27:04', '', 'I98JM9OX_400x400', '', 'inherit', 'open', 'closed', '', 'i98jm9ox_400x400', '', '', '2019-07-04 00:27:04', '2019-07-04 03:27:04', '', 62, 'http://localhost/aeago/wp-content/uploads/2019/07/I98JM9OX_400x400.jpg', 0, 'attachment', 'image/jpeg', 0),
(64, 1, '2019-07-04 00:28:27', '2019-07-04 03:28:27', '', 'João Lima', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.', 'publish', 'closed', 'closed', '', 'joao-lima', '', '', '2019-07-04 01:59:30', '2019-07-04 04:59:30', '', 0, 'http://localhost/aeago/?post_type=associado&#038;p=64', 0, 'associado', '', 0),
(65, 1, '2019-07-04 00:28:22', '2019-07-04 03:28:22', '', 'carlos_pessoa-2-1', '', 'inherit', 'open', 'closed', '', 'carlos_pessoa-2-1', '', '', '2019-07-04 00:28:22', '2019-07-04 03:28:22', '', 64, 'http://localhost/aeago/wp-content/uploads/2019/07/carlos_pessoa-2-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(66, 1, '2019-07-04 00:30:07', '2019-07-04 03:30:07', '', 'Breno Júlio Pereira', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.', 'publish', 'closed', 'closed', '', 'breno-julio-pereira', '', '', '2019-07-04 01:59:23', '2019-07-04 04:59:23', '', 0, 'http://localhost/aeago/?post_type=associado&#038;p=66', 0, 'associado', '', 0),
(67, 1, '2019-07-04 00:29:51', '2019-07-04 03:29:51', '', 'thumb_AleB', '', 'inherit', 'open', 'closed', '', 'thumb_aleb', '', '', '2019-07-04 00:29:51', '2019-07-04 03:29:51', '', 66, 'http://localhost/aeago/wp-content/uploads/2019/07/thumb_AleB.jpg', 0, 'attachment', 'image/jpeg', 0),
(68, 1, '2019-07-04 00:31:27', '2019-07-04 03:31:27', '', 'Cleide Bruna Rodrigues', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.', 'publish', 'closed', 'closed', '', 'cleide-bruna-rodrigues', '', '', '2019-07-04 01:59:15', '2019-07-04 04:59:15', '', 0, 'http://localhost/aeago/?post_type=associado&#038;p=68', 0, 'associado', '', 0),
(69, 1, '2019-07-04 00:31:13', '2019-07-04 03:31:13', '', 'feliz-consigo-entre-os-sinais-de-uma-pessoa-feliz', '', 'inherit', 'open', 'closed', '', 'feliz-consigo-entre-os-sinais-de-uma-pessoa-feliz', '', '', '2019-07-04 00:31:13', '2019-07-04 03:31:13', '', 68, 'http://localhost/aeago/wp-content/uploads/2019/07/feliz-consigo-entre-os-sinais-de-uma-pessoa-feliz.jpg', 0, 'attachment', 'image/jpeg', 0),
(70, 1, '2019-07-04 00:32:31', '2019-07-04 03:32:31', '', 'Pedro Kiorena', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.', 'publish', 'closed', 'closed', '', 'pedro-kiorena', '', '', '2019-07-04 01:59:06', '2019-07-04 04:59:06', '', 0, 'http://localhost/aeago/?post_type=associado&#038;p=70', 0, 'associado', '', 0),
(71, 1, '2019-07-04 00:32:18', '2019-07-04 03:32:18', '', 'Qual-é-o-Perfil-do-Empreendedor', '', 'inherit', 'open', 'closed', '', 'qual-e-o-perfil-do-empreendedor', '', '', '2019-07-04 00:32:18', '2019-07-04 03:32:18', '', 70, 'http://localhost/aeago/wp-content/uploads/2019/07/Qual-é-o-Perfil-do-Empreendedor.jpg', 0, 'attachment', 'image/jpeg', 0),
(72, 1, '2019-07-04 00:33:39', '2019-07-04 03:33:39', '', 'Suelen Zuriana Silva', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.', 'publish', 'closed', 'closed', '', 'suelen-zuriana-silva', '', '', '2019-07-04 01:58:57', '2019-07-04 04:58:57', '', 0, 'http://localhost/aeago/?post_type=associado&#038;p=72', 0, 'associado', '', 0),
(73, 1, '2019-07-04 00:33:20', '2019-07-04 03:33:20', '', '27151441599410', '', 'inherit', 'open', 'closed', '', '27151441599410', '', '', '2019-07-04 00:33:20', '2019-07-04 03:33:20', '', 72, 'http://localhost/aeago/wp-content/uploads/2019/07/27151441599410.jpg', 0, 'attachment', 'image/jpeg', 0),
(74, 1, '2019-07-04 00:35:47', '2019-07-04 03:35:47', '', 'Luciana Oliver Albino', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.', 'publish', 'closed', 'closed', '', 'luciana-oliver-albino', '', '', '2019-07-04 01:58:46', '2019-07-04 04:58:46', '', 0, 'http://localhost/aeago/?post_type=associado&#038;p=74', 0, 'associado', '', 0),
(75, 1, '2019-07-04 00:35:12', '2019-07-04 03:35:12', '', 'sinais-que-comprovam-que-voce-tem-se-tornado-uma-pessoa-melhor-a-cada-dia (1)', '', 'inherit', 'open', 'closed', '', 'sinais-que-comprovam-que-voce-tem-se-tornado-uma-pessoa-melhor-a-cada-dia-1', '', '', '2019-07-04 00:35:12', '2019-07-04 03:35:12', '', 74, 'http://localhost/aeago/wp-content/uploads/2019/07/sinais-que-comprovam-que-voce-tem-se-tornado-uma-pessoa-melhor-a-cada-dia-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(76, 1, '2019-07-04 02:02:29', '2019-07-04 05:02:29', '', 'Nanda Maria de Jesus', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.', 'inherit', 'closed', 'closed', '', '60-autosave-v1', '', '', '2019-07-04 02:02:29', '2019-07-04 05:02:29', '', 60, 'http://localhost/aeago/geral/60-autosave-v1/', 0, 'revision', '', 0),
(89, 1, '2019-07-16 22:18:46', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-07-16 22:18:46', '0000-00-00 00:00:00', '', 0, 'http://localhost/aeago/?p=89', 0, 'post', '', 0),
(78, 1, '2019-07-04 17:27:53', '2019-07-04 20:27:53', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.\r\n\r\nIt was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more reacently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'Doença encontrada!', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s', 'publish', 'closed', 'closed', '', 'doenca-encontrada', '', '', '2019-07-04 21:12:49', '2019-07-05 00:12:49', '', 0, 'http://localhost/aeago/?post_type=forum&#038;p=78', 0, 'forum', '', 0),
(79, 1, '2019-07-04 17:28:28', '2019-07-04 20:28:28', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.\r\n\r\nIt was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more reacently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'Cenário atual, como vocês estão', 'Letraset sheets containing Lorem Ipsum passages, and more reacently with desktop publishing software like Aldus', 'publish', 'closed', 'closed', '', 'cenario-atual-como-voces-estao', '', '', '2019-07-17 23:54:16', '2019-07-18 02:54:16', '', 0, 'http://localhost/aeago/?post_type=forum&#038;p=79', 0, 'forum', '', 0),
(80, 1, '2019-07-04 17:28:54', '2019-07-04 20:28:54', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.\r\n\r\nIt was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more reacently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'AJUDA! Preciso de soluções', 'It has survived not only five centuries, but also the leap into electronic typesetting', 'publish', 'closed', 'closed', '', 'ajuda-preciso-de-solucoes', '', '', '2019-07-04 21:12:29', '2019-07-05 00:12:29', '', 0, 'http://localhost/aeago/?post_type=forum&#038;p=80', 0, 'forum', '', 0),
(81, 1, '2019-07-04 17:29:24', '2019-07-04 20:29:24', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.\r\n\r\nIt was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more reacently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'Alguém possui esses problemas?', ' Letraset sheets containing Lorem Ipsum passages, and more reacently with desktop publishing software like Aldus PageMaker including', 'publish', 'closed', 'closed', '', 'alguem-possui-esses-problemas', '', '', '2019-07-18 00:22:59', '2019-07-18 03:22:59', '', 0, 'http://localhost/aeago/?post_type=forum&#038;p=81', 0, 'forum', '', 0),
(82, 1, '2019-07-04 17:29:59', '2019-07-04 20:29:59', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.\r\n\r\nIt was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more reacently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'My post 2 - editado', 'text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text', 'trash', 'closed', 'closed', '', 'producao-nesta-seca__trashed', '', '', '2019-07-17 03:17:02', '2019-07-17 06:17:02', '', 0, 'http://localhost/aeago/?post_type=forum&#038;p=82', 0, 'forum', '', 0),
(83, 1, '2019-07-04 20:35:58', '2019-07-04 23:35:58', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"forum\";}}}s:8:\"position\";s:4:\"side\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Autor', 'autor', 'publish', 'closed', 'closed', '', 'group_5d1e8cd5dbb16', '', '', '2019-07-04 20:42:50', '2019-07-04 23:42:50', '', 0, 'http://localhost/aeago/?post_type=acf-field-group&#038;p=83', 0, 'acf-field-group', '', 0),
(84, 1, '2019-07-04 20:35:58', '2019-07-04 23:35:58', 'a:11:{s:4:\"type\";s:11:\"post_object\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:9:\"associado\";}s:8:\"taxonomy\";s:0:\"\";s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:13:\"return_format\";s:2:\"id\";s:2:\"ui\";i:1;}', 'Associado', 'autor-forum', 'publish', 'closed', 'closed', '', 'field_5d1e8d0c9bdf4', '', '', '2019-07-04 20:35:58', '2019-07-04 23:35:58', '', 83, 'http://localhost/aeago/?post_type=acf-field&p=84', 0, 'acf-field', '', 0),
(85, 1, '2019-07-04 22:05:30', '2019-07-05 01:05:30', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"forum\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:16:\"Posts dos fórum\";}', 'Posts Fórum', 'posts-forum', 'publish', 'closed', 'closed', '', 'group_5d1ea06d6dd35', '', '', '2019-07-17 18:15:07', '2019-07-17 21:15:07', '', 0, 'http://localhost/aeago/?post_type=acf-field-group&#038;p=85', 0, 'acf-field-group', '', 0),
(86, 1, '2019-07-04 22:05:30', '2019-07-05 01:05:30', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Posts', 'posts-forum', 'publish', 'closed', 'closed', '', 'field_5d1ea1a91a12a', '', '', '2019-07-17 17:18:12', '2019-07-17 20:18:12', '', 85, 'http://localhost/aeago/?post_type=acf-field&#038;p=86', 0, 'acf-field', '', 0),
(87, 1, '2019-07-04 22:05:30', '2019-07-05 01:05:30', 'a:12:{s:4:\"type\";s:12:\"relationship\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"35\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:9:\"associado\";}s:8:\"taxonomy\";s:0:\"\";s:7:\"filters\";a:1:{i:0;s:6:\"search\";}s:8:\"elements\";a:1:{i:0;s:14:\"featured_image\";}s:3:\"min\";i:1;s:3:\"max\";i:1;s:13:\"return_format\";s:2:\"id\";}', 'Autor', 'autor-post', 'publish', 'closed', 'closed', '', 'field_5d1ea1e01a12b', '', '', '2019-07-17 18:15:07', '2019-07-17 21:15:07', '', 86, 'http://localhost/aeago/?post_type=acf-field&#038;p=87', 0, 'acf-field', '', 0),
(114, 1, '2019-07-22 18:23:14', '2019-07-22 21:23:14', '', 'Setor ajuda a mover o Brasil!', '', 'inherit', 'closed', 'closed', '', '113-revision-v1', '', '', '2019-07-22 18:23:14', '2019-07-22 21:23:14', '', 113, 'http://localhost/aeago/geral/113-revision-v1/', 0, 'revision', '', 0),
(115, 1, '2019-01-22 21:42:17', '2019-01-22 23:42:17', '', 'Sustentando a economia brasileira', '', 'publish', 'open', 'open', '', 'sustentando-a-economia-brasileira', '', '', '2019-07-22 21:48:22', '2019-07-23 00:48:22', '', 0, 'http://localhost/aeago/?p=115', 0, 'post', '', 0),
(90, 1, '2019-07-16 23:54:51', '2019-07-17 02:54:51', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Número de Carteira', 'num_carteira_associado', 'publish', 'closed', 'closed', '', 'field_5d2e8dcb8e6ad', '', '', '2019-07-16 23:55:51', '2019-07-17 02:55:51', '', 35, 'http://localhost/aeago/?post_type=acf-field&#038;p=90', 2, 'acf-field', '', 0),
(91, 1, '2019-07-17 01:13:50', '2019-07-17 04:13:50', 'Teste de criação de poste.', 'My post 2', 'Teste de criação de poste. Conteudo para o resumo', 'trash', 'open', 'open', '', 'my-post-2__trashed', '', '', '2019-07-17 01:15:52', '2019-07-17 04:15:52', '', 0, 'http://localhost/aeago/geral/my-post-2/', 0, 'post', '', 0),
(92, 1, '2019-07-17 01:15:38', '2019-07-17 04:15:38', 'Teste de criação de poste.', 'My post 2', 'Teste de criação de poste. Conteudo para o resumo', 'trash', 'closed', 'closed', '', 'my-post-2__trashed', '', '', '2019-07-17 03:17:02', '2019-07-17 06:17:02', '', 0, 'http://localhost/aeago/forum/my-post-2/', 0, 'forum', '', 0),
(93, 1, '2019-07-17 01:15:52', '2019-07-17 04:15:52', 'Teste de criação de poste.', 'My post 2', 'Teste de criação de poste. Conteudo para o resumo', 'inherit', 'closed', 'closed', '', '91-revision-v1', '', '', '2019-07-17 01:15:52', '2019-07-17 04:15:52', '', 91, 'http://localhost/aeago/geral/91-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2019-07-17 01:17:41', '2019-07-17 04:17:41', 'Teste de criação de poste.', 'Forum 1', 'Teste de criação de poste. Conteudo para o resumo', 'trash', 'closed', 'closed', '', 'forum-1__trashed', '', '', '2019-07-17 03:17:02', '2019-07-17 06:17:02', '', 0, 'http://localhost/aeago/forum/forum-1/', 0, 'forum', '', 0),
(95, 1, '2019-07-17 02:17:43', '2019-07-17 05:17:43', 'asda dad a da d', 'Teste Forum', 'asdadad da da d', 'trash', 'closed', 'closed', '', 'teste-forum__trashed', '', '', '2019-07-17 03:17:02', '2019-07-17 06:17:02', '', 0, 'http://localhost/aeago/forum/teste-forum/', 0, 'forum', '', 0),
(96, 1, '2019-07-17 02:22:41', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-07-17 02:22:41', '0000-00-00 00:00:00', '', 0, 'http://localhost/aeago/?post_type=acf-field-group&p=96', 0, 'acf-field-group', '', 0),
(97, 1, '2019-07-17 02:31:35', '2019-07-17 05:31:35', 'qqeqeqeq', 'qweqweqe', 'qeqe', 'trash', 'closed', 'closed', '', 'qweqweqe__trashed', '', '', '2019-07-17 03:17:02', '2019-07-17 06:17:02', '', 0, 'http://localhost/aeago/forum/qweqweqe/', 0, 'forum', '', 0),
(98, 1, '2019-07-17 03:04:35', '2019-07-17 06:04:35', 'asd asdasd ad adadad ada d \r\nada d ad da\r\n da da da da da', 'Teste Ederton', 'sdasd a4d6 54ad4 a', 'trash', 'closed', 'closed', '', 'teste-ederton__trashed', '', '', '2019-07-17 03:17:02', '2019-07-17 06:17:02', '', 0, 'http://localhost/aeago/forum/teste-ederton/', 0, 'forum', '', 0),
(99, 1, '2019-07-17 03:10:01', '2019-07-17 06:10:01', '', 'Teste correto', '', 'trash', 'closed', 'closed', '', 'teste-correto__trashed', '', '', '2019-07-17 03:17:02', '2019-07-17 06:17:02', '', 0, 'http://localhost/aeago/forum/teste-correto/', 0, 'forum', '', 0),
(100, 1, '2019-07-17 03:13:00', '2019-07-17 06:13:00', '', 'qweqeqeqeqe', '', 'trash', 'closed', 'closed', '', 'qweqeqeqeqe__trashed', '', '', '2019-07-17 03:17:02', '2019-07-17 06:17:02', '', 0, 'http://localhost/aeago/forum/qweqeqeqeqe/', 0, 'forum', '', 0),
(101, 1, '2019-07-17 03:14:23', '2019-07-17 06:14:23', 'adadadadad', '121212121234234234', 'adaadadad', 'trash', 'closed', 'closed', '', '121212121234234234__trashed', '', '', '2019-07-17 03:17:02', '2019-07-17 06:17:02', '', 0, 'http://localhost/aeago/forum/121212121234234234/', 0, 'forum', '', 0),
(102, 1, '2019-07-17 03:15:21', '2019-07-17 06:15:21', 'adadadadad', '121212121234234234', 'adaadadad', 'trash', 'closed', 'closed', '', '121212121234234234-2__trashed', '', '', '2019-07-17 03:17:02', '2019-07-17 06:17:02', '', 0, 'http://localhost/aeago/forum/121212121234234234-2/', 0, 'forum', '', 0),
(103, 1, '2019-07-17 03:16:03', '2019-07-17 06:16:03', 'adadadadad', '121212121234234234', 'adaadadad', 'trash', 'closed', 'closed', '', '121212121234234234-3__trashed', '', '', '2019-07-17 03:17:02', '2019-07-17 06:17:02', '', 0, 'http://localhost/aeago/forum/121212121234234234-3/', 0, 'forum', '', 0),
(104, 1, '2019-07-17 03:17:56', '2019-07-17 06:17:56', 'Texto completo do forum', 'Criando novo forum', 'Resumo do post', 'trash', 'closed', 'closed', '', 'criando-novo-forum__trashed', '', '', '2019-07-17 03:46:24', '2019-07-17 06:46:24', '', 0, 'http://localhost/aeago/forum/criando-novo-forum/', 0, 'forum', '', 0),
(105, 1, '2019-07-17 03:19:29', '2019-07-17 06:19:29', 'adada\r\nd adad a\r\nd ad ada d ad ', 'Testando novamento?', 'asdad adada d', 'trash', 'closed', 'closed', '', 'testando-novamento__trashed', '', '', '2019-07-17 03:46:24', '2019-07-17 06:46:24', '', 0, 'http://localhost/aeago/forum/testando-novamento/', 0, 'forum', '', 0),
(106, 1, '2019-07-17 03:24:30', '2019-07-17 06:24:30', 'a dad ad ', 'Colocando categoria', 'adad', 'trash', 'closed', 'closed', '', 'colocando-categoria__trashed', '', '', '2019-07-17 03:46:24', '2019-07-17 06:46:24', '', 0, 'http://localhost/aeago/forum/colocando-categoria/', 0, 'forum', '', 0),
(107, 1, '2019-07-17 03:35:03', '2019-07-17 06:35:03', '', 'Categoria OK', '', 'trash', 'closed', 'closed', '', 'categoria-ok__trashed', '', '', '2019-07-17 03:46:24', '2019-07-17 06:46:24', '', 0, 'http://localhost/aeago/forum/categoria-ok/', 0, 'forum', '', 0),
(113, 1, '2019-07-22 18:23:14', '2019-07-22 21:23:14', '', 'Setor ajuda a mover o Brasil!', '', 'publish', 'open', 'open', '', 'setor-ajuda-a-mover-o-brasil', '', '', '2019-07-22 18:23:14', '2019-07-22 21:23:14', '', 0, 'http://localhost/aeago/?p=113', 0, 'post', '', 0),
(112, 1, '2019-07-17 18:15:07', '2019-07-17 21:15:07', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"10\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Data', 'data-post', 'publish', 'closed', 'closed', '', 'field_5d2f8f8e7f406', '', '', '2019-07-17 18:15:07', '2019-07-17 21:15:07', '', 86, 'http://localhost/aeago/?post_type=acf-field&p=112', 3, 'acf-field', '', 0),
(109, 1, '2019-07-17 17:18:12', '2019-07-17 20:18:12', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"45\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";i:2;s:9:\"new_lines\";s:2:\"br\";}', 'Texto', 'texto-post', 'publish', 'closed', 'closed', '', 'field_5d2f81de3a45f', '', '', '2019-07-17 18:15:07', '2019-07-17 21:15:07', '', 86, 'http://localhost/aeago/?post_type=acf-field&#038;p=109', 1, 'acf-field', '', 0),
(110, 1, '2019-07-17 17:18:12', '2019-07-17 20:18:12', 'a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"10\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";}', 'Resposta de', 'resposta-post', 'publish', 'closed', 'closed', '', 'field_5d2f82283a460', '', '', '2019-07-17 17:21:25', '2019-07-17 20:21:25', '', 86, 'http://localhost/aeago/?post_type=acf-field&#038;p=110', 2, 'acf-field', '', 0),
(116, 1, '2019-07-22 21:42:17', '2019-07-23 00:42:17', '', 'Sustentando a economia brasileira', '', 'inherit', 'closed', 'closed', '', '115-revision-v1', '', '', '2019-07-22 21:42:17', '2019-07-23 00:42:17', '', 115, 'http://localhost/aeago/geral/115-revision-v1/', 0, 'revision', '', 0),
(117, 1, '2018-12-22 21:46:05', '2018-12-22 23:46:05', '', 'Compreender como ele é formado permite', '', 'publish', 'open', 'open', '', 'compreender-como-ele-e-formado-permite', '', '', '2019-07-22 21:46:44', '2019-07-23 00:46:44', '', 0, 'http://localhost/aeago/?p=117', 0, 'post', '', 0),
(118, 1, '2019-07-22 21:46:05', '2019-07-23 00:46:05', '', 'Compreender como ele é formado permite', '', 'inherit', 'closed', 'closed', '', '117-revision-v1', '', '', '2019-07-22 21:46:05', '2019-07-23 00:46:05', '', 117, 'http://localhost/aeago/geral/117-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_termmeta`
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_terms`
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
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Geral', 'geral', 0),
(2, 'Gestão Rural', 'gestao-rural', 0),
(3, 'Agronegócio', 'agronegocio', 0),
(4, 'Produção', 'producao', 0),
(5, 'Geral', 'geral', 0),
(6, 'Política', 'politica', 0),
(7, 'Tecnologias', 'tecnologias', 0),
(8, 'Dúvidas', 'duvidas', 0),
(9, 'Meio Ambiente', 'meio-ambiente', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(6, 1, 0),
(6, 2, 0),
(78, 5, 0),
(14, 4, 0),
(15, 4, 0),
(29, 8, 0),
(16, 3, 0),
(79, 6, 0),
(80, 8, 0),
(80, 5, 0),
(80, 7, 0),
(81, 5, 0),
(82, 8, 0),
(82, 5, 0),
(91, 1, 0),
(106, 8, 0),
(107, 5, 0),
(113, 4, 0),
(115, 3, 0),
(117, 4, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_term_taxonomy`
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
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'category', '', 0, 1),
(3, 3, 'category', '', 0, 2),
(4, 4, 'category', '', 0, 4),
(5, 5, 'categoria_forum', '', 0, 3),
(6, 6, 'categoria_forum', '', 0, 1),
(7, 7, 'categoria_forum', '', 0, 1),
(8, 8, 'categoria_forum', '', 0, 2),
(9, 9, 'categoria_forum', '', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_usermeta`
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
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'ederton'),
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
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"5a4d9d718737e581ddf12cbcd998e31e6a293c3ccdc3b919917fba28ebb80606\";a:4:{s:10:\"expiration\";i:1563997826;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0\";s:5:\"login\";i:1563825026;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '89'),
(18, 1, 'wp_user-settings', 'libraryContent=browse&editor=html'),
(19, 1, 'wp_user-settings-time', '1562243661');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_users`
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
-- Extraindo dados da tabela `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'ederton', '$P$BsvBg1yNOKk7ZGQDUEY/alvIk6TMev.', 'ederton', 'edertton@gmail.com', '', '2019-06-13 03:43:20', '', 0, 'ederton');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
