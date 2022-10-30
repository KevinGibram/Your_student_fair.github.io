-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-12-2019 a las 23:44:17
-- Versión del servidor: 10.1.32-MariaDB
-- Versión de PHP: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `your_student_fair p`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `ADMid` int(99) NOT NULL,
  `ADMtipodoc` int(15) NOT NULL,
  `ADMnumerodoc` int(10) NOT NULL,
  `ADMnombre` varchar(25) NOT NULL,
  `ADMapellido` varchar(25) NOT NULL,
  `ADMfechadenacimiento` varchar(15) NOT NULL,
  `ADMcorreo` varchar(25) NOT NULL,
  `ADMcontraseña` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aprendiz`
--

CREATE TABLE `aprendiz` (
  `APRid` int(99) NOT NULL,
  `APRtipodoc` int(15) NOT NULL,
  `APRnumerodoc` int(10) NOT NULL,
  `APRnombre` varchar(25) NOT NULL,
  `APRapellido` varchar(25) NOT NULL,
  `APRcurso` varchar(5) NOT NULL,
  `APRfechadenacimiento` varchar(25) NOT NULL,
  `APRcorreo` varchar(30) NOT NULL,
  `APRcontraseña` varchar(25) NOT NULL,
  `PROid` int(99) NOT NULL,
  `GRAid` int(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `foto`
--

CREATE TABLE `foto` (
  `codigo` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `foto` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grado`
--

CREATE TABLE `grado` (
  `GRAid` int(99) NOT NULL,
  `TECid` int(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `instructor`
--

CREATE TABLE `instructor` (
  `INTid` int(99) NOT NULL,
  `INTtipodoc` int(15) NOT NULL,
  `INTnumerodoc` int(10) NOT NULL,
  `INTnombre` varchar(25) NOT NULL,
  `INTapellido` varchar(25) NOT NULL,
  `INTcorreo` varchar(30) NOT NULL,
  `INTcontra` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyecto`
--

CREATE TABLE `proyecto` (
  `PROid` int(11) NOT NULL,
  `PROnombre` int(11) NOT NULL,
  `PROdescripcion` int(11) NOT NULL,
  `PROimagen` blob,
  `GRAid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `idrol` int(11) NOT NULL,
  `rol` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`idrol`, `rol`) VALUES
(1, 'Instructor'),
(2, 'Aprendiz'),
(3, 'Usuario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tecnica`
--

CREATE TABLE `tecnica` (
  `TECid` int(99) NOT NULL,
  `TECnombre` varchar(50) NOT NULL,
  `TECfechainicio` date NOT NULL,
  `TECfechafin` date NOT NULL,
  `INTid` int(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `usuario` varchar(15) DEFAULT NULL,
  `clave` varchar(100) DEFAULT NULL,
  `rol` int(11) DEFAULT NULL,
  `estatus` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idusuario`, `nombre`, `correo`, `usuario`, `clave`, `rol`, `estatus`) VALUES
(1, 'Abel', 'info@abelosh.com', 'admin', '202cb962ac59075b964b07152d234b70', 1, 1),
(2, 'Julio Estrada', 'julio@gmail.com', 'julio', '202cb962ac59075b964b07152d234b70', 2, 1),
(3, 'Carlos HernÃ¡ndez', 'carlos@gmail.com', 'carlos', 'dc599a9972fde3045dab59dbd1ae170b', 3, 0),
(5, 'Marta Elena Franco', 'marta@gmail.com', 'marta', 'a763a66f984948ca463b081bf0f0e6d0', 3, 0),
(7, 'Carol Cabrera', 'carol@gmail.com', 'carol', 'a9a0198010a6073db96434f6cc5f22a8', 2, 0),
(8, 'Marvin Solares ', 'marvin@gmail.com', 'marvin', 'dba0079f1cb3a3b56e102dd5e04fa2af', 3, 0),
(9, 'Alan Melgar', 'alan@gmail.com', 'alan', '02558a70324e7c4f269c69825450cec8', 2, 1),
(10, 'Efrain GÃ³mez', 'efrain@gmail.com', 'efrain', '69423f0c254e5c1d2b0f5ee202459d2c', 2, 1),
(11, 'Fran Escobar', 'fran@gmail.com', 'fran', '2c20cb5558626540a1704b1fe524ea9a', 1, 1),
(12, 'Hana Montenegro', 'hana@gmail.com', 'hana', '52fd46504e1b86d80cfa22c0a1168a9d', 3, 1),
(13, 'Fredy Miranda', 'fredy@gmail.com', 'fredy', 'b89845d7eb5f8388e090fcc151d618c8', 2, 1),
(14, 'Roberto Salazar', 'roberto@hotmail.com', 'roberto', 'c1bfc188dba59d2681648aa0e6ca8c8e', 3, 1),
(15, 'William Fernando PÃ©rez', 'william@hotmail.com', 'william', 'fd820a2b4461bddd116c1518bc4b0f77', 3, 1),
(16, 'Francisco Mora', 'frans@gmail.com', 'frans', '64dd0133f9fb666ca6f4692543844f31', 3, 1),
(17, 'Ruben Guevara', 'ruben@hotmail.es', 'ruben', '32252792b9dccf239f5a5bd8e778dbc2', 3, 1),
(23, 'sara', 'sara@gggg.co', 'sara', '81dc9bdb52d04dc20036dbd8313ed055', 2, 1),
(24, 'Camila', 'Camila@gmail.com', 'camila', '202cb962ac59075b964b07152d234b70', 2, 1),
(25, 'grace', 'grace@gmail.com', 'grace', '202cb962ac59075b964b07152d234b70', 3, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`ADMid`);

--
-- Indices de la tabla `aprendiz`
--
ALTER TABLE `aprendiz`
  ADD PRIMARY KEY (`APRid`),
  ADD KEY `PROid` (`PROid`),
  ADD KEY `GRAid` (`GRAid`);

--
-- Indices de la tabla `foto`
--
ALTER TABLE `foto`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `grado`
--
ALTER TABLE `grado`
  ADD PRIMARY KEY (`GRAid`),
  ADD KEY `TECid` (`TECid`);

--
-- Indices de la tabla `instructor`
--
ALTER TABLE `instructor`
  ADD PRIMARY KEY (`INTid`);

--
-- Indices de la tabla `proyecto`
--
ALTER TABLE `proyecto`
  ADD PRIMARY KEY (`PROid`),
  ADD KEY `GRAid` (`GRAid`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`idrol`);

--
-- Indices de la tabla `tecnica`
--
ALTER TABLE `tecnica`
  ADD PRIMARY KEY (`TECid`),
  ADD KEY `INTid` (`INTid`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idusuario`),
  ADD KEY `rol` (`rol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administrador`
--
ALTER TABLE `administrador`
  MODIFY `ADMid` int(99) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `aprendiz`
--
ALTER TABLE `aprendiz`
  MODIFY `APRid` int(99) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `foto`
--
ALTER TABLE `foto`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `grado`
--
ALTER TABLE `grado`
  MODIFY `GRAid` int(99) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `instructor`
--
ALTER TABLE `instructor`
  MODIFY `INTid` int(99) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `proyecto`
--
ALTER TABLE `proyecto`
  MODIFY `PROid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `idrol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tecnica`
--
ALTER TABLE `tecnica`
  MODIFY `TECid` int(99) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `aprendiz`
--
ALTER TABLE `aprendiz`
  ADD CONSTRAINT `aprendiz_ibfk_1` FOREIGN KEY (`PROid`) REFERENCES `proyecto` (`PROid`),
  ADD CONSTRAINT `aprendiz_ibfk_2` FOREIGN KEY (`GRAid`) REFERENCES `grado` (`GRAid`);

--
-- Filtros para la tabla `grado`
--
ALTER TABLE `grado`
  ADD CONSTRAINT `grado_ibfk_1` FOREIGN KEY (`TECid`) REFERENCES `tecnica` (`TECid`);

--
-- Filtros para la tabla `tecnica`
--
ALTER TABLE `tecnica`
  ADD CONSTRAINT `tecnica_ibfk_1` FOREIGN KEY (`INTid`) REFERENCES `instructor` (`INTid`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`rol`) REFERENCES `rol` (`idrol`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
