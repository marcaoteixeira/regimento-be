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
-- Table structure for table `tab_inciso`
--

DROP TABLE IF EXISTS `tab_inciso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tab_inciso` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `id_artigo` int unsigned NOT NULL,
  `id_paragrafo` int unsigned DEFAULT NULL,
  `inciso` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk-inciso-paragrafo` (`id_paragrafo`),
  KEY `FK_tab_inciso_tab_artigo` (`id_artigo`),
  CONSTRAINT `FK_tab_inciso_tab_artigo` FOREIGN KEY (`id_artigo`) REFERENCES `tab_artigo` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_tab_inciso_tab_paragrafo` FOREIGN KEY (`id_paragrafo`) REFERENCES `tab_paragrafo` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Tabela de incisos do RICD';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_inciso`
--

LOCK TABLES `tab_inciso` WRITE;
/*!40000 ALTER TABLE `tab_inciso` DISABLE KEYS */;
INSERT INTO `tab_inciso` VALUES (1,2,NULL,'<p class=\"MsoNormal\" style=\"text-align: justify; text-indent: 2.0cm;\"><span style=\"font-size: 12.0pt; mso-bidi-font-size: 10.0pt;\">I - ordin&aacute;rias, de 2 de fevereiro a 17 de julho e de 1&ordm; de agosto a 22 de dezembro; <em style=\"mso-bidi-font-style: normal;\"><a href=\"http://www2.camara.gov.br/legin/fed/emecon/2006/emendaconstitucional-50-14-fevereiro-2006-541079-retificacao-43124-pl.html\">(Inciso com reda&ccedil;&atilde;o adaptada &agrave; Emenda Constitucional n&ordm; 50, de 2006,</a></em> <em style=\"mso-bidi-font-style: normal;\"><a href=\"http://www2.camara.leg.br/legin/int/atomes/2006/atodamesa-80-26-abril-2006-541993-publicacaooriginal-49059-cd-mesa.html\">conforme Ato da Mesa n&ordm; 80, de 2006)</a></em></span></p>'),(2,2,NULL,'<p class=\"MsoNormal\" style=\"text-align: justify; text-indent: 2.0cm;\"><span style=\"font-size: 12.0pt; mso-bidi-font-size: 10.0pt;\">II - extraordin&aacute;rias, quando, com este car&aacute;ter, for convocado o Congresso Nacional.&nbsp;</span></p>');
/*!40000 ALTER TABLE `tab_inciso` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-29 11:32:32
