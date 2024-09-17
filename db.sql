-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.3.0 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.8.0.6908
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para test-linktic
CREATE DATABASE IF NOT EXISTS `test-linktic` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `test-linktic`;

-- Volcando estructura para tabla test-linktic.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int NOT NULL,
  `batch` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- Volcando datos para la tabla test-linktic.migrations: 0 rows
DELETE FROM `migrations`;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Volcando estructura para tabla test-linktic.services
CREATE TABLE IF NOT EXISTS `services` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `date-in` varchar(50) DEFAULT NULL,
  `date-out` varchar(50) DEFAULT NULL,
  `type` int DEFAULT NULL,
  `status` enum('Y','N') DEFAULT 'Y',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla test-linktic.services: 39 rows
DELETE FROM `services`;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` (`id`, `user`, `email`, `date-in`, `date-out`, `type`, `status`) VALUES
	(1, 'fabian', 'fabian@gmail.com', '12-01-2024', '15-01-2024', 1, 'Y'),
	(2, 'fabian', 'fabian@gmail.com', '12-01-2024', '15-01-2024', 1, 'Y'),
	(3, 'fabian', 'fabian@gmail.com', '12-01-2024', '15-01-2024', 1, 'Y'),
	(4, 'fabian', 'fabian@gmail.com', '12-01-2024', '15-01-2024', 1, 'Y'),
	(5, 'hugo', 'hugo@gm.com', '05-01-2024', '10-02-2024', 2, 'Y'),
	(6, 'hugo', 'hugo@gm.com', '05-01-2024', '10-02-2024', 3, 'N'),
	(7, 'fabian', 'fabian@gmail.com', '12-01-2024', '15-01-2024', 1, 'Y'),
	(8, 'fabian', 'fabian@gmail.com', '12-01-2024', '15-01-2024', 1, 'Y'),
	(9, 'fabian', 'fabian@gmail.com', '12-01-2024', '15-01-2024', 1, 'Y'),
	(10, 'fabian', 'fabian@gmail.com', '12-01-2024', '15-01-2024', 1, 'Y'),
	(11, 'fabian', 'fabian@gmail.com', '12-01-2024', '15-01-2024', 1, 'Y'),
	(12, 'fabian', 'fabian@gmail.com', '12-01-2024', '15-01-2024', 1, 'Y'),
	(13, 'fabian', 'fabian@gmail.com', '12-01-2024', '15-01-2024', 1, 'Y'),
	(14, 'fabian', 'fabian@gmail.com', '12-01-2024', '15-01-2024', 1, 'Y'),
	(15, 'fabian', 'fabian@gmail.com', '12-01-2024', '15-01-2024', 1, 'Y'),
	(16, 'fabian', 'fabian@gmail.com', '12-01-2024', '15-01-2024', 1, 'Y'),
	(17, 'fabian', 'fabian@gmail.com', '12-01-2024', '15-01-2024', 1, 'Y'),
	(18, 'fabian', 'fabian@gmail.com', '12-01-2024', '15-01-2024', 1, 'Y'),
	(19, 'fabian', 'fabian@gmail.com', '12-01-2024', '15-01-2024', 1, 'Y'),
	(20, 'fabian', 'fabian@gmail.com', '12-01-2024', '15-01-2024', 1, 'Y'),
	(21, 'fabian', 'fabian@gmail.com', '12-01-2024', '15-01-2024', 1, 'Y'),
	(22, 'fabian', 'fabian@gmail.com', '12-01-2024', '15-01-2024', 1, 'Y'),
	(23, 'fabian', 'fabian@gmail.com', '12-01-2024', '15-01-2024', NULL, 'Y'),
	(24, 'fabian', 'fabian@gmail.com', '12-01-2024', '15-01-2024', 1, 'Y'),
	(25, 'fabian', 'fabian@gmail.com', '12-01-2024', '15-01-2024', 1, 'Y'),
	(26, 'hugo', 'hugo@gm.com', '05-01-2024', '10-02-2024', 1, 'Y'),
	(27, 'hugo', 'hugo@gm.com', '05-01-2024', '10-02-2024', 1, 'Y'),
	(28, 'hugo', 'hugo@gm.com', '05-01-2024', '10-02-2024', 1, 'Y'),
	(29, NULL, NULL, NULL, NULL, 1, 'Y'),
	(30, 'fav', 'dfa@f.com', '24-02-2024', '26-02-2024', 1, 'Y'),
	(31, 'fav', 'dfa@f.com', '24-02-2024', '26-02-2024', 1, 'Y'),
	(32, 'fav', 'dfa@f.com', '24-02-2024', '26-02-2024', 1, 'Y'),
	(33, NULL, NULL, NULL, NULL, 1, 'Y'),
	(34, NULL, NULL, NULL, NULL, 1, 'Y'),
	(35, NULL, NULL, NULL, NULL, 1, 'Y'),
	(36, NULL, NULL, NULL, NULL, 1, 'Y'),
	(37, NULL, NULL, NULL, NULL, 1, 'Y'),
	(38, 'fav', 'dfa@f.com', '24-02-2024', '26-02-2024', 1, 'Y'),
	(39, NULL, NULL, NULL, NULL, 1, 'Y');
/*!40000 ALTER TABLE `services` ENABLE KEYS */;

-- Volcando estructura para tabla test-linktic.type
CREATE TABLE IF NOT EXISTS `type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nameServices` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla test-linktic.type: 4 rows
DELETE FROM `type`;
/*!40000 ALTER TABLE `type` DISABLE KEYS */;
INSERT INTO `type` (`id`, `nameServices`) VALUES
	(1, 'Booking Reservation'),
	(2, 'Modifying Reservation'),
	(3, 'Cancelling Reservation'),
	(4, 'Viewing Reservation');
/*!40000 ALTER TABLE `type` ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
