CREATE DATABASE  IF NOT EXISTS `catalogoproductos` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `catalogoproductos`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: catalogoproductos
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `marcas`
--

DROP TABLE IF EXISTS `marcas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marcas` (
  `id_Marca` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  `precentacion` int NOT NULL,
  PRIMARY KEY (`id_Marca`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marcas`
--

LOCK TABLES `marcas` WRITE;
/*!40000 ALTER TABLE `marcas` DISABLE KEYS */;
INSERT INTO `marcas` VALUES (1,'M&Ms','Caramelo',100),(2,'Kinder Bueno','Chocolate con leche',225),(3,'Twix','Galleta con caramelo y chocolate',250),(4,'Snickers','Galleta con caramelo, cacahuate y chocolate',250),(5,'Skittles','Caramelo con sabor a frutas',198),(6,'Starburst','Caramelo con sabor a frutas',250),(7,'Canels','Goma de máscar soboreizante artifucial',350);
/*!40000 ALTER TABLE `marcas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `id_Productos` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  `precio` double NOT NULL,
  `imagen` blob NOT NULL,
  `Marca_id_Marca` int NOT NULL,
  PRIMARY KEY (`id_Productos`,`Marca_id_Marca`),
  KEY `fk_Productos_Marca1_idx` (`Marca_id_Marca`),
  CONSTRAINT `fk_Productos_Marca1` FOREIGN KEY (`Marca_id_Marca`) REFERENCES `marcas` (`id_Marca`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'M&Ms minis','versiones más pequeñas',98,_binary 'C:UsersEM_CeDocumentsMySqlImagenesCatalogo de dulcesM&Ms minis.jpeg',1),(2,'M&Ms  con leche','una capa de cacahuete en lugar de caramelo.',160,_binary 'C:UsersEM_CeDocumentsMySqlImagenesCatalogo de dulcesM&Ms con leche.jpeg',1),(3,'M&Ms minis','versiones más pequeñas',98,_binary 'C:UsersEM_CeDocumentsMySqlImagenesCatalogo de dulcesM&Ms minis.jpeg',1);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock` (
  `idStock` int NOT NULL AUTO_INCREMENT,
  `entrada` datetime NOT NULL,
  `salida` datetime NOT NULL,
  `cantidad` int NOT NULL,
  `Productos_idProductos` int NOT NULL,
  PRIMARY KEY (`idStock`,`Productos_idProductos`),
  KEY `fk_Stock_Productos_idx` (`Productos_idProductos`),
  CONSTRAINT `fk_Stock_Productos` FOREIGN KEY (`Productos_idProductos`) REFERENCES `productos` (`id_Productos`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock`
--

LOCK TABLES `stock` WRITE;
/*!40000 ALTER TABLE `stock` DISABLE KEYS */;
INSERT INTO `stock` VALUES (1,'2023-07-20 12:00:00','2023-08-20 12:00:00',5,1),(2,'2020-07-20 12:11:00','2021-07-20 16:00:00',3,2),(4,'2020-07-26 12:00:00','2023-07-20 12:00:00',2,3);
/*!40000 ALTER TABLE `stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas`
--

DROP TABLE IF EXISTS `ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ventas` (
  `idventa` int NOT NULL AUTO_INCREMENT,
  `nombreCliente` varchar(45) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `fecha_compra` date NOT NULL,
  `costo` double NOT NULL,
  PRIMARY KEY (`idventa`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT INTO `ventas` VALUES (1,'Juan Pérez','0987654321','2023-07-20',10),(2,'Pedro González','3210987654','2023-07-22',5),(3,'Carmen Hernández','7890123456','2023-07-26',29),(4,'Jorge Sánchez','6789012345','2023-07-25',19),(5,'Luis Rodríguez','5678901234','2023-07-24',25);
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas_envios`
--

DROP TABLE IF EXISTS `ventas_envios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ventas_envios` (
  `id_venta_envio` int NOT NULL,
  `venta_idventa` int NOT NULL,
  `Stock_idStock` int NOT NULL,
  `fechaEntrega` datetime NOT NULL,
  `envio_estado` tinyint NOT NULL,
  PRIMARY KEY (`venta_idventa`,`Stock_idStock`,`id_venta_envio`),
  KEY `fk_venta_has_Stock_Stock1_idx` (`Stock_idStock`),
  KEY `fk_venta_has_Stock_venta1_idx` (`venta_idventa`),
  CONSTRAINT `fk_venta_has_Stock_Stock1` FOREIGN KEY (`Stock_idStock`) REFERENCES `stock` (`idStock`),
  CONSTRAINT `fk_venta_has_Stock_venta1` FOREIGN KEY (`venta_idventa`) REFERENCES `ventas` (`idventa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas_envios`
--

LOCK TABLES `ventas_envios` WRITE;
/*!40000 ALTER TABLE `ventas_envios` DISABLE KEYS */;
INSERT INTO `ventas_envios` VALUES (1,1,2,'2023-07-20 00:00:00',1),(2,2,4,'2023-07-26 00:00:00',0),(3,5,1,'2023-07-22 00:00:00',1);
/*!40000 ALTER TABLE `ventas_envios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-21 15:29:34
