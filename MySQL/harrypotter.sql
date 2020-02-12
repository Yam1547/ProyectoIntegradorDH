-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: harrypotter
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `partida_usuario`
--

DROP TABLE IF EXISTS `partida_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `partida_usuario` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PARTIDA_ID` int(11) DEFAULT NULL,
  `USUARIO_ID` int(11) DEFAULT NULL,
  `PUNTOS` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `PARTIDA_ID_UNIQUE` (`PARTIDA_ID`),
  UNIQUE KEY `PUNTOS_UNIQUE` (`PUNTOS`),
  UNIQUE KEY `USUARIO_ID_UNIQUE` (`USUARIO_ID`),
  CONSTRAINT `FK_PARTIDA_ID` FOREIGN KEY (`PARTIDA_ID`) REFERENCES `partidas` (`ID`),
  CONSTRAINT `FK_USUARIO_ID` FOREIGN KEY (`USUARIO_ID`) REFERENCES `usuarios` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partida_usuario`
--

LOCK TABLES `partida_usuario` WRITE;
/*!40000 ALTER TABLE `partida_usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `partida_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partidas`
--

DROP TABLE IF EXISTS `partidas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `partidas` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FECHA` date DEFAULT NULL,
  `GANADOR_USUARIO_ID` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partidas`
--

LOCK TABLES `partidas` WRITE;
/*!40000 ALTER TABLE `partidas` DISABLE KEYS */;
/*!40000 ALTER TABLE `partidas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pregunta_respuesta`
--

DROP TABLE IF EXISTS `pregunta_respuesta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pregunta_respuesta` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PREGUNTA_ID` int(11) NOT NULL,
  `RESPUESTA_ID` int(11) NOT NULL,
  `OPCION_CORRECTA` varchar(45) NOT NULL,
  `PUNTAJE` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `OPCION_CORRECTA_UNIQUE` (`OPCION_CORRECTA`),
  UNIQUE KEY `PUNTAJE_UNIQUE` (`PUNTAJE`),
  KEY `FK_RESPUESTA_ID_idx` (`RESPUESTA_ID`),
  KEY `FK_PREGUNTA_ID_idx` (`PREGUNTA_ID`),
  CONSTRAINT `FK_PREGUNTA_ID` FOREIGN KEY (`PREGUNTA_ID`) REFERENCES `preguntas` (`ID`),
  CONSTRAINT `FK_RESPUESTA_ID` FOREIGN KEY (`RESPUESTA_ID`) REFERENCES `respuestas` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pregunta_respuesta`
--

LOCK TABLES `pregunta_respuesta` WRITE;
/*!40000 ALTER TABLE `pregunta_respuesta` DISABLE KEYS */;
/*!40000 ALTER TABLE `pregunta_respuesta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preguntas`
--

DROP TABLE IF EXISTS `preguntas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `preguntas` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TEMA_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_TEMA_ID_idx` (`TEMA_ID`),
  CONSTRAINT `FK_TEMA_ID` FOREIGN KEY (`TEMA_ID`) REFERENCES `temas` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preguntas`
--

LOCK TABLES `preguntas` WRITE;
/*!40000 ALTER TABLE `preguntas` DISABLE KEYS */;
/*!40000 ALTER TABLE `preguntas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `respuestas`
--

DROP TABLE IF EXISTS `respuestas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `respuestas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `respuestas`
--

LOCK TABLES `respuestas` WRITE;
/*!40000 ALTER TABLE `respuestas` DISABLE KEYS */;
/*!40000 ALTER TABLE `respuestas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temas`
--

DROP TABLE IF EXISTS `temas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `temas` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PIEDRA FILOSOFAL` varchar(45) DEFAULT NULL,
  `CAMARA SECRETA` varchar(45) DEFAULT NULL,
  `PRISIONERO DE ASKABAN` varchar(45) NOT NULL,
  `CALIZ DE FUEGO` varchar(45) NOT NULL,
  `ORDEN DLE FENIX` varchar(45) NOT NULL,
  `EL MISTERIO DEL PRINCIPE` varchar(45) NOT NULL,
  `LAS RELIQUIAS DE LA MUERTE` varchar(45) NOT NULL,
  `DETALLE` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temas`
--

LOCK TABLES `temas` WRITE;
/*!40000 ALTER TABLE `temas` DISABLE KEYS */;
/*!40000 ALTER TABLE `temas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(45) NOT NULL,
  `APELLIDO` varchar(45) NOT NULL,
  `EMAIL` varchar(45) NOT NULL,
  `PERFIL` varchar(45) NOT NULL,
  `PROVINCIA` varchar(45) NOT NULL,
  `PUNTOS` varchar(45) NOT NULL,
  `CASA PREFERIDA` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-15 23:18:44
