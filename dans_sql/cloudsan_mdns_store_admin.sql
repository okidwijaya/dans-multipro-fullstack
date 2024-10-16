-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 16, 2024 at 08:25 AM
-- Server version: 10.6.19-MariaDB-cll-lve
-- PHP Version: 8.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cloudsan_mdns_store_admin`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(155) NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `user_id` int(155) NOT NULL,
  `qty` int(155) NOT NULL,
  `variant` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `product_id`, `user_id`, `qty`, `variant`, `status`, `created_at`, `update_at`) VALUES
(1, 'kja98en09ejq09', 41, 2, '', 1, '2024-10-06 02:33:06', '0000-00-00 00:00:00'),
(2, 'n9i3109j02j39j', 41, 3, '', 1, '2024-10-06 02:33:06', '0000-00-00 00:00:00'),
(3, '8293heqejiqkii-1727516407720', 41, 1, '', 1, '2024-10-06 02:58:02', '0000-00-00 00:00:00'),
(8, '8293heqejiqkii-1727516407720', 41, 1, '', 0, '2024-10-06 04:33:55', '0000-00-00 00:00:00'),
(9, '8293heqejiqkii-1727622776286', 41, 1, '', 1, '2024-10-07 15:19:52', '0000-00-00 00:00:00'),
(10, 'li9u3249rjewo', 41, 1, '', 1, '2024-10-07 15:20:28', '0000-00-00 00:00:00'),
(11, 'j92833f163hla', 41, 1, '', 1, '2024-10-09 06:51:15', '0000-00-00 00:00:00'),
(12, '8293heqejiqkii-1727516407720', 41, 14, '', 1, '2024-10-09 07:01:11', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `collections`
--

CREATE TABLE `collections` (
  `id` int(10) NOT NULL,
  `collection_id` varchar(100) NOT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `collections`
--

INSERT INTO `collections` (`id`, `collection_id`, `product_id`, `title`, `tags`, `created_at`, `updated_at`, `description`, `image`, `category`) VALUES
(1, 'col-81h3', NULL, 'Meat', 'meat', '2024-10-04 13:52:33', '0000-00-00 00:00:00', NULL, 'https://daganghalal.blob.core.windows.net/42930/Product/fresh-seafood-and-fish-1707378823656.jpg', NULL),
(2, 'col-9ad0', NULL, 'Seafood', 'seafood', '2024-10-04 13:52:33', '0000-00-00 00:00:00', NULL, 'https://onlinemeats.in/wp-content/uploads/2024/04/beef-meat.jpg', NULL),
(3, 'col-9jc9', NULL, 'Organic Produce', 'organic', '2024-10-04 13:52:33', '0000-00-00 00:00:00', 'https://www.happynature.in/wp-content/uploads/2023/01/Vegetables-And-Fruits.png', NULL, NULL),
(4, 'col-y93j', NULL, 'Fresh Fruits \r\n', 'fresh_fruits', '2024-10-04 13:52:33', '0000-00-00 00:00:00', NULL, 'https://officefruit.ie/wp-content/uploads/2016/07/fruit-delivered-1080x675.jpg', NULL),
(5, 'col-61gh', NULL, 'Fresh Vegetables', 'vegetables', '2024-10-04 13:52:33', '0000-00-00 00:00:00', NULL, 'https://efresh.com/sites/default/files/vegetables-1867145_1.jpg', NULL),
(6, 'col-189i', NULL, 'Fresh Herbs', 'Herbs', '2024-10-04 13:52:33', '0000-00-00 00:00:00', NULL, 'https://www.bhg.com/thmb/liNxwkXM6JZMUXEWbyHObvOapsY=/1244x0/filters:no_upscale():strip_icc()/windowsill-herbs-d29e994a-6259840f109b41bdb9c036d002d9ff5d.jpg', NULL),
(7, 'col-6gha', NULL, 'Salad', 'salad', '2024-10-04 13:52:33', '0000-00-00 00:00:00', NULL, 'https://food.fnr.sndimg.com/content/dam/images/food/fullset/2022/11/04/0/FNM_120122-Health-Salad_s4x3.jpg.rend.hgtvcom.616.462.suffix/1667575528029.webp', NULL),
(8, 'col-3829', NULL, 'Bakery & Pantry', 'Bakery, Pantry', '2024-10-04 13:52:33', '0000-00-00 00:00:00', NULL, 'https://food.fnr.sndimg.com/content/dam/images/food/fullset/2021/06/15/FN_getty_baking-questions_opener_s4x3.jpg.rend.hgtvcom.406.271.suffix/1623812703678.jpeg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_item`
--

CREATE TABLE `product_item` (
  `id` int(10) NOT NULL,
  `key_id` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` int(10) DEFAULT NULL,
  `product_status` varchar(25) DEFAULT NULL,
  `variant` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`variant`)),
  `stock` int(11) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `collections` varchar(255) DEFAULT NULL,
  `vendor` varchar(155) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `compare_at_price` int(10) DEFAULT NULL,
  `weight` int(10) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` varchar(10) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `product_item`
--

INSERT INTO `product_item` (`id`, `key_id`, `user_id`, `title`, `price`, `product_status`, `variant`, `stock`, `tags`, `collections`, `vendor`, `image`, `video`, `description`, `compare_at_price`, `weight`, `created_at`, `update_at`, `status`, `category`) VALUES
(2, 'kja98en09ejq09', 41, 'carrot', 3250, NULL, NULL, NULL, 'vegetables, carrot', 'vegetables', NULL, 'https://www.allthatgrows.in/cdn/shop/products/Carrot-Orange.jpg?v=1598079671', 'https://www.youtube.com/watch?v=Jgbv2ZrC1xM', 'carrot, (Daucus carota), herbaceous, generally biennial plant of the Apiaceae family that produces an edible taproot. Among common varieties root shapes range from globular to long, with lower ends blunt to pointed. Besides the orange-coloured roots, whit', 3050, 350, '2024-09-26 01:54:45', '0000-00-00 00:00:00', 'active', 'vegetables'),
(3, 'n9i3109j02j39j', 41, 'Tomato', 2860, NULL, NULL, NULL, 'fruit', 'fruit', NULL, 'https://www.cylonies.com/storage/vegetables/tomato/untitled-1.jpg', 'https://www.youtube.com/watch?v=OQ7TDwW6lOk', 'Tomato from Sri Lanka\r\nTomatoes (Solanum lycopersicum) are a fruit, but their fondness for other savory foods makes them a member of the nightshade / Solanaceae family (along with aubergines, peppers, and chillies).\r\n \r\nPremium Quality\r\nThis product has a', NULL, 250, '2024-09-29 15:23:13', '0000-00-00 00:00:00', 'active', 'fruit'),
(4, 'j92833fd98df', 40, 'Cabbage', 4700, NULL, NULL, NULL, 'vegetable, cabbage', 'Vegetables', '', NULL, NULL, 'Cabbage, comprising several cultivars of Brassica oleracea, is a leafy green, red, or white biennial plant grown as an annual vegetable crop for its dense-leaved heads.', 4000, 500, '2024-09-26 02:23:10', '0000-00-00 00:00:00', 'active', 'Vegetables'),
(5, 'j92833f163hla', 41, 'Eggplant', 12500, NULL, NULL, NULL, 'vegetable, Eggplant', 'Vegetables', '', NULL, NULL, 'Eggplant, aubergine, brinjal, or baigan is a plant species in the nightshade family Solanaceae. Solanum melongena is grown worldwide for its edible fruit. Most commonly purple, the spongy, absorbent fruit is used in several cuisines. Typically used as a vegetable in cooking, it is a berry by botanical definition', NULL, 1000, '2024-09-26 02:28:38', '0000-00-00 00:00:00', 'active', 'Vegetables'),
(9, 'li9u3249rjewo', 41, 'Broccoli Rabe', 5300, NULL, NULL, NULL, 'vegetable, Broccoli', 'Vegetables', '', NULL, NULL, 'Broccoli is popular and widely eaten. It has a distinctive ‘mustardy’ taste and well known health benefits. The stalks, buds and most of the leaves of broccoli are edible', 6150, 400, '2024-09-26 14:43:58', '0000-00-00 00:00:00', 'deactive', 'Vegetables'),
(14, '8293hiqjiqkii', 41, 'Corn', 12500, NULL, NULL, NULL, 'Vetegables', '', NULL, NULL, NULL, '', 0, NULL, '2024-09-27 16:20:10', '0000-00-00 00:00:00', 'active', ''),
(20, '8293heqejiqkii-1727516407720', 41, 'Ginger', 23200, NULL, NULL, NULL, 'Vetegables', '', NULL, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfjmOYr-EOxju98atL8_xXqoWFUvRt06Ub7Q&s', NULL, 'Ginger is a root crop that has a pungent spicy aroma and characteristic taste and fresh ginger is a key flavour in many Asian cuisines.Myoga ginger is a traditional Japanese vegetable grown for both the shoots and flower buds. Freshly sliced myoga shoots and buds are commonly used in salads and miso soup. The shoots are also preserved whole in vinegar as an edible garnish. This is a new vegetable in New Zealand and research is still being undertaken on growth and yield.', 28450, NULL, '2024-10-04 14:42:23', '0000-00-00 00:00:00', 'active', ''),
(21, '8293heqejiqkii-1727622776286', 41, 'Tomato Vegetables', 21200, NULL, NULL, NULL, 'Vetegables', '', NULL, 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/89/Tomato_je.jpg/1200px-Tomato_je.jpg', NULL, ' Tomatoes are fruits that are considered vegetables by nutritionists. Botanically, a fruit ', 23450, NULL, '2024-10-04 14:41:40', '0000-00-00 00:00:00', 'active', '');

-- --------------------------------------------------------

--
-- Table structure for table `product_order_history`
--

CREATE TABLE `product_order_history` (
  `id` int(155) NOT NULL,
  `transaction_id` varchar(155) NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `user_id` int(155) NOT NULL,
  `qty` int(155) NOT NULL,
  `variant` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `product_order_history`
--

INSERT INTO `product_order_history` (`id`, `transaction_id`, `product_id`, `user_id`, `qty`, `variant`, `status`, `created_at`, `update_at`) VALUES
(9, '41-1728640878221', 'kja98en09ejq09', 41, 10, NULL, 0, '2024-10-11 10:01:19', '0000-00-00 00:00:00'),
(10, '41-1728640878221', 'j92833fd98df', 41, 5, NULL, 0, '2024-10-11 10:01:20', '0000-00-00 00:00:00'),
(11, '41-1728641121151', 'j92833f163hla', 41, 7, NULL, 0, '2024-10-11 10:05:22', '0000-00-00 00:00:00'),
(12, '41-1728641121151', 'li9u3249rjewo', 41, 25, NULL, 0, '2024-10-11 10:05:23', '0000-00-00 00:00:00'),
(13, '41-1728641121151', '8293hiqjiqkii', 41, 2, NULL, 0, '2024-10-11 10:05:23', '0000-00-00 00:00:00'),
(14, '43-1728709653821', 'j92833f163hla', 43, 17, NULL, 0, '2024-10-12 05:07:33', '0000-00-00 00:00:00'),
(15, '43-1728709653821', 'li9u3249rjewo', 43, 12, NULL, 0, '2024-10-12 05:07:33', '0000-00-00 00:00:00'),
(16, '43-1728709653821', '8293hiqjiqkii', 43, 5, NULL, 0, '2024-10-12 05:07:33', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `title` varchar(155) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(20) NOT NULL,
  `order_number` varchar(155) NOT NULL,
  `user_id` int(15) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `total` int(30) NOT NULL,
  `products_detail` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`products_detail`)),
  `payment_name` varchar(155) NOT NULL,
  `status` varchar(255) NOT NULL,
  `order_process` tinyint(1) DEFAULT NULL,
  `payment_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `fullfilment_address` varchar(255) NOT NULL,
  `expedition` varchar(55) NOT NULL,
  `expedition_rate` int(11) DEFAULT NULL,
  `receiver` varchar(255) NOT NULL,
  `receiver_info` varchar(255) NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `discount_code` varchar(155) DEFAULT NULL,
  `discount_rate` int(10) DEFAULT NULL,
  `price_before_discount` int(10) DEFAULT NULL,
  `tax` int(10) DEFAULT NULL,
  `phone_number` int(10) DEFAULT NULL,
  `city` varchar(10) DEFAULT NULL,
  `district` varchar(10) DEFAULT NULL,
  `receiver_address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `order_number`, `user_id`, `created_at`, `updated_at`, `total`, `products_detail`, `payment_name`, `status`, `order_process`, `payment_date`, `fullfilment_address`, `expedition`, `expedition_rate`, `receiver`, `receiver_info`, `note`, `discount_code`, `discount_rate`, `price_before_discount`, `tax`, `phone_number`, `city`, `district`, `receiver_address`) VALUES
(6, '41-1728640878221', 41, '2024-10-11 10:01:19', '0000-00-00 00:00:00', 350000, '[{\"product\":\"kja98en09ejq09\",\"qty\":10},{\"product\":\"j92833fd98df\",\"qty\":5}]', 'bca', 'payment success', NULL, '2024-10-11 10:01:19', 'Purwokerto', 'jne', NULL, 'john', 'phone number: 08311371839', '0', 'BLACKFRIDAY', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, '41-1728641121151', 41, '2024-10-11 10:05:22', '0000-00-00 00:00:00', 350000, '[{\"product\":\"j92833f163hla\",\"qty\":7},{\"product\":\"li9u3249rjewo\",\"qty\":25},{\"product\":\"8293hiqjiqkii\",\"qty\":2}]', 'bca', 'payment success', NULL, '2024-10-11 10:05:22', 'Purwokerto', 'jne', NULL, 'john', 'phone number: 08311371839', '0', 'BLACKFRIDAY', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, '43-1728709653821', 43, '2024-10-12 05:07:33', '0000-00-00 00:00:00', 470500, '[{\"product\":\"j92833f163hla\",\"qty\":17},{\"product\":\"li9u3249rjewo\",\"qty\":12},{\"product\":\"8293hiqjiqkii\",\"qty\":5}]', 'bni', 'payment success', NULL, '2024-10-12 05:07:33', 'Banyumas', 'tki', NULL, 'smith', 'phone number: 0823098312', '0', 'WEEKEND24', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transaction_draft`
--

CREATE TABLE `transaction_draft` (
  `id` int(20) NOT NULL,
  `order_number` varchar(155) NOT NULL,
  `user_id` int(15) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `total` int(30) NOT NULL,
  `products_detail` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`products_detail`)),
  `payment_name` varchar(155) NOT NULL,
  `status` varchar(255) NOT NULL,
  `order_process` tinyint(1) DEFAULT NULL,
  `payment_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `fullfilment_address` varchar(255) NOT NULL,
  `expedition` varchar(55) NOT NULL,
  `expedition_rate` int(11) DEFAULT NULL,
  `receiver` varchar(255) NOT NULL,
  `receiver_info` varchar(255) NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `discount_code` varchar(155) DEFAULT NULL,
  `discount_rate` int(10) DEFAULT NULL,
  `price_before_discount` int(10) DEFAULT NULL,
  `tax` int(10) DEFAULT NULL,
  `phone_number` int(10) DEFAULT NULL,
  `city` varchar(10) DEFAULT NULL,
  `district` varchar(10) DEFAULT NULL,
  `receiver_address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `transaction_draft`
--

INSERT INTO `transaction_draft` (`id`, `order_number`, `user_id`, `created_at`, `updated_at`, `total`, `products_detail`, `payment_name`, `status`, `order_process`, `payment_date`, `fullfilment_address`, `expedition`, `expedition_rate`, `receiver`, `receiver_info`, `note`, `discount_code`, `discount_rate`, `price_before_discount`, `tax`, `phone_number`, `city`, `district`, `receiver_address`) VALUES
(6, '41-1728640878221', 41, '2024-10-11 10:01:19', '0000-00-00 00:00:00', 350000, '[{\"product\":\"kja98en09ejq09\",\"qty\":10},{\"product\":\"j92833fd98df\",\"qty\":5}]', 'bca', 'payment success', NULL, '2024-10-11 10:01:19', 'Purwokerto', 'jne', NULL, 'john', 'phone number: 08311371839', '0', 'BLACKFRIDAY', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, '41-1728641121151', 41, '2024-10-11 10:05:22', '0000-00-00 00:00:00', 350000, '[{\"product\":\"j92833f163hla\",\"qty\":7},{\"product\":\"li9u3249rjewo\",\"qty\":25},{\"product\":\"8293hiqjiqkii\",\"qty\":2}]', 'bca', 'payment success', NULL, '2024-10-11 10:05:22', 'Purwokerto', 'jne', NULL, 'john', 'phone number: 08311371839', '0', 'BLACKFRIDAY', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, '43-1728709653821', 43, '2024-10-12 05:07:33', '0000-00-00 00:00:00', 470500, '[{\"product\":\"j92833f163hla\",\"qty\":17},{\"product\":\"li9u3249rjewo\",\"qty\":12},{\"product\":\"8293hiqjiqkii\",\"qty\":5}]', 'bni', 'payment success', NULL, '2024-10-12 05:07:33', 'Banyumas', 'tki', NULL, 'smith', 'phone number: 0823098312', '0', 'WEEKEND24', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transaction_history`
--

CREATE TABLE `transaction_history` (
  `id` int(123) DEFAULT NULL,
  `transaction_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `email` varchar(155) NOT NULL,
  `first_name` varchar(155) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `history_purchasing` int(10) DEFAULT NULL,
  `wishlists` int(10) DEFAULT NULL,
  `role` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `user_name`, `created_at`, `updated_at`, `email`, `first_name`, `password`, `last_name`, `picture`, `birthday`, `history_purchasing`, `wishlists`, `role`) VALUES
(41, 'oki', '2024-09-25 12:58:49', '0000-00-00 00:00:00', 'okidwijayaar@gmail.com', NULL, '$2b$10$FpRLB99S618i.It17WftUOdVbykzvBbRVOBjdeCUnpZezUc0yUIam', NULL, NULL, NULL, NULL, NULL, 'user'),
(43, 'oki', '2024-09-25 15:50:07', '0000-00-00 00:00:00', 'okidwijaya@gmail.com', NULL, '$2b$10$uZMzfzfdC2.9kz8dwAELfOv9kQM6IPRnmAQbKSWNf/cZfnM2mDPhG', NULL, NULL, NULL, NULL, NULL, 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `collections`
--
ALTER TABLE `collections`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_id` (`product_id`),
  ADD KEY `product_id_2` (`product_id`);

--
-- Indexes for table `product_item`
--
ALTER TABLE `product_item`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key_id` (`key_id`),
  ADD KEY `key_id_2` (`key_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `product_order_history`
--
ALTER TABLE `product_order_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_id` (`transaction_id`,`product_id`,`user_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_number` (`order_number`,`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `transaction_draft`
--
ALTER TABLE `transaction_draft`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_number` (`order_number`,`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `history_purchasing` (`history_purchasing`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(155) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `collections`
--
ALTER TABLE `collections`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product_item`
--
ALTER TABLE `product_item`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `product_order_history`
--
ALTER TABLE `product_order_history`
  MODIFY `id` int(155) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `transaction_draft`
--
ALTER TABLE `transaction_draft`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product_item` (`key_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `collections`
--
ALTER TABLE `collections`
  ADD CONSTRAINT `collections_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product_item` (`key_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
