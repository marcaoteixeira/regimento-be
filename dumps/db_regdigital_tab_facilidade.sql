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
-- Table structure for table `tab_facilidade`
--

DROP TABLE IF EXISTS `tab_facilidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tab_facilidade` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `id_bloco` int unsigned DEFAULT '0',
  `id_tipo` int unsigned DEFAULT '0',
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
  KEY `FK_tab_facilidade_tab_tipo_2` (`id_tipo`),
  CONSTRAINT `FK_tab_facilidade_tab_capitulo` FOREIGN KEY (`id_capitulo`) REFERENCES `tab_capitulo` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_tab_facilidade_tab_secao` FOREIGN KEY (`id_secao`) REFERENCES `tab_secao` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_tab_facilidade_tab_subsecao` FOREIGN KEY (`id_subsecao`) REFERENCES `tab_subsecao` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_tab_facilidade_tab_tipo` FOREIGN KEY (`id_tipo`) REFERENCES `tab_tipo` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_tab_facilidade_tab_tipo_2` FOREIGN KEY (`id_tipo`) REFERENCES `tab_tipo` (`id`),
  CONSTRAINT `FK_tab_facilidade_tab_titulo` FOREIGN KEY (`id_titulo`) REFERENCES `tab_titulo` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_tab_facilidades_tab_bloco` FOREIGN KEY (`id_bloco`) REFERENCES `tab_bloco` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `tab_facilidade_ibfk_1` FOREIGN KEY (`id_alinea`) REFERENCES `tab_alinea` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `tab_facilidade_ibfk_2` FOREIGN KEY (`id_artigo`) REFERENCES `tab_artigo` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `tab_facilidade_ibfk_3` FOREIGN KEY (`id_inciso`) REFERENCES `tab_inciso` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `tab_facilidade_ibfk_4` FOREIGN KEY (`id_paragrafo`) REFERENCES `tab_paragrafo` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='Tabela de facilidades do regimento Facilitados da Cãmara dos Deputados';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_facilidade`
--

LOCK TABLES `tab_facilidade` WRITE;
/*!40000 ALTER TABLE `tab_facilidade` DISABLE KEYS */;
INSERT INTO `tab_facilidade` VALUES (3,1,7,1,1,NULL,NULL,1,1,NULL,NULL,'<p><span style=\"font-family: arial, helvetica, sans-serif; font-size: 10pt;\"><strong><span lang=\"EN-GB\" style=\"line-height: 120%; color: #005583;\">Resolu&ccedil;&atilde;o</span></strong><span lang=\"EN-GB\" style=\"line-height: 120%; color: #005583;\"> n&ordm; 14/2020, art. 1&ordm;</span></span></p>'),(4,4,18,1,1,NULL,NULL,1,1,NULL,NULL,'<p><span lang=\"EN-GB\" style=\"font-size: 8.0pt; line-height: 120%; font-family: ClearSans; mso-fareast-font-family: ClearSans; mso-bidi-font-family: ClearSans; color: #005583; mso-ansi-language: EN-GB; mso-fareast-language: PT-BR; mso-bidi-language: AR-SA;\">Resolu&ccedil;&atilde;o n&ordm; 14/2020, art. 1&ordm; .&nbsp; Esta Resolu&ccedil;&atilde;o institui, no &acirc;mbito da C&acirc;mara dos Deputados, o Sistema de Delibera&ccedil;&atilde;o Remota (SDR), como forma de discuss&atilde;o e vota&ccedil;&atilde;o remotas de mat&eacute;rias sujeitas &agrave; aprecia&ccedil;&atilde;o do Plen&aacute;rio, das Comiss&otilde;es ou do Conselho de &Eacute;tica e Decoro Parlamentar. Par&aacute;grafo &uacute;nico. Entende-se como vota&ccedil;&atilde;o e discuss&atilde;o remotas a aprecia&ccedil;&atilde;o de mat&eacute;rias por meio de solu&ccedil;&atilde;o tecnol&oacute;gica que concilie a presen&ccedil;a f&iacute;sica dos parlamentares no Plen&aacute;rio, nas Comiss&otilde;es e no Conselho de &Eacute;tica e Decoro Parlamentar, observadas as limita&ccedil;&otilde;es a serem estabelecidas </span><span lang=\"EN-GB\" style=\"font-size: 8.0pt; line-height: 120%; color: #005583;\">em regulamento, com a participa&ccedil;&atilde;o remota, em aten&ccedil;&atilde;o, primordialmente, &agrave; seguran&ccedil;a das Deputadas e dos Deputados que se enquadrem em grupos de risco para o coronav&iacute;rus, respons&aacute;vel pela Covid-19.</span></p>'),(5,3,17,1,2,NULL,NULL,2,2,NULL,NULL,'<p class=\"MsoNormal\" style=\"text-indent: 0cm; mso-pagination: none; border: none; mso-padding-alt: 31.0pt 31.0pt 31.0pt 31.0pt; mso-border-shadow: yes; margin: 0cm 0cm 5.65pt 1.0cm;\"><strong style=\"mso-bidi-font-weight: normal;\"><span lang=\"EN-GB\" style=\"font-size: 10.0pt; line-height: 120%; color: #005583;\">Observa&ccedil;&atilde;o:</span></strong><span lang=\"EN-GB\" style=\"font-size: 10.0pt; line-height: 120%; color: #005583;\"> tanto as datas relativas ao in&iacute;cio quanto ao final de cada per&iacute;odo legislativo das sess&otilde;es legislativas ordin&aacute;rias s&atilde;o transferidas para o pr&oacute;ximo dia &uacute;til, em caso de coincidirem com feriado ou fim de semana.</span></p>'),(6,1,1,1,2,NULL,NULL,2,3,NULL,NULL,'<p class=\"MsoNormal\" style=\"text-indent: 0cm; mso-pagination: none; border: none; mso-padding-alt: 31.0pt 31.0pt 31.0pt 31.0pt; mso-border-shadow: yes; margin: 0cm 0cm 5.65pt 1.0cm;\"><span lang=\"EN-GB\" style=\"font-size: 10.0pt; line-height: 120%; font-family: ClearSans; mso-fareast-font-family: ClearSans; mso-bidi-font-family: ClearSans; color: #005583; mso-ansi-language: EN-GB; mso-fareast-language: PT-BR; mso-bidi-language: AR-SA;\">Art. 4&ordm;; art. 65, I.&nbsp;</span></p>'),(7,4,18,1,2,NULL,NULL,2,NULL,1,NULL,'<p class=\"MsoNormal\" style=\"text-indent: 0cm; mso-pagination: none; border: none; mso-padding-alt: 31.0pt 31.0pt 31.0pt 31.0pt; mso-border-shadow: yes; margin: 2.85pt .05pt 0cm 14.15pt;\"><span lang=\"EN-GB\" style=\"font-size: 8.0pt; line-height: 120%; color: #005583;\">CF, art. 57. O Congresso Nacional reunir-se-&aacute;, anualmente, na Capital Federal, de 2 de fevereiro a 17 de julho e de 1&ordm; de agosto a 22 de dezembro.</span></p>'),(8,4,18,1,2,NULL,NULL,2,NULL,1,NULL,'<p><span lang=\"EN-GB\" style=\"font-size: 8.0pt; line-height: 120%; font-family: ClearSans; mso-fareast-font-family: ClearSans; mso-bidi-font-family: ClearSans; color: #005583; mso-ansi-language: EN-GB; mso-fareast-language: PT-BR; mso-bidi-language: AR-SA;\">Inciso com reda&ccedil;&atilde;o dada pela Emenda Constitucional n&ordm; 50, de 2006, conforme Ato da Mesa n&ordm; 80/2006.</span></p>'),(9,4,18,1,2,NULL,NULL,2,NULL,2,NULL,'<p class=\"MsoNormal\" style=\"text-indent: 0cm; mso-pagination: none; border: none; mso-padding-alt: 31.0pt 31.0pt 31.0pt 31.0pt; mso-border-shadow: yes; margin: 2.85pt .05pt 0cm 14.15pt;\"><span lang=\"EN-GB\" style=\"font-size: 8.0pt; line-height: 120%; color: #005583;\">CF, art. 57, &sect; 6&ordm;. A convoca&ccedil;&atilde;o extraordin&aacute;ria do Congresso Nacional far-se-&aacute;: I - pelo Presidente do Senado Federal, em caso de decreta&ccedil;&atilde;o de estado de defesa ou de interven&ccedil;&atilde;o federal, de pedido de autoriza&ccedil;&atilde;o para a decreta&ccedil;&atilde;o de estado de s&iacute;tio e para o compromisso e a posse do Presidente e do Vice-Presidente da Rep&uacute;blica; II - pelo Presidente da Rep&uacute;blica, pelos Presidentes da C&acirc;mara dos Deputados e do Senado Federal ou a requerimento da maioria dos membros de ambas as Casas, em caso de urg&ecirc;ncia ou interesse p&uacute;blico relevante, em todas as hip&oacute;teses deste inciso com a aprova&ccedil;&atilde;o da maioria absoluta de cada uma das Casas do Congresso Nacional.</span></p>'),(10,4,18,1,2,NULL,NULL,2,2,NULL,NULL,'<p><span lang=\"EN-GB\" style=\"font-size: 8.0pt; line-height: 120%; font-family: ClearSans; mso-fareast-font-family: ClearSans; mso-bidi-font-family: ClearSans; color: #005583; mso-ansi-language: EN-GB; mso-fareast-language: PT-BR; mso-bidi-language: AR-SA;\">CF, art. 57, &sect; 1&ordm;. As reuni&otilde;es marcadas para essas datas ser&atilde;o transferidas para o primeiro dia &uacute;til subsequente, quando reca&iacute;rem em s&aacute;bados, domingos ou feriados.</span></p>'),(11,2,8,1,2,NULL,NULL,2,4,NULL,NULL,'<p class=\"MsoNormal\" style=\"text-indent: 0cm; mso-pagination: none; border: none; mso-padding-alt: 31.0pt 31.0pt 31.0pt 31.0pt; mso-border-shadow: yes; margin: 0cm 0cm 5.65pt 1.0cm;\"><strong style=\"mso-bidi-font-weight: normal;\"><span lang=\"EN-GB\" style=\"font-size: 10.0pt; line-height: 120%; color: #005583;\">QO </span></strong><span lang=\"EN-GB\" style=\"font-size: 10.0pt; line-height: 120%; color: #005583;\">10.121/1998<strong style=\"mso-bidi-font-weight: normal;\"> </strong>- Reafirma entendimento constante da QO 10.436/1993 no sentido de que, &ldquo;[...] ocorrendo a prorroga&ccedil;&atilde;o dos trabalhos legislativos, em virtude da n&atilde;o aprova&ccedil;&atilde;o da LDO, as duas Casas do Congresso Nacional dar&atilde;o continuidade aos seus trabalhos, apreciando as mat&eacute;rias em pauta, at&eacute; que o projeto de lei de diretrizes or&ccedil;ament&aacute;rias encontre-se pronto para aprecia&ccedil;&atilde;o [...].&rdquo;. Aprovada a LDO, n&atilde;o poderia o Congresso continuar funcionando a n&atilde;o ser por convoca&ccedil;&atilde;o extraordin&aacute;ria.</span></p>'),(12,2,15,1,2,NULL,NULL,2,4,NULL,NULL,'<p class=\"MsoNormal\" style=\"text-indent: 0cm; mso-pagination: none; border: none; mso-padding-alt: 31.0pt 31.0pt 31.0pt 31.0pt; mso-border-shadow: yes; margin: 0cm 0cm 5.65pt 1.0cm;\"><strong><span lang=\"EN-GB\" style=\"font-size: 10.0pt; line-height: 120%; color: #005583;\">Pr&aacute;tica:</span></strong><span lang=\"EN-GB\" style=\"font-size: 10.0pt; line-height: 120%; color: #005583;\"> n&atilde;o aprovada a LDO, as sess&otilde;es podem deixar de ser realizadas mediante aprova&ccedil;&atilde;o do requerimento previsto no art. 117, V. Exemplo: REQ 8233/2013.</span></p>'),(13,4,18,1,2,NULL,NULL,2,4,NULL,NULL,'<p class=\"MsoNormal\" style=\"text-indent: 0cm; mso-pagination: none; border: none; mso-padding-alt: 31.0pt 31.0pt 31.0pt 31.0pt; mso-border-shadow: yes; margin: 2.85pt .05pt 0cm 14.15pt;\"><span lang=\"EN-GB\" style=\"font-size: 8.0pt; line-height: 120%; color: #005583;\">CF, art. 57, &sect; 2&ordm;. A sess&atilde;o legislativa n&atilde;o ser&aacute; interrompida sem a aprova&ccedil;&atilde;o do projeto de lei de diretrizes or&ccedil;ament&aacute;rias.</span></p>'),(14,2,8,1,2,NULL,NULL,2,5,NULL,NULL,'<p class=\"MsoNormal\" style=\"text-indent: 0cm; mso-pagination: none; border: none; mso-padding-alt: 31.0pt 31.0pt 31.0pt 31.0pt; mso-border-shadow: yes; margin: 0cm 0cm 5.65pt 1.0cm;\"><strong><span lang=\"EN-GB\" style=\"font-size: 10.0pt; line-height: 120%; color: #005583;\">QO </span></strong><span lang=\"EN-GB\" style=\"font-size: 10.0pt; line-height: 120%; color: #005583;\">80/2003 - &nbsp;&ldquo;[...] 2) a express&atilde;o &ldquo;deliberar&aacute;&rdquo;, presente tanto no art. 58, &sect; 7&ordm;, da Constitui&ccedil;&atilde;o Federal, quanto no art. 2&ordm;, &sect; 4&ordm;, do Regimento Interno da C&acirc;mara dos Deputados, dever&aacute; ser tomada em seu sentido teleol&oacute;gico para abranger todo e qualquer ato processual legislativo, significando dizer que somente ser&aacute; permitida atividade legislativa, no decorrer da sess&atilde;o legislativa extraordin&aacute;ria, que guarde rela&ccedil;&atilde;o com as mat&eacute;rias constantes da pauta da convoca&ccedil;&atilde;o; e 3) apenas constar&atilde;o do Ato de Convoca&ccedil;&atilde;o Extraordin&aacute;ria as mat&eacute;rias que haver&atilde;o de ser deliberadas, n&atilde;o havendo necessidade de figurarem na pauta da convoca&ccedil;&atilde;o as atividades legislativas a serem desenvolvidas para aquele fim.&rdquo;</span></p>'),(15,4,18,1,2,NULL,NULL,2,5,NULL,NULL,'<p class=\"MsoNormal\" style=\"text-indent: 0cm; mso-pagination: none; border: none; mso-padding-alt: 31.0pt 31.0pt 31.0pt 31.0pt; mso-border-shadow: yes; margin: 2.85pt .05pt 0cm 14.15pt;\"><span lang=\"EN-GB\" style=\"font-size: 8.0pt; line-height: 120%; color: #005583;\">CF, art. 57, &sect; 7&ordm;. Na sess&atilde;o legislativa extraordin&aacute;ria, o Congresso Nacional somente deliberar&aacute; sobre a mat&eacute;ria para a qual foi convocado, ressalvada a hip&oacute;tese do &sect; 8&ordm; deste artigo, vedado o pagamento de parcela indenizat&oacute;ria, em raz&atilde;o da convoca&ccedil;&atilde;o; &sect; 8&ordm;. Havendo medidas provis&oacute;rias em vigor na data de convoca&ccedil;&atilde;o extraordin&aacute;ria do Congresso Nacional, ser&atilde;o elas automaticamente inclu&iacute;das na pauta da convoca&ccedil;&atilde;o.</span></p>'),(16,4,18,1,2,NULL,NULL,2,5,NULL,NULL,'<p><span lang=\"EN-GB\" style=\"font-size: 8.0pt; line-height: 120%; font-family: ClearSans; mso-fareast-font-family: ClearSans; mso-bidi-font-family: ClearSans; color: #005583; mso-ansi-language: EN-GB; mso-fareast-language: PT-BR; mso-bidi-language: AR-SA;\">(<em>Caput</em> do artigo com reda&ccedil;&atilde;o dada pela Resolu&ccedil;&atilde;o n&ordm; 19, de 2012).</span></p>'),(17,1,1,1,3,1,NULL,NULL,NULL,NULL,NULL,'<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 5.65pt; text-indent: 0cm; border: none; text-align: left;\" align=\"center\"><span lang=\"EN-GB\" style=\"font-size: 10.0pt; line-height: 120%; color: #005583;\">Art. 229; art. 231, &sect; 8&ordm;, II.</span></p>'),(18,1,1,1,3,1,NULL,3,NULL,NULL,NULL,'<p class=\"MsoNormal\" style=\"text-indent: 0cm; mso-pagination: none; border: none; mso-padding-alt: 31.0pt 31.0pt 31.0pt 31.0pt; mso-border-shadow: yes; margin: 0cm 0cm 5.65pt 1.0cm;\"><span lang=\"EN-GB\" style=\"font-size: 10.0pt; line-height: 120%; color: #005583;\">Art. 229; art. 231, &sect; 8&ordm;, I.</span></p>'),(19,3,17,1,3,1,NULL,3,NULL,NULL,NULL,'<p class=\"MsoNormal\" style=\"text-indent: 0cm; mso-pagination: none; border: none; mso-padding-alt: 31.0pt 31.0pt 31.0pt 31.0pt; mso-border-shadow: yes; margin: 0cm 0cm 5.65pt 1.0cm;\"><strong><span lang=\"EN-GB\" style=\"font-size: 10.0pt; line-height: 120%; font-family: ClearSans-Bold; mso-fareast-font-family: ClearSans-Bold; mso-bidi-font-family: ClearSans-Bold; color: #005583;\">Observa&ccedil;&atilde;o</span></strong><span lang=\"EN-GB\" style=\"font-size: 10.0pt; line-height: 120%; color: #005583;\">: para tomar posse, o Deputado eleito dever&aacute; apresentar o Diploma Original, a Autoriza&ccedil;&atilde;o de Acesso &agrave;s Declara&ccedil;&otilde;es de Ajuste Anual do Imposto de Renda Pessoa F&iacute;sica e a Declara&ccedil;&atilde;o de que n&atilde;o incorre em impedimento estabelecido no art. 54 da Constitui&ccedil;&atilde;o Federal.</span></p>'),(20,4,18,1,3,1,NULL,3,6,NULL,NULL,'<p><span lang=\"EN-GB\" style=\"font-size: 8.0pt; line-height: 120%; font-family: ClearSans; mso-fareast-font-family: ClearSans; mso-bidi-font-family: ClearSans; color: #005583; mso-ansi-language: EN-GB; mso-fareast-language: PT-BR; mso-bidi-language: AR-SA;\">Lei n&ordm; 9.504/1997, art. 12. O candidato &agrave;s elei&ccedil;&otilde;es proporcionais indicar&aacute;, no pedido de registro, al&eacute;m de seu nome completo, as varia&ccedil;&otilde;es nominais com que deseja ser registrado, at&eacute; o m&aacute;ximo de tr&ecirc;s op&ccedil;&otilde;es, que poder&atilde;o ser o prenome, sobrenome, cognome, nome abreviado, apelido ou nome pelo qual &eacute; mais conhecido, desde que n&atilde;o se estabele&ccedil;a d&uacute;vida quanto &agrave; sua identidade, n&atilde;o atente contra o pudor e n&atilde;o seja rid&iacute;culo ou irreverente, mencionando em que ordem de prefer&ecirc;ncia deseja registrar-se.</span></p>'),(21,3,17,1,3,1,NULL,3,6,NULL,NULL,'<p class=\"MsoNormal\" style=\"text-indent: 0cm; mso-pagination: none; border: none; mso-padding-alt: 31.0pt 31.0pt 31.0pt 31.0pt; mso-border-shadow: yes; margin: 0cm 0cm 5.65pt 1.0cm;\"><strong style=\"mso-bidi-font-weight: normal;\"><span lang=\"EN-GB\" style=\"font-size: 10.0pt; line-height: 120%; font-family: ClearSans-Bold; mso-fareast-font-family: ClearSans-Bold; mso-bidi-font-family: ClearSans-Bold; color: #005583;\">Observa&ccedil;&atilde;o</span></strong><span lang=\"EN-GB\" style=\"font-size: 10.0pt; line-height: 120%; color: #005583;\">: a Secretaria-Geral da Mesa somente tem admitido apelidos que tenham sido registrados na Justi&ccedil;a Eleitoral (art. 12 da Lei n&ordm; 9.504/1997).</span></p>'),(22,1,1,1,3,1,NULL,4,NULL,NULL,NULL,'<p class=\"MsoNormal\" style=\"text-indent: 0cm; mso-pagination: none; border: none; mso-padding-alt: 31.0pt 31.0pt 31.0pt 31.0pt; mso-border-shadow: yes; margin: 0cm 0cm 5.65pt 1.0cm;\"><span lang=\"EN-GB\" style=\"font-size: 10.0pt; line-height: 120%; color: #005583;\">Art. 2&ordm;, &sect; 2&ordm;; art. 65, I.</span></p>'),(23,4,18,1,3,1,NULL,4,NULL,NULL,NULL,'<p class=\"MsoNormal\" style=\"text-indent: 0cm; mso-pagination: none; border: none; mso-padding-alt: 31.0pt 31.0pt 31.0pt 31.0pt; mso-border-shadow: yes; margin: 0cm 0cm 5.65pt 1.0cm;\"><span lang=\"EN-GB\" style=\"font-size: 8.0pt; line-height: 120%; font-family: ClearSans; mso-fareast-font-family: ClearSans; mso-bidi-font-family: ClearSans; color: #005583; mso-ansi-language: EN-GB; mso-fareast-language: PT-BR; mso-bidi-language: AR-SA;\">CF, art. 57, &sect; 4&ordm;. Cada uma das Casas reunir-se-&aacute; em sess&otilde;es preparat&oacute;rias, a partir de 1&ordm; de fevereiro, no primeiro ano da legislatura, para a posse de seus membros e elei&ccedil;&atilde;o das respectivas Mesas, para mandato de 2 (dois) anos, vedada a recondu&ccedil;&atilde;o para o mesmo cargo na elei&ccedil;&atilde;o imediatamente subsequente.</span></p>'),(24,4,18,1,3,1,NULL,4,NULL,NULL,NULL,'<p class=\"MsoNormal\" style=\"text-indent: 0cm; mso-pagination: none; border: none; mso-padding-alt: 31.0pt 31.0pt 31.0pt 31.0pt; mso-border-shadow: yes; margin: 0cm 0cm 5.65pt 1.0cm;\"><span lang=\"EN-GB\" style=\"font-size: 8.0pt; line-height: 120%; font-family: ClearSans; mso-fareast-font-family: ClearSans; mso-bidi-font-family: ClearSans; color: #005583; mso-ansi-language: EN-GB; mso-fareast-language: PT-BR; mso-bidi-language: AR-SA;\">(<em>Caput</em> do artigo com reda&ccedil;&atilde;o dada pela Resolu&ccedil;&atilde;o n&ordm; 19, de 2012).</span></p>'),(25,3,17,1,3,1,NULL,4,NULL,NULL,NULL,'<p class=\"MsoNormal\" style=\"text-indent: 0cm; mso-pagination: none; border: none; mso-padding-alt: 31.0pt 31.0pt 31.0pt 31.0pt; mso-border-shadow: yes; margin: 0cm 0cm 5.65pt 1.0cm;\"><strong style=\"mso-bidi-font-weight: normal;\"><span lang=\"EN-GB\" style=\"font-size: 10.0pt; line-height: 120%; font-family: ClearSans-Bold; mso-fareast-font-family: ClearSans-Bold; mso-bidi-font-family: ClearSans-Bold; color: #005583;\">Observa&ccedil;&atilde;o</span></strong><span lang=\"EN-GB\" style=\"font-size: 10.0pt; line-height: 120%; color: #005583;\">: a data prevista neste artigo n&atilde;o pode ser transferida para o pr&oacute;ximo dia &uacute;til.</span></p>'),(26,1,1,1,3,1,NULL,4,14,NULL,NULL,'<p><span lang=\"EN-GB\" style=\"font-size: 10.0pt; line-height: 120%; font-family: ClearSans; mso-fareast-font-family: ClearSans; mso-bidi-font-family: ClearSans; color: #005583; mso-ansi-language: EN-GB; mso-fareast-language: PT-BR; mso-bidi-language: AR-SA;\">Art. 17, VI, d.</span></p>'),(27,2,8,1,3,1,NULL,4,14,NULL,NULL,'<p class=\"MsoNormal\" style=\"text-indent: 0cm; mso-pagination: none; border: none; mso-padding-alt: 31.0pt 31.0pt 31.0pt 31.0pt; mso-border-shadow: yes; margin: 0cm 0cm 5.65pt 1.0cm;\"><strong style=\"mso-bidi-font-weight: normal;\"><span lang=\"EN-GB\" style=\"font-size: 10.0pt; line-height: 120%; color: #005583;\">QO </span></strong><span lang=\"EN-GB\" style=\"font-size: 10.0pt; line-height: 120%; color: #005583;\">4/2011 - O ato de posse de parlamentares n&atilde;o depende de qu&oacute;rum.</span></p>'),(28,1,1,1,3,1,NULL,4,15,3,NULL,'<p class=\"MsoNormal\" style=\"text-indent: 0cm; mso-pagination: none; border: none; mso-padding-alt: 31.0pt 31.0pt 31.0pt 31.0pt; mso-border-shadow: yes; margin: 0cm 0cm 5.65pt 1.0cm;\"><span lang=\"EN-GB\" style=\"font-size: 10.0pt; line-height: 120%; color: #005583;\">Art. 4&ordm;.</span></p>'),(29,4,18,1,3,1,NULL,4,640,NULL,NULL,'<p><span lang=\"EN-GB\" style=\"font-size: 8.0pt; line-height: 120%; font-family: ClearSans; mso-fareast-font-family: ClearSans; mso-bidi-font-family: ClearSans; color: #005583; mso-ansi-language: EN-GB; mso-fareast-language: PT-BR; mso-bidi-language: AR-SA;\">(Par&aacute;grafo com reda&ccedil;&atilde;o dada pela Resolu&ccedil;&atilde;o n&ordm; 37, de 2022).</span></p>'),(30,4,18,1,3,1,NULL,4,641,NULL,NULL,'<p class=\"MsoNormal\" style=\"text-indent: 0cm; mso-pagination: none; border: none; mso-padding-alt: 31.0pt 31.0pt 31.0pt 31.0pt; mso-border-shadow: yes; margin: 2.85pt 14.15pt 0cm 14.15pt;\"><span lang=\"EN-GB\" style=\"font-size: 8.0pt; line-height: 120%; color: #005583;\">(Par&aacute;grafo com reda&ccedil;&atilde;o dada pela Resolu&ccedil;&atilde;o n&ordm; 37, de 2022).</span></p>'),(31,1,1,1,3,1,NULL,4,16,NULL,NULL,'<p class=\"MsoNormal\" style=\"text-indent: 0cm; mso-pagination: none; border: none; mso-padding-alt: 31.0pt 31.0pt 31.0pt 31.0pt; mso-border-shadow: yes; margin: 0cm 0cm 5.65pt 1.0cm;\"><span lang=\"EN-GB\" style=\"font-size: 10.0pt; line-height: 120%; color: #005583;\">Art. 230; art. 241.</span></p>'),(32,1,1,1,3,1,NULL,4,17,NULL,NULL,'<p class=\"MsoNormal\" style=\"text-indent: 0cm; mso-pagination: none; border: none; mso-padding-alt: 31.0pt 31.0pt 31.0pt 31.0pt; mso-border-shadow: yes; margin: 0cm 0cm 5.65pt 1.0cm;\"><span lang=\"EN-GB\" style=\"font-size: 10.0pt; line-height: 120%; color: #005583;\">Art. 239, I.</span></p>'),(33,4,18,1,3,1,NULL,4,18,NULL,NULL,'<p class=\"MsoNormal\" style=\"text-indent: 0cm; mso-pagination: none; border: none; mso-padding-alt: 31.0pt 31.0pt 31.0pt 31.0pt; mso-border-shadow: yes; margin: 2.85pt .05pt 0cm 14.15pt;\"><span lang=\"EN-GB\" style=\"font-size: 8.0pt; line-height: 120%; color: #005583;\">(Denomina&ccedil;&atilde;o alterada para adequa&ccedil;&atilde;o ao Ato dos Presidentes das Mesas das duas Casas do Congresso Nacional, de 2 de outubro de 1995).</span></p>');
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

-- Dump completed on 2023-08-02  9:17:49
