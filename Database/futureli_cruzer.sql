-- phpMyAdmin SQL Dump
-- version 4.0.10.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 22, 2015 at 02:05 PM
-- Server version: 5.5.42-cll
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `futureli_cruzer`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE IF NOT EXISTS `accounts` (
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`email`, `password`) VALUES
('naz141@live.com', '123'),
('naz141@live.com', '123'),
('naz141@live.com', 'fake'),
('taliyachris@yahoo.com', 'nameofjesus'),
('taliyachris@yahoo.com', 'nameofjesus'),
('taliyachris@yahoo.com', 'nameofjesus');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`) VALUES
(1, 'admin', '123');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE IF NOT EXISTS `locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `number` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `latitude` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `longitude` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `vehicleinfo` text COLLATE latin1_general_ci NOT NULL,
  `costpkm` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `online` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `name`, `number`, `email`, `latitude`, `longitude`, `vehicleinfo`, `costpkm`, `online`) VALUES
(1, 'Sunera Jayathilaka', '0777122240', 'abc@gmail.com', '6.8489753', '79.8652256', 'Toyota Prius (abc), 4 passenger Vehicle, color- White ', '75', 1),
(4, 'Naveen Ahangama', '123123', 'driver1@gmail.com', '6.865898', '79.872916', 'Tata Nano (1), 4 passenger Vehicle. Vehicle color- Grey ', '60', 1),
(3, 'abab', '0778282848', 'a@b.c', '6.858058', '79.870684', 'Benz, 4 Passenger, Black', '200', 1),
(5, 'Hari Prashanth', '123123', 'driver2@gmail.com', '6.849025', '79.866050', 'Toyota Premio (2), 4 passenger Vehicle. Vehicle color- Maroon ', '75', 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_code` varchar(60) NOT NULL,
  `product_name` varchar(60) NOT NULL,
  `product_desc` tinytext NOT NULL,
  `product_img_name` varchar(60) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_code` (`product_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_code`, `product_name`, `product_desc`, `product_img_name`, `price`) VALUES
(1, 'PD1001', 'Android Phone FX1', 'Di sertakan secara rambang yang lansung tidak munasabah. Jika anda ingin menggunakan Lorem Ipsum, anda perlu memastikan bahwa tiada apa yang', 'android-phone.jpg', '200.50'),
(2, 'PD1002', 'Television DXT', 'Ia menggunakan kamus yang mengandungi lebih 200 ayat Latin, bersama model dan struktur ayat Latin, untuk menghasilkan Lorem Ipsum yang munasabah.', 'lcd-tv.jpg', '500.85'),
(3, 'PD1003', 'External Hard Disk', 'Ada banyak versi dari mukasurat-mukasurat Lorem Ipsum yang sedia ada, tetapi kebanyakkannya telah diubahsuai, lawak jenaka diselitkan, atau ayat ayat yang', 'external-hard-disk.jpg', '100.00'),
(4, 'PD1004', 'Wrist Watch GE2', 'Memalukan akan terselit didalam di tengah tengah kandungan text. Semua injin Lorem Ipsum didalam Internet hanya mengulangi text, sekaligus menjadikan injin kami sebagai yang terunggul dan tepat sekali di Internet.', 'wrist-watch.jpg', '400.30');

-- --------------------------------------------------------

--
-- Table structure for table `texirequest`
--

CREATE TABLE IF NOT EXISTS `texirequest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `driver_id` varchar(100) NOT NULL,
  `driver_email` varchar(100) NOT NULL,
  `driver_name` varchar(100) NOT NULL,
  `sender_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `droplocation` varchar(100) NOT NULL,
  `location` text NOT NULL,
  `latitude` varchar(100) NOT NULL,
  `longitude` varchar(100) NOT NULL,
  `timedate` text NOT NULL,
  `accept` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=44 ;

--
-- Dumping data for table `texirequest`
--

INSERT INTO `texirequest` (`id`, `driver_id`, `driver_email`, `driver_name`, `sender_id`, `name`, `phone`, `droplocation`, `location`, `latitude`, `longitude`, `timedate`, `accept`) VALUES
(7, '1', 'abc@gmail.com', 'Akash', '2', 'nas', '123', 'colombo', 'Jayathilaka\nDehiwala-Mount Lavinia\n', '6.8515391', '79.8658849', '02:30:20 31-08-14', 2),
(6, '1', 'abc@gmail.com', 'Akash', '12', '123', '123', 'colombo', 'Road No 1\nDhaka\n', '23.7819668', '90.4082092', '02:35:20 31-08-14', 2),
(5, '1', 'abc@gmail.com', 'Akash', '1', 'Argha', '123', 'dsfhj', 'Road No 1\nDhaka\n', '23.7819589', '90.4082073', '02:40:20 31-08-14', 2),
(4, '1', 'abc@gmail.com', 'Akash', '1', 'Argha', '123', 'vhjk', 'Road No 1\nDhaka\n', '23.7819673', '90.4081956', '02:50:20 31-08-14', 2),
(8, '1', 'abc@gmail.com', 'Akash', '14', 'nas', '123', 'dehiwala', 'Jayathilaka\nDehiwala-Mount Lavinia\n', '6.8505951', '79.8659357', '02:55:20 31-08-14', 2),
(9, '1', 'abc@gmail.com', 'Akash', '1', 'Argha ', '123456', 'Sdfh', 'Road No 1\nDhaka\n', '23.7820186', '90.4081529', '17:51:23 2-9-2014', 1),
(10, '1', 'abc@gmail.com', 'Akash', '14', 'nas', '123', 'zooo', 'Ediriweera Ave\nDehiwala-Mount Lavinia\n', '6.84898983', '79.86521794', '19:38:31 2-9-2014', 3),
(11, '3', 'a@b.c', 'abab', '14', 'nas', '123', 'jungle', 'Jayathilaka\nDehiwala-Mount Lavinia\n', '6.8515374', '79.8658851', '19:39:46 2-9-2014', 0),
(12, '1', 'abc@gmail.com', 'Akash', '12', '123', '123', 'new drive', 'CGHW Hwy\nDehiwala-Mount Lavinia\n', '6.8496554', '79.8659844', '19:53:57 2-9-2014', 3),
(13, '1', 'abc@gmail.com', 'Akash', '12', '123', '123', 'panadura', 'CGHW Hwy\nDehiwala-Mount Lavinia\n', '6.8496554', '79.8659844', '21:3:7 2-9-2014', 3),
(14, '1', 'abc@gmail.com', 'Akash', '12', '123', '123', 'ratmalana', 'Jayathilaka\nDehiwala-Mount Lavinia\n', '6.850599', '79.8659342', '21:6:3 2-9-2014', 2),
(15, '3', 'a@b.c', 'abab', '12', '123', '123', 'africa', 'Jayathilaka\nDehiwala-Mount Lavinia\n', '6.850599', '79.8659342', '21:11:21 2-9-2014', 0),
(16, '1', 'abc@gmail.com', 'Akash', '1', 'Argha ', '123456', 'Dhaka', 'Road No 1\nDhaka\n', '23.7819529', '90.4082081', '21:54:1 2-9-2014', 2),
(17, '1', 'abc@gmail.com', 'Akash', '15', 'navee', '0770393588', 'pepiliyana', 'Hikgahawatta Mawatha\nNugegoda\n', '6.8535696', '79.8918331', '21:34:12 2-9-2014', 2),
(18, '1', 'abc@gmail.com', 'Akash', '14', 'nas', '123', 'colombo srilanka', 'CGHW Hwy\nDehiwala-Mount Lavinia\n', '6.8496554', '79.8659844', '21:37:45 2-9-2014', 2),
(19, '3', 'a@b.c', 'abab', '14', 'nas', '123', 'africa', 'CGHW Hwy\nDehiwala-Mount Lavinia\n', '6.8478372', '79.8662224', '22:38:17 2-9-2014', 0),
(20, '1', 'abc@gmail.com', 'Akash', '14', 'nas', '123', 'dhaka', 'CGHW Hwy\nDehiwala-Mount Lavinia\n', '6.8498128', '79.8660027', '22:38:26 2-9-2014', 2),
(21, '1', 'abc@gmail.com', 'Akash', '14', 'nas', '123', 'drop me here', 'CGHW Hwy\nDehiwala-Mount Lavinia\n', '6.849734', '79.8659935', '23:13:45 2-9-2014', 2),
(22, '1', 'abc@gmail.com', 'Akash', '14', 'nasr', '1234', 'malibu', '', '6.8496554', '79.8659844', '14:15:50 3-9-2014', 2),
(23, '1', 'abc@gmail.com', 'Akash', '14', 'nasr', '1234', 'piliyandala', '', '6.8496554', '79.8659844', '18:20:52 3-9-2014', 2),
(24, '4', 'driver1@gmail.com', 'Driver1', '14', 'Nasrullah N', '1234', 'sumanarama rd', 'Subodharama Rd\nDehiwala-Mount Lavinia\n', '6.8490476', '79.8660624', '8:53:51 6-9-2014', 2),
(25, '4', 'driver1@gmail.com', 'Driver1', '14', 'Nasrullah N', '1234', 'arcade colombo', 'Jayathilaka\nDehiwala-Mount Lavinia\n', '6.8496519', '79.8659823', '0:55:41 7-9-2014', 1),
(26, '4', 'driver1@gmail.com', 'Driver1', '14', 'Nasrullah N', '1234', 'colombo fort', 'Hotel Rd\nDehiwala-Mount Lavinia\n', '6.8409195', '79.8668856', '10:12:26 7-9-2014', 1),
(27, '4', 'driver1@gmail.com', 'Driver1', '14', 'Nasrullah N', '1234', 'akurana, kandy', 'Jayathilaka\nDehiwala-Mount Lavinia\n', '6.8496548', '79.8659814', '4:39:22 8-9-2014', 1),
(28, '4', 'driver1@gmail.com', 'Driver1', '14', 'Nasrullah N', '1234', 'katugastota\n', 'gulankara road', '6.8496548', '79.8659814', '4:41:53 8-9-2014', 1),
(29, '1', 'abc@gmail.com', 'Akash', '14', 'Nasrullah N', '1234', 'Gampola', 'CGHW Hwy\nDehiwala-Mount Lavinia\n', '6.8478342', '79.8662277', '4:49:49 8-9-2014', 2),
(30, '1', 'abc@gmail.com', 'Akash', '12', '123', '123', 'Mattakuliya', 'No 10/4A, sri gunalankara road, dehiwala', '6.8506043', '79.8659303', '5:13:58 8-9-2014', 2),
(31, '1', 'abc@gmail.com', 'Akash', '14', 'Nasrullah N', '1234', 'u', 'Jayathilaka\nDehiwala-Mount Lavinia\n', '6.8496548', '79.8659814', '8:9:51 8-9-2014', 2),
(32, '4', 'driver1@gmail.com', 'Naveen Ahangama', '14', 'Nasrullah N', '0777122240', 'dehiwala', 'kandy', '0.0', '0.0', '6:17:27 12-9-2014', 1),
(33, '4', 'driver1@gmail.com', 'Naveen Ahangama', '14', 'Nasrullah N', '0777122240', 'jadmwtp', 'jagtaj', '0.0', '0.0', '9:5:30 16-9-2014', 1),
(34, '4', 'driver1@gmail.com', 'Naveen Ahangama', '', 'ntfs', '0754939157', 'dehiwala', '', '7.079716116324988', '80.02663603003884', '14:15:23 16-9-2014', 1),
(35, '4', 'driver1@gmail.com', 'Naveen Ahangama', '', '', '', 'colombo', 'havelock', '7.079716116324988', '80.02663603003884', '14:25:44 16-9-2014', 1),
(36, '4', 'driver1@gmail.com', 'Naveen Ahangama', '14', 'Nasrullah N', '0777122240', 'moor road', '', '7.079716116324988', '80.02663603003884', '15:35:28 16-9-2014', 1),
(37, '1', 'abc@gmail.com', 'Sunera Jayathilaka', '14', 'Nasrullah N', '0777122240', 'dddddddd', '', '7.079716116324988', '80.02663603003884', '15:42:14 16-9-2014', 1),
(38, '1', 'abc@gmail.com', 'Sunera Jayathilaka', '14', 'Nasrullah N', '0777122240', 'kawdana', 'kadana', '0.0', '0.0', '19:34:26 22-9-2014', 1),
(39, '1', 'abc@gmail.com', 'Sunera Jayathilaka', '14', 'Nasrullah N', '0777122240', 'icbt', 'Galle Rd\nColombo Town\n', '6.8850116', '79.8581104', '15:53:31 23-9-2014', 1),
(40, '4', 'driver1@gmail.com', 'Naveen Ahangama', '14', 'Nasrullah N', '0777122240', 'icbt nano', 'Galle Rd\nColombo Town\n', '6.8850116', '79.8581104', '15:53:54 23-9-2014', 0),
(41, '1', 'abc@gmail.com', 'Sunera Jayathilaka', '14', 'Nasrullah N', '0777122240', 'my. gps', 'Galle Rd\nColombo Town\n', '6.8848165', '79.8581945', '16:3:3 23-9-2014', 1),
(42, '1', 'abc@gmail.com', 'Sunera Jayathilaka', '14', 'Nasrullah N', '0777122240', 'to my icbt', 'my new location', '6.8848165', '79.8581945', '16:6:5 23-9-2014', 1),
(43, '1', 'abc@gmail.com', 'Sunera Jayathilaka', '14', 'Nasrullah N', '0777122240', 'mount beach', '', '6.8489753', '79.8652256', '16:7:12 26-9-2014', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_num` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `password`, `user_email`, `user_num`, `category`) VALUES
(1, 'Argha ', '1234', 'argha55@gmail.com', '123456', 'client'),
(2, 'Sunera Jayathilaka', '123', 'abc@gmail.com', '0777122240', 'driver'),
(14, 'Nasrullah N', '1234', 'nas@gmail.com', '0777122240', 'client'),
(4, 'naz', '123456', 'Ann.Nasrullah@gmail.com', '0777122240', 'client'),
(5, 'naz', '1234', 'naz@gmail.com', '0756518862', 'client'),
(6, 'test', 'asdf', 'test@test.com', '0777122240', 'client'),
(7, 'testing', '123', 'testing@gmail.com', '07777777777', 'client'),
(8, 'hari', 'zzz', 'by@by.com', '09998', 'client'),
(9, 'hari', '111', 'hair@gmail.com', '1112', 'client'),
(10, 's', 'sss', 's@s.s', '22', 'client'),
(11, 'hh', 'h', 'h@h.com', '333', 'client'),
(12, '123', '123', '123@123.123', '123', 'client'),
(13, 'abab', '123', 'a@b.c', '121212', 'driver'),
(15, 'navee', '123', 'navee@gmail.com', '0770393588', 'client'),
(16, 'Naveen Ahangama', '123', 'driver1@gmail.com', '0770393588', 'driver'),
(17, 'Hari Prashanth', '123', 'driver2@gmail.com', '0778317647', 'driver'),
(18, 'ntfs', '123', 'ntfsrjsc@gmail.com', '0754939157', 'client');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
