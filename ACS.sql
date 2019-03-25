-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.13-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for acs
CREATE DATABASE IF NOT EXISTS `acs` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `acs`;

-- Dumping structure for table acs.account
CREATE TABLE IF NOT EXISTS `account` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `Username` varchar(20) DEFAULT NULL,
  `Pass` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table acs.account: ~1 rows (approximately)
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` (`id`, `Username`, `Pass`) VALUES
	(0000000001, 'admin', 'admin'),
	(0000000002, 'tim', 'tim');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;

-- Dumping structure for table acs.patients
CREATE TABLE IF NOT EXISTS `patients` (
  `ID` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) DEFAULT NULL,
  `middlename` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `mont` varchar(50) DEFAULT NULL,
  `days` varchar(50) DEFAULT NULL,
  `year` varchar(50) DEFAULT NULL,
  `birthplace` varchar(50) DEFAULT NULL,
  `age` varchar(50) DEFAULT NULL,
  `agee` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `munic` varchar(50) DEFAULT NULL,
  `provinc` varchar(50) DEFAULT NULL,
  `civilstatus` varchar(50) DEFAULT NULL,
  `citizenship` varchar(50) DEFAULT NULL,
  `mycontact` varchar(50) DEFAULT NULL,
  `guardian` varchar(50) DEFAULT NULL,
  `gcontact` varchar(50) DEFAULT NULL,
  `accident` varchar(50) DEFAULT NULL,
  `cause` varchar(50) DEFAULT NULL,
  `mon` varchar(50) DEFAULT NULL,
  `day` varchar(50) DEFAULT NULL,
  `yer` varchar(50) DEFAULT NULL,
  `hour` varchar(50) DEFAULT NULL,
  `min` varchar(50) DEFAULT NULL,
  `dey` varchar(50) DEFAULT NULL,
  `room` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `respo` varchar(50) DEFAULT NULL,
  `position` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table acs.patients: ~0 rows (approximately)
/*!40000 ALTER TABLE `patients` DISABLE KEYS */;
INSERT INTO `patients` (`ID`, `firstname`, `middlename`, `lastname`, `mont`, `days`, `year`, `birthplace`, `age`, `agee`, `gender`, `address`, `munic`, `provinc`, `civilstatus`, `citizenship`, `mycontact`, `guardian`, `gcontact`, `accident`, `cause`, `mon`, `day`, `yer`, `hour`, `min`, `dey`, `room`, `type`, `respo`, `position`) VALUES
	(0000000001, 'asdfasd', 'sdfgdfs', 'sdfgdsfgsd', 'sdfgdsf', '', 'sdfgdfs', 'sdfgdsf', 'sdfgsd', 'sdfgdsfg', 'sdfgdsgs', 'sdfgdsfg', '02', '2017', 'dsfgdsfgdfs', '03', 'Male', 'March', 'February', '03', '2016', '05', '04', 'PM', '3', 'Patient Room', 'Warden', 'Binalbagan', 'Negros Occidental', 'sdfgdfsgs', 'Single'),
	(0000000002, 'sadfsadf', 'asdfsadf', 'asdfsadfas', 'asdfsad', '', 'asdfsad', 'asdfsa', 'asdfs', 'asdfasd', 'asdfsad', 'asdfsadf', '03', '2016', 'asdfsadf', '04', 'Male', 'February', 'February', '03', '2017', '06', '04', 'AM', '3', 'Operating Room', 'Warden', 'Binalbagan', 'Negros Occidental', 'asdfsadfa', 'Married');
/*!40000 ALTER TABLE `patients` ENABLE KEYS */;

-- Dumping structure for table acs.signups
CREATE TABLE IF NOT EXISTS `signups` (
  `id` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `repassword` varchar(50) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `position` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Dumping data for table acs.signups: ~6 rows (approximately)
/*!40000 ALTER TABLE `signups` DISABLE KEYS */;
INSERT INTO `signups` (`id`, `username`, `password`, `repassword`, `department`, `position`) VALUES
	(00001, 'dems', 'dems', 'dems', 'Cardiology', 'Medical'),
	(00002, 'admin', 'mama', 'mama', 'Radiology', 'Medical'),
	(00003, 'tim', 'tim', 'tim', 'Radiology', 'Surgeon'),
	(00004, 'timmy', 'admin', 'admin', 'Neurology', 'Surgeon'),
	(00005, 'timmy', 'timtim', 'timtim', 'DEPARTMENT', 'POSITION'),
	(00006, 'timmy', 'timtim', 'timtim', 'Cardiology', 'Medical'),
	(00007, '', '', '', 'DEPARTMENT', 'POSITION');
/*!40000 ALTER TABLE `signups` ENABLE KEYS */;

-- Dumping structure for table acs.workers
CREATE TABLE IF NOT EXISTS `workers` (
  `ID` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) NOT NULL,
  `middlename` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `department` varchar(50) NOT NULL,
  `position` varchar(50) NOT NULL,
  `bday` date NOT NULL,
  `gender` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `citship` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `primary` varchar(50) NOT NULL,
  `pfrom` varchar(50) NOT NULL,
  `pto` varchar(50) NOT NULL,
  `secondary` varchar(50) NOT NULL,
  `sfrom` varchar(50) NOT NULL,
  `sto` varchar(50) NOT NULL,
  `college` varchar(50) NOT NULL,
  `cfrom` varchar(50) NOT NULL,
  `cto` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Dumping data for table acs.workers: ~9 rows (approximately)
/*!40000 ALTER TABLE `workers` DISABLE KEYS */;
INSERT INTO `workers` (`ID`, `firstname`, `middlename`, `lastname`, `department`, `position`, `bday`, `gender`, `status`, `citship`, `address`, `primary`, `pfrom`, `pto`, `secondary`, `sfrom`, `sto`, `college`, `cfrom`, `cto`) VALUES
	(00001, 'sdfs', 'wf', 'df', 'Radiology', 'Medical', '2017-03-03', 'Female', 'Single', 'sefkjw', 'iuhiu', 'kjuh8', '2016', '2016', 'sjfndwje', '2018', '2017', 'sjefhuiwe', '2013', '2014'),
	(00002, '', '', '', '-', '-', '2016-02-04', '-', '-', '', '', '', '-', '-', '', '-', '-', '', '-', '-'),
	(00003, 'jing', 'jing', 'ning', 'Neurology', 'Surgeon', '2015-02-03', 'Male', 'Single', 'fasfasdf', 'fasdfsadfasfsa', 'fsadfsadf', '2016', '2016', 'fdsfsadfasd', '2016', '2015', 'fdgdsfgdsf', '2014', '2016'),
	(00004, 'bibg', 'bing', 'bing', 'Radiology', 'Surgeon', '2016-03-03', 'Female', 'Married', 'gvzcxgzxcvx', 'zdsgvzxcvzx', 'zfgvzxcgbzxc', '2015', '2016', 'xgbzxcbzxc', '2015', '2015', 'zfgzhbdfcx', '2013', '2014'),
	(00005, 'dfgdfsgsd', 'sdfgdsfgs', 'sdfgd', 'Neurology', 'Surgeon', '2016-01-03', 'Female', 'Married', 'dsfgdfs', 'sdfgdsfg', 'sdgdfgds', '2016', '2016', 'sdfgdfsgsd', '2016', '2016', 'sdgsdgsd', '2015', '2016'),
	(00006, 'dgdsfgsd', 'sdfgdsf', 'sdfgdsf', 'Neurology', 'Surgeon', '2016-04-03', 'Male', 'Married', 'fdhsdfh', 'hdfghdfhd', 'hdfghdf', '2017', '2015', 'zdfghdsfhf', '2017', '2015', 'dfhsfhsd', '2015', '2015'),
	(00007, 'gsdfgs', 'sdfgdsf', 'sdfgsd', 'Cardiology', 'Surgeon', '2016-04-03', 'Male', 'Married', 'xcvzxc', 'xfbcxvbxc', 'cxbcvnc', '2017', '2015', 'cfhcnf', '2016', '2016', 'dgdshsd', '2014', '2014'),
	(00008, 'asdfjsl', 'asdfsad', 'asdfasd', 'Radiology', 'Surgeon', '2015-02-03', 'Female', 'Single', 'asdfsad', 'asdfasdfas', 'gsdfgsdf', '2017', '2017', 'dfxgasdgfs', '2014', '2013', 'dsasdgtasdg', '2013', '2015'),
	(00009, 'dgsdh', 'dfghdfhdjf', 'dfhdfghdf', 'Radiology', 'Surgeon', '2016-02-03', 'Male', 'Married', 'fhdfgjdf', 'fdjdfdfgjdf', 'xjfgjdfgjdf', '2017', '2016', 'ghkfgkfgkfg', '2014', '2013', 'fgjdkdkdf', '2016', '2014');
/*!40000 ALTER TABLE `workers` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
