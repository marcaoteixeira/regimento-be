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
-- Table structure for table `tab_quorum`
--

DROP TABLE IF EXISTS `tab_quorum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tab_quorum` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `comissao` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `sigla` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `membros` int NOT NULL,
  `quorum_aber` int NOT NULL,
  `quorum_abs` int NOT NULL,
  `um_decimo` int NOT NULL,
  `seis_centesimos` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Tabela com quorum nas Comissoes Permanentes da Câmara dos Deputados.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_quorum`
--

LOCK TABLES `tab_quorum` WRITE;
/*!40000 ALTER TABLE `tab_quorum` DISABLE KEYS */;
INSERT INTO `tab_quorum` VALUES (1,'Comissão de Agricultura, Pecuária, Abastecimento e Desenvolvimento Rural ','CAPADR',52,26,27,6,4),(2,'Comissão de Ciência e Tecnologia, Comunicação e Informática ','CCTCI',42,21,22,5,3),(3,'Comissão de Constituição e JUstiça e Cidadania','CCJC',66,33,34,7,4),(4,'Comissão de Cultura','CCULT',20,10,11,2,2),(5,'Comissão de Defesa do Consumidor','CDC',24,12,13,3,2),(6,'Comissão de Defesa dos Direitos da Mulher','CMULHER',22,11,12,3,2),(7,'Comissão de Defesa dos Direitos da Pessoa Idosa','CIDOSO',22,11,12,3,2),(8,'Comissão de Defesa dos Direitos das Pessoas com Deficiência','CDP',20,10,11,2,2),(9,'Comissão de Desenvolvimento Econômico, Indústria e Comércio e Serviços','CDEICS',18,9,10,2,2),(10,'Comissão de Desenvolvimento Urbano','CDU',18,9,10,2,2),(11,'Comissão de Direitos HUmanos e Minorias ','CDHM',18,9,10,2,2),(12,'Comissão de Educação','CE',42,21,22,5,3),(13,'Comissão do Esporte','CESPO',21,11,11,3,2),(14,'Comissão de Finanças e Tributação','CFT',48,24,25,5,3),(15,'Comissão de Fiscalização Financeira e Controle','CFFC',22,11,12,3,2),(16,'Comissão de Integração Nacional, Desenvolvimento Regional e da Amazônio','CINDRA',20,10,11,2,2),(17,'Comissão de Legislação PArticipativa','CLP',18,9,10,2,2),(18,'Comissão de Meio Ambiente e Desevolvimento Sustentável','CMADS',18,9,10,2,2),(19,'Comissão de Minas e Energia','CME',48,24,25,5,3),(20,'Comissão de Relações Exteriores e de Defesa Nacional','CREDN',38,19,20,4,3),(21,'Comissão de Segurança Pública e Combate ao Crime Organizado','CSPCCO',38,19,29,4,3),(22,'Comissão de Seguridade Social e Família','CSSF',52,26,27,6,4),(23,'Comissão de Trabalho, de Administração e Serviço Público','CTASP',26,13,14,3,2),(24,'Comissão de Turismo','CTUR',20,10,11,2,2),(25,'Comissão de Viação e Transportes','CVT',48,24,25,5,3);
/*!40000 ALTER TABLE `tab_quorum` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-04 10:11:56
