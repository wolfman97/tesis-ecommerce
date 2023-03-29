-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3300
-- Tiempo de generación: 29-03-2021 a las 19:13:27
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ecomm`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(1, 'Puertas', 'Puertas'),
(2, 'Muebles', 'Muebles'),
(3, 'Sillas', 'Sillas'),
(4, 'Mesas', 'Mesas'),
(8, 'camas', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
(14, 9, 11, 2),
(15, 9, 13, 5),
(16, 9, 3, 2),
(17, 9, 1, 3),
(18, 10, 13, 3),
(19, 10, 2, 4),
(20, 10, 19, 5),
(21, 11, 45, 1),
(22, 12, 37, 1),
(23, 13, 46, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`) VALUES
(31, 4, 'Mesa Moderna para comedor con 4 sillas', '<h3>Profundidad Del Producto: 75cm</h3>\r\n\r\n<h3>Altura Del Producto: 140cm</h3>\r\n\r\n<h3>Ancho Del Producto: 80cm</h3>\r\n\r\n<h3>Material Tablero: Vidrio templado de 8 mil&iacute;metros</h3>\r\n\r\n<h3>Material Estructura Sillas: Sillas de respaldo alto en PVC</h3>\r\n\r\n<h3>Armado:</h3>\r\n\r\n<p>Este producto viene desarmado y empacado, requiere ensamble o armado no inclu&iacute;do en el precio de venta. Te recomendamos a&ntilde;adir el Servicio de Armado dentro de tu Carrito de compras, opci&oacute;n que aparecer&aacute; en el carro de compras junto al producto que elegiste.</p>\r\n', 'mesa-moderna-para-comedor-con-4-sillas', 550, 'mesa-moderna-para-comedor-con-4-sillas.jpg', '2020-12-02', 1),
(32, 4, 'Mesa redonda para comedor', '<p>Altura Del Producto: 74</p>\r\n\r\n<h3>Modelo: Ibiza</h3>\r\n\r\n<h3>Material Base: Acero cromado</h3>\r\n\r\n<h3>Largo: 100</h3>\r\n\r\n<h3>Di&aacute;metro: 100 cm</h3>\r\n\r\n<h3>Armado</h3>\r\n\r\n<p>Este producto viene desarmado y empacado, requiere ensamble o armado no inclu&iacute;do en el precio de venta. Te recomendamos a&ntilde;adir el Servicio de Armado dentro de tu Carrito de compras, opci&oacute;n que aparecer&aacute; en el carro de compras junto al producto que elegiste.&nbsp;</p>\r\n', 'mesa-redonda-para-comedor', 420, 'mesa-redonda-para-comedor.jpg', '0000-00-00', 0),
(33, 4, 'Juego de Comedor 4 sillas', '<p>Material de la Estructura:&nbsp;Tablero&nbsp;de 8 mil&iacute;metros</p>\r\n\r\n<p>Color:&nbsp;Negro</p>\r\n\r\n<p>Alto (cm):&nbsp;80cm</p>\r\n\r\n<p>Ancho (cm):&nbsp;&nbsp;75cm</p>\r\n\r\n<p>Altura del asiento:&nbsp;96cm</p>\r\n\r\n<p>Profundidad (cm):&nbsp;140cm</p>\r\n\r\n<p>Observaciones:</p>\r\n\r\n<p>La foto de este producto ha sido ambientada,por lo cual no incluye ning&uacute;n adorno, ni accesorios, ni piezas adicionales ni ning&uacute;n otro elemento que lo acompa&ntilde;an. El color presentado en la fotograf&iacute;a es una aproximaci&oacute;n al color real.</p>\r\n', 'juego-de-comedor-4-sillas', 549, 'juego-de-comedor-6-sillas.jpg', '2020-12-03', 1),
(34, 4, 'Mesa de Lado Vidrio con Patas Roble', '<h3>Altura Del Producto: 44 cm</h3>\r\n\r\n<h3>Ancho Del Producto: 55 cm</h3>\r\n\r\n<h3>Largo (cm): 55 cm</h3>\r\n\r\n<h3>Observaciones:</h3>\r\n\r\n<p>La foto de este producto ha sido ambientada, por lo cual no incluye ning&uacute;n adorno, ni accesorios, ni piezas adicionales ni ning&uacute;n otro elemento que lo acompa&ntilde;an. El color presentado en la fotograf&iacute;a es una aproximaci&oacute;n al color real.</p>\r\n\r\n<h3>Observaciones adicionales:</h3>\r\n\r\n<p>Las fotograf&iacute;as y descripci&oacute;n del producto son referenciales.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'mesa-de-lado-vidrio-con-patas-roble', 229, 'mesa-de-lado-vidrio-con-patas-roble.jpg', '0000-00-00', 0),
(35, 4, 'Mesa de Centro Patas Roble', '<h3>Profundidad Del Producto: 110 cm</h3>\r\n\r\n<h3>Modelo: Prom</h3>\r\n\r\n<h3>Observaciones adicionales:</h3>\r\n\r\n<p>Las fotograf&iacute;as y descripci&oacute;n del producto son referenciales.</p>\r\n', 'mesa-de-centro-patas-roble', 279, 'mesa-de-centro-patas-roble.jpg', '2020-12-02', 1),
(36, 4, 'Mesa Plegable ', '<h3>Observaciones adicionales</h3>\r\n\r\n<p>Las fotograf&iacute;as y descripci&oacute;n del producto son referenciales.</p>\r\n', 'mesa-plegable', 130, 'mesa-plegable.jpg', '0000-00-00', 0),
(37, 2, 'Mueble Vanitorio con 2 muebles auxiliares', '<p>Modelo: Onix</p>\r\n\r\n<p>Caracter&iacute;sticas: Unidad de 80cm antracita lacada dos cajones con sistema cerrado suave. 10% Hardware en aluminio.</p>\r\n\r\n<p>Material: Madera contrachapada</p>\r\n\r\n<p>Alto: 56.5 cm</p>\r\n\r\n<p>Ancho: 80 cm</p>\r\n\r\n<p>Profundidad: 44.3 cm</p>\r\n\r\n<p>Medidas de la caja: 86 cm (ancho), 50 cm (profundidad), 63.5 cm (alto)</p>\r\n\r\n<p>Peso: 23.3 kg</p>\r\n\r\n<p>Incluye: S&oacute;lo el mueble vanitorio con 2 muebles auxiliares. No incluye Lavamanos, Grifer&iacute;a, Espejos y otros accesorios.</p>\r\n\r\n<p>Categoria: Muebles de ba&ntilde;o</p>\r\n', 'mueble-vanitorio-con-2-muebles-auxiliares', 750, 'mueble-vanitorio-con-2-muebles-auxiliares.jpg', '2020-12-03', 1),
(38, 2, 'Combo My Bath Botiquin + Mueble Lavamanos + Optimizador ', '<p>Material: caoba</p>\r\n\r\n<p>Material de manijas: Aluminio</p>\r\n\r\n<p>Ancho: 63 cm</p>\r\n\r\n<p>Profundidad: 25.5 cm</p>\r\n\r\n<p>Incluye: Botiquin + Mueble Lavamanos + Optimizador</p>\r\n\r\n<p>Caracter&iacute;sticas: Combo My Bath</p>\r\n\r\n<p>Medida de caja: 150 x 52 x 20 cm</p>\r\n\r\n<p>Familia: Ba&ntilde;os y cocinas</p>\r\n', 'combo-my-bath-botiquin-mueble-lavamanos-optimizador', 970, 'combo-my-bath-botiquin-mueble-lavamanos-optimizador.jpg', '0000-00-00', 0),
(39, 2, 'Mueble Baño Lavamanos + Mueble Botiquín', '<p>Color lavamanos: Miel</p>\r\n\r\n<p>Material lavamanos: Caoba</p>\r\n\r\n<p>Material de manijas lavamanos: Metal</p>\r\n\r\n<p>Altura lavamanos: 82.7 cm</p>\r\n\r\n<p>Ancho lavamanos: 45.1 cm</p>\r\n\r\n<p>Profundidad lavamanos: 45 cm</p>\r\n\r\n<p>N&uacute;mero de puertas lavamanos: 2</p>\r\n\r\n<p>Ruedas lavamanos: No</p>\r\n\r\n<p>Peso del producto lavamanos: 22.8 kg</p>\r\n\r\n<p>Color botiqu&iacute;n: Miel</p>\r\n\r\n<p>Material botiqu&iacute;n: Caoba</p>\r\n\r\n<p>Material de manijas botiqu&iacute;n: Metal</p>\r\n\r\n<p>Altura botiqu&iacute;n: 60 cm</p>\r\n\r\n<p>Ancho botiqu&iacute;n: 60 cm</p>\r\n\r\n<p>Profundidad botiqu&iacute;n: 14.9 cm</p>\r\n\r\n<p>N&uacute;mero de puertas botiqu&iacute;n: 2</p>\r\n\r\n<p>Ruedas botiqu&iacute;n: No</p>\r\n\r\n<p>Peso del producto botiqu&iacute;n: 13.4 kg</p>\r\n\r\n<p>Categor&iacute;a: Muebles de ba&ntilde;o</p>\r\n', 'mueble-bano-lavamanos-mueble-botiquin', 830, 'mueble-bano-lavamanos-mueble-botiquin.jpg', '2020-12-02', 1),
(40, 2, 'Mueble Lavamanos + Espejo Flotante + Mueble Auxiliar', '<p>Material mueble auxiliar: Caoba</p>\r\n\r\n<p>Color mueble auxiliar: Plomo</p>\r\n\r\n<p>Material de manijas mueble auxiliar: Metal</p>\r\n\r\n<p>Altura mueble auxiliar: 90 cm</p>\r\n\r\n<p>Ancho mueble auxiliar: 30 cm</p>\r\n\r\n<p>Profundidad mueble auxiliar: 25 cm</p>\r\n\r\n<p>N&uacute;mero de puertas mueble auxiliar: 2</p>\r\n\r\n<p>N&uacute;mero de cajones muebles auxiliar: 2</p>\r\n\r\n<p>Ruedas mueble auxiliar: No</p>\r\n\r\n<p>Peso del producto mueble auxiliar: 11.6 kg</p>\r\n\r\n<p>Color mueble: Plomo</p>\r\n\r\n<p>Material mueble: Caoba</p>\r\n\r\n<p>Material de manijas mueble: Metal</p>\r\n\r\n<p>Altura mueble: 88 cm</p>\r\n\r\n<p>Ancho mueble: 40 cm</p>\r\n\r\n<p>Profundidad mueble: 33 cm</p>\r\n\r\n<p>N&uacute;mero de cajones&nbsp;mueble: 3</p>\r\n\r\n<p>Ruedas mueble: No</p>\r\n\r\n<p>Peso del producto mueble: 19.6 kg</p>\r\n\r\n<p>Marca espejo: Tuhome</p>\r\n\r\n<p>Color espejo: Plomo</p>\r\n\r\n<p>Material espejo: Caoba</p>\r\n\r\n<p>Altura espejo: 60 cm</p>\r\n\r\n<p>Ancho espejo: 45 cm</p>\r\n\r\n<p>Profundidad espejo: 1.9 cm</p>\r\n\r\n<p>N&uacute;mero de puertas espejo: No</p>\r\n\r\n<p>Ruedas espejo: No</p>\r\n\r\n<p>Peso del producto espejo: 4.6 kg</p>\r\n\r\n<p>Familia: Muebles para ba&ntilde;o</p>\r\n', 'mueble-lavamanos-espejo-flotante-mueble-auxiliar', 729.9, 'mueble-lavamanos-espejo-flotante-mueble-auxiliar.jpg', '2020-12-02', 2),
(41, 2, 'ORGANIZADOR - HARRY - WENGUE', '<p>Material del mueble: Caoba</p>\r\n\r\n<p>color: gris</p>\r\n\r\n<p>Peso (kg): 19</p>\r\n\r\n<p>Alto (cm): 136</p>\r\n\r\n<p>Ancho (cm): 20</p>\r\n\r\n<p>Largo (cm): 90</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'organizador-harry-wengue', 713, 'organizador-harry-wengue.jpg', '0000-00-00', 0),
(42, 2, 'ORGANIZADOR CON SECCIONES', '<p>Material del mueble: Pino</p>\r\n\r\n<p>Color: Natural</p>\r\n\r\n<p>Alto (cm): 136</p>\r\n\r\n<p>Largo (cm): 125</p>\r\n\r\n<p>Peso (kg): 21</p>\r\n\r\n<p>Ancho (cm): 20</p>\r\n', 'organizador-con-secciones', 1, 'organizador-con-secciones.jpg', '0000-00-00', 0),
(43, 2, 'BIBLIOTECA OFFICE  - Caoba', '<p>Material del mueble: Caoba</p>\r\n\r\n<p>Color: Natural</p>\r\n\r\n<p>Alto (cm): 175</p>\r\n\r\n<p>Largo (cm): 30.6</p>\r\n\r\n<p>Modelo: Office</p>\r\n\r\n<p>Peso (kg): 14</p>\r\n\r\n<p>Ancho (cm): 97.7</p>\r\n', 'biblioteca-office-caoba', 909, 'biblioteca-office-caoba_1606935679.jpg', '2020-12-02', 2),
(45, 1, 'Puerta contraplacada Triplay 65x207 cm', '<p>Profundidad Del Producto: 4 cm</p>\r\n\r\n<h3>Recomendaciones De Uso:&nbsp;</h3>\r\n\r\n<p>Para la instalaci&oacute;n adquirir marco, kit de instalaci&oacute;n y bisagras. Medir correctamente el &aacute;rea del vano a utilizar para evitar problemas en la instalaci&oacute;n. Ambientar la puerta a la humedad y temperatura del lugar donde se instalar&aacute;, 72 horas antes. Colocar en forma horizontal una osbre otra aislada del piso. Antes de pintar, limpie y realice un suave lijado. Debe ser pintada en los 6 lados, en un plazo no mayor a 48 horas de haber sido instalada. Dar mantenimiento anualmente.</p>\r\n\r\n<h3>Altura Del Producto: 207 cm</h3>\r\n\r\n<h3>Sistema de Marco interno: Fingerjoint</h3>\r\n\r\n<h3>Tipo de acabado: Liso</h3>\r\n\r\n<h3>Modelo: Vanela</h3>\r\n\r\n<h3>Acabado: Natural</h3>\r\n\r\n<h3>Tipo de Producto: Puerta</h3>\r\n\r\n<h3>Ancho Del Producto: 65 cm</h3>\r\n\r\n<h3>Sub Tipo de Producto: Contraplacada</h3>\r\n\r\n<h3>Material: Madera/MDF</h3>\r\n\r\n<h3>Color: Marr&oacute;n</h3>\r\n\r\n<h3>Tipo de Color: Natural</h3>\r\n\r\n<h3>N&uacute;mero de piezas: 1</h3>\r\n\r\n<h3>Tipo de cierre: Chapa</h3>\r\n\r\n<h3>Estructura interna: Bastidores de Pino</h3>\r\n\r\n<h3>Marca: SM</h3>\r\n\r\n<h3>Material de relleno: Honeycomb</h3>\r\n\r\n<h3>Peso Del Producto: 11 kg</h3>\r\n\r\n<h3>Espesor: 40 mm</h3>\r\n\r\n<p>Observaciones:</p>\r\n\r\n<p>Apariencia amaderada. No es recomendable para zonas exteriores.</p>\r\n\r\n<h3>Observaciones adicionales:</h3>\r\n\r\n<p>Las fotograf&iacute;as y descripci&oacute;n del producto son referenciales.</p>\r\n\r\n<h3>Advertencia de uso:</h3>\r\n\r\n<p>Pintar la puerta antes de ser instalada. Solamente se puede reducir 0.5 cm m&aacute;ximo por lado. Leer clausulas dentro del manual de instrucciones.</p>\r\n', 'puerta-contraplacada-triplay-65x207-cm', 115, 'puerta-contraplacada-triplay-65x207-cm_1606939598.jpg', '2020-12-03', 2),
(46, 1, 'Puerta acabada Blanca  90x207cm', '<h3>Profundidad Del Producto: 4 cm</h3>\r\n\r\n<h3>Recomendaciones De Uso:</h3>\r\n\r\n<p>Realizar la instalaci&oacute;n por personal calificado.Medir correctamente el vano a usar para evitar una mala instalaci&oacute;n y escoger la medida de puerta adecuada.</p>\r\n\r\n<h3>Altura Del Producto:&nbsp; 207 cm</h3>\r\n\r\n<h3>Sistema de Marco interno: Fingerjoint</h3>\r\n\r\n<h3>Tipo de acabado: Liso</h3>\r\n\r\n<h3>Modelo: Texturizada</h3>\r\n\r\n<h3>Acabado: Primer UV</h3>\r\n\r\n<h3>Tipo de Producto: Puerta</h3>\r\n\r\n<h3>Ancho Del Producto: 90 cm</h3>\r\n\r\n<h3>Sub Tipo de Producto: Enchapada</h3>\r\n\r\n<h3>Material: HDF</h3>\r\n\r\n<h3>N&uacute;mero de piezas: 1</h3>\r\n\r\n<h3>Tipo de cierre: Manual</h3>\r\n\r\n<h3>Estructura interna: Bastidores de Pino</h3>\r\n\r\n<h3>Material de relleno: Honeycomb</h3>\r\n\r\n<h3>Peso Del Producto: 14 kg</h3>\r\n\r\n<h3>Espesor: 40 mm</h3>\r\n\r\n<h3>Advertencia de uso: Presentar puerta previa instalaci&oacute;n.</h3>\r\n\r\n<h3>Dise&ntilde;o: Plano</h3>\r\n\r\n<h3>Materiales:&nbsp;</h3>\r\n\r\n<p>Estructura interna en Pino. Caras formadas en tableros de Fibra de Alta Densidad HDF de 0.3 cm de espesor.</p>\r\n\r\n<h3>&iquest;D&oacute;nde usarlo?</h3>\r\n\r\n<p>En Habitaciones de Interior</p>\r\n\r\n<h3>Observaciones adicionales:&nbsp;</h3>\r\n\r\n<p>Las fotograf&iacute;as y descripci&oacute;n del producto son referenciales.</p>\r\n', 'puerta-acabada-blanca-90x207cm', 210, 'puerta-acabada-blanca-90x207cm.jpg', '2020-12-03', 1),
(47, 1, 'Puerta contraplacada Vaivén 83x207 cm', '<h3>Profundidad Del Producto: 4 cm</h3>\r\n\r\n<h3>Recomendaciones De Uso:&nbsp;</h3>\r\n\r\n<p>Para la instalaci&oacute;n adquirir marco, kit de instalaci&oacute;n y bisagras. Medir correctamente el &aacute;rea del vano a utilizar para evitar problemas en la instalaci&oacute;n. Ambientar la puerta a la humedad y temperatura del lugar donde se instalar&aacute;, 72 horas antes. Colocar en forma horizontal una osbre otra aislada del piso. Antes de pintar, limpie y realice un suave lijado. Debe ser pintada en los 6 lados, en un plazo no mayor a 48 horas de haber sido instalada. Dar mantenimiento anualmente.</p>\r\n\r\n<h3>Altura Del Producto: 207 cm</h3>\r\n\r\n<h3>Sistema de Marco interno: Fingerjoint</h3>\r\n\r\n<h3>Tipo de acabado: Liso</h3>\r\n\r\n<h3>Modelo: Vaiv&eacute;n</h3>\r\n\r\n<h3>Acabado: Natural</h3>\r\n\r\n<h3>Tipo de Producto: Puerta</h3>\r\n\r\n<h3>Ancho Del Producto: 83 cm</h3>\r\n\r\n<h3>Sub Tipo de Producto: Contraplacada</h3>\r\n\r\n<h3>Material: Madera/MDF</h3>\r\n\r\n<h3>N&uacute;mero de piezas: 1</h3>\r\n\r\n<h3>Tipo de cierre: Chapa</h3>\r\n\r\n<h3>Estructura interna: Bastidores de Pino</h3>\r\n\r\n<h3>Marca: SM</h3>\r\n\r\n<h3>Material de relleno: Honeycomb</h3>\r\n\r\n<h3>Peso Del Producto: 16.2 kg</h3>\r\n\r\n<h3>Espesor: 40 mm</h3>\r\n\r\n<h3>Dise&ntilde;o: Liso</h3>\r\n\r\n<h3>Materiales: HDF</h3>\r\n\r\n<h3>Tipo de uso: Dom&eacute;stico/Interior</h3>\r\n\r\n<h3>&iquest;D&oacute;nde usarlo?</h3>\r\n\r\n<p>Cocinas, dormitorios, ba&ntilde;os, etc.</p>\r\n\r\n<h3>Observaciones:&nbsp;</h3>\r\n\r\n<p>No es recomendable para zonas exteriores.</p>\r\n\r\n<h3>Observaciones adicionales</h3>\r\n\r\n<p>Las fotograf&iacute;as y descripci&oacute;n del producto son referenciales.</p>\r\n\r\n<h3>Advertencia de uso</h3>\r\n\r\n<p>Pintar la puerta antes de ser instalada. Solamente se puede reducir 0.5 cm m&aacute;ximo por lado. Leer clausulas dentro del manual de instrucciones.</p>\r\n', 'puerta-contraplacada-vaiven-83x207-cm', 120, 'puerta-contraplacada-vaiven-83x207-cm.jpg', '2020-12-02', 2),
(48, 1, 'Puerta de madera wengué', '<h3>Profundidad Del Producto: 4 cm</h3>\r\n\r\n<h3>Recomendaciones De Uso:</h3>\r\n\r\n<p>Para la instalaci&oacute;n adquirir marco, kit de instalaci&oacute;n y bisagras. Medir correctamente el &aacute;rea del vano a utilizar para evitar problemas en la instalaci&oacute;n. Ambientar la puerta a la humedad y temperatura del lugar donde se instalar&aacute;, 72 horas antes. Colocar en forma horizontal una osbre otra aislada del piso. Antes de pintar, limpie y realice un suave lijado. Debe ser pintada en los 6 lados, en un plazo no mayor a 48 horas de haber sido instalada. Dar mantenimiento anualmente.</p>\r\n\r\n<h3>Altura Del Producto: 207 cm</h3>\r\n\r\n<h3>Acabado: Natural</h3>\r\n\r\n<h3>Tipo de Producto: Puerta</h3>\r\n\r\n<h3>Ancho Del Producto: 83 cm</h3>\r\n\r\n<h3>Sub Tipo de Producto: Madera</h3>\r\n\r\n<h3>Material: Madera/wengu&eacute;</h3>\r\n\r\n<h3>N&uacute;mero de piezas: 1</h3>\r\n\r\n<h3>Tipo de cierre: Chapa</h3>\r\n\r\n<h3>Estructura interna: Bastidores de wengu&eacute;</h3>\r\n\r\n<h3>Material de relleno: wengu&eacute;</h3>\r\n\r\n<h3>Peso Del Producto: 16.2 kg</h3>\r\n\r\n<h3>Espesor: 40 mm</h3>\r\n\r\n<h3>Advertencia de uso:</h3>\r\n\r\n<p>Pintar la puerta antes de ser instalada. Solamente se puede reducir 0.5 cm m&aacute;ximo por lado. Leer clausulas dentro del manual de instrucciones.</p>\r\n\r\n<h3>Dise&ntilde;o: Liso</h3>\r\n\r\n<h3>Materiales: HDF</h3>\r\n\r\n<h3>Tipo de uso: Dom&eacute;stico/Interior</h3>\r\n\r\n<h3>&iquest;D&oacute;nde usarlo?</h3>\r\n\r\n<p>Cocinas.</p>\r\n\r\n<h3>Observaciones</h3>\r\n\r\n<p>No es recomendable para zonas exteriores.</p>\r\n\r\n<h3>Observaciones adicionales</h3>\r\n\r\n<p>Las fotograf&iacute;as y descripci&oacute;n del producto son referenciales.</p>\r\n', 'puerta-de-madera-wengue', 340, 'puerta-de-madera-wengue.jpg', '2020-12-02', 3),
(49, 1, 'Puerta Contraplacada Principal En Madera Cedro Tornillo Pino', '<h3>Profundidad Del Producto: 4 cm</h3>\r\n\r\n<h3>Recomendaciones De Uso:</h3>\r\n\r\n<p>Para la instalaci&oacute;n adquirir marco, kit de instalaci&oacute;n y bisagras. Medir correctamente el &aacute;rea del vano a utilizar para evitar problemas en la instalaci&oacute;n. Ambientar la puerta a la humedad y temperatura del lugar donde se instalar&aacute;, 72 horas antes. Colocar en forma horizontal una osbre otra aislada del piso. Antes de pintar, limpie y realice un suave lijado. Debe ser pintada en los 6 lados, en un plazo no mayor a 48 horas de haber sido instalada. Dar mantenimiento anualmente.</p>\r\n\r\n<h3>Altura Del Producto: 207 cm</h3>\r\n\r\n<h3>Acabado: Natural</h3>\r\n\r\n<h3>Tipo de Producto: Puerta</h3>\r\n\r\n<h3>Ancho Del Producto: 83 cm</h3>\r\n\r\n<h3>Sub Tipo de Producto: Madera</h3>\r\n\r\n<h3>Material: Madera/Cedro/Pino/Tornillo</h3>\r\n\r\n<h3>N&uacute;mero de piezas: 1</h3>\r\n\r\n<h3>Tipo de cierre: Chapa</h3>\r\n\r\n<h3>Estructura interna: Bastidores de wengu&eacute;</h3>\r\n\r\n<h3>Material de relleno: wengu&eacute;</h3>\r\n\r\n<h3>Peso Del Producto: 16.2 kg</h3>\r\n\r\n<h3>Espesor: 40 mm</h3>\r\n\r\n<h3>Advertencia de uso:</h3>\r\n\r\n<p>Pintar la puerta antes de ser instalada. Solamente se puede reducir 0.5 cm m&aacute;ximo por lado. Leer clausulas dentro del manual de instrucciones.</p>\r\n\r\n<h3>Dise&ntilde;o: Liso</h3>\r\n\r\n<h3>Materiales: HDF</h3>\r\n\r\n<h3>Tipo de uso: Dom&eacute;stico/Interior</h3>\r\n\r\n<h3>&iquest;D&oacute;nde usarlo?</h3>\r\n\r\n<p>Cocinas.</p>\r\n\r\n<h3>Observaciones</h3>\r\n\r\n<p>No es recomendable para zonas exteriores.</p>\r\n\r\n<h3>Observaciones adicionales</h3>\r\n\r\n<p>Las fotograf&iacute;as y descripci&oacute;n del producto son referenciales.</p>\r\n', 'puerta-contraplacada-principal-en-madera-cedro-tornillo-pino', 140, 'puerta-contraplacada-principal-en-madera-cedro-tornillo-pino.jpg', '2020-12-02', 1),
(50, 1, 'Puerta De Madera En Cedro y Tornillo ', '<h3>Profundidad Del Producto: 4 cm</h3>\r\n\r\n<h3>Recomendaciones De Uso:</h3>\r\n\r\n<p>Para la instalaci&oacute;n adquirir marco, kit de instalaci&oacute;n y bisagras. Medir correctamente el &aacute;rea del vano a utilizar para evitar problemas en la instalaci&oacute;n. Ambientar la puerta a la humedad y temperatura del lugar donde se instalar&aacute;, 72 horas antes. Colocar en forma horizontal una osbre otra aislada del piso. Antes de pintar, limpie y realice un suave lijado. Debe ser pintada en los 6 lados, en un plazo no mayor a 48 horas de haber sido instalada. Dar mantenimiento anualmente.</p>\r\n\r\n<h3>Altura Del Producto: 207 cm</h3>\r\n\r\n<h3>Acabado: Natural</h3>\r\n\r\n<h3>Tipo de Producto: Puerta</h3>\r\n\r\n<h3>Ancho Del Producto: 83 cm</h3>\r\n\r\n<h3>Sub Tipo de Producto: Madera</h3>\r\n\r\n<h3>Material: Madera/Cedro/Tornillo</h3>\r\n\r\n<h3>N&uacute;mero de piezas: 1</h3>\r\n\r\n<h3>Tipo de cierre: Chapa</h3>\r\n\r\n<h3>Estructura interna: Bastidores de wengu&eacute;</h3>\r\n\r\n<h3>Material de relleno: wengu&eacute;</h3>\r\n\r\n<h3>Peso Del Producto: 16.2 kg</h3>\r\n\r\n<h3>Espesor: 40 mm</h3>\r\n\r\n<h3>Advertencia de uso:</h3>\r\n\r\n<p>Pintar la puerta antes de ser instalada. Solamente se puede reducir 0.5 cm m&aacute;ximo por lado. Leer clausulas dentro del manual de instrucciones.</p>\r\n\r\n<h3>Dise&ntilde;o: Liso</h3>\r\n\r\n<h3>Materiales: HDF</h3>\r\n\r\n<h3>Tipo de uso: Dom&eacute;stico/Interior</h3>\r\n\r\n<h3>&iquest;D&oacute;nde usarlo?</h3>\r\n\r\n<p>Cocinas.</p>\r\n\r\n<h3>Observaciones</h3>\r\n\r\n<p>No es recomendable para zonas exteriores.</p>\r\n\r\n<h3>Observaciones adicionales</h3>\r\n\r\n<p>Las fotograf&iacute;as y descripci&oacute;n del producto son referenciales.</p>\r\n', 'puerta-de-madera-en-cedro-y-tornillo', 420, 'puerta-de-madera-en-cedro-y-tornillo.jpg', '2020-12-02', 1),
(51, 1, 'Puertas para exterior y con Jambas y Acabado Sellamate', '<h3>Profundidad Del Producto: 4 cm</h3>\r\n\r\n<h3>Recomendaciones De Uso:</h3>\r\n\r\n<p>Para la instalaci&oacute;n adquirir marco, kit de instalaci&oacute;n y bisagras. Medir correctamente el &aacute;rea del vano a utilizar para evitar problemas en la instalaci&oacute;n. Ambientar la puerta a la humedad y temperatura del lugar donde se instalar&aacute;, 72 horas antes. Colocar en forma horizontal una osbre otra aislada del piso. Antes de pintar, limpie y realice un suave lijado. Debe ser pintada en los 6 lados, en un plazo no mayor a 48 horas de haber sido instalada. Dar mantenimiento anualmente.</p>\r\n\r\n<h3>Altura Del Producto: 207 cm</h3>\r\n\r\n<h3>Acabado: Natural</h3>\r\n\r\n<h3>Tipo de Producto: Puerta</h3>\r\n\r\n<h3>Ancho Del Producto: 83 cm</h3>\r\n\r\n<h3>Sub Tipo de Producto: Madera</h3>\r\n\r\n<h3>Material: Madera/Cedro/Tornillo</h3>\r\n\r\n<h3>N&uacute;mero de piezas: 1</h3>\r\n\r\n<h3>Tipo de cierre: Chapa</h3>\r\n\r\n<h3>Estructura interna: Bastidores de wengu&eacute;</h3>\r\n\r\n<h3>Material de relleno: wengu&eacute;</h3>\r\n\r\n<h3>Peso Del Producto: 16.2 kg</h3>\r\n\r\n<h3>Espesor: 40 mm</h3>\r\n\r\n<h3>Advertencia de uso:</h3>\r\n\r\n<p>Pintar la puerta antes de ser instalada. Solamente se puede reducir 0.5 cm m&aacute;ximo por lado. Leer clausulas dentro del manual de instrucciones.</p>\r\n\r\n<h3>Dise&ntilde;o: Liso</h3>\r\n\r\n<h3>Materiales: HDF</h3>\r\n\r\n<h3>Tipo de uso: Dom&eacute;stico/Interior</h3>\r\n\r\n<h3>&iquest;D&oacute;nde usarlo?</h3>\r\n\r\n<p>Cocinas.</p>\r\n\r\n<h3>Observaciones</h3>\r\n\r\n<p>No es recomendable para zonas exteriores.</p>\r\n\r\n<h3>Observaciones adicionales</h3>\r\n\r\n<p>Las fotograf&iacute;as y descripci&oacute;n del producto son referenciales.</p>\r\n', 'puertas-para-exterior-y-con-jambas-y-acabado-sellamate', 450, 'puertas-para-exterior-y-con-jambas-y-acabado-sellamate.jpg', '2020-12-02', 1),
(52, 1, 'Puertas De Cedro Para Exterior', '<h3>Profundidad Del Producto: 4 cm</h3>\r\n\r\n<h3>Recomendaciones De Uso:</h3>\r\n\r\n<p>Para la instalaci&oacute;n adquirir marco, kit de instalaci&oacute;n y bisagras. Medir correctamente el &aacute;rea del vano a utilizar para evitar problemas en la instalaci&oacute;n. Ambientar la puerta a la humedad y temperatura del lugar donde se instalar&aacute;, 72 horas antes. Colocar en forma horizontal una osbre otra aislada del piso. Antes de pintar, limpie y realice un suave lijado. Debe ser pintada en los 6 lados, en un plazo no mayor a 48 horas de haber sido instalada. Dar mantenimiento anualmente.</p>\r\n\r\n<h3>Altura Del Producto: 207 cm</h3>\r\n\r\n<h3>Acabado: Natural</h3>\r\n\r\n<h3>Tipo de Producto: Puerta</h3>\r\n\r\n<h3>Ancho Del Producto: 83 cm</h3>\r\n\r\n<h3>Sub Tipo de Producto: Madera</h3>\r\n\r\n<h3>Material: Madera/Cedro/Tornillo</h3>\r\n\r\n<h3>N&uacute;mero de piezas: 1</h3>\r\n\r\n<h3>Tipo de cierre: Chapa</h3>\r\n\r\n<h3>Estructura interna: Bastidores de wengu&eacute;</h3>\r\n\r\n<h3>Material de relleno: wengu&eacute;</h3>\r\n\r\n<h3>Peso Del Producto: 16.2 kg</h3>\r\n\r\n<h3>Espesor: 40 mm</h3>\r\n\r\n<h3>Advertencia de uso:</h3>\r\n\r\n<p>Pintar la puerta antes de ser instalada. Solamente se puede reducir 0.5 cm m&aacute;ximo por lado. Leer clausulas dentro del manual de instrucciones.</p>\r\n\r\n<h3>Dise&ntilde;o: Liso</h3>\r\n\r\n<h3>Materiales: HDF</h3>\r\n\r\n<h3>Tipo de uso: Dom&eacute;stico/Interior</h3>\r\n\r\n<h3>&iquest;D&oacute;nde usarlo?</h3>\r\n\r\n<p>Cocinas.</p>\r\n\r\n<h3>Observaciones</h3>\r\n\r\n<p>No es recomendable para zonas exteriores.</p>\r\n\r\n<h3>Observaciones adicionales</h3>\r\n\r\n<p>Las fotograf&iacute;as y descripci&oacute;n del producto son referenciales.</p>\r\n', 'puertas-de-cedro-para-exterior', 420, 'puertas-de-cedro-para-exterior.jpg', '0000-00-00', 0),
(53, 1, 'Puerta de Cedro para cochera ', '<h3>Profundidad Del Producto: 4 cm</h3>\r\n\r\n<h3>Recomendaciones De Uso:</h3>\r\n\r\n<p>Para la instalaci&oacute;n adquirir marco, kit de instalaci&oacute;n y bisagras. Medir correctamente el &aacute;rea del vano a utilizar para evitar problemas en la instalaci&oacute;n. Ambientar la puerta a la humedad y temperatura del lugar donde se instalar&aacute;, 72 horas antes. Colocar en forma horizontal una osbre otra aislada del piso. Antes de pintar, limpie y realice un suave lijado. Debe ser pintada en los 6 lados, en un plazo no mayor a 48 horas de haber sido instalada. Dar mantenimiento anualmente.</p>\r\n\r\n<h3>Altura Del Producto: 207 cm</h3>\r\n\r\n<h3>Acabado: Natural</h3>\r\n\r\n<h3>Tipo de Producto: Puerta</h3>\r\n\r\n<h3>Ancho Del Producto: 83 cm</h3>\r\n\r\n<h3>Sub Tipo de Producto: Madera</h3>\r\n\r\n<h3>Material: Madera/Cedro/Tornillo</h3>\r\n\r\n<h3>N&uacute;mero de piezas: 1</h3>\r\n\r\n<h3>Tipo de cierre: Chapa</h3>\r\n\r\n<h3>Estructura interna: Bastidores de wengu&eacute;</h3>\r\n\r\n<h3>Material de relleno: wengu&eacute;</h3>\r\n\r\n<h3>Peso Del Producto: 16.2 kg</h3>\r\n\r\n<h3>Espesor: 40 mm</h3>\r\n\r\n<h3>Advertencia de uso:</h3>\r\n\r\n<p>Pintar la puerta antes de ser instalada. Solamente se puede reducir 0.5 cm m&aacute;ximo por lado. Leer clausulas dentro del manual de instrucciones.</p>\r\n\r\n<h3>Dise&ntilde;o: Liso</h3>\r\n\r\n<h3>Materiales: HDF</h3>\r\n\r\n<h3>Tipo de uso: Dom&eacute;stico/Interior</h3>\r\n\r\n<h3>&iquest;D&oacute;nde usarlo?</h3>\r\n\r\n<p>Cocinas.</p>\r\n\r\n<h3>Observaciones</h3>\r\n\r\n<p>No es recomendable para zonas exteriores.</p>\r\n\r\n<h3>Observaciones adicionales</h3>\r\n\r\n<p>Las fotograf&iacute;as y descripci&oacute;n del producto son referenciales.</p>\r\n', 'puerta-de-cedro-para-cochera', 550, 'puerta-de-cedro-para-cochera.jpg', '2020-12-02', 1),
(54, 3, 'Silla Madera Acacia', '<p>Alto: 84 cm</p>\r\n\r\n<p>Ancho: 55 cm</p>\r\n\r\n<p>Ancho del asiento: 48 cm</p>\r\n\r\n<p>Profundidad: 58 cm</p>\r\n\r\n<p>Color: Madera</p>\r\n\r\n<p>Material: Madera de acacia</p>\r\n\r\n<p>Material de la estructura: Madera</p>\r\n\r\n<p>Apoya brazos: Si</p>\r\n\r\n<p>Apilable: Si</p>\r\n\r\n<p>Plegable: No</p>\r\n\r\n<p>Tipo: Sillas</p>\r\n\r\n<p>Peso del producto: 6.40 Kg</p>\r\n\r\n<p>Caracter&iacute;sticas:</p>\r\n\r\n<p>Silla para&nbsp;jard&iacute;n y&nbsp;terraza&nbsp;con brazos en madera de acacia, perfecta para a&ntilde;adir a la&nbsp;decoraci&oacute;n&nbsp;del&nbsp;exterior.</p>\r\n\r\n<p>Grupo de producto: Terrazas</p>\r\n\r\n<p>Familia: Aire Libre</p>\r\n', 'silla-madera-acacia', 120, 'silla-madera-acacia.jpg', '2020-12-02', 1),
(55, 3, 'Silla para comedor/ tapiz blanco', '<p>Material de la estructura: Madera</p>\r\n\r\n<p>Resiste: 120 kg</p>\r\n\r\n<p>Alto: 88 cm</p>\r\n\r\n<p>Ancho: 44 cm</p>\r\n\r\n<p>Profundidad: 57 cm</p>\r\n\r\n<p>Color: Blanco</p>\r\n\r\n<p>Apoya brazos: No</p>\r\n\r\n<p>Material del asiento: Cuerina</p>\r\n\r\n<p>Material del respaldar: Cuerina</p>\r\n\r\n<p>Apilable: No</p>\r\n\r\n<p>Peso del producto: 12.5 kg</p>\r\n\r\n<p>Recomendaciones:</p>\r\n\r\n<p>Usa productos especiales para su limpieza.</p>\r\n\r\n<p>Grupo de producto: Comedores</p>\r\n', 'silla-para-comedor-tapiz-blanco', 120, 'silla-para-comedor-tapiz-blanco.jpg', '2020-12-02', 3),
(56, 3, 'Silla de Madera para Bar', '<h3>Altura Del Producto: 84</h3>\r\n\r\n<h3>Tipo de Producto:&nbsp;Muebles de interior</h3>\r\n\r\n<h3>Ancho Del Producto: 42</h3>\r\n\r\n<h3>Color: Natural</h3>\r\n\r\n<h3>Reclinable: No</h3>\r\n\r\n<h3>Material de la estructura: 100% Madera Caoba</h3>\r\n\r\n<h3>Cantidad de piezas: 1</h3>\r\n\r\n<h3>Observaciones adicionales:</h3>\r\n\r\n<p>Las fotograf&iacute;as y descripci&oacute;n del producto son referenciales.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'silla-de-madera-para-bar', 139, 'silla-de-madera-para-bar.jpg', '0000-00-00', 0),
(57, 3, 'Silla de Madera / Pino', '<p>Material de la estructura: Madera Pino</p>\r\n\r\n<p>Resiste: 120 kg</p>\r\n\r\n<p>Alto: 88 cm</p>\r\n\r\n<p>Ancho: 44 cm</p>\r\n\r\n<p>Profundidad: 57 cm</p>\r\n\r\n<p>Color: Natural</p>\r\n\r\n<p>Apoya brazos: No</p>\r\n\r\n<p>Apilable: No</p>\r\n\r\n<p>Peso del producto: 12.5 kg</p>\r\n\r\n<p>Recomendaciones:</p>\r\n\r\n<p>Usa productos especiales para su limpieza.</p>\r\n\r\n<p>Grupo de producto: Comedores</p>\r\n', 'silla-de-madera-pino', 120, 'silla-de-madera-pino.jpg', '0000-00-00', 0),
(58, 3, 'Silla mecedora de madera', '<p>Largo(cm): 78</p>\r\n\r\n<p>Ancho(cm): 56</p>\r\n\r\n<p>Alto(cm): 108</p>\r\n\r\n<p>Material: Nogal</p>\r\n\r\n<p>Color: Beige</p>\r\n\r\n<p>Material de la estructura: Madera</p>\r\n', 'silla-mecedora-de-madera', 200, 'silla-mecedora-de-madera_1606943254.jpg', '2020-12-02', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `sales_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `pay_id`, `sales_date`) VALUES
(9, 9, 'PAY-1RT494832H294925RLLZ7TZA', '2018-05-10'),
(10, 9, 'PAY-21700797GV667562HLLZ7ZVY', '2018-05-10'),
(11, 13, 'PAYID-L7EAYPA3PY91381J5035540A', '2020-12-02'),
(12, 13, 'PAYID-L7EDMLA8YH38401M3514303R', '2020-12-03'),
(13, 13, 'PAYID-L7EELGQ1UY03646JX177823C', '2020-12-03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(1, 'admin@gmail.com', '$2y$10$7EDnF3OJmINYQPzsm5tqJuv3fwKa9cHEIiAzAeyW9SwQT9jVTCumC', 1, 'feliciano', 'Palomino', '', '', 'profile.jpg', 1, '', '', '2018-05-01'),
(13, 'daniel.dgp.97@gmail.com', '$2y$10$dqoJFgZ.hc4xT2JJ6EdlHeEuXe7eVIZh6OAQEmcc3E5bUr9rirBJO', 0, 'Daniel', 'Guillen ', 'Av.Colectora Mz.G Lt.26', '940098212', 'male2.png', 1, 'VKlB6q78c3ye', 'OGk8LUcihsxCl2m', '2020-12-01'),
(16, 'diego@gmail.com', '$2y$10$AnkRkDcuDxV8suiPyX4AO.Mnk0lQog5tGuqYWvIXApLMIVWT2dOf6', 0, 'Diego', 'Rojas', '', '', '', 1, 'cQCL3EYJTbrA', '', '2020-12-02');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT de la tabla `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
