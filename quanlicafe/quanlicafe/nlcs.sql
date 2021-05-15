-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 31, 2019 at 07:30 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nlcs`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `id` int(6) NOT NULL,
  `time` datetime NOT NULL,
  `empaccount` varchar(20) COLLATE utf8_vietnamese_ci NOT NULL,
  `total` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`id`, `time`, `empaccount`, `total`) VALUES
(0, '2019-10-30 07:10:47', 'giangphan', 156000),
(1, '2019-10-30 07:10:01', 'giangphan', 457000),
(2, '2019-10-30 07:10:13', 'giangphan', 952000),
(3, '2019-10-31 10:10:16', 'giangphan', 58000);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(4) UNSIGNED NOT NULL,
  `fullname` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `account` varchar(20) COLLATE utf8_vietnamese_ci NOT NULL,
  `password` varchar(200) COLLATE utf8_vietnamese_ci NOT NULL,
  `id_num` varchar(13) COLLATE utf8_vietnamese_ci NOT NULL,
  `address` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `phone` varchar(10) COLLATE utf8_vietnamese_ci NOT NULL,
  `job` varchar(20) COLLATE utf8_vietnamese_ci NOT NULL,
  `start` varchar(15) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `user_group` varchar(10) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `fullname`, `account`, `password`, `id_num`, `address`, `phone`, `job`, `start`, `user_group`) VALUES
(1, 'Cao Van Quốc', 'vanquoc', 'a940d8b1b4dbed2f777656fd0d965759d99c8ea9', '331800117', 'Da Nang', '0778328682', 'Quán lẩu', '2021', 'admin'),
(2, 'Lâm Văn Duy', 'dilam', 'f502e82c25bba5a06cf68ffa87ecd02371c1a975', '123456789', 'Chu Thanh, Kiên Giang', '0859711330', 'Quan cafe', '2018', ''),
(3, 'Nguyễn Lê Khang', 'khangnguyen', 'c863bacbc71869fc68a88d11b1f8c6d3b2f42ca9', '987654321', 'Mang Thất, Vành Long', '0939964344', 'Phúc Kháng', '2018', NULL),
(4, 'Trần Văn Khải', 'khoitran', 'cae1b52d0ab8b788a944a94be70dedffa876bd61', '123654987', 'Giang kiên, Kiên Giang', '0392959702', 'Phúc kháng', '2018', NULL),
(5, 'Nguyễn Anh Khâm', 'khamnguyen', '5f79460e4f906c045759e7bb5580b62aceb2cc85', '123456987', 'Long Mẫn¹, Hậu Giang', '0356879141', 'Châu biên', '2018', NULL),
(6, 'Nguyễn Minh Thuật', 'thuatnguyen', '4aa49a57b3c11757e7e391f52347572bb837597f', '321456987', 'Văn Lâm, VÄ©nh Long', '0929090507', 'Phăn văn', '2018', NULL),
(7, 'Hồ Khánh Duy', 'duyho', '00fb8183479aed9947aebded28b36c57de7eb16b', '321546789', 'Long Mẫn¹, Hậu Giang', '0929262646', 'Phúc khán', '2018', NULL),
(8, 'Trang văn nghĩa', 'nghiatran', 'e03a3b0df7ef2aa513131811010f32f66cfa8e06', '312645978', 'Châu khuê', '0907047617', 'Order', '2018', 'order'),
(11, 'Le Thanh Luong', 'luongle', 'aa93e733a85dcd3e134fca45d926427e19a05afb', '121345648', 'khai hòa, Sóc trăng', '0824521572', 'Order', '2018', 'order'),
(14, 'Trần văn sáng', 'sangtran', 'fbd0b9c3677241899bad77be49dcbb69471a7ef5', '226444232', 'Bình Minh, Văn Long', '0254545444', 'Châu biên', '2018', '');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `species` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `price` int(11) NOT NULL,
  `thumb_img` varchar(200) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `species`, `price`, `thumb_img`) VALUES
(1, 'Americano', 'Cafe', 39000, 'https://product.hstatic.net/1000075078/product/americano-da_7495646eaad24b8cbe0e68e8e479f01f_master.jpg'),
(2, 'Cafe', 'Cafe', 29000, 'https://product.hstatic.net/1000075078/product/latte-nong_ffcd92de11f74937bce4197823246d07_master.jpg'),
(3, 'Cafe đen', 'Cafe', 29000, 'https://product.hstatic.net/1000075078/product/cafe-den-da_18234c186f2f44f0a2d7ec1ce0e58158_master.jpg'),
(5, 'Cappucinno', 'Cafe', 45000, 'https://product.hstatic.net/1000075078/product/capu-nong_a2a47a422fa94e8194e9d4c4badba9d3_master.jpg'),
(6, 'Cafe đá xay', 'Cafe', 55000, 'https://product.hstatic.net/1000075078/product/cafe-da-say_3de4ce716b534b1183736c2ce0cdbc25_master.jpg'),
(7, 'Cafe Mo Cha', 'Cafe', 45000, 'https://product.hstatic.net/1000075078/product/mocha-nong_66ebb6f03a874a4391fc80ad69264ea5_master.jpg'),
(8, 'Espresso', 'Cafe', 50000, 'https://product.hstatic.net/1000075078/product/espresso-nong_4b32833e9a5f48768ea5d5d2a4df0303_master.jpg'),
(9, 'Cafe phin', 'Cafe', 50000, 'https://product.hstatic.net/1000075078/product/cafe-phin_cc4ee26d8e974d858739de6539642e65.jpg'),
(10, 'Bánh chocolate', 'Bánh & snack', 29000, 'https://product.hstatic.net/1000075078/product/choco_1x1_4faf8c80e6604cad88ce30528e2bd409_large.jpg'),
(11, 'Bánh Croissant', 'Bánh & snack', 29000, 'https://product.hstatic.net/1000075078/product/sungtrau_1x1_0e9a3e2590794cb9a6ff7ad9d9562c25_large.jpg'),
(12, 'Bánh matcha', 'Bánh & snack', 29000, 'https://product.hstatic.net/1000075078/product/matcha_e20c8a39ffc14640ae55ed131c01080f_master.jpg'),
(13, 'Bánh mì bông phô mai', 'Bánh & snack', 32000, 'https://product.hstatic.net/1000075078/product/bmi-cha-bong-pho-mai_a1cedd81aab643afad75dc01242e42ce_master.jpg'),
(14, 'Bánh gấu chocolate', 'Bánh & Snack', 39000, 'https://product.hstatic.net/1000075078/product/gau-choco_394bea9ebb224ae2a32efe0183c417ca.jpg'),
(15, 'Bánh bông lan trứng muối', 'Bánh & Snack', 29000, 'https://product.hstatic.net/1000075078/product/bong-lan-trung-muoi_538c729b19ce49b5aabaaca242171a51_master.jpg'),
(16, 'Bánh bao hai trứng cút', 'Bánh & Snack', 25000, 'https://product.hstatic.net/1000075078/product/bbao-2-trung_883feca9c9974d11ad062a83e246808f_master.jpg'),
(17, 'Bánh Triamisu', 'Bánh & Snack', 95000, 'https://product.hstatic.net/1000075078/product/tiramisu_9d4baf1c996640a8b4516a2a5be4d43e.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `shifts`
--

CREATE TABLE `shifts` (
  `id` int(6) UNSIGNED NOT NULL,
  `shiftName` varchar(10) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `dayOfShift` varchar(10) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `empAccount` varchar(20) COLLATE utf8_vietnamese_ci NOT NULL,
  `salaryOfShift` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `shifts`
--

INSERT INTO `shifts` (`id`, `shiftName`, `dayOfShift`, `empAccount`, `salaryOfShift`) VALUES
(97, '1', '2', 'dilam', 100000),
(98, '2', '2', 'dilam', 100000),
(99, '1', '3', 'dilam', 100000),
(100, '2', '3', 'dilam', 100000),
(101, '1', '4', 'dilam', 100000),
(102, '2', '4', 'dilam', 100000),
(103, '3', '5', 'dilam', 100000),
(104, '4', '5', 'dilam', 100000),
(105, '3', '6', 'dilam', 100000),
(106, '4', '6', 'dilam', 100000),
(107, '3', '7', 'dilam', 100000),
(108, '4', '7', 'dilam', 100000),
(109, '1', '2', 'tuongtran', 100000),
(110, '2', '2', 'tuongtran', 100000),
(111, '1', '3', 'tuongtran', 100000),
(112, '2', '3', 'tuongtran', 100000),
(113, '1', '4', 'tuongtran', 100000),
(114, '2', '4', 'tuongtran', 100000),
(115, '1', '5', 'tuongtran', 100000),
(116, '2', '5', 'tuongtran', 100000),
(117, '1', '6', 'tuongtran', 100000),
(118, '2', '6', 'tuongtran', 100000),
(119, '1', '7', 'tuongtran', 100000),
(120, '2', '7', 'tuongtran', 100000),
(121, '1', '8', 'tuongtran', 100000),
(122, '2', '8', 'tuongtran', 100000),
(123, '3', '2', 'luongle', 100000),
(124, '4', '2', 'luongle', 100000),
(125, '3', '3', 'luongle', 100000),
(126, '4', '3', 'luongle', 100000),
(127, '3', '4', 'luongle', 100000),
(128, '4', '4', 'luongle', 100000),
(129, '3', '5', 'luongle', 100000),
(130, '4', '5', 'luongle', 100000),
(131, '3', '6', 'luongle', 100000),
(132, '4', '6', 'luongle', 100000),
(133, '3', '7', 'luongle', 100000),
(134, '4', '7', 'luongle', 100000),
(135, '3', '8', 'luongle', 100000),
(136, '4', '8', 'luongle', 100000),
(137, '1', '5', 'khamnguyen', 100000),
(138, '2', '5', 'khamnguyen', 100000),
(139, '1', '6', 'khamnguyen', 100000),
(140, '2', '6', 'khamnguyen', 100000),
(141, '1', '7', 'khamnguyen', 100000),
(142, '2', '7', 'khamnguyen', 100000),
(143, '3', '2', 'khamnguyen', 100000),
(144, '4', '2', 'khamnguyen', 100000),
(145, '3', '3', 'khamnguyen', 100000),
(146, '4', '3', 'khamnguyen', 100000),
(147, '3', '4', 'khamnguyen', 100000),
(148, '4', '4', 'khamnguyen', 100000),
(149, '1', '8', 'dattran', 100000),
(150, '2', '8', 'dattran', 100000),
(151, '3', '8', 'dattran', 100000),
(152, '4', '8', 'dattran', 100000),
(153, '1', '2', 'khangnguyen', 100000),
(154, '2', '2', 'khangnguyen', 100000),
(155, '3', '2', 'khangnguyen', 100000),
(156, '4', '2', 'khangnguyen', 100000),
(157, '1', '4', 'khangnguyen', 100000),
(158, '2', '4', 'khangnguyen', 100000),
(159, '3', '4', 'khangnguyen', 100000),
(160, '4', '4', 'khangnguyen', 100000),
(161, '1', '6', 'khangnguyen', 100000),
(162, '2', '6', 'khangnguyen', 100000),
(163, '3', '6', 'khangnguyen', 100000),
(164, '4', '6', 'khangnguyen', 100000),
(165, '1', '8', 'khangnguyen', 100000),
(166, '2', '8', 'khangnguyen', 100000),
(167, '3', '8', 'khangnguyen', 100000),
(168, '4', '8', 'khangnguyen', 100000),
(169, '1', '3', 'khoitran', 100000),
(170, '2', '3', 'khoitran', 100000),
(171, '3', '3', 'khoitran', 100000),
(172, '4', '3', 'khoitran', 100000),
(173, '1', '5', 'khoitran', 100000),
(174, '2', '5', 'khoitran', 100000),
(175, '3', '5', 'khoitran', 100000),
(176, '4', '5', 'khoitran', 100000),
(177, '1', '7', 'khoitran', 100000),
(178, '2', '7', 'khoitran', 100000),
(179, '3', '7', 'khoitran', 100000),
(180, '4', '7', 'khoitran', 100000);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` int(4) UNSIGNED NOT NULL,
  `name` varchar(30) COLLATE utf8_vietnamese_ci NOT NULL,
  `phone` varchar(10) COLLATE utf8_vietnamese_ci NOT NULL,
  `address` varchar(100) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `name`, `phone`, `address`) VALUES
(0, 'Công ty cổ phần Bình Minh', '0934524014',' 68 Nguyễn tất thành, Quận 1, TP. HCM');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id`),
  ADD KEY `empaccount` (`empaccount`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `account` (`account`),
  ADD KEY `account_2` (`account`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shifts`
--
ALTER TABLE `shifts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `empAccount` (`empAccount`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `shifts`
--
ALTER TABLE `shifts`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `bill_ibfk_1` FOREIGN KEY (`empaccount`) REFERENCES `employees` (`account`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `shifts`
--
ALTER TABLE `shifts`
  ADD CONSTRAINT `shifts_ibfk_1` FOREIGN KEY (`empAccount`) REFERENCES `employees` (`account`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
