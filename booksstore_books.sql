-- MySQL dump 10.13  Distrib 8.0.31, for macos12 (x86_64)
--
-- Host: localhost    Database: booksstore
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `author` varchar(45) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'A Heart That Works','Rob Delaney','2023-03-13 13:13:36'),(2,'Afterlives','Abdulrazak Gurnah','2023-03-13 13:13:36'),(3,'All the Lovers in the Night','Mieko Kawakami','2023-03-13 13:13:36'),(4,'All This Could Be Different','Sarah Thankam Mathews','2023-03-13 13:13:36'),(5,'An Immense World','Ed Yong','2023-03-13 13:13:36'),(6,'Ancestor Trouble','Maud Newton','2023-03-13 13:13:36'),(7,'Animal Joy','Nuar Alsadir','2023-03-12 13:13:36'),(8,'Anna: The Biography','Amy Odell','2023-03-13 13:13:36'),(9,'Babel','R.F. Kuang','2023-03-13 13:13:36'),(10,'Bitter Orange Tree','Jokha Alharthi','2023-03-13 13:13:36'),(11,'The Book of Goose','Yiyun Li','2023-03-13 13:13:36'),(12,'Breathless','David Quammen','2023-03-13 13:13:36'),(13,'Butts: A Backstory','Heather Radke','2023-03-13 13:13:36'),(14,'Calling for a Blanket Dance','Oscar Hokeah','2023-03-13 13:13:36'),(15,'The Candy House','Jennifer Egan','2023-03-13 13:13:36'),(16,'Carrie Soto Is Back','Taylor Jenkins Reid','2023-03-13 13:13:36'),(17,'Chef\'s Kiss','Rob Delaney','2023-03-13 13:13:36'),(18,'Remainders Of Him','Colleen Hoover','2023-03-14 10:13:36'),(19,'The Love Hypothesis','Ali Hazelwood','2023-03-14 10:13:36'),(20,'Civil Rights Queen','Tomiko Brown-Nagin','2023-03-13 13:13:36'),(21,'Constructing a Nervous System','Margo Jefferson','2023-03-13 13:13:36'),(22,'Cover Story','Susan Rigetti','2023-03-13 13:13:36'),(23,'The Crane Wife','CJ Hauser','2023-03-12 13:13:36'),(24,'The Daughter of Doctor Moreau','Silvia Moreno-Garcia','2023-03-12 13:13:36'),(25,'Dinosaurs','Lydia Millet','2023-03-13 13:13:36'),(26,'The Subtle Art Of Not Giving A Fuck','Mark Manson','2023-03-14 10:13:36'),(27,'Ugly Love','Colleen Hoover','2023-03-14 10:13:36'),(28,'They Both Die At The End','Adam Silvera','2023-03-14 10:13:36'),(29,'Dirtbag, Massachusetts','Isaac Fitzgerald','2023-03-14 10:13:36'),(30,'Ducks: Two Years in the Oil Sands','Kate Beaton','2023-03-13 13:13:36'),(31,'Easy Beauty','Chloé Cooper Jones','2023-03-13 13:13:36'),(32,'Eating to Extinction','Dan Saladino','2023-03-13 13:13:36'),(33,'Either/Or','Elif Batuman','2023-03-13 13:13:36'),(34,'The Emergency','Thomas Fisher','2023-03-12 13:13:36'),(35,'The Employees','Olga Ravn','2023-03-12 13:13:36'),(36,'The Escape Artist','Jonathan Freedland','2023-03-12 13:13:36'),(37,'Everything I Need I Get from You','Kaitlyn Tiffany','2023-03-12 13:13:36'),(38,'The Extraordinary Life of an Ordinary Man','Paul Newman','2023-03-12 13:13:36'),(39,'The Family Outing','Jessi Hempel','2023-03-12 13:13:36'),(40,'Fellowship Point','Alice Elliott Dark','2023-03-12 13:13:36'),(41,'Finding Me','Viola Davis','2023-03-12 13:13:36'),(42,'Fiona and Jane','Jean Chen Ho','2023-03-12 13:13:36'),(43,'The Furrows','Namwali Serpell','2023-03-12 13:13:36'),(44,'Getting Lost','Annie Ernaux','2023-03-12 13:13:36'),(45,'Glory','NoViolet Bulawayo','2023-03-12 13:13:36'),(46,'Goliath','Tochi Onyebuchi','2023-03-12 13:13:36'),(47,'Half American','Matthew F. Delmont','2023-03-12 13:13:36'),(48,'The Hero of This Book','Elizabeth McCracken','2023-03-12 13:13:36'),(49,'His Name Is George Floyd','Robert Samuels and Toluse Olorunnipa','2023-03-12 13:13:36'),(50,'Honey & Spice','Bolu Babalola','2023-03-12 13:13:36'),(60,'How Far the Light Reaches','Sabrina Imbler','2023-03-12 13:13:36'),(61,'The Hurting Kind','Ada Limón','2023-03-12 13:13:36'),(62,'I Came All This Way to Meet You','Jami Attenberg','2023-03-12 13:13:36'),(63,'I\'m Glad My Mom Died','Jennette McCurdy','2023-03-12 13:13:36'),(64,'If an Egyptian Cannot Speak English','Noor Naga','2023-03-12 13:13:36'),(65,'If I Survive You','Jonathan Escoffery','2023-03-12 13:13:36'),(66,'In Love','Amy Bloom','2023-03-12 13:13:36'),(67,'Index, A History of the','Dennis Duncan','2023-03-12 13:13:36'),(68,'The Invisible Kingdom','Meghan O’Rourke','2023-03-12 13:13:36'),(69,'Learning to Talk','Hilary Mantel','2023-03-12 13:13:36'),(70,'Lesser Known Monsters of the 21st Century','Kim Fu','2023-03-12 13:13:36'),(71,'Liberation Day','George Saunders','2023-03-12 13:13:36'),(72,'Life Between the Tides','Adam Nicolson','2023-03-12 13:13:36'),(73,'The Light We Carry','Michelle Obama','2023-03-12 13:13:36'),(74,'Lost & Found','Kathryn Schulz','2023-03-12 13:13:36'),(75,'Lucy by the Sea','Elizabeth Strout','2023-03-12 13:13:36'),(76,'The Man Who Could Move Clouds','Ingrid Rojas Contreras','2023-03-12 13:13:36'),(77,'Manifesto','Bernardine Evaristo','2023-03-12 13:13:36'),(78,'Maps of Our Spectacular Bodies','Maddie Mortimer','2023-03-12 13:13:36'),(79,'The Marriage Portrait','Maggie O’Farrell','2023-03-12 13:13:36'),(80,'The Method','Isaac Butler','2023-03-12 13:13:36'),(81,'Mouth to Mouth','Antoine Wilson','2023-03-12 13:13:36'),(82,'The Naked Don\'t Fear the Water','Matthieu Aikins','2023-03-12 13:13:36'),(83,'Night of the Living Rez','Morgan Talty','2023-03-12 13:13:36'),(84,'Nightcrawling','Leila Mottley','2023-03-12 13:13:36'),(85,'Now Is Not the Time to Panic','Kevin Wilson','2023-03-12 13:13:36'),(86,'Nuclear Family','Joseph Han','2023-03-12 13:13:36'),(87,'Olga Dies Dreaming','Xochitl Gonzalez','2023-03-12 13:13:36'),(88,'Our Missing Hearts','Celeste Ng','2023-03-12 13:13:36'),(89,'The Rabbit Hutch','Tess Gunty','2023-03-12 13:13:36'),(90,'The Revolutionary: Samuel Adams','Stacy Schiff','2023-03-12 13:13:36'),(91,'Scattered All Over the Earth','Yoko Tawada','2023-03-12 13:13:36'),(92,'The School for Good Mothers','Jessamine Chan','2023-03-12 13:13:36'),(93,'Scoundrel','Sarah Weinman','2023-03-12 13:13:36'),(94,'Shrines of Gaiety','Kate Atkinson','2023-03-12 13:13:36'),(95,'Signal Fires','Dani Shapiro','2023-03-12 13:13:36'),(96,'Siren Queen','Nghi Vo','2023-03-12 13:13:36'),(97,'South to America','Imani Perry','2023-03-12 13:13:36'),(98,'Stay True','Hua Hsu','2023-03-12 13:13:36'),(99,'Still Life','Jay Hopler','2023-03-12 13:13:36'),(100,'Strangers to Ourselves','Rachel Aviv','2023-03-12 13:13:36'),(101,'Ted Kennedy: A Life','John A. Farrell','2023-03-12 13:13:36'),(102,'This Time Tomorrow','Emma Straub','2023-03-12 13:13:36'),(103,'Tides','Sara Freeman','2023-03-12 13:13:36'),(104,'Time Is a Mother','Ocean Vuong','2023-03-12 13:13:36'),(105,'Tomorrow, and Tomorrow, and Tomorrow','Gabrielle Zevin','2023-03-12 13:13:36'),(106,'The Trayvon Generation','Elizabeth Alexander','2023-03-12 13:13:36'),(107,'Trust','Hernan Diaz','2023-03-12 13:13:36'),(108,'Under the Skin','Linda Villarosa','2023-03-12 13:13:36'),(109,'Upgrade',' Blake Crouch','2023-03-12 13:13:36'),(110,'Vladimir','Julia May Jonas','2023-03-12 13:13:36'),(111,'When We Were Sisters','Fatimah Asghar','2023-03-12 13:13:36'),(112,'Woman Without Shame','Sandra Cisneros','2023-03-12 13:13:36');
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-14 20:41:54
