-- MySQL dump 10.13  Distrib 8.0.16, for Linux (x86_64)
--
-- Host: localhost    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2020-03-23 08:56:46','2020-03-23 08:56:46','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=225 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://fictional-university.local','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://fictional-university.local','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','Fictional University','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','Just another WordPress site','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','me@mattjones.tech','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:111:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:13:\"bible-plan/?$\";s:30:\"index.php?post_type=bible-plan\";s:43:\"bible-plan/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?post_type=bible-plan&feed=$matches[1]\";s:38:\"bible-plan/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?post_type=bible-plan&feed=$matches[1]\";s:30:\"bible-plan/page/([0-9]{1,})/?$\";s:48:\"index.php?post_type=bible-plan&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:38:\"bible-plan/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:48:\"bible-plan/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:68:\"bible-plan/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"bible-plan/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"bible-plan/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:44:\"bible-plan/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:27:\"bible-plan/([^/]+)/embed/?$\";s:43:\"index.php?bible-plan=$matches[1]&embed=true\";s:31:\"bible-plan/([^/]+)/trackback/?$\";s:37:\"index.php?bible-plan=$matches[1]&tb=1\";s:51:\"bible-plan/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?bible-plan=$matches[1]&feed=$matches[2]\";s:46:\"bible-plan/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?bible-plan=$matches[1]&feed=$matches[2]\";s:39:\"bible-plan/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?bible-plan=$matches[1]&paged=$matches[2]\";s:46:\"bible-plan/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?bible-plan=$matches[1]&cpage=$matches[2]\";s:35:\"bible-plan/([^/]+)(?:/([0-9]+))?/?$\";s:49:\"index.php?bible-plan=$matches[1]&page=$matches[2]\";s:27:\"bible-plan/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"bible-plan/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"bible-plan/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"bible-plan/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"bible-plan/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"bible-plan/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=12&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:1:{i:0;s:30:\"advanced-custom-fields/acf.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','','no');
INSERT INTO `wp_options` VALUES (40,'template','fictional-university-theme','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','fictional-university-theme','yes');
INSERT INTO `wp_options` VALUES (42,'comment_whitelist','1','yes');
INSERT INTO `wp_options` VALUES (43,'blacklist_keys','','no');
INSERT INTO `wp_options` VALUES (44,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (45,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (46,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (47,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (48,'db_version','45805','yes');
INSERT INTO `wp_options` VALUES (49,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (50,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (51,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (52,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (53,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (54,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (55,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (56,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (57,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (59,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (60,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (61,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (62,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (63,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (64,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (65,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (67,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (68,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (69,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (70,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (71,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (72,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (73,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (74,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (75,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (76,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (77,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (79,'widget_text','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (80,'widget_rss','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (81,'uninstall_plugins','a:0:{}','no');
INSERT INTO `wp_options` VALUES (82,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (83,'page_for_posts','14','yes');
INSERT INTO `wp_options` VALUES (84,'page_on_front','12','yes');
INSERT INTO `wp_options` VALUES (85,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (86,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (87,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (88,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (89,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (90,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (91,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (92,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (93,'admin_email_lifespan','1600505805','yes');
INSERT INTO `wp_options` VALUES (94,'initial_db_version','45805','yes');
INSERT INTO `wp_options` VALUES (95,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (96,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (97,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (98,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (99,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (100,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (101,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (102,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (103,'cron','a:6:{i:1585137407;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1585169807;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1585213007;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1585213582;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1585213583;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (104,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (105,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (106,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'nonce_key','8{X@Mm/WYMr]dv2` z%ggC~r2r47^2AU@5w,Q$OG5WQqPsW:>@w)*dusG|bv|2;=','no');
INSERT INTO `wp_options` VALUES (111,'nonce_salt','/D`A))<pV ?MT#F*f)p1vDOMDTQ/jAJ;Tt5F>@:h]6T~=/`#ewnNHNkgmQ`6:`HM','no');
INSERT INTO `wp_options` VALUES (112,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (116,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (117,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.3.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.3.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1585135935;s:15:\"version_checked\";s:5:\"5.3.2\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (122,'_site_transient_update_themes','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1585135709;s:7:\"checked\";a:1:{s:26:\"fictional-university-theme\";s:5:\"0.0.1\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (123,'_site_transient_timeout_browser_81dd33670f154df1ac6887eccc23e632','1585559183','no');
INSERT INTO `wp_options` VALUES (124,'_site_transient_browser_81dd33670f154df1ac6887eccc23e632','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"80.0.3987.149\";s:8:\"platform\";s:5:\"Linux\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (125,'_site_transient_timeout_php_check_472f71d2a071d463a95f84346288dc89','1585559183','no');
INSERT INTO `wp_options` VALUES (126,'_site_transient_php_check_472f71d2a071d463a95f84346288dc89','a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_options` VALUES (130,'can_compress_scripts','1','no');
INSERT INTO `wp_options` VALUES (141,'theme_mods_twentytwenty','a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1584954453;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}','yes');
INSERT INTO `wp_options` VALUES (142,'current_theme','Fictional University','yes');
INSERT INTO `wp_options` VALUES (143,'theme_mods_fictional-university-theme','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (144,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (160,'category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (197,'_transient_timeout_plugin_slugs','1585139578','no');
INSERT INTO `wp_options` VALUES (198,'_transient_plugin_slugs','a:1:{i:0;s:30:\"advanced-custom-fields/acf.php\";}','no');
INSERT INTO `wp_options` VALUES (199,'recently_activated','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (205,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1585135709;s:7:\"checked\";a:1:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.8.8\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.8.8\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.8.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}}}','no');
INSERT INTO `wp_options` VALUES (206,'acf_version','5.8.8','yes');
INSERT INTO `wp_options` VALUES (223,'_site_transient_timeout_theme_roots','1585137508','no');
INSERT INTO `wp_options` VALUES (224,'_site_transient_theme_roots','a:1:{s:26:\"fictional-university-theme\";s:7:\"/themes\";}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (3,2,'_edit_lock','1584954298:1');
INSERT INTO `wp_postmeta` VALUES (4,3,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (5,3,'_edit_lock','1584955663:1');
INSERT INTO `wp_postmeta` VALUES (6,7,'_edit_lock','1584955677:1');
INSERT INTO `wp_postmeta` VALUES (7,9,'_edit_lock','1584955458:1');
INSERT INTO `wp_postmeta` VALUES (8,10,'_edit_lock','1584956229:1');
INSERT INTO `wp_postmeta` VALUES (9,12,'_edit_lock','1585048140:1');
INSERT INTO `wp_postmeta` VALUES (10,14,'_edit_lock','1584966356:1');
INSERT INTO `wp_postmeta` VALUES (11,1,'_edit_lock','1584957154:1');
INSERT INTO `wp_postmeta` VALUES (14,17,'_edit_lock','1585046450:1');
INSERT INTO `wp_postmeta` VALUES (17,19,'_edit_lock','1584960899:1');
INSERT INTO `wp_postmeta` VALUES (20,22,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (21,22,'_edit_lock','1584993185:1');
INSERT INTO `wp_postmeta` VALUES (22,22,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (23,22,'_wp_trash_meta_time','1584993330');
INSERT INTO `wp_postmeta` VALUES (24,22,'_wp_desired_post_slug','day-1');
INSERT INTO `wp_postmeta` VALUES (25,23,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (26,23,'_edit_lock','1584993341:1');
INSERT INTO `wp_postmeta` VALUES (27,24,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (28,24,'_edit_lock','1585057911:1');
INSERT INTO `wp_postmeta` VALUES (29,25,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (30,25,'_edit_lock','1585056654:1');
INSERT INTO `wp_postmeta` VALUES (31,26,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (32,26,'_edit_lock','1585056674:1');
INSERT INTO `wp_postmeta` VALUES (35,28,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (36,28,'_edit_lock','1585056679:1');
INSERT INTO `wp_postmeta` VALUES (37,30,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (38,30,'_edit_lock','1585062768:1');
INSERT INTO `wp_postmeta` VALUES (39,33,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (40,33,'_edit_lock','1585057958:1');
INSERT INTO `wp_postmeta` VALUES (41,25,'bible_reading_plan_date','20200402');
INSERT INTO `wp_postmeta` VALUES (42,25,'_bible_reading_plan_date','field_5e7a084530316');
INSERT INTO `wp_postmeta` VALUES (43,28,'bible_reading_plan_date','20200404');
INSERT INTO `wp_postmeta` VALUES (44,28,'_bible_reading_plan_date','field_5e7a084530316');
INSERT INTO `wp_postmeta` VALUES (45,24,'bible_reading_plan_date','20200401');
INSERT INTO `wp_postmeta` VALUES (46,24,'_bible_reading_plan_date','field_5e7a084530316');
INSERT INTO `wp_postmeta` VALUES (47,26,'bible_reading_plan_date','20200403');
INSERT INTO `wp_postmeta` VALUES (48,26,'_bible_reading_plan_date','field_5e7a084530316');
INSERT INTO `wp_postmeta` VALUES (49,30,'bible_reading_plan_date','20200405');
INSERT INTO `wp_postmeta` VALUES (50,30,'_bible_reading_plan_date','field_5e7a084530316');
INSERT INTO `wp_postmeta` VALUES (51,35,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (52,35,'bible_reading_plan_date','20200406');
INSERT INTO `wp_postmeta` VALUES (53,35,'_bible_reading_plan_date','field_5e7a084530316');
INSERT INTO `wp_postmeta` VALUES (54,35,'_edit_lock','1585062943:1');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2020-03-23 08:56:46','2020-03-23 08:56:46','<!-- wp:paragraph -->\n<p>Cinnamon saucer con panna fair trade irish cultivar aroma. Single shot caramelization, sit et filter crema half and half. Extra, coffee cultivar beans variety black shop qui fair trade. Espresso grinder galão, a barista pumpkin spice turkish irish and iced.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Java medium kopi-luwak affogato single shot, crema as decaffeinated trifecta caffeine. Breve lungo, strong a seasonal irish decaffeinated. Organic milk siphon aroma trifecta eu mocha. Beans, turkish as macchiato mazagran medium sweet.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Café au lait, lungo, turkish fair trade sit mocha java. And, java, siphon, extraction caramelization body ut dripper iced. Aged organic saucer dripper body trifecta filter. French press aged strong as, viennese acerbic et coffee cup caffeine java extra.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Bar, cup qui robust steamed café au lait grinder medium cortado galão redeye. Body and et wings, caramelization dark brewed irish grinder plunger pot wings. Sweet steamed, spoon, barista, mocha robust sugar roast latte. Extra, organic, eu kopi-luwak, aroma coffee steamed extraction affogato.</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2020-03-23 09:54:55','2020-03-23 09:54:55','',0,'http://fictional-university.local/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2020-03-23 08:56:46','2020-03-23 08:56:46','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://fictional-university.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','About Us','','publish','closed','open','','about-us','','','2020-03-23 09:07:09','2020-03-23 09:07:09','',0,'http://fictional-university.local/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2020-03-23 08:56:46','2020-03-23 08:56:46','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://fictional-university.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->','Privacy Policy','','publish','closed','closed','','privacy-policy','','','2020-03-23 09:12:44','2020-03-23 09:12:44','',0,'http://fictional-university.local/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (4,1,'2020-03-23 09:06:23','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2020-03-23 09:06:23','0000-00-00 00:00:00','',0,'http://fictional-university.local/?p=4',0,'post','',0);
INSERT INTO `wp_posts` VALUES (5,1,'2020-03-23 09:07:09','2020-03-23 09:07:09','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://fictional-university.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','About Us','','inherit','closed','closed','','2-revision-v1','','','2020-03-23 09:07:09','2020-03-23 09:07:09','',2,'http://fictional-university.local/2-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2020-03-23 09:12:44','2020-03-23 09:12:44','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://fictional-university.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->','Privacy Policy','','inherit','closed','closed','','3-revision-v1','','','2020-03-23 09:12:44','2020-03-23 09:12:44','',3,'http://fictional-university.local/3-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (7,1,'2020-03-23 09:13:24','2020-03-23 09:13:24','<!-- wp:paragraph -->\n<p>Cinnamon saucer con panna fair trade irish cultivar aroma. Single shot caramelization, sit et filter crema half and half. Extra, coffee cultivar beans variety black shop qui fair trade. Espresso grinder galão, a barista pumpkin spice turkish irish and iced.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Java medium kopi-luwak affogato single shot, crema as decaffeinated trifecta caffeine. Breve lungo, strong a seasonal irish decaffeinated. Organic milk siphon aroma trifecta eu mocha. Beans, turkish as macchiato mazagran medium sweet.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Café au lait, lungo, turkish fair trade sit mocha java. And, java, siphon, extraction caramelization body ut dripper iced. Aged organic saucer dripper body trifecta filter. French press aged strong as, viennese acerbic et coffee cup caffeine java extra.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Bar, cup qui robust steamed café au lait grinder medium cortado galão redeye. Body and et wings, caramelization dark brewed irish grinder plunger pot wings. Sweet steamed, spoon, barista, mocha robust sugar roast latte. Extra, organic, eu kopi-luwak, aroma coffee steamed extraction affogato.</p>\n<!-- /wp:paragraph -->','Our History','','publish','closed','closed','','our-history','','','2020-03-23 09:30:19','2020-03-23 09:30:19','',2,'http://fictional-university.local/?page_id=7',0,'page','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2020-03-23 09:13:24','2020-03-23 09:13:24','<!-- wp:paragraph -->\n<p>Cinnamon saucer con panna fair trade irish cultivar aroma. Single shot caramelization, sit et filter crema half and half. Extra, coffee cultivar beans variety black shop qui fair trade. Espresso grinder galão, a barista pumpkin spice turkish irish and iced.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Java medium kopi-luwak affogato single shot, crema as decaffeinated trifecta caffeine. Breve lungo, strong a seasonal irish decaffeinated. Organic milk siphon aroma trifecta eu mocha. Beans, turkish as macchiato mazagran medium sweet.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Café au lait, lungo, turkish fair trade sit mocha java. And, java, siphon, extraction caramelization body ut dripper iced. Aged organic saucer dripper body trifecta filter. French press aged strong as, viennese acerbic et coffee cup caffeine java extra.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Bar, cup qui robust steamed café au lait grinder medium cortado galão redeye. Body and et wings, caramelization dark brewed irish grinder plunger pot wings. Sweet steamed, spoon, barista, mocha robust sugar roast latte. Extra, organic, eu kopi-luwak, aroma coffee steamed extraction affogato.</p>\n<!-- /wp:paragraph -->','Our History','','inherit','closed','closed','','7-revision-v1','','','2020-03-23 09:13:24','2020-03-23 09:13:24','',7,'http://fictional-university.local/7-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2020-03-23 09:26:39','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-03-23 09:26:39','0000-00-00 00:00:00','',0,'http://fictional-university.local/?page_id=9',0,'page','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2020-03-23 09:36:55','2020-03-23 09:36:55','<!-- wp:paragraph -->\n<p>Cinnamon saucer con panna fair trade irish cultivar aroma. Single shot caramelization, sit et filter crema half and half. Extra, coffee cultivar beans variety black shop qui fair trade. Espresso grinder galão, a barista pumpkin spice turkish irish and iced.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Java medium kopi-luwak affogato single shot, crema as decaffeinated trifecta caffeine. Breve lungo, strong a seasonal irish decaffeinated. Organic milk siphon aroma trifecta eu mocha. Beans, turkish as macchiato mazagran medium sweet.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Café au lait, lungo, turkish fair trade sit mocha java. And, java, siphon, extraction caramelization body ut dripper iced. Aged organic saucer dripper body trifecta filter. French press aged strong as, viennese acerbic et coffee cup caffeine java extra.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Bar, cup qui robust steamed café au lait grinder medium cortado galão redeye. Body and et wings, caramelization dark brewed irish grinder plunger pot wings. Sweet steamed, spoon, barista, mocha robust sugar roast latte. Extra, organic, eu kopi-luwak, aroma coffee steamed extraction affogato.</p>\n<!-- /wp:paragraph -->','Our Goals','','publish','closed','closed','','our-goals','','','2020-03-23 09:36:55','2020-03-23 09:36:55','',0,'http://fictional-university.local/?page_id=10',0,'page','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2020-03-23 09:36:55','2020-03-23 09:36:55','<!-- wp:paragraph -->\n<p>Cinnamon saucer con panna fair trade irish cultivar aroma. Single shot caramelization, sit et filter crema half and half. Extra, coffee cultivar beans variety black shop qui fair trade. Espresso grinder galão, a barista pumpkin spice turkish irish and iced.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Java medium kopi-luwak affogato single shot, crema as decaffeinated trifecta caffeine. Breve lungo, strong a seasonal irish decaffeinated. Organic milk siphon aroma trifecta eu mocha. Beans, turkish as macchiato mazagran medium sweet.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Café au lait, lungo, turkish fair trade sit mocha java. And, java, siphon, extraction caramelization body ut dripper iced. Aged organic saucer dripper body trifecta filter. French press aged strong as, viennese acerbic et coffee cup caffeine java extra.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Bar, cup qui robust steamed café au lait grinder medium cortado galão redeye. Body and et wings, caramelization dark brewed irish grinder plunger pot wings. Sweet steamed, spoon, barista, mocha robust sugar roast latte. Extra, organic, eu kopi-luwak, aroma coffee steamed extraction affogato.</p>\n<!-- /wp:paragraph -->','Our Goals','','inherit','closed','closed','','10-revision-v1','','','2020-03-23 09:36:55','2020-03-23 09:36:55','',10,'http://fictional-university.local/10-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2020-03-23 09:39:41','2020-03-23 09:39:41','','Home','','publish','closed','closed','','home','','','2020-03-24 11:02:31','2020-03-24 11:02:31','',0,'http://fictional-university.local/?page_id=12',0,'page','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2020-03-23 09:39:41','2020-03-23 09:39:41','','Home','','inherit','closed','closed','','12-revision-v1','','','2020-03-23 09:39:41','2020-03-23 09:39:41','',12,'http://fictional-university.local/12-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2020-03-23 09:39:51','2020-03-23 09:39:51','','Blog','','publish','closed','closed','','blog','','','2020-03-23 09:39:51','2020-03-23 09:39:51','',0,'http://fictional-university.local/?page_id=14',0,'page','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2020-03-23 09:39:51','2020-03-23 09:39:51','','Blog','','inherit','closed','closed','','14-revision-v1','','','2020-03-23 09:39:51','2020-03-23 09:39:51','',14,'http://fictional-university.local/14-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2020-03-23 09:54:55','2020-03-23 09:54:55','<!-- wp:paragraph -->\n<p>Cinnamon saucer con panna fair trade irish cultivar aroma. Single shot caramelization, sit et filter crema half and half. Extra, coffee cultivar beans variety black shop qui fair trade. Espresso grinder galão, a barista pumpkin spice turkish irish and iced.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Java medium kopi-luwak affogato single shot, crema as decaffeinated trifecta caffeine. Breve lungo, strong a seasonal irish decaffeinated. Organic milk siphon aroma trifecta eu mocha. Beans, turkish as macchiato mazagran medium sweet.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Café au lait, lungo, turkish fair trade sit mocha java. And, java, siphon, extraction caramelization body ut dripper iced. Aged organic saucer dripper body trifecta filter. French press aged strong as, viennese acerbic et coffee cup caffeine java extra.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Bar, cup qui robust steamed café au lait grinder medium cortado galão redeye. Body and et wings, caramelization dark brewed irish grinder plunger pot wings. Sweet steamed, spoon, barista, mocha robust sugar roast latte. Extra, organic, eu kopi-luwak, aroma coffee steamed extraction affogato.</p>\n<!-- /wp:paragraph -->','Hello world!','','inherit','closed','closed','','1-revision-v1','','','2020-03-23 09:54:55','2020-03-23 09:54:55','',1,'http://fictional-university.local/1-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (17,1,'2020-03-23 10:08:51','2020-03-23 10:08:51','<!-- wp:paragraph -->\n<p>Cinnamon saucer con panna fair trade irish cultivar aroma. Single shot caramelization, sit et filter crema half and half. Extra, coffee cultivar beans variety black shop qui fair trade. Espresso grinder galão, a barista pumpkin spice turkish irish and iced.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Java medium kopi-luwak affogato single shot, crema as decaffeinated trifecta caffeine. Breve lungo, strong a seasonal irish decaffeinated. Organic milk siphon aroma trifecta eu mocha. Beans, turkish as macchiato mazagran medium sweet.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Café au lait, lungo, turkish fair trade sit mocha java. And, java, siphon, extraction caramelization body ut dripper iced. Aged organic saucer dripper body trifecta filter. French press aged strong as, viennese acerbic et coffee cup caffeine java extra.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Bar, cup qui robust steamed café au lait grinder medium cortado galão redeye. Body and et wings, caramelization dark brewed irish grinder plunger pot wings. Sweet steamed, spoon, barista, mocha robust sugar roast latte. Extra, organic, eu kopi-luwak, aroma coffee steamed extraction affogato.</p>\n<!-- /wp:paragraph -->','We Won An Award!','Our school has won another award this year.','publish','open','open','','we-won-an-award','','','2020-03-24 10:42:14','2020-03-24 10:42:14','',0,'http://fictional-university.local/?p=17',0,'post','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2020-03-23 10:08:51','2020-03-23 10:08:51','<!-- wp:paragraph -->\n<p>Cinnamon saucer con panna fair trade irish cultivar aroma. Single shot caramelization, sit et filter crema half and half. Extra, coffee cultivar beans variety black shop qui fair trade. Espresso grinder galão, a barista pumpkin spice turkish irish and iced.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Java medium kopi-luwak affogato single shot, crema as decaffeinated trifecta caffeine. Breve lungo, strong a seasonal irish decaffeinated. Organic milk siphon aroma trifecta eu mocha. Beans, turkish as macchiato mazagran medium sweet.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Café au lait, lungo, turkish fair trade sit mocha java. And, java, siphon, extraction caramelization body ut dripper iced. Aged organic saucer dripper body trifecta filter. French press aged strong as, viennese acerbic et coffee cup caffeine java extra.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Bar, cup qui robust steamed café au lait grinder medium cortado galão redeye. Body and et wings, caramelization dark brewed irish grinder plunger pot wings. Sweet steamed, spoon, barista, mocha robust sugar roast latte. Extra, organic, eu kopi-luwak, aroma coffee steamed extraction affogato.</p>\n<!-- /wp:paragraph -->','We Won An Award!','','inherit','closed','closed','','17-revision-v1','','','2020-03-23 10:08:51','2020-03-23 10:08:51','',17,'http://fictional-university.local/17-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2020-03-23 10:38:03','2020-03-23 10:38:03','<!-- wp:paragraph -->\n<p>Cinnamon saucer con panna fair trade irish cultivar aroma. Single shot caramelization, sit et filter crema half and half. Extra, coffee cultivar beans variety black shop qui fair trade. Espresso grinder galão, a barista pumpkin spice turkish irish and iced.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Java medium kopi-luwak affogato single shot, crema as decaffeinated trifecta caffeine. Breve lungo, strong a seasonal irish decaffeinated. Organic milk siphon aroma trifecta eu mocha. Beans, turkish as macchiato mazagran medium sweet.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Café au lait, lungo, turkish fair trade sit mocha java. And, java, siphon, extraction caramelization body ut dripper iced. Aged organic saucer dripper body trifecta filter. French press aged strong as, viennese acerbic et coffee cup caffeine java extra.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Bar, cup qui robust steamed café au lait grinder medium cortado galão redeye. Body and et wings, caramelization dark brewed irish grinder plunger pot wings. Sweet steamed, spoon, barista, mocha robust sugar roast latte. Extra, organic, eu kopi-luwak, aroma coffee steamed extraction affogato.</p>\n<!-- /wp:paragraph -->','This is an example post','','publish','open','open','','this-is-an-example-post','','','2020-03-23 10:38:03','2020-03-23 10:38:03','',0,'http://fictional-university.local/?p=19',0,'post','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2020-03-23 10:38:03','2020-03-23 10:38:03','<!-- wp:paragraph -->\n<p>Cinnamon saucer con panna fair trade irish cultivar aroma. Single shot caramelization, sit et filter crema half and half. Extra, coffee cultivar beans variety black shop qui fair trade. Espresso grinder galão, a barista pumpkin spice turkish irish and iced.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Java medium kopi-luwak affogato single shot, crema as decaffeinated trifecta caffeine. Breve lungo, strong a seasonal irish decaffeinated. Organic milk siphon aroma trifecta eu mocha. Beans, turkish as macchiato mazagran medium sweet.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Café au lait, lungo, turkish fair trade sit mocha java. And, java, siphon, extraction caramelization body ut dripper iced. Aged organic saucer dripper body trifecta filter. French press aged strong as, viennese acerbic et coffee cup caffeine java extra.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Bar, cup qui robust steamed café au lait grinder medium cortado galão redeye. Body and et wings, caramelization dark brewed irish grinder plunger pot wings. Sweet steamed, spoon, barista, mocha robust sugar roast latte. Extra, organic, eu kopi-luwak, aroma coffee steamed extraction affogato.</p>\n<!-- /wp:paragraph -->','This is an example post','','inherit','closed','closed','','19-revision-v1','','','2020-03-23 10:38:03','2020-03-23 10:38:03','',19,'http://fictional-university.local/19-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2020-03-23 12:00:17','2020-03-23 12:00:17','','Testing 123','','inherit','closed','closed','','12-revision-v1','','','2020-03-23 12:00:17','2020-03-23 12:00:17','',12,'http://fictional-university.local/12-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2020-03-23 19:42:05','2020-03-23 19:42:05','<div data-gb-widget=\"passage\" data-passage=\"JAS.4.5\" />','Day 1','','trash','closed','closed','','day-1__trashed','','','2020-03-23 19:55:30','2020-03-23 19:55:30','',0,'http://fictional-university.local/?post_type=event&#038;p=22',0,'event','',0);
INSERT INTO `wp_posts` VALUES (23,1,'2020-03-23 19:55:41','0000-00-00 00:00:00','<span data-mce-type=\"bookmark\" style=\"display: inline-block; width: 0px; overflow: hidden; line-height: 0;\" class=\"mce_SELRES_start\">﻿</span>','Day 2','','draft','closed','closed','','','','','2020-03-23 19:55:41','2020-03-23 19:55:41','',0,'http://fictional-university.local/?post_type=event&#038;p=23',0,'event','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2020-03-23 19:57:11','2020-03-23 19:57:11','<div data-gb-widget=\"passage\" data-passage=\"PSA.119\" />','April 1','Hey everybody, welcome. This is the very first day of the awesome and incredible Bible reading plan. I need you guys to get super excited as we try to embed some Bible verses auto-magically. With the power of technology! Amen!','publish','closed','closed','','day-1','','','2020-03-24 13:54:13','2020-03-24 13:54:13','',0,'http://fictional-university.local/?post_type=bible-plan&#038;p=24',0,'bible-plan','',0);
INSERT INTO `wp_posts` VALUES (25,1,'2020-03-23 20:01:18','2020-03-23 20:01:18','<code><div data-gb-widget=\"passage\" data-passage=\"JOB.27\" /></code>','April 2','','publish','closed','closed','','day-2','','','2020-03-24 13:18:22','2020-03-24 13:18:22','',0,'http://fictional-university.local/?post_type=bible-plan&#038;p=25',0,'bible-plan','',0);
INSERT INTO `wp_posts` VALUES (26,1,'2020-03-24 09:28:14','2020-03-24 09:28:14','<code><div data-gb-widget=\"passage\" data-passage=\"JOB.28\" /></code>','April 3','','publish','closed','closed','','april-3','','','2020-03-24 13:33:29','2020-03-24 13:33:29','',0,'http://fictional-university.local/?post_type=bible-plan&#038;p=26',0,'bible-plan','',0);
INSERT INTO `wp_posts` VALUES (27,1,'2020-03-24 10:42:14','2020-03-24 10:42:14','<!-- wp:paragraph -->\n<p>Cinnamon saucer con panna fair trade irish cultivar aroma. Single shot caramelization, sit et filter crema half and half. Extra, coffee cultivar beans variety black shop qui fair trade. Espresso grinder galão, a barista pumpkin spice turkish irish and iced.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Java medium kopi-luwak affogato single shot, crema as decaffeinated trifecta caffeine. Breve lungo, strong a seasonal irish decaffeinated. Organic milk siphon aroma trifecta eu mocha. Beans, turkish as macchiato mazagran medium sweet.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Café au lait, lungo, turkish fair trade sit mocha java. And, java, siphon, extraction caramelization body ut dripper iced. Aged organic saucer dripper body trifecta filter. French press aged strong as, viennese acerbic et coffee cup caffeine java extra.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Bar, cup qui robust steamed café au lait grinder medium cortado galão redeye. Body and et wings, caramelization dark brewed irish grinder plunger pot wings. Sweet steamed, spoon, barista, mocha robust sugar roast latte. Extra, organic, eu kopi-luwak, aroma coffee steamed extraction affogato.</p>\n<!-- /wp:paragraph -->','We Won An Award!','Our school has won another award this year.','inherit','closed','closed','','17-revision-v1','','','2020-03-24 10:42:14','2020-03-24 10:42:14','',17,'http://fictional-university.local/17-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (28,1,'2020-03-24 10:50:48','2020-03-24 10:50:48','<div data-gb-widget=\"passage\" data-passage=\"2PT.1\" />','April 4','Hey everybody, welcome. This is the very first day of the awesome and incredible Bible reading plan. I need you guys to get super excited as we try to embed some Bible verses auto-magically. With the power of technology! Amen!','publish','closed','closed','','april-4','','','2020-03-24 13:28:52','2020-03-24 13:28:52','',0,'http://fictional-university.local/?post_type=bible-plan&#038;p=28',0,'bible-plan','',0);
INSERT INTO `wp_posts` VALUES (29,1,'2020-03-24 11:02:31','2020-03-24 11:02:31','','Home','','inherit','closed','closed','','12-revision-v1','','','2020-03-24 11:02:31','2020-03-24 11:02:31','',12,'http://fictional-university.local/12-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (30,1,'2020-03-24 12:47:56','2020-03-24 12:47:56','<div data-gb-widget=\"passage\" data-passage=\"3JN.1\" />','April 5','','publish','closed','closed','','april-5','','','2020-03-24 13:33:52','2020-03-24 13:33:52','',0,'http://fictional-university.local/?post_type=bible-plan&#038;p=30',0,'bible-plan','',0);
INSERT INTO `wp_posts` VALUES (31,1,'2020-03-24 12:17:55','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-03-24 12:17:55','0000-00-00 00:00:00','',0,'http://fictional-university.local/?post_type=bible-plan&p=31',0,'bible-plan','',0);
INSERT INTO `wp_posts` VALUES (32,1,'2020-03-24 12:33:15','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-03-24 12:33:15','0000-00-00 00:00:00','',0,'http://fictional-university.local/?post_type=acf-field-group&p=32',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (33,1,'2020-03-24 13:17:54','2020-03-24 13:17:54','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:10:\"bible-plan\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Bible Reading Plan','bible-reading-plan','publish','closed','closed','','group_5e7a0837e8676','','','2020-03-24 13:55:01','2020-03-24 13:55:01','',0,'http://fictional-university.local/?post_type=acf-field-group&#038;p=33',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (34,1,'2020-03-24 13:17:54','2020-03-24 13:17:54','a:8:{s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"m/d/Y\";s:13:\"return_format\";s:5:\"m/d/Y\";s:9:\"first_day\";i:1;}','Bible Reading Plan Date','bible_reading_plan_date','publish','closed','closed','','field_5e7a084530316','','','2020-03-24 13:55:01','2020-03-24 13:55:01','',33,'http://fictional-university.local/?post_type=acf-field&#038;p=34',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (35,1,'2020-03-24 15:16:23','2020-03-24 15:16:23','<div data-gb-widget=\"passage\" data-passage=\"JOB.1\" />','April 6','','publish','closed','closed','','april-6','','','2020-03-24 15:16:23','2020-03-24 15:16:23','',0,'http://fictional-university.local/?post_type=bible-plan&#038;p=35',0,'bible-plan','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (17,2,0);
INSERT INTO `wp_term_relationships` VALUES (19,1,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'category','This is a category for all dem awards.',0,1);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'Awards','awards',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','Matt');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','One of the most dude guys out there.');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','0');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:5:{s:64:\"87ee467ccb9bc3fcd6b1a458f85d5f1b7c2ecb8303c93b7b3f030cd50bc077ee\";a:4:{s:10:\"expiration\";i:1585127182;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:105:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36\";s:5:\"login\";i:1584954382;}s:64:\"699266e79ef34062f0ad6de231fa56d2510fd87ed2737fd5cd6074254db882fb\";a:4:{s:10:\"expiration\";i:1585163346;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:105:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36\";s:5:\"login\";i:1584990546;}s:64:\"6ef44204266a22adf4a98bdc7b11501352ea2c058e3424cf99305b20c6f489f1\";a:4:{s:10:\"expiration\";i:1585213923;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:105:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36\";s:5:\"login\";i:1585041123;}s:64:\"4f6c8805c8bf588354161d1eeedc4811249c5982109d8ea813b4bbb0dc76de74\";a:4:{s:10:\"expiration\";i:1585225952;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:105:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36\";s:5:\"login\";i:1585053152;}s:64:\"68367ded0ddcc58fa455ffd7e173a0fc377aacc35f209341b36f87dd897b967f\";a:4:{s:10:\"expiration\";i:1585225959;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:105:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36\";s:5:\"login\";i:1585053159;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','4');
INSERT INTO `wp_usermeta` VALUES (18,1,'community-events-location','a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}');
INSERT INTO `wp_usermeta` VALUES (19,1,'wp_user-settings','editor=html');
INSERT INTO `wp_usermeta` VALUES (20,1,'wp_user-settings-time','1584993426');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'Matt','$P$BwDZBdWfYLsesS89Ud.gUb3Td6f.oO1','matt','me@mattjones.tech','','2020-03-23 08:56:46','',0,'Matt');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-25  7:32:16
