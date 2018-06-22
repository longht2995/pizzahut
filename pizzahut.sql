-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 22, 2018 lúc 02:33 AM
-- Phiên bản máy phục vụ: 10.1.31-MariaDB
-- Phiên bản PHP: 5.6.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `pizzahut`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Pizzas'),
(2, 'Veggie'),
(3, 'Meat'),
(4, 'Drizzle');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categoryimage`
--

CREATE TABLE `categoryimage` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `categoryimage`
--

INSERT INTO `categoryimage` (`id`, `name`) VALUES
(1, 'Background'),
(2, 'Icon');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `log`
--

CREATE TABLE `log` (
  `id` int(11) NOT NULL,
  `date` datetime DEFAULT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `material`
--

CREATE TABLE `material` (
  `id` int(11) NOT NULL,
  `extra` tinyint(1) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `pizzasize_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `material`
--

INSERT INTO `material` (`id`, `extra`, `name`, `price`, `quantity`, `category_id`, `pizzasize_id`) VALUES
(1, 0, 'Create Your owm', 20, 123, 1, 1),
(2, 0, 'Create Your owm', 30, 123, 1, 2),
(3, 0, 'Create Your owm', 40, 123, 1, 3),
(4, 0, 'Green Chilles', 3.5, 222, 2, 1),
(5, 0, 'Green Chilles', 4.5, 232, 2, 2),
(6, 0, 'Green Chilles', 5.5, 222, 2, 3),
(7, 0, 'Chicken Pepperoni', 5.5, 222, 3, 3),
(8, 0, 'Chicken Pepperoni', 4.5, 333, 3, 2),
(9, 0, 'Chicken Pepperoni', 3.5, 222, 3, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `materialimage`
--

CREATE TABLE `materialimage` (
  `id` int(11) NOT NULL,
  `categoryImage_id` int(11) DEFAULT NULL,
  `material_id` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `materialimage`
--

INSERT INTO `materialimage` (`id`, `categoryImage_id`, `material_id`, `image`) VALUES
(1, 1, 1, '/images/pizza.png'),
(2, 1, 2, '/images/pizza.png'),
(3, 1, 3, '/images/pizza.png'),
(4, 2, 1, '/images/itm4000001.png'),
(5, 2, 2, '/images/itm4000001.png'),
(6, 2, 3, '/images/itm4000001.png'),
(7, 2, 6, '/images/itm000556.png'),
(8, 2, 4, '/images/itm000556.png'),
(9, 2, 5, '/images/itm000556.png'),
(10, 1, 6, '/images/itm006663bg.png'),
(11, 1, 5, '/images/itm006663bg.png'),
(12, 1, 4, '/images/itm006663bg.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orderitem`
--

CREATE TABLE `orderitem` (
  `id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `order_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orderitem_material`
--

CREATE TABLE `orderitem_material` (
  `OrderItem_id` int(11) NOT NULL,
  `material_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pizzasize`
--

CREATE TABLE `pizzasize` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `pizzasize`
--

INSERT INTO `pizzasize` (`id`, `name`) VALUES
(1, 'Small'),
(2, 'Medium'),
(3, 'Large');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categoryimage`
--
ALTER TABLE `categoryimage`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK11D36527A0E1C6DE` (`category_id`),
  ADD KEY `FK11D36527E63B8BD6` (`pizzasize_id`);

--
-- Chỉ mục cho bảng `materialimage`
--
ALTER TABLE `materialimage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKE9E7A454BB536A3E` (`material_id`),
  ADD KEY `FKE9E7A4545768116` (`categoryImage_id`);

--
-- Chỉ mục cho bảng `orderitem`
--
ALTER TABLE `orderitem`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orderitem_material`
--
ALTER TABLE `orderitem_material`
  ADD UNIQUE KEY `material_id` (`material_id`),
  ADD KEY `FK128D1445BB536A3E` (`material_id`),
  ADD KEY `FK128D14453D307CD6` (`OrderItem_id`);

--
-- Chỉ mục cho bảng `pizzasize`
--
ALTER TABLE `pizzasize`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `categoryimage`
--
ALTER TABLE `categoryimage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `log`
--
ALTER TABLE `log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `material`
--
ALTER TABLE `material`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `materialimage`
--
ALTER TABLE `materialimage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `orderitem`
--
ALTER TABLE `orderitem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pizzasize`
--
ALTER TABLE `pizzasize`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `material`
--
ALTER TABLE `material`
  ADD CONSTRAINT `FK11D36527A0E1C6DE` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `FK11D36527E63B8BD6` FOREIGN KEY (`pizzasize_id`) REFERENCES `pizzasize` (`id`);

--
-- Các ràng buộc cho bảng `materialimage`
--
ALTER TABLE `materialimage`
  ADD CONSTRAINT `FKE9E7A4545768116` FOREIGN KEY (`categoryImage_id`) REFERENCES `categoryimage` (`id`),
  ADD CONSTRAINT `FKE9E7A454BB536A3E` FOREIGN KEY (`material_id`) REFERENCES `material` (`id`);

--
-- Các ràng buộc cho bảng `orderitem_material`
--
ALTER TABLE `orderitem_material`
  ADD CONSTRAINT `FK128D14453D307CD6` FOREIGN KEY (`OrderItem_id`) REFERENCES `orderitem` (`id`),
  ADD CONSTRAINT `FK128D1445BB536A3E` FOREIGN KEY (`material_id`) REFERENCES `material` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
