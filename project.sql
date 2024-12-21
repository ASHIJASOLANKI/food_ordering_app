-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2024 at 10:21 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL,
  `cost` decimal(8,2) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `phone` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `product_ids` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `cost`, `name`, `email`, `status`, `city`, `address`, `phone`, `date`, `product_ids`) VALUES
(1, 30.00, 'name', 'gmail@gmail.com', 'not paid', 'city', 'address', '7404562106', '2024-11-01 04:33:22', ''),
(2, 60.00, 'name', 'email@email.com', 'not paid', 'city', 'address', '1234567890', '2024-11-01 15:23:42', ''),
(3, 20.00, 'a', 'D@gmail.com', 'not paid', 'city', 'add', '4444444444', '2024-11-02 03:46:55', ''),
(4, 39.99, 'name', 'email@email.com', 'not paid', 'city', 'address', '4444445555', '2024-11-02 15:05:08', ',1'),
(5, 39.99, 'aa', 'aa@gmail.com', 'not paid', 'city', 'add', '7778889911', '2024-11-02 17:14:17', ',1'),
(6, 34.00, 'www', 'ww@gmail.com', 'not paid', 'city', 'add', '99988877722', '2024-11-02 17:15:34', ',7'),
(7, 40.00, 'ashi', 'a@gm.co', 'not paid', 'city', 'add', '8888855555', '2024-11-18 01:08:59', ',2'),
(8, 36.00, 'name', 'email@email.co', 'not paid', 'city', 'add', '8777774444', '2024-11-18 01:12:18', ',3'),
(9, 10.00, 'ash', 'am@emai.co', 'not paid', 'city', 'add', '1234567890', '2024-11-18 01:14:47', ',2'),
(10, 12.00, 'ashi', 'email@email.co', 'not paid', 'city', 'add', '9879879870`', '2024-11-18 01:17:23', ',3'),
(11, 15.00, 'name', 'email@email.co', 'not paid', 'city', 'add', '9879879870', '2024-11-18 01:18:29', ',4'),
(12, 15.00, 'ash', 'as@gm.co', 'not paid', 'city', 'add', '1112223331', '2024-12-05 19:16:55', ',4'),
(13, 10.00, 'as', 'as@gm.co', 'not paid', 'city', 'add', '8888888888', '2024-12-05 19:26:08', ',2'),
(14, 39.99, 'aaa', 'em@em.co', 'not paid', 'city', 'dd', '3333333333', '2024-12-07 00:19:41', ',1'),
(1733513475542, 39.99, 'As', 'em@in.in', 'not paid', 'city', 'add', '4444555566', '2024-12-07 01:01:15', ',1'),
(1733570097196, 10.00, 'name', 'w@gm.in', 'not paid', 'city', 'ad', '8888888888', '2024-12-07 16:44:57', ',2'),
(1733590951335, 39.99, 'nam', 'wm@gm.co', 'not paid', 'city', 'ad', '1111111111', '2024-12-07 22:32:31', ',1'),
(1733593809769, 39.99, 'a', 'a@gm.in', 'not paid', 'a', 'a', '2', '2024-12-07 23:20:09', ',1'),
(1733598996938, 10.00, 'n', 'a@g.in', 'not paid', 'city', 'ad', '56', '2024-12-08 00:46:36', ',2'),
(1733649079486, 39.99, 'ash', 'a@gm.ci', 'not paid', 'city', 'add', '9999999999', '2024-12-08 14:41:19', ',1'),
(1733653296365, 39.99, 'a', 'a@g.in', 'not paid', 'city', 'ad', '0000000000', '2024-12-08 15:51:36', ',1'),
(1733654940126, 39.99, 'as', 'as@gm.in', 'not paid', 'city', 'add', '999', '2024-12-08 16:19:00', ',1'),
(1733655078459, 39.99, 'a', 'A@gm.in', 'not paid', 'city', 'ad', '0', '2024-12-08 16:21:18', ',1'),
(1733655611675, 10.00, 'a', 'a@h.om', 'not paid', 'ci', 'D', '9', '2024-12-08 16:30:11', ',2'),
(1733655817147, 12.00, 'n', 'a@j.m', 'not paid', 'c', 'a', '9', '2024-12-08 16:33:37', ',3'),
(1733660164149, 12.00, 'a', 'a@gm.in', 'not paid', 'city', 'a', '0', '2024-12-08 17:46:04', ',3'),
(1733680099987, 39.99, 'as', 'wa@gn.io', 'not paid', 'x', 's', '333', '2024-12-08 23:18:19', ',1'),
(1733680270362, 10.00, 'a', 'q@w.i', 'not paid', 's', 'a', '3', '2024-12-08 23:21:10', ',2'),
(1734209390607, 39.99, 'as', 'a@gm.bo', 'not paid', 'ci', 'ad', '99', '2024-12-15 02:19:50', ',1'),
(1734209826167, 39.99, 'a', 's@g.ib', 'not paid', '44', 's', '3', '2024-12-15 02:27:06', ',1'),
(1734266854067, 39.99, 'as', 'as@as.as', 'not paid', 'a', 'a', '2', '2024-12-15 18:17:34', ',1'),
(1734267231442, 39.99, 'ad', 'ad@ad.ad', 'not paid', 'a', 'a', '2', '2024-12-15 18:23:51', ',1'),
(1734295172961, 39.99, 'a', 'a@a.in', 'not paid', 'sw', 's', '2', '2024-12-16 02:09:32', ',1'),
(1734434361472, 39.99, 'as', 'a@a.i', 'paid', 'c', 'a', 'a', '2024-12-17 16:49:21', ',1'),
(1734438352734, 39.99, 'a', 'a@a.a', 'paid', 'a', 'a', 'a', '2024-12-17 17:55:52', ',1'),
(1734465936562, 39.99, 'a', 'a@a.i', 'paid', 'c', 'a', '2', '2024-12-18 01:35:36', ',1'),
(1734466749133, 39.99, 's', 's@s.s', 'paid', 's', 's', 's', '2024-12-18 01:49:09', ',1'),
(1734466987919, 39.99, 'd', 'd@d.d', 'paid', 'd', 'd', 'd', '2024-12-18 01:53:07', ',1'),
(1734467134217, 39.99, 'e', 'e@e.e', 'paid', 'e', 'e', 'e', '2024-12-18 01:55:34', ',1'),
(1734468773158, 39.99, 'g', 'g@g.g', 'paid', 'g', 'g', 'g', '2024-12-18 02:22:53', ',1'),
(1734472166902, 10.00, 'v', 'v@v.v', 'paid', 'v', 'v', 'v', '2024-12-18 03:19:26', ',2'),
(1734514388588, 39.99, 'w', 'w@w.i', 'paid', 'w', 'w', 'w', '2024-12-18 15:03:08', ',1'),
(1734525818983, 159.96, 'g', 'g@g.g', 'paid', 'g', 'gg', 'g', '2024-12-18 18:13:38', ',1'),
(1734643554312, 39.99, 'n', 'n@n.n', 'paid', 'n', 'n', 'n', '2024-12-20 02:55:54', ',1'),
(1734643722505, 39.99, 'j', 'j@j.j', 'paid', 'j', 'j', 'j', '2024-12-20 02:58:42', ',1'),
(1734644019892, 39.99, 'x', 'x@x.x', 'paid', 'x', 'x', 'x', '2024-12-20 03:03:39', ',1');

-- --------------------------------------------------------

--
-- Table structure for table `orders_items`
--

CREATE TABLE `orders_items` (
  `id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` decimal(8,2) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `order_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `transaction_id` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `order_id`, `transaction_id`, `date`) VALUES
(1, 1734434361472, '6RW87583XH955150H', '2024-12-17 16:50:12'),
(2, 1734438352734, '11M07163BF1273233', '2024-12-17 17:56:31'),
(3, 1734465936562, '92W106385Y600834F', '2024-12-18 01:39:05'),
(4, 1734466749133, '26W809749A129512H', '2024-12-18 01:49:35'),
(5, 1734466987919, '0PS869168E0350904', '2024-12-18 01:53:29'),
(6, 1734467134217, '6K4660391B209400B', '2024-12-18 01:55:56'),
(7, 1734468773158, '8R488369GG337613L', '2024-12-18 02:23:25'),
(8, 1734468773158, '4F6855631H558664C', '2024-12-18 02:23:49'),
(9, 1734472166902, '6RC05728M4661542T', '2024-12-18 03:20:08'),
(10, 1734514388588, '3GB248707K570833X', '2024-12-18 15:03:40'),
(11, 1734525818983, '91X799807G587651E', '2024-12-18 18:14:03'),
(12, 1734643554312, '6NU880702P349392D', '2024-12-20 02:56:28'),
(13, 1734643722505, '3CV76377DF6278028', '2024-12-20 02:58:56'),
(14, 1734644019892, '35P96608CY9395413', '2024-12-20 03:03:55');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` float(8,2) NOT NULL,
  `sale_price` float(8,2) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `image` text NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `sale_price`, `quantity`, `image`, `category`, `type`) VALUES
(1, 'chicken cheese burger', 'It is usually made with sliced onions, minced chicken stuffed with mozzarella cheese and other exciting ingredients', 39.99, NULL, 0, 'f8.png', 'burger', 'non-veg'),
(2, 'Delicious Pasta', 'Spicy Sauce With Garlic, Chilli, & Herbs Tossed With Pasta , Creating And Flavorful Italian Dish', 10.00, NULL, 0, 'f9.png', 'pasta', 'veg'),
(3, 'Tasty Burger', 'Original cheese in a delicious blend of mixed vegetables layered with crisp lettuce, fresh onions, and draped in a rich cheesy sauce. Now available in a mini version!', 12.00, NULL, 0, 'f7.png', 'burger', 'veg'),
(4, 'Delicious Pizza', 'Classic Fresh Dough Pizza with real mozzarella cheese, Onion, Tomato, Green Yellow & Red Capsicum, Sweetcorn, Carrot, Paneer, Jalapenos, Olives & Red Paprika', 15.00, NULL, 0, 'f6.png', 'pizza', 'non-veg'),
(5, 'French Fries', 'Jazz up your meal with crispy large fries!\r\nCrispy French fries with a spicy chili lime sprinkle.', 10.00, NULL, 0, 'f5.png', 'burger', 'veg'),
(6, 'Delicious Pasta', 'A deliciously spicy and creamy preparation with penne pasta cooked in red sauce topped with olives and grated cheese.', 18.00, NULL, 0, 'f4.png', 'pasta', 'veg'),
(7, 'Delicious Pizza', 'A classic pizza made with tomato sauce, mozzarella, and basil. It\'s named after Queen Margherita of Italy, who was said to like its mild flavor and the colors of its toppings.', 17.00, NULL, 0, 'f3.png', 'pizza', 'non-veg'),
(8, 'Delicious Burger', 'The King of burger, a double decker with a double Patty and lots of veggies. A tasty potato Patty with an interesting sauce and Onion. Taste best with an extra cheese slice.', 15.00, NULL, 0, 'f2.png', 'burger', 'veg'),
(9, 'Delicious Pizza', 'The Feast Includes Seasoned Mushroom, Onion, Capsicum, Sweet Corn, Hot Chilly, Paneer, Tomato, Cheese', 20.00, NULL, 0, 'f1.png', 'pizza', 'non-veg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_items`
--
ALTER TABLE `orders_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1734644019893;

--
-- AUTO_INCREMENT for table `orders_items`
--
ALTER TABLE `orders_items`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
