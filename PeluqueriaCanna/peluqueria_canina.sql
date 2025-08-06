-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-08-2025 a las 02:01:44
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `peluqueria_canina`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `duenio`
--

CREATE TABLE `duenio` (
  `ID_DUENIO` int(11) NOT NULL,
  `CELULAR` varchar(255) DEFAULT NULL,
  `DIRECCION` varchar(255) DEFAULT NULL,
  `NOMBRE` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `duenio`
--

INSERT INTO `duenio` (`ID_DUENIO`, `CELULAR`, `DIRECCION`, `NOMBRE`) VALUES
(1, '1155648979', NULL, 'Roberto Carlos'),
(2, '1154987922', NULL, 'Ronaldinho'),
(3, '32456897', NULL, 'Cosmifulanito'),
(4, '11568794', NULL, 'Hideo kojima ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mascota`
--

CREATE TABLE `mascota` (
  `ID_NUMCLIENTE` int(11) NOT NULL,
  `ALERGICO` varchar(255) DEFAULT NULL,
  `ATENCION_ESPECIAL` varchar(255) DEFAULT NULL,
  `COLOR` varchar(255) DEFAULT NULL,
  `NOMBRE_PERRO` varchar(255) DEFAULT NULL,
  `OBSERVACIONES` varchar(255) DEFAULT NULL,
  `RAZA` varchar(255) DEFAULT NULL,
  `DUENIO_ID_DUENIO` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `mascota`
--

INSERT INTO `mascota` (`ID_NUMCLIENTE`, `ALERGICO`, `ATENCION_ESPECIAL`, `COLOR`, `NOMBRE_PERRO`, `OBSERVACIONES`, `RAZA`, `DUENIO_ID_DUENIO`) VALUES
(1, 'NO', 'SI', 'beige', 'Firulais', 'es un poco inquieto', 'Labrador', 1),
(2, 'SI', 'SI', 'blanco y negro', 'Pixie', 'es tranquila asi que no va haber problemas al bañarla ', 'pitbull', 2),
(4, 'NO', 'NO', 'negro', 'cloud', 'hola soy hideo cuida a mi perro es tan fiel\ncomo inteligente de perros importantes \ncomo el de big boss de metal gear solid v\nthe phantom pain (pero sin el parche ) aunque \nsea mas un lobo pero se entiende a donde \nvoy , Compra mis juegos \nfirma Big Boss ', 'ovejero', 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `duenio`
--
ALTER TABLE `duenio`
  ADD PRIMARY KEY (`ID_DUENIO`);

--
-- Indices de la tabla `mascota`
--
ALTER TABLE `mascota`
  ADD PRIMARY KEY (`ID_NUMCLIENTE`),
  ADD KEY `FK_MASCOTA_DUENIO_ID_DUENIO` (`DUENIO_ID_DUENIO`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `duenio`
--
ALTER TABLE `duenio`
  MODIFY `ID_DUENIO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `mascota`
--
ALTER TABLE `mascota`
  MODIFY `ID_NUMCLIENTE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `mascota`
--
ALTER TABLE `mascota`
  ADD CONSTRAINT `FK_MASCOTA_DUENIO_ID_DUENIO` FOREIGN KEY (`DUENIO_ID_DUENIO`) REFERENCES `duenio` (`ID_DUENIO`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
