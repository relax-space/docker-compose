-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        5.7.22 - MySQL Community Server (GPL)
-- 服务器操作系统:                      Linux
-- HeidiSQL 版本:                  9.5.0.5295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- 导出 fruit 的数据库结构
CREATE DATABASE IF NOT EXISTS `fruit` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;
USE `fruit`;

-- 导出  表 fruit.fruit 结构
DROP TABLE IF EXISTS `fruit`;
CREATE TABLE IF NOT EXISTS `fruit` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `price` bigint(20) DEFAULT NULL,
  `store_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- 正在导出表  fruit.fruit 的数据：~2 rows (大约)
/*!40000 ALTER TABLE `fruit` DISABLE KEYS */;
INSERT INTO `fruit` (`id`, `created_at`, `updated_at`, `code`, `name`, `color`, `price`, `store_code`) VALUES
	(1, '2018-04-15 08:48:59', '2018-10-22 06:00:09', 'apple', 'apple', 'red', 11, "10001"),
	(2, '2018-04-15 08:48:59', '2018-10-22 06:00:09', 'apple', 'apple', 'red', 11, "10001"),
	(3, '2018-04-15 08:48:59', '2018-10-22 06:00:09', 'apple', 'apple', 'red', 11, "10001"),
	(4, '2018-04-15 08:48:59', '2018-10-22 06:00:09', 'apple', 'apple', 'red', 11, "10001"),
	(5, '2018-04-15 08:48:59', '2018-10-22 06:00:09', 'apple', 'apple', 'red', 11, "10001"),
	(6, '2018-04-15 08:48:59', '2018-10-22 06:00:09', 'apple', 'apple', 'red', 11, "10001"),
	(7, '2018-04-15 08:48:59', '2018-10-22 06:00:09', 'apple', 'apple', 'red', 11, "10001"),
	(8, '2018-04-15 08:48:59', '2018-10-22 06:00:09', 'apple', 'apple', 'red', 11, "10001"),
	(9, '2018-04-15 08:48:59', '2018-10-22 06:00:09', 'apple', 'apple', 'red', 11, "10001"),

	(10, '2018-04-15 08:48:59', '2018-10-22 06:00:09', 'apple', 'apple', 'red', 11, "10001"),
	(12, '2018-04-15 08:48:59', '2018-10-22 06:00:09', 'apple', 'apple', 'red', 11, "10001"),
	(13, '2018-04-15 08:48:59', '2018-10-22 06:00:09', 'apple', 'apple', 'red', 11, "10001"),
	(14, '2018-04-15 08:48:59', '2018-10-22 06:00:09', 'apple', 'apple', 'red', 11, "10001"),
	(15, '2018-04-15 08:48:59', '2018-10-22 06:00:09', 'apple', 'apple', 'red', 11, "10001"),
	(16, '2018-04-15 08:48:59', '2018-10-22 06:00:09', 'apple', 'apple', 'red', 11, "10001"),
	(17, '2018-04-15 08:48:59', '2018-10-22 06:00:09', 'apple', 'apple', 'red', 11, "10001"),
	(18, '2018-04-15 08:48:59', '2018-10-22 06:00:09', 'apple', 'apple', 'red', 11, "10001"),
	(19, '2018-04-15 08:48:59', '2018-10-22 06:00:09', 'apple', 'apple', 'red', 11, "10001"),

	(21, '2018-04-15 08:48:59', '2018-10-22 06:00:09', 'apple', 'apple', 'red', 11, "10001"),
	(22, '2018-04-15 08:48:59', '2018-10-22 06:00:09', 'apple', 'apple', 'red', 11, "10001"),
	(23, '2018-04-15 08:48:59', '2018-10-22 06:00:09', 'apple', 'apple', 'red', 11, "10001"),
	(24, '2018-04-15 08:48:59', '2018-10-22 06:00:09', 'apple', 'apple', 'red', 11, "10001"),
	(25, '2018-04-15 08:48:59', '2018-10-22 06:00:09', 'apple', 'apple', 'red', 11, "10001"),
	(26, '2018-04-15 08:48:59', '2018-10-22 06:00:09', 'apple', 'apple', 'red', 11, "10001"),

	(27, '2018-04-15 08:48:59', '2018-10-22 06:00:09', 'apple', 'apple', 'red', 11, "10001"),
	(28, '2018-04-15 08:48:59', '2018-10-22 06:00:09', 'apple', 'apple', 'red', 11, "10001"),
	(29, '2018-04-15 08:48:59', '2018-10-22 06:00:09', 'apple', 'apple', 'red', 11, "10001"),
	

	(30, '2018-04-15 08:48:59', '2018-10-22 06:00:09', 'banana', 'banana', 'yellow', 14, "10002");
/*!40000 ALTER TABLE `fruit` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
