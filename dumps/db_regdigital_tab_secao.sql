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
-- Table structure for table `tab_secao`
--

DROP TABLE IF EXISTS `tab_secao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tab_secao` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `id_titulo` int unsigned NOT NULL,
  `id_capitulo` int unsigned NOT NULL,
  `secao` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `secao->capitulo` (`id_capitulo`),
  KEY `FK_tab_secao_tab_titulo` (`id_titulo`),
  CONSTRAINT `FK_tab_secao_tab_titulo` FOREIGN KEY (`id_titulo`) REFERENCES `tab_titulo` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `secao->capitulo` FOREIGN KEY (`id_capitulo`) REFERENCES `tab_capitulo` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Seções do Regimento Interno Facilitado Câmara dos Deputados';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_secao`
--

LOCK TABLES `tab_secao` WRITE;
/*!40000 ALTER TABLE `tab_secao` DISABLE KEYS */;
INSERT INTO `tab_secao` VALUES (1,1,3,'Seção I – Da Posse dos Deputados'),(2,1,3,'Seção II – Da Eleição da Mesa'),(3,2,9,'Seção I – Disposições Gerais'),(4,2,9,'Seção II – Da Presidência'),(5,2,9,'Seção III – Da Secretaria'),(6,2,23,'Seção I – Disposições Gerais'),(7,2,23,'Seção II – Das Comissões Permanentes'),(8,2,23,'Seção III – Das Comissões Temporárias'),(9,2,23,'Seção IV – Da Presidência das Comissões'),(10,2,23,'Seção V – Dos Impedimentos e Ausências'),(11,2,23,'Seção VI – Das Vagas'),(12,2,23,'Seção VII – Das Reuniões'),(13,2,23,'Seção VIII – Dos Trabalhos'),(14,2,23,'Seção IX – Da Admissibilidade e da Apreciação das Matérias pelas Comissões'),(15,2,23,'Seção X – Da Fiscalização e Controle'),(16,2,23,'Seção XI – Da Secretaria e das Atas'),(17,2,23,'Seção XII – Do Assessoramento Legislativo'),(18,3,25,'Seção I – Do Pequeno Expediente'),(19,3,25,'Seção II – Da Ordem do Dia'),(20,3,25,'Seção III – Do Grande Expediente'),(21,3,25,'Seção IV – Das Comunicações de Lideranças'),(22,3,25,'Seção V – Das Comunicações Parlamentares'),(23,3,25,'Seção VI – Da Comissão Geral'),(24,3,27,'Seção I – Das Questões de Ordem'),(25,3,27,'Seção II – Das Reclamações'),(26,4,32,'Seção I – Sujeitos a Despacho apenas do Presidente'),(27,4,32,'Seção II – Sujeitos a Despacho do Presidente, Ouvida a Mesa'),(28,4,32,'Seção III – Sujeitos a Deliberação do Plenário'),(29,5,41,'Seção I – Disposições Gerais'),(30,5,41,'Seção II – Do Requerimento de Urgência'),(31,5,41,'Seção III – Da Apreciação de Matéria Urgente'),(32,5,46,'Seção I – Disposições Gerais'),(33,5,46,'Seção II – Da Inscrição e do Uso da Palavra'),(34,5,46,'Seção III – Do Adiamento da Discussão'),(35,5,46,'Seção IV – Do Encerramento da Discussão'),(36,5,46,'Seção V – Da Proposição Emendada Durante a Discussão'),(37,5,47,'Seção I – Disposições Gerais'),(38,5,47,'Seção II – Das Modalidades e Processos de Votação'),(39,5,47,'Seção III – Do Processamento da Votação'),(40,5,47,'Seção IV – Do Encaminhamento da Votação'),(41,5,47,'Seção V – Do Adiamento da Votação'),(42,6,55,'Seção I – Dos Projetos de Fixação da Remuneração dos Membros do Congresso Nacional, do Presidente e do Vice-Presidente da República e dos Ministros de Estado'),(43,6,55,'Seção II – Da Tomada de Contas do Presidente da República');
/*!40000 ALTER TABLE `tab_secao` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07 10:00:23
