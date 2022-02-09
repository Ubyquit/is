-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 09-02-2022 a las 18:31:33
-- Versión del servidor: 10.3.32-MariaDB-log-cll-lve
-- Versión de PHP: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `youriqum_IS`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caloria`
--

CREATE TABLE `caloria` (
  `id_calorias` int(11) NOT NULL,
  `nombreCal` varchar(50) NOT NULL,
  `inicioCal` int(10) NOT NULL,
  `finalCal` int(10) NOT NULL,
  `imgCal` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuationario`
--

CREATE TABLE `cuationario` (
  `id_cuationario` int(11) NOT NULL,
  `usuario_id_usuario` int(11) NOT NULL,
  `q1` varchar(50) NOT NULL,
  `q1c` varchar(50) NOT NULL,
  `q2` varchar(50) NOT NULL,
  `q3` varchar(50) NOT NULL,
  `q3c` varchar(500) NOT NULL,
  `q4` varchar(50) NOT NULL,
  `q5` varchar(50) NOT NULL,
  `q6` varchar(50) NOT NULL,
  `q7` varchar(50) NOT NULL,
  `q8` varchar(50) NOT NULL,
  `q9` varchar(50) NOT NULL,
  `q9c` varchar(50) NOT NULL,
  `estatusCuestionario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cuationario`
--

INSERT INTO `cuationario` (`id_cuationario`, `usuario_id_usuario`, `q1`, `q1c`, `q2`, `q3`, `q3c`, `q4`, `q5`, `q6`, `q7`, `q8`, `q9`, `q9c`, `estatusCuestionario`) VALUES
(79, 1, 'SI', 'ninguna', 'Nada', 'SI', 'MuÃ±eca', 'Nada', 'NO', '3', 'NO', '3', 'SI', 'TKD', 1),
(80, 198, 'NO', '', 'Diabetes', 'NO', '', 'Nada', '', '3', 'SI', '2 l', 'NO', '', 1),
(81, 216, 'SI', 'Asma', 'Diabetes', 'NO', '', 'Nada', 'Dolor en rodilla', '2', 'SI', '2 litros ', 'NO', '', 1),
(82, 202, 'NO', 'Ninguna', 'Nada', 'NO', 'No', 'Nada', 'No', '3', 'SI', '1 1/2', 'NO', 'Ahora, ninguna', 1),
(83, 178, 'NO', '', 'Diabetes', 'SI', 'Hice recuperaciÃ³n, pero ya puedo hacer cualquier actividad', 'Nada', '', '3', 'SI', '2', 'SI', 'Corro', 1),
(84, 201, 'NO', 'Ninguna', 'Diabetes', 'NO', 'No', 'Sufres mareos', 'No', '5', 'SI', '2 aprox', 'NO', 'Ninguna', 1),
(85, 179, 'NO', '', 'Nada', 'NO', '', 'Nada', 'Ninguno', '3', 'NO', '2', 'NO', '', 1),
(86, 215, 'NO', '', 'CÃ¡ncer', 'NO', '', 'Nada', 'No', '3', 'SI', 'Entre 1 a 1.5', 'NO', '', 1),
(87, 209, 'SI', '', 'Nada', 'SI', 'No', 'Nada', 'No', '3', 'SI', '2', 'NO', '', 1),
(88, 170, 'NO', '', 'Nada', 'SI', '', 'Nada', '', '3', 'SI', '2', 'NO', '', 1),
(89, 183, 'NO', '', 'Nada', 'SI', '', 'Nada', 'Tendinitis hombrÃ­a izquierdo ', '3', 'SI', '1 y medio', 'NO', '', 1),
(90, 185, 'NO', '', 'Diabetes', 'NO', '', 'Nada', 'Ninguna', '3', 'SI', '1', 'NO', '', 1),
(91, 195, 'NO', '', 'HipertensiÃ³n', 'SI', 'No', 'Nada', 'En las rodillas, me duelen despuÃ©s de muchos brin', '3', 'SI', '1', 'NO', '', 1),
(92, 194, 'NO', '', 'Diabetes', 'SI', 'NO', 'Sufres mareos', 'SI, EN MI TOBILLO DERECHO', '2', 'NO', '1 LITRO', 'NO', '', 1),
(93, 187, 'NO', 'Ninguna', 'CÃ¡ncer', 'NO', 'Ninguna', 'Nada', 'Niguna', '3', 'SI', '2', 'NO', 'Ninguna', 1),
(94, 184, 'NO', '', 'Diabetes', 'NO', 'Solo la rodilla por caÃ­das previas ', 'Sufres mareos', '', '1', 'SI', '1', 'SI', 'Salgo a caminar 3km desde hace 3 semana ', 1),
(95, 186, 'NO', 'Ninguna', 'Diabetes', 'SI', 'Ninguna', 'Nada', 'Niguna', '3', 'NO', '1', 'NO', 'Ninguna', 1),
(96, 120, 'NO', '', 'HipertensiÃ³n', 'NO', '', 'Nada', 'No ', '3', 'SI', '1 o 1.5 litros ', 'SI', 'Ejercicio con integraciÃ³n saludable ', 1),
(97, 98, 'NO', 'No aplica ', 'Nada', 'NO', '', 'Nada', 'No', '4', 'SI', '3 o mÃ¡s ', 'SI', 'IntegraciÃ³n saludable y GYM', 1),
(98, 168, 'NO', '', 'Diabetes', 'NO', '', 'Nada', '', '4', 'NO', '1', 'NO', '', 1),
(99, 190, 'NO', '', 'Nada', 'NO', '', 'Nada', '', '3', 'NO', '3 ', 'NO', '', 1),
(100, 99, 'NO', '', 'Nada', 'SI', 'No', 'Nada', 'No', '3', 'SI', '2', 'SI', 'IntegraciÃ³n saludable y gym ', 1),
(101, 119, 'NO', 'Ninguna', 'Nada', 'NO', '', 'Nada', 'Ultimamente incomodidad en la rodilla derecha', '3', 'SI', '1.5 lt', 'SI', 'El olan anterior', 1),
(102, 221, 'NO', '', 'Nada', 'NO', '', 'Nada', 'No', '4', 'SI', 'Alrededor de 2 lts', 'SI', 'Kickboxing, correr', 1),
(103, 197, 'NO', '', 'Nada', 'NO', '', 'Nada', 'No', '3', 'NO', '2', 'NO', '', 1),
(104, 181, 'NO', '', 'Diabetes', 'SI', 'No', 'Nada', 'No', '3', 'NO', 'Uno ', 'SI', 'Acondicionamiento fÃ­sico', 1),
(105, 222, 'NO', '', 'Nada', 'NO', '', 'Nada', 'No', '3', 'NO', '2', 'NO', 'Ninguna ', 1),
(106, 223, 'NO', '', 'Diabetes', 'SI', 'que debo realizar ejercicio fÃ­sico para tener un corazon saludable pero no exaltarme mucho ', 'Sufres mareos', 'No', '2', 'NO', '1', 'NO', 'Solo salgo a caminar ', 1),
(107, 220, 'NO', '', 'Diabetes', 'NO', '', 'Nada', 'No', '3', 'SI', '2', 'NO', '', 1),
(108, 214, 'NO', 'NingÃºna', 'Nada', 'NO', 'Ninguna', 'Nada', 'No', '2', 'SI', '15 litros ', 'SI', 'Correr y entrenar ', 1),
(109, 97, 'NO', '', 'Nada', 'NO', '', 'Nada', 'Rodilla ', '4', 'SI', '2', 'SI', 'Acondicionamiento', 1),
(110, 176, 'NO', '', 'Nada', 'NO', 'No', 'Nada', 'No', '2', 'NO', '2', 'NO', 'Ninguna', 1),
(111, 213, 'NO', '', 'HipertensiÃ³n', 'SI', 'Ninguna ', 'Nada', 'Ninguna ', '2', 'NO', '1 y medio ', 'NO', '', 1),
(112, 89, 'NO', '', 'Nada', 'NO', '', 'Nada', '', '2', 'SI', '1 Â½', 'SI', 'Ir al gym', 1),
(113, 172, 'NO', '', 'Nada', 'NO', '', 'Nada', 'No', '2', 'NO', '1', 'SI', 'FÃºtbol ', 1),
(114, 159, 'NO', '', 'Diabetes', 'SI', 'Ninguna fue hace 3 aÃ±os', 'Nada', 'No', '2', 'SI', '2', 'SI', 'A veces patinar, Nadar o Trotar', 1),
(115, 205, 'NO', '', 'Nada', 'SI', 'No', 'Nada', 'No', '5', 'NO', '3', 'SI', 'Atletismo (Poco)', 1),
(116, 141, 'NO', '', 'Nada', 'SI', 'Ceseria ', 'Nada', '', '5', 'SI', '2', 'SI', 'IntegraciÃ³n saludable', 1),
(117, 167, 'NO', '', 'Nada', 'NO', '', 'Nada', 'NO', '2', 'SI', '1 litro', 'SI', 'correr', 1),
(118, 207, 'NO', '', 'Nada', 'NO', '', 'Pierdes el equilibrio', 'Rodilla ', '3', 'SI', '2 litro ', 'NO', '', 1),
(119, 123, 'NO', '', 'Nada', 'NO', '', 'Nada', '', '3', 'SI', '2', 'SI', '', 1),
(120, 124, 'NO', '', 'Nada', 'SI', 'No', 'Nada', 'No', '3', 'SI', '1', 'NO', '', 1),
(121, 210, 'NO', '', 'Diabetes', 'NO', '', 'Nada', 'No', '3', 'SI', '1.5 litros', 'SI', 'Box', 1),
(122, 217, 'NO', '', 'Nada', 'NO', '', 'Nada', 'Espalda baja ', '3', 'SI', '1', 'NO', '', 1),
(123, 130, 'SI', 'Hipertension', 'HipertensiÃ³n', 'NO', 'No', 'Nada', 'No', '5', 'SI', 'De 2 a 3 lts', 'SI', 'Llevo 3 meses en el programa', 1),
(124, 199, 'NO', '', 'Nada', 'NO', '', 'Nada', 'No', '3', 'SI', '3', 'SI', 'Futbol', 1),
(125, 219, 'NO', '', 'Diabetes', 'SI', 'vesÃ­cula y la Ãºnica indicaciÃ³n fue q no engordara (fallÃ©)', 'Nada', 'no', '3', 'NO', '1 litro', 'NO', '', 1),
(126, 171, 'NO', '', 'Nada', 'SI', 'ninguna', 'Nada', '', '2', 'NO', '2', 'NO', '', 1),
(127, 211, 'NO', '', 'Nada', 'SI', 'No realizar ejercicios con mucha carga en los brazos', 'Sufres mareos', 'No', '4', 'SI', '2 litros', 'NO', '', 1),
(128, 189, 'NO', '', 'Nada', 'NO', '', 'Nada', 'No', '3', 'NO', '2', 'NO', '', 1),
(129, 224, 'NO', 'NingÃºna', 'Nada', 'NO', 'Ninguna', 'Nada', 'No', '3', 'SI', '1.5litros ', 'SI', 'Correr ', 1),
(130, 175, 'NO', '', 'Nada', 'SI', 'NO', 'Nada', 'Dolor en tobillos ', '3', 'NO', '2 o mÃ¡s', 'SI', 'yoga', 1),
(131, 0, 'NO', '', 'Nada', 'NO', '', 'Nada', 'No', '3', 'SI', '1.5', 'NO', '', 1),
(132, 182, 'NO', '', 'Nada', 'NO', '', 'Nada', 'No', '3', 'NO', '2 o 3', 'NO', '', 1),
(133, 193, 'SI', '', 'Nada', 'SI', '', 'Nada', '', '1', 'SI', '', 'SI', '', 1),
(134, 173, 'NO', '', 'Nada', 'NO', '', 'Nada', '', '3', 'NO', 'De 1 a 2 litros', 'SI', 'Danza', 1),
(135, 180, 'NO', '', 'Diabetes', 'NO', '', 'Nada', 'No', '3', 'NO', '1 litro', 'SI', 'Danza folklÃ³rica y prehispanica', 1),
(136, 177, 'NO', '', 'Diabetes', 'SI', 'Si ', 'Nada', 'No', '5', 'SI', '2', 'NO', '', 1),
(137, 204, 'NO', '', 'Nada', 'NO', '', 'Nada', '', '4', 'SI', '2 litros ', 'SI', 'Gym', 1),
(138, 225, 'NO', 'Ninguna ', 'HipertensiÃ³n', 'SI', 'No ', 'Nada', 'No', '3', 'SI', '1.5', 'SI', 'Softbol', 1),
(139, 228, 'NO', '', 'Nada', 'NO', '', 'Nada', 'No', '3', 'SI', 'Entre 1y dos litros al dÃ­a', 'SI', 'Gimnasio', 1),
(140, 218, 'SI', 'Gastritis, colitis y estreÃ±imiento', 'Nada', 'SI', 'Solo no forzar mucho mis rodillas', 'Nada', 'A veces dolor en la rodilla derecha (operada)', '3', 'SI', '1', 'NO', '', 1),
(141, 108, 'NO', 'Ninguna', 'Nada', 'SI', 'No', 'Nada', 'No', '4', 'SI', '2 litros', 'SI', 'Ejercicio IntegraciÃ³n saludable', 1),
(142, 227, 'NO', '', 'Nada', 'SI', 'No. ', 'Nada', 'SÃ­, en mi tobillo izquierdo', '3', 'NO', 'VarÃ­a mucho pero mÃ¡s o menos uno. ', 'SI', 'Ejercicio en casa. ', 1),
(143, 100, 'NO', 'ninguna', 'HipertensiÃ³n', 'SI', 'No, la cirugÃ­a fue 1 cesÃ¡rea', 'Nada', 'dolor en la muÃ±eca izquierda', '4', 'SI', '2 litros', 'SI', 'con IntegraciÃ³n saludable', 1),
(144, 226, 'NO', '', 'Diabetes', 'SI', 'NO', 'Nada', 'NO', '3', 'SI', '3 LITROS', 'NO', '', 1),
(145, 192, 'NO', '', 'CÃ¡ncer', 'NO', '', 'Nada', 'No', '3', 'NO', '1', 'SI', 'Correr', 1),
(146, 229, 'NO', '', 'Nada', 'NO', '', 'Nada', '', '3', 'NO', '', 'NO', '', 1),
(147, 109, 'NO', 'Ninguna ', 'Nada', 'NO', '', 'Nada', 'Tengo mi columna mal. ', '3', 'SI', '2', 'SI', 'Los entrenamientos que hago con ustedes ', 1),
(148, 231, 'NO', '', 'Nada', 'NO', '', 'Nada', '', '1', 'SI', '', 'SI', '', 1),
(149, 134, 'NO', '', 'Nada', 'NO', '', 'Nada', 'no', '5', 'SI', '2', 'SI', 'ejercicio con is :) jaja', 1),
(150, 196, 'NO', '', 'HipertensiÃ³n', 'SI', 'Ninguna ', 'Sufres mareos', 'Si', '2', 'NO', '2 o 3', 'NO', 'Ninguna ', 1),
(151, 135, 'NO', 'NA', 'CÃ¡ncer', 'NO', 'NA', 'Nada', 'NO', '4', 'SI', 'APROX 2', 'SI', 'LAS CLASES DE RETO', 1),
(152, 232, 'NO', '', 'Diabetes', 'NO', '', 'Sufres mareos', 'no', '4', 'SI', '2', 'SI', 'caminata 1 hora ', 1),
(153, 234, 'NO', 'ninguna', 'Diabetes', 'NO', '', 'Nada', 'no', '3', 'SI', '1. 5 litros', 'SI', 'box', 1),
(154, 233, 'SI', 'TriglicÃ©ridos y Colesterol ', 'Nada', 'SI', 'No, ninguna.', 'Nada', 'El brazo y el espolÃ³n calcÃ¡neo. ', '3', 'SI', '2 litros', 'SI', 'Inicie a finales de marzo ejercitÃ¡ndome con Integ', 1),
(155, 151, 'NO', '', 'Nada', 'NO', '', 'Nada', 'No', '3', 'SI', '2', 'SI', '', 1),
(156, 244, 'NO', 'Ninguna ', 'Nada', 'NO', '', 'Nada', 'No', '3', 'NO', '3 ', 'SI', 'Bicicleta ', 1),
(157, 240, 'NO', '', 'Diabetes', 'SI', 'No', 'Nada', 'No', '3', 'NO', '1', 'NO', '', 1),
(158, 248, 'NO', '', 'Nada', 'NO', '', 'Nada', '', '2', 'NO', '3 a 4', 'SI', 'Spinig', 1),
(159, 252, 'NO', '', 'Nada', 'NO', '', 'Nada', 'No', '3', 'NO', '3', 'SI', 'FÃºtbol y Correr', 1),
(160, 243, 'NO', '', 'Nada', 'NO', '', 'Nada', 'NO', '3', 'NO', '1 A 2', 'NO', '', 1),
(161, 246, 'NO', 'Ninguna ', 'Diabetes', 'SI', 'Ninguna', 'Nada', 'Aun no se. ', '2', 'SI', 'Un litro', 'NO', 'Ninguna ', 1),
(162, 242, 'SI', 'HIPERTENSION', 'HipertensiÃ³n', 'NO', 'NINGUNA', 'Sufres mareos', 'SI', '3', 'NO', '2', 'NO', 'NINGUNO', 1),
(163, 250, 'NO', '', 'Diabetes', 'SI', 'Si', 'Sufres mareos', 'Si', '3', 'SI', '3', 'SI', 'Caminar ', 1),
(164, 238, 'NO', 'ninguna', 'Nada', 'SI', 'negativo', 'Nada', 'no', '3', 'SI', '1 litro aproximadamente', 'SI', 'Basquetbol', 1),
(165, 241, 'NO', '', 'Nada', 'SI', 'No', 'Nada', 'No', '5', 'SI', '2.5 a 3', 'SI', 'Gimnasio, nataciÃ³n, futbol', 1),
(166, 253, 'NO', '', 'Nada', 'SI', 'Ninguna', 'Nada', 'No', '2', 'NO', '2 litros', 'NO', '', 1),
(167, 236, 'NO', '', 'Nada', 'NO', '', 'Nada', 'No', '3', 'NO', '3 litros', 'NO', '', 1),
(168, 255, 'NO', 'Ninguna', 'Nada', 'SI', 'No', 'Nada', 'No', '3', 'NO', '2 litros', 'NO', 'Ninguna', 1),
(169, 254, 'NO', 'Ninguna', 'Diabetes', 'SI', 'No ', 'Nada', 'No ', '3', 'NO', '1', 'NO', '', 1),
(170, 239, 'SI', 'Diabetes e HipertensiÃ³n', 'Diabetes', 'NO', '', 'Nada', '', '3', 'SI', '3', 'NO', '', 1),
(171, 235, 'NO', 'Na', 'Nada', 'NO', '', 'Nada', 'Si', '3', 'NO', '1', 'NO', '', 1),
(172, 251, 'NO', '', 'Nada', 'NO', '', 'Nada', 'Dolores musculares', '2', 'SI', '4', 'NO', 'Ninguna', 1),
(173, 237, 'SI', 'HÃ­gado graso', 'HipertensiÃ³n', 'NO', '', 'Nada', 'Un poco de dolor rodillas', '3', 'SI', '1 a 2', 'NO', '', 1),
(174, 249, 'SI', 'HipertenciÃ³n ', 'Diabetes', 'SI', 'No', 'Sufres mareos', 'No', '4', 'NO', '2', 'NO', 'No', 1),
(175, 258, 'NO', '', 'CÃ¡ncer', 'NO', '', 'Nada', '', '2', 'SI', '2', 'NO', '', 1),
(176, 262, 'NO', '', 'Nada', 'NO', '', 'Nada', 'No', '5', 'SI', '1 1/2', 'SI', 'Cardio/ pesas', 1),
(177, 287, 'NO', '', 'Diabetes', 'NO', '', 'Sufres mareos', 'Un poco de dolor de espalda', '3', 'SI', '2', 'SI', 'futbol', 1),
(178, 288, 'NO', '', 'Diabetes', 'NO', '', 'Nada', '', '4', 'SI', '1', 'SI', 'Gym', 1),
(179, 275, 'NO', '', 'Nada', 'NO', '', 'Nada', 'No', '3', 'NO', '1.5', 'NO', '', 1),
(180, 272, 'NO', 'N/A', 'Diabetes', 'NO', 'N/A', 'Sufres mareos', 'No', '2', 'SI', '2 litros ', 'SI', 'Camino y hago zumba ', 1),
(181, 274, 'NO', '', 'Nada', 'NO', '', 'Sufres mareos', 'No', '3', 'SI', '1/2', 'NO', '', 1),
(182, 260, 'NO', '', 'Nada', 'SI', 'No', 'Nada', 'No', '1', 'SI', '2 o 3', 'SI', '', 1),
(183, 267, 'NO', '', 'HipertensiÃ³n', 'NO', '', 'Nada', 'No ', '4', 'NO', '1.5', 'NO', '', 1),
(184, 289, 'NO', '', 'Nada', 'NO', '', 'Nada', '', '4', 'NO', '3', 'NO', '', 1),
(185, 273, 'SI', 'Hipotiroidismo', 'Diabetes', 'NO', 'No', 'Nada', 'No', '4', 'SI', '2', 'SI', 'Bicicleteo ', 1),
(186, 265, 'NO', '', 'Diabetes', 'SI', 'NO', 'Nada', 'NO', '3', 'SI', '1', 'NO', '', 1),
(187, 282, 'SI', 'Obesidad ', 'CÃ¡ncer', 'NO', '', 'Nada', 'Cansancio/dolor ', '2', 'SI', '2 a 3 ', 'SI', 'Caminar ', 1),
(188, 270, 'SI', '', 'Nada', 'SI', '', 'Nada', '', '3', 'SI', '2', 'NO', '', 1),
(189, 278, 'SI', 'RiÃ±Ã³n poliquistico', 'HipertensiÃ³n', 'SI', 'No', 'Nada', 'No', '3', 'SI', '1', 'NO', 'No aplica', 1),
(190, 268, 'NO', '', 'HipertensiÃ³n', 'SI', 'YA FUE HACE TIEMPO, NO TENGO CONTRAINDICACIONES POR EL MOMENTO', 'Nada', 'DOLOR EN RODILLAS', '3', 'SI', 'DE 2 A 3', 'SI', 'TODO EL AÃ‘O PASADO HICE RUTINAS DE EJERCICIO Y CO', 1),
(191, 291, 'NO', '', 'Nada', 'SI', 'no', 'Nada', 'no', '4', 'NO', '1', 'NO', '', 1),
(192, 266, 'NO', '', 'Nada', 'SI', 'NO', 'Nada', 'NO', '3', 'NO', '1', 'NO', '', 1),
(193, 261, 'NO', '', 'Nada', 'NO', '', 'Nada', 'NO', '2', 'NO', '.600 A 1.5 LTS', 'NO', '', 1),
(194, 294, 'NO', 'Ninguna ', 'Nada', 'SI', 'Ya estoy en condiciones de hacer ejercicio', 'Sufres mareos', 'Ninguna ', '2', 'SI', 'Medio litro', 'SI', 'Ninguna ', 1),
(195, 284, 'NO', '', 'CÃ¡ncer', 'NO', '', 'Nada', '', '3', 'NO', '2', 'SI', 'Taekwondo', 1),
(196, 286, 'SI', 'NEUROPATIA DIABETICA', 'Diabetes', 'NO', '', 'Nada', 'DESPUES DE MUCHO TIEMPO INICIARE CON EJERCICIO ', '3', 'NO', '1 litro ', 'NO', '', 1),
(197, 290, 'NO', '', 'Diabetes', 'SI', 'NO', 'Nada', 'NO', '3', 'NO', '1', 'NO', '', 1),
(198, 292, 'NO', '', 'Nada', 'NO', '', 'Sufres mareos', 'No', '3', 'NO', '2 litros y medio', 'NO', '', 1),
(199, 271, 'NO', '', 'Nada', 'NO', '', 'Sufres mareos', 'CartÃ­lago daÃ±ado de las rodillas ', '5', 'SI', '1', 'SI', 'Bicicleta y caminar ', 1),
(200, 264, 'SI', 'Hipotiroidismo', 'Diabetes', 'NO', 'no', 'Nada', 'No', '4', 'NO', '3', 'NO', '', 1),
(201, 285, 'SI', 'DIABETES', 'Diabetes', 'SI', 'NO', 'Nada', 'DOLOR EN LA RODILLA', '3', 'NO', '3 A 4 LITROS', 'SI', 'FUTBOL', 1),
(202, 283, 'SI', 'Sinusitis crÃ³nica ', 'Nada', 'SI', 'No', 'Nada', 'No', '3', 'SI', '2', 'NO', '', 1),
(203, 269, 'NO', '', 'Diabetes', 'SI', 'no ninguna', 'Sufres mareos', 'no', '3', 'SI', '2', 'NO', '', 1),
(204, 280, 'NO', '', 'Nada', 'SI', ' No', 'Nada', 'No', '3', 'SI', 'Nunguna ', 'NO', '', 1),
(205, 297, 'NO', 'ninguna', 'Nada', 'NO', 'no', 'Nada', 'no', '3', 'NO', '1', 'NO', 'ninguna', 1),
(206, 281, 'NO', 'No', 'Nada', 'NO', 'No', 'Nada', 'No', '4', 'NO', '1.5', 'SI', 'Yoga', 1),
(207, 295, 'NO', '', 'Diabetes', 'SI', 'Ninguna ', 'Nada', 'Dolor en las rodilla ', '2', 'SI', '1.5', 'NO', '', 1),
(208, 296, 'NO', '', 'Diabetes', 'NO', '', 'Nada', 'No', '3', 'NO', '1', 'NO', '', 1),
(209, 298, 'NO', '', 'Diabetes', 'NO', '', 'Sufres mareos', 'ligeramente la rodilla cuando hago ejercicio', '3', 'NO', '1 o 2', 'NO', '', 1),
(210, 137, 'NO', '', 'Nada', 'SI', 'No', 'Nada', 'No', '3', 'SI', '2', 'NO', '', 1),
(211, 276, 'NO', '', 'Nada', 'SI', '', 'Nada', '', '3', 'NO', '2', 'NO', '', 1),
(212, 299, 'NO', '', 'Nada', 'NO', '', 'Nada', '', '4', 'SI', '2', 'NO', '', 1),
(213, 300, 'SI', '', 'Nada', 'SI', 'Si solo no mucho peso cirugÃ­a de cenos ', 'Nada', 'No', '2', 'NO', 'Cuando me acuerdo un litro ', 'SI', 'Gym', 1),
(214, 164, 'NO', '', 'Nada', 'NO', '', 'Nada', 'NO ', '5', 'SI', '2.5', 'SI', 'GYM', 1),
(215, 303, 'NO', '', 'Nada', 'NO', '', 'Nada', 'No', '3', 'NO', '1', 'SI', 'FÃºtbol ', 1),
(216, 302, 'SI', 'Hipoteroidismo', 'Diabetes', 'NO', 'No', 'Nada', 'No', '3', 'NO', '5', 'NO', '', 1),
(217, 309, 'NO', '', 'Nada', 'NO', '', 'Nada', 'No', '3', 'SI', '3', 'NO', '', 1),
(218, 307, 'NO', 'Ninguna ', 'Nada', 'SI', 'No', 'Nada', 'No', '4', 'SI', '3', 'NO', 'Ninguna ', 1),
(219, 318, 'SI', 'Asma', 'Nada', 'NO', 'No', 'Nada', 'No', '4', 'SI', '2', 'NO', '', 1),
(220, 332, 'SI', 'Hipertension y Trigliceridos Altos', 'Diabetes', 'NO', 'no', 'Sufres mareos', 'dolor de rodillas', '3', 'SI', '2 litros', 'NO', '', 1),
(221, 334, 'NO', '', 'Nada', 'NO', '', 'Nada', 'No', '3', 'SI', '1.5', 'NO', '', 1),
(222, 329, 'NO', '', 'Nada', 'NO', '', 'Nada', '', '3', 'NO', '2-3', 'NO', '', 1),
(223, 323, 'NO', '', 'HipertensiÃ³n', 'NO', '', 'Nada', 'Ninguna', '3', 'NO', '1', 'NO', '', 1),
(224, 306, 'NO', '', 'Nada', 'SI', 'No', 'Nada', 'No', '3', 'NO', '2-3', 'NO', '', 1),
(225, 328, 'NO', '', 'CÃ¡ncer', 'NO', '', 'Nada', 'No', '3', 'NO', '1-2', 'SI', 'Ejercicio', 1),
(226, 308, 'NO', 'N/A', 'Diabetes', 'SI', 'Ninguna ', 'Nada', 'Ninguna ', '3', 'SI', '3', 'SI', 'Ejercicios con pesas ', 1),
(227, 330, 'SI', 'PIEDRA EN LA VESICULA', 'Diabetes', 'NO', 'NO', 'Sufres mareos', 'NO', '3', 'NO', '1', 'NO', '', 1),
(228, 337, 'NO', '', 'Diabetes', 'NO', '', 'Nada', 'No', '4', 'SI', '2', 'SI', 'Ejercicio en casa', 1),
(229, 336, 'NO', '', 'Nada', 'NO', '', 'Nada', 'no', '3', 'NO', '2', 'SI', 'correr', 1),
(230, 331, 'NO', '', 'HipertensiÃ³n', 'NO', '', 'Pierdes el equilibrio', 'NO', '5', 'SI', '4 LITROS', 'NO', '', 1),
(231, 0, 'NO', '', 'Nada', 'NO', '', 'Nada', '', '3', 'NO', '1 1/2', 'SI', 'CAMINAR', 1),
(232, 317, 'NO', '', 'Nada', 'SI', '', 'Nada', '', '3', 'NO', '1 1/2', 'SI', 'CAMINAR', 1),
(233, 338, 'NO', '', 'CÃ¡ncer', 'NO', 'No', 'Nada', 'No', '3', 'NO', '1 1/2', 'NO', '', 1),
(234, 322, 'NO', '', 'CÃ¡ncer', 'NO', '', 'Nada', 'No', '3', 'SI', '2', 'SI', 'Correr', 1),
(235, 321, 'NO', '', 'Nada', 'NO', '', 'Nada', 'Molestia hombro izquierdo por tendinitis ', '4', 'NO', '1', 'NO', '', 1),
(236, 315, 'SI', 'Varices', 'CÃ¡ncer', 'NO', 'No', 'Nada', 'No', '3', 'SI', '2 litros', 'NO', 'N/a', 1),
(237, 311, 'NO', '', 'Nada', 'NO', '', 'Nada', 'No', '3', 'NO', '2', 'NO', '', 1),
(238, 335, 'NO', '', 'HipertensiÃ³n', 'SI', 'No', 'Nada', 'Hasta ahorita no ', '3', 'SI', 'Uno', 'NO', '', 1),
(239, 312, 'SI', 'Hipotiroidismo', 'Diabetes', 'SI', 'No', 'Sufres mareos', 'No', '3', 'SI', '1', 'SI', 'Caminar 30 min al dia', 1),
(240, 320, 'NO', '', 'Diabetes', 'SI', 'Tener cuidado con la muÃ±eca derecha, fue fractura en  el brazo y muÃ±eca derecha ', 'Sufres mareos', ' No', '3', 'SI', '1', 'SI', '', 1),
(241, 333, 'SI', '', 'Nada', 'NO', '', 'Nada', 'No', '4', 'NO', '1', 'NO', '', 1),
(242, 319, 'NO', '', 'Nada', 'NO', '', 'Nada', 'no', '3', 'SI', '1', 'NO', '', 1),
(243, 326, 'NO', '', 'Nada', 'NO', '', 'Nada', 'No ', '3', 'NO', '2', 'SI', 'Ejercicios de hipertrofia ', 1),
(244, 96, 'NO', '', 'Nada', 'NO', '', 'Nada', 'No', '3', 'SI', '2', 'SI', '', 1),
(245, 324, 'SI', 'Resistencia a la insulina', 'Diabetes', 'SI', 'no debo correr por el tipo de fractura en el tobillo', 'Nada', 'en la espalda', '4', 'SI', '3', 'NO', '', 1),
(246, 327, 'SI', 'EPOC', 'Diabetes', 'NO', 'No', 'Nada', 'No', '2', 'SI', '1', 'NO', 'Ninguno', 1),
(247, 341, 'NO', '', 'Nada', 'NO', '', 'Nada', 'No', '3', 'SI', '1', 'SI', 'Spinning', 1),
(248, 313, 'SI', 'HÃ­gado graso', 'Diabetes', 'NO', '', 'Nada', '', '3', 'NO', '2', 'NO', '', 1),
(249, 314, 'SI', 'Ninguna ', 'Nada', 'NO', 'No', 'Nada', 'No', '3', 'NO', '1.5', 'SI', 'Ninguna ', 1),
(250, 316, 'NO', '', 'Nada', 'SI', 'No', 'Nada', 'No', '1', 'SI', '1', 'NO', '', 1),
(251, 342, 'NO', '', 'Diabetes', 'NO', '', 'Nada', 'No', '1', 'SI', '3', 'SI', '', 1),
(252, 343, 'NO', '', 'Diabetes', 'NO', '', 'Nada', 'Me agito mucho no tengo condicion', '3', 'NO', '1', 'NO', '', 1),
(253, 354, 'NO', '', 'Nada', 'NO', 'Ninguna ', 'Nada', 'Varices', '3', 'NO', '1 1/2', 'NO', '', 1),
(254, 346, 'NO', '', 'Diabetes', 'NO', '', 'Nada', 'Rodillas', '3', 'NO', '2', 'NO', '', 1),
(255, 349, 'NO', '', 'HipertensiÃ³n', 'SI', 'No', 'Nada', 'No', '3', 'SI', '1', 'NO', '', 1),
(256, 356, 'NO', '', 'Nada', 'SI', '', 'Nada', '', '3', 'NO', '1', 'NO', '', 1),
(257, 344, 'SI', '', 'HipertensiÃ³n', 'NO', '', 'Nada', 'En los Talones', '3', 'SI', '1', 'NO', '', 1),
(258, 353, 'NO', '', 'Diabetes', 'SI', 'CesÃ¡rea ', 'Nada', 'Dolor de muÃ±ecas ', '3', 'SI', '2', 'SI', 'EjÃ©rcitos de fuerza en casa', 1),
(259, 345, 'NO', '', 'Diabetes', 'SI', 'No', 'Nada', 'No', '3', 'NO', '1', 'NO', '', 1),
(260, 352, 'SI', 'Obesidad', 'Nada', 'NO', '', 'Pierdes el equilibrio', 'No', '3', 'NO', '2', 'NO', 'Ninguna', 1),
(261, 358, 'NO', '', 'Diabetes', 'NO', '', 'Nada', 'no', '3', 'NO', '1 y medio', 'SI', 'pesas', 1),
(262, 347, 'NO', '', 'Diabetes', 'NO', '', 'Nada', 'No que yo sepa', '4', 'SI', '1/2 litro', 'NO', '', 1),
(263, 350, 'NO', '', 'Nada', 'NO', '', 'Nada', '', '2', 'NO', '2', 'NO', '', 1),
(264, 360, 'NO', '', 'HipertensiÃ³n', 'NO', '', 'Nada', 'No', '2', 'NO', '2 litros', 'NO', '', 1),
(265, 359, 'NO', '', 'Nada', 'SI', 'Fractura de tobillo (Fortalecerlos)', 'Sufres mareos', 'tobillo', '3', 'SI', '2', 'NO', '', 1),
(266, 361, 'NO', '', 'Diabetes', 'NO', '', 'Nada', '', '3', 'SI', '2 litros ', 'NO', '', 1),
(267, 355, 'NO', '', 'Diabetes', 'NO', '', 'Nada', 'No ', '2', 'NO', '1', 'NO', '', 1),
(268, 362, 'NO', '', 'Nada', 'NO', '', 'Nada', 'No', '3', 'NO', '2', 'NO', '', 1),
(269, 363, 'NO', '', 'Nada', 'NO', '', 'Nada', '', '2', 'NO', '1', 'NO', '', 1),
(270, 366, 'NO', 'Ninguna', 'Nada', 'NO', '', 'Nada', 'Cuando corro el tobillo izquierdo comienza a dar m', '3', 'NO', '1 a 2 litros ', 'NO', '', 1),
(271, 377, 'NO', '', 'Diabetes', 'SI', 'No', 'Nada', 'No', '3', 'NO', '1', 'NO', '', 1),
(272, 373, 'NO', '', 'Nada', 'NO', '', 'Nada', 'Rodillas', '3', 'SI', '1litro', 'SI', 'Futbol', 1),
(273, 376, 'NO', '', 'Diabetes', 'SI', 'No', 'Nada', 'No', '3', 'NO', '1', 'NO', '', 1),
(274, 372, 'NO', '', 'HipertensiÃ³n', 'NO', '', 'Nada', 'No', '3', 'SI', '2', 'NO', '', 1),
(275, 367, 'SI', '', 'Nada', 'NO', '', 'Nada', 'no', '3', 'SI', '1', 'NO', 'ninguna', 1),
(276, 380, 'NO', 'Ninguna ', 'Nada', 'NO', '', 'Nada', 'No', '3', 'NO', '2', 'SI', 'GYM', 1),
(277, 371, 'NO', '', 'Nada', 'NO', '', 'Nada', '', '5', 'SI', '2', 'SI', 'Soccer', 1),
(278, 384, 'NO', '', 'Nada', 'NO', '', 'Sufres mareos', 'Dolor en las rodillas ', '2', 'NO', '1 o 2', 'NO', '', 1),
(279, 370, 'NO', 'Ninguna ', 'Nada', 'SI', 'No ', 'Sufres mareos', 'Solo en el abdomen molestia ', '3', 'SI', '1 mÃ¡ximo ', 'SI', 'Caminar, cuerda ', 1),
(280, 369, 'NO', '', 'HipertensiÃ³n', 'SI', 'NO, YA NO ES NECESARIA', 'Nada', 'NO', '6', 'SI', '2 ', 'SI', 'CROSS FIT', 1),
(281, 386, 'NO', '', 'Nada', 'SI', 'No', 'Nada', 'No', '1', 'NO', '3', 'NO', '', 1),
(282, 368, 'NO', '', 'Nada', 'SI', '', 'Nada', '', '3', 'NO', '2-3', 'NO', '', 1),
(283, 382, 'SI', '', 'HipertensiÃ³n', 'SI', 'No', 'Nada', 'No', '3', 'SI', '1', 'NO', '', 1),
(284, 381, 'NO', '', 'Nada', 'NO', '', 'Nada', 'No', '3', 'SI', '2 ', 'SI', 'Correr ', 1),
(285, 391, 'SI', 'Lupus', 'CÃ¡ncer', 'SI', '', 'Nada', 'Leve', '3', 'SI', '2 o mÃ¡s ', 'NO', '', 1),
(286, 389, 'SI', 'hipertension y calculos renales', 'HipertensiÃ³n', 'SI', 'hacer ejercicio cardiovasculas, comer sano y tomar agua ', 'Nada', 'no', '5', 'SI', '2.5', 'SI', 'salir a correr ', 1),
(287, 388, 'SI', 'Fibromialgia', 'CÃ¡ncer', 'SI', 'No', 'Nada', 'No sÃ© agravan , ahÃ­ estÃ¡n por momentos indefini', '3', 'SI', '1', 'NO', 'Hace un aÃ±o hacia Hiit', 1),
(288, 378, 'NO', '', 'Diabetes', 'NO', '', 'Nada', 'ninguna', '3', 'NO', '1 ', 'NO', 'ninguna ', 1),
(289, 379, 'SI', 'Diabetes', 'HipertensiÃ³n', 'SI', 'NO', 'Sufres mareos', 'EN LA RODILLA', '3', 'NO', '1', 'NO', 'ninguna ', 1),
(290, 390, 'SI', 'Colitis', 'Nada', 'SI', 'Solo bajo impacto', 'Sufres mareos', 'Dolor en la zona lumbar', '4', 'SI', '2', 'NO', '', 1),
(291, 374, 'NO', 'Ninguna', 'Nada', 'NO', 'No', 'Nada', 'No', '3', 'NO', '1.5 a 2 litros ', 'NO', 'Ninguna', 1),
(292, 392, 'NO', 'Ninguna', 'Nada', 'SI', 'Ninguna', 'Nada', 'No', '3', 'SI', '1 y medio', 'NO', 'Ninguno', 1),
(293, 394, 'SI', 'HIPERTENCION', 'Diabetes', 'SI', 'NO', 'Nada', 'NO', '5', 'SI', '2', 'NO', 'NINGUNA', 1),
(294, 395, 'NO', '', 'Nada', 'NO', '', 'Pierdes el equilibrio', 'DOLOR DE RODILLA', '3', 'SI', '1', 'NO', '', 1),
(295, 293, 'NO', '', 'HipertensiÃ³n', 'NO', '', 'Nada', '', '3', 'SI', '1', 'SI', '', 1),
(296, 396, 'SI', '', 'Nada', 'SI', '', 'Pierdes el equilibrio', '', '1', 'SI', '', 'SI', '', 1),
(297, 400, 'SI', 'Alergias a productos, animales, polvo. En producto', 'Nada', 'SI', 'No', 'Nada', 'Las rodillas al hacer desplantes ', '3', 'SI', '2 a veces 3. Hay dÃ­as en que casi no llego ni a 2', 'SI', 'Ninguna ', 1),
(298, 397, 'NO', '', 'Nada', 'NO', '', 'Nada', 'No ', '3', 'SI', '2', 'NO', '', 1),
(299, 398, 'SI', 'Alergias ', 'Nada', 'SI', 'No', 'Nada', 'Dolor de espalda soportable', '2', 'SI', '1', 'SI', 'Ninguna', 1),
(300, 399, 'NO', '', 'Nada', 'SI', '', 'Nada', '', '2', 'NO', '2', 'SI', 'Tennis', 1),
(301, 401, 'NO', '', 'HipertensiÃ³n', 'SI', 'No', 'Nada', 'Un poco las rodillas', '3', 'NO', '2', 'NO', '', 1),
(302, 403, 'NO', '', 'Nada', 'SI', 'No', 'Nada', 'Pues no hago ejercicio asÃ­ que me duele todo desp', '3', 'NO', 'Muchos ', 'NO', '', 1),
(303, 402, 'NO', '', 'Nada', 'SI', 'No hacer ejercicios de alto impacto ', 'Sufres mareos', 'SÃ­, en mi tobillo ', '2', 'SI', '2 ', 'NO', '', 1),
(304, 405, 'NO', '', 'Diabetes', 'SI', 'No', 'Nada', 'No', '4', 'SI', 'Cuando mucho 2 litros', 'NO', '', 1),
(305, 407, 'NO', '', 'Nada', 'NO', '', 'Nada', 'No', '3', 'NO', '1', 'NO', '', 1),
(306, 409, 'NO', '', 'Nada', 'NO', '', 'Nada', 'En brazo izquierdo', '3', 'SI', '2', 'SI', 'NataciÃ³n', 1),
(307, 410, 'NO', '', 'Nada', 'SI', 'No', 'Nada', 'No', '2', 'NO', '2', 'NO', '', 1),
(308, 411, 'NO', '', 'Nada', 'NO', '', 'Nada', 'No', '2', 'NO', '2', 'SI', 'FÃºtbol', 1),
(309, 406, 'NO', '', 'Nada', 'NO', '', 'Nada', 'No ', '3', 'NO', '1.5', 'NO', '', 1),
(310, 414, 'NO', '', 'Nada', 'NO', '', 'Nada', 'No', '3', 'NO', '1.5L', 'NO', '', 1),
(311, 416, 'NO', '', 'Nada', 'NO', 'No', 'Nada', '', '3', 'SI', '2 litros', 'SI', 'Baile', 1),
(312, 162, 'NO', '', 'HipertensiÃ³n', 'SI', 'No', 'Nada', 'No', '3', 'SI', '3', 'NO', '', 1),
(313, 421, 'NO', '', 'Nada', 'NO', '', 'Sufres mareos', '', '3', 'SI', '1.5', 'NO', '', 1),
(314, 419, 'NO', '', 'Nada', 'SI', 'No', 'Nada', 'No', '3', 'NO', '2', 'SI', 'Gym', 1),
(315, 426, 'NO', 'ninguna', 'HipertensiÃ³n', 'SI', 'En cuanto a cirugÃ­a sÃ³lo he tenido una cesÃ¡rea', 'Nada', 'no', '3', 'SI', '2', 'NO', '', 1),
(316, 417, 'NO', '', 'Nada', 'NO', '', 'Nada', 'No', '3', 'SI', 'No', 'NO', '', 1),
(317, 424, 'NO', '', 'Nada', 'NO', '', 'Nada', 'Ninguna ', '4', 'NO', '2.5', 'SI', 'Salir a caminar ', 1),
(318, 427, 'SI', 'te', 'Nada', 'SI', 'no', 'Nada', '', '3', 'SI', '2', 'SI', 'ff', 1),
(319, 428, 'NO', '', 'Diabetes', 'NO', '', 'Nada', 'No', '3', 'NO', '3-4 lt ', 'SI', 'Danza ', 1),
(320, 415, 'NO', '', 'Nada', 'SI', 'No', 'Nada', 'No', '3', 'SI', '1 .5 l', 'NO', '', 1),
(321, 420, 'NO', '', 'HipertensiÃ³n', 'SI', 'Ninguna', 'Nada', 'No', '2', 'NO', '1 litro', 'SI', '', 1),
(322, 422, 'NO', '', 'Nada', 'SI', 'No ', 'Sufres mareos', 'No', '4', 'SI', '2', 'NO', '', 1),
(323, 425, 'NO', 'Na', 'Nada', 'NO', 'Na', 'Nada', 'No', '3', 'SI', '2', 'SI', 'Futbol americano ', 1),
(324, 429, 'NO', '', 'Nada', 'SI', 'Nop', 'Nada', 'Si', '3', 'SI', '2', 'NO', '', 1),
(325, 430, 'NO', 'Ninguna ', 'Diabetes', 'NO', '', 'Nada', 'No ', '3', 'NO', '1 litro ', 'SI', 'Futbol', 1),
(326, 431, 'NO', '', 'Nada', 'NO', 'No ', 'Nada', 'No ', '4', 'SI', '2o 3 ', 'NO', '', 1),
(327, 432, 'SI', '', 'Nada', 'NO', '', 'Nada', 'No', '3', 'SI', '1.5 L', 'SI', 'Gimnasio ', 1),
(328, 433, 'NO', '', 'Nada', 'NO', '', 'Nada', '', '3', 'NO', '3', 'NO', '', 1),
(329, 434, 'NO', '', 'Nada', 'NO', '', 'Nada', 'No', '3', 'NO', '2', 'NO', '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenes`
--

CREATE TABLE `imagenes` (
  `id_img` int(11) NOT NULL,
  `usuario_id_usuario` int(11) DEFAULT NULL,
  `fechaActualizacion` datetime DEFAULT NULL,
  `fotoFrente` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `fotoEspalda` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `fotoPerfil` varchar(500) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `imagenes`
--

INSERT INTO `imagenes` (`id_img`, `usuario_id_usuario`, `fechaActualizacion`, `fotoFrente`, `fotoEspalda`, `fotoPerfil`) VALUES
(256, 1, '2021-08-07 10:29:10', 'imagenes/1-RectaÌngulo redondeado 1.png', 'imagenes/1-tatuajes-de-por-vida.png', 'imagenes/1-tatuajes-logo.png'),
(257, 265, '2021-08-08 18:17:21', 'imagenes/265-IMG_5029.JPG', 'imagenes/265-IMG_5031.JPG', 'imagenes/265-IMG_5032.JPG'),
(259, 332, '2021-08-08 19:41:04', 'imagenes/332-IMG_20210808_182513.jpg', 'imagenes/332-IMG_20210808_183030 (2).jpg', 'imagenes/332-IMG_20210808_182521.jpg'),
(260, 307, '2021-08-08 21:16:56', 'imagenes/307-BF9162DB-CAAD-4608-93FA-1E0C28654226.jpeg', 'imagenes/307-F1FEC4F3-20AE-4D45-ACBF-2F9C1D455631.jpeg', 'imagenes/307-FD68EA25-E8B0-4D5F-8D5A-65FECDCD8588.jpeg'),
(261, 329, '2021-08-08 21:55:06', 'imagenes/329-20210808_205102.jpg', 'imagenes/329-20210808_204404.jpg', 'imagenes/329-20210808_204600.jpg'),
(262, 323, '2021-08-08 22:00:10', 'imagenes/323-WhatsApp Image 2021-08-08 at 8.44.01 PM (3).jpeg', 'imagenes/323-WhatsApp Image 2021-08-08 at 8.44.01 PM (2).jpeg', 'imagenes/323-WhatsApp Image 2021-08-08 at 8.44.01 PM.jpeg'),
(263, 308, '2021-08-09 02:00:54', 'imagenes/308-IMG-20210809-WA0001.jpg', 'imagenes/308-IMG-20210809-WA0004.jpg', 'imagenes/308-IMG-20210809-WA0006.jpg'),
(264, 330, '2021-08-09 08:15:23', 'imagenes/330-WhatsApp Image 2021-08-08 at 18.45.28 ADELANTE.jpeg', 'imagenes/330-WhatsApp Image 2021-08-08 at 18.45.28 ATRAS.jpeg', 'imagenes/330-WhatsApp Image 2021-08-08 at 18.45.28 FRONTAL.jpeg'),
(265, 262, '2021-08-09 09:58:50', 'imagenes/262-577B0EFF-3393-429C-8243-DD2BFC9ADA45.jpeg', 'imagenes/262-EAA670FF-7ADB-47C7-96C5-446864E3FE31.jpeg', 'imagenes/262-0B0E321A-79D0-48CB-9CE3-5FC702F6ADDF.jpeg'),
(266, 306, '2021-08-09 10:25:29', 'imagenes/306-IMG_20210809_085844.jpg', 'imagenes/306-IMG_20210809_091747.jpg', 'imagenes/306-IMG_20210809_091712.jpg'),
(267, 334, '2021-08-09 11:46:58', 'imagenes/334-WhatsApp Image 2021-08-09 at 10.44.49.jpeg', 'imagenes/334-WhatsApp Image 2021-08-09 at 10.44.50.jpeg', 'imagenes/334-WhatsApp Image 2021-08-09 at 10.44.49 (1).jpeg'),
(268, 331, '2021-08-09 12:40:36', 'imagenes/331-Screenshot_20210809-113449_WhatsApp.jpg', 'imagenes/331-Screenshot_20210809-113522_WhatsApp.jpg', 'imagenes/331-Screenshot_20210809-113500_WhatsApp.jpg'),
(269, 338, '2021-08-09 15:25:16', 'imagenes/338-IMG_20210809_135845.jpg', 'imagenes/338-IMG_20210809_135809.jpg', 'imagenes/338-IMG_20210809_135755.jpg'),
(270, 321, '2021-08-09 16:40:28', 'imagenes/321-737B92BF-48A5-4715-9333-B4F3AA7B6B24.jpeg', 'imagenes/321-C1654018-6D6F-47FC-93E0-1E0CA6E821D6.jpeg', 'imagenes/321-FB8F49B0-BECD-4D99-A693-083ABCF4A0C9.jpeg'),
(271, 135, '2021-08-09 16:56:00', 'imagenes/135-IMG_1917.JPG', 'imagenes/135-IMG_1916.JPG', 'imagenes/135-IMG_1914.JPG'),
(272, 336, '2021-08-09 17:15:56', 'imagenes/336-C18D3541-AC31-460B-890E-67206D71492B.jpeg', 'imagenes/336-9E7767B7-068F-4740-BD1D-B30B70E93040.jpeg', 'imagenes/336-AF545D91-F73C-4B90-BAE4-A3EB3BFC0B3F.jpeg'),
(273, 210, '2021-08-09 17:30:39', 'imagenes/210-FRENTE.jpg', 'imagenes/210-ATRAS.jpg', 'imagenes/210-LADO.jpg'),
(275, 315, '2021-08-09 18:05:42', 'imagenes/315-IMG-20210809-WA0051.jpg', 'imagenes/315-IMG-20210809-WA0049.jpg', 'imagenes/315-IMG-20210809-WA0047.jpg'),
(276, 266, '2021-08-09 18:46:14', 'imagenes/266-frente.jpeg', 'imagenes/266-espalda.jpeg', 'imagenes/266-lateral.jpeg'),
(278, 311, '2021-08-09 18:54:36', 'imagenes/311-IMG-20210809-WA0030.jpg', 'imagenes/311-IMG-20210809-WA0028.jpg', 'imagenes/311-IMG-20210809-WA0027.jpg'),
(279, 317, '2021-08-09 19:12:06', 'imagenes/317-IMG_0987.JPG', 'imagenes/317-IMG_0983.JPG', 'imagenes/317-IMG_0985.JPG'),
(280, 201, '2021-08-09 19:28:44', 'imagenes/201-IMG-20210731-WA0009.jpg', 'imagenes/201-IMG-20210731-WA0010.jpg', 'imagenes/201-IMG-20210731-WA0011.jpg'),
(283, 322, '2021-08-09 20:31:53', 'imagenes/322-IMG_20210809_191735693.jpg', 'imagenes/322-IMG_20210809_191800639.jpg', 'imagenes/322-IMG_20210809_191746989.jpg'),
(284, 309, '2021-08-09 21:00:20', 'imagenes/309-20210809_194450.jpg', 'imagenes/309-20210809_194513.jpg', 'imagenes/309-20210809_194458.jpg'),
(285, 318, '2021-08-09 21:03:21', 'imagenes/318-20210809_191209.jpg', 'imagenes/318-20210809_191227.jpg', 'imagenes/318-20210809_191240.jpg'),
(286, 270, '2021-08-09 21:03:28', 'imagenes/270-FF1D0F83-18E4-4579-998A-B4A4660B00F9.jpeg', 'imagenes/270-0FDFA0C5-162E-497A-B4FF-79D782826331.jpeg', 'imagenes/270-2091A60D-BB47-44B2-A97E-A983FAE88841.jpeg'),
(287, 333, '2021-08-09 21:14:13', 'imagenes/333-229015847_854644295193746_8887015343417666403_n.jpg', 'imagenes/333-225327065_348224736788714_1527437912227434118_n.jpg', 'imagenes/333-225399456_954495178430314_5142019259645111273_n.jpg'),
(288, 281, '2021-08-09 21:30:32', 'imagenes/281-IMG_20210801_235724.jpg', 'imagenes/281-IMG_20210801_235754.jpg', 'imagenes/281-IMG_20210801_235739.jpg'),
(289, 167, '2021-08-09 22:42:58', 'imagenes/167-96149877-39AA-42A4-BC01-03F4CE5EA626.jpeg', 'imagenes/167-AC889C8B-04B0-46E5-824A-24D07A594DFD.jpeg', 'imagenes/167-0CB1CE02-7FC4-4C4A-A1B3-A96F0A1FABCA.jpeg'),
(291, 120, '2021-08-09 23:46:22', 'imagenes/120-0E24CC8C-1C24-4ACF-BCCE-9F8CF57F11FF.jpeg', 'imagenes/120-1CD91498-201E-4F91-98A3-D46F006B724D.jpeg', 'imagenes/120-6C281E58-399E-4847-A776-077218B2F639.jpeg'),
(292, 326, '2021-08-10 00:12:05', 'imagenes/326-IMG_20210809_133418.jpg', 'imagenes/326-IMG_20210809_133450.jpg', 'imagenes/326-IMG_20210809_133713.jpg'),
(294, 320, '2021-08-10 11:04:38', 'imagenes/320-017D41BA-FC24-4113-A83D-A22746D716A1.jpeg', 'imagenes/320-50CE19B2-1136-4763-848F-ADFEC0BF7F9D.jpeg', 'imagenes/320-8794DEEC-4E13-44F4-8C2E-691472340E6B.jpeg'),
(295, 324, '2021-08-10 19:54:29', 'imagenes/324-WhatsApp Image 2021-08-10 at 2.50.56 PM.jpeg', 'imagenes/324-WhatsApp Image 2021-08-10 at 2.50.56 PM (3).jpeg', 'imagenes/324-WhatsApp Image 2021-08-10 at 2.50.56 PM (1).jpeg'),
(298, 327, '2021-08-10 22:08:00', 'imagenes/327-IMG_20210810_121259.jpg', 'imagenes/327-IMG_20210810_121412.jpg', 'imagenes/327-IMG_20210810_121754_1.jpg'),
(299, 328, '2021-08-10 22:54:07', 'imagenes/328-IMG-20210810-WA0009.jpg', 'imagenes/328-IMG-20210810-WA0006.jpg', 'imagenes/328-IMG-20210810-WA0011.jpg'),
(300, 314, '2021-08-11 20:53:08', 'imagenes/314-567A1F0F-80D9-4358-9442-FBC74F6941E1.jpeg', 'imagenes/314-4E79145B-D358-402E-8CC2-FBEB1E1720EA.jpeg', 'imagenes/314-9E39BBFB-3143-4C25-8013-A53F67B00E01.jpeg'),
(301, 313, '2021-08-11 20:53:27', 'imagenes/313-IMG_20210811_194915145.jpg', 'imagenes/313-IMG_20210811_194946755.jpg', 'imagenes/313-IMG_20210811_194934782.jpg'),
(302, 319, '2021-08-11 21:24:19', 'imagenes/319-WhatsApp Image 2021-08-11 at 20.21.03.jpeg', 'imagenes/319-WhatsApp Image 2021-08-11 at 20.21.16.jpeg', 'imagenes/319-WhatsApp Image 2021-08-11 at 20.21.10.jpeg'),
(303, 295, '2021-08-12 19:32:56', 'imagenes/295-bri 3.jpg', 'imagenes/295-Bri 1.jpg', 'imagenes/295-bri 2.jpg'),
(304, 268, '2021-08-12 23:24:48', 'imagenes/268-FRENTE120821.jpeg', 'imagenes/268-ESPALDA120821.jpeg', 'imagenes/268-LATERAL120821.jpeg'),
(305, 335, '2021-08-14 22:01:52', 'imagenes/335-3D6702C5-D21A-47BF-9E2B-0C5F3033B2CE.jpeg', 'imagenes/335-596352EF-F1DC-4DBB-87A2-DC3FED161A6B.jpeg', 'imagenes/335-6AF4C0C1-A9CC-4CD2-AB68-F03EB288CA4C.jpeg'),
(306, 316, '2021-08-15 21:41:47', 'imagenes/316-IMG-20210809-WA0049.jpg', 'imagenes/316-IMG-20210813-WA0029.jpg', 'imagenes/316-IMG-20210809-WA0052.jpg'),
(307, 141, '2021-08-16 13:07:32', 'imagenes/141-ABDB74F3-C076-427D-874B-7BD14A6630B5.jpeg', 'imagenes/141-5ED6B392-3BC6-420A-8F13-CC46139B241C.jpeg', 'imagenes/141-E39E8F19-F02E-4A5A-8A3C-13B51F5C6C19.jpeg'),
(309, 342, '2021-08-16 18:53:15', 'imagenes/342-8C6959FA-419A-4517-A5A9-A3A13FD98349.jpeg', 'imagenes/342-545393CB-9816-46A0-A46C-2405F6F091D2.jpeg', 'imagenes/342-E5154B1F-3869-4FE9-A172-6CAEBB4FD1C2.jpeg'),
(310, 99, '2021-08-16 22:26:34', 'imagenes/99-5DE1FB10-BECD-45B9-8E31-F9957477E792.jpeg', 'imagenes/99-1EFB9B27-0FA7-4023-824F-714CA6392F9B.jpeg', 'imagenes/99-F00AE213-B639-44C8-A061-AB21FFAC5330.jpeg'),
(311, 222, '2021-08-21 12:44:33', 'imagenes/222-F7488F84-B0F4-4AB3-A08C-3F4935E169EC.jpeg', 'imagenes/222-9FD5B7F6-735C-46FE-9ED0-0D9DF46686CA.jpeg', 'imagenes/222-C3B6EED4-50C3-41F3-99AF-676FEF9FAB63.jpeg'),
(312, 291, '2021-08-23 22:57:29', 'imagenes/291-1.jpeg', 'imagenes/291-1.2.jpeg', 'imagenes/291-1.1.jpeg'),
(313, 283, '2021-08-29 19:57:26', 'imagenes/283-IMG-20210829-WA0002.jpg', 'imagenes/283-IMG-20210829-WA0003.jpg', 'imagenes/283-IMG-20210829-WA0001.jpg'),
(314, 349, '2021-09-20 17:31:07', 'imagenes/349-3268956E-713A-419C-9CA9-16334DA4ED1B.jpeg', 'imagenes/349-48850272-FE09-4E7D-8328-78AA5B8B8384.jpeg', 'imagenes/349-BD5B61DB-B043-45D5-B050-5409384F8011.jpeg'),
(316, 345, '2021-09-20 19:47:25', 'imagenes/345-20210920_183357.jpg', 'imagenes/345-20210920_183443.jpg', 'imagenes/345-20210920_183448.jpg'),
(318, 358, '2021-09-20 22:39:49', 'imagenes/358-frente.jpeg', 'imagenes/358-espalda.jpeg', 'imagenes/358-de lado.jpeg'),
(319, 352, '2021-09-20 22:44:14', 'imagenes/352-', 'imagenes/352-', 'imagenes/352-'),
(320, 356, '2021-09-20 22:56:38', 'imagenes/356-', 'imagenes/356-', 'imagenes/356-'),
(321, 344, '2021-09-20 22:57:30', 'imagenes/344-IMG-20210920-WA0083.jpg', 'imagenes/344-IMG-20210920-WA0086.jpg', 'imagenes/344-IMG-20210920-WA0085.jpg'),
(322, 347, '2021-09-20 23:02:27', 'imagenes/347-Imagen_221649.jpg', 'imagenes/347-IMG-20210920-WA0034.jpg', 'imagenes/347-Imagen_699890.jpg'),
(323, 350, '2021-09-21 12:29:28', 'imagenes/350-0899775F-C956-4195-ABF5-4C8395FA28AA.jpeg', 'imagenes/350-D82F5617-E18B-4456-AADB-3EE369325272.jpeg', 'imagenes/350-8990296E-06E8-4D2F-BEA4-FF871D2BDB81.jpeg'),
(324, 360, '2021-09-21 14:50:43', 'imagenes/360-16322501097252714382835911376813.jpg', 'imagenes/360-16322501534362494467752614564700.jpg', 'imagenes/360-16322501742442439033342456475442.jpg'),
(326, 359, '2021-09-21 15:51:53', 'imagenes/359-WhatsApp Image 2021-09-21 at 2.51.02 PM.jpeg', 'imagenes/359-WhatsApp Image 2021-09-21 at 2.51.02 PM (1).jpeg', 'imagenes/359-WhatsApp Image 2021-09-21 at 2.51.02 PM (2).jpeg'),
(327, 355, '2021-09-24 15:19:05', 'imagenes/355-91103343-0C2A-406A-B700-234830940EAC.jpeg', 'imagenes/355-C7E1CAA5-3224-4392-9EF1-0E0F64EA18C5.jpeg', 'imagenes/355-0EFC18A9-CC16-4B4A-AD1F-0B7A390D0730.jpeg'),
(328, 231, '2021-09-24 21:55:56', 'imagenes/231-IMG_2374 (3).JPG', 'imagenes/231-IMG_2115.JPG', 'imagenes/231-Captura.PNG'),
(330, 363, '2021-09-26 23:23:05', 'imagenes/363-WhatsApp Image 2021-09-26 at 10.16.45 PM.jpeg', 'imagenes/363-WhatsApp Image 2021-09-26 at 10.16.45 PM (4).jpeg', 'imagenes/363-WhatsApp Image 2021-09-26 at 10.16.45 PM (3).jpeg'),
(331, 362, '2021-09-26 23:23:11', 'imagenes/362-9D88A9F6-8684-4F29-A3B4-6033F10EDF5E.jpeg', 'imagenes/362-33163874-625F-4F00-8988-CFC576A7FE8C.jpeg', 'imagenes/362-217EA12F-CB82-4537-A49B-EE88049EFE0B.jpeg'),
(332, 361, '2021-09-27 20:58:14', 'imagenes/361-', 'imagenes/361-', 'imagenes/361-'),
(333, 377, '2021-10-10 17:18:49', 'imagenes/377-16339005690483195368339422023892.jpg', 'imagenes/377-16339006574614197342486003632361.jpg', 'imagenes/377-16339006764832367233943885504414.jpg'),
(335, 372, '2021-10-10 23:03:00', 'imagenes/372-20211008_191216.jpg', 'imagenes/372-20211008_190831.jpg', 'imagenes/372-20211008_190952.jpg'),
(337, 367, '2021-10-10 23:36:18', 'imagenes/367-WhatsApp Image 2021-10-10 at 9.33.48 PM.jpeg', 'imagenes/367-WhatsApp Image 2021-10-10 at 9.33.48 PM (1).jpeg', 'imagenes/367-WhatsApp Image 2021-10-10 at 9.30.26 PM.jpeg'),
(338, 376, '2021-10-11 11:45:13', 'imagenes/376-20211011_104248.jpg', 'imagenes/376-20211011_104258.jpg', 'imagenes/376-20211011_104300.jpg'),
(340, 386, '2021-10-11 14:23:53', 'imagenes/386-Frente.jpg', 'imagenes/386-Espalda.jpg', 'imagenes/386-Lateral.jpg'),
(341, 368, '2021-10-11 18:12:45', 'imagenes/368-WhatsApp Image 2021-10-07 at 23.42.06 (1).jpeg', 'imagenes/368-WhatsApp Image 2021-10-07 at 23.42.05.jpeg', 'imagenes/368-WhatsApp Image 2021-10-07 at 23.42.06.jpeg'),
(342, 380, '2021-10-11 18:28:28', 'imagenes/380-2D9EAC76-8FBA-4718-86AF-DB3467C55E82.jpeg', 'imagenes/380-668B28E6-A3CC-4D1E-8132-72141E7B3D5B.jpeg', 'imagenes/380-4CE26430-61BD-44F0-A29D-9FDF72C12939.jpeg'),
(343, 159, '2021-10-11 18:40:22', 'imagenes/159-D8498E6F-FC47-44C5-9A79-E5054AED033F.jpeg', 'imagenes/159-0F1A4254-08AA-4BC1-84D8-04DE69CB5FB6.jpeg', 'imagenes/159-9DB0C09D-46D9-4DCF-ABF6-61F8A6B62065.jpeg'),
(345, 371, '2021-10-11 19:42:52', 'imagenes/371-FrenteJFRJ.jpeg', 'imagenes/371-ESPALDAJFRJ.jpeg', 'imagenes/371-costadoJFRJ.jpeg'),
(346, 370, '2021-10-11 20:13:21', 'imagenes/370-95437613-39C1-49DC-8C56-A5649ADC0210.jpeg', 'imagenes/370-50378470-15E5-41F9-8965-1D97170E06E3.jpeg', 'imagenes/370-6CD989B3-B790-426B-A74A-742A708D2F82.jpeg'),
(348, 388, '2021-10-11 23:39:50', 'imagenes/388-IMG-20211011-WA0027.jpg', 'imagenes/388-IMG-20211011-WA0026.jpg', 'imagenes/388-IMG-20211011-WA0025.jpg'),
(349, 378, '2021-10-11 23:49:07', 'imagenes/378-IMG_20211011_221751.jpg', 'imagenes/378-IMG_20211011_221859.jpg', 'imagenes/378-IMG_20211011_221732.jpg'),
(350, 379, '2021-10-12 00:28:28', 'imagenes/379-IMG_20211011_221216.jpg', 'imagenes/379-IMG_20211011_221245.jpg', 'imagenes/379-IMG_20211011_221354.jpg'),
(351, 366, '2021-10-12 20:50:39', 'imagenes/366-9F9CC498-E2BB-4665-B754-D1C2FDEF22C1.jpeg', 'imagenes/366-329945E4-0914-4FBE-9753-27592B52320F.jpeg', 'imagenes/366-BB77AFF1-47D4-486F-A40F-C72B8DFF872B.jpeg'),
(352, 374, '2021-10-13 08:10:30', 'imagenes/374-IMG-20211012-WA0054.jpg', 'imagenes/374-IMG-20211012-WA0057.jpg', 'imagenes/374-IMG-20211012-WA0056.jpg'),
(354, 390, '2021-10-13 09:51:40', 'imagenes/390-IMG-20211013-WA0001.jpg', 'imagenes/390-IMG-20211013-WA0002.jpg', 'imagenes/390-IMG-20211012-WA0024.jpg'),
(355, 392, '2021-10-13 20:48:19', 'imagenes/392-WhatsApp Image 2021-10-13 at 19.01.50.jpeg', 'imagenes/392-WhatsApp Image 2021-10-13 at 19.02.03.jpeg', 'imagenes/392-WhatsApp Image 2021-10-13 at 19.02.16.jpeg'),
(357, 369, '2021-10-13 21:01:17', 'imagenes/369-E0F0D64D-4842-4AB8-A2A5-E93E0D567EBF.heic', 'imagenes/369-9886B951-3F41-43AA-B929-EE606476355F.heic', 'imagenes/369-50EA4EDE-9831-4835-B60A-B2147EDD6B87.heic'),
(358, 389, '2021-10-14 10:26:24', 'imagenes/389-WhatsApp Image 2021-10-14 at 09.19.21.jpeg', 'imagenes/389-WhatsApp Image 2021-10-14 at 09.19.21 (2).jpeg', 'imagenes/389-WhatsApp Image 2021-10-14 at 09.19.21 (1).jpeg'),
(359, 394, '2021-10-18 19:58:09', 'imagenes/394-WhatsApp Image 2021-10-18 at 6.45.13 PM (1).jpeg', 'imagenes/394-WhatsApp Image 2021-10-18 at 6.45.14 PM.jpeg', 'imagenes/394-WhatsApp Image 2021-10-18 at 6.45.13 PM.jpeg'),
(360, 395, '2021-10-25 15:12:10', 'imagenes/395-IMG_20211024_000721.jpg', 'imagenes/395-IMG_20211024_000851.jpg', 'imagenes/395-IMG_20211024_000804.jpg'),
(361, 293, '2021-10-27 11:09:37', 'imagenes/293-IMG_20211025_151133.jpg', 'imagenes/293-IMG_20211025_124447.jpg', 'imagenes/293-IMG_20211025_151125.jpg'),
(362, 396, '2021-10-27 23:10:18', 'imagenes/396-IFIXE7521.MOV', 'imagenes/396-a (9).jpeg', 'imagenes/396-a (6).jpeg'),
(363, 398, '2021-11-01 15:11:52', 'imagenes/398-F3CC0915-0780-4586-A734-21C25EC7057C.png', 'imagenes/398-AA3DACEE-73D1-42F9-901B-636272CA7DD7.png', 'imagenes/398-1B06A23C-A812-4662-961F-23B0B13EC60E.png'),
(364, 399, '2021-11-01 16:52:25', 'imagenes/399-DD01ECF8-C86F-44E5-844D-77960CEB7211.jpeg', 'imagenes/399-C55068A5-06F0-4A06-A7A0-DEE5847EF92B.jpeg', 'imagenes/399-D7C758C6-5AE3-40F5-B3D6-460A9527EFFD.jpeg'),
(365, 401, '2021-11-01 17:53:26', 'imagenes/401-CC93FC0B-BF85-44D8-A904-4FB8BBEA52A9.jpeg', 'imagenes/401-B09BA40F-EE21-4E27-AB01-86BAC7361345.jpeg', 'imagenes/401-75B0623C-EDB2-4A25-AA74-972E779F4DF6.jpeg'),
(366, 400, '2021-11-01 21:22:40', 'imagenes/400-IMG-20211101-WA0103~2.jpg', 'imagenes/400-IMG-20211101-WA0104.jpg', 'imagenes/400-IMG-20211101-WA0102.jpg'),
(367, 97, '2021-11-02 17:42:09', 'imagenes/97-20211102_140233.jpg', 'imagenes/97-20211102_140241.jpg', 'imagenes/97-20211102_140250.jpg'),
(369, 403, '2021-11-02 20:36:01', 'imagenes/403-BD2C0DE8-5BEE-4629-AE51-B397FE2B48BB.jpeg', 'imagenes/403-1944B1DE-8275-4EAE-8FA4-B59D26955516.jpeg', 'imagenes/403-980601AC-BF10-40EE-BA95-0E6A8772C94B.jpeg'),
(370, 96, '2021-11-03 11:12:21', 'imagenes/96-IMG_20211102_164958.jpg', 'imagenes/96-IMG_20211102_165010.jpg', 'imagenes/96-IMG_20211102_164949.jpg'),
(371, 407, '2021-11-04 12:25:04', 'imagenes/407-20211104_112232.jpg', 'imagenes/407-20211104_112301.jpg', 'imagenes/407-20211104_112252.jpg'),
(372, 409, '2021-11-06 23:22:02', 'imagenes/409-IMG-20211104-WA0044.jpg', 'imagenes/409-IMG-20211104-WA0042.jpg', 'imagenes/409-IMG-20211104-WA0043.jpg'),
(374, 410, '2021-11-07 21:31:54', 'imagenes/410-20211107_212515.jpg', 'imagenes/410-20211107_212619.jpg', 'imagenes/410-20211107_212609.jpg'),
(375, 411, '2021-11-07 23:26:57', 'imagenes/411-IMG_20211107_225440.jpg', 'imagenes/411-IMG_20211107_225453.jpg', 'imagenes/411-IMG_20211107_225448.jpg'),
(377, 397, '2021-11-30 14:09:19', 'imagenes/397-CA685278-CC73-4791-ACDA-16256844019C.jpeg', 'imagenes/397-112EFC08-2B24-4A87-AB2A-BDEC5FDF799B.jpeg', 'imagenes/397-F9F6B8D5-1726-4034-B595-5D4D88D2B268.jpeg'),
(379, 414, '2021-12-07 15:47:33', 'imagenes/414-0D434C2A-159F-4DAF-A911-1871CAF91D87.png', 'imagenes/414-97F6983E-95E5-4D4B-A904-236E0B9EB5D4.png', 'imagenes/414-A6FC4DC8-07E3-4DB3-ADB4-489E2BA0794D.png'),
(380, 416, '2022-01-10 14:37:55', 'imagenes/416-image.jpg', 'imagenes/416-image.jpg', 'imagenes/416-image.jpg'),
(381, 421, '2022-01-10 16:37:39', 'imagenes/421-WhatsApp Image 2022-01-10 at 3.35.45 PM.jpeg', 'imagenes/421-WhatsApp Image 2022-01-10 at 3.35.46 PM.jpeg', 'imagenes/421-WhatsApp Image 2022-01-10 at 3.35.46 PM (1).jpeg'),
(382, 419, '2022-01-10 17:19:38', 'imagenes/419-4C7AE8C0-6B1B-4504-AC34-DB68EB8B148A.jpeg', 'imagenes/419-A61F3E75-E976-4DAA-8624-A048ED6737AA.jpeg', 'imagenes/419-52EB566F-022A-46BB-9793-A67F1EC9123F.jpeg'),
(383, 162, '2022-01-10 18:28:51', 'imagenes/162-frente.jpg', 'imagenes/162-espalda.jpg', 'imagenes/162-perfil.jpg'),
(384, 426, '2022-01-10 23:14:06', 'imagenes/426-IMG-20220110-WA0009.jpg', 'imagenes/426-IMG-20220110-WA0011.jpg', 'imagenes/426-IMG-20220110-WA0010.jpg'),
(385, 424, '2022-01-11 09:29:16', 'imagenes/424-IMG_20220111_093918.jpg', 'imagenes/424-IMG_20220111_093942.jpg', 'imagenes/424-IMG_20220111_093859.jpg'),
(386, 427, '2022-01-12 18:11:38', 'imagenes/427-no-avatar.png', 'imagenes/427-no-avatar.png', 'imagenes/427-no-avatar.png'),
(387, 420, '2022-01-13 11:18:51', 'imagenes/420-4DE0DB32-4E6D-4348-8655-711BE882B249.jpeg', 'imagenes/420-D46774F3-98E5-4ECB-A99D-40636ED4D5D6.jpeg', 'imagenes/420-C60A35B1-5E16-4B83-AB8F-B00C8054BCDD.jpeg'),
(388, 428, '2022-01-13 15:36:32', 'imagenes/428-2767F5FD-3BC5-4DEF-A328-B6B8B66BC031.jpeg', 'imagenes/428-EA7C49A1-A2C0-4386-84AD-7CAF47EB4BB9.jpeg', 'imagenes/428-A5EF55D2-DF50-4D8C-BECA-5E1D72915980.jpeg'),
(389, 415, '2022-01-14 10:32:41', 'imagenes/415-IMG_20220113_201127_2.jpg', 'imagenes/415-IMG_20220113_201101_1.jpg', 'imagenes/415-IMG_20220113_201018_2.jpg'),
(390, 422, '2022-01-14 12:20:10', 'imagenes/422-IMG-20220110-WA0019.jpg', 'imagenes/422-IMG-20220110-WA0024.jpg', 'imagenes/422-IMG-20220110-WA0022.jpg'),
(391, 425, '2022-01-14 12:56:29', 'imagenes/425-5F29E589-CF28-4D90-A113-F6EB2A21E3C9.jpeg', 'imagenes/425-157AA170-F6B2-486D-A00B-24D5BA1150A0.jpeg', 'imagenes/425-97A21C77-0A6A-478F-BAEE-CBA2597AAEEF.jpeg'),
(393, 430, '2022-01-17 17:58:31', 'imagenes/430-IMG_20220117_174709~2.jpg', 'imagenes/430-Picsart_22-01-17_17-56-39-588.jpg', 'imagenes/430-Picsart_22-01-17_17-57-34-430.jpg'),
(394, 195, '2022-01-18 11:37:20', 'imagenes/195-IMG_0672.JPG', 'imagenes/195-IMG_0669.JPG', 'imagenes/195-IMG_0671.JPG'),
(395, 431, '2022-01-18 20:58:34', 'imagenes/431-440F7F92-F544-4DB5-857E-F4AD3B49BF9F.jpeg', 'imagenes/431-13521798-5CF8-4EA5-BA0B-921998A1B09F.jpeg', 'imagenes/431-ADE34E36-B572-4CE2-BF33-3FE693FFBBB3.jpeg'),
(396, 434, '2022-02-02 09:30:20', 'imagenes/434-IMG_20220202_092143.jpg', 'imagenes/434-IMG_20220202_092149.jpg', 'imagenes/434-IMG_20220202_092124.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `IMC`
--

CREATE TABLE `IMC` (
  `id_imc` int(11) NOT NULL,
  `usuario_id_usuario` int(11) NOT NULL,
  `pesoUsr` decimal(5,2) NOT NULL,
  `alturaUsr` decimal(5,2) NOT NULL,
  `imcUsr` decimal(5,2) NOT NULL,
  `Entrenamiento` varchar(10) DEFAULT NULL,
  `mes_mes` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `IMC`
--

INSERT INTO `IMC` (`id_imc`, `usuario_id_usuario`, `pesoUsr`, `alturaUsr`, `imcUsr`, `Entrenamiento`, `mes_mes`) VALUES
(237, 1, 65.00, 1.75, 21.22, '1.2', '2021-08-07 11:30:49'),
(238, 265, 72.50, 1.56, 29.79, '1.4', '2021-08-08 18:18:25'),
(239, 332, 107.00, 1.60, 41.80, '1.2', '2021-08-08 19:41:39'),
(240, 307, 85.40, 1.67, 30.62, '1.2', '2021-08-08 21:18:16'),
(241, 323, 93.20, 1.61, 35.96, '1.4', '2021-08-08 22:01:48'),
(242, 308, 106.00, 1.80, 32.72, '1.4', '2021-08-09 02:01:22'),
(243, 330, 90.00, 1.49, 40.54, '1.2', '2021-08-09 08:15:58'),
(244, 262, 61.60, 1.58, 24.68, '1.4', '2021-08-09 10:00:05'),
(245, 306, 102.20, 1.70, 35.36, '1.4', '2021-08-09 10:26:36'),
(246, 334, 74.50, 1.74, 24.61, '1.4', '2021-08-09 11:47:29'),
(247, 331, 80.00, 1.49, 36.03, '1.4', '2021-08-09 12:41:27'),
(248, 338, 69.60, 1.61, 26.85, '1.2', '2021-08-09 15:26:38'),
(249, 336, 71.40, 1.50, 31.73, '1.4', '2021-08-09 17:17:29'),
(250, 210, 64.10, 1.48, 29.26, '1.4', '2021-08-09 17:32:03'),
(251, 329, 62.90, 1.61, 24.27, '1.4', '2021-08-09 17:41:34'),
(252, 315, 105.00, 1.77, 33.52, '1.4', '2021-08-09 18:06:25'),
(253, 135, 104.20, 1.67, 37.36, '1.2', '2021-08-09 18:20:02'),
(254, 266, 88.50, 1.65, 32.51, '1.4', '2021-08-09 18:48:12'),
(256, 321, 80.00, 1.63, 30.11, '1.2', '2021-08-09 18:53:09'),
(257, 311, 55.00, 1.52, 23.81, '1.4', '2021-08-09 18:56:05'),
(258, 317, 77.80, 1.65, 28.58, '1.4', '2021-08-09 19:13:09'),
(259, 201, 83.80, 1.60, 32.73, '1.4', '2021-08-09 19:30:08'),
(260, 97, 60.10, 1.54, 25.34, '1.4', '2021-08-09 19:30:16'),
(261, 322, 77.00, 1.60, 30.08, '1.2', '2021-08-09 20:32:35'),
(262, 309, 98.00, 1.77, 31.28, '1.4', '2021-08-09 21:01:34'),
(263, 270, 75.00, 1.65, 27.55, '1.4', '2021-08-09 21:04:00'),
(264, 318, 70.80, 1.54, 29.85, '1.4', '2021-08-09 21:04:29'),
(265, 333, 43.00, 1.64, 15.99, '1.2', '2021-08-09 21:14:50'),
(266, 281, 63.40, 1.60, 24.77, '1.4', '2021-08-09 21:31:57'),
(267, 167, 44.80, 1.50, 19.91, '1.4', '2021-08-09 22:44:09'),
(268, 120, 63.00, 1.52, 27.27, '1.4', '2021-08-09 23:47:00'),
(269, 326, 67.90, 1.65, 24.94, '1.4', '2021-08-10 00:13:25'),
(270, 96, 111.00, 1.71, 37.96, '1.4', '2021-08-10 01:01:01'),
(271, 320, 77.20, 1.59, 30.54, '1.4', '2021-08-10 11:05:23'),
(272, 324, 73.00, 1.60, 28.52, '1.4', '2021-08-10 19:55:00'),
(273, 337, 66.00, 1.57, 26.78, '1.4', '2021-08-10 20:02:08'),
(274, 327, 96.80, 1.72, 32.72, '1.4', '2021-08-10 22:18:38'),
(275, 328, 55.00, 1.53, 23.50, '1.2', '2021-08-10 22:54:59'),
(276, 313, 82.60, 1.62, 31.47, '1.4', '2021-08-11 20:54:30'),
(277, 314, 95.60, 1.62, 36.43, '1.4', '2021-08-11 20:54:38'),
(278, 319, 60.00, 1.64, 22.31, '1.4', '2021-08-11 21:24:54'),
(279, 295, 90.00, 1.60, 35.16, '1.4', '2021-08-12 19:33:40'),
(280, 268, 77.60, 1.66, 28.16, '1.4', '2021-08-12 23:26:12'),
(281, 335, 62.00, 1.52, 26.84, '1.4', '2021-08-14 22:06:49'),
(282, 316, 73.00, 1.63, 27.48, '1.4', '2021-08-15 21:42:38'),
(283, 342, 92.90, 1.74, 30.68, '1.4', '2021-08-16 18:55:40'),
(284, 99, 74.90, 1.64, 27.85, '1.4', '2021-08-16 22:27:51'),
(285, 222, 58.50, 1.56, 24.04, '1.2', '2021-08-21 12:49:30'),
(286, 291, 47.00, 1.55, 19.56, '1.2', '2021-08-23 22:58:21'),
(287, 283, 83.18, 1.58, 33.32, '1.4', '2021-08-29 19:58:32'),
(288, 141, 54.61, 1.65, 20.06, '1.4', '2021-08-31 13:47:12'),
(289, 349, 73.00, 1.65, 26.81, '1.4', '2021-09-20 17:31:40'),
(290, 346, 88.27, 1.60, 34.48, '1.4', '2021-09-20 19:31:09'),
(291, 345, 76.19, 1.67, 27.32, '1.4', '2021-09-20 19:48:22'),
(292, 358, 100.00, 1.66, 36.29, '1.4', '2021-09-20 22:43:44'),
(293, 352, 78.20, 1.56, 32.13, '1.4', '2021-09-20 22:45:45'),
(294, 356, 107.50, 1.80, 33.18, '1.4', '2021-09-20 22:57:10'),
(295, 344, 70.30, 1.56, 28.89, '1.4', '2021-09-20 22:58:01'),
(296, 347, 47.30, 148.00, 0.00, '1.4', '2021-09-20 23:03:07'),
(297, 350, 93.00, 1.78, 29.35, '1.4', '2021-09-21 12:31:36'),
(298, 360, 82.10, 1.56, 33.74, '1.4', '2021-09-21 14:52:00'),
(299, 360, 82.10, 1.56, 33.74, '1.4', '2021-09-21 14:55:55'),
(300, 359, 61.00, 1.58, 24.44, '1.4', '2021-09-21 15:55:14'),
(301, 354, 73.10, 1.50, 32.49, '1.4', '2021-09-21 18:43:50'),
(302, 355, 54.43, 1.52, 23.56, '1.4', '2021-09-24 15:21:19'),
(303, 231, 80.00, 1.60, 31.25, '1.4', '2021-09-24 21:56:41'),
(304, 363, 77.40, 1.67, 27.75, '1.4', '2021-09-26 23:29:04'),
(305, 362, 68.50, 1.50, 30.44, '1.4', '2021-09-26 23:29:06'),
(306, 361, 95.20, 1.65, 34.97, '1.2', '2021-09-27 21:01:06'),
(307, 377, 112.40, 1.65, 41.29, '1.4', '2021-10-10 17:26:00'),
(308, 373, 88.00, 1.80, 27.16, '1.2', '2021-10-10 17:58:42'),
(309, 372, 66.70, 1.67, 23.92, '1.4', '2021-10-10 23:06:01'),
(310, 367, 91.10, 1.54, 38.41, '1.4', '2021-10-10 23:43:53'),
(311, 376, 71.60, 1.46, 33.59, '1.4', '2021-10-11 11:46:09'),
(312, 368, 101.00, 1.68, 35.79, '1.4', '2021-10-11 18:13:23'),
(313, 380, 76.60, 1.69, 26.82, '1.4', '2021-10-11 18:31:41'),
(314, 371, 95.00, 1.78, 29.98, '1.4', '2021-10-11 19:47:13'),
(316, 159, 84.60, 1.63, 31.84, '1.4', '2021-10-11 19:58:09'),
(317, 370, 77.50, 1.64, 28.81, '1.4', '2021-10-11 20:35:12'),
(318, 388, 86.70, 1.63, 32.63, '1.4', '2021-10-11 23:45:59'),
(319, 378, 62.90, 1.51, 27.59, '1.4', '2021-10-11 23:51:14'),
(320, 379, 86.30, 1.61, 33.29, '1.4', '2021-10-12 00:30:35'),
(321, 366, 70.00, 1.62, 26.67, '1.2', '2021-10-13 01:03:07'),
(322, 374, 76.30, 1.55, 31.76, '1.4', '2021-10-13 08:12:54'),
(323, 390, 85.50, 1.62, 32.58, '1.4', '2021-10-13 09:55:00'),
(324, 392, 76.00, 1.63, 28.60, '1.4', '2021-10-13 20:48:50'),
(325, 369, 75.00, 1.62, 28.58, '1.4', '2021-10-13 21:01:58'),
(326, 389, 86.00, 1.80, 26.54, '1.4', '2021-10-14 10:27:09'),
(327, 394, 104.00, 1.50, 46.22, '1.4', '2021-10-18 19:59:04'),
(328, 395, 82.00, 1.63, 30.86, '1.2', '2021-10-25 15:13:39'),
(329, 293, 67.00, 1.59, 26.50, '1.4', '2021-10-27 11:10:21'),
(330, 396, 65.00, 1.64, 24.17, '1.4', '2021-10-27 23:11:02'),
(331, 398, 71.10, 1.59, 28.12, '1.4', '2021-11-01 15:12:36'),
(332, 399, 90.00, 1.75, 29.39, '1.4', '2021-11-01 16:54:53'),
(333, 401, 62.10, 1.67, 22.27, '1.4', '2021-11-01 17:54:09'),
(334, 400, 118.00, 1.63, 44.41, '1.2', '2021-11-01 21:28:07'),
(335, 405, 100.00, 1.58, 40.06, '1.4', '2021-11-02 19:17:08'),
(336, 403, 50.00, 1.61, 19.29, '1.4', '2021-11-02 20:37:23'),
(337, 407, 75.00, 1.73, 25.06, '1.4', '2021-11-04 12:26:17'),
(338, 409, 75.00, 1.63, 28.23, '1.2', '2021-11-06 23:22:51'),
(339, 410, 87.00, 1.65, 31.96, '1.2', '2021-11-07 21:34:02'),
(340, 411, 74.00, 1.65, 27.18, '1.4', '2021-11-07 23:27:35'),
(341, 397, 80.73, 1.52, 34.94, '1.2', '2021-11-30 14:12:17'),
(342, 414, 98.00, 1.87, 28.02, '1.4', '2021-12-07 15:49:26'),
(343, 416, 65.30, 1.66, 23.70, '1.4', '2022-01-10 14:40:49'),
(344, 421, 43.25, 1.60, 16.89, '1.4', '2022-01-10 16:38:22'),
(345, 419, 55.00, 164.00, 0.00, '1.4', '2022-01-10 17:19:58'),
(346, 162, 110.00, 1.70, 38.06, '1.4', '2022-01-10 18:29:23'),
(347, 426, 53.40, 1.56, 21.94, '1.4', '2022-01-10 23:14:52'),
(348, 424, 48.00, 1.60, 18.75, '1.2', '2022-01-11 09:30:04'),
(349, 427, 80.00, 1.70, 27.68, '1.4', '2022-01-12 18:11:56'),
(350, 420, 75.00, 1.71, 25.65, '1.4', '2022-01-13 11:55:05'),
(351, 428, 73.30, 1.75, 23.93, '1.4', '2022-01-13 15:37:41'),
(352, 415, 63.00, 1.54, 26.56, '1.4', '2022-01-14 10:33:30'),
(353, 422, 46.00, 1.56, 18.90, '1.2', '2022-01-14 12:21:36'),
(354, 430, 68.80, 1.65, 25.27, '1.4', '2022-01-17 17:59:23'),
(355, 195, 65.00, 1.60, 25.39, '1.2', '2022-01-18 11:39:45'),
(356, 431, 67.80, 1.65, 24.90, '1.4', '2022-01-18 21:00:07'),
(357, 434, 80.40, 1.65, 29.53, '1.4', '2022-02-02 09:31:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reporte`
--

CREATE TABLE `reporte` (
  `id_reporte` int(11) NOT NULL,
  `usuario_id_usuario` int(10) NOT NULL,
  `pesoUsr` decimal(5,2) DEFAULT NULL,
  `nivelOdisea` varchar(100) DEFAULT NULL,
  `tiempoOdisea` varchar(100) DEFAULT NULL,
  `comentariosUsr` varchar(1000) DEFAULT NULL,
  `respuestaTeam` varchar(500) DEFAULT NULL,
  `team_id_team` int(11) DEFAULT NULL COMMENT 'id del entrenador',
  `fechaRespuestaTeam` datetime DEFAULT NULL,
  `fotoFrontal` varchar(500) DEFAULT NULL,
  `fotoEspaldas` varchar(500) DEFAULT NULL,
  `fotoPerfil` varchar(500) DEFAULT NULL,
  `fechaSemana` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `reporte`
--

INSERT INTO `reporte` (`id_reporte`, `usuario_id_usuario`, `pesoUsr`, `nivelOdisea`, `tiempoOdisea`, `comentariosUsr`, `respuestaTeam`, `team_id_team`, `fechaRespuestaTeam`, `fotoFrontal`, `fotoEspaldas`, `fotoPerfil`, `fechaSemana`) VALUES
(515, 135, 103.60, '3', '10.12 min', 'Por error creÃ© un reporte (el pasado) , lo que querÃ­a era subir mis fotos iniciales, espero borren el reporte, esta semana no me perdÃ­ ningÃºn entrenamiento y me siento muy bien, gracias!', NULL, NULL, NULL, 'imagenes/135-2021-08-15-IMG_2515.JPG', 'imagenes/135-2021-08-15-IMG_2524.JPG', 'imagenes/135-2021-08-15-IMG_2514.JPG', '2021-08-15 16:53:23'),
(519, 318, 70.80, '1', '8.08.30', '', NULL, NULL, NULL, 'imagenes/318-2021-08-15-20210815_185153.jpg', 'imagenes/318-2021-08-15-20210815_185141.jpg', 'imagenes/318-2021-08-15-20210815_184856.jpg', '2021-08-15 21:37:14'),
(521, 333, 43.80, '1', '8 minutos', 'Me siento muy cÃ³moda con los ejercicios que marcan en las sesiones ya que no son tan pesados y como es mi primera vez en este reto me motiva dÃ­a a dÃ­a a seguir.', NULL, NULL, NULL, 'imagenes/333-2021-08-15-235930470_584930142501977_1722454760585436727_n.jpg', 'imagenes/333-2021-08-15-224629559_1311140085967196_3795095766761349835_n.jpg', 'imagenes/333-2021-08-15-232972850_345030740646888_5263331109672699274_n.jpg', '2021-08-15 22:27:45'),
(522, 268, 78.00, '1', '6.38', 'me sentÃ­ muy bien en la semana, solo realicÃ© 4 dias ejercicio pero me gusta la intensidad de este reto, en alimentaciÃ³n caÃ­ en la tentacion 2 dias , trabajarÃ© para ajustar mis macros.', NULL, NULL, NULL, 'imagenes/268-2021-08-15-Frente 2021-08-15.jpeg', 'imagenes/268-2021-08-15-ESPLD 2021-08-15.jpeg', 'imagenes/268-2021-08-15-LTERL 2021-08-15.jpeg', '2021-08-15 22:42:39'),
(528, 306, 103.40, '1', '12', 'SubÃ­ un kilo ðŸ˜­ðŸ˜­ðŸ˜­', NULL, NULL, NULL, 'imagenes/306-2021-08-16-IMG_20210816_211248.jpg', 'imagenes/306-2021-08-16-IMG_20210816_211607.jpg', 'imagenes/306-2021-08-16-IMG_20210816_211316.jpg', '2021-08-16 22:49:47'),
(535, 268, 1.76, '2', '6:40', 'Me gusta el ritmo de este reto, se me han complicado los tiempos y solo pude hacer 3 dÃ­as ejercicio, la alimentaciÃ³n me ha parecido correcta no he sentido hambre.', NULL, NULL, NULL, 'imagenes/268-2021-08-22-IMG-20210821-WA0110.jpg', 'imagenes/268-2021-08-22-IMG-20210821-WA0108.jpg', 'imagenes/268-2021-08-22-IMG-20210821-WA0109.jpg', '2021-08-22 13:49:21'),
(536, 233, 72.40, '3', '7', 'Tengo mÃ¡s dominio de los ejercicios, soy mÃ¡s Ã¡gil con las mancuernas y lo que me tiene mÃ¡s feliz es que se me caen los pantalones.', NULL, NULL, NULL, 'imagenes/233-2021-08-22-IMG-20210822-WA0011.jpg', 'imagenes/233-2021-08-22-IMG-20210822-WA0013.jpg', 'imagenes/233-2021-08-22-IMG-20210822-WA0012.jpg', '2021-08-22 14:27:04'),
(537, 201, 82.50, '3', '9:27', 'Aun no logro pasar el nivel 3 espero la semana que viene lograrlo.', NULL, NULL, NULL, 'imagenes/201-2021-08-22-IMG-20210822-WA0004.jpg', 'imagenes/201-2021-08-22-IMG-20210822-WA0005.jpg', 'imagenes/201-2021-08-22-IMG-20210822-WA0006.jpg', '2021-08-22 14:44:06'),
(543, 319, 59.00, '4', '9 minutis', '', NULL, NULL, NULL, 'imagenes/319-2021-08-23-WhatsApp Image 2021-08-22 at 22.58.43.jpeg', 'imagenes/319-2021-08-23-WhatsApp Image 2021-08-22 at 22.58.16.jpeg', 'imagenes/319-2021-08-23-WhatsApp Image 2021-08-22 at 22.58.19.jpeg', '2021-08-23 00:11:20'),
(544, 319, 60.50, '3', '10 minutos', 'Este es el reporte de la primer semana, creo que no lo envie correctamnete y hoy al enviar el de la segunda semana me di cuenta que no se habia enviado.\r\nUna disculpa. De quÃ© empezo el reto a la fecha he bajado 2 kilos.', NULL, NULL, NULL, 'imagenes/319-2021-08-23-WhatsApp Image 2021-08-22 at 22.58.43.jpeg', 'imagenes/319-2021-08-23-WhatsApp Image 2021-08-11 at 14.15.04.jpeg', 'imagenes/319-2021-08-23-WhatsApp Image 2021-08-11 at 14.14.34.jpeg', '2021-08-23 00:22:46'),
(547, 327, 94.60, '1', '7 min 32 seg', 'Lo siento, olvide el short negro en otra casa y no pude subir con la misma vestimenta', NULL, NULL, NULL, 'imagenes/327-2021-08-23-IMG-20210822-WA0016.jpg', 'imagenes/327-2021-08-23-IMG-20210822-WA0015.jpg', 'imagenes/327-2021-08-23-IMG-20210822-WA0019.jpg', '2021-08-23 00:40:32'),
(548, 227, 88.60, '4', '11:40', 'PerdÃ³n por no haber envÃ­ado antes los resportes. ', NULL, NULL, NULL, 'imagenes/227-2021-08-23-WhatsApp Image 2021-08-22 at 11.51.39 PM (2).jpeg', 'imagenes/227-2021-08-23-WhatsApp Image 2021-08-22 at 11.51.39 PM.jpeg', 'imagenes/227-2021-08-23-WhatsApp Image 2021-08-22 at 11.51.39 PM (1).jpeg', '2021-08-23 00:53:15'),
(549, 320, 75.00, '2', '11:20', '', NULL, NULL, NULL, 'imagenes/320-2021-08-23-9650EC43-1A90-486F-A252-09D722A828DD.jpeg', 'imagenes/320-2021-08-23-380B7B97-F126-4DBA-854E-78BA1F471D2A.jpeg', 'imagenes/320-2021-08-23-53527379-31A5-4E38-8EA7-EA6A57F70A56.jpeg', '2021-08-23 11:29:59'),
(550, 318, 70.30, '1', '8.00.08', '', NULL, NULL, NULL, 'imagenes/318-2021-08-23-20210822_202145.jpg', 'imagenes/318-2021-08-23-20210822_202134.jpg', 'imagenes/318-2021-08-23-20210822_202200.jpg', '2021-08-23 12:25:11'),
(557, 233, 72.40, '2', '7', 'Me siento muy bien por los logros alcanzados, mi salud mejora cada dÃ­a, no bajo de peso pero veo cambios.', NULL, NULL, NULL, 'imagenes/233-2021-08-29-IMG-20210829-WA0010.jpg', 'imagenes/233-2021-08-29-IMG-20210829-WA0011.jpg', 'imagenes/233-2021-08-29-IMG-20210829-WA0009.jpg', '2021-08-29 19:00:06'),
(563, 201, 81.50, '3', '09:27', 'Una disculpa esta vez no hice la oddisea me duele mucho la rodilla y decidÃ­ reposar, al igual que me retrase en el horario de entrega lo siento fue un fin de semana atareado  ', NULL, NULL, NULL, 'imagenes/201-2021-08-30-IMG-20210829-WA0003.jpg', 'imagenes/201-2021-08-30-IMG-20210829-WA0005.jpg', 'imagenes/201-2021-08-30-IMG-20210829-WA0001.jpg', '2021-08-30 00:19:55'),
(564, 333, 0.00, '', '', '', NULL, NULL, NULL, 'imagenes/333-2021-08-30-', 'imagenes/333-2021-08-30-', 'imagenes/333-2021-08-30-', '2021-08-30 00:27:05'),
(567, 333, 45.00, '2', '9', 'Aun se me complican un poco las lagartijas aunque sean las de principiante ', NULL, NULL, NULL, 'imagenes/333-2021-08-30-IMG-20210829-WA0052.jpg', 'imagenes/333-2021-08-30-IMG-20210829-WA0053.jpg', 'imagenes/333-2021-08-30-IMG-20210829-WA0054.jpg', '2021-08-30 00:47:46'),
(568, 327, 94.10, '2', '7 min 58 seg', '', NULL, NULL, NULL, 'imagenes/327-2021-08-30-IMG-20210829-WA0019.jpg', 'imagenes/327-2021-08-30-IMG-20210829-WA0015.jpg', 'imagenes/327-2021-08-30-IMG-20210829-WA0017.jpg', '2021-08-30 00:55:39'),
(570, 319, 58.00, '4', '10 minutos', '', NULL, NULL, NULL, 'imagenes/319-2021-08-30-WhatsApp Image 2021-08-30 at 00.05.51.jpeg', 'imagenes/319-2021-08-30-WhatsApp Image 2021-08-30 at 00.05.47.jpeg', 'imagenes/319-2021-08-30-WhatsApp Image 2021-08-30 at 00.05.58.jpeg', '2021-08-30 01:21:05'),
(571, 135, 103.90, '3', '10.02', 'Mejorando un poco los tiempos de la odisea nÃºmero 3, no nos rendimos!:D', NULL, NULL, NULL, 'imagenes/135-2021-08-30-IMG_4421.JPG', 'imagenes/135-2021-08-30-IMG_4418.JPG', 'imagenes/135-2021-08-30-IMG_4417.JPG', '2021-08-30 09:09:26'),
(572, 329, 61.30, '3', '14:39', '', NULL, NULL, NULL, 'imagenes/329-2021-08-30-20210830_193245.jpg', 'imagenes/329-2021-08-30-20210830_192501.jpg', 'imagenes/329-2021-08-30-20210830_192554.jpg', '2021-08-30 20:52:16'),
(582, 333, 46.00, '2', '9 min', 'Estuvo todo muy bien ya puedo mejorar las lagartijas solo que hay un problema lamentablemente tengo covid asÃ­ que el ejercicio del jueves y del viernes se me complicÃ³ un poco junto con la odisea asÃ­ que solo hice un poco debido a que debia descansar', NULL, NULL, NULL, 'imagenes/333-2021-09-05-20210905_224343.jpg', 'imagenes/333-2021-09-05-20210905_212447.jpg', 'imagenes/333-2021-09-05-20210905_212413.jpg', '2021-09-05 23:45:27'),
(585, 327, 92.30, '4', '8 min 49 seg', '', NULL, NULL, NULL, 'imagenes/327-2021-09-06-IMG-20210905-WA0010.jpg', 'imagenes/327-2021-09-06-IMG-20210905-WA0008.jpg', 'imagenes/327-2021-09-06-IMG-20210905-WA0009.jpg', '2021-09-06 00:37:16'),
(589, 320, 70.00, '3', '10:11', '', NULL, NULL, NULL, 'imagenes/320-2021-09-06-AF1DB42B-5891-4EED-8ADE-5D49EEDC0DEB.jpeg', 'imagenes/320-2021-09-06-B7C3269B-0C40-42AC-AEBF-DE466518E10B.jpeg', 'imagenes/320-2021-09-06-13AD7D96-C3A8-47F5-ABCE-7AA2FAACFC00.jpeg', '2021-09-06 12:52:27'),
(590, 306, 100.00, '1', '10', 'La fotos son pÃ©simas pero no tengo nadie que me ayude a tomarlas ni un tripiÃ© y pues ni modo, no querÃ­a pasar otra semana sin subir mi reporte. \r\nEn cuanto a la dieta me he sentido bien, me he sentido normal, tal vez no he progresado como quisiera pero al menos voy avanzando poco a poco ðŸ’ª', NULL, NULL, NULL, 'imagenes/306-2021-09-07-Screenshot_2021-09-06-23-14-44-052_com.miui.videoplayer.jpg', 'imagenes/306-2021-09-07-Screenshot_2021-09-06-23-14-51-466_com.miui.videoplayer.jpg', 'imagenes/306-2021-09-07-Screenshot_2021-09-06-23-14-47-316_com.miui.videoplayer.jpg', '2021-09-07 00:35:25'),
(597, 167, 44.00, '4', '13.39', '', NULL, NULL, NULL, 'imagenes/167-2021-09-12-BBFE02CC-8ED3-40AA-9110-668BD8424814.jpeg', 'imagenes/167-2021-09-12-783FD92B-64F0-4A2C-BDCD-E63AEA2B2BE8.jpeg', 'imagenes/167-2021-09-12-DE445849-DE5A-4534-8E7B-6AE2D5B90A42.jpeg', '2021-09-12 19:04:01'),
(603, 333, 0.00, '', '', '', NULL, NULL, NULL, 'imagenes/333-2021-09-12-', 'imagenes/333-2021-09-12-', 'imagenes/333-2021-09-12-', '2021-09-12 23:18:15'),
(610, 327, 92.10, '5', '13 min 48 seg', 'Esta semana tuve muchas fiestas de cumpleaÃ±os, por lo cual mucho pastel, siento que fue mi peor semana.', NULL, NULL, NULL, 'imagenes/327-2021-09-13-IMG-20210912-WA0006.jpg', 'imagenes/327-2021-09-13-IMG-20210912-WA0011.jpg', 'imagenes/327-2021-09-13-IMG-20210912-WA0003.jpg', '2021-09-13 00:48:09'),
(611, 141, 54.50, '5', '9:32;11', '', NULL, NULL, NULL, 'imagenes/141-2021-09-18-23DCA32C-F8C6-48B8-A7C2-DE769F60B3EC.jpeg', 'imagenes/141-2021-09-18-9CE70B14-3775-4956-BFFE-AF4E9C458CA4.jpeg', 'imagenes/141-2021-09-18-CB5D3419-68E2-4DD6-BAB3-97A69D50EDFB.jpeg', '2021-09-18 19:53:45'),
(618, 291, 47.00, '3', '9 minutos', 'Este reporte es de hoy, muy contenta de mis resultados y feliz de seguir con ustedes. Gracias!', NULL, NULL, NULL, 'imagenes/291-2021-09-18-6.jpeg', 'imagenes/291-2021-09-18-6.1.jpeg', 'imagenes/291-2021-09-18-6.2.jpeg', '2021-09-18 20:24:19'),
(627, 327, 90.40, '5', '12 min 54 seg', '', NULL, NULL, NULL, 'imagenes/327-2021-09-18-IMG-20210918-WA0016.jpg', 'imagenes/327-2021-09-18-IMG-20210918-WA0017.jpg', 'imagenes/327-2021-09-18-IMG-20210918-WA0014.jpg', '2021-09-18 21:02:38'),
(628, 328, 53.10, '4', '9 min 53 seg', '', NULL, NULL, NULL, 'imagenes/328-2021-09-18-IMG-20210918-WA0018.jpg', 'imagenes/328-2021-09-18-IMG-20210918-WA0020.jpg', 'imagenes/328-2021-09-18-IMG-20210918-WA0019.jpg', '2021-09-18 21:07:52'),
(632, 295, 85.00, '5', '13.48', 'Realice la odisea 6. En estas semanas o mas bien en este reto 2 pata mi, mi avance ha sido en que puedo notar que resisto mÃ¡s, tengo mejor condiciÃ³n y aunque mis cambios son lentos, se que voy a lograr mis metas, fueron difÃ­ciles estas semans por trabajo pero puedo ver que tengo determinaciÃ³n y pude concluirlo. Se que lograre mi meta final! ', NULL, NULL, NULL, 'imagenes/295-2021-09-18-bri 4.jpg', 'imagenes/295-2021-09-18-bri 11.jpg', 'imagenes/295-2021-09-18-bri 2.jpg', '2021-09-18 21:39:51'),
(635, 349, 73.00, '1', '7:59', '', NULL, NULL, NULL, 'imagenes/349-2021-09-25-8D77BC0C-7B1A-4533-8F58-D443770E7D74.jpeg', 'imagenes/349-2021-09-25-8CE085E0-98DF-4C82-AE45-0D622CA8ABF6.jpeg', 'imagenes/349-2021-09-25-C44E56BE-1DDA-4CD8-90E2-589F209B148F.jpeg', '2021-09-25 17:25:52'),
(637, 334, 74.00, '5', '15 minutos', 'Hice odisea 7, el campo de arriba solo permite seleccionar hasta la 5 ', NULL, NULL, NULL, 'imagenes/334-2021-09-25-FB4EB6F9-2821-46CC-A4F7-6792C43ADAA9.jpeg', 'imagenes/334-2021-09-25-8E2AD85A-11CD-482D-B3CA-7709CB071136.jpeg', 'imagenes/334-2021-09-25-8A0DAA26-9CB2-4ED8-98AF-383B92848892.jpeg', '2021-09-25 20:39:10'),
(639, 352, 78.00, '1', '7:57', 'Me sentÃ­ muy bien con los ejercicios!!! ', NULL, NULL, NULL, 'imagenes/352-2021-09-26-2CBD3E19-1022-429C-978D-D0198B8A922D.jpeg', 'imagenes/352-2021-09-26-A340A5A4-C853-4F94-9299-13944C45AD7C.jpeg', 'imagenes/352-2021-09-26-AB6CBFED-E878-48A0-ACE7-D205D9C5B2A6.jpeg', '2021-09-26 19:29:49'),
(643, 308, 101.00, '1', '8 minutos y 36 segundos ', '', NULL, NULL, NULL, 'imagenes/308-2021-09-26-20210925_094159.jpg', 'imagenes/308-2021-09-26-20210925_094241.jpg', 'imagenes/308-2021-09-26-20210925_094228.jpg', '2021-09-26 20:29:16'),
(647, 283, 82.52, '2', '7:53', 'De nuevo retomando la rutina con todo. Me siento mas liviana ', NULL, NULL, NULL, 'imagenes/283-2021-09-27-20210927_213550.jpg', 'imagenes/283-2021-09-27-20210927_213558.jpg', 'imagenes/283-2021-09-27-20210927_213609.jpg', '2021-09-27 22:56:11'),
(648, 99, 75.50, '5', '13:34', 'En la odisea fue la numero 6 \r\nEsta semana bien aunque creo que me falta ajustar mi dieta y seguirla al pie de la letra ðŸ˜¬ðŸ™ˆ', NULL, NULL, NULL, 'imagenes/99-2021-09-28-D4DE6887-83FE-47C4-8FBC-8AAE398A690D.jpeg', 'imagenes/99-2021-09-28-3494C697-50D4-4B1C-8438-6CBF4DCB87B5.jpeg', 'imagenes/99-2021-09-28-32E40878-BEB8-4CAB-B2F1-C65F0CEE96C5.jpeg', '2021-09-28 09:27:48'),
(649, 334, 74.00, '5', '15.40', 'Odisea nivel 7', NULL, NULL, NULL, 'imagenes/334-2021-10-02-488ABF4D-131A-498C-BDA0-41C37BF8C82B.jpeg', 'imagenes/334-2021-10-02-2BA5EF4E-AF0C-4EC3-8E25-1F024184E071.jpeg', 'imagenes/334-2021-10-02-D4722B3C-0A70-4CDB-99D8-4EAE6A6CE93F.jpeg', '2021-10-02 16:27:09'),
(650, 349, 73.00, '2', '8:30', '', NULL, NULL, NULL, 'imagenes/349-2021-10-02-B5FFC322-661A-4F9E-8B90-F1F9932D48A6.jpeg', 'imagenes/349-2021-10-02-04D570B3-E9EE-4DBC-A8F9-A616BA0A06D7.jpeg', 'imagenes/349-2021-10-02-CC95DF72-81B9-4352-A84D-06BEEE0BC24A.jpeg', '2021-10-02 18:56:39'),
(653, 337, 65.20, '5', '14:45', 'Odisea nivel 7\r\nMe encantan las rutinas, solo que en algunos ejercicios como los saltos me duelen los pies,  caigo en puntas y lo hago sobre el tapete. AÃºn asÃ­ duele', NULL, NULL, NULL, 'imagenes/337-2021-10-03-20211003_102608.jpg', 'imagenes/337-2021-10-03-20211003_102624.jpg', 'imagenes/337-2021-10-03-20211003_102617.jpg', '2021-10-03 14:14:55'),
(655, 308, 100.00, '2', '13 minutos y 43 segundos ', 'Todo va excelente ', NULL, NULL, NULL, 'imagenes/308-2021-10-03-IMG-20211003-WA0003.jpg', 'imagenes/308-2021-10-03-IMG-20211003-WA0004.jpg', 'imagenes/308-2021-10-03-IMG-20211003-WA0005.jpg', '2021-10-03 17:43:01'),
(658, 352, 76.10, '2', '8:20:45', 'Me encantan las rutinas, estÃ¡s dos semanas me he sentido bien conmigo misma siento constante con los ejercicios!!!', NULL, NULL, NULL, 'imagenes/352-2021-10-03-CD798FFB-2CED-45FC-BD71-3024D95675F7.jpeg', 'imagenes/352-2021-10-03-CF2EA979-B9AC-4563-BDA0-166ADEFE741E.jpeg', 'imagenes/352-2021-10-03-04F960C7-DB87-43D3-A480-59FB706DF000.jpeg', '2021-10-03 20:57:23'),
(659, 363, 77.20, '1', '5.20', '', NULL, NULL, NULL, 'imagenes/363-2021-10-03-IMG_20211003_204252.jpg', 'imagenes/363-2021-10-03-IMG_20211003_204310.jpg', 'imagenes/363-2021-10-03-IMG_20211003_204304.jpg', '2021-10-03 21:46:26'),
(663, 318, 70.20, '3', '8:45', '', NULL, NULL, NULL, 'imagenes/318-2021-10-05-Frente Mili.jpeg', 'imagenes/318-2021-10-05-Espalda Mili.jpeg', 'imagenes/318-2021-10-05-Perfil Mili.jpeg', '2021-10-05 21:27:08'),
(664, 270, 67.00, '5', '11:49 ', 'La odisea de esta semana. Fue la 6 pero no me apareciÃ³ la opciÃ³n , la dieta la he sentido muy bien , solo los dÃ­as ejercicios hay dÃ­as que no puedo , pero ahÃ­ la llevo desfasada con los dÃ­as ', NULL, NULL, NULL, 'imagenes/270-2021-10-09-5043C978-1CAB-4251-AAE0-6FB9A2D2BA1F.jpeg', 'imagenes/270-2021-10-09-9333E6C9-01C9-4C13-A4F6-05F3F68C2474.jpeg', 'imagenes/270-2021-10-09-BB23EDFD-7067-4892-AC2B-C844C6AD7B55.jpeg', '2021-10-09 23:02:19'),
(665, 334, 74.00, '5', '15.02', 'Odisea nivel 8', NULL, NULL, NULL, 'imagenes/334-2021-10-10-56A3E7DB-99D5-446D-A6D8-ECB843824FDD.jpeg', 'imagenes/334-2021-10-10-CE24078B-9641-497C-938C-B4E15CE49080.jpeg', 'imagenes/334-2021-10-10-21994514-D0C7-43BC-A726-B8BBF7D98207.jpeg', '2021-10-10 09:32:23'),
(671, 352, 77.40, '3', '8:30:91', '', NULL, NULL, NULL, 'imagenes/352-2021-10-10-04B9146F-E669-41EA-8151-10C3CD0ED174.jpeg', 'imagenes/352-2021-10-10-B4A296B4-CCCB-4CDB-8C26-15FFE1DCA7D1.jpeg', 'imagenes/352-2021-10-10-5ACF63B8-C1C8-447B-86E7-2A9B7D548116.jpeg', '2021-10-10 11:53:04'),
(672, 308, 100.40, '3', '14 minutos y 33 segundos ', '', NULL, NULL, NULL, 'imagenes/308-2021-10-10-20211010_163209.jpg', 'imagenes/308-2021-10-10-20211010_163224.jpg', 'imagenes/308-2021-10-10-20211010_163217.jpg', '2021-10-10 17:50:33'),
(680, 363, 77.10, '2', '6.25', '', NULL, NULL, NULL, 'imagenes/363-2021-10-10-IMG_20211010_212913.jpg', 'imagenes/363-2021-10-10-IMG_20211010_212826.jpg', 'imagenes/363-2021-10-10-IMG_20211010_212835.jpg', '2021-10-10 22:36:30'),
(683, 265, 68.40, '5', '11:45', 'ODISEA REALIZADA NIVEL 6 EN 11:45 ', NULL, NULL, NULL, 'imagenes/265-2021-10-11-IMG_5945.JPG', 'imagenes/265-2021-10-11-IMG_5946.JPG', 'imagenes/265-2021-10-11-IMG_5948.JPG', '2021-10-11 00:20:32'),
(685, 376, 70.30, '1', '7.34', '', NULL, NULL, NULL, 'imagenes/376-2021-10-17-IMG-20211017-WA0004.jpg', 'imagenes/376-2021-10-17-IMG-20211017-WA0003.jpg', 'imagenes/376-2021-10-17-IMG-20211017-WA0005.jpg', '2021-10-17 10:27:17'),
(686, 377, 111.30, '1', '6.38', '', NULL, NULL, NULL, 'imagenes/377-2021-10-17-IMG20211017091748.jpg', 'imagenes/377-2021-10-17-IMG20211017091806.jpg', 'imagenes/377-2021-10-17-IMG20211017091755.jpg', '2021-10-17 10:31:09'),
(693, 334, 73.50, '5', '14:45', 'Odisea nivel 8', NULL, NULL, NULL, 'imagenes/334-2021-10-17-EC7A7611-668B-4036-9E08-2B947B602158.jpeg', 'imagenes/334-2021-10-17-9360F70D-3041-4C35-BEF3-C3CC15C40245.jpeg', 'imagenes/334-2021-10-17-5D62C215-DBF3-41CD-B5E3-57D04BDD333C.jpeg', '2021-10-17 20:41:14'),
(695, 363, 77.40, '3', '8.17', 'Veo cambio en mi resistencia y en el cuerpo pero no en el peso', NULL, NULL, NULL, 'imagenes/363-2021-10-17-IMG_20211017_201457.jpg', 'imagenes/363-2021-10-17-IMG_20211017_201433.jpg', 'imagenes/363-2021-10-17-IMG_20211017_201446.jpg', '2021-10-17 21:20:56'),
(696, 363, 77.40, '3', '8.17', 'Veo cambio en mi resistencia y en el cuerpo pero no en el peso', NULL, NULL, NULL, 'imagenes/363-2021-10-17-IMG_20211017_201457.jpg', 'imagenes/363-2021-10-17-IMG_20211017_201433.jpg', 'imagenes/363-2021-10-17-IMG_20211017_201446.jpg', '2021-10-17 21:21:22'),
(698, 390, 84.00, '1', '7:45', '', NULL, NULL, NULL, 'imagenes/390-2021-10-17-WhatsApp Image 2021-10-17 at 20.03.34.jpeg', 'imagenes/390-2021-10-17-WhatsApp Image 2021-10-17 at 20.03.34(2).jpeg', 'imagenes/390-2021-10-17-WhatsApp Image 2021-10-17 at 20.03.34(1).jpeg', '2021-10-17 21:29:37'),
(700, 389, 83.00, '1', '7:45', '', NULL, NULL, NULL, 'imagenes/389-2021-10-18-IMG_20211017_192739266.jpg', 'imagenes/389-2021-10-18-IMG_20211017_192846511.jpg', 'imagenes/389-2021-10-18-IMG_20211017_192752097.jpg', '2021-10-18 00:22:29'),
(701, 352, 76.45, '4', '09:18:10 ', '', NULL, NULL, NULL, 'imagenes/352-2021-10-18-D8A3CB46-6E2D-43D6-B60E-F9D29ACF5555.jpeg', 'imagenes/352-2021-10-18-7DB37AB5-409A-477B-8727-A449B3BABB79.jpeg', 'imagenes/352-2021-10-18-101CD7C4-5113-4A87-970A-B345D64AE6BE.jpeg', '2021-10-18 00:23:46'),
(703, 367, 87.50, '1', '6.41', 'Me gusta mucho este programa!', NULL, NULL, NULL, 'imagenes/367-2021-10-18-frente.jpeg', 'imagenes/367-2021-10-18-atras.jpeg', 'imagenes/367-2021-10-18-lado der.jpeg', '2021-10-18 08:36:44'),
(704, 380, 74.60, '1', '7:30', 'Hola Coachâ€™s! PerdÃ³n el retraso soy nuevo y estoy aprendiendo las dinÃ¡micas. Muchas Gracias.', NULL, NULL, NULL, 'imagenes/380-2021-10-18-43C26471-E1BE-4B28-8332-C95982F8EFD9.jpeg', 'imagenes/380-2021-10-18-8B3CA6DD-3E83-4E24-8FA8-5C303E36A16F.jpeg', 'imagenes/380-2021-10-18-3598A0F7-E3AA-437B-B799-9E018FCE5D37.jpeg', '2021-10-18 17:56:51'),
(705, 159, 83.30, '1', '7.19', '', NULL, NULL, NULL, 'imagenes/159-2021-10-18-7CC4B129-A77F-4A0B-89C6-A82461C402C4.jpeg', 'imagenes/159-2021-10-18-6A3BF6D4-7EB5-42B6-BB65-602C090E4A8C.jpeg', 'imagenes/159-2021-10-18-FC10B57E-8222-4AB6-AA3F-6937D80A8185.jpeg', '2021-10-18 20:31:53'),
(706, 376, 70.30, '2', '5.49', '', NULL, NULL, NULL, 'imagenes/376-2021-10-23-20211023_174418.jpg', 'imagenes/376-2021-10-23-20211023_174332.jpg', 'imagenes/376-2021-10-23-20211023_174356.jpg', '2021-10-23 19:10:38'),
(707, 377, 111.00, '2', '6.47', '', NULL, NULL, NULL, 'imagenes/377-2021-10-23-IMG-20211023-WA0010.jpg', 'imagenes/377-2021-10-23-IMG-20211023-WA0009.jpg', 'imagenes/377-2021-10-23-IMG-20211023-WA0007.jpg', '2021-10-23 19:24:57'),
(709, 380, 74.00, '2', '05:51', 'Me siento excelente. Vamos con todo !', NULL, NULL, NULL, 'imagenes/380-2021-10-24-E3E61D05-A36E-4648-8F2E-4169F80BE1C9.jpeg', 'imagenes/380-2021-10-24-A203ED8A-5249-4646-9C9F-7B35F91BE393.jpeg', 'imagenes/380-2021-10-24-FF2E75C9-30DE-4AAB-AB8B-C763F8DA7DCA.jpeg', '2021-10-24 15:16:16'),
(710, 159, 84.00, '2', '6.24', '', NULL, NULL, NULL, 'imagenes/159-2021-10-24-1DE6AF93-876D-403D-B185-9380A3577AE2.jpeg', 'imagenes/159-2021-10-24-DBCBCA33-8BEF-4358-A5C2-7DF3950AC17B.jpeg', 'imagenes/159-2021-10-24-5DDFE658-8C8E-4C89-8CE6-0B16FFFF5AB8.jpeg', '2021-10-24 15:50:29'),
(714, 388, 84.20, '2', '5.52', 'Veo cambiosssss, me voy sintiendo mÃ¡s fuerte ', NULL, NULL, NULL, 'imagenes/388-2021-10-24-IMG-20211024-WA0009.jpg', 'imagenes/388-2021-10-24-IMG-20211024-WA0011.jpg', 'imagenes/388-2021-10-24-IMG-20211024-WA0010.jpg', '2021-10-24 20:47:25'),
(715, 334, 73.50, '5', '11.29', 'Odisea nivel 9', NULL, NULL, NULL, 'imagenes/334-2021-10-24-C0C642AC-34FD-41C3-851D-70C19E15E8DD.jpeg', 'imagenes/334-2021-10-24-52778C1F-E9D1-4DF5-9698-C4CB80BA9B91.jpeg', 'imagenes/334-2021-10-24-EAC44C89-1672-4342-8849-C61D65520AA0.jpeg', '2021-10-24 20:54:17'),
(716, 368, 97.00, '2', '7.26', 'me siento mucho mejor y es notable el cambio que tengo en el cuerpo y mentalidad', NULL, NULL, NULL, 'imagenes/368-2021-10-24-WhatsApp Image 2021-10-24 at 20.11.30.jpeg', 'imagenes/368-2021-10-24-WhatsApp Image 2021-10-24 at 20.11.31.jpeg', 'imagenes/368-2021-10-24-WhatsApp Image 2021-10-24 at 20.11.30 (1).jpeg', '2021-10-24 21:14:17'),
(718, 363, 77.20, '4', '8.15', '', NULL, NULL, NULL, 'imagenes/363-2021-10-24-IMG_20211024_213115.jpg', 'imagenes/363-2021-10-24-IMG_20211024_213124.jpg', 'imagenes/363-2021-10-24-IMG_20211024_213121.jpg', '2021-10-24 22:39:45'),
(719, 390, 84.00, '2', '8:00', '', NULL, NULL, NULL, 'imagenes/390-2021-10-24-IMG_20211024_220143034~2.jpg', 'imagenes/390-2021-10-24-IMG_20211024_220219570~2.jpg', 'imagenes/390-2021-10-24-IMG_20211024_220206204~2.jpg', '2021-10-24 23:15:55'),
(720, 389, 83.00, '2', '8:00', '', NULL, NULL, NULL, 'imagenes/389-2021-10-24-IMG_20211024_220313402.jpg', 'imagenes/389-2021-10-24-IMG_20211024_220333539.jpg', 'imagenes/389-2021-10-24-IMG_20211024_220322480.jpg', '2021-10-24 23:18:47'),
(724, 370, 0.00, '', '', '', NULL, NULL, NULL, 'imagenes/370-2021-10-27-', 'imagenes/370-2021-10-27-', 'imagenes/370-2021-10-27-', '2021-10-27 10:44:29'),
(725, 370, 77.40, '2', '8:23', '', NULL, NULL, NULL, 'imagenes/370-2021-10-27-227A5B89-E2C7-47AB-AF31-290B40EC2CC6.jpeg', 'imagenes/370-2021-10-27-319F43FB-C6F9-4B03-94E9-EC8FDA0A616D.jpeg', 'imagenes/370-2021-10-27-B4055AA3-6F41-4AF0-8ED1-9C32D843ACF0.jpeg', '2021-10-27 10:49:17'),
(731, 334, 73.50, '5', '11.06', 'Nivel 9', NULL, NULL, NULL, 'imagenes/334-2021-10-30-E72F4A5C-99F5-4384-A705-121B9640CBB3.jpeg', 'imagenes/334-2021-10-30-E50FF3DC-870B-43FE-9B5A-AF6BB99C09D3.jpeg', 'imagenes/334-2021-10-30-637DB829-76BC-420F-B691-410B00752D85.jpeg', '2021-10-30 14:41:58'),
(732, 358, 97.00, '1', '13:26', 'Odisea Nv 6', NULL, NULL, NULL, 'imagenes/358-2021-10-30-Ultima alante.jpeg', 'imagenes/358-2021-10-30-Ultima atras.jpeg', 'imagenes/358-2021-10-30-Ultima lado.jpeg', '2021-10-30 15:23:40'),
(737, 390, 84.00, '3', '7:23', '', NULL, NULL, NULL, 'imagenes/390-2021-10-31-IMG-20211031-WA0024.jpg', 'imagenes/390-2021-10-31-IMG-20211031-WA0029.jpg', 'imagenes/390-2021-10-31-IMG-20211031-WA0030.jpg', '2021-10-31 23:32:10'),
(738, 380, 74.00, '3', '6â€™0â€™09â€™â€™', '', NULL, NULL, NULL, 'imagenes/380-2021-10-31-EE1BB460-B012-4FC9-B806-97CD4A2C7E37.jpeg', 'imagenes/380-2021-10-31-3B592357-7FEB-4904-8E3C-2E330A79290A.jpeg', 'imagenes/380-2021-10-31-CF41E08B-50BB-4BA3-AC8D-FFF5B5B2C453.jpeg', '2021-10-31 23:33:20'),
(739, 389, 83.00, '3', '7:20', '', NULL, NULL, NULL, 'imagenes/389-2021-10-31-IMG-20211031-WA0023.jpg', 'imagenes/389-2021-10-31-IMG-20211031-WA0021.jpg', 'imagenes/389-2021-10-31-IMG-20211031-WA0022.jpg', '2021-10-31 23:39:38'),
(741, 388, 83.70, '3', '6.07', 'Olvide subir las fotos ayer domingo , sorry', NULL, NULL, NULL, 'imagenes/388-2021-11-01-IMG-20211031-WA0018.jpg', 'imagenes/388-2021-11-01-IMG-20211031-WA0017.jpg', 'imagenes/388-2021-11-01-IMG-20211031-WA0016.jpg', '2021-11-01 12:41:49'),
(743, 159, 82.60, '1', '10.10', '', NULL, NULL, NULL, 'imagenes/159-2021-11-07-B18D5EFB-A6AC-4BAB-92FF-BDE645A50DB4.jpeg', 'imagenes/159-2021-11-07-9660902D-3E12-4013-97E2-5AC7EF9A48E7.jpeg', 'imagenes/159-2021-11-07-55876CE0-B1E5-48FA-ABBC-02B4E0F76486.jpeg', '2021-11-07 12:24:04'),
(745, 398, 0.00, '', '', '', NULL, NULL, NULL, 'imagenes/398-2021-11-07-', 'imagenes/398-2021-11-07-', 'imagenes/398-2021-11-07-', '2021-11-07 12:48:51'),
(746, 398, 69.50, '1', '7:35', '', NULL, NULL, NULL, 'imagenes/398-2021-11-07-2453D84A-1022-4FAC-B32A-C9756466F464.jpeg', 'imagenes/398-2021-11-07-2797057E-CE48-4077-BFD0-2AC2FCBEAD15.jpeg', 'imagenes/398-2021-11-07-7C254762-1161-4FAB-AA8A-1DCE259EBA78.jpeg', '2021-11-07 12:50:41'),
(750, 399, 88.00, '1', '5:45min', '', NULL, NULL, NULL, 'imagenes/399-2021-11-07-24F7C864-E654-43AE-99FA-85E6DDBF6FAD.jpeg', 'imagenes/399-2021-11-07-BC8B1EE7-9886-4A3B-B6B6-AA76CC9898F8.jpeg', 'imagenes/399-2021-11-07-81E56B43-BDA9-4131-A4B3-E8D79482E205.jpeg', '2021-11-07 15:30:32'),
(752, 358, 96.40, '1', '', '', NULL, NULL, NULL, 'imagenes/358-2021-11-07-WhatsApp Image 2021-11-07 at 8.02.02 PM adelante.jpeg', 'imagenes/358-2021-11-07-WhatsApp Image 2021-11-07 at 8.01.34 PM atras.jpeg', 'imagenes/358-2021-11-07-WhatsApp Image 2021-11-07 at 8.01.48 PM atras.jpeg', '2021-11-07 20:15:21'),
(756, 388, 82.00, '4', '7.58', 'Con mucho trabajo pero ahÃ­ vamos ', NULL, NULL, NULL, 'imagenes/388-2021-11-08-IMG-20211107-WA0005.jpg', 'imagenes/388-2021-11-08-IMG-20211107-WA0006.jpg', 'imagenes/388-2021-11-08-IMG-20211107-WA0007.jpg', '2021-11-08 01:14:24'),
(759, 97, 61.90, '5', '', '', NULL, NULL, NULL, 'imagenes/97-2021-11-08-20211108_161356.jpg', 'imagenes/97-2021-11-08-20211108_161637.jpg', 'imagenes/97-2021-11-08-20211108_161504.jpg', '2021-11-08 19:22:25'),
(760, 407, 72.00, '2', '7:58', '', NULL, NULL, NULL, 'imagenes/407-2021-11-14-20211111_110035.jpg', 'imagenes/407-2021-11-14-20211111_110120.jpg', 'imagenes/407-2021-11-14-20211111_110234.jpg', '2021-11-14 09:51:32'),
(763, 323, 88.50, '1', 'Odisea 7, tiempo 15:36:21', '', NULL, NULL, NULL, 'imagenes/323-2021-11-14-IMG_20211114_194402.jpg', 'imagenes/323-2021-11-14-IMG_20211114_194441.jpg', 'imagenes/323-2021-11-14-IMG_20211114_194414.jpg', '2021-11-14 19:54:57'),
(770, 373, 79.50, '5', '9:49', 'Esta es la info de la semana 5 couch ', NULL, NULL, NULL, 'imagenes/373-2021-11-14-IMG_20211114_205515.jpg', 'imagenes/373-2021-11-14-IMG_20211114_205429.jpg', 'imagenes/373-2021-11-14-IMG_20211114_205451.jpg', '2021-11-14 21:00:13'),
(771, 372, 63.70, '5', '11.38', 'MÃ¡s siento super bien con el ejercicio y la dieta nada complicada, todo es super flexible. Es mÃ¡s que motivarte ver que la ropa ya empieza a quedarme mejor y otras ya hasta un poco grandes. ðŸ˜ŠðŸ¤—', NULL, NULL, NULL, 'imagenes/372-2021-11-14-20211114_201311.jpg', 'imagenes/372-2021-11-14-20211114_201352.jpg', 'imagenes/372-2021-11-14-20211114_201340.jpg', '2021-11-14 21:08:11'),
(772, 159, 81.00, '4', '9:20', 'Otra vez agarrando el ritmo contenta con los resultados en la ropa ðŸ¤©', NULL, NULL, NULL, 'imagenes/159-2021-11-14-67E8DBBE-4D4A-4476-9827-512F0DA1AFE7.jpeg', 'imagenes/159-2021-11-14-B06B3EE3-1A4F-4320-9BC3-1F06587EB619.jpeg', 'imagenes/159-2021-11-14-3EFA81C1-8B79-4044-9B28-17A2909F9826.jpeg', '2021-11-14 21:13:00'),
(775, 358, 95.90, '5', '15:21', 'odisea nv 7', NULL, NULL, NULL, 'imagenes/358-2021-11-14-WhatsApp Image 2021-11-14 at 11.47.10 ade.jpeg', 'imagenes/358-2021-11-14-WhatsApp Image 2021-11-14 at 11.47.10 atr.jpeg', 'imagenes/358-2021-11-14-WhatsApp Image 2021-11-14 at 11.47.10 lad.jpeg', '2021-11-14 23:51:40'),
(776, 388, 82.00, '5', '11.01', 'Esta semana no baje , peso ðŸ˜”', NULL, NULL, NULL, 'imagenes/388-2021-11-15-IMG-20211115-WA0000.jpg', 'imagenes/388-2021-11-15-IMG-20211115-WA0002.jpg', 'imagenes/388-2021-11-15-IMG-20211115-WA0001.jpg', '2021-11-15 00:29:49'),
(777, 398, 68.30, '2', '8 min ', '', NULL, NULL, NULL, 'imagenes/398-2021-11-15-9D36F2CB-1199-4403-ACB6-160EADA734DA.jpeg', 'imagenes/398-2021-11-15-866FEE4E-3384-4BB5-9463-A1CA6C5608A0.jpeg', 'imagenes/398-2021-11-15-4DCA6EE3-3690-4DDE-B563-49F6AA75487D.jpeg', '2021-11-15 13:39:07'),
(778, 388, 81.70, '5', '12.06 odisea 6', 'Hola gracias por este excelente reto.\r\nNo hay opciÃ³n de odisea 6', NULL, NULL, NULL, 'imagenes/388-2021-11-20-IMG-20211119-WA0040.jpg', 'imagenes/388-2021-11-20-IMG-20211119-WA0041.jpg', 'imagenes/388-2021-11-20-IMG-20211119-WA0042.jpg', '2021-11-20 13:42:26'),
(779, 411, 73.00, '2', '7:40', '', NULL, NULL, NULL, 'imagenes/411-2021-11-21-IMG_20211121_134014.jpg', 'imagenes/411-2021-11-21-IMG_20211121_134041.jpg', 'imagenes/411-2021-11-21-IMG_20211121_134034.jpg', '2021-11-21 16:57:16'),
(788, 358, 95.00, '5', '13:30', 'odisea nv 8', NULL, NULL, NULL, 'imagenes/358-2021-11-21-1f.jpeg', 'imagenes/358-2021-11-21-2a.jpeg', 'imagenes/358-2021-11-21-3l.jpeg', '2021-11-21 23:48:38'),
(793, 358, 94.90, '5', '', 'No pude pasar la 9', NULL, NULL, NULL, 'imagenes/358-2021-11-28-enfre.jpeg', 'imagenes/358-2021-11-28-atr.jpeg', 'imagenes/358-2021-11-28-alad.jpeg', '2021-11-28 23:52:15'),
(794, 354, 70.00, '5', '12min', 'Dolor de piernas , abdomen  pero con  un mejor control dela rutina ', NULL, NULL, NULL, 'imagenes/354-2021-11-29-IMG20211107194549.jpg', 'imagenes/354-2021-11-29-IMG20211121204857.jpg', 'imagenes/354-2021-11-29-IMG20211121204850.jpg', '2021-11-29 00:33:18'),
(796, 266, 85.00, '5', 'Estoy en odisea 8', '', NULL, NULL, NULL, 'imagenes/266-2021-11-29-20211128_124629.jpg', 'imagenes/266-2021-11-29-20211128_124724.jpg', 'imagenes/266-2021-11-29-20211128_124614.jpg', '2021-11-29 07:04:15'),
(802, 362, 62.00, '5', '12:05', 'RepetÃ­ odisea 10 ', NULL, NULL, NULL, 'imagenes/362-2021-12-11-5674B3B8-422E-401C-BE91-B4BAA4110ACF.jpeg', 'imagenes/362-2021-12-11-0A86B2AE-3126-4071-91BF-7BDFC9D80479.jpeg', 'imagenes/362-2021-12-11-90981E73-E91B-4772-A01A-9CC73EF38016.jpeg', '2021-12-11 10:22:19'),
(805, 405, 93.10, '5', '11:52:25', 'Gracias por estas semanas, porque aprendÃ­ que debo de comer y que debo de cuidar mi salud.', NULL, NULL, NULL, 'imagenes/405-2021-12-11-IMG-20211211-WA0025.jpg', 'imagenes/405-2021-12-11-IMG_20211211_070714.jpg', 'imagenes/405-2021-12-11-IMG_20211211_070723.jpg', '2021-12-11 21:35:58'),
(806, 345, 60.05, '2', '5:45', 'RepetÃ­ nivel para ver si mejorÃ© en tiempo. Muchas gracias por su dedicaciÃ³n, muy feliz de los resultados, procurarÃ© seguir por el mismo caminito. ', NULL, NULL, NULL, 'imagenes/345-2021-12-12-IMG-20211212-WA0006.jpg', 'imagenes/345-2021-12-12-IMG-20211212-WA0007.jpg', 'imagenes/345-2021-12-12-IMG-20211212-WA0008.jpg', '2021-12-12 12:06:14'),
(807, 346, 77.80, '5', '5.14', 'Ya termine hasta la odisea 10 asÃ­ que repetÃ­ odisea 2 para mejorar mi tiempo ahora fue 5.14', NULL, NULL, NULL, 'imagenes/346-2021-12-12-IMG-20211212-WA0011.jpg', 'imagenes/346-2021-12-12-IMG-20211212-WA0010.jpg', 'imagenes/346-2021-12-12-IMG-20211212-WA0012.jpg', '2021-12-12 12:29:09'),
(808, 97, 64.10, '1', '', 'Vengo  con mucho Ã¡nimo para poder perder esos kilos que gane en estos meses. ', NULL, NULL, NULL, 'imagenes/97-2022-01-10-20220110_170646.jpg', 'imagenes/97-2022-01-10-20220110_170710.jpg', 'imagenes/97-2022-01-10-20220110_170658.jpg', '2022-01-10 17:13:29'),
(809, 422, 46.00, '1', '', '', NULL, NULL, NULL, 'imagenes/422-2022-01-11-IMG-20220110-WA0019.jpg', 'imagenes/422-2022-01-11-IMG-20220110-WA0024.jpg', 'imagenes/422-2022-01-11-IMG-20220110-WA0022.jpg', '2022-01-11 17:35:16'),
(810, 427, 80.00, '1', '1', 'ttt', NULL, NULL, NULL, 'imagenes/427-2022-01-12-Craft GraphQL APIs in Elixir with Absinthe for Mike Huerta.epub.zip', 'imagenes/427-2022-01-12-no-avatar.png', 'imagenes/427-2022-01-12-no-avatar.png', '2022-01-12 18:13:55'),
(811, 426, 53.15, '1', '7:26', 'Todo ha estado muy bien,  mi desempeÃ±o poco a poco ha mejorado. Me ha sido un poco difÃ­cil resistirme a los postres, pero no imposible. Esta semana logrÃ© ya no tomar refresco diario, sÃ³lo un dÃ­a tomÃ© un vaso de refresco (cocacola). Muchas gracias por estar pendiente.', NULL, NULL, NULL, 'imagenes/426-2022-01-16-SEMANA 1 (1).jpeg', 'imagenes/426-2022-01-16-SEMANA 1 (3).jpeg', 'imagenes/426-2022-01-16-SEMANA 1 (4).jpeg', '2022-01-16 16:52:52'),
(812, 345, 71.10, '1', '6.05', 'Me estÃ¡n costando retomar un poco la alimentaciÃ³n jeje, pero he notado que no bajÃ© tanto en condiciÃ³n fÃ­sica. Estas fechas me dejaron un par de kilos de mÃ¡s a comparaciÃ³n de la Ãºltima vez que me pese terminando el Ãºltimo reto, pero seguimos en la marcha. Saludos y me gustan los cambios en los entrenamientos ', NULL, NULL, NULL, 'imagenes/345-2022-01-16-20220116_192508.jpg', 'imagenes/345-2022-01-16-20220116_192453.jpg', 'imagenes/345-2022-01-16-20220116_192501.jpg', '2022-01-16 19:38:45'),
(813, 346, 80.85, '1', '4:50', 'Despues de las vacaciones pesaba 82.3 antes de retomar rutinas :( 2 aÃ±os de no ir a la cdmx no pude resistir la deliciosa comida jaja, pero baje :)', NULL, NULL, NULL, 'imagenes/346-2022-01-16-imagen_2022-01-16_193758.png', 'imagenes/346-2022-01-16-imagen_2022-01-16_193804.png', 'imagenes/346-2022-01-16-imagen_2022-01-16_193809.png', '2022-01-16 19:39:15'),
(814, 346, 80.15, '2', '5:02', 'PerdÃ³n por el tiradero estamos remodelando jeje. ', NULL, NULL, NULL, 'imagenes/346-2022-01-23-IMG-20220123-WA0044.jpg', 'imagenes/346-2022-01-23-IMG-20220123-WA0043.jpg', 'imagenes/346-2022-01-23-IMG-20220123-WA0048.jpg', '2022-01-23 22:05:10'),
(815, 345, 70.00, '2', '5:45', 'No he subido de peso pero me esta costando un poco bajar lo que me resta para llegar de nuevo al peso ideal y vaya que las rutinas de esta semana han estado super. Me he sentido algo inflamada, quizÃ¡ debo subir miningesta de vegetales? ', NULL, NULL, NULL, 'imagenes/345-2022-01-23-IMG-20220123-WA0020.jpg', 'imagenes/345-2022-01-23-IMG-20220123-WA0019.jpg', 'imagenes/345-2022-01-23-IMG-20220123-WA0021.jpg', '2022-01-23 22:05:54'),
(816, 426, 52.70, '2', '7:52:88', 'Aunque creo en las fotos no parece, sÃ­ me siento en mejor forma. Hasta el dÃ­a de hoy domingo sigo adolorida de los brazos y piernas, creo es normal :)  En cuanto a la alimentaciÃ³n, sÃ­ me ha costado que en mis porciones sÃ³lo son de 1 carbohidrÃ¡to. (ya sabe como yucateca, el pan y la tortilla es como costumbre)  sin embargo sÃ­ me he esforzado por no comer tanto carbohidrato. Es normal que luego tenga ganas de postres o de algo dulce? Saludos couches.', NULL, NULL, NULL, 'imagenes/426-2022-01-23-SEMANA 2 (2).jpeg', 'imagenes/426-2022-01-23-SEMANA 2 (1).jpeg', 'imagenes/426-2022-01-23-SEMANA 2 (3).jpeg', '2022-01-23 23:41:52'),
(817, 265, 67.00, '1', '', 'NIVEL DE ODISEA 8 TIEMPO 12:33', NULL, NULL, NULL, 'imagenes/265-2022-01-24-IMG_7286.JPG', 'imagenes/265-2022-01-24-IMG_7291.JPG', 'imagenes/265-2022-01-24-IMG_7289.JPG', '2022-01-24 00:05:05'),
(818, 345, 70.50, '3', '6:58', '', NULL, NULL, NULL, 'imagenes/345-2022-01-30-IMG-20220130-WA0015.jpg', 'imagenes/345-2022-01-30-IMG-20220130-WA0013.jpg', 'imagenes/345-2022-01-30-IMG-20220130-WA0016.jpg', '2022-01-30 21:23:14'),
(819, 346, 80.20, '3', '4.5', '', NULL, NULL, NULL, 'imagenes/346-2022-01-30-IMG-20220130-WA0036.jpg', 'imagenes/346-2022-01-30-IMG-20220130-WA0035.jpg', 'imagenes/346-2022-01-30-IMG-20220130-WA0037.jpg', '2022-01-30 22:47:10'),
(820, 265, 67.00, '1', '', 'ODISEA NIVEL 8 TIEMPO 12:33', NULL, NULL, NULL, 'imagenes/265-2022-01-31-IMG_7437.JPG', 'imagenes/265-2022-01-31-IMG_7441.JPG', 'imagenes/265-2022-01-31-IMG_7440.JPG', '2022-01-31 21:17:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `team`
--

CREATE TABLE `team` (
  `id_equipo` int(11) NOT NULL,
  `fotoAvatar` varchar(500) DEFAULT NULL,
  `nombreEq` varchar(50) CHARACTER SET utf8 NOT NULL,
  `apPaternoEq` varchar(50) CHARACTER SET utf8 NOT NULL,
  `apMaternoEq` varchar(50) CHARACTER SET utf8 NOT NULL,
  `telEq` varchar(50) NOT NULL,
  `correoEq` varchar(100) CHARACTER SET utf8 NOT NULL,
  `passwordEq` varchar(50) CHARACTER SET utf8 NOT NULL,
  `redSocialEq` varchar(100) DEFAULT NULL,
  `acercaEq` varchar(250) DEFAULT NULL,
  `rol_rolEq` int(10) NOT NULL,
  `estatusEq` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `team`
--

INSERT INTO `team` (`id_equipo`, `fotoAvatar`, `nombreEq`, `apPaternoEq`, `apMaternoEq`, `telEq`, `correoEq`, `passwordEq`, `redSocialEq`, `acercaEq`, `rol_rolEq`, `estatusEq`) VALUES
(2, NULL, 'Pablo', 'Celis', 'Gómez', '9982463845', 'pablocelis@integracionsaludable.com', 'IS.202104', NULL, NULL, 1, 1),
(3, NULL, 'Julio', 'Flores', '', '', 'julioflores@integracionsaludable.com', 'IS.202105', NULL, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usr` int(11) NOT NULL,
  `fotoPrincipal` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `nomUsr` varchar(50) CHARACTER SET utf8 NOT NULL,
  `apPaternoUsr` varchar(50) CHARACTER SET utf8 NOT NULL,
  `apMaternoUsr` varchar(50) CHARACTER SET utf8 NOT NULL,
  `edadUsr` int(10) DEFAULT NULL,
  `caloriasUsr` int(10) DEFAULT NULL,
  `sexoUsr` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `fechaD` int(10) DEFAULT NULL,
  `fechaM` int(10) DEFAULT NULL,
  `fechaA` int(10) DEFAULT NULL,
  `telUsr` varchar(100) DEFAULT NULL,
  `correoUsr` varchar(50) CHARACTER SET utf8 NOT NULL,
  `empresaUsr` varchar(100) CHARACTER SET utf8 NOT NULL,
  `passwordUsr` varchar(50) CHARACTER SET utf8 NOT NULL,
  `redSocialUsr` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `residenciaUsr` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `captacionUsr` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `objetivoUsr` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `fechaRegistro` datetime NOT NULL,
  `estatusUsr` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usr`, `fotoPrincipal`, `nomUsr`, `apPaternoUsr`, `apMaternoUsr`, `edadUsr`, `caloriasUsr`, `sexoUsr`, `fechaD`, `fechaM`, `fechaA`, `telUsr`, `correoUsr`, `empresaUsr`, `passwordUsr`, `redSocialUsr`, `residenciaUsr`, `captacionUsr`, `objetivoUsr`, `fechaRegistro`, `estatusUsr`) VALUES
(1, 'avatar/AVATAR.jpeg', 'Luis Fernando', 'VillafaÃ±a', 'RejÃ³n', NULL, 2216, 'H', 25, 9, 1990, '9982328777', 'cv@luisvr.com.mx', 'OpSET MÃ©xico', 'Holamundo', 'LVRONLINE', 'CancÃºn', 'Anuncios', 'aumento', '2021-03-29 03:48:00', 1),
(89, NULL, 'Cinthia Nataly', 'Chi', 'Pech', NULL, NULL, 'M', 28, 7, 1999, '9982018650', 'cinthianatalychi@gmail.com', '', 'ISPAS2021', 'Nataly chi', '', 'RecomendaciÃ³n', 'perdida', '0000-00-00 00:00:00', 0),
(90, NULL, 'Jorge', 'Espinoza', 'Carrillo', NULL, NULL, '', 0, 0, 0, '', 'jorgeespinoza_62@hotmail.com', '', 'ISPAS2021', '', '', '', 'perdida', '0000-00-00 00:00:00', 3),
(91, NULL, 'Diego', 'Pavón', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'alex.pavon1907@gmail.com', '', 'ISPAS2021', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 3),
(92, NULL, 'Francisco Antonio', 'Méndez', 'Pérez', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'fmendezp.89@gmail.com', '', 'ISPAS2021', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 3),
(93, NULL, 'Melissa', 'Cervera', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'melcerv92@gmail.com', '', 'ISPAS2021', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 3),
(94, NULL, 'Viridiana Isabel', 'Ochoa', 'Martínez', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'isabelochmar@gmail.com', '', 'ochmar11', NULL, NULL, NULL, 'perdida', '0000-00-00 00:00:00', 3),
(95, NULL, 'Cielo Jazive', 'Ruiz', 'Sanchez', NULL, NULL, 'M', 29, 8, 1997, '9981793888', 'jaziive.ruiz@gmail.com', '', 'ISPAS2021', 'Jaz sanchez', 'CancÃºn', 'Redes Sociales', 'perdida', '0000-00-00 00:00:00', 3),
(96, 'avatar/IMG_20210307_121837.jpg', 'RaÃºl', 'Abundis', 'GarcÃ­a', NULL, 1750, 'H', 30, 11, 1985, '9983448090', 'abundis.raul1@gmail.com', '', 'ISPAS2021', 'abundis.raul', 'CancÃºn', 'RecomendaciÃ³n', 'perdida', '0000-00-00 00:00:00', 1),
(97, 'avatar/20210731_210827.jpg', 'Denia', 'Ochoa', 'Demes', NULL, 1350, 'M', 10, 10, 1987, '9982419010', 'deniademes@gmail.com', '', 'ISPAS2021', 'Denya8a', 'CancÃºn', 'RecomendaciÃ³n', 'perdida', '0000-00-00 00:00:00', 1),
(98, 'avatar/92B0EF2C-7E8C-4E69-885B-7053C2536708.jpeg', 'Ray', 'Garcia', 'M', NULL, 1650, 'H', 18, 9, 1984, '9981912438', 'raygarcia_17@hotmail.com', '', 'ray848618', 'Ray Garcia', 'CancÃºn ', 'RecomendaciÃ³n', 'perdida', '0000-00-00 00:00:00', 1),
(99, 'avatar/611A08F5-22CC-445D-A97D-1540762D86B3.jpeg', 'Linda', 'Medrano', 'Manzanilla ', NULL, 1450, 'M', 16, 1, 1986, '9981155291', 'linda_med@hotmail.com', '', 'ojitosh01', 'Linda Medrano ', 'Cancun ', 'RecomendaciÃ³n', 'perdida', '0000-00-00 00:00:00', 1),
(100, NULL, 'Graciela', 'Medina', 'NÃºÃ±ez', NULL, 0, 'M', 22, 12, 1978, '9991943826', 'gracielamn78@gmail.com', '', 'ZSqUQsVMna', 'https://www.facebook.com/Graciela22', 'MÃ©rida, YucatÃ¡n', 'RecomendaciÃ³n', 'perdida', '0000-00-00 00:00:00', 1),
(101, NULL, 'Emiliano', 'Palacios', 'Aguilera', NULL, NULL, '', 0, 0, 0, '', 'nanocancun2412@gmail.com', '', 'ISPAS2021', '', '', '', 'perdida', '0000-00-00 00:00:00', 3),
(102, NULL, 'Hiram', 'Lï¿½pez', 'Perera', NULL, NULL, 'H', 5, 9, 1997, '9982462625', 'loperhir@gmail.com', '', 'ISPAS2021', 'Hiram LÃ³pez', 'CancÃºn', 'Redes Sociales', 'perdida', '0000-00-00 00:00:00', 3),
(103, NULL, 'Janette Isabel', 'Puc', 'Salazar', NULL, NULL, 'M', 11, 10, 1999, '9982242783', 'janesalazar614@gmail.com', '', 'janette11', 'Janette Salazar', '', 'Redes Sociales', 'perdida', '0000-00-00 00:00:00', 3),
(104, NULL, 'Edgar', 'contreras', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'edgarcontreras1979@gmail.com', '', 'ISPAS2021', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 2),
(105, NULL, 'Tracy', 'Contreras', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'tracycontreras303@gmail.com', '', 'ISPAS2021', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 2),
(106, NULL, 'Sandra Isabel', 'GutiÃ©rrez', 'Dzul', NULL, NULL, 'M', 25, 5, 1996, '9983463172', 'sandie_guti@hotmail.com', '', 'ISPAS2021', 'Sandy GutiÃ©rrez ', 'CancÃºn ', 'Redes Sociales', 'perdida', '0000-00-00 00:00:00', 3),
(107, NULL, 'Luis David', 'Martinez', 'Echeverria', NULL, NULL, '', 0, 0, 0, '', 'davimtech@hotmail.com', '', 'ISPAS2021', '', '', '', 'perdida', '0000-00-00 00:00:00', 3),
(108, NULL, 'Anette', 'Aguilar', 'Nï¿½ï¿½ez', NULL, NULL, 'M', 18, 6, 2001, '9991203307', 'anetteaguilar10@hotmail.com', '', 'anette18', 'Facebook: Anette Aguilar NÃºÃ±ez', 'MÃ©rida', 'RecomendaciÃ³n', 'perdida', '0000-00-00 00:00:00', 1),
(109, NULL, 'Marï¿½a Luisa', 'Rios', 'Ruiz', NULL, NULL, 'M', 14, 8, 1999, '6241368901', '507.luisarios.qroo@gmail.com', '', 'Mapelu.spike', 'Marilu.rios', 'BENITO JUAREZ', 'RecomendaciÃ³n', 'perdida', '0000-00-00 00:00:00', 1),
(110, NULL, 'Martha Isabel', 'Ríos', 'Ruíz', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'marthaisabelrios1904@gmail.com', '', 'ISPAS2021', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', 3),
(111, NULL, 'Adrihanna', 'Bojher', '', NULL, NULL, 'M', 0, 0, 0, '9981489039', 'adriana_bqz@hotmail.com', '', 'Hello1981', 'Adrihanna Bojher', 'Cancun', 'RecomendaciÃ³n', 'perdida', '0000-00-00 00:00:00', 3),
(112, NULL, 'Azul', 'Cervantes', 'Padilla', NULL, NULL, '', 0, 0, 0, '', 'asula9348@gmail.com', '', 'ISPAS2021', '', '', '', 'perdida', '0000-00-00 00:00:00', 3),
(113, NULL, 'Aremy', 'flores', 'Noh', NULL, NULL, 'M', 12, 5, 2001, '9982134206', 'aremyfloresnoh@gmail.com', '', 'aremy0512', 'Aremy Flores', 'CancÃºn, Quintana Roo', 'RecomendaciÃ³n', 'perdida', '0000-00-00 00:00:00', 3),
(114, NULL, 'Wendy', 'Mendoza', 'Hernandez', NULL, NULL, 'M', 23, 2, 1998, '9981489557', 'wendyhernandez3035@gmail.com', '', '230298W', 'wendyhdz23', '', 'Redes Sociales', 'aumento', '0000-00-00 00:00:00', 3),
(115, NULL, 'Jonathan ', 'Vargas ', 'Ãvila', NULL, NULL, 'H', 26, 3, 1997, '', 'tobi_tan@hotmail.com', '', 'ISPAS2021', 'Jonathan Avila', 'CDMX', 'RecomendaciÃ³n', 'perdida', '2021-03-29 08:15:04', 3),
(116, NULL, 'Rita Beatriz ', 'Chulim ', 'Cetina', NULL, NULL, 'M', 28, 6, 1999, '9984825066', 'ritachulim99@gmail.com', '', 'ISPAS2021', 'Rita Chulim', 'CancÃºn', 'RecomendaciÃ³n', 'perdida', '2021-03-29 08:15:42', 3),
(117, NULL, 'Grecia ', 'VÃ¡zquez ', 'Ortiz', NULL, NULL, '', 0, 0, 0, '', 'gvazort@gmail.com', '', 'ISPAS2021', '', '', '', 'perdida', '2021-03-29 08:16:08', 3),
(118, NULL, 'Bernardo ', 'Salazar ', 'AvendaÃ±o', NULL, NULL, '', 0, 0, 0, '', 'bernardo.salazar@hotmail.es', '', 'ISPAS2021', '', '', '', 'perdida', '2021-03-29 08:16:43', 2),
(119, NULL, 'Lizbeth Isabel ', 'Zupo ', 'Parra', NULL, NULL, 'M', 7, 8, 1988, '', 'lizbeth.zupo07@gmail.com', '', 'ISPAS2021', 'Lizbeth zupo', 'Cancun', 'RecomendaciÃ³n', 'perdida', '2021-03-29 08:17:07', 1),
(120, 'avatar/A3250804-67DF-462C-B1F8-1997AACF9AF9.jpeg', 'Luz Adriana ', 'Ochoa ', 'Demes', NULL, 1350, 'M', 30, 9, 1984, '9982416267', 'adry3009@gmail.com', '', 'adriana8a', 'Adry 8a', 'CancÃºn ', 'RecomendaciÃ³n', 'perdida', '2021-03-29 08:17:33', 1),
(121, NULL, 'Natasha Avisag ', 'May  ', 'Balam', NULL, NULL, 'M', 24, 10, 1996, '9988205262', 'mayabisag@gmail.com', '', '032021Nat', '', 'Puerto Morelos', 'Redes Sociales', 'perdida', '2021-03-29 08:17:59', 3),
(122, NULL, 'Ana del Rosario ', 'RamÃ­rez ', 'Tuz', NULL, NULL, 'M', 24, 2, 1997, '9982354595', 'any.rosario28@gmail.com', '', 'memo2428ana', 'Facebook: Ana Ramirez', 'Cancun', 'Redes Sociales', 'perdida', '2021-03-29 08:18:35', 3),
(123, NULL, 'Karina  ', 'Diaz', 'Uicab', NULL, NULL, 'M', 28, 9, 1997, '9984079490', 'vaci_love@hotmail.com', '', 'ISPAS2021', 'Karina Diaz ', 'CancÃºn ', 'Redes Sociales', 'perdida', '2021-03-29 08:19:15', 1),
(124, NULL, 'RenÃ© ', 'GarcÃ­a', 'ServÃ­n ', NULL, NULL, 'H', 30, 5, 1995, '9984079493', 'rennatoo@live.com.mx', '', 'ISPAS2021', 'RenÃ© GarcÃ­a', 'CancÃºn ', 'Redes Sociales', 'perdida', '2021-03-29 08:19:55', 1),
(125, NULL, 'Valeria ', 'Cano ', 'Salomon', NULL, NULL, 'M', 14, 11, 2000, '7441872045', 'valeria.valelistica1@hotmail.com', '', 'viviano123', 'Valeria SalomÃ³n', '', '', 'perdida', '2021-03-29 08:20:22', 3),
(127, NULL, 'Martha', 'Juarez', 'Santa Cruz ', NULL, NULL, 'M', 10, 6, 1970, '9981269130', 'marthapitz@hotmail.com', '', 'ISPAS2021', 'Martha JuÃ¡rez ', 'Cancun ', 'RecomendaciÃ³n', 'perdida', '2021-03-29 11:51:32', 3),
(128, NULL, 'Pablo', 'Celis', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pablocelis@integracionsaludable.com', '', 'ISPAS2021', NULL, NULL, NULL, NULL, '2021-03-29 14:54:09', 3),
(129, NULL, 'Selene ', 'BarÃ³n', 'Ortiz', NULL, NULL, 'M', 2, 10, 1997, '9989392854', 'selenebaron97@gmail.com', '', 'ISPAS2021', 'Selene BarÃ³n ', 'CancÃºn', 'Redes Sociales', 'aumento', '2021-03-29 15:43:20', 3),
(130, NULL, 'Paul ', 'Tejero', 'Matos', NULL, NULL, 'H', 30, 12, 1987, '9982931528', 'paul_tejero@hotmail.com', '', 'ISPAS2021', 'https://www.facebook.com/paul.tejero.31/', 'Quintana Roo', 'RecomendaciÃ³n', 'perdida', '2021-03-29 15:43:51', 0),
(131, NULL, 'Ulises ', 'Aguilar ', 'GarcÃ­a', NULL, NULL, '', 0, 0, 0, '', 'ulises.jair.aguilar.garcia@gmail.com', '', 'ISPAS2021', '', '', '', 'perdida', '2021-03-29 17:17:34', 3),
(132, NULL, 'Maria fernanda', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'fer381371@gmail.com', '', 'Amoreterno', NULL, NULL, NULL, 'perdida', '2021-03-29 19:36:47', 3),
(133, NULL, 'Cynthia Sarai ', '&#193;vila ', 'Callejas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'cynthiasac@hotmail.com', '', 'ISPAS2021', NULL, NULL, NULL, 'perdida', '2021-03-29 19:39:37', 3),
(134, NULL, 'Daniela ', 'Mastache', 'Valdovinos', NULL, NULL, 'M', 14, 4, 1998, '9981517672', 'danielamastache14@hotmail.com', '', 'mastache*14', 'Daniela Mastache', 'CancÃºn', 'RecomendaciÃ³n', 'perdida', '2021-03-29 19:40:22', 1),
(135, 'avatar/IMG_0615.JPG', 'Melissa', 'Mastache ', '', NULL, 2251, 'M', 23, 9, 1991, '9982272152', 'melissa.mastache@gmail.com', '', 'Karmatron', '@melissamastache', 'CancÃºn ', 'RecomendaciÃ³n', 'perdida', '2021-03-30 12:09:39', 1),
(136, NULL, 'Alan ', 'Carrillo', 'Medina', NULL, NULL, 'H', 20, 5, 2004, '9994136012', 'carrilloalan503@gmail.com', '', 'AlanLol1', 'https://www.facebook.com/alan.carrillo.775823', 'MÃ©rida', 'RecomendaciÃ³n', 'perdida', '2021-03-30 12:19:45', 3),
(137, NULL, 'Priscila Veronica ', 'Ruiz', 'Ruiz', NULL, NULL, 'M', 6, 11, 1996, '9984283997', 'veronicapriscilaruiz@gmail.com', '', 'ISPAS2021', 'Priscila Ruiz ', 'CancÃºn, Quintana Roo', 'RecomendaciÃ³n', 'perdida', '2021-03-30 14:51:10', 1),
(138, NULL, 'Lemuel ', 'Luna', '', NULL, NULL, '', 0, 0, 0, '', 'lemuel_luna@outlook.es', '', 'ISPAS2021', '', '', '', 'perdida', '2021-03-30 14:55:09', 3),
(139, NULL, 'hanna ', 'uscanga', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'hanuscanga@gmail.com', '', 'ISPAS2021', NULL, NULL, NULL, NULL, '2021-03-30 14:57:20', 3),
(140, NULL, 'Jorge ', 'Contreras', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pecha_neto@hotmail.com', '', 'ISPAS2021', NULL, NULL, NULL, NULL, '2021-03-30 14:58:19', 1),
(141, 'avatar/37DE8580-C2B4-4A81-A3FF-BC5DC063E1B7.jpeg', 'Kristian ', 'Andueza', 'Lopez', NULL, 1182, 'M', 25, 8, 1988, '9981517237', 'kanlo2508@gmail.com', '', 'Z2XVELP9ey', 'Face, insta, twitter', 'Cancun', 'RecomendaciÃ³n', 'perdida', '2021-03-30 14:59:17', 1),
(142, NULL, 'Mar&#237;a Fernanda ', 'Silva ', 'Monta&#241;o', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'marifersilva1317@hotmail.com', '', 'ISPAS2021', NULL, NULL, NULL, NULL, '2021-03-30 15:00:01', 3),
(143, NULL, 'Carolina ', 'Rebollo', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'carolina.rebollo@uteq.edu.mx', '', 'wakawaka', NULL, NULL, NULL, 'perdida', '2021-03-30 15:00:44', 1),
(146, NULL, 'Jorge', 'Espinoza  ', 'Carrillo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'jorgeespinoza_62@hotmail.com', '', 'ISPAS2021', NULL, NULL, NULL, NULL, '2021-03-30 22:57:31', 3),
(147, NULL, 'Eduardo ', 'Vielma ', 'Garcia', NULL, NULL, '', 0, 0, 0, '', 'edvielgar@gmail.com', '', 'ISPAS2021', '', '', '', 'perdida', '2021-03-31 13:30:05', 3),
(149, NULL, 'Maetzin', 'Gama', 'Moscosa', NULL, NULL, 'M', 6, 12, 1991, '5534455591', 'lovedark_04@hotmail.com', '', 'ISPAS2021', '', '', 'RecomendaciÃ³n', 'perdida', '2021-03-31 13:31:56', 3),
(150, NULL, 'Karen Sarai', 'Amaya', 'Gamboa', NULL, NULL, '', 0, 0, 0, '', 'karens.amayag@gmail.com', '', 'ISPAS2021', '', '', '', 'perdida', '2021-03-31 13:32:46', 3),
(151, NULL, 'Deyna', 'Frausto', 'Castruita', NULL, NULL, 'M', 14, 12, 1992, '9988972134', 'deynafrausto@gmail.com', '', 'Mariadey14', 'Deyna Frausto', 'CancÃºn Quintana Roo', 'RecomendaciÃ³n', 'perdida', '2021-04-01 14:24:32', 0),
(152, NULL, '', '', '', NULL, NULL, 'M', 17, 2, 1969, '', '', '', 'Bodegas18', '', '', 'RecomendaciÃ³n', 'perdida', '2021-04-02 08:25:31', 2),
(153, NULL, 'GISELA CRISTINA', 'lopez', '', NULL, NULL, 'M', 24, 7, 1984, '5576736787', 'crislo84.cl@gmail.com', '', 'ISPAS2021', 'facebook', 'pachuca', 'RecomendaciÃ³n', NULL, '2021-04-02 11:00:02', 1),
(157, NULL, 'Rebeca ', 'Arce', 'Jacintos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'rebeca.arce.jac@gmail.com', '', 'Rebecaaj20', NULL, NULL, NULL, 'perdida', '2021-04-04 13:52:58', 3),
(158, NULL, 'Jose Antonio', 'Vazquez', 'Martinez', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'josevazquezmartinez18@gmail.com', '', 'pepevm987', NULL, NULL, NULL, 'perdida', '2021-04-04 13:53:58', 3),
(159, 'avatar/34F006D5-A1B9-4F0A-BE82-E954201D7B28.jpeg', 'Liliana ', 'Castillo ', 'Arrieta', NULL, 1700, 'M', 7, 8, 1989, '9981981673', 'lilythcast@gmail.com', '', 'eros101210', 'Facebook', 'Jardines del Sur 5', 'Redes Sociales', 'perdida', '2021-04-04 19:42:34', 1),
(160, NULL, 'Eros ', 'Hernandez', 'Castillo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'asteroide433@gmail.com', '', 'ISPAS2021', NULL, NULL, NULL, 'perdida', '2021-04-04 20:23:07', 3),
(161, NULL, 'Miguel ', 'Almanza', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'maaz_81@hotmail.com', '', 'ISPAS2021', NULL, NULL, NULL, NULL, '2021-04-05 12:34:48', 1),
(162, 'avatar/IMG_9728.jpeg', 'Gabriela', 'Guerra', 'Ramirez', NULL, 2888, 'M', 28, 10, 1984, '4772809813', 'gabrielaguerrar@hotmail.com', '', 'CENTAURO28', 'https://www.facebook.com/gabrich28', 'Lagos de Moreno, Jalisco', 'RecomendaciÃ³n', 'perdida', '2021-04-05 13:49:43', 2),
(163, NULL, 'Gabriela', 'Guerra', 'Ramirez', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'gabrielaguerrar@hotmail.com', '', 'ISPAS2021', NULL, NULL, NULL, NULL, '2021-04-05 13:51:36', 2),
(164, NULL, 'JULIO', 'FLORES', 'VALDEZ', NULL, NULL, 'H', 1, 7, 1992, '9981360985', 'j.floresintegracions@gmail.com', '', 'ISPAS2021', 'EP JULIO FLORES ', 'CANCUN ', 'RecomendaciÃ³n', 'perdida', '2021-04-05 21:10:38', 2),
(165, NULL, 'Ludim ', 'Jared', 'Tabaco', NULL, NULL, 'M', 3, 10, 1999, '', 'jaredludim4@gmail.com', '', 'ISPAS2021', '', '', 'Redes Sociales', 'perdida', '2021-04-06 14:59:59', 0),
(166, NULL, 'Enrique ', 'Celis', 'Aguilar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'enriquecelis2020@gmail.com', '', 'ISPAS2021', NULL, NULL, NULL, 'perdida', '2021-05-05 17:26:11', 0),
(167, 'avatar/CE12DD09-45AE-4BD9-A995-7C86CF9D4113.jpeg', 'NAIN XHAIL ', 'GIJON', 'RIOS', NULL, 1880, 'M', 12, 10, 1982, '9981471183', 'naincita@gmail.com', '', 'nain6530', 'Nain GR', 'Cancun', 'RecomendaciÃ³n', 'aumento', '2021-05-07 12:38:26', 1),
(168, NULL, 'Ana', 'ORTEGA ', 'Valeria', NULL, NULL, 'M', 15, 1, 1986, '8333474671', 'anavaleriaortegasimon@gmail.com', '', 'Anavaleria1986', 'Facebook ', 'Tampico, Tamaulipas ', 'RecomendaciÃ³n', 'perdida', '2021-05-07 12:39:23', 0),
(169, NULL, 'TAMARA ANGELICA', 'PAVON ', 'LUGO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'amm_proyectosyconstrucciones@outlook.com', '', 'ISPAS2021', NULL, NULL, NULL, NULL, '2021-05-07 12:40:26', 0),
(170, NULL, 'MIGUEL ANGEL ', 'TOROELLA', 'MENDEZ ', NULL, NULL, 'H', 1, 10, 1986, '9981117373', 'miguel.angel.torroella@gmail.com', '', 'ISPAS2021', 'facebook.com/mattor1926', 'CancÃºn', 'RecomendaciÃ³n', NULL, '2021-05-07 12:42:26', 0),
(171, NULL, 'JORGE', 'BARRIENTOS', 'GONZALEZ', NULL, NULL, 'H', 10, 11, 1997, '9983712903', 'jorge_bg97@hotmail.com', '', 'Sanson2327', 'https://www.facebook.com/jorge.barrientosgonzalez', 'CancÃºn, Q.Roo', 'Redes Sociales', 'perdida', '2021-05-07 12:43:33', 0),
(172, NULL, 'DRISDEL PAUL', 'CAN', 'RUIZ', NULL, NULL, 'H', 29, 6, 1986, '9981080143', 'dris_29@hotmail.com', '', 'favc8523', 'paul.ruiz.775', 'Gran Santa Fe 3', 'RecomendaciÃ³n', 'perdida', '2021-05-07 12:45:00', 1),
(173, NULL, 'REYNA GUADALUPE', 'DIAZ', 'UICAB', NULL, NULL, 'M', 6, 1, 1994, '9984049552', 'gpediazui@gmail.com', '', 'tetelina16', 'Reyna Diaz', 'CancÃºn', 'RecomendaciÃ³n', 'perdida', '2021-05-07 12:55:07', 0),
(174, NULL, 'DENYA', 'FRAUSTO', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'denyafrausto@gmail.com', '', 'ISPAS2021', NULL, NULL, NULL, NULL, '2021-05-07 12:55:47', 0),
(175, NULL, 'SANDRA ', 'SALINAS', 'ARTEAGA', NULL, NULL, 'M', 3, 6, 1983, '2223244133', 'sandra.salinasaa@udlap.mx', '', 'ISPAS2021', 'https://www.facebook.com/sandra.salinas.arteaga', 'CancÃºn', 'RecomendaciÃ³n', 'perdida', '2021-05-07 12:57:47', 0),
(176, NULL, 'ERICK', 'CASTAÃ‘EDA ', 'FRAGOSO', NULL, NULL, 'H', 1, 3, 1990, '9981161238', 'maquech.erik@gmail.com', '', 'Erikmolko7', 'https://www.facebook.com/erik.maquech/', 'CancÃºn ', 'RecomendaciÃ³n', 'perdida', '2021-05-07 12:59:37', 0),
(177, NULL, 'NORMA ABIGAIL', 'PUC', 'CANUL', NULL, NULL, 'M', 26, 1, 1990, '9981179794', 'abigailpucc@hotmail.com', '', 'JAVI0709', 'Abi puc', 'Cancun', 'Redes Sociales', 'perdida', '2021-05-07 13:01:19', 0),
(178, NULL, 'KAREN DANIELA', 'PAREDES', 'SANCHEZ', NULL, NULL, 'M', 14, 11, 1998, '9981355248', 'karnipar@gmail.com', '', 'ISPAS2021', 'Daniela Paredes', 'Cancun', 'Redes Sociales', NULL, '2021-05-07 13:02:24', 0),
(179, NULL, 'JOSE ANTONIO ', 'MARTINEZ ', 'ORTEGA', NULL, NULL, 'H', 15, 12, 1997, '9983296191', 'antomtzort@gmail.com', '', 'atlante97', 'Antonio MartÃ­nez', 'CancÃºn', 'Redes Sociales', NULL, '2021-05-07 13:04:18', 0),
(180, NULL, 'LOL-BEH DONAJY', 'MATIAS', 'EUAN', NULL, NULL, 'M', 1, 2, 1999, '9981972167', 'lolbeh.matias.0102@gmail.com', '', 'Lolis0102', 'Facebook Lol-beh Matias', 'CancÃºn', 'Redes Sociales', 'perdida', '2021-05-07 13:06:03', 0),
(181, NULL, 'KATIA MICHELLE ', 'MORENO ', 'SALAZAR', NULL, NULL, 'M', 22, 11, 1999, '5546797145', 'katia-99@live.com.mx', '', 'ISPAS2021', 'Katia Moreno', 'CDMX', 'Redes Sociales', 'perdida', '2021-05-07 13:07:02', 1),
(182, NULL, 'REDY AZALIA', 'VILLANUEVA', 'SALAS', NULL, NULL, 'M', 3, 10, 2002, '9982364439', 'r_azalis@hotmail.com', '', 'azalia02', 'Redy Azalia', 'Edo MÃ©xico', 'Redes Sociales', 'perdida', '2021-05-07 13:08:26', 0),
(183, NULL, 'HEIDY MERCEDES', 'GHERSI', 'FERNANDEZ', NULL, NULL, 'M', 25, 10, 1974, '9981567654', 'hmghersi@gmail.com', '', 'maturin', 'Heidy Ghersi', 'Cancun', 'Redes Sociales', 'perdida', '2021-05-07 13:09:46', 0),
(184, NULL, 'ESTHER ABIGAIL', 'HERNANDEZ', 'VELAZQUEZ', NULL, NULL, 'M', 15, 6, 1996, '9221569094', 'eabigailtvelazquez@hotmail.com ', '', 'C150696o', 'Facebook', 'CancÃºn', 'RecomendaciÃ³n', 'perdida', '2021-05-07 13:10:32', 0),
(185, NULL, 'EVA GYVANI', 'SALAZAR ', 'ANDRADE', NULL, NULL, 'M', 24, 10, 2003, '9221528225', 'gyvanita@gmail.com', '', 'N102378j', 'Facebook', 'Minatitlan', 'RecomendaciÃ³n', 'perdida', '2021-05-07 13:11:34', 1),
(186, NULL, 'ROSELA EDISSA', ' TENORIO', 'VELAZQUEZ', NULL, NULL, 'M', 15, 6, 1993, '9981119768', 'roselatenorio@hotmail.com', '', 'n102377j', 'facebook', 'Cancun', 'RecomendaciÃ³n', 'perdida', '2021-05-07 13:15:03', 1),
(187, NULL, 'DANIEL', 'ANDRADE', 'MOLINA', NULL, NULL, 'H', 4, 3, 1986, '9983858613', 'dam@unixmexico.org', '', 'n102377j', '@danielandrade', 'Cancun', 'RecomendaciÃ³n', 'perdida', '2021-05-07 13:19:32', 1),
(188, NULL, 'CAROLINA', 'RAMIREZ', 'RANGEL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'carolinarg3012@mail.com', '', 'ISPAS2021', NULL, NULL, NULL, NULL, '2021-05-07 13:20:40', 0),
(189, NULL, 'KARLA ', 'MORA', 'MARTINEZ', NULL, NULL, 'M', 14, 4, 1985, '9981558066', 'karla_1214@hotmail.com', '', 'ISPAS2021', 'Facebook', 'CancÃºn', 'RecomendaciÃ³n', 'perdida', '2021-05-07 13:21:38', 1),
(190, NULL, 'EDUARDO ', 'BARRERA', 'REYES', NULL, NULL, 'H', 16, 7, 1997, '9982604233', 'barrera.reyesed@gmail.com', '', 'lalin1234', 'Eduardo Reyes', 'Cancun ', 'RecomendaciÃ³n', 'perdida', '2021-05-07 13:22:40', 0),
(191, NULL, 'LIZBETH', 'AGUILERA', 'MORENO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'lizzita68@htmail.com', '', 'ISPAS2021', NULL, NULL, NULL, NULL, '2021-05-07 13:23:42', 0),
(192, NULL, 'YARELI ELIZABETH', 'CONTRERAS', 'AGUILERA', NULL, NULL, 'M', 31, 1, 1994, '5540809433', 'yareli-contreras@hotmail.com', '', 'camila', 'Facebook ', 'Cdmx', 'RecomendaciÃ³n', NULL, '2021-05-07 13:25:55', 0),
(193, NULL, 'DANIELA', 'GALICIA', 'MONDRAGON', NULL, NULL, 'M', 9, 6, 1998, '5551831467', 'danngali18@gmail.com', '', 'ISPAS2021', 'Dann Galicia', 'Edo de Mexico ', 'RecomendaciÃ³n', 'perdida', '2021-05-07 13:27:23', 0),
(194, NULL, 'ANGEL', 'MARTINEZ', 'AQUINO', NULL, NULL, 'H', 1, 11, 1996, '9982210699', 'angel.mtz.aquino@gmail.com', '', 'Sofia1208', '@angelaquisi', 'CancÃºn', 'RecomendaciÃ³n', 'perdida', '2021-05-07 13:28:17', 0),
(195, 'avatar/IMG_1827.jpg', 'NORMA FERNANDA ', 'DE LA LUZ', 'CONTRERAS', NULL, 1216, 'M', 12, 10, 1994, '7291080389', 'fernandadll94@gmail.com', '', '2412612', 'ferdllz', 'Estado de Mexico', 'RecomendaciÃ³n', 'perdida', '2021-05-07 13:31:32', 2),
(196, NULL, 'MARIA DE LOS ANGELES', 'AVILES', 'ARCEO', NULL, NULL, 'M', 24, 12, 1997, '9983830932', 'maria24.02.17@gmail.com', '', 'ISPAS2021', 'Maria arceeo', 'Cancun', 'RecomendaciÃ³n', 'perdida', '2021-05-07 13:35:24', 0),
(197, NULL, 'ALICIA GUADALUPE', 'CERVANTES', 'MEX', NULL, NULL, 'M', 12, 3, 1997, '', 'alicervantes.mx@gmail.com', '', 'ISPAS2021', '', '', 'Redes Sociales', NULL, '2021-05-07 13:36:39', 0),
(198, NULL, 'ANA KAREN', 'LOPEZ ', 'RANGEL', NULL, NULL, 'M', 23, 10, 1996, '9982165448', 'annlopran23@gmail.com', '', 'Ticu1996', 'Karen Rangel', 'CancÃºn ', 'RecomendaciÃ³n', 'perdida', '2021-05-07 13:37:41', 0),
(199, NULL, 'Ronie', 'RAMOS', 'Ramos', NULL, NULL, 'H', 21, 6, 1996, '9981633686', 'ronie.ramos.399@gmail.com', '', 'ISPAS2021', 'Ronie Ramos', 'CancÃºn, Quintana Roo ', 'RecomendaciÃ³n', 'perdida', '2021-05-07 13:38:33', 0),
(200, NULL, 'JAQUELINE', 'TORRES', 'COPETE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'jackiemorena@hotmail.com', '', 'ISPAS2021', NULL, NULL, NULL, NULL, '2021-05-07 13:39:28', 0),
(201, 'avatar/20210809_173408.jpg', 'ANA LAURA', 'ACOSTA', 'IBON', NULL, 2081, 'M', 24, 2, 1988, '9982388462', 'analaura.acostaibon@gmail.com', '', 'anaacosta', 'Ana acosta ', 'Cancun', 'RecomendaciÃ³n', 'perdida', '2021-05-07 13:41:05', 1),
(202, NULL, 'HECTOR SARON', 'VARGAS ', 'TRUJILLO', NULL, NULL, 'H', 29, 10, 1994, '9981400647', 'andrea.zarom11@gmail.com', '', 'vargaspech', 'Zarom Vargas Trujillo', 'CancÃºn', 'Redes Sociales', 'perdida', '2021-05-07 13:43:11', 0),
(203, NULL, 'DULCE NALLELY', 'GOMEZ', 'PEREZ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dulcenallely1714@gmail.com', '', 'ISPAS2021', NULL, NULL, NULL, NULL, '2021-05-07 13:44:22', 0),
(204, NULL, 'DEYSI BEATRIZ', ' CANCHE', 'BALAM', NULL, NULL, 'M', 16, 12, 1994, '9981398768', 'deysiidilan@gmail.com', '', 'ISPAS2021', 'Deysi Canche', 'Kalakmul ', 'Anuncios', 'perdida', '2021-05-07 13:45:17', 0),
(205, NULL, 'Baruc', 'ORTEGA', 'ZACARIAS', NULL, NULL, 'H', 20, 1, 1999, '4771065312', 'bookene99@gmail.com', '', 'l1e2o39A', 'Baruc Ortega', 'Leon Gto', 'RecomendaciÃ³n', 'perdida', '2021-05-07 13:50:30', 0),
(206, NULL, 'ANETTE', 'AGUILAR', 'NU&#209;EZ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'anatteaguilar10@hotmail.com', '', 'ISPAS2021', NULL, NULL, NULL, NULL, '2021-05-07 13:51:46', 0),
(207, NULL, 'Karem', 'PEREIRA', 'Pereira', NULL, NULL, 'M', 6, 10, 1995, '9981572199', 'pereirakarem.6@gmail.com', '', 'Pereira06', 'fb.com/krmdb', 'CancÃºn ', 'Redes Sociales', 'perdida', '2021-05-07 13:53:12', 0),
(208, NULL, 'JORGE ERNESTO', 'CONTRERAS ', 'BEJARANO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pecha.neto@hotmail.com', '', 'ISPAS2021', NULL, NULL, NULL, NULL, '2021-05-07 13:57:52', 0),
(209, NULL, 'JESUS ALEJANDRO', 'MOO', 'CIH', NULL, NULL, 'H', 6, 12, 1994, '9983371066', 'jesusmooc@gmail.com', '', 'tornas01', 'Www.fb.com/alejandrojamc', 'Cancun', 'RecomendaciÃ³n', 'perdida', '2021-05-07 13:58:32', 0),
(210, 'avatar/e420da78-2e95-4e5e-b833-a7e59e2d8245.jpg', 'NIDIA ESTHER ', 'INTERIAN', 'YEH', NULL, 1474, 'M', 22, 11, 1994, '9983208874', 'psicologa.nidiainterian@outlook.com', '', 'ISPAS2021', 'Niidiia Interiian', 'CancÃºn ', 'Redes Sociales', 'perdida', '2021-05-07 14:01:31', 2),
(211, NULL, 'DIANA ISABEL', 'MARTIN', 'GONGORA', NULL, NULL, 'M', 9, 9, 1997, '9983226892', 'gongoradiana_@hotmail.com', '', 'tenemosun3312', 'Dian GÃ³ngora', 'CancÃºn', 'RecomendaciÃ³n', 'aumento', '2021-05-07 14:03:58', 0),
(212, NULL, 'MARIA FELIX ', 'RAMIREZ', 'RAMIREZ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mariraramirez523@gmail.com', '', 'ISPAS2021', NULL, NULL, NULL, NULL, '2021-05-07 14:05:25', 0),
(213, NULL, 'PAMELA DANAE', 'MORALES', 'VALLE', NULL, NULL, 'M', 31, 10, 1995, '9982337430', 'pameladanae04@gmail.com', '', 'ISPAS2021', 'Danae Morales', 'CancÃºn ', 'Redes Sociales', 'perdida', '2021-05-07 14:06:19', 0),
(215, NULL, 'Darwin Ulises', 'Cruz', 'QuiÃ±ones', NULL, NULL, 'H', 1, 9, 1994, '9838097728', 'darwincruz01@gmail.com', '', '0TxIR21Naq', 'darwincruuz', 'CancÃºn', 'Redes Sociales', 'perdida', '2021-05-08 09:56:24', 0),
(216, NULL, 'Angie ', 'VÃ¡zquez', '', NULL, NULL, 'M', 1, 3, 1995, '9983832046', 'angiesarav@gmail.com', '', 'Pizzaalpastor1', 'Angie VÃ¡zquez', 'CancÃºn', 'RecomendaciÃ³n', 'perdida', '2021-05-08 09:57:45', 0),
(217, NULL, 'Osmar ', 'Fernandez', 'Barrero', NULL, NULL, 'H', 8, 7, 1993, '9982594184', 'osmarfbar@gmail.com', '', 'Fernandez0807', 'Osmar.Fernandez', 'Cancun', 'RecomendaciÃ³n', 'perdida', '2021-05-08 09:58:36', 0),
(218, NULL, 'Leslie Cecilia', 'PatrÃ³n ', 'CÃ©n', NULL, NULL, 'M', 4, 1, 1990, '9981527534', 'cecipatron90@gmail.com', '', 'ISPAS2021', 'Ceci Patron', 'Cancun', 'RecomendaciÃ³n', 'perdida', '2021-05-08 09:59:50', 0),
(219, NULL, 'Aida ConcepciÃ³n', 'Martinez', 'Aquino', NULL, NULL, 'M', 25, 11, 1977, '9981165112', 'aidamtz25@icloud.com', '', 'sofiaalessandra', 'facebook: La Nena Martinez', 'cancun', 'RecomendaciÃ³n', 'perdida', '2021-05-08 10:01:00', 0),
(220, NULL, 'karen ', 'mendoza ', 'vargas ', NULL, NULL, 'M', 24, 1, 1994, '9981148832', 'karen_mendozav24@hotmail.com', '', 'ISPAS2021', '', '', 'RecomendaciÃ³n', NULL, '2021-05-09 21:38:33', 0),
(221, 'avatar/WhatsApp Image 2021-08-10 at 6.53.57 PM.jpeg', 'Daniel Alonso', 'Flores', 'Novelo', NULL, NULL, 'H', 26, 8, 1995, '9981055518', 'greendano2906@gmail.com', '', 'Pirata27', 'Daniel Flores ', 'CancÃºn', 'RecomendaciÃ³n', 'perdida', '2021-05-09 22:29:31', 2),
(222, 'avatar/CLST.png', 'Celeste Margarita', 'May', 'Caamal', NULL, 1044, 'M', 19, 9, 1996, '9982122704', 'mayceleste606@gmail.com', '', 'DoPeChiCan', 'Celeste May', 'CancÃºn ', 'RecomendaciÃ³n', 'perdida', '2021-05-09 22:38:00', 2),
(223, NULL, 'Carolina', 'Ramirez', 'Rangel', NULL, NULL, 'M', 30, 12, 2000, '5548421327', 'carolinarg3012@gmail.com', '', 'Carito12', 'Carolina Rg', 'CancÃºn', 'RecomendaciÃ³n', 'perdida', '2021-05-09 23:13:04', 0),
(224, NULL, 'CRISTIAN', 'GUTIERREZ', 'Cruz', NULL, NULL, 'H', 3, 2, 1993, '4791357640', 'crissgutierrezeeei@gmail.com', '', 'ISPAS2021', 'Facebook instagram', 'LeÃ³n Guanajuato ', 'Redes Sociales', 'perdida', '2021-05-10 13:46:08', 0),
(225, NULL, 'Tamara', 'PavÃ³n', 'Lugo', NULL, NULL, 'M', 19, 10, 1989, '9221409816', 'tamm_proyectosyconstrucciones@outlook.com', '', 'ISPAS2021', 'Angelica pavon', 'CancÃºn ', 'Redes Sociales', NULL, '2021-05-11 10:26:33', 0),
(226, NULL, 'Dalia', 'Juarez', 'Ayala', NULL, NULL, 'M', 28, 1, 1994, '7774929186', 'hellodaliajuarez@gmail.com', '', 'ISPAS2021', 'Dalia Ja', 'Cuernavaca, Morelos', 'RecomendaciÃ³n', 'perdida', '2021-05-11 10:32:53', 0),
(227, NULL, 'Pedro Pablo', 'Rios', 'Ruiz', NULL, 1600, 'H', 18, 2, 1996, '9981635738', 'hhdeltha@gmail.com', '', 'Password1.', 'Facebook', 'MÃ©xico', 'RecomendaciÃ³n', 'perdida', '2021-05-11 10:33:35', 1),
(228, NULL, 'Dulce ', 'GÃ³mez', 'PÃ©rez', NULL, NULL, 'M', 22, 8, 2000, '4424875718', 'dulcenallelyc1714@gmail.com', '', 'ISPAS2021', 'Dulce GÃ³mez', 'CancÃºn', 'RecomendaciÃ³n', 'perdida', '2021-05-11 10:40:13', 0),
(229, NULL, 'integracion', 'saludable', 'PRUEBA', NULL, NULL, 'H', 22, 12, 1987, '9982463845', 'integracionsaludable2020@gmail.com', '', 'ISPAS2021', 'INTEGRACION SALUDABLE', 'CANCUN', 'Redes Sociales', 'perdida', '2021-05-11 17:46:59', 1),
(230, NULL, 'Lizbeth ', 'Aguilera', 'Moreno', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'lizzita68@hotmail.com', '', 'ISPAS2021', NULL, NULL, NULL, NULL, '2021-05-12 11:13:47', 0),
(231, 'avatar/IMG_2673.PNG', 'PEDRO', 'PABLO', 'FREFG', NULL, 1964, 'H', 6, 7, 1991, '954412545', 'info@integracionsaludable.com', '', 'ISPAS2021', 'PEDRO', 'MEXICO', 'RecomendaciÃ³n', 'perdida', '2021-05-12 18:19:48', 1),
(232, NULL, 'Maria Felix', 'Ramirez', 'Ramirez', NULL, NULL, 'M', 21, 9, 1997, '9997474711', 'mariramirez523@gmail.com', '', 'Majajo123R', 'Facebook: Maria Felix Ramirez  ', 'Calle del prado #27 Jardines del Sur I', 'RecomendaciÃ³n', 'perdida', '2021-05-12 22:28:27', 0),
(233, NULL, 'Sandra Luz', 'Bodegas', 'Poot', NULL, NULL, 'M', 17, 2, 1969, '9981102559', 'sandybodegas@hotmail.com', '', 'Bodegas18', 'Facebook: Sandra Luz Bodegas Poot', 'CancÃºn, Quintana Roo', 'RecomendaciÃ³n', 'perdida', '2021-05-13 12:35:02', 1),
(235, NULL, 'Fernando RamÃ³n', 'Celaya ', 'Torres', NULL, NULL, 'H', 30, 5, 1985, '9982792096', 'fcelaya@aguakan.com', '', 'ISPAS2021', 'No tengo', 'Cancun', 'RecomendaciÃ³n', 'perdida', '2021-06-01 20:24:50', 1),
(236, NULL, 'Jorge Gilberto', 'Chale', 'May', NULL, NULL, 'H', 4, 2, 1981, '9983065975', 'gilbertochale04@gmail.com', '', 'ISPAS2021', 'Facebook Gilberto halÃ©', 'Valladolid Nuevo, Lazaro CÃ¡rdenas, Quintana Roo', 'RecomendaciÃ³n', 'perdida', '2021-06-01 20:26:08', 1),
(237, NULL, 'Maria Del Carmen', 'De la Cruz', 'MagaÃ±a', NULL, NULL, 'M', 9, 2, 1969, '9982759594', 'tesoreria@aguakan.com', '', 'Alemar20', 'Facebook', 'Cancun', 'Anuncios', 'perdida', '2021-06-01 20:27:41', 1),
(238, NULL, 'Oscar Alfredo', 'Herrera', 'Colli', NULL, NULL, 'H', 7, 2, 1978, '9982199988', 'oherrera@aguakan.com', '', 'Marely.12', 'whatsapp', 'Cancun', 'RecomendaciÃ³n', 'perdida', '2021-06-01 20:28:48', 1),
(239, NULL, 'JUANA PATRICIA		', 'HUESCA', 'PALOMINO ', NULL, NULL, 'M', 20, 6, 1987, '9981966610', 'psic.patricia.huesca@gmail.com', '', 'ISPAS2021', 'facebook.com/Paty.Huesca', 'CancÃºn', 'RecomendaciÃ³n', 'perdida', '2021-06-01 20:38:16', 1),
(240, NULL, 'JORGE HELBERT	', 'Ku', 'Canul', NULL, NULL, 'H', 7, 8, 1991, '9981357401', 'helbertku@gmail.com', '', 'Helbert91', 'Facebook ', 'CancÃºn', 'RecomendaciÃ³n', 'perdida', '2021-06-01 20:39:30', 1),
(241, NULL, 'ARMIN', 'LOPEZ', 'DE LA CRUZ', NULL, NULL, 'H', 26, 2, 1987, '9981485805', 'alopez@aguakan.com', '', 'aguakan2123', 'arquicharmin@hotmail.com', 'Conocida', 'RecomendaciÃ³n', 'perdida', '2021-06-01 20:40:38', 1),
(242, NULL, 'jolopez@aguakan.com', 'LOPEZ', 'MILLAN', NULL, NULL, 'H', 8, 12, 1988, '9981855375', 'jolopez@aguakan.com', '', 'ZAKUMI2021', 'FACEBOOK', 'CANCUN', 'RecomendaciÃ³n', 'perdida', '2021-06-01 20:41:02', 2),
(243, NULL, 'DANIEL ALBERTO', 'MORENO ', 'ALONSO', NULL, NULL, 'H', 2, 8, 1993, '9982941190', 'dmoreno@aguakan.com', '', 'sweet667366', 'DANIELMORENO', 'Fracc Privadas Turquesa', 'Anuncios', 'perdida', '2021-06-01 20:42:48', 2),
(244, NULL, ' JONATHAN', 'SEGUNDO', 'TORIBIO', NULL, NULL, 'H', 31, 12, 1990, '9983143500', 'jonabider1@gmail.com', '', 'lunacen', 'Facebook ', 'Cancun ', 'RecomendaciÃ³n', 'perdida', '2021-06-01 20:48:05', 1),
(245, NULL, 'JOSE MARTIN AKE POOL', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'martinnico_0424@hotmail.com', '', 'ISPAS2021', NULL, NULL, NULL, NULL, '2021-06-01 20:58:07', 0),
(246, NULL, ' CONCEPCIÃ“N', 'ANZUETO ', 'RODRÃGUEZ ', NULL, NULL, 'M', 30, 9, 1986, '9983040682', 'anzuetorc@gmail.com', '', 'Daniel07', 'CARADY ANZUETO ', 'Cancun ', 'RecomendaciÃ³n', 'perdida', '2021-06-01 20:58:41', 1),
(247, NULL, 'WILLIAM ERIK HIDALGO POOL', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'erickh3887@gmail.com', '', 'ISPAS2021', NULL, NULL, NULL, NULL, '2021-06-01 21:00:26', 0),
(248, NULL, 'JAIME HUERTA FLORES ', 'Huerta ', 'Flores ', NULL, NULL, 'H', 23, 1, 1976, '9982604544', 'jaimehf23@gmail.com', '', 'lupita24', 'Facebook ', 'Cancun.qroo', 'RecomendaciÃ³n', 'perdida', '2021-06-01 21:01:06', 1),
(249, NULL, 'MARIO ROMAN QUINTAL HERNANDEZ ', 'Quintal', 'Hernandez', NULL, NULL, 'H', 14, 9, 1979, '9984130309', 'quintalm44@gmail.com', '', 'ISPAS2021', 'Facebook', 'Santa fe ', 'RecomendaciÃ³n', 'perdida', '2021-06-01 21:11:07', 1),
(250, NULL, 'ANEL ANAHI DE LA CONCEPCIONROMAN AGUILAR', 'Roman', 'Aguilar ', NULL, NULL, 'M', 21, 5, 1977, '9984137878', 'anahi_roman77@hotmail.com', '', 'aroman77', 'Facebook ', 'Cancun', 'RecomendaciÃ³n', 'perdida', '2021-06-01 21:11:42', 1),
(251, NULL, 'DAVID ', 'SARAO', 'CHABLE', NULL, NULL, 'H', 11, 5, 1994, '9984998947', 'sam_sarao@hotmail.com', '', 'ISPAS2021', 'David chable ', 'Villas otoch', 'RecomendaciÃ³n', NULL, '2021-06-01 21:12:19', 1),
(252, NULL, 'Josias Arturo ', 'Moshan', 'Alejo', NULL, NULL, 'H', 19, 9, 1997, '9984119881', 'arturo.MAlejo@outlook.com', '', 'arturom97', 'Arturo Moshan', 'CancÃºn ', 'RecomendaciÃ³n', 'perdida', '2021-06-01 21:34:48', 1),
(253, NULL, 'Syanya ', 'Escobar ', 'Hernandez', NULL, NULL, 'M', 28, 1, 2021, '9984943713', 'sescobar@aguakan.com', '', 'ISPAS2021', 'Syan Escobar ', 'Cancun ', 'RecomendaciÃ³n', 'perdida', '2021-06-02 10:17:47', 1),
(254, NULL, 'JOSÃ‰ MARTIN', 'Ake', 'Pool', NULL, NULL, 'H', 28, 4, 1986, '9982232372', 'martinico_0422@hotmail.com', '', 'nefwem-2bezhe-baqfaH', 'Facebook', 'Isla mujeres', 'RecomendaciÃ³n', 'perdida', '2021-06-02 11:28:47', 1),
(255, NULL, 'Erik wilian ', 'Hidalgo', 'Pool', NULL, NULL, 'H', 5, 10, 1990, '9988465226', 'erikh3887@gmail.com', '', '0525ewp3', 'WhatsApp', 'Villas del mar', 'RecomendaciÃ³n', 'perdida', '2021-06-02 13:49:31', 1),
(256, NULL, 'CEH RUIZ OSVALDO ADAN', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'oceh@aguakan.com', '', 'ISPAS2021', NULL, NULL, NULL, NULL, '2021-06-07 20:48:37', 1),
(258, NULL, 'LESLIE GUADALUPE', 'AMARO ', 'GONZALEZ ', NULL, NULL, 'M', 10, 8, 1994, '8334415920', 'leslieg.amaro@gmail.com', 'AGUAKAN', 'ISPAS2021', 'https://www.facebook.com/leslieeamaro', 'CancÃºn', 'RecomendaciÃ³n', 'perdida', '2021-06-14 10:41:26', 1),
(259, NULL, 'PRISCILA CELIS GOMEZ', '', '', NULL, NULL, '', 0, 0, 0, '+52 9982140384', 'priscilacelisgomez@gmail.com', 'AGUAKAN', 'ISPAS2021', '', '', '', NULL, '2021-06-19 13:34:04', 2),
(260, NULL, 'PATRICIA			', 'Hardoin ', 'Lopez ', NULL, NULL, 'M', 22, 6, 1983, '9982194464', 'patyhardoin@icloud.com', 'sc', 'ISPAS2021', 'Facebook Patricia hardoin', 'CancÃºn ', 'Redes Sociales', NULL, '2021-06-19 17:57:12', 1),
(261, NULL, 'JACOBO EDUARDO ', 'SOLIS', 'ROSADO', NULL, NULL, 'H', 15, 6, 1990, '5510819223', 'jacobosolis1590@gmail.com', '', 'ISPAS2021', 'Eddu Solis', 'CancÃºn , Quintana Roo, MÃ©xico', 'RecomendaciÃ³n', 'perdida', '2021-06-19 17:57:57', 1),
(262, 'avatar/4E37F93F-BE66-4CC6-9AFD-6F0BAC4FF166.jpeg', 'SELENE  ', 'Mondragon ', 'Medina', NULL, 1350, 'M', 15, 12, 1983, '8074644075', 'selyn.mondragon@hotmail.com', '', 'ISPAS2021', 'Selene McLeod ', 'Canada', 'Redes Sociales', 'perdida', '2021-06-19 17:58:56', 1),
(263, NULL, 'CLAUDIA JAQUELINEMATOS HERNANDEZ ', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '16claudia@gmail.com', '', 'ISPAS2021', NULL, NULL, NULL, NULL, '2021-06-19 18:00:43', 1),
(264, NULL, 'Janine Alejandra', 'PÃ©rez', 'ArgÃ¡ez', NULL, NULL, 'M', 12, 7, 1998, '9981111389', 'jan.argaez12@gmail.com', '', 'ISPAS2021', 'Janine Perez / @jan.argaez', 'MÃ©xico', 'Redes Sociales', 'perdida', '2021-06-19 18:01:18', 1),
(265, 'avatar/PERFIL.JPG', 'RUBÃ BEATRIZ', 'AMAYA ', 'DIAZ', NULL, 1400, 'M', 21, 7, 1983, '9982387984', 'rubimkm@HOTMAIL.COM', '', 'ISPAS2021', 'Rubi Amaya', 'CANCUN, Benito JuÃ¡rez', 'Redes Sociales', 'perdida', '2021-06-19 18:01:54', 1),
(266, 'avatar/yo.jpeg', 'JOHANNA ', 'AGUIRRE', 'LORENZO', NULL, 1400, 'M', 28, 4, 1978, '9988704433', 'taz_2808@hotmail.com', 'sc', 'ISPAS2021', 'FACEBOOK', 'CANCUN Q.ROO', 'Redes Sociales', 'perdida', '2021-06-19 18:02:29', 1),
(267, NULL, 'ALEJANDRO ', 'PRATS', 'MARTINEZ ', NULL, NULL, 'H', 19, 9, 1996, '9841885550', 'alexprats33@gmail.com', 'sc', 'ISPAS2021', 'Facebook ', 'Los olivos 13', 'RecomendaciÃ³n', NULL, '2021-06-19 18:03:00', 0),
(268, 'avatar/foto Mariela reto.jpg', 'MARIELA YANET', 'MORENO', 'ARIAS', NULL, 1890, 'M', 2, 12, 1980, '4498959723', 'myma0212@gmail.com', 'sc', 'Mym@0212', 'FACEBOOK', 'JALISCO', 'RecomendaciÃ³n', 'perdida', '2021-06-19 18:03:37', 1),
(269, NULL, 'SAMANTHA', 'RIOS', 'NUÃ‘EZ', NULL, NULL, 'M', 6, 12, 1995, '3331835458', 'samsajorn06@gmail.com', 'sc', 'PlayaBaja06', 'Samantha Rios ', 'Jalisco', 'RecomendaciÃ³n', 'perdida', '2021-06-19 18:04:07', 1),
(270, 'avatar/75DD966C-88C8-4A9E-AB07-62E78BAC0A37.jpeg', 'MAYTE ALEJANDRA DEGADILLO', 'Delgadillo', 'MÃ­reles ', NULL, 1450, 'M', 14, 8, 1989, '8110246600', 'mayte_ale54@hotmail.com', '', '10qxBiPcpu', 'MÃ­reles May ', 'Nuevo LeÃ³n ', 'RecomendaciÃ³n', 'perdida', '2021-06-19 18:04:35', 2),
(271, NULL, 'MarÃ­a Lourdes', 'Garcia ', 'Diaz ', NULL, NULL, 'M', 2, 12, 1980, '9982134427', 'lulu_luba@hotmail.com', 'sc', 'ISPAS2021', 'https://www.facebook.com/lulu.luba.5', 'Cancun', 'RecomendaciÃ³n', 'perdida', '2021-06-19 18:06:03', 1),
(272, NULL, 'Vanely', 'Nunez', 'Cuadras', NULL, NULL, 'M', 8, 6, 1996, '001510265996', 'vanely_nunez@icloud.com', 'sc', 'ISPAS2021', 'Fb', 'San JosÃ© California ', 'Redes Sociales', 'perdida', '2021-06-19 18:07:13', 1),
(273, NULL, 'ENRIQUE', 'Zamarripa', 'RamÃ­rez ', NULL, NULL, 'H', 28, 10, 1982, '9982416064', 'kikezama@gmail.com', 'sc', 'ikerydiego', 'Facebook.com/kikezama', 'CancÃºn ', 'RecomendaciÃ³n', 'perdida', '2021-06-19 18:07:51', 1),
(274, NULL, 'NANCY PATRICIA MORALES', 'Perez', 'Morales', NULL, NULL, 'M', 3, 4, 1997, '9982235028', 'nancy.patricia@outlook.com', 'sc', 'ISPAS2021', 'Nancy patricia Morales', 'Cancun', 'Redes Sociales', 'perdida', '2021-06-19 18:08:44', 1),
(275, NULL, 'DANIELA', 'Herrera', 'Osorio', NULL, NULL, 'M', 16, 5, 1997, '9982387691', 'dannyosorio16@gmail.com', 'sc', '1659716597', 'Daniela Herrera Osorio', 'CancÃºn', 'RecomendaciÃ³n', 'perdida', '2021-06-19 18:10:13', 1),
(276, NULL, 'Belem sarai', 'Pat', 'Lopez', NULL, NULL, 'M', 4, 5, 1996, '9984933426', 'belempat1996@gmail.com', '', 'ISPAS2021', 'Facebook', 'Reg 235', 'RecomendaciÃ³n', NULL, '2021-06-19 18:10:46', 1),
(277, NULL, 'MAYKA JACQUELINE CASTILLO RODRIGUEZ', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mjc9608@hotmail.com', '', 'ISPAS2021', NULL, NULL, NULL, NULL, '2021-06-19 18:11:20', 1),
(278, NULL, 'IGNACIO MUCIO ', 'SALINAS', 'SAAVEDRA', NULL, NULL, 'H', 28, 10, 1986, '8334627145', 'm_salinas28@hotmail.com', 'sc', 'Santi3005', 'Salinas Ignacio', 'Tampico, Tamaulipas', 'RecomendaciÃ³n', 'perdida', '2021-06-19 18:12:12', 1),
(279, NULL, 'VERONICA ALBARRAN', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'hana.marion.02@gmail.com', 'sc', 'ISPAS2021', NULL, NULL, NULL, NULL, '2021-06-19 18:12:59', 1),
(280, NULL, 'BYRON MORONI', 'Celio', 'Romero ', NULL, NULL, 'H', 3, 8, 1991, '9983186029', 'celioromerob@gmail.com', 'sc', 'MANDO', 'Facebook ', 'CancÃºn ', 'RecomendaciÃ³n', 'aumento', '2021-06-19 18:13:41', 1),
(281, 'avatar/IMG_20200630_193407_851.jpg', 'ANA YAZMIN', 'LOPEZ', 'MORENO', NULL, 1350, 'M', 16, 4, 1989, '9981298513', 'laflaka5752@gmail.com', '', 'QnGU1J9u3i', 'Online', 'RegiÃ³n 98', 'RecomendaciÃ³n', 'perdida', '2021-06-19 18:14:16', 1),
(282, NULL, 'PRISCILA ', 'Espinoza ', 'Soto ', NULL, NULL, 'M', 25, 8, 1994, '6863226755', 'priscilaes825@gmail.com', 'sc', 'maxnithaxonxa', 'Instagram ', 'Mexicali ', 'Redes Sociales', 'perdida', '2021-06-19 18:14:59', 1),
(283, 'avatar/Snapchat-285522526.jpg', 'Andrea Isabel', 'Sarabia ', 'Hau', NULL, 1750, 'M', 2, 6, 1997, '9982404384', 'andreasarabiahau@gmail.com', 'sc', 'HolaMundo.2', 'Andrea Sarabia', 'CancÃºn', 'RecomendaciÃ³n', 'perdida', '2021-06-19 18:15:33', 1),
(284, NULL, 'IMELDA', 'EUFRASIO', 'MIRANDA', NULL, NULL, 'M', 8, 8, 1996, '9981437287', 'imelda_miranda@hotmail.com', 'sc', 'IMELDA08', 'Imeeh Eufrasio', 'Cancun', 'RecomendaciÃ³n', 'perdida', '2021-06-19 18:16:16', 1),
(285, NULL, 'PEDRO DE JESUS ', 'DIAZ', 'MORA', NULL, NULL, 'H', 19, 7, 1984, '9983670874', 'popuxie31@gmail.com', '', 'Bruno3107', 'jesus mora', 'CancÃºn', 'Redes Sociales', 'perdida', '2021-06-19 18:16:48', 1),
(286, NULL, 'ADRIANA BEATRIZ', 'MEDINA ', 'ARGAEZ ', NULL, NULL, 'M', 10, 2, 1985, '9982057865', 'azul_j31@hotmail.com', 'sc', 'Kucho1002', 'Facebook', 'CANCUN', 'Redes Sociales', 'perdida', '2021-06-19 18:17:21', 1),
(287, NULL, 'JESUS ALONZO ', 'FERNANDEZ ', ' MEDINA', NULL, NULL, 'H', 31, 3, 2002, '9983858388', 'alonzopotter17@gmail.com', 'sc', 'ISPAS2021', '@alo_uwu.stay', 'CancÃºn', 'RecomendaciÃ³n', 'perdida', '2021-06-19 18:17:59', 1),
(288, NULL, 'CRISTHY ALEIRAM ', 'FERNANDEZ', 'MEDINA', NULL, NULL, 'M', 9, 10, 2004, '9983774214', 'soyaleirammedinaofc@gmail.com', 'sc', 'Ale91004', 'Aleiram Medina ', 'Cancun', 'RecomendaciÃ³n', 'perdida', '2021-06-19 18:18:55', 1),
(289, NULL, 'HEFZIBA GERIZIM ', 'LOPEZ', 'OLMOS', NULL, NULL, 'M', 2, 6, 1999, '4772493608', 'hefzibaolmos@gmail.com', 'sc', 'olmos.15', 'Instagram', 'LeÃ³n Guanajuato', 'Redes Sociales', 'perdida', '2021-06-19 18:19:54', 1),
(290, NULL, 'BRENDA MICHELLE', 'ROJAS', 'LOPEZ', NULL, NULL, 'M', 21, 8, 1997, '9981238421', 'bmrl_97@hotmail.com', 'SC', '123abc987b', 'BRENDA ROJAS', 'TULUM', 'Redes Sociales', 'perdida', '2021-06-21 10:38:52', 2),
(291, 'avatar/Paho.jpeg', 'PAHOLA', ' ARTIGAS ', 'MEDINA', NULL, 1, 'M', 28, 4, 1979, '5522718382', 'pahola024@gmail.com', 'sc', 'sofiemi1', 'Pahola Artigas', 'CancÃºn', 'RecomendaciÃ³n', 'perdida', '2021-06-21 10:40:16', 1),
(292, NULL, 'KARLA ', 'SALAYA', 'SANCHEZ ', NULL, NULL, 'M', 30, 1, 1997, '', 'karla_sasa97@hotmail.com', '', 'ISPAS2021', 'Facebook: KARLA SALAYA | Instagram: @_karlasalaya_', 'CancÃºn, Q. Roo', 'Redes Sociales', 'perdida', '2021-06-21 10:40:42', 1),
(293, 'avatar/IMG_20210421_163421.jpg', 'Paola Sanchez', '', '', NULL, 1564, 'M', 12, 7, 1997, '', 'pauzz_332@outlook.es', '', 'ISPAS2021', 'Paola sanchez', 'Cancun', 'RecomendaciÃ³n', 'perdida', '2021-06-21 10:44:56', 2),
(294, NULL, 'Claudia Jaqueline ', 'Matos', 'HernÃ¡ndez ', NULL, NULL, 'M', 28, 12, 1997, '9981183084', 'jaqueline.16claudia@gmail.com', '', 'ositosCJM97', 'Claudia Matos', 'CancÃºn Quintana Roo', 'RecomendaciÃ³n', 'perdida', '2021-06-21 11:45:25', 1),
(295, 'avatar/IMG_20180713_165346.jpg', 'Brianda Yaktziri', 'Parroquin', 'Sanchez', NULL, 1750, 'M', 4, 6, 1992, '9982196302', 'brianda.parroquin@hotmail.com', '', 'Bri2021', 'https://www.facebook.com/briiandiis.prrq', 'CancÃºn ', 'RecomendaciÃ³n', 'perdida', '2021-06-21 12:14:02', 1),
(296, NULL, 'Mayka Jacqueline ', 'Castillo ', 'RodrÃ­guez', NULL, NULL, 'M', 7, 9, 1996, '9982429032', 'mjcr9608@hotmail.com', '', 'Jacqui96', 'https://www.facebook.com/jacquicast.r/', 'CancÃºn, Quintana Roo', 'Redes Sociales', 'perdida', '2021-06-22 10:04:46', 1),
(297, NULL, 'Mary', ' Salazar', '', NULL, NULL, 'M', 24, 10, 1970, '5546797145', 'marysalazar2410@gmail.com', '', 'ISPAS2021', 'Mary Salazar', 'Edo MÃ©x', 'RecomendaciÃ³n', 'perdida', '2021-06-22 13:16:30', 1),
(298, NULL, 'Ariana Danilu', 'Pamplona ', 'RodrÃ­guez', NULL, NULL, 'M', 18, 6, 1992, '9983915977', 'nanuxca.92@gmail.com', '', 'ISPAS2021', 'FACEBOOK', 'Cancun', 'Redes Sociales', 'perdida', '2021-06-23 11:54:31', 1),
(299, NULL, 'Alejandro', 'Prats', 'MartÃ­nez', NULL, NULL, 'H', 19, 8, 1996, '9841885550', 'belmymservicios@gmail.com', '', 'belem33', 'Alejandro prats ', 'BahÃ­a dorada ', 'RecomendaciÃ³n', 'perdida', '2021-06-24 10:42:05', 1),
(300, NULL, 'Lorena', 'RodrÃ­guez ', 'Roman', NULL, NULL, 'M', 12, 10, 1992, '9982938253', 'tiharasandra@gmail.com', '', 'ISPAS2021', 'Benditaseanyanny', 'Cancun', 'RecomendaciÃ³n', NULL, '2021-06-28 21:36:55', 1),
(301, NULL, 'Ana N&#250;&#241;ez Rubio', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'finamerida@gmail.com', '', 'ISPAS2021', NULL, NULL, NULL, NULL, '2021-07-05 12:12:02', 1),
(302, NULL, 'Carlos  ', 'Quijano ', 'Chable', NULL, NULL, 'H', 24, 3, 1984, '9981417221', 'pro.ing@hotmail.com', '', 'ISPAS2021', 'Facebook', 'Cancun', 'RecomendaciÃ³n', NULL, '2021-07-12 19:20:06', 2),
(303, NULL, 'Jorge Israel', 'Camas', 'Pech', NULL, NULL, 'H', 19, 11, 1984, '9981379400', 'israelcms_77@hotmail.com', '', 'ISPAS2021', 'Facebook ', 'Cancun ', 'RecomendaciÃ³n', NULL, '2021-07-12 19:20:38', 2),
(306, 'avatar/IMG-20191209-WA0026.jpg', 'AYLIN ', 'AMADOR ', 'JIMÃ‰NEZ', NULL, 1800, 'M', 7, 5, 1998, '9981701472', 'aylinamador.sc@gmail.com', '', 'Aylin067.', 'AylÃ­n Amador', 'CancÃºn, Quintana Roo', 'Redes Sociales', 'perdida', '2021-08-07 23:51:40', 1),
(307, 'avatar/096BE1FB-5DBD-4AA2-A6A2-726D817A64A4.jpeg', 'VIRIDIANA', 'DELGADILLO', 'MIRELES', NULL, 1755, 'M', 14, 6, 1986, '8126984940', 'mirelesviridiana14@gmail.com', '', 'ISPAS2021', 'Viridiana Delgadillo', 'Monterrey', 'RecomendaciÃ³n', 'perdida', '2021-08-07 23:53:34', 1),
(308, 'avatar/20210802_221136.jpg', 'IRVIN', 'CANCHOLA', 'DELGADILLO', NULL, 1850, 'H', 25, 1, 2004, '8115535452', 'irvincanchola406@gmail.com', '', 'ISPAS2021', 'Irvin Delgadillo ', 'Garcia, Nuevo LeÃ³n ', 'RecomendaciÃ³n', 'perdida', '2021-08-07 23:53:55', 1),
(309, 'avatar/20190103_223459.jpg', 'ANTONIO DE JESÃšS ', 'SALAZAR ', 'SOTO', NULL, 2518, 'H', 6, 5, 1985, '8110354802', 'jessus_salazar@outlook.com', '', 'ISPAS2021', 'jessus.salazar', 'Monterrey', 'Redes Sociales', 'perdida', '2021-08-07 23:54:34', 1),
(310, 'avatar/832E2382-A725-402E-B117-05CD44D60CD7.jpeg', 'ANDREA ALICIA', 'HERNÃNDEZ ', 'CHAN', NULL, NULL, 'M', 17, 10, 1998, '9993890585', 'hernandezchanandrea669@gmail.com', '', 'ISPAS2021', '', 'CancÃºn', 'RecomendaciÃ³n', NULL, '2021-08-07 23:55:12', 1),
(311, 'avatar/IMG_20210227_165053.jpg', 'KARLA GUADALUPE', 'TORRES', 'PEBA', NULL, 1194, 'M', 14, 11, 1986, '9981021573', 'karlistorres@gmail.com', '', 'ISPAS2021', 'Facebook', 'Cancun', 'RecomendaciÃ³n', 'perdida', '2021-08-07 23:55:48', 1),
(312, 'avatar/531CA1BA-91CC-468B-B2ED-6CEC9E7ACDD2.jpeg', 'ZULIA ISABEL', 'DEL ROSARIO ', 'FALCON', NULL, NULL, 'M', 20, 6, 1978, '9988450865', 'zgulia@hotmail.com', '', 'falcon40', 'Facebook', 'Cancun mexico', 'RecomendaciÃ³n', NULL, '2021-08-07 23:56:16', 1),
(313, 'avatar/IMG_20210804_121022.jpg', 'KAREN ROSELMY', 'CANCHÃ‰ ', 'MILLAN', NULL, 2044, 'M', 21, 8, 1990, '9983868484', 'karenroselmycm@gmail.com', '', 'ISPAS2021', 'Karen Roselmy', 'Cancun', 'Redes Sociales', 'perdida', '2021-08-07 23:56:48', 1),
(314, 'avatar/F7AB8AE5-0D25-4694-89CE-4500B0A1DF48.jpeg', 'MIGUEL', 'LINARES ', 'PAVON', NULL, 2444, 'H', 8, 1, 1993, '9982325551', 'mike_civ@hotmail.com', '', 'ISPAS2021', 'Miguel linares pavon', 'Cancun', 'Redes Sociales', 'perdida', '2021-08-07 23:57:56', 1),
(315, 'avatar/16285447612348568593542796284016.jpg', 'ANDRES ', 'ALCOCER', 'MONTOYA', NULL, 2734, 'H', 26, 1, 1987, '9843123565', 'andresalcocermontoya@gmail.com', '', 'ISPAS2021', 'Facebook', 'CANCUN', 'RecomendaciÃ³n', 'perdida', '2021-08-07 23:58:36', 1),
(316, 'avatar/FB_IMG_1629077681855.jpg', 'IVONNE ROCÃO', 'LIMÃ“N', 'LUQUE', NULL, 1748, 'M', 6, 5, 1965, '9993336586', 'ivonnefurlong@hotmail.com', '', 'ISPAS2021', 'Facebook ', 'Cancun', 'RecomendaciÃ³n', 'perdida', '2021-08-07 23:59:07', 1),
(317, 'avatar/IMG_4044.JPG', 'SHARAHI', 'ARMENTA', 'GIJON', NULL, 1896, 'M', 5, 7, 1983, '2299 191762', 'armenta.sh@gmail.com', '', 'ISPAS2021', 'SHARA ARMENTA', 'VERACRUZ', 'RecomendaciÃ³n', 'perdida', '2021-08-07 23:59:37', 1),
(318, 'avatar/20210226_204628.jpg', 'MILAGROS', 'GIJON', 'RIOS', NULL, 1550, 'M', 5, 4, 1980, '9982627939', 'sorgalim80@hotmail.com', '', '10Cleopatra', 'Facebook ', 'Cancun', 'RecomendaciÃ³n', 'perdida', '2021-08-07 23:59:56', 1),
(319, 'avatar/170412651_10164858382250567_3778686546849143135_n.jpg', 'ITZEL', 'CRUZ', 'MARINA', NULL, 1348, 'M', 23, 3, 1984, '8714006293', 'itcruz.m@gmail.com', '', 'itzy2303', 'facebook', 'TorreÃ³n, Coahuila', 'RecomendaciÃ³n', 'perdida', '2021-08-08 00:00:13', 1),
(320, 'avatar/B40D111C-A68B-4BD5-9B9F-A342F8325700.jpeg', 'EMMANUEL', 'DÃAZ', 'HERNÃNDEZ', NULL, 1700, 'H', 8, 9, 1991, '9981816836', 'emdihz@hotmail.com', '', 'ISPAS2021', 'Emmanuel DÃ­az hdez', 'CancÃºn Quintana Roo', 'Redes Sociales', 'perdida', '2021-08-08 00:00:40', 1),
(321, 'avatar/D4C61539-57F8-4E3E-9626-701D38DC2220.jpeg', 'FABIOLA', 'CARRILLO', 'MARTÃNEZ', NULL, 1612, 'M', 19, 3, 1980, '5516476437', 'carrillo.m.fabiola@gmail.com', '', 'BKjpdySt3s', 'https://www.facebook.com/fabiola.carrillo.100', 'Mexico', 'RecomendaciÃ³n', 'perdida', '2021-08-08 00:01:07', 1),
(322, 'avatar/16285408187228647344772240679502.jpg', 'NANCY', 'NOLASCO', 'VILLEGAS', NULL, 1533, 'M', 29, 8, 1976, '5581049576', 'navi_nv@yahoo.com.mx', '', 'navi2908', 'Facebook', 'Queretaro', 'RecomendaciÃ³n', 'perdida', '2021-08-08 00:01:45', 1),
(323, 'avatar/WhatsApp Image 2021-08-08 at 8.48.37 PM.jpeg', 'ISABEL', 'PAREDES', 'QUINTAL', NULL, 1450, 'M', 22, 9, 1993, '9982282283', 'isabel_paredes09@hotmail.com', '', 'EITHANUP130818', 'Instagram: paredes.issabel', 'CancÃºn', 'RecomendaciÃ³n', 'perdida', '2021-08-08 00:02:46', 1),
(324, 'avatar/WhatsApp Image 2021-08-10 at 8.18.31 AM.jpeg', 'BERENICE', 'OCAMPO', 'CASTAÃ‘EDA', NULL, 1748, 'M', 3, 10, 1979, '9981299848', 'bere_2503@hotmail.com', '', 'Bere2503', 'bereoca', 'CancÃºn Q. Roo', 'RecomendaciÃ³n', 'perdida', '2021-08-08 00:03:09', 1),
(325, NULL, 'ASHLYE HANEY', 'SABIDO ', 'PECH', NULL, NULL, NULL, NULL, NULL, NULL, '', 'ashlyesabido10@gmail.com', '', 'ISPAS2021', NULL, NULL, NULL, NULL, '2021-08-08 00:03:32', 1),
(326, 'avatar/IMG_20210731_134748.jpg', 'Eider SaÃºl', 'RodrÃ­guez', 'Tamay', NULL, 2591, 'H', 12, 10, 1992, '9981359710', 'eiderss_rbk@hotmail.com', '', 'ROTE921012', 'Eider RodrÃ­guez ', 'CancÃºn', 'Redes Sociales', 'aumento', '2021-08-08 00:04:02', 1);
INSERT INTO `usuario` (`id_usr`, `fotoPrincipal`, `nomUsr`, `apPaternoUsr`, `apMaternoUsr`, `edadUsr`, `caloriasUsr`, `sexoUsr`, `fechaD`, `fechaM`, `fechaA`, `telUsr`, `correoUsr`, `empresaUsr`, `passwordUsr`, `redSocialUsr`, `residenciaUsr`, `captacionUsr`, `objetivoUsr`, `fechaRegistro`, `estatusUsr`) VALUES
(327, 'avatar/16286079146913047568667610517052.jpg', 'Alberto', 'AYALA ', 'Ayala', NULL, 1900, 'H', 21, 4, 1995, '7772166803', 'aca.sys21@gmail.com', '', 'ISPAS2021', 'Facebook', 'Cuernavaca', 'RecomendaciÃ³n', 'perdida', '2021-08-08 00:04:27', 1),
(328, 'avatar/IMG_20210328_150205.jpg', 'ELISA ', 'GARCÃA ', 'NÃJERA', NULL, 952, 'M', 10, 9, 1995, '7771331854', 'susyg95@hotmail.com', '', '009elisa', 'Fb', 'Cuernavaca', 'RecomendaciÃ³n', 'perdida', '2021-08-08 00:04:52', 1),
(329, 'avatar/received_251032403217724_2.jpeg', 'PERLA', 'OCHOA', 'OCHOA', NULL, 1350, 'M', 7, 9, 1988, '9983861590', 'peocbe7@hotmail.com', '', 'ISPAS2021', 'Piin Ochoa', 'CANCUN', 'RecomendaciÃ³n', 'perdida', '2021-08-08 00:06:35', 1),
(330, 'avatar/WhatsApp Image 2021-08-09 at 06.25.59.jpeg', 'CYNTHIA JUDITH', 'LÃ“PEZ ', 'MILLAN', NULL, 1876, 'M', 6, 5, 1984, '9982922045', 'judy_06@hotmail.com', '', 'louper56', 'Judy louper', 'cancun', 'RecomendaciÃ³n', 'perdida', '2021-08-08 00:07:09', 1),
(331, 'avatar/20201224_215613.jpg', 'VIRIDIANA CLARISA', 'LÃ“PEZ', 'MILLAN ', NULL, 1964, 'M', 15, 11, 1985, '9981801752', 'dianaclari@hotmail.com', '', 'ISPAS2021', 'Clarisol Lopez ', 'REG 91 MZA 30 LT 6', 'RecomendaciÃ³n', 'perdida', '2021-08-08 00:07:38', 1),
(332, 'avatar/perfil.jpg', 'JOSÃ‰ CONCEPCIÃ“N', 'LÃ“PEZ', 'MILLAN', NULL, 2325, 'H', 8, 12, 1988, '9981524499', 'jocolomi1@gmail.com', '', 'zakumi2010', 'JosÃ© LÃ³pez', 'CancÃºn', 'Anuncios', 'perdida', '2021-08-08 00:08:04', 1),
(333, 'avatar/196315196_5525885007484925_9131276626872711159_n.jpg', 'NEHIVY MICHELLE', 'LÃ“PEZ', 'MORENO', NULL, 1800, 'M', 22, 9, 2000, '9983420897', 'nehivy.lopez.moreno@gmail.com', '', 'ISPAS2021', 'online', 'Corales', 'RecomendaciÃ³n', 'aumento', '2021-08-08 00:08:35', 1),
(334, 'avatar/5B64C407-78B3-41FB-ABCE-4F863C568AC2.jpeg', 'KEVIN ', 'CRUZ', 'MARINA', NULL, 1600, 'H', 5, 8, 1985, '9981476684', 'kev_ien@me.com', '', 'ISPAS2021', 'Kev CM', 'CancÃºn ', 'RecomendaciÃ³n', 'perdida', '2021-08-08 09:12:13', 1),
(335, 'avatar/82C9F62F-E575-4A8E-8162-1997C18C0E66.jpeg', 'ISABEL', 'GUERRERO', 'TELLEZ', NULL, 1410, 'M', 27, 6, 1963, '9983300315', 'isagtellez@hotmail.com', '', 'ISPAS2021', 'Facebook ', 'CancÃºn ', 'RecomendaciÃ³n', 'perdida', '2021-08-08 09:12:48', 1),
(336, 'avatar/WhatsApp Image 2021-08-09 at 08.32.19.jpeg', 'LISSETH', 'CASTRO', 'JORGE', NULL, 1500, 'M', 4, 10, 1973, '9981230375', 'castrojorgelisseth@gmail.com', '', 'Castro73', 'Lisseth Castro Jorge ', 'CancÃºn', 'RecomendaciÃ³n', 'perdida', '2021-08-08 09:24:48', 1),
(337, 'avatar/20210717_195332.jpg', 'VALERIA MAUREN', 'CRUZ', 'MARINA', NULL, 1450, 'M', 23, 9, 1988, '6142211142', 'mauren_13@hotmail.com', '', 'ISPAS2021', 'Facebook', 'Media', 'RecomendaciÃ³n', 'perdida', '2021-08-08 14:16:20', 1),
(338, 'avatar/20210802_203041_737.jpg', 'LAURA ', 'ALCOCER', 'GARCÃA', NULL, 1337, 'M', 18, 7, 2008, '9981584660', 'alcocer.garcialaura08@gmail.com', '', 'ISPAS2021', 'Facebook', 'CancÃºn', 'RecomendaciÃ³n', 'perdida', '2021-08-08 14:17:28', 1),
(339, NULL, 'CINDY AZUCENA', 'MARROQUIN', 'CIFUENTES', NULL, NULL, 'M', 17, 6, 1988, '9982223975', 'cmarroquincifuentes@gmail.com', '', 'Marro8806', 'Cindy marroquin ', 'Benito juarez', 'RecomendaciÃ³n', NULL, '2021-08-08 16:53:21', 1),
(340, NULL, 'ANA', 'MONDRAGON', '', NULL, NULL, NULL, NULL, NULL, NULL, '', 'anamondragon23@gmail.com', '', 'ISPAS2021', NULL, NULL, NULL, NULL, '2021-08-08 16:58:48', 1),
(341, 'avatar/IMG_20210715_190612.jpg', 'KAREN ', 'RODRÃGUEZ', 'TU BAZAR', NULL, NULL, 'M', 5, 12, 1991, '9981519020', 'karenpato5@gmail.com', '', 'ISPAS2021', 'Instagram', 'Cancun', 'Redes Sociales', NULL, '2021-08-08 17:39:52', 1),
(342, 'avatar/2DE54014-037D-4724-A1BB-2CE0BB9AE177.jpeg', 'JAVIER ', 'CONTRERAS', 'AGUILERA ', NULL, 1800, 'H', 5, 9, 1988, '5513927483', 'yardiel5ca@hotmail.com', '', 'ISPAS2021', 'Dr_yadis', 'Eua ', 'RecomendaciÃ³n', 'perdida', '2021-08-16 11:09:45', 1),
(343, 'avatar/IMG_20210802_120729.jpg', 'ORIANA', 'PÃ‰REZ', 'GONZÃLEZ', NULL, NULL, 'M', 30, 1, 1989, '9983378143', 'orianapg11@gmail.com', '', 'ISPAS2021', 'Oriana pereza gonzalez ', 'cancun', 'RecomendaciÃ³n', NULL, '2021-08-16 11:14:45', 1),
(344, 'avatar/20210919_202303.jpg', 'Denisse Guadalupe Cauich Aldana', 'Cauich', 'Aldana', NULL, 1665, 'M', 7, 11, 1988, '982423835', 'deni_0788@hotmail.com', '', 'ISPAS2021', 'Denygca', 'Cancun ', 'RecomendaciÃ³n', 'perdida', '2021-09-19 23:04:15', 1),
(345, 'avatar/20210914_071953.jpg', 'Judith ', 'LÃ³pez ', 'Argueta ', NULL, 1300, 'M', 25, 12, 1989, '5550764266', 'jl_argueta@hotmail.es', '', 'ISPAS2021', 'https://www.facebook.com/judith.lopezargueta ', 'CancÃºn ', 'RecomendaciÃ³n', 'perdida', '2021-09-19 23:06:09', 1),
(346, 'avatar/yo.PNG', 'Alfredo', 'BÃ¡rcenas', 'Vega', NULL, 1550, 'H', 11, 11, 1989, '5521800310', 'winy25@gmail.com', '', 'ISPAS2021', 'www.facebook.com/FreduarddB/', 'Cancun', 'RecomendaciÃ³n', 'perdida', '2021-09-19 23:07:21', 1),
(347, 'avatar/FB_IMG_1632192325572.jpg', 'Esbeidy PÃ¡ez GutiÃ©rrez', '', '', NULL, 957, 'M', 7, 2, 1998, '9984180786', 'esbeidypaez123456@gmail.com', '', 'ISPAS2021', 'Esbeidy paeez', 'MÃ©xicana', 'Redes Sociales', 'perdida', '2021-09-19 23:09:07', 1),
(348, 'avatar/4F538ADF-CBF3-45A1-824C-F9EEC5EB5F37.jpeg', 'Christopher ', 'Serna', 'Mendicoa', NULL, NULL, 'H', 1, 1, 2021, '9984181581', 'mendicoa86@gmail.com', '', 'ISPAS2021', 'Christopher', 'CancÃºn ', 'RecomendaciÃ³n', NULL, '2021-09-19 23:10:15', 1),
(349, 'avatar/4EE8B916-E02D-4EAA-9DEB-FA90535B62EB.jpeg', 'Elda Cristina', 'Peraza', 'Carvajal', NULL, 1650, 'M', 19, 6, 1995, '9981094269', 'cristinaperazace@hotmail.com', '', 'tng2prr2106', 'Cristina', 'CancÃºn', 'RecomendaciÃ³n', 'perdida', '2021-09-19 23:10:55', 1),
(350, 'avatar/1.jpg', 'CÃ©sar Eduardo ', 'Correa', 'SÃ¡nchez', NULL, 2364, 'H', 26, 5, 1997, '5580220237', 'ce26ed1997@gmail.com', '', 'ISPAS2021', 'CÃ©sar Correa', 'CancÃºn', 'RecomendaciÃ³n', 'perdida', '2021-09-19 23:11:29', 1),
(351, NULL, 'Eduardo De La Torre Martinez', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '5627547297', 'yayodltm@gmail.com', '', 'ISPAS2021', NULL, NULL, NULL, NULL, '2021-09-19 23:12:48', 1),
(352, 'avatar/5F229C79-BED4-4E5F-8B89-875DC6C3AB4F.jpeg', 'Lucero Esmeralda', 'Aguayo', 'Marfil', NULL, 1600, 'M', 30, 5, 1986, '9982595662', 'lu.aguamar@icloud.com', '', 'ceron140512', 'https://www.facebook.com/lu.aguayomarfil', 'Cancun Quintana Roo', 'Redes Sociales', 'perdida', '2021-09-19 23:13:43', 1),
(353, 'avatar/F420D8F0-7D82-480E-A24F-B0A2BA5745A5.jpeg', 'MARTHA PAOLA  ', 'VERA', 'ANDRADE', NULL, NULL, 'M', 4, 3, 1985, '9985785714', 'mp_vera85@hotmail.com', '', 'Mp03041985', 'Martha Paola Vera Andrade', 'CancÃºn ', 'RecomendaciÃ³n', NULL, '2021-09-19 23:16:17', 1),
(354, 'avatar/IMG-20200504-WA0013~2.jpg', 'Luz Yadira', 'Morgan ', 'Martinez', NULL, 1450, 'M', 26, 5, 1986, '9983948834', 'morganyadira@gmail.com', '', 'morgan2003', 'Facebook ', 'Pases las Palmas', 'RecomendaciÃ³n', 'perdida', '2021-09-19 23:17:14', 1),
(355, 'avatar/441BCD07-1F1C-4799-AD9F-6310624A639C.jpeg', 'Yadira  ', 'Fernandez', '', NULL, 1176, 'M', 27, 8, 1980, '4084013146', 'yadirafernandez83@gmail.com', '', 'ISPAS2021', 'Fb ', 'San JosÃ© California ', 'RecomendaciÃ³n', 'perdida', '2021-09-19 23:18:45', 1),
(356, 'avatar/20210920_105359.jpg', 'RODRIGO', 'GARCÃA', 'ECHAZARRETA', NULL, 2811, 'H', 13, 3, 1990, '9984029636', 'rodrigoechazarreta@hotmail.com', '', 'JOSUE17', 'RODRIGO G. MALAK', 'CANCUN', 'RecomendaciÃ³n', 'perdida', '2021-09-20 11:15:32', 1),
(357, NULL, 'MARIZA', 'BARRAZA ', 'MARTINEZ', NULL, NULL, NULL, NULL, NULL, NULL, '', 'mariza_barr@hotmail.com', '', 'ISPAS2021', NULL, NULL, NULL, NULL, '2021-09-20 13:47:58', 1),
(358, 'avatar/aaron.jpeg', 'LA IGLESIA DE JESUCRISTO DE LOS SANTOS DE LOS', 'DIAS', 'DIAS', NULL, 1700, 'H', 25, 12, 2006, '9982591793', 'brendis_180885@hotmail.com ', '', 'romi8495', 'https://www.facebook.com/brendis.cancino/', 'CANCUN', 'RecomendaciÃ³n', 'perdida', '2021-09-20 13:48:56', 1),
(359, 'avatar/133365553_10219017541929886_1743576466225143583_n.jpg', 'MARÃA JOSÃ‰', 'ROMERO', 'MONTERO', NULL, 1379, 'M', 19, 12, 1999, '9982011457', 'marijo099@hotmail.com', '', 'ISPAS2021', 'emyeirmr', 'CancÃºn ', 'RecomendaciÃ³n', 'perdida', '2021-09-21 00:35:44', 1),
(360, 'avatar/16322494332883773298892978844623.jpg', 'Fabiola', 'Mota', 'Valtierra', NULL, 2029, 'M', 20, 2, 1978, '4121070882', 'faby_mota@live.com', '', 'brujyta28', 'Facebook  faby mota', '412 119 73 46', 'RecomendaciÃ³n', 'perdida', '2021-09-21 14:19:48', 1),
(361, 'avatar/4C73091E-BAEC-4F27-A17D-A9225D3C37A7.jpeg', 'KARINA GPE', 'MANZANERO ', 'GIl', NULL, 2013, 'M', 5, 8, 1995, '9991323178', 'karygil95@gmail.com', '', 'ISPAS2021', 'Kary Manzanero ', 'Cancun ', 'Redes Sociales', 'perdida', '2021-09-23 20:03:06', 1),
(362, 'avatar/F2BAEE13-220A-4316-977E-9FD812AC23D9.jpeg', 'NAYELLY ABIGAIL', 'POLANCO', 'ECHEVERRÃA', NULL, 1400, 'M', 13, 8, 1992, '9983499140', 'licnallelypolanco@hotmail.com', '', 'polanco92', 'Facebook', 'CancÃºn ', 'RecomendaciÃ³n', 'perdida', '2021-09-26 19:54:11', 1),
(363, 'avatar/WhatsApp Image 2021-09-26 at 10.03.14 PM.jpeg', 'EDUARDO DANIEL', 'RUIZ', 'EROSA', NULL, 1600, 'H', 1, 3, 1991, '9983527647', 'eduardoruizerosa36@gmail.com', '', 'ISPAS2021', 'https://www.facebook.com/ruizerosa', 'CANCÃšN QUINTANA ROO', 'RecomendaciÃ³n', 'perdida', '2021-09-26 19:55:06', 1),
(364, NULL, 'DANIELA', 'CASTILLO', 'EUAN', NULL, NULL, NULL, NULL, NULL, NULL, '', 'ce_daniela@hotmail.com', '', 'ISPAS2021', NULL, NULL, NULL, NULL, '2021-09-26 19:58:48', 1),
(365, NULL, 'RICARDO OSWALDO', 'OLIVARES', 'MENA', NULL, NULL, NULL, NULL, NULL, NULL, '', 'olivares_mena@hotmail.com', '', 'ISPAS2021', NULL, NULL, NULL, NULL, '2021-09-26 19:59:40', 1),
(366, 'avatar/inbound6765586084125727993.jpg', 'JAFET', 'OLIVERA', 'Poot', NULL, 1348, 'H', 28, 9, 2001, '9981505134', 'jafet_olivera28@outlook.com', '', 'ISPAS2021', 'DÃ¡valos Jafet', 'Villas otoch ', 'RecomendaciÃ³n', 'perdida', '2021-09-29 15:30:54', 1),
(367, 'avatar/WhatsApp Image 2021-10-10 at 8.45.02 PM.jpeg', 'LILIA JOANNA', 'PERAZA', 'CARVAJAL', NULL, 1900, 'M', 12, 9, 1997, '9982051303', 'annaperazacarvajal@hotmail.com', '', 'ISPAS2021', '@annaperaza', 'CancÃºn', 'RecomendaciÃ³n', 'perdida', '2021-10-10 16:26:33', 1),
(368, 'avatar/WhatsApp Image 2021-09-10 at 12.40.03.jpeg', 'Abraham', 'Polanco', 'Echeverria', NULL, 1900, 'H', 9, 10, 1997, '+529991975495', 'polanco971009@gmail.com', '', 'Polanco971009', 'Abraham Polanco (facebook)', 'Q. Roo', 'RecomendaciÃ³n', 'perdida', '2021-10-10 16:26:53', 1),
(369, 'avatar/670C8930-7B64-49B4-BBEE-05CB54CA08E1.jpeg', 'ALEJANDRA GONZALEZ ', 'GonzÃ¡lez ', 'Rivas', NULL, 1810, 'M', 16, 5, 1997, '9983862520', 'alejandraglez66@gmail.com', '', 'ISPAS2021', 'Alejandra De GonzÃ¡lez ', 'CancÃºn ', 'Redes Sociales', 'perdida', '2021-10-10 16:28:05', 1),
(370, 'avatar/685FC33E-ACEA-48A2-ABE4-71B264BA3E09.jpeg', 'AMY ESMERALDA', 'Rodriguez', 'Casas', NULL, 1887, 'M', 7, 6, 1991, '8126220855', 'amy_rdz91@hotmail.com', '', 'ISPAS2021', 'Facebook Amy RodrÃ­guez ', 'Monterrey, NL', 'Redes Sociales', 'perdida', '2021-10-10 16:28:22', 2),
(371, 'avatar/Fili_2.jpg', 'JOSE FILIBERTO ', 'RODRIGUEZ', 'JUAREZ ', NULL, 2426, 'H', 20, 2, 1990, '8132410843', 'jose.rodriguez_90@hotmail.com', '', 'ISPAS2021', 'https://www.facebook.com/profile.php?id=1000009706', 'Monterrey', 'Redes Sociales', 'perdida', '2021-10-10 16:30:46', 2),
(372, 'avatar/20210228_135216_1_nocrop.JPEG', 'Iru ', 'Palomo', '', NULL, 1554, 'M', 26, 3, 1990, '9981867527', 'irupalomo@hotmail.com', '', 'ISPAS2021', 'Iruu palomo', 'CancÃºn', 'Redes Sociales', 'perdida', '2021-10-10 16:31:18', 1),
(373, 'avatar/IMG-20211010-WA0005.jpg', 'Fernando Medina', 'Medina ', 'Uc', NULL, 1823, 'H', 10, 4, 1989, '9983510909', 'aguila89d@gmail.com', '', 'ISPAS2021', 'Ferchonee Ferchuu', 'Cancun ', 'Redes Sociales', 'perdida', '2021-10-10 16:32:34', 1),
(374, 'avatar/7D769030-B6C1-485C-A0EC-F0E9609939FA.jpeg', 'Rosa Aurora ', 'Alvarez ', 'MartÃ­nez ', NULL, 1850, 'M', 6, 8, 1983, '9981798449', 'raamluygi0225@gmail.com', '', 'ISPAS2021', 'Facebook ', 'CancÃºn ', 'RecomendaciÃ³n', 'perdida', '2021-10-10 16:33:19', 1),
(375, NULL, 'Willian GÃ³mez PÃ©rez ', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', 'williamgomez_perez@hotmail.com', '', 'ISPAS2021', NULL, NULL, NULL, NULL, '2021-10-10 16:33:45', 1),
(376, 'avatar/20210928_211947.jpg', 'Elena  concepciÃ³n  ', 'Diaz', 'Calam', NULL, 1600, 'M', 28, 12, 1990, '9984292751', 'elena011031@hotmail.com', '', '9991344055e', 'Elena  DÃ­az ', 'Cancun  ', 'Redes Sociales', 'perdida', '2021-10-10 16:34:16', 1),
(377, 'avatar/IMG-20211010-WA0010.jpg', 'Gerardo emmanuel ', 'Ramos', 'Alcocer', NULL, 1850, 'H', 31, 5, 1990, '9985200719', 'gerardo280531@gmail.com', '', 'gerar028', 'Gerardo Ramos', 'CancÃºn Quintana Roo', 'Redes Sociales', 'perdida', '2021-10-10 16:34:50', 1),
(378, 'avatar/IMG_20210507_180313.jpg', 'Michel Monserrat MartÃ­nez MartÃ­nez', 'Martinez ', 'Martinez', NULL, 1437, 'M', 20, 5, 1994, '9831126143', 'michelm_mtz@hotmail.com', '', 'ISPAS2021', 'Monserrat Martinez', 'Playa del Carmen', 'RecomendaciÃ³n', 'perdida', '2021-10-11 11:22:19', 1),
(379, 'avatar/IMG-20210129-WA0049.jpg', 'Citlaly Yolanda Conde Chim', 'Conde', 'Chim', NULL, 2158, 'M', 15, 2, 1994, '9842797458', 'conde_1411@hotmail.com', '', 'ISPAS2021', 'Citlaly Conde', 'Playa del Carmen', 'RecomendaciÃ³n', 'perdida', '2021-10-11 11:23:10', 1),
(380, 'avatar/F514BEB8-9756-4CAB-9871-21225DFADD2B.jpeg', 'Juan Carlos', 'HernÃ¡ndez ', 'HernÃ¡ndez ', NULL, 1859, 'H', 13, 9, 1987, '9985770960', 'ingcarloshh@gmail.com', '', 'barrio68', 'https://m.facebook.com/', 'CancÃºn ', 'RecomendaciÃ³n', 'perdida', '2021-10-11 11:25:23', 1),
(381, 'avatar/B3064822-A7EF-43BE-8FDF-17FC5AC8654B.jpeg', 'Samuel', 'ZuÃ±iga', 'GarcÃ­a ', NULL, NULL, 'H', 27, 5, 1991, '9982331065', 'samuezuniga@gmail.com', '', 'ISPAS2021', 'Samuel ZuÃ±iga ', 'CancÃºn ', 'RecomendaciÃ³n', NULL, '2021-10-11 11:26:13', 1),
(382, 'avatar/3A1ECF50-6A39-464E-9E88-82B237758460.jpeg', ' karina', 'Peraza', 'Carvajal', NULL, NULL, 'M', 12, 4, 1992, '9981955745', 'karinaperazacarvajal@hotmail.com', '', 'ISPAS2021', 'Karina peraza', 'CancÃºn ', 'RecomendaciÃ³n', NULL, '2021-10-11 11:27:33', 1),
(383, 'avatar/0E6E3AFF-BEEF-409C-9C93-A009CC079E5D.jpeg', 'Eisly Sofia GarcÃ­a PÃ©rez', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', 'garciaeisly3@gmail.com', '', 'ISPAS2021', NULL, NULL, NULL, NULL, '2021-10-11 11:40:40', 1),
(384, 'avatar/413279D5-DA7E-4EF0-BB5E-54EE16220562.jpeg', 'Lesly ', 'GarcÃ­a ', 'PÃ©rez ', NULL, NULL, 'M', 4, 1, 1997, '9981609549', 'abrilkltz@gmail.com', '', 'ISPAS2021', 'Lesly perez ', 'CancÃºn ', 'Redes Sociales', NULL, '2021-10-11 11:41:59', 1),
(385, NULL, 'David Chi', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', 'davidchidesigns@gmail.com', '', 'ISPAS2021', NULL, NULL, NULL, NULL, '2021-10-11 11:43:08', 1),
(386, 'avatar/Screenshot_20210829-235015_Instagram.jpg', 'Aurora ', 'Yepez', 'Zamudio ', NULL, NULL, 'M', 18, 4, 1997, '9983914955', 'Auroyepz@gmail.com', '', 'emilysheccid', 'Edau yepez ', 'CANCUN', 'RecomendaciÃ³n', NULL, '2021-10-11 12:52:30', 1),
(387, NULL, 'Yolanda FarrÃ©s SÃ¡lamo', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', 'yfarress@gmail.com', '', 'ISPAS2021', NULL, NULL, NULL, NULL, '2021-10-11 21:37:50', 1),
(388, 'avatar/IMG20210912165643.jpg', 'Maria lina', 'MuÃ±oz', 'Gasca', NULL, 1750, 'M', 30, 3, 1973, '9981477762', 'malina3003@hotmail.com', '', 'lina3003', 'Facebook', 'CancÃºn', 'RecomendaciÃ³n', 'perdida', '2021-10-11 21:38:26', 1),
(389, 'avatar/WhatsApp Image 2021-10-11 at 21.34.05.jpeg', 'Jhonnatan ', 'Perez', 'Ortiz', NULL, 1800, 'H', 6, 5, 1981, '9981481017', 'jtrubell23@gmail.com', '', 'ISPAS2021', 'jonnas trubell 23', 'Cancun', 'RecomendaciÃ³n', 'perdida', '2021-10-11 21:40:20', 1),
(390, 'avatar/16340815830336518793593361248279.jpg', 'Arlette Sussette', 'Chavez', 'Gambino', NULL, 1750, 'M', 25, 6, 1982, '9981370897', 'sussettecg@gmail.com', '', 'ISPAS2021', 'Sussi Gambino', 'Cancun', 'RecomendaciÃ³n', 'perdida', '2021-10-11 21:41:36', 1),
(391, 'avatar/D2F8E32F-8383-47C8-841C-F1D63C4CC858.jpeg', 'Julieta Selene', 'Flores', 'Zamudio', NULL, NULL, 'M', 4, 6, 1993, '9981176389', 'selenefz93@gmail.com', '', 'ISPAS2021', 'Juli Flores Zamudio', 'M', 'RecomendaciÃ³n', NULL, '2021-10-11 21:42:15', 1),
(392, 'avatar/WhatsApp Image 2021-10-13 at 19.02.35.jpeg', 'Patricia ', 'Casas', 'Pomares', NULL, 1841, 'M', 29, 10, 1970, '8116106206', 'patricia-pomares@hotmail.com', '', 'ISPAS2021', 'Facebook Patricia Casas', 'Monterrey NL', 'RecomendaciÃ³n', 'perdida', '2021-10-11 21:43:58', 1),
(393, NULL, 'Michel AnahÃ­ Gonzalez Rivas', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', 'michelana777@gmail.con', '', 'ISPAS2021', NULL, NULL, NULL, NULL, '2021-10-11 21:45:14', 1),
(394, 'avatar/WhatsApp Image 2021-10-18 at 6.51.06 PM.jpeg', 'REYNA', 'ECHEVERRÃA', 'ECHEVERRIA', NULL, 2703, 'M', 3, 1, 1970, '9997381028', 'echevwrriareyna469@gmail.com', '', 'ISPAS2021', 'REYNA ECHEVERRIA', 'MERIDA', 'RecomendaciÃ³n', 'perdida', '2021-10-17 15:58:35', 1),
(395, 'avatar/WhatsApp Image 2021-10-23 at 11.20.33 PM.jpeg', 'Norma AngÃ©lica', 'Contreras', 'Bejarano', NULL, 1665, 'M', 6, 3, 1969, '7227081545', 'feitacb@gmail.com', '', '2412612', 'facebook', 'san mateo atenco', 'RecomendaciÃ³n', 'perdida', '2021-10-22 12:23:05', 1),
(396, 'avatar/a (11).jpeg', 'ANTONIO ', 'TRUJILLO', 'MARTINEZ ', NULL, 1502, 'H', 9, 7, 2019, '9981719152', 'tonytrujillo1001@gmail.com', 'integracion saludable ', 'ISPAS2021', 'PEDRO', 'CANCUN ', 'Redes Sociales', 'perdida', '2021-10-27 22:59:45', 1),
(397, 'avatar/725845AE-E701-40F9-8F35-C69E09790FA7.jpeg', 'Carem Quintanilla', '', '', NULL, 1631, 'M', 15, 4, 1979, '7038535856', 'carem15@aol.com', '', 'ISPAS2021', 'Facebook ', 'Virginia USA', 'Redes Sociales', 'perdida', '2021-11-01 09:30:55', 1),
(398, 'avatar/C8F80F52-607B-4011-B43C-F98EDFA00A8E.jpeg', 'Katya Marlen', 'Su', 'Cruz', NULL, 1690, 'M', 9, 10, 1990, '8333003603', 'marlen_su_3@hotmail.com', '', 'Marlen30', 'Cr Marlen', 'Tampico', 'RecomendaciÃ³n', 'perdida', '2021-11-01 09:31:15', 1),
(399, 'avatar/90058087-C8C2-42E2-A6C4-3A205E454016.jpeg', 'Jaime armando Alamos leal', 'Alamos', 'Leal', NULL, 2272, 'H', 14, 8, 1986, '8331218884', 'jaal_26_14@hotmail.com', '', 'alamos14', 'Facebook ', 'Tampico', 'RecomendaciÃ³n', 'perdida', '2021-11-01 09:31:33', 1),
(400, 'avatar/FB_IMG_1628192449826.jpg', 'Sara marÃ­a ', 'Isidro', 'Uc', NULL, 2615, 'M', 9, 5, 1997, '9984491372', 'sarauc16@gmail.com', '', 'ISPAS2021', 'MarÃ­a Maria ', 'CANCÃšN Q.ROO ', 'RecomendaciÃ³n', 'perdida', '2021-11-01 09:31:53', 1),
(401, 'avatar/3D1BC7C3-43CF-43DF-875C-B2BC411917E5.jpeg', 'Marlene ', 'Moedano ', 'Aguilar', NULL, 1413, 'M', 27, 11, 1979, '5564138823', 'marlene.moedano@gmail.com', '', 'ISPAS2021', 'Marlene Moeag', 'CDMX ', 'RecomendaciÃ³n', 'perdida', '2021-11-01 09:32:10', 1),
(402, 'avatar/AF1F5A2A-158C-4499-99A9-655F8409E29B.jpeg', 'Ana Valeria', 'Alcocer', 'Fuentes', NULL, NULL, 'M', 30, 6, 1997, '9984761728', 'alcocerfuentesv@gmail.com', '', 'ISPAS2021', 'https://www.facebook.com/valeria.alcocer.376', 'CancÃºn ', 'RecomendaciÃ³n', NULL, '2021-11-01 17:52:10', 1),
(403, 'avatar/4F1B1715-E3E8-4C3F-BC62-88FA7A18AC38.jpeg', 'Maria Regina', 'BaÃ±os', 'Moedano', NULL, 1040, 'M', 11, 4, 2006, '15540558621', 'maria.regina.banos@gmail.com', '', 'ISPAS2021', 'Marlene moeag ', 'CDMX', 'RecomendaciÃ³n', 'perdida', '2021-11-01 17:52:41', 1),
(404, NULL, 'Manuel Alejandro', 'LÃ³pez', 'JarquÃ­n', NULL, NULL, NULL, NULL, NULL, NULL, '', 'manusalamnder@gmail.com', '', 'ISPAS2021', NULL, NULL, NULL, NULL, '2021-11-01 18:01:33', 1),
(405, 'avatar/IMG_20201107_173715.jpg', 'Claudia Rosa ', 'QuiÃ±ones', 'Gongora', NULL, 1850, 'M', 6, 4, 1980, '9982055937', 'clauquinones@hotmail.com', '', 'qugc800406', 'Clau QuiÃ±ogon ', 'Cancun', 'RecomendaciÃ³n', 'perdida', '2021-11-02 18:26:52', 1),
(406, 'avatar/163703716223321577875608144312.jpg', 'Brayam Salatiel', '', 'Samayoa', NULL, NULL, 'H', 3, 8, 2000, '5581516856', 'salatiel.samayoaa@gmail.com', '', 'ISPAS2021', 'Salatiel_sm', 'Valle de Chalco solidaridad', 'Redes Sociales', NULL, '2021-11-02 21:50:49', 1),
(407, 'avatar/Screenshot_20211103-222201_Photos.jpg', 'Fabiola ', 'Cruz', 'GonzÃ¡lez ', NULL, 1810, 'M', 26, 3, 1984, '9981169382', 'chava_fa@hotmail.com', '', 'ISPAS2021', 'WhatsApp ', 'CancÃºn', 'RecomendaciÃ³n', 'perdida', '2021-11-03 15:21:38', 1),
(408, NULL, 'isaac_coso@hotmail.com - A', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', 'isaac_coso@hotmail.com', '', 'ISPAS2021', NULL, NULL, NULL, NULL, '2021-11-03 15:22:20', 1),
(409, 'avatar/IMG-20211019-WA0049.jpeg', 'Fabiola  ', 'Carrillo', 'Martinez', NULL, 1480, 'M', 19, 3, 1980, '5516476437', 'asistente@laabejitaamarantoymiel.com.mx', '', 'ISPAS2021', 'Fabiola Carrillo', 'Edo mex', 'RecomendaciÃ³n', 'perdida', '2021-11-06 23:11:24', 1),
(410, 'avatar/Editor_2_20211101183007.jpg', 'Clarissa Diaz Hernandez -A', '', '', NULL, 1797, 'M', 12, 8, 1999, '9981496414', 'claryss99@hotmail.com', '', 'tamara11', 'Clarissa HernÃ¡ndez ', 'CancÃºn Q.Roo', 'RecomendaciÃ³n', 'perdida', '2021-11-07 18:03:43', 1),
(411, 'avatar/FB_IMG_1636334302880.jpg', 'Jose Eduardo', 'Librado', 'GÃ³mez', NULL, 1779, 'H', 4, 9, 1999, '9984778762', 'libradojose99@gmail.com', '', 'drops99M', 'Jose LG', 'CancÃºn Quintana Roo', 'RecomendaciÃ³n', 'perdida', '2021-11-07 18:04:33', 1),
(412, NULL, 'OLIVIA', 'JARQUIN ', '', NULL, NULL, NULL, NULL, NULL, NULL, '', 'dra_oli_jarquin@hotmail.com', '', 'ISPAS2021', NULL, NULL, NULL, NULL, '2021-11-10 16:33:47', 1),
(413, NULL, 'ERICK DE JESUS', 'RAMIREZ', 'PEREZ', NULL, NULL, NULL, NULL, NULL, NULL, '', 'erickrmzprz@gmail.com', '', 'ISPAS2021', NULL, NULL, NULL, NULL, '2021-11-18 11:42:21', 1),
(414, 'avatar/699FFC09-D762-47D6-9DFC-2ACB42FC4271.jpeg', 'Rodrigo Huertas Cardozo - EP Pablo C.', 'Huertas', 'Cardozo', NULL, 2518, 'H', 2, 5, 2005, '9984096248', 'rodri_huertas_c@hotmail.com', '', 'ISPAS2021', 'Facebook Rodrigo huertas Cardozo', 'CancÃºn ', 'RecomendaciÃ³n', 'perdida', '2021-12-07 06:59:35', 1),
(415, 'avatar/IMG_20211113_172715_653.webp', 'Stephany ', 'Abundis', 'GarcÃ­a', NULL, 1440, 'M', 2, 1, 1987, '9984638613', 'stephany.abundis1@gmail.com', '', 'ISPAS2021', 'Steff Abundis', 'Cancun', 'RecomendaciÃ³n', 'perdida', '2022-01-09 17:21:47', 1),
(416, 'avatar/7AAA3572-8F74-4EF1-8812-63411228B398.jpeg', 'EP. Fabian Lara', 'Lara ', 'Bocos', NULL, 1500, 'H', 4, 5, 2002, '9988903075', 'hfabianlara@gmail.com', '', 'ISPAS2021', 'Instragram ', 'CancÃºn ', 'RecomendaciÃ³n', 'aumento', '2022-01-10 13:23:40', 1),
(417, 'avatar/E3D8D18E-D312-40FA-9AF3-44CC7672BAD9.jpeg', 'Edith Leticia Romero Gonzalez', '', '', NULL, NULL, 'M', 18, 4, 1990, '9981928732', 'leticia_romero18@outlook.com', '', 'ISPAS2021', 'Edithrogle', 'Cancun', 'RecomendaciÃ³n', NULL, '2022-01-10 13:25:11', 1),
(418, NULL, 'Adela Arce', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', 'zarahemlaarcemoneoy@hotmail.com', '', 'ISPAS2021', NULL, NULL, NULL, NULL, '2022-01-10 13:25:54', 1),
(419, 'avatar/4057DD9D-8B65-4346-A5A1-74018934BD1C.jpeg', 'Sabrina  ', 'MelÃ©ndez ', 'Corona ', NULL, 1194, 'M', 12, 1, 2002, '9981151241', 'sabrinamldzc@gmail.com', '', 'ISPAS2021', 'Facebook ', 'CancÃºn Q. Roo. ', 'RecomendaciÃ³n', 'perdida', '2022-01-10 13:26:39', 1),
(420, 'avatar/93A1D793-5422-4238-9A24-C0CE0138BEB9.jpeg', 'Jesus', 'Galindo', 'Salas ', NULL, 1810, 'H', 19, 9, 1986, '7226001152', 'galindoplaya@gmail.com', '', 'ISPAS2021', 'Jesus Salas', 'Toluca ', 'RecomendaciÃ³n', 'perdida', '2022-01-10 13:27:16', 1),
(421, 'avatar/WhatsApp Image 2020-10-01 at 7.53.08 PM.jpeg', 'Abigail', 'Carrillo', 'Medina', NULL, 1832, 'M', 2, 10, 2001, '9995764555', 'abicarrillome@gmail.com', '', 'ISPAS2021', 'Abigail Medina', 'MÃ©rida, YucatÃ¡n', 'Redes Sociales', 'aumento', '2022-01-10 13:29:02', 1),
(422, 'avatar/PhotoGrid_1475004306760.jpg', 'Nancy Berli Aguilar Deceano', 'Aguilar', 'Deceano', NULL, 1714, 'M', 22, 8, 1992, '', 'berliaguilar18@gmail.com', '', 'ISPAS2021', 'Facebook berli Aguilar ', 'CancÃºn ', 'Redes Sociales', 'aumento', '2022-01-10 13:29:57', 1),
(423, NULL, 'JosÃ© Luis ChacÃ³n MÃ©ndez', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', 'jlchacon888@gmail.com', '', 'ISPAS2021', NULL, NULL, NULL, NULL, '2022-01-10 15:24:22', 1),
(424, 'avatar/IMG_20200706_184104.jpg', 'Mariana ', 'Tinajero', 'Miranda', NULL, 1767, 'M', 17, 9, 1997, '9982938190', 'mariana_ltmiranda@hotmail.com', '', 'ISPAS2021', 'Fb: Iana Mar', 'Villa marino ', 'Redes Sociales', 'aumento', '2022-01-10 15:53:17', 1),
(425, 'avatar/9FA18A53-7FE5-42F0-A606-040F0ECDD821.jpeg', 'Francisco Javier ', 'Ãvila ', 'Cabrera', NULL, NULL, 'H', 2, 9, 1988, '9982227834', 'fraank.avila@gmail.com', '', 'ISPAS2021', 'Fraank Avila', 'CancÃºn ', 'RecomendaciÃ³n', NULL, '2022-01-10 15:54:13', 1),
(426, 'avatar/IMG_1988final.png', 'Graciela De JesÃºs', 'Medina', 'NÃºÃ±ez', NULL, 1145, 'M', 22, 12, 1978, '9991943826', 'graciela.m22@hotmail.com', '', 'ISPAS2021', 'https://www.facebook.com/Graciela22/', 'MÃ©rida', 'RecomendaciÃ³n', 'perdida', '2022-01-10 20:13:32', 1),
(427, 'avatar/dump.php', 'Joss programador', 'vergara', 'ss', NULL, 1964, 'H', 3, 4, 1991, '9981681329', 'joss1091@gmail.com', '', 'ISPAS2021', 'facebb', 'cancun', 'RecomendaciÃ³n', 'perdida', '2022-01-10 21:33:34', 1),
(428, 'avatar/F59236C1-FBF6-4458-90F2-05E141DAD557.jpeg', 'EP - Edgar Cruz ', '', '', NULL, 2758, 'H', 6, 6, 1998, '9983199054', 'isai.un.24@gmail.com', '', 'ISPAS2021', 'Edgar cruz ', 'CancÃºn ', 'RecomendaciÃ³n', 'aumento', '2022-01-13 09:46:53', 1),
(429, 'avatar/IMG_20210930_233226.jpg', 'Yazmin', 'LÃ³pez ', 'Moreno', NULL, NULL, 'M', 16, 4, 1989, '9981298513', 'laflaca_5752@hotmail.com', '', 'yazmin', 'Ana Yazmin Lopez', 'RegiÃ³n 98', 'RecomendaciÃ³n', NULL, '2022-01-15 12:25:48', 1),
(430, 'avatar/16424580493107869969531143121941.jpg', 'Esmeralda guadalupe', 'Chan', 'Canul', NULL, 1619, 'M', 4, 4, 1998, '9981367853', 'esmeraldachancanul@gmail.com', '', 'ISPAS2021', 'Esmeralda Canul', 'Isla Mujeres', 'Redes Sociales', 'perdida', '2022-01-17 16:47:25', 1),
(431, 'avatar/3BA6BE1F-3B81-4E40-8785-8406505A2205.jpeg', 'Mayte Delgadillo', '', '', NULL, 1588, 'M', 0, 0, 0, '8110246600', 'mayte_ale54@hotmail.com', '', 'maty2010', 'May Mireles ', 'Nuevo LeÃ³n ', 'Redes Sociales', 'perdida', '2022-01-17 16:48:42', 1),
(432, 'avatar/IMG_20210926_150524.jpg', 'VÃ­ctor', 'VerdÃ­n', 'GÃ³mez', NULL, NULL, 'H', 1, 9, 1997, '9981470717', 'victor.verdin701@gmail.com', '', 'ISPAS2021', 'VÃ­ctor VerdÃ­n', 'CancÃºn', 'RecomendaciÃ³n', NULL, '2022-01-25 13:34:45', 1),
(433, 'avatar/profile pic steph.jpg', 'Stephanie', 'Avila', 'Machuca', NULL, NULL, 'M', 28, 5, 1987, '4075417281', 'stephanieavilamachuca87@gmail.com', '', 'Siempre123', 'https://www.facebook.com/stephanieavilam', 'estados unidos', 'Redes Sociales', NULL, '2022-01-31 12:08:33', 1),
(434, 'avatar/IMG_20220202_093225.jpg', 'Arely ', 'Cortez ', 'Marfil ', NULL, 1700, 'M', 3, 9, 1989, '9981456727', 'arelycortez11@gmail.com ', '', 'Vidasaludable4', 'Facebook Arely CortÃ©s ', 'CancÃºn ', 'Redes Sociales', 'perdida', '2022-02-01 13:36:11', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `caloria`
--
ALTER TABLE `caloria`
  ADD PRIMARY KEY (`id_calorias`);

--
-- Indices de la tabla `cuationario`
--
ALTER TABLE `cuationario`
  ADD PRIMARY KEY (`id_cuationario`);

--
-- Indices de la tabla `imagenes`
--
ALTER TABLE `imagenes`
  ADD PRIMARY KEY (`id_img`),
  ADD KEY `usuario_id_usuario` (`usuario_id_usuario`);

--
-- Indices de la tabla `IMC`
--
ALTER TABLE `IMC`
  ADD PRIMARY KEY (`id_imc`),
  ADD KEY `usuario_id_usuario` (`usuario_id_usuario`);

--
-- Indices de la tabla `reporte`
--
ALTER TABLE `reporte`
  ADD PRIMARY KEY (`id_reporte`),
  ADD KEY `usuario_id_usuario` (`usuario_id_usuario`),
  ADD KEY `team_id_team` (`team_id_team`),
  ADD KEY `team_id_team_2` (`team_id_team`);

--
-- Indices de la tabla `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id_equipo`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usr`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `caloria`
--
ALTER TABLE `caloria`
  MODIFY `id_calorias` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cuationario`
--
ALTER TABLE `cuationario`
  MODIFY `id_cuationario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=330;

--
-- AUTO_INCREMENT de la tabla `imagenes`
--
ALTER TABLE `imagenes`
  MODIFY `id_img` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=397;

--
-- AUTO_INCREMENT de la tabla `IMC`
--
ALTER TABLE `IMC`
  MODIFY `id_imc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=358;

--
-- AUTO_INCREMENT de la tabla `reporte`
--
ALTER TABLE `reporte`
  MODIFY `id_reporte` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=821;

--
-- AUTO_INCREMENT de la tabla `team`
--
ALTER TABLE `team`
  MODIFY `id_equipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=435;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `imagenes`
--
ALTER TABLE `imagenes`
  ADD CONSTRAINT `imagenes_ibfk_1` FOREIGN KEY (`usuario_id_usuario`) REFERENCES `usuario` (`id_usr`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `IMC`
--
ALTER TABLE `IMC`
  ADD CONSTRAINT `IMC_ibfk_1` FOREIGN KEY (`usuario_id_usuario`) REFERENCES `usuario` (`id_usr`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `reporte`
--
ALTER TABLE `reporte`
  ADD CONSTRAINT `reporte_ibfk_1` FOREIGN KEY (`usuario_id_usuario`) REFERENCES `usuario` (`id_usr`),
  ADD CONSTRAINT `reporte_ibfk_2` FOREIGN KEY (`team_id_team`) REFERENCES `team` (`id_equipo`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
