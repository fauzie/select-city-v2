-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 25, 2014 at 07:17 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `opencart`
--

-- --------------------------------------------------------

--
-- Table structure for table `oc_geo_zone`
--

DROP TABLE IF EXISTS `oc_geo_zone`;
CREATE TABLE IF NOT EXISTS `oc_geo_zone` (
  `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`geo_zone_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=39 ;

--
-- Dumping data for table `oc_geo_zone`
--

INSERT INTO `oc_geo_zone` (`geo_zone_id`, `name`, `description`, `date_modified`, `date_added`) VALUES
(5, 'Bali', 'Bali', '2014-01-13 19:11:25', '2014-01-13 19:11:17'),
(6, 'Bangka Belitung', 'Bangka Belitung', '0000-00-00 00:00:00', '2014-01-13 19:11:40'),
(7, 'Banten', 'Banten', '0000-00-00 00:00:00', '2014-01-13 19:12:37'),
(8, 'Bengkulu', 'Bengkulu', '0000-00-00 00:00:00', '2014-01-13 19:12:56'),
(9, 'DI Yogyakarta', 'DI Yogyakarta', '0000-00-00 00:00:00', '2014-01-13 19:13:09'),
(10, 'DI Jakarta', 'DI Jakarta', '0000-00-00 00:00:00', '2014-01-13 19:13:22'),
(11, 'Gorontalo', 'Gorontalo', '0000-00-00 00:00:00', '2014-01-13 19:13:48'),
(12, 'Jambi', 'Jambi', '0000-00-00 00:00:00', '2014-01-13 19:14:09'),
(13, 'Jawa Barat', 'Jawa Barat', '0000-00-00 00:00:00', '2014-01-13 19:14:21'),
(14, 'Jawa Tengah', 'Jawa Tengah', '0000-00-00 00:00:00', '2014-01-13 19:15:17'),
(15, 'Jawa Timur', 'Jawa Timur', '0000-00-00 00:00:00', '2014-01-13 19:15:32'),
(16, 'Kalimantan Barat', 'Kalimantan Barat', '0000-00-00 00:00:00', '2014-01-13 19:15:56'),
(17, 'Kalimantan Selatan', 'Kalimantan Selatan', '0000-00-00 00:00:00', '2014-01-13 19:16:13'),
(18, 'Kalimantan Tengah', 'Kalimantan Tengah', '0000-00-00 00:00:00', '2014-01-13 19:16:44'),
(19, 'Kalimantan Timur', 'Kalimantan Timur', '0000-00-00 00:00:00', '2014-01-13 19:17:00'),
(20, 'Kalimantan Utara', 'Kalimantan Utara', '0000-00-00 00:00:00', '2014-01-13 19:17:31'),
(21, 'Kepulauan Riau', 'Kepulauan Riau', '0000-00-00 00:00:00', '2014-01-13 19:18:36'),
(22, 'Lampung', 'Lampung', '0000-00-00 00:00:00', '2014-01-13 19:18:58'),
(23, 'Maluku', 'Maluku', '0000-00-00 00:00:00', '2014-01-13 19:19:21'),
(24, 'Maluku Utara', 'Maluku Utara', '0000-00-00 00:00:00', '2014-01-13 19:19:43'),
(25, 'Nangroe Aceh Darussalam', 'Nangroe Aceh Darussalam', '0000-00-00 00:00:00', '2014-01-13 19:20:02'),
(26, 'Nusa Tenggara Barat', 'Nusa Tenggara Barat', '0000-00-00 00:00:00', '2014-01-13 19:20:33'),
(27, 'Nusa Tenggara Timur', 'Nusa Tenggara Timur', '0000-00-00 00:00:00', '2014-01-13 19:20:53'),
(28, 'Papua', 'Papua', '0000-00-00 00:00:00', '2014-01-13 19:21:09'),
(29, 'Papua Barat', 'Papua Barat', '0000-00-00 00:00:00', '2014-01-13 19:21:32'),
(30, 'Riau', 'Riau', '0000-00-00 00:00:00', '2014-01-13 19:21:57'),
(31, 'Sulawesi Barat', 'Sulawesi Barat', '0000-00-00 00:00:00', '2014-01-13 19:22:10'),
(32, 'Sulawesi Selatan', 'Sulawesi Selatan', '0000-00-00 00:00:00', '2014-01-13 19:22:26'),
(33, 'Sulawesi Tengah', 'Sulawesi Tengah', '0000-00-00 00:00:00', '2014-01-13 19:22:40'),
(34, 'Sulawesi Tenggara', 'Sulawesi Tenggara', '0000-00-00 00:00:00', '2014-01-13 19:22:55'),
(35, 'Sulawesi Utara', 'Sulawesi Utara', '0000-00-00 00:00:00', '2014-01-13 19:23:20'),
(36, 'Sumatera Barat', 'Sumatera Barat', '0000-00-00 00:00:00', '2014-01-13 19:23:34'),
(37, 'Sumatera Selatan', 'Sumatera Selatan', '0000-00-00 00:00:00', '2014-01-13 19:23:47'),
(38, 'Sumatera Utara', 'Sumatera Utara', '0000-00-00 00:00:00', '2014-01-13 19:23:59');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
