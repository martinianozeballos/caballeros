-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-11-2026 a las 19:20:05
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
-- Base de datos: `caballeros_zodiaco`
--
CREATE DATABASE IF NOT EXISTS `caballeros_zodiaco` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `caballeros_zodiaco`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `afiliaciones`
--

CREATE TABLE `afiliaciones` (
  `id` int(11) NOT NULL,
  `nombre` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `afiliaciones`
--

INSERT INTO `afiliaciones` (`id`, `nombre`) VALUES
(1, 'Athena'),
(2, 'Gran Patriarca'),
(3, 'Santos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `nombre` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id`, `nombre`) VALUES
(1, 'Oro'),
(2, 'Plata'),
(3, 'Bronce'),
(7, 'Otros');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personajes`
--

CREATE TABLE `personajes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `tecnicas_principales` varchar(60) NOT NULL,
  `edad` int(11) NOT NULL,
  `altura` decimal(10,2) NOT NULL,
  `peso` int(11) NOT NULL,
  `genero` varchar(30) DEFAULT NULL,
  `descripcion` text NOT NULL,
  `imagen` varchar(150) NOT NULL,
  `categorias_id` int(11) NOT NULL,
  `afiliacion_id` int(11) NOT NULL,
  `lugar_nacimiento` varchar(30) NOT NULL,
  `constelaciones` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `personajes`
--

INSERT INTO `personajes` (`id`, `nombre`, `tecnicas_principales`, `edad`, `altura`, `peso`, `genero`, `descripcion`, `imagen`, `categorias_id`, `afiliacion_id`, `lugar_nacimiento`, `constelaciones`) VALUES
(1, 'Seiya de Pegaso', 'Meteoro de Pegaso, Puño de Cometa de Pegaso', 13, 1.65, 53, 'Masculino', 'Seiya (星矢, Seiya) es el personaje principal de la serie de manga y anime Saint Seiya y el Saint de Pegasus durante las Guerras Santas en el siglo XX hasta antes de los eventos ocurridos en Next Dimension. Es la reencarnación del pasado Bronze Saint de Pegasus Tenma y del \"Primer Pegasus\", el primer humano en herir al dios Hades desde la era mitológica.', 'seiya.jpg', 3, 1, 'Japon', 'Pegaso'),
(3, 'Shun ', 'Tormenta Nebular', 13, 1.65, 51, 'Masculino', 'Shun (瞬, Shun) es el Bronze Saint de la constelación de Andromeda y uno de los protagonistas de la serie. Se caracteriza por su personalidad pacifista, su carácter delicado y porque no le gusta herir a las demás personas. Tiene un gran poder, pero su gentil disposición y naturaleza amable tienden a detenerlo de usarlo del todo, hasta que se ve obligado a hacerlo. Es el hermano menor de Ikki, el Santo de Fénix. Shun es el humano que posee el alma más pura, y es por eso que Hades le escoge como su huésped', 'shun.jpg', 3, 1, 'Japon', 'Andromeda'),
(5, 'Ikki', 'Puño fantasma del fenix', 15, 1.75, 62, 'Masculino', 'Ikki (一輝, Ikki) es el Saint de la constelación de Phoenix. Es uno de los protagonistas en Saint Seiya y en Saint Seiya: Next Dimension. Se caracteriza por tener el cosmos más agresivo y violento entre los Saints. Acostumbra andar separado del resto de los Bronze Saints, sin embargo siempre aparece oportunamente en los momentos de necesidad. Se considera a sí mismo un lobo solitario que no le interesa andar en grupos. A pesar de que se introdujo más tarde que los otros cuatro Bronze Saints principales, el rol de Ikki en la historia es bastante significativo. Además, actúa como el primer antagonista de la serie que los demás Saints deben derrotar, así como un poderoso aliado más adelante en la serie', 'ikki.jpg', 3, 1, 'Japon', 'Fenix'),
(6, 'Shiryu', 'Dragon ascendente', 14, 1.72, 53, 'Masculino', 'Shiryū (紫龍, Shiryū) es el Santo de Bronce de Dragón durante las Guerras Santas en el Siglo XX (1990). Shiryū es considerado como el más prudente y sabio de los Santos de Bronce - siendo que fue discípulo del gran anciano maestro Dohko de Libra - y es uno de los personajes principales de la serie del manga y anime Saint Seiya, conocido como Los Caballeros del Zodiaco.\r\n', 'shiryu.png', 3, 1, 'Japon', 'Dragon'),
(7, 'Marin de aguila', 'Puño de meteoro', 16, 1.67, 51, 'Femenino', 'Marin (魔鈴, Marin) es uno de los dos personajes femeninos secundarios de mayor relevancia en la historia junto con Shaina. Es la Santa de Plata de Eagle en el siglo XX. Como Santa, debe renunciar a su feminidad ocultando su rostro bajo una máscara. Entrenó a Seiya hasta que éste se convirtió en un Santo de Bronce al obtener la Cloth de Pegasus.', 'marin.jpg', 2, 1, 'Japon', 'Aguila'),
(8, 'Shaina', 'Garra de trueno', 16, 1.66, 49, 'Femenino', '', 'shaina.jpg', 2, 1, 'Italia', 'Ofiuco'),
(9, 'Misty ', 'Manipulacion de las corrientes de aire', 16, 1.80, 68, 'Masculino', 'Misty (ミスティ, Misuti) es el Santo de Plata de Lizard durante la Guerra entre el Santuario y los Titanes y posteriormente en la guerra por el Santuario que estaba bajo el control de Saga de Gemini, es el primer Santo de Plata que se presenta oficialmente con este título tanto en el anime como en el manga; enviado por el Patriarca, para acabar con los Bronze Saints. Es un personaje narcisista y bastante confiado con sus habilidades', 'misty.jpg', 2, 1, 'Francia', 'Lagarto'),
(10, 'Moses', 'Fuerza fisica', 17, 2.05, 130, 'Masculino', 'Moses (モーゼス, Mōzesu) es el Silver Saint de la constelación de Whale, al servicio de Athena y del Santuario durante el siglo XX (1990). Es un guerrero que posee un cuerpo musculoso y un gran poder, comparable al de una ballena. Además, es experto en la técnica de lanzar a sus oponentes hacia arriba. Formó parte del primer escuadrón de Silver Saints enviados por el Papa con la misión de eliminar a los Bronze Saints que participaban en la Galaxian Wars', 'moses.jpg', 2, 1, 'Nueva Zelanda', 'Ballena'),
(11, 'Asterion', 'Millon de fantasmas', 16, 1.83, 75, 'Masculino', 'Asterion (アステリオン, asuterion) fue el Silver Saint de la constelación de Canes Venatici durante la Guerra por el Santuario entre Athena y Saga.\r\n', 'asterion.jpg', 2, 1, 'Dinamarca', 'Perros de caza'),
(12, 'Mu', 'Stardust Revolution, Crystal Wall, Starlight Extinction', 20, 1.82, 75, 'Masculino', 'Mu (ムウ, Mu) es el Gold Saint de Aries. Es un maestro en el arte de la reparación de Cloths y discípulo del anterior Pontífice, Shion de Aries.', 'mu.jpg', 2, 1, 'Tíbet', 'Aries'),
(13, 'Aldebaran', 'Great Horn', 20, 2.10, 130, 'Masculino', 'Aldebaran (アルデバラン, Arudebaran) es el Gold Saint de Tauro. Destaca por su inmensa fuerza física y su sentido del honor en el combate.', 'aldebaran.jpg', 2, 1, 'Brasil', 'Tauro'),
(14, 'Saga', 'Galaxian Explosion, Another Dimension, Genrō Maōken', 28, 1.88, 87, 'Masculino', 'Saga (サガ, Saga) es el Gold Saint de Géminis. Posee una personalidad dividida entre el bien y el mal extremo, habiendo usurpado el trono del Pontífice.', 'saga.jgp', 2, 1, 'Grecia', 'Géminis'),
(15, 'Deathmask', 'Sekishiki Meikai Ha', 23, 1.84, 82, 'Masculino', 'Deathmask (デスマスク, Desumasuku) es el Gold Saint de Cáncer. Mantiene las cabezas de sus víctimas como trofeos en el Templo del Cáncer.', 'death.jfif', 2, 1, 'Italia', 'Cáncer'),
(16, 'Aiolia', 'Lightning Plasma, Lightning Bolt', 20, 1.85, 85, 'Masculino', 'Aiolia (アイオリア, Aioria) es el Gold Saint de Leo y hermano menor de Aiolos. Es impulsivo, noble y profundamente fiel a la justicia.', 'aiolia.jpg', 2, 1, 'Grecia', 'Leo'),
(17, 'Shaka', 'Tenbu Hōrin, Tenma Kōfuku, Rikudō Rinne', 20, 1.82, 68, 'Masculino', 'Shaka (シャカ, Shaka) es el Gold Saint de Virgo, conocido como el hombre más cercano a Dios por su elevado cosmos y dominio del octavo sentido.', 'shaka.jpg', 2, 1, 'India', 'Virgo'),
(18, 'Dohko', 'Rozan Hyakuryū Ha', 261, 1.40, 0, 'Masculino', 'Dohko (童虎, Dōko) es el Gold Saint de Libra y superviviente de la anterior Guerra Santa. Custodió las armas de Libra y el sello de Hades en los Cinco Picos.', 'dohko.jpg', 2, 1, 'China', 'Libra'),
(19, 'Milo', 'Scarlet Needle, Antares', 20, 1.85, 84, 'Masculino', 'Milo (ミロ, Miro) es el Gold Saint de Escorpio. Orgulloso y apasionado, otorga a sus oponentes la oportunidad de rendirse antes de infligir la última aguja.', 'milo.jpg', 2, 1, 'Grecia', 'Escorpio'),
(20, 'Aiolos', 'Atomic Thunderbolt', 14, 1.87, 85, 'Masculino', 'Aiolos (アイオロス, Aiorosu) fue el Gold Saint de Sagitario que salvó a la bebé Athena de ser asesinada por Saga, sacrificando su vida por la diosa.', 'aiolos.jpg', 2, 1, 'Grecia', 'Sagitario'),
(21, 'Shura', 'Excalibur, Jumping Stone', 23, 1.86, 83, 'Masculino', 'Shura (シュラ, Shura) es el Gold Saint de Capricornio. Posee la espada sagrada Excalibur alojada en sus extremidades y se considera el caballero más fiel a Athena.', 'shura.jpg', 2, 1, 'España', 'Capricornio'),
(22, 'Camus', 'Aurora Execution, Diamond Dust, Freezing Coffin', 20, 1.84, 76, 'Masculino', 'Camus (カミュ, Kamyu) es el Gold Saint de Acuario y maestro de Hyōga. Mantiene una actitud fría e impasible para dominar el cero absoluto.', 'camus.jpg', 2, 1, 'Francia', 'Acuario'),
(23, 'Aphrodite', 'Royal Demon Rose, Piranhan Rose, Bloody Rose', 22, 1.83, 72, 'Masculino', 'Aphrodite (アフロディーテ, Afurodīte) es el Gold Saint de Piscis. Un guerrero de extraordinaria belleza que combate mediante rosas impregnadas de veneno.', 'afrodita.jpg', 2, 1, 'Suecia', 'Piscis');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `afiliaciones`
--
ALTER TABLE `afiliaciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `personajes`
--
ALTER TABLE `personajes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_categorias` (`categorias_id`),
  ADD KEY `fk_afilia` (`afiliacion_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `afiliaciones`
--
ALTER TABLE `afiliaciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `personajes`
--
ALTER TABLE `personajes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `personajes`
--
ALTER TABLE `personajes`
  ADD CONSTRAINT `fk_afilia` FOREIGN KEY (`afiliacion_id`) REFERENCES `afiliaciones` (`id`),
  ADD CONSTRAINT `fk_categorias` FOREIGN KEY (`categorias_id`) REFERENCES `categoria` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
