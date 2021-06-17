-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-06-2021 a las 15:57:43
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cooperativa_reciclaje`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carga`
--

CREATE TABLE `carga` (
  `tipo_material` varchar(50) NOT NULL,
  `kilogramos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `carga`
--

INSERT INTO `carga` (`tipo_material`, `kilogramos`) VALUES
('Vidrio', 1234),
('Cartón', 257);

-- --------------------------------------------------------

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
(3, 'Envases de aluminio', 'https://www.ambientum.com/wp-content/uploads/2019/11/envases-latas-696x460.jpg', 'Se aceptarán todo tipo de latas de aluminio. Deben estar secas y aplastadas.'),
(4, 'Envases plásticos', 'https://ichef.bbci.co.uk/news/640/cpsprodpb/C6DF/production/_97011905_gettyimages-103583960-1.jpg', 'Se aceptar plásticos derivados de botellas, (no se aceptarán envases de yogurt o queso blanco). Se deberá entregar limpias, secas y aplastadas.'),
(5, 'Latas de conserva', 'https://i.blogs.es/7e2930/reciclar8/1366_2000.jpg', 'Se aceptarán todo tipo de latas. Deben estar secas y aplastadas, y no deben contener sus respectivas etiquetas.'),
(6, 'Papel', 'https://www.elagoradiario.com/wp-content/uploads/2019/07/Monta%C3%B1a-de-papel-1140x600.jpg', 'Se aceptar cualquier tipo de papel (revistas, diarios, envoltorios, etc.). Se deberá entregar seco y sujetado con hilo.'),
(7, 'Tetrabrik', 'https://www.expoknews.com/wp-content/uploads/2019/05/Reciclado-de-tetrapack-en-buen-camino-pero-con-grandes-retos-1.jpg', 'Todo envase de este material será aceptado (bebidas y alimentos). Deberán ser entregados limpios, secos y aplastados.'),
(8, 'Chapa', '60caa9943e40c.png', 'jfdhjhfdjhjfdhn'),
(10, 'Leandro Javier', '60cab57598156.png', 'jfdhjhfdjhjfdhn');

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
(0, 'admin3', '$2y$10$Izpndp/bKfhhY5Xm7JtfmuwAwGAALJRFz9laGuFT9tJGrgYa.x4Wm', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`id_pedido`);

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
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
