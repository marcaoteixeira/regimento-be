-- MySQL dump 10.13  Distrib 8.0.33, for Linux (x86_64)
--
-- Host: localhost    Database: db_regdigital
-- ------------------------------------------------------
-- Server version	8.0.33-0ubuntu0.22.04.1

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
-- Table structure for table `tab_bloco`
--

DROP TABLE IF EXISTS `tab_bloco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tab_bloco` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `bloco` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
  `dispositivo` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_bloco`
--

LOCK TABLES `tab_bloco` WRITE;
/*!40000 ALTER TABLE `tab_bloco` DISABLE KEYS */;
INSERT INTO `tab_bloco` VALUES (3,'remissao','artigo'),(4,'remissao','ato da mesa'),(5,'remissao','codigo de etica'),(6,'remissao','lei'),(7,'remissao','norma interna'),(8,'remissao','regulamento'),(9,'remissao','resolucao'),(10,'remissao','sumula'),(11,'jurisprudencia','qo'),(12,'jurisprudencia','consulta'),(13,'jurisprudencia','decisao da presidencia '),(14,'jurisprudencia','decisao da mesa'),(15,'jurisprudencia','rec'),(16,'jurisprudencia','rem'),(17,'jurisprudencia','stf-ms-adi-hc'),(18,'observacoes','pratica'),(19,'observacoes','precedente'),(20,'observacoes','observacao'),(21,'nota','nota');
/*!40000 ALTER TABLE `tab_bloco` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-01 22:14:18
