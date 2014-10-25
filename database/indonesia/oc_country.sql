-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 25, 2014 at 10:12 AM
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
-- Table structure for table `oc_country`
--

DROP TABLE IF EXISTS `oc_country`;
CREATE TABLE IF NOT EXISTS `oc_country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=101 ;

--
-- Dumping data for table `oc_country`
--

INSERT INTO `oc_country` (`country_id`, `name`, `iso_code_2`, `iso_code_3`, `address_format`, `postcode_required`, `status`) VALUES
(1, 'Bali', 'BL', 'BLI', '', 0, 1),
(2, 'Bangka Belitung', 'BB', 'BBL', '', 0, 1),
(3, 'Banten', 'BT', 'BNT', '', 0, 1),
(4, 'Bengkulu', 'BK', 'BKL', '', 0, 1),
(5, 'DI Yogyakarta', 'DI', 'DIY', '', 0, 1),
(6, 'DKI Jakarta', 'DK', 'DKI', '', 0, 1),
(7, 'Gorontalo', 'GR', 'GRT', '', 0, 1),
(8, 'Jambi', 'JA', 'JMB', '', 0, 1),
(9, 'Jawa Barat', 'JB', 'JBR', '', 0, 1),
(10, 'Jawa Tengah', 'JT', 'JWT', '', 0, 1),
(11, 'Jawa Timur', 'JM', 'JWU', '', 0, 1),
(12, 'Kalimantan Barat', 'KB', 'KLB', '', 0, 1),
(13, 'Kalimantan Selatan', 'KS', 'KLS', '', 0, 1),
(14, 'Kalimantan Tengah', 'KT', 'KLT', '', 0, 1),
(15, 'Kalimantan Timur', 'KR', 'KLM', '', 0, 1),
(16, 'Kalimantan Utara', 'KU', 'KLU', '', 0, 1),
(17, 'Kepulauan Riau', 'KA', 'KPR', '', 0, 1),
(18, 'Lampung', 'LM', 'LMP', '', 0, 1),
(19, 'Maluku', 'ML', 'MLK', '', 0, 1),
(20, 'Maluku Utara', 'MU', 'MLU', '', 0, 1),
(21, 'Nanggroe Aceh Darussalam', 'NA', 'NAD', '', 0, 1),
(22, 'Nusa Tenggara Barat', 'NT', 'NTB', '', 0, 1),
(23, 'Nusa Tenggara Timur', 'NE', 'NTT', '', 0, 1),
(24, 'Papua', 'PP', 'PPA', '', 0, 1),
(25, 'Papua Barat', 'PB', 'PPB', '', 0, 1),
(26, 'Riau', 'RI', 'RIA', '', 0, 1),
(27, 'Sulawesi Barat', 'SB', 'SSB', '', 0, 1),
(28, 'Sulawesi Selatan', 'SS', 'SSL', '', 0, 1),
(29, 'Sulawesi Tengah', 'ST', 'SST', '', 0, 1),
(30, 'Sulawesi Tenggara', 'SE', 'SSE', '', 0, 1),
(31, 'Sulawesi Utara', 'SU', 'SSU', '', 0, 1),
(32, 'Sumatera Barat', 'SR', 'SBR', '', 0, 1),
(33, 'Sumatera Selatan', 'SA', 'SST', '', 0, 1),
(34, 'Sumatera Utara', 'SM', 'SSR', '', 0, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
