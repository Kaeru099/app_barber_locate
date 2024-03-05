-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-03-2024 a las 18:57:18
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
-- Base de datos: `db_prueba`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `pk_codigo` int(11) NOT NULL,
  `nombre_u` varchar(50) NOT NULL,
  `apellido_u` varchar(50) NOT NULL,
  `fecha_nac_u` date NOT NULL,
  `cedula_u` varchar(20) NOT NULL,
  `departamento_u` varchar(50) NOT NULL,
  `ciudad_u` varchar(50) NOT NULL,
  `celular_u` varchar(15) NOT NULL,
  `correo_u` varchar(100) NOT NULL,
  `palabra_u` varchar(255) NOT NULL,
  `foto_u` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`pk_codigo`, `nombre_u`, `apellido_u`, `fecha_nac_u`, `cedula_u`, `departamento_u`, `ciudad_u`, `celular_u`, `correo_u`, `palabra_u`, `foto_u`) VALUES
(1, 'Juan', 'Perez', '1990-05-15', '1234567890', 'Antioquia', 'Medellín', '3001234567', 'juan@example.com', 'contraseña1', 'https://cdn-icons-png.flaticon.com/512/3135/3135768.png'),
(2, 'María', 'González', '1985-09-20', '9876543210', 'Bogotá D.C.', 'Bogotá', '3109876543', 'maria@example.com', 'contraseña2', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUlhc3wK41K_6poW26T9ZPoPrRjG_t0fF8vjuAPCducO-NOr1ZImd9FCUcBgKOFA09X1I&usqp=CAU'),
(3, 'Carlos', 'López', '1995-03-10', '5678901234', 'Valle del Cauca', 'Cali', '3204567890', 'carlos@example.com', 'contraseña3', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlmhLSmYDbAtCuLyG4cYCqKsTGw0gfqqChXh6Sg70ZfOtLHdiUzs9CV_rzFGzJN-l1mZ4&usqp=CAU'),
(4, 'Ana', 'Martínez', '1980-11-25', '2345678901', 'Atlántico', 'Barranquilla', '3157890123', 'ana@example.com', 'contraseña4', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQb4y29W71Wgmyml9c5WUrADlXRjVv7eyfEfNvTj32tf2craADTOgCDI3p1PXXuRkBb_fo&usqp=CAU'),
(5, 'Luis', 'Rodríguez', '1992-07-08', '6789012345', 'Cundinamarca', 'Soacha', '3508901234', 'luis@example.com', 'contraseña5', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyShkHLCoE9mGs7xDty8lYWRNG4PuD2_zLvfa595C4ggVGBQiPUkodXQfHb1VoE0M114Y&usqp=CAU');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`pk_codigo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `pk_codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
