-- --------------------------------------------------------
-- Hôte:                         127.0.0.1
-- Version du serveur:           8.0.30 - MySQL Community Server - GPL
-- SE du serveur:                Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Listage de la structure de la base pour db_cpuz
CREATE DATABASE IF NOT EXISTS `db_cpuz` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_cpuz`;

-- Listage de la structure de table db_cpuz. cpu
CREATE TABLE IF NOT EXISTS `cpu` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_cpu` int NOT NULL,
  `brand` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `family` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ghz` double NOT NULL,
  `price` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_cpu` (`id_cpu`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table db_cpuz.cpu : ~9 rows (environ)
INSERT INTO `cpu` (`id`, `id_cpu`, `brand`, `family`, `model`, `ghz`, `price`) VALUES
	(1, 101, 'AMD', 'Ryzen 3', '3200G', 3.6, 99),
	(2, 102, 'AMD', 'Ryzen 5', '3600', 3.6, 129),
	(3, 103, 'AMD', 'Ryzen 5', '5600G', 3.9, 149),
	(4, 104, 'AMD', 'Ryzen 7', '5800X', 3.8, 249),
	(5, 105, 'AMD', 'Ryzen 7', '7800X3D', 4.2, 499),
	(6, 201, 'INTEL', 'Core i5', '13500', 2.5, 139),
	(7, 202, 'INTEL', 'Core i5', '13600K', 3.5, 159),
	(8, 203, 'INTEL', 'Core i7', '13700K', 3.4, 169),
	(9, 204, 'INTEL', 'Core i7', '4790', 3.6, 79);

-- Listage de la structure de table db_cpuz. doctrine_migration_versions
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- Listage des données de la table db_cpuz.doctrine_migration_versions : ~1 rows (environ)
INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
	('DoctrineMigrations\\Version20240219090049', '2024-02-19 09:00:55', 18);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
