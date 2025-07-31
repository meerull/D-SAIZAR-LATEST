-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 31, 2025 at 04:19 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `soil-order`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int UNSIGNED NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `full_name`, `username`, `password`) VALUES
(12, 'Administrator', 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(13, 'Jaison E Mathew', 'jaison', '5f4dcc3b5aa765d61d8327deb882cf99'),
(14, 'Varghese Babu', 'password', '5f4dcc3b5aa765d61d8327deb882cf99');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `title`, `image_name`, `featured`, `active`) VALUES
(4, 'Soils', 'soil_Category_266.jpg', 'Yes', 'Yes'),
(5, 'Sand', 'soil_Category_369.jpg', 'Yes', 'Yes'),
(9, 'Rock', 'soil_Category_270.jpg', 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int UNSIGNED NOT NULL,
  `soil` varchar(150) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `delivery_address` varchar(250) NOT NULL,
  `payment_id` int NOT NULL,
  `u_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `soil`, `price`, `qty`, `total`, `order_date`, `status`, `delivery_address`, `payment_id`, `u_id`) VALUES
(32, 'Red Soil', 30.00, 3, 90.00, '2025-07-26 02:22:41', 'Ordered', 'Jalan Bukit Kubu, Perlis', 0, 40),
(33, 'Fine sand', 30.00, 2, 60.00, '2025-07-26 02:22:41', 'On Delivery', 'Taman Melati, Kangar, Perlis', 0, 41),
(34, 'Small Rock', 45.00, 1, 45.00, '2025-07-26 02:22:41', 'On Delivery', 'Kampung Titi Tok Bandar, Perlis', 0, 42),
(35, 'Limestone', 50.00, 4, 200.00, '2025-07-26 02:22:41', 'Cancelled', 'Jalan Sekolah, Kangar, Perlis', 0, 43),
(36, 'Top Soil', 40.00, 2, 80.00, '2025-07-26 02:22:41', 'Cancelled', 'Taman Sena Indah, Perlis', 0, 44),
(37, 'clay sand', 35.00, 1, 35.00, '2025-07-26 02:22:41', 'Ordered', 'Jalan Raja Syed Alwi, Perlis', 0, 45),
(38, 'Red Soil', 30.00, 5, 150.00, '2025-07-26 02:22:41', 'Ordered', 'Taman Bukit Kayangan, Perlis', 0, 46),
(39, 'Fine sand', 30.00, 2, 60.00, '2025-07-26 02:22:41', 'On Delivery', 'Jalan 9, Arau, Perlis', 0, 47),
(40, 'Small Rock', 45.00, 3, 135.00, '2025-07-26 02:22:41', 'Ordered', 'Taman Mutiara, Perlis', 0, 48),
(41, 'Red Soil', 30.00, 2, 60.00, '2025-07-26 02:22:41', 'Ordered', 'Jalan Padang Siding, Perlis', 0, 49),
(42, 'Big Rock', 30.00, 1, 30.00, '2025-07-26 02:22:41', 'Cancelled', 'Taman Pertiwi Indah, Perlis', 0, 50),
(43, 'Top Soil', 40.00, 3, 120.00, '2025-07-26 02:22:41', 'Cancelled', 'Jalan Seriab, Perlis', 0, 51),
(44, 'Fine sand', 30.00, 4, 120.00, '2025-07-26 02:22:41', 'On Delivery', 'Jalan Kuala Perlis, Perlis', 0, 52),
(45, 'Limestone', 50.00, 1, 50.00, '2025-07-26 02:22:41', 'Ordered', 'Taman Pelangi, Perlis', 0, 53),
(46, 'clay sand', 35.00, 3, 105.00, '2025-07-26 02:22:41', 'Cancelled', 'Jalan Jejawi, Perlis', 0, 54),
(47, 'Red Soil', 30.00, 1, 30.00, '2025-07-26 02:22:41', 'Ordered', 'Taman Damai, Perlis', 0, 55),
(48, 'Fine sand', 30.00, 1, 30.00, '2025-07-26 02:22:41', 'Cancelled', 'Kampung Titi Serong, Perlis', 0, 56),
(49, 'Small Rock', 45.00, 2, 90.00, '2025-07-26 02:22:41', 'Ordered', 'Jalan Beseri, Perlis', 0, 57),
(50, 'Top Soil', 40.00, 2, 80.00, '2025-07-26 02:22:41', 'Ordered', 'Taman Wawasan, Perlis', 0, 58),
(51, 'Limestone', 50.00, 1, 50.00, '2025-07-26 02:22:41', 'On Delivery', 'Taman Intan, Perlis', 0, 59),
(52, 'Red Soil', 30.00, 3, 90.00, '2025-07-26 02:22:41', 'Ordered', 'Jalan Padang Behor, Perlis', 0, 60),
(53, 'Fine sand', 30.00, 1, 30.00, '2025-07-26 02:22:41', 'Ordered', 'Kampung Titi Tok Bandar, Perlis', 0, 61),
(54, 'clay sand', 35.00, 4, 140.00, '2025-07-26 02:22:41', 'Cancelled', 'Jalan Repoh, Perlis', 0, 62),
(55, 'Top Soil', 40.00, 3, 120.00, '2025-07-26 02:22:41', 'Cancelled', 'Taman Kemajuan, Perlis', 0, 63),
(56, 'Big Rock', 30.00, 2, 60.00, '2025-07-26 02:22:41', 'On Delivery', 'Taman Melati, Perlis', 0, 64),
(57, 'Fine sand', 30.00, 3, 90.00, '2025-07-26 02:22:41', 'Cancelled', 'Taman Sena, Perlis', 0, 65),
(58, 'Limestone', 50.00, 1, 50.00, '2025-07-26 02:22:41', 'Ordered', 'Taman Berlian, Perlis', 0, 66),
(59, 'clay sand', 35.00, 2, 70.00, '2025-07-26 02:22:41', 'Ordered', 'Jalan Santan, Perlis', 0, 67),
(60, 'Top Soil', 40.00, 1, 40.00, '2025-07-26 02:22:41', 'On Delivery', 'Taman Perlis Jaya, Perlis', 0, 68),
(61, 'Red Soil', 30.00, 2, 60.00, '2025-07-26 02:22:41', 'Ordered', 'Jalan Pauh, Perlis', 0, 69),
(62, 'Red Soil', 30.00, 1, 30.00, '2025-07-26 10:32:31', 'Delivered', 'Kampung Padang Nyu, 02600 Arau, Perlis', 6, 70),
(63, 'Top Soil', 40.00, 2, 80.00, '2025-07-26 10:47:04', 'Delivered', 'Kg Arau, 16010 Kangar, Perlis', 7, 71),
(64, 'Big Rock', 30.00, 15, 450.00, '2025-07-27 08:57:27', 'Delivered', 'taman alia', 8, 72),
(65, 'Fine sand', 30.00, 5, 150.00, '2025-07-27 21:57:38', 'Delivered', 'UiTM Machang', 9, 73),
(66, 'Red Soil', 30.00, 1, 30.00, '2025-07-27 22:02:59', 'Delivered', 'Kampung Padang Nyu,Perlis', 10, 70),
(67, 'Small Rock', 45.00, 2, 90.00, '2025-07-27 22:05:34', 'Cancelled', 'hey', 11, 74),
(68, 'Fine sand', 30.00, 16, 480.00, '2025-07-27 22:09:46', 'Ordered', 'sms', 12, 75),
(69, 'Clay sand', 35.00, 2, 70.00, '2025-07-28 13:37:08', 'Delivered', 'Lot 1, Kampung Pauh, Arau, Perlis', 13, 78);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `payment_id` int NOT NULL,
  `payment_date` date NOT NULL,
  `payment_time` time NOT NULL,
  `payment_prove` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_payment`
--

INSERT INTO `tbl_payment` (`payment_id`, `payment_date`, `payment_time`, `payment_prove`) VALUES
(6, '2025-07-26', '10:32:31', 0x526563656970742d42616e6b2d52616b7961745f32303235303732363032333134393738362e706466),
(7, '2025-07-26', '10:47:04', 0x576861747341707020496d61676520323032352d30372d32362061742031302e34362e31325f34656635626566662e6a7067),
(8, '2025-07-27', '08:57:27', 0x526563656970742d42616e6b2d52616b7961745f32303235303732363032333134393738362e706466),
(9, '2025-07-27', '21:57:38', 0x526563656970742d42616e6b2d52616b7961745f32303235303732363032333134393738362e706466),
(10, '2025-07-27', '22:02:59', 0x576861747341707020496d61676520323032352d30372d32362061742031302e34362e31325f34656635626566662e6a7067),
(11, '2025-07-27', '22:05:34', 0x576861747341707020496d61676520323032352d30372d32362061742031302e34362e31325f34656635626566662e6a7067),
(12, '2025-07-27', '22:09:46', 0x526563656970742d42616e6b2d52616b7961745f32303235303732363032333134393738362e706466),
(13, '2025-07-28', '13:37:08', 0x526563656970742d42616e6b2d52616b7961745f32303235303732363032333134393738362e706466);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_soil`
--

CREATE TABLE `tbl_soil` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `category_id` int UNSIGNED NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tbl_soil`
--

INSERT INTO `tbl_soil` (`id`, `title`, `description`, `price`, `image_name`, `category_id`, `featured`, `active`) VALUES
(35, 'Fine sand', 'Suitable for Panda/Lion Cement', 30.00, 'soil-Name-4902.jpg', 5, 'Yes', 'Yes'),
(36, 'Red Soil', 'Good for tree', 30.00, 'soil-Name-1139.jpg', 4, 'Yes', 'Yes'),
(37, 'Small Rock', ' ', 45.00, 'soil-Name-234.jpeg', 9, 'Yes', 'Yes'),
(39, 'Big Rock', '', 30.00, 'soil-Name-1867.jpg', 9, 'No', 'Yes'),
(40, 'Limestone', '', 50.00, 'soil-Name-3992.jpg', 9, 'No', 'Yes'),
(41, 'Clay sand', '', 35.00, 'soil-Name-2216.jpg', 5, 'No', 'Yes'),
(42, 'Top Soil', '.', 40.00, 'soil-Name-6421.jpg', 4, 'Yes', 'Yes'),
(43, 'Medium Rock', 'good for base', 60.00, 'soil-Name-6262.webp', 9, 'No', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `customer_name` varchar(150) NOT NULL,
  `customer_email` varchar(150) NOT NULL,
  `customer_contact` bigint NOT NULL,
  `customer_address` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `customer_name`, `customer_email`, `customer_contact`, `customer_address`, `created_at`) VALUES
(40, 'ahmad', '$2y$10$hash', 'Ahmad Faizal bin Rahim', 'ahmad@example.com', 601234567001, 'Jalan Bukit Kubu, Perlis', '2025-07-26 02:22:41'),
(41, 'muhammad', '$2y$10$hash', 'Muhammad Amir bin Zainal', 'muhammad@example.com', 601234567002, 'Taman Melati, Kangar, Perlis', '2025-07-26 02:22:41'),
(42, 'mohd', '$2y$10$hash', 'Mohd Rizwan bin Ismail', 'mohd@example.com', 601234567003, 'Kampung Titi Tok Bandar, Perlis', '2025-07-26 02:22:41'),
(43, 'ahmaad', '$2y$10$hash', 'Ahmaad Saiful bin Rahman', 'ahmaad@example.com', 601234567004, 'Jalan Sekolah, Kangar, Perlis', '2025-07-26 02:22:41'),
(44, 'syafiq', '$2y$10$hash', 'Syafiq bin Hassan', 'syafiq@example.com', 601234567005, 'Taman Sena Indah, Perlis', '2025-07-26 02:22:41'),
(45, 'hafiz', '$2y$10$hash', 'Hafiz bin Jamal', 'hafiz@example.com', 601234567006, 'Jalan Raja Syed Alwi, Perlis', '2025-07-26 02:22:41'),
(46, 'fikri', '$2y$10$hash', 'Fikri bin Norazman', 'fikri@example.com', 601234567007, 'Taman Bukit Kayangan, Perlis', '2025-07-26 02:22:41'),
(47, 'kamal', '$2y$10$hash', 'Kamal bin Mahmud', 'kamal@example.com', 601234567008, 'Jalan 9, Arau, Perlis', '2025-07-26 02:22:41'),
(48, 'farhan', '$2y$10$hash', 'Farhan bin Rosli', 'farhan@example.com', 601234567009, 'Taman Mutiara, Perlis', '2025-07-26 02:22:41'),
(49, 'shahrul', '$2y$10$hash', 'Shahrul bin Omar', 'shahrul@example.com', 601234567010, 'Jalan Padang Siding, Perlis', '2025-07-26 02:22:41'),
(50, 'haziq', '$2y$10$hash', 'Haziq bin Latif', 'haziq@example.com', 601234567011, 'Taman Pertiwi Indah, Perlis', '2025-07-26 02:22:41'),
(51, 'hakim', '$2y$10$hash', 'Hakim bin Ariffin', 'hakim@example.com', 601234567012, 'Jalan Seriab, Perlis', '2025-07-26 02:22:41'),
(52, 'zulhilmi', '$2y$10$hash', 'Zulhilmi bin Zahid', 'zulhilmi@example.com', 601234567013, 'Jalan Kuala Perlis, Perlis', '2025-07-26 02:22:41'),
(53, 'nizam', '$2y$10$hash', 'Nizam bin Mat Isa', 'nizam@example.com', 601234567014, 'Taman Pelangi, Perlis', '2025-07-26 02:22:41'),
(54, 'hilmi', '$2y$10$hash', 'Hilmi bin Saharuddin', 'hilmi@example.com', 601234567015, 'Jalan Jejawi, Perlis', '2025-07-26 02:22:41'),
(55, 'arif', '$2y$10$hash', 'Arif bin Nazri', 'arif@example.com', 601234567016, 'Taman Damai, Perlis', '2025-07-26 02:22:41'),
(56, 'luqman', '$2y$10$hash', 'Luqman bin Yusof', 'luqman@example.com', 601234567017, 'Kampung Titi Serong, Perlis', '2025-07-26 02:22:41'),
(57, 'rizal', '$2y$10$hash', 'Rizal bin Mokhtar', 'rizal@example.com', 601234567018, 'Jalan Beseri, Perlis', '2025-07-26 02:22:41'),
(58, 'nashrul', '$2y$10$hash', 'Nashrul bin Salleh', 'nashrul@example.com', 601234567019, 'Taman Wawasan, Perlis', '2025-07-26 02:22:41'),
(59, 'zafran', '$2y$10$hash', 'Zafran bin Razak', 'zafran@example.com', 601234567020, 'Taman Intan, Perlis', '2025-07-26 02:22:41'),
(60, 'danial', '$2y$10$hash', 'Danial bin Hamdan', 'danial@example.com', 601234567021, 'Jalan Padang Behor, Perlis', '2025-07-26 02:22:41'),
(61, 'firdaus', '$2y$10$hash', 'Firdaus bin Johari', 'firdaus@example.com', 601234567022, 'Kampung Titi Tok Bandar, Perlis', '2025-07-26 02:22:41'),
(62, 'hakimi', '$2y$10$hash', 'Hakimi bin Shahidan', 'hakimi@example.com', 601234567023, 'Jalan Repoh, Perlis', '2025-07-26 02:22:41'),
(63, 'shah', '$2y$10$hash', 'Shah bin Zulkifli', 'shah@example.com', 601234567024, 'Taman Kemajuan, Perlis', '2025-07-26 02:22:41'),
(64, 'khalid', '$2y$10$hash', 'Khalid bin Fauzi', 'khalid@example.com', 601234567025, 'Taman Melati, Perlis', '2025-07-26 02:22:41'),
(65, 'iskandar', '$2y$10$hash', 'Iskandar bin Musa', 'iskandar@example.com', 601234567026, 'Taman Sena, Perlis', '2025-07-26 02:22:41'),
(66, 'azhar', '$2y$10$hash', 'Azhar bin Bahari', 'azhar@example.com', 601234567027, 'Taman Berlian, Perlis', '2025-07-26 02:22:41'),
(67, 'aiman', '$2y$10$hash', 'Aiman bin Jamal', 'aiman@example.com', 601234567028, 'Jalan Santan, Perlis', '2025-07-26 02:22:41'),
(68, 'nazmi', '$2y$10$hash', 'Nazmi bin Syahmi', 'nazmi@example.com', 601234567029, 'Taman Perlis Jaya, Perlis', '2025-07-26 02:22:41'),
(69, 'saufi', '$2y$10$hash', 'Saufi bin Nordin', 'saufi@example.com', 601234567030, 'Jalan Pauh, Perlis', '2025-07-26 02:22:41'),
(70, 'amirul', '$2y$10$glZIukC6ku6k/lFIWI/4teOTtxTx0UW1aiPWcSx09r0f968Xut68G', 'Muhammad Amirul Amin Bin Rosehadi', 'amin@gmail.com', 60174725254, 'Kampung Padang Telela, Arau 02600 Perlis.', '2025-07-26 10:30:23'),
(71, 'rais', '$2y$10$15IGJS5ckyHLhd4R2y2so.nBqSRe313EVokfnUXo6m2ILBpDV2kOu', 'Muhammad Rais Bin Rosdi', 'rais@gmail.com', 60138966602, 'Kg. Mulong, 16010 Kota Bharu, Kelantan         ', '2025-07-26 10:37:28'),
(72, 'pit', '$2y$10$16GLQmUMiNmIcZzeJmqY6.pEubW7Uol1BWZ03vXdLefE9Vqfq1gfq', 'shafiq', 'pit@gmail.com', 108447545, 'lot 4049', '2025-07-27 08:56:18'),
(73, 'hanis tumidi', '$2y$10$lddDSTpEaGcmaKiEBNt./.sSO0Ev8Li86uKMHHXUArirDAwgeoBwi', 'HANIS BINTI ABDUL TUMIDI', 'hanistumidi@gmail.com', 601127262470, '      UiTM Machang Kelantan   ', '2025-07-27 21:56:19'),
(75, 'hey', '$2y$10$SCbtND3R7hw8rRdnoRjm7Ooo9YdkkTt3vYCkxEFFj2aRP.7jrDyZe', 'adham', 'hey@hey', 601117927399, 'hey         ', '2025-07-27 22:09:19'),
(76, 'rayyan', '$2y$10$uQ2MjbZzgBc4af8.cpAu9uASLJuO6HyUkLwVNsfoaSexEZvKx7Su.', 'Ahmad Rayyan', 'rayyan@gmail.com', 60174725254, 'Jalan Kampung Nyu, Arau, Perlis', '2025-07-28 12:14:59'),
(77, 'irfan', '$2y$10$9F40GjZo70jUM.L2XM7Tne5bk.wfbTu2OaWFvw8XP1Z/HB8hssKO2', 'irfan hafizar', 'irfanhafizar@gmail.com', 60184016804, '210A kampung sri perigi, arau perlis', '2025-07-28 13:30:44'),
(78, 'Adham', '$2y$10$Rl4iNKM23VPUxryO0Hirxe0SZVrweYTMCR7sTAvALqwX.26kzrAie', 'Ahmad Adham', 'adham@gmail.com', 60174725254, '         Lot 1, kampung pauh, arau, perlis', '2025-07-28 13:35:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `tbl_soil`
--
ALTER TABLE `tbl_soil`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `payment_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_soil`
--
ALTER TABLE `tbl_soil`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
