-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: hurtos
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `dm_tiempo`
--

DROP TABLE IF EXISTS `dm_tiempo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_tiempo` (
  `ID_TIEMPO` int NOT NULL,
  `FECHA` date NOT NULL,
  `ANO` int NOT NULL,
  `MES` int NOT NULL,
  `DIA` int NOT NULL,
  PRIMARY KEY (`ID_TIEMPO`),
  UNIQUE KEY `FECHA` (`FECHA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_ubicacion`
--

DROP TABLE IF EXISTS `dm_ubicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_ubicacion` (
  `ID_UBICACION` int NOT NULL AUTO_INCREMENT,
  `CODIGO_DANE` varchar(10) NOT NULL,
  `DEPARTAMENTO` varchar(100) NOT NULL,
  `MUNICIPIO` varchar(100) NOT NULL,
  `ZONA` varchar(100) NOT NULL,
  `BARRIO` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_UBICACION`)
) ENGINE=InnoDB AUTO_INCREMENT=417 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_vehiculos`
--

DROP TABLE IF EXISTS `dm_vehiculos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_vehiculos` (
  `ID_VEHICULO` int NOT NULL AUTO_INCREMENT,
  `MARCA` varchar(100) NOT NULL,
  `CLASE` varchar(100) NOT NULL,
  `LINEA` varchar(100) NOT NULL,
  `MODELO` varchar(100) NOT NULL,
  `COLOR` varchar(100) NOT NULL,
  `CODIGO_DANE` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID_VEHICULO`)
) ENGINE=InnoDB AUTO_INCREMENT=6648 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hechos_hurto_automoviles`
--

DROP TABLE IF EXISTS `hechos_hurto_automoviles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hechos_hurto_automoviles` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `TIEMPO_ID` int NOT NULL,
  `UBICACION_ID` int NOT NULL,
  `VEHICULO_ID` int NOT NULL,
  `HURTOS` int NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9085 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `stg1_tiempo`
--

DROP TABLE IF EXISTS `stg1_tiempo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stg1_tiempo` (
  `ID_TIEMPO` varchar(255) DEFAULT NULL,
  `FECHA` varchar(255) DEFAULT NULL,
  `ANO` varchar(255) DEFAULT NULL,
  `MES` varchar(255) DEFAULT NULL,
  `DIA` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `stg1_ubicacion`
--

DROP TABLE IF EXISTS `stg1_ubicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stg1_ubicacion` (
  `CODIGO_DANE` varchar(10) DEFAULT NULL,
  `DEPARTAMENTO` varchar(100) DEFAULT NULL,
  `MUNICIPIO` varchar(100) DEFAULT NULL,
  `ZONA` varchar(100) DEFAULT NULL,
  `BARRIO` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `stg1_vehiculos`
--

DROP TABLE IF EXISTS `stg1_vehiculos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stg1_vehiculos` (
  `MARCA` varchar(100) DEFAULT NULL,
  `LINEA` varchar(100) DEFAULT NULL,
  `CLASE` varchar(255) DEFAULT NULL,
  `MODELO` varchar(255) DEFAULT NULL,
  `COLOR` varchar(255) DEFAULT NULL,
  `CODIGO_DANE` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `stg2_tiempo`
--

DROP TABLE IF EXISTS `stg2_tiempo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stg2_tiempo` (
  `ID_TIEMPO` int NOT NULL,
  `FECHA` date NOT NULL,
  `ANO` int NOT NULL,
  `MES` int NOT NULL,
  `DIA` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `stg2_ubicacion`
--

DROP TABLE IF EXISTS `stg2_ubicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stg2_ubicacion` (
  `CODIGO_DANE` varchar(10) DEFAULT NULL,
  `DEPARTAMENTO` varchar(100) DEFAULT NULL,
  `MUNICIPIO` varchar(100) DEFAULT NULL,
  `ZONA` varchar(100) DEFAULT NULL,
  `BARRIO` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `stg2_vehiculos`
--

DROP TABLE IF EXISTS `stg2_vehiculos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stg2_vehiculos` (
  `MARCA` varchar(100) NOT NULL,
  `LINEA` varchar(100) NOT NULL,
  `CLASE` varchar(255) NOT NULL,
  `MODELO` varchar(255) NOT NULL,
  `COLOR` varchar(255) NOT NULL,
  `CODIGO_DANE` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `stg3_tiempo`
--

DROP TABLE IF EXISTS `stg3_tiempo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stg3_tiempo` (
  `ID_TIEMPO` int NOT NULL,
  `FECHA` date NOT NULL,
  `ANO` int NOT NULL,
  `MES` int NOT NULL,
  `DIA` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `stg3_ubicacion`
--

DROP TABLE IF EXISTS `stg3_ubicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stg3_ubicacion` (
  `CODIGO_DANE` varchar(10) DEFAULT NULL,
  `DEPARTAMENTO` varchar(100) DEFAULT NULL,
  `MUNICIPIO` varchar(100) DEFAULT NULL,
  `ZONA` varchar(100) DEFAULT NULL,
  `BARRIO` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `stg3_vehiculos`
--

DROP TABLE IF EXISTS `stg3_vehiculos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stg3_vehiculos` (
  `MARCA` varchar(100) NOT NULL,
  `LINEA` varchar(100) NOT NULL,
  `CLASE` varchar(255) NOT NULL,
  `MODELO` varchar(255) NOT NULL,
  `COLOR` varchar(255) NOT NULL,
  `CODIGO_DANE` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-07 18:09:43
