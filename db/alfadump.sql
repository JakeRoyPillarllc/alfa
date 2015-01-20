-- MySQL dump 10.13  Distrib 5.1.54, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: alfa_production
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries`
--

LOCK TABLES `galleries` WRITE;
/*!40000 ALTER TABLE `galleries` DISABLE KEYS */;
INSERT INTO `galleries` VALUES (12,15,'2011-11-30 20:03:18','2011-11-30 20:03:18','43 West 9th Street.jpg','image/jpeg',184825,'2011-11-30 20:03:17'),(13,26,'2012-02-17 23:41:10','2012-02-17 23:41:10','alison-dd.jpeg','image/jpeg',31155,'2012-02-17 23:41:10');
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES (8,'Michael Namer','Founder, CEO, Principal','<p><span class=\"Apple-style-span\" style=\"font-family: arial, sans-serif; font-size: 13px;\"> Michael Namer has been developing real estate in downtown New York for the last 30 years.  As the founder, principal, and Managing Member of Alfa Development/Management LLC, Michael brings his attention to detail, construction expertise, and hands-on approach to real estate development to every project. In the last five years Alfa Development has produced over $150,000,000 of residential condominium development – all in Downtown Manhattan. Their current development pipeline will produce another $120,000,000 over the next three years. The company’s motto is “history, architecture, and sustainability on a human scale.\" In 2007, the company launched its commitment to sustainability with their first development of a LEED-Gold certified residential condominium in Downtown New York: 311E11 Village Green. Michael Namer and Alfa Development are continuing with their mission to create more sustainable living experiences with three upcoming developments: Chelsea Green Condominium (targeting LEED–Gold Certification), The Mott Hotel (targeting LEED-Gold Certification), and Alison Eighteen Restaurant. With these projects, Michael intends to raise the bar of sustainable living within the residential, hospitality, and food service industries.\r\n\r\nMichael Namer graduated from City University of New York class of ‘76 with a degree in Business Psychology and a minor in Fine Arts. He moved to Greenwich Village in 1976, where he has lived and raised his family ever since. He has been an integral part of his community by serving on the Board of the Greenwich Village Little League advocating for youth sports and lobbying for the creation of Hudson River Park and the soon-to-be-built park on Hudson and Houston Streets. He also has served on the Board of the Corlears School, the Village Temple, and Jennifer Muller: The Works. Michael is an accomplished painter and owner and founder of Gallery 151 at 132 West 18th Street, NY a local gallery that promotes emerging contemporary artist and community art projects - such as the Urban Green Initiative - that encourage the discussion of issues of sustainability in our time..<br /><br /></span></p>','2011-08-17 17:10:09','2011-12-20 22:10:59','tm_img_1.jpg','image/jpeg',3634,'2011-08-17 17:10:08',0),(9,'Frank Mattiello','Senior Project Manager','<p><span class=\"Apple-style-span\" style=\"font-family: arial, sans-serif; font-size: 13px;\">With over twenty years of construction management experience, and 30 + years in the industry, Frank Mattiello still prides himself on approaching each of his projects with a high level of detail and an open mind. Prior to joining Alfa Development Frank was the officer in charge of Summit Constructionʼs NYC division and oversaw all construction operations for major projects at 385 West 12th street, and 240 West Broadway. Working for CB Developers (Charlie Blaichman) for almost a decade before Summit, Frank took&nbsp;</span><span class=\"Apple-style-span\" style=\"font-family: arial, sans-serif; font-size: 13px;\">the leadership on a number of challenging projects working with Richard Meier at 173 &amp; 176 Perry Street, on 195 Bowery Street (a nineteen story steel frame addition to an existing building), 219 West 19th street, 48-50 West 14th Street, 60 West 14th Street, and 17 East 13th Street. Frank is currently obtaining a certification as a LEED accredited professional and holds a certificate in Project Management from the American Academy of Project Management.</span></p>','2011-08-17 17:11:44','2011-08-22 21:47:20','tm_img_none.jpg','image/jpeg',477,'2011-08-17 17:11:43',5),(10,'Matthew A. Namer','Vice President of Operations','<p><span class=\"Apple-style-span\" style=\"font-family: arial, sans-serif; font-size: 13px;\">As Vice President of Operations, Matthew oversees tasks that staff members work on, monitors the organization to prevent gaps and overlaps in the teamʼs workload and is responsible for hiring new personnel. Utilizing sophisticated technology to effect positive communication Matthew is constantly working on improving protocols to increase the teamʼs efficiency. As an expert on zoning regulations and analysis, Matthew also directs aspects of Alfaʼs business related to business development. Over the past nine years, Matthew has worked with Alfa in a number of different capacities and has a Bachelors degree from New York University.<br /><br /></span></p>','2011-08-17 17:12:25','2011-12-20 22:12:20','tm_img_none.jpg','image/jpeg',477,'2011-08-17 17:12:25',3),(11,'Mary Louise Perlman',' Director of Development & Marketing','<p><span class=\"Apple-style-span\" style=\"font-family: arial, sans-serif; font-size: 13px;\">With over 7 years of experience in New Yorkʼs luxury development market, Mary Louise recently joined Alfaʼs team. Formerly a Project Manager and Sales Manager at Corcoran Sunshine Marketing Group, Mary Louise has participated in the pre development, marketing, and sales of over 10 luxury residential condominiums in Manhattan since 2006 totaling sales of almost $1 billion &ndash; including 151 Wooster and 311E11: Village Green. Born and raised in New York City, Mary Louise recognizes the value that Alfa brings to the neighborhoods in which their buildings are developed. Her experience and marketing savvy provide Alfa Development with heightened resources to recognize and more effectively pursue development opportunities.</span></p>','2011-08-22 20:58:57','2011-12-20 22:12:39','tm_img_none.jpg','image/jpeg',477,'2011-08-22 20:58:56',6),(12,'Jake Namer','Executive Vice President','<p><span class=\"Apple-style-span\" style=\"font-family: arial, sans-serif; font-size: 13px;\">Jake Namer has been acting Executive Vice President for Alfa since 2008 throughout the 151 Wooster and 311E11: Village Green projects. As Executive Vice President, Jakeʼs contributes to all the major divisions of Alfaʼs business including construction management, marketing and finance and acts as Alfaʼs treasurer, liaison for city governing bodies, and coordinator of all major contractual agreements. Prior to joining Alfa, Jake worked in the New York Commercial Real Estate Lending division of Commerce Bank and at Morgan Stanley\'s Institutional Equity division. Jake holds a Master of Science in Real Estate from New York University and a Bachelor of Business Administration from University of Miami.</span></p>','2011-08-22 21:00:30','2011-09-12 18:35:07','tm_img_none.jpg','image/jpeg',477,'2011-08-22 21:00:30',1),(14,'David Namer','Vice President of Property Management','\r\n\r\n\r\nSince 2001, David Namer has been part of the Alfa team. As acting Vice President of Management, David is in charge of building operations for all properties under the umbrella of Alfa Development Management LLC. After receiving his bachelor\'s degree from NYU and his New York Real Estate Sales License, he now doubles as an agent for Bond New York, handling Alfa rental exclusives. Additionally, David\'s expertise in bookkeeping and accounting assist in managing Alfa financials.','2011-12-12 15:07:38','2012-02-18 00:10:52',NULL,NULL,NULL,NULL,5);
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
INSERT INTO `project_types_projects` VALUES (8,2,NULL,NULL),(9,2,NULL,NULL),(10,2,NULL,NULL),(11,2,NULL,NULL),(12,2,NULL,NULL),(14,2,NULL,NULL),(15,2,NULL,NULL),(16,2,NULL,NULL),(17,2,NULL,NULL),(18,2,NULL,NULL),(19,2,NULL,NULL),(20,2,NULL,NULL),(21,2,NULL,NULL),(22,2,NULL,NULL),(23,2,NULL,NULL),(23,1,NULL,NULL),(22,3,NULL,NULL),(21,3,NULL,NULL),(16,3,NULL,NULL),(18,3,NULL,NULL),(8,3,NULL,NULL),(26,4,NULL,NULL),(26,3,NULL,NULL),(26,2,NULL,NULL),(26,1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (8,'The Loft - 130 e. 12th St.  ','Completed in 1984, “The Loft,” an eight story 30,000 sq. ft. renovation, was one of the first luxury loft conversions ever developed in Manhattan. The new idea of luxury loft living at the time proved to be a highly desirable way to live, materializing in high demand for the condominium units and subsequently the project’s quick sellout. The project’s tagline, “The Idea is Bigger Than The Loft Itself” was strangely prophetic in that it predicted the popularity of luxury loft conversions in the Manhattan marketplace in the decades to follow. \r\n','SOLD OUT','New York City','New York',NULL,NULL,'2011-08-24 17:48:00','2012-02-18 00:08:35',NULL,NULL,NULL,NULL,'130East12th_138_RT2.jpg','image/jpeg',177347,'2011-11-30 20:04:01',8),(9,'238 w. 11th St. ','On one of the most historical tree lined brownstone blocks in the West Village, Alfa Development chose this 1838 townhouse to do a full renovation into three unique luxury co-op units. The project’s development was able to carefully restore some of the original wood and marble details while maintaining a high standard of contemporary luxury living. The project was completed in 1988. \r\n','SOLD OUT','New York City','New York',NULL,NULL,'2011-08-24 18:00:06','2012-02-18 00:07:56',NULL,NULL,NULL,NULL,'238West11th_487_RT3.jpg','image/jpeg',92045,'2011-11-30 19:03:05',13),(10,'The Zachary','“The Zachary” at 125 e. 12th Street was one of the more ambitious luxury loft conversion and addition projects of the time, completed in 1989. The existing building was a five story 19th century auction house for horse carriages and hansoms that went through the block to 13th Street. The project involved splitting the structure into two different buildings so as to make a rear yard, providing light and air to the rear exposures of the buildings, and adding three floors of penthouses on top of each building. The project’s 44 units consisted of fourteen different typical unit layouts, many of which included mezzanines with dramatic 18ft. living rooms and spanned over a building area of 88,000 square feet. ','SOLD OUT','New York City','New York',NULL,NULL,'2011-08-24 18:01:00','2012-02-18 00:07:46',NULL,NULL,NULL,NULL,'125West12th_589_RT2.jpg','image/jpeg',481808,'2011-11-30 20:03:49',4),(11,'197 Prince St. ','Still applauded today for its timeless aesthetic, 197 Prince Street was a ground up luxury condominium project in Soho that continued the dialog of the historical beauty of the neighborhood. The project was completed in 1987 and helped paved the way for the popularity of the Soho neighborhood for luxury residential living. \r\n','SOLD OUT','New York City','New York',NULL,NULL,'2011-08-24 18:01:33','2012-02-18 00:07:07',NULL,NULL,NULL,NULL,'197 Prince Street.jpg','image/jpeg',49610,'2011-11-30 19:04:14',9),(12,'136 Sullivan St. ','136 Sullivan Street continued the historically elegant series of projects that Alfa Development brought to the Soho neighborhood. The project was one of the first condominium developments to occur after the major building recession in New York City in the first part of the 1990’s and helped usher in a building boom in New York City that would take place for the next decade and a half. \r\n','SOLD OUT','New York City','New York',NULL,NULL,'2011-08-24 18:02:39','2012-02-18 00:06:53',NULL,NULL,NULL,NULL,'136Sullivan_175_RT.jpg','image/jpeg',114592,'2011-11-30 19:07:41',100),(14,'20 w. 10th St. ','20-22 w. 10th Street was originally developed as the Renwick Terrace Townhouses intended for the New York City elite of the mid 19th century. The block is one of the only fully intact tree lined mid 19th century blocks in all of Manhattan making the real estate so sought after here agents refer to it as the Gold Coast. The building features massive skylights soaring to the top of its twenty -foot ceilings in the penthouse apartments, an extremely rare feature for buildings of its period. Alfa Development brought a full renovation program to most of the buildings apartments as well as updating the buildings mechanical systems and restoring the original facade. Original details combined with kitchen and bathroom full renovations in most of the building’s apartments show an antiqued aesthetic with contemporary luxuries. Exposed brick mantles throughout and bedrooms overlooking a quiet and bright Victorian courtyard continue to make the building highly popular. The historic Renwick Terrace Townhouses also sit in between the Jefferson Market Library & The Bigelow Pharmacy historic landmarks and is directly adjacent to the birthplace of Emma Lazarus. ','Apt. Rental','New York City','New York',NULL,NULL,'2011-08-24 18:04:29','2012-02-18 00:06:41',NULL,NULL,NULL,NULL,'20 w. 10th Street.jpg','image/jpeg',188130,'2011-11-30 20:03:27',10),(15,'43 west 9th St. ','43 west 9th street is a beautifully situated and constructed early 19th century brownstone. Alfa Development brought major renovations to the project including building out contemporary bathrooms and kitchens in most of the buildings apartments as well as restoring the buildings facade under the supervision of the Landmarks commission. The result is a project that maintains the elegance of the era in which the building was originally constructed while adding contemporary luxuries and amenities. ','Apt. Rental','New York City','New York',NULL,NULL,'2011-08-24 18:05:11','2012-02-18 00:06:30',NULL,NULL,NULL,NULL,'43West9th_252_RT.jpg','image/jpeg',573349,'2011-11-30 20:03:17',100),(16,'15 w. 18th St. ','Spanning 49,000 sq. ft. over ten stories 130 ft. high, 15 w. 18th Street is a historic loft building in the Ladies Mile National Historic District. The building was built in 1903 in the Beaux-Artes style and is referred to as \"The Ten Commandments Building\" by architectural critics due to the unique features of the facade. Alfa Development completely renovated and converted many of the floors in the building to luxury apartment lofts retaining original features and adding stainless steel appliances, Italian maple cabinetry and contemporary marble bathrooms and fixtures. Alfa Development also underwent major facade restorations to the buildings three exposed facades. The building is mixed use and contains everything from a 4,500 sq. ft. full floor luxury residence to an abundance of marketing, creative and hi-tech office space.\r\n','Office & Apt. Rental','New York City','New York',NULL,NULL,'2011-08-24 18:05:59','2012-02-18 00:06:18',NULL,NULL,NULL,NULL,'15_17West18th_227_RT2.jpg','image/jpeg',185231,'2011-11-30 20:02:53',5),(17,'65 Thompson St. ','Situated on the site of the former Gagosian Gallery, 65 Thompson Street was a ground up luxury condominium building that helped build on the character of the Soho neighborhood that surrounded it. The building contains five full floor residences and a ground floor retail space. The project was completed in 1999. ','SOLD OUT + Retail Rental ','New York City','New York',NULL,NULL,'2011-08-24 18:06:39','2012-02-18 00:06:06',NULL,NULL,NULL,NULL,'65Thompson_212_RT3.jpg','image/jpeg',210351,'2011-11-30 20:02:42',100),(18,'52-54 Spring St. ','Three different buildings combined onto one site, 52-54 Spring Street has become a symbol of the rich history of the NoLita neighborhood and its progression into modern times. 52 Spring Street was a ground up, 17 unit luxury rental project completed in 2000 with a restaurant space on the ground floor. 54 Spring Street was comprised of two tenement buildings constructed in the 19th century. Alfa Development fully renovated both tenement buildings. The total area of all the buildings on the site was 25,500 square feet.\r\n','SOLD','New York City','New York',NULL,NULL,'2011-08-24 18:07:10','2012-02-18 00:05:55',NULL,NULL,NULL,NULL,'52_54Spring_435_RT3.jpg','image/jpeg',166262,'2011-11-30 20:02:32',7),(19,'193 e. 4th St.  ','A 19th century tenement building in the East Village, 193 e. 4th Street was converted to an 11 unit luxury rental building in 2000. Alfa Development underwent a full gut renovation as well as structurally remediated the entire building resulting in a contemporary product for the hip demographic of the East Village. \r\n','Apt. Rental','New York City','New York',NULL,NULL,'2011-08-24 18:23:44','2012-02-18 00:05:40',NULL,NULL,NULL,NULL,'193East4th_317_RT.jpg','image/jpeg',121564,'2011-11-30 19:05:26',100),(20,'123 Sullivan St. ','Designed by the well celebrated Mexican architect, thinker and urban planner Alberto Kalach of Taller de Architectura X, 123 Sullivan Street stands out amongst the tenement SoHo streetscape as a contextual work of timeless beauty. The project brought four full floor 3 bedroom condos, one 3 bedroom duplex garden apartment and one 4-bedroom penthouse to market. The project’s total area over the six units was 21,400 sq. ft. ','SOLD OUT','New York City','New York',NULL,NULL,'2011-08-24 18:24:22','2012-02-18 00:05:28',NULL,NULL,NULL,NULL,'123Sullivan_604_RT2.jpg','image/jpeg',256082,'2011-11-30 20:01:53',6),(21,'Jefferson Court','The Jefferson Court project involved the renovation and restoration of an 1863 Carriage House  at 130 w. 10th Street,  and a new ground up development at 11 Christopher Street. The site runs through the block from 10th Street to Christopher Street and is now connected by the 8000 sq. ft. Village Infant Center. Designed by Cook + Fox, the architects who designed the new Bank of America tower and many other significant New York City landmarks, the project stands out as a welcome addition to a neighborhood and block extremely rich in history and architectural character. Just steps away from The Jefferson Market Library perhaps the most iconic piece of historical architecture in all of Greenwich Village, the new facade at 11 Christopher Street won the National Award of Merit from the American Institute of Architects. The 39,000 sq. ft. project was completed in 2005 and contains 7 residential units two retail units and a Community Facility Center. \r\n','SOLD OUT + Retail Rental','New York City','New York',NULL,NULL,'2011-08-24 18:24:53','2012-02-18 00:01:40','pic_view.jpg','image/jpeg',54516,'2011-09-14 20:43:06','134 w. 10th Street (Jefferson Court).jpg','image/jpeg',45570,'2011-11-30 20:00:52',3),(22,'151 Wooster St. ','Located in the heart of SoHo, 151 Wooster blends the form and function of the artist’s bygone loft with the grandeur and opulence of today’s most elegant living spaces. An exclusive collection of ten 3,000 sq. ft. luxury lofts and one 8,000 sq. ft. penthouse, the lofts at 151 Wooster are meticulous in their aesthetic and masterfully appointed in their detail. Alfa Development directed a full gut renovation of the entire building including entirely new mechanical systems, new flooring and a new rooftop pavillion while working around an occupied retail space. The architectural details of the original facade which were fully restored by Alfa Development are stunning with detailed limestone window carvings, light antiqued brick and a dramatic cornice. This restoration in keeping with the character of the neighborhood was contrasted with extremely high-end Mies Van Der Rooh inspired contemporary finishes in the lofts designed by Lee H. Skolnick Design + Architecture Partnership, internationally respected for their unique high-end residences and museum designs. 151 Wooster has since become the most desirable luxury loft destination in all of SoHo due to its exquisitely executed design, its 24 hour doorman, its extremely high profile demographic, and its permanent Certificate of Occupancy.   \r\n<br />\r\n<br />\r\nDuring the interior demolition of the 8th floor one of the more fascinating works of art ever uncovered in New York City was discovered behind an old kitchen wall. The two part 18’x11’ & 10’x11’ mural had been hidden for almost 30 years and featured prominent urban downtown artists such as Jean Michel Basquiat, Fab 5 Freddy, Francesco Clemente, Futura 2000, Rammellzee, and Koor. The mural underwent a $200,000 restoration and removal job and was featured in an art gallery Alfa Development constructed and operated on the 2nd floor of the building called Gallery 151. The piece and the gallery has since then been featured in hundreds of news outlets around the world, has had thousands of visitors, and has had documentaries and TV shows produced about them.   ','SOLD OUT + Retail Rental','New York City','New York',NULL,NULL,'2011-08-24 18:25:43','2012-02-18 00:05:14',NULL,NULL,NULL,NULL,'151Wooster_454_RT4.jpg','image/jpeg',194393,'2011-11-30 19:18:48',2),(23,'311 e. 11th St. ','Developers Michael and Izak Namer of Alfa Development created 311 e 11: Village Green with one goal in mind - to define responsible 21st century luxury living. Targeted for LEED-Gold Certfication, 311 E 11: Village Green serves as the vanguard for a new wave of eco-indulgent properties. From its energy efficient amenities to the sophisticated Wellness Center it houses, all aspects of 311 e 11: Village Green epitomize “living better in every sense.” Designed by award winning architects Stephen Jacobs Group PC and Andi Pepper Design Partnership, the white limestone and glass facade, green spaces, and ground floor lobby, lounge and wellness center are now a beacon of light and progression for the surrounding East Village neighborhood.  The project brought 36 high-end residential condominium units to the market in the worst point of the real-estate recession and yet was able to sellout the project in less than one year. The reason for the project’s great success, was a combination of smart high-end finishes, a great location on a residential tree-lined block, great exposures for natural light, intelligently priced units and the way living green living resonated with the condominium buyers. The project was conceptualized in 2007, completed in 2010 and sold out in 2009. ','SOLD OUT','New York City','New York',NULL,NULL,'2011-08-24 18:27:04','2012-02-20 00:27:08','311 logo for alfa website .jpg','image/jpeg',12905,'2012-02-20 00:27:08','311East11th_565_RT3.jpg','image/jpeg',104046,'2011-11-30 19:08:49',2),(26,'Alison Eighteen','Famed restaurateur, Alison Price Becker partnered with Alfa Development to create this french influenced american brasserie housed in the Flatiron District’s “Ten Commandments Building.” Alfa oversaw the design and buildout in collaboration with Becker of the 8000 sq. ft. space which includes a 135 seat dining room, a private event space for 100 people, two kitchens, two bars, and a take away kiosk. The restaurant\'s finishes rank amongst the best in New York\'s high end restaurants and include such elements as tufted aubergine banquettes, white marble, pure walnut trim, and a one-of-a-kind toile designed by Brooklyn artist Payton Cosell Turner. \r\n\r\nhttp://www.alisoneighteen.com','OPEN','New York','New York','10011','Hospitality','2012-02-17 23:15:47','2012-02-17 23:57:51','Alison-18-main.jpeg','image/jpeg',223335,'2012-02-17 23:17:43','2012_2_ALICE-18-1003.jpeg','image/jpeg',48874,'2012-02-17 23:15:45',1);
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rails_admin_histories`
--

DROP TABLE IF EXISTS `rails_admin_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rails_admin_histories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` text COLLATE utf8_unicode_ci,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item` int(11) DEFAULT NULL,
  `table` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `month` smallint(6) DEFAULT NULL,
  `year` bigint(20) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_rails_admin_histories` (`item`,`table`,`month`,`year`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rails_admin_histories`
--

LOCK TABLES `rails_admin_histories` WRITE;
/*!40000 ALTER TABLE `rails_admin_histories` DISABLE KEYS */;
INSERT INTO `rails_admin_histories` VALUES (1,'Changed zip, photo_file_size, photo_updated_at','admin@alfadm.com',23,'Project',NULL,NULL,'2011-11-30 19:01:14','2011-11-30 19:01:14'),(2,'Changed zip, photo_file_size, photo_updated_at','admin@alfadm.com',9,'Project',NULL,NULL,'2011-11-30 19:03:06','2011-11-30 19:03:06'),(3,'Changed zip, photo_file_size, photo_updated_at','admin@alfadm.com',11,'Project',NULL,NULL,'2011-11-30 19:04:14','2011-11-30 19:04:14'),(4,'Changed zip, photo_file_size, photo_updated_at','admin@alfadm.com',19,'Project',NULL,NULL,'2011-11-30 19:05:26','2011-11-30 19:05:26'),(5,'Changed zip, photo_file_size, photo_updated_at','admin@alfadm.com',12,'Project',NULL,NULL,'2011-11-30 19:07:41','2011-11-30 19:07:41'),(6,'Added Galleries #11 associations, Changed photo_file_name, photo_file_size, photo_updated_at','admin@alfadm.com',23,'Project',NULL,NULL,'2011-11-30 19:08:50','2011-11-30 19:08:50'),(7,'Changed zip, photo_file_name, photo_file_size, photo_updated_at','admin@alfadm.com',22,'Project',NULL,NULL,'2011-11-30 19:19:35','2011-11-30 19:19:35'),(8,'Changed zip, photo_file_name, photo_file_size, photo_updated_at','admin@alfadm.com',21,'Project',NULL,NULL,'2011-11-30 20:00:53','2011-11-30 20:00:53'),(9,'Removed Galleries #9, #10 associations','admin@alfadm.com',21,'Project',NULL,NULL,'2011-11-30 20:01:19','2011-11-30 20:01:19'),(10,'Created ','admin@alfadm.com',24,'Project',NULL,NULL,'2011-11-30 20:01:35','2011-11-30 20:01:35'),(11,'Changed zip, photo_file_size, photo_updated_at','admin@alfadm.com',20,'Project',NULL,NULL,'2011-11-30 20:01:53','2011-11-30 20:01:53'),(12,'Changed zip, photo_file_name, photo_file_size, photo_updated_at','admin@alfadm.com',18,'Project',NULL,NULL,'2011-11-30 20:02:32','2011-11-30 20:02:32'),(13,'Changed zip, photo_file_name, photo_file_size, photo_updated_at','admin@alfadm.com',17,'Project',NULL,NULL,'2011-11-30 20:02:42','2011-11-30 20:02:42'),(14,'Changed zip, photo_file_name, photo_file_size, photo_updated_at','admin@alfadm.com',16,'Project',NULL,NULL,'2011-11-30 20:02:53','2011-11-30 20:02:53'),(15,'Added Galleries #12 associations, Changed zip, photo_file_name, photo_file_size, photo_updated_at','admin@alfadm.com',15,'Project',NULL,NULL,'2011-11-30 20:03:18','2011-11-30 20:03:18'),(16,'Changed zip, photo_file_name, photo_file_size, photo_updated_at','admin@alfadm.com',14,'Project',NULL,NULL,'2011-11-30 20:03:28','2011-11-30 20:03:28'),(17,'Changed zip, photo_file_size, photo_updated_at','admin@alfadm.com',10,'Project',NULL,NULL,'2011-11-30 20:03:49','2011-11-30 20:03:49'),(18,'Changed zip, photo_file_size, photo_updated_at','admin@alfadm.com',8,'Project',NULL,NULL,'2011-11-30 20:04:02','2011-11-30 20:04:02'),(19,'Destroyed ','admin@alfadm.com',24,'Project',NULL,NULL,'2011-11-30 20:04:36','2011-11-30 20:04:36'),(20,'Changed description','admin@alfadm.com',23,'Project',NULL,NULL,'2011-12-03 01:09:06','2011-12-03 01:09:06'),(21,'Created Alison 18 ','admin@alfadm.com',25,'Project',NULL,NULL,'2011-12-03 01:20:14','2011-12-03 01:20:14'),(22,'Changed status','admin@alfadm.com',25,'Project',NULL,NULL,'2011-12-03 01:20:47','2011-12-03 01:20:47'),(23,'Changed city, state, zip, project_type','admin@alfadm.com',25,'Project',NULL,NULL,'2011-12-03 01:21:11','2011-12-03 01:21:11'),(24,'Created David Namer','admin@alfadm.com',13,'Member',NULL,NULL,'2011-12-12 15:00:36','2011-12-12 15:00:36'),(25,'Destroyed David Namer','admin@alfadm.com',13,'Member',NULL,NULL,'2011-12-12 15:05:59','2011-12-12 15:05:59'),(26,'Created David Namer','admin@alfadm.com',14,'Member',NULL,NULL,'2011-12-12 15:07:38','2011-12-12 15:07:38'),(27,'Changed bio','admin@alfadm.com',8,'Member',NULL,NULL,'2011-12-20 22:09:37','2011-12-20 22:09:37'),(28,'Changed title','admin@alfadm.com',8,'Member',NULL,NULL,'2011-12-20 22:10:59','2011-12-20 22:10:59'),(29,'Changed title','admin@alfadm.com',14,'Member',NULL,NULL,'2011-12-20 22:11:22','2011-12-20 22:11:22'),(30,'Changed sort_order','admin@alfadm.com',14,'Member',NULL,NULL,'2011-12-20 22:12:05','2011-12-20 22:12:05'),(31,'Changed sort_order','admin@alfadm.com',10,'Member',NULL,NULL,'2011-12-20 22:12:20','2011-12-20 22:12:20'),(32,'Changed sort_order','admin@alfadm.com',11,'Member',NULL,NULL,'2011-12-20 22:12:39','2011-12-20 22:12:39'),(33,'Changed bio','admin@alfadm.com',14,'Member',NULL,NULL,'2011-12-20 22:13:02','2011-12-20 22:13:02'),(34,'Created Alison Eighteen','admin@alfadm.com',26,'Project',NULL,NULL,'2012-02-17 23:15:47','2012-02-17 23:15:47'),(35,'Changed diagram_file_name, diagram_content_type, diagram_file_size, diagram_updated_at','admin@alfadm.com',26,'Project',NULL,NULL,'2012-02-17 23:17:44','2012-02-17 23:17:44'),(36,'Destroyed Alison 18 ','admin@alfadm.com',25,'Project',NULL,NULL,'2012-02-17 23:18:30','2012-02-17 23:18:30'),(37,'Added Project_types #4, #3, #2, #1 associations','admin@alfadm.com',26,'Project',NULL,NULL,'2012-02-17 23:21:05','2012-02-17 23:21:05'),(38,'Added Galleries #13 associations','admin@alfadm.com',26,'Project',NULL,NULL,'2012-02-17 23:41:10','2012-02-17 23:41:10'),(39,'Changed sort_order','admin@alfadm.com',23,'Project',NULL,NULL,'2012-02-17 23:44:16','2012-02-17 23:44:16'),(40,'Changed sort_order','admin@alfadm.com',26,'Project',NULL,NULL,'2012-02-17 23:44:29','2012-02-17 23:44:29'),(41,'Changed status','admin@alfadm.com',19,'Project',NULL,NULL,'2012-02-17 23:47:23','2012-02-17 23:47:23'),(42,'Changed status','admin@alfadm.com',18,'Project',NULL,NULL,'2012-02-17 23:47:45','2012-02-17 23:47:45'),(43,'Changed status','admin@alfadm.com',17,'Project',NULL,NULL,'2012-02-17 23:48:04','2012-02-17 23:48:04'),(44,'Changed status','admin@alfadm.com',16,'Project',NULL,NULL,'2012-02-17 23:48:18','2012-02-17 23:48:18'),(45,'Changed status','admin@alfadm.com',15,'Project',NULL,NULL,'2012-02-17 23:48:34','2012-02-17 23:48:34'),(46,'Changed status','admin@alfadm.com',14,'Project',NULL,NULL,'2012-02-17 23:49:00','2012-02-17 23:49:00'),(47,'Changed status','admin@alfadm.com',15,'Project',NULL,NULL,'2012-02-17 23:49:13','2012-02-17 23:49:13'),(48,'Changed status','admin@alfadm.com',16,'Project',NULL,NULL,'2012-02-17 23:49:30','2012-02-17 23:49:30'),(49,'Changed status','admin@alfadm.com',18,'Project',NULL,NULL,'2012-02-17 23:49:45','2012-02-17 23:49:45'),(50,'Changed status','admin@alfadm.com',19,'Project',NULL,NULL,'2012-02-17 23:50:07','2012-02-17 23:50:07'),(51,'Changed status','admin@alfadm.com',17,'Project',NULL,NULL,'2012-02-17 23:50:35','2012-02-17 23:50:35'),(52,'Changed status','admin@alfadm.com',20,'Project',NULL,NULL,'2012-02-17 23:51:08','2012-02-17 23:51:08'),(53,'Changed status','admin@alfadm.com',21,'Project',NULL,NULL,'2012-02-17 23:51:59','2012-02-17 23:51:59'),(54,'Changed status','admin@alfadm.com',22,'Project',NULL,NULL,'2012-02-17 23:52:41','2012-02-17 23:52:41'),(55,'Changed status','admin@alfadm.com',21,'Project',NULL,NULL,'2012-02-17 23:53:02','2012-02-17 23:53:02'),(56,'Changed status','admin@alfadm.com',23,'Project',NULL,NULL,'2012-02-17 23:53:15','2012-02-17 23:53:15'),(57,'Changed status','admin@alfadm.com',18,'Project',NULL,NULL,'2012-02-17 23:53:34','2012-02-17 23:53:34'),(58,'Changed status','admin@alfadm.com',17,'Project',NULL,NULL,'2012-02-17 23:54:00','2012-02-17 23:54:00'),(59,'Changed status','admin@alfadm.com',22,'Project',NULL,NULL,'2012-02-17 23:54:25','2012-02-17 23:54:25'),(60,'Changed status','admin@alfadm.com',23,'Project',NULL,NULL,'2012-02-17 23:54:33','2012-02-17 23:54:33'),(61,'Changed status','admin@alfadm.com',12,'Project',NULL,NULL,'2012-02-17 23:54:52','2012-02-17 23:54:52'),(62,'Changed status','admin@alfadm.com',17,'Project',NULL,NULL,'2012-02-17 23:55:03','2012-02-17 23:55:03'),(63,'Changed status','admin@alfadm.com',11,'Project',NULL,NULL,'2012-02-17 23:55:18','2012-02-17 23:55:18'),(64,'Changed status','admin@alfadm.com',10,'Project',NULL,NULL,'2012-02-17 23:55:30','2012-02-17 23:55:30'),(65,'Changed status','admin@alfadm.com',9,'Project',NULL,NULL,'2012-02-17 23:55:41','2012-02-17 23:55:41'),(66,'Changed status','admin@alfadm.com',8,'Project',NULL,NULL,'2012-02-17 23:55:51','2012-02-17 23:55:51'),(67,'Changed status','admin@alfadm.com',26,'Project',NULL,NULL,'2012-02-17 23:57:29','2012-02-17 23:57:29'),(68,'Changed description','admin@alfadm.com',26,'Project',NULL,NULL,'2012-02-17 23:57:51','2012-02-17 23:57:51'),(69,'Changed status','admin@alfadm.com',22,'Project',NULL,NULL,'2012-02-17 23:58:10','2012-02-17 23:58:10'),(70,'Changed status','admin@alfadm.com',17,'Project',NULL,NULL,'2012-02-18 00:01:28','2012-02-18 00:01:28'),(71,'Changed status','admin@alfadm.com',21,'Project',NULL,NULL,'2012-02-18 00:01:40','2012-02-18 00:01:40'),(72,'Changed status','admin@alfadm.com',19,'Project',NULL,NULL,'2012-02-18 00:02:16','2012-02-18 00:02:16'),(73,'Changed status','admin@alfadm.com',16,'Project',NULL,NULL,'2012-02-18 00:02:50','2012-02-18 00:02:50'),(74,'Changed status','admin@alfadm.com',15,'Project',NULL,NULL,'2012-02-18 00:03:05','2012-02-18 00:03:05'),(75,'Changed status','admin@alfadm.com',14,'Project',NULL,NULL,'2012-02-18 00:03:20','2012-02-18 00:03:20'),(76,'Changed title, description','admin@alfadm.com',10,'Project',NULL,NULL,'2012-02-18 00:04:24','2012-02-18 00:04:24'),(77,'Changed title','admin@alfadm.com',23,'Project',NULL,NULL,'2012-02-18 00:05:02','2012-02-18 00:05:02'),(78,'Changed title','admin@alfadm.com',22,'Project',NULL,NULL,'2012-02-18 00:05:14','2012-02-18 00:05:14'),(79,'Changed title','admin@alfadm.com',20,'Project',NULL,NULL,'2012-02-18 00:05:28','2012-02-18 00:05:28'),(80,'Changed title','admin@alfadm.com',19,'Project',NULL,NULL,'2012-02-18 00:05:40','2012-02-18 00:05:40'),(81,'Changed title','admin@alfadm.com',18,'Project',NULL,NULL,'2012-02-18 00:05:55','2012-02-18 00:05:55'),(82,'Changed title','admin@alfadm.com',17,'Project',NULL,NULL,'2012-02-18 00:06:06','2012-02-18 00:06:06'),(83,'Changed title','admin@alfadm.com',16,'Project',NULL,NULL,'2012-02-18 00:06:18','2012-02-18 00:06:18'),(84,'Changed title','admin@alfadm.com',15,'Project',NULL,NULL,'2012-02-18 00:06:30','2012-02-18 00:06:30'),(85,'Changed title','admin@alfadm.com',14,'Project',NULL,NULL,'2012-02-18 00:06:42','2012-02-18 00:06:42'),(86,'Changed title','admin@alfadm.com',12,'Project',NULL,NULL,'2012-02-18 00:06:53','2012-02-18 00:06:53'),(87,'Changed title','admin@alfadm.com',11,'Project',NULL,NULL,'2012-02-18 00:07:07','2012-02-18 00:07:07'),(88,'Changed title, description','admin@alfadm.com',10,'Project',NULL,NULL,'2012-02-18 00:07:46','2012-02-18 00:07:46'),(89,'Changed title','admin@alfadm.com',9,'Project',NULL,NULL,'2012-02-18 00:07:56','2012-02-18 00:07:56'),(90,'Changed title','admin@alfadm.com',8,'Project',NULL,NULL,'2012-02-18 00:08:19','2012-02-18 00:08:19'),(91,'Changed title','admin@alfadm.com',8,'Project',NULL,NULL,'2012-02-18 00:08:35','2012-02-18 00:08:35'),(92,'Changed sort_order','admin@alfadm.com',14,'Member',NULL,NULL,'2012-02-18 00:10:26','2012-02-18 00:10:26'),(93,'Changed bio','admin@alfadm.com',14,'Member',NULL,NULL,'2012-02-18 00:10:52','2012-02-18 00:10:52'),(94,'Changed diagram_file_name, diagram_file_size, diagram_updated_at','admin@alfadm.com',23,'Project',NULL,NULL,'2012-02-20 00:16:11','2012-02-20 00:16:11'),(95,'Removed Galleries #11 associations, Changed diagram_file_name, diagram_file_size, diagram_updated_at','admin@alfadm.com',23,'Project',NULL,NULL,'2012-02-20 00:20:52','2012-02-20 00:20:52'),(96,'Changed diagram_file_name, diagram_file_size, diagram_updated_at','admin@alfadm.com',23,'Project',NULL,NULL,'2012-02-20 00:22:22','2012-02-20 00:22:22'),(97,'Changed diagram_file_size, diagram_updated_at','admin@alfadm.com',23,'Project',NULL,NULL,'2012-02-20 00:23:32','2012-02-20 00:23:32'),(98,'Changed diagram_updated_at','admin@alfadm.com',23,'Project',NULL,NULL,'2012-02-20 00:24:28','2012-02-20 00:24:28'),(99,'Changed diagram_file_size, diagram_updated_at','admin@alfadm.com',23,'Project',NULL,NULL,'2012-02-20 00:25:09','2012-02-20 00:25:09'),(100,'Changed diagram_file_size, diagram_updated_at','admin@alfadm.com',23,'Project',NULL,NULL,'2012-02-20 00:27:08','2012-02-20 00:27:08');
/*!40000 ALTER TABLE `rails_admin_histories` ENABLE KEYS */;
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
INSERT INTO `schema_migrations` VALUES ('20110815192954'),('20110815192955'),('20110815192956'),('20110815192957'),('20110815192958'),('20110815192959'),('20110815192960'),('20110815192961'),('20110815192962'),('20110815192963'),('20110815192964'),('20110815192965'),('20110815192966'),('20110815192967'),('20110815192968'),('20110815192969'),('20110815192970'),('20110815211153'),('20110815213203'),('20110815214259'),('20110815222941'),('20110815224144'),('20110816030827'),('20110816205949'),('20110816212842'),('20110817015956'),('20110822210102'),('20110824173438'),('20110824173748'),('20110912150241'),('20111129160249'),('20111129160250');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
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
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin@alfadm.com','$2a$10$atHuhZ9iXr9xU7VBDvtTc.hbnGxH5B0CqnZdIHOjHReQkus8HW8pi',NULL,NULL,'2012-02-17 22:54:01',13,'2012-02-20 00:14:21','2012-02-17 22:54:01','50.75.213.38','50.75.213.38','2011-11-29 17:56:02','2012-02-20 00:14:21');
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

-- Dump completed on 2012-03-05 18:34:32
