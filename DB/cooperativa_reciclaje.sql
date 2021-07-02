--
-- Estructura de tabla para la tabla `material`
--

CREATE TABLE `material` (
  `id` int(50) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `imagen_src` varchar(200) NOT NULL,
  `descripcion` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `material`
--

INSERT INTO `material` (`id`, `nombre`, `imagen_src`, `descripcion`) VALUES
(3, 'Envases de aluminio', '60cb5e61dfccd.jpeg', 'Se aceptarán todo tipo de latas de aluminio. Deben estar secas y aplastadas.'),
(4, 'Envases plásticos', '60cb5dd943915.jpeg', 'Se aceptar plásticos derivados de botellas, (no se aceptarán envases de yogurt o queso blanco). Se deberá entregar limpias, secas y aplastadas.'),
(5, 'Latas de conserva', '60cb6081a6f42.png', 'Se aceptarán todo tipo de latas. Deben estar secas y aplastadas, y no deben contener sus respectivas etiquetas.'),
(6, 'Papel', '60cb5da1a84c6.jpeg', 'Se aceptar cualquier tipo de papel (revistas, diarios, envoltorios, etc.). Se deberá entregar seco y sujetado con hilo.'),
(7, 'Tetrabrik', '60cb5e2ea7fbd.jpeg', 'Todo envase de este material será aceptado (bebidas y alimentos). Deberán ser entregados limpios, secos y aplastados.'),
(12, 'Cartón', '60cb5e9166fc7.jpeg', 'Se aceptar cualquier tipo de cartón (cajas, bolsas que sean de este material, etc.). Se deberá entregar seco, limpio y en el caso de las cajas, tendrán que estar desarmadas. Todo sujetado con hilo.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cartonero`
--

CREATE TABLE `cartonero` (
  `nombre` varchar(200) NOT NULL,
  `apellido` varchar(200) NOT NULL,
  `dni` int(8) NOT NULL,
  `direccion` varchar(200) NOT NULL,
  `fechaNacimiento` varchar(50) NOT NULL,
  `vehiculo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pedido`
--
INSERT INTO `cartonero` (`nombre`, `apellido`, `dni`, `direccion`, `fechaNacimiento`, `vehiculo`) VALUES
('Miguel Angel', 'Gallardo', 23456789, 'Curucuatia 1345', '17/06/1981', 'Automovil'),
('Andres', 'Confortovich', 37234456, 'Del Valle 687', '20/06/1993', 'Moto');
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `id_pedido` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `apellido` varchar(200) NOT NULL,
  `direccion` varchar(200) NOT NULL,
  `telefono` varchar(50) NOT NULL,
  `imagen_src` varchar(500) NOT NULL,
  `franja_horaria` varchar(50) NOT NULL,
  `volumen` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`id_pedido`, `nombre`, `apellido`, `direccion`, `telefono`, `imagen_src`, `franja_horaria`, `volumen`) VALUES
(1, 'Andres', 'Jauregui', 'Maipu 760', '2494323232', '', '13hs - 18hs', 'Entran en un baúl'),
(2, 'Julian', 'Farreh', 'San Martin 120', '2494131313', '', '10hs - 13hs', 'Entran en una caja de camioneta'),
(3, 'Leonardo', 'Gonzales', 'Av. Brasil 500', '2494424242', '', '10hs - 18hs', 'Entran en un baúl'),
(4, 'Mateo', 'Rodriguez', 'Belgrano 205', '2494777777', '', '10hs - 18hs', 'Entran en una caja de camioneta'),
(5, 'Marcela', 'Martinez', 'Las Heras 150', '2494111111', '', '9hs - 14hs', 'Entran en una caja de camioneta'),
(6, 'Susana', 'Perez', 'Lisandro de la Torre 1400', '2494872832', '', '10hs - 15hs', 'Entran en un baúl');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(50) NOT NULL,
  `usuario` varchar(255) NOT NULL,
  `contrasenia` varchar(500) NOT NULL,
  `admin` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `usuario`, `contrasenia`, `admin`) VALUES
(3, 'admin', '$2y$10$1Pu7LZCnKSYnVdlSPeDwrOJWDOkOM.cePH.5NoT70C9IVH8EN4IX.', 1),
(2, 'usuariouno', '$2y$10$/eNzXljMb5JLQUxt69FJuOSYB5cNOa5mrd/chewVhCMU4iwRRvv/S', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carga`
--

CREATE TABLE `carga` (
  `id_carga` int(50) NOT NULL,
  `dni` int(8) NOT NULL,
  `tipo_material` varchar(50) NOT NULL,
  `kilogramos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--
-- Volcado de datos para la tabla `carga`
--

INSERT INTO `carga` (`id_carga`,`dni`,`tipo_material`, `kilogramos`) VALUES
(0, 23456789, 'Vidrio', 1234),
(1, 23456789, 'Cartón', 257),
(2, 37234456, 'Tetrabrik', 15),
(3, 23456789, 'Envases plásticos', 3400);

-- --------------------------------------------------------

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `carga`
--
ALTER TABLE `carga`
  ADD PRIMARY KEY (`id_carga`);
--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`id_pedido`);
--
-- Indices de la tabla `pedido`
--
ALTER TABLE `cartonero`
  ADD PRIMARY KEY (`dni`);
--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `material`
--
ALTER TABLE `material`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `carga`
--
ALTER TABLE `carga`
  MODIFY `id_carga` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
  
--
-- FOREIGN KEY de la tabla `carga`
--
ALTER TABLE `carga`
  ADD CONSTRAINT `CARTONERO_X_CARGA` FOREIGN KEY (`dni`) REFERENCES `cartonero` (`dni`) ON DELETE CASCADE ON UPDATE CASCADE;

COMMIT;
