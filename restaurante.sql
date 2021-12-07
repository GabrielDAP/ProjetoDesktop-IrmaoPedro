-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: restaurante
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.31-MariaDB

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
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente` (
  `cliente_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cliente_nome` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `cliente_cpf` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cliente_rg` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cliente_sexo` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reservas_id` int(11) NOT NULL,
  PRIMARY KEY (`cliente_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Diogo Giovanni Santos','691.943.992-12','38.429.699-3','Masculino',1),(2,'Louise Caroline Isabel Campos','699.146.244-64','47.239.246-3','Feminino',3),(3,'Adison','123.443.223-44','21213123','Masculino',2),(4,'Roni','412.321.521-42','04412323','Masculino',4);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estoqueprod`
--

DROP TABLE IF EXISTS `estoqueprod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estoqueprod` (
  `estoque_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dataCadastroProd` date NOT NULL,
  `func_id` int(11) NOT NULL,
  `produto_id` int(11) NOT NULL,
  PRIMARY KEY (`estoque_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estoqueprod`
--

LOCK TABLES `estoqueprod` WRITE;
/*!40000 ALTER TABLE `estoqueprod` DISABLE KEYS */;
INSERT INTO `estoqueprod` VALUES (1,'2020-03-04',1,1),(2,'2020-09-03',2,2);
/*!40000 ALTER TABLE `estoqueprod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fornecedor`
--

DROP TABLE IF EXISTS `fornecedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fornecedor` (
  `fornecedor_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fornecedor_nome` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `fornecedor_cnpj` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `fornecedor_telefone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `email_fornecedor` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`fornecedor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedor`
--

LOCK TABLES `fornecedor` WRITE;
/*!40000 ALTER TABLE `fornecedor` DISABLE KEYS */;
INSERT INTO `fornecedor` VALUES (1,'Grãos de Café LTDA','44.823.037/0001-95','(96) 99950-3991','graoscafe@gmail.com'),(2,'Materiais Confeitos LTDA','97.686.499/0001-74','(85) 98470-7245','materiaisconfeitos@gmail.com');
/*!40000 ALTER TABLE `fornecedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `funcionario` (
  `func_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `func_nome` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `func_cpf` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `func_rg` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `func_sexo` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `func_telefone` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `func_email` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `func_ctps` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `func_salario` double NOT NULL,
  PRIMARY KEY (`func_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
INSERT INTO `funcionario` VALUES (3,'Henry Hugo Duarte','646.346.660-30','21.589.339-6','Masculino','(81) 98861-8747','henryhugoduarte_@gmail.com','097.46787.29-8',1100),(4,'João de Souza e Silva','649.323.942-05','21.849.529-7','Masculino','(81) 98854-6218','joaodesouzaesilva942@gmail.com','057.85687.52-7',1800),(6,'Gabriel Carlos','213.213.213-21','003123213','Masculino','(75) 92132-1321','gabriel@gmail.com','3213213',4700);
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `histcompra`
--

DROP TABLE IF EXISTS `histcompra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `histcompra` (
  `histCompra_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dataCompra` date NOT NULL,
  `valorCompra` double NOT NULL,
  `descontoCompra` double NOT NULL,
  `valorFinalCompra` double NOT NULL,
  `formaPagamento` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `produto_id` int(11) NOT NULL,
  PRIMARY KEY (`histCompra_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `histcompra`
--

LOCK TABLES `histcompra` WRITE;
/*!40000 ALTER TABLE `histcompra` DISABLE KEYS */;
INSERT INTO `histcompra` VALUES (1,'2020-06-07',353.5,5.3,334.76,'Pix',1,1),(2,'2020-07-09',3.5,0,3.5,'A vista',2,2);
/*!40000 ALTER TABLE `histcompra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `histcontfornec`
--

DROP TABLE IF EXISTS `histcontfornec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `histcontfornec` (
  `histContFornec_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dataContratacao` date NOT NULL,
  `descricaoContrato` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `func_id` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `fornecedor_id` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`histContFornec_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `histcontfornec`
--

LOCK TABLES `histcontfornec` WRITE;
/*!40000 ALTER TABLE `histcontfornec` DISABLE KEYS */;
INSERT INTO `histcontfornec` VALUES (1,'2020-01-02','Contrato OK','1','2'),(2,'2020-03-04','Contrato OK','2','1');
/*!40000 ALTER TABLE `histcontfornec` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `histfornec`
--

DROP TABLE IF EXISTS `histfornec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `histfornec` (
  `histfornec_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dataFornecimento` date NOT NULL,
  `fornecedor_id` int(11) NOT NULL,
  `produto_id` int(11) NOT NULL,
  PRIMARY KEY (`histfornec_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `histfornec`
--

LOCK TABLES `histfornec` WRITE;
/*!40000 ALTER TABLE `histfornec` DISABLE KEYS */;
INSERT INTO `histfornec` VALUES (1,'2020-03-03',1,2),(2,'2020-06-03',2,1);
/*!40000 ALTER TABLE `histfornec` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `histpedido`
--

DROP TABLE IF EXISTS `histpedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `histpedido` (
  `histPedido_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dataPedido` date NOT NULL,
  `confirmacaoPedido` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `pedido_id` int(11) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  PRIMARY KEY (`histPedido_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `histpedido`
--

LOCK TABLES `histpedido` WRITE;
/*!40000 ALTER TABLE `histpedido` DISABLE KEYS */;
INSERT INTO `histpedido` VALUES (1,'2020-03-04','Confirmado',1,1),(2,'2020-04-09','Andamento',2,1);
/*!40000 ALTER TABLE `histpedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedido` (
  `pedido_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pedido_horarioEntrega` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `produto_id` int(11) NOT NULL,
  PRIMARY KEY (`pedido_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
INSERT INTO `pedido` VALUES (1,'23:00',1),(2,'10:30',1),(3,'16:29',2);
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produto` (
  `produto_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `produto_nome` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `produto_preco` double NOT NULL,
  `produto_validade` date NOT NULL,
  `produto_descricao` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`produto_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (1,'Café',8,'2021-05-27','Café top'),(2,'Confeito',3.5,'2021-05-30','Confeito top'),(3,'Arte',1999.99,'2050-05-31','Arte top');
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reserva`
--

DROP TABLE IF EXISTS `reserva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reserva` (
  `reservas_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `reservas_numero` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `reservas_datadereserva` date NOT NULL,
  `reservas_custo` double DEFAULT NULL,
  `reservas_status` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`reservas_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reserva`
--

LOCK TABLES `reserva` WRITE;
/*!40000 ALTER TABLE `reserva` DISABLE KEYS */;
INSERT INTO `reserva` VALUES (1,'M3','2020-04-01',200,'Ocupado'),(2,'M2','2020-05-03',250,'Reservado'),(3,'M4','2020-09-15',400,'Reservado'),(4,'M8','2021-12-06',400,'Ocupado');
/*!40000 ALTER TABLE `reserva` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-06 22:05:30
