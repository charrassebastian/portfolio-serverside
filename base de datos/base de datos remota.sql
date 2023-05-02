DROP TABLE IF EXISTS `education`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `education` (
  `id` int NOT NULL AUTO_INCREMENT,
  `institution` int DEFAULT NULL,
  `title` varchar(100) NOT NULL,
  `period` varchar(100) NOT NULL,
  `completed` tinyint DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `institution` (`institution`),
  CONSTRAINT `education_fk_1` FOREIGN KEY (`institution`) REFERENCES `institution` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `education` WRITE;
/*!40000 ALTER TABLE `education` DISABLE KEYS */;
INSERT INTO `education` VALUES (2,2,'Social Science','2015 - 2020',1,NULL),(4,10,'Higher Technician in Applied Informatics','since Feb. 2021',0,NULL),(5,3,'Front-end Web Development course','2022',1,NULL),(6,4,'Javascript Advanced Developer course','2021',1,NULL),(7,4,'Python for non programmers course','2021',1,NULL),(8,4,'Python programming course','2021',1,NULL),(9,5,'First part of the Plan Argentina Programa - #SéProgramar','2022',1,NULL),(11,5,'Second part of the Plan Argentina Programa - #YoProgramo','2022 - 2023',0,NULL);
/*!40000 ALTER TABLE `education` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `institution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `institution` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `logo_url` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `institution` WRITE;
/*!40000 ALTER TABLE `institution` DISABLE KEYS */;
INSERT INTO `institution` VALUES (2,'High School Nº8 Dr. Antonio Sagarna (also known as Colegio Nacional de San Isidro)',NULL),(3,'Centro Universitario Vicente López','https://www.vicentelopez.gov.ar/centrouniversitariovl/assets/images/logo-navbar-200.png'),(4,'Educación IT','https://static.educacionit.com/educacionit/assets/imagotype-it-fill-v2-color.svg'),(5,'Argentina Programa','https://argentinaprograma.inti.gob.ar/pluginfile.php/1/theme_moove/logo/1676134779/Dise%C3%B1o%20sin%20t%C3%ADtulo%20(17).png'),(10,'UTN-INSPT','https://inspt.utn.edu.ar/wp-content/uploads/2021/08/utn_inspt_logo_iso_.png');
/*!40000 ALTER TABLE `institution` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `surname` varchar(100) DEFAULT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL,
  `email` varchar(500) DEFAULT NULL,
  `github_url` varchar(500) DEFAULT NULL,
  `linkedin_url` varchar(500) DEFAULT NULL,
  `profile_picture_url` varchar(500) DEFAULT NULL,
  `hero_image_url` varchar(500) DEFAULT NULL,
  `catch_phrase` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (2,'Sebastian','Charras','Full Stack Developer Jr','I develop web apps, from the design and the GUI implementation to the database, API and the web server. I learn constantly and want to work bringing immersive user experiences','sebastiancharras@outlook.com','https://github.com/sebastian-charras','https://www.linkedin.com/in/sebastian-charras-991239208/','https://lh3.googleusercontent.com/9rvpopMNo9XI1p-LRhdSibQ_wN0ZVAGWUVmkn7qlA5VeFVTsov3VH2MkFbs9e-FjMcuoi8ruPKMhFRBptDivchyEmpIY1gDEQmsHPSnaN5XwtyBPKnAeUXQ6S7xJ8FhF5lbeCjQL=w2400','https://lh3.googleusercontent.com/PvcquAXNGrW_96UndqhUUNTM6c9FnSu1Bfop0nahWZJqJScXcbSWA78k_JtzqPrfxpWi0Jg9ensrHtyHKAf_devOJ8k3Eik0HSoakSViqsgUksO_ww_BaFefFYcF0uY9fWS4hqWb=w2400','Do you need to build a web project?');
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `period` varchar(100) NOT NULL,
  `completed` tinyint DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `url` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES (2,'Web Portfolio','2022',1,'Web Portfolio with some front end projects','https://dashing-mousse-4065dd.netlify.app/'),(3,'Web Portfolio','2023',0,'Portfolio with projects, skills, education and work experiences',''),(4,'The Car Camping Company''s Management System','2023',1,'System for showing and managing data of an hypothetical car camping company, including its admins, employees, garages, partners, vehicles and zones',NULL),(5,'Weather Channel','2022',1,'Shows meteorological information of the chosen location','https://incandescent-crostata-2ea2ef.netlify.app/'),(6,'To Do List','2022',1,'A To Do list frontend project','https://teal-beijinho-232898.netlify.app/'),(7,'The Great Guessing Game','2022',1,'Game for guessing the color represented by an RGB value','https://resilient-sunburst-78181f.netlify.app/');
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skill` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `percentage` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `skill` WRITE;
/*!40000 ALTER TABLE `skill` DISABLE KEYS */;
INSERT INTO `skill` VALUES (1,'HTML',85),(2,'CSS',90),(3,'Javascript',85),(4,'Java',95),(5,'SQL',70),(6,'Español',100),(7,'Inglés',80),(15,'Angular',85);
/*!40000 ALTER TABLE `skill` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `system_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `system_user` WRITE;
/*!40000 ALTER TABLE `system_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_user` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `work_experience`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `work_experience` (
  `id` int NOT NULL AUTO_INCREMENT,
  `institution` int DEFAULT NULL,
  `title` varchar(100) NOT NULL,
  `period` varchar(100) NOT NULL,
  `completed` tinyint DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `institution` (`institution`),
  CONSTRAINT `work_experience_fk_1` FOREIGN KEY (`institution`) REFERENCES `institution` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `work_experience` WRITE;
/*!40000 ALTER TABLE `work_experience` DISABLE KEYS */;
INSERT INTO `work_experience` VALUES (1,10,'Administrative Intern','Jul. 2022 - Feb. 2023',1,'I performed mostly administrative tasks. I also developed a prototype of a web project for showing digital certificates using HTML, CSS, JavaScript, Java, Spring and MySQL');
/*!40000 ALTER TABLE `work_experience` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
