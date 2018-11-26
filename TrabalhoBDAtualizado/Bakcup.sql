CREATE DATABASE IF NOT EXISTS supermecado;
use supermecado;
-- MySQL dump 10.13  Distrib 5.7.24, for Linux (x86_64)
--
-- Host: localhost    Database: supermercado
-- ------------------------------------------------------
-- Server version	5.7.24-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `caixa`
--

DROP TABLE IF EXISTS `caixa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `caixa` (
  `caiCodigo` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Codigo, campo para identificar o caixa do supermercado(Caixa que armazena dinheiro, não funcionario)',
  `caiHoraAbertura` time NOT NULL COMMENT 'HoraAbertura, campo para armazenar a hora abertura do caixa',
  `caiHoraFechamento` time DEFAULT NULL COMMENT 'HoraFechamento, campo para armazenar a hora de fechamento do caixa',
  `caiData` date NOT NULL COMMENT 'Data, campo para armazenar a data atual do caixa',
  `caiValorAbertura` double NOT NULL COMMENT 'ValorAbertura, campo para armazenar o valor de abertura do caixa',
  `caiValorFechamento` double DEFAULT NULL COMMENT 'ValorFechamento, campo para armazenar o valor de fechamento do caixa',
  `caiStatus` tinyint(1) DEFAULT NULL COMMENT 'Status, campo para armazenar o status do caixa',
  PRIMARY KEY (`caiCodigo`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COMMENT='Tabela para guardar os dados do caixa do supermercado';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caixa`
--

LOCK TABLES `caixa` WRITE;
/*!40000 ALTER TABLE `caixa` DISABLE KEYS */;
INSERT INTO `caixa` VALUES (1,'08:05:00',NULL,'2018-11-17',183.65,NULL,1),(2,'08:05:00',NULL,'2018-11-17',164.15,NULL,1),(3,'08:05:00',NULL,'2018-11-17',226.9,NULL,1),(4,'14:05:00',NULL,'2018-11-17',93.55,NULL,1),(5,'14:05:00',NULL,'2018-11-17',132.5,NULL,1),(6,'14:05:00',NULL,'2018-11-17',230.1,NULL,1),(7,'18:05:00',NULL,'2018-11-17',65.6,NULL,1),(8,'18:05:00',NULL,'2018-11-17',190.8,NULL,1),(9,'18:05:00',NULL,'2018-11-17',154.25,NULL,1),(10,'18:05:00',NULL,'2018-11-17',200,NULL,1);
/*!40000 ALTER TABLE `caixa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente` (
  `cliCodigo` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Codigo, campo para identificar o cliente',
  `cliNome` text NOT NULL COMMENT 'Nome, campo para armazenar o nome do cliente',
  `cliCPF` varchar(11) NOT NULL COMMENT 'CPF, campo para armazenar o cpf do cliente',
  `cliRG` varchar(15) NOT NULL COMMENT 'RG, campo para armazenar o rg do cliente',
  `cliTelefone` varchar(15) DEFAULT NULL COMMENT 'Telefone, campo para armazenar o telefone do cliente, se houver',
  `cliCelular` varchar(11) NOT NULL COMMENT 'Celular, campo para armazenar o celular do cliente',
  `cliEstado` varchar(30) NOT NULL COMMENT 'Estado, campo para armazenar o estado da residencia do cliente',
  `cliCidade` varchar(80) NOT NULL COMMENT 'Cidade, campo para armazenar a cidade da residencia do cliente',
  `cliBairro` varchar(45) NOT NULL COMMENT 'Bairro, campo para armazenar o bairro da residencia do cliente',
  `cliRua` varchar(100) NOT NULL COMMENT 'Rua, campo para armazenar a rua da residencia do cliente',
  `cliNumero` int(11) NOT NULL COMMENT 'Numero, campo para armazenar o numero onde localiza-se a residencia do cliente',
  PRIMARY KEY (`cliCodigo`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1 COMMENT='Tabela para armazenar os clientes do supermercado';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'João Paulo de Souza','11111111111','158474524',NULL,'44999004897','Paraná','Umuarama','Jardim Carolina','Mundo Novo',3474),(2,'Leandro Souza Pinheiro','22222222222','112223334',NULL,'37998475214','Minas Gerais','Formiga','Nossa Senhora de Lourdes','Estacio Resmungao',123),(3,'Paulo Henrique Xavier','33333333333','1523245323',NULL,'37998420784','Minas Gerais','Arcos','Bigodudo','Rua do Bigóde',111),(4,'Jefferson Marques','44444444444','198741234',NULL,'37991548742','Minas Gerais','Arcos','Bigodudo','Rua do Bigóde',112),(5,'Belão Mateus Fernandes','55555555555','987874514',NULL,'15987454125','São Paulo','Osasco','Jardim Roubo','Rua dos ladrões',857),(6,'Thalão Henrique','65562131234','123422341',NULL,'18987412154','São Paulo','Cruzeiro','Itapemirim','Rua das Árvores',4452),(7,'Júlio Roberto Pereira','77777777777','169874562',NULL,'22982369878','Mato Grosso do Sul','Campo Grande','Jardim Matagal','Rua do Mato',1354),(8,'Alfredo Pereira Gomes','88888888888','432341234',NULL,'21978456989','Rio de Janeiro','Rio de Janeiro','Morro do Alemão','Rua Tiro pro Alto',177),(9,'Fábio Coutinho da Silva','99999999999','987844562',NULL,'51965487823','Rio Grande do Sul','Porto Alegre','Jardim das Rosas','Deodoro da Fonseca',8798),(10,'Joaquim Santos Domingues','12345678911','654879631',NULL,'92987852332','Amazonas','Manaus','Feliz Final','Rua do Terraço',268),(11,'Marcos Guimarães Faria','78912345678','564587823',NULL,'71965874521','Bahia','Salvador','Praia do Calorão','Sol do Meio Dia',6542),(12,'Wellington Ferreira Prado','45698715478','789874568',NULL,'62954789555','Goiás','Goiânia','Jardim Flor de Outubro','Rua das Palmeiras',7654),(13,'João Victor da Silva Nunes','96325147230','897845216',NULL,'37999004897','Minas Gerais','Divinópolis','Jardim Laveira','Novo Horizonte',3474),(14,'Ricardo Antunes Lacerda','78925874112','865287412',NULL,'48999004897','Santa Catarina','Florianópolis','Ouro Branco','José Ferreira',8975),(15,'Roger Moraes Nobrega','12234565411','458795621',NULL,'65963214587','Mato Grosso','Cuiabá','Vila Formosa','São Paulo',983),(16,'Miguel Figueiredo Dias','14785236933','625478124',NULL,'91974589875','Pará','Belém','Vila Carminha','Nunes Filho',1654),(17,'Lucas Pacheco Queiroz','87965412365','745236549',NULL,'82965412598','Alagoas','Maceió','Santos Dumont','Monte Carlo',985),(18,'Bernardo Teles Sampaio ','45169878125','918632529',NULL,'61998741258','Distrito Federal','Brasília','Novo Hamburgo','Jánio Quadros',973),(19,'Adalberto Novaes Santos','15423216532','895148796',NULL,'68923479632','Acre','Rio Branco','Boa Esperança','Iguaçu',753),(20,'Daniel Soares Filho','25896312457','621478759',NULL,'85954877896','Ceará','Fortaleza','Alto da Serra','Veneza',8542);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compra`
--

DROP TABLE IF EXISTS `compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `compra` (
  `comCodigo` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Codigo, campo para identifcar as comprar do supermercado',
  `comData` date NOT NULL COMMENT 'Data, campo para armazenar a data das compras do supermercado',
  `comHora` time NOT NULL COMMENT 'Hora, campo para armazenar a horas da compras do supermercado',
  `comValor` double NOT NULL COMMENT 'Valor, campo para armazenar o valor da compras do supermercado',
  `com_funCodigo` int(11) NOT NULL COMMENT 'Codigo do funcionario, FK do funcionario, para armazenar o funcionario que fez a compra',
  `com_forCodigo` int(11) NOT NULL COMMENT 'Codigo do fornecedor, FK do Fornecedor, campo para armazenar o fornecedor de quem a compra foi feita',
  PRIMARY KEY (`comCodigo`),
  KEY `fk_Compra_Funcionarios1_idx` (`com_funCodigo`),
  KEY `fk_Compra_Fornecedor1_idx` (`com_forCodigo`),
  CONSTRAINT `fk_Compra_Fornecedor1` FOREIGN KEY (`com_forCodigo`) REFERENCES `fornecedor` (`forCodigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Compra_Funcionarios1` FOREIGN KEY (`com_funCodigo`) REFERENCES `funcionario` (`funCodigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COMMENT='Tabela para armazenar as compras do supermercado';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compra`
--

LOCK TABLES `compra` WRITE;
/*!40000 ALTER TABLE `compra` DISABLE KEYS */;
INSERT INTO `compra` VALUES (1,'2018-12-25','10:20:00',200.7,1,1),(2,'2018-10-21','11:29:00',90.62,1,2),(3,'2018-11-01','05:29:00',10.72,7,10),(4,'2018-05-29','19:29:00',11.76,19,12),(5,'2018-12-01','17:00:00',50,5,5),(6,'2018-02-13','11:30:00',25.2,7,4),(7,'2018-10-21','11:29:00',200,2,19),(8,'2018-11-15','14:32:00',2020.21,20,20),(9,'2018-12-30','15:09:00',22.9,3,9),(10,'2018-10-15','12:29:00',157.79,5,1);
/*!40000 ALTER TABLE `compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conta_pagar`
--

DROP TABLE IF EXISTS `conta_pagar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conta_pagar` (
  `ctpCodigo` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Codigo, campo para identificar a conta a pagar',
  `ctrData` date NOT NULL COMMENT 'Data, campo para armazenar a data da conta a pagar',
  `ctrFormaPagamento` varchar(20) NOT NULL COMMENT 'FormaPagamento, campo para armazenar a forma de pagamento da conta a pagar',
  `ctrQuantidadeParcelas` int(11) NOT NULL COMMENT 'QuantidadeParcelas, campo para armazenar a quantidade de parcelas gerada na conta a pagar',
  `ctrValorParcelas` double NOT NULL COMMENT 'ValorParcelas, campo para armazenar o valor das parcelas da conta pagar gerada',
  `ctrDiaVencimentos` int(11) NOT NULL COMMENT 'DiaVencimentos, campo para armazenar os dias de vencimento(igual em todos os meses) da conta a pagar',
  `ctr_comCodigo` int(11) NOT NULL COMMENT 'Codigo da compra, FK da compra, para armazenar os dados da compra',
  PRIMARY KEY (`ctpCodigo`),
  KEY `fk_contasPagar_compra1_idx` (`ctr_comCodigo`),
  CONSTRAINT `fk_contasPagar_compra1` FOREIGN KEY (`ctr_comCodigo`) REFERENCES `compra` (`comCodigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COMMENT='Tabela para armazernar as contas a pagar do supermercado';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conta_pagar`
--

LOCK TABLES `conta_pagar` WRITE;
/*!40000 ALTER TABLE `conta_pagar` DISABLE KEYS */;
INSERT INTO `conta_pagar` VALUES (1,'2018-09-12','Cartao Credito',10,2,25,1),(2,'2018-10-11','A vista',1,200,2,2),(3,'2018-11-12','Cartao Debito',25,20,10,3),(4,'2018-09-01','Boleto bancario',20,41,5,4),(5,'2018-10-31','Cartao Credito',25,100,20,5),(6,'2018-05-19','Cartao Debito',2,1000,13,6),(7,'2018-02-28','A vista',1,1000,30,7),(8,'2018-10-30','Cartao Credito',15,200,30,8),(9,'2018-08-16','Cartao Debito',5,105,30,9),(10,'2018-12-12','Boleto Bancario',10,2,25,10);
/*!40000 ALTER TABLE `conta_pagar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conta_receber`
--

DROP TABLE IF EXISTS `conta_receber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conta_receber` (
  `ctrCodigo` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Codigo, campo para identificar a conta a receber',
  `ctrData` date NOT NULL COMMENT 'Data, campo para armazenar a data que a conta a receber foi gerada',
  `ctrFormaRecebimento` varchar(20) NOT NULL COMMENT 'FormaRecebimento, campo para armazenar a forma de recebimento da conta a receber',
  `ctrQuantidadeParcelas` int(11) NOT NULL COMMENT 'QuantidadeParcelas, campo para armazenar a quantidade de parcelas da conta a receber',
  `ctrValorParcelas` double NOT NULL COMMENT 'ValorParcelas, campo para armazenar o valor das parcelas da conta a receber',
  `ctrDiaVencimentos` int(11) NOT NULL DEFAULT '10' COMMENT 'DiaVencimentos, campo para armazenar o dia de vencimento(igual para todos os meses) da conta a receber',
  `ctr_venCodigo` int(11) NOT NULL COMMENT 'Codigo da venda, FK da venda, para passar os dados da venda',
  PRIMARY KEY (`ctrCodigo`),
  KEY `fk_contaReceber_vendas1_idx` (`ctr_venCodigo`),
  CONSTRAINT `fk_contaReceber_vendas1` FOREIGN KEY (`ctr_venCodigo`) REFERENCES `venda` (`venCodigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COMMENT='Tabela para armazenar as contas a receber do supermercado';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conta_receber`
--

LOCK TABLES `conta_receber` WRITE;
/*!40000 ALTER TABLE `conta_receber` DISABLE KEYS */;
INSERT INTO `conta_receber` VALUES (1,'2018-11-17','Cartão de Débito',1,250.58,17,1),(2,'2018-11-17','Cartão de Crédito',2,152.64,17,3),(3,'2018-11-17','À Vista',1,86.98,17,2),(4,'2018-11-17','Caderneta',3,380.52,15,4),(5,'2018-11-17','À Vista',1,61.45,17,5),(6,'2018-11-17','Caderneta',4,352.76,10,7),(7,'2018-11-17','Cartão de Débito',1,50.03,17,6),(8,'2018-11-17','Cartão de Crédito',1,27.49,17,8),(9,'2018-11-17','À Vista',1,109.73,17,10),(10,'2018-11-17','Cartão de Crédito',3,210.09,17,9);
/*!40000 ALTER TABLE `conta_receber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fornecedor`
--

DROP TABLE IF EXISTS `fornecedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fornecedor` (
  `forCodigo` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Codigo do fornecedor, campo para identificar cada fornecedor',
  `forNomeFantasia` varchar(100) NOT NULL COMMENT 'Nome Fantasia, campo para armazenar o nome fantasia do fornecedor',
  `forRazaoSocial` varchar(100) NOT NULL COMMENT 'Razao Social, campo para armazenar a RS do fornecedor',
  `forInscricaoEstadual` varchar(15) NOT NULL COMMENT 'Inscricao Estadual, campo para armazenar a IE do fornecedor',
  `forCNPJ` varchar(45) NOT NULL COMMENT 'CNPJ, campo para armazenar o cnpj do fornecedor',
  `forTelefone` varchar(15) NOT NULL COMMENT 'Telefone, campo para armazenar o telefone do fornecedor',
  `forCelular` varchar(11) DEFAULT NULL COMMENT 'Celular, campo para armazenar o celular, caso o fornecedor o tenha',
  `forEstado` varchar(30) NOT NULL COMMENT 'Estado, campo que armazena o Estado da filial que atende o supermercado',
  `forCidade` varchar(50) NOT NULL COMMENT 'Cidade, campo que armazena a cidade onde filial que atende o supermercado fica',
  `forBairro` varchar(45) NOT NULL COMMENT 'Bairro, campo que armazena o bairro onde a filial que atende o supermercado fica',
  `forRua` varchar(100) NOT NULL COMMENT 'Rua, campo que armazena a rua onde a filial que atende o supermercado fica',
  `forNumero` int(11) NOT NULL COMMENT 'Numero, campo que armazena o número do local onde a filial que atende o supermercado fica',
  PRIMARY KEY (`forCodigo`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1 COMMENT='Tabela para armazenar os dados dos fornecedores';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedor`
--

LOCK TABLES `fornecedor` WRITE;
/*!40000 ALTER TABLE `fornecedor` DISABLE KEYS */;
INSERT INTO `fornecedor` VALUES (1,'Jardim Salgados','Jardim BBzinho','355892192140','53712206000100','3733213125','47999815125','Minas Gerais','Formiga','Bela Vista','Deolinda Da Costa',450),(2,'Carnes Aroldo','Carnificina','004039611070','69774508000143','3733225543','37999255243','Minas Gerais','Arcos','Betovem Justos','Irineu',10),(3,'Balas Sandra','Sandrinha Dolces','697162238698','95115947000154','37999812641',NULL,'Minas Gerais','Corrego Fundo','Jose Serra','Novo Costa',9),(4,'Casa Parafusos','Parafusadores do Sertão','328810082074','46258367000100','40999888882',NULL,'Minas Gerais','Lagoa da Prata','Vila dos Metalurgicos','Parafusinhos',9051),(5,'Matadouro','Mata Onça','798923109922','50289962000180','99888777666',NULL,'Minas Gerais','Formiga','Jardiim Alvorada','Henrique Brandao',87),(6,'Casa de rolinha','Rolinhas Grandes','016933270983','95010989000120','37898652126','78986543256','Minas Gerais','Corrego Fundo','Irine Braga','Novo Horizontinho',767),(7,'Pao de queijo','Minas queijos','743453360262','27276115000160','37876544756','37086543248','Minas Gerais','Sete Lagoas','Lagoa Azul','Jose da Silveira',937),(8,'Kasa da Mamãe Franga','Frangos','010209161300','12859401000180','37998628261','37999888777','Minas Gerais','Belo Horizonte','Jose Vilano','Ratao Azul',24),(9,'Angus e Cia','Angus','058909650009','35331059000147','37987654378','37098753781','São Paulo','São Paulo','Joao Serra Souza','Agua Vermelha',241),(10,'Baby Branco Arroz','Baby Arroz','716796419869','79530882000157','37999765308','37986191620','Rio de Janeiro','Rio de Janeiro','Rocinha da Lapa','Virando as Botas',69),(11,'Queijo do Irineu','Queijos Azuis','763644212156','30428422000123','409998887700','Paraná','40999888777','Umuarama','Guratingueta do norte','Rolandia Pretaça',1903),(12,'Barak Fraldas','Fraldas Brancas do Barak','779626877950','01983353000111','37999000888','37888777666','Minas Gerais','Formiga','Sagrado Coracao','Abilio Machado',290),(13,'Presuntos BH','Presultos BH','694921183561','21785195000100','37909888777','41999888775','Minas Gerais','Corrego Fundo','Areia Seca','Rodinha Da Laje',22),(14,'Agua Mineral Arcos','Arcos Aguas','228185354727','96444470000113','37999555432','37909855543','Minas Gerais','Formiga','Centro','Henrique Braga',221),(15,'Dolores Empadas','Dolores Empadas','786507382442','49980265000192','37888666555','37999812648','Minas Gerais','Formiga','Areias Brancas','Center Ruas',931),(16,'Loras Shampoo','Shampoos Loras','774438130283','68274344000122','76875682918','76789086','Minas Gerais','Formiga','Centro','Padilha Brancas',1),(17,'Joaninha Salgadinhos','Joaninha Salgadinhos','398473633392','23252851000127','379876469172','37975162816','Minas Gerais','Divinopolis','Centro','Rua Judas',2816),(18,'Bacalhau Azedo','Bacalhau Azedo','480066498552','60676698000191','45654272644','45765281726','São Paulo','São Paulo','Boas Viendies','Jose Preto',2761),(19,'Papel De Rondonia','Papiros Rondonianos','485695067530','47029079000147','37888999000','37888999816','Minas Gerais','Formiga','Centro','Jose Serrinha',871),(20,'Kasa da Mandioca Preta','Mandioca Pretinha','698955366283','14211439000178','37986543797','37988654162','Minas Gerais','Corrego Fundo','Boa Morte','Joao Azul',8),(21,'Loras Shampoo','Shampoos Loras','774438130283','68274344000122','76875682918','76789086','Minas Gerais','Sete Lagoas','Centro','Padilha Brancas',1);
/*!40000 ALTER TABLE `fornecedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `funcionario` (
  `funCodigo` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Codigo, campo para identificar o funcionario',
  `funNome` varchar(45) NOT NULL COMMENT 'Nome, campo para armazenar o nome do funcionario',
  `funSalario` double NOT NULL COMMENT 'Salario, campo para armazenar o salario do funcionario',
  `funCPF` varchar(11) NOT NULL COMMENT 'CPF, campo para armazenar o cpf do funcionario',
  `funRG` varchar(15) NOT NULL COMMENT 'RG, campo para armazenar o rg do funcionario',
  `funTelefone` varchar(15) DEFAULT NULL COMMENT 'Telefone, campo para armazenar o telefone do funcionario se houver',
  `funCelular` varchar(11) NOT NULL COMMENT 'Celular, campo para armazenar o celular do funcionario',
  `funEstado` varchar(30) NOT NULL COMMENT 'Estado, campo para armazenar o estado da residencia do funcionario',
  `funCidade` varchar(80) NOT NULL COMMENT 'Cidade, campo para armazenar a cidade da residencia do funcionario',
  `funBairro` varchar(45) NOT NULL COMMENT 'Bairro, campo para armazenar o bairro da residencia do funcionario',
  `funRua` varchar(100) NOT NULL COMMENT 'Rua, campo para armazenar a rua da residencia do funcionario',
  `funNumero` int(11) NOT NULL COMMENT 'Numero, campo para armazenar o numero da residencia do funcionario',
  PRIMARY KEY (`funCodigo`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1 COMMENT='Tabela para armazenar os dados dos funcionarios do supermercado';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
INSERT INTO `funcionario` VALUES (1,'Lucas Mateus',5000,'12345678901','123456789','37999999999','37989999999','Minas Gerais','Formiga','Nossa Senhora de Lurdes','Rua um',1),(2,'Mateus Lucas',1000,'1785678901','673456789','37999999990','37989999990','Pernambuco','Olinda','Nossa Senhora de Olinda','Rua dois',2),(3,'Breno Batista',3000,'12345678986','123456711','37999999991','37989999991','Rio de Janeiro','Cabo Frio','Nossa Senhora de Frio','Rua tres',3),(4,'Saulo Ricardo',5500,'12985678901','291456789','37999999992','37989999992','Minas Gerais','Formiga','Ouro Verde','Rua quatro',4),(5,'Willian Lemos',15000,'12926678901','009356789','37999999993','37989999993','São Paulo','Santos','Bairro Gold','Rua cinco',5),(6,'Muca Muriçoca',10000,'12345678741','123491789','37999999994','37989999994','Goiás','Goiânia','Nossa Senhora do Sertanejo','Rua seis',6),(7,'Eduardo Paiva',7000,'12345078901','120056789','37999999995','37989999995','Paraná','Cascavel','Buraco de cobra','Rua sete',7),(8,'Patrícia Mendes',4000,'12261678901','127635789','37999999996','37989999996','Minas Gerais','Lavras','Nossa Senhora de Lavras','Rua oito',8),(9,'Marília Souza',6000,'13125678901','023456789','37999999997','37989999997','Rio Grande do Sul','Porto Alegre','Nossa Senhora do Frio','Rua nove',9),(10,'Joana Silva',20000,'09345678901','197156789','37999999998','37989999998','Sergipe','Pequeno','Nossa Senhora','Rua dez',10),(11,'José Arantes',3000,'12345078901','123256789','37999999909','37989999909','Minas Gerais','Arcos','Nossa Senhora dos Arcos','Rua onze',11),(12,'Maria José',9500,'12340878901','123456765','37999999919','37989999919','Santa Catarina','Florianópolis','Nossa Santa de Catarina','Rua doze',12),(13,'Ronaldo Orlando',4400,'83018678901','123456799','37999999929','37989999929','Espírito Santo','Guarapari','Nossa Senhora de Praia','Rua treze',13),(14,'Renata Oliveira',15000,'19995678901','123450289','37999999939','37989999939','Amazonas','Manaus','Nossa Senhora da Mata','Rua quatorze',14),(15,'Alexandre Manoel',2200,'12355678901','123456289','37999999949','37989999949','Ceará','Juazeiro','Nossa Senhora da Seca','Rua quize',15),(16,'Luís Henrique',5050,'12345674651','122856789','37999999959','37989999959','Mato Grosso','Cuiabá','Nossa Senhora do Pantanal','Rua dezesseis',16),(17,'Luísa Fransisca',500,'12775678901','123459989','37999999969','37989999969','São Paulo','Osasco','Nossa Senhora da Malandragem','Rua dezessete',17),(18,'Maria Aparecida',11000,'12111678901','913456789','37999999979','37989999979','São Paulo','Itú','Nossa Senhora de Itubaina','Rua dezoito',18),(19,'Manoel Henrique',4500,'00345678901','123405789','37999999989','37989999989','Paraíba','João Pessoa','Nossa Senhora de Pessoas','Rua dezenove',19),(20,'Mateus Vinícius',7550,'12766678901','128302889','37999999199','37989999199','Minas Gerais','Bambuí','Nossa Senhora de Bambuí','Rua vinte',20);
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_compra`
--

DROP TABLE IF EXISTS `item_compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_compra` (
  `itc_proCodigo` int(11) NOT NULL COMMENT 'Codigo do produto, FK do produto, para armazenar os dados do produto do item de compra',
  `itc_comCodigo` int(11) NOT NULL,
  `itcQuantidade` int(11) NOT NULL COMMENT 'Quantidade, campo para armazenar a quantidade de produtos(mesmo produto) do item de compra',
  `itcValorUnitario` double NOT NULL COMMENT 'ValorTotal, campo para armazenar ',
  KEY `fk_Compra_has_Produtos_Produtos1_idx` (`itc_proCodigo`),
  KEY `fk_item_compra_compra1_idx` (`itc_comCodigo`),
  CONSTRAINT `fk_Compra_has_Produtos_Produtos1` FOREIGN KEY (`itc_proCodigo`) REFERENCES `produto` (`proCodigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_item_compra_compra1` FOREIGN KEY (`itc_comCodigo`) REFERENCES `compra` (`comCodigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabela para armazenar os itens de compra dos produtos do supermercado';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_compra`
--

LOCK TABLES `item_compra` WRITE;
/*!40000 ALTER TABLE `item_compra` DISABLE KEYS */;
INSERT INTO `item_compra` VALUES (1,1,700,700),(2,2,50,20.99),(3,3,71,72.99),(4,4,7,2.78),(5,5,60,99.12),(6,5,70,71.91),(7,4,87,32),(8,8,788,98),(9,7,502,120.98),(10,2,712,7000),(11,3,12,2986.98),(12,4,871,10000.9),(13,5,776,721),(14,6,98,72),(15,7,1,22.6),(16,8,89,99.01),(17,9,12,100),(18,1,98,178),(19,2,8100,10000),(20,4,87,123.08);
/*!40000 ALTER TABLE `item_compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_venda`
--

DROP TABLE IF EXISTS `item_venda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_venda` (
  `itvQuantidade` double NOT NULL COMMENT 'Quantidade, campo para armazenar a quantidade do item de venda do produto',
  `itvDesconto` double NOT NULL DEFAULT '0' COMMENT 'Desconto, campo para armazenar o desconto do item de venda do produto',
  `itvValorUnitario` double NOT NULL COMMENT 'ValorTotal, campo para armazenar o valor total do item de venda do produto',
  `itv_proCodigo` int(11) NOT NULL COMMENT 'Codigo do produto, FK do produto, para passar os dados do produto',
  `itv_venCodigo` int(11) NOT NULL,
  KEY `fk_Item Venda_Produtos1_idx` (`itv_proCodigo`),
  KEY `fk_item_venda_venda1_idx` (`itv_venCodigo`),
  CONSTRAINT `fk_Item Venda_Produtos1` FOREIGN KEY (`itv_proCodigo`) REFERENCES `produto` (`proCodigo`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_item_venda_venda1` FOREIGN KEY (`itv_venCodigo`) REFERENCES `venda` (`venCodigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabela para armazenar os itens de venda dos produtos do supermecado';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_venda`
--

LOCK TABLES `item_venda` WRITE;
/*!40000 ALTER TABLE `item_venda` DISABLE KEYS */;
INSERT INTO `item_venda` VALUES (5,0,35,1,2),(2,2,29,2,3),(3,0,25.5,3,4),(4,5,31,4,5),(1,0,7.5,5,6),(2,0,8.5,6,3),(5,5.5,74,7,4),(3,0,4.83,8,1),(4,2,11,9,4),(1,0,31.9,10,3);
/*!40000 ALTER TABLE `item_venda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagamento`
--

DROP TABLE IF EXISTS `pagamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagamento` (
  `pagCodigo` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Codigo, campo para identificar os pagamentos do supermercado',
  `pagData` date NOT NULL COMMENT 'Data, campo para armazenar a data dos pagamentos do supermercado',
  `pagHora` time NOT NULL COMMENT 'Hora, campo para armazenar os pagamentos do supermercado',
  `pagValorPago` double NOT NULL COMMENT 'ValorPago, campo para armazenar o valor que foi pago pelo supermercado',
  `pagStatus` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Status, campo para armazenar se o supermercado realizou o pagamento',
  `pag_ctpCodigo` int(11) NOT NULL COMMENT 'Codigo da conta a pagar, FK da conta a pagar, passa as informações da conta a pagar para o pagamento',
  PRIMARY KEY (`pagCodigo`),
  KEY `fk_pagamento_contasPagar1_idx` (`pag_ctpCodigo`),
  CONSTRAINT `fk_pagamento_contasPagar1` FOREIGN KEY (`pag_ctpCodigo`) REFERENCES `conta_pagar` (`ctpCodigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COMMENT='Tabela para armazenar os pagamentos realizados pelo supermercado';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagamento`
--

LOCK TABLES `pagamento` WRITE;
/*!40000 ALTER TABLE `pagamento` DISABLE KEYS */;
INSERT INTO `pagamento` VALUES (1,'2018-12-25','10:10:00',5,0,1),(2,'2018-10-11','12:16:00',200,1,2),(3,'2018-11-12','10:39:00',4,0,3),(4,'2018-09-01','17:19:00',70,0,4),(5,'2018-11-30','19:30:00',25000,1,5),(6,'2018-05-19','16:16:00',1000,0,6);
/*!40000 ALTER TABLE `pagamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produto` (
  `proCodigo` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Codigo, campo para identificar o produto',
  `proValorCusto` double NOT NULL COMMENT 'ValorCusto, campo para armazenar o valor do produto',
  `proQuantidadeEstoque` int(11) NOT NULL COMMENT 'QuantidadeEstoque, campo para armazenar a quantidade de produtos em estoque',
  `proNome` text NOT NULL COMMENT 'Nome, campo para armazenar o nome do produto',
  `proMarca` varchar(50) NOT NULL COMMENT 'Marca, campo para armazenar a marca do produto',
  `proValidade` date NOT NULL COMMENT 'Validade, armazena a data de vencimento do produto',
  `proLote` varchar(20) NOT NULL COMMENT 'Lote, campo para armazenar o lote do produto',
  `proUnidade` varchar(2) NOT NULL COMMENT 'Unidade, campo para armazenar a unidade do produto',
  PRIMARY KEY (`proCodigo`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1 COMMENT='Tabela para armazenar os produtos do supermercado';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (1,7,50,'Refrigerante','Coca-Cola','2019-01-15','14a871ge98','LT'),(2,15.5,25,'Sabão em Pó','OMO','2019-04-22','A1fsE21fb','KG'),(3,8.5,80,'Café','3 Corações','2019-02-10','5EfsVxsa12','GR'),(4,9,50,'Filé de Frango','Big','2018-12-20','mEa90sfXeQ','KG'),(5,7.5,100,'Açucar','Cristal','2020-07-05','KjsA12Oeq1','KG'),(6,4.25,35,'Farinha de Trigo','SM','2019-12-18','nE13fx9aN1x','KG'),(7,15.9,89,'Arroz','Codil','2019-03-06','KO9847','KG'),(8,1.61,250,'Milho','Fazendeiro Lucão','2019-06-02','LB2424','KG'),(9,3.25,120,'Leite de Boi','Sonia Leiteira','2019-04-22','SL1999','L'),(10,31.9,60,'CD - Regia Danese: Entra na minha casa','Profanity Records','2025-05-05','KK5555','UN'),(11,7.05,100,'Farinha','Vovó Zenilda','2021-05-12','OL7824','KG'),(12,2.9,72,'Açucar Refinado','Marca Que o Breno Não Colocou','2019-06-08','RE8969','KG'),(13,3.89,67,'Leite','Cemil','2018-12-12','LK7832','L'),(14,2.91,34,'Feijão Carioca','Codil','2019-12-12','PL7532','KG'),(15,0.8,120,'Sabonete','Lux Sup','2026-06-02','LP7812','UN'),(16,5.8,79,'Macarrão','Divella','2022-06-05','QW9856','KG'),(17,3.7,68,'Óleo','Liza','2019-09-25','OL7598','L'),(18,9.4,160,'Suco de Laranja','One','2019-06-04','KA7436','L'),(19,2.39,200,'Batata','Qualitá','2018-12-13','PL7356','KG'),(20,4.89,160,'Tomate','Qualitá','2018-12-13','PK8310','KG'),(21,4.99,65,'Pão de Forma','Pullman','2019-01-05','PO5656','KG'),(22,4.35,64,'Margarina','Vigor','2019-04-08','KL4796','KG'),(23,8.98,54,'Banana da Terra','Qualitá','2018-12-13','PM1679','KG'),(24,18.9,7,'Filé Mignon','Do Chef','2018-12-15','JJ7412','KG'),(25,10.75,65,'Café','Fazendeiro Lucão','2019-06-04','HH4569','KG'),(26,5.56,47,'Maçã','Gnel','2019-04-04','QQ7777','KG');
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recebimento`
--

DROP TABLE IF EXISTS `recebimento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recebimento` (
  `recCodigo` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Codigo, campo para identificar o recebimento',
  `recData` date NOT NULL COMMENT 'Data, campo para armazenar a data do recebimento',
  `recHora` time NOT NULL COMMENT 'Hora, campo para armazenar a hora do recebimento',
  `recValorRecebido` double NOT NULL COMMENT 'ValorRecebido, campo para armazenar o valor recebido no recebimento',
  `recStatus` tinyint(1) NOT NULL COMMENT 'Status, campo para armazenar se o recebimento foi realizado ou não',
  `rec_ctrCodigo` int(11) NOT NULL COMMENT 'Codigo da conta a receber, FK da conta a receber, para passar os dados da conta a receber ao recebimento',
  PRIMARY KEY (`recCodigo`),
  KEY `fk_recebimento_contaReceber1_idx` (`rec_ctrCodigo`),
  CONSTRAINT `fk_recebimento_contaReceber1` FOREIGN KEY (`rec_ctrCodigo`) REFERENCES `conta_receber` (`ctrCodigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 COMMENT='Tabela para armazenar os recebimentos do supermercado';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recebimento`
--

LOCK TABLES `recebimento` WRITE;
/*!40000 ALTER TABLE `recebimento` DISABLE KEYS */;
INSERT INTO `recebimento` VALUES (1,'2018-11-17','08:36:09',250.58,1,1),(2,'2018-11-17','08:55:06',86.98,1,3),(3,'2018-11-17','09:16:13',152.64,1,2),(4,'2018-11-17','09:56:09',61.45,1,5),(5,'2018-11-17','14:26:14',61.45,1,7),(6,'2018-11-17','15:23:11',27.49,1,8),(7,'2018-11-17','18:36:08',210.09,1,10),(8,'2018-11-17','19:06:07',109.73,1,9);
/*!40000 ALTER TABLE `recebimento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venda`
--

DROP TABLE IF EXISTS `venda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `venda` (
  `venCodigo` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Codigo, campo para identificar a venda',
  `venValorTotal` double NOT NULL COMMENT 'ValorTotal, campo para armazenar o valor total da venda',
  `venData` date NOT NULL COMMENT 'Data, campo para armazenar a data da venda',
  `venHora` time NOT NULL COMMENT 'Hora, campo para armazenar a hora da venda',
  `ven_cliCodigo` int(11) NOT NULL COMMENT 'Codigo do cliente, FK do cliente, para armazenar os dados do cliente presente na venda',
  `ven_funCodigo` int(11) NOT NULL COMMENT 'Codigo do funcionario, FK do funcionario, para armazenar os dados do funcionario presente na venda',
  `caixa_caiCodigo` int(11) NOT NULL COMMENT 'Codigo do caixa, FK do caixa, para armazenar a situação do caixa no momento da venda',
  PRIMARY KEY (`venCodigo`),
  KEY `fk_Vendas_Clientes1_idx` (`ven_cliCodigo`),
  KEY `fk_Vendas_Funcionarios1_idx` (`ven_funCodigo`),
  KEY `fk_venda_caixa1_idx` (`caixa_caiCodigo`),
  CONSTRAINT `fk_Vendas_Clientes1` FOREIGN KEY (`ven_cliCodigo`) REFERENCES `cliente` (`cliCodigo`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Vendas_Funcionarios1` FOREIGN KEY (`ven_funCodigo`) REFERENCES `funcionario` (`funCodigo`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_venda_caixa1` FOREIGN KEY (`caixa_caiCodigo`) REFERENCES `caixa` (`caiCodigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COMMENT='Tabela para armazenar as vendas do supermercado';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venda`
--

LOCK TABLES `venda` WRITE;
/*!40000 ALTER TABLE `venda` DISABLE KEYS */;
INSERT INTO `venda` VALUES (1,250.58,'2018-11-17','08:36:00',2,1,1),(2,86.98,'2018-11-17','08:55:00',3,4,5),(3,152.64,'2018-11-17','09:16:00',5,3,6),(4,380.82,'2018-11-17','09:36:00',9,1,1),(5,61.45,'2018-11-17','09:56:00',4,4,7),(6,50.03,'2018-11-17','14:26:00',15,18,1),(7,352.76,'2018-11-17','14:42:00',12,14,5),(8,27.49,'2018-11-17','15:23:00',7,17,3),(9,210.09,'2018-11-17','18:36:00',16,15,2),(10,109.73,'2018-11-17','19:06:00',18,12,9);
/*!40000 ALTER TABLE `venda` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-25 22:49:36
