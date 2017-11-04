-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 04-11-2017 a las 10:36:18
-- Versión del servidor: 10.0.32-MariaDB-0+deb8u1
-- Versión de PHP: 5.6.30-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `oSjgbXzt`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agrupacion_politica`
--

CREATE TABLE IF NOT EXISTS `agrupacion_politica` (
`id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `agrupacion_politica`
--

INSERT INTO `agrupacion_politica` (`id`, `nombre`) VALUES
(1, '1PAIS'),
(2, 'UNIDAD CIUDADANA'),
(3, 'CAMBIEMOS BUENOS AIRES'),
(4, 'FRENTE JUSTICIALISTA-CUMPLIR'),
(5, 'FTE. DE IZQUIERDA Y DE LOS TRABAJADORES'),
(6, 'JUNTOS POR CHASCOMUS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `circuito`
--

CREATE TABLE IF NOT EXISTS `circuito` (
  `codigo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `seccion_codigo` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `circuito`
--

INSERT INTO `circuito` (`codigo`, `seccion_codigo`) VALUES
('001', '030'),
('002', '030'),
('003', '030'),
('004', '030'),
('005', '030');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mesa`
--

CREATE TABLE IF NOT EXISTS `mesa` (
  `codigo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `circuito_codigo` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `mesa`
--

INSERT INTO `mesa` (`codigo`, `circuito_codigo`) VALUES
('001', '001'),
('002', '001'),
('003', '001'),
('004', '001');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `otros_votos`
--

CREATE TABLE IF NOT EXISTS `otros_votos` (
`id` int(11) NOT NULL,
  `votos_senadores_nacionales` int(10) NOT NULL,
  `votos_diputados_nacionales` int(10) NOT NULL,
  `votos_senadores_provinciales` int(10) NOT NULL,
  `votos_concejales` int(10) NOT NULL,
  `tipo_voto_id` int(11) NOT NULL,
  `provincia_id` int(11) NOT NULL,
  `seccion_codigo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `circuito_codigo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mesa_codigo` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `otros_votos`
--

INSERT INTO `otros_votos` (`id`, `votos_senadores_nacionales`, `votos_diputados_nacionales`, `votos_senadores_provinciales`, `votos_concejales`, `tipo_voto_id`, `provincia_id`, `seccion_codigo`, `circuito_codigo`, `mesa_codigo`) VALUES
(1, 0, 0, 0, 0, 1, 2, '030', '001', '001'),
(2, 16, 23, 26, 14, 2, 2, '030', '001', '001'),
(3, 0, 0, 0, 0, 3, 2, '030', '001', '001');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provincia`
--

CREATE TABLE IF NOT EXISTS `provincia` (
`id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `provincia`
--

INSERT INTO `provincia` (`id`, `nombre`) VALUES
(2, 'Buenos Aires');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seccion`
--

CREATE TABLE IF NOT EXISTS `seccion` (
  `codigo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `provincia_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `seccion`
--

INSERT INTO `seccion` (`codigo`, `nombre`, `provincia_id`) VALUES
('001', 'Adolfo Alsina', 2),
('002', 'Alberti', 2),
('003', 'Almirante Brown', 2),
('004', 'Avellaneda', 2),
('005', 'Ayacucho', 2),
('006', 'Azul', 2),
('007', 'BahÃ­a Blanca', 2),
('008', 'Balcarce', 2),
('009', 'Baradero', 2),
('010', 'Arrecifes', 2),
('011', 'Berazategui', 2),
('012', 'Berisso', 2),
('013', 'BolÃ­var', 2),
('014', 'Bragado', 2),
('015', 'Brandsen', 2),
('016', 'Campana', 2),
('017', 'CaÃ±uelas', 2),
('018', 'CapitÃ¡n Sarmiento', 2),
('019', 'Carlos Casares', 2),
('020', 'Carlos Tejedor', 2),
('021', 'Carmen de Areco', 2),
('022', 'Patagones', 2),
('023', 'Castelli', 2),
('024', 'ColÃ³n', 2),
('025', 'Coronel Dorrego', 2),
('026', 'Coronel Pringles', 2),
('027', 'Coronel Rosales', 2),
('028', 'Coronel SuÃ¡rez', 2),
('029', 'Chacabuco', 2),
('030', 'ChascomÃºs', 2),
('031', 'Chivilcoy', 2),
('032', 'Daireaux', 2),
('033', 'Dolores', 2),
('034', 'Ensenada', 2),
('035', 'Escobar', 2),
('036', 'Esteban EcheverrÃ­a', 2),
('037', 'ExaltaciÃ³n de la Cruz', 2),
('038', 'Florencio Varela', 2),
('039', 'General Alvarado', 2),
('040', 'General Alvear', 2),
('041', 'General Arenales', 2),
('042', 'General Belgrano', 2),
('043', 'General Guido', 2),
('044', 'General Lamadrid', 2),
('045', 'Las Heras', 2),
('046', 'General Lavalle', 2),
('047', 'General Madariaga', 2),
('048', 'General Paz', 2),
('049', 'General Pinto', 2),
('050', 'General PueyrredÃ³n', 2),
('051', 'General RodrÃ­guez', 2),
('052', 'General San MartÃ­n', 2),
('053', 'San Miguel', 2),
('054', 'General Viamonte', 2),
('055', 'General Villegas', 2),
('056', 'Gonzales Chaves', 2),
('057', 'Guamini', 2),
('058', 'HipÃ³lito Yrigoyen', 2),
('059', 'JuÃ¡rez', 2),
('060', 'JunÃ­n', 2),
('061', 'La Matanza', 2),
('062', 'LanÃºs', 2),
('063', 'La Plata', 2),
('064', 'Laprida', 2),
('065', 'Las Flores', 2),
('066', 'Leandro N. Alem', 2),
('067', 'Lincoln', 2),
('068', 'Loberia', 2),
('069', 'Lobos', 2),
('070', 'Lomas de Zamora', 2),
('071', 'LujÃ¡n', 2),
('072', 'Magdalena', 2),
('073', 'MaipÃº', 2),
('074', 'Mar Chiquita', 2),
('075', 'Marcos Paz', 2),
('076', 'Mercedes', 2),
('077', 'Merlo', 2),
('078', 'Monte', 2),
('079', 'Moreno', 2),
('080', 'MorÃ³n', 2),
('081', 'Navarro', 2),
('082', 'Necochea', 2),
('083', 'Nueve de Julio', 2),
('084', 'OlavarrÃ­a', 2),
('085', 'PehuajÃ³', 2),
('086', 'Pellegrini', 2),
('087', 'Pergamino', 2),
('088', 'Pila', 2),
('089', 'Pilar', 2),
('090', 'Pinamar', 2),
('091', 'Puan', 2),
('092', 'Quilmes', 2),
('093', 'Ramallo', 2),
('094', 'Rauch', 2),
('095', 'Rivadavia', 2),
('096', 'Rojas', 2),
('097', 'Roque PÃ©rez', 2),
('098', 'Saavedra', 2),
('099', 'Saladillo', 2),
('100', 'SalliquelÃ³', 2),
('101', 'Salto', 2),
('102', 'San AndrÃ©s de Giles', 2),
('103', 'San Antonio de Areco', 2),
('104', 'San Cayetano', 2),
('105', 'San Fernando', 2),
('106', 'San Isidro', 2),
('107', 'San NicolÃ¡s', 2),
('108', 'San Pedro', 2),
('109', 'San Vicente', 2),
('110', 'Suipacha', 2),
('111', 'Tandil', 2),
('112', 'TapalquÃ©', 2),
('113', 'Tigre', 2),
('114', 'Tornquist', 2),
('115', 'Trenque LauquÃ©n', 2),
('116', 'Tordillo', 2),
('117', 'Tres Arroyos', 2),
('118', 'Tres de Febrero', 2),
('119', 'La Costa', 2),
('120', 'Monte Hermoso', 2),
('121', 'Veinticinco de Mayo', 2),
('122', 'Vicente LÃ³pez', 2),
('123', 'Villa Gesell', 2),
('124', 'Villarino', 2),
('125', 'ZÃ¡rate', 2),
('126', 'Tres Lomas', 2),
('127', 'F. Ameghino', 2),
('128', 'Presidente PerÃ³n', 2),
('129', 'J. C. Paz', 2),
('130', 'Malvinas Argentinas', 2),
('131', 'Punta Indio', 2),
('132', 'Ezeiza', 2),
('133', 'Ituzaingo', 2),
('134', 'Hurlingham', 2),
('135', 'Lezama', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_voto`
--

CREATE TABLE IF NOT EXISTS `tipo_voto` (
`id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tipo_voto`
--

INSERT INTO `tipo_voto` (`id`, `nombre`) VALUES
(1, 'Voto nulo'),
(2, 'Voto en blanco'),
(3, 'Voto recurrido');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
`id` int(11) NOT NULL,
  `usuario` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `clave` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nombre` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `apellido` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `mail` varchar(45) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `usuario`, `clave`, `nombre`, `apellido`, `mail`) VALUES
(1, 'admin', 'admin', 'Administrador', 'ApellidoAdministrador', 'admin@admin.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `votos_agrupaciones`
--

CREATE TABLE IF NOT EXISTS `votos_agrupaciones` (
`id` int(11) NOT NULL,
  `agrupacion_politica_id` int(11) NOT NULL,
  `votos_senadores_nacionales` int(10) NOT NULL,
  `votos_diputados_nacionales` int(10) NOT NULL,
  `votos_senadores_provinciales` int(10) NOT NULL,
  `votos_concejales` int(10) NOT NULL,
  `provincia_id` int(10) NOT NULL,
  `seccion_codigo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `circuito_codigo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mesa_codigo` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `votos_agrupaciones`
--

INSERT INTO `votos_agrupaciones` (`id`, `agrupacion_politica_id`, `votos_senadores_nacionales`, `votos_diputados_nacionales`, `votos_senadores_provinciales`, `votos_concejales`, `provincia_id`, `seccion_codigo`, `circuito_codigo`, `mesa_codigo`) VALUES
(1, 1, 50, 46, 45, 72, 2, '030', '001', '001'),
(2, 2, 66, 63, 63, 60, 2, '030', '001', '001'),
(3, 3, 125, 124, 124, 112, 2, '030', '001', '001'),
(4, 4, 8, 8, 7, 8, 2, '030', '001', '001'),
(5, 5, 6, 7, 6, 0, 2, '030', '001', '001'),
(6, 6, 0, 0, 0, 5, 2, '030', '001', '001');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `agrupacion_politica`
--
ALTER TABLE `agrupacion_politica`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `circuito`
--
ALTER TABLE `circuito`
 ADD PRIMARY KEY (`codigo`), ADD KEY `FK_ci_seccion_codigo` (`seccion_codigo`);

--
-- Indices de la tabla `mesa`
--
ALTER TABLE `mesa`
 ADD PRIMARY KEY (`codigo`), ADD KEY `FK_me_circuito_codigo` (`circuito_codigo`);

--
-- Indices de la tabla `otros_votos`
--
ALTER TABLE `otros_votos`
 ADD PRIMARY KEY (`id`), ADD KEY `FK_tipo_voto_id` (`tipo_voto_id`), ADD KEY `FK_provincia_id` (`provincia_id`), ADD KEY `FK_seccion_codigo` (`seccion_codigo`), ADD KEY `FK_circuito_codigo` (`circuito_codigo`), ADD KEY `FK_mesa_codigo` (`mesa_codigo`);

--
-- Indices de la tabla `provincia`
--
ALTER TABLE `provincia`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `seccion`
--
ALTER TABLE `seccion`
 ADD PRIMARY KEY (`codigo`), ADD KEY `FK_se_provincia_id` (`provincia_id`);

--
-- Indices de la tabla `tipo_voto`
--
ALTER TABLE `tipo_voto`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `votos_agrupaciones`
--
ALTER TABLE `votos_agrupaciones`
 ADD PRIMARY KEY (`id`), ADD KEY `FK_va_agrupacion_politica_id` (`agrupacion_politica_id`), ADD KEY `FK_va_provincia_id` (`provincia_id`), ADD KEY `FK_va_seccion_codigo` (`seccion_codigo`), ADD KEY `FK_va_circuito_codigo` (`circuito_codigo`), ADD KEY `FK_va_mesa_codigo` (`mesa_codigo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `agrupacion_politica`
--
ALTER TABLE `agrupacion_politica`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `otros_votos`
--
ALTER TABLE `otros_votos`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `provincia`
--
ALTER TABLE `provincia`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `tipo_voto`
--
ALTER TABLE `tipo_voto`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `votos_agrupaciones`
--
ALTER TABLE `votos_agrupaciones`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `circuito`
--
ALTER TABLE `circuito`
ADD CONSTRAINT `FK_ci_seccion_codigo` FOREIGN KEY (`seccion_codigo`) REFERENCES `seccion` (`codigo`);

--
-- Filtros para la tabla `mesa`
--
ALTER TABLE `mesa`
ADD CONSTRAINT `FK_me_circuito_codigo` FOREIGN KEY (`circuito_codigo`) REFERENCES `circuito` (`codigo`);

--
-- Filtros para la tabla `otros_votos`
--
ALTER TABLE `otros_votos`
ADD CONSTRAINT `FK_circuito_codigo` FOREIGN KEY (`circuito_codigo`) REFERENCES `circuito` (`codigo`),
ADD CONSTRAINT `FK_mesa_codigo` FOREIGN KEY (`mesa_codigo`) REFERENCES `mesa` (`codigo`),
ADD CONSTRAINT `FK_provincia_id` FOREIGN KEY (`provincia_id`) REFERENCES `provincia` (`id`),
ADD CONSTRAINT `FK_seccion_codigo` FOREIGN KEY (`seccion_codigo`) REFERENCES `seccion` (`codigo`),
ADD CONSTRAINT `FK_tipo_voto_id` FOREIGN KEY (`tipo_voto_id`) REFERENCES `tipo_voto` (`id`);

--
-- Filtros para la tabla `seccion`
--
ALTER TABLE `seccion`
ADD CONSTRAINT `FK_se_provincia_id` FOREIGN KEY (`provincia_id`) REFERENCES `provincia` (`id`);

--
-- Filtros para la tabla `votos_agrupaciones`
--
ALTER TABLE `votos_agrupaciones`
ADD CONSTRAINT `FK_va_agrupacion_politica_id` FOREIGN KEY (`agrupacion_politica_id`) REFERENCES `agrupacion_politica` (`id`),
ADD CONSTRAINT `FK_va_circuito_codigo` FOREIGN KEY (`circuito_codigo`) REFERENCES `circuito` (`codigo`),
ADD CONSTRAINT `FK_va_mesa_codigo` FOREIGN KEY (`mesa_codigo`) REFERENCES `mesa` (`codigo`),
ADD CONSTRAINT `FK_va_provincia_id` FOREIGN KEY (`provincia_id`) REFERENCES `provincia` (`id`),
ADD CONSTRAINT `FK_va_seccion_codigo` FOREIGN KEY (`seccion_codigo`) REFERENCES `seccion` (`codigo`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
