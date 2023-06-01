-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-11-2022 a las 15:11:56
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `eliasleiva`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `quantity` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`) VALUES
(1, 'Mountain bike Battle 210 R29 18\" frenos de disco mecánico cambios Shimano Altus color rojo/negro', 55008, '1.webp'),
(2, 'Bicicleta plegable Futura Origami 2022 R20 7v frenos de disco mecánico cambios Shimano Tourney color', 79234, '2.webp'),
(3, 'Bicicleta urbana femenina Raleigh Classic Lady R28 3v frenos v-brakes color negro con pie de apoyo', 111555, '3.webp'),
(4, 'Mountain bike Raleigh Mojave 2.0 2021 R29 15\" 21v frenos de disco mecánico cambios Shimano color neg', 110555, '4.webp'),
(5, 'Mountain Bike Fierce FM18F29AM210 2019 18 frenos de disco mecánico color negro/celeste', 74009, '5.webp'),
(6, 'Bicicleta Nordic X1.0 By Slp R29 Shim. 21v Disco Susp Oferta', 57098, '6.webp'),
(7, 'Bicicleta Rodado 29 Venzo Thorn Revo Mountain Bike Mtb R29', 222500, '7.webp'),
(8, 'Venzo Phoenix Pro Sensah Reflex 2x8', 169337, '8.webp'),
(9, 'Bicicleta Olmo All Terra Attack-disc. R29 Entrega Gratis Gba', 171212, '9.webp'),
(10, 'Bicicleta Top Mega Harrier R28 Ruta 16v Shima Claris Carrera', 198234, '10.webp'),
(11, 'Inflador De Pie Bicicleta Manometro If5 160psi Multi Valvula', 11444, '11.webp');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_form`
--

CREATE TABLE `user_form` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `user_form`
--

INSERT INTO `user_form` (`id`, `name`, `email`, `password`) VALUES
(6, 'Elias', 'eliaseleiva@sanluis.edu.ar', '149815eb972b3c370dee3b89d645ae14');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user_form`
--
ALTER TABLE `user_form`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `user_form`
--
ALTER TABLE `user_form`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
