-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: fdb30.awardspace.net
-- Generation Time: Jul 13, 2021 at 10:13 AM
-- Server version: 5.7.20-log
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `3529874_vendors`
--

-- --------------------------------------------------------

--
-- Table structure for table `Product`
--

CREATE TABLE `Product` (
  `prod_id` int(5) NOT NULL,
  `prod_name` varchar(30) NOT NULL,
  `prod_price` int(5) NOT NULL,
  `prod_discount` int(5) NOT NULL,
  `prod_avail` tinyint(1) NOT NULL,
  `shop_id` varchar(20) NOT NULL,
  `prod_brand` varchar(30) NOT NULL,
  `prod_image` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Product`
--

INSERT INTO `Product` (`prod_id`, `prod_name`, `prod_price`, `prod_discount`, `prod_avail`, `shop_id`, `prod_brand`, `prod_image`) VALUES
(6, 'Keyboard', 123, 20, 0, 'inroute_1', 'Intex', 'abc.jpeg'),
(2, 'Shirt', 100, 20, 0, 'inroute_1', 'Raymond', 'abc.jpeg'),
(3, 'Jeans', 800, 10, 0, 'inroute_1', 'Adidas', 'abc.jpeg'),
(5, 'Mouse', 800, 20, 0, 'inroute_2', 'Samsung', 'abc.jpeg'),
(7, 'Computer', 32, 30, 0, 'inroute_1', 'Intex', 'abc.jpeg'),
(9, 'Mouse', 500, 20, 0, 'inroute_1', 'Intex', 'abc.jpeg'),
(10, 'Earphones', 600, 30, 0, 'inroute_1', 'Intex', 'abc.jpeg'),
(11, 'Trousers', 1500, 40, 1, 'inroute_2', 'Raymond', 'abc.jpeg'),
(12, 'Keyboard', 900, 24, 1, 'inroute_4', 'Samsung', 'abc.jpeg'),
(13, 'Socks', 200, 15, 1, 'inroute_3', 'Adidas', 'abc.jpeg'),
(14, 'Mobile', 11000, 10, 1, 'inroute_1', 'Intex', 'abc.jpeg'),
(15, 'Speaker', 8000, 5, 1, 'inroute_1', 'Intex', 'abc.jpeg'),
(16, 'LED TV', 5200, 20, 1, 'inroute_1', 'Intex', 'abc.jpeg'),
(17, 'Saree', 3000, 5, 0, 'inroute_1', 'Intex', 'abc.jpeg'),
(18, 'Air Conditioner', 60000, 20, 1, 'inroute_1', 'Intex', 'abc.jpeg'),
(19, 'Trimmer', 1099, 5, 1, 'inroute_1', 'Intex', 'abc.jpeg'),
(20, 'Power Bank', 1300, 20, 1, 'inroute_1', 'Intex', 'abc.jpeg'),
(21, 'Washing Machine', 50000, 15, 1, 'inroute_1', 'Intex', 'abc.jpeg'),
(22, 'Watch', 9000, 25, 1, 'inroute_2', 'Raymond', 'abc.jpeg'),
(23, 'TShirt', 5000, 10, 1, 'inroute_2', 'Raymond', 'abc.jpeg'),
(25, 'Denims', 3500, 15, 1, 'inroute_2', 'Raymond', 'abc.jpeg'),
(27, 'Suit', 9000, 25, 1, 'inroute_2', 'Raymond', 'abc.jpeg'),
(28, 'Neck Tie', 500, 20, 1, 'inroute_2', 'Raymond', 'abc.jpeg'),
(29, 'Leather Belt', 2000, 5, 1, 'inroute_2', 'Raymond', 'abc.jpeg'),
(30, 'Jeans', 7500, 11, 1, 'inroute_2', 'Raymond', 'abc.jpeg'),
(31, 'Mobile', 15000, 15, 1, 'inroute_4', 'Samsung', 'abc.jpeg'),
(32, 'Memory Card', 400, 15, 1, 'inroute_4', 'Samsung', 'abc.jpeg'),
(33, 'Earphone', 500, 5, 1, 'inroute_4', 'Samsung', 'abc.jpeg'),
(34, 'Samsung Galaxy Watch', 1500, 10, 1, 'inroute_4', 'Samsung', 'abc.jpeg'),
(35, 'Bluetooth Speakers', 9000, 18, 1, 'inroute_4', 'Samsung', 'abc.jpeg'),
(36, 'Mobile Charger', 350, 6, 1, 'inroute_4', 'Samsung', 'abc.jpeg'),
(38, 'Headphones', 1800, 5, 1, 'inroute_4', 'Samsung', 'abc.jpeg'),
(39, 'Airpods', 30, 20, 0, 'inroute_1', 'Apple', 'abc.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `shop_id` varchar(20) NOT NULL,
  `vendor_name` varchar(20) NOT NULL,
  `shop_name` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone_num` varchar(13) NOT NULL,
  `auto_gen_id` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`shop_id`, `vendor_name`, `shop_name`, `password`, `email`, `phone_num`, `auto_gen_id`) VALUES
('inroute_1', 'Ayush Awasthi', 'Intex', '123', 'ayushmawasthi@gmail.com', '9889733252', 1),
('inroute_2', 'Ayush Kesarwani', 'Raymond', '1234', 'ayushkesarwani786@gmail.com', '9026045287', 2),
('inroute_3', 'Ayush Singh', 'Adidas', '12345', 'Ayushpiyushsinghrajavat@gmail.', '98897332521', 6),
('inroute_4', 'Arpita Singh', 'Samsung', '12', 'ArpitaSingh1105@gmail.com', '98897332524', 7),
('inroute_5', 'Akshay Saini', 'Namaste Javascript', '202cb962ac59075b964b', 'akshaymarch7@gmail.com', '9889733253', 9),
('aduiyj3r22876', 'Ayush', 'Titan', '202cb962ac59075b964b', 'ak@gmail.com', '90260452871', 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Product`
--
ALTER TABLE `Product`
  ADD PRIMARY KEY (`prod_id`),
  ADD KEY `shop_id` (`shop_id`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`auto_gen_id`),
  ADD UNIQUE KEY `shop_id` (`shop_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Product`
--
ALTER TABLE `Product`
  MODIFY `prod_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `vendor`
--
ALTER TABLE `vendor`
  MODIFY `auto_gen_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
