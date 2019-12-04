-- MySQL dump 10.13  Distrib 5.7.28, for Linux (x86_64)
--
-- Host: localhost    Database: livejournal2020
-- ------------------------------------------------------
-- Server version	5.7.28-0ubuntu0.16.04.2

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
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` VALUES (1,'Voluptatem et nemo nihil quidem asperiores quia aliquid.','Sequi dolores est iste expedita numquam. Est reiciendis saepe dolor exercitationem dolorum dolorem aliquam. A nostrum nobis similique tempore.','2019-11-27 10:31:17','2019-11-27 10:31:17'),(3,'Quidem est sint quas qui placeat.','Eum ullam sit recusandae qui est et. Quaerat eum magnam est temporibus non debitis et.','2019-11-27 10:38:21','2019-11-27 10:38:21'),(4,'Velit cumque ipsam velit eveniet rerum ex.','Voluptates reprehenderit et molestiae natus cum. Commodi quia et dolores iste minus magnam.','2019-11-27 10:38:21','2019-11-27 10:38:21'),(5,'Sit doloribus eius laudantium sint ut quis accusantium.','Dignissimos quis atque voluptatibus. Dicta adipisci autem tempora aspernatur magni facilis quidem. Neque velit laborum ducimus dolorem.','2019-11-27 10:38:21','2019-11-27 10:38:21'),(6,'Dolores porro maiores non aut eligendi vel.','Tenetur cumque eum possimus repellat. Blanditiis ut omnis harum dignissimos repellat nesciunt velit. Commodi distinctio enim natus omnis vitae illo. Tempora dolorem dignissimos voluptas voluptas.','2019-11-27 10:38:21','2019-11-27 10:38:21'),(7,'Delectus id sapiente earum vel non optio sint.','Quos voluptatibus est sed expedita esse. Facilis sunt dolores blanditiis repellendus ex impedit. Tempora at consequatur ducimus quia neque officiis. Animi nesciunt officia et vel.','2019-11-27 10:38:21','2019-11-27 10:38:21'),(8,'Eos aliquid adipisci est rerum accusamus dolorum.','Atque molestias et autem cum non consequatur. Tempora et debitis consequatur repudiandae. Corrupti a illo nihil dignissimos iusto aperiam eaque et.','2019-11-27 10:38:21','2019-11-27 10:38:21'),(9,'Quaerat et beatae facilis odio fugit.','Consequatur nostrum et ipsa et modi. Tempore consequatur adipisci consequuntur nulla. Id corrupti ducimus dolores consequatur quis labore.','2019-11-27 10:38:21','2019-11-27 10:38:21'),(10,'Et dolore laboriosam nihil dolorem culpa odit.','Quae exercitationem eum aut. Aut quia aut explicabo est inventore. Aut eius hic dolorem repudiandae non earum.','2019-11-27 10:38:21','2019-11-27 10:38:21'),(11,'Saepe illo magni quia incidunt.','Cum fugit laudantium ea possimus accusamus deserunt. Omnis quos occaecati ex autem quia et. In voluptatem mollitia reiciendis eligendi a.','2019-11-27 10:38:21','2019-11-27 10:38:21'),(12,'Doloribus ad eius impedit eius non consequatur.','Et ducimus magni voluptas consectetur deserunt. Accusamus iure voluptas veritatis vitae sunt. Iste eaque maxime non aperiam eum. Vel ipsam sit voluptatem ipsam corrupti nihil corporis.','2019-11-27 10:38:21','2019-11-27 10:38:21'),(13,'Dolor temporibus tempore aut et.','Illum dolor sit nemo ut molestiae enim. Modi rerum ratione quisquam nisi. Adipisci eius quo tempora et perspiciatis et.','2019-11-27 10:38:21','2019-11-27 10:38:21'),(14,'Laudantium voluptatem officia nam voluptas pariatur corrupti temporibus.','Voluptatibus voluptas qui nobis earum error molestiae tenetur beatae. Dolor adipisci veniam qui doloribus expedita non. Sit autem temporibus provident sapiente repudiandae natus alias. Dicta voluptatibus alias eius voluptatem illo eaque quidem velit.','2019-11-27 10:38:21','2019-11-27 10:38:21'),(15,'Delectus exercitationem et ex sed.','Rem iste quia veniam esse fuga. Optio soluta ut libero officia et aliquid repudiandae. Nemo mollitia at reiciendis et voluptas soluta.','2019-11-27 10:38:21','2019-11-27 10:38:21'),(16,'Et sed consequatur delectus quidem omnis illo.','Soluta quae asperiores explicabo deleniti expedita quis. Corporis architecto architecto odio. Officiis ea doloribus voluptates tenetur laboriosam at. Tempore architecto non et voluptatem sit architecto.','2019-11-27 10:38:21','2019-11-27 10:38:21'),(17,'Deserunt ea in quis.','Occaecati dolorem et aperiam veniam dolorum molestiae occaecati. Cupiditate voluptatibus maxime beatae saepe non exercitationem. Aspernatur ipsam et ad molestiae fugit est ullam. Quo qui enim harum labore. Sed officiis ipsam deleniti distinctio labore et corrupti cumque.','2019-11-27 10:38:21','2019-11-27 10:38:21'),(18,'Quis qui non qui placeat.','Alias alias totam eum commodi voluptas. Neque natus ut aut sunt. Sequi sequi deserunt voluptate voluptatibus. Temporibus inventore eos consequuntur alias odit est.','2019-11-27 10:38:21','2019-11-27 10:38:21'),(19,'Quia qui quia est quia perferendis animi.','Minima vero ut temporibus non eum est sequi. Maxime quia et exercitationem explicabo velit quia et. Consectetur sed et atque hic deleniti.','2019-11-27 10:38:21','2019-11-27 10:38:21'),(20,'Voluptatem eum nesciunt qui temporibus aut amet et.','Ut quia error porro fuga incidunt neque. Nam praesentium et magni odit. Reiciendis est ducimus et error nam.','2019-11-27 10:38:21','2019-11-27 10:38:21'),(40,'111','111','2019-11-28 12:10:34','2019-11-28 12:10:34'),(41,'ee','eee','2019-11-28 12:21:11','2019-11-28 12:21:11'),(42,'ww','www','2019-11-28 12:21:30','2019-11-28 12:21:30'),(73,'Sed fugit vitae maxime temporibus.','Est ut ex voluptatibus. Voluptates qui accusamus amet at cumque et. Sapiente sit sunt sunt ad illo.','2019-11-28 13:28:23','2019-11-28 13:28:23'),(74,'Nemo maiores maxime et dignissimos perferendis fuga et.','Qui sed saepe labore culpa neque sed aut. Ad ut molestias est vel nihil quidem.','2019-11-28 13:28:23','2019-11-28 13:28:23'),(75,'Sint incidunt illo omnis corrupti facilis porro molestias.','Dolore repellat dolor ut. Deleniti soluta facere recusandae nobis in eius. Placeat molestiae cupiditate deserunt et sint. Non voluptas sapiente quidem et nemo ab.','2019-11-28 13:28:23','2019-11-28 13:28:23'),(76,'Nihil molestias porro laudantium et aut eos fugit.','Iste similique neque placeat ut commodi dolorem voluptas. Eum maxime illo blanditiis quaerat sit magnam. Voluptatibus ducimus eum eos blanditiis rem. Deserunt sit fugit minima magni perferendis. Esse est eum consectetur est.','2019-11-28 13:28:23','2019-11-28 13:28:23'),(77,'Blanditiis nostrum quia voluptatem qui fugit quisquam cupiditate nesciunt.','Error asperiores dolores enim nihil totam autem dolores quia. Quidem nemo facere ut quia. Velit explicabo minima repellat eos deleniti unde dolorem. Beatae itaque commodi quia beatae ut tempore et quasi.','2019-11-28 13:28:23','2019-11-28 13:28:23'),(78,'Sapiente ea dolor beatae illum illo.','Voluptates pariatur omnis adipisci iste. Dolor dolore iste enim voluptatem quod ut. Odio et provident et omnis. Blanditiis rerum eaque perspiciatis dicta.','2019-11-28 13:28:23','2019-11-28 13:28:23'),(79,'Quisquam corporis est eum vitae rerum quidem.','Vel rem nobis laborum nulla fuga. Qui ut et error dolor quam ut. Quo iste quae totam et omnis quasi. Facere deserunt voluptatem harum totam laborum qui ea sequi.','2019-11-28 13:28:23','2019-11-28 13:28:23'),(80,'Ducimus corporis magnam dolor quasi.','Ut consequatur ut neque est. Iste et a quisquam maxime. Fugit sunt quod corporis repellendus vitae et velit omnis. Omnis est itaque in quia omnis.','2019-11-28 13:28:23','2019-11-28 13:28:23'),(81,'Voluptate et dolores quis pariatur.','Cumque et possimus sunt laudantium. Perferendis consequatur accusamus optio sapiente. Id id ut enim. Aut adipisci fugiat magnam dolorem pariatur soluta fugiat.','2019-11-28 13:28:23','2019-11-29 13:43:34'),(82,'Deleniti aut illo omnis dolor.','Ut repudiandae nobis natus et. Possimus non dolor repellat dicta expedita est. Consequatur cupiditate magni qui quia iste quidem.','2019-11-28 13:28:23','2019-11-28 13:28:23'),(83,'Unde ipsum similique fuga non rerum.','Maiores consequatur placeat velit cupiditate rerum. Ea cumque eius quidem accusantium qui eos. Perspiciatis recusandae quas id et.','2019-11-28 13:28:23','2019-11-28 13:28:23'),(84,'Voluptates pariatur id laborum sit distinctio sed blanditiis.','At possimus ex at. Rerum sed eius quis non qui autem. Harum et aut dicta et. At quia velit ipsa labore soluta reiciendis cupiditate perferendis.','2019-11-28 13:28:23','2019-11-28 13:28:23'),(85,'Velit eligendi sunt omnis voluptatem.','Accusantium eos iste voluptate doloremque minima. Qui deserunt tempore alias iure eius. Porro dolor unde nostrum accusamus ducimus. Eius eius id repudiandae.','2019-11-28 13:28:23','2019-11-28 13:28:23'),(86,'Natus necessitatibus et aliquam sit ea.','Sit veniam quia corporis fugit culpa. Rerum qui adipisci tempore accusamus aliquam ea quam.','2019-11-28 13:28:23','2019-11-28 13:28:23'),(87,'Magni laudantium illo eos eos qui porro.','Ut reiciendis fuga labore quae vero. Consequatur non aperiam est ex quisquam et culpa. Rerum eum ipsa corrupti quasi. Quidem voluptatem sed architecto iste tempore dolor fuga facilis.','2019-11-28 13:28:23','2019-11-28 13:28:23'),(88,'Nulla ducimus dolorum sit ut natus ut nihil error.','Debitis rerum nesciunt illo dicta sapiente dolores. Laborum suscipit neque occaecati fugit. Eaque illo odio fuga vitae minima accusamus. Ut hic aut at nihil.','2019-11-28 13:28:23','2019-11-28 13:28:23'),(89,'Nemo quia voluptatem beatae esse nisi fuga architecto.','Voluptate illum maiores qui consequuntur. Iste est doloremque doloremque doloribus animi. Et molestias ipsam voluptas temporibus ipsa rerum.','2019-11-28 13:28:23','2019-11-28 13:28:23'),(90,'At omnis praesentium enim dolorem.','Et molestias aut laboriosam itaque consequatur. Rerum quaerat ut autem commodi.','2019-11-28 13:28:23','2019-11-28 13:28:23'),(91,'Labore unde magni totam distinctio ab officia quia.','Esse accusantium ut ut incidunt. Est libero pariatur magnam qui omnis voluptate aspernatur. Laborum eos mollitia magni natus et. Exercitationem dolorem corrupti voluptas exercitationem aut magni quisquam.','2019-11-28 13:28:23','2019-12-02 13:05:29');
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,1,91,'Tempora et molestiae ut ut omnis. Est excepturi voluptatibus voluptas qui eligendi in. Perspiciatis fuga modi voluptatem autem cum dolore omnis at. Aperiam expedita distinctio voluptatem neque sed quis maxime.',0,'2019-12-02 14:28:47','2019-12-02 14:28:47'),(2,1,1,'Sed qui velit quia voluptatem est quae. Cumque saepe sint voluptatem fugit. Nesciunt corporis reiciendis quia impedit labore ex non. Omnis et impedit debitis porro pariatur dolor culpa. Maiores rem labore modi nesciunt.',1,'2019-12-02 14:28:47','2019-12-02 14:28:47'),(3,1,1,'Similique doloremque aperiam aut quo debitis. Minima laboriosam inventore nostrum rerum voluptas molestiae. Ut atque voluptatem quaerat enim. Esse labore suscipit velit architecto.',1,'2019-12-02 14:28:47','2019-12-02 14:28:47'),(4,1,1,'Voluptas exercitationem dolores aut rerum sit sit. Vel provident neque eos. Ea illo et cumque enim.',3,'2019-12-02 14:28:47','2019-12-02 14:28:47'),(5,1,1,'Non dignissimos non soluta perspiciatis sed et occaecati. Et ut dolore neque aut. Nisi ad dignissimos unde modi.',3,'2019-12-02 14:28:47','2019-12-02 14:28:47'),(7,1,91,'Eveniet blanditiis et asperiores aut velit. Laboriosam qui ea impedit eaque neque et quibusdam. Nobis enim sit illum soluta.',0,'2019-12-02 14:28:47','2019-12-02 14:28:47'),(9,1,90,'Voluptates qui ea necessitatibus laudantium sed. Corrupti mollitia veritatis quod sed saepe adipisci laborum. Sint in inventore id mollitia doloremque dolor perspiciatis.',0,'2019-12-02 14:28:47','2019-12-02 14:28:47'),(10,1,1,'Et quo modi assumenda dolore sunt voluptatibus iusto quis. Maxime quis autem excepturi odio corporis reprehenderit magni minima. Quam odit odit rem sunt. Ut accusantium voluptas quis asperiores et sit aliquid.',7,'2019-12-02 14:28:47','2019-12-02 14:28:47'),(11,1,1,'Voluptas tempora non pariatur. Eum porro qui ullam totam ducimus repellat vitae corrupti. Deserunt tenetur distinctio voluptatem laborum quo est. Repellendus et eius iste quia modi nemo harum.',7,'2019-12-02 14:28:47','2019-12-02 14:28:47'),(14,1,1,'Adipisci voluptas ipsa ad necessitatibus ipsum nulla sunt. Explicabo et nihil quaerat qui dolor. Asperiores voluptas aspernatur dignissimos eum. Alias enim libero aut architecto et non dolores.',11,'2019-12-02 14:28:47','2019-12-02 14:28:47');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_11_27_073623_create_articles_table',1),(5,'2019_12_02_140858_create_comments_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
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

-- Dump completed on 2019-12-04 14:00:41
