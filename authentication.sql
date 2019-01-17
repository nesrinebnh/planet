-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Ven 18 Janvier 2019 à 00:28
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `bounouhflutter`
--

-- --------------------------------------------------------

--
-- Structure de la table `authentication`
--

CREATE TABLE IF NOT EXISTS `authentication` (
  `phoneNumber` varchar(60) NOT NULL,
  `Password` varchar(30) NOT NULL,
  PRIMARY KEY (`phoneNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `authentication`
--

INSERT INTO `authentication` (`phoneNumber`, `Password`) VALUES
('', ''),
('bcnb', 'nes'),
('chil', 'cgv'),
('ex', 'yoyo'),
('ex@gmail.com', 'test'),
('hfjg', 'nesrine'),
('hxbxh', 'bxbxh'),
('john@example.com', 'john'),
('shd', 'hch'),
('xvg', 'cvg');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
