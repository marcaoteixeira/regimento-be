-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: db_regdigital
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
-- Table structure for table `tab_paragrafo`
--

DROP TABLE IF EXISTS `tab_paragrafo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tab_paragrafo` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `id_artigo` int unsigned NOT NULL DEFAULT '0',
  `paragrafo` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk-paragrafo-artigo` (`id_artigo`),
  CONSTRAINT `fk-paragrafo-artigo` FOREIGN KEY (`id_artigo`) REFERENCES `tab_artigo` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Paragrafos do  RICCD';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_paragrafo`
--

LOCK TABLES `tab_paragrafo` WRITE;
/*!40000 ALTER TABLE `tab_paragrafo` DISABLE KEYS */;
INSERT INTO `tab_paragrafo` VALUES (1,2,'<p><span style=\"font-size: 12.0pt; mso-bidi-font-size: 10.0pt;\">&sect; 1&ordm; As reuni&otilde;es marcadas para as datas a que se refere o inciso I ser&atilde;o transferidas para o primeiro dia &uacute;til subsequente quando reca&iacute;rem em s&aacute;bados, domingos ou feriados. </span></p>\n<p style=\"text-align: justify;\">&nbsp;</p>'),(2,2,'<p><span style=\"font-size: 12.0pt; mso-bidi-font-size: 10.0pt;\">&sect; 2&ordm; A primeira e a terceira sess&otilde;es legislativas ordin&aacute;rias de cada legislatura ser&atilde;o precedidas de sess&otilde;es preparat&oacute;rias.&nbsp;</span></p>\n<p style=\"text-align: justify;\">&nbsp;</p>'),(3,2,'<p><span style=\"font-size: 12.0pt; mso-bidi-font-size: 10.0pt;\">&sect; 3&ordm; A sess&atilde;o legislativa ordin&aacute;ria n&atilde;o ser&aacute; interrompida em 17 de julho, enquanto n&atilde;o for aprovada a lei de diretrizes or&ccedil;ament&aacute;rias pelo Congresso Nacional. <em style=\"mso-bidi-font-style: normal;\"><a href=\"http://www2.camara.gov.br/legin/fed/emecon/2006/emendaconstitucional-50-14-fevereiro-2006-541079-retificacao-43124-pl.html\">(Par&aacute;grafo com reda&ccedil;&atilde;o adaptada &agrave; Emenda Constitucional n&ordm; 50, de 2006,</a></em> <em style=\"mso-bidi-font-style: normal;\"><a href=\"http://www2.camara.leg.br/legin/int/atomes/2006/atodamesa-80-26-abril-2006-541993-publicacaooriginal-49059-cd-mesa.html\">conforme Ato da Mesa n&ordm; 80, de 2006)</a></em></span></p>\n<p>&nbsp;</p>'),(4,2,'<p><span style=\"font-size: 12.0pt; mso-bidi-font-size: 10.0pt;\">&sect; 4&ordm; Quando convocado extraordinariamente o Congresso Nacional, a C&acirc;mara dos Deputados somente deliberar&aacute; sobre a mat&eacute;ria objeto da convoca&ccedil;&atilde;o. </span></p>\n<p>&nbsp;</p>'),(5,3,'<p class=\"MsoBodyTextIndent\">&sect; 1&ordm; O nome parlamentar compor-se-&aacute;, salvo quando, a ju&iacute;zo do Presidente, devam ser evitadas confus&otilde;es, apenas de dois elementos: um prenome e o nome; dois nomes; ou dois prenomes.</p>'),(6,3,'<p class=\"MsoBodyTextIndent\"><span style=\"font-size: 12.0pt; mso-bidi-font-size: 10.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-ansi-language: PT-BR; mso-fareast-language: AR-SA; mso-bidi-language: AR-SA;\">&sect; 2&ordm; Caber&aacute; &agrave; Secretaria-Geral da Mesa organizar a rela&ccedil;&atilde;o dos Deputados diplomados, que dever&aacute; estar conclu&iacute;da antes da instala&ccedil;&atilde;o da sess&atilde;o de posse.&nbsp;</span></p>'),(7,3,'<p><span style=\"font-size: 12.0pt; mso-bidi-font-size: 10.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-ansi-language: PT-BR; mso-fareast-language: AR-SA; mso-bidi-language: AR-SA;\">&sect; 3&ordm; A rela&ccedil;&atilde;o ser&aacute; feita por Estado, Distrito Federal e Territ&oacute;rios, de norte a sul, na ordem geogr&aacute;fica das capitais e, em cada unidade federativa, na sucess&atilde;o alfab&eacute;tica dos nomes parlamentares, com as respectivas legendas partid&aacute;rias.w</span></p>'),(8,4,'<p><span style=\"font-size: 12.0pt; mso-bidi-font-size: 10.0pt;\">&sect; 1&ordm; Assumir&aacute; a dire&ccedil;&atilde;o dos trabalhos o &uacute;ltimo Presidente, se reeleito Deputado, e, na sua falta, o Deputado mais idoso, dentre os de maior n&uacute;mero de legislaturas. </span></p>\n<p>&nbsp;</p>'),(9,4,'<p><span style=\"font-size: 12.0pt; mso-bidi-font-size: 10.0pt;\">&sect; 2&ordm; Aberta a sess&atilde;o, o Presidente convidar&aacute; quatro Deputados, de prefer&ecirc;ncia de Partidos diferentes, para servirem de Secret&aacute;rios e proclamar&aacute; os nomes dos Deputados diplomados, constantes da rela&ccedil;&atilde;o a que se refere o artigo anterior. </span></p>\n<p>&nbsp;</p>'),(10,4,'<p><span style=\"font-size: 10.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-ansi-language: PT-BR; mso-fareast-language: AR-SA; mso-bidi-language: AR-SA;\">&sect; 3&ordm; Examinadas e decididas pelo Presidente as reclama&ccedil;&otilde;es atinentes &agrave; rela&ccedil;&atilde;o nominal dos Deputados, ser&aacute; tomado o compromisso solene dos empossados. De p&eacute; todos os presentes, o Presidente proferir&aacute; a seguinte declara&ccedil;&atilde;o: \"Prometo manter, defender e cumprir a Constitui&ccedil;&atilde;o, observar as leis, promover o bem geral do povo brasileiro e sustentar a uni&atilde;o, a integridade e a independ&ecirc;ncia do Brasil\". Ato cont&iacute;nuo, feita a chamada, cada Deputado, de p&eacute;, a ratificar&aacute; dizendo: \"Assim o prometo\", permanecendo os demais Deputados sentados e em sil&ecirc;ncio.</span></p>'),(11,4,'<p><span style=\"font-size: 12.0pt; mso-bidi-font-size: 10.0pt;\">&sect; 4&ordm; O conte&uacute;do do compromisso e o ritual de sua presta&ccedil;&atilde;o n&atilde;o poder&atilde;o ser modificados; o compromissando n&atilde;o poder&aacute; apresentar, no ato, declara&ccedil;&atilde;o oral ou escrita nem ser empossado atrav&eacute;s de procurador.</span></p>'),(12,4,'<p><span style=\"font-size: 12.0pt; mso-bidi-font-size: 10.0pt;\">&sect; 5&ordm; O Deputado empossado posteriormente prestar&aacute; o compromisso em sess&atilde;o e junto &agrave; Mesa, exceto durante per&iacute;odo de recesso do Congresso Nacional, quando o far&aacute; perante o Presidente.</span></p>'),(13,4,'<p><span style=\"font-size: 12.0pt; mso-bidi-font-size: 10.0pt;\">&sect; 6&ordm; Salvo motivo de for&ccedil;a maior ou enfermidade devidamente comprovados, a posse dar-se-&aacute; no prazo de trinta dias, prorrog&aacute;vel por igual per&iacute;odo a requerimento do interessado, contado:</span></p>');
/*!40000 ALTER TABLE `tab_paragrafo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-04 18:13:30
