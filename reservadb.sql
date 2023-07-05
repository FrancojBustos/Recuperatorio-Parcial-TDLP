-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-07-2023 a las 21:57:45
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `reservadb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas`
--

CREATE TABLE `reservas` (
  `id` int(11) NOT NULL,
  `codigo` varchar(100) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telefono` int(11) NOT NULL,
  `fecha_salida` datetime NOT NULL,
  `fecha_llegada` datetime NOT NULL,
  `precio` varchar(255) NOT NULL,
  `estado` tinyint(1) DEFAULT 1,
  `createdAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updatedAt` datetime NOT NULL DEFAULT current_timestamp(),
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `reservas`
--

INSERT INTO `reservas` (`id`, `codigo`, `nombre`, `apellido`, `email`, `telefono`, `fecha_salida`, `fecha_llegada`, `precio`, `estado`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(2, '1688586371486', 'joni', 'walker', 'bluelabel@gmial.com', 321213, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '300000', 0, '2023-07-05 19:46:11', '2023-07-05 19:49:16', NULL),
(3, '1688586402834', 'joni', 'walker', 'bluelabel@gmial.com', 321213, '2023-07-26 19:46:00', '2023-07-31 19:46:00', 'bluelabel@gmial.com', 0, '2023-07-05 19:46:42', '2023-07-05 19:48:26', NULL),
(4, '1688586517544', 'Franco', 'Bustos', 'bustosfranco061@gmail.com', 2147483647, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, '2023-07-05 19:48:37', '2023-07-05 19:51:50', NULL),
(5, '1688586595277', 'Franco', 'Bustos', 'bustosfranco061@gmail.com', 2147483647, '2023-07-20 19:49:00', '2023-07-27 19:49:00', 'bustosfranco061@gmail.com', 0, '2023-07-05 19:49:55', '2023-07-05 19:51:47', NULL),
(6, '1688586725811', 'franco', 'bustos', 'jaim@gmail.com', 3203224, '2023-07-28 19:51:00', '2023-07-30 19:52:00', '', 0, '2023-07-05 19:52:05', '2023-07-05 19:52:15', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `codigo` (`codigo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `reservas`
--
ALTER TABLE `reservas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
