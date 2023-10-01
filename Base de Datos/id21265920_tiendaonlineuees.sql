-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 28, 2023 at 03:23 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id21265920_tiendaonlineuees`
--

-- --------------------------------------------------------

--
-- Table structure for table `carritocompras`
--

CREATE TABLE `carritocompras` (
  `CarritoID` int(11) NOT NULL,
  `UsuarioID` int(11) DEFAULT NULL,
  `FechaCreacion` date DEFAULT NULL,
  `EstadoCarrito` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `carritocompras`
--

INSERT INTO `carritocompras` (`CarritoID`, `UsuarioID`, `FechaCreacion`, `EstadoCarrito`) VALUES
(1, 1, '2023-09-20', 'Activo'),
(2, 2, '2023-09-19', 'Pendiente'),
(3, 3, '2023-09-18', 'Completado'),
(4, 1, '2023-09-17', 'Pendiente'),
(5, 2, '2023-09-16', 'Activo'),
(6, 3, '2023-09-15', 'Completado'),
(7, 4, '2023-09-14', 'Activo'),
(8, 5, '2023-09-13', 'Pendiente'),
(9, 4, '2023-09-12', 'Pendiente'),
(10, 5, '2023-09-11', 'Completado');

-- --------------------------------------------------------

--
-- Table structure for table `categorias`
--

CREATE TABLE `categorias` (
  `CategoriaID` int(11) NOT NULL,
  `NombreCategoria` varchar(255) DEFAULT NULL,
  `Descripcion` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categorias`
--

INSERT INTO `categorias` (`CategoriaID`, `NombreCategoria`, `Descripcion`) VALUES
(1, 'feature_prod', 'Articulos Varios'),
(2, 'product_single', 'Entrenamiento'),
(3, 'shop', 'Ropa y Accesorios');

-- --------------------------------------------------------

--
-- Table structure for table `contactos`
--

CREATE TABLE `contactos` (
  `IdContacto` int(11) NOT NULL,
  `Nombre` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Asunto` varchar(255) DEFAULT NULL,
  `Mensaje` text DEFAULT NULL,
  `Estado` varchar(50) DEFAULT NULL,
  `Imagen` longblob DEFAULT NULL,
  `Color` varchar(20) DEFAULT NULL,
  `Especificaciones` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contactos`
--

INSERT INTO `contactos` (`IdContacto`, `Nombre`, `Email`, `Asunto`, `Mensaje`, `Estado`, `Imagen`, `Color`, `Especificaciones`) VALUES
(1, 'Nombre1', 'email1@example.com', 'Asunto1', 'Mensaje1', 'Nuevo', NULL, 'Rojo', 'Especificaciones1'),
(2, 'Nombre2', 'email2@example.com', 'Asunto2', 'Mensaje2', 'En Proceso', NULL, 'Azul', 'Especificaciones2'),
(3, 'Nombre3', 'email3@example.com', 'Asunto3', 'Mensaje3', 'Resuelto', NULL, 'Verde', 'Especificaciones3'),
(4, 'Nombre4', 'email4@example.com', 'Asunto4', 'Mensaje4', 'Nuevo', NULL, 'Amarillo', 'Especificaciones4'),
(5, 'Nombre5', 'email5@example.com', 'Asunto5', 'Mensaje5', 'Nuevo', NULL, 'Naranja', 'Especificaciones5'),
(6, 'Nombre6', 'email6@example.com', 'Asunto6', 'Mensaje6', 'En Proceso', NULL, 'Violeta', 'Especificaciones6'),
(7, 'Nombre7', 'email7@example.com', 'Asunto7', 'Mensaje7', 'Resuelto', NULL, 'Blanco', 'Especificaciones7'),
(8, 'Nombre8', 'email8@example.com', 'Asunto8', 'Mensaje8', 'Nuevo', NULL, 'Gris', 'Especificaciones8'),
(9, 'Nombre9', 'email9@example.com', 'Asunto9', 'Mensaje9', 'En Proceso', NULL, 'Negro', 'Especificaciones9'),
(10, 'Nombre10', 'email10@example.com', 'Asunto10', 'Mensaje10', 'Nuevo', NULL, 'Morado', 'Especificaciones10');

-- --------------------------------------------------------

--
-- Table structure for table `detallesenvio`
--

CREATE TABLE `detallesenvio` (
  `DetalleEnvioID` int(11) NOT NULL,
  `EnvioID` int(11) DEFAULT NULL,
  `NombreDestinatario` varchar(255) DEFAULT NULL,
  `DireccionEnvio` text DEFAULT NULL,
  `CiudadEntrega` varchar(50) DEFAULT NULL,
  `CodigoPostalEntrega` int(11) DEFAULT NULL,
  `PaisEntrega` varchar(50) DEFAULT NULL,
  `ProductoID` int(11) DEFAULT NULL,
  `Cantidad` int(11) DEFAULT NULL,
  `EstadoProductoEnvio` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `detallesenvio`
--

INSERT INTO `detallesenvio` (`DetalleEnvioID`, `EnvioID`, `NombreDestinatario`, `DireccionEnvio`, `CiudadEntrega`, `CodigoPostalEntrega`, `PaisEntrega`, `ProductoID`, `Cantidad`, `EstadoProductoEnvio`) VALUES
(1, 1, 'Destinatario1', 'Direccion1', 'Ciudad1', 12345, 'Pais1', 1, 2, 'En Camino'),
(2, 2, 'Destinatario2', 'Direccion2', 'Ciudad2', 67890, 'Pais2', 2, 1, 'En Camino'),
(3, 3, 'Destinatario3', 'Direccion3', 'Ciudad3', 54321, 'Pais3', 3, 3, 'Entregado'),
(4, 4, 'Destinatario4', 'Direccion4', 'Ciudad4', 98765, 'Pais4', 4, 2, 'Entregado'),
(5, 5, 'Destinatario5', 'Direccion5', 'Ciudad5', 23456, 'Pais5', 5, 1, 'En Camino'),
(6, 6, 'Destinatario6', 'Direccion6', 'Ciudad6', 87654, 'Pais6', 6, 4, 'En Camino'),
(7, 7, 'Destinatario7', 'Direccion7', 'Ciudad7', 34567, 'Pais7', 7, 2, 'Entregado'),
(8, 8, 'Destinatario8', 'Direccion8', 'Ciudad8', 56789, 'Pais8', 8, 3, 'En Camino'),
(9, 9, 'Destinatario9', 'Direccion9', 'Ciudad9', 43210, 'Pais9', 9, 1, 'Entregado'),
(10, 10, 'Destinatario10', 'Direccion10', 'Ciudad10', 10987, 'Pais10', 10, 3, 'Entregado');

-- --------------------------------------------------------

--
-- Table structure for table `detallespedido`
--

CREATE TABLE `detallespedido` (
  `DetallePedidoID` int(11) NOT NULL,
  `PedidoID` int(11) DEFAULT NULL,
  `ProductoID` int(11) DEFAULT NULL,
  `Cantidad` int(11) DEFAULT NULL,
  `PrecioUnitario` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `detallespedido`
--

INSERT INTO `detallespedido` (`DetallePedidoID`, `PedidoID`, `ProductoID`, `Cantidad`, `PrecioUnitario`) VALUES
(1, 1, 1, 2, 100.00),
(2, 2, 2, 3, 120.00),
(3, 3, 3, 1, 95.00),
(4, 4, 4, 2, 110.00),
(5, 5, 5, 4, 105.00),
(6, 6, 6, 2, 98.00),
(7, 7, 7, 3, 115.00),
(8, 8, 8, 1, 130.00),
(9, 9, 9, 2, 85.00),
(10, 10, 10, 3, 110.00);

-- --------------------------------------------------------

--
-- Table structure for table `elementoscarrito`
--

CREATE TABLE `elementoscarrito` (
  `ElementoCarritoID` int(11) NOT NULL,
  `CarritoID` int(11) DEFAULT NULL,
  `ProductoID` int(11) DEFAULT NULL,
  `Cantidad` int(11) DEFAULT NULL,
  `PrecioUnitario` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `elementoscarrito`
--

INSERT INTO `elementoscarrito` (`ElementoCarritoID`, `CarritoID`, `ProductoID`, `Cantidad`, `PrecioUnitario`) VALUES
(1, 1, 1, 2, 100.00),
(2, 2, 2, 3, 120.00),
(3, 3, 3, 1, 95.00),
(4, 4, 4, 2, 110.00),
(5, 5, 5, 4, 105.00),
(6, 6, 6, 2, 98.00),
(7, 7, 7, 3, 115.00),
(8, 8, 8, 1, 130.00),
(9, 9, 9, 2, 85.00),
(10, 10, 10, 3, 110.00);

-- --------------------------------------------------------

--
-- Table structure for table `envios`
--

CREATE TABLE `envios` (
  `EnvioID` int(11) NOT NULL,
  `PedidoID` int(11) DEFAULT NULL,
  `TransportistaID` int(11) DEFAULT NULL,
  `FechaEnvio` date DEFAULT NULL,
  `FechaEntrega` date DEFAULT NULL,
  `EstadoEnvio` varchar(50) DEFAULT NULL,
  `MetodoEnvio` varchar(255) DEFAULT NULL,
  `DireccionEnvio` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `envios`
--

INSERT INTO `envios` (`EnvioID`, `PedidoID`, `TransportistaID`, `FechaEnvio`, `FechaEntrega`, `EstadoEnvio`, `MetodoEnvio`, `DireccionEnvio`) VALUES
(1, 1, 1, '2023-09-20', '2023-09-25', 'En Camino', 'Express', 'DireccionEnvio1'),
(2, 2, 2, '2023-09-19', '2023-09-24', 'En Camino', 'Estándar', 'DireccionEnvio2'),
(3, 3, 3, '2023-09-18', '2023-09-23', 'Entregado', 'Express', 'DireccionEnvio3'),
(4, 4, 1, '2023-09-17', '2023-09-22', 'Entregado', 'Estándar', 'DireccionEnvio4'),
(5, 5, 2, '2023-09-16', '2023-09-21', 'En Camino', 'Express', 'DireccionEnvio5'),
(6, 6, 3, '2023-09-15', '2023-09-20', 'En Camino', 'Estándar', 'DireccionEnvio6'),
(7, 7, 4, '2023-09-14', '2023-09-19', 'Entregado', 'Express', 'DireccionEnvio7'),
(8, 8, 5, '2023-09-13', '2023-09-18', 'En Camino', 'Estándar', 'DireccionEnvio8'),
(9, 9, 4, '2023-09-12', '2023-09-17', 'Entregado', 'Express', 'DireccionEnvio9'),
(10, 10, 5, '2023-09-11', '2023-09-16', 'Entregado', 'Estándar', 'DireccionEnvio10');

-- --------------------------------------------------------

--
-- Table structure for table `pagos`
--

CREATE TABLE `pagos` (
  `PagoID` int(11) NOT NULL,
  `UsuarioID` int(11) DEFAULT NULL,
  `FechaPago` date DEFAULT NULL,
  `MontoTotal` decimal(10,2) DEFAULT NULL,
  `MetodoPago` varchar(255) DEFAULT NULL,
  `EstadoPago` varchar(50) DEFAULT NULL,
  `PedidoID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pagos`
--

INSERT INTO `pagos` (`PagoID`, `UsuarioID`, `FechaPago`, `MontoTotal`, `MetodoPago`, `EstadoPago`, `PedidoID`) VALUES
(1, 1, '2023-09-20', 500.00, 'Tarjeta de Crédito', 'Aprobado', 1),
(2, 2, '2023-09-19', 360.00, 'PayPal', 'Aprobado', 2),
(3, 3, '2023-09-18', 190.00, 'Tarjeta de Débito', 'Aprobado', 3),
(4, 4, '2023-09-17', 220.00, 'Transferencia Bancaria', 'Pendiente', 4),
(5, 5, '2023-09-16', 420.00, 'Tarjeta de Crédito', 'Aprobado', 5),
(6, 6, '2023-09-15', 196.00, 'PayPal', 'Aprobado', 6),
(7, 7, '2023-09-14', 345.00, 'Tarjeta de Crédito', 'Aprobado', 7),
(8, 8, '2023-09-13', 130.00, 'PayPal', 'Pendiente', 8),
(9, 9, '2023-09-12', 170.00, 'Transferencia Bancaria', 'Aprobado', 9),
(10, 10, '2023-09-11', 330.00, 'Tarjeta de Débito', 'Aprobado', 10);

-- --------------------------------------------------------

--
-- Table structure for table `pedidos`
--

CREATE TABLE `pedidos` (
  `PedidoID` int(11) NOT NULL,
  `UsuarioID` int(11) DEFAULT NULL,
  `FechaPedido` date DEFAULT NULL,
  `EstadoPedido` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pedidos`
--

INSERT INTO `pedidos` (`PedidoID`, `UsuarioID`, `FechaPedido`, `EstadoPedido`) VALUES
(1, 1, '2023-09-20', 'En Proceso'),
(2, 2, '2023-09-19', 'En Proceso'),
(3, 3, '2023-09-18', 'Completado'),
(4, 4, '2023-09-17', 'Completado'),
(5, 5, '2023-09-16', 'En Proceso'),
(6, 6, '2023-09-15', 'Completado'),
(7, 7, '2023-09-14', 'En Proceso'),
(8, 8, '2023-09-13', 'Completado'),
(9, 9, '2023-09-12', 'En Proceso'),
(10, 10, '2023-09-11', 'Completado');

-- --------------------------------------------------------

--
-- Table structure for table `productos`
--

CREATE TABLE `productos` (
  `ProductoID` int(11) NOT NULL,
  `NombreProducto` varchar(255) DEFAULT NULL,
  `Descripcion` text DEFAULT NULL,
  `Precio` decimal(10,2) DEFAULT NULL,
  `Existencias` int(11) DEFAULT NULL,
  `CategoriaID` int(11) DEFAULT NULL,
  `Imagen` varchar(255) DEFAULT NULL,
  `Rating` int(11) DEFAULT NULL,
  `Marca` varchar(255) DEFAULT NULL,
  `Color` varchar(50) DEFAULT NULL,
  `Especificaciones` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `productos`
--

INSERT INTO `productos` (`ProductoID`, `NombreProducto`, `Descripcion`, `Precio`, `Existencias`, `CategoriaID`, `Imagen`, `Rating`, `Marca`, `Color`, `Especificaciones`) VALUES
(1, 'Linterna', 'Linterna de alto rango', 100.00, 10, 1, '\\assets\\img\\feature_prod_01.jpg', 4, 'Marca 1', 'Blanca', 'Especificaciones del producto 1'),
(2, 'Reloj Smart', 'Reloj Smart con larga duracion', 120.00, 15, 1, '\\assets\\img\\feature_prod_02.jpg', 5, 'Marca 2', 'Rojo', 'Especificaciones del producto 2'),
(3, 'Camara Polaroid', 'Camara Polaroid con fotos al instante', 95.00, 8, 1, '\\assets\\img\\feature_prod_03.jpg', 3, 'Marca 1', 'Blanca', 'Especificaciones del producto 3'),
(4, 'Sleep Mask', 'Sleep Mask descansa como un bebe', 110.00, 12, 1, '\\assets\\img\\feature_prod_04.jpg', 4, 'Marca 3', 'Negro', 'Especificaciones del producto 4'),
(5, 'Aceite de Coco', 'Aceite de Coco para todo tipo de piel', 105.00, 14, 1, '\\assets\\img\\feature_prod_05.jpg', 5, 'Marca 2', 'Blanco', 'Especificaciones del producto 5'),
(6, 'Palillos Chinos', 'Palillos Chinos para niños', 98.00, 9, 1, '\\assets\\img\\feature_prod_06.jpg', 3, 'Marca 3', 'Negro', 'Especificaciones del producto 6'),
(7, 'FireStick TV', 'FireStick TV para todo Televisor', 115.00, 11, 1, '\\assets\\img\\feature_prod_07.jpg', 4, 'Marca 1', 'Gris', 'Especificaciones del producto 7'),
(8, 'Mandos de Juego', 'Mandos de Juego a distancia', 130.00, 13, 1, '\\assets\\img\\feature_prod_08.jpg', 5, 'Marca 2', 'Azul', 'Especificaciones del producto 8'),
(9, 'Balon Voleibol', 'Balon Profesional', 85.00, 7, 2, '\\assets\\img\\product_single_01.jpg', 3, 'Marca 4', 'Naranja', 'Especificaciones del producto 9'),
(10, 'Zapatos Rosa', 'Para entrenamiento y correr', 110.00, 12, 2, '\\assets\\img\\product_single_02.jpg', 4, 'Marca 5', 'Rosado', 'Especificaciones del producto 10'),
(11, 'Licra Strech', 'Licra de alta calidad', 95.00, 8, 2, '\\assets\\img\\product_single_03.jpg', 3, 'Marca 4', 'Gris', 'Especificaciones del producto 11'),
(12, 'Top de Algodon', 'Entrenamiento', 105.00, 10, 2, '\\assets\\img\\product_single_04.jpg', 4, 'Marca 6', 'Naranja', 'Especificaciones del producto 12'),
(13, 'Conjunto', 'Talla Large', 120.00, 14, 2, '\\assets\\img\\product_single_05.jpg', 5, 'Marca 5', 'Blanco', 'Especificaciones del producto 13'),
(14, 'Moño de cabello', 'Larga Duracion', 88.00, 6, 2, '\\assets\\img\\product_single_06.jpg', 3, 'Marca 4', 'Negro', 'Especificaciones del producto 14'),
(15, 'Soporte Lumbar', 'Hecho de Nylon', 115.00, 9, 2, '\\assets\\img\\product_single_07.jpg', 4, 'Marca 6', 'Gris', 'Especificaciones del producto 15'),
(16, 'Rodilleras', 'Talla M', 130.00, 11, 2, '\\assets\\img\\product_single_08.jpg', 5, 'Marca 5', 'Naranja', 'Especificaciones del producto 16'),
(17, 'Sudadera', 'Para la cabeza', 95.00, 8, 2, '\\assets\\img\\product_single_09.jpg', 3, 'Marca 4', 'Azul', 'Especificaciones del producto 17'),
(18, 'Medias Nylon', 'Talla Small', 110.00, 12, 2, '\\assets\\img\\product_single_10.jpg', 4, 'Marca 5', 'Verde', 'Especificaciones del producto 18'),
(19, 'Producto 19', 'Descripción del producto 19', 80.00, 15, 3, '\\assets\\img\\shop_01.jpg', 4, 'Marca 7', 'Rojo', 'Especificaciones del producto 19'),
(20, 'Producto 20', 'Descripción del producto 20', 95.00, 20, 3, '\\assets\\img\\shop_02.jpg', 3, 'Marca 8', 'Azul', 'Especificaciones del producto 20'),
(21, 'Producto 21', 'Descripción del producto 21', 110.00, 18, 3, '\\assets\\img\\shop_03.jpg', 4, 'Marca 7', 'Verde', 'Especificaciones del producto 21'),
(22, 'Producto 22', 'Descripción del producto 22', 105.00, 22, 3, '\\assets\\img\\shop_04.jpg', 5, 'Marca 9', 'Amarillo', 'Especificaciones del producto 22'),
(23, 'Producto 23', 'Descripción del producto 23', 120.00, 19, 3, '\\assets\\img\\shop_05.jpg', 4, 'Marca 8', 'Blanco', 'Especificaciones del producto 23'),
(24, 'Producto 24', 'Descripción del producto 24', 98.00, 17, 3, '\\assets\\img\\shop_06.jpg', 3, 'Marca 7', 'Negro', 'Especificaciones del producto 24'),
(25, 'Producto 25', 'Descripción del producto 25', 115.00, 21, 3, '\\assets\\img\\shop_07.jpg', 5, 'Marca 9', 'Gris', 'Especificaciones del producto 25'),
(26, 'Producto 26', 'Descripción del producto 26', 130.00, 23, 3, '\\assets\\img\\shop_08.jpg', 4, 'Marca 8', 'Naranja', 'Especificaciones del producto 26'),
(27, 'Producto 27', 'Descripción del producto 27', 88.00, 16, 3, '\\assets\\img\\shop_09.jpg', 3, 'Marca 7', 'Rosa', 'Especificaciones del producto 27'),
(28, 'Producto 28', 'Descripción del producto 28', 105.00, 20, 3, '\\assets\\img\\shop_10.jpg', 4, 'Marca 9', 'Morado', 'Especificaciones del producto 28'),
(29, 'Producto 29', 'Descripción del producto 29', 78.00, 14, 3, '\\assets\\img\\shop_11.jpg', 3, 'Marca 7', 'Amarillo', 'Especificaciones del producto 29'),
(30, 'Producto 30', 'Descripción del producto 30', 125.00, 18, 3, '\\assets\\img\\shop_12.jpg', 4, 'Marca 8', 'Verde', 'Especificaciones del producto 30'),
(31, 'Producto 31', 'Descripción del producto 31', 100.00, 25, 3, '\\assets\\img\\shop_13.jpg', 5, 'Marca 9', 'Azul', 'Especificaciones del producto 31'),
(32, 'Producto 32', 'Descripción del producto 32', 92.00, 19, 3, '\\assets\\img\\shop_14.jpg', 3, 'Marca 7', 'Blanco', 'Especificaciones del producto 32'),
(33, 'Producto 33', 'Descripción del producto 33', 112.00, 21, 3, '\\assets\\img\\shop_15.jpg', 4, 'Marca 8', 'Negro', 'Especificaciones del producto 33'),
(34, 'Producto 34', 'Descripción del producto 34', 118.00, 24, 3, '\\assets\\img\\shop_16.jpg', 4, 'Marca 9', 'Gris', 'Especificaciones del producto 34'),
(35, 'Producto 35', 'Descripción del producto 35', 96.00, 16, 3, '\\assets\\img\\shop_17.jpg', 3, 'Marca 7', 'Naranja', 'Especificaciones del producto 35'),
(36, 'Producto 36', 'Descripción del producto 36', 140.00, 16, 3, '\\assets\\img\\shop_18.jpg', 5, 'Marca 8', 'Naranja', 'Especificaciones del producto 35');

-- --------------------------------------------------------

--
-- Table structure for table `transportistas`
--

CREATE TABLE `transportistas` (
  `TransportistaID` int(11) NOT NULL,
  `NombreTransportista` varchar(255) DEFAULT NULL,
  `Descripcion` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `transportistas`
--

INSERT INTO `transportistas` (`TransportistaID`, `NombreTransportista`, `Descripcion`) VALUES
(1, 'Transportista1', 'Descripción1'),
(2, 'Transportista2', 'Descripción2'),
(3, 'Transportista3', 'Descripción3'),
(4, 'Transportista4', 'Descripción4'),
(5, 'Transportista5', 'Descripción5'),
(6, 'Transportista6', 'Descripción6'),
(7, 'Transportista7', 'Descripción7'),
(8, 'Transportista8', 'Descripción8'),
(9, 'Transportista9', 'Descripción9'),
(10, 'Transportista10', 'Descripción10');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `UsuarioID` int(11) NOT NULL,
  `NombreUsuario` varchar(255) DEFAULT NULL,
  `CorreoElectronico` varchar(255) DEFAULT NULL,
  `Contraseña` varchar(255) DEFAULT NULL,
  `DireccionEnvio` text DEFAULT NULL,
  `Telefono` varchar(20) DEFAULT NULL,
  `FechaRegistro` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`UsuarioID`, `NombreUsuario`, `CorreoElectronico`, `Contraseña`, `DireccionEnvio`, `Telefono`, `FechaRegistro`) VALUES
(1, 'Usuario1', 'usuario1@example.com', 'contraseña1', 'Direccion1', '1234567890', '2023-09-20'),
(2, 'Usuario2', 'usuario2@example.com', 'contraseña2', 'Direccion2', '9876543210', '2023-09-19'),
(3, 'Usuario3', 'usuario3@example.com', 'contraseña3', 'Direccion3', '5678901234', '2023-09-18'),
(4, 'Usuario4', 'usuario4@example.com', 'contraseña4', 'Direccion4', '3210987654', '2023-09-17'),
(5, 'Usuario5', 'usuario5@example.com', 'contraseña5', 'Direccion5', '7890123456', '2023-09-16'),
(6, 'Usuario6', 'usuario6@example.com', 'contraseña6', 'Direccion6', '2345678901', '2023-09-15'),
(7, 'Usuario7', 'usuario7@example.com', 'contraseña7', 'Direccion7', '8901234567', '2023-09-14'),
(8, 'Usuario8', 'usuario8@example.com', 'contraseña8', 'Direccion8', '4567890123', '2023-09-13'),
(9, 'Usuario9', 'usuario9@example.com', 'contraseña9', 'Direccion9', '0123456789', '2023-09-12'),
(10, 'Usuario10', 'usuario10@example.com', 'contraseña10', 'Direccion10', '6789012345', '2023-09-11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carritocompras`
--
ALTER TABLE `carritocompras`
  ADD PRIMARY KEY (`CarritoID`),
  ADD KEY `UsuarioID` (`UsuarioID`);

--
-- Indexes for table `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`CategoriaID`);

--
-- Indexes for table `contactos`
--
ALTER TABLE `contactos`
  ADD PRIMARY KEY (`IdContacto`);

--
-- Indexes for table `detallesenvio`
--
ALTER TABLE `detallesenvio`
  ADD PRIMARY KEY (`DetalleEnvioID`),
  ADD KEY `EnvioID` (`EnvioID`),
  ADD KEY `ProductoID` (`ProductoID`);

--
-- Indexes for table `detallespedido`
--
ALTER TABLE `detallespedido`
  ADD PRIMARY KEY (`DetallePedidoID`),
  ADD KEY `PedidoID` (`PedidoID`),
  ADD KEY `ProductoID` (`ProductoID`);

--
-- Indexes for table `elementoscarrito`
--
ALTER TABLE `elementoscarrito`
  ADD PRIMARY KEY (`ElementoCarritoID`),
  ADD KEY `CarritoID` (`CarritoID`),
  ADD KEY `ProductoID` (`ProductoID`);

--
-- Indexes for table `envios`
--
ALTER TABLE `envios`
  ADD PRIMARY KEY (`EnvioID`),
  ADD KEY `PedidoID` (`PedidoID`),
  ADD KEY `TransportistaID` (`TransportistaID`);

--
-- Indexes for table `pagos`
--
ALTER TABLE `pagos`
  ADD PRIMARY KEY (`PagoID`),
  ADD KEY `UsuarioID` (`UsuarioID`),
  ADD KEY `PedidoID` (`PedidoID`);

--
-- Indexes for table `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`PedidoID`),
  ADD KEY `UsuarioID` (`UsuarioID`);

--
-- Indexes for table `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`ProductoID`),
  ADD KEY `CategoriaID` (`CategoriaID`);

--
-- Indexes for table `transportistas`
--
ALTER TABLE `transportistas`
  ADD PRIMARY KEY (`TransportistaID`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`UsuarioID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contactos`
--
ALTER TABLE `contactos`
  MODIFY `IdContacto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carritocompras`
--
ALTER TABLE `carritocompras`
  ADD CONSTRAINT `CarritoCompras_ibfk_1` FOREIGN KEY (`UsuarioID`) REFERENCES `usuarios` (`UsuarioID`);

--
-- Constraints for table `detallesenvio`
--
ALTER TABLE `detallesenvio`
  ADD CONSTRAINT `DetallesEnvio_ibfk_1` FOREIGN KEY (`EnvioID`) REFERENCES `envios` (`EnvioID`),
  ADD CONSTRAINT `DetallesEnvio_ibfk_2` FOREIGN KEY (`ProductoID`) REFERENCES `productos` (`ProductoID`);

--
-- Constraints for table `detallespedido`
--
ALTER TABLE `detallespedido`
  ADD CONSTRAINT `DetallesPedido_ibfk_1` FOREIGN KEY (`PedidoID`) REFERENCES `pedidos` (`PedidoID`),
  ADD CONSTRAINT `DetallesPedido_ibfk_2` FOREIGN KEY (`ProductoID`) REFERENCES `productos` (`ProductoID`);

--
-- Constraints for table `elementoscarrito`
--
ALTER TABLE `elementoscarrito`
  ADD CONSTRAINT `ElementosCarrito_ibfk_1` FOREIGN KEY (`CarritoID`) REFERENCES `carritocompras` (`CarritoID`),
  ADD CONSTRAINT `ElementosCarrito_ibfk_2` FOREIGN KEY (`ProductoID`) REFERENCES `productos` (`ProductoID`);

--
-- Constraints for table `envios`
--
ALTER TABLE `envios`
  ADD CONSTRAINT `Envios_ibfk_1` FOREIGN KEY (`PedidoID`) REFERENCES `pedidos` (`PedidoID`),
  ADD CONSTRAINT `Envios_ibfk_2` FOREIGN KEY (`TransportistaID`) REFERENCES `transportistas` (`TransportistaID`);

--
-- Constraints for table `pagos`
--
ALTER TABLE `pagos`
  ADD CONSTRAINT `Pagos_ibfk_1` FOREIGN KEY (`UsuarioID`) REFERENCES `usuarios` (`UsuarioID`),
  ADD CONSTRAINT `Pagos_ibfk_2` FOREIGN KEY (`PedidoID`) REFERENCES `pedidos` (`PedidoID`);

--
-- Constraints for table `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `Pedidos_ibfk_1` FOREIGN KEY (`UsuarioID`) REFERENCES `usuarios` (`UsuarioID`);

--
-- Constraints for table `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `Productos_ibfk_1` FOREIGN KEY (`CategoriaID`) REFERENCES `categorias` (`CategoriaID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
