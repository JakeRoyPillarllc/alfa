-- MySQL dump 10.13  Distrib 5.1.49, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: alfa_development
-- ------------------------------------------------------
-- Server version	5.1.49-1ubuntu8.1

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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries`
--

LOCK TABLES `galleries` WRITE;
/*!40000 ALTER TABLE `galleries` DISABLE KEYS */;
INSERT INTO `galleries` VALUES (9,21,'2011-09-13 18:51:12','2011-09-13 18:51:12','jeffersonmarketcourt.jpg','image/jpeg',72441,'2011-09-13 18:51:11'),(10,21,'2011-09-13 18:55:40','2011-09-13 18:55:40','IMG_0189.jpg','image/jpeg',162517,'2011-09-13 18:55:39');
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
INSERT INTO `members` VALUES (8,'Michael Namer','Principal','<p><span class=\"Apple-style-span\" style=\"font-family: arial, sans-serif; font-size: 13px;\">The principal of Alfa Development, Michael Namer has been developing downtown Manhattan real estate for over thirty years. A true renaissance man and great supporter of the arts &ndash; particularly in downtown New York, Michaelʼs passion for and knowledge of New York history, culture, and architecture informs every stage of Alfaʼs developments.<br /><br /></span></p>','2011-08-17 17:10:09','2011-08-22 21:47:11','tm_img_1.jpg','image/jpeg',3634,'2011-08-17 17:10:08',0),(9,'Frank Mattiello','Senior Project Manager','<p><span class=\"Apple-style-span\" style=\"font-family: arial, sans-serif; font-size: 13px;\">With over twenty years of construction management experience, and 30 + years in the industry, Frank Mattiello still prides himself on approaching each of his projects with a high level of detail and an open mind. Prior to joining Alfa Development Frank was the officer in charge of Summit Constructionʼs NYC division and oversaw all construction operations for major projects at 385 West 12th street, and 240 West Broadway. Working for CB Developers (Charlie Blaichman) for almost a decade before Summit, Frank took&nbsp;</span><span class=\"Apple-style-span\" style=\"font-family: arial, sans-serif; font-size: 13px;\">the leadership on a number of challenging projects working with Richard Meier at 173 &amp; 176 Perry Street, on 195 Bowery Street (a nineteen story steel frame addition to an existing building), 219 West 19th street, 48-50 West 14th Street, 60 West 14th Street, and 17 East 13th Street. Frank is currently obtaining a certification as a LEED accredited professional and holds a certificate in Project Management from the American Academy of Project Management.</span></p>','2011-08-17 17:11:44','2011-08-22 21:47:20','tm_img_none.jpg','image/jpeg',477,'2011-08-17 17:11:43',5),(10,'Matthew A. Namer','Vice President of Operations','<p><span class=\"Apple-style-span\" style=\"font-family: arial, sans-serif; font-size: 13px;\">As Vice President of Operations, Matthew oversees tasks that staff members work on, monitors the organization to prevent gaps and overlaps in the teamʼs workload and is responsible for hiring new personnel. Utilizing sophisticated technology to effect positive communication Matthew is constantly working on improving protocols to increase the teamʼs efficiency. As an expert on zoning regulations and analysis, Matthew also directs aspects of Alfaʼs business related to business development. Over the past nine years, Matthew has worked with Alfa in a number of different capacities and has a Bachelors degree from New York University.<br /><br /></span></p>','2011-08-17 17:12:25','2011-08-22 21:47:24','tm_img_none.jpg','image/jpeg',477,'2011-08-17 17:12:25',10),(11,'Mary Louise Perlman',' Director of Development & Marketing','<p><span class=\"Apple-style-span\" style=\"font-family: arial, sans-serif; font-size: 13px;\">With over 7 years of experience in New Yorkʼs luxury development market, Mary Louise recently joined Alfaʼs team. Formerly a Project Manager and Sales Manager at Corcoran Sunshine Marketing Group, Mary Louise has participated in the pre development, marketing, and sales of over 10 luxury residential condominiums in Manhattan since 2006 totaling sales of almost $1 billion &ndash; including 151 Wooster and 311E11: Village Green. Born and raised in New York City, Mary Louise recognizes the value that Alfa brings to the neighborhoods in which their buildings are developed. Her experience and marketing savvy provide Alfa Development with heightened resources to recognize and more effectively pursue development opportunities.</span></p>','2011-08-22 20:58:57','2011-08-22 21:47:27','tm_img_none.jpg','image/jpeg',477,'2011-08-22 20:58:56',15),(12,'Jake Namer','Executive Vice President','<p><span class=\"Apple-style-span\" style=\"font-family: arial, sans-serif; font-size: 13px;\">Jake Namer has been acting Executive Vice President for Alfa since 2008 throughout the 151 Wooster and 311E11: Village Green projects. As Executive Vice President, Jakeʼs contributes to all the major divisions of Alfaʼs business including construction management, marketing and finance and acts as Alfaʼs treasurer, liaison for city governing bodies, and coordinator of all major contractual agreements. Prior to joining Alfa, Jake worked in the New York Commercial Real Estate Lending division of Commerce Bank and at Morgan Stanley\'s Institutional Equity division. Jake holds a Master of Science in Real Estate from New York University and a Bachelor of Business Administration from University of Miami.</span></p>','2011-08-22 21:00:30','2011-09-12 18:35:07','tm_img_none.jpg','image/jpeg',477,'2011-08-22 21:00:30',1);
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
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
INSERT INTO `project_types_projects` VALUES (8,2,NULL,NULL),(9,2,NULL,NULL),(10,2,NULL,NULL),(11,2,NULL,NULL),(12,2,NULL,NULL),(14,2,NULL,NULL),(15,2,NULL,NULL),(16,2,NULL,NULL),(17,2,NULL,NULL),(18,2,NULL,NULL),(19,2,NULL,NULL),(20,2,NULL,NULL),(21,2,NULL,NULL),(22,2,NULL,NULL),(23,2,NULL,NULL),(23,1,NULL,NULL),(22,3,NULL,NULL),(21,3,NULL,NULL),(16,3,NULL,NULL),(18,3,NULL,NULL),(8,3,NULL,NULL);
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
  `sort_order` int(11) DEFAULT '100',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (8,'130 e. 12th Street “The Loft” ','Completed in 1984, “The Loft,” an eight story 30,000 sq. ft. renovation, was one of the first luxury loft conversions ever developed in Manhattan. The new idea of luxury loft living at the time proved to be a highly desirable way to live, materializing in high demand for the condominium units and subsequently the project’s quick sellout. The project’s tagline, “The Idea is Bigger Than The Loft Itself” was strangely prophetic in that it predicted the popularity of luxury loft conversions in the Manhattan marketplace in the decades to follow. \r\n','soldout','New York City','New York','',NULL,'2011-08-24 17:48:00','2011-09-12 22:52:31',NULL,NULL,NULL,NULL,'130East12th_138_RT2.jpg','image/jpeg',11369676,'2011-08-24 20:03:13',8),(9,'238 w. 11th Street','On one of the most historical tree lined brownstone blocks in the West Village, Alfa Development chose this 1838 townhouse to do a full renovation into three unique luxury co-op units. The project’s development was able to carefully restore some of the original wood and marble details while maintaining a high standard of contemporary luxury living. The project was completed in 1988. \r\n','soldout','New York City','New York','',NULL,'2011-08-24 18:00:06','2011-09-12 22:54:18',NULL,NULL,NULL,NULL,'238West11th_487_RT3.jpg','image/jpeg',14124733,'2011-08-24 20:17:26',13),(10,'“The Zachary”, 125 e. 12th Street  ','“The Zachary” was one of the more ambitious luxury loft conversion and addition projects of the time, completed in 1989. The existing building was a five story 19th century auction house for horse carriages and hansoms that went through the block to 13th Street. The project involved splitting the structure into two different buildings so as to make a rear yard, providing light and air to the rear exposures of the buildings, and adding three floors of penthouses on top of each building. The project’s 44 units consisted of fourteen different typical unit layouts, many of which included mezzanines with dramatic 18ft. living rooms and spanned over a building area of 88,000 square feet. \r\n','soldout','New York City','New York','',NULL,'2011-08-24 18:01:00','2011-09-13 20:45:26',NULL,NULL,NULL,NULL,'125West12th_589_RT2.jpg','image/jpeg',12091709,'2011-09-13 20:45:20',4),(11,'197 Prince Street','Still applauded today for its timeless aesthetic, 197 Prince Street was a ground up luxury condominium project in Soho that continued the dialog of the historical beauty of the neighborhood. The project was completed in 1987 and helped paved the way for the popularity of the Soho neighborhood for luxury residential living. \r\n','soldout','New York City','New York','',NULL,'2011-08-24 18:01:33','2011-09-12 22:53:12',NULL,NULL,NULL,NULL,'197 Prince Street.jpg','image/jpeg',4894059,'2011-08-24 20:19:09',9),(12,'136 Sullivan Street ','136 Sullivan Street continued the historically elegant series of projects that Alfa Development brought to the Soho neighborhood. The project was one of the first condominium developments to occur after the major building recession in New York City in the first part of the 1990’s and helped usher in a building boom in New York City that would take place for the next decade and a half. \r\n','soldout','New York City','New York','',NULL,'2011-08-24 18:02:39','2011-09-12 16:55:27',NULL,NULL,NULL,NULL,'136Sullivan_175_RT.jpg','image/jpeg',11233435,'2011-08-24 20:25:42',100),(14,'20 w. 10th Street','20-22 w. 10th Street was originally developed as the Renwick Terrace Townhouses intended for the New York City elite of the mid 19th century. The block is one of the only fully intact tree lined mid 19th century blocks in all of Manhattan making the real estate so sought after here agents refer to it as the Gold Coast. The building features massive skylights soaring to the top of its twenty -foot ceilings in the penthouse apartments, an extremely rare feature for buildings of its period. Alfa Development brought a full renovation program to most of the buildings apartments as well as updating the buildings mechanical systems and restoring the original facade. Original details combined with kitchen and bathroom full renovations in most of the building’s apartments show an antiqued aesthetic with contemporary luxuries. Exposed brick mantles throughout and bedrooms overlooking a quiet and bright Victorian courtyard continue to make the building highly popular. The historic Renwick Terrace Townhouses also sit in between the Jefferson Market Library & The Bigelow Pharmacy historic landmarks and is directly adjacent to the birthplace of Emma Lazarus. ','completed','New York City','New York','',NULL,'2011-08-24 18:04:29','2011-09-12 22:53:46',NULL,NULL,NULL,NULL,'20w10.jpg','image/jpeg',397150,'2011-08-24 20:51:04',10),(15,'43 west 9th Street ','43 west 9th street is a beautifully situated and constructed early 19th century brownstone. Alfa Development brought major renovations to the project including building out contemporary bathrooms and kitchens in most of the buildings apartments as well as restoring the buildings facade under the supervision of the Landmarks commission. The result is a project that maintains the elegance of the era in which the building was originally constructed while adding contemporary luxuries and amenities. ','available','New York City','New York','',NULL,'2011-08-24 18:05:11','2011-08-24 20:53:57',NULL,NULL,NULL,NULL,'43w9.jpg','image/jpeg',734494,'2011-08-24 20:53:56',100),(16,'15 w. 18th Street ','Spanning 49,000 sq. ft. over ten stories 130 ft. high, 15 w. 18th Street is a historic loft building in the Ladies Mile National Historic District. The building was built in 1903 in the Beaux-Artes style and is referred to as \"The Ten Commandments Building\" by architectural critics due to the unique features of the facade. Alfa Development completely renovated and converted many of the floors in the building to luxury apartment lofts retaining original features and adding stainless steel appliances, Italian maple cabinetry and contemporary marble bathrooms and fixtures. Alfa Development also underwent major facade restorations to the buildings three exposed facades. The building is mixed use and contains everything from a 4,500 sq. ft. full floor luxury residence to an abundance of marketing, creative and hi-tech office space.\r\n','completed','New York City','New York','',NULL,'2011-08-24 18:05:59','2011-09-12 19:01:46',NULL,NULL,NULL,NULL,'15w18th.jpg','image/jpeg',14617989,'2011-08-24 20:55:41',5),(17,'65 Thompson Street','Situated on the site of the former Gagosian Gallery, 65 Thompson Street was a ground up luxury condominium building that helped build on the character of the Soho neighborhood that surrounded it. The building contains five full floor residences and a ground floor retail space. The project was completed in 1999. ','available','New York City','New York','',NULL,'2011-08-24 18:06:39','2011-08-24 20:56:37',NULL,NULL,NULL,NULL,'65thompson.jpg','image/jpeg',10494333,'2011-08-24 20:56:30',100),(18,'52-54 Spring Street ','Three different buildings combined onto one site, 52-54 Spring Street has become a symbol of the rich history of the NoLita neighborhood and its progression into modern times. 52 Spring Street was a ground up, 17 unit luxury rental project completed in 2000 with a restaurant space on the ground floor. 54 Spring Street was comprised of two tenement buildings constructed in the 19th century. Alfa Development fully renovated both tenement buildings. The total area of all the buildings on the site was 25,500 square feet.\r\n','completed','New York City','New York','',NULL,'2011-08-24 18:07:10','2011-09-12 22:50:56',NULL,NULL,NULL,NULL,'52_54_spring.jpg','image/jpeg',8956026,'2011-08-24 20:57:05',7),(19,'193 e. 4th Street  ','A 19th century tenement building in the East Village, 193 e. 4th Street was converted to an 11 unit luxury rental building in 2000. Alfa Development underwent a full gut renovation as well as structurally remediated the entire building resulting in a contemporary product for the hip demographic of the East Village. \r\n','available','New York City','New York','',NULL,'2011-08-24 18:23:44','2011-08-24 18:23:44',NULL,NULL,NULL,NULL,'193East4th_317_RT.jpg','image/jpeg',10775276,'2011-08-24 18:23:43',100),(20,'123 Sullivan Street','Designed by the well celebrated Mexican architect, thinker and urban planner Alberto Kalach of Taller de Architectura X, 123 Sullivan Street stands out amongst the tenement SoHo streetscape as a contextual work of timeless beauty. The project brought four full floor 3 bedroom condos, one 3 bedroom duplex garden apartment and one 4-bedroom penthouse to market. The project’s total area over the six units was 21,400 sq. ft. ','completed','New York City','New York','',NULL,'2011-08-24 18:24:22','2011-09-12 19:05:32',NULL,NULL,NULL,NULL,'123Sullivan_604_RT2.jpg','image/jpeg',1976687,'2011-08-24 21:09:06',6),(21,'Jefferson Court','The Jefferson Court project involved the renovation and restoration of an 1863 Carriage House  at 130 w. 10th Street,  and a new ground up development at 11 Christopher Street. The site runs through the block from 10th Street to Christopher Street and is now connected by the 8000 sq. ft. Village Infant Center. Designed by Cook + Fox, the architects who designed the new Bank of America tower and many other significant New York City landmarks, the project stands out as a welcome addition to a neighborhood and block extremely rich in history and architectural character. Just steps away from The Jefferson Market Library perhaps the most iconic piece of historical architecture in all of Greenwich Village, the new facade at 11 Christopher Street won the National Award of Merit from the American Institute of Architects. The 39,000 sq. ft. project was completed in 2005 and contains 7 residential units two retail units and a Community Facility Center. \r\n','soldout','New York City','New York','',NULL,'2011-08-24 18:24:53','2011-09-14 20:43:08','pic_view.jpg','image/jpeg',54516,'2011-09-14 20:43:06','11Christopherst_512_RT(compres).jpg','image/jpeg',1148265,'2011-09-12 18:39:33',3),(22,'151 Wooster Street ','Located in the heart of SoHo, 151 Wooster blends the form and function of the artist’s bygone loft with the grandeur and opulence of today’s most elegant living spaces. An exclusive collection of ten 3,000 sq. ft. luxury lofts and one 8,000 sq. ft. penthouse, the lofts at 151 Wooster are meticulous in their aesthetic and masterfully appointed in their detail. Alfa Development directed a full gut renovation of the entire building including entirely new mechanical systems, new flooring and a new rooftop pavillion while working around an occupied retail space. The architectural details of the original facade which were fully restored by Alfa Development are stunning with detailed limestone window carvings, light antiqued brick and a dramatic cornice. This restoration in keeping with the character of the neighborhood was contrasted with extremely high-end Mies Van Der Rooh inspired contemporary finishes in the lofts designed by Lee H. Skolnick Design + Architecture Partnership, internationally respected for their unique high-end residences and museum designs. 151 Wooster has since become the most desirable luxury loft destination in all of SoHo due to its exquisitely executed design, its 24 hour doorman, its extremely high profile demographic, and its permanent Certificate of Occupancy.   \r\n<br />\r\n<br />\r\nDuring the interior demolition of the 8th floor one of the more fascinating works of art ever uncovered in New York City was discovered behind an old kitchen wall. The two part 18’x11’ & 10’x11’ mural had been hidden for almost 30 years and featured prominent urban downtown artists such as Jean Michel Basquiat, Fab 5 Freddy, Francesco Clemente, Futura 2000, Rammellzee, and Koor. The mural underwent a $200,000 restoration and removal job and was featured in an art gallery Alfa Development constructed and operated on the 2nd floor of the building called Gallery 151. The piece and the gallery has since then been featured in hundreds of news outlets around the world, has had thousands of visitors, and has had documentaries and TV shows produced about them.   ','soldout','New York City','New York','',NULL,'2011-08-24 18:25:43','2011-09-12 16:57:11',NULL,NULL,NULL,NULL,'151wooster.jpg','image/jpeg',10350443,'2011-08-24 21:01:36',2),(23,'311 e. 11th Street','Developers Michael and Izak Namer of Alfa Development created 311 e 11: Village Green with one goal in mind - to define responsible 21st century luxury living. Targeted for LEED-Gold Certfication, 311 E 11: Village Green serves as the vanguard for a new wave of eco-indulgent properties. From its energy efficient amenities to the sophisticated Wellness Center it houses, all aspects of 311 e 11: Village Green epitomize “living better in every sense.” Designed by award winning architects Stephen Jacobs Group PC and Andi Pepper Design Partnership, the white limestone and glass facade, green spaces, and ground floor lobby, lounge and wellness center are now a beacon of light and progression for the surrounding East Village neighborhood.  The project brought 38 high-end residential condominium units to the market in the worst point of the real-estate recession and yet was able to sellout the project in less than one year. The reason for the project’s great success, was a combination of smart high-end finishes, a great location on a residential tree-lined block, great exposures for natural light, intelligently priced units and the way living green living resonated with the condominium buyers. The project was conceptualized in 2007, completed in 2010 and sold out in 2009. ','soldout','New York City','New York','',NULL,'2011-08-24 18:27:04','2011-09-14 20:51:17','New York Daily News 6 4 2010.jpg','image/jpeg',2239388,'2011-09-14 20:51:11','311East11th_565_RT5.jpg','image/jpeg',4800149,'2011-08-24 21:01:36',1);
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
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
INSERT INTO `schema_migrations` VALUES ('20110815192954'),('20110815192955'),('20110815192956'),('20110815192957'),('20110815192958'),('20110815192959'),('20110815192960'),('20110815192961'),('20110815192962'),('20110815192963'),('20110815192964'),('20110815192965'),('20110815192966'),('20110815192967'),('20110815192968'),('20110815192969'),('20110815192970'),('20110815211153'),('20110815213203'),('20110815214259'),('20110815222941'),('20110815224144'),('20110816030827'),('20110816205949'),('20110816212842'),('20110817015956'),('20110822210102'),('20110824173438'),('20110824173748'),('20110912150241');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seo_meta`
--
