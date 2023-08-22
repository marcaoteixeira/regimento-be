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
-- Table structure for table `tab_tipo`
--

DROP TABLE IF EXISTS `tab_tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tab_tipo` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `id_bloco` int unsigned NOT NULL,
  `tipo` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_tab_tipo_tab_bloco` (`id_bloco`),
  CONSTRAINT `FK_tab_tipo_tab_bloco` FOREIGN KEY (`id_bloco`) REFERENCES `tab_bloco` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Tipo de Facilidade';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_tipo`
--

LOCK TABLES `tab_tipo` WRITE;
/*!40000 ALTER TABLE `tab_tipo` DISABLE KEYS */;
INSERT INTO `tab_tipo` VALUES (1,1,'Artigo'),(2,1,'Ato da Mesa '),(3,1,'Código de ética'),(4,1,'Lei '),(5,1,'Norma Interna (ato normativo) '),(6,1,'Regulamento '),(7,1,'Resolução '),(8,2,'QO'),(9,2,'Consulta '),(10,2,'Decisão da Presidência (Ato do Presidente)'),(11,2,'Decisão da Mesa '),(12,2,'REC'),(13,2,'REM '),(14,2,'STF - MS - ADI - HC '),(15,3,'Prática '),(16,3,'Precedente'),(17,3,'Observação'),(18,4,'Nota');
/*!40000 ALTER TABLE `tab_tipo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-22 11:19:21
