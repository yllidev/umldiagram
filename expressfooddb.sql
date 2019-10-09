-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2019 at 05:32 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `expressfooddb`
--

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `clientid` int(11) NOT NULL,
  `clientname` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `clientsurname` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `clientcreditcard` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `clientaddress` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`clientid`, `clientname`, `clientsurname`, `clientcreditcard`, `clientaddress`) VALUES
(1, 'Kim', 'Jones', '4111847573840897', '12 Main Street, Chicago IL'),
(2, 'Kelly', 'Anderson', '5211847573840896', '5310 Fullerton Ave, Chicago IL'),
(3, 'Jon', 'Ellis', '6311847573840866', '1824 Oak Park Ave, Chicago IL'),
(4, 'Mark', 'Watson', '3411847573840856', '12 Washington Street, Chicago IL'),
(5, 'Jim', 'Dobson', '6311847573840434', '55 Wacker Drive, Chicago IL'),
(6, 'Melissa', 'Miller', '3411847573840445', '634 Mountain Road, Chicago IL'),
(7, 'Emilia', 'Wosowski', '3211847132440897', '566 Lincoln Drive, Chicago Heights IL'),
(8, 'Julian', 'Brown', '3211847135320897', '623 Evergreen Drive, Arlington Heights IL'),
(9, 'Jackie', 'White', '3211847132441362', '66 Bradley Boulevard, Oak Brook IL ');

-- --------------------------------------------------------

--
-- Table structure for table `deliverybiker`
--

CREATE TABLE `deliverybiker` (
  `bikerid` int(11) NOT NULL,
  `bikername` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bikersurname` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deliverybiker`
--

INSERT INTO `deliverybiker` (`bikerid`, `bikername`, `bikersurname`) VALUES
(1, 'Sam', 'Smith'),
(2, 'Jamie', 'Ying'),
(3, 'Brad', 'Riley');

-- --------------------------------------------------------

--
-- Table structure for table `menuitem`
--

CREATE TABLE `menuitem` (
  `itemid` int(11) NOT NULL,
  `itemname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `itemdesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `itemprice` decimal(4,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menuitem`
--

INSERT INTO `menuitem` (`itemid`, `itemname`, `itemdesc`, `itemprice`) VALUES
(1, 'CARNE ASADA STEAK', 'Steak Medallions Covered with Sautéed Peppers, Onions, and Cilantro. Served with Creamy Ranchero Sauce, Fresh Corn and White Rice.', '30.00'),
(2, 'GRILLED PORK CHOP', 'A Thick Center-Cut Chop Served with Housemade Apple Sauce, Mashed Potatoes and Vegetable.', '25.00'),
(3, 'STEAK DIANE', 'Medallions of Steak Covered with Black Peppercorns and a Rich Mushroom Wine Sauce. Served with Mashed Potatoes and Grilled Onions.', '36.00'),
(4, 'OLD FASHIONED BURGER', 'Charbroiled on a Toasted Brioche Bun with Lettuce, Tomato, Onion, Pickles and Mayonnaise. Served with French Fries or Green Salad.', '19.00'),
(5, 'CUBAN SANDWICH', 'Slow Roasted Pork, Ham, Swiss Cheese, Pickles, Mustard and Mayonnaise on a Grilled and Pressed Roll. Served with French Fries or Green Salad.', '22.00'),
(6, 'RENEE\'S SPECIAL', 'One-Half of a Fresh Turkey Sandwich or Chicken-Almond Salad Sandwich, a Cup of Our Soup and a Small Green Salad or with a Small Caesar Salad', '26.00'),
(7, 'SHRIMP AND CHICKEN GUMBO', 'Shrimp, Chicken, Andouille Sausage, Tomatoes, Peppers, Onions and Garlic Simmered in a Spicy Cajun Style Broth with Cream. Topped with Steamed White Rice.', '36.00'),
(8, 'MISO SALMON', 'Fresh Miso Marinated Salmon Served with Snow Peas, White Rice and a Delicious Miso Sauce.', '32.00'),
(9, 'FISH AND CHIPS', 'Hand Battered and Fried Crisp. Served with Cole Slaw, French Fries and Tartar Sauce.', '22.00'),
(10, 'FILET MIGNON', 'Our Most Tender Steak. Served with Mashed Potatoes and Vegetable.', '32.00'),
(11, 'CINNAMON SWIRL CHEESECAKE', 'Layers of Cinnamon Cheesecake and Vanilla Crunch Cake Topped with Cream Cheese Frosting and Caramel.', '7.95'),
(12, 'CRAIG\'S CRAZY CARROT CAKE CHEESECAKE', 'Carrot Cake and Cheesecake Swirled Together, Topped with Cream Cheese Icing and Roasted Almonds.', '7.95'),
(13, 'PINEAPPLE UPSIDE-DOWN CHEESECAKE', 'Pineapple cheesecake between two layers of moist buttery pineapple upside-down cake.', '7.95'),
(14, 'LEMONCELLO CREAM TORTE', 'Layers of Vanilla Cake and Lemon Mascarpone Cream Topped with Streusel and Served with Strawberries and Whipped Cream.', '14.95'),
(15, 'WARM APPLE CRISP', 'Our Delicious Crispy Nutty Topping and Vanilla Ice Cream.', '14.95'),
(16, 'LINDA\'S FUDGE CAKE', 'Layers of Rich Chocolate Cake and Fudge Frosting.', '14.95');

-- --------------------------------------------------------

--
-- Table structure for table `orderhistory`
--

CREATE TABLE `orderhistory` (
  `orderid` int(11) NOT NULL,
  `clientid` int(11) NOT NULL,
  `orderdate` date NOT NULL,
  `deliverytime` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orderhistory`
--

INSERT INTO `orderhistory` (`orderid`, `clientid`, `orderdate`, `deliverytime`) VALUES
(1, 7, '2019-05-14', '15:03:53'),
(2, 4, '2019-06-19', '16:03:44'),
(3, 2, '2019-06-16', '21:03:32'),
(4, 9, '2019-05-06', '16:03:26'),
(5, 6, '2019-05-13', '21:03:13'),
(6, 5, '2019-06-03', '15:52:16'),
(7, 8, '2019-06-06', '15:32:16'),
(8, 1, '2019-06-23', '13:43:36'),
(9, 3, '2019-06-26', '16:22:43');

-- --------------------------------------------------------

--
-- Table structure for table `orderitem`
--

CREATE TABLE `orderitem` (
  `orderid` int(11) NOT NULL,
  `itemid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orderitem`
--

INSERT INTO `orderitem` (`orderid`, `itemid`) VALUES
(1, 10),
(1, 16),
(2, 9),
(2, 11),
(3, 8),
(3, 15),
(4, 7),
(5, 6),
(5, 14),
(6, 3),
(7, 6),
(7, 13),
(8, 9),
(9, 1),
(9, 12);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`clientid`);

--
-- Indexes for table `deliverybiker`
--
ALTER TABLE `deliverybiker`
  ADD PRIMARY KEY (`bikerid`);

--
-- Indexes for table `menuitem`
--
ALTER TABLE `menuitem`
  ADD PRIMARY KEY (`itemid`);

--
-- Indexes for table `orderhistory`
--
ALTER TABLE `orderhistory`
  ADD PRIMARY KEY (`orderid`),
  ADD KEY `clientid` (`clientid`);

--
-- Indexes for table `orderitem`
--
ALTER TABLE `orderitem`
  ADD PRIMARY KEY (`orderid`,`itemid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `clientid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `deliverybiker`
--
ALTER TABLE `deliverybiker`
  MODIFY `bikerid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `menuitem`
--
ALTER TABLE `menuitem`
  MODIFY `itemid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `orderhistory`
--
ALTER TABLE `orderhistory`
  MODIFY `orderid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orderhistory`
--
ALTER TABLE `orderhistory`
  ADD CONSTRAINT `orderhistory_ibfk_1` FOREIGN KEY (`clientid`) REFERENCES `client` (`clientid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
