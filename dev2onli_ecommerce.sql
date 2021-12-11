-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 11, 2021 at 07:03 AM
-- Server version: 5.7.23-23
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dev2onli_ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `addon`
--

CREATE TABLE `addon` (
  `id` int(20) NOT NULL,
  `customize_order_id` int(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `addon`
--

INSERT INTO `addon` (`id`, `customize_order_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-04-16 12:34:04', '0000-00-00 00:00:00'),
(2, 2, '2021-04-16 12:34:04', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `addon_items`
--

CREATE TABLE `addon_items` (
  `id` int(20) NOT NULL,
  `addon_id` int(20) NOT NULL,
  `product_id` int(20) NOT NULL,
  `image` text NOT NULL,
  `text` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `addon_items`
--

INSERT INTO `addon_items` (`id`, `addon_id`, `product_id`, `image`, `text`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '', 'test', '2021-04-16 12:34:55', '0000-00-00 00:00:00'),
(2, 1, 1, '', 'test111', '2021-04-16 12:35:37', '0000-00-00 00:00:00'),
(3, 2, 4, '', '', '2021-04-16 12:35:49', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `billing`
--

CREATE TABLE `billing` (
  `id` int(20) NOT NULL,
  `billing_address` text NOT NULL,
  `billing_state` text NOT NULL,
  `billing_city` text NOT NULL,
  `billing_pincode` text NOT NULL,
  `user_id` int(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `billing`
--

INSERT INTO `billing` (`id`, `billing_address`, `billing_state`, `billing_city`, `billing_pincode`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'anand nagar', 'mp', 'indore', '452001', 1, '2021-04-16 11:48:32', '0000-00-00 00:00:00'),
(2, 'geeta bhawan', 'mp', 'indore', '452002', 2, '2021-04-16 11:48:55', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(20) NOT NULL,
  `product_id` int(20) NOT NULL,
  `user_id` int(20) NOT NULL,
  `product_quantity` int(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(20) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_description` text NOT NULL,
  `parent_category` int(20) NOT NULL,
  `category_type` int(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category_name`, `category_description`, `parent_category`, `category_type`, `created_at`, `updated_at`) VALUES
(2, 'choclates', 'Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero\'s De Finibus Bonorum et Malorum for use in a type specimen book', 0, 1, '2021-04-16 11:32:38', '0000-00-00 00:00:00'),
(3, 'toys', 'Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero\'s De Finibus Bonorum et Malorum for use in a type specimen book', 0, 1, '2021-04-16 11:33:46', '0000-00-00 00:00:00'),
(5, 'remote control toys', 'Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero\'s De Finibus Bonorum et Malorum for use in a type specimen book', 1, 1, '2021-04-16 11:36:47', '0000-00-00 00:00:00'),
(6, 'basket', 'Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero\'s De Finibus Bonorum et Malorum for use in a type specimen book', 0, 2, '2021-04-16 11:53:33', '0000-00-00 00:00:00'),
(7, 'box', 'Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero\'s De Finibus Bonorum et Malorum for use in a type specimen book', 0, 2, '2021-04-16 11:53:33', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `customize_order`
--

CREATE TABLE `customize_order` (
  `id` int(20) NOT NULL,
  `category_id` int(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customize_order`
--

INSERT INTO `customize_order` (`id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 6, '2021-04-16 12:33:08', '0000-00-00 00:00:00'),
(2, 7, '2021-04-16 12:33:08', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(20) NOT NULL,
  `name` text NOT NULL,
  `repository_id` int(20) NOT NULL,
  `ordering` int(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `name`, `repository_id`, `ordering`, `created_at`, `updated_at`) VALUES
(1, 'dairymilk.jpg', 4, 0, '2021-04-19 08:05:58', '0000-00-00 00:00:00'),
(2, 'kitkat.jpg', 5, 0, '2021-04-19 08:07:13', '0000-00-00 00:00:00'),
(3, 'teddy.jpg', 7, 0, '2021-04-20 09:40:53', '0000-00-00 00:00:00'),
(4, 'car1.jpg', 6, 0, '2021-04-19 08:08:14', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(20) NOT NULL,
  `product_id` int(20) NOT NULL,
  `product_quantity` int(255) NOT NULL,
  `user_id` int(20) NOT NULL,
  `order_status` text NOT NULL,
  `payment_method` text NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `order_track`
--

CREATE TABLE `order_track` (
  `id` int(20) NOT NULL,
  `order_id` int(20) NOT NULL,
  `order_status` text NOT NULL,
  `payment_method` text NOT NULL,
  `remark` text NOT NULL,
  `posting_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(20) NOT NULL,
  `category_id` int(20) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_description` text NOT NULL,
  `product_price` int(20) NOT NULL,
  `product_discount` int(20) NOT NULL,
  `product_stock` int(20) NOT NULL,
  `product_type` int(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `category_id`, `product_name`, `product_description`, `product_price`, `product_discount`, `product_stock`, `product_type`, `created_at`, `updated_at`) VALUES
(0, 2, 'dairymilk_hamper', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco lab', 500, 30, 10, 2, '2021-04-20 09:25:21', '0000-00-00 00:00:00'),
(1, 2, 'dairy milk', 'Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero\'s De Finibus Bonorum et Malorum for use in a type specimen book', 150, 10, 200, 1, '2021-04-16 11:41:05', '0000-00-00 00:00:00'),
(2, 2, 'kitkat', 'Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero\'s De Finibus Bonorum et Malorum for use in a type specimen book', 50, 10, 100, 1, '2021-04-16 11:42:08', '0000-00-00 00:00:00'),
(3, 5, 'car', 'Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero\'s De Finibus Bonorum et Malorum for use in a type specimen book', 3000, 100, 10, 1, '2021-04-16 11:43:11', '0000-00-00 00:00:00'),
(4, 3, 'teddy', 'Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero\'s De Finibus Bonorum et Malorum for use in a type specimen book', 2000, 200, 20, 1, '2021-04-16 11:43:11', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `product_review`
--

CREATE TABLE `product_review` (
  `id` int(20) NOT NULL,
  `product_id` int(20) NOT NULL,
  `product_quantity` int(20) NOT NULL,
  `product_price` int(20) NOT NULL,
  `product_rating` int(20) NOT NULL,
  `user_id` int(20) NOT NULL,
  `user_review_title` text NOT NULL,
  `user_review` text NOT NULL,
  `review_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `repository`
--

CREATE TABLE `repository` (
  `id` int(20) NOT NULL,
  `type` text NOT NULL,
  `type_id` int(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `repository`
--

INSERT INTO `repository` (`id`, `type`, `type_id`, `created_at`, `updated_at`) VALUES
(1, 'category', 1, '2021-04-16 11:30:46', '0000-00-00 00:00:00'),
(2, 'category', 2, '2021-04-16 11:31:18', '0000-00-00 00:00:00'),
(3, 'category', 3, '2021-04-16 11:31:34', '0000-00-00 00:00:00'),
(4, 'product', 1, '2021-04-16 11:39:04', '0000-00-00 00:00:00'),
(5, 'product', 2, '2021-04-16 11:39:27', '0000-00-00 00:00:00'),
(6, 'product', 3, '2021-04-16 11:39:27', '0000-00-00 00:00:00'),
(7, 'product', 4, '2021-04-19 08:01:15', '0000-00-00 00:00:00'),
(8, 'category', 6, '2021-04-16 11:50:56', '0000-00-00 00:00:00'),
(9, 'category', 7, '2021-04-16 11:51:25', '0000-00-00 00:00:00'),
(10, 'category', 8, '2021-04-16 11:51:25', '0000-00-00 00:00:00'),
(11, 'product', 5, '2021-04-16 11:51:52', '0000-00-00 00:00:00'),
(12, 'product', 6, '2021-04-16 11:51:52', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `shipping`
--

CREATE TABLE `shipping` (
  `id` int(20) NOT NULL,
  `shipping_address` text NOT NULL,
  `shipping_state` text NOT NULL,
  `shipping_city` text NOT NULL,
  `shipping_pincode` text NOT NULL,
  `user_id` int(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shipping`
--

INSERT INTO `shipping` (`id`, `shipping_address`, `shipping_state`, `shipping_city`, `shipping_pincode`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'anand nagar', 'mp', 'indore', '452001', 1, '2021-04-16 11:46:47', '0000-00-00 00:00:00'),
(2, 'sudama nagar', 'mp', 'indore', '452009', 1, '2021-04-16 11:47:24', '0000-00-00 00:00:00'),
(3, 'geeta bhawan', 'mp', 'indore', '452002', 2, '2021-04-16 11:47:56', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(20) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` text COLLATE utf8_unicode_ci NOT NULL,
  `password` text COLLATE utf8_unicode_ci NOT NULL,
  `user_type` int(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`, `created_at`) VALUES
(1, 'Pragya', 'pragya@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 2, '2021-04-13 08:49:51'),
(2, 'admin', 'admin@admin.in', '21232f297a57a5a743894a0e4a801fc3', 1, '2021-04-19 06:09:30');

-- --------------------------------------------------------

--
-- Table structure for table `user_log`
--

CREATE TABLE `user_log` (
  `id` int(20) NOT NULL,
  `user_email` text NOT NULL,
  `user_ip` text NOT NULL,
  `login_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `logout_time` datetime NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(20) NOT NULL,
  `product_id` int(20) NOT NULL,
  `user_id` int(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addon`
--
ALTER TABLE `addon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customize_order_id` (`customize_order_id`);

--
-- Indexes for table `addon_items`
--
ALTER TABLE `addon_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addon_id` (`addon_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`id`),
  ADD KEY `billing_ibfk_1` (`user_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_ibfk_1` (`product_id`),
  ADD KEY `cart_ibfk_2` (`user_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customize_order`
--
ALTER TABLE `customize_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_ibfk_1` (`repository_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_ibfk_1` (`product_id`),
  ADD KEY `orders_ibfk_2` (`user_id`);

--
-- Indexes for table `order_track`
--
ALTER TABLE `order_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_track_ibfk_1` (`order_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `product_review`
--
ALTER TABLE `product_review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_review_ibfk_1` (`product_id`),
  ADD KEY `product_review_ibfk_2` (`user_id`);

--
-- Indexes for table `repository`
--
ALTER TABLE `repository`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping`
--
ALTER TABLE `shipping`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shipping_ibfk_1` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_log`
--
ALTER TABLE `user_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlist_ibfk_1` (`product_id`),
  ADD KEY `wishlist_ibfk_2` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addon`
--
ALTER TABLE `addon`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
