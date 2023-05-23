-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           8.0.27 - MySQL Community Server - GPL
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Copiando dados para a tabela db_regdigital.tab_alineas: ~0 rows (aproximadamente)

-- Copiando dados para a tabela db_regdigital.tab_artigo: ~0 rows (aproximadamente)

-- Copiando dados para a tabela db_regdigital.tab_capitulo: ~4 rows (aproximadamente)
INSERT INTO `tab_capitulo` (`id`, `id_titulo`, `capitulo`) VALUES
	(1, 1, 'CAPÍTULO I - DA SEDE'),
	(2, 1, 'CAPÍTULO II -  DAS SESSÕES LEGISLATIVAS'),
	(3, 1, 'CAPÍTULO III - DAS SESSÕES PREPARATÓRIAS'),
	(4, 1, 'CAPÍTULO IV - DOS LÍDERES'),
	(5, 1, 'CAPÍTULO V - DOS BLOCOS PARLAMENTARES,  DA MAIORIA E DA MINORIA');

-- Copiando dados para a tabela db_regdigital.tab_comissao: ~31 rows (aproximadamente)
INSERT INTO `tab_comissao` (`id`, `comissao`, `sigla`, `membros`) VALUES
	(1, 'Comissão de Agricultura, Pecuária, Abastecimento e Desenvolvimento Rural ', 'CAPADR', 52),
	(2, 'Comissão de Tecnologia e Inovação', 'CCTI', 42),
	(3, 'Comissão de Constituição e Justiça e  de Cidadania ', 'CCJC', 66),
	(4, 'Comissão de Cultura', 'CCULT', 20),
	(5, 'Comissão de Defesa do Consumidor', 'CDC', 24),
	(6, 'Comissão de Defesa dos Direitos da Mulher', 'CMULHER', 22),
	(7, 'Comissão de Defesa dos Direitos da Pessoa Idosa', 'CIDOSO', 22),
	(8, 'Comissão de Defesa dos Direitos das Pessoas com Deficiência', 'CPD', 20),
	(9, 'Comissão de Desenvolvimento Econômico', 'CDE', 18),
	(10, 'Comissão de Desenvolvimento Urbano', 'CDU', 18),
	(11, 'Comissão de Direitos Humanos e Minorias  e Igualdade Racial', 'CDHMIR', 18),
	(12, 'Comissão de Educação', 'CE', 42),
	(13, 'Comissão do Esporte', 'CESPO', 21),
	(14, 'Comissão de Finanças e Tributação', 'CFT', 48),
	(15, 'Comissão de Fiscalização Financeira e Controle', 'CFFC', 22),
	(16, 'Comissão de Integração Nacional e Desenvolvimento Regional ', 'CINDRE', 20),
	(17, 'Comissão de Legislação Participativa', 'CLP', 18),
	(18, 'Comissão de Meio Ambiente e Desevolvimento Sustentável', 'CMADS', 18),
	(19, 'Comissão de Minas e Energia', 'CME', 48),
	(20, 'Comissão de Relações Exteriores e de Defesa Nacional', 'CREDN', 38),
	(21, 'Comissão de Segurança Pública e Combate ao Crime Organizado', 'CSPCCO', 38),
	(22, 'Comissão de Previdência, Assistência Social, Infância, Adolescência e Família', 'CPASF', 18),
	(23, 'Comissão de Trabalho', 'CTRAB', 26),
	(24, 'Comissão de Turismo', 'CTUR', 20),
	(25, 'Comissão de Viação e Transportes', 'CVT', 30),
	(26, 'Comissao de Comunicação', 'CCOM', 38),
	(27, 'Comissão de Administração e Serviço Público', 'CASP', 22),
	(28, 'Comissão da Amazônia e dos Povos Originários e Tradicionais', 'CPOVOS', 18),
	(29, 'Comissão de Indústria Comércio e Serviços', 'CICS', 18),
	(52, 'Comissão da Pesca', 'COPESCA', 25),
	(53, 'Comissão da Pesca', 'COPESCA', 25);

-- Copiando dados para a tabela db_regdigital.tab_emenda: ~10 rows (aproximadamente)
INSERT INTO `tab_emenda` (`id`, `id_tipo`, `emenda`, `descricao`) VALUES
	(1, 1, 'Emendas ao Projeto', 'Apresentadas em cada Comissão, por qualquer Deputado, no prazo de 5 sessões a contar da publicação na Ordem do Dia das comissões (art. 119, I, e § 1°)'),
	(2, 1, 'Emendas ao Substitutivo', 'Apresentada somente por membro em cada Comissão, no prazo de 5 sessões a contar da publicação na Ordem do Dia das Comissões (art. 199, II, e § 1º)'),
	(3, 2, 'Emendas a proposições ordinárias', 'Em 1º turno ou turno único: apresentadas em Plenário, por qulquer Deputado ou Comissão, durante a discussão (art. 120, I e II), em 2º turno: somente por Comissão, se aprovada pela maioria absoluta de seus membros, ou por 1/10 dos membros da Casa ou por Líder com igual representatividade, durante a discussão (art. 120, I e II)'),
	(5, 2, 'Emendas a projetos do Executivo com urgência constitucional', 'Apresentadas em Plenário, somente por Comissão ou por 1/5 dos membros da Casa ou Líder com igual representatividade, no prazo de 5 sessões a contar da publicação na Ordem do Dia do Plenário (Ato da Mesa nº 177 de 1989). Durante a discussão até o início da votação (art. 120, § 4º)'),
	(6, 2, 'Emendas a proposições urgentes', 'Apresentadas em Plenário, somente por Comissão ou 1/5 dos membros da Casa ou Líder com igual representatividade, até o início da votação (art. 120, § 4º)'),
	(7, 3, 'Proposta de emenda à constituição', 'Apresentadas somente na Comissão Especial, por 1/3 da Casa (171 Deputados), nas 10 primeiras sessões a contar da instalação da Comissão - QO 5.518/1995 (art. 202, § 3º). O prazo pode ser acompanhado na página da proposição e na ordem do dia. '),
	(8, 3, 'Projeto de código', 'Somente na Comissão Especial, por qualquer Deputado, no prazo de 20 sessões a contar da instalação da Comissão (art. 205, § 4º).'),
	(9, 3, 'Projetos de fixação da remuneração (membros do Congresso, Presidente e Vice-Presidente da República e Ministros de Estado)', 'Na Comissão de Finanças e Tributação, por qualquer Deputado, no prazo de 5 sessões a contar da publicação na Ordem do Dia da Comissão (art. 214, § 2º). O prazo pode ser acompanhado na página da proposição e na Ordem do Dia.'),
	(10, 3, 'Projeto de resolução para alteração do Regimento Interno', 'No Plenário, por qualquer Deputado, no prazo de 5 sessões a contar da publicação na Ordem do Dia do Plenário (art. 216, § 1º). O prazo pode ser acompanhado na página da proposição e na Ordem do Dia.'),
	(11, 3, 'Medida provisória', 'Somente na Comissão Mista, por qualquer Deputado, nos 6 dias corridos a contar da publicação da MPV no Diário Oficial da União (art. 4º da Resolução do Congresso Nacional nº 1/2002). ');

-- Copiando dados para a tabela db_regdigital.tab_inciso: ~0 rows (aproximadamente)

-- Copiando dados para a tabela db_regdigital.tab_paragrafo: ~0 rows (aproximadamente)

-- Copiando dados para a tabela db_regdigital.tab_prunico: ~0 rows (aproximadamente)

-- Copiando dados para a tabela db_regdigital.tab_recurso: ~16 rows (aproximadamente)
INSERT INTO `tab_recurso` (`id`, `recurso`, `fundamento`, `iniciativa`, `prazo`, `decisao`) VALUES
	(1, 'Apensação/ desapensação de proposição ', 'Art. 142, I', 'Qualquer Deputado ou Comissão ', '5 sessões da publicação do despacho', 'Plenário'),
	(2, 'Apreciação conclusiva de Comissão', 'Art. 58, § 1º, c/c art. 132, § 2º', '1/10 dos Deputados (52 Deputados)', '5 sessões da publicação na Ordem Dia do Plenário', 'Plenário'),
	(3, 'Decisão de presidente de Comissão em Reclamação', 'Art. 96, § 2º', 'Membro da Comissão', 'Sem prazo regimental', 'Presidente da Câmara ou Plenário, ouvida a Presidência da Comissão recorrida no prazo de 3 sessões'),
	(4, 'Decisão do Presidente da CD em Questão de Ordem', 'Art. 95, § 8º', 'Qualquer Deputado', 'Sem prazo  regimental', 'Plenário, ouvida a CCJC no prazo de 3 sessões'),
	(5, 'Decisão de Presidente de Comissão em Questão de Ordem', 'Art. 57, XXI, c/c art. 17, III, f', 'Membro da Comissão', 'Sem prazo  regimental', 'Presidente da Câmara, ouvida a Presidência da Comissão recorrida no prazo de 3 sessões'),
	(6, 'Deferimento/ indeferimento retirada de proposição', 'Art. 104', 'Autor da proposição', 'Sem prazo regimental', 'Plenário'),
	(7, 'Devolução de proposição', 'Art. 137,  § 2º', 'Autor da proposição', '5 sessões da publicação do despacho', 'Plenário, ouvida a CCJC no prazo de 5 sessões'),
	(8, 'Devolução de requerimento de CPI', 'Art. 35, § 2º', 'Autor do requerimento', '5 sessões da publicação na Ordem Dia do Plenário', 'Plenário, ouvida a CCJC no prazo de 5 sessões'),
	(9, 'Emenda devolvida pelo Presidente da Comissão Mista em MP', 'Res. 1/2002 – CN art. 4º, § 5º', 'Autor da emenda com apoiamento de 3 membros da Comissão', '24h a contar do despacho do Presidente da Comissão Mista', 'Colegiado da Comissão'),
	(10, 'Inadmissibilidade de PEC', 'Art. 202,  § 1º', 'Autor da PEC com apoiamento de Líderes que representem no mínimo 1/3 dos Deputados (171 Deputados', '5 sessões da publicação na Ordem Dia do Plenário', 'Plenário'),
	(11, 'Indeferimento de denúncia de crime de responsabilidade', 'Art. 218,  § 3º', 'Qualquer Deputado', 'Sem prazo regimental', 'Plenário'),
	(12, 'Indeferimento de Requerimento de Informação', 'Art. 115, § único', 'Autor do requerimento', '5 sessões da publicação na Ordem Dia do Plenário', 'Plenário'),
	(13, 'Redistribuição de proposição', 'Art. 141', 'Qualquer Deputado ou Comissão', '2 sessões da publicação do despacho', 'Plenário'),
	(14, 'Declaração de prejudicialidade', 'Art. 164,  § 2º', 'Autor da proposição', '5 sessões da publicação do despacho ou, imediatamente, se a prejudicialidade, declarada no curso da votação, disser respeito à emenda ou ao dispositivo de matéria em apreciação', 'Plenário, ouvida a CCJC (sem prazo regimental)'),
	(15, 'Parecer terminativo de Comissão', 'Art. 132, § 2º, c/c art. 144', '1/10 dos Deputados (52 Deputados)', '5 sessões da publicação na Ordem Dia ou, imediatamente, após a leitura do parecer, se a matéria for urgente', 'Plenário. QO 475/2009 – Não é possível recurso para apreciação preliminar contra parecer pela admissibilidade ou adequação financeira.');

-- Copiando dados para a tabela db_regdigital.tab_requerimento: ~6 rows (aproximadamente)
INSERT INTO `tab_requerimento` (`id`, `requerimento`, `fundamento`, `autor`, `obs`) VALUES
	(1, 'Adiamento da discussão', 'Art. 117, X; Art. 177', 'Líder/Autor/Relator', 'Nas proposições de tramitação com prioridade, 3 sessões; nas proposições de tramitação ordinária e nas proposições de emenda à Constituição, 5 sessões.'),
	(2, 'Adiamento da discussão em matéria urgente', 'Art. 177, X; Art. 177, §1º', '1/10 Deputados/Líderes', '1/10 dos Deputados ou Líderes que representarem esse número, por 1 sessão.'),
	(4, 'Adiamento da votação', 'Art. 117, X; Art. 193', 'Líder/Autor/Relator', 'Nas proposições e tramitação com prioridade,3 sessões; nas proposições de tramitação ordinária e nas propostas de emenda à Constituição, 5 sessões.'),
	(5, 'Adiamento da Votaçao em matéria urgente', 'Art. 117, X; Art 193, §3º', '1/10 Deputados/Líderes', '1/10 dos Deputados ou Líderes que represemtem esse número, por 1 sessão'),
	(6, 'Apensação/Desapensação', 'Art. 142', 'Deputado ou Comissão', 'Qualquer Deputado ou Comissão.'),
	(7, 'Apreciação preliminar em Plenário relativa à PEC', 'Art. 202, §1º', 'Autor', 'Com apoio de Líderes que representem, mínimo, 1/3 dos Deputados.');

-- Copiando dados para a tabela db_regdigital.tab_secao: ~0 rows (aproximadamente)

-- Copiando dados para a tabela db_regdigital.tab_tipoemenda: ~3 rows (aproximadamente)
INSERT INTO `tab_tipoemenda` (`id`, `tipoemenda`) VALUES
	(1, 'PROPOSIÇÕES SUJEITAS À APRECIAÇÃO CONCLUSIVA PELAS COMISSÕES'),
	(2, 'PROJETOS SUJEITOS Á APRECIAÇÃO DO PLENÁRIO'),
	(3, 'PROPOSIÇÕES COM TRAMITAÇÃO ESPECIAL');

-- Copiando dados para a tabela db_regdigital.tab_titulo: ~10 rows (aproximadamente)
INSERT INTO `tab_titulo` (`id`, `titulo`) VALUES
	(1, 'TÍTULO I  - DISPOSIÇÕES PRELIMINARES '),
	(2, 'TÍTULO II  - DOS ÓRGÃOS DA CÂMARA'),
	(3, 'TÍTULO III - DAS SESSÕES DA CÂMARA'),
	(4, 'TÍTULO IV - DAS PROPOSIÇÕES'),
	(5, 'TÍTULO V - DA APRECIAÇÃO DAS PROPOSIÇÕES'),
	(6, 'TÍTULO VI - DAS MATÉRIAS SUJEITAS A DISPOSIÇÕES ESPECIAIS'),
	(7, 'TÍTULO VII -  DOS DEPUTADOS'),
	(8, 'TÍTULO VIII - DA PARTICIPAÇÃO DA SOCIEDADE CIVIL'),
	(9, 'TÍTULO  IX -  DA ADMINISTRAÇÃO E DA ECONOMIA INTERNA'),
	(10, 'TÍTULO X - DAS DISPOSIÇÕES FINAIS');

-- Copiando dados para a tabela db_regdigital.tab_usopalavra: ~42 rows (aproximadamente)
INSERT INTO `tab_usopalavra` (`id`, `evento`, `destinatario`, `tempo`, `fundamento`) VALUES
	(1, 'Audiência Pública ', 'Convidado', '20 minutos prorrogáveis', 'art. 256, §2º'),
	(2, 'Audiência Pública ', 'Deputados inscritos', '3 minutos', 'art. 256, §5º'),
	(3, 'Audiência Pública', 'Réplica e tréplica', '3 minutos', 'art. 256, §5°'),
	(4, 'Breve Comunicações', 'Deputados inscritos', '5 minutos vedado apartes', 'art. 81'),
	(5, 'Citação pessoal', 'Deputado citado', '-', 'art. 74, VII'),
	(6, 'Comissão Geral - debate de matéria relevante', 'Autor do requerimento', '20 MINUTOS CADA UM', 'ART. 91, §1º'),
	(7, 'Comissão Geral - debate de matéria relevante', 'Dois convidados indicados antecipadamente por Partido ou Bloco', '5 minutos cada um', 'art. 91, §1º'),
	(8, 'Comissão Geral - debate de matéria relevante', 'Líderes', '5 minutos cada um', 'art. 91, §1º'),
	(9, 'Comissão Geral - debate de matéria relevante', 'Deputados inscritos', '3 minutos cada um', 'art. 91, §1º'),
	(10, 'Comissão Geral  - PL iniciativa popular', 'Primeiro signatário ', '20 minutos. art. 252, VII', 'art. 252, VII; '),
	(11, 'Comissão Geral  - PL iniciativa popular', 'Deputado indicado pelo respectivo autor', '30 minutos', 'art. 91 §2º'),
	(12, 'Comissão Geral  - comparecimento espontâneo de Ministro', 'Ministro de Estado', '40 minutos prorrogáveis por mais 20', 'Art. 222 §2º'),
	(13, 'Comissão Geral  - comparecimento espontâneo de Ministro', 'Deputados - interpelações', '3 minutos', 'art. 222 §2º'),
	(14, 'Comissão Geral  - comparecimento espontâneo de Ministro', 'Réplica e Tréplica', '3 minutos', 'art. 222, §3º'),
	(15, 'Comissão Geral  - comparecimento de Ministro convocado', 'Autor do requerimento', '10 minutos', 'art. 221, §2º'),
	(16, 'Comissão Geral  - comparecimento de Ministro convocado', 'Deputados Inscritos - interpelações', '5 minutos', 'Art. 221, §2º'),
	(17, 'Comissão Geral  - comparecimento de Ministro convocado', 'Réplica e tréplica', '3 minutos', 'art. 221, §4º'),
	(18, 'Comissão Geral  - comparecimento de Ministro convocado', 'Líderes ao final', '5 minutos', 'art. 221, §5º'),
	(21, 'Comunicação de Liderança', 'Líder', '3 a 10 minutos por sessão', 'art. 89,'),
	(22, 'Comunicação de Liderança', 'Representante – Partido menos de 5 Deputados', '5 minutos, 1 vez por semana', 'art. 9º, § 4º'),
	(23, 'Comunicações  Parlamentares', 'Deputados indicados pelo Líder', 'Até 10 minutos', 'art. 90, § único'),
	(24, 'Comunicação  urgentíssima', 'Qualquer Deputado, com permissão do orador', '-', 'Art. 169'),
	(25, 'Dar discurso como lido', 'Autor do discurso', '1 minuto, na primeira meia hora da sessão;', 'Ato da Mesa nº 66/2005, art. 2º'),
	(26, 'Discussão de proposições nas Comissões', 'Autor, Líder, membro', '15 minutos', 'art. 57, VII'),
	(27, 'Discussão de proposições nas Comissões', 'Não membro', '10 minutos', 'art. 57, VII'),
	(28, 'Discussão de proposições nas Comissões', 'Relator após encerrada a discussão (réplica) ', '20 minutos', 'art. 57, IX'),
	(29, 'Discussão de proposições nas Comissões', 'Matéria urgente: Autor, Líder e Membro', '7,5 minutos', 'art. 157, § 3º, c/c art. 57, VII'),
	(30, 'Discussão de proposições nas Comissões', 'Matéria urgente: não membro', '5 minutos', 'art. 157, § 3º, c/c art. 57, VII'),
	(31, 'Discussão de proposições no Plenário', 'Deputados inscritos', '5 minutos', 'art. 174'),
	(32, 'Discussão de proposições no Plenário', 'Matéria urgente: Autor, Relator e inscritos', '2,5 minutos (em geral, arredonda-se para 3 minutos); ', 'art.157, § 3º, c/c art. 174'),
	(33, 'Discussão de emenda à redação final', 'Autor, Relator e um Deputado contrário', '5 minutos', 'art. 198, § 3º'),
	(34, 'Encaminhamento de emenda destacada', 'Autor da emenda, Autor do destaque e Relator', '-', 'Art. 192, § 7º'),
	(35, 'Encaminhamento de requerimentos procedimentais', 'Signatário (ou um orador favorável) e um orador contrário', '5 minutos', 'art. 192, § 8º'),
	(36, 'Encaminhamento de requerimento de urgência', 'Autor e um Líder, Relator ou Deputado contrário', '5 minutos (improrrogável)', 'art. 154, § 1º'),
	(37, 'Encaminhamento de votação da matéria', '2 Deputados a favor e 2 contra: preferencialmente Autor e Relator', '5 minutos', 'art. 192, § 1º'),
	(38, 'Grande Expediente', 'Deputados inscritos', '25 minutos, incluindo apartes', 'art. 87, caput e § 1º'),
	(39, 'Homenagens Plenário durante o Grande Expediente', 'Autor e um Deputado indicado por cada Líder de Partido ou bloco', '5 minutos', 'art. 68, § 2º, II'),
	(40, 'Orientação de bancada', 'Líder ou Deputado por ele indicado', '1 minuto', 'art. 192, § 2º, art. 10, IV'),
	(41, 'Projeto de código', 'Oradores inscritos', '15 minutos', 'art. 207, § 1º'),
	(42, 'Projeto de código', 'Relator-geral e parcial', '30 minutos', 'art. 207, § 1º'),
	(43, 'Projeto de código', 'Emenda destacada (Comissão Especial)', '5 minutos', 'art. 206, III'),
	(44, 'Questão de ordem', 'Qualquer Deputado no Plenário ou qualquer membro, na Comissão', '3 minutos', 'art. 95, § 2º'),
	(45, 'Questão de ordem', 'Para criticar a decisão (na sessão seguinte)', '10 minutos', 'art. 95, § 7º'),
	(46, 'Recurso contra indeferimento de inclusão de informações nos Anais da Câmara', 'Autor e Líderes', '5 minutos', 'art. 115, § único'),
	(47, 'Sessão secreta', 'Deputados inscritos', '5 minutos', 'art. 93, § 1º');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
