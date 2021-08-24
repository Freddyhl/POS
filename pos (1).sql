-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-08-2021 a las 20:46:23
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`, `fecha`) VALUES
(1, 'Resortes', '2018-11-19 15:39:23'),
(2, 'Amortiguadores', '2018-11-19 15:44:14'),
(3, 'Rotulas', '2018-12-03 07:36:14'),
(4, 'computadoras', '2021-08-22 18:42:36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `documento` int(11) NOT NULL,
  `email` text COLLATE utf8_spanish_ci NOT NULL,
  `telefono` text COLLATE utf8_spanish_ci NOT NULL,
  `direccion` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `compras` int(11) NOT NULL,
  `ultima_compra` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `documento`, `email`, `telefono`, `direccion`, `fecha_nacimiento`, `compras`, `ultima_compra`, `fecha`) VALUES
(14, 'Maria Ardaya Servigon', 15614815, 'mara@gmail.com', '(51) 789-456-123', 'av. los ladrones son fichas', '1999-04-08', 5, '2018-12-10 14:32:47', '2018-12-10 19:38:13'),
(15, 'Pedro Abanto Tunque', 14561665, 'pedro@gmail.com', '(51) 561-652-144', 'av. los chinos come gatos', '1999-06-08', 3, '2018-12-10 14:41:47', '2018-12-10 19:47:13'),
(16, 'Lily Rodriguez Bejarano', 16946545, 'lily@gmail.com', '(51) 561-626-598', 'av. calle jiron come gato', '1999-08-30', 2, '2018-12-10 14:28:45', '2018-12-10 19:34:11'),
(17, 'Elena Barrios Altos', 55615616, 'elena@gmail.com', '(51) 564-115-151', 'los girasoles 548', '1999-12-12', 3, '2018-12-10 10:01:20', '2018-12-10 15:06:46'),
(18, 'Camila Soraya Velardes', 96149883, 'cami@gmail.com', '(51) 515-155-152', 'villa el salvador', '1975-05-03', 66, '2018-12-10 14:26:57', '2018-12-10 19:32:23'),
(19, 'Fernando Polanco Solgorre', 54894961, 'Fer@gmail.com', '(51) 340-343-186', 'villa maria', '1999-06-18', 2, '2018-12-10 14:27:58', '2018-12-10 19:33:24'),
(20, 'Michael Paucas Navarro', 16516421, 'mich@gmial.com', '(51) 443-513-445', 'chorrillos ', '1996-12-01', 0, '0000-00-00 00:00:00', '2018-12-03 07:48:35'),
(21, 'Alexandra Chevez Trocones', 32659842, 'ale@gmail.com', '(51) 646-116-316', 'Galvez', '1999-07-03', 9, '2018-12-10 14:53:40', '2018-12-10 19:59:06'),
(23, 'Michael Paucas Navarro', 70929645, 'michael@gmail.com', '(51) 992-464-643', 'villa el salvador', '1996-06-14', 0, '0000-00-00 00:00:00', '2018-12-06 21:48:20'),
(24, 'Freddy', 44768902, 'freddy@gmail.com', '(51) 998-745-444', 'callao', '1999-08-28', 0, '0000-00-00 00:00:00', '2021-08-22 18:44:38');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `codigo` text COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  `imagen` text COLLATE utf8_spanish_ci NOT NULL,
  `stock` int(11) NOT NULL,
  `precio_compra` float NOT NULL,
  `precio_venta` float NOT NULL,
  `ventas` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `id_categoria`, `codigo`, `descripcion`, `imagen`, `stock`, `precio_compra`, `precio_venta`, `ventas`, `fecha`) VALUES
(61, 2, '208', 'AMORTIGUADOR ASIA TOWNER CHANGE DELT LH HID ATSUKI', 'vistas/img/productos/208/967.jpg', 20, 68, 78.2, 2, '2018-12-03 07:50:14'),
(62, 2, '209', 'AMORTIGUADOR TY LAND CRUISER PRADO', 'vistas/img/productos/209/878.jpg', 12, 54, 62.1, 2, '2018-12-03 07:45:12'),
(63, 2, '210', 'AMORTIGUADOR ASIA TOWNER CHANGE DELT RH HID ATSUKI', 'vistas/img/productos/210/876.jpg', 7, 34, 39.1, 3, '2018-12-10 19:37:28'),
(64, 2, '211', 'AMORTIGUADOR CARTUCHO NS BLUEBIRD U12 POST GAS', 'vistas/img/productos/211/679.jpg', 65, 49, 56.35, 9, '2018-12-03 07:50:55'),
(66, 2, '213', 'AMORTIGUADOR CARTUCHO TY COROLLA 2C EHE LARGO DELT GAS ', 'vistas/img/productos/213/442.jpg', 14, 84, 96.6, 0, '2018-12-03 07:44:29'),
(67, 1, '101', 'RESORTE CARTUCHO TY COROLLA 73874 DELT  GAS ', 'vistas/img/productos/101/275.jpg', 82, 78, 89.7, 5, '2018-12-03 07:50:55'),
(68, 1, '102', 'RESORTE CHEV AVEO 0516 SAIL 1015 DEL LH GAS ATSUKI ', 'vistas/img/productos/102/485.jpg', 61, 99, 111.87, 3, '2018-12-10 19:38:13'),
(69, 1, '103', 'RESORTE CHEV AVEO 0516 SAIL 1015 DELT LH GAS MANDO', 'vistas/img/productos/103/620.jpg', 41, 90, 99, 9, '2018-12-10 19:47:13'),
(70, 1, '104', 'RESORTE CHEV AVEO 0516 SAIL 1015 DELT LH GAS STP', 'vistas/img/productos/104/226.jpg', 33, 70, 73.5, 8, '2018-12-10 19:59:06'),
(71, 2, '214', 'AMORTIGUADOR CHEV CAPTIVA 1114 DELT LH GAS ATSUKI', 'vistas/img/productos/214/545.jpg', 0, 56, 61.6, 51, '2018-12-06 22:30:27'),
(72, 4, '401', 'monitor', 'vistas/img/productos/default/anonymous.png', 50, 3, 5000, 0, '2021-08-22 18:43:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `usuario` text COLLATE utf8_spanish_ci NOT NULL,
  `password` text COLLATE utf8_spanish_ci NOT NULL,
  `perfil` text COLLATE utf8_spanish_ci NOT NULL,
  `foto` text COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `ultimo_login` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `usuario`, `password`, `perfil`, `foto`, `estado`, `ultimo_login`, `fecha`) VALUES
(1, 'Alexander Aguilar Chavez', 'admin', '$2a$07$asxx54ahjppf45sd87a5auFL5K1.Cmt9ZheoVVuudOi5BCi10qWly', 'Administrador', 'vistas/img/usuarios/admin/824.jpg', 1, '2021-08-22 13:38:02', '2021-08-22 18:38:03'),
(62, 'Alejandro Aguilar Solano', 'AAGUILAR', '$2a$07$asxx54ahjppf45sd87a5auCOxwgGSwgz7rt1HTREyUAy1ZZw1Yfxm', 'Administrador', 'vistas/img/usuarios/AAGUILAR/337.jpg', 1, '2019-05-24 18:34:50', '2019-05-24 23:34:58'),
(63, 'Vivian Carhuancho Carlos', 'VCARHUANCHO', '$2a$07$asxx54ahjppf45sd87a5auCOxwgGSwgz7rt1HTREyUAy1ZZw1Yfxm', 'Vendedor', 'vistas/img/usuarios/VCARHUANCHO/451.jpg', 1, '2018-12-06 16:02:42', '2018-12-06 21:08:04'),
(64, 'Raul Aguilar Gonzales', 'RAGUILAR', '$2a$07$asxx54ahjppf45sd87a5auCOxwgGSwgz7rt1HTREyUAy1ZZw1Yfxm', 'Almacenero', 'vistas/img/usuarios/RAGUILAR/885.jpg', 1, '2018-12-03 11:44:57', '2018-12-06 21:12:02'),
(65, 'Cerafin Aguilar Solano', 'CAGUILAR', '$2a$07$asxx54ahjppf45sd87a5auCOxwgGSwgz7rt1HTREyUAy1ZZw1Yfxm', 'Almacenero', 'vistas/img/usuarios/CAGUILAR/499.jpg', 1, '0000-00-00 00:00:00', '2018-12-03 17:10:17'),
(66, 'Alexander Aguilar Chavez', 'admin', '$2a$07$asxx54ahjppf45sd87a5auFL5K1.Cmt9ZheoVVuudOi5BCi10qWly', 'Administrador', 'vistas/img/usuarios/admin/824.jpg', 1, '2021-08-22 20:29:03', '2021-08-22 18:37:28'),
(67, 'freddy', 'freddy', '$2a$07$asxx54ahjppf45sd87a5aumUskocpQucMnvwsUt.aC6WLWGcLNcY6', 'Administrador', '', 0, '0000-00-00 00:00:00', '2021-08-22 18:43:44');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `productos` text COLLATE utf8_spanish_ci NOT NULL,
  `impuesto` float NOT NULL,
  `neto` float NOT NULL,
  `total` float NOT NULL,
  `metodo_pago` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `codigo`, `id_cliente`, `id_vendedor`, `productos`, `impuesto`, `neto`, `total`, `metodo_pago`, `fecha`) VALUES
(38, 10002, 14, 1, '[{\"id\":\"62\",\"descripcion\":\"AMORT TY LAND CRUISER PRADO\",\"cantidad\":\"1\",\"stock\":\"12\",\"precio\":\"62.1\",\"total\":\"62.1\"},{\"id\":\"61\",\"descripcion\":\"AMORT ASIA TOWNER CHANGE DELT LH HID ATSUKI\",\"cantidad\":\"1\",\"stock\":\"21\",\"precio\":\"78.2\",\"total\":\"78.2\"},{\"id\":\"63\",\"descripcion\":\"AMORT ASIA TOWNER CHANGE DELT RH HID ATSUKI\",\"cantidad\":\"1\",\"stock\":\"1\",\"precio\":\"39.1\",\"total\":\"39.1\"}]', 26.91, 179.4, 206.31, 'Efectivo', '2018-11-15 15:56:36'),
(41, 10003, 21, 63, '[{\"id\":\"61\",\"descripcion\":\"AMORTIGUADOR ASIA TOWNER CHANGE DELT LH HID ATSUKI\",\"cantidad\":\"1\",\"stock\":\"20\",\"precio\":\"78.2\",\"total\":\"78.2\"},{\"id\":\"64\",\"descripcion\":\"AMORTIGUADOR CARTUCHO NS BLUEBIRD U12 POST GAS\",\"cantidad\":\"5\",\"stock\":\"68\",\"precio\":\"56.35\",\"total\":\"281.75\"}]', 64.791, 359.95, 424.741, 'Efectivo', '2018-12-03 07:50:15'),
(42, 10004, 18, 63, '[{\"id\":\"67\",\"descripcion\":\"RESORTE CARTUCHO TY COROLLA 73874 DELT  GAS \",\"cantidad\":\"5\",\"stock\":\"82\",\"precio\":\"89.7\",\"total\":\"448.5\"},{\"id\":\"64\",\"descripcion\":\"AMORTIGUADOR CARTUCHO NS BLUEBIRD U12 POST GAS\",\"cantidad\":\"3\",\"stock\":\"65\",\"precio\":\"56.35\",\"total\":\"169.05\"}]', 111.159, 617.55, 728.709, 'Efectivo', '2018-12-03 07:50:56'),
(43, 10005, 18, 1, '[{\"id\":\"69\",\"descripcion\":\"RESORTE CHEV AVEO 0516 SAIL 1015 DELT LH GAS MANDO\",\"cantidad\":\"5\",\"stock\":\"45\",\"precio\":\"99\",\"total\":\"495\"}]', 0, 495, 495, 'Efectivo', '2018-12-04 17:40:45'),
(44, 10006, 18, 1, '[{\"id\":\"71\",\"descripcion\":\"AMORTIGUADOR CHEV CAPTIVA 1114 DELT LH GAS ATSUKI\",\"cantidad\":\"25\",\"stock\":\"0\",\"precio\":\"61.6\",\"total\":\"1540\"}]', 277.2, 1540, 1817.2, 'Efectivo', '2018-12-06 22:30:27'),
(45, 10006, 18, 1, '[{\"id\":\"71\",\"descripcion\":\"AMORTIGUADOR CHEV CAPTIVA 1114 DELT LH GAS ATSUKI\",\"cantidad\":\"25\",\"stock\":\"0\",\"precio\":\"61.6\",\"total\":\"1540\"}]', 277.2, 1540, 1817.2, 'Efectivo', '2018-12-06 22:30:28'),
(46, 10007, 17, 1, '[{\"id\":\"70\",\"descripcion\":\"RESORTE CHEV AVEO 0516 SAIL 1015 DELT LH GAS STP\",\"cantidad\":\"1\",\"stock\":\"39\",\"precio\":\"73.5\",\"total\":\"73.5\"}]', 13.23, 73.5, 86.73, 'Efectivo', '2018-12-10 15:03:00'),
(47, 10007, 17, 1, '[{\"id\":\"70\",\"descripcion\":\"RESORTE CHEV AVEO 0516 SAIL 1015 DELT LH GAS STP\",\"cantidad\":\"1\",\"stock\":\"39\",\"precio\":\"73.5\",\"total\":\"73.5\"}]', 13.23, 73.5, 86.73, 'Efectivo', '2018-12-10 15:06:46'),
(48, 10008, 16, 1, '[{\"id\":\"70\",\"descripcion\":\"RESORTE CHEV AVEO 0516 SAIL 1015 DELT LH GAS STP\",\"cantidad\":\"1\",\"stock\":\"38\",\"precio\":\"73.5\",\"total\":\"73.5\"}]', 13.23, 73.5, 86.73, 'Efectivo', '2018-12-10 15:07:16'),
(49, 10009, 14, 1, '[{\"id\":\"69\",\"descripcion\":\"RESORTE CHEV AVEO 0516 SAIL 1015 DELT LH GAS MANDO\",\"cantidad\":\"1\",\"stock\":\"44\",\"precio\":\"99\",\"total\":\"99\"}]', 17.82, 99, 116.82, 'Efectivo', '2018-12-10 15:07:42'),
(50, 10010, 18, 1, '[{\"id\":\"70\",\"descripcion\":\"RESORTE CHEV AVEO 0516 SAIL 1015 DELT LH GAS STP\",\"cantidad\":\"1\",\"stock\":\"37\",\"precio\":\"73.5\",\"total\":\"73.5\"}]', 13.23, 73.5, 86.73, 'Efectivo', '2018-12-10 15:08:33'),
(51, 10011, 15, 1, '[{\"id\":\"70\",\"descripcion\":\"RESORTE CHEV AVEO 0516 SAIL 1015 DELT LH GAS STP\",\"cantidad\":\"1\",\"stock\":\"36\",\"precio\":\"73.5\",\"total\":\"73.5\"}]', 13.23, 73.5, 86.73, 'Efectivo', '2018-12-10 15:08:58'),
(52, 10012, 18, 1, '[{\"id\":\"68\",\"descripcion\":\"RESORTE CHEV AVEO 0516 SAIL 1015 DEL LH GAS ATSUKI \",\"cantidad\":\"2\",\"stock\":\"62\",\"precio\":\"111.87\",\"total\":\"223.74\"}]', 40.2732, 223.74, 264.013, 'Efectivo', '2018-12-10 19:32:23'),
(53, 10013, 19, 1, '[{\"id\":\"70\",\"descripcion\":\"RESORTE CHEV AVEO 0516 SAIL 1015 DELT LH GAS STP\",\"cantidad\":\"1\",\"stock\":\"35\",\"precio\":\"73.5\",\"total\":\"73.5\"}]', 13.23, 73.5, 86.73, 'Efectivo', '2018-12-10 19:33:25'),
(54, 10013, 16, 1, '[{\"id\":\"69\",\"descripcion\":\"RESORTE CHEV AVEO 0516 SAIL 1015 DELT LH GAS MANDO\",\"cantidad\":\"1\",\"stock\":\"43\",\"precio\":\"99\",\"total\":\"99\"}]', 17.82, 99, 116.82, 'Efectivo', '2018-12-10 19:34:11'),
(55, 10014, 21, 1, '[{\"id\":\"69\",\"descripcion\":\"RESORTE CHEV AVEO 0516 SAIL 1015 DELT LH GAS MANDO\",\"cantidad\":\"1\",\"stock\":\"42\",\"precio\":\"99\",\"total\":\"99\"}]', 17.82, 99, 116.82, 'Efectivo', '2018-12-10 19:35:42'),
(56, 10014, 15, 1, '[{\"id\":\"63\",\"descripcion\":\"AMORTIGUADOR ASIA TOWNER CHANGE DELT RH HID ATSUKI\",\"cantidad\":\"1\",\"stock\":\"7\",\"precio\":\"39.1\",\"total\":\"39.1\"}]', 7.038, 39.1, 46.138, 'Efectivo', '2018-12-10 19:37:29'),
(57, 10015, 14, 1, '[{\"id\":\"68\",\"descripcion\":\"RESORTE CHEV AVEO 0516 SAIL 1015 DEL LH GAS ATSUKI \",\"cantidad\":\"1\",\"stock\":\"61\",\"precio\":\"111.87\",\"total\":\"111.87\"}]', 20.1366, 111.87, 132.007, 'Efectivo', '2018-12-10 19:38:13'),
(58, 10016, 15, 1, '[{\"id\":\"69\",\"descripcion\":\"RESORTE CHEV AVEO 0516 SAIL 1015 DELT LH GAS MANDO\",\"cantidad\":\"1\",\"stock\":\"41\",\"precio\":\"99\",\"total\":\"99\"}]', 17.82, 99, 116.82, 'Efectivo', '2018-12-10 19:47:13'),
(59, 10017, 21, 1, '[{\"id\":\"70\",\"descripcion\":\"RESORTE CHEV AVEO 0516 SAIL 1015 DELT LH GAS STP\",\"cantidad\":\"2\",\"stock\":\"33\",\"precio\":\"73.5\",\"total\":\"147\"}]', 26.46, 147, 173.46, 'Efectivo', '2018-12-10 19:59:07');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
