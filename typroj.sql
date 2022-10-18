-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 18, 2022 at 01:05 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `typroj`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_table`
--

CREATE TABLE `admin_table` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `admin_email` varchar(200) NOT NULL,
  `admin_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_table`
--

INSERT INTO `admin_table` (`admin_id`, `admin_name`, `admin_email`, `admin_password`) VALUES
(2, 'Priya', 'priya@gmail.com', '$2y$10$42.0BLC8w1825TThSo6oeei2NzaTNXRQwyDi/Of1ifmUNE3O0KgZa'),
(4, 'Gita', 'gita@gmail.com', '$2y$10$P0r3Phs2D7XnRltsnNgwCOLHkOlVqTGUl0PgK6FN6PRhkGXNx5AJ6');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(11) NOT NULL,
  `brand_title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(2, 'Haldirams'),
(3, 'Britannia'),
(4, 'Balaji'),
(5, 'Crax'),
(6, 'Kurkure');

-- --------------------------------------------------------

--
-- Table structure for table `cart_details`
--

CREATE TABLE `cart_details` (
  `product_id` int(11) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `quantity` int(100) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_title`) VALUES
(2, 'Chocolates'),
(3, 'Waffers'),
(5, 'Noodles'),
(8, 'Snacks');

-- --------------------------------------------------------

--
-- Table structure for table `orders_pending`
--

CREATE TABLE `orders_pending` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `invoice_number` int(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(255) NOT NULL,
  `order_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders_pending`
--

INSERT INTO `orders_pending` (`order_id`, `user_id`, `invoice_number`, `product_id`, `quantity`, `order_status`) VALUES
(1, 1, 1779505153, 10, 1, 'pending'),
(2, 1, 90215573, 4, 1, 'pending'),
(3, 1, 1500879310, 4, 1, 'pending'),
(4, 1, 1079791758, 5, 1, 'pending'),
(5, 1, 1625144838, 10, 1, 'pending'),
(6, 1, 1094198299, 3, 1, 'pending'),
(7, 1, 1251818031, 5, 1, 'pending'),
(8, 3, 1520638207, 5, 1, 'pending'),
(9, 4, 1946941325, 11, 1, 'pending'),
(10, 4, 828352687, 3, 1, 'pending'),
(11, 4, 2072555357, 3, 1, 'pending'),
(12, 4, 1721137837, 3, 1, 'pending'),
(13, 4, 929659912, 3, 1, 'pending'),
(14, 4, 624002014, 3, 1, 'pending'),
(15, 4, 1468793869, 3, 1, 'pending'),
(16, 4, 1776902497, 3, 1, 'pending'),
(17, 4, 1207144043, 3, 1, 'pending'),
(18, 4, 1248979560, 3, 1, 'pending'),
(19, 4, 1460352099, 1, 1, 'pending'),
(20, 4, 742478973, 3, 1, 'pending'),
(21, 4, 694442331, 3, 1, 'pending'),
(22, 5, 1772266365, 1, 1, 'pending'),
(23, 5, 552566872, 1, 1, 'pending'),
(24, 5, 2088559961, 1, 1, 'pending'),
(25, 5, 1122227945, 1, 1, 'pending'),
(26, 6, 829317421, 16, 1, 'pending'),
(27, 6, 300305121, 13, 1, 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_title` varchar(100) NOT NULL,
  `product_description` varchar(255) NOT NULL,
  `product_keywords` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `product_image1` varchar(255) NOT NULL,
  `product_price` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_title`, `product_description`, `product_keywords`, `category_id`, `brand_id`, `product_image1`, `product_price`, `date`, `status`) VALUES
(1, 'Soya Sticks', 'Tasty, crispy and spicy', 'soya snack', 6, 2, 'IMG-20220828-WA0023.jpg', '10', '2022-09-20 20:50:31', '1'),
(3, 'Yippee', 'Long and non-sticky noodles', 'long noodles', 5, 9, 'IMG-20220828-WA0038.jpg', '12', '2022-09-20 20:50:53', '1'),
(12, 'Maggi', '2-minutes noodles', 'noodles, maggi, yellow', 5, 7, 'IMG-20220828-WA0039.jpg', '14', '2022-09-26 13:17:40', 'true'),
(13, 'Salted Peanuts', 'Tasty and crunchy', 'peanuts, salted', 8, 2, 'IMG-20220828-WA0045.jpg', '10', '2022-09-26 13:20:59', 'true'),
(14, 'Kurkure', 'Masala Munch', 'kurkure, orange, masala', 8, 6, 'IMG-20220828-WA0041.jpg', '10', '2022-09-26 13:24:06', 'true'),
(15, 'Crax Corn Rings', 'Corn Rings', 'corn, rings, crax, toy', 8, 5, 'IMG-20220828-WA0059.jpg', '5', '2022-09-26 13:26:18', 'true'),
(16, 'Kurkure', 'Jalmuri Flavour', 'kurkure, blue, jalmuri', 8, 6, 'kurkure2.jfif', '10', '2022-09-26 13:27:37', 'true'),
(17, 'Crax Curls', 'With the greatness of corn', 'crax, curls, corn', 8, 5, 'IMG-20220828-WA0057.jpg', '5', '2022-09-26 13:29:24', 'true'),
(20, 'Lays', 'Cream and Onion', 'cream, onion, lays, green', 3, 6, 'IMG-20220828-WA0051.jpg', '10', '2022-10-15 06:28:26', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `user_orders`
--

CREATE TABLE `user_orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount_due` float NOT NULL,
  `invoice_number` int(255) NOT NULL,
  `total_products` int(255) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `order_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_orders`
--

INSERT INTO `user_orders` (`order_id`, `user_id`, `amount_due`, `invoice_number`, `total_products`, `order_date`, `order_status`) VALUES
(10, 4, 22, 828352687, 2, '2022-09-25 14:45:25', 'Complete'),
(11, 4, 12, 2072555357, 1, '2022-09-25 14:56:57', 'pending'),
(12, 4, 22, 1721137837, 2, '2022-09-25 15:14:44', 'pending'),
(13, 4, 22, 929659912, 2, '2022-09-25 15:15:45', 'pending'),
(14, 4, 22, 624002014, 2, '2022-09-25 15:20:08', 'pending'),
(15, 4, 12, 1468793869, 1, '2022-09-25 15:21:05', 'pending'),
(16, 4, 12, 1776902497, 1, '2022-09-25 15:23:26', 'pending'),
(17, 4, 12, 1207144043, 1, '2022-09-25 15:26:15', 'pending'),
(18, 4, 12, 1248979560, 1, '2022-09-25 15:27:26', 'pending'),
(19, 4, 10, 1460352099, 1, '2022-09-25 15:57:48', 'pending'),
(20, 4, 12, 742478973, 1, '2022-09-25 16:05:21', 'pending'),
(21, 4, 12, 694442331, 1, '2022-09-25 16:41:19', 'pending'),
(22, 5, 10, 1772266365, 1, '2022-09-25 16:42:11', 'Complete'),
(23, 5, 10, 552566872, 1, '2022-09-25 16:45:58', 'pending'),
(24, 5, 10, 2088559961, 1, '2022-09-25 16:53:47', 'pending'),
(25, 5, 0, 2042635116, 0, '2022-09-25 17:07:07', 'pending'),
(26, 5, 10, 1122227945, 1, '2022-09-25 17:11:09', 'pending'),
(27, 5, 0, 26426433, 0, '2022-09-25 17:11:22', 'pending'),
(28, 6, 24, 829317421, 2, '2022-09-26 13:46:18', 'Complete'),
(29, 6, 10, 300305121, 1, '2022-09-29 05:10:16', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `user_payments`
--

CREATE TABLE `user_payments` (
  `payment_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `invoice_number` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `payment_mode` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_payments`
--

INSERT INTO `user_payments` (`payment_id`, `order_id`, `invoice_number`, `amount`, `payment_mode`, `date`) VALUES
(1, 10, 828352687, 22, 'Netbanking', '2022-09-25 14:45:25'),
(2, 22, 1772266365, 10, 'Cash on Delivery', '2022-09-25 16:42:11'),
(3, 28, 829317421, 24, 'PayPal', '2022-09-26 13:46:18');

-- --------------------------------------------------------

--
-- Table structure for table `user_table`
--

CREATE TABLE `user_table` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_image` varchar(255) NOT NULL,
  `user_ip` varchar(100) NOT NULL,
  `user_address` varchar(255) NOT NULL,
  `user_mobile` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_table`
--

INSERT INTO `user_table` (`user_id`, `username`, `user_email`, `user_password`, `user_image`, `user_ip`, `user_address`, `user_mobile`) VALUES
(6, 'Geetha', 'geetha@gmail.com', '$2y$10$dnWD4rdczB44lddu87k9ruZo3IXKOwdA181PawWKWsKSBlBRes2Dq', 'AQ8A2589 (2).JPG', '::1', 'ghatkopar', '895654');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_table`
--
ALTER TABLE `admin_table`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart_details`
--
ALTER TABLE `cart_details`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `orders_pending`
--
ALTER TABLE `orders_pending`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `user_orders`
--
ALTER TABLE `user_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `user_payments`
--
ALTER TABLE `user_payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_table`
--
ALTER TABLE `admin_table`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders_pending`
--
ALTER TABLE `orders_pending`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `user_orders`
--
ALTER TABLE `user_orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `user_payments`
--
ALTER TABLE `user_payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_table`
--
ALTER TABLE `user_table`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
