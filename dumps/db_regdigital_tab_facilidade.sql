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
-- Table structure for table `tab_facilidade`
--

DROP TABLE IF EXISTS `tab_facilidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tab_facilidade` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `id_bloco` int unsigned DEFAULT '0',
  `id_titulo` int unsigned DEFAULT '0',
  `id_capitulo` int unsigned DEFAULT '0',
  `id_secao` int unsigned DEFAULT '0',
  `id_subsecao` int unsigned DEFAULT '0',
  `id_artigo` int unsigned DEFAULT '0',
  `id_paragrafo` int unsigned DEFAULT '0',
  `id_inciso` int unsigned DEFAULT '0',
  `id_alinea` int unsigned DEFAULT '0',
  `facilidade` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK_tab_remissao_tab_artigo` (`id_artigo`) USING BTREE,
  KEY `FK_tab_remissao_tab_paragrafo` (`id_paragrafo`) USING BTREE,
  KEY `FK_tab_remissao_tab_inciso` (`id_inciso`) USING BTREE,
  KEY `FK_tab_remissao_tab_alinea` (`id_alinea`) USING BTREE,
  KEY `FK_tab_facilidades_tab_bloco` (`id_bloco`),
  KEY `FK_tab_facilidade_tab_titulo` (`id_titulo`),
  KEY `id_capitulo` (`id_capitulo`),
  KEY `id_secao` (`id_secao`),
  KEY `id_subsecao` (`id_subsecao`),
  CONSTRAINT `FK_tab_facilidade_tab_capitulo` FOREIGN KEY (`id_capitulo`) REFERENCES `tab_capitulo` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_tab_facilidade_tab_secao` FOREIGN KEY (`id_secao`) REFERENCES `tab_secao` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_tab_facilidade_tab_subsecao` FOREIGN KEY (`id_subsecao`) REFERENCES `tab_subsecao` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_tab_facilidade_tab_titulo` FOREIGN KEY (`id_titulo`) REFERENCES `tab_titulo` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_tab_facilidades_tab_bloco` FOREIGN KEY (`id_bloco`) REFERENCES `tab_bloco` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `tab_facilidade_ibfk_1` FOREIGN KEY (`id_alinea`) REFERENCES `tab_alinea` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `tab_facilidade_ibfk_2` FOREIGN KEY (`id_artigo`) REFERENCES `tab_artigo` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `tab_facilidade_ibfk_3` FOREIGN KEY (`id_inciso`) REFERENCES `tab_inciso` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `tab_facilidade_ibfk_4` FOREIGN KEY (`id_paragrafo`) REFERENCES `tab_paragrafo` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='Tabela de facilidades do regimento Facilitados da Cãmara dos Deputados';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_facilidade`
--

LOCK TABLES `tab_facilidade` WRITE;
/*!40000 ALTER TABLE `tab_facilidade` DISABLE KEYS */;
/*!40000 ALTER TABLE `tab_facilidade` ENABLE KEYS */;
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
