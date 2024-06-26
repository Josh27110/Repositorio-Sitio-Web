-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-06-2024 a las 04:57:52
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
-- Base de datos: `ecommerceweb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_color`
--

CREATE TABLE `tbl_color` (
  `color_id` int(11) NOT NULL,
  `color_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `tbl_color`
--

INSERT INTO `tbl_color` (`color_id`, `color_name`) VALUES
(1, 'Red'),
(2, 'Black'),
(3, 'Blue'),
(4, 'Yellow'),
(5, 'Green'),
(6, 'White'),
(7, 'Orange'),
(8, 'Brown'),
(9, 'Tan'),
(10, 'Pink'),
(11, 'Mixed'),
(12, 'Lightblue'),
(13, 'Violet'),
(14, 'Light Purple'),
(15, 'Salmon'),
(16, 'Gold'),
(17, 'Gray'),
(18, 'Ash'),
(19, 'Maroon'),
(20, 'Silver'),
(21, 'Dark Clay'),
(22, 'Cognac'),
(23, 'Coffee'),
(24, 'Charcoal'),
(25, 'Navy'),
(26, 'Fuchsia'),
(27, 'Olive'),
(28, 'Burgundy'),
(29, 'Midnight Blue');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_country`
--

CREATE TABLE `tbl_country` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `tbl_country`
--

INSERT INTO `tbl_country` (`country_id`, `country_name`) VALUES
(1, 'Afghanistan'),
(2, 'Albania'),
(3, 'Algeria'),
(4, 'American Samoa'),
(5, 'Andorra'),
(6, 'Angola'),
(7, 'Anguilla'),
(8, 'Antarctica'),
(9, 'Antigua and Barbuda'),
(10, 'Argentina'),
(11, 'Armenia'),
(12, 'Aruba'),
(13, 'Australia'),
(14, 'Austria'),
(15, 'Azerbaijan'),
(16, 'Bahamas'),
(17, 'Bahrain'),
(18, 'Bangladesh'),
(19, 'Barbados'),
(20, 'Belarus'),
(21, 'Belgium'),
(22, 'Belize'),
(23, 'Benin'),
(24, 'Bermuda'),
(25, 'Bhutan'),
(26, 'Bolivia'),
(27, 'Bosnia and Herzegovina'),
(28, 'Botswana'),
(29, 'Bouvet Island'),
(30, 'Brazil'),
(31, 'British Indian Ocean Territory'),
(32, 'Brunei Darussalam'),
(33, 'Bulgaria'),
(34, 'Burkina Faso'),
(35, 'Burundi'),
(36, 'Cambodia'),
(37, 'Cameroon'),
(38, 'Canada'),
(39, 'Cape Verde'),
(40, 'Cayman Islands'),
(41, 'Central African Republic'),
(42, 'Chad'),
(43, 'Chile'),
(44, 'China'),
(45, 'Christmas Island'),
(46, 'Cocos (Keeling) Islands'),
(47, 'Colombia'),
(48, 'Comoros'),
(49, 'Congo'),
(50, 'Cook Islands'),
(51, 'Costa Rica'),
(52, 'Croatia (Hrvatska)'),
(53, 'Cuba'),
(54, 'Cyprus'),
(55, 'Czech Republic'),
(56, 'Denmark'),
(57, 'Djibouti'),
(58, 'Dominica'),
(59, 'Dominican Republic'),
(60, 'East Timor'),
(61, 'Ecuador'),
(62, 'Egypt'),
(63, 'El Salvador'),
(64, 'Equatorial Guinea'),
(65, 'Eritrea'),
(66, 'Estonia'),
(67, 'Ethiopia'),
(68, 'Falkland Islands (Malvinas)'),
(69, 'Faroe Islands'),
(70, 'Fiji'),
(71, 'Finland'),
(72, 'France'),
(73, 'France, Metropolitan'),
(74, 'French Guiana'),
(75, 'French Polynesia'),
(76, 'French Southern Territories'),
(77, 'Gabon'),
(78, 'Gambia'),
(79, 'Georgia'),
(80, 'Germany'),
(81, 'Ghana'),
(82, 'Gibraltar'),
(83, 'Guernsey'),
(84, 'Greece'),
(85, 'Greenland'),
(86, 'Grenada'),
(87, 'Guadeloupe'),
(88, 'Guam'),
(89, 'Guatemala'),
(90, 'Guinea'),
(91, 'Guinea-Bissau'),
(92, 'Guyana'),
(93, 'Haiti'),
(94, 'Heard and Mc Donald Islands'),
(95, 'Honduras'),
(96, 'Hong Kong'),
(97, 'Hungary'),
(98, 'Iceland'),
(99, 'India'),
(100, 'Isle of Man'),
(101, 'Indonesia'),
(102, 'Iran (Islamic Republic of)'),
(103, 'Iraq'),
(104, 'Ireland'),
(105, 'Israel'),
(106, 'Italy'),
(107, 'Ivory Coast'),
(108, 'Jersey'),
(109, 'Jamaica'),
(110, 'Japan'),
(111, 'Jordan'),
(112, 'Kazakhstan'),
(113, 'Kenya'),
(114, 'Kiribati'),
(115, 'Korea, Democratic Peoples Republic of'),
(116, 'Korea, Republic of'),
(117, 'Kosovo'),
(118, 'Kuwait'),
(119, 'Kyrgyzstan'),
(120, 'Lao Peoples Democratic Republic'),
(121, 'Latvia'),
(122, 'Lebanon'),
(123, 'Lesotho'),
(124, 'Liberia'),
(125, 'Libyan Arab Jamahiriya'),
(126, 'Liechtenstein'),
(127, 'Lithuania'),
(128, 'Luxembourg'),
(129, 'Macau'),
(130, 'Macedonia'),
(131, 'Madagascar'),
(132, 'Malawi'),
(133, 'Malaysia'),
(134, 'Maldives'),
(135, 'Mali'),
(136, 'Malta'),
(137, 'Marshall Islands'),
(138, 'Martinique'),
(139, 'Mauritania'),
(140, 'Mauritius'),
(141, 'Mayotte'),
(142, 'Mexico'),
(143, 'Micronesia, Federated States of'),
(144, 'Moldova, Republic of'),
(145, 'Monaco'),
(146, 'Mongolia'),
(147, 'Montenegro'),
(148, 'Montserrat'),
(149, 'Morocco'),
(150, 'Mozambique'),
(151, 'Myanmar'),
(152, 'Namibia'),
(153, 'Nauru'),
(154, 'Nepal'),
(155, 'Netherlands'),
(156, 'Netherlands Antilles'),
(157, 'New Caledonia'),
(158, 'New Zealand'),
(159, 'Nicaragua'),
(160, 'Niger'),
(161, 'Nigeria'),
(162, 'Niue'),
(163, 'Norfolk Island'),
(164, 'Northern Mariana Islands'),
(165, 'Norway'),
(166, 'Oman'),
(167, 'Pakistan'),
(168, 'Palau'),
(169, 'Palestine'),
(170, 'Panama'),
(171, 'Papua New Guinea'),
(172, 'Paraguay'),
(173, 'Peru'),
(174, 'Philippines'),
(175, 'Pitcairn'),
(176, 'Poland'),
(177, 'Portugal'),
(178, 'Puerto Rico'),
(179, 'Qatar'),
(180, 'Reunion'),
(181, 'Romania'),
(182, 'Russian Federation'),
(183, 'Rwanda'),
(184, 'Saint Kitts and Nevis'),
(185, 'Saint Lucia'),
(186, 'Saint Vincent and the Grenadines'),
(187, 'Samoa'),
(188, 'San Marino'),
(189, 'Sao Tome and Principe'),
(190, 'Saudi Arabia'),
(191, 'Senegal'),
(192, 'Serbia'),
(193, 'Seychelles'),
(194, 'Sierra Leone'),
(195, 'Singapore'),
(196, 'Slovakia'),
(197, 'Slovenia'),
(198, 'Solomon Islands'),
(199, 'Somalia'),
(200, 'South Africa'),
(201, 'South Georgia South Sandwich Islands'),
(202, 'Spain'),
(203, 'Sri Lanka'),
(204, 'St. Helena'),
(205, 'St. Pierre and Miquelon'),
(206, 'Sudan'),
(207, 'Suriname'),
(208, 'Svalbard and Jan Mayen Islands'),
(209, 'Swaziland'),
(210, 'Sweden'),
(211, 'Switzerland'),
(212, 'Syrian Arab Republic'),
(213, 'Taiwan'),
(214, 'Tajikistan'),
(215, 'Tanzania, United Republic of'),
(216, 'Thailand'),
(217, 'Togo'),
(218, 'Tokelau'),
(219, 'Tonga'),
(220, 'Trinidad and Tobago'),
(221, 'Tunisia'),
(222, 'Turkey'),
(223, 'Turkmenistan'),
(224, 'Turks and Caicos Islands'),
(225, 'Tuvalu'),
(226, 'Uganda'),
(227, 'Ukraine'),
(228, 'United Arab Emirates'),
(229, 'United Kingdom'),
(230, 'United States'),
(231, 'United States minor outlying islands'),
(232, 'Uruguay'),
(233, 'Uzbekistan'),
(234, 'Vanuatu'),
(235, 'Vatican City State'),
(236, 'Venezuela'),
(237, 'Vietnam'),
(238, 'Virgin Islands (British)'),
(239, 'Virgin Islands (U.S.)'),
(240, 'Wallis and Futuna Islands'),
(241, 'Western Sahara'),
(242, 'Yemen'),
(243, 'Zaire'),
(244, 'Zambia'),
(245, 'Zimbabwe');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `cust_id` int(11) NOT NULL,
  `cust_name` varchar(100) NOT NULL,
  `cust_cname` varchar(100) NOT NULL,
  `cust_email` varchar(100) NOT NULL,
  `cust_phone` varchar(50) NOT NULL,
  `cust_country` int(11) NOT NULL,
  `cust_address` text NOT NULL,
  `cust_city` varchar(100) NOT NULL,
  `cust_state` varchar(100) NOT NULL,
  `cust_zip` varchar(30) NOT NULL,
  `cust_b_name` varchar(100) NOT NULL,
  `cust_b_cname` varchar(100) NOT NULL,
  `cust_b_phone` varchar(50) NOT NULL,
  `cust_b_country` int(11) NOT NULL,
  `cust_b_address` text NOT NULL,
  `cust_b_city` varchar(100) NOT NULL,
  `cust_b_state` varchar(100) NOT NULL,
  `cust_b_zip` varchar(30) NOT NULL,
  `cust_s_name` varchar(100) NOT NULL,
  `cust_s_cname` varchar(100) NOT NULL,
  `cust_s_phone` varchar(50) NOT NULL,
  `cust_s_country` int(11) NOT NULL,
  `cust_s_address` text NOT NULL,
  `cust_s_city` varchar(100) NOT NULL,
  `cust_s_state` varchar(100) NOT NULL,
  `cust_s_zip` varchar(30) NOT NULL,
  `cust_password` varchar(100) NOT NULL,
  `cust_token` varchar(255) NOT NULL,
  `cust_datetime` varchar(100) NOT NULL,
  `cust_timestamp` varchar(100) NOT NULL,
  `cust_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `tbl_customer`
--

INSERT INTO `tbl_customer` (`cust_id`, `cust_name`, `cust_cname`, `cust_email`, `cust_phone`, `cust_country`, `cust_address`, `cust_city`, `cust_state`, `cust_zip`, `cust_b_name`, `cust_b_cname`, `cust_b_phone`, `cust_b_country`, `cust_b_address`, `cust_b_city`, `cust_b_state`, `cust_b_zip`, `cust_s_name`, `cust_s_cname`, `cust_s_phone`, `cust_s_country`, `cust_s_address`, `cust_s_city`, `cust_s_state`, `cust_s_zip`, `cust_password`, `cust_token`, `cust_datetime`, `cust_timestamp`, `cust_status`) VALUES
(1, 'Liam Moore', 'WV Company', 'liam@mail.com', '7458965410', 230, '788 Cottonwood Lane', 'Nashville', 'TN', '37072', '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', '', '', '5f4dcc3b5aa765d61d8327deb882cf99', '0081e99a29cacd4b553db15c5c5c047e', '2022-03-17 11:09:34', '1647544174', 1),
(2, 'Chad N. Carney', 'none', 'chad@mail.com', '4785690000', 230, '469 Diamond Street', 'Charlotte', 'NC', '28808', 'Chad N. Carney', 'none', '7477474440', 230, '469 Diamond Street', 'Charlotte', 'NC', '28808', 'Chad N. Carney', 'none', '7477474440', 230, '469 Diamond Street', 'Charlotte', 'NC', '28808', '5f4dcc3b5aa765d61d8327deb882cf99', 'ca87666426f4bc5c5128a96dabfecefb', '2022-03-17 11:15:26', '1647544526', 1),
(3, 'Jean Collins', 'none', 'jean@mail.com', '1478523698', 230, '1508 Crosswind Drive', 'Owensboro', 'KY', '13040', 'Jean Collins', 'none', '1478523698', 230, '1508 Crosswind Drive', 'Owensboro', 'KY', '13040', 'Jean Collins', 'none', '1478523698', 230, '1508 Crosswind Drive', 'Owensboro', 'KY', '13040', '5f4dcc3b5aa765d61d8327deb882cf99', '6b3439bf95644a36a1ed92bef374ebb7', '2022-03-20 10:29:39', '1647797379', 1),
(4, 'Annie Young', 'XYZ Company', 'annie@mail.com', '7770001144', 230, '79 Burwell Heights Road', 'Beaumont', 'TX', '77400', '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', '', '', '5f4dcc3b5aa765d61d8327deb882cf99', 'fc8f07537cdd6b3f89eb94f1cad78060', '2022-03-20 10:31:35', '1647797495', 1),
(5, 'Matthew Morales', 'ABC Company', 'matthew@mail.com', '7896587450', 230, '81 Felosa Drive', 'Mira Loma', 'CA', '91002', 'Matthew Morales', 'ABC Company', '7896587450', 230, '81 Felosa Drive', 'Mira Loma', 'CA', '91002', 'Matthew Morales', 'ABC Company', '7896587450', 230, '81 Felosa Drive', 'Mira Loma', 'CA', '91002', '5f4dcc3b5aa765d61d8327deb882cf99', 'c391105908fe01a636bfa5fc39eed33d', '2022-03-20 10:33:15', '1647797595', 1),
(6, 'August F. Freels', 'none', 'august@mail.com', '1478547850', 230, '96 Johnny Lane', 'Milwaukee', 'WI', '55550', 'August F. Freels', 'none', '1478547850', 230, '96 Johnny Lane', 'Milwaukee', 'WI', '55550', 'August F. Freels', 'none', '1478547850', 230, '96 Johnny Lane', 'Milwaukee', 'WI', '55550', '5f4dcc3b5aa765d61d8327deb882cf99', 'decc1fc2c5dd9935df82c0233002ce66', '2022-03-20 10:34:08', '1647797648', 1),
(7, 'Carl M. Dineen', 'none', 'carl@mail.com', '789878987', 230, '77 Lyndon Street', 'Kutztown', 'PA', '19855', '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', '', '', '5f4dcc3b5aa765d61d8327deb882cf99', 'c79bac688e70cc9665a2164c57ec172c', '2022-03-20 10:35:02', '1647797702', 1),
(8, 'Benjamin B. Louque', 'none', 'benjamin@mail.com', '7777889955', 230, '32 Bridge Street', 'Tulsa', 'OK', '74220', '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', '', '', '5f4dcc3b5aa765d61d8327deb882cf99', '5a0e096368f9669508af7b7203382b07', '2022-03-20 10:36:31', '1647797791', 1),
(9, 'Joe K. Richardson', 'none', 'joe@mail.com', '4444445555', 230, '17 Derek Drive', 'Youngstown', 'OH', '44500', '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', '', '', '5f4dcc3b5aa765d61d8327deb882cf99', 'e74ac0178d7833988d4b1625c42ba26e', '2022-03-20 10:37:18', '1647797838', 1),
(10, 'Will Williams', 'Test Company', 'williams@mail.com', '7410000000', 230, '39 Marcus Street', 'Anniston', 'AL', '37207', 'Will Williams', 'Test Company', '7410000000', 230, '39 Marcus Street', 'Anniston', 'AL', '37207', 'Will Williams', 'Test Company', '7410000000', 230, '39 Marcus Street', 'Anniston', 'AL', '37207', '5f4dcc3b5aa765d61d8327deb882cf99', '941c9265fb920f691cf01b12a15f80f8', '2022-03-20 11:15:59', '1647800159', 1),
(12, 'kein', 'asasa', 'kein@mail.com', '5566778899', 19, 'asas', 'asas', 'asas', '55090', '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', '', '', '25d55ad283aa400af464c76d713c07ad', 'bdb83def3bde0538d1600a97c5dbed60', '2024-06-25 07:54:26', '1719370466', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_customer_message`
--

CREATE TABLE `tbl_customer_message` (
  `customer_message_id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `order_detail` text NOT NULL,
  `cust_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_end_category`
--

CREATE TABLE `tbl_end_category` (
  `ecat_id` int(11) NOT NULL,
  `ecat_name` varchar(255) NOT NULL,
  `mcat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `tbl_end_category`
--

INSERT INTO `tbl_end_category` (`ecat_id`, `ecat_name`, `mcat_id`) VALUES
(1, 'Sombreros', 1),
(2, 'Gafas de sol', 1),
(3, 'Relojes', 1),
(4, 'Sandalias', 2),
(5, 'Botas', 2),
(6, 'Tops', 3),
(7, 'Camiseta', 3),
(8, 'Relojes', 4),
(9, 'Lentes de sol', 4),
(11, 'Zapatos deportivos', 2),
(12, 'Sandalias', 6),
(13, 'Zapatos planos', 6),
(14, 'Sudaderas', 7),
(15, 'Abrigos y chamarras', 7),
(16, 'Pantalones', 8),
(17, 'Jeans', 8),
(18, 'Joggers', 8),
(19, 'Shorts', 8),
(20, 'Camisetas', 9),
(21, 'Camisas casuales', 9),
(22, 'Camisas formales', 9),
(23, 'Camisas de polo', 9),
(24, 'Vestidos', 9),
(25, 'Zapatos casuales', 2),
(26, 'Chicos', 10),
(27, 'Chicas', 10),
(28, 'Chicos', 11),
(29, 'Chicas', 11),
(30, 'Chicos', 12),
(31, 'Chicas', 12),
(32, 'Vestidos', 7),
(33, 'Tops', 7),
(34, 'Camisetas y chalecos', 7),
(35, 'Pantalones y mallas', 7),
(36, 'Ropa de deporte', 7),
(37, 'Ropa de talla grande', 7),
(38, 'Calcetines y medias', 7),
(39, 'Fragancias', 3),
(40, 'Cuidado de la piel', 3),
(41, 'Cuidado del cabello', 3),
(42, 'Joyas', 4),
(43, 'Cuidado de los ojos', 3),
(44, 'Labios', 3),
(45, 'Cuidado del rostro', 3),
(46, 'Sets de regalo', 3),
(47, 'Bufandas y accesorios para la cabeza', 4),
(48, 'Multipacks', 4),
(49, 'Otros accesorios', 4),
(50, 'Zapatos de tacón', 6),
(51, 'Zapatillas deportivas', 6),
(52, 'Zapatos deportivos', 6),
(53, 'Botas', 6),
(54, 'Zapatos cómodos', 6),
(55, 'Zapatillas y zapatos casuales', 6),
(56, 'Zapatos formales', 2),
(57, 'Cinturones', 1),
(58, 'Multipacks', 1),
(59, 'Otros accesorios', 1),
(60, 'Bolsos', 4),
(61, 'Teléfonos móviles y accesorios', 14),
(62, 'Auriculares', 14),
(63, 'Seguridad y vigilancia', 14),
(64, 'Televisión y video', 14),
(65, 'GPS y navegación', 14),
(66, 'Audio para el hogar', 14),
(67, 'Componentes de computadora', 15),
(68, 'Computadoras y tabletas', 15),
(69, 'Accesorios para laptops', 15),
(70, 'Impresoras y monitores', 15),
(71, 'Componentes externos', 15),
(72, 'Productos de redes', 15),
(73, 'Suministros y equipos médicos', 16),
(74, 'Cuidado bucal', 16),
(75, 'Cuidado de la visión', 16),
(76, 'Vitaminas y suplementos dietéticos', 16),
(77, 'Cuidado del bebé y del niño', 17),
(78, 'Suministros para el hogar', 17),
(79, 'Papelería y suministros para envolver regalos', 17);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_faq`
--

CREATE TABLE `tbl_faq` (
  `faq_id` int(11) NOT NULL,
  `faq_title` varchar(255) NOT NULL,
  `faq_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `tbl_faq`
--

INSERT INTO `tbl_faq` (`faq_id`, `faq_title`, `faq_content`) VALUES
(1, '¿Cómo encontrar un artículo?', '<h3 class=\"checkout-complete-box font-bold txt16\" style=\"box-sizing: inherit; text-rendering: optimizeLegibility; margin: 0.2rem 0px 0.5rem; padding: 0px; line-height: 1.4; background-color: rgb(250, 250, 250);\"><font color=\"#222222\" face=\"opensans, Helvetica Neue, Helvetica, Helvetica, Arial, sans-serif\"><span style=\"font-size: 15.7143px;\">Tenemos una amplia gama de fabulosos productos para elegir.</span></font></h3><h3 class=\"checkout-complete-box font-bold txt16\" style=\"box-sizing: inherit; text-rendering: optimizeLegibility; margin: 0.2rem 0px 0.5rem; padding: 0px; line-height: 1.4; background-color: rgb(250, 250, 250);\"><span style=\"font-size: 15.7143px; color: rgb(34, 34, 34); font-family: opensans, \"Helvetica Neue\", Helvetica, Helvetica, Arial, sans-serif;\">Consejo 1: si está buscando un producto específico, utilice el cuadro de búsqueda de palabras clave ubicado en la parte superior del sitio. ¡Simplemente escribe lo que estás buscando y prepárate para sorprenderte!</span></h3><h3 class=\"checkout-complete-box font-bold txt16\" style=\"box-sizing: inherit; text-rendering: optimizeLegibility; margin: 0.2rem 0px 0.5rem; padding: 0px; line-height: 1.4; background-color: rgb(250, 250, 250);\"><font color=\"#222222\" face=\"opensans, Helvetica Neue, Helvetica, Helvetica, Arial, sans-serif\"><span style=\"font-size: 15.7143px;\">Consejo 2: Si desea explorar una categoría de productos, utilice las Categorías de tienda en el menú superior y navegue por sus categorías favoritas, donde presentaremos los mejores productos de cada una.</span></font><br><br></h3>\r\n'),
(2, '¿Cuál es su política de devolución?', '<p><span style=\"color: rgb(10, 10, 10); font-family: opensans, &quot;Helvetica Neue&quot;, Helvetica, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\">Tiene 15 días para realizar una solicitud de reembolso después de que se haya entregado su pedido.</span><br></p>\r\n'),
(3, ' Recibí un artículo defectuoso/dañado, ¿puedo obtener un reembolso?', '<p>En caso de que el artículo que recibió esté dañado o defectuoso, puede devolver un artículo en las mismas condiciones en que lo recibió con la caja y/o embalaje original intactos. Una vez que recibamos el artículo devuelto, lo inspeccionaremos y, si encontramos que el artículo está defectuoso o dañado, procesaremos el reembolso junto con los gastos de envío incurridos.<br></p>\r\n'),
(4, '¿Cuándo no son posibles las \"Devoluciones\"?', '<p class=\"a  \" style=\"box-sizing: inherit; text-rendering: optimizeLegibility; line-height: 1.6; margin-bottom: 0.714286rem; padding: 0px; font-size: 14px; color: rgb(10, 10, 10); font-family: opensans, &quot;Helvetica Neue&quot;, Helvetica, Helvetica, Arial, sans-serif; background-color: rgb(250, 250, 250);\">Hay algunos escenarios concretos en los que nos resulta difícil respaldar las devoluciones:</p><ol style=\"box-sizing: inherit; line-height: 1.6; margin-right: 0px; margin-bottom: 0px; margin-left: 1.25rem; padding: 0px; list-style-position: outside; color: rgb(10, 10, 10); font-family: opensans, &quot;Helvetica Neue&quot;, Helvetica, Helvetica, Arial, sans-serif; font-size: 14px; background-color: rgb(250, 250, 250);\"><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">La solicitud de devolución se realiza fuera del plazo indicado, de 15 días desde la entrega.</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">El producto está usado, dañado o no está en las mismas condiciones en que lo recibió.</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Categorías específicas como ropa interior, lencería, calcetines y obsequios de ropa, etc.</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Productos defectuosos que están cubiertos por la garantía del fabricante.</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Cualquier artículo consumible que haya sido utilizado o instalado.</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Productos con números de serie faltantes o alterados.</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Todo lo que falta en el paquete que recibió, incluidas etiquetas de precio, etiquetas, embalaje original, obsequios y accesorios.</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Artículos frágiles, artículos relacionados con la higiene.</li></ol>\r\n'),
(5, '¿Cuáles son los artículos que no se pueden devolver?', '<p>Los artículos que no se pueden devolver son:</p><p>Artículos en liquidación claramente marcados como tales y que muestran una política de no devolución<br></p><p>Cuando las notas de oferta lo indiquen específicamente son artículos que no se pueden devolver.</p><p>Artículos que se incluyen en los siguientes tipos de productos:</p><ul><li>Ropa interior</li><li>Lencería</li><li>Medias</li><li>Software</li><li>Álbumes de música</li><li>Libros</li><li>Trajes de baño</li><li>Belleza y amp; Fragancias</li><li>Calcetería</li></ul><p>Además, los artículos consumibles que se utilicen o instalen no se pueden devolver. Como se describe en Derechos de protección del consumidor y en la sección relativa a artículos no retornables<br></p>');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_language`
--

CREATE TABLE `tbl_language` (
  `lang_id` int(11) NOT NULL,
  `lang_name` varchar(255) NOT NULL,
  `lang_value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `tbl_language`
--

INSERT INTO `tbl_language` (`lang_id`, `lang_name`, `lang_value`) VALUES
(1, 'Moneda', '$'),
(2, 'Buscar Producto', 'Buscar Producto'),
(3, 'Buscar', 'Buscar'),
(4, 'Enviar', 'Enviar'),
(5, 'Actualizar', 'Actualizar'),
(6, 'Leer Más', 'Leer Más'),
(7, 'Serial', 'Serial'),
(8, 'Foto', 'Foto'),
(9, 'Iniciar Sesión', 'Iniciar Sesión'),
(10, 'Inicio de Sesión de Cliente', 'Inicio de Sesión de Cliente'),
(11, 'Haga clic aquí para iniciar sesión', 'Haga clic aquí para iniciar sesión'),
(12, 'Volver a la Página de Inicio de Sesión', 'Volver a la Página de Inicio de Sesión'),
(13, 'Conectado como', 'Conectado como'),
(14, 'Cerrar Sesión', 'Cerrar Sesión'),
(15, 'Registrarse', 'Registrarse'),
(16, 'Registro de Cliente', 'Registro de Cliente'),
(17, 'Registro Exitoso', 'Registro Exitoso'),
(18, 'Carrito', 'Carrito'),
(19, 'Ver Carrito', 'Ver Carrito'),
(20, 'Actualizar Carrito', 'Actualizar Carrito'),
(21, 'Volver al Carrito', 'Volver al Carrito'),
(22, 'Pagar', 'Pagar'),
(23, 'Proceder al Pago', 'Proceder al Pago'),
(24, 'Pedidos', 'Pedidos'),
(25, 'Historial de Pedidos', 'Historial de Pedidos'),
(26, 'Detalles del Pedido', 'Detalles del Pedido'),
(27, 'Fecha y Hora de Pago', 'Fecha y Hora de Pago'),
(28, 'ID de Transacción', 'ID de Transacción'),
(29, 'Cantidad Pagada', 'Cantidad Pagada'),
(30, 'Estado del Pago', 'Estado del Pago'),
(31, 'Método de Pago', 'Método de Pago'),
(32, 'ID de Pago', 'ID de Pago'),
(33, 'Sección de Pago', 'Sección de Pago'),
(34, 'Seleccionar Método de Pago', 'Seleccionar Método de Pago'),
(35, 'Seleccionar un Método', 'Seleccionar un Método'),
(36, 'PayPal', 'PayPal'),
(37, 'Stripe', 'Stripe'),
(38, 'Depósito Bancario', 'Depósito Bancario'),
(39, 'Número de Tarjeta', 'Número de Tarjeta'),
(40, 'CVV', 'CVV'),
(41, 'Mes', 'Mes'),
(42, 'Año', 'Año'),
(43, 'Enviar a estos Detalles', 'Enviar a estos Detalles'),
(44, 'Información de la Transacción', 'Información de la Transacción'),
(45, 'Incluya el ID de la transacción y otra información correctamente', 'Incluya el ID de la transacción y otra información correctamente'),
(46, 'Pagar Ahora', 'Pagar Ahora'),
(47, 'Nombre del Producto', 'Nombre del Producto'),
(48, 'Detalles del Producto', 'Detalles del Producto'),
(49, 'Categorías', 'Categorías'),
(50, 'Categoría:', 'Categoría:'),
(51, 'Todos los Productos Bajo', 'Todos los Productos Bajo'),
(52, 'Seleccionar Tamaño', 'Seleccionar Tamaño'),
(53, 'Seleccionar Color', 'Seleccionar Color'),
(54, 'Precio del Producto', 'Precio del Producto'),
(55, 'Cantidad', 'Cantidad'),
(56, 'Agotado', 'Agotado'),
(57, 'Compartir Esto', 'Compartir Esto'),
(58, 'Compartir Este Producto', 'Compartir Este Producto'),
(59, 'Descripción del Producto', 'Descripción del Producto'),
(60, 'Características', 'Características'),
(61, 'Condiciones', 'Condiciones'),
(62, 'Política de Devoluciones', 'Política de Devoluciones'),
(63, 'Reseñas', 'Reseñas'),
(64, 'Reseña', 'Reseña'),
(65, 'Dar una Reseña', 'Dar una Reseña'),
(66, 'Escribe tu comentario (Opcional)', 'Escribe tu comentario (Opcional)'),
(67, 'Enviar Reseña', 'Enviar Reseña'),
(68, '¡Ya has dado una calificación!', '¡Ya has dado una calificación!'),
(69, 'Debes iniciar sesión para dar una reseña', 'Debes iniciar sesión para dar una reseña'),
(70, 'No se encontró descripción', 'No se encontró descripción'),
(71, 'No se encontró característica', 'No se encontró característica'),
(72, 'No se encontró condición', 'No se encontró condición'),
(73, 'No se encontró política de devoluciones', 'No se encontró política de devoluciones'),
(74, 'No se encontró reseña', 'No se encontró reseña'),
(75, 'Nombre del Cliente', 'Nombre del Cliente'),
(76, 'Comentario', 'Comentario'),
(77, 'Comentarios', 'Comentarios'),
(78, 'Calificación', 'Calificación'),
(79, 'Anterior', 'Anterior'),
(80, 'Siguiente', 'Siguiente'),
(81, 'Sub Total', 'Subtotal'),
(82, 'Total', 'Total'),
(83, 'Acción', 'Acción'),
(84, 'Costo de Envío', 'Costo de Envío'),
(85, 'Continuar Comprando', 'Continuar Comprando'),
(86, 'Actualizar Dirección de Facturación', 'Actualizar Dirección de Facturación'),
(87, 'Actualizar Dirección de Envío', 'Actualizar Dirección de Envío'),
(88, 'Actualizar Información de Facturación y Envío', 'Actualizar Información de Facturación y Envío'),
(89, 'Tablero', 'Tablero'),
(90, 'Bienvenido al Tablero', 'Bienvenido al Tablero'),
(91, 'Volver al Tablero', 'Volver al Tablero'),
(92, 'Suscribirse', 'Suscribirse'),
(93, 'Suscribirse a Nuestro Boletín', 'Suscribirse a Nuestro Boletín'),
(94, 'Dirección de Correo Electrónico', 'Dirección de Correo Electrónico'),
(95, 'Ingrese su Dirección de Correo Electrónico', 'Ingrese su Dirección de Correo Electrónico'),
(96, 'Contraseña', 'Contraseña'),
(97, 'Olvidar Contraseña', 'Olvidar Contraseña'),
(98, 'Reingrese Contraseña', 'Reingrese Contraseña'),
(99, 'Actualizar Contraseña', 'Actualizar Contraseña'),
(100, 'Nueva Contraseña', 'Nueva Contraseña'),
(101, 'Reingrese Nueva Contraseña', 'Reingrese Nueva Contraseña'),
(102, 'Nombre Completo', 'Nombre Completo'),
(103, 'Nombre de la Empresa', 'Nombre de la Empresa'),
(104, 'Número de Teléfono', 'Número de Teléfono'),
(105, 'Dirección', 'Dirección'),
(106, 'País', 'País'),
(107, 'Ciudad', 'Ciudad'),
(108, 'Estado', 'Estado'),
(109, 'Código Postal', 'Código Postal'),
(110, 'Sobre Nosotros', 'Sobre Nosotros'),
(111, 'Publicaciones Destacadas', 'Publicaciones Destacadas'),
(112, 'Publicaciones Populares', 'Publicaciones Populares'),
(113, 'Publicaciones Recientes', 'Publicaciones Recientes'),
(114, 'Información de Contacto', 'Información de Contacto'),
(115, 'Formulario de Contacto', 'Formulario de Contacto'),
(116, 'Nuestra Oficina', 'Nuestra Oficina'),
(117, 'Actualizar Perfil', 'Actualizar Perfil'),
(118, 'Enviar Mensaje', 'Enviar Mensaje'),
(119, 'Mensaje', 'Mensaje'),
(120, 'Encuéntranos en el Mapa', 'Encuéntranos en el Mapa'),
(121, '¡Felicidades! El pago ha sido exitoso.', '¡Felicidades! El pago ha sido exitoso.'),
(122, 'La información de facturación y envío se ha actualizado correctamente.', 'La información de facturación y envío se ha actualizado correctamente.'),
(123, 'El nombre del cliente no puede estar vacío.', 'El nombre del cliente no puede estar vacío.'),
(124, 'El número de teléfono no puede estar vacío.', 'El número de teléfono no puede estar vacío.'),
(125, 'La dirección no puede estar vacía.', 'La dirección no puede estar vacía.'),
(126, 'Debe seleccionar un país.', 'Debe seleccionar un país.'),
(127, 'La ciudad no puede estar vacía.', 'La ciudad no puede estar vacía.'),
(128, 'El estado no puede estar vacío.', 'El estado no puede estar vacío.'),
(129, 'El código postal no puede estar vacío.', 'El código postal no puede estar vacío.'),
(130, 'La información del perfil se ha actualizado correctamente.', 'La información del perfil se ha actualizado correctamente.'),
(131, 'La dirección de correo electrónico no puede estar vacía', 'La dirección de correo electrónico no puede estar vacía'),
(132, 'El correo electrónico y/o la contraseña no pueden estar vacíos.', 'El correo electrónico y/o la contraseña no pueden estar vacíos.'),
(133, 'La dirección de correo electrónico no coincide.', 'La dirección de correo electrónico no coincide.'),
(134, 'La dirección de correo electrónico debe ser válida.', 'La dirección de correo electrónico debe ser válida.'),
(135, 'No se encontró su dirección de correo electrónico en nuestro sistema.', 'No se encontró su dirección de correo electrónico en nuestro sistema.'),
(136, 'Por favor, revise su correo electrónico y confirme su suscripción.', 'Por favor, revise su correo electrónico y confirme su suscripción.'),
(137, 'Su correo electrónico ha sido verificado correctamente. Ahora puede iniciar sesión en nuestro sitio web.', 'Su correo electrónico ha sido verificado correctamente. Ahora puede iniciar sesión en nuestro sitio web.'),
(138, 'La contraseña no puede estar vacía.', 'La contraseña no puede estar vacía.'),
(139, 'Las contraseñas no coinciden.', 'Las contraseñas no coinciden.'),
(140, 'Por favor ingrese las nuevas y reingrese las contraseñas.', 'Por favor ingrese las nuevas y reingrese las contraseñas.'),
(141, 'La contraseña se ha actualizado correctamente.', 'La contraseña se ha actualizado correctamente.'),
(142, 'Para restablecer su contraseña, haga clic en el enlace a continuación.', 'Para restablecer su contraseña, haga clic en el enlace a continuación.'),
(143, 'SOLICITUD DE RESTABLECIMIENTO DE CONTRASEÑA - SU SITIO WEB.COM', 'SOLICITUD DE RESTABLECIMIENTO DE CONTRASEÑA - SU SITIO WEB.COM'),
(144, 'El tiempo del correo electrónico de restablecimiento de contraseña (24 horas) ha expirado. Intente restablecer su contraseña nuevamente.', 'El tiempo del correo electrónico de restablecimiento de contraseña (24 horas) ha expirado. Intente restablecer su contraseña nuevamente.'),
(145, 'Se ha enviado un enlace de confirmación a su dirección de correo electrónico. Allí obtendrá la información para restablecer su contraseña.', 'Se ha enviado un enlace de confirmación a su dirección de correo electrónico. Allí obtendrá la información para restablecer su contraseña.'),
(146, 'La contraseña se ha restablecido correctamente. Ahora puede iniciar sesión.', 'La contraseña se ha restablecido correctamente. Ahora puede iniciar sesión.'),
(147, 'La dirección de correo electrónico ya existe.', 'La dirección de correo electrónico ya existe.'),
(148, '¡Lo siento! Su cuenta está inactiva. Por favor, póngase en contacto con el administrador.', '¡Lo siento! Su cuenta está inactiva. Por favor, póngase en contacto con el administrador.'),
(149, 'Cambiar Contraseña', 'Cambiar Contraseña'),
(150, 'Confirmación de Correo Electrónico de Registro para SU SITIO WEB', 'Confirmación de Correo Electrónico de Registro para SU SITIO WEB'),
(151, '¡Gracias por registrarse! Su cuenta ha sido creada. Para activar su cuenta, haga clic en el enlace a continuación:', '¡Gracias por registrarse! Su cuenta ha sido creada. Para activar su cuenta, haga clic en el enlace a continuación:'),
(152, 'Su registro está completo. Por favor, revise su dirección de correo electrónico para seguir el proceso de confirmación de su registro.', 'Su registro está completo. Por favor, revise su dirección de correo electrónico para seguir el proceso de confirmación de su registro.'),
(153, 'No se encontró el Producto', 'No se encontró el Producto'),
(154, 'Agregar al Carrito', 'Agregar al Carrito'),
(155, 'Productos Relacionados', 'Productos Relacionados'),
(156, 'Ver todos los productos relacionados a continuación', 'Ver todos los productos relacionados a continuación'),
(157, 'Tamaño', 'Tamaño'),
(158, 'Color', 'Color'),
(159, 'Precio', 'Precio'),
(160, 'Por favor inicie sesión como cliente para proceder al pago', 'Por favor inicie sesión como cliente para proceder al pago'),
(161, 'Dirección de Facturación', 'Dirección de Facturación'),
(162, 'Dirección de Envío', 'Dirección de Envío'),
(163, '¡Calificación enviada con éxito!', '¡Calificación enviada con éxito!');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_mid_category`
--

CREATE TABLE `tbl_mid_category` (
  `mcat_id` int(11) NOT NULL,
  `mcat_name` varchar(255) NOT NULL,
  `tcat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `tbl_mid_category`
--

INSERT INTO `tbl_mid_category` (`mcat_id`, `mcat_name`, `tcat_id`) VALUES
(1, 'Accesorios para Hombres', 1),
(2, 'Zapatos para Hombres', 1),
(3, 'Productos de Belleza', 2),
(4, 'Accesorios', 2),
(6, 'Zapatos', 2),
(7, 'Ropa', 2),
(8, 'Pantalones', 1),
(9, 'Camisetas y Camisas', 1),
(10, 'Ropa', 3),
(11, 'Zapatos', 3),
(12, 'Accesorios', 3),
(14, 'Artículos Electrónicos', 4),
(15, 'Computadoras', 4),
(16, 'Salud', 5),
(17, 'Hogar', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `size` varchar(100) NOT NULL,
  `color` varchar(100) NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `unit_price` varchar(50) NOT NULL,
  `payment_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `product_id`, `product_name`, `size`, `color`, `quantity`, `unit_price`, `payment_id`) VALUES
(1, 83, 'Mens Ultra Cotton T-Shirt, Multipack', 'XL', 'Gray', '1', '19', '1647629329'),
(2, 92, 'Travelpro Laptop Carry-on Travel Tote Bag', 'One Size for All', 'Midnight Blue', '1', '91', '1647798593'),
(4, 101, 'Digital Infrared Thermometer for Adults and Kids', 'One Size for All', 'White', '1', '70', '1647799174'),
(5, 94, 'WD 5TB Elements Portable External Hard Drive HDD', '5T', 'Black', '1', '149', '1647800902');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_page`
--

CREATE TABLE `tbl_page` (
  `id` int(11) NOT NULL,
  `about_title` varchar(255) NOT NULL,
  `about_content` text NOT NULL,
  `about_banner` varchar(255) NOT NULL,
  `about_meta_title` varchar(255) NOT NULL,
  `about_meta_keyword` text NOT NULL,
  `about_meta_description` text NOT NULL,
  `faq_title` varchar(255) NOT NULL,
  `faq_banner` varchar(255) NOT NULL,
  `faq_meta_title` varchar(255) NOT NULL,
  `faq_meta_keyword` text NOT NULL,
  `faq_meta_description` text NOT NULL,
  `blog_title` varchar(255) NOT NULL,
  `blog_banner` varchar(255) NOT NULL,
  `blog_meta_title` varchar(255) NOT NULL,
  `blog_meta_keyword` text NOT NULL,
  `blog_meta_description` text NOT NULL,
  `contact_title` varchar(255) NOT NULL,
  `contact_banner` varchar(255) NOT NULL,
  `contact_meta_title` varchar(255) NOT NULL,
  `contact_meta_keyword` text NOT NULL,
  `contact_meta_description` text NOT NULL,
  `pgallery_title` varchar(255) NOT NULL,
  `pgallery_banner` varchar(255) NOT NULL,
  `pgallery_meta_title` varchar(255) NOT NULL,
  `pgallery_meta_keyword` text NOT NULL,
  `pgallery_meta_description` text NOT NULL,
  `vgallery_title` varchar(255) NOT NULL,
  `vgallery_banner` varchar(255) NOT NULL,
  `vgallery_meta_title` varchar(255) NOT NULL,
  `vgallery_meta_keyword` text NOT NULL,
  `vgallery_meta_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `tbl_page`
--

INSERT INTO `tbl_page` (`id`, `about_title`, `about_content`, `about_banner`, `about_meta_title`, `about_meta_keyword`, `about_meta_description`, `faq_title`, `faq_banner`, `faq_meta_title`, `faq_meta_keyword`, `faq_meta_description`, `blog_title`, `blog_banner`, `blog_meta_title`, `blog_meta_keyword`, `blog_meta_description`, `contact_title`, `contact_banner`, `contact_meta_title`, `contact_meta_keyword`, `contact_meta_description`, `pgallery_title`, `pgallery_banner`, `pgallery_meta_title`, `pgallery_meta_keyword`, `pgallery_meta_description`, `vgallery_title`, `vgallery_banner`, `vgallery_meta_title`, `vgallery_meta_keyword`, `vgallery_meta_description`) VALUES
(1, 'Sobre nosotros', '<p style=\"border: 0px solid; margin-top: 1.5rem; margin-bottom: 0px;\">Welcome to Ecommerce PHP Project!</p><p style=\"border: 0px solid; margin-top: 1.5rem; margin-bottom: 0px;\"><span style=\"border: 0px solid;\">Nuestro objetivo es ofrecer a nuestros clientes una variedad de lo último [PRODUCTS_CATEGORY_NAME]. Hemos recorrido un largo camino, por lo que sabemos exactamente qué dirección tomar cuando le ofrecemos productos de alta calidad pero económicos. Ofrecemos todo esto mientras brindamos un excelente servicio al cliente y un soporte amigable.</span></p><p style=\"border: 0px solid; margin-top: 1.5rem; margin-bottom: 0px;\"><span style=\"border: 0px solid;\">Siempre estamos atentos a las últimas tendencias en [PRODUCTS CATEGORY NAME] y anteponer los deseos de nuestros clientes. Es por eso que tenemos clientes satisfechos en todo el mundo y estamos encantados de ser parte de la [PRODUCTS CATEGORY NAME] industria.</span></p><p style=\"border: 0px solid; margin-top: 1.5rem; margin-bottom: 0px;\"><span style=\"border: 0px solid;\">Los intereses de nuestros clientes son siempre la máxima prioridad para nosotros, por lo que esperamos que disfrute de nuestros productos tanto como nosotros disfrutamos poniéndolos a su disposición.</span></p><p style=\"\">Nos aseguramos de que obtenga prendas de la mejor calidad con una política de cambios y devoluciones sin complicaciones. ¡Nos aseguramos de que lo que ve sea exactamente lo que obtiene!</p><ul><li style=\"text-align: justify;\"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">Garantía de precio bajo</span></font></li><li style=\"text-align: justify;\"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">Atención al cliente 24 horas al día, 7 días a la semana</span></font></li><li style=\"text-align: justify;\"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">E-Mail - Text - Call</span></font></li><li style=\"text-align: justify;\"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">Estamos aquí para usted las 24 horas del día, los 7 días de la semana, en línea y por teléfono.</span></font></li><li style=\"text-align: justify;\"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">Sizing & Color</span></font></li><li style=\"text-align: justify;\"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">Envío al mundo entero</span></font></li><li style=\"text-align: justify;\"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">Nos encantaría expandir nuestro negocio a nivel internacional pronto.</span></font></li><li style=\"text-align: justify;\"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">Easy Returns</span></font></li></ul><p style=\"text-align: justify; \"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">¿Compró un conjunto pero quiere devolverlo? Tenemos una política de devolución fácil de 3 días. Envíenos un correo electrónico a support@ecommercephp.com para obtener más detalles.</span></font></p><p style=\"text-align: justify; \"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\"><b>Vestidos de ensueño para cada ocasión</b></span></font></p><p style=\"text-align: justify; \"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">Fashionys.com ofrece todas las prendas cuidadosamente seleccionadas por nuestros estilistas. Si está interesado en un modelo en particular, envíenos un correo electrónico y haremos todo lo posible para ofrecerle el vestido que ama.</span></font></p><p style=\"text-align: justify; \"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\"><b>Seguridad verificada</b></span></font></p><p style=\"text-align: justify; \"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">Todas nuestras transacciones están Verificadas por Norton y con los más altos estándares de seguridad. Además, también hay mucho para todos a través de interesantes ofertas y obsequios regulares, así que corra la voz y recomiéndenos con todos, desde su familia, amigos y colegas, y obtenga una recompensa por ello. Y para colmo, puedes compartir tu experiencia de usuario publicando reseñas. No esperes más ¡Regístrate con nosotros ahora! empieza a acechar, empieza a comprar y empieza a amar y empieza a presentar la belleza que hay en ti.</span></font></p>\r\n', 'about-banner.jpg', 'PAPJ - Sobre nosotros', 'sobre, sobre nosotros, sobre moda, sobre empresa, sobre proyecto php de comercio electrónico', 'Nuestro objetivo siempre ha sido sacar lo mejor de ti. Trajimos una gran colección, ya sea que asistas a una fiesta, una boda y todos esos eventos que requieren un vestido WOW.', 'FAQ', 'faq-banner.jpg', 'Fashionys.com - Preguntas frecuentes', '', '', 'Blog', 'blog-banner.jpg', 'PAPJ - Blog', '', '', 'Contacta con nosotros', 'contact-banner.jpg', 'Fashionys.com - Contacto', '', '', 'Galeria de fotos', 'pgallery-banner.jpg', 'PAPJ - Galeria de fotos', '', '', 'Galeria de VIDEOS', 'vgallery-banner.jpg', 'PAPJ - Galería de vídeos', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `payment_date` varchar(50) NOT NULL,
  `txnid` varchar(255) NOT NULL,
  `paid_amount` int(11) NOT NULL,
  `card_number` varchar(50) NOT NULL,
  `card_cvv` varchar(10) NOT NULL,
  `card_month` varchar(10) NOT NULL,
  `card_year` varchar(10) NOT NULL,
  `bank_transaction_info` text NOT NULL,
  `payment_method` varchar(20) NOT NULL,
  `payment_status` varchar(25) NOT NULL,
  `shipping_status` varchar(20) NOT NULL,
  `payment_id` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `tbl_payment`
--

INSERT INTO `tbl_payment` (`id`, `customer_id`, `customer_name`, `customer_email`, `payment_date`, `txnid`, `paid_amount`, `card_number`, `card_cvv`, `card_month`, `card_year`, `bank_transaction_info`, `payment_method`, `payment_status`, `shipping_status`, `payment_id`) VALUES
(51, 2, 'Chad N. Carney', 'chad@mail.com', '2022-03-18 22:48:49', '', 19, '', '', '', '', 'Transaction Id: CA01010158967840\r\nTransaction Date: 3/19/2022\r\nBank: WestView Bank, CA Branch\r\nSender A/C: 102458965WV', 'Bank Deposit', 'Completed', 'Completed', '1647629329'),
(52, 3, 'Jean Collins', 'jean@mail.com', '2022-03-20 10:49:53', '', 91, '', '', '', '', '', 'PayPal', 'Completed', 'Completed', '1647798593'),
(54, 6, 'August F. Freels', 'august@mail.com', '2022-03-20 10:59:34', '', 70, '', '', '', '', 'Transaction Id: CA01101198945600\nTransaction Date: 3/20/2022 \nBank: WestView Bank, CA Branch \nSender A/C: 1100047860WV', 'Bank Deposit', 'Completed', 'Pending', '1647799174'),
(55, 10, 'Will Williams', 'williams@mail.com', '2022-03-20 11:28:22', '', 149, '', '', '', '', 'Transaction Id: CA01003177945009\r\nTransaction Date: 3/20/2022 \r\nBank: WestView Bank, CA Branch \r\nSender A/C: NQ1011050160WV', 'Bank Deposit', 'Completed', 'Completed', '1647800902');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_photo`
--

CREATE TABLE `tbl_photo` (
  `id` int(11) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `tbl_photo`
--

INSERT INTO `tbl_photo` (`id`, `caption`, `photo`) VALUES
(1, 'Photo 1', 'photo-1.jpg'),
(2, 'Photo 2', 'photo-2.jpg'),
(3, 'Photo 3', 'photo-3.jpg'),
(4, 'Photo 4', 'photo-4.jpg'),
(5, 'Photo 5', 'photo-5.jpg'),
(6, 'Photo 6', 'photo-6.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_post`
--

CREATE TABLE `tbl_post` (
  `post_id` int(11) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_slug` varchar(255) NOT NULL,
  `post_content` text NOT NULL,
  `post_date` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `total_view` int(11) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `tbl_post`
--

INSERT INTO `tbl_post` (`post_id`, `post_title`, `post_slug`, `post_content`, `post_date`, `photo`, `category_id`, `total_view`, `meta_title`, `meta_keyword`, `meta_description`) VALUES
(1, 'Cu vel choro exerci pri et oratio iisque', 'cu-vel-choro-exerci-pri-et-oratio-iisque', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-1.jpg', 3, 14, 'Cu vel choro exerci pri et oratio iisque', '', ''),
(2, 'Epicurei necessitatibus eu facilisi postulant ', 'epicurei-necessitatibus-eu-facilisi-postulant-', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-2.jpg', 3, 6, 'Epicurei necessitatibus eu facilisi postulant ', '', ''),
(3, 'Mei ut errem legimus periculis eos liber', 'mei-ut-errem-legimus-periculis-eos-liber', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-3.jpg', 3, 1, 'Mei ut errem legimus periculis eos liber', '', ''),
(4, 'Id pro unum pertinax oportere vel', 'id-pro-unum-pertinax-oportere-vel', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-4.jpg', 4, 0, 'Id pro unum pertinax oportere vel', '', ''),
(5, 'Tollit cetero cu usu etiam evertitur', 'tollit-cetero-cu-usu-etiam-evertitur', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-5.jpg', 4, 24, 'Tollit cetero cu usu etiam evertitur', '', ''),
(6, 'Omnes ornatus qui et te aeterno', 'omnes-ornatus-qui-et-te-aeterno', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-6.jpg', 4, 2, 'Omnes ornatus qui et te aeterno', '', ''),
(7, 'Vix tale noluisse voluptua ad ne', 'vix-tale-noluisse-voluptua-ad-ne', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-7.jpg', 2, 0, 'Vix tale noluisse voluptua ad ne', '', ''),
(8, 'Liber utroque vim an ne his brute', 'liber-utroque-vim-an-ne-his-brute', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-8.jpg', 2, 12, 'Liber utroque vim an ne his brute', '', ''),
(9, 'Nostrum copiosae argumentum has', 'nostrum-copiosae-argumentum-has', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-9.jpg', 1, 12, 'Nostrum copiosae argumentum has', '', ''),
(10, 'An labores explicari qui eu', 'an-labores-explicari-qui-eu', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-10.jpg', 1, 4, 'An labores explicari qui eu', '', ''),
(11, 'Lorem ipsum dolor sit amet', 'lorem-ipsum-dolor-sit-amet', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-11.jpg', 1, 18, 'Lorem ipsum dolor sit amet', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_product`
--

CREATE TABLE `tbl_product` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(255) NOT NULL,
  `p_old_price` varchar(10) NOT NULL,
  `p_current_price` varchar(10) NOT NULL,
  `p_qty` int(10) NOT NULL,
  `p_featured_photo` varchar(255) NOT NULL,
  `p_description` text NOT NULL,
  `p_short_description` text NOT NULL,
  `p_feature` text NOT NULL,
  `p_condition` text NOT NULL,
  `p_return_policy` text NOT NULL,
  `p_total_view` int(11) NOT NULL,
  `p_is_featured` int(1) NOT NULL,
  `p_is_active` int(1) NOT NULL,
  `ecat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `tbl_product`
--

INSERT INTO `tbl_product` (`p_id`, `p_name`, `p_old_price`, `p_current_price`, `p_qty`, `p_featured_photo`, `p_description`, `p_short_description`, `p_feature`, `p_condition`, `p_return_policy`, `p_total_view`, `p_is_featured`, `p_is_active`, `ecat_id`) VALUES
(1, 'Essence Mascara Lash Princess', '9.99', '7.17', 5, 'product-featured-103.png', '<p>The Essence Mascara Lash Princess is a popular mascara known for its volumizing and lengthening effects. Achieve dramatic lashes with this long-lasting and cruelty-free formula.<br></p>', '', '<p>\"width\": 23.17,</p><p>\"height\": 14.43,</p><p>\"depth\": 28.01</p>', '<p>1 month warranty\",</p><p>Ships in 1 month</p><p>Low Stock</p>', '<p>30 days return policy<br></p>', 1, 0, 1, 43),
(2, 'Eyeshadow Palette with Mirror', '19.99', '5.5', 44, 'product-featured-104.png', '<p>The Powder Canister is a finely milled setting powder designed to set makeup and control shine. With a lightweight and translucent formula, it provides a smooth and matte finish.<br></p>', '', '<p>width: 12.42</p><p>height\": 8.63</p><p>depth: 29.13</p>', '<p>1 year warranty</p><p>shippingInformation: Ships in 2 weeks</p><p>availabilityStatus: In Stock</p>', '30 days return policy', 2, 0, 1, 43),
(3, 'Powder Canister', '19.03', '12.99', 68, 'product-featured-105.png', '<p>The Powder Canister is a finely milled setting powder designed to set makeup and control shine. With a lightweight and translucent formula, it provides a smooth and matte finish.<br></p>', '', '<p>width: 24.16</p><p>height\" 10.7,</p><p>depth: 11.07</p>', '<p>2 year warranty</p><p>shippingInformation: Ships in 1-2 business days</p><p>availabilityStatus: In Stock</p>', '<p>60 days return policy<br></p>', 3, 0, 1, 45),
(4, 'Red Lipstick', '19.03', '12.99', 68, 'product-featured-106.png', '<p>The Red Lipstick is a classic and bold choice for adding a pop of color to your lips. With a creamy and pigmented formula, it provides a vibrant and long-lasting finish.<br></p>', '', '<p>width: 14.37</p><p>height: 13.94</p><p>depth: 14.6</p>', '<p>Lifetime warranty</p><p>Ships in 2 weeks</p><p>In Stock</p>', '<p>90 days return policy<br></p>', 2, 0, 1, 44),
(5, 'Red Nail Polish', '8.99', '2.46', 71, 'product-featured-107.png', '<p>The Red Lipstick is a classic and bold choice for adding a pop of color to your lips. With a creamy and pigmented formula, it provides a vibrant and long-lasting finish.<br></p>', '', '<p>width: 14.37</p><p>height: 13.94</p><p>depth: 14.6</p>', '<p>Lifetime warranty</p><p>Ships in 2 weeks<br></p><p>In Stock</p>', '<p>90 days return policy<br></p>', 2, 0, 1, 46),
(6, 'Calvin Klein CK One', '49.99', '34', 17, 'product-featured-108.png', '<p>CK One by Calvin Klein is a classic unisex fragrance, known for its fresh and clean scent. It\'s a versatile fragrance suitable for everyday wear.</p>', '', '<p>width: 11.53</p><p>height: 14.44</p><p>depth: 6.81</p>', '<p>5 year warranty</p><p>Ships overnight</p><p>In Stock</p>', '<p>No return policy<br></p>', 4, 0, 1, 59),
(7, 'Chanel Coco Noir Eau De', '129.99', '105.75', 41, 'product-featured-109.png', '<p>Coco Noir by Chanel is an elegant and mysterious fragrance, featuring notes of grapefruit, rose, and sandalwood. Perfect for evening occasions.<br></p>', '', '<p>width: 21.27</p><p>height: 28</p><p>depth: 11.89</p>', '<p>1 week warranty</p><p>Ships in 1 month</p><p>In Stock</p>', '<p>60 days return policy<br></p>', 2, 0, 1, 59),
(8, 'Dior J\'adore', '89.99', '74.29', 91, 'product-featured-110.png', '<p>J\'adore by Dior is a luxurious and floral fragrance, known for its blend of ylang-ylang, rose, and jasmine. It embodies femininity and sophistication.<br></p>', '', '<p>width: 21.51</p><p>height: 7</p><p>depth: 26.51</p>', '<p>Lifetime warranty</p><p>Ships in 2 weeks</p><p>In Stock</p>', '<p>7 days return policy<br></p>', 4, 0, 1, 59),
(9, 'Dolce Shine Eau de', '69.99', '61.96', 3, 'product-featured-111.png', '<p>Dolce Shine by Dolce &amp; Gabbana is a vibrant and fruity fragrance, featuring notes of mango, jasmine, and blonde woods. It\'s a joyful and youthful scent.<br></p>', '', '<p>width: 17</p><p>height: 24.57</p><p>depth: 13.3</p>', '<p>5 year warranty</p><p>Ships in 1-2 business days</p><p>Low Stock</p>', '<p>30 days return policy<br></p>', 3, 0, 1, 39),
(10, 'Gucci Bloom Eau de', '79.99', '72.87', 93, 'product-featured-112.png', '<p>Gucci Bloom by Gucci is a floral and captivating fragrance, with notes of tuberose, jasmine, and Rangoon creeper. It\'s a modern and romantic scent.<br></p>', '', '<p>width: 22.28</p><p>height: 17.81</p><p>depth: 27.18</p>', '<p>No warranty</p><p>Ships in 2 weeks</p><p>In Stock</p>', '<p>No return policy<br></p>', 1, 0, 1, 39),
(11, 'Annibale Colombo Bed', '1899.99', '1844.89', 47, 'product-featured-113.png', '<p>The Annibale Colombo Bed is a luxurious and elegant bed frame, crafted with high-quality materials for a comfortable and stylish bedroom.<br></p>', '', '<p>width: 28.75</p><p>height: 26.88</p><p>depth: 24.47</p>', '', '<p>2 year warranty</p><p>Ships overnight</p><p>In Stock</p>', 0, 0, 1, 78),
(12, 'Annibale Colombo Sofa', '2499.99', '2036.49', 16, 'product-featured-114.png', '<p>The Annibale Colombo Sofa is a sophisticated and comfortable seating option, featuring exquisite design and premium upholstery for your living room</p>', '', '<p>width: 20.97</p><p>height: 19.11</p><p>depth: 25.81</p>', '<p>1 month warranty</p><p>Ships overnight</p><p>In Stock</p>', '<p>7 days return policy<br></p>', 0, 0, 1, 78),
(13, 'Bedside Table African Cherry', '299.99', '271.25', 16, 'product-featured-115.png', '<p>The Bedside Table in African Cherry is a stylish and functional addition to your bedroom, providing convenient storage space and a touch of elegance.<br></p>', '', '<p>width: 25.43</p><p>height: 20.2</p><p>depth: 24.95</p>', '<p>6 months warranty</p><p>Ships in 1-2 business days</p><p>In Stock</p>', '<p>No return policy<br></p>', 0, 0, 1, 78),
(14, 'Knoll Saarinen Executive Conference Chair', '499.99', '423.84', 47, 'product-featured-116.png', '<p>The Knoll Saarinen Executive Conference Chair is a modern and ergonomic chair, perfect for your office or conference room with its timeless design.<br></p>', '', '<p>width: 16.59</p><p>height: 21.46</p><p>depth: 29.07</p>', '<p>Lifetime warranty</p><p>Ships in 3-5 business days</p><p>In Stock</p>', '<p>30 days return policy<br></p>', 0, 0, 1, 78),
(15, 'Wooden Bathroom Sink With Mirror', '799.99', '773.91', 95, 'product-featured-117.png', '<p>The Wooden Bathroom Sink with Mirror is a unique and stylish addition to your bathroom, featuring a wooden sink countertop and a matching mirror.<br></p>', '', '<p>width: 7.32</p><p>height: 22.64</p><p>depth: 12.37</p>', '<p>6 months warranty</p><p>Ships in 3-5 business days</p><p>In Stock</p>', '<p>7 days return policy<br></p>', 0, 0, 1, 78),
(16, 'Apple', '1.99', '1.95', 9, 'product-featured-118.png', '<p>Fresh and crisp apples, perfect for snacking or incorporating into various recipes.<br></p>', '', '<p>width: 8.29</p><p>height: 5.58</p><p>depth: 12.41</p>', '<p>2 year warranty</p><p>Ships in 2 weeks</p><p>In Stock</p>', '<p>60 days return policy<br></p>', 0, 0, 1, 73),
(17, 'Beef Steak', '12.99', '10.65', 96, 'product-featured-119.png', '<p>High-quality beef steak, great for grilling or cooking to your preferred level of doneness.<br></p>', '', '<p>width: 23.35</p><p>height: 13.48</p><p>depth: 26.4</p>', '<p>1 month warranty</p><p>Ships overnight</p><p>In Stock</p>', '<p>90 days return policy<br></p>', 0, 0, 1, 73),
(18, 'Cat Food', '8.99', '8.12', 13, 'product-featured-120.png', '<p>Nutritious cat food formulated to meet the dietary needs of your feline friend.<br></p>', '', '<p>width: 15.4</p><p>height: 13.97</p><p>depth: 25.13</p>', '<p>3 months warranty</p><p>Ships in 1-2 business days</p><p>In Stock</p>', '<p>7 days return policy<br></p>', 3, 0, 1, 78),
(19, 'Chicken Meat', '9.99', '8.34', 69, 'product-featured-121.png', '<p>Fresh and tender chicken meat, suitable for various culinary preparations.<br></p>', '', '<p>width: 15.96</p><p>height: 29.24</p><p>depth: 26.25</p>', '<p>Lifetime warranty</p><p>Ships in 1 month</p><p>In Stock</p>', '<p>7 days return policy<br></p>', 0, 0, 1, 73),
(20, 'Cooking Oil', '4.99', '3.22', 22, 'product-featured-122.png', '<p>Versatile cooking oil suitable for frying, sautéing, and various culinary applications.<br></p>', '', '<p>width: 8.18</p><p>height: 27.45</p><p>depth: 27.88</p>', '<p>Lifetime warranty</p><p>Ships in 1 month</p><p>In Stock</p>', '<p>60 days return policy<br></p>', 0, 0, 1, 73),
(21, 'Cucumber', '1.49', '1.41', 22, 'product-featured-123.png', '<p>Crisp and hydrating cucumbers, ideal for salads, snacks, or as a refreshing side.<br></p>', '', '<p>width: 11.04</p><p>height: 20.5</p><p>depth: 8.18</p>', '<p>5 year warranty</p><p>Ships overnight</p><p>In Stock</p>', '<p>30 days return policy<br></p>', 0, 0, 1, 73),
(22, 'Dog Food', '10.99', '8.99', 40, 'product-featured-124.png', '<p>Specially formulated dog food designed to provide essential nutrients for your canine companion.<br></p>', '', '<p>width: 29.39</p><p>height: 29.77</p><p>depth: 20.54</p>', '<p>1 year warranty</p><p>Ships in 1 month</p><p>In Stock</p>', '<p>90 days return policy<br></p>', 0, 0, 1, 73),
(23, 'Eggs', '2.99', '2.81', 10, 'product-featured-125.png', '<p>Fresh eggs, a versatile ingredient for baking, cooking, or breakfast.<br></p>', '', '<p>width: 12.3</p><p>height: 10.99</p><p>depth: 15.53</p>', '<p>3 year warranty</p><p>Ships overnight</p><p>In Stock</p>', '<p>30 days return policy<br></p>', 0, 0, 1, 78),
(24, 'Fish Steak', '14.99', '13.94', 99, 'product-featured-126.png', '<p>Quality fish steak, suitable for grilling, baking, or pan-searing.<br></p>', '', '<p>width: 20.14</p><p>height: 8.4</p><p>depth: 10.01</p>', '<p>1 year warranty</p><p>Ships in 1 month</p><p>In Stock</p>', '<p>30 days return policy<br></p>', 0, 0, 1, 78),
(25, 'Green Bell Pepper', '1.29', '1.23', 89, 'product-featured-127.png', '<p>Fresh and vibrant green bell pepper, perfect for adding color and flavor to your dishes.<br></p>', '', '<p>width: 7.32</p><p>height: 14.31</p><p>depth: 21.38</p>', '<p>5 year warranty</p><p>Ships overnight</p><p>In Stock</p>', '<p>30 days return policy<br></p>', 0, 0, 1, 78),
(26, 'Green Chili Pepper', '0.99', '0.80', 8, 'product-featured-128.png', '<p>Spicy green chili pepper, ideal for adding heat to your favorite recipes.<br></p>', '', '<p>width: 18.67</p><p>height: 21.17</p><p>depth: 25.26</p>', '<p>No warranty</p><p>Ships in 1-2 business days</p><p>In Stock</p>', '<p>30 days return policy<br></p>', 0, 0, 1, 78),
(27, 'Honey Jar', '6.99', '6.85', 25, 'product-featured-129.png', '<p>Pure and natural honey in a convenient jar, perfect for sweetening beverages or drizzling over food.<br></p>', '', '<p>width: 26.53</p><p>height: 27.11</p><p>depth: 6.63</p>', '<p>2 year warranty</p><p>Ships overnight</p><p>In Stock</p>', '<p>90 days return policy<br></p>', 0, 0, 1, 78),
(28, 'Ice Cream', '5.49', '5.07', 76, 'product-featured-130.png', '<p>Creamy and delicious ice cream, available in various flavors for a delightful treat.<br></p>', '', '<p>width: 17.66</p><p>height: 24.49</p><p>depth: 25.98</p>', '<p>2 year warranty</p><p>Ships in 2 weeks</p><p>In Stock</p>', '<p>No return policy<br></p>', 0, 0, 1, 78),
(29, 'Juice', '3.99', '3.77', 99, 'product-featured-131.png', '<p>Refreshing fruit juice, packed with vitamins and great for staying hydrated.<br></p>', '', '<p>width: 8.97</p><p>height: 12.26</p><p>depth: 15.05</p>', '<p>1 week warranty</p><p>Ships in 1-2 business days</p><p>In Stock</p>', '<p>90 days return policy<br></p>', 0, 0, 1, 78),
(30, 'Kiwi', '2.49', '2.23', 1, 'product-featured-132.png', '<p>Nutrient-rich kiwi, perfect for snacking or adding a tropical twist to your dishes.<br></p>', '', '<p>width: 27.3</p><p>height: 7.48</p><p>depth: 15.08</p>', '<p>6 months warranty</p><p>Ships in 3-5 business days</p><p>Low Stock</p>', '<p>7 days return policy<br></p>', 0, 0, 1, 78),
(31, 'Lemon', '0.79', '0.64', 1, 'product-featured-133.png', '<p>Zesty and tangy lemons, versatile for cooking, baking, or making refreshing beverages.<br></p>', '', '<p>width: 25.97</p><p>height: 27.47</p><p>depth: 6.31</p>', '<p>3 year warranty</p><p>Ships in 1 week</p><p>Out of Stock</p>', '<p>90 days return policy<br></p>', 0, 0, 1, 78),
(32, 'Milk', '3.49', '2.96', 57, 'product-featured-134.png', '<p>Fresh and nutritious milk, a staple for various recipes and daily consumption.<br></p>', '', '<p>width: 22.42</p><p>height: 20.9</p><p>depth: 12.48</p>', '<p>6 months warranty</p><p>shippingInformation: Ships in 1 month</p><p>In Stock</p>', '<p>7 days return policy<br></p>', 0, 0, 1, 78),
(33, 'Mulberry', '4.99', '4.17', 79, 'product-featured-135.png', '<p>Sweet and juicy mulberries, perfect for snacking or adding to desserts and cereals.<br></p>', '', '<p>width: 11.12</p><p>height: 27.3</p><p>depth: 27.57</p>', '<p>3 months warranty</p><p>Ships in 1 month</p><p>In Stock</p>', '<p>60 days return policy<br></p>', 0, 0, 1, 78);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_product_color`
--

CREATE TABLE `tbl_product_color` (
  `id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `tbl_product_color`
--

INSERT INTO `tbl_product_color` (`id`, `color_id`, `p_id`) VALUES
(77, 6, 6),
(82, 2, 12),
(83, 9, 13),
(84, 3, 14),
(85, 2, 15),
(86, 6, 15),
(87, 3, 16),
(88, 3, 17),
(89, 2, 18),
(90, 3, 19),
(91, 1, 20),
(92, 8, 21),
(93, 2, 22),
(94, 2, 23),
(95, 2, 25),
(96, 5, 26),
(97, 2, 27),
(98, 4, 27),
(99, 5, 28),
(100, 7, 29),
(101, 10, 30),
(102, 11, 31),
(103, 14, 32),
(105, 2, 34),
(106, 1, 35),
(107, 3, 36),
(109, 6, 38),
(110, 2, 39),
(111, 11, 42),
(149, 3, 10),
(150, 6, 9),
(151, 3, 8),
(152, 7, 7),
(159, 2, 77),
(163, 17, 79),
(164, 2, 78),
(167, 3, 80),
(168, 2, 81),
(172, 1, 82),
(173, 2, 82),
(174, 4, 82),
(195, 2, 84),
(201, 2, 86),
(202, 6, 86),
(203, 17, 86),
(222, 16, 93),
(223, 21, 85),
(224, 22, 85),
(225, 23, 85),
(226, 1, 83),
(227, 2, 83),
(228, 3, 83),
(229, 4, 83),
(230, 5, 83),
(231, 6, 83),
(232, 8, 83),
(233, 14, 83),
(234, 17, 83),
(235, 18, 83),
(236, 12, 89),
(237, 27, 91),
(239, 2, 92),
(240, 29, 92),
(241, 2, 88),
(242, 8, 88),
(243, 17, 88),
(244, 2, 90),
(245, 6, 90),
(246, 25, 90),
(247, 27, 90),
(248, 28, 90),
(251, 2, 95),
(252, 6, 95),
(253, 5, 96),
(254, 24, 96),
(256, 2, 94),
(257, 3, 87),
(258, 17, 87),
(261, 25, 97),
(262, 5, 98),
(263, 6, 99),
(264, 14, 100),
(266, 6, 101),
(267, 2, 102),
(268, 1, 4),
(269, 1, 107);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_product_photo`
--

CREATE TABLE `tbl_product_photo` (
  `pp_id` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `tbl_product_photo`
--

INSERT INTO `tbl_product_photo` (`pp_id`, `photo`, `p_id`) VALUES
(106, '106.jpg', 83),
(107, '107.jpg', 83),
(108, '108.jpg', 84),
(109, '109.jpg', 84),
(110, '110.jpg', 85),
(111, '111.jpg', 85),
(112, '112.jpg', 86),
(113, '113.jpg', 86),
(114, '114.jpg', 87),
(115, '115.jpg', 87),
(116, '116.jpg', 88),
(117, '117.jpg', 88),
(118, '118.jpg', 89),
(119, '119.jpg', 89),
(120, '120.jpg', 90),
(121, '121.jpg', 91),
(122, '122.jpg', 92),
(123, '123.jpg', 92),
(124, '124.jpg', 93),
(125, '125.jpg', 94),
(126, '126.jpg', 95),
(127, '127.jpg', 96),
(128, '128.jpg', 97),
(129, '129.jpg', 98),
(130, '130.jpg', 98),
(131, '131.jpg', 100),
(132, '132.jpg', 102),
(133, '133.png', 103),
(134, '134.png', 104),
(135, '135.png', 105),
(136, '136.png', 106),
(137, '137.png', 107),
(138, '138.png', 108),
(139, '139.png', 108),
(140, '140.png', 108),
(141, '141.png', 109),
(142, '142.png', 109),
(143, '143.png', 109),
(144, '144.png', 110),
(145, '145.png', 110),
(146, '146.png', 110),
(147, '147.png', 111),
(148, '148.png', 111),
(149, '149.png', 111),
(150, '150.png', 112),
(151, '151.png', 112),
(152, '152.png', 112),
(153, '153.png', 113),
(154, '154.png', 113),
(155, '155.png', 113),
(156, '156.png', 114),
(157, '157.png', 114),
(158, '158.png', 114),
(159, '159.png', 115),
(160, '160.png', 115),
(161, '161.png', 115),
(162, '162.png', 116),
(163, '163.png', 116),
(164, '164.png', 116),
(165, '165.png', 117),
(166, '166.png', 117),
(167, '167.png', 117),
(168, '168.png', 118),
(169, '169.png', 119),
(170, '170.png', 120),
(171, '171.png', 121),
(172, '172.png', 121),
(173, '173.png', 122),
(174, '174.png', 123),
(175, '175.png', 124),
(176, '176.png', 125),
(177, '177.png', 126),
(178, '178.png', 127),
(179, '179.png', 128),
(180, '180.png', 129),
(181, '181.png', 130),
(182, '182.png', 130),
(183, '183.png', 130),
(184, '184.png', 130),
(185, '185.png', 131),
(186, '186.png', 132),
(187, '187.png', 133),
(188, '188.png', 134),
(189, '189.png', 135);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_product_size`
--

CREATE TABLE `tbl_product_size` (
  `id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `tbl_product_size`
--

INSERT INTO `tbl_product_size` (`id`, `size_id`, `p_id`) VALUES
(44, 1, 6),
(56, 8, 12),
(57, 9, 12),
(58, 10, 12),
(59, 11, 12),
(60, 12, 12),
(61, 13, 12),
(62, 9, 13),
(63, 11, 13),
(64, 13, 13),
(65, 15, 13),
(66, 9, 14),
(67, 11, 14),
(68, 12, 14),
(69, 13, 14),
(70, 9, 15),
(71, 11, 15),
(72, 13, 15),
(73, 15, 16),
(74, 16, 16),
(75, 17, 16),
(76, 16, 17),
(77, 17, 17),
(78, 14, 18),
(79, 15, 18),
(80, 16, 18),
(81, 17, 18),
(82, 15, 19),
(83, 16, 19),
(84, 17, 19),
(85, 14, 20),
(86, 15, 20),
(87, 17, 20),
(88, 15, 21),
(89, 17, 21),
(90, 15, 22),
(91, 16, 22),
(92, 17, 22),
(93, 15, 23),
(94, 16, 23),
(95, 17, 23),
(96, 18, 25),
(97, 19, 25),
(98, 20, 25),
(99, 21, 25),
(100, 19, 26),
(101, 21, 26),
(102, 22, 26),
(103, 23, 26),
(104, 19, 27),
(105, 20, 27),
(106, 21, 27),
(107, 22, 27),
(108, 19, 28),
(109, 20, 28),
(110, 21, 28),
(111, 19, 29),
(112, 20, 29),
(113, 22, 29),
(114, 1, 30),
(115, 2, 30),
(116, 3, 30),
(117, 4, 30),
(118, 23, 31),
(119, 26, 32),
(123, 2, 34),
(124, 2, 35),
(125, 2, 36),
(126, 3, 36),
(129, 2, 38),
(130, 3, 38),
(131, 4, 38),
(132, 5, 38),
(133, 27, 39),
(134, 8, 42),
(210, 3, 10),
(211, 4, 10),
(212, 5, 10),
(213, 6, 10),
(214, 3, 9),
(215, 4, 9),
(216, 3, 8),
(217, 4, 8),
(218, 2, 7),
(219, 3, 7),
(220, 4, 7),
(249, 1, 79),
(250, 2, 79),
(251, 3, 79),
(252, 1, 78),
(253, 2, 78),
(254, 3, 78),
(255, 4, 78),
(256, 5, 78),
(259, 26, 80),
(262, 3, 82),
(263, 4, 82),
(278, 2, 84),
(279, 3, 84),
(280, 4, 84),
(281, 5, 84),
(282, 6, 84),
(305, 26, 86),
(339, 27, 93),
(340, 15, 85),
(341, 16, 85),
(342, 17, 85),
(343, 18, 85),
(344, 19, 85),
(345, 20, 85),
(346, 21, 85),
(347, 22, 85),
(348, 23, 85),
(349, 24, 85),
(350, 25, 85),
(351, 1, 83),
(352, 2, 83),
(353, 3, 83),
(354, 4, 83),
(355, 5, 83),
(356, 6, 83),
(357, 7, 83),
(358, 3, 89),
(359, 4, 89),
(360, 5, 89),
(361, 6, 89),
(362, 7, 89),
(363, 2, 91),
(364, 3, 91),
(365, 4, 91),
(366, 5, 91),
(367, 6, 91),
(369, 27, 92),
(370, 3, 88),
(371, 4, 88),
(372, 5, 88),
(373, 6, 88),
(374, 7, 88),
(375, 1, 90),
(376, 2, 90),
(377, 3, 90),
(378, 4, 90),
(380, 27, 95),
(381, 3, 96),
(382, 4, 96),
(383, 5, 96),
(384, 6, 96),
(385, 7, 96),
(398, 33, 94),
(399, 29, 87),
(400, 30, 87),
(401, 31, 87),
(402, 32, 87),
(403, 33, 87),
(404, 34, 87),
(405, 35, 87),
(406, 36, 87),
(407, 37, 87),
(408, 38, 87),
(409, 39, 87),
(418, 8, 97),
(419, 9, 97),
(420, 10, 97),
(421, 11, 97),
(422, 12, 97),
(423, 13, 97),
(424, 14, 97),
(425, 15, 97),
(426, 16, 97),
(427, 17, 97),
(428, 18, 97),
(429, 19, 97),
(430, 4, 98),
(431, 5, 98),
(432, 6, 98),
(433, 7, 98),
(434, 40, 99),
(435, 41, 99),
(436, 3, 100),
(437, 4, 100),
(438, 5, 100),
(439, 6, 100),
(441, 27, 101),
(442, 42, 102),
(443, 43, 102),
(444, 44, 102),
(445, 45, 102),
(446, 46, 102),
(447, 47, 102);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_rating`
--

CREATE TABLE `tbl_rating` (
  `rt_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_service`
--

CREATE TABLE `tbl_service` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `tbl_service`
--

INSERT INTO `tbl_service` (`id`, `title`, `content`, `photo`) VALUES
(5, 'Devoluciones Fáciles', '¡Devuelve cualquier artículo antes de 15 días!', 'service-5.png'),
(6, 'Envío Gratis', 'Disfruta del envío gratis dentro de EE.UU.', 'service-6.png'),
(7, 'Envío Rápido', 'Los artículos se envían dentro de las 24 horas.', 'service-7.png'),
(8, 'Garantía de Satisfacción', 'Te garantizamos nuestra satisfacción de calidad.', 'service-8.png'),
(9, 'Pago Seguro', 'Ofrecemos opciones de pago seguro para todos', 'service-9.png'),
(10, 'Garantía de Devolución de Dinero', 'Ofrecemos garantía de devolución de dinero en nuestros productos', 'service-10.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_settings`
--

CREATE TABLE `tbl_settings` (
  `id` int(11) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `favicon` varchar(255) NOT NULL,
  `footer_about` text NOT NULL,
  `footer_copyright` text NOT NULL,
  `contact_address` text NOT NULL,
  `contact_email` varchar(255) NOT NULL,
  `contact_phone` varchar(255) NOT NULL,
  `contact_fax` varchar(255) NOT NULL,
  `contact_map_iframe` text NOT NULL,
  `receive_email` varchar(255) NOT NULL,
  `receive_email_subject` varchar(255) NOT NULL,
  `receive_email_thank_you_message` text NOT NULL,
  `forget_password_message` text NOT NULL,
  `total_recent_post_footer` int(10) NOT NULL,
  `total_popular_post_footer` int(10) NOT NULL,
  `total_recent_post_sidebar` int(11) NOT NULL,
  `total_popular_post_sidebar` int(11) NOT NULL,
  `total_featured_product_home` int(11) NOT NULL,
  `total_latest_product_home` int(11) NOT NULL,
  `total_popular_product_home` int(11) NOT NULL,
  `meta_title_home` text NOT NULL,
  `meta_keyword_home` text NOT NULL,
  `meta_description_home` text NOT NULL,
  `banner_login` text NOT NULL,
  `banner_registration` text NOT NULL,
  `banner_forget_password` text NOT NULL,
  `banner_reset_password` text NOT NULL,
  `banner_search` text NOT NULL,
  `banner_cart` text NOT NULL,
  `banner_checkout` text NOT NULL,
  `banner_product_category` text NOT NULL,
  `banner_blog` text NOT NULL,
  `cta_title` varchar(255) NOT NULL,
  `cta_content` text NOT NULL,
  `cta_read_more_text` varchar(255) NOT NULL,
  `cta_read_more_url` varchar(255) NOT NULL,
  `cta_photo` varchar(255) NOT NULL,
  `featured_product_title` varchar(255) NOT NULL,
  `featured_product_subtitle` varchar(255) NOT NULL,
  `latest_product_title` varchar(255) NOT NULL,
  `latest_product_subtitle` varchar(255) NOT NULL,
  `popular_product_title` varchar(255) NOT NULL,
  `popular_product_subtitle` varchar(255) NOT NULL,
  `testimonial_title` varchar(255) NOT NULL,
  `testimonial_subtitle` varchar(255) NOT NULL,
  `testimonial_photo` varchar(255) NOT NULL,
  `blog_title` varchar(255) NOT NULL,
  `blog_subtitle` varchar(255) NOT NULL,
  `newsletter_text` text NOT NULL,
  `paypal_email` varchar(255) NOT NULL,
  `stripe_public_key` varchar(255) NOT NULL,
  `stripe_secret_key` varchar(255) NOT NULL,
  `bank_detail` text NOT NULL,
  `before_head` text NOT NULL,
  `after_body` text NOT NULL,
  `before_body` text NOT NULL,
  `home_service_on_off` int(11) NOT NULL,
  `home_welcome_on_off` int(11) NOT NULL,
  `home_featured_product_on_off` int(11) NOT NULL,
  `home_latest_product_on_off` int(11) NOT NULL,
  `home_popular_product_on_off` int(11) NOT NULL,
  `home_testimonial_on_off` int(11) NOT NULL,
  `home_blog_on_off` int(11) NOT NULL,
  `newsletter_on_off` int(11) NOT NULL,
  `ads_above_welcome_on_off` int(1) NOT NULL,
  `ads_above_featured_product_on_off` int(1) NOT NULL,
  `ads_above_latest_product_on_off` int(1) NOT NULL,
  `ads_above_popular_product_on_off` int(1) NOT NULL,
  `ads_above_testimonial_on_off` int(1) NOT NULL,
  `ads_category_sidebar_on_off` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `tbl_settings`
--

INSERT INTO `tbl_settings` (`id`, `logo`, `favicon`, `footer_about`, `footer_copyright`, `contact_address`, `contact_email`, `contact_phone`, `contact_fax`, `contact_map_iframe`, `receive_email`, `receive_email_subject`, `receive_email_thank_you_message`, `forget_password_message`, `total_recent_post_footer`, `total_popular_post_footer`, `total_recent_post_sidebar`, `total_popular_post_sidebar`, `total_featured_product_home`, `total_latest_product_home`, `total_popular_product_home`, `meta_title_home`, `meta_keyword_home`, `meta_description_home`, `banner_login`, `banner_registration`, `banner_forget_password`, `banner_reset_password`, `banner_search`, `banner_cart`, `banner_checkout`, `banner_product_category`, `banner_blog`, `cta_title`, `cta_content`, `cta_read_more_text`, `cta_read_more_url`, `cta_photo`, `featured_product_title`, `featured_product_subtitle`, `latest_product_title`, `latest_product_subtitle`, `popular_product_title`, `popular_product_subtitle`, `testimonial_title`, `testimonial_subtitle`, `testimonial_photo`, `blog_title`, `blog_subtitle`, `newsletter_text`, `paypal_email`, `stripe_public_key`, `stripe_secret_key`, `bank_detail`, `before_head`, `after_body`, `before_body`, `home_service_on_off`, `home_welcome_on_off`, `home_featured_product_on_off`, `home_latest_product_on_off`, `home_popular_product_on_off`, `home_testimonial_on_off`, `home_blog_on_off`, `newsletter_on_off`, `ads_above_welcome_on_off`, `ads_above_featured_product_on_off`, `ads_above_latest_product_on_off`, `ads_above_popular_product_on_off`, `ads_above_testimonial_on_off`, `ads_category_sidebar_on_off`) VALUES
(1, 'logo.jpeg', 'favicon.png', '<p>Lorem ipsum dolor sit amet, omnis signiferumque in mei, mei ex enim concludaturque. Senserit salutandi euripidis no per, modus maiestatis scribentur est an.Â Ea suas pertinax has.</p>\r\n', '', '', '', '', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3094.020958405712!2d-84.39261378514685!3d39.151504939531584!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8841acfb8da30203%3A0x193175e741781f21!2s4293%20Simpson%20Ave%2C%20Cincinnati%2C%20OH%2045227%2C%20USA!5e0!3m2!1sen!2snp!4v1647796779407!5m2!1sen!2snp\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 'support@ecommercephp.com', 'Mensaje de correo electrónico del visitante desde el sitio.', 'Gracias por enviar un correo electrónico. Nos comunicaremos con usted en breve.', 'Se envía un enlace de confirmación a su dirección de correo electrónico. Obtendrá la información para restablecer la contraseña allí.', 4, 4, 5, 5, 5, 6, 8, 'PAPJ Tienda', '', '', 'banner_login.jpg', 'banner_registration.jpg', 'banner_forget_password.jpg', 'banner_reset_password.jpg', 'banner_search.jpg', 'banner_cart.jpg', 'banner_checkout.jpg', 'banner_product_category.jpg', 'banner_blog.jpg', 'Bienvenido a nuestro sitio web PAPJ', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, \r\nat usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. ', 'Leer más', '#', 'cta.jpg', 'PRODUCTOS DESTACADOS', 'Nuestra lista de productos destacados', 'ÚLTIMOS PRODUCTOS', 'Nuestra lista de productos agregados recientemente', 'PRODUCTOS POPULARES', 'Productos populares basados en la elección del cliente', 'Testimonios', 'Vea lo que nuestros clientes dicen de nosotros.', 'testimonial.jpg', 'Blog más reciente', 'Vea todos nuestros últimos artículos y noticias desde abajo.', '', 'admin@ecom.com', 'pk_test_0SwMWadgu8DwmEcPdUPRsZ7b', 'sk_test_TFcsLJ7xxUtpALbDo1L5c1PN', 'Bank Name: WestView Bank\r\nAccount Number: CA100270589600\r\nBranch Name: CA Branch\r\nCountry: USA', '', '<div id=\"fb-root\"></div>\r\n<script>(function(d, s, id) {\r\n  var js, fjs = d.getElementsByTagName(s)[0];\r\n  if (d.getElementById(id)) return;\r\n  js = d.createElement(s); js.id = id;\r\n  js.src = \"//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.10&appId=323620764400430\";\r\n  fjs.parentNode.insertBefore(js, fjs);\r\n}(document, \'script\', \'facebook-jssdk\'));</script>', '<!--Start of Tawk.to Script-->\r\n<script type=\"text/javascript\">\r\nvar Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n(function(){\r\nvar s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\ns1.async=true;\r\ns1.src=\'https://embed.tawk.to/5ae370d7227d3d7edc24cb96/default\';\r\ns1.charset=\'UTF-8\';\r\ns1.setAttribute(\'crossorigin\',\'*\');\r\ns0.parentNode.insertBefore(s1,s0);\r\n})();\r\n</script>\r\n<!--End of Tawk.to Script-->', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_shipping_cost`
--

CREATE TABLE `tbl_shipping_cost` (
  `shipping_cost_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `amount` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `tbl_shipping_cost`
--

INSERT INTO `tbl_shipping_cost` (`shipping_cost_id`, `country_id`, `amount`) VALUES
(1, 228, '11'),
(2, 167, '10'),
(3, 13, '8'),
(4, 230, '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_shipping_cost_all`
--

CREATE TABLE `tbl_shipping_cost_all` (
  `sca_id` int(11) NOT NULL,
  `amount` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `tbl_shipping_cost_all`
--

INSERT INTO `tbl_shipping_cost_all` (`sca_id`, `amount`) VALUES
(1, '100');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_size`
--

CREATE TABLE `tbl_size` (
  `size_id` int(11) NOT NULL,
  `size_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `tbl_size`
--

INSERT INTO `tbl_size` (`size_id`, `size_name`) VALUES
(1, 'XS'),
(2, 'S'),
(3, 'M'),
(4, 'L'),
(5, 'XL'),
(6, 'XXL'),
(7, '3XL'),
(8, '31'),
(9, '32'),
(10, '33'),
(11, '34'),
(12, '35'),
(13, '36'),
(14, '37'),
(15, '38'),
(16, '39'),
(17, '40'),
(18, '41'),
(19, '42'),
(20, '43'),
(21, '44'),
(22, '45'),
(23, '46'),
(24, '47'),
(25, '48'),
(26, 'Free Size'),
(27, 'One Size for All'),
(28, '10'),
(29, '12 Months'),
(30, '2T'),
(31, '3T'),
(32, '4T'),
(33, '5T'),
(34, '6 Years'),
(35, '7 Years'),
(36, '8 Years'),
(37, '10 Years'),
(38, '12 Years'),
(39, '14 Years'),
(40, '256 GB'),
(41, '128 GB'),
(42, '14 Plus'),
(43, '16 Plus'),
(44, '18 Plus'),
(45, '20 Plus'),
(46, '22 Plus'),
(47, '24 Plus');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `id` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `heading` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `button_text` varchar(255) NOT NULL,
  `button_url` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `tbl_slider`
--

INSERT INTO `tbl_slider` (`id`, `photo`, `heading`, `content`, `button_text`, `button_url`, `position`) VALUES
(1, 'slider-1.png', 'Bienvenido a Ecommerce PHP', 'Compra en línea los últimos accesorios para mujeres', 'Ver Accesorios para Mujeres', 'product-category.php?id=4&type=mid-category', 'Center'),
(2, 'slider-2.jpg', '¡50% de Descuento en Todos los Productos!', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has.', 'Leer Más', '#', 'Center'),
(3, 'slider-3.png', 'Soporte al Cliente las 24 Horas', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has.', 'Leer Más', '#', 'Right');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_social`
--

CREATE TABLE `tbl_social` (
  `social_id` int(11) NOT NULL,
  `social_name` varchar(30) NOT NULL,
  `social_url` varchar(255) NOT NULL,
  `social_icon` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `tbl_social`
--

INSERT INTO `tbl_social` (`social_id`, `social_name`, `social_url`, `social_icon`) VALUES
(1, 'Facebook', 'https://www.facebook.com/#', 'fa fa-facebook'),
(2, 'Twitter', 'https://www.twitter.com/#', 'fa fa-twitter'),
(3, 'LinkedIn', '', 'fa fa-linkedin'),
(4, 'Google Plus', '', 'fa fa-google-plus'),
(5, 'Pinterest', '', 'fa fa-pinterest'),
(6, 'YouTube', 'https://www.youtube.com/#', 'fa fa-youtube'),
(7, 'Instagram', 'https://www.instagram.com/#', 'fa fa-instagram'),
(8, 'Tumblr', '', 'fa fa-tumblr'),
(9, 'Flickr', '', 'fa fa-flickr'),
(10, 'Reddit', '', 'fa fa-reddit'),
(11, 'Snapchat', '', 'fa fa-snapchat'),
(12, 'WhatsApp', 'https://www.whatsapp.com/#', 'fa fa-whatsapp'),
(13, 'Quora', '', 'fa fa-quora'),
(14, 'StumbleUpon', '', 'fa fa-stumbleupon'),
(15, 'Delicious', '', 'fa fa-delicious'),
(16, 'Digg', '', 'fa fa-digg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_subscriber`
--

CREATE TABLE `tbl_subscriber` (
  `subs_id` int(11) NOT NULL,
  `subs_email` varchar(255) NOT NULL,
  `subs_date` varchar(100) NOT NULL,
  `subs_date_time` varchar(100) NOT NULL,
  `subs_hash` varchar(255) NOT NULL,
  `subs_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `tbl_subscriber`
--

INSERT INTO `tbl_subscriber` (`subs_id`, `subs_email`, `subs_date`, `subs_date_time`, `subs_hash`, `subs_active`) VALUES
(1, 'ruth@mail.com', '2022-03-20', '2022-03-20 10:25:18', 'f4eabc1afed38a08da8d1c6e5fb42187', 1),
(2, 'kimberly@mail.com', '2022-03-20', '2022-03-20 10:26:07', '61f3af9cac686555a4bff9e565f88c47', 1),
(3, 'gregobn@mail.com', '2022-03-20', '2022-03-20 10:27:21', '72d6fc3a9e9ed33dfc30b10f4de82f34', 1),
(4, 'morgan.sarahh5@mail.com', '2022-03-20', '2022-03-20 10:27:48', 'bcdeda095a6c882803fc3aaf4a17f08e', 1),
(5, 'greenwd1154@mail.com', '2022-03-20', '2022-03-20 10:28:09', '279ecfe9debbb091c664641f534857ee', 1),
(6, 'awsm785@mail.com', '2022-03-20', '2022-03-20 10:28:21', '94096ae01fc65e71c50c7843d096e041', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_top_category`
--

CREATE TABLE `tbl_top_category` (
  `tcat_id` int(11) NOT NULL,
  `tcat_name` varchar(255) NOT NULL,
  `show_on_menu` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `tbl_top_category`
--

INSERT INTO `tbl_top_category` (`tcat_id`, `tcat_name`, `show_on_menu`) VALUES
(1, 'Hombres', 1),
(2, 'Mujeres', 1),
(3, 'Niños', 1),
(4, 'Electrónicos', 1),
(5, 'Salud y Hogar', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(10) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `role` varchar(30) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `full_name`, `email`, `phone`, `password`, `photo`, `role`, `status`) VALUES
(1, 'Administrator', 'admin@mail.com', '7777777777', 'd00f5d5217896fb7fd601412cb890830', 'user-1.png', 'Super Admin', 'Active'),
(2, 'Christine', 'christine@mail.com', '4444444444', '81dc9bdb52d04dc20036dbd8313ed055', 'user-13.jpg', 'Admin', 'Active');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_video`
--

CREATE TABLE `tbl_video` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `iframe_code` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `tbl_video`
--

INSERT INTO `tbl_video` (`id`, `title`, `iframe_code`) VALUES
(1, 'Video 1', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/L3XAFSMdVWU\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(2, 'Video 2', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/sinQ06YzbJI\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(4, 'Video 3', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ViZNgU-Yt-Y\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_color`
--
ALTER TABLE `tbl_color`
  ADD PRIMARY KEY (`color_id`);

--
-- Indices de la tabla `tbl_country`
--
ALTER TABLE `tbl_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indices de la tabla `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indices de la tabla `tbl_customer_message`
--
ALTER TABLE `tbl_customer_message`
  ADD PRIMARY KEY (`customer_message_id`);

--
-- Indices de la tabla `tbl_end_category`
--
ALTER TABLE `tbl_end_category`
  ADD PRIMARY KEY (`ecat_id`);

--
-- Indices de la tabla `tbl_faq`
--
ALTER TABLE `tbl_faq`
  ADD PRIMARY KEY (`faq_id`);

--
-- Indices de la tabla `tbl_language`
--
ALTER TABLE `tbl_language`
  ADD PRIMARY KEY (`lang_id`);

--
-- Indices de la tabla `tbl_mid_category`
--
ALTER TABLE `tbl_mid_category`
  ADD PRIMARY KEY (`mcat_id`);

--
-- Indices de la tabla `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbl_page`
--
ALTER TABLE `tbl_page`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbl_photo`
--
ALTER TABLE `tbl_photo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indices de la tabla `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`p_id`);

--
-- Indices de la tabla `tbl_product_color`
--
ALTER TABLE `tbl_product_color`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbl_product_photo`
--
ALTER TABLE `tbl_product_photo`
  ADD PRIMARY KEY (`pp_id`);

--
-- Indices de la tabla `tbl_product_size`
--
ALTER TABLE `tbl_product_size`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbl_rating`
--
ALTER TABLE `tbl_rating`
  ADD PRIMARY KEY (`rt_id`);

--
-- Indices de la tabla `tbl_service`
--
ALTER TABLE `tbl_service`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbl_settings`
--
ALTER TABLE `tbl_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbl_shipping_cost`
--
ALTER TABLE `tbl_shipping_cost`
  ADD PRIMARY KEY (`shipping_cost_id`);

--
-- Indices de la tabla `tbl_shipping_cost_all`
--
ALTER TABLE `tbl_shipping_cost_all`
  ADD PRIMARY KEY (`sca_id`);

--
-- Indices de la tabla `tbl_size`
--
ALTER TABLE `tbl_size`
  ADD PRIMARY KEY (`size_id`);

--
-- Indices de la tabla `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbl_social`
--
ALTER TABLE `tbl_social`
  ADD PRIMARY KEY (`social_id`);

--
-- Indices de la tabla `tbl_subscriber`
--
ALTER TABLE `tbl_subscriber`
  ADD PRIMARY KEY (`subs_id`);

--
-- Indices de la tabla `tbl_top_category`
--
ALTER TABLE `tbl_top_category`
  ADD PRIMARY KEY (`tcat_id`);

--
-- Indices de la tabla `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbl_video`
--
ALTER TABLE `tbl_video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_color`
--
ALTER TABLE `tbl_color`
  MODIFY `color_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `tbl_country`
--
ALTER TABLE `tbl_country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT de la tabla `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `tbl_customer_message`
--
ALTER TABLE `tbl_customer_message`
  MODIFY `customer_message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `tbl_end_category`
--
ALTER TABLE `tbl_end_category`
  MODIFY `ecat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT de la tabla `tbl_faq`
--
ALTER TABLE `tbl_faq`
  MODIFY `faq_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tbl_language`
--
ALTER TABLE `tbl_language`
  MODIFY `lang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT de la tabla `tbl_mid_category`
--
ALTER TABLE `tbl_mid_category`
  MODIFY `mcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tbl_page`
--
ALTER TABLE `tbl_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT de la tabla `tbl_photo`
--
ALTER TABLE `tbl_photo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT de la tabla `tbl_product_color`
--
ALTER TABLE `tbl_product_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=270;

--
-- AUTO_INCREMENT de la tabla `tbl_product_photo`
--
ALTER TABLE `tbl_product_photo`
  MODIFY `pp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=190;

--
-- AUTO_INCREMENT de la tabla `tbl_product_size`
--
ALTER TABLE `tbl_product_size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=448;

--
-- AUTO_INCREMENT de la tabla `tbl_rating`
--
ALTER TABLE `tbl_rating`
  MODIFY `rt_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_service`
--
ALTER TABLE `tbl_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `tbl_settings`
--
ALTER TABLE `tbl_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tbl_shipping_cost`
--
ALTER TABLE `tbl_shipping_cost`
  MODIFY `shipping_cost_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tbl_shipping_cost_all`
--
ALTER TABLE `tbl_shipping_cost_all`
  MODIFY `sca_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tbl_size`
--
ALTER TABLE `tbl_size`
  MODIFY `size_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT de la tabla `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tbl_social`
--
ALTER TABLE `tbl_social`
  MODIFY `social_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `tbl_subscriber`
--
ALTER TABLE `tbl_subscriber`
  MODIFY `subs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tbl_top_category`
--
ALTER TABLE `tbl_top_category`
  MODIFY `tcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tbl_video`
--
ALTER TABLE `tbl_video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
