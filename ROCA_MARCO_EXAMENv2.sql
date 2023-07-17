-- MariaDB dump 10.19  Distrib 10.7.3-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: ROCA_MARCO_EXAMEN
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
-- Table structure for table `compra`
--

DROP TABLE IF EXISTS `compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `compra` (
  `COMPRA_ID` int(11) DEFAULT NULL,
  `FECHA` date DEFAULT NULL,
  `COSTO_TOTAL` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compra`
--

LOCK TABLES `compra` WRITE;
/*!40000 ALTER TABLE `compra` DISABLE KEYS */;
INSERT INTO `compra` (`COMPRA_ID`, `FECHA`, `COSTO_TOTAL`) VALUES (1,'2023-05-10',50);
INSERT INTO `compra` (`COMPRA_ID`, `FECHA`, `COSTO_TOTAL`) VALUES (2,'2023-05-10',50);
INSERT INTO `compra` (`COMPRA_ID`, `FECHA`, `COSTO_TOTAL`) VALUES (3,'2023-05-10',50);
INSERT INTO `compra` (`COMPRA_ID`, `FECHA`, `COSTO_TOTAL`) VALUES (4,'2023-05-10',50);
INSERT INTO `compra` (`COMPRA_ID`, `FECHA`, `COSTO_TOTAL`) VALUES (5,'2023-05-10',50);
INSERT INTO `compra` (`COMPRA_ID`, `FECHA`, `COSTO_TOTAL`) VALUES (1,'2023-01-01',100);
/*!40000 ALTER TABLE `compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_compra`
--

DROP TABLE IF EXISTS `detalle_compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalle_compra` (
  `DETALLE_ID` int(11) DEFAULT NULL,
  `COMPRA_ID` int(11) DEFAULT NULL,
  `PRODUCTO_ID` int(11) DEFAULT NULL,
  `CANTIDAD` int(11) DEFAULT NULL,
  `COSTO_INDIVIDUAL` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_compra`
--

LOCK TABLES `detalle_compra` WRITE;
/*!40000 ALTER TABLE `detalle_compra` DISABLE KEYS */;
INSERT INTO `detalle_compra` (`DETALLE_ID`, `COMPRA_ID`, `PRODUCTO_ID`, `CANTIDAD`, `COSTO_INDIVIDUAL`) VALUES (1,1,1,10,30);
INSERT INTO `detalle_compra` (`DETALLE_ID`, `COMPRA_ID`, `PRODUCTO_ID`, `CANTIDAD`, `COSTO_INDIVIDUAL`) VALUES (2,2,1,10,30);
INSERT INTO `detalle_compra` (`DETALLE_ID`, `COMPRA_ID`, `PRODUCTO_ID`, `CANTIDAD`, `COSTO_INDIVIDUAL`) VALUES (3,3,1,10,30);
INSERT INTO `detalle_compra` (`DETALLE_ID`, `COMPRA_ID`, `PRODUCTO_ID`, `CANTIDAD`, `COSTO_INDIVIDUAL`) VALUES (4,1,1,10,30);
INSERT INTO `detalle_compra` (`DETALLE_ID`, `COMPRA_ID`, `PRODUCTO_ID`, `CANTIDAD`, `COSTO_INDIVIDUAL`) VALUES (5,1,1,10,30);
INSERT INTO `detalle_compra` (`DETALLE_ID`, `COMPRA_ID`, `PRODUCTO_ID`, `CANTIDAD`, `COSTO_INDIVIDUAL`) VALUES (5,1,1,10,2);
INSERT INTO `detalle_compra` (`DETALLE_ID`, `COMPRA_ID`, `PRODUCTO_ID`, `CANTIDAD`, `COSTO_INDIVIDUAL`) VALUES (5,1,10,10,2);
INSERT INTO `detalle_compra` (`DETALLE_ID`, `COMPRA_ID`, `PRODUCTO_ID`, `CANTIDAD`, `COSTO_INDIVIDUAL`) VALUES (5,1,10,10,2);
INSERT INTO `detalle_compra` (`DETALLE_ID`, `COMPRA_ID`, `PRODUCTO_ID`, `CANTIDAD`, `COSTO_INDIVIDUAL`) VALUES (6,1,10,10,100);
INSERT INTO `detalle_compra` (`DETALLE_ID`, `COMPRA_ID`, `PRODUCTO_ID`, `CANTIDAD`, `COSTO_INDIVIDUAL`) VALUES (7,1,2,10,100);
INSERT INTO `detalle_compra` (`DETALLE_ID`, `COMPRA_ID`, `PRODUCTO_ID`, `CANTIDAD`, `COSTO_INDIVIDUAL`) VALUES (8,1,2,3,100);
/*!40000 ALTER TABLE `detalle_compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleado`
--

DROP TABLE IF EXISTS `empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empleado` (
  `ID_EMP` int(11) DEFAULT NULL,
  `CI` int(11) DEFAULT NULL,
  `NombreCompleto` varchar(50) DEFAULT NULL,
  `Posicion` varchar(30) DEFAULT NULL,
  `FechaNac` date DEFAULT NULL,
  `SalarioAnual` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
INSERT INTO `empleado` (`ID_EMP`, `CI`, `NombreCompleto`, `Posicion`, `FechaNac`, `SalarioAnual`) VALUES (1,456454,'Marco Roca','Jefe','2001-07-01',1000000);
INSERT INTO `empleado` (`ID_EMP`, `CI`, `NombreCompleto`, `Posicion`, `FechaNac`, `SalarioAnual`) VALUES (2,7897,'Luis Roca','Gerente','2003-10-11',100000);
INSERT INTO `empleado` (`ID_EMP`, `CI`, `NombreCompleto`, `Posicion`, `FechaNac`, `SalarioAnual`) VALUES (3,4897,'Valeria Roca','RRHH','2010-12-01',8000);
INSERT INTO `empleado` (`ID_EMP`, `CI`, `NombreCompleto`, `Posicion`, `FechaNac`, `SalarioAnual`) VALUES (4,2787997,'Hammed Pinto','Jefe','2001-07-01',100000);
INSERT INTO `empleado` (`ID_EMP`, `CI`, `NombreCompleto`, `Posicion`, `FechaNac`, `SalarioAnual`) VALUES (5,78978,'Jose Romero','Gerente','2003-10-11',20000);
INSERT INTO `empleado` (`ID_EMP`, `CI`, `NombreCompleto`, `Posicion`, `FechaNac`, `SalarioAnual`) VALUES (6,8465312,'Martin Hachiya','RRHH','2010-12-01',150000);
INSERT INTO `empleado` (`ID_EMP`, `CI`, `NombreCompleto`, `Posicion`, `FechaNac`, `SalarioAnual`) VALUES (7,12346,'Johnny Roca','Jefe','2001-07-01',1000000);
INSERT INTO `empleado` (`ID_EMP`, `CI`, `NombreCompleto`, `Posicion`, `FechaNac`, `SalarioAnual`) VALUES (8,156465,'Claudia Montenegro','Gerente','2003-10-11',100000);
INSERT INTO `empleado` (`ID_EMP`, `CI`, `NombreCompleto`, `Posicion`, `FechaNac`, `SalarioAnual`) VALUES (9,156789,'Agustina Montenegro','RRHH','2010-12-01',150000);
INSERT INTO `empleado` (`ID_EMP`, `CI`, `NombreCompleto`, `Posicion`, `FechaNac`, `SalarioAnual`) VALUES (10,89712356,'Sol Montenegro','RRHH','2010-12-01',8000);
INSERT INTO `empleado` (`ID_EMP`, `CI`, `NombreCompleto`, `Posicion`, `FechaNac`, `SalarioAnual`) VALUES (11,589712356,'Rios Montenegro','RRHH','2010-12-01',8000);
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados_fabrica`
--

DROP TABLE IF EXISTS `empleados_fabrica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empleados_fabrica` (
  `ID` int(11) DEFAULT NULL,
  `NOMBRE` varchar(30) DEFAULT NULL,
  `MES` varchar(30) DEFAULT NULL,
  `DIA` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados_fabrica`
--

LOCK TABLES `empleados_fabrica` WRITE;
/*!40000 ALTER TABLE `empleados_fabrica` DISABLE KEYS */;
INSERT INTO `empleados_fabrica` (`ID`, `NOMBRE`, `MES`, `DIA`) VALUES (100,'MARCO ROCA','2023-05',22);
INSERT INTO `empleados_fabrica` (`ID`, `NOMBRE`, `MES`, `DIA`) VALUES (200,'ROSA','2023-05',23);
INSERT INTO `empleados_fabrica` (`ID`, `NOMBRE`, `MES`, `DIA`) VALUES (100,'MARCO ROCA','2023-05',22);
INSERT INTO `empleados_fabrica` (`ID`, `NOMBRE`, `MES`, `DIA`) VALUES (200,'ROSA','2023-06',23);
INSERT INTO `empleados_fabrica` (`ID`, `NOMBRE`, `MES`, `DIA`) VALUES (100,'MARCO ROCA','2023-06',22);
INSERT INTO `empleados_fabrica` (`ID`, `NOMBRE`, `MES`, `DIA`) VALUES (200,'ROSA','2023-07',23);
INSERT INTO `empleados_fabrica` (`ID`, `NOMBRE`, `MES`, `DIA`) VALUES (100,'MARCO ROCA','2023-07',22);
INSERT INTO `empleados_fabrica` (`ID`, `NOMBRE`, `MES`, `DIA`) VALUES (200,'ROSA','2023-07',23);
INSERT INTO `empleados_fabrica` (`ID`, `NOMBRE`, `MES`, `DIA`) VALUES (300,'JUANJO','2023-07',23);
INSERT INTO `empleados_fabrica` (`ID`, `NOMBRE`, `MES`, `DIA`) VALUES (300,'JUANJO','2023-07',24);
INSERT INTO `empleados_fabrica` (`ID`, `NOMBRE`, `MES`, `DIA`) VALUES (300,'JUANJO','2023-07',25);
/*!40000 ALTER TABLE `empleados_fabrica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permitidos`
--

DROP TABLE IF EXISTS `permitidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permitidos` (
  `ID` int(11) DEFAULT NULL,
  `CI` int(11) DEFAULT NULL,
  `NombreCompleto` varchar(40) DEFAULT NULL,
  `Fecha_Nac` date NOT NULL,
  `DESTINO` enum('US','AR','BR','UK','ES','PE','VE') NOT NULL,
  `VISA` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permitidos`
--

LOCK TABLES `permitidos` WRITE;
/*!40000 ALTER TABLE `permitidos` DISABLE KEYS */;
INSERT INTO `permitidos` (`ID`, `CI`, `NombreCompleto`, `Fecha_Nac`, `DESTINO`, `VISA`) VALUES (3,12312,'MARCO guion','2001-07-01','PE',2323423);
INSERT INTO `permitidos` (`ID`, `CI`, `NombreCompleto`, `Fecha_Nac`, `DESTINO`, `VISA`) VALUES (5,12312,'MARCO acute','2001-09-01','VE',0);
/*!40000 ALTER TABLE `permitidos` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER IF NOT EXISTS disp_permitido BEFORE INSERT ON PERMITIDOS
FOR EACH ROW
BEGIN
DECLARE EDAD INT;
DECLARE visa INT;
select LENGTH('NEW.VISA') into visa;
 select floor( datediff( now(), NEW.Fecha_Nac)/365) into EDAD;

 IF EDAD < 18 THEN
 SET NEW.Fecha_Nac = null;
 end if;

 IF NEW.DESTINO='US' AND NEW.visa=0 THEN
 SET NEW. DESTINO = NULL;
 END IF;

 IF NEW.DESTINO='UK' AND NEW.visa=0 THEN
 SET NEW. DESTINO = NULL;
 END IF;

 IF NEW.DESTINO='ES' AND NEW.visa=0 THEN
 SET NEW. DESTINO = NULL;
 END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productos` (
  `PRODUCTO_ID` int(11) DEFAULT NULL,
  `NOMBRE` varchar(30) DEFAULT NULL,
  `TIPO` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` (`PRODUCTO_ID`, `NOMBRE`, `TIPO`) VALUES (1,'P','PEN');
INSERT INTO `productos` (`PRODUCTO_ID`, `NOMBRE`, `TIPO`) VALUES (2,'B','BORRADOR');
INSERT INTO `productos` (`PRODUCTO_ID`, `NOMBRE`, `TIPO`) VALUES (3,'T','TAJADOR');
INSERT INTO `productos` (`PRODUCTO_ID`, `NOMBRE`, `TIPO`) VALUES (4,'L','LAPIZ');
INSERT INTO `productos` (`PRODUCTO_ID`, `NOMBRE`, `TIPO`) VALUES (5,'T','TIJERA');
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'ROCA_MARCO_EXAMEN'
--
/*!50003 DROP FUNCTION IF EXISTS `cantidad` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `cantidad`(id INT, MES VARCHAR(10)) RETURNS int(11)
BEGIN
DECLARE resultado INT DEFAULT 0;
select count(*) into resultado from empleados_fabrica where ID=id AND MES like concat(MES,'%');
RETURN resultado;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `RangoSalario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `RangoSalario`(valor float) RETURNS varchar(30) CHARSET latin1
BEGIN
DECLARE resultado VARCHAR(30);
DECLARE mensual float;
SET mensual = valor / 13;
IF mensual >0 AND mensual <=5000 THEN
SET resultado = 'Tipo A';
ELSEIF mensual >5000 AND mensual <= 9000 THEN
SET resultado = 'Tipo B';
ELSEIF mensual > 9000 AND mensual <= 12500 THEN
SET resultado = 'Tipo C';
ELSEIF mensual > 12500 THEN
SET resultado = 'Tipo D';
ELSE
SET resultado = 'error inesperado';
END IF;
RETURN resultado;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `compra` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `compra`(compra_id INT, fecha DATE, costo_total float)
BEGIN 



DECLARE it INT;
DECLARE fecha2 INT;
 select floor( datediff( now(),fecha)) into fecha2;
SET it = it +1;
 IF fecha2 >0 THEN

SELECT max(COMPRA_ID) into it FROM COMPRA;

INSERT INTO compra VALUES(compra_id, fecha, costo_total);


ELSE
select 'ERROR CON LA FECHA';
END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `detalle` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `detalle`(compra_id INT, producto_id INT, cantidad INT, costo_individual FLOAT)
BEGIN
DECLARE it INT;
SELECT max(DETALLE_ID) into it FROM DETALLE_COMPRA;
SET it = it +1;
IF EXISTS (SELECT PRODUCTO_ID FROM PRODUCTOS WHERE PRODUCTO_ID = producto_id) AND costo_individual > 0 THEN
INSERT INTO DETALLE_COMPRA VALUES (it,compra_id,producto_id, cantidad, costo_individual);
ELSE 
SELECT 'NO EXISTE ESTE PRODUCTO EN LA BD O EL COSTO ES MENOR A 0';
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

-- Dump completed on 2023-06-13  9:51:33
