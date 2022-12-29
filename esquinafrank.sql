-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 29, 2022 at 10:36 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `esquinafrank`
--

-- --------------------------------------------------------

--
-- Table structure for table `novedades`
--

DROP TABLE IF EXISTS `novedades`;
CREATE TABLE IF NOT EXISTS `novedades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(350) NOT NULL,
  `subtitulo` text NOT NULL,
  `cuerpo` text NOT NULL,
  `img_id` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `novedades`
--

INSERT INTO `novedades` (`id`, `titulo`, `subtitulo`, `cuerpo`, `img_id`) VALUES
(1, 'Alemania', 'La pecera gigante estaba adentro del hotel Radisson Blu, en Berlín, y ostentaba una colección de 1.500 especies de peces exóticos.', 'Tras la explosión, ocurrida a las 5.45 (1.45 hora argentina)', 'ot4lnhxegmdi3gdcc3p5'),
(10, 'Dos mamíferos y 63 aves fueron liberados por la Secretaría de Ambiente de Bogotá', 'A la fecha han sido recuperadas más de 330 tinguas y se han liberado más de 220 aves migratorias que llegan a la ciudad en busca de mejores condiciones climáticas, refugio y mayor oferta de alimento', 'La Secretaría de Ambiente realizó, este jueves 29 de diciembre, la liberación de 65 animales silvestres, entre los que se encontraban, aves y mamíferos. La jornada se llevó a cabo en la Reserva de Humedal La Conejera, en el suroccidente de la ciudad.', 'nsug7pvoqueoffmumiui'),
(11, '¿Cuál la mascota preferida en América Latina?, un estudio respondió a la pregunta', 'La empresa analista de datos Growth from Knowledge realizó una encuesta en 22 países de diferentes continentes sobre las preferencias en animales de compañía', 'El interés por los animales de compañía ha aumentado en los últimos años en todo el mundo. A pesar de que hay diferentes tipos de mascotas la preferencia por los perros y gatos es notable en los países.', 'garp5saxzxc4yvaynizb'),
(12, 'Prueba 1', 'Prueba', 'Prueba', 'pgzvbcdo7nyseazqrvkl');

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usuario`
--

INSERT INTO `usuario` (`id`, `usuario`, `password`) VALUES
(1, 'hernan', 'c4819d06b0ca810d38506453cfaae9d8'),
(2, 'otro', '9c449771d0edc923c2713a7462cefa3b');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
