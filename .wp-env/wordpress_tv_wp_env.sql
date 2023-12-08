-- MariaDB dump 10.19  Distrib 10.11.5-MariaDB, for Linux (x86_64)
--
-- Host: mysql    Database: wordpress
-- ------------------------------------------------------
-- Server version	11.2.2-MariaDB-1:11.2.2+maria~ubu2204

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT 0,
  `comment_author` text NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` mediumtext NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` longtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
INSERT INTO `wp_links` VALUES
(1,'http://dev.wordpress.tv','Making WordPress.tv','','','','Y',1,0,'0000-00-00 00:00:00','','',''),
(2,'http://wordpress.com','WordPress.com','','','','Y',1,0,'0000-00-00 00:00:00','','',''),
(3,'http://wordpress.org','WordPress.org','','','','Y',1,0,'0000-00-00 00:00:00','','','');
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) DEFAULT NULL,
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=314 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES
(1,'siteurl','https://wordpress.tv.ddev.site','yes'),
(2,'home','https://wordpress.tv.ddev.site','yes'),
(3,'blogname','WordPressTV.dev','yes'),
(4,'blogdescription','Engage Yourself with WordPress.tv','yes'),
(5,'users_can_register','0','yes'),
(6,'admin_email','foo@example.org','yes'),
(7,'start_of_week','1','yes'),
(8,'use_balanceTags','0','yes'),
(9,'use_smilies','1','yes'),
(10,'require_name_email','1','yes'),
(11,'comments_notify','1','yes'),
(12,'posts_per_rss','10','yes'),
(13,'rss_use_excerpt','0','yes'),
(14,'mailserver_url','mail.example.com','yes'),
(15,'mailserver_login','login@example.com','yes'),
(16,'mailserver_pass','password','yes'),
(17,'mailserver_port','110','yes'),
(18,'default_category','1','yes'),
(19,'default_comment_status','open','yes'),
(20,'default_ping_status','open','yes'),
(21,'default_pingback_flag','1','yes'),
(22,'posts_per_page','10','yes'),
(23,'date_format','F j, Y','yes'),
(24,'time_format','g:i a','yes'),
(25,'links_updated_date_format','F j, Y g:i a','yes'),
(26,'comment_moderation','0','yes'),
(27,'moderation_notify','1','yes'),
(28,'permalink_structure','/%year%/%monthnum%/%day%/%postname%/','yes'),
(30,'hack_file','0','yes'),
(31,'blog_charset','UTF-8','yes'),
(32,'moderation_keys','','no'),
(33,'active_plugins','a:1:{i:0;s:19:\"jetpack/jetpack.php\";}','yes'),
(34,'category_base','','yes'),
(35,'ping_sites','http://rpc.pingomatic.com/','yes'),
(37,'comment_max_links','2','yes'),
(38,'gmt_offset','-7','yes'),
(39,'default_email_category','1','yes'),
(40,'recently_edited','','no'),
(41,'template','wptv2','yes'),
(42,'stylesheet','wptv2','yes'),
(45,'comment_registration','0','yes'),
(46,'html_type','text/html','yes'),
(47,'use_trackback','0','yes'),
(48,'default_role','subscriber','yes'),
(49,'db_version','57155','yes'),
(50,'uploads_use_yearmonth_folders','1','yes'),
(51,'upload_path','','yes'),
(52,'blog_public','1','yes'),
(53,'default_link_category','2','yes'),
(54,'show_on_front','posts','yes'),
(55,'tag_base','','yes'),
(56,'show_avatars','1','yes'),
(57,'avatar_rating','G','yes'),
(58,'upload_url_path','','yes'),
(59,'thumbnail_size_w','150','yes'),
(60,'thumbnail_size_h','150','yes'),
(61,'thumbnail_crop','1','yes'),
(62,'medium_size_w','300','yes'),
(63,'medium_size_h','300','yes'),
(64,'avatar_default','mystery','yes'),
(65,'large_size_w','1024','yes'),
(66,'large_size_h','1024','yes'),
(67,'image_default_link_type','file','yes'),
(68,'image_default_size','','yes'),
(69,'image_default_align','','yes'),
(70,'close_comments_for_old_posts','0','yes'),
(71,'close_comments_days_old','14','yes'),
(72,'thread_comments','1','yes'),
(73,'thread_comments_depth','5','yes'),
(74,'page_comments','0','yes'),
(75,'comments_per_page','50','yes'),
(76,'default_comments_page','newest','yes'),
(77,'comment_order','asc','yes'),
(78,'sticky_posts','a:1:{i:0;i:59;}','yes'),
(79,'widget_categories','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(80,'widget_text','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(81,'widget_rss','a:0:{}','yes'),
(82,'uninstall_plugins','a:0:{}','no'),
(83,'timezone_string','','yes'),
(84,'page_for_posts','0','yes'),
(85,'page_on_front','0','yes'),
(86,'default_post_format','0','yes'),
(87,'link_manager_enabled','0','yes'),
(88,'initial_db_version','30133','yes'),
(89,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes'),
(90,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(91,'widget_recent-posts','a:2:{i:3;a:3:{s:5:\"title\";s:13:\"Latest Videos\";s:6:\"number\";i:8;s:9:\"show_date\";b:0;}s:12:\"_multiwidget\";i:1;}','yes'),
(92,'widget_recent-comments','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(93,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(94,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(95,'sidebars_widgets','a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:2:{i:0;s:11:\"tag_cloud-2\";i:1;s:10:\"nav_menu-2\";}s:18:\"wordcamptv-sidebar\";a:3:{i:0;s:10:\"nav_menu-5\";i:1;s:14:\"recent-posts-3\";i:2;s:10:\"nav_menu-4\";}s:13:\"array_version\";i:3;}','yes'),
(96,'cron','a:9:{i:1700251820;a:1:{s:20:\"jetpack_clean_nonces\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1700252456;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1700288812;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1700292082;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1700332033;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1700333299;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1700335256;a:2:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1700335282;a:1:{s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}','yes'),
(103,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1700248858;s:7:\"checked\";a:3:{s:16:\"twentytwentyfour\";s:3:\"1.0\";s:17:\"twentytwentythree\";s:3:\"1.3\";s:15:\"twentytwentytwo\";s:3:\"1.6\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:16:\"twentytwentyfour\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfour\";s:11:\"new_version\";s:3:\"1.0\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfour/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfour.1.0.zip\";s:8:\"requires\";s:3:\"6.4\";s:12:\"requires_php\";s:3:\"7.0\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.3.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.6.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}','no'),
(104,'_transient_random_seed','bfc51963bc98f9fb7296215b88d64e59','yes'),
(105,'auth_key','Z*FSFAV1a2n03K%uGrR{;hP8LpHG0(V6 L*!0$7K^WW.r^N.1@nGgFDq86EKR8G.','yes'),
(106,'auth_salt','zX|~5[G1{bnLD5=!y~Dcjd2I-1=gPSjWN=u(_=V~;4Kh fu$D$CG*OrlDtRUUZ3]','yes'),
(107,'logged_in_key','!)ub&pncBkJ.E.tMx-RwC*Y<8&{vX#+EFsp6PX=G*4_kuyz(%pkLEn}.aL#4Fkqa','yes'),
(108,'logged_in_salt','LWp&<q!?ok&WY24>m*hdsmlUc?1c[a2$fk1^OLNkaxE]2&F-at!+V}nLnlt8Ih&;','yes'),
(109,'nonce_key','!P,96|mP*6AQnfe|GLP(*CL%,Tb/Cr6`6=XJ-Y0)O<W07!.J5,-|*RI(B6/>b)I9','yes'),
(110,'nonce_salt','E{5P75avDb.?@JWBEe&1<C0O,%]YOV#NRT^@cvR{C`[Gyivtn$>Jkx&jO5/%Wdtd','yes'),
(132,'recently_activated','a:0:{}','yes'),
(135,'WPLANG','','yes'),
(139,'theme_mods_twentyfifteen','a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1417804513;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}','no'),
(140,'template_root','/themes','yes'),
(141,'stylesheet_root','/themes','yes'),
(142,'current_theme','WordPress.tv v2','yes'),
(143,'theme_mods_wptv2','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:18:\"featured_wordcamps\";i:9;s:6:\"footer\";i:10;s:7:\"primary\";i:11;}s:18:\"custom_css_post_id\";i:-1;}','yes'),
(144,'theme_switched','','yes'),
(145,'widget_tag_cloud','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:8:\"taxonomy\";s:8:\"post_tag\";}s:12:\"_multiwidget\";i:1;}','yes'),
(146,'widget_nav_menu','a:4:{i:2;a:2:{s:5:\"title\";s:10:\"Categories\";s:8:\"nav_menu\";i:5;}i:4;a:2:{s:5:\"title\";s:9:\"Subtitles\";s:8:\"nav_menu\";i:3;}i:5;a:2:{s:5:\"title\";s:14:\"Browse by Year\";s:8:\"nav_menu\";i:2;}s:12:\"_multiwidget\";i:1;}','yes'),
(147,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes'),
(159,'jetpack_activated','1','yes'),
(160,'jetpack_options','a:4:{s:7:\"version\";s:16:\"3.2.1:1417806620\";s:11:\"old_version\";s:16:\"3.2.1:1417806620\";s:28:\"fallback_no_verify_ssl_certs\";i:0;s:9:\"time_diff\";i:0;}','yes'),
(164,'jetpack_file_data','a:1:{s:5:\"3.2.1\";a:46:{s:32:\"8ce71089d7ac8ed3c13f82d9bcece16b\";a:10:{s:4:\"name\";s:20:\"Spelling and Grammar\";s:11:\"description\";s:89:\"Check your spelling, style, and grammar with the After the Deadline proofreading service.\";s:4:\"sort\";s:1:\"6\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:7:\"Writing\";}s:32:\"4009b9c917e57b10f74ebfd034037713\";a:10:{s:4:\"name\";s:8:\"Carousel\";s:11:\"description\";s:63:\"Transform standard image galleries into full-screen slideshows.\";s:4:\"sort\";s:2:\"22\";s:10:\"introduced\";s:3:\"1.5\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:17:\"Photos and Videos\";}s:32:\"71265651a52c0b8505a08059fef8cbed\";a:10:{s:4:\"name\";s:16:\"Jetpack Comments\";s:11:\"description\";s:79:\"Let readers comment with WordPress.com, Twitter, Facebook, or Google+ accounts.\";s:4:\"sort\";s:2:\"20\";s:10:\"introduced\";s:3:\"1.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";}s:32:\"672442940c2181012db704f9783536de\";a:10:{s:4:\"name\";s:12:\"Contact Form\";s:11:\"description\";s:44:\"Insert a contact form anywhere on your site.\";s:4:\"sort\";s:2:\"15\";s:10:\"introduced\";s:3:\"1.3\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:5:\"Other\";}s:32:\"a4aac0045402a2f23a7337631f29c625\";a:10:{s:4:\"name\";s:20:\"Custom Content Types\";s:11:\"description\";s:92:\"Organize and display different types of content on your site, separate from posts and pages.\";s:4:\"sort\";s:2:\"34\";s:10:\"introduced\";s:3:\"3.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:7:\"Writing\";}s:32:\"a033e99627701d509f85517b299fdc30\";a:10:{s:4:\"name\";s:10:\"Custom CSS\";s:11:\"description\";s:57:\"Customize your site’s CSS without modifying your theme.\";s:4:\"sort\";s:1:\"2\";s:10:\"introduced\";s:3:\"1.7\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:10:\"Appearance\";}s:32:\"601653badd4239e9d2666aefdc0ee7ca\";a:10:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";}s:32:\"de70bd65e5c4830c03fcb717093b32e0\";a:10:{s:4:\"name\";s:21:\"Enhanced Distribution\";s:11:\"description\";s:74:\"Share your public posts and comments to search engines and other services.\";s:4:\"sort\";s:1:\"5\";s:10:\"introduced\";s:3:\"1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:6:\"Public\";s:11:\"module_tags\";s:7:\"Writing\";}s:32:\"0ed91227ae26b98f6ee6b389560852ff\";a:10:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";}s:32:\"b8f257659d10d1785faeeb85b64754e6\";a:10:{s:4:\"name\";s:19:\"Gravatar Hovercards\";s:11:\"description\";s:58:\"Enable pop-up business cards over commenters’ Gravatars.\";s:4:\"sort\";s:2:\"11\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:18:\"Social, Appearance\";}s:32:\"b2e5466a1a1856db9f04dd6227d0c3e0\";a:10:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:10:\"introduced\";s:8:\"2.0.3 ??\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:0:\"\";}s:32:\"8916c37dc17c4dca0b0a057ce076248d\";a:10:{s:4:\"name\";s:15:\"Infinite Scroll\";s:11:\"description\";s:46:\"Add support for infinite scroll to your theme.\";s:4:\"sort\";s:2:\"26\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:10:\"Appearance\";}s:32:\"43a23801c004bcc2cd2c18950cf28a0e\";a:10:{s:4:\"name\";s:8:\"JSON API\";s:11:\"description\";s:69:\"Allow applications to securely access your content through the cloud.\";s:4:\"sort\";s:2:\"19\";s:10:\"introduced\";s:3:\"1.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:6:\"Public\";s:11:\"module_tags\";s:19:\"Writing, Developers\";}s:32:\"8e2a2fddaa846a5249ed2cb76324297b\";a:10:{s:4:\"name\";s:14:\"Beautiful Math\";s:11:\"description\";s:85:\"Use LaTeX markup language in posts and pages for complex equations and other geekery.\";s:4:\"sort\";s:2:\"12\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:7:\"Writing\";}s:32:\"bdd0e55ab8e5facf661ef9a7d1d6584e\";a:10:{s:4:\"name\";s:5:\"Likes\";s:11:\"description\";s:70:\"Give visitors an easy way to show their appreciation for your content.\";s:4:\"sort\";s:2:\"23\";s:10:\"introduced\";s:3:\"2.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";}s:32:\"983d4f495c789d1f395c0d231de68703\";a:10:{s:4:\"name\";s:8:\"Markdown\";s:11:\"description\";s:51:\"Write posts or pages in plain-text Markdown syntax.\";s:4:\"sort\";s:2:\"31\";s:10:\"introduced\";s:3:\"2.8\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"Writing\";}s:32:\"78206e3f4bea0e153b821eabd9510c9d\";a:10:{s:4:\"name\";s:12:\"Mobile Theme\";s:11:\"description\";s:71:\"Optimize your site with a mobile-friendly theme for tablets and phones.\";s:4:\"sort\";s:2:\"21\";s:10:\"introduced\";s:3:\"1.8\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:18:\"Appearance, Mobile\";}s:32:\"e8b07ab4863eda469997ee9ce8315f5a\";a:10:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";}s:32:\"77cbe0f79794e9920f8e85847dccfce4\";a:10:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";}s:32:\"169c854149ea37d55d8aea9d3f613545\";a:10:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";}s:32:\"ad3e2984c937390f339852eef16455c8\";a:10:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";}s:32:\"833319f9483752052d61a2329f4e792c\";a:10:{s:4:\"name\";s:7:\"Monitor\";s:11:\"description\";s:88:\"Receive notifications from Jetpack if your site goes offline — and when it it returns.\";s:4:\"sort\";s:2:\"28\";s:10:\"introduced\";s:3:\"2.6\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:0:\"\";}s:32:\"9164522e3f661cefeb1dfb68ddf61b03\";a:10:{s:4:\"name\";s:13:\"Notifications\";s:11:\"description\";s:84:\"Receive notification of site activity via the admin toolbar and your Mobile devices.\";s:4:\"sort\";s:2:\"13\";s:10:\"introduced\";s:3:\"1.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:5:\"Other\";}s:32:\"6fbcc0ca43be7b6b83d4a5e71b5fa13f\";a:10:{s:4:\"name\";s:10:\"Omnisearch\";s:11:\"description\";s:66:\"Search your entire database from a single field in your Dashboard.\";s:4:\"sort\";s:2:\"16\";s:10:\"introduced\";s:3:\"2.3\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:10:\"Developers\";}s:32:\"4a5d5b81ffceec2a07f5c13da50a3a1f\";a:10:{s:4:\"name\";s:6:\"Photon\";s:11:\"description\";s:66:\"Accelerate your site by loading images from the WordPress.com CDN.\";s:4:\"sort\";s:2:\"25\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:29:\"Photos and Videos, Appearance\";}s:32:\"ecc177a7359883d671bc90ccbf378b3f\";a:10:{s:4:\"name\";s:13:\"Post by Email\";s:11:\"description\";s:58:\"Publish posts by email, using any device and email client.\";s:4:\"sort\";s:2:\"14\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:7:\"Writing\";}s:32:\"270a53b80b5a4d52fb5a60ba57f3f448\";a:10:{s:4:\"name\";s:9:\"Publicize\";s:11:\"description\";s:55:\"Share new posts on social media networks automatically.\";s:4:\"sort\";s:2:\"10\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:6:\"Social\";}s:32:\"199ef8e98fbc122df9a22d82ce50df2c\";a:10:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";}s:32:\"0235bd874268a8366b8c845d9a3fdb5d\";a:10:{s:4:\"name\";s:13:\"Related Posts\";s:11:\"description\";s:60:\"Display links to your related content under posts and pages.\";s:4:\"sort\";s:2:\"29\";s:10:\"introduced\";s:3:\"2.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:0:\"\";}s:32:\"47339638b1e38f6e43bbda8e7a60a79d\";a:10:{s:4:\"name\";s:7:\"Sharing\";s:11:\"description\";s:81:\"Allow visitors to share your content on Facebook, Twitter, and more with a click.\";s:4:\"sort\";s:1:\"7\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:3:\"1.2\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:6:\"Social\";}s:32:\"1ff72e85c6205bd24e97648e8d675e25\";a:10:{s:4:\"name\";s:16:\"Shortcode Embeds\";s:11:\"description\";s:77:\"Embed content from YouTube, Vimeo, SlideShare, and more, no coding necessary.\";s:4:\"sort\";s:1:\"3\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:3:\"1.2\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:46:\"Photos and Videos, Social, Writing, Appearance\";}s:32:\"be9f9f5ab28aea99df4896002d050cc5\";a:10:{s:4:\"name\";s:16:\"WP.me Shortlinks\";s:11:\"description\";s:56:\"Enable WP.me-powered shortlinks for all posts and pages.\";s:4:\"sort\";s:1:\"8\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:6:\"Social\";}s:32:\"b0a554a119251239fc2e9ff868d664d0\";a:10:{s:4:\"name\";s:9:\"Site Icon\";s:11:\"description\";s:30:\"Add an site icon to your site.\";s:4:\"sort\";s:2:\"22\";s:10:\"introduced\";s:3:\"3.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:5:\"Other\";}s:32:\"2776168d7effd79cc7cf62d69ec4c989\";a:10:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";}s:32:\"c04520a74c5463ac18d2111a8b4a92ac\";a:10:{s:4:\"name\";s:22:\"Jetpack Single Sign On\";s:11:\"description\";s:62:\"Allow your users to log in using their WordPress.com accounts.\";s:4:\"sort\";s:2:\"30\";s:10:\"introduced\";s:3:\"2.6\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:10:\"Developers\";}s:32:\"a8e8fe6f2e2bafbebf2aa1c4d8a43923\";a:10:{s:4:\"name\";s:19:\"WordPress.com Stats\";s:11:\"description\";s:85:\"Monitor your stats with clear, concise reports and no additional load on your server.\";s:4:\"sort\";s:1:\"1\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:19:\"WordPress.com Stats\";}s:32:\"9250de3f22408f0ef2176339ae0acf4d\";a:10:{s:4:\"name\";s:13:\"Subscriptions\";s:11:\"description\";s:88:\"Allow users to subscribe to your posts and comments and receive notifications via email.\";s:4:\"sort\";s:1:\"9\";s:10:\"introduced\";s:3:\"1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:6:\"Social\";}s:32:\"769fc1c6fa2869e624fec76152a2d629\";a:10:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";}s:32:\"7cdab211e5db9fe53ffad3a26c4afa6b\";a:10:{s:4:\"name\";s:15:\"Tiled Galleries\";s:11:\"description\";s:73:\"Display your image galleries in a variety of sleek, graphic arrangements.\";s:4:\"sort\";s:2:\"24\";s:10:\"introduced\";s:3:\"2.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:17:\"Photos and Videos\";}s:32:\"945f6ce76acf626a28a5430ebd566c60\";a:10:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";}s:32:\"1bb2b47c34bd52690567f768905686a4\";a:10:{s:4:\"name\";s:10:\"VaultPress\";s:11:\"description\";s:85:\"Protect your site with automatic backups and security scans. (Subscription required.)\";s:4:\"sort\";s:2:\"32\";s:10:\"introduced\";s:5:\"0:1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:5:\"false\";s:4:\"free\";s:5:\"false\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:0:\"\";}s:32:\"84972cecb3f6d230bff226af90bf7827\";a:10:{s:4:\"name\";s:17:\"Site Verification\";s:11:\"description\";s:78:\"Verify your site or domain with Google Webmaster Tools, Pinterest, and others.\";s:4:\"sort\";s:2:\"33\";s:10:\"introduced\";s:3:\"3.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:0:\"\";}s:32:\"f5e02a97dea90e9b880d668b604d6928\";a:10:{s:4:\"name\";s:10:\"VideoPress\";s:11:\"description\";s:66:\"Upload and host video right on your site. (Subscription required.)\";s:4:\"sort\";s:2:\"27\";s:10:\"introduced\";s:3:\"2.5\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:5:\"false\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:17:\"Photos and Videos\";}s:32:\"1492163304fad20316cebab7b9a6fe5b\";a:10:{s:4:\"name\";s:17:\"Widget Visibility\";s:11:\"description\";s:57:\"Specify which widgets appear on which pages of your site.\";s:4:\"sort\";s:2:\"17\";s:10:\"introduced\";s:3:\"2.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:10:\"Appearance\";}s:32:\"1e31f7d72d9ed837fbc873d064c8ce31\";a:10:{s:4:\"name\";s:21:\"Extra Sidebar Widgets\";s:11:\"description\";s:79:\"Add images, Twitter streams, your site’s RSS links, and more to your sidebar.\";s:4:\"sort\";s:1:\"4\";s:10:\"introduced\";s:3:\"1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:18:\"Social, Appearance\";}s:32:\"c45178e3bb27e77ccc0aaada3ca4d459\";a:10:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";}}}','yes'),
(165,'jetpack_available_modules','a:1:{s:5:\"5.6.1\";a:43:{s:18:\"after-the-deadline\";s:3:\"1.1\";s:8:\"carousel\";s:3:\"1.5\";s:13:\"comment-likes\";s:3:\"5.1\";s:8:\"comments\";s:3:\"1.4\";s:12:\"contact-form\";s:3:\"1.3\";s:20:\"custom-content-types\";s:3:\"3.1\";s:10:\"custom-css\";s:3:\"1.7\";s:21:\"enhanced-distribution\";s:3:\"1.2\";s:16:\"google-analytics\";s:3:\"4.5\";s:19:\"gravatar-hovercards\";s:3:\"1.1\";s:15:\"infinite-scroll\";s:3:\"2.0\";s:8:\"json-api\";s:3:\"1.9\";s:5:\"latex\";s:3:\"1.1\";s:11:\"lazy-images\";s:5:\"5.6.0\";s:5:\"likes\";s:3:\"2.2\";s:6:\"manage\";s:3:\"3.4\";s:8:\"markdown\";s:3:\"2.8\";s:9:\"masterbar\";s:3:\"4.8\";s:9:\"minileven\";s:3:\"1.8\";s:7:\"monitor\";s:3:\"2.6\";s:5:\"notes\";s:3:\"1.9\";s:6:\"photon\";s:3:\"2.0\";s:13:\"post-by-email\";s:3:\"2.0\";s:7:\"protect\";s:3:\"3.4\";s:9:\"publicize\";s:3:\"2.0\";s:3:\"pwa\";s:5:\"5.6.0\";s:13:\"related-posts\";s:3:\"2.9\";s:6:\"search\";s:3:\"5.0\";s:9:\"seo-tools\";s:3:\"4.4\";s:10:\"sharedaddy\";s:3:\"1.1\";s:10:\"shortcodes\";s:3:\"1.1\";s:10:\"shortlinks\";s:3:\"1.1\";s:8:\"sitemaps\";s:3:\"3.9\";s:3:\"sso\";s:3:\"2.6\";s:5:\"stats\";s:3:\"1.1\";s:13:\"subscriptions\";s:3:\"1.2\";s:13:\"tiled-gallery\";s:3:\"2.1\";s:10:\"vaultpress\";s:5:\"0:1.2\";s:18:\"verification-tools\";s:3:\"3.0\";s:10:\"videopress\";s:3:\"2.5\";s:17:\"widget-visibility\";s:3:\"2.4\";s:7:\"widgets\";s:3:\"1.2\";s:7:\"wordads\";s:5:\"4.5.0\";}}','yes'),
(166,'jetpack_log','a:4:{i:0;a:5:{s:4:\"time\";i:1417806673;s:7:\"user_id\";i:1;s:7:\"blog_id\";b:0;s:4:\"code\";s:8:\"activate\";s:4:\"data\";s:12:\"contact-form\";}i:1;a:5:{s:4:\"time\";i:1417806673;s:7:\"user_id\";i:1;s:7:\"blog_id\";b:0;s:4:\"code\";s:8:\"activate\";s:4:\"data\";s:7:\"widgets\";}i:2;a:5:{s:4:\"time\";i:1417806673;s:7:\"user_id\";i:1;s:7:\"blog_id\";b:0;s:4:\"code\";s:8:\"activate\";s:4:\"data\";s:19:\"gravatar-hovercards\";}i:3;a:5:{s:4:\"time\";i:1417806673;s:7:\"user_id\";i:1;s:7:\"blog_id\";b:0;s:4:\"code\";s:8:\"activate\";s:4:\"data\";s:10:\"shortcodes\";}}','no'),
(167,'jetpack_active_modules','a:4:{i:0;s:12:\"contact-form\";i:1;s:7:\"widgets\";i:2;s:19:\"gravatar-hovercards\";i:3;s:10:\"shortcodes\";}','yes'),
(168,'video_activation_run_once','1','yes'),
(209,'category_children','a:3:{i:13;a:3:{i:0;i:14;i:1;i:36;i:2;i:44;}i:15;a:1:{i:0;i:16;}i:24;a:2:{i:0;i:25;i:1;i:26;}}','yes'),
(213,'rewrite_rules','a:96:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}','yes'),
(226,'_transient_wptv_cached_video_thumbnail_urls','a:6:{s:8:\"GmPDhkyi\";s:66:\"http://videos.videopress.com/GmPDhkyi/135_3_scruberthumbnail_1.jpg\";s:8:\"6G3ymetL\";s:73:\"http://videos.videopress.com/6G3ymetL/wcnyc-cannon_scruberthumbnail_2.jpg\";s:8:\"jVXZrfw6\";s:71:\"http://videos.videopress.com/jVXZrfw6/video-9ac5622593_std.original.jpg\";s:8:\"17AccN9i\";s:77:\"http://videos.videopress.com/17AccN9i/video-57850c34f0_scruberthumbnail_0.jpg\";s:8:\"bUdzKMro\";s:74:\"http://videos.videopress.com/bUdzKMro/wordpress-4-0_scruberthumbnail_0.jpg\";s:8:\"XzOxjAUq\";s:77:\"http://videos.videopress.com/XzOxjAUq/video-25f69c8933_scruberthumbnail_0.jpg\";}','yes'),
(230,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(231,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(232,'widget_links','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(233,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(234,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(235,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(236,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(237,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(241,'jetpack_sync_settings_disable','0','yes'),
(244,'widget_authors','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(245,'widget_eu_cookie_law_widget','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(246,'widget_facebook-likebox','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(247,'widget_flickr','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(248,'widget_wpcom-goodreads','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(249,'widget_google_translate_widget','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(250,'widget_googleplus-badge','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(251,'widget_grofile','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(252,'widget_internet_defense_league_widget','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(253,'widget_widget_mailchimp_subscriber_popup','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(254,'widget_milestone_widget','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(255,'widget_rss_links','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(256,'widget_wpcom_social_media_icons_widget','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(257,'widget_twitter_timeline','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(258,'widget_upcoming_events_widget','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(259,'widget_jetpack_display_posts_widget','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(260,'widget_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(261,'jetpack_testimonial','0','yes'),
(264,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1700248858;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"5.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.5.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/akismet/assets/banner-1544x500.png?rev=2900731\";s:2:\"1x\";s:62:\"https://ps.w.org/akismet/assets/banner-772x250.png?rev=2900731\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:2:{s:19:\"akismet/akismet.php\";s:3:\"5.3\";s:9:\"hello.php\";s:5:\"1.7.2\";}}','no'),
(267,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.4.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.4.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.4.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.4.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.4.1\";s:7:\"version\";s:5:\"6.4.1\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.4\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1700248857;s:15:\"version_checked\";s:5:\"6.4.1\";s:12:\"translations\";a:0:{}}','no'),
(268,'widget_block','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
(273,'recovery_keys','a:0:{}','yes'),
(274,'finished_splitting_shared_terms','1','yes'),
(275,'site_icon','0','yes'),
(276,'medium_large_size_w','768','yes'),
(277,'medium_large_size_h','0','yes'),
(278,'wp_page_for_privacy_policy','0','yes'),
(279,'show_comments_cookies_opt_in','1','yes'),
(280,'admin_email_lifespan','1700508082','yes'),
(281,'disallowed_keys','','no'),
(282,'comment_previously_approved','1','yes'),
(283,'auto_plugin_theme_update_emails','a:0:{}','no'),
(284,'auto_update_core_dev','enabled','yes'),
(285,'auto_update_core_minor','enabled','yes'),
(286,'auto_update_core_major','unset','yes'),
(287,'wp_force_deactivated_plugins','a:0:{}','yes'),
(288,'wp_attachment_pages_enabled','1','yes'),
(289,'finished_updating_comment_type','1','yes'),
(290,'user_count','1','no'),
(291,'db_upgraded','1','yes'),
(313,'_transient_doing_cron','1702063645.7143049240112304687500','yes');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=258 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES
(12,8,'_edit_last','1'),
(13,8,'_wp_page_template','upload-subtitles-template.php'),
(14,8,'_edit_lock','1417806310:1'),
(15,10,'_menu_item_type','post_type'),
(16,10,'_menu_item_menu_item_parent','0'),
(17,10,'_menu_item_object_id','8'),
(18,10,'_menu_item_object','page'),
(19,10,'_menu_item_target',''),
(20,10,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
(21,10,'_menu_item_xfn',''),
(22,10,'_menu_item_url',''),
(26,12,'_menu_item_type','taxonomy'),
(27,12,'_menu_item_menu_item_parent','0'),
(28,12,'_menu_item_object_id','6'),
(29,12,'_menu_item_object','category'),
(30,12,'_menu_item_target',''),
(31,12,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
(32,12,'_menu_item_xfn',''),
(33,12,'_menu_item_url',''),
(35,13,'_menu_item_type','taxonomy'),
(36,13,'_menu_item_menu_item_parent','0'),
(37,13,'_menu_item_object_id','7'),
(38,13,'_menu_item_object','category'),
(39,13,'_menu_item_target',''),
(40,13,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
(41,13,'_menu_item_xfn',''),
(42,13,'_menu_item_url',''),
(44,14,'_menu_item_type','taxonomy'),
(45,14,'_menu_item_menu_item_parent','0'),
(46,14,'_menu_item_object_id','8'),
(47,14,'_menu_item_object','category'),
(48,14,'_menu_item_target',''),
(49,14,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
(50,14,'_menu_item_xfn',''),
(51,14,'_menu_item_url',''),
(53,15,'_menu_item_type','custom'),
(54,15,'_menu_item_menu_item_parent','0'),
(55,15,'_menu_item_object_id','15'),
(56,15,'_menu_item_object','custom'),
(57,15,'_menu_item_target',''),
(58,15,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
(59,15,'_menu_item_xfn',''),
(60,15,'_menu_item_url','http://wordpress.com/'),
(62,16,'_edit_last','1'),
(63,16,'_wp_page_template','default'),
(64,16,'_edit_lock','1417806782:1'),
(65,17,'_edit_last','1'),
(66,17,'_wp_page_template','default'),
(67,17,'_edit_lock','1417806794:1'),
(68,20,'_menu_item_type','post_type'),
(69,20,'_menu_item_menu_item_parent','0'),
(70,20,'_menu_item_object_id','17'),
(71,20,'_menu_item_object','page'),
(72,20,'_menu_item_target',''),
(73,20,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
(74,20,'_menu_item_xfn',''),
(75,20,'_menu_item_url',''),
(77,21,'_menu_item_type','post_type'),
(78,21,'_menu_item_menu_item_parent','0'),
(79,21,'_menu_item_object_id','16'),
(80,21,'_menu_item_object','page'),
(81,21,'_menu_item_target',''),
(82,21,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
(83,21,'_menu_item_xfn',''),
(84,21,'_menu_item_url',''),
(86,22,'_menu_item_type','custom'),
(87,22,'_menu_item_menu_item_parent','0'),
(88,22,'_menu_item_object_id','22'),
(89,22,'_menu_item_object','custom'),
(90,22,'_menu_item_target',''),
(91,22,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
(92,22,'_menu_item_xfn',''),
(93,22,'_menu_item_url','http://videopress.com/'),
(95,23,'_menu_item_type','post_type'),
(96,23,'_menu_item_menu_item_parent','0'),
(97,23,'_menu_item_object_id','16'),
(98,23,'_menu_item_object','page'),
(99,23,'_menu_item_target',''),
(100,23,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
(101,23,'_menu_item_xfn',''),
(102,23,'_menu_item_url',''),
(104,24,'_menu_item_type','taxonomy'),
(105,24,'_menu_item_menu_item_parent','0'),
(106,24,'_menu_item_object_id','6'),
(107,24,'_menu_item_object','category'),
(108,24,'_menu_item_target',''),
(109,24,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
(110,24,'_menu_item_xfn',''),
(111,24,'_menu_item_url',''),
(115,25,'_menu_item_type','taxonomy'),
(116,25,'_menu_item_menu_item_parent','0'),
(117,25,'_menu_item_object_id','12'),
(118,25,'_menu_item_object','category'),
(119,25,'_menu_item_target',''),
(120,25,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
(121,25,'_menu_item_xfn',''),
(122,25,'_menu_item_url',''),
(124,30,'_edit_last','1'),
(125,30,'_edit_lock','1417808128:1'),
(126,31,'_edit_last','1'),
(127,31,'_edit_lock','1417810042:1'),
(128,31,'_wp_page_template','default'),
(129,30,'_wp_page_template','default'),
(130,34,'_edit_last','1'),
(131,34,'_edit_lock','1417808160:1'),
(132,34,'_wp_page_template','default'),
(133,36,'_edit_last','1'),
(134,36,'_edit_lock','1417808261:1'),
(135,36,'_wp_page_template','default'),
(136,38,'_edit_last','1'),
(137,38,'_edit_lock','1417810170:1'),
(138,38,'_wp_page_template','anon-upload-template.php'),
(152,51,'_edit_last','1'),
(153,51,'_edit_lock','1417819117:1'),
(156,51,'wptv_post_views','0'),
(161,51,'_wptv_submitted_video','a:11:{s:13:\"attachment_id\";i:0;s:12:\"submitted_by\";s:8:\"Jane Doe\";s:15:\"submitted_email\";s:15:\"foo@example.org\";s:5:\"title\";s:0:\"\";s:8:\"producer\";s:0:\"\";s:8:\"speakers\";s:0:\"\";s:5:\"event\";s:0:\"\";s:8:\"language\";s:0:\"\";s:10:\"categories\";s:0:\"\";s:11:\"description\";s:0:\"\";s:2:\"ip\";s:9:\"127.0.0.1\";}'),
(166,55,'_edit_last','1'),
(167,55,'_wptv_submitted_video','a:11:{s:13:\"attachment_id\";i:0;s:12:\"submitted_by\";s:8:\"Jane Doe\";s:15:\"submitted_email\";s:15:\"foo@example.org\";s:5:\"title\";s:0:\"\";s:8:\"producer\";s:0:\"\";s:8:\"speakers\";s:0:\"\";s:5:\"event\";s:0:\"\";s:8:\"language\";s:0:\"\";s:10:\"categories\";s:0:\"\";s:11:\"description\";s:0:\"\";s:2:\"ip\";s:9:\"127.0.0.1\";}'),
(168,55,'_edit_lock','1417819597:1'),
(171,55,'wptv_post_views','0'),
(172,57,'_edit_last','1'),
(173,57,'_wptv_submitted_video','a:11:{s:13:\"attachment_id\";i:0;s:12:\"submitted_by\";s:8:\"Jane Doe\";s:15:\"submitted_email\";s:15:\"foo@example.org\";s:5:\"title\";s:0:\"\";s:8:\"producer\";s:0:\"\";s:8:\"speakers\";s:0:\"\";s:5:\"event\";s:0:\"\";s:8:\"language\";s:0:\"\";s:10:\"categories\";s:0:\"\";s:11:\"description\";s:0:\"\";s:2:\"ip\";s:9:\"127.0.0.1\";}'),
(176,57,'wptv_post_views','0'),
(177,57,'_edit_lock','1417824703:1'),
(182,59,'_edit_last','1'),
(183,59,'_wptv_submitted_video','a:11:{s:13:\"attachment_id\";i:0;s:12:\"submitted_by\";s:8:\"Jane Doe\";s:15:\"submitted_email\";s:15:\"foo@example.org\";s:5:\"title\";s:0:\"\";s:8:\"producer\";s:0:\"\";s:8:\"speakers\";s:0:\"\";s:5:\"event\";s:0:\"\";s:8:\"language\";s:0:\"\";s:10:\"categories\";s:0:\"\";s:11:\"description\";s:0:\"\";s:2:\"ip\";s:9:\"127.0.0.1\";}'),
(186,59,'wptv_post_views','0'),
(187,59,'_edit_lock','1417826543:1'),
(192,63,'_edit_last','1'),
(193,63,'_wptv_submitted_video','a:11:{s:13:\"attachment_id\";i:0;s:12:\"submitted_by\";s:8:\"Jane Doe\";s:15:\"submitted_email\";s:15:\"foo@example.org\";s:5:\"title\";s:0:\"\";s:8:\"producer\";s:0:\"\";s:8:\"speakers\";s:0:\"\";s:5:\"event\";s:0:\"\";s:8:\"language\";s:0:\"\";s:10:\"categories\";s:0:\"\";s:11:\"description\";s:0:\"\";s:2:\"ip\";s:9:\"127.0.0.1\";}'),
(196,63,'wptv_post_views','0'),
(197,63,'_edit_lock','1417825076:1'),
(202,65,'_edit_last','1'),
(203,65,'_wptv_submitted_video','a:11:{s:13:\"attachment_id\";i:0;s:12:\"submitted_by\";s:8:\"Jane Doe\";s:15:\"submitted_email\";s:15:\"foo@example.org\";s:5:\"title\";s:0:\"\";s:8:\"producer\";s:0:\"\";s:8:\"speakers\";s:0:\"\";s:5:\"event\";s:0:\"\";s:8:\"language\";s:0:\"\";s:10:\"categories\";s:0:\"\";s:11:\"description\";s:0:\"\";s:2:\"ip\";s:9:\"127.0.0.1\";}'),
(206,65,'wptv_post_views','0'),
(207,65,'_edit_lock','1417826741:1'),
(214,67,'_menu_item_type','taxonomy'),
(215,67,'_menu_item_menu_item_parent','0'),
(216,67,'_menu_item_object_id','16'),
(217,67,'_menu_item_object','category'),
(218,67,'_menu_item_target',''),
(219,67,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
(220,67,'_menu_item_xfn',''),
(221,67,'_menu_item_url',''),
(241,70,'_menu_item_type','taxonomy'),
(242,70,'_menu_item_menu_item_parent','0'),
(243,70,'_menu_item_object_id','23'),
(244,70,'_menu_item_object','event'),
(245,70,'_menu_item_target',''),
(246,70,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
(247,70,'_menu_item_xfn',''),
(248,70,'_menu_item_url',''),
(250,71,'_menu_item_type','taxonomy'),
(251,71,'_menu_item_menu_item_parent','0'),
(252,71,'_menu_item_object_id','43'),
(253,71,'_menu_item_object','event'),
(254,71,'_menu_item_target',''),
(255,71,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
(256,71,'_menu_item_xfn',''),
(257,71,'_menu_item_url','');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` mediumtext NOT NULL,
  `post_excerpt` mediumtext NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` mediumtext NOT NULL,
  `pinged` mediumtext NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`),
  KEY `post_name` (`post_name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES
(8,1,'2014-12-05 11:49:09','2014-12-05 18:49:09','','Subtitle a Video','','publish','open','open','','subtitle-a-video','','','2014-12-05 12:07:32','2014-12-05 19:07:32','',0,'https://wordpress.tv.ddev.site/?page_id=8',0,'page','',0),
(9,1,'2014-12-05 11:49:09','2014-12-05 18:49:09','','Subtitle a Video','','inherit','open','open','','8-revision-v1','','','2014-12-05 11:49:09','2014-12-05 18:49:09','',8,'https://wordpress.tv.ddev.site/2014/12/05/8-revision-v1/',0,'revision','',0),
(10,1,'2014-12-05 11:49:31','2014-12-05 18:49:31','','Add subtitles to your favorite video','','publish','open','open','','add-subtitles-to-your-favorite-video','','','2014-12-05 11:49:31','2014-12-05 18:49:31','',0,'https://wordpress.tv.ddev.site/?p=10',1,'nav_menu_item','',0),
(12,1,'2014-12-05 11:52:21','2014-12-05 18:52:21',' ','','','publish','open','open','','12','','','2014-12-05 11:52:21','2014-12-05 18:52:21','',0,'https://wordpress.tv.ddev.site/?p=12',1,'nav_menu_item','',0),
(13,1,'2014-12-05 11:52:21','2014-12-05 18:52:21',' ','','','publish','open','open','','13','','','2014-12-05 11:52:21','2014-12-05 18:52:21','',0,'https://wordpress.tv.ddev.site/?p=13',2,'nav_menu_item','',0),
(14,1,'2014-12-05 11:52:21','2014-12-05 18:52:21',' ','','','publish','open','open','','14','','','2014-12-05 11:52:21','2014-12-05 18:52:21','',0,'https://wordpress.tv.ddev.site/?p=14',3,'nav_menu_item','',0),
(15,1,'2014-12-05 11:57:33','2014-12-05 18:57:33','','Blog at WordPress.com','','publish','open','open','','blog-at-wordpress-com','','','2014-12-05 11:58:17','2014-12-05 18:58:17','',0,'https://wordpress.tv.ddev.site/?p=15',1,'nav_menu_item','',0),
(16,1,'2014-12-05 11:57:21','2014-12-05 18:57:21','Want to help make WordPress.tv even better? We\'re always looking for top-quality WordPress videos as well as gung-ho volunteers to help moderate and review video submissions. We have <a href=\"http://wptvblog.wordpress.com/submission-guidelines/\" target=\"_blank\">Submission Guidelines</a> and everything!\r\n\r\n<a title=\"Submit video\" href=\"https://wordpress.tv.ddev.site/submit-video/\">Submit a Video</a>\r\n\r\n<a href=\"https://wordpress.tv.ddev.site/using-amara-org-to-caption-or-subtitle-a-wordpress-tv-video/\">Subtitle a Video</a>\r\n\r\n<a href=\"https://wordpress.tv.ddev.site/apply-to-be-a-wordpress-tv-moderator/\">Apply to be a WordPress.tv Moderator</a>','Get Involved','','publish','closed','closed','','get-involved','','','2014-12-05 12:15:21','2014-12-05 19:15:21','',0,'https://wordpress.tv.ddev.site/?page_id=16',0,'page','',0),
(17,1,'2014-12-05 11:57:25','2014-12-05 18:57:25','For <strong>support inquiries</strong> regarding blogs hosted on WordPress.com, please go to <a href=\"http://support.wordpress.com/contact/\">WordPress.com support</a>.  If your blog is running the self-hosted version of WordPress, you can <a href=\"http://wordpress.org/support/\">seek support elsewhere</a>.\r\n\r\nTo recommend a WordPress-related video, request a tutorial, or give us some feedback, please use the form below. When you click submit, your message will be sent to us, yay!\r\n\r\n[contact-form]','Contact Us','','publish','closed','closed','','contact-us','','','2014-12-05 12:13:49','2014-12-05 19:13:49','',0,'https://wordpress.tv.ddev.site/?page_id=17',0,'page','',0),
(18,1,'2014-12-05 11:57:21','2014-12-05 18:57:21','','Get Involved','','inherit','open','open','','16-revision-v1','','','2014-12-05 11:57:21','2014-12-05 18:57:21','',16,'https://wordpress.tv.ddev.site/2014/12/05/16-revision-v1/',0,'revision','',0),
(19,1,'2014-12-05 11:57:25','2014-12-05 18:57:25','','Contact Us','','inherit','open','open','','17-revision-v1','','','2014-12-05 11:57:25','2014-12-05 18:57:25','',17,'https://wordpress.tv.ddev.site/2014/12/05/17-revision-v1/',0,'revision','',0),
(20,1,'2014-12-05 11:58:17','2014-12-05 18:58:17',' ','','','publish','open','open','','20','','','2014-12-05 11:58:17','2014-12-05 18:58:17','',0,'https://wordpress.tv.ddev.site/?p=20',3,'nav_menu_item','',0),
(21,1,'2014-12-05 11:58:17','2014-12-05 18:58:17',' ','','','publish','open','open','','21','','','2014-12-05 11:58:17','2014-12-05 18:58:17','',0,'https://wordpress.tv.ddev.site/?p=21',2,'nav_menu_item','',0),
(22,1,'2014-12-05 11:58:17','2014-12-05 18:58:17','','Powered by VideoPress','','publish','open','open','','powered-by-videopress','','','2014-12-05 11:58:17','2014-12-05 18:58:17','',0,'https://wordpress.tv.ddev.site/?p=22',4,'nav_menu_item','',0),
(23,1,'2014-12-05 12:01:20','2014-12-05 19:01:20',' ','','','publish','open','open','','23','','','2014-12-05 12:02:30','2014-12-05 19:02:30','',0,'https://wordpress.tv.ddev.site/?p=23',3,'nav_menu_item','',0),
(24,1,'2014-12-05 12:01:20','2014-12-05 19:01:20',' ','','','publish','open','open','','24','','','2014-12-05 12:02:30','2014-12-05 19:02:30','',0,'https://wordpress.tv.ddev.site/?p=24',2,'nav_menu_item','',0),
(25,1,'2014-12-05 12:02:30','2014-12-05 19:02:30',' ','','','publish','open','open','','25','','','2014-12-05 12:02:30','2014-12-05 19:02:30','',0,'https://wordpress.tv.ddev.site/?p=25',1,'nav_menu_item','',0),
(26,1,'2014-12-05 12:08:18','2014-12-05 19:08:18','For <strong>support inquiries</strong> regarding blogs hosted on WordPress.com, please go to <a href=\"http://support.wordpress.com/contact/\">WordPress.com support</a>.  If your blog is running the self-hosted version of WordPress, you can <a href=\"http://wordpress.org/support/\">seek support elsewhere</a>.\n\nTo recommend a WordPress-related video, request a tutorial, or give us some feedback, please use the form below. When you click submit, your message will be sent to us, yay!\n\n[contact-form]','Contact Us','','inherit','open','open','','17-autosave-v1','','','2014-12-05 12:08:18','2014-12-05 19:08:18','',17,'https://wordpress.tv.ddev.site/2014/12/05/17-autosave-v1/',0,'revision','',0),
(27,1,'2014-12-05 12:13:24','2014-12-05 19:13:24','For <strong>support inquiries</strong> regarding blogs hosted on WordPress.com, please go to <a href=\"http://support.wordpress.com/contact/\">WordPress.com support</a>.  If your blog is running the self-hosted version of WordPress, you can <a href=\"http://wordpress.org/support/\">seek support elsewhere</a>.\r\n\r\nTo recommend a WordPress-related video, request a tutorial, or give us some feedback, please use the form below. When you click submit, your message will be sent to us, yay!\r\n\r\n[contact-form]','Contact Us','','inherit','open','open','','17-revision-v1','','','2014-12-05 12:13:24','2014-12-05 19:13:24','',17,'https://wordpress.tv.ddev.site/2014/12/05/17-revision-v1/',0,'revision','',0),
(28,1,'2014-12-05 12:15:03','2014-12-05 19:15:03','Want to help make WordPress.tv even better? We\'re always looking for top-quality WordPress videos as well as gung-ho volunteers to help moderate and review video submissions. We have <a href=\"http://wptvblog.wordpress.com/submission-guidelines/\" target=\"_blank\">Submission Guidelines</a> and everything!\n\n<a title=\"Submit video\" href=\"https://wordpress.tv.ddev.site/submit-video/\">Submit a Video</a>\n\n<a href=\"http://wordpresstv.d/using-amara-org-to-caption-or-subtitle-a-wordpress-tv-video/\">Subtitle a Video</a>\n\n<a href=\"http://wordpress.tv/apply-to-be-a-wordpress-tv-moderator/\">Apply to be a WordPress.tv Moderator</a>','Get Involved','','inherit','open','open','','16-autosave-v1','','','2014-12-05 12:15:03','2014-12-05 19:15:03','',16,'https://wordpress.tv.ddev.site/2014/12/05/16-autosave-v1/',0,'revision','',0),
(29,1,'2014-12-05 12:15:21','2014-12-05 19:15:21','Want to help make WordPress.tv even better? We\'re always looking for top-quality WordPress videos as well as gung-ho volunteers to help moderate and review video submissions. We have <a href=\"http://wptvblog.wordpress.com/submission-guidelines/\" target=\"_blank\">Submission Guidelines</a> and everything!\r\n\r\n<a title=\"Submit video\" href=\"https://wordpress.tv.ddev.site/submit-video/\">Submit a Video</a>\r\n\r\n<a href=\"https://wordpress.tv.ddev.site/using-amara-org-to-caption-or-subtitle-a-wordpress-tv-video/\">Subtitle a Video</a>\r\n\r\n<a href=\"https://wordpress.tv.ddev.site/apply-to-be-a-wordpress-tv-moderator/\">Apply to be a WordPress.tv Moderator</a>','Get Involved','','inherit','open','open','','16-revision-v1','','','2014-12-05 12:15:21','2014-12-05 19:15:21','',16,'https://wordpress.tv.ddev.site/2014/12/05/16-revision-v1/',0,'revision','',0),
(30,1,'2014-12-05 12:37:41','2014-12-05 19:37:41','<h3>Step 1 - Locate the existing .ttml file</h3>\r\nLoad the page for the video you would like to add a translation for. You can find the TTML link under the Subtitles section of the video information sidebar\r\n\r\n<a href=\"http://wptv.files.wordpress.com/2013/03/download-existing-ttml.jpg\"><img class=\"alignnone wp-image-24536 size-medium\" src=\"http://wptv.files.wordpress.com/2013/03/download-existing-ttml.jpg?w=210\" alt=\"download-existing-ttml\" width=\"210\" height=\"300\" /></a>\r\n<h3>Step 2 - Download and open the .ttml file</h3>\r\nDownload the existing caption file and then open it in a simple text-editor like Notepad or TextEdit. Avoid using applications like Word or Dreamweaver, because they will distort the TTML markup.\r\n<h3>Step 3 - Translate subtitle text</h3>\r\nInside the downloaded file, you\'ll see the speaker\'s words surrounded by &lt;p&gt; and &lt;/p&gt; tags. Translate all of the speaker\'s words into your language, but be careful not to change the surrounding &lt;p&gt; tags at all.\r\n\r\n<a href=\"http://wptv.files.wordpress.com/2013/03/raw-ttml.jpg\"><img class=\"alignnone\" src=\"http://wptv.files.wordpress.com/2013/03/raw-ttml.jpg?w=300\" alt=\"raw-ttml\" width=\"300\" height=\"155\" /></a>\r\n<h3>Step 4 - Save and upload your translated caption file</h3>\r\nWhen you\'re finished, save the file—being sure to use the original TTML file extension—and return to the WordPress.tv video page, then click on the \"Subtitle this video\" button at the bottom of the sidebar.\r\n\r\n<a href=\"http://wptv.files.wordpress.com/2013/03/08-subtitle.png\"><img class=\"alignnone wp-image-22172 size-medium\" src=\"http://wptv.files.wordpress.com/2013/03/08-subtitle.png?w=300\" alt=\"08 - subtitle\" width=\"300\" height=\"222\" /></a>\r\n\r\nOn the next page, choose your file for upload, select your language from the drop-down selector, and then click <strong>Submit</strong> button.\r\n\r\n<a href=\"http://wptv.files.wordpress.com/2013/03/09-upload.png\"><img class=\"alignnone wp-image-22173 size-medium\" src=\"http://wptv.files.wordpress.com/2013/03/09-upload.png?w=300\" alt=\"09 - upload\" width=\"300\" height=\"169\" /></a>\r\n\r\nSuccess! Your subtitles will go through a short moderation process, and then you can enjoy your newly captioned video in all its text-enriched glory. Thank you for helping out! :)','Translating an existing caption file','','publish','open','closed','','translating-an-existing-caption-file','','','2014-12-05 12:37:46','2014-12-05 19:37:46','',31,'https://wordpress.tv.ddev.site/?page_id=30',0,'page','',0),
(31,1,'2014-12-05 12:17:06','2014-12-05 19:17:06','Adding captions or translations is a great way to take your favorite wordpress.tv and share it with an even broader audience! It is easy to help us with this goal by submitting a caption or translation file for your favorite video. Just follow the steps below!\r\n<h2>Step-by-step video</h2>\r\n[wpvideo AhRoo4R8 w=700]\r\n<h2>Text instructions - Creating and uploading a new caption file</h2>\r\nThe tools at amara.org will help you to create your caption or translation file. So before you begin, be sure to create you <a href=\"http://www.amara.org/en/auth/login/?next=/\" target=\"_blank\">sign up for a free account on Amara.org</a>.\r\n\r\nIn addition to helping you create a caption file, the tools at amara.org also allow you to stop and start again in the middle of the captioning process. That way if you get interrupted, you can save your subtitles and pick up where you left off.\r\n\r\nOnce you have created your Amara.org account, you can follow these steps to create and upload your new caption file:\r\n<h3>Step 1 - Copy the video URL</h3>\r\nLocate the \"Med\" link in the Download section of the sidebar.\r\n\r\n<a href=\"http://wptv.files.wordpress.com/2013/03/01-select-medium.png\"><img class=\"alignnone wp-image-22165 size-full\" src=\"http://wptv.files.wordpress.com/2013/03/01-select-medium.png\" alt=\"01 - select medium\" width=\"242\" height=\"261\" /></a>\r\n\r\nRight-click on that link and select the Copy Video URL option.\r\n\r\n<a href=\"http://wptv.files.wordpress.com/2013/03/02-copy-video-url.png\"><img class=\"alignnone wp-image-22166 size-medium\" src=\"http://wptv.files.wordpress.com/2013/03/02-copy-video-url.png?w=300\" alt=\"02 - copy video url\" width=\"300\" height=\"211\" /></a>\r\n<h3>Step 2 - launch video in Amara</h3>\r\nGo to <a href=\"http://www.amara.org/en/videos/create/\" rel=\"nofollow\">http://www.amara.org/en/videos/create/</a> and enter the video URL you copied from wordpress.tv.\r\n\r\n<a href=\"http://wptv.files.wordpress.com/2013/03/03-paste-it-here.png\"><img class=\"size-medium wp-image-22167 alignnone\" src=\"http://wptv.files.wordpress.com/2013/03/03-paste-it-here.png?w=300\" alt=\"03 - paste it here\" width=\"300\" height=\"132\" /></a>\r\n\r\nNext click \"Subtitle Me\" and follow the instructions provided by <a href=\"http://amara.org\">Amara.org</a>\r\n\r\n<a href=\"http://wptv.files.wordpress.com/2013/03/04-click-subtitle-me.png\"><img class=\"alignnone wp-image-22168 size-full\" src=\"http://wptv.files.wordpress.com/2013/03/04-click-subtitle-me.png\" alt=\"04 - Click Subtitle Me\" width=\"274\" height=\"222\" /></a>\r\n<h3>Step 3 - Download the translation file</h3>\r\nOnce the video is subtitled at Amara.org, click on the link under View Subtitles, to the left of the video display.\r\n\r\n<a href=\"http://wptv.files.wordpress.com/2013/03/05-view-subtitles.png\"><img class=\"alignnone wp-image-22169 size-medium\" src=\"http://wptv.files.wordpress.com/2013/03/05-view-subtitles.png?w=300\" alt=\"05 - view subtitles\" width=\"300\" height=\"251\" /></a>\r\n\r\nNext click on the Download drop-down menu and select DFXP format.\r\n\r\n<a href=\"http://wptv.files.wordpress.com/2013/03/06-download-ttml.png\"><img class=\"alignnone wp-image-22170 size-medium\" src=\"http://wptv.files.wordpress.com/2013/03/06-download-ttml.png?w=300\" alt=\"06 - download TTML\" width=\"300\" height=\"154\" /></a>\r\n\r\nWhen you have downloaded the caption file to your computer, you should have a file that looks something like this: <strong>wordcamp-minneapolis-2014.dfxp</strong> In order to have this file work with wordpress.tv (which only accepts .ttml files) just edit the file extension to change it from .dfxp to .ttml, like so: <strong>wordcamp-minneapolis-2014.ttml</strong>\r\n<h3>Step 4 - Upload your caption file</h3>\r\nReturn to the WordPress.tv video page, and click on the \"Subtitle this video\" button at the bottom of the sidebar.\r\n\r\n<a href=\"http://wptv.files.wordpress.com/2013/03/08-subtitle.png\"><img class=\"alignnone wp-image-22172 size-medium\" src=\"http://wptv.files.wordpress.com/2013/03/08-subtitle.png?w=300\" alt=\"08 - subtitle\" width=\"300\" height=\"222\" /></a>\r\n\r\nOn the next page, choose your file for upload, select your language from the drop-down selector, and then click <strong>Submit</strong> button. <a href=\"http://wptv.files.wordpress.com/2013/03/09-upload.png\"><img class=\"alignnone wp-image-22173 size-medium\" src=\"http://wptv.files.wordpress.com/2013/03/09-upload.png?w=300\" alt=\"09 - upload\" width=\"300\" height=\"169\" /></a>\r\n\r\nSuccess! Your subtitles will go through a short moderation process, and then you can enjoy your newly captioned video in all its text-enriched glory. Thank you for helping out! :)\r\n<h2>Translating an existing caption file</h2>\r\nIn cases where there is already a caption file uploaded to a video, you do not need to use Amara at all, as it is usually much easier to translate the existing file instead.\r\n<h3>Step 1 - Locate the existing .ttml file</h3>\r\nLoad the page for the video you would like to add a translation for. You can find the TTML link under the Subtitles section of the video information sidebar.\r\n\r\n<a href=\"http://wptv.files.wordpress.com/2013/03/download-existing-ttml.jpg\"><img class=\"alignnone wp-image-24536 size-medium\" src=\"http://wptv.files.wordpress.com/2013/03/download-existing-ttml.jpg?w=210\" alt=\"download-existing-ttml\" width=\"210\" height=\"300\" /></a>\r\n<h3>Step 2 - Download and open the .ttml file</h3>\r\nDownload the existing caption file and then open it in a simple text-editor like Notepad or TextEdit. Avoid using applications like Word or Dreamweaver, because they will distort the TTML markup.\r\n<h3>Step 3 - Translate subtitle text</h3>\r\nInside the downloaded file, you\'ll see the speaker\'s words surrounded by &lt;p&gt; and &lt;/p&gt; tags. Translate all of the speaker\'s words into your language, but be careful not to change the surrounding &lt;p&gt; tags at all.\r\n\r\n<a href=\"http://wptv.files.wordpress.com/2013/03/raw-ttml.jpg\"><img class=\"alignnone\" src=\"http://wptv.files.wordpress.com/2013/03/raw-ttml.jpg?w=300\" alt=\"raw-ttml\" width=\"300\" height=\"155\" /></a>\r\n<h3>Step 4 - Save and upload your translated caption file</h3>\r\nWhen you\'re finished, save the file—being sure to use the original TTML file extension—and return to the WordPress.tv video page, then click on the \"Subtitle this video\" button at the bottom of the sidebar.\r\n\r\n<a href=\"http://wptv.files.wordpress.com/2013/03/08-subtitle.png\"><img class=\"alignnone wp-image-22172 size-medium\" src=\"http://wptv.files.wordpress.com/2013/03/08-subtitle.png?w=300\" alt=\"08 - subtitle\" width=\"300\" height=\"222\" /></a>\r\n\r\nOn the next page, choose your file for upload, select your language from the drop-down selector, and then click <strong>Submit</strong> button.\r\n\r\n<a href=\"http://wptv.files.wordpress.com/2013/03/09-upload.png\"><img class=\"alignnone wp-image-22173 size-medium\" src=\"http://wptv.files.wordpress.com/2013/03/09-upload.png?w=300\" alt=\"09 - upload\" width=\"300\" height=\"169\" /></a>\r\n\r\nSuccess! Your subtitles will go through a short moderation process, and then you can enjoy your newly captioned video in all its text-enriched glory. Thank you for helping out! :)','How to add captions or subtitles to a WordPress.tv video','','publish','closed','closed','','using-amara-org-to-caption-or-subtitle-a-wordpress-tv-video','','','2014-12-05 13:09:05','2014-12-05 20:09:05','',0,'https://wordpress.tv.ddev.site/?page_id=31',0,'page','',0),
(32,1,'2014-12-05 12:17:06','2014-12-05 19:17:06','Adding captions or translations is a great way to take your favorite wordpress.tv and share it with an even broader audience! It is easy to help us with this goal by submitting a caption or translation file for your favorite video. Just follow the steps below!\r\n<h2>Step-by-step video</h2>\r\n[wpvideo AhRoo4R8 w=700]\r\n<h2>Text instructions - Creating and uploading a new caption file</h2>\r\nThe tools at amara.org will help you to create your caption or translation file. So before you begin, be sure to create you <a href=\"http://www.amara.org/en/auth/login/?next=/\" target=\"_blank\">sign up for a free account on Amara.org</a>.\r\n\r\nIn addition to helping you create a caption file, the tools at amara.org also allow you to stop and start again in the middle of the captioning process. That way if you get interrupted, you can save your subtitles and pick up where you left off.\r\n\r\nOnce you have created your Amara.org account, you can follow these steps to create and upload your new caption file:\r\n<h3>Step 1 - Copy the video URL</h3>\r\nLocate the \"Med\" link in the Download section of the sidebar.\r\n\r\n<a href=\"http://wptv.files.wordpress.com/2013/03/01-select-medium.png\"><img class=\"alignnone wp-image-22165 size-full\" src=\"http://wptv.files.wordpress.com/2013/03/01-select-medium.png\" alt=\"01 - select medium\" width=\"242\" height=\"261\" /></a>\r\n\r\nRight-click on that link and select the Copy Video URL option.\r\n\r\n<a href=\"http://wptv.files.wordpress.com/2013/03/02-copy-video-url.png\"><img class=\"alignnone wp-image-22166 size-medium\" src=\"http://wptv.files.wordpress.com/2013/03/02-copy-video-url.png?w=300\" alt=\"02 - copy video url\" width=\"300\" height=\"211\" /></a>\r\n<h3>Step 2 - launch video in Amara</h3>\r\nGo to <a href=\"http://www.amara.org/en/videos/create/\" rel=\"nofollow\">http://www.amara.org/en/videos/create/</a> and enter the video URL you copied from wordpress.tv.\r\n\r\n<a href=\"http://wptv.files.wordpress.com/2013/03/03-paste-it-here.png\"><img class=\"size-medium wp-image-22167 alignnone\" src=\"http://wptv.files.wordpress.com/2013/03/03-paste-it-here.png?w=300\" alt=\"03 - paste it here\" width=\"300\" height=\"132\" /></a>\r\n\r\nNext click \"Subtitle Me\" and follow the instructions provided by <a href=\"http://amara.org\">Amara.org</a>\r\n\r\n<a href=\"http://wptv.files.wordpress.com/2013/03/04-click-subtitle-me.png\"><img class=\"alignnone wp-image-22168 size-full\" src=\"http://wptv.files.wordpress.com/2013/03/04-click-subtitle-me.png\" alt=\"04 - Click Subtitle Me\" width=\"274\" height=\"222\" /></a>\r\n<h3>Step 3 - Download the translation file</h3>\r\nOnce the video is subtitled at Amara.org, click on the link under View Subtitles, to the left of the video display.\r\n\r\n<a href=\"http://wptv.files.wordpress.com/2013/03/05-view-subtitles.png\"><img class=\"alignnone wp-image-22169 size-medium\" src=\"http://wptv.files.wordpress.com/2013/03/05-view-subtitles.png?w=300\" alt=\"05 - view subtitles\" width=\"300\" height=\"251\" /></a>\r\n\r\nNext click on the Download drop-down menu and select DFXP format.\r\n\r\n<a href=\"http://wptv.files.wordpress.com/2013/03/06-download-ttml.png\"><img class=\"alignnone wp-image-22170 size-medium\" src=\"http://wptv.files.wordpress.com/2013/03/06-download-ttml.png?w=300\" alt=\"06 - download TTML\" width=\"300\" height=\"154\" /></a>\r\n\r\nWhen you have downloaded the caption file to your computer, you should have a file that looks something like this: <strong>wordcamp-minneapolis-2014.dfxp</strong> In order to have this file work with wordpress.tv (which only accepts .ttml files) just edit the file extension to change it from .dfxp to .ttml, like so: <strong>wordcamp-minneapolis-2014.ttml</strong>\r\n<h3>Step 4 - Upload your caption file</h3>\r\nReturn to the WordPress.tv video page, and click on the \"Subtitle this video\" button at the bottom of the sidebar.\r\n\r\n<a href=\"http://wptv.files.wordpress.com/2013/03/08-subtitle.png\"><img class=\"alignnone wp-image-22172 size-medium\" src=\"http://wptv.files.wordpress.com/2013/03/08-subtitle.png?w=300\" alt=\"08 - subtitle\" width=\"300\" height=\"222\" /></a>\r\n\r\nOn the next page, choose your file for upload, select your language from the drop-down selector, and then click <strong>Submit</strong> button. <a href=\"http://wptv.files.wordpress.com/2013/03/09-upload.png\"><img class=\"alignnone wp-image-22173 size-medium\" src=\"http://wptv.files.wordpress.com/2013/03/09-upload.png?w=300\" alt=\"09 - upload\" width=\"300\" height=\"169\" /></a>\r\n\r\nSuccess! Your subtitles will go through a short moderation process, and then you can enjoy your newly captioned video in all its text-enriched glory. Thank you for helping out! :)\r\n<h2>Translating an existing caption file</h2>\r\nIn cases where there is already a caption file uploaded to a video, you do not need to use Amara at all, as it is usually much easier to translate the existing file instead.\r\n<h3>Step 1 - Locate the existing .ttml file</h3>\r\nLoad the page for the video you would like to add a translation for. You can find the TTML link under the Subtitles section of the video information sidebar.\r\n\r\n<a href=\"http://wptv.files.wordpress.com/2013/03/download-existing-ttml.jpg\"><img class=\"alignnone wp-image-24536 size-medium\" src=\"http://wptv.files.wordpress.com/2013/03/download-existing-ttml.jpg?w=210\" alt=\"download-existing-ttml\" width=\"210\" height=\"300\" /></a>\r\n<h3>Step 2 - Download and open the .ttml file</h3>\r\nDownload the existing caption file and then open it in a simple text-editor like Notepad or TextEdit. Avoid using applications like Word or Dreamweaver, because they will distort the TTML markup.\r\n<h3>Step 3 - Translate subtitle text</h3>\r\nInside the downloaded file, you\'ll see the speaker\'s words surrounded by &lt;p&gt; and &lt;/p&gt; tags. Translate all of the speaker\'s words into your language, but be careful not to change the surrounding &lt;p&gt; tags at all.\r\n\r\n<a href=\"http://wptv.files.wordpress.com/2013/03/raw-ttml.jpg\"><img class=\"alignnone\" src=\"http://wptv.files.wordpress.com/2013/03/raw-ttml.jpg?w=300\" alt=\"raw-ttml\" width=\"300\" height=\"155\" /></a>\r\n<h3>Step 4 - Save and upload your translated caption file</h3>\r\nWhen you\'re finished, save the file—being sure to use the original TTML file extension—and return to the WordPress.tv video page, then click on the \"Subtitle this video\" button at the bottom of the sidebar.\r\n\r\n<a href=\"http://wptv.files.wordpress.com/2013/03/08-subtitle.png\"><img class=\"alignnone wp-image-22172 size-medium\" src=\"http://wptv.files.wordpress.com/2013/03/08-subtitle.png?w=300\" alt=\"08 - subtitle\" width=\"300\" height=\"222\" /></a>\r\n\r\nOn the next page, choose your file for upload, select your language from the drop-down selector, and then click <strong>Submit</strong> button.\r\n\r\n<a href=\"http://wptv.files.wordpress.com/2013/03/09-upload.png\"><img class=\"alignnone wp-image-22173 size-medium\" src=\"http://wptv.files.wordpress.com/2013/03/09-upload.png?w=300\" alt=\"09 - upload\" width=\"300\" height=\"169\" /></a>\r\n\r\nSuccess! Your subtitles will go through a short moderation process, and then you can enjoy your newly captioned video in all its text-enriched glory. Thank you for helping out! :)','How to add captions or subtitles to a WordPress.tv video','','inherit','open','open','','31-revision-v1','','','2014-12-05 12:17:06','2014-12-05 19:17:06','',31,'https://wordpress.tv.ddev.site/2014/12/05/31-revision-v1/',0,'revision','',0),
(33,1,'2014-12-05 12:37:41','2014-12-05 19:37:41','<h3>Step 1 - Locate the existing .ttml file</h3>\r\nLoad the page for the video you would like to add a translation for. You can find the TTML link under the Subtitles section of the video information sidebar\r\n\r\n<a href=\"http://wptv.files.wordpress.com/2013/03/download-existing-ttml.jpg\"><img class=\"alignnone wp-image-24536 size-medium\" src=\"http://wptv.files.wordpress.com/2013/03/download-existing-ttml.jpg?w=210\" alt=\"download-existing-ttml\" width=\"210\" height=\"300\" /></a>\r\n<h3>Step 2 - Download and open the .ttml file</h3>\r\nDownload the existing caption file and then open it in a simple text-editor like Notepad or TextEdit. Avoid using applications like Word or Dreamweaver, because they will distort the TTML markup.\r\n<h3>Step 3 - Translate subtitle text</h3>\r\nInside the downloaded file, you\'ll see the speaker\'s words surrounded by &lt;p&gt; and &lt;/p&gt; tags. Translate all of the speaker\'s words into your language, but be careful not to change the surrounding &lt;p&gt; tags at all.\r\n\r\n<a href=\"http://wptv.files.wordpress.com/2013/03/raw-ttml.jpg\"><img class=\"alignnone\" src=\"http://wptv.files.wordpress.com/2013/03/raw-ttml.jpg?w=300\" alt=\"raw-ttml\" width=\"300\" height=\"155\" /></a>\r\n<h3>Step 4 - Save and upload your translated caption file</h3>\r\nWhen you\'re finished, save the file—being sure to use the original TTML file extension—and return to the WordPress.tv video page, then click on the \"Subtitle this video\" button at the bottom of the sidebar.\r\n\r\n<a href=\"http://wptv.files.wordpress.com/2013/03/08-subtitle.png\"><img class=\"alignnone wp-image-22172 size-medium\" src=\"http://wptv.files.wordpress.com/2013/03/08-subtitle.png?w=300\" alt=\"08 - subtitle\" width=\"300\" height=\"222\" /></a>\r\n\r\nOn the next page, choose your file for upload, select your language from the drop-down selector, and then click <strong>Submit</strong> button.\r\n\r\n<a href=\"http://wptv.files.wordpress.com/2013/03/09-upload.png\"><img class=\"alignnone wp-image-22173 size-medium\" src=\"http://wptv.files.wordpress.com/2013/03/09-upload.png?w=300\" alt=\"09 - upload\" width=\"300\" height=\"169\" /></a>\r\n\r\nSuccess! Your subtitles will go through a short moderation process, and then you can enjoy your newly captioned video in all its text-enriched glory. Thank you for helping out! :)','Translating an existing caption file','','inherit','open','open','','30-revision-v1','','','2014-12-05 12:37:41','2014-12-05 19:37:41','',30,'https://wordpress.tv.ddev.site/2014/12/05/30-revision-v1/',0,'revision','',0),
(34,1,'2014-12-05 12:38:16','2014-12-05 19:38:16','The tools at amara.org will help you to create your caption or translation file. So before you begin, be sure to create you <a href=\"http://www.amara.org/en/auth/login/?next=/\" target=\"_blank\">sign up</a> for a free account on Amara.org. In addition to helping you create a caption file, the tools at amara.org also allow you to stop and start again in the middle of the captioning process. That way if you get interrupted, you can save your subtitles and pick up where you left off.\r\n<h2>Uploading a new caption file</h2>\r\nIf you would like to caption or subtitle a video that does not yet have captions in your language, you can follow these steps to upload your own caption file:\r\n<h3>Step 1 - Copy the video URL</h3>\r\nLocate the \"Med\" link in the Download section of the sidebar.\r\n\r\n<a href=\"http://wptv.files.wordpress.com/2013/03/01-select-medium.png\"><img class=\"alignnone wp-image-22165 size-full\" src=\"http://wptv.files.wordpress.com/2013/03/01-select-medium.png\" alt=\"01 - select medium\" width=\"242\" height=\"261\" /></a>\r\n\r\nRight-click on that link and select the Copy Video URL option.\r\n\r\n<a href=\"http://wptv.files.wordpress.com/2013/03/02-copy-video-url.png\"><img class=\"alignnone wp-image-22166 size-medium\" src=\"http://wptv.files.wordpress.com/2013/03/02-copy-video-url.png?w=300\" alt=\"02 - copy video url\" width=\"300\" height=\"211\" /></a>\r\n<h3>Step 2 - launch video in Amara</h3>\r\nGo to <a href=\"http://www.amara.org/en/videos/create/\" rel=\"nofollow\">http://www.amara.org/en/videos/create/</a> and enter the video URL you copied from wordpress.tv.\r\n\r\n<a href=\"http://wptv.files.wordpress.com/2013/03/03-paste-it-here.png\"><img class=\"size-medium wp-image-22167 alignnone\" src=\"http://wptv.files.wordpress.com/2013/03/03-paste-it-here.png?w=300\" alt=\"03 - paste it here\" width=\"300\" height=\"132\" /></a>\r\n\r\nNext click \"Subtitle Me\" and follow the instructions provided by <a href=\"http://amara.org\">Amara.org</a>\r\n\r\n<a href=\"http://wptv.files.wordpress.com/2013/03/04-click-subtitle-me.png\"><img class=\"alignnone wp-image-22168 size-full\" src=\"http://wptv.files.wordpress.com/2013/03/04-click-subtitle-me.png\" alt=\"04 - Click Subtitle Me\" width=\"274\" height=\"222\" /></a>\r\n<h3>Step 3 - Download the translation file</h3>\r\nOnce the video is subtitled at Amara.org, click on the link under View Subtitles, to the left of the video display.\r\n\r\n<a href=\"http://wptv.files.wordpress.com/2013/03/05-view-subtitles.png\"><img class=\"alignnone wp-image-22169 size-medium\" src=\"http://wptv.files.wordpress.com/2013/03/05-view-subtitles.png?w=300\" alt=\"05 - view subtitles\" width=\"300\" height=\"251\" /></a>\r\n\r\nNext click on the Download drop-down menu and select DFXP format.\r\n\r\n<a href=\"http://wptv.files.wordpress.com/2013/03/06-download-ttml.png\"><img class=\"alignnone wp-image-22170 size-medium\" src=\"http://wptv.files.wordpress.com/2013/03/06-download-ttml.png?w=300\" alt=\"06 - download TTML\" width=\"300\" height=\"154\" /></a>\r\n\r\nWhen you have downloaded the caption file to your computer, you should have a file that looks something like this: <strong>wordcamp-minneapolis-2014.dfxp</strong> In order to have this file work with wordpress.tv (which only accepts .ttml files) just edit the file extension to change it from .dfxp to .ttml, like so: <strong>wordcamp-minneapolis-2014.ttml</strong>\r\n<h3>Step 4 - Upload your caption file</h3>\r\nReturn to the WordPress.tv video page, and click on the \"Subtitle this video\" button at the bottom of the sidebar.\r\n\r\n<a href=\"http://wptv.files.wordpress.com/2013/03/08-subtitle.png\"><img class=\"alignnone wp-image-22172 size-medium\" src=\"http://wptv.files.wordpress.com/2013/03/08-subtitle.png?w=300\" alt=\"08 - subtitle\" width=\"300\" height=\"222\" /></a>\r\n\r\nOn the next page, choose your file for upload, select your language from the drop-down selector, and then click <strong>Submit</strong> button. <a href=\"http://wptv.files.wordpress.com/2013/03/09-upload.png\"><img class=\"alignnone wp-image-22173 size-medium\" src=\"http://wptv.files.wordpress.com/2013/03/09-upload.png?w=300\" alt=\"09 - upload\" width=\"300\" height=\"169\" /></a>\r\n\r\nSuccess! Your subtitles will go through a short moderation process, and then you can enjoy your newly captioned video in all its text-enriched glory. Thank you for helping out! :)','Text Instructions:  How to add captions or subtitles a WordPress.tv video','','publish','open','closed','','text-instructions-how-to-add-captions-or-subtitles-a-wordpress-tv-video','','','2014-12-05 12:38:16','2014-12-05 19:38:16','',31,'https://wordpress.tv.ddev.site/?page_id=34',0,'page','',0),
(35,1,'2014-12-05 12:38:16','2014-12-05 19:38:16','The tools at amara.org will help you to create your caption or translation file. So before you begin, be sure to create you <a href=\"http://www.amara.org/en/auth/login/?next=/\" target=\"_blank\">sign up</a> for a free account on Amara.org. In addition to helping you create a caption file, the tools at amara.org also allow you to stop and start again in the middle of the captioning process. That way if you get interrupted, you can save your subtitles and pick up where you left off.\r\n<h2>Uploading a new caption file</h2>\r\nIf you would like to caption or subtitle a video that does not yet have captions in your language, you can follow these steps to upload your own caption file:\r\n<h3>Step 1 - Copy the video URL</h3>\r\nLocate the \"Med\" link in the Download section of the sidebar.\r\n\r\n<a href=\"http://wptv.files.wordpress.com/2013/03/01-select-medium.png\"><img class=\"alignnone wp-image-22165 size-full\" src=\"http://wptv.files.wordpress.com/2013/03/01-select-medium.png\" alt=\"01 - select medium\" width=\"242\" height=\"261\" /></a>\r\n\r\nRight-click on that link and select the Copy Video URL option.\r\n\r\n<a href=\"http://wptv.files.wordpress.com/2013/03/02-copy-video-url.png\"><img class=\"alignnone wp-image-22166 size-medium\" src=\"http://wptv.files.wordpress.com/2013/03/02-copy-video-url.png?w=300\" alt=\"02 - copy video url\" width=\"300\" height=\"211\" /></a>\r\n<h3>Step 2 - launch video in Amara</h3>\r\nGo to <a href=\"http://www.amara.org/en/videos/create/\" rel=\"nofollow\">http://www.amara.org/en/videos/create/</a> and enter the video URL you copied from wordpress.tv.\r\n\r\n<a href=\"http://wptv.files.wordpress.com/2013/03/03-paste-it-here.png\"><img class=\"size-medium wp-image-22167 alignnone\" src=\"http://wptv.files.wordpress.com/2013/03/03-paste-it-here.png?w=300\" alt=\"03 - paste it here\" width=\"300\" height=\"132\" /></a>\r\n\r\nNext click \"Subtitle Me\" and follow the instructions provided by <a href=\"http://amara.org\">Amara.org</a>\r\n\r\n<a href=\"http://wptv.files.wordpress.com/2013/03/04-click-subtitle-me.png\"><img class=\"alignnone wp-image-22168 size-full\" src=\"http://wptv.files.wordpress.com/2013/03/04-click-subtitle-me.png\" alt=\"04 - Click Subtitle Me\" width=\"274\" height=\"222\" /></a>\r\n<h3>Step 3 - Download the translation file</h3>\r\nOnce the video is subtitled at Amara.org, click on the link under View Subtitles, to the left of the video display.\r\n\r\n<a href=\"http://wptv.files.wordpress.com/2013/03/05-view-subtitles.png\"><img class=\"alignnone wp-image-22169 size-medium\" src=\"http://wptv.files.wordpress.com/2013/03/05-view-subtitles.png?w=300\" alt=\"05 - view subtitles\" width=\"300\" height=\"251\" /></a>\r\n\r\nNext click on the Download drop-down menu and select DFXP format.\r\n\r\n<a href=\"http://wptv.files.wordpress.com/2013/03/06-download-ttml.png\"><img class=\"alignnone wp-image-22170 size-medium\" src=\"http://wptv.files.wordpress.com/2013/03/06-download-ttml.png?w=300\" alt=\"06 - download TTML\" width=\"300\" height=\"154\" /></a>\r\n\r\nWhen you have downloaded the caption file to your computer, you should have a file that looks something like this: <strong>wordcamp-minneapolis-2014.dfxp</strong> In order to have this file work with wordpress.tv (which only accepts .ttml files) just edit the file extension to change it from .dfxp to .ttml, like so: <strong>wordcamp-minneapolis-2014.ttml</strong>\r\n<h3>Step 4 - Upload your caption file</h3>\r\nReturn to the WordPress.tv video page, and click on the \"Subtitle this video\" button at the bottom of the sidebar.\r\n\r\n<a href=\"http://wptv.files.wordpress.com/2013/03/08-subtitle.png\"><img class=\"alignnone wp-image-22172 size-medium\" src=\"http://wptv.files.wordpress.com/2013/03/08-subtitle.png?w=300\" alt=\"08 - subtitle\" width=\"300\" height=\"222\" /></a>\r\n\r\nOn the next page, choose your file for upload, select your language from the drop-down selector, and then click <strong>Submit</strong> button. <a href=\"http://wptv.files.wordpress.com/2013/03/09-upload.png\"><img class=\"alignnone wp-image-22173 size-medium\" src=\"http://wptv.files.wordpress.com/2013/03/09-upload.png?w=300\" alt=\"09 - upload\" width=\"300\" height=\"169\" /></a>\r\n\r\nSuccess! Your subtitles will go through a short moderation process, and then you can enjoy your newly captioned video in all its text-enriched glory. Thank you for helping out! :)','Text Instructions:  How to add captions or subtitles a WordPress.tv video','','inherit','open','open','','34-revision-v1','','','2014-12-05 12:38:16','2014-12-05 19:38:16','',34,'https://wordpress.tv.ddev.site/2014/12/05/34-revision-v1/',0,'revision','',0),
(36,1,'2014-12-05 12:39:36','2014-12-05 19:39:36','[polldaddy type=\"iframe\" survey=\"95B210358C087954\" height=\"auto\" domain=\"wordcampcentral\" id=\"wordpress-tv-moderator-application\"]','Apply to be a WordPress.tv Moderator','','publish','open','closed','','apply-to-be-a-wordpress-tv-moderator','','','2014-12-05 12:39:36','2014-12-05 19:39:36','',0,'https://wordpress.tv.ddev.site/?page_id=36',0,'page','',0),
(37,1,'2014-12-05 12:39:36','2014-12-05 19:39:36','[polldaddy type=\"iframe\" survey=\"95B210358C087954\" height=\"auto\" domain=\"wordcampcentral\" id=\"wordpress-tv-moderator-application\"]','Apply to be a WordPress.tv Moderator','','inherit','open','open','','36-revision-v1','','','2014-12-05 12:39:36','2014-12-05 19:39:36','',36,'https://wordpress.tv.ddev.site/2014/12/05/36-revision-v1/',0,'revision','',0),
(38,1,'2014-12-05 13:06:48','2014-12-05 20:06:48','','Submit video','','publish','closed','closed','','submit-video','','','2014-12-05 13:06:56','2014-12-05 20:06:56','',0,'https://wordpress.tv.ddev.site/?page_id=38',0,'page','',0),
(39,1,'2014-12-05 13:06:48','2014-12-05 20:06:48','','Submit video','','inherit','open','open','','38-revision-v1','','','2014-12-05 13:06:48','2014-12-05 20:06:48','',38,'https://wordpress.tv.ddev.site/2014/12/05/38-revision-v1/',0,'revision','',0),
(51,1,'2014-12-05 15:10:20','2014-12-05 22:10:20','[wpvideo XzOxjAUq]','Tracy Levesque: Teaching People to WordPress','WordPress is popular which means many people want to learn how to use it via a classroom setting or one-on-one instruction. Having been a teacher of WordPress for several years, Tracy has  experienced the ups and downs of teaching WordPress and has developed techniques that work well for students. In her presentation Tracy shares tips, tricks and things to avoid when teaching folks to use WordPress.\r\n\r\n<a href=\"//slides.thetracyl.com/wcsf2014/#/\" target=\"_blank\">Presentation Slides &raquo;</a>','publish','open','closed','','tracy-levesque-teaching-people-to-wordpress','','','2014-12-05 15:39:22','2014-12-05 22:39:22','',0,'https://wordpress.tv.ddev.site/?p=51',0,'post','',0),
(52,1,'2014-12-05 15:10:20','2014-12-05 22:10:20','[wpvideo XzOxjAUq]','Tracy Levesque: Teaching People to WordPress','WordPress is popular which means many people want to learn how to use it via a classroom setting or one-on-one instruction. Having been a teacher of WordPress for several years, Tracy has  experienced the ups and downs of teaching WordPress and has developed techniques that work well for students. In her presentation Tracy shares tips, tricks and things to avoid when teaching folks to use WordPress.\r\n\r\n<a href=\"//slides.thetracyl.com/wcsf2014/#/\" target=\"_blank\">Presentation Slides &raquo;</a>','inherit','open','open','','51-revision-v1','','','2014-12-05 15:10:20','2014-12-05 22:10:20','',51,'https://wordpress.tv.ddev.site/2014/12/05/51-revision-v1/',0,'revision','',0),
(53,1,'2014-12-05 15:15:09','2014-12-05 22:15:09','<p>[wpvideo XzOxjAUq]</p>\r\n','Tracy Levesque: Teaching People to WordPress','WordPress is popular which means many people want to learn how to use it via a classroom setting or one-on-one instruction. Having been a teacher of WordPress for several years, Tracy has  experienced the ups and downs of teaching WordPress and has developed techniques that work well for students. In her presentation Tracy shares tips, tricks and things to avoid when teaching folks to use WordPress.\r\n\r\n<a href=\"//slides.thetracyl.com/wcsf2014/#/\" target=\"_blank\">Presentation Slides &raquo;</a>','inherit','open','open','','51-revision-v1','','','2014-12-05 15:15:09','2014-12-05 22:15:09','',51,'https://wordpress.tv.ddev.site/2014/12/05/51-revision-v1/',0,'revision','',0),
(54,1,'2014-12-05 15:27:17','2014-12-05 22:27:17','[wpvideo XzOxjAUq]','Tracy Levesque: Teaching People to WordPress','WordPress is popular which means many people want to learn how to use it via a classroom setting or one-on-one instruction. Having been a teacher of WordPress for several years, Tracy has  experienced the ups and downs of teaching WordPress and has developed techniques that work well for students. In her presentation Tracy shares tips, tricks and things to avoid when teaching folks to use WordPress.\r\n\r\n<a href=\"//slides.thetracyl.com/wcsf2014/#/\" target=\"_blank\">Presentation Slides &raquo;</a>','inherit','open','open','','51-revision-v1','','','2014-12-05 15:27:17','2014-12-05 22:27:17','',51,'https://wordpress.tv.ddev.site/2014/12/05/51-revision-v1/',0,'revision','',0),
(55,1,'2014-12-05 15:48:45','2014-12-05 22:48:45','[wpvideo bUdzKMro]','Introducing WordPress 4.0 \"Benny\"','WordPress 4.0 \"Benny\" (named after jazz great Benny Goodman) is all about deepening the seamless experience of creating, managing, and publishing your content. You can learn more about the release <a href=\"http://wordpress.org/news/2014/09/benny/\" target=\"_blank\">here</a>.','publish','open','open','','introducing-wordpress-4-0-benny','','','2014-12-05 15:48:45','2014-12-05 22:48:45','',0,'https://wordpress.tv.ddev.site/?p=55',0,'post','',0),
(56,1,'2014-12-05 15:47:50','2014-12-05 22:47:50','[wpvideo bUdzKMro]','Introducing WordPress 4.0 \"Benny\"','WordPress 4.0 \"Benny\" (named after jazz great Benny Goodman) is all about deepening the seamless experience of creating, managing, and publishing your content. You can learn more about the release <a href=\"http://wordpress.org/news/2014/09/benny/\" target=\"_blank\">here</a>.','inherit','open','open','','55-revision-v1','','','2014-12-05 15:47:50','2014-12-05 22:47:50','',55,'https://wordpress.tv.ddev.site/2014/12/05/55-revision-v1/',0,'revision','',0),
(57,1,'2014-12-05 15:50:29','2014-12-05 22:50:29','[wpvideo 17AccN9i]','WordPress TV Moderator','','publish','open','open','','wordpress-tv-moderator','','','2014-12-05 15:51:54','2014-12-05 22:51:54','',0,'https://wordpress.tv.ddev.site/?p=57',0,'post','',0),
(58,1,'2014-12-05 15:50:29','2014-12-05 22:50:29','[wpvideo 17AccN9i]','WordPress TV Moderator','','inherit','open','open','','57-revision-v1','','','2014-12-05 15:50:29','2014-12-05 22:50:29','',57,'https://wordpress.tv.ddev.site/2014/12/05/57-revision-v1/',0,'revision','',0),
(59,1,'2014-12-05 17:14:53','2014-12-06 00:14:53','[wpvideo GmPDhkyi]','Matt Mullenweg: The State of the Word 2014','State of the Word WordCamp San Francisco 2014\r\n\r\n<a href=\"http://www.slideshare.net/photomatt/state-of-the-word-2014\" target=\"_blank\">Presentation Slides &raquo;</a>\r\n\r\nSee also: <a href=\"http://wordpress.tv/2014/10/26/matt-mullenweg-state-of-the-word-2014-qa/\">Q&amp;A that followed</a> and <a href=\"http://ma.tt/2014/10/sotw-2014/\">summary post on Matt\'s site</a>.','publish','open','open','','matt-mullenweg-the-state-of-the-word-2014','','','2014-12-05 17:26:54','2014-12-06 00:26:54','',0,'https://wordpress.tv.ddev.site/?p=59',0,'post','',0),
(60,1,'2014-12-05 17:14:53','2014-12-06 00:14:53','[wpvideo GmPDhkyi]','Matt Mullenweg: The State of the Word 2014','','inherit','open','open','','59-revision-v1','','','2014-12-05 17:14:53','2014-12-06 00:14:53','',59,'https://wordpress.tv.ddev.site/2014/12/05/59-revision-v1/',0,'revision','',0),
(61,1,'2014-12-05 17:15:41','2014-12-06 00:15:41','[wpvideo GmPDhkyi]','Matt Mullenweg: The State of the Word 2014','State of the Word WordCamp San Francisco 2014\r\n\r\n<a href=\"http://www.slideshare.net/photomatt/state-of-the-word-2014\" target=\"_blank\">Presentation Slides &raquo;</a>\r\n\r\nSee also: <a href=\"http://wordpress.tv/2014/10/26/matt-mullenweg-state-of-the-word-2014-qa/\">Q&amp;A that followed</a> and <a href=\"http://ma.tt/2014/10/sotw-2014/\">summary post on Matt\'s site</a>.','inherit','open','open','','59-revision-v1','','','2014-12-05 17:15:41','2014-12-06 00:15:41','',59,'https://wordpress.tv.ddev.site/2014/12/05/59-revision-v1/',0,'revision','',0),
(63,1,'2014-12-05 17:18:55','2014-12-06 00:18:55','[wpvideo jVXZrfw6]','Interview with Sara Rosso at WordCamp Paris 2014','Aurélien Denis is interviewing Sara Rosso, speaker at WordCamp Paris 2014, where she presented her talk \"WordPress Agencies – Facing Challenges for the Next 10 Years\".','publish','open','open','','interview-with-sara-rosso-at-wordcamp-paris-2014','','','2014-12-05 17:20:01','2014-12-06 00:20:01','',0,'https://wordpress.tv.ddev.site/?p=63',0,'post','',0),
(64,1,'2014-12-05 17:18:55','2014-12-06 00:18:55','[wpvideo jVXZrfw6]','Interview with Sara Rosso at WordCamp Paris 2014','Aurélien Denis is interviewing Sara Rosso, speaker at WordCamp Paris 2014, where she presented her talk \"WordPress Agencies – Facing Challenges for the Next 10 Years\".','inherit','open','open','','63-revision-v1','','','2014-12-05 17:18:55','2014-12-06 00:18:55','',63,'https://wordpress.tv.ddev.site/2014/12/05/63-revision-v1/',0,'revision','',0),
(65,1,'2014-12-05 17:24:03','2014-12-06 00:24:03','[wpvideo 6G3ymetL]','Sara Cannon: Smart Design','Fast, simple, SMART. Mobile devices have forever changed the way we interact with content. Now we have to consider many things such as HiDPI graphics, responsive design, speed, UI/UX patterns, touch target sizes, gestures, and more. All while not losing track of what’s important: Content. This presentation discusses the influence of mobile on design trends and learn implementation techniques of smart design.\r\n\r\n<a href=\"http://www.slideshare.net/saracannon/smart-design-wordcamp-nyc\" target=\"_blank\">Presentation Slides &raquo;</a>','publish','open','open','','sara-cannon-smart-design','','','2014-12-05 17:26:38','2014-12-06 00:26:38','',0,'https://wordpress.tv.ddev.site/?p=65',0,'post','',0),
(66,1,'2014-12-05 17:24:03','2014-12-06 00:24:03','[wpvideo 6G3ymetL]','Sara Cannon: Smart Design','Fast, simple, SMART. Mobile devices have forever changed the way we interact with content. Now we have to consider many things such as HiDPI graphics, responsive design, speed, UI/UX patterns, touch target sizes, gestures, and more. All while not losing track of what’s important: Content. This presentation discusses the influence of mobile on design trends and learn implementation techniques of smart design.\r\n\r\n<a href=\"http://www.slideshare.net/saracannon/smart-design-wordcamp-nyc\" target=\"_blank\">Presentation Slides &raquo;</a>','inherit','open','open','','65-revision-v1','','','2014-12-05 17:24:03','2014-12-06 00:24:03','',65,'https://wordpress.tv.ddev.site/2014/12/05/65-revision-v1/',0,'revision','',0),
(67,1,'2014-12-05 17:46:09','2014-12-06 00:46:09',' ','','','publish','open','open','','67','','','2014-12-05 17:49:43','2014-12-06 00:49:43','',15,'https://wordpress.tv.ddev.site/?p=67',1,'nav_menu_item','',0),
(70,1,'2014-12-05 17:59:23','2014-12-06 00:59:23',' ','','','publish','open','open','','70','','','2014-12-05 17:59:23','2014-12-06 00:59:23','',0,'https://wordpress.tv.ddev.site/?p=70',1,'nav_menu_item','',0),
(71,1,'2014-12-05 17:59:23','2014-12-06 00:59:23',' ','','','publish','open','open','','71','','','2014-12-05 17:59:23','2014-12-06 00:59:23','',0,'https://wordpress.tv.ddev.site/?p=71',2,'nav_menu_item','',0),
(72,1,'2023-11-17 12:21:24','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2023-11-17 12:21:24','0000-00-00 00:00:00','',0,'https://wordpress.tv.ddev.site/?p=72',0,'post','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES
(1,51,0),
(10,3,0),
(12,5,0),
(13,5,0),
(14,5,0),
(15,10,0),
(20,10,0),
(21,10,0),
(22,10,0),
(23,11,0),
(24,11,0),
(25,11,0),
(51,4,0),
(51,12,0),
(51,14,0),
(51,16,0),
(51,17,0),
(51,18,0),
(51,19,0),
(51,20,0),
(51,21,1),
(51,22,1),
(51,23,1),
(55,7,0),
(55,22,1),
(55,27,1),
(55,28,1),
(55,29,2),
(57,4,0),
(57,6,0),
(57,22,1),
(57,30,0),
(57,31,1),
(57,32,0),
(59,12,0),
(59,14,0),
(59,16,0),
(59,22,1),
(59,23,1),
(59,33,0),
(59,34,0),
(59,35,1),
(63,8,0),
(63,12,0),
(63,16,0),
(63,22,1),
(63,36,0),
(63,37,1),
(63,38,2),
(63,39,3),
(63,40,4),
(63,41,1),
(63,42,2),
(63,43,1),
(65,12,0),
(65,16,0),
(65,22,1),
(65,33,0),
(65,44,0),
(65,45,0),
(65,46,0),
(65,47,0),
(65,48,0),
(65,49,1),
(65,50,1),
(67,2,0),
(70,9,0),
(71,9,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES
(1,1,'category','',0,0),
(2,2,'nav_menu','',0,1),
(3,3,'nav_menu','',0,1),
(4,4,'post_tag','',0,2),
(5,5,'nav_menu','',0,3),
(6,6,'category','',0,1),
(7,7,'category','',0,1),
(8,8,'category','',0,1),
(9,9,'nav_menu','',0,2),
(10,10,'nav_menu','',0,4),
(11,11,'nav_menu','',0,3),
(12,12,'category','',0,4),
(13,13,'category','',0,0),
(14,14,'category','',13,2),
(15,15,'category','',0,0),
(16,16,'category','',15,4),
(17,17,'post_tag','',0,1),
(18,18,'post_tag','',0,1),
(19,19,'post_tag','',0,1),
(20,20,'post_tag','',0,1),
(21,21,'speakers','',0,1),
(22,22,'language','',0,6),
(23,23,'event','',0,2),
(24,24,'category','',0,0),
(25,25,'category','',24,0),
(26,26,'category','',24,0),
(27,27,'producer','',0,1),
(28,28,'flavor','',0,1),
(29,29,'flavor','',0,1),
(30,30,'post_tag','',0,1),
(31,31,'speakers','',0,1),
(32,32,'category','',0,1),
(33,33,'post_tag','',0,2),
(34,34,'post_tag','',0,1),
(35,35,'speakers','',0,1),
(36,36,'category','',13,1),
(37,37,'producer','',0,1),
(38,38,'producer','',0,1),
(39,39,'producer','',0,1),
(40,40,'producer','',0,1),
(41,41,'speakers','',0,1),
(42,42,'speakers','',0,1),
(43,43,'event','',0,1),
(44,44,'category','',13,1),
(45,45,'post_tag','',0,1),
(46,46,'post_tag','',0,1),
(47,47,'post_tag','',0,1),
(48,48,'post_tag','',0,1),
(49,49,'speakers','',0,1),
(50,50,'event','',0,1),
(51,51,'link_category','',0,1);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL,
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES
(1,'Uncategorized','uncategorized',0),
(2,'Browse by Year','browse-by-year',0),
(3,'Subtitled videos','subtitled-videos',0),
(4,'Subtitles','subtitles',0),
(5,'Featured Categories','featured-categories',0),
(6,'How To','how-to',0),
(7,'Announcement','announcement',0),
(8,'Interview','interview',0),
(9,'Featured WordCamps','featured-wordcamps',0),
(10,'Footer','footer',0),
(11,'Primary','primary',0),
(12,'WordCampTV','wordcamptv',0),
(13,'Location','location',0),
(14,'San Francisco','san-francisco',0),
(15,'Year','year',0),
(16,'2014','2014',0),
(17,'Beginner','beginner',0),
(18,'Captions','captions',0),
(19,'communication','communication',0),
(20,'teaching','teaching',0),
(21,'Tracy Levesque','tracy-levesque',0),
(22,'English','english',0),
(23,'WordCamp San Francisco 2014','wordcamp-san-francisco-2014',0),
(24,'News','news',0),
(25,'New Features','new-features',0),
(26,'Releases','releases',0),
(27,'Michael Pick','michael-pick',0),
(28,'4.0','4-0',0),
(29,'WordPress.org','wordpress-org',0),
(30,'moderator tools','moderator-tools',0),
(31,'Michael Wiginton','michael-wiginton',0),
(32,'WPTV Mods','wptv-mods',0),
(33,'Featured','featured',0),
(34,'State of the Word','state-of-the-word',0),
(35,'Matt Mullenweg','matt-mullenweg',0),
(36,'Paris','paris',0),
(37,'Adrian Koss','adrian-koss',0),
(38,'Aurélien Denis','aurelien-denis',0),
(39,'Déborah Donnier','deborah-donnier',0),
(40,'Olivier Gobet','olivier-gobet',0),
(41,'Sara Rosso','sara-rosso',0),
(42,'Aurélien Denis','aurelien-denis',0),
(43,'WordCamp Paris 2014','wordcamp-paris-2014',0),
(44,'New York','new-york',0),
(45,'analytics','analytics',0),
(46,'design','design',0),
(47,'icon font','icon-font',0),
(48,'ux design','ux-design',0),
(49,'Sara Cannon','sara-cannon',0),
(50,'WordCamp NYC 2014','wordcamp-nyc-2014',0),
(51,'Blogroll','blogroll',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES
(1,1,'nickname','admin'),
(2,1,'first_name',''),
(3,1,'last_name',''),
(4,1,'description',''),
(5,1,'rich_editing','true'),
(6,1,'comment_shortcuts','false'),
(7,1,'admin_color','fresh'),
(8,1,'use_ssl','0'),
(9,1,'show_admin_bar_front','true'),
(10,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),
(11,1,'wp_user_level','10'),
(12,1,'dismissed_wp_pointers','wp360_locks,wp390_widgets,wp410_dfw'),
(13,1,'show_welcome_panel','0'),
(14,1,'session_tokens','a:1:{s:64:\"ab86c8affb8b6471f33161bbf10bee2ea77f42c96b5fdb8beb4ef8acb9208fa7\";a:4:{s:10:\"expiration\";i:1702236455;s:2:\"ip\";s:10:\"172.28.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36\";s:5:\"login\";i:1702063655;}}'),
(15,1,'wp_dashboard_quick_press_last_post_id','72'),
(16,1,'managenav-menuscolumnshidden','a:4:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";}'),
(17,1,'metaboxhidden_nav-menus','a:3:{i:0;s:8:\"add-post\";i:1;s:12:\"add-producer\";i:2;s:10:\"add-flavor\";}'),
(18,1,'closedpostboxes_page','a:0:{}'),
(19,1,'metaboxhidden_page','a:4:{i:0;s:10:\"postcustom\";i:1;s:11:\"commentsdiv\";i:2;s:7:\"slugdiv\";i:3;s:9:\"authordiv\";}'),
(20,1,'wp_user-settings','editor=tinymce'),
(21,1,'wp_user-settings-time','1417806916'),
(22,1,'closedpostboxes_post','a:0:{}'),
(23,1,'metaboxhidden_post','a:3:{i:0;s:13:\"trackbacksdiv\";i:1;s:7:\"slugdiv\";i:2;s:9:\"authordiv\";}'),
(24,1,'wp_media_library_mode','list'),
(25,1,'nav_menu_recently_edited','9'),
(26,1,'closedpostboxes_nav-menus','a:0:{}'),
(27,1,'closedpostboxes_nav-menus','a:0:{}'),
(28,1,'community-events-location','a:1:{s:2:\"ip\";s:10:\"172.30.8.0\";}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES
(1,'admin','$P$Bl.eTZB.Jtb.VfV7uGVLdOXjFUQb6V/','admin','foo@example.org','','2014-12-05 18:26:48','',0,'admin');
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

-- Dump completed on 2023-12-08 19:27:50
