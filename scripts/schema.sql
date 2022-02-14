use laravel;
DROP TABLE IF EXISTS `superheros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `superheros` (
  `id` int(3) DEFAULT NULL,
  `name` varchar(25) DEFAULT NULL,
  `fullName` varchar(49) DEFAULT NULL,
  `strength` int(3) DEFAULT NULL,
  `speed` int(3) DEFAULT NULL,
  `durability` int(3) DEFAULT NULL,
  `power` int(3) DEFAULT NULL,
  `combat` int(3) DEFAULT NULL,
  `race` varchar(18) DEFAULT NULL,
  `height/0` varchar(20) DEFAULT NULL,
  `height/1` varchar(12) DEFAULT NULL,
  `weight/0` varchar(12) DEFAULT NULL,
  `weight/1` varchar(11) DEFAULT NULL,
  `eyeColor` varchar(23) DEFAULT NULL,
  `hairColor` varchar(16) DEFAULT NULL,
  `publisher` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOAD DATA LOCAL
 INFILE '~/proyectos/php-laravel-exercise/csv/superheros.csv'  
INTO TABLE laravel.superheros  
FIELDS TERMINATED BY ',' 
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n' 
IGNORE 1 ROWS; 