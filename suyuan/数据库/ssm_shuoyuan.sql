-- --------------------------------------------------------
-- 主机:                           47.101.198.61
-- Server version:               10.3.14-MariaDB - MariaDB Server
-- Server OS:                    Linux
-- HeidiSQL 版本:                  10.1.0.5464
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for ssm_shuoyuan
CREATE DATABASE IF NOT EXISTS `ssm_shuoyuan` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `ssm_shuoyuan`;

-- Dumping structure for table ssm_shuoyuan.tb_cjgly
DROP TABLE IF EXISTS `tb_cjgly`;
CREATE TABLE IF NOT EXISTS `tb_cjgly` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zh` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mm` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mc` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ssm_shuoyuan.tb_cjgly: ~0 rows (approximately)
/*!40000 ALTER TABLE `tb_cjgly` DISABLE KEYS */;
INSERT INTO `tb_cjgly` (`id`, `zh`, `mm`, `mc`) VALUES
	('admin', 'admin', 'admin', 'admin');
/*!40000 ALTER TABLE `tb_cjgly` ENABLE KEYS */;

-- Dumping structure for table ssm_shuoyuan.tb_ewm
DROP TABLE IF EXISTS `tb_ewm`;
CREATE TABLE IF NOT EXISTS `tb_ewm` (
  `ewmid` varchar(20) NOT NULL,
  `ewmsj` varchar(200) NOT NULL,
  PRIMARY KEY (`ewmid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table ssm_shuoyuan.tb_ewm: ~0 rows (approximately)
/*!40000 ALTER TABLE `tb_ewm` DISABLE KEYS */;
INSERT INTO `tb_ewm` (`ewmid`, `ewmsj`) VALUES
	('ewm001-ncp001-qy001', 'http://www.csbishe.cn:8009/ncpsy/info/product-info?ncpid=ncp001-qy001'),
	('ewm002-ncp002-qy001', 'http://www.csbishe.cn:8009/ncpsy/info/product-info?ncpid=ncp002-qy001');
/*!40000 ALTER TABLE `tb_ewm` ENABLE KEYS */;

-- Dumping structure for table ssm_shuoyuan.tb_ncp
DROP TABLE IF EXISTS `tb_ncp`;
CREATE TABLE IF NOT EXISTS `tb_ncp` (
  `ncpid` varchar(50) NOT NULL,
  `ncpmc` varchar(50) NOT NULL,
  `cd` varchar(50) DEFAULT NULL,
  `pz` varchar(50) DEFAULT NULL,
  `ccrq` date DEFAULT NULL,
  `zzfs` varchar(50) DEFAULT NULL,
  `qyid` varchar(20) NOT NULL,
  `ewmid` varchar(50) NOT NULL,
  PRIMARY KEY (`ncpid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table ssm_shuoyuan.tb_ncp: ~0 rows (approximately)
/*!40000 ALTER TABLE `tb_ncp` DISABLE KEYS */;
INSERT INTO `tb_ncp` (`ncpid`, `ncpmc`, `cd`, `pz`, `ccrq`, `zzfs`, `qyid`, `ewmid`) VALUES
	('ncp001-qy001', '源码码头大白菜', '山东寿光', '大的', '2019-07-31', '中国蔬菜之乡长的', 'qy001', 'ewm001-ncp001-qy001'),
	('ncp002-qy001', '源码码头西红柿', '山东', '大的', '2019-07-30', '水长的', 'qy001', 'ewm002-ncp002-qy001');
/*!40000 ALTER TABLE `tb_ncp` ENABLE KEYS */;

-- Dumping structure for table ssm_shuoyuan.tb_qy
DROP TABLE IF EXISTS `tb_qy`;
CREATE TABLE IF NOT EXISTS `tb_qy` (
  `qyid` varchar(50) NOT NULL,
  `zh` varchar(50) NOT NULL,
  `mm` varchar(50) NOT NULL,
  `qymc` varchar(50) NOT NULL,
  `dz` varchar(50) DEFAULT NULL,
  `fzr` varchar(50) DEFAULT NULL,
  `dh` varchar(50) DEFAULT NULL,
  `yx` varchar(50) DEFAULT NULL,
  `bz` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`qyid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table ssm_shuoyuan.tb_qy: ~1 rows (approximately)
/*!40000 ALTER TABLE `tb_qy` DISABLE KEYS */;
INSERT INTO `tb_qy` (`qyid`, `zh`, `mm`, `qymc`, `dz`, `fzr`, `dh`, `yx`, `bz`) VALUES
	('qy001', 'yuanmamatou', '123456', '源码码头', '北京市', '源码码头', '13022502404', '1357845688@qq.com', '源码码头');
/*!40000 ALTER TABLE `tb_qy` ENABLE KEYS */;

-- Dumping structure for table ssm_shuoyuan.tb_syly
DROP TABLE IF EXISTS `tb_syly`;
CREATE TABLE IF NOT EXISTS `tb_syly` (
  `syid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `syip` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sysj` date DEFAULT NULL,
  `syncpid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `syqyid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`syid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ssm_shuoyuan.tb_syly: ~0 rows (approximately)
/*!40000 ALTER TABLE `tb_syly` DISABLE KEYS */;
INSERT INTO `tb_syly` (`syid`, `syip`, `sysj`, `syncpid`, `syqyid`) VALUES
	('syly-20190801161921-1', '0:0:0:0:0:0:0:1', '2019-08-01', 'ncp001-qy001', 'qy001'),
	('syly-20190801162516-2', '0:0:0:0:0:0:0:1', '2019-08-01', 'ncp001-qy001', 'qy001'),
	('syly-20190801162717-3', '0:0:0:0:0:0:0:1', '2019-08-01', 'ncp001-qy001', 'qy001'),
	('syly-20190801162825-4', '0:0:0:0:0:0:0:1', '2019-08-01', 'ncp001-qy001', 'qy001'),
	('syly-20190801163008-5', '0:0:0:0:0:0:0:1', '2019-08-01', 'ncp001-qy001', 'qy001');
/*!40000 ALTER TABLE `tb_syly` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
