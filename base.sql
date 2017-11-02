SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS  `agrupacion_politica`, `circuito`, `lalala`, `mesa`, `otros_votos`, `provincia`, `seccion`, `tipo_voto`, `usuario`, `votos_agrupaciones`;
SET FOREIGN_KEY_CHECKS=1;

  CREATE TABLE `provincia` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
    PRIMARY KEY (id)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

  INSERT INTO provincia (id, nombre) VALUES (2, 'Buenos Aires');

  CREATE TABLE `seccion` (
    `codigo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
    `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
    `provincia_id` int(11) NOT NULL,
    PRIMARY KEY (codigo),
    CONSTRAINT FK_se_provincia_id FOREIGN KEY (provincia_id) REFERENCES provincia(id)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('001', 'Adolfo Alsina', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('002', 'Alberti', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('003', 'Almirante Brown', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('004', 'Avellaneda', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('005', 'Ayacucho', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('006', 'Azul', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('007', 'Bahía Blanca', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('008', 'Balcarce', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('009', 'Baradero', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('010', 'Arrecifes', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('011', 'Berazategui', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('012', 'Berisso', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('013', 'Bolívar', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('014', 'Bragado', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('015', 'Brandsen', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('016', 'Campana', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('017', 'Cañuelas', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('018', 'Capitán Sarmiento', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('019', 'Carlos Casares', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('020', 'Carlos Tejedor', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('021', 'Carmen de Areco', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('022', 'Patagones', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('023', 'Castelli', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('024', 'Colón', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('025', 'Coronel Dorrego', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('026', 'Coronel Pringles', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('027', 'Coronel Rosales', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('028', 'Coronel Suárez', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('029', 'Chacabuco', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('030', 'Chascomús', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('031', 'Chivilcoy', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('032', 'Daireaux', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('033', 'Dolores', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('034', 'Ensenada', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('035', 'Escobar', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('036', 'Esteban Echeverría', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('037', 'Exaltación de la Cruz', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('038', 'Florencio Varela', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('039', 'General Alvarado', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('040', 'General Alvear', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('041', 'General Arenales', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('042', 'General Belgrano', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('043', 'General Guido', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('044', 'General Lamadrid', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('045', 'Las Heras', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('046', 'General Lavalle', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('047', 'General Madariaga', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('048', 'General Paz', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('049', 'General Pinto', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('050', 'General Pueyrredón', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('051', 'General Rodríguez', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('052', 'General San Martín', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('053', 'San Miguel', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('054', 'General Viamonte', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('055', 'General Villegas', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('056', 'Gonzales Chaves', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('057', 'Guamini', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('058', 'Hipólito Yrigoyen', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('059', 'Juárez', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('060', 'Junín', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('061', 'La Matanza', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('062', 'Lanús', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('063', 'La Plata', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('064', 'Laprida', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('065', 'Las Flores', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('066', 'Leandro N. Alem', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('067', 'Lincoln', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('068', 'Loberia', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('069', 'Lobos', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('070', 'Lomas de Zamora', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('071', 'Luján', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('072', 'Magdalena', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('073', 'Maipú', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('074', 'Mar Chiquita', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('075', 'Marcos Paz', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('076', 'Mercedes', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('077', 'Merlo', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('078', 'Monte', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('079', 'Moreno', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('080', 'Morón', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('081', 'Navarro', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('082', 'Necochea', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('083', 'Nueve de Julio', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('084', 'Olavarría', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('085', 'Pehuajó', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('086', 'Pellegrini', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('087', 'Pergamino', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('088', 'Pila', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('089', 'Pilar', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('090', 'Pinamar', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('091', 'Puan', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('092', 'Quilmes', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('093', 'Ramallo', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('094', 'Rauch', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('095', 'Rivadavia', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('096', 'Rojas', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('097', 'Roque Pérez', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('098', 'Saavedra', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('099', 'Saladillo', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('100', 'Salliqueló', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('101', 'Salto', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('102', 'San Andrés de Giles', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('103', 'San Antonio de Areco', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('104', 'San Cayetano', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('105', 'San Fernando', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('106', 'San Isidro', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('107', 'San Nicolás', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('108', 'San Pedro', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('109', 'San Vicente', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('110', 'Suipacha', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('111', 'Tandil', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('112', 'Tapalqué', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('113', 'Tigre', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('114', 'Tornquist', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('115', 'Trenque Lauquén', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('116', 'Tordillo', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('117', 'Tres Arroyos', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('118', 'Tres de Febrero', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('119', 'La Costa', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('120', 'Monte Hermoso', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('121', 'Veinticinco de Mayo', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('122', 'Vicente López', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('123', 'Villa Gesell', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('124', 'Villarino', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('125', 'Zárate', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('126', 'Tres Lomas', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('127', 'F. Ameghino', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('128', 'Presidente Perón', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('129', 'J. C. Paz', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('130', 'Malvinas Argentinas', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('131', 'Punta Indio', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('132', 'Ezeiza', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('133', 'Ituzaingo', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('134', 'Hurlingham', 2);
  INSERT INTO seccion (codigo, nombre, provincia_id) VALUES ('135', 'Lezama', 2);


  -- armar script para generar los circuitos a partir de las secciones
  CREATE TABLE `circuito` (
    `codigo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
    `seccion_codigo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
    PRIMARY KEY (codigo),
    CONSTRAINT FK_ci_seccion_codigo FOREIGN KEY (seccion_codigo) REFERENCES seccion(codigo)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

  INSERT INTO circuito (codigo, seccion_codigo) VALUES ('001', '030');
  INSERT INTO circuito (codigo, seccion_codigo) VALUES ('002', '030');
  INSERT INTO circuito (codigo, seccion_codigo) VALUES ('003', '030');
  INSERT INTO circuito (codigo, seccion_codigo) VALUES ('004', '030');
  INSERT INTO circuito (codigo, seccion_codigo) VALUES ('005', '030');

  CREATE TABLE `usuario` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `usuario` varchar(50) NOT NULL,
    `clave` varchar(255) NOT NULL,
    `nombre` varchar(100) NOT NULL,
    `apellido` varchar(100) NOT NULL,
    `mail` varchar(45) NOT NULL,
    PRIMARY KEY (id)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

  CREATE TABLE `mesa` (
    `codigo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
    `circuito_codigo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
    PRIMARY KEY (codigo),
    CONSTRAINT FK_me_circuito_codigo FOREIGN KEY (circuito_codigo) REFERENCES circuito(codigo)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

  -- armar script para generar las mesas a partir de los circuitos
  INSERT INTO mesa (codigo, circuito_codigo) VALUES ('001', '001');
  INSERT INTO mesa (codigo, circuito_codigo) VALUES ('002', '001');
  INSERT INTO mesa (codigo, circuito_codigo) VALUES ('003', '001');
  INSERT INTO mesa (codigo, circuito_codigo) VALUES ('004', '001');

  CREATE TABLE `agrupacion_politica` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
    PRIMARY KEY (id)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

  INSERT INTO agrupacion_politica (id, nombre) VALUES (1, '1PAIS');
  INSERT INTO agrupacion_politica (id, nombre) VALUES (2, 'UNIDAD CIUDADANA');
  INSERT INTO agrupacion_politica (id, nombre) VALUES (3, 'CAMBIEMOS BUENOS AIRES');
  INSERT INTO agrupacion_politica (id, nombre) VALUES (4, 'FRENTE JUSTICIALISTA-CUMPLIR');
  INSERT INTO agrupacion_politica (id, nombre) VALUES (5, 'FTE. DE IZQUIERDA Y DE LOS TRABAJADORES');
  INSERT INTO agrupacion_politica (id, nombre) VALUES (6, 'JUNTOS POR CHASCOMUS');

  CREATE TABLE `votos_agrupaciones` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `agrupacion_politica_id` int(11) NOT NULL,
    `votos_senadores_nacionales` int(10) NOT NULL,
    `votos_diputados_nacionales` int(10) NOT NULL,
    `votos_senadores_provinciales` int(10) NOT NULL,
    `votos_concejales` int(10) NOT NULL,
    `provincia_id` int(10) NOT NULL, -- Referencia al ID de la tabla de provincias, 02 para provincia de Buenos Aires
    `seccion_codigo` varchar(255) NOT NULL, -- Referencia al codigo de la tabla de secciones
    `circuito_codigo` varchar(255) NOT NULL, -- Referencia al codigo de la tabla de circuitos
    `mesa_codigo` varchar(255) NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT FK_va_agrupacion_politica_id FOREIGN KEY (agrupacion_politica_id) REFERENCES agrupacion_politica(id),
    CONSTRAINT FK_va_provincia_id FOREIGN KEY (provincia_id) REFERENCES provincia(id),
    CONSTRAINT FK_va_seccion_codigo FOREIGN KEY (seccion_codigo) REFERENCES seccion(codigo),
    CONSTRAINT FK_va_circuito_codigo FOREIGN KEY (circuito_codigo) REFERENCES circuito(codigo),
    CONSTRAINT FK_va_mesa_codigo FOREIGN KEY (mesa_codigo) REFERENCES mesa(codigo)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

  INSERT INTO votos_agrupaciones (agrupacion_politica_id, votos_senadores_nacionales, votos_diputados_nacionales, votos_senadores_provinciales, votos_concejales, provincia_id, seccion_codigo, circuito_codigo, mesa_codigo)
  VALUES (1, 50, 46, 45, 72, 2, '030', '001', '001');
  INSERT INTO votos_agrupaciones (agrupacion_politica_id, votos_senadores_nacionales, votos_diputados_nacionales, votos_senadores_provinciales, votos_concejales, provincia_id, seccion_codigo, circuito_codigo, mesa_codigo)
  VALUES (2, 66, 63, 63, 60, 2, '030', '001', '001');
  INSERT INTO votos_agrupaciones (agrupacion_politica_id, votos_senadores_nacionales, votos_diputados_nacionales, votos_senadores_provinciales, votos_concejales, provincia_id, seccion_codigo, circuito_codigo, mesa_codigo)
  VALUES (3, 125, 124, 124, 112, 2, '030', '001', '001');
  INSERT INTO votos_agrupaciones (agrupacion_politica_id, votos_senadores_nacionales, votos_diputados_nacionales, votos_senadores_provinciales, votos_concejales, provincia_id, seccion_codigo, circuito_codigo, mesa_codigo)
  VALUES (4, 8, 8, 7, 8, 2, '030', '001', '001');
  INSERT INTO votos_agrupaciones (agrupacion_politica_id, votos_senadores_nacionales, votos_diputados_nacionales, votos_senadores_provinciales, votos_concejales, provincia_id, seccion_codigo, circuito_codigo, mesa_codigo)
  VALUES (5, 6, 7, 6, 0, 2, '030', '001', '001');
  INSERT INTO votos_agrupaciones (agrupacion_politica_id, votos_senadores_nacionales, votos_diputados_nacionales, votos_senadores_provinciales, votos_concejales, provincia_id, seccion_codigo, circuito_codigo, mesa_codigo)
  VALUES (6, 0, 0, 0, 5, 2, '030', '001', '001');


  CREATE TABLE `tipo_voto` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
    PRIMARY KEY (id)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

  INSERT INTO tipo_voto (id, nombre) VALUES (1, 'Voto nulo');
  INSERT INTO tipo_voto (id, nombre) VALUES (2, 'Voto en blanco');
  INSERT INTO tipo_voto (id, nombre) VALUES (3, 'Voto recurrido');

  CREATE TABLE `otros_votos` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `votos_senadores_nacionales` int(10) NOT NULL,
    `votos_diputados_nacionales` int(10) NOT NULL,
    `votos_senadores_provinciales` int(10) NOT NULL,
    `votos_concejales` int(10) NOT NULL,
    `tipo_voto_id` int(11) NOT NULL, -- Referencia al ID de la tabla tipo_voto
    `provincia_id` int(11) NOT NULL, -- Referencia al ID de la tabla de provincias, 02 para provincia de Buenos Aires
    `seccion_codigo` varchar(255) NOT NULL, -- Referencia al codigo de la tabla de secciones
    `circuito_codigo` varchar(255) NOT NULL, -- Referencia al codigo de la tabla de circuitos
    `mesa_codigo` varchar(255) NOT NULL,  -- Referencia al codigo de la tabla de mesas
    PRIMARY KEY (id),
    CONSTRAINT FK_tipo_voto_id FOREIGN KEY (tipo_voto_id) REFERENCES tipo_voto(id),
    CONSTRAINT FK_provincia_id FOREIGN KEY (provincia_id) REFERENCES provincia(id),
    CONSTRAINT FK_seccion_codigo FOREIGN KEY (seccion_codigo) REFERENCES seccion(codigo),
    CONSTRAINT FK_circuito_codigo FOREIGN KEY (circuito_codigo) REFERENCES circuito(codigo),
    CONSTRAINT FK_mesa_codigo FOREIGN KEY (mesa_codigo) REFERENCES mesa(codigo)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

  INSERT INTO otros_votos (votos_senadores_nacionales, votos_diputados_nacionales, votos_senadores_provinciales, votos_concejales, tipo_voto_id, provincia_id, seccion_codigo, circuito_codigo, mesa_codigo)
  VALUES (0, 0, 0, 0, 1, 2, '030', '001', '001');
  INSERT INTO otros_votos (votos_senadores_nacionales, votos_diputados_nacionales, votos_senadores_provinciales, votos_concejales, tipo_voto_id, provincia_id, seccion_codigo, circuito_codigo, mesa_codigo)
  VALUES (16, 23, 26, 14, 2, 2, '030', '001', '001');
  INSERT INTO otros_votos (votos_senadores_nacionales, votos_diputados_nacionales, votos_senadores_provinciales, votos_concejales, tipo_voto_id, provincia_id, seccion_codigo, circuito_codigo, mesa_codigo)
  VALUES (0, 0, 0, 0, 3, 2, '030', '001', '001');


  -- Crear claves foráneas
