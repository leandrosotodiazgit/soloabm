-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3307
-- Tiempo de generación: 05-04-2022 a las 13:59:03
-- Versión del servidor: 10.6.5-MariaDB
-- Versión de PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `prueba`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cbus`
--

DROP TABLE IF EXISTS `cbus`;
CREATE TABLE IF NOT EXISTS `cbus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alias` varchar(255) NOT NULL,
  `cbu` varchar(255) NOT NULL,
  `comercios_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `comercios_id` (`comercios_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cbus`
--

INSERT INTO `cbus` (`id`, `alias`, `cbu`, `comercios_id`) VALUES
(2, 'micbu', '50505050', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comercios`
--

DROP TABLE IF EXISTS `comercios`;
CREATE TABLE IF NOT EXISTS `comercios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cuit` int(11) NOT NULL,
  `razon_social` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `comercios`
--

INSERT INTO `comercios` (`id`, `cuit`, `razon_social`, `user_id`) VALUES
(1, 2036700148, 'gheto', 2),
(2, 999999, 'potencia', 2),
(3, 243243243, 'asdaseq', 1),
(4, 37753573, 'facebook', 2),
(7, 3323232, 'quesada', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `lastname`, `email`) VALUES
(1, 'lea', 'asd', 'asdasd'),
(2, 'pepe', 'pedro', 'qweqwe'),
(3, 'laean', 'soto', 'diaz'),
(4, 'nombre', 'apellido', 'email'),
(5, 'nombre', 'apellido', 'email'),
(12, 'Leandro', 'Diaz', 'leandro.soto.diaz@hotmail.com'),
(13, 'camila', 'avila', 'lealealeale@hasha'),
(14, 'laean', 'soto', 'diaz'),
(15, 'Leandro', 'Soto', 'leandro.soto.diaz@hotmail.com'),
(16, '', '', ''),
(17, '', '', ''),
(18, '', '', ''),
(19, '', '', ''),
(20, '', '', ''),
(21, '', '', '');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cbus`
--
ALTER TABLE `cbus`
  ADD CONSTRAINT `cbu_comercios` FOREIGN KEY (`comercios_id`) REFERENCES `comercios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `comercios`
--
ALTER TABLE `comercios`
  ADD CONSTRAINT `comercios_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
