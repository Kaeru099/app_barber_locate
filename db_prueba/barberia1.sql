-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-03-2024 a las 20:37:42
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
-- Base de datos: `barberia1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `barberia`
--

CREATE TABLE `barberia` (
  `pk_codigo_barberia` varchar(40) NOT NULL,
  `nom_barberia` varchar(50) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `ciudad` varchar(25) DEFAULT NULL,
  `departamento` varchar(25) DEFAULT NULL,
  `pais` varchar(25) DEFAULT NULL,
  `telefono` varchar(12) DEFAULT NULL,
  `correo` varchar(50) DEFAULT NULL,
  `h_apertura` varchar(25) DEFAULT NULL,
  `h_cierre` varchar(25) DEFAULT NULL,
  `latitud` float DEFAULT NULL,
  `longitud` float DEFAULT NULL,
  `fk_cedulaP` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `barberia`
--

INSERT INTO `barberia` (`pk_codigo_barberia`, `nom_barberia`, `direccion`, `ciudad`, `departamento`, `pais`, `telefono`, `correo`, `h_apertura`, `h_cierre`, `latitud`, `longitud`, `fk_cedulaP`) VALUES
('barbaditojr-Buga-22121212', 'barbaditojr', 'calle 22', 'Buga', 'Valle del Cauca', 'Colombia', '22121212', NULL, '21:12', '12:12', NULL, NULL, NULL),
('barbados finos-Buga-6655622', 'barbados finos', 'calle25', 'Buga', 'Valle del Cauca', 'Colombia', '6655622', NULL, '12:02', '11:51', NULL, NULL, NULL),
('barbados-1112147877-2005-03-29-uy@gmail.', 'barbados', 'calle 21', 'Buga', 'Valle del Cauca', 'Colombia', '3045299788', NULL, '12:00', '08:54', NULL, NULL, NULL),
('barbados-45-1996-11-20-juanycami582@gmai', 'barbados', 'carrera 27', 'Buga', 'Valle del Cauca', 'Colombia', '1541544', NULL, '05:54', '22:00', NULL, NULL, NULL),
('barberia FINA-45-1996-11-20-juanycami582', 'barberia FINA', 'calle 22', 'Buga', 'Valle del Cauca', 'Colombia', '258796652', NULL, '13:20', '22:00', NULL, NULL, NULL),
('barberia la 21-Buga-55959', 'barberia la 21', 'carrera54', 'Buga', 'Valle del Cauca', 'Colombia', '55959', 'copito58245@gmail.com', '04:08', '05:04', NULL, NULL, NULL),
('barberia los ferchos-Buga-849595', 'barberia los ferchos', 'carre 12', 'Buga', 'Valle del Cauca', 'Colombia', '849595', NULL, '15:04', '15:15', NULL, NULL, NULL),
('hdbarber-Buga-55582694', 'hdbarber', 'calle58', 'Buga', 'copito58245@gmail.com', 'Valle del Cauca', '55582694', 'Colombia', '04:08', '04:08', NULL, NULL, NULL),
('xedd-Buga-65655', 'xedd', 'calle22', 'Buga', 'Valle del Cauca', 'Colombia', '65655', NULL, '15:45', '04:08', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `barberos`
--

CREATE TABLE `barberos` (
  `fk_cedulaB` varchar(15) NOT NULL,
  `bnombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `bcorreo` varchar(50) DEFAULT NULL,
  `bcelular` varchar(12) DEFAULT NULL,
  `bciudad` varchar(25) DEFAULT NULL,
  `bf_nacimiento` date DEFAULT NULL,
  `bcontrasena` varchar(128) DEFAULT NULL,
  `bhuella` varchar(500) DEFAULT NULL,
  `bdisponibilidad_si_no` varchar(2) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  `fk_horario` varchar(20) DEFAULT NULL,
  `fk_codigo_barberia` varchar(40) DEFAULT NULL,
  `rol` varchar(30) DEFAULT NULL,
  `codigo_perteneciente` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `barberos`
--

INSERT INTO `barberos` (`fk_cedulaB`, `bnombre`, `apellido`, `bcorreo`, `bcelular`, `bciudad`, `bf_nacimiento`, `bcontrasena`, `bhuella`, `bdisponibilidad_si_no`, `estado`, `fk_horario`, `fk_codigo_barberia`, `rol`, `codigo_perteneciente`) VALUES
('1112154896', 'juan esteban ', 'dominguez rivera', 'jdestebanr58245@gmail.com', '3052598765', 'Buga', '2004-03-02', 'Juanesnegris12345#', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('122234', 'juaness', 'riveraaaaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1112148751'),
('122548789', 'juan', 'dominguez rivera', 'karlos582j@gmail.com', '3052598765', 'Buga', '2005-04-02', 'Juanesnegris12345#', NULL, NULL, NULL, NULL, NULL, NULL, '1112148751-juanes'),
('1234', 'juan', 'deded', 'ded@gmail', '1234', 'buga', '2004-11-02', 'juanesnegris', '1234', NULL, NULL, NULL, NULL, NULL, NULL),
('154545', 'xsddewd', 'ded', 'de@gmail.com', '1112148775', 'Buga', '1985-11-06', '123456789', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('3543', 'carlos', 'holguin', 'kl@gmail', '3025879645', 'Buga', '1995-11-22', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('7896', 'juan', 'rivera', 'juan582@gmail.com', '789451', 'Buga', '1996-02-06', '12345678', NULL, NULL, NULL, NULL, NULL, 'barbero', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `barbero_servicio`
--

CREATE TABLE `barbero_servicio` (
  `precio` int(11) DEFAULT NULL,
  `duracion` time DEFAULT NULL,
  `cali_servicio` float DEFAULT NULL,
  `fk_codi_servicio` varchar(83) DEFAULT NULL,
  `fk_cedulaB` varchar(15) DEFAULT NULL,
  `fk_codi_S` varchar(40) DEFAULT NULL,
  `fk_codigo_cita` varchar(38) DEFAULT NULL,
  `contador_BS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `citas`
--

CREATE TABLE `citas` (
  `pk_codigo_cita` varchar(38) NOT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `puntuacion_barbero` int(1) DEFAULT NULL,
  `comentario` varchar(100) DEFAULT NULL,
  `fk_cedulaU` varchar(15) DEFAULT NULL,
  `fk_codi_servicio` varchar(83) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario_disponible`
--

CREATE TABLE `horario_disponible` (
  `pk_id_horario` varchar(80) NOT NULL,
  `dia_inicio` date DEFAULT NULL,
  `dia_fin` date DEFAULT NULL,
  `hora_inicio` time DEFAULT NULL,
  `hora_fin` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `propietario`
--

CREATE TABLE `propietario` (
  `pk_cedulaP` varchar(15) NOT NULL,
  `nombre_P` varchar(50) DEFAULT NULL,
  `apellido_P` varchar(50) DEFAULT NULL,
  `correo_P` varchar(50) DEFAULT NULL,
  `celular_P` varchar(12) DEFAULT NULL,
  `nom_barberia` varchar(50) DEFAULT NULL,
  `rol` varchar(20) DEFAULT NULL,
  `contrasena_P` varchar(50) DEFAULT NULL,
  `Pciudad` varchar(25) DEFAULT NULL,
  `Pf_nacimiento` date DEFAULT NULL,
  `codigo_barberia` varchar(83) DEFAULT NULL,
  `codigo_perteneciente` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `propietario`
--

INSERT INTO `propietario` (`pk_cedulaP`, `nombre_P`, `apellido_P`, `correo_P`, `celular_P`, `nom_barberia`, `rol`, `contrasena_P`, `Pciudad`, `Pf_nacimiento`, `codigo_barberia`, `codigo_perteneciente`) VALUES
('1112148751', 'juan esteban ', 'dominguez rivera', 'juanrivera12345@gmail.com', '3045896541', NULL, 'propietario', 'Juanesnegris12345#', 'Guadalajara de Buga', '2005-03-01', NULL, '1112148751');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id_rol` int(11) NOT NULL,
  `descripcion` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id_rol`, `descripcion`) VALUES
(1, 'admin'),
(2, 'barbero'),
(3, 'usuario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio`
--

CREATE TABLE `servicio` (
  `pk_codi_servicio` varchar(83) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `fk_cedulaU` varchar(15) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellidos` varchar(50) DEFAULT NULL,
  `celular` varchar(12) DEFAULT NULL,
  `ciudad` varchar(30) DEFAULT NULL,
  `f_nacimiento` date DEFAULT NULL,
  `correo` varchar(50) DEFAULT NULL,
  `contrasena` varchar(128) DEFAULT NULL,
  `huella_u` varchar(500) DEFAULT NULL,
  `foto_u` blob DEFAULT NULL,
  `id_rol` int(11) DEFAULT NULL,
  `rol` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`fk_cedulaU`, `nombre`, `apellidos`, `celular`, `ciudad`, `f_nacimiento`, `correo`, `contrasena`, `huella_u`, `foto_u`, `id_rol`, `rol`) VALUES
('1112148773', 'kakito', 'kakon', '3154118326', 'Buga', '1986-03-11', 'kakito58245@gmail.com', 'juanesnegris123', NULL, NULL, NULL, 'cliente');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `barberia`
--
ALTER TABLE `barberia`
  ADD PRIMARY KEY (`pk_codigo_barberia`),
  ADD KEY `fk_propietario` (`fk_cedulaP`);

--
-- Indices de la tabla `barberos`
--
ALTER TABLE `barberos`
  ADD PRIMARY KEY (`fk_cedulaB`),
  ADD UNIQUE KEY `correo_unico` (`bcorreo`),
  ADD KEY `fk_horarios` (`fk_horario`),
  ADD KEY `fk_barberias` (`fk_codigo_barberia`);

--
-- Indices de la tabla `barbero_servicio`
--
ALTER TABLE `barbero_servicio`
  ADD PRIMARY KEY (`contador_BS`),
  ADD KEY `fk_codigo_cita` (`fk_codigo_cita`),
  ADD KEY `fk_barberos` (`fk_cedulaB`),
  ADD KEY `fk_servicio` (`fk_codi_servicio`);

--
-- Indices de la tabla `citas`
--
ALTER TABLE `citas`
  ADD PRIMARY KEY (`pk_codigo_cita`),
  ADD KEY `fk_cedulaU` (`fk_cedulaU`);

--
-- Indices de la tabla `horario_disponible`
--
ALTER TABLE `horario_disponible`
  ADD PRIMARY KEY (`pk_id_horario`);

--
-- Indices de la tabla `propietario`
--
ALTER TABLE `propietario`
  ADD PRIMARY KEY (`pk_cedulaP`),
  ADD UNIQUE KEY `codigo_barberia` (`codigo_barberia`),
  ADD UNIQUE KEY `unique_correo` (`correo_P`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `servicio`
--
ALTER TABLE `servicio`
  ADD PRIMARY KEY (`pk_codi_servicio`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`fk_cedulaU`),
  ADD KEY `id_rol` (`id_rol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `barbero_servicio`
--
ALTER TABLE `barbero_servicio`
  MODIFY `contador_BS` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `barberia`
--
ALTER TABLE `barberia`
  ADD CONSTRAINT `fk_propietario` FOREIGN KEY (`fk_cedulaP`) REFERENCES `propietario` (`pk_cedulaP`);

--
-- Filtros para la tabla `barberos`
--
ALTER TABLE `barberos`
  ADD CONSTRAINT `fk_barberias` FOREIGN KEY (`fk_codigo_barberia`) REFERENCES `barberia` (`pk_codigo_barberia`),
  ADD CONSTRAINT `fk_horarios` FOREIGN KEY (`fk_horario`) REFERENCES `horario_disponible` (`pk_id_horario`);

--
-- Filtros para la tabla `barbero_servicio`
--
ALTER TABLE `barbero_servicio`
  ADD CONSTRAINT `barbero_servicio_ibfk_1` FOREIGN KEY (`fk_codigo_cita`) REFERENCES `citas` (`pk_codigo_cita`),
  ADD CONSTRAINT `fk_barberos` FOREIGN KEY (`fk_cedulaB`) REFERENCES `barberos` (`fk_cedulaB`),
  ADD CONSTRAINT `fk_servicio` FOREIGN KEY (`fk_codi_servicio`) REFERENCES `servicio` (`pk_codi_servicio`);

--
-- Filtros para la tabla `citas`
--
ALTER TABLE `citas`
  ADD CONSTRAINT `citas_ibfk_1` FOREIGN KEY (`fk_cedulaU`) REFERENCES `usuario` (`fk_cedulaU`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id_rol`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
