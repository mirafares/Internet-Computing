-- MySQL dump 10.13  Distrib 8.0.32, for macos13.0 (x86_64)
--
-- Host: localhost    Database: cp476
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `studentID` int NOT NULL,
  `courseCode` varchar(10) NOT NULL,
  `Test1` int DEFAULT NULL,
  `Test2` int DEFAULT NULL,
  `Test3` int DEFAULT NULL,
  `finalExam` int DEFAULT NULL,
  PRIMARY KEY (`studentID`,`courseCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (154102471,'CP465',63,82,58,68),(154102471,'MA238',55,94,84,93),(187509717,'CP202',58,98,56,89),(187509717,'ST490',83,65,63,93),(251173274,'EC140',98,58,59,52),(251173274,'PS275',86,64,65,59),(256047895,'EC140',66,53,85,50),(256047895,'MA222',69,80,72,87),(280587734,'CH202',66,82,81,75),(280587734,'PS272',74,98,76,52),(293688639,'BU121',69,85,68,95),(293688639,'CH120',85,80,78,83),(301758883,'CP321',68,78,55,88),(301758883,'MA222',64,54,91,69),(308621686,'EC140',92,90,50,89),(308621686,'ST262',87,76,87,67),(309251919,'CP220',90,71,62,65),(309251919,'CP321',59,94,64,52),(309663833,'CH120',71,77,53,56),(309663833,'ST262',93,51,84,77),(350971244,'BU121',55,96,75,95),(350971244,'EC140',93,54,51,57),(397016834,'CH120',75,95,83,67),(397016834,'CP220',84,78,55,55),(403966911,'CH120',52,89,92,66),(403966911,'PS275',89,57,81,87),(415807676,'CH120',94,72,55,70),(415807676,'EC140',70,89,90,63),(429464715,'CH120',54,93,71,80),(429464715,'EC140',57,85,71,84),(448227065,'CH261',80,54,55,93),(448227065,'CP465',59,69,56,96),(458362883,'MA238',57,52,88,51),(458362883,'ST494',51,96,67,57),(503239671,'CP465',68,61,62,61),(503239671,'ST262',66,84,95,88),(505004484,'MA222',63,88,85,87),(505004484,'ST494',70,95,54,62),(547161604,'CP202',70,82,81,56),(547161604,'CP220',86,90,84,88),(559545416,'PS275',74,70,86,65),(559545416,'ST262',90,62,88,86),(570797438,'CP220',89,56,66,54),(570797438,'CP321',81,71,65,96),(603077700,'CH202',78,81,92,91),(603077700,'PS275',80,63,96,53),(613465484,'EC140',62,61,95,57),(613465484,'MA222',57,75,55,73),(627137015,'EC140',85,56,72,77),(627137015,'PS275',95,64,73,60);
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `final`
--

DROP TABLE IF EXISTS `final`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `final` (
  `studentID` int NOT NULL,
  `studentName` varchar(255) NOT NULL,
  `courseCode` varchar(10) NOT NULL,
  `finalGrade` decimal(5,2) NOT NULL,
  PRIMARY KEY (`studentID`,`courseCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `final`
--

LOCK TABLES `final` WRITE;
/*!40000 ALTER TABLE `final` DISABLE KEYS */;
/*!40000 ALTER TABLE `final` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `name`
--

DROP TABLE IF EXISTS `name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `name` (
  `studentID` int NOT NULL,
  `studentName` varchar(100) NOT NULL,
  PRIMARY KEY (`studentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `name`
--

LOCK TABLES `name` WRITE;
/*!40000 ALTER TABLE `name` DISABLE KEYS */;
INSERT INTO `name` VALUES (154102471,'James Andersen'),(187509717,'Ameena Khan'),(251173274,'Xiao Qiang'),(256047895,'Lori Donovan'),(280587734,'Kendra Paul'),(293688639,'Dominique Lovel'),(301758883,'Ellie-May Palmer'),(308621686,'Boone Stevenson'),(309251919,'Kayla Conway'),(309663833,'Bertram Smith'),(350971244,'Belinda Bain'),(397016834,'Hermione Bullock'),(403966911,'Liang Yu'),(415807676,'Autumn Schmidt'),(429464715,'Tiago Rivera'),(448227065,'Micheal Conrad'),(458362883,'Krishan Patel'),(503239671,'Matthew Hall'),(505004484,'Emran Bashir'),(547161604,'Ayyan Whiteley'),(559545416,'Alexander Floydd'),(570797438,'Minnie Rivers'),(603077700,'Rahul Prosser'),(613465484,'Leonard Whitehead'),(627137015,'Keaton Sheppard');
/*!40000 ALTER TABLE `name` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-20 16:28:50