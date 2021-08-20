-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 19, 2021 at 08:53 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eshop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
CREATE TABLE IF NOT EXISTS `blogs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url_address` varchar(60) NOT NULL,
  `title` varchar(60) NOT NULL,
  `post` text NOT NULL,
  `image` varchar(500) DEFAULT NULL,
  `date` datetime NOT NULL,
  `user_url` varchar(60) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `url_address` (`url_address`),
  KEY `title` (`title`),
  KEY `image` (`image`),
  KEY `user_url` (`user_url`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `url_address`, `title`, `post`, `image`, `date`, `user_url`) VALUES
(2, 'how-to-make-a-burger', 'How To Make A Burger', 'this is how to make a wonderful burger.\r\n\r\n1. get some flour.\r\n2.boil the water.\r\n3.put in oven', 'uploads/6bH5AVbvNJkEpkXxR8sj6vdZw2A9lrppUfN1IsumHutF4sNRSN1iDzkfXmsh.jpg', '2021-05-27 11:35:02', 'IYHtfbbTBkpFExy'),
(3, 'how-to-make-a-burger-95149', 'How To Make A Burger2', 'this is how to make a wonderful burger.\r\n\r\n1. get some flour.\r\n2.boil the water.\r\n3.put in oven', 'uploads/zievHF6YSFxNImW3mjo7kp4LXY9YIsflMFjsvmheQt0VXxfssIC4PXbtP7wM.jpg', '2021-05-27 11:35:09', 'IYHtfbbTBkpFExy'),
(4, 'one-more-post', 'One More Post', 'this is some content', 'uploads/mnf7B3I3PTp7jYw8UZXuueO0U9HnIa2dRdOgxltYB1avQEIoGdLAK14692YG.jpg', '2021-05-27 11:41:55', 'IYHtfbbTBkpFExy'),
(5, 'a-new-title', 'A New Title', 'post for a new title', 'uploads/nht5ndAVSlEIdpBHKLYaXh4xAIjAEW9QbvcDFZpMsWpTUazkyOuv3WyjuFkx.jpg', '2021-05-27 11:43:12', 'IYHtfbbTBkpFExy'),
(6, 'a-final-title', 'A Final Title', 'this is a description for the final title post', 'uploads/UOOVKmySvtatPMr579kWZaftb5aw7celoGellCaXyMLG5ewbyiWsFRqlxXye.jpg', '2021-05-27 11:44:31', 'IYHtfbbTBkpFExy'),
(7, 'a-long-post-test', 'A Long Post Test', 'What is Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s when an unknown printer took a galley of type and scrambled it to make a type specimen book it has?\r\nLorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.\r\n\r\nWhat is Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s when an unknown printer took a galley of type and scrambled it to make a type specimen book it has?\r\nLorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.\r\n\r\nWhat is Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s when an unknown printer took a galley of type and scrambled it to make a type specimen book it has?\r\nLorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.\r\n\r\nWhat is Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s when an unknown printer took a galley of type and scrambled it to make a type specimen book it has?\r\nLorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'uploads/iPQEwdllWnj14THWKegpuoK7G1GSOqggiso46wlarB4DI0L7zTqIoFqFTKNW.jpg', '2021-05-31 19:18:02', 'IYHtfbbTBkpFExy');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
CREATE TABLE IF NOT EXISTS `brands` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brand` varchar(30) NOT NULL,
  `disabled` tinyint(1) NOT NULL DEFAULT '0',
  `views` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `category` (`brand`),
  KEY `disabled` (`disabled`),
  KEY `views` (`views`),
  KEY `brand` (`brand`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand`, `disabled`, `views`) VALUES
(1, 'Johnsons', 0, 0),
(2, 'Ronhill', 0, 0),
(3, 'Albiro', 0, 0),
(4, 'Toyota', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(30) NOT NULL,
  `disabled` tinyint(1) NOT NULL DEFAULT '0',
  `parent` int(11) NOT NULL,
  `views` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `category` (`category`),
  KEY `disabled` (`disabled`),
  KEY `parent` (`parent`),
  KEY `views` (`views`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `disabled`, `parent`, `views`) VALUES
(1, 'Food', 0, 0, 6),
(2, 'Drinks', 0, 0, 15),
(4, 'Sodas', 0, 0, 1),
(5, 'Clothes', 0, 0, 2),
(6, 'Meat', 0, 0, 0),
(7, 'Bags', 1, 0, 0),
(8, 'Cars', 0, 0, 0),
(9, 'Hats', 0, 5, 3),
(10, 'Shirts', 0, 5, 6),
(11, 'Goodies', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

DROP TABLE IF EXISTS `contact_us`;
CREATE TABLE IF NOT EXISTS `contact_us` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(30) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `email` (`email`),
  KEY `subject` (`subject`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `subject`, `message`, `date`) VALUES
(2, 'A Second Person', 'email2@email.com', 'a subject', 'a subject2', '2021-05-22 12:25:18');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
CREATE TABLE IF NOT EXISTS `countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country` varchar(30) NOT NULL,
  `disabled` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `disabled` (`disabled`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country`, `disabled`) VALUES
(1, 'Zambia', 0),
(2, 'South Africa', 0);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_url` varchar(60) NOT NULL,
  `description` varchar(20) NOT NULL,
  `delivery_address` varchar(1024) DEFAULT NULL,
  `total` double NOT NULL DEFAULT '0',
  `country` varchar(20) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `zip` varchar(6) DEFAULT NULL,
  `tax` double DEFAULT '0',
  `shipping` double DEFAULT '0',
  `date` datetime NOT NULL,
  `sessionid` varchar(30) NOT NULL,
  `home_phone` varchar(15) NOT NULL,
  `mobile_phone` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`user_url`),
  KEY `date` (`date`),
  KEY `sessionid` (`sessionid`),
  KEY `description` (`description`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_url`, `description`, `delivery_address`, `total`, `country`, `state`, `zip`, `tax`, `shipping`, `date`, `sessionid`, `home_phone`, `mobile_phone`) VALUES
(1, 'IYHtfbbTBkpFExy', '', 'my address in town home town', 110.92, 'Zambia', 'Nothern', '10101', 0, 0, '2021-04-21 20:38:25', 'egfghjpd9s0tri59fs8q7rlt7l', '0956789099', '2606753435'),
(2, 'IYHtfbbTBkpFExy', '', 'my address in town home town', 110.92, 'Zambia', 'Nothern', '10101', 0, 0, '2021-04-21 20:38:46', 'egfghjpd9s0tri59fs8q7rlt7l', '0956789099', '2606753435'),
(3, 'IYHtfbbTBkpFExy', '', 'plot number1 plot number 2', 72.96, 'Zambia', 'Nothern', '10101', 0, 0, '2021-04-30 12:31:47', 'o9sln93qsk4u3rkl5qvhsulcdq', '075725722', '097563635'),
(4, 'IYHtfbbTBkpFExy', '', 'plot 1234 new road lusaka ', 71.95, 'Zambia', 'Southern', '10101', 0, 0, '2021-05-04 21:03:14', 'o9sln93qsk4u3rkl5qvhsulcdq', '', '0986543467'),
(5, 'IYHtfbbTBkpFExy', '', 'Lusaka Lusaka', 9.99, 'Zambia', 'Nothern', '10101', 0, 0, '2021-07-06 12:58:30', '4geg1pa308bcadbuqfhlvcvdjt', '244324', '2423424234'),
(6, 'IYHtfbbTBkpFExy', '', 'plot 1234 new road lusaka Lusaka', 9.99, 'Zambia', 'Nothern', '1001', 0, 0, '2021-07-06 13:02:00', '4geg1pa308bcadbuqfhlvcvdjt', '4254545', '35324545'),
(8, 'IYHtfbbTBkpFExy', '', 'aeefdfdfda dsadcvd', 9.99, 'South Africa', 'Burg', 'sfvdfv', 0, 0, '2021-07-09 13:32:51', '73d0bvfoijv78lfe8iau8q438i', 'dvdvcd', 'sdfvdvdv'),
(9, 'IYHtfbbTBkpFExy', 'order 8', 'Zambia Lusaka', 20.99, 'South Africa', 'Burg', '1223', 0, 0, '2021-07-09 13:51:21', '73d0bvfoijv78lfe8iau8q438i', 'burg', '0989787854'),
(10, 'IYHtfbbTBkpFExy', 'order 10', 'wfgsfvgf sfvfv', 20.99, 'South Africa', 'Burg', 'sdfvvs', 0, 0, '2021-07-09 13:54:11', '73d0bvfoijv78lfe8iau8q438i', 'dfdfdf', 'dfdfd'),
(11, 'IYHtfbbTBkpFExy', 'order 11', 'aefdf wdfd', 12.99, 'South Africa', 'Sun City', 'dvfd', 0, 0, '2021-07-09 14:00:03', '73d0bvfoijv78lfe8iau8q438i', 'sdacv', 'dcfd'),
(12, 'IYHtfbbTBkpFExy', 'order 12', 'aefdf wdfd', 12.99, 'South Africa', 'Sun City', 'dvfd', 0, 0, '2021-07-09 14:02:57', '73d0bvfoijv78lfe8iau8q438i', 'sdacv', 'dcfd'),
(13, 'IYHtfbbTBkpFExy', 'order 13', 'aefdf wdfd', 25.98, 'South Africa', 'Sun City', 'dvfd', 0, 0, '2021-07-09 20:40:10', '73d0bvfoijv78lfe8iau8q438i', 'sdacv', 'dcfd'),
(14, 'IYHtfbbTBkpFExy', '', 'my address in town home town', 110.92, 'Zambia', 'Nothern', '10101', 0, 0, '2021-04-21 20:38:25', 'egfghjpd9s0tri59fs8q7rlt7l', '0956789099', '2606753435'),
(15, 'IYHtfbbTBkpFExy', '', 'my address in town home town', 110.92, 'Zambia', 'Nothern', '10101', 0, 0, '2021-04-21 20:38:46', 'egfghjpd9s0tri59fs8q7rlt7l', '0956789099', '2606753435'),
(16, 'IYHtfbbTBkpFExy', '', 'plot number1 plot number 2', 72.96, 'Zambia', 'Nothern', '10101', 0, 0, '2021-04-30 12:31:47', 'o9sln93qsk4u3rkl5qvhsulcdq', '075725722', '097563635'),
(17, 'IYHtfbbTBkpFExy', '', 'plot 1234 new road lusaka ', 71.95, 'Zambia', 'Southern', '10101', 0, 0, '2021-05-04 21:03:14', 'o9sln93qsk4u3rkl5qvhsulcdq', '', '0986543467'),
(18, 'IYHtfbbTBkpFExy', 'order 5', 'Lusaka plot number 2', 22.98, 'South Africa', 'Sun City', '1001', 0, 0, '2021-07-09 19:25:22', 'ujaa4qq9p5logrg7kgigbrdvun', 'burg', '0989787854'),
(19, 'IYHtfbbTBkpFExy', 'order 6', 'Lusaka plot number 2', 1.05, 'South Africa', 'Sun City', '1223', 0, 0, '2021-07-13 10:16:39', 'ujaa4qq9p5logrg7kgigbrdvun', 'Lusaka', '0986543467'),
(20, 'IYHtfbbTBkpFExy', 'order 7', 'plot number1 plot number 2', 0.42, 'Zambia', 'Southern', '1001', 0, 0, '2021-07-13 10:19:18', 'ujaa4qq9p5logrg7kgigbrdvun', 'plot', '0986543467'),
(21, 'IYHtfbbTBkpFExy', 'order 21', 'adfadf adfadfd', 0.63, 'South Africa', 'Burg', 'afadf', 0, 0, '2021-07-18 21:15:55', 'qqtd8h2cql5c3d8u59co74cn98', 'afad', 'acvdav');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
CREATE TABLE IF NOT EXISTS `order_details` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `orderid` bigint(20) NOT NULL,
  `qty` int(11) NOT NULL,
  `description` varchar(200) NOT NULL,
  `amount` double NOT NULL,
  `total` double NOT NULL,
  `productid` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `orderid` (`orderid`),
  KEY `description` (`description`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `orderid`, `qty`, `description`, `amount`, `total`, `productid`) VALUES
(1, 1, 3, 'Milo Candy Bar', 12.99, 38.97, 9),
(2, 1, 2, 'Weet Bix 1.4 Kg', 20.99, 41.98, 8),
(3, 1, 3, 'Burger 250g With Drink', 9.99, 29.97, 7),
(4, 2, 3, 'Milo Candy Bar', 12.99, 38.97, 9),
(5, 2, 2, 'Weet Bix 1.4 Kg', 20.99, 41.98, 8),
(6, 2, 3, 'Burger 250g With Drink', 9.99, 29.97, 7),
(7, 3, 1, 'Burger 250g With Drink', 9.99, 9.99, 7),
(8, 3, 3, 'Weet Bix 1.4 Kg', 20.99, 62.97, 8),
(9, 4, 3, 'Burger 250g With Drink', 9.99, 29.97, 7),
(10, 4, 2, 'Weet Bix 1.4 Kg', 20.99, 41.98, 8),
(11, 5, 1, 'Burger 250g With Drink', 9.99, 9.99, 7),
(12, 6, 1, 'Burger 250g With Drink', 9.99, 9.99, 7),
(13, 7, 1, 'Burger 250g With Drink', 9.99, 9.99, 7),
(14, 8, 1, 'Burger 250g With Drink', 9.99, 9.99, 7),
(15, 8, 1, 'Weet Bix 1.4 Kg', 20.99, 20.99, 8),
(16, 10, 1, 'Weet Bix 1.4 Kg', 20.99, 20.99, 8),
(17, 11, 1, 'Milo Candy Bar', 12.99, 12.99, 9),
(18, 12, 1, 'Milo Candy Bar', 12.99, 12.99, 9),
(19, 13, 2, 'Milo Candy Bar', 12.99, 25.98, 9),
(20, 21, 3, 'Alcohol', 0.21, 0.63, 10);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
CREATE TABLE IF NOT EXISTS `payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `trans_id` varchar(255) NOT NULL,
  `raw` text NOT NULL,
  `event_type` varchar(100) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `status` varchar(100) NOT NULL,
  `order_id` varchar(100) NOT NULL,
  `summary` varchar(255) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `payer_id` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `status` (`status`),
  KEY `amount` (`amount`),
  KEY `event_type` (`event_type`),
  KEY `trans_id` (`trans_id`),
  KEY `date` (`date`),
  KEY `first_name` (`first_name`),
  KEY `email` (`email`),
  KEY `last_name` (`last_name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `date`, `trans_id`, `raw`, `event_type`, `amount`, `status`, `order_id`, `summary`, `first_name`, `last_name`, `email`, `payer_id`) VALUES
(1, '2021-07-06 12:34:23', 'WH-72368620FC4839506-578153864S1803135', '{\"id\":\"WH-72368620FC4839506-578153864S1803135\",\"event_version\":\"1.0\",\"create_time\":\"2021-07-03T18:36:26.977Z\",\"resource_type\":\"checkout-order\",\"resource_version\":\"2.0\",\"event_type\":\"CHECKOUT.ORDER.APPROVED\",\"summary\":\"An order has been approved by buyer\",\"resource\":{\"create_time\":\"2021-07-03T18:31:44Z\",\"purchase_units\":[{\"reference_id\":\"default\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"6.00\",\"breakdown\":{\"item_total\":{\"currency_code\":\"USD\",\"value\":\"4.00\"},\"shipping\":{\"currency_code\":\"USD\",\"value\":\"2.00\"},\"tax_total\":{\"currency_code\":\"USD\",\"value\":\"0.00\"}}},\"payee\":{\"email_address\":\"eathorne2012-facilitator@yahoo.com\",\"merchant_id\":\"QKRY6BTWMQQ8C\"},\"description\":\"My item description\",\"shipping\":{\"name\":{\"full_name\":\"test buyer\"},\"address\":{\"address_line_1\":\"1 Main St\",\"admin_area_2\":\"San Jose\",\"admin_area_1\":\"CA\",\"postal_code\":\"95131\",\"country_code\":\"US\"}}}],\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v2/checkout/orders/8D5278164K216725B\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https://api.sandbox.paypal.com/v2/checkout/orders/8D5278164K216725B\",\"rel\":\"update\",\"method\":\"PATCH\"},{\"href\":\"https://api.sandbox.paypal.com/v2/checkout/orders/8D5278164K216725B/capture\",\"rel\":\"capture\",\"method\":\"POST\"}],\"id\":\"8D5278164K216725B\",\"intent\":\"CAPTURE\",\"payer\":{\"name\":{\"given_name\":\"test\",\"surname\":\"buyer\"},\"email_address\":\"eathorne2012-buyer@yahoo.com\",\"payer_id\":\"QCEPS6HXTCW9N\",\"address\":{\"country_code\":\"US\"}},\"status\":\"APPROVED\"},\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/notifications/webhooks-events/WH-72368620FC4839506-578153864S1803135\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https://api.sandbox.paypal.com/v1/notifications/webhooks-events/WH-72368620FC4839506-578153864S1803135/resend\",\"rel\":\"resend\",\"method\":\"POST\"}]}', 'CHECKOUT.ORDER.APPROVED', '6.00', 'APPROVED', 'My item description', 'An order has been approved by buyer', 'test', 'buyer', 'eathorne2012-buyer@yahoo.com', 'QCEPS6HXTCW9N'),
(2, '2021-07-09 19:26:44', 'WH-4U387217Y0402090W-29K29120XX664362Y', '{\"id\":\"WH-4U387217Y0402090W-29K29120XX664362Y\",\"event_version\":\"1.0\",\"create_time\":\"2021-07-09T19:26:34.680Z\",\"resource_type\":\"checkout-order\",\"resource_version\":\"2.0\",\"event_type\":\"CHECKOUT.ORDER.APPROVED\",\"summary\":\"An order has been approved by buyer\",\"resource\":{\"update_time\":\"2021-07-09T19:26:33Z\",\"create_time\":\"2021-07-09T19:25:30Z\",\"purchase_units\":[{\"reference_id\":\"default\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"22.98\",\"breakdown\":{\"item_total\":{\"currency_code\":\"USD\",\"value\":\"22.98\"},\"shipping\":{\"currency_code\":\"USD\",\"value\":\"0.00\"},\"tax_total\":{\"currency_code\":\"USD\",\"value\":\"0.00\"}}},\"payee\":{\"email_address\":\"eathorne2012-facilitator@yahoo.com\",\"merchant_id\":\"QKRY6BTWMQQ8C\"},\"description\":\"order 5\",\"shipping\":{\"name\":{\"full_name\":\"test buyer\"},\"address\":{\"address_line_1\":\"1 Main St\",\"admin_area_2\":\"San Jose\",\"admin_area_1\":\"CA\",\"postal_code\":\"95131\",\"country_code\":\"US\"}},\"payments\":{\"captures\":[{\"id\":\"29B44561UF627130H\",\"status\":\"COMPLETED\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"22.98\"},\"final_capture\":true,\"seller_protection\":{\"status\":\"ELIGIBLE\",\"dispute_categories\":[\"ITEM_NOT_RECEIVED\",\"UNAUTHORIZED_TRANSACTION\"]},\"seller_receivable_breakdown\":{\"gross_amount\":{\"currency_code\":\"USD\",\"value\":\"22.98\"},\"paypal_fee\":{\"currency_code\":\"USD\",\"value\":\"0.97\"},\"net_amount\":{\"currency_code\":\"USD\",\"value\":\"22.01\"}},\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v2/payments/captures/29B44561UF627130H\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https://api.sandbox.paypal.com/v2/payments/captures/29B44561UF627130H/refund\",\"rel\":\"refund\",\"method\":\"POST\"},{\"href\":\"https://api.sandbox.paypal.com/v2/checkout/orders/60J70994M39520325\",\"rel\":\"up\",\"method\":\"GET\"}],\"create_time\":\"2021-07-09T19:26:33Z\",\"update_time\":\"2021-07-09T19:26:33Z\"}]}}],\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v2/checkout/orders/60J70994M39520325\",\"rel\":\"self\",\"method\":\"GET\"}],\"id\":\"60J70994M39520325\",\"intent\":\"CAPTURE\",\"payer\":{\"name\":{\"given_name\":\"test\",\"surname\":\"buyer\"},\"email_address\":\"eathorne2012-buyer@yahoo.com\",\"payer_id\":\"QCEPS6HXTCW9N\",\"address\":{\"country_code\":\"US\"}},\"status\":\"COMPLETED\"},\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/notifications/webhooks-events/WH-4U387217Y0402090W-29K29120XX664362Y\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https://api.sandbox.paypal.com/v1/notifications/webhooks-events/WH-4U387217Y0402090W-29K29120XX664362Y/resend\",\"rel\":\"resend\",\"method\":\"POST\"}]}', 'CHECKOUT.ORDER.APPROVED', '22.98', 'COMPLETED', 'order 5', 'An order has been approved by buyer', 'test', 'buyer', 'eathorne2012-buyer@yahoo.com', 'QCEPS6HXTCW9N'),
(3, '2021-07-13 10:19:20', 'WH-7T326909W98431811-0PA11016TB7979214', '{\"id\":\"WH-7T326909W98431811-0PA11016TB7979214\",\"event_version\":\"1.0\",\"create_time\":\"2021-07-13T10:18:33.518Z\",\"resource_type\":\"checkout-order\",\"resource_version\":\"2.0\",\"event_type\":\"CHECKOUT.ORDER.APPROVED\",\"summary\":\"An order has been approved by buyer\",\"resource\":{\"update_time\":\"2021-07-13T10:18:17Z\",\"create_time\":\"2021-07-13T10:17:05Z\",\"purchase_units\":[{\"reference_id\":\"default\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"1.05\",\"breakdown\":{\"item_total\":{\"currency_code\":\"USD\",\"value\":\"1.05\"},\"shipping\":{\"currency_code\":\"USD\",\"value\":\"0.00\"},\"tax_total\":{\"currency_code\":\"USD\",\"value\":\"0.00\"}}},\"payee\":{\"email_address\":\"eathorne2012-facilitator@yahoo.com\",\"merchant_id\":\"QKRY6BTWMQQ8C\"},\"description\":\"order 6\",\"shipping\":{\"name\":{\"full_name\":\"test buyer\"},\"address\":{\"address_line_1\":\"1 Main St\",\"admin_area_2\":\"San Jose\",\"admin_area_1\":\"CA\",\"postal_code\":\"95131\",\"country_code\":\"US\"}},\"payments\":{\"captures\":[{\"id\":\"1BE01178RF206244J\",\"status\":\"COMPLETED\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"1.05\"},\"final_capture\":true,\"seller_protection\":{\"status\":\"ELIGIBLE\",\"dispute_categories\":[\"ITEM_NOT_RECEIVED\",\"UNAUTHORIZED_TRANSACTION\"]},\"seller_receivable_breakdown\":{\"gross_amount\":{\"currency_code\":\"USD\",\"value\":\"1.05\"},\"paypal_fee\":{\"currency_code\":\"USD\",\"value\":\"0.33\"},\"net_amount\":{\"currency_code\":\"USD\",\"value\":\"0.72\"}},\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v2/payments/captures/1BE01178RF206244J\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https://api.sandbox.paypal.com/v2/payments/captures/1BE01178RF206244J/refund\",\"rel\":\"refund\",\"method\":\"POST\"},{\"href\":\"https://api.sandbox.paypal.com/v2/checkout/orders/4PA73887R93208929\",\"rel\":\"up\",\"method\":\"GET\"}],\"create_time\":\"2021-07-13T10:18:17Z\",\"update_time\":\"2021-07-13T10:18:17Z\"}]}}],\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v2/checkout/orders/4PA73887R93208929\",\"rel\":\"self\",\"method\":\"GET\"}],\"id\":\"4PA73887R93208929\",\"intent\":\"CAPTURE\",\"payer\":{\"name\":{\"given_name\":\"test\",\"surname\":\"buyer\"},\"email_address\":\"eathorne2012-buyer@yahoo.com\",\"payer_id\":\"QCEPS6HXTCW9N\",\"address\":{\"country_code\":\"US\"}},\"status\":\"COMPLETED\"},\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/notifications/webhooks-events/WH-7T326909W98431811-0PA11016TB7979214\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https://api.sandbox.paypal.com/v1/notifications/webhooks-events/WH-7T326909W98431811-0PA11016TB7979214/resend\",\"rel\":\"resend\",\"method\":\"POST\"}]}', 'CHECKOUT.ORDER.APPROVED', '1.05', 'COMPLETED', 'order 6', 'An order has been approved by buyer', 'test', 'buyer', 'eathorne2012-buyer@yahoo.com', 'QCEPS6HXTCW9N');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_url` varchar(60) NOT NULL,
  `description` varchar(200) NOT NULL,
  `category` int(11) NOT NULL,
  `brand` int(11) NOT NULL,
  `price` double NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(500) NOT NULL,
  `image2` varchar(500) DEFAULT NULL,
  `image3` varchar(500) DEFAULT NULL,
  `image4` varchar(500) DEFAULT NULL,
  `date` datetime NOT NULL,
  `slag` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `slag` (`slag`),
  KEY `date` (`date`),
  KEY `quantity` (`quantity`),
  KEY `price` (`price`),
  KEY `category` (`category`),
  KEY `description` (`description`),
  KEY `user_url` (`user_url`),
  KEY `brand` (`brand`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `user_url`, `description`, `category`, `brand`, `price`, `quantity`, `image`, `image2`, `image3`, `image4`, `date`, `slag`) VALUES
(7, 'IYHtfbbTBkpFExy', 'Burger 250g With Drink', 1, 1, 9.99, 8, 'uploads/6f7bd4cc3677b6e4ce2aeb249bfa2c32.jpg', 'uploads/Burger.jpg', 'uploads/glenlivet-12.jpg', 'uploads/sogood-landing.jpg', '2021-03-16 19:36:12', 'burger-250g-with-drink'),
(8, 'IYHtfbbTBkpFExy', 'Weet Bix 1.4 Kg', 1, 2, 20.99, 9, 'uploads/UT83WqLXMBXXXagOFbX9.jpg', 'uploads/getmedia_3dad7ab1-ce4b-40e7-b409-82013a7f2c4b_2020_Website_Title_WB.jpg width=760&height=460&ext=.jpg', 'uploads/banetti-foods.jpg', 'uploads/351396-01.jpg-1200Wx1200H.jpg', '2021-03-16 20:07:08', 'weet-bix-1-4-kg'),
(9, 'IYHtfbbTBkpFExy', 'Milo Candy Bar', 1, 4, 12.99, 100, 'uploads/images.jpg', 'uploads/banetti-foods.jpg', '', '', '2021-03-16 20:16:54', 'milo-candy-bar'),
(10, 'IYHtfbbTBkpFExy', 'Alcohol', 2, 2, 0.21, 6, 'uploads/yKqmWfrNPKYgOV4FLQHuzzi4iJnqaae09dQA2iedeffJCK7c9PSsVnSvjRIV.jpg', '', '', '', '2021-06-06 15:20:36', 'alcohol'),
(11, 'IYHtfbbTBkpFExy', 'Meat Burger', 6, 3, 0.21, 6, 'uploads/mJVdNoskTywnobsA6A6mCaVCD7OJ8xxTl7cwV9Hth1O5Z0aiqDdA3stCYnQY.jpg', '', '', '', '2021-06-06 15:21:24', 'meat-burger'),
(12, 'IYHtfbbTBkpFExy', 'Halo', 10, 3, 0.21, 6, 'uploads/UG8XjjVu7HTW1j6b4vfB9f2YqUVl0PbZ3WUXBU3LgXadugDVTCwua61u7Nrc.jpg', '', '', '', '2021-06-06 15:21:55', 'halo'),
(13, 'IYHtfbbTBkpFExy', 'So Good', 2, 1, 0.21, 6, 'uploads/6evwk0NfONIp1SkN6Lzu0bprGHDUoJKA0RL3Fw6A6Epo6f9VQUAfB0YpN4w0.jpg', '', '', '', '2021-06-06 15:22:18', 'so-good'),
(14, 'IYHtfbbTBkpFExy', 'Traditions', 11, 4, 0.21, 6, 'uploads/peCbYjssuVJWFRn5kS4w7AqZRimede6JLo2xRNAV264TTREC5abm9lpVQrfJ.jpg', '', '', '', '2021-06-06 15:24:01', 'tradition'),
(15, 'IYHtfbbTBkpFExy', 'Some Product', 1, 7, 0.08, 6, 'uploads/gfSXekdGkmQhkHE2GXDe29Cm2PN6MqrKFfLf5TK1rljqbO3Pfqopz5km5bKe.jpg', '', '', '', '2021-06-16 19:13:37', 'some-product');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `setting` varchar(30) DEFAULT NULL,
  `value` varchar(2048) DEFAULT NULL,
  `type` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `setting` (`setting`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `setting`, `value`, `type`) VALUES
(1, 'phone_number', '+3867 676636 76373', ''),
(2, 'email', 'info@mywebsite.com', ''),
(3, 'facebook_link', 'https://www.facebook.com', ''),
(4, 'twitter_link', 'https://www.twitter.com', ''),
(5, 'linkedin_link', '', ''),
(6, 'google_plus_link', '', ''),
(7, 'website_link', '', ''),
(8, 'youtube_link', '', ''),
(9, 'contact_info', 'E-Shopper Inc.\r\n\r\n<b>935 W. Webster Ave New Streets Chicago, IL 60614, NY</b>\r\n\r\nNewyork USA\r\n\r\nMobile: +2346 17 38 93\r\n\r\nFax: 1-714-252-0026\r\n\r\nEmail: info@e-shopper.com', 'textarea');

-- --------------------------------------------------------

--
-- Table structure for table `slider_images`
--

DROP TABLE IF EXISTS `slider_images`;
CREATE TABLE IF NOT EXISTS `slider_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `header1_text` varchar(20) NOT NULL,
  `header2_text` varchar(30) DEFAULT NULL,
  `text` varchar(200) NOT NULL,
  `link` varchar(200) DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  `image2` varchar(500) DEFAULT NULL,
  `disabled` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `disabled` (`disabled`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider_images`
--

INSERT INTO `slider_images` (`id`, `header1_text`, `header2_text`, `text`, `link`, `image`, `image2`, `disabled`) VALUES
(1, 'E-SHOP', 'Awesome Food', 'This food is awesome. try it and let me know what ya think', 'http://localhost/eshop/public/product_details/burger-250g-with-drink', 'uploads/TVqski4iWztdtAL1lTOYioOeV7L0XM767EyiWiZ5ZdzuOuZ9XhA6FE3rX3LK.jpg', '', 0),
(2, 'E-SHOP STUFF', 'Milo Is The Best', 'As you already know Milo is awesome. everyone already knows its awesome', 'http://localhost/eshop/public/product_details/milo-candy-bar', 'uploads/gHmC5YMOwdiLKJFMH6mzr1pHGpNrLAS4gDtpK8zKhbXa639sJw5YJazX4LI0.jpg', '', 0),
(3, 'Awesome Bix', 'This Is Great Food', 'The food on this picture is awesome. try it and let us know', 'http://localhost/eshop/public/product_details/weet-bix-1-4-kg', 'uploads/2hu6d0OKjiX0wrPuoj9GZoaDLUIKNa0Y8qkZr1CHol8NtkTRyTaKVj2389NN.jpg', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
CREATE TABLE IF NOT EXISTS `states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent` int(11) NOT NULL,
  `state` varchar(30) NOT NULL,
  `disabled` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent` (`parent`),
  KEY `disabled` (`disabled`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `parent`, `state`, `disabled`) VALUES
(1, 1, 'Southern', 0),
(2, 1, 'Nothern', 0),
(3, 2, 'Sun City', 0),
(4, 2, 'Burg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `url_address` varchar(60) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(64) NOT NULL,
  `date` datetime NOT NULL,
  `rank` varchar(8) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `url_address` (`url_address`),
  KEY `email` (`email`),
  KEY `name` (`name`),
  KEY `rank` (`rank`),
  KEY `date` (`date`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `url_address`, `name`, `email`, `password`, `date`, `rank`) VALUES
(2, 'IYHtfbbTBkpFExy', 'Eathorne', 'test@test1.com', '25f9e794323b453885f5181f1b624d0b', '2021-01-27 17:44:36', 'admin'),
(3, 'BX8z7P6oUmwRDwR3yGlJdJH', 'Mary', 'mary@yahoo.com', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', '2021-02-02 14:57:34', 'customer'),
(4, 'lwsYazLNP', 'test', 'test@test.com', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', '2021-08-19 20:43:30', 'admin');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
