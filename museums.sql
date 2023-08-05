-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2022 at 05:38 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tourist_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `museums`
--

CREATE TABLE `museums` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `price_for_adult` varchar(255) NOT NULL,
  `price_for_child` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `museums`
--

INSERT INTO `museums` (`id`, `name`, `city`, `price_for_adult`, `price_for_child`, `state`) VALUES
(1, 'Archaeological Museum, Amaravati ', 'Amaravati ', '5', '3', 'Andhra Pradesh '),
(2, 'Bhagwan Mahavir Government Museum ', 'Kadapa ', '3', '1', 'Andhra Pradesh '),
(3, 'Craft Center And Ethnographic Museum', 'Bomdila', '', '', 'Arunachal Pradesh '),
(4, 'Jawaharlal Nehru Museum ', 'Itanagar ', '75', '50', 'Arunachal Pradesh '),
(5, 'Shankardev Kalakshetra ', 'Guwahati ', '30', '10', 'Assam '),
(6, 'Assam State Museum ', 'Guwahati ', '20', '10', 'Assam '),
(7, 'Bhartiya Nritya Kala Mandir ', 'Patna ', '20', '10', 'Bihar '),
(8, 'Bihar Museum ', 'Patna ', '100', '50', 'Bihar '),
(9, 'International Dolls Museum ', 'Chandigarh ', '10', '5', 'Chandigarh '),
(10, 'Government Museum and Art Gallery ', 'Chandigarh ', '10', '5', 'Chandigarh '),
(11, 'Goa Chitra Museum ', 'Benaulim ', '100', '50', 'Goa '),
(12, 'Big Foot Museum ', 'Loutolim ', '50', '30', 'Goa '),
(13, 'Lalbhai Dalpatbhai Museum ', 'Ahmedabad ', 'Free', 'Free', 'Gujarat '),
(14, 'Calico Museum of Textiles ', 'Ahmedabad ', 'Free', 'Free', 'Gujarat '),
(15, 'Jahaj Kothi Zonal Museum ', 'Hisar ', '', '', 'Haryana '),
(16, 'Rewari Railway Heritage Museum ', 'Rewari ', 'Free', 'Free', 'Haryana '),
(17, 'Shivalik Fossil Park ', 'Sirmaur ', 'Free', 'Free', 'Himachal Pradesh '),
(18, 'Library of Tibetan Works and Archives ', 'Dharamsala ', '', '', 'Himachal Pradesh '),
(19, 'Munshi Aziz Bhat Museum of Central Asian and Kargil Trade Artefacts ', 'Kargil ', '50', '25', 'Jammu and Kashmir '),
(20, 'Dogra Art Museum ', 'Jammu ', '10', '5', 'Jammu and Kashmir '),
(21, 'SPS Museum ', 'Srinagar ', '10', '5', 'Jammu and Kashmir '),
(22, 'Ranchi Science Centre ', 'Ranchi ', '10', '5', 'Jharkhand '),
(23, 'State Museum Hotwar ', 'Ranchi ', '5', '3', 'Jharkhand '),
(24, 'Government Museum, Bangalore ', 'Bangalore ', '10', '5', 'Karnataka '),
(25, 'National Gallery of Modern Art, Bangalore ', 'Bangalore ', '20', 'Free', 'Karnataka '),
(26, 'Archaeological Museum, Thrissur ', 'Thrissur ', '6', '4', 'Kerala '),
(27, 'Mural Art Museum ', 'Thrissur ', '10', '2', 'Kerala '),
(28, 'Indore Museum ', 'Indore ', 'Free', 'Free', 'Madhya Pradesh '),
(29, 'Bharat Bhavan ', 'Bhopal ', '10', '5', 'Madhya Pradesh '),
(30, 'Bhau Daji Lad Museum ', 'Mumbai ', '10', '5', 'Maharashtra '),
(31, 'National Gallery of Modern Art, Mumbai ', 'Mumbai ', '20', '10', 'Maharashtra '),
(32, 'Mizoram State Museum ', 'Aizawl ', '20', '10', 'Mizoram '),
(33, 'Nagaland State Museum ', 'Kohima ', '10', '5', 'Nagaland '),
(34, 'National Museum ', 'Delhi ', '20', '10', 'National Capital Territory of Delhi '),
(35, 'Sanskriti Kendra Museum ', 'Delhi ', 'Free', 'Free', 'National Capital Territory of Delhi '),
(36, 'Odisha State Museum ', 'Bhubaneshwar ', '10', '2', 'Odisha '),
(37, 'Tribal Research Institute Museum ', 'Bhubaneshwar ', '10', '5', 'Odisha '),
(38, 'Pondicherry Museum ', 'Puducherry ', '10', '5', 'Puducherry '),
(39, 'Virasat-e-Khalsa ', 'Anandpur Sahib ', 'Free', 'Free', 'Punjab '),
(40, 'National Institute of Sports ', 'Patiala ', '', '', 'Punjab '),
(41, 'Jawahar Kala Kendra ', 'Jaipur ', 'Free', 'Free', 'Rajasthan '),
(42, 'Albert Hall Museum ', 'Jaipur ', '40', '20', 'Rajasthan '),
(43, 'Namgyal Institute of Tibetology ', 'Gangtok ', '10', '5', 'Sikkim '),
(44, 'Chennai Railway Museum ', 'Chennai ', '50', '25', 'Tamil Nadu '),
(45, 'Government Museum, Chennai ', 'Chennai ', '15', '10', 'Tamil Nadu '),
(46, 'Alampur Site Museum ', 'Alampur ', '10', '5', 'Telangana '),
(47, 'Birla Science Museum ', 'Hyderabad ', '150', '75', 'Telangana '),
(48, 'Tripura State Museum ', 'Agartala ', '20', '10', 'Tripura '),
(49, 'State Museum, Lucknow ', 'Lucknow ', '5', '3', 'Uttar Pradesh '),
(50, 'Allahabad Museum ', 'Allahabad ', '50', '25', 'Uttar Pradesh '),
(51, 'Indian Museum ', 'Kolkata ', '10', '5', 'West Bengal '),
(52, 'Victoria Memorial ', 'Kolkata ', '20', '10', 'West Bengal '),
(53, '', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `museums`
--
ALTER TABLE `museums`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `museums`
--
ALTER TABLE `museums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
