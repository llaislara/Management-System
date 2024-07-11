-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 28, 2022 at 04:44 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `water-managment`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(500) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`, `type`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$JXUHqe014he1VbVJfv441eh05wGBn4VMib2QwTuDb0LO.pOQVhQES', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `customer_phone` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--
INSERT INTO `customer` (`customer_id`, `customer_name`, `customer_phone`) VALUES
(1, 'John Doe', '5551111111'),
(2, 'Jane Smith', '5552222222'),
(3, 'Michael Johnson', '5553333333'),
(4, 'Emily Brown', '5554444444'),
(5, 'Daniel Wilson', '5555555555'),
(6, 'Sarah Davis', '5556666666'),
(7, 'Robert Martinez', '5557777777'),
(8, 'Jessica Garcia', '5558888888'),
(9, 'David Rodriguez', '5559999999'),
(10, 'Lisa Lopez', '5551234567'),
(11, 'William Moore', '5552345678'),
(12, 'Ashley Taylor', '5553456789'),
(13, 'Christopher Thomas', '5554567890'),
(14, 'Amanda Hernandez', '5555678901'),
(15, 'Matthew King', '5556789012'),
(16, 'Elizabeth Lee', '5557890123'),
(17, 'Joshua Clark', '5558901234'),
(18, 'Michelle Lewis', '5559012345'),
(19, 'Kevin Walker', '5550123456'),
(20, 'Megan Hall', '5559876543'),
(21, 'Jason Young', '5558765432'),
(22, 'Rachel Scott', '5557654321'),
(23, 'Brian Green', '5556543210'),
(24, 'Samantha Baker', '5555432109'),
(25, 'Jonathan White', '5554321098'),
(26, 'Victoria Hill', '5553210987'),
(27, 'Brandon Adams', '5552109876'),
(28, 'Jennifer Nelson', '5551098765'),
(29, 'Andrew Martinez', '5550987654'),
(30, 'Stephanie Carter', '5559876543'),
(31, 'Patrick Rivera', '5558765432'),
(32, 'Amy Powell', '5557654321'),
(33, 'Thomas Ward', '5556543210'),
(34, 'Lauren Cox', '5555432109');


-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `type` int(50) NOT NULL COMMENT '0-bought 1-Sold',
  `vendor_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `total` int(11) NOT NULL DEFAULT 0,
  `payment_status` varchar(50) NOT NULL COMMENT '0=pending 1=paid',
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `type`, `vendor_id`, `customer_id`, `total`, `payment_status`, `date`) VALUES
(1045, 1, NULL, 1, 200, 'paid', '2022-02-14'),
(1046, 1, NULL, 1, 0, 'pending', '2022-02-14'),
(1047, 1, NULL, 1, 0, 'pending', '2022-02-14'),
(1049, 1, NULL, 1, 0, 'paid', '2022-02-14'),
(1050, 1, NULL, 1, 0, 'pending', '2022-02-14'),
(1051, 1, NULL, 1, 0, 'pending', '2022-02-14'),
(1052, 1, NULL, 1, 0, 'paid', '2022-02-14'),
(1053, 1, NULL, 1, 0, 'pending', '2022-02-14'),
(1054, 1, NULL, 1, 0, 'pending', '2022-02-14'),
(1055, 1, NULL, 1, 0, 'pending', '2022-02-14'),
(1056, 1, NULL, 1, 0, 'pending', '2022-02-14'),
(1057, 1, NULL, 1, 0, 'pending', '2022-02-14'),
(1058, 1, NULL, 1, 0, 'pending', '2022-02-14'),
(1059, 1, NULL, 1, 0, 'pending', '2022-02-14'),
(1060, 1, NULL, 1, 0, 'pending', '2022-02-14'),
(1061, 1, NULL, 1, 0, 'pending', '2022-02-14'),
(1062, 1, NULL, 1, 0, 'pending', '2022-02-14'),
(1063, 1, NULL, 1, 0, 'pending', '2022-02-14'),
(1064, 1, NULL, 1, 0, 'pending', '2022-02-14'),
(1065, 1, NULL, 1, 0, 'pending', '2022-02-14'),
(1066, 1, NULL, 3, 0, 'pending', '2022-02-15'),
(1067, 1, NULL, 3, 0, 'pending', '2022-02-15'),
(1068, 1, NULL, 3, 0, 'pending', '2022-02-15'),
(1069, 1, NULL, 1, 0, 'pending', '2022-02-15'),
(1070, 1, NULL, 1, 0, 'pending', '2022-02-15'),
(1071, 1, NULL, 1, 300, 'pending', '2022-02-15'),
(1072, 1, NULL, 1, 0, 'pending', '2022-02-15'),
(1073, 1, NULL, 1, 0, 'pending', '2022-02-15'),
(1074, 1, NULL, 1, 0, 'pending', '2022-02-15'),
(1075, 1, NULL, 1, 0, 'pending', '2022-02-15'),
(1076, 1, NULL, 1, 0, 'pending', '2022-02-15'),
(1077, 1, NULL, 1, 0, 'pending', '2022-02-15'),
(1078, 1, NULL, 1, 0, 'pending', '2022-02-15'),
(1079, 1, NULL, 1, 0, 'pending', '2022-02-15'),
(1080, 1, NULL, 1, 0, 'pending', '2022-02-15'),
(1081, 1, NULL, 1, 20710, 'paid', '2022-02-15'),
(1082, 1, NULL, 1, 1700, 'paid', '2022-02-16'),
(1083, 0, 88, NULL, 0, 'pending', '2022-02-16');

-- --------------------------------------------------------

--
-- Table structure for table `orders_product`
--

CREATE TABLE `orders_product` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders_product`
--

INSERT INTO `orders_product` (`id`, `order_id`, `product_id`, `quantity`) VALUES
(1, 1045, 1, 10),
(4, 1049, 1, 11),
(5, 1050, 1, 11),
(6, 1051, 1, 11),
(7, 1053, 1, 11),
(10, 1081, 2, 58),
(11, 1081, 3, 10),
(12, 1082, 1, 85);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_category` varchar(100) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_cost` int(11) NOT NULL,
  `product_price` int(11) NOT NULL DEFAULT 0,
  `product_stock` int(11) NOT NULL DEFAULT 0
) ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_category`, `product_name`, `product_cost`, `product_price`, `product_stock`) VALUES
(1, 'drink', 'Tea', 2.5, 5.73, 1712),
(2, 'perishable', 'Rice', 3.2, 4.24, 100),
(3, 'cleaning', 'Detergent', 1.5, 12.99, 50),
(4, 'fruits', 'Apple', 0.8, 2.33, 500),
(5, 'snacks', 'Chips', 1.0, 3.99, 200),
(6, 'drink', 'Coffee', 3.0, 6.99, 800),
(7, 'perishable', 'Bread', 1.2, 2.49, 150),
(8, 'cleaning', 'Paper Towels', 2.0, 15.49, 30),
(9, 'fruits', 'Banana', 0.5, 1.29, 300),
(10, 'dairy', 'Milk', 1.5, 2.99, 200),
(11, 'meat', 'Chicken Breast', 4.0, 8.99, 100),
(12, 'bakery', 'Cookies', 2.0, 4.49, 300),
(13, 'canned', 'Soup', 1.2, 2.79, 150),
(14, 'beverages', 'Soda', 0.8, 1.99, 400),
(15, 'snacks', 'Chocolate', 1.0, 2.49, 250),
(16, 'frozen', 'Ice Cream', 3.5, 5.99, 120),
(17, 'produce', 'Carrots', 0.3, 0.79, 600),
(18, 'household', 'Trash Bags', 3.0, 7.99, 80),
(19, 'personal care', 'Toothpaste', 1.0, 3.29, 200),
(20, 'pet supplies', 'Dog Food', 2.5, 9.99, 50),
(21, 'dairy', 'Yogurt', 1.2, 1.99, 300),
(22, 'meat', 'Ground Beef', 5.0, 10.49, 80),
(23, 'bakery', 'Bagels', 1.0, 2.99, 150),
(24, 'canned', 'Beans', 0.5, 1.29, 180),
(25, 'beverages', 'Juice', 1.8, 3.99, 250),
(26, 'snacks', 'Popcorn', 0.6, 1.99, 180),
(27, 'frozen', 'Pizza', 3.0, 6.49, 100),
(28, 'produce', 'Lettuce', 0.4, 1.29, 400),
(29, 'household', 'Laundry Detergent', 4.0, 12.99, 100),
(30, 'personal care', 'Shampoo', 2.0, 5.99, 150),
(31, 'pet supplies', 'Cat Litter', 3.0, 8.99, 70),
(32, 'dairy', 'Cheese', 2.0, 4.99, 180),
(33, 'meat', 'Pork Chops', 4.5, 9.49, 120),
(34, 'bakery', 'Croissants', 1.5, 3.49, 100),
(35, 'canned', 'Tomato Sauce', 0.8, 1.79, 200),
(36, 'beverages', 'Coffee Beans', 4.0, 9.99, 80),
(37, 'snacks', 'Nuts', 1.5, 3.99, 150),
(38, 'frozen', 'Frozen Vegetables', 1.2, 2.99, 250),
(39, 'produce', 'Apples', 0.6, 1.49, 300),
(40, 'household', 'Dish Soap', 1.0, 2.49, 200),
(41, 'personal care', 'Conditioner', 2.0, 4.99, 120),
(42, 'pet supplies', 'Fish Food', 0.5, 1.99, 100),
(43, 'dairy', 'Butter', 1.8, 3.49, 150),
(44, 'meat', 'Salmon Fillet', 7.0, 15.99, 60),
(45, 'bakery', 'Muffins', 1.2, 2.99, 120),
(46, 'canned', 'Tuna', 1.0, 2.29, 180),
(47, 'beverages', 'Tea Bags', 0.3, 1.99, 300),
(48, 'snacks', 'Pretzels', 0.7, 1.79, 200),
(49, 'frozen', 'Frozen Pizza', 3.5, 7.99, 100),
(50, 'produce', 'Oranges', 0.4, 0.99, 400),
(51, 'household', 'Aluminum Foil', 2.5, 5.99, 150),
(52, 'personal care', 'Hand Soap', 1.2, 3.49, 200),
(53, 'pet supplies', 'Dog Treats', 2.0, 4.99, 120),
(54, 'dairy', 'Heavy Cream', 1.5, 3.99, 180),
(55, 'meat', 'Lamb Chops', 8.0, 17.99, 80),
(56, 'bakery', 'Brownies', 2.0, 4.49, 150),
(57, 'canned', 'Corn', 0.8, 1.79, 250),
(58, 'beverages', 'Lemonade', 1.0, 2.49, 180),
(59, 'snacks', 'Peanut Butter', 2.5, 5.99, 100),
(60, 'frozen', 'Frozen Pies', 3.5, 8.49, 120),
(61, 'produce', 'Bell Peppers', 0.6, 1.99, 300),
(62, 'household', 'Window Cleaner', 2.0, 4.49, 150),
(63, 'personal care', 'Sunscreen', 3.0, 7.99, 100),
(64, 'pet supplies', 'Cat Treats', 1.5, 3.49, 180),
(65, 'dairy', 'Eggnog', 2.5, 5.49, 150),
(66, 'meat', 'Turkey Breast', 6.0, 12.99, 80),
(67, 'bakery', 'Donuts', 1.2, 2.99, 200),
(68, 'canned', 'Chicken Soup', 1.0, 2.29, 250),
(69, 'beverages', 'Iced Tea', 0.8, 1.99, 300),
(70, 'snacks', 'Trail Mix', 2.0, 4.49, 120),
(71, 'frozen', 'Frozen Burritos', 2.5, 5.99, 150),
(72, 'produce', 'Cucumbers', 0.4, 0.99, 400),
(73, 'household', 'Bleach', 1.5, 3.49, 180),
(74, 'personal care', 'Facial Cleanser', 2.0, 4.99, 150),
(75, 'pet supplies', 'Bird Seed', 0.8, 1.79, 250),
(76, 'dairy', 'Whipped Cream', 1.0, 2.49, 200),
(77, 'meat', 'Bacon', 5.0, 10.99, 100),
(78, 'bakery', 'French Bread', 1.2, 2.99, 180),
(79, 'canned', 'Green Beans', 0.5, 1.29, 300),
(80, 'beverages', 'Lemon Water', 1.2, 2.99, 180),
(81, 'snacks', 'Crackers', 1.0, 2.49, 200),
(82, 'frozen', 'Frozen Waffles', 1.5, 3.49, 150),
(83, 'produce', 'Onions', 0.3, 0.79, 400),
(84, 'household', 'Scrub Sponges', 1.0, 2.49, 200),
(85, 'personal care', 'Hand Sanitizer', 2.0, 4.99, 150),
(86, 'pet supplies', 'Rabbit Food', 1.0, 2.29, 250),
(87, 'dairy', 'Sour Cream', 1.2, 2.99, 180),
(88, 'meat', 'Pork Ribs', 7.0, 15.99, 100),
(89, 'bakery', 'Cinnamon Rolls', 1.5, 3.49, 180),
(90, 'canned', 'Peaches', 0.8, 1.79, 250),
(91, 'beverages', 'Cranberry Juice', 1.5, 3.99, 150),
(92, 'snacks', 'Pretzel Sticks', 0.7, 1.79, 200),
(93, 'frozen', 'Frozen Yogurt', 2.0, 4.49, 120),
(94, 'produce', 'Mushrooms', 0.6, 1.49, 300),
(95, 'household', 'Air Freshener', 2.0, 4.49, 150),
(96, 'personal care', 'Mouthwash', 1.0, 2.49, 200),
(97, 'pet supplies', 'Hamster Bedding', 1.5, 3.49, 180),
(98, 'dairy', 'Almond Milk', 2.0, 4.99, 150),
(99, 'meat', 'Beef Tenderloin', 12.0, 24.99, 50),
(100, 'bakery', 'Baguettes', 1.0, 2.49, 200);

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `id` int(11) NOT NULL,
  `vendor_name` varchar(100) NOT NULL,
  `vendor_phone` varchar(100) NOT NULL,
  `product_id` int(11) DEFAULT 1,
  `vendor_quantity` int(11) NOT NULL,
  `vendor_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`id`, `vendor_name`, `vendor_phone`, `product_id`, `vendor_quantity`, `vendor_price`) VALUES
(121, 'Fresh Clean Supplies', '1111111', 3, 300, 11.49),
(122, 'Best Detergent Distributors', '1112222', 3, 400, 8.99),
(130, 'Apple Orchard Farms', '1113333', 4, 1000, 1.49),
(131, 'Fresh Fruit Suppliers', '1114444', 4, 1500, 1.79),
(140, 'Snack Masters Inc.', '1115555', 5, 500, 2.99),
(141, 'Global Snack Distributors', '1116666', 5, 800, 3.49),
(150, 'Coffee Beans Direct', '1117777', 6, 600, 7.99),
(152, 'Premium Coffee Distributors', '1118888', 6, 1200, 6.99),
(161, 'Global Bread Suppliers', '1119999', 7, 600, 2.99),
(162, 'Best Bread Distributors', '2221111', 7, 800, 1.99),
(171, 'Global Paper Towel Distributors', '2222222', 8, 300, 14.49),
(172, 'Premium Paper Products', '2223333', 8, 400, 11.99),
(180, 'Banana Plantation Co.', '2224444', 9, 800, 0.99),
(182, 'Best Banana Distributors', '2225555', 9, 1500, 0.79),
(190, 'Dairy Farms Co.', '2226666', 10, 300, 3.49),
(192, 'Premium Milk Distributors', '2227777', 10, 800, 3.29),
(200, 'Poultry Farms Co.', '2228888', 11, 200, 7.99),
(202, 'Premium Meat Distributors', '2229999', 11, 400, 6.99),
(210, 'Cookie Factory Inc.', '3331111', 12, 500, 4.99),
(212, 'Best Cookies Co.', '3332222', 12, 1000, 4.49),
(220, 'Soup Kitchen Co.', '3333333', 13, 300, 2.49),
(222, 'Best Soup Distributors', '3334444', 13, 700, 1.99),
(230, 'Soda Bottlers Inc.', '3335555', 14, 800, 1.49),
(231, 'Global Soda Suppliers', '3336666', 14, 1200, 1.79),
(240, 'Choco Delights Co.', '3337777', 15, 400, 3.99),
(242, 'Best Chocolate Distributors', '3338888', 15, 800, 3.49),
(250, 'Ice Cream Factory Inc.', '3339999', 16, 200, 6.99),
(252, 'Premium Ice Cream Distributors', '4440000', 16, 400, 5.99),
(260, 'Vegetable Farms Co.', '4441111', 17, 600, 0.79),
(262, 'Best Carrot Distributors', '4442222', 17, 1200, 0.69),
(270, 'Trash Solutions Inc.', '4443333', 18, 150, 9.99),
(272, 'Premium Trash Bag Distributors', '4444444', 18, 350, 8.99),
(280, 'Dental Care Co.', '4445555', 19, 400, 2.99),
(282, 'Best Toothpaste Distributors', '4446666', 19, 800, 2.49),
(291, 'Global Pet Food Suppliers', '4447777', 20, 150, 17.49),
(292, 'Premium Dog Food Distributors', '4448888', 20, 200, 14.99),
(300, 'Dairy Delights Co.', '4449999', 21, 500, 1.99),
(302, 'Best Yogurt Distributors', '5551111', 21, 1000, 1.79),
(310, 'Meat Packers Inc.', '5552222', 22, 300, 9.49),
(312, 'Premium Ground Beef Distributors', '5553333', 22, 700, 8.99),
(320, 'Bagel Bakery Co.', '5554444', 23, 200, 2.99),
(321, 'Global Bagel Suppliers', '5555555', 23, 300, 3.49),
(331, 'Global Bean Suppliers', '5556666', 24, 600, 1.49),
(332, 'Best Bean Distributors', '5557777', 24, 800, 1.19),
(340, 'Juice Factory Inc.', '5558888', 25, 500, 3.49),
(342, 'Best Juice Distributors', '5559999', 25, 1000, 2.99),
(351, 'Global Popcorn Suppliers', '6661111', 26, 500, 2.49),
(352, 'Best Popcorn Distributors', '6662222', 26, 700, 1.79),
(361, 'Global Pizza Suppliers', '6663333', 27, 300, 6.99),
(362, 'Best Pizza Distributors', '6664444', 27, 400, 5.99),
(371, 'Global Lettuce Suppliers', '6665555', 28, 900, 1.29),
(372, 'Best Lettuce Distributors', '6666666', 28, 1200, 0.79),
(381, 'Global Laundry Detergent Suppliers', '6667777', 29, 350, 16.49),
(382, 'Premium Laundry Detergent Distributors', '6668888', 29, 450, 12.99),
(392, 'Best Shampoo Distributors', '6669999', 30, 700, 4.99),
(402, 'Premium Cat Litter Distributors', '7771111', 31, 350, 10.99),
(412, 'Best Cheese Distributors', '7772222', 32, 800, 4.99),
(422, 'Premium Pork Distributors', '7773333', 33, 400, 9.99),
(432, 'Best Croissant Distributors', '7774444', 34, 350, 3.49),
(442, 'Best Tomato Sauce Distributors', '7775555', 35, 700, 1.49),
(451, 'Global Hand Soap Suppliers', '7776666', 36, 600, 4.99),
(461, 'Global Applesauce Suppliers', '7777777', 37, 300, 2.99),
(472, 'Best Avocado Distributors', '7778888', 38, 1200, 0.99),
(482, 'Best Salad Dressing Distributors', '7779999', 39, 800, 2.99),
(492, 'Best Cereal Distributors', '8881111', 40, 1000, 3.49),
(500, 'Ice Suppliers Inc.', '8882222', 41, 800, 0.99),
(512, 'Best Orange Juice Distributors', '8883333', 42, 1200, 2.49),
(522, 'Best Energy Drink Distributors', '8884444', 43, 800, 3.99),
(532, 'Best Potato Chips Distributors', '8885555', 44, 1000, 1.99),
(540, 'Watermelon Farms Co.', '8880000', 45, 700, 1.49),
(550, 'Lemonade Factory Inc.', '8886666', 46, 400, 2.99),
(561, 'Global Sausage Suppliers', '8887777', 47, 500, 8.99),
(572, 'Best Broccoli Distributors', '8888888', 48, 1000, 0.99),
(582, 'Best Tuna Distributors', '8889999', 49, 400, 4.49),
(592, 'Best Hot Sauce Distributors', '9993333', 50, 700, 2.99);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `vendor_id` (`vendor_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `orders_product`
--
ALTER TABLE `orders_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vendor_phone` (`vendor_phone`),
  ADD KEY `product_id` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1084;

--
-- AUTO_INCREMENT for table `orders_product`
--
ALTER TABLE `orders_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vendor`
--
ALTER TABLE `vendor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`vendor_id`) REFERENCES `vendor` (`id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`);

--
-- Constraints for table `orders_product`
--
ALTER TABLE `orders_product`
  ADD CONSTRAINT `orders_product_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  ADD CONSTRAINT `orders_product_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `vendor`
--
ALTER TABLE `vendor`
  ADD CONSTRAINT `vendor_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


