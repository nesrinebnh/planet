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
-- Structure de la table `problem_solution`
--

CREATE TABLE IF NOT EXISTS `problem_solution` (
  `titre` varchar(100) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `problem` text NOT NULL,
  `picture` varchar(50) NOT NULL,
  `solution` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `problem_solution`
--

INSERT INTO `problem_solution` (`titre`, `id`, `problem`, `picture`, `solution`) VALUES
('Pourquoi les pointes des feuilles jaunissent-elles ?', 1, 'Il arrive frequemment que les pointes des feuilles jaunissent lorsque l''atmosphere est trop seche. \r\nCe probleme que l''on voit notamment sur les palmiers et les yuccas, mais aussi chez le cycas et le pied d''elephant peut etre lie a un manque d''arrosage ou a un exces de chauffage dans la piece.Pour y remedier :', 'images/problem/1.jpg', 'rapprochez vos plantes les une des autres (l''evaporation des feuillages va humidifier l''atmosphere).Installez des humidificateurs d''air sur vos radiateurs.Et posez les pots sur du gravier ou des billes d''argile humidifies\r\ntaillez les pointes jaunies des feuilles, laissez cicatriser deux jours avant de vaporiser le feuillage avec de l''eau douce a temperature ambiante\r\n\r\n'),
('Pourquoi les feuilles se fletrissent-elles ?', 2, 'Vous avez beau arroser vos plantes vertes, les feuilles fletrissent et ont tendance a jaunir. Le brunissement du bord des feuilles est un symptome qui doit vous alerter : votre plante souffre d''un exces d''eau.\r\nCe probleme est frequent chez les plantes presentees dans des paniers sans drainage ou mises dans un cache-pot. Le Botrytis ou "pourriture grise" peut alors apparaitre sous forme de poussiere grise sur les feuilles des begonias, des cyclamens ou des azalees.Pour y remedier :\r\n', '', 'sortez la plante de son cache-pot.Il est conseille de ne pas attendre que la terre soit seche avant d''arroser a nouveau.Ainsi, ne laissez pas d''eau stagnante dans la soucoupe'),
('Pourquoi ma plante ne fleurit pas ?', 3, 'Vous avez beau l''arroser et lui donner de l''engrais, votre plante (orchidee, stephanotis, amaryllis ou cymbidium) ne veut pas fleurir.\r\n\r\nCela peut sembler etrange, mais il faut parfois "stresser" vos plantes vertes pour declencher la floraison. \r\n', '', '\r\nChez l''amaryllis par l''exemple, il faut menager a la plante une periode de repos avec tres peu d''arrosage.\r\nChez le cymbidium, il faut sortir la plante a l''exterieur en automne et lui faire subir un ecart de temperature important entre le jour et la nuit.\r\n\r\nEn regle generale, il est conseille de placer les plantes fleuries a l''exterieur en ete et de les oublier un peu. Posez le pot directement sur la terre dans un endroit legerement ombrage et espacez les arrosages.');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
