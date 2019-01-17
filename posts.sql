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
-- Structure de la table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `userId` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `body` text NOT NULL,
  `picture` varchar(50) NOT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `posts`
--

INSERT INTO `posts` (`userId`, `id`, `title`, `body`, `picture`) VALUES
(2, 3, 'aloe vera', 'L''aloe vera est une plante aux nombreuses qualites pour prendre soin de votre sante, que ce soit en usage interne ou externe. Pour profiter des bienfaits de l''aloe vera sur la sante, on utilise le latex jaune tire de la couche externe des feuilles et le gel d''aloe vera, clair et mucilagineux, extrait de l''interieur des feuilles d''aloe vera.', '1.jpg'),
(3, 2, 'Curcuma', 'le curcuma est depuis longtemps utilise comme additif alimentaire, en therapie comme en prevention. Les recherches montrent que cette epice est un allie pour traiter les troubles digestifs ou pour soulager les maladies inflammatoire, comme l''arthrite ou l''arthrose par exemple. Les complements alimentaires de curcuma contiennent des antioxydants puissants, les curcuminoides', '2.jpg'),
(4, 4, 'Matricaria recutita', 'la camomille sauvage, matricaire camomille, Petite camomille, (catricaria recutita) est une plante herbacee annuelle de la famille des Asteracees et du genre Matricaria. Elle est parfois appelee Camomille allemande ou Camomille vraie ou Matricaire tronquee. ', '3.jpg'),
(5, 5, 'Melisse officinale', 'plante vivace haute de 30 a 80 cm, a tiges dressees a section carree. La melisse a des petites feuilles ovales gaufrees et dentelees qui exhalent un parfum doux et citronne quand on les froisse. \r\nCette plante aromatique a un feuillage vert vif et une odeur citronnee. \r\nLes fleurs blanches ont une corolle longue de 12 mm, a deux levres. Le calice est en forme de cloche. \r\nLa melisse officinale, ou melisse citronnelle, est cultivee dans les jardins depuis des temps tres anciens. Originaire d''Europe, elle a ete introduite en Amerique du Nord. Les tiges et les feuilles sont encore utilisees comme tonique et stimulant leger. Le gout est astringent et l''arome leger. L''alcool est obtenu par distillation de ses feuilles fraiches : l''eau de melisse a des proprietes antispasmodiques. La melisse peut aussi etre consommee sous forme de tisanes. \r\nOn confond parfois la melisse avec une espece d''herbe a chats, la cataire, dont l''odeur est differente. ', '4.jpg'),
(6, 6, 'Sauge officinale', 'C''est une plante tres ramifiee, aux tiges de section carree, a la base lignifiee. Les feuilles petiolees sont vert pale, veloutees, oblongues. Les fleurs, sur des hampes florales erigees, sont regroupees en petits glomerules. ', '5.jpg');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
