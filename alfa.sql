-- MySQL dump 10.13  Distrib 5.1.54, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: alfa_development
-- ------------------------------------------------------
-- Server version	5.1.54-1ubuntu4

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_admins_on_email` (`email`),
  UNIQUE KEY `index_admins_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'admin@admin.com','$2a$10$KKgi8h7AJbfiDqOMyBQluu26Urc96BhaYxxIhR4puOydb1Rdy.xlC',NULL,NULL,NULL,1,'2011-08-15 21:39:31','2011-08-15 21:39:31','127.0.0.1','127.0.0.1','2011-08-15 21:39:31','2011-08-15 21:39:31'),(2,'admin@alfadev.com','$2a$10$LCp31xKsFix.A2f/wMOuIeXremWuczWl8fIENPKuWqTCgZXZB2yh2',NULL,NULL,NULL,8,'2011-08-24 17:08:54','2011-08-24 15:06:15','127.0.0.1','124.125.8.117','2011-08-15 22:02:02','2011-08-24 17:08:54'),(3,'jdkealy@gmail.com','$2a$10$sAeeC/tdoAs2wkd37f7KKeQLQgK2JMtNi4bh7ZX9lIIfWZuYLybbq',NULL,NULL,NULL,3,'2011-08-16 21:28:10','2011-08-16 19:36:54','127.0.0.1','127.0.0.1','2011-08-16 18:25:43','2011-08-16 21:28:10');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries`
--

DROP TABLE IF EXISTS `galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `galleries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `photo_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_file_size` int(11) DEFAULT NULL,
  `photo_updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries`
--

LOCK TABLES `galleries` WRITE;
/*!40000 ALTER TABLE `galleries` DISABLE KEYS */;
/*!40000 ALTER TABLE `galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image_mime_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_size` int(11) DEFAULT NULL,
  `image_width` int(11) DEFAULT NULL,
  `image_height` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `image_uid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_ext` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `photo_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_file_size` int(11) DEFAULT NULL,
  `photo_updated_at` datetime DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES (8,'Michael Namer','Principal','<p><span class=\"Apple-style-span\" style=\"font-family: arial, sans-serif; font-size: 13px;\">The principal of Alfa Development, Michael Namer has been developing downtown Manhattan real estate for over thirty years. A true renaissance man and great supporter of the arts &ndash; particularly in downtown New York, Michaelʼs passion for and knowledge of New York history, culture, and architecture informs every stage of Alfaʼs developments.<br /><br /></span></p>','2011-08-17 17:10:09','2011-08-22 21:47:11','tm_img_1.jpg','image/jpeg',3634,'2011-08-17 17:10:08',0),(9,'Frank Mattiello','Senior Project Manager','<p><span class=\"Apple-style-span\" style=\"font-family: arial, sans-serif; font-size: 13px;\">With over twenty years of construction management experience, and 30 + years in the industry, Frank Mattiello still prides himself on approaching each of his projects with a high level of detail and an open mind. Prior to joining Alfa Development Frank was the officer in charge of Summit Constructionʼs NYC division and oversaw all construction operations for major projects at 385 West 12th street, and 240 West Broadway. Working for CB Developers (Charlie Blaichman) for almost a decade before Summit, Frank took&nbsp;</span><span class=\"Apple-style-span\" style=\"font-family: arial, sans-serif; font-size: 13px;\">the leadership on a number of challenging projects working with Richard Meier at 173 &amp; 176 Perry Street, on 195 Bowery Street (a nineteen story steel frame addition to an existing building), 219 West 19th street, 48-50 West 14th Street, 60 West 14th Street, and 17 East 13th Street. Frank is currently obtaining a certification as a LEED accredited professional and holds a certificate in Project Management from the American Academy of Project Management.</span></p>','2011-08-17 17:11:44','2011-08-22 21:47:20','tm_img_none.jpg','image/jpeg',477,'2011-08-17 17:11:43',5),(10,'Matthew A. Namer','Vice President of Operations','<p><span class=\"Apple-style-span\" style=\"font-family: arial, sans-serif; font-size: 13px;\">As Vice President of Operations, Matthew oversees tasks that staff members work on, monitors the organization to prevent gaps and overlaps in the teamʼs workload and is responsible for hiring new personnel. Utilizing sophisticated technology to effect positive communication Matthew is constantly working on improving protocols to increase the teamʼs efficiency. As an expert on zoning regulations and analysis, Matthew also directs aspects of Alfaʼs business related to business development. Over the past nine years, Matthew has worked with Alfa in a number of different capacities and has a Bachelors degree from New York University.<br /><br /></span></p>','2011-08-17 17:12:25','2011-08-22 21:47:24','tm_img_none.jpg','image/jpeg',477,'2011-08-17 17:12:25',10),(11,'Mary Louise Perlman',' Director of Development & Marketing','<p><span class=\"Apple-style-span\" style=\"font-family: arial, sans-serif; font-size: 13px;\">With over 7 years of experience in New Yorkʼs luxury development market, Mary Louise recently joined Alfaʼs team. Formerly a Project Manager and Sales Manager at Corcoran Sunshine Marketing Group, Mary Louise has participated in the pre development, marketing, and sales of over 10 luxury residential condominiums in Manhattan since 2006 totaling sales of almost $1 billion &ndash; including 151 Wooster and 311E11: Village Green. Born and raised in New York City, Mary Louise recognizes the value that Alfa brings to the neighborhoods in which their buildings are developed. Her experience and marketing savvy provide Alfa Development with heightened resources to recognize and more effectively pursue development opportunities.</span></p>','2011-08-22 20:58:57','2011-08-22 21:47:27','tm_img_none.jpg','image/jpeg',477,'2011-08-22 20:58:56',15),(12,'Jake Namer','Executive Vice President','<p><span class=\"Apple-style-span\" style=\"font-family: arial, sans-serif; font-size: 13px;\">Jake Namer has been acting Executive Vice President for Alfa since 2008 throughout the 151 Wooster and 311E11: Village Green projects. As Executive Vice President, Jakeʼs contributes to all the major divisions of Alfaʼs business including construction management, marketing and finance and acts as Alfaʼs treasurer, liaison for city governing bodies, and coordinator of all major contractual agreements. Prior to joining Alfa, Jake worked in the Commercial Real Estate division of Commerce Bank, and as a financial analyst for J.P. Morgan. Jake holds a Master of Science in Real Estate from New York University and a Bachelorʼs in Business Administration from The University of Miami.</span></p>','2011-08-22 21:00:30','2011-08-22 21:47:14','tm_img_none.jpg','image/jpeg',477,'2011-08-22 21:00:30',1);
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page_part_translations`
--

DROP TABLE IF EXISTS `page_part_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `page_part_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_part_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_page_part_translations_on_page_part_id` (`page_part_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page_part_translations`
--

LOCK TABLES `page_part_translations` WRITE;
/*!40000 ALTER TABLE `page_part_translations` DISABLE KEYS */;
INSERT INTO `page_part_translations` VALUES (1,1,'en','<p>Welcome to our site. This is just a place holder page while we gather our content.</p>','2011-08-15 19:42:33','2011-08-15 19:42:33'),(2,2,'en','<p>This is another block of content over here.</p>','2011-08-15 19:42:33','2011-08-15 19:42:33'),(3,3,'en','<h2>Sorry, there was a problem...</h2><p>The page you requested was not found.</p><p><a href=\'/\'>Return to the home page</a></p>','2011-08-15 19:42:33','2011-08-15 19:42:33'),(4,4,'en','<p>This is just a standard text page example. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin metus dolor, hendrerit sit amet, aliquet nec, posuere sed, purus. Nullam et velit iaculis odio sagittis placerat. Duis metus tellus, pellentesque ut, luctus id, egestas a, lorem. Praesent vitae mauris. Aliquam sed nulla. Sed id nunc vitae leo suscipit viverra. Proin at leo ut lacus consequat rhoncus. In hac habitasse platea dictumst. Nunc quis tortor sed libero hendrerit dapibus.\n\nInteger interdum purus id erat. Duis nec velit vitae dolor mattis euismod. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Suspendisse pellentesque dignissim lacus. Nulla semper euismod arcu. Suspendisse egestas, erat a consectetur dapibus, felis orci cursus eros, et sollicitudin purus urna et metus. Integer eget est sed nunc euismod vestibulum. Integer nulla dui, tristique in, euismod et, interdum imperdiet, enim. Mauris at lectus. Sed egestas tortor nec mi.</p>','2011-08-15 19:42:33','2011-08-15 19:42:33'),(5,5,'en','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus fringilla nisi a elit. Duis ultricies orci ut arcu. Ut ac nibh. Duis blandit rhoncus magna. Pellentesque semper risus ut magna. Etiam pulvinar tellus eget diam. Morbi blandit. Donec pulvinar mauris at ligula. Sed pellentesque, ipsum id congue molestie, lectus risus egestas pede, ac viverra diam lacus ac urna. Aenean elit.</p>','2011-08-15 19:42:33','2011-08-15 19:42:33');
/*!40000 ALTER TABLE `page_part_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page_parts`
--

DROP TABLE IF EXISTS `page_parts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `page_parts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `position` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_page_parts_on_id` (`id`),
  KEY `index_page_parts_on_page_id` (`page_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page_parts`
--

LOCK TABLES `page_parts` WRITE;
/*!40000 ALTER TABLE `page_parts` DISABLE KEYS */;
INSERT INTO `page_parts` VALUES (1,1,'Body','<p>Welcome to our site. This is just a place holder page while we gather our content.</p>',0,'2011-08-15 19:42:33','2011-08-15 19:42:33'),(2,1,'Side Body','<p>This is another block of content over here.</p>',1,'2011-08-15 19:42:33','2011-08-15 19:42:33'),(3,2,'Body','<h2>Sorry, there was a problem...</h2><p>The page you requested was not found.</p><p><a href=\'/\'>Return to the home page</a></p>',0,'2011-08-15 19:42:33','2011-08-15 19:42:33'),(4,3,'Body','<p>This is just a standard text page example. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin metus dolor, hendrerit sit amet, aliquet nec, posuere sed, purus. Nullam et velit iaculis odio sagittis placerat. Duis metus tellus, pellentesque ut, luctus id, egestas a, lorem. Praesent vitae mauris. Aliquam sed nulla. Sed id nunc vitae leo suscipit viverra. Proin at leo ut lacus consequat rhoncus. In hac habitasse platea dictumst. Nunc quis tortor sed libero hendrerit dapibus.\n\nInteger interdum purus id erat. Duis nec velit vitae dolor mattis euismod. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Suspendisse pellentesque dignissim lacus. Nulla semper euismod arcu. Suspendisse egestas, erat a consectetur dapibus, felis orci cursus eros, et sollicitudin purus urna et metus. Integer eget est sed nunc euismod vestibulum. Integer nulla dui, tristique in, euismod et, interdum imperdiet, enim. Mauris at lectus. Sed egestas tortor nec mi.</p>',0,'2011-08-15 19:42:33','2011-08-15 19:42:33'),(5,3,'Side Body','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus fringilla nisi a elit. Duis ultricies orci ut arcu. Ut ac nibh. Duis blandit rhoncus magna. Pellentesque semper risus ut magna. Etiam pulvinar tellus eget diam. Morbi blandit. Donec pulvinar mauris at ligula. Sed pellentesque, ipsum id congue molestie, lectus risus egestas pede, ac viverra diam lacus ac urna. Aenean elit.</p>',1,'2011-08-15 19:42:33','2011-08-15 19:42:33');
/*!40000 ALTER TABLE `page_parts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page_translations`
--

DROP TABLE IF EXISTS `page_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `page_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_page_translations_on_page_id` (`page_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page_translations`
--

LOCK TABLES `page_translations` WRITE;
/*!40000 ALTER TABLE `page_translations` DISABLE KEYS */;
INSERT INTO `page_translations` VALUES (1,1,'en','Home',NULL,'2011-08-15 19:42:33','2011-08-15 19:42:33'),(2,2,'en','Page not found',NULL,'2011-08-15 19:42:33','2011-08-15 19:42:33'),(3,3,'en','About',NULL,'2011-08-15 19:42:33','2011-08-15 19:42:33');
/*!40000 ALTER TABLE `page_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `show_in_menu` tinyint(1) DEFAULT '1',
  `link_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_match` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deletable` tinyint(1) DEFAULT '1',
  `custom_title_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'none',
  `draft` tinyint(1) DEFAULT '0',
  `skip_to_first_child` tinyint(1) DEFAULT '0',
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `depth` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_pages_on_depth` (`depth`),
  KEY `index_pages_on_id` (`id`),
  KEY `index_pages_on_lft` (`lft`),
  KEY `index_pages_on_parent_id` (`parent_id`),
  KEY `index_pages_on_rgt` (`rgt`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,NULL,0,NULL,'2011-08-15 19:42:33','2011-08-15 19:42:33',1,'/',NULL,0,'none',0,0,1,4,NULL),(2,1,0,NULL,'2011-08-15 19:42:33','2011-08-15 19:42:33',0,NULL,'^/404$',0,'none',0,0,2,3,NULL),(3,NULL,1,NULL,'2011-08-15 19:42:33','2011-08-15 19:42:33',1,NULL,NULL,1,'none',0,0,5,6,NULL);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `press_items`
--

DROP TABLE IF EXISTS `press_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `press_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `publication` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `press_items`
--

LOCK TABLES `press_items` WRITE;
/*!40000 ALTER TABLE `press_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `press_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_types`
--

DROP TABLE IF EXISTS `project_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_types`
--

LOCK TABLES `project_types` WRITE;
/*!40000 ALTER TABLE `project_types` DISABLE KEYS */;
INSERT INTO `project_types` VALUES (1,'new','2011-08-24 17:35:14','2011-08-24 17:35:14'),(2,'residential','2011-08-24 17:35:20','2011-08-24 17:35:20'),(3,'commercial','2011-08-24 17:35:26','2011-08-24 17:35:26'),(4,'hospitality','2011-08-24 17:35:35','2011-08-24 17:35:35');
/*!40000 ALTER TABLE `project_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_types_projects`
--

DROP TABLE IF EXISTS `project_types_projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_types_projects` (
  `project_id` int(11) DEFAULT NULL,
  `project_type_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_types_projects`
--

LOCK TABLES `project_types_projects` WRITE;
/*!40000 ALTER TABLE `project_types_projects` DISABLE KEYS */;
INSERT INTO `project_types_projects` VALUES (8,1,NULL,NULL),(8,2,NULL,NULL),(9,2,NULL,NULL),(10,2,NULL,NULL),(11,2,NULL,NULL),(12,1,NULL,NULL),(12,2,NULL,NULL),(14,2,NULL,NULL),(15,2,NULL,NULL),(16,2,NULL,NULL),(17,2,NULL,NULL),(18,2,NULL,NULL),(19,2,NULL,NULL),(20,2,NULL,NULL),(21,2,NULL,NULL),(22,2,NULL,NULL),(23,2,NULL,NULL);
/*!40000 ALTER TABLE `project_types_projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `project_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `diagram_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `diagram_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `diagram_file_size` int(11) DEFAULT NULL,
  `diagram_updated_at` datetime DEFAULT NULL,
  `photo_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_file_size` int(11) DEFAULT NULL,
  `photo_updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (8,'130 e. 12th Street “The Loft” ','Completed in 1984, “The Loft,” an eight story 30,000 sq. ft. renovation, was one of the first luxury loft conversions ever developed in Manhattan. The new idea of luxury loft living at the time proved to be a highly desirable way to live, materializing in high demand for the condominium units and subsequently the project’s quick sellout. The project’s tagline, “The Idea is Bigger Than The Loft Itself” was strangely prophetic in that it predicted the popularity of luxury loft conversions in the Manhattan marketplace in the decades to follow. \r\n','available','New York City','New York','',NULL,'2011-08-24 17:48:00','2011-08-24 17:48:00',NULL,NULL,NULL,NULL,'130East12th_138_RT2.jpg','image/jpeg',11369676,'2011-08-24 17:47:59'),(9,'238 w. 11th Street','On one of the most historical tree lined brownstone blocks in the West Village, Alfa Development chose this 1838 townhouse to do a full renovation into three unique luxury co-op units. The project’s development was able to carefully restore some of the original wood and marble details while maintaining a high standard of contemporary luxury living. The project was completed in 1988. \r\n','available','New York City','New York','',NULL,'2011-08-24 18:00:06','2011-08-24 18:00:06',NULL,NULL,NULL,NULL,'238West11th_487_RT3.jpg','image/jpeg',14124733,'2011-08-24 18:00:04'),(10,'“The Zachary”, 125 e. 12th Street  ','“The Zachary” was one of the more ambitious luxury loft conversion and addition projects of the time, completed in 1989. The existing building was a five story 19th century auction house for horse carriages and hansoms that went through the block to 13th Street. The project involved splitting the structure into two different buildings so as to make a rear yard, providing light and air to the rear exposures of the buildings, and adding three floors of penthouses on top of each building. The project’s 44 units consisted of fourteen different typical unit layouts, many of which included mezzanines with dramatic 18ft. living rooms and spanned over a building area of 88,000 square feet. \r\n','available','New York City','New York','',NULL,'2011-08-24 18:01:00','2011-08-24 18:01:00',NULL,NULL,NULL,NULL,'Rear125East12th_148_RT2.jpg','image/jpeg',10563514,'2011-08-24 18:00:58'),(11,'197 Prince Street','Still applauded today for its timeless aesthetic, 197 Prince Street was a ground up luxury condominium project in Soho that continued the dialog of the historical beauty of the neighborhood. The project was completed in 1987 and helped paved the way for the popularity of the Soho neighborhood for luxury residential living. \r\n','available','New York City','New York','',NULL,'2011-08-24 18:01:33','2011-08-24 18:01:33',NULL,NULL,NULL,NULL,'197 Prince Street.jpg','image/jpeg',4894059,'2011-08-24 18:01:32'),(12,'136 Sullivan Street ','136 Sullivan Street continued the historically elegant series of projects that Alfa Development brought to the Soho neighborhood. The project was one of the first condominium developments to occur after the major building recession in New York City in the first part of the 1990’s and helped usher in a building boom in New York City that would take place for the next decade and a half. \r\n','available','New York City','New York','',NULL,'2011-08-24 18:02:39','2011-08-24 18:02:39',NULL,NULL,NULL,NULL,'136Sullivan_175_RT.jpg','image/jpeg',11233435,'2011-08-24 18:02:37'),(14,'20 w. 10th Street','20-22 w. 10th Street was originally developed as the Renwick Terrace Townhouses intended for the New York City elite of the mid 19th century. The block is one of the only fully intact tree lined mid 19th century blocks in all of Manhattan making the real estate so sought after here agents refer to it as the Gold Coast. The building features massive skylights soaring to the top of its twenty -foot ceilings in the penthouse apartments, an extremely rare feature for buildings of its period. Alfa Development brought a full renovation program to most of the buildings apartments as well as updating the buildings mechanical systems and restoring the original facade. Original details combined with kitchen and bathroom full renovations in most of the building’s apartments show an antiqued aesthetic with contemporary luxuries. Exposed brick mantles throughout and bedrooms overlooking a quiet and bright Victorian courtyard continue to make the building highly popular. The historic Renwick Terrace Townhouses also sit in between the Jefferson Market Library & The Bigelow Pharmacy historic landmarks and is directly adjacent to the birthplace of Emma Lazarus. ','available','New York City','New York','',NULL,'2011-08-24 18:04:29','2011-08-24 18:04:29',NULL,NULL,NULL,NULL,'20 w. 10th Street.jpg','image/jpeg',5162145,'2011-08-24 18:04:28'),(15,'43 west 9th Street ','43 west 9th street is a beautifully situated and constructed early 19th century brownstone. Alfa Development brought major renovations to the project including building out contemporary bathrooms and kitchens in most of the buildings apartments as well as restoring the buildings facade under the supervision of the Landmarks commission. The result is a project that maintains the elegance of the era in which the building was originally constructed while adding contemporary luxuries and amenities. ','available','New York City','New York','',NULL,'2011-08-24 18:05:11','2011-08-24 18:05:11',NULL,NULL,NULL,NULL,'43West9th_252_RT.jpg','image/jpeg',12170896,'2011-08-24 18:05:10'),(16,'15 w. 18th Street ','Spanning 49,000 sq. ft. over ten stories 130 ft. high, 15 w. 18th Street is a historic loft building in the Ladies Mile National Historic District. The building was built in 1903 in the Beaux-Artes style and is referred to as \"The Ten Commandments Building\" by architectural critics due to the unique features of the facade. Alfa Development completely renovated and converted many of the floors in the building to luxury apartment lofts retaining original features and adding stainless steel appliances, Italian maple cabinetry and contemporary marble bathrooms and fixtures. Alfa Development also underwent major facade restorations to the buildings three exposed facades. The building is mixed use and contains everything from a 4,500 sq. ft. full floor luxury residence to an abundance of marketing, creative and hi-tech office space.\r\n','soldout','New York City','New York','',NULL,'2011-08-24 18:05:59','2011-08-24 18:05:59',NULL,NULL,NULL,NULL,'15_17West18th_227_RT2.jpg','image/jpeg',13771147,'2011-08-24 18:05:57'),(17,'65 Thompson Street','Situated on the site of the former Gagosian Gallery, 65 Thompson Street was a ground up luxury condominium building that helped build on the character of the Soho neighborhood that surrounded it. The building contains five full floor residences and a ground floor retail space. The project was completed in 1999. ','available','New York City','New York','',NULL,'2011-08-24 18:06:39','2011-08-24 18:06:39',NULL,NULL,NULL,NULL,'65Thompson_212_RT3.jpg','image/jpeg',10024694,'2011-08-24 18:06:38'),(18,'52-54 Spring Street ','Three different buildings combined onto one site, 52-54 Spring Street has become a symbol of the rich history of the NoLita neighborhood and its progression into modern times. 52 Spring Street was a ground up, 17 unit luxury rental project completed in 2000 with a restaurant space on the ground floor. 54 Spring Street was comprised of two tenement buildings constructed in the 19th century. Alfa Development fully renovated both tenement buildings. The total area of all the buildings on the site was 25,500 square feet.\r\n','available','New York City','New York','',NULL,'2011-08-24 18:07:10','2011-08-24 18:07:10',NULL,NULL,NULL,NULL,'52_54Spring_435_RT3.jpg','image/jpeg',8602979,'2011-08-24 18:07:09'),(19,'193 e. 4th Street  ','A 19th century tenement building in the East Village, 193 e. 4th Street was converted to an 11 unit luxury rental building in 2000. Alfa Development underwent a full gut renovation as well as structurally remediated the entire building resulting in a contemporary product for the hip demographic of the East Village. \r\n','available','New York City','New York','',NULL,'2011-08-24 18:23:44','2011-08-24 18:23:44',NULL,NULL,NULL,NULL,'193East4th_317_RT.jpg','image/jpeg',10775276,'2011-08-24 18:23:43'),(20,'123 Sullivan Street','Designed by the well celebrated Mexican architect, thinker and urban planner Alberto Kalach of Taller de Architectura X, 123 Sullivan Street stands out amongst the tenement SoHo streetscape as a contextual work of timeless beauty. The project brought four full floor 3 bedroom condos, one 3 bedroom duplex garden apartment and one 4-bedroom penthouse to market. The project’s total area over the six units was 21,400 sq. ft. ','available','New York City','New York','',NULL,'2011-08-24 18:24:22','2011-08-24 18:24:22',NULL,NULL,NULL,NULL,'123Sullivan_604_RT2.jpg','image/jpeg',15155451,'2011-08-24 18:24:20'),(21,'Jefferson Court','The Jefferson Court project involved the renovation and restoration of an 1863 Carriage House  at 130 w. 10th Street,  and a new ground up development at 11 Christopher Street. The site runs through the block from 10th Street to Christopher Street and is now connected by the 8000 sq. ft. Village Infant Center. Designed by Cook + Fox, the architects who designed the new Bank of America tower and many other significant New York City landmarks, the project stands out as a welcome addition to a neighborhood and block extremely rich in history and architectural character. Just steps away from The Jefferson Market Library perhaps the most iconic piece of historical architecture in all of Greenwich Village, the new facade at 11 Christopher Street won the National Award of Merit from the American Institute of Architects. The 39,000 sq. ft. project was completed in 2005 and contains 7 residential units two retail units and a Community Facility Center. \r\n','available','New York City','New York','',NULL,'2011-08-24 18:24:53','2011-08-24 18:24:53',NULL,NULL,NULL,NULL,'134 w. 10th Street (Jefferson Court).jpg','image/jpeg',130250,'2011-08-24 18:24:52'),(22,'151 Wooster Street ','Located in the heart of SoHo, 151 Wooster blends the form and function of the artist’s bygone loft with the grandeur and opulence of today’s most elegant living spaces. An exclusive collection of ten 3,000 sq. ft. luxury lofts and one 8,000 sq. ft. penthouse, the lofts at 151 Wooster are meticulous in their aesthetic and masterfully appointed in their detail. Alfa Development directed a full gut renovation of the entire building including entirely new mechanical systems, new flooring and a new rooftop pavillion while working around an occupied retail space. The architectural details of the original facade which were fully restored by Alfa Development are stunning with detailed limestone window carvings, light antiqued brick and a dramatic cornice. This restoration in keeping with the character of the neighborhood was contrasted with extremely high-end Mies Van Der Rooh inspired contemporary finishes in the lofts designed by Lee H. Skolnick Design + Architecture Partnership, internationally respected for their unique high-end residences and museum designs. 151 Wooster has since become the most desirable luxury loft destination in all of SoHo due to its exquisitely executed design, its 24 hour doorman, its extremely high profile demographic, and its permanent Certificate of Occupancy.   \r\n<br />\r\n<br />\r\nDuring the interior demolition of the 8th floor one of the more fascinating works of art ever uncovered in New York City was discovered behind an old kitchen wall. The two part 18’x11’ & 10’x11’ mural had been hidden for almost 30 years and featured prominent urban downtown artists such as Jean Michel Basquiat, Fab 5 Freddy, Francesco Clemente, Futura 2000, Rammellzee, and Koor. The mural underwent a $200,000 restoration and removal job and was featured in an art gallery Alfa Development constructed and operated on the 2nd floor of the building called Gallery 151. The piece and the gallery has since then been featured in hundreds of news outlets around the world, has had thousands of visitors, and has had documentaries and TV shows produced about them.   ','available','New York City','New York','',NULL,'2011-08-24 18:25:43','2011-08-24 18:26:14',NULL,NULL,NULL,NULL,'151Wooster_454_RT4.jpg','image/jpeg',9790865,'2011-08-24 18:25:41'),(23,'311 e. 11th Street','Developers Michael and Izak Namer of Alfa Development created 311 e 11: Village Green with one goal in mind - to define responsible 21st century luxury living. Targeted for LEED-Gold Certfication, 311 E 11: Village Green serves as the vanguard for a new wave of eco-indulgent properties. From its energy efficient amenities to the sophisticated Wellness Center it houses, all aspects of 311 e 11: Village Green epitomize “living better in every sense.” Designed by award winning architects Stephen Jacobs Group PC and Andi Pepper Design Partnership, the white limestone and glass facade, green spaces, and ground floor lobby, lounge and wellness center are now a beacon of light and progression for the surrounding East Village neighborhood.  The project brought 38 high-end residential condominium units to the market in the worst point of the real-estate recession and yet was able to sellout the project in less than one year. The reason for the project’s great success, was a combination of smart high-end finishes, a great location on a residential tree-lined block, great exposures for natural light, intelligently priced units and the way living green living resonated with the condominium buyers. The project was conceptualized in 2007, completed in 2010 and sold out in 2009. ','available','New York City','New York','',NULL,'2011-08-24 18:27:04','2011-08-24 18:27:04',NULL,NULL,NULL,NULL,'311East11th_565_RT5.jpg','image/jpeg',4800149,'2011-08-24 18:27:03');
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_settings`
--

DROP TABLE IF EXISTS `refinery_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `destroyable` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `scoping` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `restricted` tinyint(1) DEFAULT '0',
  `callback_proc_as_string` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `form_value_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_refinery_settings_on_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_settings`
--

LOCK TABLES `refinery_settings` WRITE;
/*!40000 ALTER TABLE `refinery_settings` DISABLE KEYS */;
INSERT INTO `refinery_settings` VALUES (1,'use_marketable_urls','--- \'true\'\n',1,'2011-08-15 19:42:32','2011-08-15 19:42:32','pages',0,NULL,'text_area'),(2,'i18n_translation_enabled','--- \'true\'\n',1,'2011-08-15 19:42:32','2011-08-15 19:42:32','refinery',0,NULL,'text_area'),(3,'i18n_translation_default_frontend_locale','--- :en\n...\n',1,'2011-08-15 19:42:32','2011-08-15 19:42:32','refinery',0,NULL,'text_area'),(4,'dragonfly_secret','--- 3fe89991be07d647d0accd24e714f7bac7c7b3c10886409b\n...\n',1,'2011-08-15 19:42:46','2011-08-15 19:42:46',NULL,0,NULL,'text_area'),(5,'approximate_ascii','--- \'false\'\n',1,'2011-08-15 19:42:48','2011-08-15 19:42:48','pages',0,NULL,'text_area'),(6,'strip_non_ascii','--- \'false\'\n',1,'2011-08-15 19:42:48','2011-08-15 19:42:48','pages',0,NULL,'text_area'),(7,'i18n_translation_locales','---\n:en: English\n:fr: Français\n:nl: Nederlands\n:pt-BR: Português\n:da: Dansk\n:nb: Norsk Bokmål\n:sl: Slovenian\n:es: Español\n:it: Italiano\n:de: Deutsch\n:lv: Latviski\n:ru: Русский\n:sv: Svenska\n:pl: Polski\n:zh-CN: Simplified Chinese\n:zh-TW: Traditional Chinese\n:el: Ελληνικά\n:rs: Srpski\n:cs: Česky\n:sk: Slovenský\n:jp: 日本語\n',1,'2011-08-15 19:42:49','2011-08-15 19:42:49','refinery',0,NULL,'text_area'),(8,'site_name','--- Alfa Develoment\n...\n',1,'2011-08-15 19:43:02','2011-08-15 19:43:39',NULL,0,NULL,'text_area'),(9,'use_resource_caching','--- \'true\'\n',1,'2011-08-15 19:43:02','2011-08-15 19:43:02',NULL,0,NULL,'text_area'),(10,'use_google_ajax_libraries','--- \'false\'\n',1,'2011-08-15 19:43:02','2011-08-15 19:43:02',NULL,0,NULL,'text_area'),(11,'i18n_translation_default_locale','--- :en\n...\n',1,'2011-08-15 19:43:22','2011-08-15 19:43:22','refinery',0,NULL,'text_area'),(12,'i18n_translation_current_locale','--- :en\n...\n',1,'2011-08-15 19:43:22','2011-08-15 19:43:22','refinery',0,NULL,'text_area'),(13,'i18n_translation_frontend_locales','---\n- :en\n',1,'2011-08-15 19:43:22','2011-08-15 19:43:22','refinery',0,NULL,'text_area'),(14,'activity_show_limit','--- 7\n...\n',1,'2011-08-15 19:43:23','2011-08-15 19:43:23',NULL,0,NULL,'text_area'),(15,'cache_pages_backend','--- \'false\'\n',1,'2011-08-15 19:44:03','2011-08-15 19:44:03',NULL,0,NULL,'text_area'),(16,'page_title','---\n:chain_page_title: false\n:ancestors:\n  :separator: ! \' | \'\n  :class: ancestors\n  :tag: span\n:page_title:\n  :class: !!null \n  :tag: !!null \n  :wrap_if_not_chained: false\n',1,'2011-08-15 19:44:07','2011-08-15 19:44:07',NULL,0,NULL,'text_area'),(17,'authenticity_token_on_frontend','--- \'true\'\n',1,'2011-08-15 19:44:07','2011-08-15 19:44:07',NULL,0,NULL,'text_area'),(18,'frontend_refinery_stylesheets_enabled','--- \'true\'\n',1,'2011-08-15 19:44:07','2011-08-15 19:44:07',NULL,0,NULL,'text_area'),(19,'menu_hide_children','--- \'false\'\n',1,'2011-08-15 19:44:07','2011-08-15 19:44:07',NULL,0,NULL,'text_area'),(20,'new_page_parts','--- \'false\'\n',1,'2011-08-15 19:51:15','2011-08-15 19:51:15',NULL,0,NULL,'text_area');
/*!40000 ALTER TABLE `refinery_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resources`
--

DROP TABLE IF EXISTS `resources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_mime_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_size` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `file_uid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_ext` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resources`
--

LOCK TABLES `resources` WRITE;
/*!40000 ALTER TABLE `resources` DISABLE KEYS */;
/*!40000 ALTER TABLE `resources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Refinery'),(2,'Superuser');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles_users`
--

DROP TABLE IF EXISTS `roles_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles_users` (
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  KEY `index_roles_users_on_role_id_and_user_id` (`role_id`,`user_id`),
  KEY `index_roles_users_on_user_id_and_role_id` (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles_users`
--

LOCK TABLES `roles_users` WRITE;
/*!40000 ALTER TABLE `roles_users` DISABLE KEYS */;
INSERT INTO `roles_users` VALUES (1,1),(1,2);
/*!40000 ALTER TABLE `roles_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20110815192954'),('20110815192955'),('20110815192956'),('20110815192957'),('20110815192958'),('20110815192959'),('20110815192960'),('20110815192961'),('20110815192962'),('20110815192963'),('20110815192964'),('20110815192965'),('20110815192966'),('20110815192967'),('20110815192968'),('20110815192969'),('20110815192970'),('20110815211153'),('20110815213203'),('20110815214259'),('20110815222941'),('20110815224144'),('20110816030827'),('20110816205949'),('20110816212842'),('20110817015956'),('20110822210102'),('20110824173438'),('20110824173748');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seo_meta`
--

DROP TABLE IF EXISTS `seo_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seo_meta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seo_meta_id` int(11) DEFAULT NULL,
  `seo_meta_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `browser_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_seo_meta_on_id` (`id`),
  KEY `index_seo_meta_on_seo_meta_id_and_seo_meta_type` (`seo_meta_id`,`seo_meta_type`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seo_meta`
--

LOCK TABLES `seo_meta` WRITE;
/*!40000 ALTER TABLE `seo_meta` DISABLE KEYS */;
INSERT INTO `seo_meta` VALUES (1,1,'Page::Translation',NULL,NULL,NULL,'2011-08-15 19:42:33','2011-08-15 19:42:33'),(2,2,'Page::Translation',NULL,NULL,NULL,'2011-08-15 19:42:33','2011-08-15 19:42:33'),(3,3,'Page::Translation',NULL,NULL,NULL,'2011-08-15 19:42:33','2011-08-15 19:42:33');
/*!40000 ALTER TABLE `seo_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slugs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sluggable_id` int(11) DEFAULT NULL,
  `sequence` int(11) NOT NULL DEFAULT '1',
  `sluggable_type` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scope` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_slugs_on_n_s_s_and_s` (`name`,`sluggable_type`,`scope`,`sequence`),
  KEY `index_slugs_on_sluggable_id` (`sluggable_id`),
  KEY `index_slugs_on_locale` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'home',1,1,'Page',NULL,'2011-08-15 19:42:33','en'),(2,'page-not-found',2,1,'Page',NULL,'2011-08-15 19:42:33','en'),(3,'about',3,1,'Page',NULL,'2011-08-15 19:42:33','en'),(4,'admin',1,1,'User',NULL,'2011-08-15 19:43:22','en');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_plugins`
--

DROP TABLE IF EXISTS `user_plugins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_plugins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_unique_user_plugins` (`user_id`,`name`),
  KEY `index_user_plugins_on_title` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_plugins`
--

LOCK TABLES `user_plugins` WRITE;
/*!40000 ALTER TABLE `user_plugins` DISABLE KEYS */;
INSERT INTO `user_plugins` VALUES (7,1,'refinery_dashboard',0),(8,1,'refinery_files',1),(9,1,'refinery_images',2),(10,1,'refinery_pages',3),(11,1,'refinery_settings',4),(12,1,'refinery_users',5),(13,1,'refinerycms_base',6),(14,1,'refinery_core',7),(15,1,'refinery_dialogs',8),(16,1,'refinery_i18n',9),(17,1,'refinery_generators',10);
/*!40000 ALTER TABLE `user_plugins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `persistence_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `perishable_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sign_in_count` int(11) DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_users_on_id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin@alfadevelopment.com','$2a$10$fNVGosiWBPk1RraNbdOhcezKqGmCCAW6ejURNrpfGF6QlKf0nuxEq',NULL,'2011-08-15 19:43:22','2011-08-15 19:43:22',NULL,'2011-08-15 19:43:22','2011-08-15 19:43:22','127.0.0.1','127.0.0.1',1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-08-24 14:03:29
