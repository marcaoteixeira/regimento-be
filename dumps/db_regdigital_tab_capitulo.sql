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
-- Table structure for table `tab_capitulo`
--

DROP TABLE IF EXISTS `tab_capitulo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tab_capitulo` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `id_titulo` int unsigned NOT NULL,
  `capitulo` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `fk_capitulo-titulo` (`id_titulo`),
  CONSTRAINT `fk_capitulo-titulo` FOREIGN KEY (`id_titulo`) REFERENCES `tab_titulo` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Tabela de capítulos do RICCD';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_capitulo`
--

LOCK TABLES `tab_capitulo` WRITE;
/*!40000 ALTER TABLE `tab_capitulo` DISABLE KEYS */;
INSERT INTO `tab_capitulo` VALUES (1,1,'CAPÍTULO I - DA SEDE'),(2,1,'CAPÍTULO II -  DAS SESSÕES LEGISLATIVAS'),(3,1,'CAPÍTULO III - DAS SESSÕES PREPARATÓRIAS'),(4,1,'CAPÍTULO IV - DOS LÍDERES'),(5,1,'CAPÍTULO V - DOS BLOCOS PARLAMENTARES,  DA MAIORIA E DA MINORIA'),(9,2,'CAPÍTULO I - DA MESA'),(10,2,'CAPÍTULO II - DO COLÉGIO DE LÍDERES'),(11,2,'CAPÍTULO II-A - DA SECRETARIA DA MULHER'),(12,2,'CAPÍTULO II-B DA SECRETARIA DA PRIMEIRA INFÂNCIA, INFÂNCIA,\r\nADOLESCÊNCIA E JUVENTUDE\r\n'),(13,2,'CAPÍTULO III - DA PROCURADORIA PARLAMENTAR'),(14,2,'CAPÍTULO III-A - DA OUVIDAORIA PARLAMENTAR'),(16,2,'CAPÍTULO III-B - DO CONSELHO DE ÉTICA E DECORO PARLAMENTAR'),(17,2,'CAPÍTULO III-C - DA CORREGEDORIA PARLAMENTAR'),(18,2,'CAPÍTULO III-D - DA SECRETARIA DE RELAÇÕES INTERNACIONAIS'),(19,2,'CAPÍTULO III-E - DA SECRETARIA DE COMUNICAÇÃO SOCIAL'),(20,2,'CAPÍTULO III-F - DA SECRETARIA DE PARTICIPAÇÃO SOCIAL INTERAÇAO MÍDIAS DIGITAIS'),(21,2,'CAPÍTULO III-G – DA SECRETARIA DA TRANSPARÊNCIA'),(23,2,'CAPÍTULO IV – DAS COMISSÕES'),(24,3,'Capítulo I – Disposições Gerais'),(25,3,'Capítulo II – Das Sessões Públicas'),(26,3,'Capítulo III – Das Sessões Secretas'),(27,3,'Capítulo IV – Da Interpretação e Observância do Regimento'),(28,3,'Capítulo V – Da Ata'),(29,4,'Capítulo I – Disposições Gerais'),(30,4,'Capítulo II – Dos Projetos'),(31,4,'Capítulo III – Das Indicações'),(32,4,'Capítulo IV – Dos Requerimentos'),(33,4,'Capítulo V – Das Emendas'),(34,4,'Capítulo VI – Dos Pareceres'),(35,5,'Capítulo I – Da Tramitação'),(36,5,'Capítulo II – Do Recebimento e da Distribuição das Proposições'),(37,5,'Capítulo III – Da Apreciação Preliminar'),(38,5,'Capítulo IV – Dos Turnos a Que Estão Sujeitas as Proposições'),(39,5,'Capítulo V – Do Interstício'),(40,5,'Capítulo VI – Do Regime de Tramitação'),(41,5,'Capítulo VII – Da Urgência'),(42,5,'Capítulo VIII – Da Prioridade'),(43,5,'Capítulo IX – Da Preferência'),(44,5,'Capítulo X – Do Destaque'),(45,5,'Capítulo XI – Da Prejudicialidade'),(46,5,'Capítulo XII – Da Discussão'),(47,5,'Capítulo XIII – Da Votação'),(48,5,'Capítulo XIV – Da Redação do Vencido, da Redação Final e dos Autógrafos'),(51,6,'Capítulo I – Da Proposta de Emenda à Constituição'),(52,6,'Capítulo II – Dos Projetos de Iniciativa do Presidente da República com Solicitação de Urgência'),(53,6,'Capítulo III – Dos Projetos de Código'),(54,6,'Capítulo III-A – Dos Projetos de Consolidação'),(55,6,'Capítulo IV – Das Matérias de Natureza Periódica'),(56,6,'Capítulo V – Do Regimento Interno'),(57,6,'Capítulo VI – Da Autorização para Instauração de Processo Criminal contra o Presidente e o Vice-Presidente da República e os Ministros de Estado'),(58,6,'Capítulo VII – Do Processo nos Crimes de Responsabilidade do Presidente e do Vice-Presidente da República e de Ministro de Estado'),(59,6,'Capítulo VIII – Do Comparecimento de Ministro de Estado'),(60,6,'Capítulo IX – Da Participação na Comissão Representativa do Congresso Nacional e no Conselho da República'),(61,7,'Capítulo I – Do Exercício do Mandato'),(62,7,'Capítulo II – Da Licença'),(63,7,'Capítulo III – Da Vacância'),(64,7,'Capítulo IV – Da Convocação de Suplente'),(65,7,'Capítulo V – Do Decoro Parlamentar'),(66,7,'Capítulo VI – Da Licença para Instauração de Processo Criminal contra Deputado'),(67,8,'Capítulo I – Da Iniciativa Popular de Lei'),(68,8,'Capítulo II – Das Petições e Representações e Outras Formas de Participação'),(69,8,'Capítulo III – Da Audiência Pública'),(70,8,'Capítulo IV – Do Credenciamento de Entidades e da Imprensa'),(71,9,'Capítulo I – Dos Serviços Administrativos'),(72,9,'Capítulo II – Da Administração e Fiscalização Contábil, Orçamentária, Financeira, Operacional e Patrimonial'),(73,9,'Capítulo III – Da Polícia da Câmara'),(74,9,'Capítulo IV – Da Delegação de Competência'),(75,9,'Capítulo V – Do Sistema de Consultoria e Assessoramento');
/*!40000 ALTER TABLE `tab_capitulo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-20 12:43:50
