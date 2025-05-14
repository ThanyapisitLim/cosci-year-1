-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 05, 2025 at 06:58 PM
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
-- Database: `delivery_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `discount`
--

CREATE TABLE `discount` (
  `discount_id` varchar(36) NOT NULL,
  `discount_code` varchar(255) DEFAULT NULL,
  `discount_amount` int(11) DEFAULT NULL,
  `discount_min` int(11) DEFAULT NULL,
  `discount_max` int(11) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `discount_status` enum('active','expired') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `discount`
--

INSERT INTO `discount` (`discount_id`, `discount_code`, `discount_amount`, `discount_min`, `discount_max`, `start_date`, `end_date`, `discount_status`) VALUES
('dis001', 'CODE001', 30, 0, 200, '2025-04-01 00:00:00', '2025-04-30 00:00:00', 'active'),
('dis002', 'CODE002', 25, 50, 200, '2025-04-02 00:00:00', '2025-04-15 00:00:00', 'expired'),
('dis003', 'CODE003', 50, 0, 300, '2025-04-05 00:00:00', '2025-04-20 00:00:00', 'active'),
('dis004', 'CODE004', 25, 0, 100, '2025-04-06 00:00:00', '2025-04-25 00:00:00', 'expired'),
('dis005', 'CODE005', 50, 0, 150, '2025-04-10 00:00:00', '2025-04-30 00:00:00', 'active'),
('dis006', 'CODE006', 35, 50, 150, '2025-04-11 00:00:00', '2025-04-20 00:00:00', 'expired'),
('dis007', 'CODE007', 25, 0, 150, '2025-04-15 00:00:00', '2025-04-30 00:00:00', 'active'),
('dis008', 'CODE008', 40, 50, 100, '2025-04-18 00:00:00', '2025-04-30 00:00:00', 'expired'),
('dis009', 'CODE009', 25, 0, 100, '2025-04-20 00:00:00', '2025-05-01 00:00:00', 'active'),
('dis010', 'CODE010', 20, 150, 200, '2025-04-01 00:00:00', '2025-04-15 00:00:00', 'expired'),
('dis011', 'CODE011', 30, 0, 100, '2025-04-10 00:00:00', '2025-04-30 00:00:00', 'active'),
('dis012', 'CODE012', 25, 0, 50, '2025-04-15 00:00:00', '2025-05-01 00:00:00', 'expired'),
('dis013', 'CODE013', 30, 50, 100, '2025-04-05 00:00:00', '2025-04-25 00:00:00', 'active'),
('dis014', 'CODE014', 20, 200, 250, '2025-04-01 00:00:00', '2025-04-20 00:00:00', 'expired'),
('dis015', 'CODE015', 20, 0, 100, '2025-04-10 00:00:00', '2025-05-01 00:00:00', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE `driver` (
  `driver_id` varchar(36) NOT NULL,
  `driver_name` varchar(255) DEFAULT NULL,
  `driver_surname` varchar(255) DEFAULT NULL,
  `driver_phonenum` varchar(255) DEFAULT NULL,
  `driver_plat` varchar(255) DEFAULT NULL,
  `driver_cartype` varchar(255) DEFAULT NULL,
  `driver_create_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`driver_id`, `driver_name`, `driver_surname`, `driver_phonenum`, `driver_plat`, `driver_cartype`, `driver_create_at`) VALUES
('dr001', 'Somchai', 'Sukjai', '0812345670', 'กข1234', 'Mazda 2', '2024-02-28 05:58:57'),
('dr002', 'Somsri', 'Thongdee', '0812345671', 'ขจ2345', 'Toyota Altis', '2023-10-26 14:48:39'),
('dr003', 'Prasert', 'Kongsuwan', '0812345672', 'คง3456', 'Honda City', '2024-07-10 00:00:00'),
('dr004', 'Chaiwat', 'Boonmee', '0812345673', 'ทบ4567', 'Nissan Almera', '2024-06-01 00:00:00'),
('dr005', 'Kanchana', 'Chaiyasan', '0812345674', 'ศร5678', 'Toyota Vios', '2024-05-01 00:00:00'),
('dr006', 'Nattapong', 'Wongchai', '0812345675', 'พย6789', 'MG ZS', '2024-04-12 00:00:00'),
('dr007', 'Pimchanok', 'Khamsing', '0812345676', 'กข2222', 'Toyota Yaris', '2024-03-20 00:00:00'),
('dr008', 'Apichat', 'Sripai', '0812345677', 'คง3333', 'Suzuki Ciaz', '2024-05-05 00:00:00'),
('dr009', 'Sudarat', 'Sritong', '0812345678', 'บต4444', 'Hyundai Accent', '2024-06-05 00:00:00'),
('dr010', 'Anan', 'Malai', '0812345679', 'ชย5555', 'Chevrolet Captiva', '2024-07-01 00:00:00'),
('dr011', 'Worapong', 'Yongchai', '0812345680', 'ณฐ6666', 'Ford Focus', '2024-05-08 00:00:00'),
('dr012', 'Kittiya', 'Phromma', '0812345681', 'ธน7777', 'Isuzu D-Max', '2024-04-18 00:00:00'),
('dr013', 'Niran', 'Dechachai', '0812345682', 'บจ8888', 'Mazda CX-3', '2024-03-30 00:00:00'),
('dr014', 'Patcharee', 'Kittisak', '0812345683', 'ตม0001', 'Honda Civic', '2024-06-12 00:00:00'),
('dr015', 'Ratchanon', 'Thavorn', '0812345684', 'ตม0001', 'Honda Civic', '2024-06-12 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `driver_review`
--

CREATE TABLE `driver_review` (
  `driver_id` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `driver_review_rating` int(11) DEFAULT NULL,
  `driver_review_text` varchar(255) DEFAULT NULL,
  `driver_review_create_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `driver_review`
--

INSERT INTO `driver_review` (`driver_id`, `user_id`, `driver_review_rating`, `driver_review_text`, `driver_review_create_at`) VALUES
('dr001', 'u012', 4, 'On time and professional.', '2024-06-01 12:05:00'),
('dr002', 'u011', 5, 'Kind and respectful.', '2024-05-01 10:30:00'),
('dr003', 'u007', 5, 'Very polite and friendly.', '2024-07-01 10:15:00'),
('dr004', 'u013', 5, 'Nice and cheerful driver.', '2024-06-10 08:45:00'),
('dr005', 'u004', 4, 'Excellent service.', '2024-05-22 16:00:00'),
('dr006', 'u014', 5, 'Smooth ride and respectful.', '2024-05-15 14:20:00'),
('dr007', 'u009', 5, 'Drove safely and efficiently.', '2024-04-10 13:40:00'),
('dr008', 'u005', 4, 'Could improve punctuality.', '2024-05-20 09:20:00'),
('dr009', 'u008', 4, 'Late but apologized.', '2024-06-20 09:00:00'),
('dr010', 'u015', 4, 'Great driving skills.', '2024-06-20 17:10:00'),
('dr011', 'u001', 4, 'Asked for directions politely.', '2024-04-15 13:50:00'),
('dr012', 'u010', 5, 'Would ride again!', '2024-06-28 17:25:00'),
('dr013', 'u002', 5, 'Good communication.', '2024-05-01 11:10:00'),
('dr014', 'u006', 5, 'Helpful with delivery.', '2024-07-15 18:15:00'),
('dr015', 'u003', 5, 'Clean vehicle and good attitude.', '2024-07-25 08:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `mart`
--

CREATE TABLE `mart` (
  `mart_id` varchar(36) NOT NULL,
  `mart_name` varchar(255) DEFAULT NULL,
  `mart_phonenum` varchar(255) DEFAULT NULL,
  `mart_opentime` varchar(255) DEFAULT NULL,
  `mart_closetime` varchar(255) DEFAULT NULL,
  `mart_category` enum('convenience','supermarket','grocery') DEFAULT NULL,
  `mart_create_at` datetime DEFAULT NULL,
  `mart_location_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mart`
--

INSERT INTO `mart` (`mart_id`, `mart_name`, `mart_phonenum`, `mart_opentime`, `mart_closetime`, `mart_category`, `mart_create_at`, `mart_location_id`) VALUES
('m001', 'sukjai', '0812345678', '08:00', '22:00', 'grocery', '2022-11-15 10:00:00', 'ml001'),
('m002', 'Lotus', '0891234567', '08:00', '22:00', 'convenience', '2023-01-20 09:15:00', 'ml002'),
('m003', 'Tops', '0823456789', '08:00', '22:00', 'supermarket', '2022-07-05 14:45:00', 'ml003'),
('m004', 'RuayRuay', '0834567890', '08:00', '22:00', 'grocery', '2022-05-12 16:30:00', 'ml004'),
('m005', 'CJ', '0845678901', '08:00', '22:00', 'convenience', '2023-02-08 11:25:00', 'ml005'),
('m006', 'EastMarket', '0856789012', '08:00', '22:00', 'supermarket', '2021-09-18 08:10:00', 'ml006'),
('m007', 'Fahkarm', '0867890123', '08:00', '22:00', 'grocery', '2023-03-03 13:00:00', 'ml007'),
('m008', 'Lawsons', '0878901234', '08:00', '22:00', 'convenience', '2022-04-27 17:50:00', 'ml008'),
('m009', 'Mangmee', '0889012345', '08:00', '22:00', 'supermarket', '2021-11-11 15:40:00', 'ml009'),
('m010', 'Nudee', '0890123456', '08:00', '22:00', 'grocery', '2022-12-31 12:00:00', 'ml010');

-- --------------------------------------------------------

--
-- Table structure for table `mart_location`
--

CREATE TABLE `mart_location` (
  `mart_location_id` varchar(36) NOT NULL,
  `mart_location_house_num` varchar(255) DEFAULT NULL,
  `mart_location_street` varchar(255) DEFAULT NULL,
  `mart_location_subdistrict` varchar(255) DEFAULT NULL,
  `mart_location_district` varchar(255) DEFAULT NULL,
  `mart_location_province` varchar(255) DEFAULT NULL,
  `mart_location_post_code` int(11) DEFAULT NULL,
  `mart_location_country` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mart_location`
--

INSERT INTO `mart_location` (`mart_location_id`, `mart_location_house_num`, `mart_location_street`, `mart_location_subdistrict`, `mart_location_district`, `mart_location_province`, `mart_location_post_code`, `mart_location_country`) VALUES
('ml001', '101/11', 'Rama IV Road', 'Lumphini Subdistrict', 'Pathumwan District', 'Bangkok', 10330, 'Thailand'),
('ml002', '11/234', 'Nimmanhaemin Road', 'Suthep Subdistrict', 'Mueang Chiang Mai\r\nDistrict', 'Chiang Mai', 50200, 'Thailand'),
('ml003', '278/23', 'Tiwanon Road', 'Talat Khwan Subdistrict', 'Mueang Nonthaburi\r\nDistrict', 'Nonthaburi', 11000, 'Thailand'),
('ml004', '123/104', 'Wichit Songkhram Road', 'Talat Yai Subdistrict', 'Mueang Phuket\r\nDistrict', 'Phuket', 83000, 'Thailand'),
('ml005', '10/13', 'Klang Muang Road', 'Nai Mueang Subdistrict', 'Mueang Khon Kaen\r\nDistrict', 'Khon Kaen', 40000, 'Thailand'),
('ml006', '10/6', 'Mittraphap Road', 'Nai Mueang Subdistrict', 'Mueang Nakhon Ratchasima\r\nDistrict', 'Nakhon Ratchasima', 30000, 'Thailand'),
('ml007', '135/25', 'Pho Sri Road', 'Mak Khaeng Subdistrict', 'Mueang Udon Thani\r\nDistrict', 'Udon Thani', 41000, 'Thailand'),
('ml008', '238/49', 'Pattaya Second Road', 'Nong Prue Subdistrict', 'Bang Lamung\r\nDistrict', 'Chonburi', 20150, 'Thailand'),
('ml009', '138/394', 'Niphat Songkroh 1 Road', 'Hat Yai Subdistrict', 'Hat Yai District', 'Songkhla', 90110, 'Thailand'),
('ml010', '11/45', 'Phahonyothin Road', 'Rob Wiang Subdistrict', 'Mueang Chiang Rai\r\nDistrict', 'Chiang Rai', 57000, 'Thailand');

-- --------------------------------------------------------

--
-- Table structure for table `mart_order`
--

CREATE TABLE `mart_order` (
  `mart_order_id` varchar(36) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `driver_id` varchar(255) DEFAULT NULL,
  `discount_id` varchar(255) DEFAULT NULL,
  `mart_id` varchar(255) DEFAULT NULL,
  `mart_order_time` datetime DEFAULT NULL,
  `mart_order_price` int(11) DEFAULT NULL,
  `mart_payment_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mart_order`
--

INSERT INTO `mart_order` (`mart_order_id`, `user_id`, `driver_id`, `discount_id`, `mart_id`, `mart_order_time`, `mart_order_price`, `mart_payment_id`) VALUES
('mori001', 'u002', 'dr008', NULL, 'm003', '2025-03-11 10:20:00', 94, 'mpay001'),
('mori002', 'u006', 'dr004', NULL, 'm004', '2025-03-11 10:50:00', 530, 'mpay002'),
('mori003', 'u011', 'dr010', 'dis009', 'm001', '2025-03-11 10:55:00', 195, 'mpay003'),
('mori004', 'u015', 'dr007', NULL, 'm006', '2025-03-11 11:35:00', 460, 'mpay004'),
('mori005', 'u003', 'dr005', 'dis011', 'm003', '2025-03-11 11:45:00', 59, 'mpay005'),
('mori006', 'u010', 'dr013', 'dis015', 'm005', '2025-03-11 11:53:00', 150, 'mpay006'),
('mori007', 'u004', 'dr009', 'dis003', 'm007', '2025-03-11 12:40:00', 264, 'mpay007'),
('mori008', 'u009', 'dr001', NULL, 'm004', '2025-03-11 12:43:00', 430, 'mpay008'),
('mori009', 'u014', 'dr012', 'dis013', 'm010', '2025-03-11 12:48:00', 245, 'mpay009'),
('mori010', 'u007', 'dr002', 'dis006', 'm009', '2025-03-11 13:15:00', 327, 'mpay010'),
('mori011', 'u013', 'dr008', NULL, 'm012', '2025-03-11 13:27:00', 156, 'mpay011'),
('mori012', 'u005', 'dr015', 'dis004', 'm002', '2025-03-11 13:45:00', 785, 'mpay012'),
('mori013', 'u001', 'dr011', NULL, 'm008', '2025-03-11 14:10:00', 542, 'mpay013'),
('mori014', 'u008', 'dr003', 'dis010', 'm005', '2025-03-11 14:23:00', 211, 'mpay014'),
('mori015', 'u012', 'dr014', NULL, 'm011', '2025-03-11 14:50:00', 378, 'mpay015'),
('mori016', 'u002', 'dr006', 'dis007', 'm014', '2025-03-11 15:12:00', 95, 'mpay016'),
('mori017', 'u015', 'dr001', NULL, 'm003', '2025-03-11 15:30:00', 632, 'mpay017'),
('mori018', 'u009', 'dr013', 'dis002', 'm007', '2025-03-11 15:45:00', 287, 'mpay018'),
('mori019', 'u004', 'dr010', NULL, 'm001', '2025-03-11 16:03:00', 450, 'mpay019'),
('mori020', 'u011', 'dr005', 'dis014', 'm010', '2025-03-11 16:20:00', 173, 'mpay020'),
('mori021', 'u003', 'dr012', NULL, 'm013', '2025-03-11 16:42:00', 529, 'mpay021'),
('mori022', 'u014', 'dr007', 'dis001', 'm006', '2025-03-11 17:05:00', 398, 'mpay022'),
('mori023', 'u006', 'dr009', NULL, 'm015', '2025-03-11 17:27:00', 89, 'mpay023'),
('mori024', 'u010', 'dr004', 'dis012', 'm004', '2025-03-11 17:50:00', 755, 'mpay024'),
('mori025', 'u008', 'dr015', NULL, 'm009', '2025-03-11 18:15:00', 299, 'mpay025'),
('mori026', 'u013', 'dr002', 'dis008', 'm012', '2025-03-11 18:40:00', 472, 'mpay026'),
('mori027', 'u007', 'dr011', NULL, 'm002', '2025-03-11 19:05:00', 124, 'mpay027'),
('mori028', 'u001', 'dr014', 'dis005', 'm008', '2025-03-11 19:25:00', 637, 'mpay028'),
('mori029', 'u012', 'dr003', NULL, 'm011', '2025-03-11 19:48:00', 276, 'mpay029'),
('mori030', 'u005', 'dr006', 'dis015', 'm014', '2025-03-11 20:10:00', 583, 'mpay030');

-- --------------------------------------------------------

--
-- Table structure for table `mart_order_item`
--

CREATE TABLE `mart_order_item` (
  `mart_order_id` varchar(255) NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `mart_order_item_quantity` int(11) DEFAULT NULL,
  `mart_order_item_price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mart_order_item`
--

INSERT INTO `mart_order_item` (`mart_order_id`, `product_id`, `mart_order_item_quantity`, `mart_order_item_price`) VALUES
('mori001', 'p007', 2, 12),
('mori001', 'p008', 2, 35),
('mori002', 'p010', 2, 180),
('mori002', 'p011', 1, 70),
('mori002', 'p012', 5, 20),
('mori003', 'p001', 3, 45),
('mori003', 'p003', 2, 30),
('mori004', 'p016', 2, 75),
('mori004', 'p017', 3, 30),
('mori004', 'p018', 4, 55),
('mori005', 'p007', 2, 12),
('mori005', 'p008', 1, 35),
('mori006', 'p015', 15, 10),
('mori007', 'p020', 2, 99),
('mori007', 'p021', 3, 22),
('mori008', 'p010', 2, 180),
('mori008', 'p011', 1, 70),
('mori009', 'p028', 2, 45),
('mori009', 'p029', 1, 125),
('mori009', 'p030', 2, 60),
('mori010', 'p001', 4, 45),
('mori010', 'p003', 3, 30),
('mori011', 'p005', 1, 60),
('mori011', 'p006', 2, 120),
('mori012', 'p002', 2, 85),
('mori012', 'p004', 2, 25),
('mori013', 'p003', 4, 30),
('mori013', 'p008', 2, 35),
('mori014', 'p014', 1, 90),
('mori014', 'p017', 3, 30),
('mori015', 'p018', 3, 55),
('mori015', 'p021', 1, 22),
('mori016', 'p016', 2, 75),
('mori016', 'p019', 3, 35),
('mori017', 'p009', 3, 55),
('mori017', 'p013', 2, 40),
('mori018', 'p013', 3, 40),
('mori018', 'p019', 1, 35),
('mori019', 'p016', 2, 75),
('mori019', 'p021', 3, 22),
('mori020', 'p002', 2, 85),
('mori020', 'p017', 4, 30),
('mori021', 'p014', 2, 90),
('mori021', 'p020', 3, 99),
('mori022', 'p027', 1, 33),
('mori022', 'p029', 2, 125),
('mori023', 'p012', 5, 20),
('mori023', 'p016', 3, 75),
('mori024', 'p003', 4, 30),
('mori024', 'p019', 2, 35),
('mori025', 'p020', 3, 99),
('mori025', 'p028', 1, 45),
('mori026', 'p014', 2, 90),
('mori026', 'p016', 2, 75),
('mori027', 'p009', 3, 55),
('mori027', 'p019', 1, 35),
('mori028', 'p002', 2, 85),
('mori028', 'p017', 2, 30),
('mori029', 'p014', 2, 90),
('mori029', 'p018', 4, 55),
('mori030', 'p013', 3, 40),
('mori030', 'p019', 2, 35);

-- --------------------------------------------------------

--
-- Table structure for table `mart_payment`
--

CREATE TABLE `mart_payment` (
  `mart_payment_id` varchar(255) NOT NULL,
  `mart_order_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `mart_payment_method` enum('credit_card','cash') NOT NULL,
  `mart_payment_price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mart_payment`
--

INSERT INTO `mart_payment` (`mart_payment_id`, `mart_order_id`, `user_id`, `mart_payment_method`, `mart_payment_price`) VALUES
('mpay001', 'mori001', 'u002', 'cash', 94),
('mpay002', 'mori002', 'u006', 'credit_card', 530),
('mpay003', 'mori003', 'u011', 'credit_card', 170),
('mpay004', 'mori004', 'u015', 'credit_card', 460),
('mpay005', 'mori005', 'u003', 'cash', 29),
('mpay006', 'mori006', 'u010', 'cash', 130),
('mpay007', 'mori007', 'u004', 'credit_card', 214),
('mpay008', 'mori008', 'u009', 'credit_card', 430),
('mpay009', 'mori009', 'u014', 'credit_card', 215),
('mpay010', 'mori010', 'u007', 'credit_card', 292),
('mpay011', 'mori011', 'u013', 'credit_card', 156),
('mpay012', 'mori012', 'u005', 'cash', 760),
('mpay013', 'mori013', 'u001', 'credit_card', 542),
('mpay014', 'mori014', 'u008', 'cash', 191),
('mpay015', 'mori015', 'u012', 'credit_card', 378),
('mpay016', 'mori016', 'u002', 'cash', 70),
('mpay017', 'mori017', 'u015', 'credit_card', 632),
('mpay018', 'mori018', 'u009', 'cash', 262),
('mpay019', 'mori019', 'u004', 'credit_card', 450),
('mpay020', 'mori020', 'u011', 'cash', 173),
('mpay021', 'mori021', 'u003', 'credit_card', 529),
('mpay022', 'mori022', 'u014', 'cash', 368),
('mpay023', 'mori023', 'u006', 'credit_card', 89),
('mpay024', 'mori024', 'u010', 'cash', 730),
('mpay025', 'mori025', 'u008', 'credit_card', 299),
('mpay026', 'mori026', 'u013', 'cash', 432),
('mpay027', 'mori027', 'u007', 'credit_card', 124),
('mpay028', 'mori028', 'u001', 'cash', 587),
('mpay029', 'mori029', 'u012', 'credit_card', 276),
('mpay030', 'mori030', 'u005', 'cash', 563);

-- --------------------------------------------------------

--
-- Table structure for table `mart_status`
--

CREATE TABLE `mart_status` (
  `mart_status_id` varchar(36) NOT NULL,
  `mart_order_id` varchar(255) DEFAULT NULL,
  `mart_status` enum('preparing','deliver','completed','canceled') DEFAULT NULL,
  `mart_status_update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mart_status`
--

INSERT INTO `mart_status` (`mart_status_id`, `mart_order_id`, `mart_status`, `mart_status_update_at`) VALUES
('mst001', 'mori001', 'preparing', '2025-03-11 10:30:00'),
('mst002', 'mori001', 'deliver', '2025-03-11 10:50:00'),
('mst003', 'mori001', 'completed', '2025-03-11 10:55:00'),
('mst004', 'mori002', 'preparing', '2025-03-11 11:00:00'),
('mst005', 'mori003', 'preparing', '2025-03-11 11:10:00'),
('mst006', 'mori002', 'deliver', '2025-03-11 11:30:00'),
('mst007', 'mori002', 'completed', '2025-03-11 11:39:00'),
('mst008', 'mori004', 'preparing', '2025-03-11 11:42:00'),
('mst009', 'mori003', 'deliver', '2025-03-11 11:45:00'),
('mst010', 'mori003', 'completed', '2025-03-11 11:55:00'),
('mst011', 'mori005', 'preparing', '2025-03-11 11:59:00'),
('mst012', 'mori006', 'preparing', '2025-03-11 12:02:00'),
('mst013', 'mori005', 'deliver', '2025-03-11 12:15:00'),
('mst014', 'mori005', 'completed', '2025-03-11 12:26:00'),
('mst015', 'mori006', 'deliver', '2025-03-11 12:31:00'),
('mst016', 'mori006', 'completed', '2025-03-11 12:42:00'),
('mst017', 'mori004', 'canceled', '2025-03-11 12:50:00'),
('mst018', 'mori007', 'preparing', '2025-03-11 12:53:00'),
('mst019', 'mori008', 'preparing', '2025-03-11 12:57:00'),
('mst020', 'mori009', 'preparing', '2025-03-11 13:05:00'),
('mst021', 'mori008', 'deliver', '2025-03-11 13:10:00'),
('mst022', 'mori008', 'completed', '2025-03-11 13:23:00'),
('mst023', 'mori007', 'canceled', '2025-03-11 13:33:00'),
('mst024', 'mori009', 'deliver', '2025-03-11 13:35:00'),
('mst025', 'mori009', 'completed', '2025-03-11 13:45:00'),
('mst026', 'mori010', 'preparing', '2025-03-11 13:50:00'),
('mst027', 'mori010', 'deliver', '2025-03-11 14:05:00'),
('mst028', 'mori010', 'completed', '2025-03-11 14:15:00'),
('mst029', 'mori011', 'preparing', '2025-03-11 14:20:00'),
('mst030', 'mori011', 'deliver', '2025-03-11 14:40:00'),
('mst031', 'mori011', 'completed', '2025-03-11 14:50:00'),
('mst032', 'mori012', 'preparing', '2025-03-11 15:00:00'),
('mst033', 'mori012', 'deliver', '2025-03-11 15:20:00'),
('mst034', 'mori012', 'completed', '2025-03-11 15:30:00'),
('mst035', 'mori013', 'preparing', '2025-03-11 15:40:00'),
('mst036', 'mori013', 'deliver', '2025-03-11 15:50:00'),
('mst037', 'mori013', 'completed', '2025-03-11 16:00:00'),
('mst038', 'mori014', 'preparing', '2025-03-11 16:10:00'),
('mst039', 'mori014', 'deliver', '2025-03-11 16:30:00'),
('mst040', 'mori014', 'completed', '2025-03-11 16:40:00'),
('mst041', 'mori015', 'preparing', '2025-03-11 16:50:00'),
('mst042', 'mori015', 'deliver', '2025-03-11 17:00:00'),
('mst043', 'mori015', 'completed', '2025-03-11 17:10:00'),
('mst044', 'mori016', 'preparing', '2025-03-11 17:20:00'),
('mst045', 'mori016', 'deliver', '2025-03-11 17:30:00'),
('mst046', 'mori016', 'completed', '2025-03-11 17:40:00'),
('mst047', 'mori017', 'preparing', '2025-03-11 17:50:00'),
('mst048', 'mori017', 'deliver', '2025-03-11 18:00:00'),
('mst049', 'mori017', 'completed', '2025-03-11 18:10:00'),
('mst050', 'mori018', 'preparing', '2025-03-11 18:20:00'),
('mst051', 'mori018', 'deliver', '2025-03-11 18:30:00'),
('mst052', 'mori018', 'completed', '2025-03-11 18:40:00'),
('mst053', 'mori019', 'preparing', '2025-03-11 18:50:00'),
('mst054', 'mori019', 'deliver', '2025-03-11 19:00:00'),
('mst055', 'mori019', 'completed', '2025-03-11 19:10:00'),
('mst056', 'mori020', 'preparing', '2025-03-11 13:05:00'),
('mst057', 'mori020', 'deliver', '2025-03-11 13:20:00'),
('mst058', 'mori020', 'completed', '2025-03-11 13:30:00'),
('mst059', 'mori021', 'preparing', '2025-03-11 13:40:00'),
('mst060', 'mori021', 'deliver', '2025-03-11 13:55:00'),
('mst061', 'mori021', 'completed', '2025-03-11 14:05:00'),
('mst062', 'mori022', 'preparing', '2025-03-11 14:15:00'),
('mst063', 'mori022', 'deliver', '2025-03-11 14:30:00'),
('mst064', 'mori022', 'completed', '2025-03-11 14:40:00'),
('mst065', 'mori023', 'preparing', '2025-03-11 14:50:00'),
('mst066', 'mori023', 'deliver', '2025-03-11 15:00:00'),
('mst067', 'mori023', 'completed', '2025-03-11 15:10:00'),
('mst068', 'mori024', 'preparing', '2025-03-11 15:20:00'),
('mst069', 'mori024', 'deliver', '2025-03-11 15:35:00'),
('mst070', 'mori024', 'completed', '2025-03-11 15:45:00'),
('mst071', 'mori025', 'preparing', '2025-03-11 15:55:00'),
('mst072', 'mori025', 'deliver', '2025-03-11 16:05:00'),
('mst073', 'mori025', 'completed', '2025-03-11 16:15:00'),
('mst074', 'mori026', 'preparing', '2025-03-11 16:25:00'),
('mst075', 'mori026', 'deliver', '2025-03-11 16:40:00'),
('mst076', 'mori026', 'completed', '2025-03-11 16:50:00'),
('mst077', 'mori027', 'preparing', '2025-03-11 17:00:00'),
('mst078', 'mori027', 'deliver', '2025-03-11 17:10:00'),
('mst079', 'mori027', 'completed', '2025-03-11 17:20:00'),
('mst080', 'mori028', 'preparing', '2025-03-11 17:30:00'),
('mst081', 'mori028', 'deliver', '2025-03-11 17:40:00'),
('mst082', 'mori028', 'completed', '2025-03-11 17:50:00'),
('mst083', 'mori029', 'preparing', '2025-03-11 18:00:00'),
('mst084', 'mori029', 'deliver', '2025-03-11 18:10:00'),
('mst085', 'mori029', 'completed', '2025-03-11 18:20:00'),
('mst086', 'mori030', 'preparing', '2025-03-11 18:30:00'),
('mst087', 'mori030', 'deliver', '2025-03-11 18:40:00'),
('mst088', 'mori030', 'completed', '2025-03-11 18:50:00');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `menu_id` varchar(36) NOT NULL,
  `restaurant_id` varchar(255) DEFAULT NULL,
  `menu_name` varchar(255) DEFAULT NULL,
  `menu_price` int(11) DEFAULT NULL,
  `menu_description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`menu_id`, `restaurant_id`, `menu_name`, `menu_price`, `menu_description`) VALUES
('rm001', 'r001', 'Pad Thai', 85, 'Stir-fried noodles with shrimp and peanuts'),
('rm002', 'r001', 'Tom Yum Goong', 120, 'Spicy shrimp soup'),
('rm003', 'r001', 'Green Curry Chicken', 100, 'Thai green curry with chicken'),
('rm004', 'r002', 'Khao Soi', 90, 'Northern curry noodles'),
('rm005', 'r002', 'Nam Ngiao', 85, 'Spicy noodle soup with pork'),
('rm006', 'r002', 'Sai Ua', 70, 'Northern sausage'),
('rm007', 'r003', 'Fusion Kra Pao', 95, 'Basil chicken with Japanese twist'),
('rm008', 'r003', 'Spaghetti Tom Yum', 110, 'Thai-Italian fusion pasta'),
('rm009', 'r003', 'Thai Tacos', 105, 'Fusion tacos with Thai fillings'),
('rm010', 'r004', 'Seafood Platter', 350, 'Mixed grilled seafood'),
('rm011', 'r004', 'Crab Fried Rice', 120, 'Fried rice with real crab'),
('rm012', 'r004', 'Grilled Tiger Prawns', 250, 'Fresh grilled prawns'),
('rm013', 'r005', 'Som Tum', 60, 'Papaya salad'),
('rm014', 'r005', 'Sticky Rice with Pork Neck', 85, 'Grilled pork neck'),
('rm015', 'r005', 'Laab Moo', 70, 'Spicy minced pork salad'),
('rm016', 'r006', 'Udon Fried Rice', 75, 'Local-style fried rice'),
('rm017', 'r006', 'Moo Yor Salad', 65, 'Spicy salad with pork sausage'),
('rm018', 'r006', 'Grilled Chicken Set', 90, 'Served with rice and dipping sauce'),
('rm019', 'r007', 'Seafood Spaghetti', 130, 'Fusion Italian-Thai spaghetti'),
('rm020', 'r007', 'Chicken Wrap', 95, 'Wrap with Thai-style grilled chicken'),
('rm021', 'r007', 'Fried Spring Rolls', 60, 'Crispy veggie rolls'),
('rm022', 'r008', 'Beef Biryani', 120, 'Halal biryani rice with beef'),
('rm023', 'r008', 'Chicken Satay', 85, 'Halal grilled chicken skewers'),
('rm024', 'r008', 'Roti with Curry', 70, 'Roti served with spicy curry'),
('rm025', 'r009', 'Chiang Rai Latte', 65, 'Signature local latte'),
('rm026', 'r009', 'Thai Tea Frappe', 55, 'Iced Thai tea blended'),
('rm027', 'r009', 'Sticky Rice Mango', 90, 'Sweet mango with coconut sticky rice'),
('rm028', 'r010', 'Grilled Pork Korat', 95, 'Isaan-style grilled pork'),
('rm029', 'r010', 'Papaya Salad with Crab', 70, 'Som Tum Poo'),
('rm030', 'r010', 'Fried Chicken Isaan Style', 85, 'Spicy fried chicken');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `user_id` varchar(255) DEFAULT NULL,
  `notification_message` varchar(255) DEFAULT NULL,
  `notification_create_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`user_id`, `notification_message`, `notification_create_at`) VALUES
('u001', 'Your order has been shipped.', '2025-04-01 09:12:45'),
('u002', 'New discount is available!', '2025-04-01 11:34:20'),
('u003', 'Your ride is arriving soon.', '2025-04-02 07:56:09'),
('u004', 'Your review was posted.', '2025-04-03 14:03:22'),
('u005', 'Payment received successfully.', '2025-04-04 13:13:13'),
('u006', 'Welcome to our platform!', '2025-04-04 00:00:01'),
('u007', 'Get free delivery for orders today.', '2025-04-05 12:12:12'),
('u008', 'Driver is waiting outside.', '2025-04-06 18:09:59'),
('u009', 'Don’t forget to rate your order.', '2025-04-07 10:10:10'),
('u010', 'System update scheduled tonight.', '2025-04-07 23:59:59'),
('u011', 'Your favorite restaurant has a promo!', '2025-04-08 17:45:30'),
('u012', 'Need help? Chat with support anytime.', '2025-04-08 03:14:15'),
('u013', 'Limited-time mart voucher available.', '2025-04-09 08:08:08'),
('u014', 'We miss you! Here’s 10% off.', '2025-04-09 09:09:09'),
('u015', 'Security alert: New login detected.', '2025-04-09 22:22:22');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `order_id` varchar(36) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `driver_id` varchar(255) DEFAULT NULL,
  `restaurant_id` varchar(255) DEFAULT NULL,
  `discount_id` varchar(255) DEFAULT NULL,
  `payment_id` varchar(255) DEFAULT NULL,
  `order_time` datetime DEFAULT NULL,
  `order_price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`order_id`, `user_id`, `driver_id`, `restaurant_id`, `discount_id`, `payment_id`, `order_time`, `order_price`) VALUES
('or001', 'u008', 'dr008', 'r003', NULL, 'pay001', '2025-04-10 10:30:00', 105),
('or002', 'u002', 'dr004', 'r005', NULL, 'pay002', '2025-04-10 10:45:00', 70),
('or003', 'u011', 'dr012', 'r002', NULL, 'pay003', '2025-04-10 11:00:00', 85),
('or004', 'u014', 'dr004', 'r007', NULL, 'pay004', '2025-04-10 11:15:00', 155),
('or005', 'u005', 'dr012', 'r001', NULL, 'pay005', '2025-04-10 11:30:00', 120),
('or006', 'u013', 'dr009', 'r001', NULL, 'pay006', '2025-04-10 11:45:00', 100),
('or007', 'u007', 'dr012', 'r004', NULL, 'pay007', '2025-04-10 12:00:00', 350),
('or008', 'u012', 'dr008', 'r007', NULL, 'pay008', '2025-04-10 12:15:00', 130),
('or009', 'u001', 'dr009', 'r003', NULL, 'pay009', '2025-04-10 12:30:00', 95),
('or010', 'u010', 'dr013', 'r008', NULL, 'pay010', '2025-04-10 12:45:00', 70),
('or011', 'u001', 'dr001', 'r001', NULL, 'pay011', '2025-04-10 10:30:00', 105),
('or012', 'u003', 'dr010', 'r003', NULL, 'pay012', '2025-04-10 10:45:00', 70),
('or013', 'u005', 'dr005', 'r005', NULL, 'pay013', '2025-04-10 11:00:00', 85),
('or014', 'u010', 'dr003', 'r007', NULL, 'pay014', '2025-04-10 11:15:00', 155),
('or015', 'u005', 'dr011', 'r008', NULL, 'pay015', '2025-04-10 11:30:00', 120),
('or016', 'u009', 'dr014', 'r002', NULL, 'pay016', '2025-04-10 11:45:00', 100),
('or017', 'u007', 'dr010', 'r003', NULL, 'pay017', '2025-04-10 12:00:00', 350),
('or018', 'u010', 'dr007', 'r004', NULL, 'pay018', '2025-04-10 12:15:00', 130),
('or019', 'u002', 'dr005', 'r001', NULL, 'pay019', '2025-04-10 12:30:00', 95),
('or020', 'u011', 'dr004', 'r002', NULL, 'pay020', '2025-04-10 12:45:00', 70),
('or021', 'u010', 'dr012', 'r003', NULL, 'pay021', '2025-04-10 10:30:00', 102),
('or022', 'u001', 'dr003', 'r001', NULL, 'pay022', '2025-04-10 10:45:00', 303),
('or023', 'u011', 'dr001', 'r005', NULL, 'pay023', '2025-04-10 11:00:00', 67),
('or024', 'u009', 'dr003', 'r007', NULL, 'pay024', '2025-04-10 11:15:00', 55),
('or025', 'u004', 'dr012', 'r008', NULL, 'pay025', '2025-04-10 11:30:00', 150),
('or026', 'u010', 'dr010', 'r008', NULL, 'pay026', '2025-04-10 11:45:00', 50),
('or027', 'u006', 'dr001', 'r001', NULL, 'pay027', '2025-04-10 12:00:00', 499),
('or028', 'u005', 'dr003', 'r002', NULL, 'pay028', '2025-04-10 12:15:00', 191),
('or029', 'u003', 'dr004', 'r003', NULL, 'pay029', '2025-04-10 12:30:00', 40),
('or030', 'u008', 'dr013', 'r004', NULL, 'pay030', '2025-04-10 12:45:00', 60);

-- --------------------------------------------------------

--
-- Table structure for table `order_item`
--

CREATE TABLE `order_item` (
  `order_id` varchar(255) NOT NULL,
  `menu_id` varchar(255) NOT NULL,
  `order_item_quantity` int(11) DEFAULT NULL,
  `order_item_price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_item`
--

INSERT INTO `order_item` (`order_id`, `menu_id`, `order_item_quantity`, `order_item_price`) VALUES
('or001', 'rm009', 1, 105),
('or002', 'rm015', 1, 70),
('or003', 'rm005', 1, 85),
('or004', 'rm020', 1, 95),
('or004', 'rm021', 1, 60),
('or005', 'rm002', 1, 120),
('or006', 'rm003', 1, 100),
('or007', 'rm010', 1, 350),
('or008', 'rm019', 1, 130),
('or009', 'rm007', 1, 95),
('or010', 'rm024', 1, 70),
('or011', 'rm009', 1, 105),
('or012', 'rm021', 1, 70),
('or013', 'rm014', 1, 85),
('or014', 'rm019', 1, 95),
('or014', 'rm020', 1, 60),
('or015', 'rm022', 1, 120),
('or016', 'rm006', 1, 100),
('or017', 'rm011', 1, 250),
('or017', 'rm012', 1, 100),
('or018', 'rm019', 1, 130),
('or019', 'rm007', 1, 95),
('or020', 'rm004', 1, 70),
('or021', 'rm008', 1, 102),
('or022', 'rm001', 1, 85),
('or022', 'rm002', 1, 120),
('or022', 'rm003', 1, 98),
('or023', 'rm013', 1, 60),
('or023', 'rm015', 1, 7),
('or024', 'rm023', 1, 55),
('or025', 'rm022', 1, 120),
('or025', 'rm023', 1, 30),
('or026', 'rm024', 1, 50),
('or027', 'rm001', 2, 170),
('or027', 'rm002', 1, 120),
('or027', 'rm003', 1, 100),
('or027', 'rm013', 1, 60),
('or027', 'rm015', 1, 49),
('or028', 'rm004', 1, 90),
('or028', 'rm005', 1, 31),
('or028', 'rm006', 1, 70),
('or029', 'rm021', 1, 40),
('or030', 'rm014', 1, 60);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` varchar(36) NOT NULL,
  `order_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `payment_method` enum('credit_card','cash') DEFAULT NULL,
  `payment_price` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `order_id`, `user_id`, `payment_method`, `payment_price`) VALUES
('pay001', 'or001', 'u008', 'cash', '105'),
('pay002', 'or002', 'u002', 'cash', '70.00'),
('pay003', 'or003', 'u011', 'cash', '85.00'),
('pay004', 'or004', 'u014', 'credit_card', '155.00'),
('pay005', 'or005', 'u005', 'cash', '120.00'),
('pay006', 'or006', 'u013', 'cash', '100.00'),
('pay007', 'or007', 'u007', 'cash', '350.00'),
('pay008', 'or008', 'u012', 'credit_card', '130.00'),
('pay009', 'or009', 'u001', 'cash', '95.00'),
('pay010', 'or010', 'u010', 'cash', '70.00'),
('pay011', 'or011', 'u015', 'cash', '312.00'),
('pay012', 'or012', 'u001', 'cash', '720.00'),
('pay013', 'or013', 'u011', 'cash', '853.00'),
('pay014', 'or014', 'u013', 'credit_card', '155.00'),
('pay015', 'or015', 'u002', 'cash', '130.00'),
('pay016', 'or016', 'u011', 'cash', '140.00'),
('pay017', 'or017', 'u004', 'cash', '300.00'),
('pay018', 'or018', 'u010', 'credit_card', '230.00'),
('pay019', 'or019', 'u003', 'cash', '95.00'),
('pay020', 'or020', 'u005', 'cash', '73.00'),
('pay021', 'or021', 'u006', 'cash', '1035.00'),
('pay022', 'or022', 'u007', 'cash', '723.00'),
('pay023', 'or023', 'u010', 'cash', '855.00'),
('pay024', 'or024', 'u013', 'credit_card', '155.00'),
('pay025', 'or025', 'u012', 'cash', '312.00'),
('pay026', 'or026', 'u009', 'cash', '101.00'),
('pay027', 'or027', 'u009', 'cash', '309.00'),
('pay028', 'or028', 'u013', 'credit_card', '130.00'),
('pay029', 'or029', 'u001', 'cash', '951.00'),
('pay030', 'or030', 'u010', 'cash', '732.00');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` varchar(36) NOT NULL,
  `mart_id` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_quantity` int(11) DEFAULT NULL,
  `product_price` int(11) DEFAULT NULL,
  `product_description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `mart_id`, `product_name`, `product_quantity`, `product_price`, `product_description`) VALUES
('p001', 'm001', 'Toothpaste', NULL, 45, 'Fresh minty toothpaste for daily hygiene'),
('p002', 'm001', 'Shampoo', NULL, 85, 'Smooth & gentle shampoo for all hair types'),
('p003', 'm001', 'Dish Soap', NULL, 30, 'Powerful grease-cutting dish soap'),
('p004', 'm002', 'Tissue Paper', NULL, 25, 'Soft and strong tissue for everyday use'),
('p005', 'm002', 'Hand Sanitizer', NULL, 60, 'Kills 99.9% of germs instantly'),
('p006', 'm002', 'Laundry Detergent', NULL, 120, 'Brightens clothes and removes stains'),
('p007', 'm003', 'Instant Noodles', NULL, 12, 'Tasty and quick meal solution'),
('p008', 'm003', 'Canned Tuna', NULL, 35, 'Premium quality tuna in sunflower oil'),
('p009', 'm003', 'Cooking Oil 1L', NULL, 55, 'Pure vegetable oil for healthy cooking'),
('p010', 'm004', 'Rice 5kg', NULL, 180, 'High-grade jasmine rice, soft & fluffy'),
('p011', 'm004', 'Shaving Cream', NULL, 70, 'Smooth and cool shaving experience'),
('p012', 'm004', 'Facial Tissue', NULL, 20, 'Gentle on skin, perfect for sensitive face'),
('p013', 'm005', 'Garbage Bags', NULL, 40, 'Durable bags for everyday disposal'),
('p014', 'm005', 'Cleaning Spray', NULL, 90, 'Multi-surface spray with fresh scent'),
('p015', 'm005', 'Water Bottle 1.5L', NULL, 10, 'Pure drinking water, easy to carry'),
('p016', 'm006', 'Mouthwash', NULL, 75, 'Freshens breath and kills bacteria'),
('p017', 'm006', 'Toilet Paper', NULL, 30, 'Soft roll with extra absorbency'),
('p018', 'm006', 'Snack Pack', NULL, 55, 'Tasty treats in convenient pack'),
('p019', 'm007', 'Bath Soap', NULL, 35, 'Moisturizing soap with natural extracts'),
('p020', 'm007', 'Floor Cleaner', NULL, 99, 'Lemon-scented cleaner for shiny floors'),
('p021', 'm007', 'Facial Tissue', NULL, 22, 'Gentle and strong for face or hands'),
('p022', 'm008', 'Toothpaste', NULL, 48, 'Fresh breath protection all day'),
('p023', 'm008', 'Canned Tuna', NULL, 38, 'Rich in protein, ready to eat'),
('p024', 'm008', 'Instant Noodles', NULL, 15, 'Delicious noodles ready in 3 minutes'),
('p025', 'm009', 'Shampoo', NULL, 88, 'Nourishing shampoo for shiny hair'),
('p026', 'm009', 'Rice 5kg', NULL, 170, 'Premium Thai jasmine rice'),
('p027', 'm009', 'Dish Soap', NULL, 33, 'Eco-friendly and effective cleaning'),
('p028', 'm010', 'Garbage Bags', NULL, 45, 'Extra strength, no leaks'),
('p029', 'm010', 'Laundry Detergent', NULL, 125, 'Long-lasting fragrance formula'),
('p030', 'm010', 'Cooking Oil 1L', NULL, 60, 'Ideal for stir-fry and deep-fry');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `restaurant_id` varchar(36) NOT NULL,
  `restaurant_name` varchar(255) DEFAULT NULL,
  `restaurant_phonenum` varchar(255) DEFAULT NULL,
  `restaurant_opentime` varchar(255) DEFAULT NULL,
  `restaurant_closetime` varchar(255) DEFAULT NULL,
  `restaurant_category` enum('main','beverage','drink','all') DEFAULT NULL,
  `restaurant_create_at` datetime DEFAULT NULL,
  `restaurant_location_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`restaurant_id`, `restaurant_name`, `restaurant_phonenum`, `restaurant_opentime`, `restaurant_closetime`, `restaurant_category`, `restaurant_create_at`, `restaurant_location_id`) VALUES
('r001', 'Sawasdee Thai', '0912345678', '10:00', '22:00', 'main', '2022-10-01 09:00:00', 'rl001'),
('r002', 'Chiang Mai Noodles', '0923456789', '09:00', '21:00', 'main', '2023-02-15 10:30:00', 'rl002'),
('r003', 'Nonthaburi Eats', '0934567890', '11:00', '23:00', 'main', '2022-08-12 11:45:00', 'rl003'),
('r004', 'Phuket Seafood', '0945678901', '10:30', '22:30', 'main', '2023-01-20 13:20:00', 'rl004'),
('r005', 'Isaan Grill', '0956789012', '11:00', '22:00', 'main', '2022-05-05 15:10:00', 'rl005'),
('r006', 'Udon Local', '0967890123', '10:00', '21:30', 'main', '2023-03-10 12:00:00', 'rl006'),
('r007', 'Pattaya Bites', '0978901234', '09:30', '22:00', 'main', '2022-11-25 14:20:00', 'rl007'),
('r008', 'Hat Yai Halal', '0989012345', '08:00', '20:00', 'main', '2023-01-01 10:10:00', 'rl008'),
('r009', 'Chiang Rai Café', '0890123456', '10:00', '22:00', 'beverage', '2022-09-17 09:45:00', 'rl009'),
('r010', 'Korat Kitchen', '0801234567', '11:00', '23:00', 'main', '2022-12-12 16:00:00', 'rl010');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_location`
--

CREATE TABLE `restaurant_location` (
  `restaurant_location_id` varchar(36) NOT NULL,
  `restaurant_location_house_num` varchar(255) DEFAULT NULL,
  `restaurant_location_street` varchar(255) DEFAULT NULL,
  `restaurant_location_subdistrict` varchar(255) DEFAULT NULL,
  `restaurant_location_district` varchar(255) DEFAULT NULL,
  `restaurant_location_province` varchar(255) DEFAULT NULL,
  `restaurant_location_post_code` int(11) DEFAULT NULL,
  `restaurant_location_country` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `restaurant_location`
--

INSERT INTO `restaurant_location` (`restaurant_location_id`, `restaurant_location_house_num`, `restaurant_location_street`, `restaurant_location_subdistrict`, `restaurant_location_district`, `restaurant_location_province`, `restaurant_location_post_code`, `restaurant_location_country`) VALUES
('rl001', '55/12', 'Sukhumvit Road', 'Khlong Tan', 'Watthana', 'Bangkok', 10110, 'Thailand'),
('rl002', '88/23', 'Tha Phae Road', 'Chang Moi', 'Mueang Chiang Mai', 'Chiang Mai', 50300, 'Thailand'),
('rl003', '12/45', 'Rattanathibet Road', 'Bang Kraso', 'Mueang Nonthaburi', 'Nonthaburi', 11000, 'Thailand'),
('rl004', '78/9', 'Phuket Road', 'Talat Nuea', 'Mueang Phuket', 'Phuket', 83000, 'Thailand'),
('rl005', '101/4', 'Sri Chan Road', 'Nai Mueang', 'Mueang Khon Kaen', 'Khon Kaen', 40000, 'Thailand'),
('rl006', '45/22', 'Chayangkun Road', 'Mak Khaeng', 'Mueang Udon Thani', 'Udon Thani', 41000, 'Thailand'),
('rl007', '99/7', 'Pattaya Beach Road', 'Nong Prue', 'Bang Lamung', 'Chonburi', 20150, 'Thailand'),
('rl008', '22/18', 'Niphat Songkroh 2', 'Hat Yai', 'Hat Yai', 'Songkhla', 90110, 'Thailand'),
('rl009', '66/9', 'Singha Road', 'Rob Wiang', 'Mueang Chiang Rai', 'Chiang Rai', 57000, 'Thailand'),
('rl010', '11/19', 'Mittraphap Road', 'Nai Mueang', 'Mueang Nakhon Ratchasima', 'Nakhon Ratchasima', 30000, 'Thailand');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `user_id` varchar(255) NOT NULL,
  `restaurant_id` varchar(255) NOT NULL,
  `review_rating` int(11) DEFAULT NULL,
  `review_text` varchar(255) DEFAULT NULL,
  `review_create_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`user_id`, `restaurant_id`, `review_rating`, `review_text`, `review_create_at`) VALUES
('u001', 'r010', 5, 'Big portions and affordable prices.', '2025-04-10 14:00:00'),
('u004', 'r001', 5, 'Authentic Thai taste and cozy place!', '2025-04-01 12:30:00'),
('u005', 'r001', 5, 'Loved the Pad Thai! Will come again.', '2025-04-10 16:15:00'),
('u007', 'r010', 4, 'Friendly staff and tasty food.', '2025-04-10 17:00:00'),
('u008', 'r002', 4, 'Noodles were flavorful but a bit salty.', '2025-04-02 13:15:00'),
('u009', 'r002', 4, 'Friendly staff and tasty food.', '2025-04-10 17:00:00'),
('u012', 'r003', 3, 'Average food, good service.', '2025-04-03 14:10:00'),
('u013', 'r003', 3, 'Too crowded during lunch hours.', '2025-04-10 12:45:00'),
('u013', 'r004', 5, 'The best seafood spot in town!', '2025-04-10 18:30:00'),
('u013', 'r005', 4, 'Authentic Isaan flavors.', '2025-04-10 19:10:00'),
('u013', 'r006', 5, 'Feels like home-cooked meals. Affordable too.', '2025-04-06 11:20:00'),
('u013', 'r007', 4, 'Quick service and great variety.', '2025-04-07 12:40:00'),
('u013', 'r008', 5, 'Perfect for halal food lovers. Super clean!', '2025-04-08 13:55:00'),
('u013', 'r009', 3, 'Drinks were okay, nothing special.', '2025-04-09 10:30:00'),
('u014', 'r005', 4, 'Nice grilled meats, spicy sauce was excellent.', '2025-04-05 19:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `ride_order`
--

CREATE TABLE `ride_order` (
  `ride_order_id` varchar(36) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `driver_id` varchar(255) DEFAULT NULL,
  `discount_id` varchar(255) DEFAULT NULL,
  `ride_order_time` datetime DEFAULT NULL,
  `ride_order_price` int(11) DEFAULT NULL,
  `ride_payment_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ride_order`
--

INSERT INTO `ride_order` (`ride_order_id`, `user_id`, `driver_id`, `discount_id`, `ride_order_time`, `ride_order_price`, `ride_payment_id`) VALUES
('roi001', 'u008', 'dr004', 'dis014', '2025-04-10 08:30:00', 300, 'rpay001'),
('roi002', 'u002', 'dr002', NULL, '2025-04-10 09:00:00', 270, 'rpay002'),
('roi003', 'u011', 'dr001', 'dis008', '2025-04-10 09:30:00', 310, 'rpay003'),
('roi004', 'u014', 'dr015', 'dis011', '2025-04-10 10:00:00', 500, 'rpay004'),
('roi005', 'u005', 'dr005', 'dis002', '2025-04-10 10:30:00', 200, 'rpay005'),
('roi006', 'u013', 'dr006', 'dis007', '2025-04-10 11:00:00', 250, 'rpay006'),
('roi007', 'u007', 'dr012', NULL, '2025-04-10 11:30:00', 220, 'rpay007'),
('roi008', 'u012', 'dr008', 'dis012', '2025-04-10 12:00:00', 230, 'rpay008'),
('roi009', 'u001', 'dr009', 'dis012', '2025-04-10 12:30:00', 200, 'rpay009'),
('roi010', 'u010', 'dr010', 'dis009', '2025-04-10 13:00:00', 250, 'rpay010'),
('roi011', 'u003', 'dr001', 'dis004', '2025-04-10 13:30:00', 180, 'rpay011'),
('roi012', 'u009', 'dr012', NULL, '2025-04-10 14:00:00', 200, 'rpay012'),
('roi013', 'u015', 'dr003', 'dis007', '2025-04-10 14:30:00', 150, 'rpay013'),
('roi014', 'u004', 'dr002', NULL, '2025-04-10 15:00:00', 500, 'rpay014'),
('roi015', 'u006', 'dr008', NULL, '2025-04-10 15:30:00', 210, 'rpay015'),
('roi016', 'u002', 'dr007', 'dis003', '2025-04-10 16:00:00', 185, 'rpay016'),
('roi017', 'u013', 'dr005', NULL, '2025-04-10 16:30:00', 320, 'rpay017'),
('roi018', 'u007', 'dr011', 'dis009', '2025-04-10 17:00:00', 245, 'rpay018'),
('roi019', 'u010', 'dr003', NULL, '2025-04-10 17:30:00', 390, 'rpay019'),
('roi020', 'u004', 'dr014', 'dis005', '2025-04-10 18:00:00', 155, 'rpay020'),
('roi021', 'u015', 'dr006', NULL, '2025-04-10 18:30:00', 280, 'rpay021'),
('roi022', 'u001', 'dr013', 'dis012', '2025-04-10 19:00:00', 435, 'rpay022'),
('roi023', 'u008', 'dr004', NULL, '2025-04-10 19:30:00', 210, 'rpay023'),
('roi024', 'u011', 'dr009', 'dis008', '2025-04-10 20:00:00', 375, 'rpay024'),
('roi025', 'u006', 'dr001', NULL, '2025-04-10 20:30:00', 298, 'rpay025'),
('roi026', 'u009', 'dr015', 'dis014', '2025-04-10 21:00:00', 522, 'rpay026'),
('roi027', 'u012', 'dr010', NULL, '2025-04-10 21:30:00', 168, 'rpay027'),
('roi028', 'u003', 'dr007', 'dis001', '2025-04-10 22:00:00', 450, 'rpay028'),
('roi029', 'u014', 'dr002', NULL, '2025-04-10 22:30:00', 305, 'rpay029'),
('roi030', 'u005', 'dr008', 'dis007', '2025-04-10 23:00:00', 275, 'rpay030');

-- --------------------------------------------------------

--
-- Table structure for table `ride_payment`
--

CREATE TABLE `ride_payment` (
  `ride_payment_id` varchar(255) NOT NULL,
  `ride_order_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `ride_payment_method` enum('credit_card','cash') NOT NULL,
  `ride_payment_price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ride_payment`
--

INSERT INTO `ride_payment` (`ride_payment_id`, `ride_order_id`, `user_id`, `ride_payment_method`, `ride_payment_price`) VALUES
('rpay001', 'roi001', 'u008', 'credit_card', 280),
('rpay002', 'roi002', 'u002', 'cash', 270),
('rpay003', 'roi003', 'u011', 'credit_card', 270),
('rpay004', 'roi004', 'u014', 'cash', 470),
('rpay005', 'roi005', 'u005', 'credit_card', 175),
('rpay006', 'roi006', 'u013', 'cash', 225),
('rpay007', 'roi007', 'u007', 'credit_card', 220),
('rpay008', 'roi008', 'u012', 'cash', 205),
('rpay009', 'roi009', 'u001', 'credit_card', 175),
('rpay010', 'roi010', 'u010', 'cash', 225),
('rpay011', 'roi011', 'u003', 'credit_card', 155),
('rpay012', 'roi012', 'u009', 'cash', 200),
('rpay013', 'roi013', 'u015', 'credit_card', 125),
('rpay014', 'roi014', 'u004', 'cash', 500),
('rpay015', 'roi015', 'u006', 'credit_card', 210),
('rpay016', 'roi016', 'u002', 'credit_card', 135),
('rpay017', 'roi017', 'u013', 'cash', 320),
('rpay018', 'roi018', 'u007', 'credit_card', 220),
('rpay019', 'roi019', 'u010', 'cash', 390),
('rpay020', 'roi020', 'u004', 'credit_card', 105),
('rpay021', 'roi021', 'u015', 'cash', 280),
('rpay022', 'roi022', 'u001', 'credit_card', 410),
('rpay023', 'roi023', 'u008', 'cash', 210),
('rpay024', 'roi024', 'u011', 'credit_card', 335),
('rpay025', 'roi025', 'u006', 'cash', 298),
('rpay026', 'roi026', 'u009', 'credit_card', 502),
('rpay027', 'roi027', 'u012', 'cash', 168),
('rpay028', 'roi028', 'u003', 'credit_card', 420),
('rpay029', 'roi029', 'u014', 'cash', 305),
('rpay030', 'roi030', 'u005', 'credit_card', 250);

-- --------------------------------------------------------

--
-- Table structure for table `ride_status`
--

CREATE TABLE `ride_status` (
  `ride_status_id` varchar(36) NOT NULL,
  `ride_order_id` varchar(255) DEFAULT NULL,
  `ride_status` enum('preparing','deliver','completed','canceled') DEFAULT NULL,
  `status_update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ride_status`
--

INSERT INTO `ride_status` (`ride_status_id`, `ride_order_id`, `ride_status`, `status_update_at`) VALUES
('rs001', 'roi001', 'preparing', '2025-04-10 08:31:00'),
('rs002', 'roi002', 'preparing', '2025-04-10 08:32:00'),
('rs003', 'roi003', 'preparing', '2025-04-10 08:33:00'),
('rs004', 'roi001', 'deliver', '2025-04-10 08:34:00'),
('rs005', 'roi002', 'deliver', '2025-04-10 08:35:00'),
('rs006', 'roi001', 'completed', '2025-04-10 08:36:00'),
('rs007', 'roi004', 'preparing', '2025-04-10 08:37:00'),
('rs008', 'roi002', 'completed', '2025-04-10 08:38:00'),
('rs009', 'roi003', 'deliver', '2025-04-10 08:39:00'),
('rs010', 'roi005', 'preparing', '2025-04-10 08:40:00'),
('rs011', 'roi003', 'completed', '2025-04-10 08:41:00'),
('rs012', 'roi004', 'deliver', '2025-04-10 08:42:00'),
('rs013', 'roi006', 'preparing', '2025-04-10 08:43:00'),
('rs014', 'roi004', 'completed', '2025-04-10 08:44:00'),
('rs015', 'roi005', 'deliver', '2025-04-10 08:45:00'),
('rs016', 'roi006', 'deliver', '2025-04-10 08:46:00'),
('rs017', 'roi007', 'preparing', '2025-04-10 08:47:00'),
('rs018', 'roi005', 'completed', '2025-04-10 08:48:00'),
('rs019', 'roi007', 'deliver', '2025-04-10 08:49:00'),
('rs020', 'roi008', 'preparing', '2025-04-10 08:50:00'),
('rs021', 'roi006', 'completed', '2025-04-10 08:51:00'),
('rs022', 'roi008', 'deliver', '2025-04-10 08:52:00'),
('rs023', 'roi009', 'preparing', '2025-04-10 08:53:00'),
('rs024', 'roi007', 'completed', '2025-04-10 08:54:00'),
('rs025', 'roi009', 'deliver', '2025-04-10 08:55:00'),
('rs026', 'roi010', 'preparing', '2025-04-10 08:56:00'),
('rs027', 'roi008', 'completed', '2025-04-10 08:57:00'),
('rs028', 'roi010', 'deliver', '2025-04-10 08:58:00'),
('rs029', 'roi011', 'preparing', '2025-04-10 08:59:00'),
('rs030', 'roi009', 'completed', '2025-04-10 09:00:00'),
('rs031', 'roi011', 'deliver', '2025-04-10 09:01:00'),
('rs032', 'roi012', 'preparing', '2025-04-10 09:02:00'),
('rs033', 'roi010', 'completed', '2025-04-10 09:03:00'),
('rs034', 'roi011', 'completed', '2025-04-10 09:04:00'),
('rs035', 'roi012', 'deliver', '2025-04-10 09:05:00'),
('rs036', 'roi013', 'preparing', '2025-04-10 09:06:00'),
('rs037', 'roi012', 'completed', '2025-04-10 09:07:00'),
('rs038', 'roi013', 'deliver', '2025-04-10 09:08:00'),
('rs039', 'roi014', 'preparing', '2025-04-10 09:09:00'),
('rs040', 'roi013', 'completed', '2025-04-10 09:10:00'),
('rs041', 'roi014', 'deliver', '2025-04-10 09:11:00'),
('rs042', 'roi015', 'preparing', '2025-04-10 09:12:00'),
('rs043', 'roi014', 'completed', '2025-04-10 09:13:00'),
('rs044', 'roi015', 'deliver', '2025-04-10 09:14:00'),
('rs045', 'roi016', 'preparing', '2025-04-10 09:15:00'),
('rs046', 'roi017', 'preparing', '2025-04-10 09:16:00'),
('rs047', 'roi015', 'completed', '2025-04-10 09:17:00'),
('rs048', 'roi016', 'deliver', '2025-04-10 09:18:00'),
('rs049', 'roi018', 'preparing', '2025-04-10 09:19:00'),
('rs050', 'roi016', 'completed', '2025-04-10 09:20:00'),
('rs051', 'roi017', 'deliver', '2025-04-10 09:21:00'),
('rs052', 'roi019', 'preparing', '2025-04-10 09:22:00'),
('rs053', 'roi017', 'completed', '2025-04-10 09:23:00'),
('rs054', 'roi018', 'deliver', '2025-04-10 09:24:00'),
('rs055', 'roi020', 'preparing', '2025-04-10 09:25:00'),
('rs056', 'roi018', 'completed', '2025-04-10 09:26:00'),
('rs057', 'roi019', 'deliver', '2025-04-10 09:27:00'),
('rs058', 'roi021', 'preparing', '2025-04-10 09:28:00'),
('rs059', 'roi019', 'completed', '2025-04-10 09:29:00'),
('rs060', 'roi020', 'deliver', '2025-04-10 09:30:00'),
('rs061', 'roi022', 'preparing', '2025-04-10 09:31:00'),
('rs062', 'roi020', 'completed', '2025-04-10 09:32:00'),
('rs063', 'roi021', 'deliver', '2025-04-10 09:33:00'),
('rs064', 'roi022', 'deliver', '2025-04-10 09:34:00'),
('rs065', 'roi023', 'preparing', '2025-04-10 09:35:00'),
('rs066', 'roi021', 'completed', '2025-04-10 09:36:00'),
('rs067', 'roi023', 'deliver', '2025-04-10 09:37:00'),
('rs068', 'roi024', 'preparing', '2025-04-10 09:38:00'),
('rs069', 'roi022', 'completed', '2025-04-10 09:39:00'),
('rs070', 'roi024', 'deliver', '2025-04-10 09:40:00'),
('rs071', 'roi025', 'preparing', '2025-04-10 09:41:00'),
('rs072', 'roi023', 'completed', '2025-04-10 09:42:00'),
('rs073', 'roi025', 'deliver', '2025-04-10 09:43:00'),
('rs074', 'roi026', 'preparing', '2025-04-10 09:44:00'),
('rs075', 'roi024', 'completed', '2025-04-10 09:45:00'),
('rs076', 'roi026', 'deliver', '2025-04-10 09:46:00'),
('rs077', 'roi027', 'preparing', '2025-04-10 09:47:00'),
('rs078', 'roi025', 'completed', '2025-04-10 09:48:00'),
('rs079', 'roi027', 'deliver', '2025-04-10 09:49:00'),
('rs080', 'roi028', 'preparing', '2025-04-10 09:50:00'),
('rs081', 'roi026', 'completed', '2025-04-10 09:51:00'),
('rs082', 'roi027', 'completed', '2025-04-10 09:52:00'),
('rs083', 'roi028', 'deliver', '2025-04-10 09:53:00'),
('rs084', 'roi029', 'preparing', '2025-04-10 09:54:00'),
('rs085', 'roi028', 'completed', '2025-04-10 09:55:00'),
('rs086', 'roi029', 'deliver', '2025-04-10 09:56:00'),
('rs087', 'roi030', 'preparing', '2025-04-10 09:57:00'),
('rs088', 'roi029', 'completed', '2025-04-10 09:58:00'),
('rs089', 'roi030', 'deliver', '2025-04-10 09:59:00'),
('rs090', 'roi030', 'completed', '2025-04-10 10:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `status_id` varchar(36) NOT NULL,
  `order_id` varchar(255) DEFAULT NULL,
  `status_type` enum('preparing','deliver','completed','canceled') DEFAULT NULL,
  `status_update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`status_id`, `order_id`, `status_type`, `status_update_at`) VALUES
('rs001', 'or001', 'preparing', '2025-04-10 10:30:00'),
('rs002', 'or001', 'deliver', '2025-04-10 10:40:00'),
('rs003', 'or002', 'preparing', '2025-04-10 10:45:00'),
('rs004', 'or001', 'completed', '2025-04-10 10:55:00'),
('rs005', 'or002', 'deliver', '2025-04-10 10:55:00'),
('rs006', 'or003', 'preparing', '2025-04-10 11:00:00'),
('rs007', 'or002', 'completed', '2025-04-10 11:10:00'),
('rs008', 'or003', 'deliver', '2025-04-10 11:10:00'),
('rs009', 'or004', 'preparing', '2025-04-10 11:15:00'),
('rs010', 'or003', 'completed', '2025-04-10 11:25:00'),
('rs011', 'or004', 'deliver', '2025-04-10 11:25:00'),
('rs012', 'or005', 'preparing', '2025-04-10 11:30:00'),
('rs013', 'or005', 'deliver', '2025-04-10 11:40:00'),
('rs014', 'or004', 'completed', '2025-04-10 11:45:00'),
('rs015', 'or006', 'preparing', '2025-04-10 11:45:00'),
('rs016', 'or006', 'deliver', '2025-04-10 11:55:00'),
('rs017', 'or005', 'completed', '2025-04-10 12:00:00'),
('rs018', 'or007', 'preparing', '2025-04-10 12:00:00'),
('rs019', 'or006', 'completed', '2025-04-10 12:10:00'),
('rs020', 'or007', 'deliver', '2025-04-10 12:10:00'),
('rs021', 'or008', 'preparing', '2025-04-10 12:15:00'),
('rs022', 'or008', 'deliver', '2025-04-10 12:25:00'),
('rs023', 'or007', 'completed', '2025-04-10 12:30:00'),
('rs024', 'or009', 'preparing', '2025-04-10 12:30:00'),
('rs025', 'or009', 'deliver', '2025-04-10 12:40:00'),
('rs026', 'or008', 'completed', '2025-04-10 12:45:00'),
('rs027', 'or010', 'preparing', '2025-04-10 12:45:00'),
('rs028', 'or010', 'deliver', '2025-04-10 12:55:00'),
('rs029', 'or009', 'completed', '2025-04-10 13:00:00'),
('rs030', 'or010', 'completed', '2025-04-10 13:10:00'),
('rs031', 'or011', 'preparing', '2025-04-10 13:15:00'),
('rs032', 'or011', 'deliver', '2025-04-10 13:25:00'),
('rs033', 'or012', 'preparing', '2025-04-10 13:30:00'),
('rs034', 'or011', 'completed', '2025-04-10 13:40:00'),
('rs035', 'or012', 'deliver', '2025-04-10 13:40:00'),
('rs036', 'or013', 'preparing', '2025-04-10 13:50:00'),
('rs037', 'or012', 'completed', '2025-04-10 13:55:00'),
('rs038', 'or013', 'deliver', '2025-04-10 14:00:00'),
('rs039', 'or014', 'preparing', '2025-04-10 14:05:00'),
('rs040', 'or013', 'completed', '2025-04-10 14:15:00'),
('rs041', 'or014', 'deliver', '2025-04-10 14:15:00'),
('rs042', 'or015', 'preparing', '2025-04-10 14:20:00'),
('rs043', 'or014', 'completed', '2025-04-10 14:30:00'),
('rs044', 'or015', 'deliver', '2025-04-10 14:30:00'),
('rs045', 'or016', 'preparing', '2025-04-10 14:35:00'),
('rs046', 'or015', 'completed', '2025-04-10 14:45:00'),
('rs047', 'or016', 'deliver', '2025-04-10 14:45:00'),
('rs048', 'or017', 'preparing', '2025-04-10 14:50:00'),
('rs049', 'or016', 'completed', '2025-04-10 15:00:00'),
('rs050', 'or017', 'deliver', '2025-04-10 15:00:00'),
('rs051', 'or018', 'preparing', '2025-04-10 15:05:00'),
('rs052', 'or017', 'completed', '2025-04-10 15:15:00'),
('rs053', 'or018', 'deliver', '2025-04-10 15:15:00'),
('rs054', 'or019', 'preparing', '2025-04-10 15:20:00'),
('rs055', 'or018', 'completed', '2025-04-10 15:30:00'),
('rs056', 'or019', 'deliver', '2025-04-10 15:30:00'),
('rs057', 'or020', 'preparing', '2025-04-10 15:35:00'),
('rs058', 'or019', 'completed', '2025-04-10 15:45:00'),
('rs059', 'or020', 'deliver', '2025-04-10 15:45:00'),
('rs060', 'or020', 'completed', '2025-04-10 16:00:00'),
('rs061', 'or021', 'preparing', '2025-04-10 16:05:00'),
('rs062', 'or021', 'deliver', '2025-04-10 16:15:00'),
('rs063', 'or022', 'preparing', '2025-04-10 16:20:00'),
('rs064', 'or021', 'completed', '2025-04-10 16:30:00'),
('rs065', 'or022', 'deliver', '2025-04-10 16:30:00'),
('rs066', 'or023', 'preparing', '2025-04-10 16:35:00'),
('rs067', 'or022', 'completed', '2025-04-10 16:45:00'),
('rs068', 'or023', 'deliver', '2025-04-10 16:45:00'),
('rs069', 'or024', 'preparing', '2025-04-10 16:50:00'),
('rs070', 'or023', 'completed', '2025-04-10 17:00:00'),
('rs071', 'or024', 'deliver', '2025-04-10 17:00:00'),
('rs072', 'or025', 'preparing', '2025-04-10 17:10:00'),
('rs073', 'or024', 'completed', '2025-04-10 17:15:00'),
('rs074', 'or025', 'deliver', '2025-04-10 17:20:00'),
('rs075', 'or026', 'preparing', '2025-04-10 17:25:00'),
('rs076', 'or025', 'completed', '2025-04-10 17:35:00'),
('rs077', 'or026', 'deliver', '2025-04-10 17:35:00'),
('rs078', 'or027', 'preparing', '2025-04-10 17:40:00'),
('rs079', 'or026', 'completed', '2025-04-10 17:50:00'),
('rs080', 'or027', 'deliver', '2025-04-10 17:50:00'),
('rs081', 'or028', 'preparing', '2025-04-10 17:55:00'),
('rs082', 'or027', 'completed', '2025-04-10 18:05:00'),
('rs083', 'or028', 'deliver', '2025-04-10 18:05:00'),
('rs084', 'or029', 'preparing', '2025-04-10 18:10:00'),
('rs085', 'or028', 'completed', '2025-04-10 18:20:00'),
('rs086', 'or029', 'deliver', '2025-04-10 18:20:00'),
('rs087', 'or030', 'preparing', '2025-04-10 18:25:00'),
('rs088', 'or029', 'completed', '2025-04-10 18:35:00'),
('rs089', 'or030', 'deliver', '2025-04-10 18:35:00'),
('rs090', 'or030', 'completed', '2025-04-10 18:50:00');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` varchar(36) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_surname` varchar(255) DEFAULT NULL,
  `user_phonenum` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `user_password` varchar(255) DEFAULT NULL,
  `user_location_id` varchar(255) DEFAULT NULL,
  `user_create_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_surname`, `user_phonenum`, `user_email`, `user_password`, `user_location_id`, `user_create_at`) VALUES
('u001', 'Nina', 'Chan', '0812345670', 'nina@example.com', '9f7e0b7d4e2f04b0875199a699dfe5b1', 'ul001', '2025-03-01 10:10:10'),
('u002', 'Ben', 'Tee', '0823456781', 'ben@example.com', '5b39cd19d5b00b283c66b8d3f8df9a64', 'ul002', '2025-03-02 11:11:11'),
('u003', 'May', 'Lee', '0834567892', 'may@example.com', 'd5c74bfa064f1d5b13da2a6608ae7ffb', 'ul003', '2025-03-03 12:12:12'),
('u004', 'John', 'Smith', '0845678903', 'john@example.com', 'bd0a8b2a23d90deec10566001e95d61a', 'ul004', '2025-03-04 13:13:13'),
('u005', 'Sara', 'K', '0856789014', 'sara@example.com', '4ac1a60c258153d31d1a4269b92b5b6c', 'ul005', '2025-03-05 14:14:14'),
('u006', 'Tom', 'Hanks', '0867890125', 'tom@example.com', 'e4709906939f3509e56cf1e06a937fd8', 'ul006', '2025-03-06 15:15:15'),
('u007', 'Lily', 'Chou', '0878901236', 'lily@example.com', 'a788cf21e9077f1c4c917f7e6a84ddee', 'ul007', '2025-03-07 16:16:16'),
('u008', 'Mark', 'D', '0889012347', 'mark@example.com', 'bc877d6883148fa4be2e5b499b0b15fc', 'ul008', '2025-03-08 17:17:17'),
('u009', 'Anna', 'Kim', '0890123458', 'anna@example.com', '0a92f48d6d7dfd6f77544222921b1bbd', 'ul009', '2025-03-09 18:18:18'),
('u010', 'Ken', 'Yu', '0801234569', 'ken@example.com', '35ec635adf99f045b6256824cd967fa8', 'ul010', '2025-03-10 19:19:19'),
('u011', 'Jane', 'Doe', '0891122334', 'jane@example.com', '9d5b8707e7f5b7efb7de2444ae8a9a8b', 'ul011', '2025-03-11 08:08:08'),
('u012', 'Luke', 'Sky', '0892233445', 'luke@example.com', '0b502d8409f59256d2c8c37f3d03cc71', 'ul012', '2025-03-12 09:09:09'),
('u013', 'Leo', 'Max', '0893344556', 'leo@example.com', '34e7325e0e3c3b66e31544c405aa2b77', 'ul013', '2025-03-13 10:10:10'),
('u014', 'Mila', 'Sun', '0894455667', 'mila@example.com', 'f80b9c97d1e84f1705bb723b23c2de2a', 'ul014', '2025-03-14 11:11:11'),
('u015', 'Chris', 'Pratt', '0895566778', 'chris@example.com', 'cf8fd690dcf95de8c45b490d5b4b4b2d', 'ul015', '2025-03-15 12:12:12');

-- --------------------------------------------------------

--
-- Table structure for table `user_discount`
--

CREATE TABLE `user_discount` (
  `user_id` varchar(10) NOT NULL,
  `discount_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_discount`
--

INSERT INTO `user_discount` (`user_id`, `discount_id`) VALUES
('u001', 'dis005'),
('u001', 'dis012'),
('u002', 'dis003'),
('u002', 'dis007'),
('u003', 'dis001'),
('u003', 'dis004'),
('u003', 'dis011'),
('u004', 'dis003'),
('u004', 'dis005'),
('u005', 'dis002'),
('u005', 'dis004'),
('u005', 'dis007'),
('u005', 'dis015'),
('u007', 'dis006'),
('u007', 'dis009'),
('u008', 'dis010'),
('u008', 'dis014'),
('u009', 'dis002'),
('u009', 'dis014'),
('u010', 'dis009'),
('u010', 'dis012'),
('u010', 'dis015'),
('u011', 'dis008'),
('u011', 'dis009'),
('u011', 'dis014'),
('u012', 'dis012'),
('u013', 'dis007'),
('u013', 'dis008'),
('u014', 'dis001'),
('u014', 'dis011'),
('u014', 'dis013'),
('u015', 'dis007');

-- --------------------------------------------------------

--
-- Table structure for table `user_location`
--

CREATE TABLE `user_location` (
  `user_location_id` varchar(36) NOT NULL,
  `user_location_house_num` varchar(255) DEFAULT NULL,
  `user_location_street` varchar(255) DEFAULT NULL,
  `user_location_subdistrict` varchar(255) DEFAULT NULL,
  `user_location_district` varchar(255) DEFAULT NULL,
  `user_location_province` varchar(255) DEFAULT NULL,
  `user_location_post_code` int(11) DEFAULT NULL,
  `user_location_country` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_location`
--

INSERT INTO `user_location` (`user_location_id`, `user_location_house_num`, `user_location_street`, `user_location_subdistrict`, `user_location_district`, `user_location_province`, `user_location_post_code`, `user_location_country`) VALUES
('ul001', '123/4', 'Sukhumvit Road 33', 'Khlong Tan Nuea', 'Watthana', 'Bangkok', 10110, 'Thailand'),
('ul002', '456/2', 'Ratchadamri Road', 'Lumphini', 'Pathum Wan', 'Bangkok', 10330, 'Thailand'),
('ul003', '789/5', 'Silom Road', 'Suriyawong', 'Bang Rak', 'Bangkok', 10500, 'Thailand'),
('ul004', '101/6', 'Phaholyothin Road', 'Chomphon', 'Chatuchak', 'Bangkok', 10900, 'Thailand'),
('ul005', '202/3', 'Rama IX Road', 'Hua Mak', 'Bang Kapi', 'Bangkok', 10240, 'Thailand'),
('ul006', '303/1', 'Lat Phrao Road', 'Chantharakasem', 'Chatuchak', 'Bangkok', 10900, 'Thailand'),
('ul007', '404/7', 'Khao San Road', 'Talad Yod', 'Phra Nakhon', 'Bangkok', 10200, 'Thailand'),
('ul008', '505/4', 'Phetchaburi Road', 'Makkasan', 'Ratchathewi', 'Bangkok', 10400, 'Thailand'),
('ul009', '606/2', 'Chareonkrung Road', 'Samphanthawong', 'Samphanthawong', 'Bangkok', 10100, 'Thailand'),
('ul010', '707/9', 'Ekkamai Road', 'Khlong Tan Nuea', 'Watthana', 'Bangkok', 10110, 'Thailand'),
('ul011', '808/3', 'Thonglor Road', 'Khlong Tan Nuea', 'Watthana', 'Bangkok', 10110, 'Thailand'),
('ul012', '909/5', 'Sathupradit Road', 'Bang Khola', 'Bang Kho Laem', 'Bangkok', 10120, 'Thailand'),
('ul013', '110/6', 'Asok Montri Road', 'Khlong Toei Nuea', 'Watthana', 'Bangkok', 10110, 'Thailand'),
('ul014', '210/7', 'Sarp Road', 'Si Phaya', 'Bang Rak', 'Bangkok', 10500, 'Thailand'),
('ul015', '310/1', 'Nimit Mai Road', 'Min Buri', 'Min Buri', 'Bangkok', 10510, 'Thailand');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `discount`
--
ALTER TABLE `discount`
  ADD PRIMARY KEY (`discount_id`);

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`driver_id`);

--
-- Indexes for table `driver_review`
--
ALTER TABLE `driver_review`
  ADD PRIMARY KEY (`driver_id`,`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `mart`
--
ALTER TABLE `mart`
  ADD PRIMARY KEY (`mart_id`),
  ADD KEY `mart_location_id` (`mart_location_id`);

--
-- Indexes for table `mart_location`
--
ALTER TABLE `mart_location`
  ADD PRIMARY KEY (`mart_location_id`);

--
-- Indexes for table `mart_order`
--
ALTER TABLE `mart_order`
  ADD PRIMARY KEY (`mart_order_id`),
  ADD KEY `discount_id` (`discount_id`),
  ADD KEY `driver_id` (`driver_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `mart_id` (`mart_id`),
  ADD KEY `fk_mart_payment` (`mart_payment_id`);

--
-- Indexes for table `mart_order_item`
--
ALTER TABLE `mart_order_item`
  ADD PRIMARY KEY (`mart_order_id`,`product_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `mart_payment`
--
ALTER TABLE `mart_payment`
  ADD PRIMARY KEY (`mart_payment_id`),
  ADD KEY `mart_order_id` (`mart_order_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `mart_status`
--
ALTER TABLE `mart_status`
  ADD PRIMARY KEY (`mart_status_id`),
  ADD KEY `mart_order_id` (`mart_order_id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`),
  ADD KEY `restaurant_id` (`restaurant_id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `discount_id` (`discount_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `driver_id` (`driver_id`),
  ADD KEY `restaurant_id` (`restaurant_id`),
  ADD KEY `payment_id` (`payment_id`);

--
-- Indexes for table `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`order_id`,`menu_id`),
  ADD KEY `menu_id` (`menu_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `mart_id` (`mart_id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`restaurant_id`),
  ADD KEY `restaurant_location_id` (`restaurant_location_id`);

--
-- Indexes for table `restaurant_location`
--
ALTER TABLE `restaurant_location`
  ADD PRIMARY KEY (`restaurant_location_id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`user_id`,`restaurant_id`),
  ADD KEY `restaurant_id` (`restaurant_id`);

--
-- Indexes for table `ride_order`
--
ALTER TABLE `ride_order`
  ADD PRIMARY KEY (`ride_order_id`),
  ADD KEY `discount_id` (`discount_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `driver_id` (`driver_id`),
  ADD KEY `fk_ride_payment` (`ride_payment_id`);

--
-- Indexes for table `ride_payment`
--
ALTER TABLE `ride_payment`
  ADD PRIMARY KEY (`ride_payment_id`),
  ADD KEY `ride_order_id` (`ride_order_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `ride_status`
--
ALTER TABLE `ride_status`
  ADD PRIMARY KEY (`ride_status_id`),
  ADD KEY `ride_order_id` (`ride_order_id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`status_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `user_location_id` (`user_location_id`);

--
-- Indexes for table `user_discount`
--
ALTER TABLE `user_discount`
  ADD PRIMARY KEY (`user_id`,`discount_id`);

--
-- Indexes for table `user_location`
--
ALTER TABLE `user_location`
  ADD PRIMARY KEY (`user_location_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `driver_review`
--
ALTER TABLE `driver_review`
  ADD CONSTRAINT `driver_review_ibfk_1` FOREIGN KEY (`driver_id`) REFERENCES `driver` (`driver_id`),
  ADD CONSTRAINT `driver_review_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `mart`
--
ALTER TABLE `mart`
  ADD CONSTRAINT `mart_ibfk_1` FOREIGN KEY (`mart_location_id`) REFERENCES `mart_location` (`mart_location_id`);

--
-- Constraints for table `mart_order_item`
--
ALTER TABLE `mart_order_item`
  ADD CONSTRAINT `mart_order_item_ibfk_1` FOREIGN KEY (`mart_order_id`) REFERENCES `mart_order` (`mart_order_id`),
  ADD CONSTRAINT `mart_order_item_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
