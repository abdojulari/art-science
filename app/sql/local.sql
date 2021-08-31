-- MySQL dump 10.13  Distrib 8.0.16, for macos10.14 (x86_64)
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
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
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
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2021-08-24 14:06:30','2021-08-24 14:06:30','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','comment',0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=350 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://artsandscience.local','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://artsandscience.local','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','NORR','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','Just another WordPress site','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','dev-email@flywheel.local','yes');
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
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:94:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=2&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:1:{i:0;s:30:\"advanced-custom-fields/acf.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','a:2:{i:0;s:80:\"/Users/oj/Local Sites/artsandscience/app/public/wp-content/themes/arts/style.css\";i:1;s:0:\"\";}','no');
INSERT INTO `wp_options` VALUES (40,'template','arts','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','arts','yes');
INSERT INTO `wp_options` VALUES (42,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (43,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (44,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (45,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (46,'db_version','49752','yes');
INSERT INTO `wp_options` VALUES (47,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (48,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (49,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (50,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (51,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (52,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (53,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (54,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (55,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (56,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (59,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (60,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (61,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (62,'large_size_w','1224','yes');
INSERT INTO `wp_options` VALUES (63,'large_size_h','1224','yes');
INSERT INTO `wp_options` VALUES (64,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (65,'image_default_size','large','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_align','none','yes');
INSERT INTO `wp_options` VALUES (67,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (68,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (69,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (70,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (71,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (72,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (73,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (74,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (75,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (76,'widget_categories','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (77,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (79,'uninstall_plugins','a:0:{}','no');
INSERT INTO `wp_options` VALUES (80,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (81,'page_for_posts','0','yes');
INSERT INTO `wp_options` VALUES (82,'page_on_front','2','yes');
INSERT INTO `wp_options` VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (86,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan','1645365989','yes');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (95,'auto_update_core_dev','enabled','yes');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_minor','enabled','yes');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_major','enabled','yes');
INSERT INTO `wp_options` VALUES (98,'wp_force_deactivated_plugins','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (99,'initial_db_version','49752','yes');
INSERT INTO `wp_options` VALUES (100,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (101,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (102,'widget_block','a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (103,'sidebars_widgets','a:6:{s:19:\"wp_inactive_widgets\";a:0:{}s:19:\"primary_widget_area\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:21:\"secondary_widget_area\";a:0:{}s:17:\"third_widget_area\";a:0:{}s:9:\"sidebar-1\";a:0:{}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (104,'cron','a:7:{i:1630184791;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1630202791;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1630245991;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1630246134;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1630246135;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1630505191;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (105,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (106,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (112,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'nonce_key','KbpL@F/JK*(V{.oD+*@|kYd0vube1YB@$ifhpCjfH]<qXE$^v;<tJ^Ckf5D=b@ 9','no');
INSERT INTO `wp_options` VALUES (115,'nonce_salt','(7<IW7mbj12S {U |YjpEqsufqd58]CWU,nHVcU.q+64BXOar>@=.Bx|Uiy%i[#A','no');
INSERT INTO `wp_options` VALUES (116,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (117,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (118,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (120,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (121,'theme_mods_twentytwentyone','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1629815915;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}','yes');
INSERT INTO `wp_options` VALUES (122,'https_detection_errors','a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}}','yes');
INSERT INTO `wp_options` VALUES (123,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.8.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.8.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.8-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.8-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"5.8\";s:7:\"version\";s:3:\"5.8\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1630161392;s:15:\"version_checked\";s:3:\"5.8\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (128,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1630161392;s:7:\"checked\";a:4:{s:4:\"arts\";s:5:\"3.0.3\";s:14:\"twentynineteen\";s:3:\"2.1\";s:12:\"twentytwenty\";s:3:\"1.8\";s:15:\"twentytwentyone\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"2.1\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.2.1.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.8.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.4.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (129,'_site_transient_timeout_browser_be3419a8b5757aa334d087cf317c2456','1630418935','no');
INSERT INTO `wp_options` VALUES (130,'_site_transient_browser_be3419a8b5757aa334d087cf317c2456','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"92.0.4515.131\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (131,'_site_transient_timeout_php_check_472f71d2a071d463a95f84346288dc89','1630418935','no');
INSERT INTO `wp_options` VALUES (132,'_site_transient_php_check_472f71d2a071d463a95f84346288dc89','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_options` VALUES (141,'can_compress_scripts','1','no');
INSERT INTO `wp_options` VALUES (149,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (150,'_site_transient_timeout_php_check_e0da9a46ec9b74424e3af84a2a13de68','1630419804','no');
INSERT INTO `wp_options` VALUES (151,'_site_transient_php_check_e0da9a46ec9b74424e3af84a2a13de68','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_options` VALUES (154,'current_theme','Arts &amp; Science','yes');
INSERT INTO `wp_options` VALUES (155,'theme_mods_arts','a:6:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:9:\"main-menu\";i:2;s:11:\"footer-menu\";i:3;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1629817464;s:4:\"data\";a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:19:\"primary_widget_area\";a:0:{}s:21:\"secondary_widget_area\";a:0:{}s:17:\"third_widget_area\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}s:11:\"custom_logo\";i:79;s:11:\"header_logo\";s:68:\"http://artsandscience.local/wp-content/uploads/2021/08/logo-norr.png\";}','yes');
INSERT INTO `wp_options` VALUES (156,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (158,'theme_mods_twentynineteen','a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1629817510;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}','yes');
INSERT INTO `wp_options` VALUES (167,'WPLANG','','yes');
INSERT INTO `wp_options` VALUES (168,'new_admin_email','dev-email@flywheel.local','yes');
INSERT INTO `wp_options` VALUES (171,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (172,'recently_activated','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (177,'acf_version','5.9.9','yes');
INSERT INTO `wp_options` VALUES (183,'category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (251,'widget_recent-comments','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (252,'widget_recent-posts','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (255,'site_logo','79','yes');
INSERT INTO `wp_options` VALUES (260,'_transient_health-check-site-status-result','{\"good\":14,\"recommended\":4,\"critical\":0}','yes');
INSERT INTO `wp_options` VALUES (271,'_site_transient_timeout_browser_164ef18bd347e2080439bfc8a27818e8','1630537684','no');
INSERT INTO `wp_options` VALUES (272,'_site_transient_browser_164ef18bd347e2080439bfc8a27818e8','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"92.0.4515.159\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (341,'_site_transient_timeout_theme_roots','1630163192','no');
INSERT INTO `wp_options` VALUES (342,'_site_transient_theme_roots','a:4:{s:4:\"arts\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";}','no');
INSERT INTO `wp_options` VALUES (343,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1630161392;s:8:\"response\";a:1:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"5.10.1\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.10.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";s:6:\"tested\";s:3:\"5.8\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:0:{}s:7:\"checked\";a:1:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.9.9\";}}','no');
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
) ENGINE=InnoDB AUTO_INCREMENT=369 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','page-full.php');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (3,5,'_edit_lock','1630019046:1');
INSERT INTO `wp_postmeta` VALUES (4,7,'_edit_lock','1629818663:1');
INSERT INTO `wp_postmeta` VALUES (5,9,'_edit_lock','1629818533:1');
INSERT INTO `wp_postmeta` VALUES (6,11,'_edit_lock','1629818555:1');
INSERT INTO `wp_postmeta` VALUES (7,13,'_edit_lock','1629818579:1');
INSERT INTO `wp_postmeta` VALUES (8,15,'_edit_lock','1629818637:1');
INSERT INTO `wp_postmeta` VALUES (9,17,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (10,17,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (11,17,'_menu_item_object_id','5');
INSERT INTO `wp_postmeta` VALUES (12,17,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (13,17,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (14,17,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (15,17,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (16,17,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (18,18,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (19,18,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (20,18,'_menu_item_object_id','7');
INSERT INTO `wp_postmeta` VALUES (21,18,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (22,18,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (23,18,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (24,18,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (25,18,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (27,19,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (28,19,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (29,19,'_menu_item_object_id','15');
INSERT INTO `wp_postmeta` VALUES (30,19,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (31,19,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (32,19,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (33,19,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (34,19,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (36,20,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (37,20,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (38,20,'_menu_item_object_id','13');
INSERT INTO `wp_postmeta` VALUES (39,20,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (40,20,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (41,20,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (42,20,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (43,20,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (45,21,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (46,21,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (47,21,'_menu_item_object_id','11');
INSERT INTO `wp_postmeta` VALUES (48,21,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (49,21,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (50,21,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (51,21,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (52,21,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (54,22,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (55,22,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (56,22,'_menu_item_object_id','9');
INSERT INTO `wp_postmeta` VALUES (57,22,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (58,22,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (59,22,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (60,22,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (61,22,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (63,23,'_wp_attached_file','2021/08/hero.png');
INSERT INTO `wp_postmeta` VALUES (64,23,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1360;s:6:\"height\";i:765;s:4:\"file\";s:16:\"2021/08/hero.png\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"hero-300x169.png\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"hero-1024x576.png\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"hero-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"hero-768x432.png\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (65,24,'_wp_attached_file','2021/08/large-image-1.png');
INSERT INTO `wp_postmeta` VALUES (66,24,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:867;s:6:\"height\";i:533;s:4:\"file\";s:25:\"2021/08/large-image-1.png\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"large-image-1-300x184.png\";s:5:\"width\";i:300;s:6:\"height\";i:184;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"large-image-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"large-image-1-768x472.png\";s:5:\"width\";i:768;s:6:\"height\";i:472;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (67,25,'_wp_attached_file','2021/08/large-image-2.png');
INSERT INTO `wp_postmeta` VALUES (68,25,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:869;s:6:\"height\";i:533;s:4:\"file\";s:25:\"2021/08/large-image-2.png\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"large-image-2-300x184.png\";s:5:\"width\";i:300;s:6:\"height\";i:184;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"large-image-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"large-image-2-768x471.png\";s:5:\"width\";i:768;s:6:\"height\";i:471;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (69,26,'_wp_attached_file','2021/08/post-1.png');
INSERT INTO `wp_postmeta` VALUES (70,26,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:301;s:6:\"height\";i:210;s:4:\"file\";s:18:\"2021/08/post-1.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"post-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (71,27,'_wp_attached_file','2021/08/post-2.png');
INSERT INTO `wp_postmeta` VALUES (72,27,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:301;s:6:\"height\";i:210;s:4:\"file\";s:18:\"2021/08/post-2.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"post-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (73,28,'_wp_attached_file','2021/08/post-3.png');
INSERT INTO `wp_postmeta` VALUES (74,28,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:301;s:6:\"height\";i:210;s:4:\"file\";s:18:\"2021/08/post-3.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"post-3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (75,29,'_wp_attached_file','2021/08/post-4.png');
INSERT INTO `wp_postmeta` VALUES (76,29,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:300;s:6:\"height\";i:210;s:4:\"file\";s:18:\"2021/08/post-4.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"post-4-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (77,30,'_wp_attached_file','2021/08/sub-footer.png');
INSERT INTO `wp_postmeta` VALUES (78,30,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1361;s:6:\"height\";i:379;s:4:\"file\";s:22:\"2021/08/sub-footer.png\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"sub-footer-300x84.png\";s:5:\"width\";i:300;s:6:\"height\";i:84;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"sub-footer-1024x285.png\";s:5:\"width\";i:1024;s:6:\"height\";i:285;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"sub-footer-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"sub-footer-768x214.png\";s:5:\"width\";i:768;s:6:\"height\";i:214;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (79,2,'_edit_lock','1629878833:1');
INSERT INTO `wp_postmeta` VALUES (80,1,'_edit_lock','1629829007:1');
INSERT INTO `wp_postmeta` VALUES (81,32,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (82,32,'_edit_lock','1629985463:1');
INSERT INTO `wp_postmeta` VALUES (83,38,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (84,38,'_edit_lock','1629878868:1');
INSERT INTO `wp_postmeta` VALUES (85,41,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (86,41,'_edit_lock','1629880510:1');
INSERT INTO `wp_postmeta` VALUES (87,2,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (88,2,'hero_image','23');
INSERT INTO `wp_postmeta` VALUES (89,2,'_hero_image','field_612528795097d');
INSERT INTO `wp_postmeta` VALUES (90,2,'hero_text','Integrated Thinking. Inspired Design');
INSERT INTO `wp_postmeta` VALUES (91,2,'_hero_text','field_612529b991851');
INSERT INTO `wp_postmeta` VALUES (92,2,'hero_links','https://www.something.com');
INSERT INTO `wp_postmeta` VALUES (93,2,'_hero_links','field_612529c791852');
INSERT INTO `wp_postmeta` VALUES (94,2,'alternating_calls_to_action','24');
INSERT INTO `wp_postmeta` VALUES (95,2,'_alternating_calls_to_action','field_61252a3ad786d');
INSERT INTO `wp_postmeta` VALUES (96,2,'calls_to_action_text','Achieve your design goals with our multidisciplinary solutions');
INSERT INTO `wp_postmeta` VALUES (97,2,'_calls_to_action_text','field_61252a5fd786e');
INSERT INTO `wp_postmeta` VALUES (98,2,'footer_calls_to_action','30');
INSERT INTO `wp_postmeta` VALUES (99,2,'_footer_calls_to_action','field_61252a9c652dc');
INSERT INTO `wp_postmeta` VALUES (100,2,'contacts','Connect with NORR to explore the world of design possibilities ');
INSERT INTO `wp_postmeta` VALUES (101,2,'_contacts','field_61252b9a652dd');
INSERT INTO `wp_postmeta` VALUES (102,2,'join_us','Work at NORR to realize a rewarding career of design opportunities');
INSERT INTO `wp_postmeta` VALUES (103,2,'_join_us','field_61252bb8652de');
INSERT INTO `wp_postmeta` VALUES (104,46,'hero_image','23');
INSERT INTO `wp_postmeta` VALUES (105,46,'_hero_image','field_612528795097d');
INSERT INTO `wp_postmeta` VALUES (106,46,'hero_text','Integrated Thinking. Inspired Design');
INSERT INTO `wp_postmeta` VALUES (107,46,'_hero_text','field_612529b991851');
INSERT INTO `wp_postmeta` VALUES (108,46,'hero_links','https://www.something.com');
INSERT INTO `wp_postmeta` VALUES (109,46,'_hero_links','field_612529c791852');
INSERT INTO `wp_postmeta` VALUES (110,46,'alternating_calls_to_action','');
INSERT INTO `wp_postmeta` VALUES (111,46,'_alternating_calls_to_action','field_61252a3ad786d');
INSERT INTO `wp_postmeta` VALUES (112,46,'calls_to_action_text','');
INSERT INTO `wp_postmeta` VALUES (113,46,'_calls_to_action_text','field_61252a5fd786e');
INSERT INTO `wp_postmeta` VALUES (114,46,'footer_calls_to_action','');
INSERT INTO `wp_postmeta` VALUES (115,46,'_footer_calls_to_action','field_61252a9c652dc');
INSERT INTO `wp_postmeta` VALUES (116,46,'contacts','');
INSERT INTO `wp_postmeta` VALUES (117,46,'_contacts','field_61252b9a652dd');
INSERT INTO `wp_postmeta` VALUES (118,46,'join_us','');
INSERT INTO `wp_postmeta` VALUES (119,46,'_join_us','field_61252bb8652de');
INSERT INTO `wp_postmeta` VALUES (120,48,'hero_image','23');
INSERT INTO `wp_postmeta` VALUES (121,48,'_hero_image','field_612528795097d');
INSERT INTO `wp_postmeta` VALUES (122,48,'hero_text','Integrated Thinking. Inspired Design');
INSERT INTO `wp_postmeta` VALUES (123,48,'_hero_text','field_612529b991851');
INSERT INTO `wp_postmeta` VALUES (124,48,'hero_links','https://www.something.com');
INSERT INTO `wp_postmeta` VALUES (125,48,'_hero_links','field_612529c791852');
INSERT INTO `wp_postmeta` VALUES (126,48,'alternating_calls_to_action','');
INSERT INTO `wp_postmeta` VALUES (127,48,'_alternating_calls_to_action','field_61252a3ad786d');
INSERT INTO `wp_postmeta` VALUES (128,48,'calls_to_action_text','');
INSERT INTO `wp_postmeta` VALUES (129,48,'_calls_to_action_text','field_61252a5fd786e');
INSERT INTO `wp_postmeta` VALUES (130,48,'footer_calls_to_action','');
INSERT INTO `wp_postmeta` VALUES (131,48,'_footer_calls_to_action','field_61252a9c652dc');
INSERT INTO `wp_postmeta` VALUES (132,48,'contacts','');
INSERT INTO `wp_postmeta` VALUES (133,48,'_contacts','field_61252b9a652dd');
INSERT INTO `wp_postmeta` VALUES (134,48,'join_us','');
INSERT INTO `wp_postmeta` VALUES (135,48,'_join_us','field_61252bb8652de');
INSERT INTO `wp_postmeta` VALUES (136,49,'hero_image','23');
INSERT INTO `wp_postmeta` VALUES (137,49,'_hero_image','field_612528795097d');
INSERT INTO `wp_postmeta` VALUES (138,49,'hero_text','Integrated Thinking. Inspired Design');
INSERT INTO `wp_postmeta` VALUES (139,49,'_hero_text','field_612529b991851');
INSERT INTO `wp_postmeta` VALUES (140,49,'hero_links','https://www.something.com');
INSERT INTO `wp_postmeta` VALUES (141,49,'_hero_links','field_612529c791852');
INSERT INTO `wp_postmeta` VALUES (142,49,'alternating_calls_to_action','');
INSERT INTO `wp_postmeta` VALUES (143,49,'_alternating_calls_to_action','field_61252a3ad786d');
INSERT INTO `wp_postmeta` VALUES (144,49,'calls_to_action_text','');
INSERT INTO `wp_postmeta` VALUES (145,49,'_calls_to_action_text','field_61252a5fd786e');
INSERT INTO `wp_postmeta` VALUES (146,49,'footer_calls_to_action','');
INSERT INTO `wp_postmeta` VALUES (147,49,'_footer_calls_to_action','field_61252a9c652dc');
INSERT INTO `wp_postmeta` VALUES (148,49,'contacts','');
INSERT INTO `wp_postmeta` VALUES (149,49,'_contacts','field_61252b9a652dd');
INSERT INTO `wp_postmeta` VALUES (150,49,'join_us','');
INSERT INTO `wp_postmeta` VALUES (151,49,'_join_us','field_61252bb8652de');
INSERT INTO `wp_postmeta` VALUES (152,50,'hero_image','23');
INSERT INTO `wp_postmeta` VALUES (153,50,'_hero_image','field_612528795097d');
INSERT INTO `wp_postmeta` VALUES (154,50,'hero_text','Integrated Thinking. Inspired Design');
INSERT INTO `wp_postmeta` VALUES (155,50,'_hero_text','field_612529b991851');
INSERT INTO `wp_postmeta` VALUES (156,50,'hero_links','https://www.something.com');
INSERT INTO `wp_postmeta` VALUES (157,50,'_hero_links','field_612529c791852');
INSERT INTO `wp_postmeta` VALUES (158,50,'alternating_calls_to_action','');
INSERT INTO `wp_postmeta` VALUES (159,50,'_alternating_calls_to_action','field_61252a3ad786d');
INSERT INTO `wp_postmeta` VALUES (160,50,'calls_to_action_text','');
INSERT INTO `wp_postmeta` VALUES (161,50,'_calls_to_action_text','field_61252a5fd786e');
INSERT INTO `wp_postmeta` VALUES (162,50,'footer_calls_to_action','');
INSERT INTO `wp_postmeta` VALUES (163,50,'_footer_calls_to_action','field_61252a9c652dc');
INSERT INTO `wp_postmeta` VALUES (164,50,'contacts','');
INSERT INTO `wp_postmeta` VALUES (165,50,'_contacts','field_61252b9a652dd');
INSERT INTO `wp_postmeta` VALUES (166,50,'join_us','');
INSERT INTO `wp_postmeta` VALUES (167,50,'_join_us','field_61252bb8652de');
INSERT INTO `wp_postmeta` VALUES (168,51,'_edit_lock','1629989859:1');
INSERT INTO `wp_postmeta` VALUES (169,26,'_wp_attachment_image_alt','designing a connected shopping experience');
INSERT INTO `wp_postmeta` VALUES (172,51,'_thumbnail_id','26');
INSERT INTO `wp_postmeta` VALUES (173,53,'_edit_lock','1629985776:1');
INSERT INTO `wp_postmeta` VALUES (176,53,'_thumbnail_id','27');
INSERT INTO `wp_postmeta` VALUES (177,55,'_edit_lock','1629985740:1');
INSERT INTO `wp_postmeta` VALUES (180,55,'_thumbnail_id','28');
INSERT INTO `wp_postmeta` VALUES (181,57,'_edit_lock','1629985790:1');
INSERT INTO `wp_postmeta` VALUES (184,57,'_thumbnail_id','29');
INSERT INTO `wp_postmeta` VALUES (185,59,'hero_image','23');
INSERT INTO `wp_postmeta` VALUES (186,59,'_hero_image','field_612528795097d');
INSERT INTO `wp_postmeta` VALUES (187,59,'hero_text','Integrated Thinking. Inspired Design');
INSERT INTO `wp_postmeta` VALUES (188,59,'_hero_text','field_612529b991851');
INSERT INTO `wp_postmeta` VALUES (189,59,'hero_links','https://www.something.com');
INSERT INTO `wp_postmeta` VALUES (190,59,'_hero_links','field_612529c791852');
INSERT INTO `wp_postmeta` VALUES (191,59,'alternating_calls_to_action','24');
INSERT INTO `wp_postmeta` VALUES (192,59,'_alternating_calls_to_action','field_61252a3ad786d');
INSERT INTO `wp_postmeta` VALUES (193,59,'calls_to_action_text','Achieve your design goals with our multidisciplinary solutions');
INSERT INTO `wp_postmeta` VALUES (194,59,'_calls_to_action_text','field_61252a5fd786e');
INSERT INTO `wp_postmeta` VALUES (195,59,'footer_calls_to_action','');
INSERT INTO `wp_postmeta` VALUES (196,59,'_footer_calls_to_action','field_61252a9c652dc');
INSERT INTO `wp_postmeta` VALUES (197,59,'contacts','');
INSERT INTO `wp_postmeta` VALUES (198,59,'_contacts','field_61252b9a652dd');
INSERT INTO `wp_postmeta` VALUES (199,59,'join_us','');
INSERT INTO `wp_postmeta` VALUES (200,59,'_join_us','field_61252bb8652de');
INSERT INTO `wp_postmeta` VALUES (201,60,'hero_image','23');
INSERT INTO `wp_postmeta` VALUES (202,60,'_hero_image','field_612528795097d');
INSERT INTO `wp_postmeta` VALUES (203,60,'hero_text','Integrated Thinking. Inspired Design');
INSERT INTO `wp_postmeta` VALUES (204,60,'_hero_text','field_612529b991851');
INSERT INTO `wp_postmeta` VALUES (205,60,'hero_links','https://www.something.com');
INSERT INTO `wp_postmeta` VALUES (206,60,'_hero_links','field_612529c791852');
INSERT INTO `wp_postmeta` VALUES (207,60,'alternating_calls_to_action','24');
INSERT INTO `wp_postmeta` VALUES (208,60,'_alternating_calls_to_action','field_61252a3ad786d');
INSERT INTO `wp_postmeta` VALUES (209,60,'calls_to_action_text','Achieve your design goals with our multidisciplinary solutions');
INSERT INTO `wp_postmeta` VALUES (210,60,'_calls_to_action_text','field_61252a5fd786e');
INSERT INTO `wp_postmeta` VALUES (211,60,'footer_calls_to_action','30');
INSERT INTO `wp_postmeta` VALUES (212,60,'_footer_calls_to_action','field_61252a9c652dc');
INSERT INTO `wp_postmeta` VALUES (213,60,'contacts','Connect with NORR to explore the world of design possibilities ');
INSERT INTO `wp_postmeta` VALUES (214,60,'_contacts','field_61252b9a652dd');
INSERT INTO `wp_postmeta` VALUES (215,60,'join_us','Work at NORR to realize a rewarding career of design opportunities');
INSERT INTO `wp_postmeta` VALUES (216,60,'_join_us','field_61252bb8652de');
INSERT INTO `wp_postmeta` VALUES (217,61,'hero_image','23');
INSERT INTO `wp_postmeta` VALUES (218,61,'_hero_image','field_612528795097d');
INSERT INTO `wp_postmeta` VALUES (219,61,'hero_text','Integrated Thinking. Inspired Design');
INSERT INTO `wp_postmeta` VALUES (220,61,'_hero_text','field_612529b991851');
INSERT INTO `wp_postmeta` VALUES (221,61,'hero_links','https://www.something.com');
INSERT INTO `wp_postmeta` VALUES (222,61,'_hero_links','field_612529c791852');
INSERT INTO `wp_postmeta` VALUES (223,61,'alternating_calls_to_action','24');
INSERT INTO `wp_postmeta` VALUES (224,61,'_alternating_calls_to_action','field_61252a3ad786d');
INSERT INTO `wp_postmeta` VALUES (225,61,'calls_to_action_text','Achieve your design goals with our multidisciplinary solutions');
INSERT INTO `wp_postmeta` VALUES (226,61,'_calls_to_action_text','field_61252a5fd786e');
INSERT INTO `wp_postmeta` VALUES (227,61,'footer_calls_to_action','30');
INSERT INTO `wp_postmeta` VALUES (228,61,'_footer_calls_to_action','field_61252a9c652dc');
INSERT INTO `wp_postmeta` VALUES (229,61,'contacts','Connect with NORR to explore the world of design possibilities ');
INSERT INTO `wp_postmeta` VALUES (230,61,'_contacts','field_61252b9a652dd');
INSERT INTO `wp_postmeta` VALUES (231,61,'join_us','Work at NORR to realize a rewarding career of design opportunities');
INSERT INTO `wp_postmeta` VALUES (232,61,'_join_us','field_61252bb8652de');
INSERT INTO `wp_postmeta` VALUES (233,2,'who_we_are','Who We are');
INSERT INTO `wp_postmeta` VALUES (234,2,'_who_we_are','field_6125a52c2a35c');
INSERT INTO `wp_postmeta` VALUES (235,2,'sustainable_design','Sustainable Design');
INSERT INTO `wp_postmeta` VALUES (236,2,'_sustainable_design','field_6125a55b2a35d');
INSERT INTO `wp_postmeta` VALUES (237,2,'our_portfolio','Our Portfolios');
INSERT INTO `wp_postmeta` VALUES (238,2,'_our_portfolio','field_6125a57f2a35e');
INSERT INTO `wp_postmeta` VALUES (239,2,'action_section_image','25');
INSERT INTO `wp_postmeta` VALUES (240,2,'_action_section_image','field_6125a69444f5c');
INSERT INTO `wp_postmeta` VALUES (241,2,'action_section_text','Engage in our corporate social responsibility journey to strengthen our communities');
INSERT INTO `wp_postmeta` VALUES (242,2,'_action_section_text','field_6125a6ce44f5d');
INSERT INTO `wp_postmeta` VALUES (243,67,'hero_image','23');
INSERT INTO `wp_postmeta` VALUES (244,67,'_hero_image','field_612528795097d');
INSERT INTO `wp_postmeta` VALUES (245,67,'hero_text','Integrated Thinking. Inspired Design');
INSERT INTO `wp_postmeta` VALUES (246,67,'_hero_text','field_612529b991851');
INSERT INTO `wp_postmeta` VALUES (247,67,'hero_links','https://www.something.com');
INSERT INTO `wp_postmeta` VALUES (248,67,'_hero_links','field_612529c791852');
INSERT INTO `wp_postmeta` VALUES (249,67,'alternating_calls_to_action','24');
INSERT INTO `wp_postmeta` VALUES (250,67,'_alternating_calls_to_action','field_61252a3ad786d');
INSERT INTO `wp_postmeta` VALUES (251,67,'calls_to_action_text','Achieve your design goals with our multidisciplinary solutions');
INSERT INTO `wp_postmeta` VALUES (252,67,'_calls_to_action_text','field_61252a5fd786e');
INSERT INTO `wp_postmeta` VALUES (253,67,'footer_calls_to_action','30');
INSERT INTO `wp_postmeta` VALUES (254,67,'_footer_calls_to_action','field_61252a9c652dc');
INSERT INTO `wp_postmeta` VALUES (255,67,'contacts','Connect with NORR to explore the world of design possibilities ');
INSERT INTO `wp_postmeta` VALUES (256,67,'_contacts','field_61252b9a652dd');
INSERT INTO `wp_postmeta` VALUES (257,67,'join_us','Work at NORR to realize a rewarding career of design opportunities');
INSERT INTO `wp_postmeta` VALUES (258,67,'_join_us','field_61252bb8652de');
INSERT INTO `wp_postmeta` VALUES (259,67,'who_we_are','Who We are');
INSERT INTO `wp_postmeta` VALUES (260,67,'_who_we_are','field_6125a52c2a35c');
INSERT INTO `wp_postmeta` VALUES (261,67,'sustainable_design','Sustainable Design');
INSERT INTO `wp_postmeta` VALUES (262,67,'_sustainable_design','field_6125a55b2a35d');
INSERT INTO `wp_postmeta` VALUES (263,67,'our_portfolio','Our Portfolios');
INSERT INTO `wp_postmeta` VALUES (264,67,'_our_portfolio','field_6125a57f2a35e');
INSERT INTO `wp_postmeta` VALUES (265,67,'action_section_image','25');
INSERT INTO `wp_postmeta` VALUES (266,67,'_action_section_image','field_6125a69444f5c');
INSERT INTO `wp_postmeta` VALUES (267,67,'action_section_text','Engage in our corporate social responsibility journey to strengthen our communities');
INSERT INTO `wp_postmeta` VALUES (268,67,'_action_section_text','field_6125a6ce44f5d');
INSERT INTO `wp_postmeta` VALUES (269,68,'hero_image','23');
INSERT INTO `wp_postmeta` VALUES (270,68,'_hero_image','field_612528795097d');
INSERT INTO `wp_postmeta` VALUES (271,68,'hero_text','Integrated Thinking. Inspired Design');
INSERT INTO `wp_postmeta` VALUES (272,68,'_hero_text','field_612529b991851');
INSERT INTO `wp_postmeta` VALUES (273,68,'hero_links','https://www.something.com');
INSERT INTO `wp_postmeta` VALUES (274,68,'_hero_links','field_612529c791852');
INSERT INTO `wp_postmeta` VALUES (275,68,'alternating_calls_to_action','24');
INSERT INTO `wp_postmeta` VALUES (276,68,'_alternating_calls_to_action','field_61252a3ad786d');
INSERT INTO `wp_postmeta` VALUES (277,68,'calls_to_action_text','Achieve your design goals with our multidisciplinary solutions');
INSERT INTO `wp_postmeta` VALUES (278,68,'_calls_to_action_text','field_61252a5fd786e');
INSERT INTO `wp_postmeta` VALUES (279,68,'footer_calls_to_action','30');
INSERT INTO `wp_postmeta` VALUES (280,68,'_footer_calls_to_action','field_61252a9c652dc');
INSERT INTO `wp_postmeta` VALUES (281,68,'contacts','Connect with NORR to explore the world of design possibilities ');
INSERT INTO `wp_postmeta` VALUES (282,68,'_contacts','field_61252b9a652dd');
INSERT INTO `wp_postmeta` VALUES (283,68,'join_us','Work at NORR to realize a rewarding career of design opportunities');
INSERT INTO `wp_postmeta` VALUES (284,68,'_join_us','field_61252bb8652de');
INSERT INTO `wp_postmeta` VALUES (285,68,'who_we_are','Who We are');
INSERT INTO `wp_postmeta` VALUES (286,68,'_who_we_are','field_6125a52c2a35c');
INSERT INTO `wp_postmeta` VALUES (287,68,'sustainable_design','Sustainable Design');
INSERT INTO `wp_postmeta` VALUES (288,68,'_sustainable_design','field_6125a55b2a35d');
INSERT INTO `wp_postmeta` VALUES (289,68,'our_portfolio','Our Portfolios');
INSERT INTO `wp_postmeta` VALUES (290,68,'_our_portfolio','field_6125a57f2a35e');
INSERT INTO `wp_postmeta` VALUES (291,68,'action_section_image','25');
INSERT INTO `wp_postmeta` VALUES (292,68,'_action_section_image','field_6125a69444f5c');
INSERT INTO `wp_postmeta` VALUES (293,68,'action_section_text','Engage in our corporate social responsibility journey to strengthen our communities');
INSERT INTO `wp_postmeta` VALUES (294,68,'_action_section_text','field_6125a6ce44f5d');
INSERT INTO `wp_postmeta` VALUES (295,69,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (296,69,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (297,69,'_menu_item_object_id','69');
INSERT INTO `wp_postmeta` VALUES (298,69,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (299,69,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (300,69,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (301,69,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (302,69,'_menu_item_url','#');
INSERT INTO `wp_postmeta` VALUES (304,70,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (305,70,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (306,70,'_menu_item_object_id','70');
INSERT INTO `wp_postmeta` VALUES (307,70,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (308,70,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (309,70,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (310,70,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (311,70,'_menu_item_url','#');
INSERT INTO `wp_postmeta` VALUES (313,71,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (314,71,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (315,71,'_menu_item_object_id','71');
INSERT INTO `wp_postmeta` VALUES (316,71,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (317,71,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (318,71,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (319,71,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (320,71,'_menu_item_url','#');
INSERT INTO `wp_postmeta` VALUES (322,72,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (323,72,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (324,72,'_menu_item_object_id','15');
INSERT INTO `wp_postmeta` VALUES (325,72,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (326,72,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (327,72,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (328,72,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (329,72,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (331,73,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (332,73,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (333,73,'_menu_item_object_id','73');
INSERT INTO `wp_postmeta` VALUES (334,73,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (335,73,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (336,73,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (337,73,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (338,73,'_menu_item_url','#');
INSERT INTO `wp_postmeta` VALUES (340,74,'_wp_attached_file','2021/08/icon-facebook.png');
INSERT INTO `wp_postmeta` VALUES (341,74,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:29;s:6:\"height\";i:28;s:4:\"file\";s:25:\"2021/08/icon-facebook.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (342,75,'_wp_attached_file','2021/08/icon-instagram.png');
INSERT INTO `wp_postmeta` VALUES (343,75,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:29;s:6:\"height\";i:28;s:4:\"file\";s:26:\"2021/08/icon-instagram.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (344,76,'_wp_attached_file','2021/08/icon-linkedin.png');
INSERT INTO `wp_postmeta` VALUES (345,76,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:28;s:6:\"height\";i:28;s:4:\"file\";s:25:\"2021/08/icon-linkedin.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (346,77,'_wp_attached_file','2021/08/icon-twitter.png');
INSERT INTO `wp_postmeta` VALUES (347,77,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:29;s:6:\"height\";i:28;s:4:\"file\";s:24:\"2021/08/icon-twitter.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (348,78,'_wp_attached_file','2021/08/icon-youtube.png');
INSERT INTO `wp_postmeta` VALUES (349,78,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:29;s:6:\"height\";i:29;s:4:\"file\";s:24:\"2021/08/icon-youtube.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (350,79,'_wp_attached_file','2021/08/logo-norr.png');
INSERT INTO `wp_postmeta` VALUES (351,79,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:190;s:6:\"height\";i:45;s:4:\"file\";s:21:\"2021/08/logo-norr.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"logo-norr-150x45.png\";s:5:\"width\";i:150;s:6:\"height\";i:45;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (352,80,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (353,80,'_wp_trash_meta_time','1629896402');
INSERT INTO `wp_postmeta` VALUES (354,81,'_edit_lock','1629896816:1');
INSERT INTO `wp_postmeta` VALUES (355,81,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (356,81,'_wp_trash_meta_time','1629896827');
INSERT INTO `wp_postmeta` VALUES (359,57,'_wp_old_date','2021-08-24');
INSERT INTO `wp_postmeta` VALUES (362,55,'_wp_old_date','2021-08-24');
INSERT INTO `wp_postmeta` VALUES (365,53,'_wp_old_date','2021-08-24');
INSERT INTO `wp_postmeta` VALUES (368,51,'_wp_old_date','2021-08-24');
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
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2021-08-24 14:06:30','2021-08-24 14:06:30','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2021-08-24 14:06:30','2021-08-24 14:06:30','',0,'http://artsandscience.local/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2021-08-24 14:06:30','2021-08-24 14:06:30','','Sample Page','','publish','closed','open','','sample-page','','','2021-08-25 08:07:13','2021-08-25 08:07:13','',0,'http://artsandscience.local/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2021-08-24 14:06:30','2021-08-24 14:06:30','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://artsandscience.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->','Privacy Policy','','draft','closed','open','','privacy-policy','','','2021-08-24 14:06:30','2021-08-24 14:06:30','',0,'http://artsandscience.local/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (4,1,'2021-08-24 14:08:55','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2021-08-24 14:08:55','0000-00-00 00:00:00','',0,'http://artsandscience.local/?p=4',0,'post','',0);
INSERT INTO `wp_posts` VALUES (5,1,'2021-08-24 15:22:55','2021-08-24 15:22:55','<!-- wp:paragraph -->\n<p>Something about services</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>What is Lorem Ipsum?</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->','Services','','publish','closed','closed','','services','','','2021-08-26 14:58:43','2021-08-26 14:58:43','',0,'http://artsandscience.local/?page_id=5',0,'page','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2021-08-24 15:22:55','2021-08-24 15:22:55','<!-- wp:paragraph -->\n<p>Something about services</p>\n<!-- /wp:paragraph -->','Services','','inherit','closed','closed','','5-revision-v1','','','2021-08-24 15:22:55','2021-08-24 15:22:55','',5,'http://artsandscience.local/?p=6',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (7,1,'2021-08-24 15:23:42','2021-08-24 15:23:42','<!-- wp:paragraph -->\n<p>Portfolio</p>\n<!-- /wp:paragraph -->','Portfolio','','publish','closed','closed','','portfolio','','','2021-08-24 15:23:42','2021-08-24 15:23:42','',0,'http://artsandscience.local/?page_id=7',0,'page','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2021-08-24 15:23:42','2021-08-24 15:23:42','<!-- wp:paragraph -->\n<p>Portfolio</p>\n<!-- /wp:paragraph -->','Portfolio','','inherit','closed','closed','','7-revision-v1','','','2021-08-24 15:23:42','2021-08-24 15:23:42','',7,'http://artsandscience.local/?p=8',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2021-08-24 15:24:35','2021-08-24 15:24:35','','About','','publish','closed','closed','','about','','','2021-08-24 15:24:35','2021-08-24 15:24:35','',0,'http://artsandscience.local/?page_id=9',0,'page','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2021-08-24 15:24:35','2021-08-24 15:24:35','','About','','inherit','closed','closed','','9-revision-v1','','','2021-08-24 15:24:35','2021-08-24 15:24:35','',9,'http://artsandscience.local/?p=10',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2021-08-24 15:24:57','2021-08-24 15:24:57','','Spotlight','','publish','closed','closed','','spotlight','','','2021-08-24 15:24:57','2021-08-24 15:24:57','',0,'http://artsandscience.local/?page_id=11',0,'page','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2021-08-24 15:24:57','2021-08-24 15:24:57','','Spotlight','','inherit','closed','closed','','11-revision-v1','','','2021-08-24 15:24:57','2021-08-24 15:24:57','',11,'http://artsandscience.local/?p=12',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2021-08-24 15:25:14','2021-08-24 15:25:14','','Careers','','publish','closed','closed','','careers','','','2021-08-24 15:25:14','2021-08-24 15:25:14','',0,'http://artsandscience.local/?page_id=13',0,'page','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2021-08-24 15:25:14','2021-08-24 15:25:14','','Careers','','inherit','closed','closed','','13-revision-v1','','','2021-08-24 15:25:14','2021-08-24 15:25:14','',13,'http://artsandscience.local/?p=14',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2021-08-24 15:25:39','2021-08-24 15:25:39','','Contact','','publish','closed','closed','','contact','','','2021-08-24 15:25:39','2021-08-24 15:25:39','',0,'http://artsandscience.local/?page_id=15',0,'page','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2021-08-24 15:25:39','2021-08-24 15:25:39','','Contact','','inherit','closed','closed','','15-revision-v1','','','2021-08-24 15:25:39','2021-08-24 15:25:39','',15,'http://artsandscience.local/?p=16',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (17,1,'2021-08-24 15:29:18','2021-08-24 15:29:18',' ','','','publish','closed','closed','','17','','','2021-08-24 15:29:18','2021-08-24 15:29:18','',0,'http://artsandscience.local/?p=17',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2021-08-24 15:29:18','2021-08-24 15:29:18',' ','','','publish','closed','closed','','18','','','2021-08-24 15:29:18','2021-08-24 15:29:18','',0,'http://artsandscience.local/?p=18',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2021-08-24 15:29:18','2021-08-24 15:29:18',' ','','','publish','closed','closed','','19','','','2021-08-24 15:29:18','2021-08-24 15:29:18','',0,'http://artsandscience.local/?p=19',6,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2021-08-24 15:29:18','2021-08-24 15:29:18',' ','','','publish','closed','closed','','20','','','2021-08-24 15:29:18','2021-08-24 15:29:18','',0,'http://artsandscience.local/?p=20',5,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2021-08-24 15:29:18','2021-08-24 15:29:18',' ','','','publish','closed','closed','','21','','','2021-08-24 15:29:18','2021-08-24 15:29:18','',0,'http://artsandscience.local/?p=21',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2021-08-24 15:29:18','2021-08-24 15:29:18',' ','','','publish','closed','closed','','22','','','2021-08-24 15:29:18','2021-08-24 15:29:18','',0,'http://artsandscience.local/?p=22',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (23,1,'2021-08-24 15:36:34','2021-08-24 15:36:34','','hero','','inherit','open','closed','','hero','','','2021-08-24 17:54:47','2021-08-24 17:54:47','',2,'http://artsandscience.local/wp-content/uploads/2021/08/hero.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (24,1,'2021-08-24 15:36:34','2021-08-24 15:36:34','','large-image-1','','inherit','open','closed','','large-image-1','','','2021-08-25 01:56:53','2021-08-25 01:56:53','',2,'http://artsandscience.local/wp-content/uploads/2021/08/large-image-1.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (25,1,'2021-08-24 15:36:35','2021-08-24 15:36:35','','large-image-2','','inherit','open','closed','','large-image-2','','','2021-08-25 02:16:31','2021-08-25 02:16:31','',2,'http://artsandscience.local/wp-content/uploads/2021/08/large-image-2.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (26,1,'2021-08-24 15:36:35','2021-08-24 15:36:35','','post-1','','inherit','open','closed','','post-1','','','2021-08-24 22:03:35','2021-08-24 22:03:35','',0,'http://artsandscience.local/wp-content/uploads/2021/08/post-1.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (27,1,'2021-08-24 15:36:35','2021-08-24 15:36:35','','post-2','','inherit','open','closed','','post-2','','','2021-08-24 15:36:35','2021-08-24 15:36:35','',0,'http://artsandscience.local/wp-content/uploads/2021/08/post-2.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (28,1,'2021-08-24 15:36:35','2021-08-24 15:36:35','','post-3','','inherit','open','closed','','post-3','','','2021-08-24 15:36:35','2021-08-24 15:36:35','',0,'http://artsandscience.local/wp-content/uploads/2021/08/post-3.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (29,1,'2021-08-24 15:36:36','2021-08-24 15:36:36','','post-4','','inherit','open','closed','','post-4','','','2021-08-24 15:36:36','2021-08-24 15:36:36','',0,'http://artsandscience.local/wp-content/uploads/2021/08/post-4.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (30,1,'2021-08-24 15:36:36','2021-08-24 15:36:36','','sub-footer','','inherit','open','closed','','sub-footer','','','2021-08-25 02:01:22','2021-08-25 02:01:22','',2,'http://artsandscience.local/wp-content/uploads/2021/08/sub-footer.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (31,1,'2021-08-24 17:06:14','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2021-08-24 17:06:14','0000-00-00 00:00:00','',0,'http://artsandscience.local/?post_type=acf-field-group&p=31',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (32,1,'2021-08-24 17:13:48','2021-08-24 17:13:48','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"page_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:10:\"front_page\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Hero','hero','publish','closed','closed','','group_612528545b14b','','','2021-08-25 02:07:04','2021-08-25 02:07:04','',0,'http://artsandscience.local/?post_type=acf-field-group&#038;p=32',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (33,1,'2021-08-24 17:13:48','2021-08-24 17:13:48','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:5:\"large\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Hero Image','hero_image','publish','closed','closed','','field_612528795097d','','','2021-08-24 18:35:57','2021-08-24 18:35:57','',32,'http://artsandscience.local/?post_type=acf-field&#038;p=33',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (36,1,'2021-08-24 17:18:51','2021-08-24 17:18:51','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Hero Text','hero_text','publish','closed','closed','','field_612529b991851','','','2021-08-24 17:18:51','2021-08-24 17:18:51','',32,'http://artsandscience.local/?post_type=acf-field&p=36',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (38,1,'2021-08-24 17:21:18','2021-08-24 17:21:18','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"page_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:10:\"front_page\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Large Call to Action','large-call-to-action','publish','closed','closed','','group_612529fff0f09','','','2021-08-25 08:10:07','2021-08-25 08:10:07','',0,'http://artsandscience.local/?post_type=acf-field-group&#038;p=38',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (39,1,'2021-08-24 17:21:18','2021-08-24 17:21:18','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:5:\"large\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Alternating Calls to Action','alternating_calls_to_action','publish','closed','closed','','field_61252a3ad786d','','','2021-08-25 08:09:40','2021-08-25 08:09:40','',38,'http://artsandscience.local/?post_type=acf-field&#038;p=39',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (40,1,'2021-08-24 17:21:18','2021-08-24 17:21:18','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Calls to Action Text','calls_to_action_text','publish','closed','closed','','field_61252a5fd786e','','','2021-08-24 17:21:18','2021-08-24 17:21:18','',38,'http://artsandscience.local/?post_type=acf-field&p=40',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (41,1,'2021-08-24 17:26:39','2021-08-24 17:26:39','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"page_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:10:\"front_page\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Sub Footer Calls to Action','sub-footer-calls-to-action','publish','closed','closed','','group_61252a92e02bc','','','2021-08-25 08:10:26','2021-08-25 08:10:26','',0,'http://artsandscience.local/?post_type=acf-field-group&#038;p=41',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (42,1,'2021-08-24 17:26:39','2021-08-24 17:26:39','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:5:\"large\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Footer Calls to Action','footer_calls_to_action','publish','closed','closed','','field_61252a9c652dc','','','2021-08-25 08:10:26','2021-08-25 08:10:26','',41,'http://artsandscience.local/?post_type=acf-field&#038;p=42',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (43,1,'2021-08-24 17:26:39','2021-08-24 17:26:39','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Contacts','contacts','publish','closed','closed','','field_61252b9a652dd','','','2021-08-24 17:26:39','2021-08-24 17:26:39','',41,'http://artsandscience.local/?post_type=acf-field&p=43',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (44,1,'2021-08-24 17:26:39','2021-08-24 17:26:39','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Join Us','join_us','publish','closed','closed','','field_61252bb8652de','','','2021-08-24 17:26:39','2021-08-24 17:26:39','',41,'http://artsandscience.local/?post_type=acf-field&p=44',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (45,1,'2021-08-24 17:54:47','2021-08-24 17:54:47','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://artsandscience.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','inherit','closed','closed','','2-revision-v1','','','2021-08-24 17:54:47','2021-08-24 17:54:47','',2,'http://artsandscience.local/?p=45',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (46,1,'2021-08-24 17:54:47','2021-08-24 17:54:47','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://artsandscience.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','inherit','closed','closed','','2-revision-v1','','','2021-08-24 17:54:47','2021-08-24 17:54:47','',2,'http://artsandscience.local/?p=46',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (48,1,'2021-08-24 18:25:45','2021-08-24 18:25:45','','Sample Page','','inherit','closed','closed','','2-revision-v1','','','2021-08-24 18:25:45','2021-08-24 18:25:45','',2,'http://artsandscience.local/?p=48',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (49,1,'2021-08-24 18:37:30','2021-08-24 18:37:30','','Sample Page','','inherit','closed','closed','','2-revision-v1','','','2021-08-24 18:37:30','2021-08-24 18:37:30','',2,'http://artsandscience.local/?p=49',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (50,1,'2021-08-24 18:52:39','2021-08-24 18:52:39','','Sample Page','','inherit','closed','closed','','2-revision-v1','','','2021-08-24 18:52:39','2021-08-24 18:52:39','',2,'http://artsandscience.local/?p=50',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (51,1,'2021-08-26 09:53:00','2021-08-26 09:53:00','<!-- wp:paragraph -->\n<p>How an omnichannel approach keeps the focus on the customer | 2021 Insight Series - Retail </p>\n<!-- /wp:paragraph -->','Designing a Connected shopping experience','','publish','open','open','','designing-a-connected-shopping-experience','','','2021-08-26 13:52:32','2021-08-26 13:52:32','',0,'http://artsandscience.local/?p=51',0,'post','',0);
INSERT INTO `wp_posts` VALUES (52,1,'2021-08-24 22:06:04','2021-08-24 22:06:04','<!-- wp:paragraph -->\n<p>How an omnichannel approach keeps the focus on the customer | 2021 Insight Series - Retail </p>\n<!-- /wp:paragraph -->','Designing a Connected shopping experience','','inherit','closed','closed','','51-revision-v1','','','2021-08-24 22:06:04','2021-08-24 22:06:04','',51,'http://artsandscience.local/?p=52',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (53,1,'2021-08-26 09:51:00','2021-08-26 09:51:00','<!-- wp:paragraph -->\n<p>A modern convergence of physical and digital workplace strategies </p>\n<!-- /wp:paragraph -->','The Hybrid Office is Phygital','','publish','open','open','','the-hybrid-office-is-phygital','','','2021-08-26 13:51:53','2021-08-26 13:51:53','',0,'http://artsandscience.local/?p=53',0,'post','',0);
INSERT INTO `wp_posts` VALUES (54,1,'2021-08-24 22:11:13','2021-08-24 22:11:13','<!-- wp:paragraph -->\n<p>A modern convergence of physical and digital workplace strategies </p>\n<!-- /wp:paragraph -->','The Hybrid Office is Phygital','','inherit','closed','closed','','53-revision-v1','','','2021-08-24 22:11:13','2021-08-24 22:11:13','',53,'http://artsandscience.local/?p=54',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (55,1,'2021-08-26 09:50:00','2021-08-26 09:50:00','<!-- wp:paragraph -->\n<p>Key Driver of change in the life of Sciences sector</p>\n<!-- /wp:paragraph -->','Designing Flexible Labs for rapid Growth','','publish','open','open','','designing-flexible-labs-for-rapid-growth','','','2021-08-26 13:51:11','2021-08-26 13:51:11','',0,'http://artsandscience.local/?p=55',0,'post','',0);
INSERT INTO `wp_posts` VALUES (56,1,'2021-08-24 23:06:46','2021-08-24 23:06:46','<!-- wp:paragraph -->\n<p>Key Driver of change in the life of Sciences sector</p>\n<!-- /wp:paragraph -->','Designing Flexible Labs for rapid Growth','','inherit','closed','closed','','55-revision-v1','','','2021-08-24 23:06:46','2021-08-24 23:06:46','',55,'http://artsandscience.local/?p=56',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (57,1,'2021-08-26 09:49:00','2021-08-26 09:49:00','<!-- wp:paragraph -->\n<p>Navigating design with purpose-driven transportation solutions</p>\n<!-- /wp:paragraph -->','Moving Forward','','publish','open','open','','moving-forward','','','2021-08-26 13:50:16','2021-08-26 13:50:16','',0,'http://artsandscience.local/?p=57',0,'post','',0);
INSERT INTO `wp_posts` VALUES (58,1,'2021-08-24 23:08:48','2021-08-24 23:08:48','<!-- wp:paragraph -->\n<p>Navigating design with purpose-driven transportation solutions</p>\n<!-- /wp:paragraph -->','Moving Forward','','inherit','closed','closed','','57-revision-v1','','','2021-08-24 23:08:48','2021-08-24 23:08:48','',57,'http://artsandscience.local/?p=58',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (59,1,'2021-08-25 01:56:53','2021-08-25 01:56:53','','Sample Page','','inherit','closed','closed','','2-revision-v1','','','2021-08-25 01:56:53','2021-08-25 01:56:53','',2,'http://artsandscience.local/?p=59',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (60,1,'2021-08-25 02:01:22','2021-08-25 02:01:22','','Sample Page','','inherit','closed','closed','','2-revision-v1','','','2021-08-25 02:01:22','2021-08-25 02:01:22','',2,'http://artsandscience.local/?p=60',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (61,1,'2021-08-25 02:01:25','2021-08-25 02:01:25','','Sample Page','','inherit','closed','closed','','2-revision-v1','','','2021-08-25 02:01:25','2021-08-25 02:01:25','',2,'http://artsandscience.local/?p=61',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (62,1,'2021-08-25 02:06:15','2021-08-25 02:06:15','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Who We Are','who_we_are','publish','closed','closed','','field_6125a52c2a35c','','','2021-08-25 02:06:15','2021-08-25 02:06:15','',32,'http://artsandscience.local/?post_type=acf-field&p=62',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (63,1,'2021-08-25 02:06:15','2021-08-25 02:06:15','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Sustainable Design','sustainable_design','publish','closed','closed','','field_6125a55b2a35d','','','2021-08-25 02:06:15','2021-08-25 02:06:15','',32,'http://artsandscience.local/?post_type=acf-field&p=63',3,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (64,1,'2021-08-25 02:06:15','2021-08-25 02:06:15','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Our Portfolio','our_portfolio','publish','closed','closed','','field_6125a57f2a35e','','','2021-08-25 02:06:15','2021-08-25 02:06:15','',32,'http://artsandscience.local/?post_type=acf-field&p=64',4,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (65,1,'2021-08-25 02:12:08','2021-08-25 02:12:08','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:5:\"large\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Action Section Image','action_section_image','publish','closed','closed','','field_6125a69444f5c','','','2021-08-25 08:10:07','2021-08-25 08:10:07','',38,'http://artsandscience.local/?post_type=acf-field&#038;p=65',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (66,1,'2021-08-25 02:12:08','2021-08-25 02:12:08','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Action Section Text','action_section_text','publish','closed','closed','','field_6125a6ce44f5d','','','2021-08-25 02:12:08','2021-08-25 02:12:08','',38,'http://artsandscience.local/?post_type=acf-field&p=66',3,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (67,1,'2021-08-25 02:16:31','2021-08-25 02:16:31','','Sample Page','','inherit','closed','closed','','2-revision-v1','','','2021-08-25 02:16:31','2021-08-25 02:16:31','',2,'http://artsandscience.local/?p=67',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (68,1,'2021-08-25 02:16:33','2021-08-25 02:16:33','','Sample Page','','inherit','closed','closed','','2-revision-v1','','','2021-08-25 02:16:33','2021-08-25 02:16:33','',2,'http://artsandscience.local/?p=68',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (69,1,'2021-08-25 08:41:50','2021-08-25 08:41:50','','In the News','','publish','closed','closed','','in-the-news','','','2021-08-25 08:41:50','2021-08-25 08:41:50','',0,'http://artsandscience.local/?p=69',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (70,1,'2021-08-25 08:41:50','2021-08-25 08:41:50','','Terms of Use','','publish','closed','closed','','terms-of-use','','','2021-08-25 08:41:50','2021-08-25 08:41:50','',0,'http://artsandscience.local/?p=70',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (71,1,'2021-08-25 08:41:50','2021-08-25 08:41:50','','Accessibility','','publish','closed','closed','','accessibility','','','2021-08-25 08:41:50','2021-08-25 08:41:50','',0,'http://artsandscience.local/?p=71',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (72,1,'2021-08-25 08:41:50','2021-08-25 08:41:50',' ','','','publish','closed','closed','','72','','','2021-08-25 08:41:50','2021-08-25 08:41:50','',0,'http://artsandscience.local/?p=72',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (73,1,'2021-08-25 08:41:50','2021-08-25 08:41:50','','Privacy','','publish','closed','closed','','privacy','','','2021-08-25 08:41:50','2021-08-25 08:41:50','',0,'http://artsandscience.local/?p=73',5,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (74,1,'2021-08-25 09:20:08','2021-08-25 09:20:08','','icon-facebook','','inherit','open','closed','','icon-facebook','','','2021-08-25 09:20:08','2021-08-25 09:20:08','',0,'http://artsandscience.local/wp-content/uploads/2021/08/icon-facebook.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (75,1,'2021-08-25 09:20:08','2021-08-25 09:20:08','','icon-instagram','','inherit','open','closed','','icon-instagram','','','2021-08-25 09:20:08','2021-08-25 09:20:08','',0,'http://artsandscience.local/wp-content/uploads/2021/08/icon-instagram.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (76,1,'2021-08-25 09:20:08','2021-08-25 09:20:08','','icon-linkedin','','inherit','open','closed','','icon-linkedin','','','2021-08-25 09:20:08','2021-08-25 09:20:08','',0,'http://artsandscience.local/wp-content/uploads/2021/08/icon-linkedin.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (77,1,'2021-08-25 09:20:08','2021-08-25 09:20:08','','icon-twitter','','inherit','open','closed','','icon-twitter','','','2021-08-25 09:20:08','2021-08-25 09:20:08','',0,'http://artsandscience.local/wp-content/uploads/2021/08/icon-twitter.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (78,1,'2021-08-25 09:20:08','2021-08-25 09:20:08','','icon-youtube','','inherit','open','closed','','icon-youtube','','','2021-08-25 09:20:08','2021-08-25 09:20:08','',0,'http://artsandscience.local/wp-content/uploads/2021/08/icon-youtube.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (79,1,'2021-08-25 09:20:20','2021-08-25 09:20:20','','logo-norr','','inherit','open','closed','','logo-norr','','','2021-08-25 09:20:20','2021-08-25 09:20:20','',0,'http://artsandscience.local/wp-content/uploads/2021/08/logo-norr.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (80,1,'2021-08-25 13:00:02','2021-08-25 13:00:02','{\n    \"arts::custom_logo\": {\n        \"value\": 79,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-08-25 13:00:02\"\n    }\n}','','','trash','closed','closed','','f0cc14a4-d4aa-457a-a5de-e76376dd7f85','','','2021-08-25 13:00:02','2021-08-25 13:00:02','',0,'http://artsandscience.local/f0cc14a4-d4aa-457a-a5de-e76376dd7f85/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (81,1,'2021-08-25 13:07:07','2021-08-25 13:07:07','{\n    \"arts::header_logo\": {\n        \"value\": \"http://artsandscience.local/wp-content/uploads/2021/08/logo-norr.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-08-25 13:06:56\"\n    }\n}','','','trash','closed','closed','','7ac3c18c-6f4d-4539-95b0-d8937d319cc0','','','2021-08-25 13:07:07','2021-08-25 13:07:07','',0,'http://artsandscience.local/?p=81',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (82,1,'2021-08-26 13:49:50','2021-08-26 13:49:50','<!-- wp:paragraph -->\n<p>Navigating design with purpose-driven transportation solutions</p>\n<!-- /wp:paragraph -->','Moving Forward','','inherit','closed','closed','','57-autosave-v1','','','2021-08-26 13:49:50','2021-08-26 13:49:50','',57,'http://artsandscience.local/?p=82',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (83,1,'2021-08-26 14:58:43','2021-08-26 14:58:43','<!-- wp:paragraph -->\n<p>Something about services</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>What is Lorem Ipsum?</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->','Services','','inherit','closed','closed','','5-revision-v1','','','2021-08-26 14:58:43','2021-08-26 14:58:43','',5,'http://artsandscience.local/?p=83',0,'revision','',0);
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
INSERT INTO `wp_term_relationships` VALUES (18,2,0);
INSERT INTO `wp_term_relationships` VALUES (19,2,0);
INSERT INTO `wp_term_relationships` VALUES (20,2,0);
INSERT INTO `wp_term_relationships` VALUES (21,2,0);
INSERT INTO `wp_term_relationships` VALUES (22,2,0);
INSERT INTO `wp_term_relationships` VALUES (51,1,0);
INSERT INTO `wp_term_relationships` VALUES (53,1,0);
INSERT INTO `wp_term_relationships` VALUES (55,1,0);
INSERT INTO `wp_term_relationships` VALUES (57,1,0);
INSERT INTO `wp_term_relationships` VALUES (69,3,0);
INSERT INTO `wp_term_relationships` VALUES (70,3,0);
INSERT INTO `wp_term_relationships` VALUES (71,3,0);
INSERT INTO `wp_term_relationships` VALUES (72,3,0);
INSERT INTO `wp_term_relationships` VALUES (73,3,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,5);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'nav_menu','',0,6);
INSERT INTO `wp_term_taxonomy` VALUES (3,3,'nav_menu','',0,5);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'main menu','main-menu',0);
INSERT INTO `wp_terms` VALUES (3,'footer','footer',0);
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','abdul');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','theme_editor_notice');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:1:{s:64:\"3b6b48855dac627c0c9b36bd3b53b7cfd4ed27b4650f0913d0fe9c5f365f74e9\";a:4:{s:10:\"expiration\";i:1630286952;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36\";s:5:\"login\";i:1630114152;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','4');
INSERT INTO `wp_usermeta` VALUES (18,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}');
INSERT INTO `wp_usermeta` VALUES (19,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}');
INSERT INTO `wp_usermeta` VALUES (20,1,'nav_menu_recently_edited','3');
INSERT INTO `wp_usermeta` VALUES (21,1,'wp_user-settings','libraryContent=browse');
INSERT INTO `wp_usermeta` VALUES (22,1,'wp_user-settings-time','1629827682');
INSERT INTO `wp_usermeta` VALUES (23,1,'closedpostboxes_','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (24,1,'metaboxhidden_','a:0:{}');
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
INSERT INTO `wp_users` VALUES (1,'abdul','$P$Bxfh6pPenyG3C9C0.FMY.NbZP8y2BA/','abdul','dev-email@flywheel.local','http://artsandscience.local','2021-08-24 14:06:30','',0,'abdul');
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

-- Dump completed on 2021-08-28 18:16:39
