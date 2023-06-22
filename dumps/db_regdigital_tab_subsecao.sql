-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: db_regdigital
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `tab_subsecao`
--

DROP TABLE IF EXISTS `tab_subsecao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tab_subsecao` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `id_titulo` int unsigned DEFAULT NULL,
  `id_capitulo` int unsigned DEFAULT NULL,
  `id_secao` int unsigned DEFAULT NULL,
  `subsecao` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subsecao->secao` (`id_secao`),
  KEY `id_titulo` (`id_titulo`),
  KEY `id_capitulo` (`id_capitulo`),
  CONSTRAINT `FK_tab_subsecao_tab_capitulo` FOREIGN KEY (`id_capitulo`) REFERENCES `tab_capitulo` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_tab_subsecao_tab_titulo` FOREIGN KEY (`id_titulo`) REFERENCES `tab_titulo` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `subsecao->secao` FOREIGN KEY (`id_secao`) REFERENCES `tab_secao` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Sub seções do RIC CD';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_subsecao`
--

LOCK TABLES `tab_subsecao` WRITE;
/*!40000 ALTER TABLE `tab_subsecao` DISABLE KEYS */;
INSERT INTO `tab_subsecao` VALUES (1,2,23,7,'Subseção I – Da Composição e Instalação'),(2,2,23,7,'Subseção II – Das Subcomissões e Turmas'),(3,2,23,7,'Subseção III – Das Matérias ou Atividades de Competência das Comissões'),(4,2,23,8,'Subseção I – Das Comissões Especiais'),(5,2,23,8,'Subseção II – Das Comissões Parlamentares de Inquérito'),(6,2,23,8,'Subseção III – Das Comissões Externas'),(7,2,23,13,'Subseção I – Da Ordem dos Trabalhos'),(8,2,23,13,'Subseção II – Dos Prazos'),(9,5,46,33,'Subseção I – Da Inscrição de Debatedores'),(10,5,46,33,'Subseção II – Do Uso da Palavra'),(11,5,46,33,'Subseção III – Do Aparte');
/*!40000 ALTER TABLE `tab_subsecao` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-22  9:54:19
