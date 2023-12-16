-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2023 at 01:12 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cartzone2`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrator`
--

CREATE TABLE `administrator` (
  `administrator_id` int(11) NOT NULL,
  `administrator_name` varchar(50) DEFAULT NULL,
  `administrator_password` varchar(255) DEFAULT NULL,
  `administrator_email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(50) DEFAULT NULL,
  `customer_password` varchar(255) DEFAULT NULL,
  `customer_email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_administrator`
--

CREATE TABLE `customer_administrator` (
  `administrator_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `ban_status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `item_id` int(11) NOT NULL,
  `item_name` varchar(50) DEFAULT NULL,
  `item_price` decimal(6,2) DEFAULT NULL,
  `item_img` varchar(1000) DEFAULT NULL,
  `item_description` varchar(1000) DEFAULT NULL,
  `item_category` varchar(50) DEFAULT NULL,
  `item_quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`item_id`, `item_name`, `item_price`, `item_img`, `item_description`, `item_category`, `item_quantity`) VALUES
(2, 'B Naturl Orange+ Juice, 1 liter Pack of 2', '2.50', 'https://drive.google.com/uc?export=view&id=15b0Ki3g-cUUcy-H-D6Ci3Jb7JzNQUowZ', 'Natural Orange Juice', 'Groceries', 40),
(3, 'BARILLA Blue Box Pasta Variety Pack', '4.00', 'https://drive.google.com/uc?export=view&id=1wNWP7IfN2v0fdXN52lgkEwmrZmSiEH0z', 'Blue Box Pasta (454g)  (Pack of 8)', 'Groceries', 20),
(4, 'Cheerios Heart Healthy Cereal', '3.50', 'https://drive.google.com/uc?export=view&id=10Ul6dY9H560jjvsUR9yeYTT92FdT8HVW', 'Whole Grain Oats, Family Size', 'Groceries', 30),
(5, 'Classico Traditional Tomato Sauce', '2.00', 'https://drive.google.com/uc?export=view&id=1lfLFMi0jC6NOE3OcwTpQMyOQ2mkaN9aS', 'Spaghetti and Pasta Sauce', 'Groceries', 40),
(6, 'Coke Original Cold Drink , 6 Packs', '1.50', 'https://drive.google.com/uc?export=view&id=1i6VWaI_NjC-znViYHwlD4X0P0ao3LiXL', 'Original coke drink (300m)', 'Groceries', 80),
(7, 'Daawat Rozana Super Rice', '5.00', 'https://drive.google.com/uc?export=view&id=1_cK1AIDzLt4oX-ZmTJpt2y227MsLJSNz', 'Perfect Fir Basmati Rice, (5kg)', 'Groceries', 60),
(8, 'Daily Fresh Hommus Tahina', '1.00', 'https://drive.google.com/uc?export=view&id=1RIGzSLF_KEnl962imX3MPxdWbvmbUxK2', ' Hummus (400g)', 'Groceries', 80),
(9, 'DiSano Pastalicious Pasta Elbow', '1.25', 'https://drive.google.com/uc?export=view&id=1Oxgpm1-eQJYNacoK5-bvZ-rUkIm92sTz', '100% Durum Whear Macroni (1kg)', 'Groceries', 120),
(10, 'Dole Fruitify Energize', '1.75', 'https://drive.google.com/uc?export=view&id=1_BWLDp8rQ9XwTN7H1iidp_2zvUKawojU', 'Pineapple Juice, 8 Cans, 4 Pack', 'Groceries', 90),
(11, 'English Oven Sandwich Bread', '2.00', 'https://drive.google.com/uc?export=view&id=1MKDZqBP_JhYw2FaZ3TSKnJjBUg06ZwW8', 'Fresh Bread (400 g)', 'Groceries', 12),
(12, 'FIJI Natural Artesian Wate', '3.00', 'https://drive.google.com/uc?export=view&id=14mYFVcDoMNGsHG7VG1a9gEKL9OhXf88b', 'Natural Water, 24 bottle (500ml)', 'Groceries', 15),
(13, 'Fresh eggs, Pack of 30', '2.50', 'https://drive.google.com/uc?export=view&id=17yASYqYTymCc0XqmiBtAqf86N6CSyp0O', 'Fresh eggs from the best farms , Pack of 30', 'Groceries', 90),
(14, 'Hellmann Real Mayonnaise', '2.25', 'https://drive.google.com/uc?export=view&id=1KYjWRVghcuSxv4eJ2nHjXWuqoev-qIxN', 'Creamy and rich tasting  (250g)', 'Groceries', 140),
(15, 'Kashkaval Cheese', '1.50', 'https://drive.google.com/uc?export=view&id=15ogIFt2GyUKTYtpsQZGFuA_ooWJyOEQu', 'Yellow creamy cheese (500g)', 'Groceries', 220),
(16, 'NESCAFE Classic', '1.75', 'https://drive.google.com/uc?export=view&id=12R2Iqo9vsxvoNfXEAXEpkF89eLYRAwJd', ' Instant Coffee Powder (200g)', 'Groceries', 35),
(17, 'Nestle Everyday Dairy Whitener', '3.50', 'https://drive.google.com/uc?export=view&id=1kIor1OCjzHRP35zQ4oGg_bWXRkNSOklf', 'Powdered milk (400g)', 'Groceries', 45),
(18, 'NIDO Toddler Powdered Milk', '6.00', 'https://drive.google.com/uc?export=view&id=1v9bkzOJmwDTgR9MSR7Pte_sSIOuYS3nO', 'The Original Nestle NIDO (1.5kg)', 'Groceries', 80),
(19, 'Oceans Secret - Canned Tuna', '0.75', 'https://drive.google.com/uc?export=view&id=1rVdvEMq3o60V23PtfpnPo48WfZEyX4_d', 'Canned Tuna (180g)', 'Groceries', 95),
(20, 'Organic Tattva Wheat Flour', '3.50', 'https://drive.google.com/uc?export=view&id=10_v7pvbk7p5oXk4DjQH2LNltobnhXTns', 'Wheat Flour (5kg)', 'Groceries', 200),
(21, 'Parry White Label Sugar', '1.25', 'https://drive.google.com/uc?export=view&id=1wQr77kkuQuLyQq7wSjBflGimVd3ULyZS', 'White label Sugar (1kg)', 'Groceries', 300),
(22, 'Sunchips Multigrain Chips', '1.00', 'https://drive.google.com/uc?export=view&id=1tV5JUt8svDpuRoSD54N3NcAFCvXkjKe_', '100% Whole GRAIN Pack of 3 (28g)', 'Groceries', 350),
(23, 'Tata Salt', '0.75', 'https://drive.google.com/uc?export=view&id=1nPdSGv2GtiFpJOcxZgHqBEOSu6g3qljz', 'Vacuum Evaporated Iodised Salt (1kg)', 'Groceries', 200),
(24, 'Tropicana Slice - Mango', '1.00', 'https://drive.google.com/uc?export=view&id=1Jox9A9SEL5aeuxpB3ynQywQhy4PVLDQm', 'Natural Mango Juice (1.2L)', 'Groceries', 150),
(25, '3 in 1 Wireless Charging Station', '50.00', 'https://drive.google.com/uc?export=view&id=1tATilB6yD4J5Qut2XTVryqgwKog_RIa_', 'Fabouls station, can charge many devices', 'Electronic', 120),
(26, 'ASUS ZenBook Pro Duo 15', '549.00', 'https://drive.google.com/uc?export=view&id=1H2ydfy2iL2Yq9lZqzUHBabZC9pLQdPur', 'ASUS i7, 8GB RAM, 1TB HDD', 'Electronic', 75),
(27, 'Canon Camera', '355.00', 'https://drive.google.com/uc?export=view&id=1hQgksUTcZX4AyEtpj_vmWA7BvdS0izSG', '2000D With EF-S 18-55 Lens Black', 'Electronic', 200),
(28, 'Google Pixel 7a', '200.00', 'https://drive.google.com/uc?export=view&id=1Tl37BEH0avGHqXlXgUgGxZ5Pm_SejZG8', 'Android 13, 128GB, 4GB RAM', 'Electronic', 15),
(29, 'HAPPRUN Projector', '79.00', 'https://drive.google.com/uc?export=view&id=11X4DStstmsojGCRha-dI6YxOxDA7IQej', 'Native 1080P Bluetooth Projector with 100\'\'Screen', 'Electronic', 20),
(30, 'K11 Foldable Stereo Tangle', '18.00', 'https://drive.google.com/uc?export=view&id=1nP9y-2VSm1HU3qcNi4u7DWKC8FFApc22', ' Wired On-Ear Headset for iPad', 'Electronic', 35),
(31, 'Kobo Libra 2 eReader', '190.00', 'https://drive.google.com/uc?export=view&id=15LPanzcZQCkauvYF6Hj4H1M7DhcBLNj9', ' 7? Glare Free Touchscreen | Waterproof ', 'Electronic', 40),
(32, 'Laptop Shoulder Bag', '15.00', 'https://drive.google.com/uc?export=view&id=1zC8_1NFa1XRH2YgPbWxBERslkr8kUgKL', 'For 15.6-Inch Laptop or Tablet', 'Electronic', 50),
(33, 'Laser Printer Scanner Copier Wireless', '170.00', 'https://drive.google.com/uc?export=view&id=1js7j8X3mSRGIbzzxhKaO3WAlf8wijPwT', 'All in One Laser Printer Scanner Copier Wireless', 'Electronic', 10),
(34, 'Lite Thermostat', '150.00', 'https://drive.google.com/uc?export=view&id=1ztoGolRLCHmgYFMv5Lr-Myo--df6NaIV', 'Programmable Wifi Thermostat', 'Electronic', 5),
(35, 'Nulaxy Wireless in-Car Bluetooth FM', '17.00', 'https://drive.google.com/uc?export=view&id=1cOKtewj3MZzk9VyEe7639w6ibkaWhwgF', 'Car Kit W 1.44 Inch Display Supports TF/SD Card', 'Electronic', 15),
(36, 'Redragon PSU007 80+ Gold 850 Watt', '120.00', 'https://drive.google.com/uc?export=view&id=1kuE4cBg3Ev8-PDkeVfiBZxZlmyCW_5yA', 'Compact 160mm Size and Low Noise RGB Fan 0 RPM', 'Electronic', 35),
(37, 'RGB Laptop Cooling', '33.00', 'https://drive.google.com/uc?export=view&id=117pWFEFAC2iSxFqWPoaBmpghClgsHlXl', 'Laptop Fan Cooling Stand with 6 Quiet Cooling Fans', 'Electronic', 50),
(38, 'SAMSUNG Galaxy S22 Ultra', '900.00', 'https://drive.google.com/uc?export=view&id=1I2oxigUGXKmYij0UKsWRkaTuNZlewL_c', '256GB, 8K Camera & Video', 'Electronic', 35),
(39, 'SanDisk 256GB SD CARD', '23.00', 'https://drive.google.com/uc?export=view&id=1yVEZKcaicn4KR1waoUimo2e_o6AarTg1', 'Extreme microSDXC UHS-I Memory Card', 'Electronic', 120),
(40, 'Security Cameras Wireless', '48.00', 'https://drive.google.com/uc?export=view&id=1eUM6DPIwFbng19hOnTaVhl_Kovzonyz0', '1080P Battery Powered AI Motion Detection', 'Electronic', 80),
(41, 'Sony OLED 55 inch', '450.00', 'https://drive.google.com/uc?export=view&id=1g_xq4hTRWTR2mki0tOxjWjhRvRjiZ_OA', 'Ultra HD TV A95K Series: Smart Google TV', 'Electronic', 150),
(42, 'Soontrans Blue Gaming Chair', '140.00', 'https://drive.google.com/uc?export=view&id=1irhsiRUruuRW3FBSAnI9p7956mdjm3OX', 'Headrest and Lumbar Support Gamer Chair', 'Electronic', 165),
(43, 'Tatybo Gaming Headset', '20.00', 'https://drive.google.com/uc?export=view&id=13aA3NdUSUHOLP2r_wcE2a11-GrzH978a', 'Headset for PS4 PS5 Xbox One Switch PC', 'Electronic', 100),
(44, 'TJOY Alexa Smart Light Bulbs', '33.50', 'https://drive.google.com/uc?export=view&id=1fB14dZEY-msPYJmIRJn-eQuD2tl3Ghps', 'WiFi Led Light Bulb Works with Alexa', 'Electronic', 165),
(45, 'TOZO T6 True Wireless Earbuds', '26.00', 'https://drive.google.com/uc?export=view&id=1xAOeTh3Ogf3kCAcZ5oONLINBH3vOJ-UD', 'Bluetooth 5.3 Headphones Touch Control', 'Electronic', 120),
(46, 'TP-Link AC1750 Smart WiFi Router', '52.00', 'https://drive.google.com/uc?export=view&id=1svivxki10a4PVInY-GWUnz7fPkhm6gg-', 'VPN Server, Parental Control, QoS', 'Electronic', 100),
(47, 'Universal Remote Control', '10.00', 'https://drive.google.com/uc?export=view&id=121_J1D2DoLXUFY7PuoYPGeBavLQNoKlt', 'TV Remote for LG,Samsung and TCL', 'Electronic', 120),
(48, 'Waterproof 1.90\'\' with Smart Watch', '35.00', 'https://drive.google.com/uc?export=view&id=1gILW2xhol1b9rrstXfbQEcLhkXmzK-ak', '1.90\'\' with Smart Watch(Answer/Make Calls)', 'Electronic', 130),
(49, 'adidas Men\'s T-Shirt', '25.00', 'https://drive.google.com/uc?export=view&id=1xd9ZWOkaXbNXcNeZ4ntOmmCs8uP4HMmg', 'Designed 2 Move Feelready', 'Clothing', 120),
(50, 'adidas Men\'s Shoe', '60.00', 'https://drive.google.com/uc?export=view&id=1lone4GD10yRDMNvWa1QDOmL2FpnWOL5v', 'Kaptir 2.0 Running Shoe', 'Clothing', 75),
(51, 'adidas Men\'s  Bucket', '15.00', 'https://drive.google.com/uc?export=view&id=1nvAzmi3lYhbUEZwPHFPWjKdN7-hqSV0a', 'Victory Iii Hat', 'Clothing', 65),
(52, 'adidas Originals Men\'s Cap', '7.50', 'https://drive.google.com/uc?export=view&id=12CkZQroAUAMlrVFzPmdeTfHU3SI_G19a', 'Metal Logo 2 Relaxed Fit Strapback Cap', 'Clothing', 100),
(53, 'adidas Women\'s Running Shoe', '75.00', 'https://drive.google.com/uc?export=view&id=1nzbdQS4787Hz506ydQ3fZfVO50EjfvFq', 'Pink Eq21 Running Shoe', 'Clothing', 120),
(54, 'Champion Signal Tote', '55.00', 'https://drive.google.com/uc?export=view&id=1wtLnZsoWiv3WZYRdWiR7XpvXJ_8cq9LK', 'Pink & Black Baggie', 'Clothing', 150),
(55, 'Columbia Men\'s Hooded Jacket', '110.00', 'https://drive.google.com/uc?export=view&id=1rd9L4ChUdsP-tFOp5gTrlrP-uMJGdaHa', 'White Out II Insulated Omni Heat Jacket', 'Clothing', 130),
(56, 'Fruit of the Loom Men\'s T-Shirt', '45.00', 'https://drive.google.com/uc?export=view&id=1yJpqVNj1vJkQRrhDluh-hG-ZHlOsmNNz', 'Eversoft Cotton T Shirts, Sizes S-4X', 'Clothing', 190),
(57, 'GAP Men\'s Soft Jeans', '85.00', 'https://drive.google.com/uc?export=view&id=1WD1pxRb9D8W4kjHdRGVD28cDMxsCGDij', 'High Stretch Skinny Fit Denim Jeans', 'Clothing', 200),
(58, 'Hanes Men\'s Long-Sleeve T-Shirt ', '65.00', 'https://drive.google.com/uc?export=view&id=1fDc-hzau1gmpQaahzzHcgohiWb47Aa74', 'Crewneck Cotton T-Shirts for Men, 2-Pack', 'Clothing', 150),
(59, 'Lanzom Women Hat UPF50+', '75.00', 'https://drive.google.com/uc?export=view&id=1HFN0AqS4meshlMbLtv3KV5SG-5JPDSjA', 'Wide Brim Straw Hat Beach Sun', 'Clothing', 100),
(60, 'Lee Men\'s Leg Jean', '80.00', 'https://drive.google.com/uc?export=view&id=1_wyaIUBCKgRFlI75J46tVyXw5-1oWwo2', ' Extreme Motion Athletic Fit Tapered Jeans', 'Clothing', 80),
(61, 'Legendary Whitetails Men\'s Jacket', '120.00', 'https://drive.google.com/uc?export=view&id=1Dcbbyg5XJYewpIw1xKmsEsRR7YqTlMNi', 'Journeyman Brown Shirt Jacket', 'Clothing', 50),
(62, 'Merrell Men\'s Shoe', '110.00', 'https://drive.google.com/uc?export=view&id=1oHxqVx0hSVgW2maUaQtxlzgO663aPlNy', 'Moab 2 Vent Hiking Shoe', 'Clothing', 170),
(63, 'Michael Kors Tote Bag', '95.00', 'https://drive.google.com/uc?export=view&id=1zZ0IIKR5oh89S1LqN_klwr9t9LPKa8Tk', 'Charlotte Large Top Zip Bag', 'Clothing', 50),
(64, 'Michael Kors Jet Set', '120.00', 'https://drive.google.com/uc?export=view&id=19HNKrwISG_L2838obBYrpM-hRQ8uGvj5', 'Brown Small Michael Bag', 'Clothing', 160),
(65, 'Outdoor Cap Mountain Dad Hat', '35.00', 'https://drive.google.com/uc?export=view&id=1Qxc-X83roDOFKvT53FhC1qFUyi8vyNFU', 'Unstructured Soft Cotton Cap', 'Clothing', 180),
(66, 'Rock & Republic Men\'s Straight Jean', '45.00', 'https://drive.google.com/uc?export=view&id=1Hb0_n48v2J-a5fUOGB5oBTPV6UpTW_RH', 'Black Fit Stright Jeans', 'Clothing', 125),
(67, 'Skechers Men\'s Shoe', '75.00', 'https://drive.google.com/uc?export=view&id=1h7-gwI57pXYEf4DEEdWMZEEY-NsCE4NK', ' Nampa Food Service Shoe', 'Clothing', 90),
(68, 'Sweaty Women\'s Long Sleeve Sweatshirt', '55.00', 'https://drive.google.com/uc?export=view&id=1iwP1RmUynea7-DeJlVRRkH6a-ksqnEeV', 'Drawstring Full Zip Hooded Jacket Crop', 'Clothing', 100),
(69, 'The Drop Women\'s Bag', '75.00', 'https://drive.google.com/uc?export=view&id=1s_2UlfYHYQQe8vESiWjIlYxe9dhMxSMH', 'Diana Top Handle Crossbody Bag', 'Clothing', 85),
(70, 'Tommy Hilfiger T-Shirt ', '55.00', 'https://drive.google.com/uc?export=view&id=1Q3potulxlJjCuP4O-gfRqfJd0Fx0Ybz4', 'Mens Crew Neck T-Shirt', 'Clothing', 65),
(71, 'URBANFIND Men\'s Jacket', '95.00', 'https://drive.google.com/uc?export=view&id=1xk6ApCtGChV39jD2RYewMhozMYYIwjac', 'Slim Fit Casual Bomber Jacket', 'Clothing', 5),
(72, 'Wrangler Authentics Men\'s Jeans', '55.00', 'https://drive.google.com/uc?export=view&id=1uo692HTqjj7_Arf75dSiKnAPPGfEIgrz', 'Classic 5-Pocket Regular Fit Flex Jeans', 'Clothing', 80);

-- --------------------------------------------------------

--
-- Table structure for table `item_administrator`
--

CREATE TABLE `item_administrator` (
  `item_id` int(11) DEFAULT NULL,
  `administrator_id` int(11) DEFAULT NULL,
  `operation` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `item_rate`
--

CREATE TABLE `item_rate` (
  `item_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `item_rate` int(11) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `transaction_id` int(11) NOT NULL,
  `transaction_date` date DEFAULT NULL,
  `transaction_total` decimal(6,2) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaction_item`
--

CREATE TABLE `transaction_item` (
  `transaction_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrator`
--
ALTER TABLE `administrator`
  ADD PRIMARY KEY (`administrator_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `customer_administrator`
--
ALTER TABLE `customer_administrator`
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `administrator_id` (`administrator_id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `item_administrator`
--
ALTER TABLE `item_administrator`
  ADD KEY `item_id` (`item_id`),
  ADD KEY `administrator_id` (`administrator_id`);

--
-- Indexes for table `item_rate`
--
ALTER TABLE `item_rate`
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`transaction_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `transaction_item`
--
ALTER TABLE `transaction_item`
  ADD KEY `item_id` (`item_id`),
  ADD KEY `transaction_id` (`transaction_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `administrator`
--
ALTER TABLE `administrator`
  MODIFY `administrator_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer_administrator`
--
ALTER TABLE `customer_administrator`
  ADD CONSTRAINT `customer_administrator_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  ADD CONSTRAINT `customer_administrator_ibfk_2` FOREIGN KEY (`administrator_id`) REFERENCES `administrator` (`administrator_id`);

--
-- Constraints for table `item_administrator`
--
ALTER TABLE `item_administrator`
  ADD CONSTRAINT `item_administrator_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `item` (`item_id`),
  ADD CONSTRAINT `item_administrator_ibfk_2` FOREIGN KEY (`administrator_id`) REFERENCES `administrator` (`administrator_id`);

--
-- Constraints for table `item_rate`
--
ALTER TABLE `item_rate`
  ADD CONSTRAINT `item_rate_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  ADD CONSTRAINT `item_rate_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `item` (`item_id`);

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`);

--
-- Constraints for table `transaction_item`
--
ALTER TABLE `transaction_item`
  ADD CONSTRAINT `transaction_item_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `item` (`item_id`),
  ADD CONSTRAINT `transaction_item_ibfk_2` FOREIGN KEY (`transaction_id`) REFERENCES `transaction` (`transaction_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
