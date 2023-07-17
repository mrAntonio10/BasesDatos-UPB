-- MariaDB dump 10.19  Distrib 10.7.3-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: ROCA_MARCO_Practica2
-- ------------------------------------------------------
-- Server version	10.7.3-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `detalle`
--

DROP TABLE IF EXISTS `detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalle` (
  `ID_FACTURA` int(11) NOT NULL,
  `Producto` varchar(30) DEFAULT NULL,
  `Precio` double(5,2) DEFAULT NULL,
  KEY `ID_FACTURA` (`ID_FACTURA`),
  CONSTRAINT `detalle_ibfk_1` FOREIGN KEY (`ID_FACTURA`) REFERENCES `facturas` (`ID_FACTURA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle`
--

LOCK TABLES `detalle` WRITE;
/*!40000 ALTER TABLE `detalle` DISABLE KEYS */;
INSERT INTO `detalle` (`ID_FACTURA`, `Producto`, `Precio`) VALUES (1,'Pera',4.65);
INSERT INTO `detalle` (`ID_FACTURA`, `Producto`, `Precio`) VALUES (2,'Manzana',3.65);
INSERT INTO `detalle` (`ID_FACTURA`, `Producto`, `Precio`) VALUES (3,'Arroz',8.50);
INSERT INTO `detalle` (`ID_FACTURA`, `Producto`, `Precio`) VALUES (4,'Carne',39.00);
INSERT INTO `detalle` (`ID_FACTURA`, `Producto`, `Precio`) VALUES (5,'Leche',8.50);
INSERT INTO `detalle` (`ID_FACTURA`, `Producto`, `Precio`) VALUES (6,'Pera',4.65);
INSERT INTO `detalle` (`ID_FACTURA`, `Producto`, `Precio`) VALUES (7,'Manzana',3.65);
INSERT INTO `detalle` (`ID_FACTURA`, `Producto`, `Precio`) VALUES (8,'Arroz',8.50);
INSERT INTO `detalle` (`ID_FACTURA`, `Producto`, `Precio`) VALUES (9,'Carne',39.00);
INSERT INTO `detalle` (`ID_FACTURA`, `Producto`, `Precio`) VALUES (10,'Poroto',12.65);
INSERT INTO `detalle` (`ID_FACTURA`, `Producto`, `Precio`) VALUES (11,'Tortilla',20.00);
INSERT INTO `detalle` (`ID_FACTURA`, `Producto`, `Precio`) VALUES (12,'Quinua',21.50);
INSERT INTO `detalle` (`ID_FACTURA`, `Producto`, `Precio`) VALUES (13,'Carne',39.00);
INSERT INTO `detalle` (`ID_FACTURA`, `Producto`, `Precio`) VALUES (14,'Hamburguesas',38.90);
INSERT INTO `detalle` (`ID_FACTURA`, `Producto`, `Precio`) VALUES (15,'Manzana',3.65);
INSERT INTO `detalle` (`ID_FACTURA`, `Producto`, `Precio`) VALUES (16,'per',14.00);
INSERT INTO `detalle` (`ID_FACTURA`, `Producto`, `Precio`) VALUES (16,'por',5.00);
/*!40000 ALTER TABLE `detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleado`
--

DROP TABLE IF EXISTS `empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empleado` (
  `ID_EMP` int(11) NOT NULL,
  `Apellido` varchar(30) DEFAULT NULL,
  `Nombre` varchar(30) DEFAULT NULL,
  `FECHA_NAC` date DEFAULT NULL,
  `Edad` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_EMP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
INSERT INTO `empleado` (`ID_EMP`, `Apellido`, `Nombre`, `FECHA_NAC`, `Edad`) VALUES (1,'Roca','Marco','2001-07-01',21);
INSERT INTO `empleado` (`ID_EMP`, `Apellido`, `Nombre`, `FECHA_NAC`, `Edad`) VALUES (2,'Roca','Luis','2003-04-10',20);
INSERT INTO `empleado` (`ID_EMP`, `Apellido`, `Nombre`, `FECHA_NAC`, `Edad`) VALUES (3,'Guarnizo','Juan','2000-12-10',22);
INSERT INTO `empleado` (`ID_EMP`, `Apellido`, `Nombre`, `FECHA_NAC`, `Edad`) VALUES (4,'Roca','Valeria','2009-12-02',13);
INSERT INTO `empleado` (`ID_EMP`, `Apellido`, `Nombre`, `FECHA_NAC`, `Edad`) VALUES (5,'Zarco','Alexey','2001-09-19',21);
INSERT INTO `empleado` (`ID_EMP`, `Apellido`, `Nombre`, `FECHA_NAC`, `Edad`) VALUES (6,'Petaca','Maria','2000-12-10',22);
INSERT INTO `empleado` (`ID_EMP`, `Apellido`, `Nombre`, `FECHA_NAC`, `Edad`) VALUES (7,'Rodriguez','Juanito','1999-12-10',24);
INSERT INTO `empleado` (`ID_EMP`, `Apellido`, `Nombre`, `FECHA_NAC`, `Edad`) VALUES (8,'Balderrama','Lucas','2005-11-28',18);
INSERT INTO `empleado` (`ID_EMP`, `Apellido`, `Nombre`, `FECHA_NAC`, `Edad`) VALUES (9,'Aldunate','Sheiya','2006-01-17',17);
INSERT INTO `empleado` (`ID_EMP`, `Apellido`, `Nombre`, `FECHA_NAC`, `Edad`) VALUES (10,'Flanders','Net','2010-09-01',12);
INSERT INTO `empleado` (`ID_EMP`, `Apellido`, `Nombre`, `FECHA_NAC`, `Edad`) VALUES (12,'Romero','Francisco','2002-04-17',20);
INSERT INTO `empleado` (`ID_EMP`, `Apellido`, `Nombre`, `FECHA_NAC`, `Edad`) VALUES (13,'Fernandez','Pablo','2000-01-01',22);
INSERT INTO `empleado` (`ID_EMP`, `Apellido`, `Nombre`, `FECHA_NAC`, `Edad`) VALUES (14,'Farah','Cesar','1998-02-03',25);
INSERT INTO `empleado` (`ID_EMP`, `Apellido`, `Nombre`, `FECHA_NAC`, `Edad`) VALUES (15,'Delgado','Luisangel','2002-06-05',21);
INSERT INTO `empleado` (`ID_EMP`, `Apellido`, `Nombre`, `FECHA_NAC`, `Edad`) VALUES (100,NULL,NULL,NULL,60);
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facturas`
--

DROP TABLE IF EXISTS `facturas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facturas` (
  `ID_FACTURA` int(11) NOT NULL,
  `Nombre` varchar(30) DEFAULT NULL,
  `Apellido` varchar(30) DEFAULT NULL,
  `NIT` int(11) DEFAULT NULL,
  `eMail` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ID_FACTURA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facturas`
--

LOCK TABLES `facturas` WRITE;
/*!40000 ALTER TABLE `facturas` DISABLE KEYS */;
INSERT INTO `facturas` (`ID_FACTURA`, `Nombre`, `Apellido`, `NIT`, `eMail`) VALUES (1,'Marco','Roca',12413105,'marcorocadota@gmail.com');
INSERT INTO `facturas` (`ID_FACTURA`, `Nombre`, `Apellido`, `NIT`, `eMail`) VALUES (2,'Marco','Roca',12413105,'marcorocadota@gmail.com');
INSERT INTO `facturas` (`ID_FACTURA`, `Nombre`, `Apellido`, `NIT`, `eMail`) VALUES (3,'Luis','Roca',12415123,'lroca@gmail.com');
INSERT INTO `facturas` (`ID_FACTURA`, `Nombre`, `Apellido`, `NIT`, `eMail`) VALUES (4,'Luis','Roca',12415123,'lroca@gmail.com');
INSERT INTO `facturas` (`ID_FACTURA`, `Nombre`, `Apellido`, `NIT`, `eMail`) VALUES (5,'Valeria','Roca',12415153,'vroca@gmail.com');
INSERT INTO `facturas` (`ID_FACTURA`, `Nombre`, `Apellido`, `NIT`, `eMail`) VALUES (6,'Valeria','Roca',12415153,'vroca@gmail.com');
INSERT INTO `facturas` (`ID_FACTURA`, `Nombre`, `Apellido`, `NIT`, `eMail`) VALUES (7,'Mariana','Mealla',5154786,'mmlla@gmail.com');
INSERT INTO `facturas` (`ID_FACTURA`, `Nombre`, `Apellido`, `NIT`, `eMail`) VALUES (8,'Mariana','Mealla',5154786,'mmlla@gmail.com');
INSERT INTO `facturas` (`ID_FACTURA`, `Nombre`, `Apellido`, `NIT`, `eMail`) VALUES (9,'Mariana','Mealla',5154786,'mmlla@gmail.com');
INSERT INTO `facturas` (`ID_FACTURA`, `Nombre`, `Apellido`, `NIT`, `eMail`) VALUES (10,'Juan','Vaca',2154878,'vdevaca@gmail.com');
INSERT INTO `facturas` (`ID_FACTURA`, `Nombre`, `Apellido`, `NIT`, `eMail`) VALUES (11,'Juan','Vaca',2154878,'vdevaca@gmail.com');
INSERT INTO `facturas` (`ID_FACTURA`, `Nombre`, `Apellido`, `NIT`, `eMail`) VALUES (12,'Juan','Vaca',2154878,'vdevaca@gmail.com');
INSERT INTO `facturas` (`ID_FACTURA`, `Nombre`, `Apellido`, `NIT`, `eMail`) VALUES (13,'Natalia','Sanchez',757896,'ss10@gmail.com');
INSERT INTO `facturas` (`ID_FACTURA`, `Nombre`, `Apellido`, `NIT`, `eMail`) VALUES (14,'Natalia','Sanchez',757896,'ss10@gmail.com');
INSERT INTO `facturas` (`ID_FACTURA`, `Nombre`, `Apellido`, `NIT`, `eMail`) VALUES (15,'Natalia','Sanchez',757896,'ss10@gmail.com');
INSERT INTO `facturas` (`ID_FACTURA`, `Nombre`, `Apellido`, `NIT`, `eMail`) VALUES (16,'M','R',111,'MR@GMAIL.COM');
/*!40000 ALTER TABLE `facturas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'ROCA_MARCO_Practica2'
--
/*!50003 DROP FUNCTION IF EXISTS `retiro_en` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `retiro_en`(id INT) RETURNS int(11)
BEGIN
DECLARE falta INT;
SELECT Edad INTO falta FROM empleado WHERE ID_EMP=id;
RETURN 55-falta;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ins_factura` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ins_factura`(id INT, nombre VARCHAR(30), apellido VARCHAR(30), nit INT, mail VARCHAR(30), pro1 varchar(20), p1 double(5,2), pro2 varchar(20), p2 double(5,2))
BEGIN
DECLARE ultimo INT;
SELECT ID_FACTURA INTO ultimo FROM facturas ORDER BY ID_FACTURA DESC LIMIT 1; 


IF ultimo = id THEN
SELECT 'EL ID_FACTURA YA EXISTE' as RESPUESTA;
ELSE
INSERT INTO Facturas VALUES(id, nombre, apellido, nit, mail);
INSERT INTO DETALLE VALUES(id, pro1, p1);
INSERT INTO DETALLE VALUES(id,pro2,p2);
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `nacido` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `nacido`(genero varchar(2), fecha DATE)
BEGIN
SELECT emp_no, concat(first_name,' ',last_name) as NombreCompleto, gender, birth_date FROM employees.employees WHERE gender = genero AND birth_date LIKE (fecha);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ver_clienteS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ver_clienteS`(orden INT, limite INT)
BEGIN
IF (orden = 2) THEN
SELECT * FROM sakila.customer c ORDER BY c.email DESC LIMIT limite;
ELSE
SELECT * FROM sakila.customer c ORDER BY c.customer_id ASC LIMIT limite;
END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-08 23:29:20
