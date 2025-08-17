-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           12.1.1-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.11.0.7065
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para hensa
CREATE DATABASE IF NOT EXISTS `hensa` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `hensa`;

-- Copiando estrutura para tabela hensa.accounts
CREATE TABLE IF NOT EXISTS `accounts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Whitelist` tinyint(1) NOT NULL DEFAULT 0,
  `Characters` int(10) NOT NULL DEFAULT 1,
  `Gemstone` int(20) NOT NULL DEFAULT 0,
  `Premium` int(20) NOT NULL DEFAULT 0,
  `Rolepass` int(20) NOT NULL DEFAULT 0,
  `Discord` varchar(50) NOT NULL DEFAULT '0',
  `License` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `License` (`License`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela hensa.banneds
CREATE TABLE IF NOT EXISTS `banneds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `License` varchar(50) NOT NULL,
  `Token` varchar(255) NOT NULL,
  `Time` int(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela hensa.characters
CREATE TABLE IF NOT EXISTS `characters` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `License` varchar(50) DEFAULT NULL,
  `Phone` varchar(10) DEFAULT NULL,
  `Name` varchar(50) DEFAULT 'Hensa',
  `Lastname` varchar(50) DEFAULT 'Rewritten',
  `Sex` varchar(1) NOT NULL DEFAULT 'M',
  `Skin` varchar(50) NOT NULL DEFAULT 'mp_m_freemode_01',
  `Bank` int(20) NOT NULL DEFAULT 5000,
  `Fines` int(20) NOT NULL DEFAULT 0,
  `Taxs` int(20) NOT NULL DEFAULT 0,
  `Blood` int(1) NOT NULL DEFAULT 1,
  `Prison` int(10) NOT NULL DEFAULT 0,
  `Gun` int(1) NOT NULL DEFAULT 0,
  `Avatar` varchar(254) NOT NULL DEFAULT 'https://source.unsplash.com/random/',
  `Likes` int(20) NOT NULL DEFAULT 0,
  `Unlikes` int(20) NOT NULL DEFAULT 0,
  `Badge` int(3) NOT NULL DEFAULT 0,
  `Driver` int(20) NOT NULL DEFAULT 0,
  `Mode` varchar(50) NOT NULL DEFAULT 'Legal',
  `Work` varchar(50) NOT NULL DEFAULT 'Nenhum',
  `Created` int(20) NOT NULL DEFAULT 0,
  `Deleted` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `license` (`License`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela hensa.chests
CREATE TABLE IF NOT EXISTS `chests` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `Weight` int(10) NOT NULL DEFAULT 500,
  `Slots` int(20) NOT NULL DEFAULT 50,
  `Permission` varchar(50) NOT NULL DEFAULT 'Admin',
  `Premium` int(20) NOT NULL DEFAULT 0,
  `Bank` int(20) NOT NULL DEFAULT 0,
  `Logs` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela hensa.entitydata
CREATE TABLE IF NOT EXISTS `entitydata` (
  `Name` varchar(100) NOT NULL,
  `Information` longtext DEFAULT NULL,
  PRIMARY KEY (`Name`),
  KEY `Information` (`Name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela hensa.fidentity
CREATE TABLE IF NOT EXISTS `fidentity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL DEFAULT '',
  `Lastname` varchar(50) NOT NULL DEFAULT '',
  `Gun` int(1) NOT NULL DEFAULT 1,
  `Blood` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela hensa.gangbank
CREATE TABLE IF NOT EXISTS `gangbank` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Gang` varchar(50) NOT NULL,
  `Bank` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela hensa.investments
CREATE TABLE IF NOT EXISTS `investments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Passport` int(11) NOT NULL,
  `Deposit` bigint(20) NOT NULL DEFAULT 0,
  `Monthly` bigint(20) NOT NULL DEFAULT 0,
  `Liquid` bigint(20) NOT NULL DEFAULT 0,
  `Last` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_passport` (`Passport`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela hensa.playerdata
CREATE TABLE IF NOT EXISTS `playerdata` (
  `Passport` int(10) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Information` longtext DEFAULT NULL,
  PRIMARY KEY (`Passport`,`Name`),
  KEY `Passport` (`Passport`),
  KEY `Information` (`Name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela hensa.prison
CREATE TABLE IF NOT EXISTS `prison` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Officer` varchar(255) DEFAULT '0',
  `OtherPassport` int(11) NOT NULL DEFAULT 0,
  `Services` int(11) NOT NULL DEFAULT 0,
  `Fines` int(20) NOT NULL DEFAULT 0,
  `About` longtext DEFAULT NULL,
  `Time` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela hensa.propertys
CREATE TABLE IF NOT EXISTS `propertys` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `Name` varchar(20) NOT NULL DEFAULT 'Homes0001',
  `Interior` varchar(20) NOT NULL DEFAULT 'Middle',
  `Item` int(3) NOT NULL DEFAULT 3,
  `Tax` int(20) NOT NULL DEFAULT 0,
  `Passport` int(11) NOT NULL DEFAULT 0,
  `Serial` varchar(10) NOT NULL,
  `Vault` int(6) NOT NULL DEFAULT 1,
  `Fridge` int(6) NOT NULL DEFAULT 1,
  `Garage` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `Passport` (`Passport`),
  KEY `Name` (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela hensa.races
CREATE TABLE IF NOT EXISTS `races` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Race` int(3) NOT NULL DEFAULT 0,
  `Passport` int(5) NOT NULL DEFAULT 0,
  `Name` varchar(100) NOT NULL DEFAULT 'Individuo Indigente',
  `Vehicle` varchar(50) NOT NULL DEFAULT 'Sultan RS',
  `Points` int(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `Passport` (`Passport`),
  KEY `Race` (`Race`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela hensa.transactions
CREATE TABLE IF NOT EXISTS `transactions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Passport` int(11) NOT NULL,
  `Type` varchar(50) NOT NULL,
  `Date` varchar(50) NOT NULL,
  `Price` bigint(20) NOT NULL DEFAULT 0,
  `Balance` bigint(20) NOT NULL DEFAULT 0,
  `Timeset` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_passport` (`Passport`),
  KEY `idx_timeset` (`Timeset`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela hensa.vehicles
CREATE TABLE IF NOT EXISTS `vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Passport` int(11) NOT NULL,
  `vehicle` varchar(100) NOT NULL,
  `tax` int(20) NOT NULL DEFAULT 0,
  `plate` varchar(10) DEFAULT NULL,
  `rental` int(20) NOT NULL DEFAULT 0,
  `arrest` int(20) NOT NULL DEFAULT 0,
  `dismantle` int(20) NOT NULL DEFAULT 0,
  `engine` int(4) NOT NULL DEFAULT 1000,
  `body` int(4) NOT NULL DEFAULT 1000,
  `health` int(4) NOT NULL DEFAULT 1000,
  `fuel` int(3) NOT NULL DEFAULT 100,
  `nitro` int(5) NOT NULL DEFAULT 0,
  `work` varchar(5) NOT NULL DEFAULT 'false',
  `mode` varchar(9) NOT NULL DEFAULT 'normal',
  `doors` longtext NOT NULL,
  `windows` longtext NOT NULL,
  `tyres` longtext NOT NULL,
  `brakes` longtext NOT NULL,
  `drift` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `Passport` (`Passport`),
  KEY `vehicle` (`vehicle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela hensa.warehouse
CREATE TABLE IF NOT EXISTS `warehouse` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `Weight` int(20) NOT NULL DEFAULT 100,
  `Password` varchar(50) NOT NULL,
  `Passport` int(10) NOT NULL DEFAULT 0,
  `Tax` int(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `Passport` (`Passport`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Exportação de dados foi desmarcado.

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
