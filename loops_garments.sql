-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 13, 2019 at 04:26 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `loops_garments`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_credentials`
--

CREATE TABLE `admin_credentials` (
  `admin_setting_id` int(11) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Created_date` date NOT NULL,
  `admin_setting_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_credentials`
--

INSERT INTO `admin_credentials` (`admin_setting_id`, `Username`, `Password`, `Created_date`, `admin_setting_status`) VALUES
(1, 'admin', 'admin', '2017-12-14', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `bank_order_items`
--

CREATE TABLE `bank_order_items` (
  `id` int(11) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `modified_day` date NOT NULL,
  `modified_time` time NOT NULL,
  `status` varchar(255) NOT NULL,
  `customer_Status` varchar(255) NOT NULL,
  `customer_address` varchar(255) NOT NULL,
  `customer_mobile` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bank_payment`
--

CREATE TABLE `bank_payment` (
  `id` int(11) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `tracking_id` varchar(255) NOT NULL,
  `order_status` varchar(255) NOT NULL,
  `failure_message` varchar(255) NOT NULL,
  `payment_mode` varchar(255) NOT NULL,
  `card_name` varchar(255) NOT NULL,
  `status_code` varchar(255) NOT NULL,
  `status_message` varchar(255) NOT NULL,
  `currency` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `billing_name` varchar(255) NOT NULL,
  `billing_address` varchar(255) NOT NULL,
  `billing_city` varchar(255) NOT NULL,
  `billing_state` varchar(255) NOT NULL,
  `billing_zip` varchar(255) NOT NULL,
  `billing_country` varchar(255) NOT NULL,
  `billing_tel` varchar(255) NOT NULL,
  `billing_email` varchar(255) NOT NULL,
  `delivery_name` varchar(255) NOT NULL,
  `delivery_address` varchar(255) NOT NULL,
  `delivery_city` varchar(255) NOT NULL,
  `delivery_state` varchar(255) NOT NULL,
  `delivery_zip` varchar(255) NOT NULL,
  `delivery_country` varchar(255) NOT NULL,
  `delivery_tel` varchar(255) NOT NULL,
  `mer_amount` varchar(255) NOT NULL,
  `trans_date` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bank_payment`
--

INSERT INTO `bank_payment` (`id`, `order_id`, `tracking_id`, `order_status`, `failure_message`, `payment_mode`, `card_name`, `status_code`, `status_message`, `currency`, `amount`, `billing_name`, `billing_address`, `billing_city`, `billing_state`, `billing_zip`, `billing_country`, `billing_tel`, `billing_email`, `delivery_name`, `delivery_address`, `delivery_city`, `delivery_state`, `delivery_zip`, `delivery_country`, `delivery_tel`, `mer_amount`, `trans_date`) VALUES
(4, '34', '107359113835', '', '', 'Net Banking', 'State Bank of India', 'null', 'Transaction Amount must not be less than a rupee.', 'INR', '0.01', 'samantony', 'saligramam', 'Chennai', 'Tamil Nadu', '600018', 'India', '1234567890', 'samantony59@gmail.com', 'samantony', 'saligramam', 'Chennai', 'Tamil Nadu', '600018', 'India', '1234567890', '0.01', '20/04/2018 15:23:58'),
(5, '472', '108530420085', '', '', 'null', '', '', 'Session Expired', 'INR', '398.00', 'jo', 'Trustpuram, Kodambakkam, Chennai, Tamil Nadu, India', 'Chennai', 'TN', '600024', 'India', '7395962447', 'jo@gmail.com', '', '', '', '', '', '', '', '398.00', 'null'),
(6, '923', '108535943143', '', '', 'null', '', '', 'Session Expired', 'INR', '988.00', 'jo', 'Trustpuram, Kodambakkam, Chennai, Tamil Nadu, India', 'Chennai', 'TN', '600024', 'India', '7395962447', 'jo@gmail.com', '', '', '', '', '', '', '', '988.00', 'null'),
(7, '554', '108537435402', '', '', 'null', '', '', 'Session Expired', 'INR', '199.00', 'jo', 'Trustpuram, Kodambakkam, Chennai, Tamil Nadu, India', 'Chennai', 'TN', '600024', 'India', '7395962447', 'jo@gmail.com', '', '', '', '', '', '', '', '199.00', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `bulkorder`
--

CREATE TABLE `bulkorder` (
  `id` int(11) NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `sleeve_type` varchar(255) NOT NULL,
  `shirt_type` varchar(255) NOT NULL,
  `shirt_pattern` varchar(255) NOT NULL,
  `shirt_size` varchar(255) NOT NULL,
  `shirt_range` int(11) NOT NULL,
  `shirt_color` varchar(255) NOT NULL,
  `offer_range` int(11) NOT NULL,
  `created_date` date NOT NULL,
  `created_time` time NOT NULL,
  `description` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `del_status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bulkorder`
--

INSERT INTO `bulkorder` (`id`, `product_id`, `file_name`, `sleeve_type`, `shirt_type`, `shirt_pattern`, `shirt_size`, `shirt_range`, `shirt_color`, `offer_range`, `created_date`, `created_time`, `description`, `category`, `del_status`) VALUES
(9, 'MT1000', 'Tshirt/Men/256556-975916.jpg', 'Full Sleeves', 'Round Neck', 'Printed', 'M', 118, 'Black', 299, '2018-07-09', '13:26:38', 'loops garments', 'Men', 0),
(10, 'WT1000', 'Tshirt/Women/avtar-15-compressor.jpg', '', 'Crew Neck', 'Solid', 'M', 11, 'Black', 999, '2018-07-09', '15:24:56', 'loops garment', 'Women', 0),
(11, 'KMT1000', 'Tshirt/KidsMen/3.jpg', 'Half Sleeves', 'Polo Neck', 'Striped', 'L', 45, 'Black', 800, '2018-07-09', '15:29:59', 'loops ', 'Boys', 0),
(12, 'KWT1000', 'Tshirt/KidsWomen/avtar-15-compressor.jpg', '', 'V Neck', 'Printed', 'L', 7, 'Gery', 1200, '2018-07-09', '15:33:32', 'loops', 'Boys', 0),
(13, 'MT1001', 'Tshirt/Men/striped9.jpg', 'Full Sleeves', 'Round Neck', 'Striped', 'L', 499, 'Gery', 700, '2018-11-23', '13:35:25', 'loops garments', 'Men', 0);

-- --------------------------------------------------------

--
-- Table structure for table `bulkorderinfo`
--

CREATE TABLE `bulkorderinfo` (
  `id` int(11) NOT NULL,
  `tracks` varchar(255) NOT NULL,
  `per_price` varchar(255) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `small_num` varchar(255) NOT NULL,
  `medium_num` varchar(255) NOT NULL,
  `large_num` varchar(255) NOT NULL,
  `xl_num` varchar(255) NOT NULL,
  `two_xl_num` varchar(255) NOT NULL,
  `three_xl_num` varchar(255) NOT NULL,
  `del_status` varchar(255) NOT NULL DEFAULT '0',
  `gstnumber` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bulkorderinfo`
--

INSERT INTO `bulkorderinfo` (`id`, `tracks`, `per_price`, `file_path`, `username`, `small_num`, `medium_num`, `large_num`, `xl_num`, `two_xl_num`, `three_xl_num`, `del_status`, `gstnumber`) VALUES
(21, 'MT1018', '480', 'Tshirt/Men/striped10.jpg', 'vairavel2020@gmail.com', '1', '', '2', '5', '1', '25', '0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `client_wishlist`
--

CREATE TABLE `client_wishlist` (
  `id` int(255) NOT NULL,
  `loops_id` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_date` date NOT NULL,
  `sleeve` varchar(255) NOT NULL,
  `pattern` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `del_status` int(30) NOT NULL DEFAULT 0,
  `wish_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client_wishlist`
--

INSERT INTO `client_wishlist` (`id`, `loops_id`, `file_name`, `email`, `created_date`, `sleeve`, `pattern`, `price`, `gender`, `del_status`, `wish_status`) VALUES
(7, 'MT1010', 'Tshirt/Men/1-AM-400x400.png', 'vairavel2020@gmail.com', '2018-12-19', 'Full Sleeves', 'Crew Neck', '658', 'Men', 0, '3312394c57e6bc64c8538a25f11fa430'),
(15, 'MT1001', 'Tshirt/Men/_H9A0384.JPG', 'jo@gmail.com', '2019-07-19', 'Half Sleeves', 'Crew Neck', '500', 'Men', 0, '71e4dc58cf6c5ee0b9b48c3b401b8d36'),
(16, 'MT1002', 'Tshirt/Men/_H9A0396.JPG', 'jo@gmail.com', '2019-07-19', 'Half Sleeves', 'Round Neck', '650', 'Men', 0, '71e4dc58cf6c5ee0b9b48c3b401b8d36'),
(17, 'MT1010', 'Tshirt/Men/_H9A0493.JPG', 'jo@gmail.com', '2019-07-21', 'Half Sleeves', 'Round Neck', '452', 'Men', 0, '71e4dc58cf6c5ee0b9b48c3b401b8d36'),
(18, 'MT1004', 'Tshirt/Men/_H9A0420.JPG', 'jo@gmail.com', '2019-07-21', 'Half Sleeves', 'Round Neck', '350', 'Men', 0, '71e4dc58cf6c5ee0b9b48c3b401b8d36'),
(19, 'MT1005', 'Tshirt/Men/_H9A0433.JPG', 'jo@gmail.com', '2019-07-21', 'Half Sleeves', 'Round Neck', '300', 'Men', 0, '71e4dc58cf6c5ee0b9b48c3b401b8d36'),
(20, 'MT1006', 'Tshirt/Men/_H9A0445.JPG', 'jo@gmail.com', '2019-07-21', 'Half Sleeves', 'Round Neck', '450', 'Men', 0, '71e4dc58cf6c5ee0b9b48c3b401b8d36');

-- --------------------------------------------------------

--
-- Table structure for table `cod_payment`
--

CREATE TABLE `cod_payment` (
  `id` int(11) NOT NULL,
  `orderType` varchar(255) NOT NULL,
  `orderId` varchar(255) NOT NULL,
  `customerName` varchar(255) NOT NULL,
  `customerAddress` varchar(255) NOT NULL,
  `customerCity` varchar(255) NOT NULL,
  `customerPinCode` varchar(255) NOT NULL,
  `customerContact` varchar(255) NOT NULL,
  `orderDate` varchar(255) NOT NULL,
  `totalValue` varchar(255) NOT NULL,
  `categoryName` varchar(255) NOT NULL,
  `packageName` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `packageLength` varchar(255) NOT NULL,
  `packageWidth` varchar(150) NOT NULL,
  `packageHeight` varchar(150) NOT NULL,
  `packageWeight` varchar(150) NOT NULL,
  `sellerAddressId` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cod_payment`
--

INSERT INTO `cod_payment` (`id`, `orderType`, `orderId`, `customerName`, `customerAddress`, `customerCity`, `customerPinCode`, `customerContact`, `orderDate`, `totalValue`, `categoryName`, `packageName`, `quantity`, `packageLength`, `packageWidth`, `packageHeight`, `packageWeight`, `sellerAddressId`) VALUES
(6, 'COD', 'LF1236', 'jo', 'Trustpuram, Kodambakkam, Chennai, Tamil Nadu, Indiaa', 'Chennai', '600024', '7395962447', '2019-08-13', '1410', 'Clothing and Accessories', 'Loops Fashions', '3', '5.50', '10', '1.0', '0.5', '11636');

-- --------------------------------------------------------

--
-- Table structure for table `contactinfo`
--

CREATE TABLE `contactinfo` (
  `id` int(11) NOT NULL,
  `cont_name` varchar(255) NOT NULL,
  `contact_email` varchar(255) NOT NULL,
  `contact_no` int(11) NOT NULL,
  `contact_message` varchar(255) NOT NULL,
  `del_status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contactinfo`
--

INSERT INTO `contactinfo` (`id`, `cont_name`, `contact_email`, `contact_no`, `contact_message`, `del_status`) VALUES
(1, '$cont_name', '$contact_email', 0, '$contact_message', 0),
(2, 'aaaaa', 'aaaaaa@asfasfdasdf', 0, 'aaaaa', 0),
(3, 'aaaaaaaa', 'aaaaaa@aaaaaaa', 2147483647, 'aaaaaaaaaaaaaaaaaaaaa', 0),
(4, 'asdadasdasd', 'adasdad@asdfadfasfadfa', 2147483647, 'adasdasdasdasdasdas', 0),
(5, 'x', 'x@gmail.com', 2147483647, 'hello world', 0),
(6, 'SasASAs', 'Asadadasda@asdsadasd', 12345678, 'asdadasd', 0),
(7, 'logi', 'logi@123', 2147483647, 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 0),
(8, 'logi', 'logi@gmail.com', 2147483647, 'checking', 0),
(9, 'logi', 'logi@gmail.com', 1235469, 'loops garment\r\n', 0),
(10, 'logi', 'logi@gmail.com', 2147483647, 'loops garments', 0),
(12, 'zzzzz', 'zzzzz@g', 1234567890, 'aaaaa', 0),
(13, 'sssss', 'ssssss@aaaaa', 0, 'asdada', 0),
(111, 'aaaaaa', 'aaaaaaa@gmail.com', 1234567890, 'sdfasdfsdf', 0),
(112, 'Daviddiz', 'arxiland@mail.ru', 286462786, 'Good man! That is a good offer for you. \r\n \r\nhttp://bit.ly/2EKFUaL', 0),
(113, 'CharlesHeire', 'tretyakova781@mail.ru', 175176627, 'Good day! \r\nThere is \r\nan amazing \r\noffering for you. \r\nhttp://bit.ly/2EPTYzF', 0),
(114, 'Davidral', 'info@3sv.se', 262656858, 'Hi! Behold is  a fine offers for you. \r\nhttp://digig.datedreamon.com/?utm_source=5bcdf3f8d2f30 \r\nhttp://bit.ly/2Jt51NP', 0),
(115, 'hantak', 'ardouin.david@neuf.fr', 2147483647, 'Hi! Here is  an important present offers for you.   http://bit.ly/2J7HFgJ', 0),
(116, 'Barryskant', 'jesper@dalacement.se', 132578787, ' Hey a pleasurableoffers \r\n Are you in?  \r\n \r\n \r\nhttp://facebook.topratinglist.com?13413', 0),
(117, 'Barryskant', 'soren@hgaadvokat.se', 132578787, '  What we succour here is , rigorousoblation \r\n Are you in?  \r\n \r\n \r\nhttps://drive.google.com/file/d/1-3CK509jKSwoDUp0rguwPQ28L0Ukizl_/preview', 0),
(118, 'Dariusvep', 'info@kulturfastigheterlinkoping.se', 221432135, ' Hy there,  Look what we company conducive to you! an fabulousjolly-boat \r\n To quiet click on the trammels below  \r\n \r\n \r\nhttps://drive.google.com/file/d/10orKiESnXMNwm7QALR4WJfSBBbEDX9nx/preview', 0),
(119, 'umeh', 'winiels_luvs_uven@hotmail.com', 2147483647, 'Hello! Here is  a good offers offering for you.  Are you in?  http://bit.ly/2Jawdkn', 0),
(120, 'StephenAPafe', 'louise.alexen@infab.nu', 128247664, ' Hey Big name low-down ! a euphonioustruck \r\n Are you in?  \r\n \r\n \r\nhttps://drive.google.com/file/d/1w5s3KeewnYdFh9jKXhAZpx9zPE0UmDP3/preview', 0),
(121, 'OscarBrear', 'launceston.sales@buau.com.au', 247115523, '  diplomaticoffers \r\n To controlled click on the connector in this world  \r\n \r\n \r\nhttps://drive.google.com/file/d/1iXFSz1Rw80zaY3hF81uKuCJQjLsTBj0j/preview', 0),
(122, 'Matthewbus', 'kontakta@alerna.se', 145135834, ' Hey an fascinatingloosely come about b seagoing append despatch \r\n Responsible click on the curtail woe of the tan to equanimity  \r\n \r\n \r\nhttp://bit.ly/2HRY3R4', 0),
(123, 'Matthewbus', 'registrator.ds@sll.se', 145135834, ' Hi God-fearing telecast ! an fascinatingoffers \r\n Are you in?  \r\n \r\n \r\nhttp://bit.ly/2HSYH0A', 0),
(124, 'Stephenspund', 'mikael.edvinsson@boxholmsprofil.se', 175844723, ' Hy there,  an wonderfulbefall forward \r\n Are you in?  \r\n \r\n \r\nhttp://r1.oracoolum.com?22036', 0),
(125, 'LarryTal', 'barr@havoc.ive', 246531146, ' Hi Elevated hearsay ! an unheard-ofgift \r\n To preside over click on the coupling unequal of  \r\n \r\n \r\nhttp://bit.ly/2UtJoCl', 0),
(126, 'DavidjubRe', 'maria.lingman@armiarm.se', 255524886, ' Hey Look what we airtight in the good you! an eternal restdisparage up after acquiring \r\n Neutral click \r\n \r\n \r\nhttp://bit.ly/2Utvtw5', 0),
(127, 'Suecism', '1979monika@yandex.ru', 2147483647, 'Ciao! Here is  a good offers offers for you.   http://bit.ly/2yphSws', 0),
(128, 'ThomasNum', 'marikadegani@gmail.com', 242212363, ' Hy there,  an awesomeoffers \r\n Are you in?  \r\n \r\n \r\nhttp://bit.ly/2UYKaaL', 0),
(129, 'Jeremytrurb', 'yourmail@gmail.com', 0, 'Hello. And Bye.', 0),
(130, 'Alfredhop', 'bow.laboiteafabrik@gmail.com', 383137342, ' Hey Look what we organize looking allowing in place of on you! a believablesuffer up due to the details that trafficking \r\n Are you in?  \r\n \r\n \r\nhttp://bit.ly/2rNLnUS', 0),
(131, 'WilliamDub', 'mauriziobeghelli@gmail.com', 157412438, ' Hy there,  What we touch on here is , a pleasurableoffers \r\n Are you in?  \r\n \r\n \r\nhttp://bit.ly/2QQlYsG', 0),
(132, 'BobbyPlums', 'wfaught@hotmail.com', 0, 'How to make $10,000 Per day FAST: http://corta.co/5000permonth39882', 0),
(133, 'RickeyINOWS', 'cina.tapper@gmail.com', 347771458, ' Hi a comme il fautoffers \r\n Down click on the extend to further down to modify  \r\n \r\n \r\nhttps://drive.google.com/file/d/1DLEvnr_0eL9ahhftVE3JKcNDkMgGv2oA/preview', 0),
(134, 'BobbyPlums', 'crrainbow@hotmail.com', 0, 'Hei?e und saftige Frauen in Ihrer Stadt wollen Sex: http://rih.co/bestsexygirlsinyourcity64261', 0),
(135, 'BobbyPlums', 'pascaltursan@hotmail.com', 0, 'Hei?e Frauen fur guten Sex jeden Tag: http://awalsh.com/bestsexygirlsinyourcity60183', 0),
(136, 'BobbyPlums', 'minayao@msn.com', 0, 'Fick heute Nacht saftige Frau in deiner Stadt: https://is.gd/bestsexygirlsinyourcity50665', 0),
(137, 'BobbyPlums', 's_ishida@hotmail.com', 0, 'Hei?e Frauen fur guten Sex jeden Tag: https://aaa.moda/bestsexygirlsinyourcity33139', 0),
(138, 'BobbyPlums', 'lienlac@radiochantroimoi.com', 0, 'How to make $3000 a day: http://to.ht/bestinvestment88368', 0),
(139, 'files', '1985one_@myspace.com', 2147483647, 'Ciao! There is an amazing - Fantastic bonus offers that will double or even triple your deposits if you register casino account in the next 24 hours.  Try and be our next winner. http://bit.ly/2J6Eh5x', 0),
(140, 'BobbyPlums', 'cjhunter@hotmail.com', 0, 'How to Make $3000 FAST | Fast Money | The Busy Budgeter: http://awalsh.com/bestinvestment98447', 0),
(141, 'EnriqueCip', 'akyfctreasurer@gmail.com', 225314833, ' Hy there,  What we have here is , niceoffer \r\n Just click \r\n \r\nhttps://drive.google.com/file/d/1OonElnqACJmehkHJJWAwvZZLf3cmYU8t/preview', 0),
(142, 'BobbyPlums', 'ribitmoo@bellsouth.net', 0, 'Get $150 â€“ $600 per DAY: http://www.lookweb.it/bestinvest$300058002', 0),
(143, 'DavidDaf', 'ebknorr@hotmail.com', 0, 'LAZY way for $200 in 20 mins: http://999.sh/bestinvest300036656', 0),
(144, 'Davidinomi', 'elmarro@msn.com', 0, 'Get $100 â€“ $600 A Day: http://tropaadet.dk/bestinvestsystem76795', 0),
(145, 'WillieBlect', 'chelecen@msn.com', 0, 'Where to invest $ 3000 once and receive every month from $ 55000: http://www.vkvi.net/howtoinvest300075354', 0),
(146, 'Jamesric', 'paulfinn76@gmail.com', 151671634, '  What we have here is , an interestingoffer \r\n To qualify click on the link below  \r\n \r\nhttps://drive.google.com/file/d/13LfgUEO9Nmx-hlXUFCqhCo5vGtEOymlt/preview', 0),
(147, 'Georgelob', 'sweeper107@hotmail.com', 0, 'Where to invest $ 3000 once and receive every month from $ 55000: http://perkele.ovh/bestinvestsystems50273', 0),
(148, 'Georgelob', 'oreozonelayer@yahoo.com', 0, 'Hei?e und saftige Frauen in Ihrer Stadt wollen Sex: http://www.vkvi.net/bestsexygirlsinyourcity11474', 0),
(149, 'Georgelob', 'anhca@hotmail.com', 0, 'Hei?e Frauen fur Sex in deiner Stadt: http://ralive.de/bestsexygirlsinyourcity63453', 0),
(150, 'Georgelob', 'laplante26@msn.com', 0, 'Comment transformer 3 000 â‚¬ en 128 000 â‚¬: http://www.xn--277c.com/bestinvestsystem29034', 0),
(151, 'Georgelob', 'laparfaitfemme@hotmail.com', 0, 'Quel est le moyen le plus simple de gagner 3000 â‚¬ par mois: https://is.gd/bestinvestsystem72238', 0),
(152, 'Georgelob', 'colin102804@yahoo.com', 0, 'Wie man zusatzliches Geld von zu Hause aus verdient - â‚¬ 3000 pro Tag einfach: https://aaa.moda/5500047227', 0),
(153, 'Georgelob', 'ace21@windstream.net', 0, '10 Best Cryptocurrency to Invest in 2019: http://freest.at/BESTINVESTMETHOD5500060728', 0),
(154, 'JamesTroug', 'youremail@gmail.com', 372681876, ' Hey an importantpresent \r\n To condition click on the tie up downstairs    http://bit.ly/2SQJYIY', 0),
(155, 'Georgelob', 'roblike@hotmail.com', 0, 'How To Make $10,000 a Day Trading Forex - The Most EASIEST Way For Beginners (SECRET REVEALED): http://webhop.se/bestforex67915', 0),
(156, 'Georgelob', 's_popper@hotmail.com', 0, 'Find yourself a girl for the night in your city: https://xxs.yt/bestforex74447', 0),
(157, 'Georgelob', 'higgaboom@hotmail.com', 0, 'Meet sexy girls in your city: http://jnl.io/bestforex30991', 0),
(158, 'MatthewSox', 'coffy32@hotmail.com', 0, 'Meet sexy girls in your city: http://yourls.site/adultdating42363', 0),
(159, 'WestonlayeK', '40plusessexb@gmail.com', 367475435, ' Hey an high-rankingoblation \r\n Just click   http://bit.ly/2RXYCRJ', 0),
(160, 'MatthewSox', 'holly_702@hotmail.com', 0, 'Find yourself a girl for the night in your city: http://ralive.de/adultdating37335', 0),
(161, 'KevinFriff', 'lng09@hotmail.com', 0, 'Filles sexy pour la nuit dans votre ville: https://arill.us/bestsexygirlsxxx57875', 0),
(162, 'KevinFriff', 'mzavolta6911@comcast.net', 0, 'Forex trader makes $10,000 in minutes: http://profit.bitcoin-forex-invest.com/make-money-online-blackhat-seo.php', 0),
(163, 'RobertRam', 'iprserviceinfo@gmail.com', 133516435, ' Hi What we keep here is , a goodtender \r\n Just click   http://bit.ly/2S3Huda', 0),
(164, 'KevinFriff', 'bzecikovskay@yahoo.com', 0, 'Win iPhone X: http://go.fireontherim.com/winiphonexs22590', 0),
(165, 'KevinFriff', 'resortcc@gmail.com', 0, '2019 Cryptocurrency Investment Guide: http://ralive.de/59042', 0),
(166, 'KevinFriff', 'armani.ibrahim@att.blackberry.net', 0, 'LAZY way for $200 in 20 mins: http://www.vkvi.net/166495', 0),
(167, 'KevinFriff', 'mommajen3@yahoo.com', 0, 'How to make $3000 a day: http://wntdco.mx/163046', 0),
(168, 'RobertRam', 'curetracksubmit@gmail.com', 133516435, '  What we have here is , delightfullyoffer \r\n Good click   http://bit.ly/2S08OsQ', 0),
(169, 'VincentWaymn', 'cmroom@hotmail.com', 0, 'Sexy girls for the night in your town: https://aaa.moda/bestadultdatingsite69904', 0),
(170, 'VincentWaymn', 'gechandi@aol.com', 0, 'Suchen Sie sich ein Madchen fur die Nacht in Ihrer Stadt: http://wntdco.mx/bestadultdating60839', 0),
(171, 'RobertRam', 'valtalbot1863@gmail.com', 133516435, ' Hy there,  What we have here is , an invitingoffers \r\n To make eligible click on the association below    http://bit.ly/2S6eLV9', 0),
(172, 'VincentWaymn', 'e_lipsky@hotmail.com', 0, 'Suchen Sie sich ein Madchen fur die Nacht in Ihrer Stadt: http://valeriemace.co.uk/bestadultdating21408', 0),
(173, 'VincentWaymn', 'enriquenava@msn.com', 0, 'How To Make Over $10,000 In One Trade | Live Forex Trading and Analysis: http://www.vkvi.net/1000perday87185', 0),
(174, 'VincentWaymn', 'belburn@hotmail.com', 0, 'Find yourself a girl for the night in your city: http://ralive.de/bestadultapp92984', 0),
(175, 'VincentWaymn', 'cfolt@hotmail.com', 0, 'Sexy girls for the night in your town: http://tropaadet.dk/bestadultapp57775', 0),
(176, 'VincentWaymn', '4sweets@sbcglobal.net', 0, 'Meet sexy girls in your city: http://goto.iamaws.com/bestadultapps57370', 0),
(177, 'RobertVak', 'ghinilambor700@yahoo.com', 273766686, 'Hello! \r\n \r\nBitcoin price is falling down. What to do? \r\n \r\nYou have to increase the number of coins until the price of Bitcoin starts rising again! \r\n \r\nThe best choice for this is http://dcbtc.info \r\n \r\nDC-BTC increases bitcoins by 10% in 48 hours. \r\nYo', 0),
(178, 'VincentWaymn', 'eagleton_10@hotmail.com', 0, '$10000 per day Bitcoin Trading Guide with Broker Reviews and Tutorial - Binary Options: http://awalsh.com/10000perday34102', 0),
(179, 'VincentWaymn', 'ineard6505@yahoo.com', 0, 'Sexy Girls fur die Nacht in deiner Stadt: http://perkele.ovh/appadultdating32908', 0),
(180, 'VincentWaymn', 'dmcc23@msn.com', 0, 'Sexy Girls fur die Nacht in deiner Stadt: http://www.abcagency.se/appadultdating62320', 0),
(181, 'VincentWaymn', 'edenjustin@yahoo.com', 0, 'Beautiful girls for sex in your city: http://corta.co/bestadultsitesex63126', 0),
(182, 'Allison Kingsley', 'ecommercesites@protonmail.com', 0, 'Att: Owner / Manager\r\n\r\nI came across your site and thought dropshipping may be of interest to you.\r\n\r\nWe are the supplier of ready made AliExpress dropshipping business websites.  \r\n\r\nNo stock, No headaches, all items are dropshipped directly to your cus', 0),
(183, 'ZacharyWep', 'melfrangalley@gmail.com', 371423556, ' Hy there,  a virtuousoffer \r\n Right-minded click on the connection under to prepare  \r\n \r\nhttp://1YDS0.TK', 0),
(184, 'VincentWaymn', 'seasao@hotmail.com', 0, 'Beautiful women for sex in your town: http://www.abcagency.se/bestsexygirlinyourcity89248', 0),
(185, 'VincentWaymn', 'flowerqueen53@yahoo.com', 0, 'Find yourself a girl for the night in your city: https://tinyurl.com/sexygirlsinyourcity87853', 0),
(186, 'VincentWaymn', 'connor.darius@yahoo.com', 0, 'Simple biz + new tool = $450 per hour: https://lil.ink/passiveincome1000032575', 0),
(187, 'VincentWaymn', 'tsan15@hotmail.com', 0, 'Beautiful women for sex in your town: http://webhop.se/getsexinyourcity47676', 0),
(188, 'Howardteaky', 'kristianbailey71@gmail.com', 185243414, '  Good tidings ! an enchantingsacrifice \r\n Decent click on the vinculum underneath to prepare  \r\nhttp://bit.ly/2S3IAWk', 0),
(189, 'VincentWaymn', 'hogra@hotmail.com', 0, 'Sexy girls for the night in your town: http://corta.co/adultdating74592', 0),
(190, 'VincentWaymn', 'my2rubens@yahoo.com', 0, 'Sexy girls for the night in your town: http://jnl.io/getsexinyourcity59206', 0),
(191, 'VincentWaymn', 'jjybarra@gmail.com', 0, 'Find yourself a girl for the night in your city: http://ralive.de/getsexinyourcity55773', 0),
(192, 'Gary Ellis', 'newpeople2019@outlook.com', 123, 'Att: Owner or Manager\r\n\r\nI came across your website and thought our services would be of interest to you.\r\n\r\nWould you like 5,000 people who want to see your site in one week?\r\n(national visitors only). \r\n\r\nPeople will come from online publications in you', 0),
(193, 'VincentWaymn', 'simon11111@msn.com', 0, 'Beautiful girls for sex in your city: https://aaa.moda/getsexinyourcity16353', 0),
(194, 'VincentWaymn', 'anorris100@hotmail.com', 0, 'Sexy girls for the night in your town: http://to.ht/getsexinyourcity48636', 0),
(195, 'VincentWaymn', 't_nepomuceno@hotmail.com', 0, 'The best girls for sex in your town: http://perkele.ovh/getsexinyourcity84981', 0),
(196, 'VincentWaymn', 'amay31@hotmail.com', 0, 'The best women for sex in your town: http://corta.co/getsexinyourcity11380', 0),
(197, 'Hollisfek', 'flodaddy@hotmail.com', 0, 'How to make $10,000 Per day FAST: http://www.lookweb.it/investcrypto$90042485', 0),
(198, 'VincentWaymn', 'longleyclan@yahoo.com', 0, 'Get the new iPhone X for free with this giveaway: http://webhop.se/ouinphone49854', 0),
(199, 'RaymondPes', 'dylan876@hotmail.com', 0, 'Natural Stress Solutions: CBD Products: http://valeriemace.co.uk/aturaltressolutions98128', 0),
(200, 'JamesduEvy', 'ambular19@hotmail.com', 0, 'Pill/Tablet/Capsule Potency Sexual Remedies & Supplements: http://jnl.io/astongerined42242', 0),
(201, 'Hollisfek', 'molly1_1@msn.com', 0, '$10000 per day Bitcoin Binary Options / Best Brokers in Review: https://arill.us/investcrypto90079003', 0),
(202, 'RobertCagma', 'philadi123@gmail.com', 213245362, ' Hey Look what we arrange an eye to you! niceoffers \r\n Well-founded click \r\n \r\nhttp://servicerubin.ru', 0),
(203, 'VincentWaymn', 'teresitat@msn.com', 0, 'Win New Iphone X: http://jnl.io/ouinphone76715', 0),
(204, 'JamesduEvy', 'mishelz@hotmail.com', 0, '8 sex tips to last longer in bed: http://www.lookweb.it/LastLongerinBed72262', 0),
(205, 'RaymondPes', 'cdeuschle@hotmail.com', 0, 'Natural Stress Solutions Pure CBD Tincture: http://jnl.io/aturaltressolutions60105', 0),
(206, 'Hollisfek', 'theodoremiller@msn.com', 0, 'How would you use $30,000 to make more money: https://arill.us/investcrypto90041953', 0),
(207, 'VincentWaymn', 'claireyl@hotmail.com', 0, 'You win iPhone X: https://aaa.moda/ouinphone39500', 0),
(208, 'Timothyabinc', 'ssarkaus@gmail.com', 324243663, 'Confirm that you are not a robot, and learn how to earn $ 1000 a day \r\nhttp://guide-traveler.ru', 0),
(209, 'Hollisfek', 'sundust14@hotmail.com', 0, '$10000 per day Bitcoin Trading Guide with Broker Reviews and Tutorial - Binary Options: https://tinyurl.com/investcrypto41809', 0),
(210, 'RaymondPes', 'thumper522@msn.com', 0, 'Natural Stress Solutions Pure CBD Tincture: http://www.vkvi.net/investcrypto97615', 0),
(211, 'VincentWaymn', 'lybck@yahoo.com', 0, 'You win iPhone X: http://www.vkvi.net/investcrypto70285', 0),
(212, 'Hollisfek', 'cheersamibear@yahoo.com', 0, 'The best women for sex in your town: http://valeriemace.co.uk/bestsexygirldating16832', 0),
(213, 'RaymondPes', 'alri21@hotmail.com', 0, 'Sexy girls for the night in your town: http://www.lookweb.it/bestsexygirldating19493', 0),
(214, 'VincentWaymn', 'saleenas@hotmail.com', 0, 'Beautiful women for sex in your town: https://aaa.moda/bestsexygirldating40996', 0),
(215, 'JamesduEvy', 'helennilsson@hotmail.com', 0, 'Beautiful girls for sex in your city: http://www.lookweb.it/bestsexygirldating67323', 0),
(216, 'Donaldreilt', 'formforsome@yandex.ua', 331577245, 'Hello! \r\n \r\nDo you know how to get +10% in bitcoins during your coffee break? \r\nSpend this time with benefits. \r\n \r\nMake fast donation to http://dcbtc.club and get automatically payout to your wallet after two days. \r\n \r\nFor example, you donate 100$ in bt', 0),
(217, 'RaymondPes', 'wheeltowheel@hotmail.com', 0, 'Beautiful women for sex in your town: http://corta.co/bestsexygirlsdating16568', 0),
(218, 'Hollisfek', 'btkh2@hotmail.com', 0, 'The best women for sex in your town: http://to.ht/bestsexygirlsdating89444', 0),
(219, 'VincentWaymn', 'ladylion81@msn.com', 0, 'Sexy girls for the night in your town: http://perkele.ovh/bestsexygirlsdating90008', 0),
(220, 'JamesduEvy', 'tammyhaley@hotmail.com', 0, 'Sexy girls for the night in your town: http://jnl.io/bestsexygirlsdating87813', 0),
(221, 'LeslieSweno', 'thecodebreakers.quartet@gmail.com', 352467411, 'Confirm that you are not a robot, and find out very interesting \r\n \r\nhttp://bit.ly/2EONnDE', 0),
(222, 'Hollisfek', 'pms9711@msn.com', 0, 'How You Can Make $100,000 Every Month Trading Forex: http://rih.co/cryptoinvestbitcoin76412', 0),
(223, 'VincentWaymn', 'ceceliagt@hotmail.com', 0, 'Comment gagner 3000 â‚¬ Fast Fast Money | Le budget occupe: http://www.vkvi.net/cryptoinvestbitcoin48886', 0),
(224, 'JamesduEvy', 'herra11@hotmail.com', 0, 'Bezahlte Umfragen: Verdienen Sie Ð²â€šÂ¬ 3.000 oder mehr pro Woche: https://aaa.moda/cryptoinvestbitcoin11229', 0),
(225, 'RaymondPes', 'wolsey77@msn.com', 0, 'The Top 5 Best Cryptocurrencies 2019: http://yourls.site/cryptoinvestbitcoin35094', 0),
(226, 'RaymondPes', 'live_laugh_love@msn.com', 0, '10 Best Cryptocurrency to Invest in 2019: http://perkele.ovh/bestinvestcryptobitcoin98929', 0),
(227, 'VincentWaymn', 'cblessing99@hotmail.com', 0, 'Comment transformer 3 000 â‚¬ en 128 000 â‚¬: http://www.lookweb.it/bestinvestcryptobitcoin88606', 0),
(228, 'JamesduEvy', 'carterdana@hotmail.com', 0, 'Ich bin 23. Ich habe Ð²â€šÂ¬ 3000. Wie kann ich es am besten nutzen, um mehr Geld zu verdienen: http://valeriemace.co.uk/bestinvestcryptobitcoin26195', 0),
(229, 'RaymondPes', 'wyyf@hotmail.com', 0, 'Senuke Tng Reviews-Can Senuke Tng Make Your Affiliate Marketing: http://www.lookweb.it/bestseotools20027', 0),
(230, 'JamesduEvy', 'stephenld@hotmail.com', 0, 'Paid Surveys: Earn $30,000 Or More Per Week: http://to.ht/milliondollars70939', 0),
(231, 'VincentWaymn', 'sydneybox@hotmail.com', 0, 'Forex Prodigy Makes $10,000 in 30 Minutes! - Market Traders Institute: http://to.ht/milliondollarsforex92577', 0),
(232, 'RaymondPes', 'winni10@hotmail.com', 0, 'SEnuke TNG 2019 Version Reviewed: DISCOUNT & HUGE BONUS: http://www.lookweb.it/bestseotools50804', 0),
(233, 'JamesduEvy', 'bwisniowski@hotmail.com', 0, 'How to Turn $30,000 into $128,000: https://tinyurl.com/milliondollars51127', 0),
(234, 'VincentWaymn', 'shoe89@msn.com', 0, 'How To Make $100,000 Per Month With Forex Signals: http://to.ht/milliondollarsforex40266', 0),
(235, 'RaymondPes', 'lori819@hotmail.com', 0, 'Trouvez-vous une fille pour la nuit dans votre ville: http://rih.co/bestsexygirlsadultdating16380', 0),
(236, 'VincentWaymn', 'chakey1@hotmail.com', 0, 'Suchen Sie sich ein Madchen fur die Nacht in Ihrer Stadt: http://to.ht/bestsexygirlsadultdating57805', 0),
(237, 'JamesduEvy', 'cbusm@hotmail.com', 0, 'Encuentra una chica para pasar la noche en tu ciudad.: http://www.lookweb.it/bestsexygirlsadultdating35905', 0),
(238, 'Ruth', 'ruthmcfarlane@mail.com', 0, 'Hello, I want to work in your company on a voluntary basis, can you offer me anything? \r\na little about me:https://about.me/ruthmcfarlane/', 0),
(239, 'Hollisfek', 'leftino@yahoo.com', 0, 'Beautiful girls for sex in your city: http://www.abcagency.se/bestsexygirlsadultdating80632', 0),
(240, 'RaymondPes', 'moriarity999@msn.com', 0, 'Rencontrez des filles sexy dans votre ville: http://www.abcagency.se/bestsexygirlsadultdating44103', 0),
(241, 'VincentWaymn', 'amcculloch3@hotmail.com', 0, 'Sexy Girls fur die Nacht in deiner Stadt: http://perkele.ovh/bestsexygirlsadultdating43253', 0),
(242, 'JamesduEvy', 'ilehmkuhl@msn.com', 0, 'Chicas sexys para pasar la noche en tu pueblo.: http://goto.iamaws.com/bestsexygirlsadultdating44504', 0),
(243, 'RaymondPes', 'eddaji@hotmail.com', 0, 'What is the best cryptocurrency to invest in 2019: http://www.abcagency.se/15000investbinarycrypto50604', 0),
(244, 'VincentWaymn', 'elsa_yu@msn.com', 0, '$10000 per day Bitcoin Binary Options / Best Brokers in Review: http://www.lookweb.it/$15000investbinarycrypto62866', 0),
(245, 'JamesduEvy', 's_pallett@hotmail.com', 0, 'How You Can Make $100,000 Every Month Trading Forex: http://rih.co/15000investbinarycrypto22571', 0),
(246, 'Hollisfek', 'ch8496@hotmail.com', 0, 'Get $1500 Ð²Ð‚â€œ $6000 per DAY: http://jnl.io/15000investbinarycrypto90031', 0),
(247, 'JamesduEvy', 'rachel345@msn.com', 0, 'Forex 1000 To 1 Million Ð²Ð‚â€œ Turning $10,000 into $1 Million in Forex: http://goto.iamaws.com/15000investbinarycrypto10386', 0),
(248, 'VincentWaymn', 'trinainman@hotmail.com', 0, '$10000 per day Best Bitcoin Binary Options | Crunchbase: http://to.ht/15000investbinarycrypto40653', 0),
(249, 'RaymondPes', 'redale1@msn.com', 0, 'Beautiful girls for sex in your city: http://www.vkvi.net/adultdating37589', 0),
(250, 'JamesduEvy', 'budsmate@hotmail.com', 0, 'Meet sexy girls in your city: http://to.ht/adultdating49815', 0),
(251, 'VincentWaymn', 'earosenblum@hotmail.com', 0, 'The best girls for sex in your town: http://corta.co/adultdating27745', 0),
(252, 'Guahibo', 'gregornawUnineeKab@gmail.com', 2147483647, 'We offer you the opportunity to advertise your products and services. \r\n \r\nGood man! Here is  an amazing offers for you. I want to offer the possibility of sending your commercial offers or messages through feedback forms. The advantage of this method is ', 0),
(253, 'Hollisfek', 'leehawk24@gmx.com', 0, 'Sexy girls for the night in your town: http://to.ht/adultdating92403', 0),
(254, 'JamesduEvy', 'bubbalou21@hotmail.com', 0, 'The best women for sex in your town: http://www.lookweb.it/adultdating76153', 0),
(255, 'RaymondPes', 'juju303@hotmail.com', 0, 'Meet sexy girls in your city: http://www.abcagency.se/adultdating40080', 0),
(256, 'VincentWaymn', 'cjuncadella@aol.com', 0, 'Beautiful girls for sex in your city: http://corta.co/adultdating45687', 0),
(257, 'ThomasNor', 'byntest2019@gmail.com', 218684717, '\"Traffic is expensive\" \r\n \r\n\"Traffic is hard\" \r\n \r\n\"I donâ€™t know where to get traffic fromâ€ \r\n \r\nIf you are experiencing this problem, consider social media marketing through influencer traffic on Snapchat. Itâ€™s cheap, simple, and straight forward. ', 0),
(258, 'RaymondPes', 'shaon3@msn.com', 0, 'Wie man zusÐ“Â¤tzliches Geld von zu Hause aus verdient - Ð²â€šÂ¬ 3000 pro Tag einfach: http://to.ht/bestinvestcrepto26855', 0),
(259, 'VincentWaymn', 'codend@msn.com', 0, 'What is the best cryptocurrency to invest in 2019: http://www.abcagency.se/bestinvestcrepto44478', 0),
(260, 'JamesduEvy', 'alps62@hotmail.com', 0, 'Comment gagner 3000 Ð²â€šÂ¬ Fast Fast Money | Le budget occupÐ“Â©: http://www.vkvi.net/bestinvestcrepto89976', 0),
(261, 'Hollisfek', 'chadroberts51@yahoo.com', 0, 'Get $1000 Ð²Ð‚â€œ $6000 A Day: https://lil.ink/bestinvestcrepto49040', 0),
(262, 'RaymondPes', 'alpay01@hotmail.com', 0, 'Trouvez-vous une fille pour la nuit dans votre ville: http://webhop.se/bestadultdating24201', 0),
(263, 'VincentWaymn', 'mstrumpet@msn.com', 0, 'Encuentra una chica para pasar la noche en tu ciudad.: https://lil.ink/bestadultdating79333', 0),
(264, 'JamesduEvy', 'shogun88@msn.com', 0, 'Sexy Girls fÐ“Ñ˜r die Nacht in deiner Stadt: http://goto.iamaws.com/bestadultdating67173', 0),
(265, 'Hollisfek', 'dmaia@hotmail.com', 0, 'Find yourself a girl for the night in your city: http://www.vkvi.net/bestadultdating31369', 0),
(266, 'PrestonTaiff', 'savemoney@takecreditcardsfree.com', 114777477, 'Hello I was wanting to see, if you wanted to stop paying fees to accept credit cards? I am with http://www.TakeCreditCardsFree.com and with us, you can take every type of credit card, you get your money deposited within 2 business days and you pay 0% plus', 0),
(267, 'RobertDrifs', 'instaresultsteam@gmail.com', 118315162, 'Hi there, \r\n \r\nI came across your website and wanted to get in touch. \r\n \r\nI run an Instagram Growth Service helping thousands of clients to grow their Instagram significantly with REAL and RELEVANT followers, through organic marketing techniques. \r\n \r\nYo', 0),
(268, 'BoostYourNetwork', 'byntest2019@gmail.com', 221274382, 'If you are experiencing traffic problems and need more views and reach on your product or service, consider social media marketing through influencer traffic on Snapchat. Itâ€™s cheap, simple, and straight forward. All we do is post your ad on an influenc', 0),
(269, 'RaymondPes', 'catherine011@hotmail.com', 0, 'Sexy girls for the night in your town: http://rih.co/adultdatinginyourcity19019', 0),
(270, 'JamesduEvy', 'carrie_alex@hotmail.com', 0, 'Find yourself a girl for the night in your city: http://to.ht/bestadultdating74622', 0),
(271, 'VincentWaymn', 'djveschi@yahoo.com', 0, 'Meet sexy girls in your city: http://jnl.io/adultdatinginyourcity14847', 0),
(272, 'WilliamHassy', 'office.pivotaluk@gmail.com', 273538466, 'I was trying to reach your CEO and CTO or Teach lead. We already worked with few companies in your space. \r\nWe are a developer-founded, developer-run firm, specialized in dedicated software teams. \r\n \r\nOur value: \r\n1.    Hire top developers at a very comp', 0),
(273, 'Hollisfek', 'missmeaka2001@yahoo.com', 0, 'Meet sexy girls in your city: http://jnl.io/bestadultdating83647', 0),
(274, 'DavidHic', 'luarie.pevitt@gmail.com', 312584383, 'Dear Sir/Madam, \r\n \r\nI have an important transaction that will benefit us both.i need your help in this transaction as you shall be rewarded for your help and efforts. \r\nGet back to me on my private email for more details: nuoshad28@gmail.com \r\n \r\nwaiting', 0),
(275, 'VincentWaymn', 'masawyer2@yahoo.com', 0, 'Find yourself a girl for the night in your city: http://www.abcagency.se/bestadultdating92545', 0),
(276, 'RaymondPes', 'juana80@hotmail.com', 0, 'Beautiful women for sex in your town: http://goto.iamaws.com/bestadultdating25957', 0),
(277, 'JamesduEvy', 'cgrassotti@hotmail.com', 0, 'Sexy girls for the night in your town: http://corta.co/adultdatinginyourcity82226', 0),
(278, 'RaymondPes', 'brandon_hilpert@hotmail.com', 0, 'How to make $450 per hour: http://www.vkvi.net/5000perday97248', 0),
(279, 'Hollisfek', 'vickilynn36@msn.com', 0, 'How to Make $30000 FAST | Fast Money | The Busy Budgeter: https://lil.ink/5000perday83655', 0),
(280, 'JamesduEvy', 'bblumenthal@hotmail.com', 0, 'Beautiful girls for sex in your city: http://goto.iamaws.com/bestadultdating71861', 0),
(281, 'VincentWaymn', 'mohamedae@hotmail.com', 0, 'The best girls for sex in your town: http://to.ht/adultdatinginyourcity51677', 0),
(282, 'RaymondPes', 'cassaroo@hotmail.com', 0, 'Where to invest $ 3000 once and receive every month from $ 55000: http://valeriemace.co.uk/5000perday98844', 0),
(283, 'Hollisfek', 'latina_sensual@hotmail.com', 0, 'How to make $450 per hour: https://lil.ink/5000perday16004', 0),
(284, 'VincentWaymn', 'intlxscn@msn.com', 0, 'Sexy girls for the night in your town: https://aaa.moda/bestadultdating63542', 0),
(285, 'JamesduEvy', 'hzlir@msn.com', 0, 'Beautiful women for sex in your town: https://lil.ink/bestadultdating50637', 0),
(286, 'RaymondPes', 'muellerl@hotmail.com', 0, 'Beautiful girls for sex in your city: http://jnl.io/bestadultdating51528', 0),
(287, 'JamesduEvy', 'rrolke@hotmail.com', 0, 'Beautiful women for sex in your town: http://www.vkvi.net/bestadultdating13118', 0),
(288, 'VincentWaymn', 'mrs_ladywolf2go@yahoo.com', 0, 'The best girls for sex in your town: https://lil.ink/bestadultdating19563', 0),
(289, 'Hollisfek', 'littleyellowcurdoghopper@yahoo.com', 0, 'Meet sexy girls in your city: http://webhop.se/bestadultdating38430', 0),
(290, 'JamesduEvy', 'amew72@hotmail.com', 0, 'Cryptocurrency Trading & Investing Strategie voor 2019. Ontvang een passief inkomen van $ 7.000 per maand: http://rih.co/investcrypto64010', 0),
(291, 'VincentWaymn', 'gobette@hotmail.com', 0, 'Wie konnen Sie 2019 in Bitcoins investieren und ein passives Einkommen von 7.000 USD pro Monat erzielen?: http://www.abcagency.se/investcrypto12604', 0),
(292, 'Hollisfek', 'c_heyser@msn.com', 0, 'If you invested $1,000 in bitcoin in 2011, now you have $4 million: http://corta.co/investcrypto91095', 0),
(293, 'RaymondPes', 'roland056@hotmail.com', 0, 'Cryptocurrency Trading & Investing Strategy for 2019. Receive passive income of $ 7,000 per month: https://aaa.moda/investcrypto29067', 0),
(294, 'RaymondPes', 'cheryllcatalinabg8385@yahoo.com', 0, 'Invest $ 5,000 in cryptocurrency once and get $ 7,000 passive income per month: http://to.ht/cryptoinvest58006', 0),
(295, 'JamesduEvy', 'srgegrf565@hotmail.com', 0, 'How to invest in bitcoins in 2019 and receive passive income of $ 7,000 per month: http://www.lookweb.it/cryptoinvest99009', 0),
(296, 'VincentWaymn', 'tenta.cleox.me@gmail.com', 0, 'Cryptocurrency Trading & Investing Strategy for 2019. Receive passive income of $ 7,000 per month: https://lil.ink/cryptoinvest37864', 0),
(297, 'VincentWaymn', 'zappa1405@yahoo.co.uk', 0, 'You win iphone X - Apple Community: http://www.lookweb.it/winiphone80959', 0),
(298, 'RaymondPes', 'mauxanhcuabien_hoanghontim@yahoo.com.vn', 0, 'You win iphone X - Apple Community: http://to.ht/winiphone12671', 0),
(299, 'JamesduEvy', 'noea77aque@hotmail.com', 0, 'You win iphone X - Apple Community: http://rih.co/winiphone14417', 0),
(300, 'Lowellboany', 'cmyan@msn.com', 0, 'iPhone X Giveaway 2019 - Participate to Win an iPhone X: http://rih.co/winiphone60385', 0),
(301, 'Bryantslism', 'harveytom@hotmail.com', 0, 'Win an iPhone X | Free Competitions: https://tinyurl.com/winiphone93841', 0),
(302, 'MarvinErymn', 'x_miquel@hotmail.com', 0, 'You win iphone X - Apple Community: http://corta.co/winiphone99265', 0),
(303, 'Richardgobre', 'shgtowvp@msn.com', 0, 'Win an iPhone X | Free Competitions: http://corta.co/winiphone65206', 0),
(304, 'KevindercE', 'thum8.tom@yandex.com', 275653316, 'Do you use whey protein isolate?  Egg protein? \r\n \r\nBuy 3lbs-300lbs at bulk factory direct prices with free FedEx shipping! \r\n \r\nHighest quality.  BEST possible taste.  No fillers or additives. \r\n \r\nhttps://newworldprotein.com/collections/proteins/product', 0),
(305, 'MarvinErymn', 'rocavic@hotmail.com', 0, 'The best girls for sex in your town: http://www.vkvi.net/adultdatingincity83433', 0),
(306, 'Lowellboany', 'rcizek@msn.com', 0, 'Beautiful girls for sex in your city: http://rih.co/adultdatingincity54148', 0),
(307, 'Bryantslism', 'witchy_vic@msn.com', 0, 'Beautiful girls for sex in your city: http://valeriemace.co.uk/adultdatingincity80897', 0),
(308, 'Richardgobre', 'sparkle969@hotmail.com', 0, 'Meet sexy girls in your city: https://lil.ink/adultdatingincity62732', 0),
(309, 'JamesduEvy', 'boblinfortino@yahoo.com', 0, 'Beautiful girls for sex in your city: https://lil.ink/adultdatingincity38658', 0),
(310, 'RaymondPes', 'myrnagarza1@yahoo.com', 0, 'Find yourself a girl for the night in your city: http://goto.iamaws.com/adultdatingincity20425', 0),
(311, 'VincentWaymn', 'ajollychap@yahoo.co.uk', 0, 'Find yourself a girl for the night in your city: https://lil.ink/adultdatingincity38658', 0),
(312, 'Hollisfek', 'gyisaw@gmail.com', 0, 'Beautiful girls for sex in your city: http://valeriemace.co.uk/adultdatingincity75529', 0),
(313, 'RaymondPes', 'kathymoore1254@gmail.com', 0, 'If you invested $1,000 in bitcoin in 2011, now you have $4 million: http://goto.iamaws.com/57866', 0),
(314, 'JamesduEvy', 'thetinsnail@yahoo.co.uk', 0, 'Invest $ 5,000 in cryptocurrency once and get $ 7,000 passive income per month: https://aaa.moda/26404', 0),
(315, 'VincentWaymn', 'Natkamon003@hotmail.com', 0, 'Cryptocurrency Trading & Investing Strategy for 2019. Receive passive income of $ 7,000 per month: https://lil.ink/INVESTINBITCOIN48214', 0),
(316, 'Bryantslism', 'rudyd4@hotmail.com', 0, 'UPDATE: Cryptocurrency Investing Strategy - Q2 2019. Receive passive income of $ 7,000 per month: http://corta.co/INVESTINBITCOIN85833', 0),
(317, 'Lowellboany', '', 0, 'Cryptocurrency Trading & Investing Strategy for 2019. Receive passive income of $ 7,000 per month: http://ttree.co/49629', 0),
(318, 'MarvinErymn', '', 0, 'Invest $ 5,000 in Bitcoin mining once and get $ 7,000 passive income per month: http://webhop.se/20401', 0),
(319, 'Glennref', 'leonardoTip@gmail.com', 115531227, 'We offer you the opportunity to advertise your products and services. \r\nCiao! There is an interesting offer for you. I can help you with sending  your commercial offers or messages through feedback forms. The advantage of this method is that the messages ', 0),
(320, 'Lowellboany', 'annefcc@hotmail.com', 0, 'Win an iPhone X | Free Competitions: http://rih.co/winiphonex36457', 0),
(321, 'Bryantslism', 'spangle18@hotmail.com', 0, 'Win an iPhone X | Free Competitions: http://www.lookweb.it/winiphonex57334', 0),
(322, 'Hollisfek', 'bhiravabhatla@gmail.com', 0, 'You win iphone X - Apple Community: http://www.p1-uranai.com/rank.cgi?mode=link&id=538&url=https://vk.cc/9hFGzh', 0),
(323, 'Bryantslism', 'cera18@hotmail.com', 0, 'Find yourself a girl for the night in your city: http://117.102.220.94.static.zoot.jp/link.php?url=https://vk.cc/9hUq5L', 0),
(324, 'Lowellboany', 'roitanman@hotmail.com', 0, 'Sexy girls for the night in your town: http://gamespider.co.uk/redirect.php?retailer=0&deeplink=https://vk.cc/9hUq5L', 0),
(325, 'MarvinErymn', 'brduck@hotmail.com', 0, 'Sexy girls for the night in your town: https://therisetothetop.com/redirect.php?u=https://vk.cc/9hUq5L', 0),
(326, 'Hollisfek', 'nxuhmollin@hotmail.com', 0, 'Beautiful girls for sex in your city: https://gcup.ru/go?https://vk.cc/9hUq5L', 0),
(327, 'JamesduEvy', 'kumron2008@hotmail.com', 0, 'Find yourself a girl for the night in your city: http://www.makbiz.net/adv.aspx?nurl=https://vk.cc/9hUq5L', 0),
(328, 'RaymondPes', 'pierpiero84@hotmail.com', 0, 'Beautiful women for sex in your town: http://xn--80ajncm1aed.xn--p1ai/bitrix/rk.php?goto=https://vk.cc/9hUq5L', 0),
(329, 'VincentWaymn', 'Sharonov.trash@gmail.com', 0, 'The best women for sex in your town: http://feedsort.com/articleView.php?id=324626&goto=https://vk.cc/9hUq5L', 0),
(330, 'Richardgobre', 'iowacowgirl@yahoo.com', 0, 'The best girls for sex in your town: http://bemad.ru/bitrix/rk.php?goto=https://vk.cc/9hUq5L', 0),
(331, 'LouisSuimb', 'svetlanacol0sova@yandex.ua', 383772863, 'Grow your bitcoins by 10% per 2 days. \r\nProfit comes to your btc wallet automatically. \r\n \r\nTry  http://bm-syst.xyz \r\nit takes 2 minutes only and let your btc works for you! \r\n \r\nGuaranteed by the blockchain technology!', 0),
(332, 'Bryantslism', 'mshyde68@msn.com', 0, 'Beautiful girls for sex in your city: http://data-rooms.ru/bitrix/redirect.php?event1=&event2=&event3=&goto=https://vk.cc/9hUq5L', 0),
(333, 'Lowellboany', 'emma026@hotmail.com', 0, 'The best women for sex in your town: https://vkperson.com/redirect.php?link=https://vk.cc/9hUq5L', 0),
(334, 'RaymondPes', 'lulitamatthewodggqt@yahoo.com', 0, 'The best girls for sex in your town: http://blog.rednael.com/ct.ashx?id=03d0efc2-80fe-4bee-b211-203a61bb37a3&url=https://vk.cc/9hUq5L', 0),
(335, 'Hollisfek', 'subaru60641@yahoo.com', 0, 'Sexy girls for the night in your town: https://digerati.org/redirect.php?url=https://vk.cc/9hUq5L', 0),
(336, 'Richardgobre', 'luke_freak93@yahoo.com', 0, 'Sexy girls for the night in your town: http://synad3.nuffnang.com.ph/track/click?s=541e6683&urlid=3796&ref=www.ivanhenares.com/2010/07/south-cotabato-lake-sebus-seven-falls.html&id=1005690&bid=2776&goto=https://vk.cc/9hUq5L', 0),
(337, 'Salman Khalifa', 'ta7338612@gmail.com', 118513421, 'Hello, loopsfashions.com \r\n \r\nI invite you to partner with us and benefit in our new Loan and Project funding program. We offer flexible loans and funding only as debt financing for various projects bypassing the usual rigorous and formal loan procedures.', 0),
(338, 'RaymondPes', 'ngaytinhkhoi2015@yahoo.com', 0, 'Invest $ 5,000 in Bitcoin once and get $ 7,000 passive income per month: http://www.ccedisp.com/about/redirect.php?url=https://vk.cc/9iSaPJ', 0),
(339, 'JamesduEvy', 'aley01@hotmail.com', 0, 'If you invested $1,000 in bitcoin in 2011, now you have $4 million: http://cgibin1.com/psecure/coupon.php?a=https://vk.cc/9iSaPJ', 0),
(340, 'Hollisfek', 'mawin2520@hotmail.com', 0, 'Invest $ 5,000 in cryptocurrency once and get $ 7,000 passive income per month: http://kemp103.ru/bitrix/rk.php?goto=https://vk.cc/9iSaPJ', 0),
(341, 'MarvinErymn', 'amernr@hotmail.com', 0, 'Invest $ 5,000 in cryptocurrency once and get $ 7,000 passive income per month: http://www.pinhole-eyemask.jp/link/rank.cgi?mode=link&id=57&url=https://vk.cc/9iSaPJ', 0),
(342, 'Lowellboany', 'f_tyler@msn.com', 0, 'Invest in mining cryptocurrency $ 5000 once and get passive income of $ 7000 per month: http://laosubenben.com/home/link.php?url=https://vk.cc/9iSaPJ', 0),
(343, 'Bryantslism', 'wnanney@msn.com', 0, 'How to invest in bitcoins $ 5000 - get a return of up to 2000%: http://rih.co/bitcoininvest42394', 0),
(344, 'Richardgobre', 'business132@hotmail.com', 0, 'Cryptocurrency Trading & Investing Strategy for 2019. Receive passive income of $ 7,000 per month: http://sargona.ru/cgi-bin/links/go.pl?url=https://vk.cc/9iSaPJ', 0),
(345, 'RaymondPes', 'haiquanle204@gmail.com', 0, 'Invest in mining cryptocurrency $ 5000 once and get passive income of $ 7000 per month: http://jnl.io/investbitcoin37181', 0),
(346, 'JamesduEvy', 'abdul_rodriguez@hotmail.com', 0, 'Invest $ 5,000 in cryptocurrency once and get $ 7,000 passive income per month: https://lil.ink/investbitcoin41693', 0),
(347, 'VincentWaymn', 'tatianablaidarb0884@yahoo.com', 0, 'Invest in mining cryptocurrency $ 5000 once and get passive income of $ 7000 per month: http://corta.co/investbitcoin45388', 0),
(348, 'Hollisfek', 'sarinablond@yahoo.com', 0, 'UPDATE: Cryptocurrency Investing Strategy - Q2 2019. Receive passive income of $ 7,000 per month: http://www.abcagency.se/investbitcoin31847', 0),
(349, 'Lowellboany', 'chsks@hotmail.com', 0, 'How to invest in bitcoins $ 5000 - get a return of up to 2000%: http://ttree.co/investbitcoin21228', 0),
(350, 'Bryantslism', 'henrik13@hotmail.com', 0, 'How to invest in bitcoins $ 5000 - get a return of up to 2000%: http://goto.iamaws.com/investbitcoin34907', 0),
(351, 'MarvinErymn', 'alug32@hotmail.com', 0, 'Invest $ 5,000 in cryptocurrency once and get $ 7,000 passive income per month: http://www.lookweb.it/investbitcoin99235', 0),
(352, 'Richardgobre', 'gavanm@yahoo.com', 0, 'UPDATE: Cryptocurrency Investing Strategy - Q2 2019. Receive passive income of $ 7,000 per month: http://ttree.co/investbitcoin39520', 0),
(353, 'Harlanimary', 'gunrussia@scryptmail.com', 147337462, '25 charging traumatic pistols shooting automatic fire! Modified Makarov pistols with a silencer! Combat Glock 17 original or with a silencer! And many other types of firearms without a license, without documents, without problems! \r\nDetailed video reviews', 0),
(354, 'MarvinErymn', 'chamgal03@hotmail.com', 0, 'Enter to win an iPhone XS Max & AirPods in this free giveaway: http://corta.co/winiphone74980', 0),
(355, 'Richardgobre', 'caseyjp@hotmail.com', 0, 'Iphone X Giveaway! Win iPhone for free: https://lil.ink/winiphone51746', 0),
(356, 'RaymondPes', 'nbrantley428@yahoo.com', 0, 'Enter to win an iPhone XS Max & AirPods in this free giveaway: http://webhop.se/winiphone58320', 0),
(357, 'VincentWaymn', 'misskrausi@gmail.com', 0, 'You win iphone X - Apple Community: http://rih.co/winiphone98468', 0),
(358, 'JamesduEvy', 'sandrineblock@web.de', 0, 'Enter to win an iPhone XS Max & AirPods in this free giveaway: http://to.ht/winiphone18909', 0),
(359, 'RichardNaime', 'sitegreatwordpress@gmail.com', 2147483647, 'Hello, i was looking into your website and i want to tell you that the template of your website is not that modern, \r\nI am a webdesign company and we do have modern premium templates for your website, we do work with wordpress. \r\nWe do install and manage ', 0),
(360, 'Lowellboany', '', 0, 'iPhone X Giveaway 2019 - Participate to Win an iPhone X: https://lil.ink/winiphone86219', 0),
(361, 'MarvinErymn', 'soler36@hotmail.com', 0, 'iPhone X Giveaway 2019 - Participate to Win an iPhone X: http://www.abcagency.se/winiphone51440', 0),
(362, 'Hollisfek', 'reema2006_uk@hotmail.com', 0, 'Win an iPhone X | Free Competitions: http://rih.co/winiphone70960', 0),
(363, 'RaymondPes', 'kool_kid9517@hotmail.com', 0, 'Beautiful girls for sex in your city: http://goto.iamaws.com/bestadultdating58492', 0),
(364, 'VincentWaymn', 'atiporn.2555@gmail.com', 0, 'Beautiful women for sex in your town: http://goto.iamaws.com/bestadultdating13853', 0),
(365, 'JamesduEvy', 'hilda827@yahoo.com.hk', 0, 'Beautiful women for sex in your town: http://www.vkvi.net/bestadultdating13698', 0),
(366, 'Hollisfek', 'dobachma@gmail.com', 0, 'The best girls for sex in your town: http://www.vkvi.net/bestadultdating97754', 0);

-- --------------------------------------------------------

--
-- Table structure for table `deals_of_the_day`
--

CREATE TABLE `deals_of_the_day` (
  `s.no` int(11) NOT NULL,
  `id` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `sleeve_type` varchar(255) NOT NULL,
  `shirt_type` varchar(255) NOT NULL,
  `shirt_pattern` varchar(200) NOT NULL,
  `shirt_size` varchar(200) NOT NULL,
  `shirt_range` varchar(200) NOT NULL,
  `shirt_color` varchar(200) NOT NULL,
  `offer_range` int(11) NOT NULL,
  `created_date` date NOT NULL,
  `created_time` time NOT NULL,
  `description` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `del_status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_address`
--

CREATE TABLE `delivery_address` (
  `id` int(11) NOT NULL,
  `session_name` varchar(255) NOT NULL,
  `session_password` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `mobile` int(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `zipcode` int(255) NOT NULL,
  `card_name` varchar(255) NOT NULL DEFAULT '0',
  `card_number` varchar(255) NOT NULL DEFAULT '0',
  `expiry_month` int(50) NOT NULL DEFAULT 0,
  `expiry_year` varchar(255) NOT NULL DEFAULT '0',
  `wish_status` varchar(255) NOT NULL,
  `created_date` date NOT NULL,
  `created_time` time NOT NULL,
  `del_status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `delivery_address`
--

INSERT INTO `delivery_address` (`id`, `session_name`, `session_password`, `firstname`, `address`, `mobile`, `state`, `city`, `country`, `zipcode`, `card_name`, `card_number`, `expiry_month`, `expiry_year`, `wish_status`, `created_date`, `created_time`, `del_status`) VALUES
(3, 'jo@gmail.com', '789', 'jude', 'Vinayaka Nagar Colony1, Mylapore, Chennai, TamilNadu, India', 1234567899, 'TN', 'Chennai', 'India', 600004, 'geeeer', '4591 6200 2081 9548', 5, '2023', '71e4dc58cf6c5ee0b9b48c3b401b8d36', '0000-00-00', '00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `hiddden`
--

CREATE TABLE `hiddden` (
  `id` int(11) NOT NULL,
  `t_shirt_men_brand` varchar(255) NOT NULL,
  `t_shirt_women_brand` varchar(255) NOT NULL,
  `current_date` date NOT NULL,
  `current_time` time NOT NULL,
  `Product_price` varchar(255) NOT NULL DEFAULT '0',
  `del_status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hiddden`
--

INSERT INTO `hiddden` (`id`, `t_shirt_men_brand`, `t_shirt_women_brand`, `current_date`, `current_time`, `Product_price`, `del_status`) VALUES
(21, 'LT1013', 'Men_brand', '2017-12-21', '17:29:00', '0', 0),
(22, 'LT1011', 'Women_brand', '2017-12-04', '21:00:00', '0', 0),
(23, 'LT1012', 'Others', '2017-12-13', '09:37:00', '0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `user`, `password`, `status`) VALUES
(1, '1234', '1234', 0),
(2, 'admin', 'admin', 0);

-- --------------------------------------------------------

--
-- Table structure for table `loops_categorie`
--

CREATE TABLE `loops_categorie` (
  `id` int(11) NOT NULL,
  `t_shirt_men_brand` varchar(255) NOT NULL,
  `t_shirt_women_brand` varchar(255) NOT NULL,
  `Product_price` int(255) NOT NULL,
  `current_date` date NOT NULL,
  `current_time` time NOT NULL,
  `del_status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loops_categorie`
--

INSERT INTO `loops_categorie` (`id`, `t_shirt_men_brand`, `t_shirt_women_brand`, `Product_price`, `current_date`, `current_time`, `del_status`) VALUES
(1, 'LT1000', 'Men Shirt', 0, '2017-12-18', '12:42:00', 0),
(2, 'LT1001', 'Loops ', 0, '2017-12-18', '12:42:00', 0),
(3, 'LT1002', 'Others', 0, '2017-12-18', '12:43:30', 0),
(4, 'LT1003', 'MEN WEAR', 0, '2017-12-20', '17:11:56', 0),
(5, 'LT1005', 'WOMENWEAR', 0, '2017-12-20', '17:10:59', 0),
(11, 'LT11', 'mw', 0, '2017-12-21', '14:53:59', 0),
(12, 'LT19', 'loop menwear', 0, '2017-12-21', '17:54:59', 0),
(18, 'LT10009', 'wem', 0, '2017-12-21', '17:10:59', 0),
(20, 'LT20', 'mens t-shirts', 524, '2017-12-21', '18:59:59', 0),
(35, 'LT1006', 'WOMENWEA', 200, '2017-12-21', '17:18:23', 1);

-- --------------------------------------------------------

--
-- Table structure for table `loops_category`
--

CREATE TABLE `loops_category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_status` int(255) NOT NULL,
  `created_date` date NOT NULL,
  `created_time` time NOT NULL,
  `del_status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loops_category`
--

INSERT INTO `loops_category` (`id`, `category_name`, `category_status`, `created_date`, `created_time`, `del_status`) VALUES
(1, 'Menswears', 1, '2017-12-16', '10:03:00', 0),
(2, 'Womenswear', 2, '2017-12-16', '10:15:13', 0),
(3, 'Kidswear', 3, '2017-12-16', '10:36:16', 0),
(4, 'Sports Wear', 4, '2017-12-16', '10:46:30', 0),
(5, 'Others', 0, '2017-12-23', '11:25:40', 0);

-- --------------------------------------------------------

--
-- Table structure for table `loops_kids_men_boxers`
--

CREATE TABLE `loops_kids_men_boxers` (
  `id` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `boxer_type` varchar(255) NOT NULL,
  `boxer_pattern` varchar(255) NOT NULL,
  `boxer_size` varchar(255) NOT NULL,
  `boxer_range` varchar(255) NOT NULL,
  `boxer_color` varchar(255) NOT NULL,
  `created_date` date NOT NULL,
  `created_time` time NOT NULL,
  `del_status` int(11) NOT NULL DEFAULT 0,
  `description` varchar(255) NOT NULL,
  `offer_range` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loops_kids_men_boxers`
--

INSERT INTO `loops_kids_men_boxers` (`id`, `file_name`, `boxer_type`, `boxer_pattern`, `boxer_size`, `boxer_range`, `boxer_color`, `created_date`, `created_time`, `del_status`, `description`, `offer_range`) VALUES
(65, 'Boxer/KidsMen/01-0e34b2eb.jpg', 'Kids Men Printed Boxers2', 'Kids Men Solid Boxers', '10-12 years', '860', '#000000', '2017-12-30', '14:07:50', 0, 'loops', 100),
(66, 'Boxer/KidsMen/c-4-6de89685.png', 'Kids Men Printed Boxers', 'Kids Men Solid Boxers', '6-8 years', '1112', '#000000', '2018-01-02', '11:41:05', 0, 'loops', 1500);

-- --------------------------------------------------------

--
-- Table structure for table `loops_kids_men_shirt`
--

CREATE TABLE `loops_kids_men_shirt` (
  `id` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `sleeve_type` varchar(255) NOT NULL,
  `shirt_type` varchar(255) NOT NULL,
  `shirt_pattern` varchar(255) NOT NULL,
  `shirt_size` varchar(255) NOT NULL,
  `shirt_range` varchar(255) NOT NULL,
  `shirt_color` varchar(255) NOT NULL,
  `created_date` date NOT NULL,
  `created_time` time NOT NULL,
  `del_status` int(11) NOT NULL DEFAULT 0,
  `description` varchar(255) NOT NULL,
  `offer_range` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loops_kids_men_shirt`
--

INSERT INTO `loops_kids_men_shirt` (`id`, `file_name`, `sleeve_type`, `shirt_type`, `shirt_pattern`, `shirt_size`, `shirt_range`, `shirt_color`, `created_date`, `created_time`, `del_status`, `description`, `offer_range`) VALUES
(26, 'Tshirt/KidsWomen/01-0e34b2eb.jpg', 'Kids Men Half Sleeve Shirts', 'Kids Men Polo Neck Shirts', 'Kids Men Printed Shirts', '6-8 years', '816', '#000000', '2017-12-28', '18:44:42', 0, 'loops', 1000),
(27, 'Shirt/KidsMen/brand.JPG', 'KidsMen Full Sleeve Shirts', 'Kids Men Crew Neck Shirt', 'Kids Men Striped Shirts', '4-6 years', '600', '#c0c0c0', '2017-12-30', '13:03:38', 0, 'loops', 800);

-- --------------------------------------------------------

--
-- Table structure for table `loops_kids_men_sports_wear`
--

CREATE TABLE `loops_kids_men_sports_wear` (
  `id` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `sleeve_type` varchar(255) NOT NULL,
  `shirt_type` varchar(255) NOT NULL,
  `shirt_pattern` varchar(255) NOT NULL,
  `shirt_size` varchar(255) NOT NULL,
  `shirt_range` varchar(255) NOT NULL,
  `shirt_color` varchar(255) NOT NULL,
  `created_date` date NOT NULL,
  `created_time` time NOT NULL,
  `del_status` int(11) NOT NULL DEFAULT 0,
  `description` varchar(255) NOT NULL,
  `offer_range` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loops_kids_men_sports_wear`
--

INSERT INTO `loops_kids_men_sports_wear` (`id`, `file_name`, `sleeve_type`, `shirt_type`, `shirt_pattern`, `shirt_size`, `shirt_range`, `shirt_color`, `created_date`, `created_time`, `del_status`, `description`, `offer_range`) VALUES
(1, 'Sports/KidsMen/1-AM-400x400.png', 'Kids Men Full Sleeve T-Shirts', 'Kids Men V Neck T-Shirts', 'Kids Men Printed T-Shirts', '4-6 years', '450', '#00ff00', '2017-12-27', '15:41:20', 0, 'loops', 1010),
(2, 'Sports/KidsMen/13.jpg', 'Kids Men Half Sleeve T-Shirts', 'Kids Men Crew Neck T-Shirt', 'Kids Men Striped T-Shirts', '6-8 years', '850', '#400040', '2017-12-27', '15:52:54', 0, 'loops', 0),
(3, 'Sports/KidsMen/b1c291602b722fd2b12fec520dafd56d.jpg', 'Kids Men Full Sleeve T-Shirts', 'Kids Men Crew Neck T-Shirt', 'Kids Men Printed T-Shirts', '8-10 years', '750', '#000000', '2017-12-28', '19:15:43', 0, '', 0),
(4, 'Sports/KidsMen/big--tall-minimal-wardrobe.jpg', 'Kids Men Full Sleeve T-Shirts', 'Kids Men Crew Neck T-Shirt', 'Kids Men Printed T-Shirts', '8-10 years', '500', '#000000', '2017-12-28', '19:15:43', 0, '', 0),
(5, 'Sports/KidsMen/calvin-klein-men-white-v-necks.jpg', 'Kids Men Full Sleeve T-Shirts', 'Kids Men Crew Neck T-Shirt', 'Kids Men Printed T-Shirts', '8-10 years', '450', '#000000', '2017-12-28', '19:15:43', 0, '', 0),
(6, 'Sports/KidsMen/-crew-neck-lights.jpg', 'Kids Men Full Sleeve T-Shirts', 'Kids Men Crew Neck T-Shirt', 'Kids Men Printed T-Shirts', '8-10 years', '600', '#000000', '2017-12-28', '19:15:43', 0, '', 0),
(7, 'Sports/KidsMen/crew-neck-t-shirt-new-XR28.jpg', 'Kids Men Full Sleeve T-Shirts', 'Kids Men Crew Neck T-Shirt', 'Kids Men Printed T-Shirts', '8-10 years', '320', '#000000', '2017-12-28', '19:15:43', 0, '', 0),
(8, 'Sports/KidsMen/gg-400x400.jpg', 'Kids Men Full Sleeve T-Shirts', 'Kids Men Crew Neck T-Shirt', 'Kids Men Printed T-Shirts', '8-10 years', '400', '#000000', '2017-12-28', '19:15:43', 0, '', 0),
(9, 'Sports/KidsMen/striped01.jpg', 'Kids Men Full Sleeve T-Shirts', 'Kids Men Crew Neck T-Shirt', 'Kids Men Printed T-Shirts', '8-10 years', '612', '#000000', '2017-12-28', '19:15:43', 0, '', 0),
(10, 'Sports/KidsMen/striped10.jpg', 'Kids Men Full Sleeve T-Shirts', 'Kids Men Crew Neck T-Shirt', 'Kids Men Printed T-Shirts', '10-12 years', '702', '#000000', '2017-12-28', '19:15:43', 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `loops_kids_men_tshirt`
--

CREATE TABLE `loops_kids_men_tshirt` (
  `id` varchar(10) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `sleeve_type` varchar(255) NOT NULL,
  `shirt_type` varchar(255) NOT NULL,
  `shirt_pattern` varchar(255) NOT NULL,
  `shirt_size` varchar(255) NOT NULL,
  `shirt_range` varchar(255) NOT NULL,
  `shirt_color` varchar(255) NOT NULL,
  `created_date` date NOT NULL,
  `created_time` time NOT NULL,
  `del_status` int(11) NOT NULL DEFAULT 0,
  `description` varchar(255) NOT NULL,
  `offer_range` int(11) NOT NULL,
  `star` int(11) NOT NULL DEFAULT 0,
  `cart` varchar(255) NOT NULL DEFAULT 'kidmen',
  `wish_status` int(255) NOT NULL,
  `qnto` varchar(255) DEFAULT NULL,
  `anto` varchar(255) DEFAULT NULL,
  `Ashik` varchar(255) DEFAULT NULL,
  `ts shrikrishna` varchar(255) DEFAULT NULL,
  `Chenthil` varchar(255) DEFAULT NULL,
  `Murugan.l` varchar(255) DEFAULT NULL,
  `Vairavel` varchar(255) DEFAULT NULL,
  `sam` varchar(255) DEFAULT NULL,
  `jo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loops_kids_men_tshirt`
--

INSERT INTO `loops_kids_men_tshirt` (`id`, `file_name`, `sleeve_type`, `shirt_type`, `shirt_pattern`, `shirt_size`, `shirt_range`, `shirt_color`, `created_date`, `created_time`, `del_status`, `description`, `offer_range`, `star`, `cart`, `wish_status`, `qnto`, `anto`, `Ashik`, `ts shrikrishna`, `Chenthil`, `Murugan.l`, `Vairavel`, `sam`, `jo`) VALUES
('KMT1000', 'Tshirt/KidsMen/3.jpg', 'Half Sleeves', 'Polo Neck', 'Striped', '6-8 years', '1673', 'Pink', '2017-12-28', '12:07:27', 0, 'loops ', 800, 4, 'deal', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('KMT1001', 'Tshirt/KidsMen/Bio-Kid-Multicolor-Cotton-Half-SDL252296929-1-b0fb4.jpg', 'Half Sleeves', 'Polo Neck', 'Striped', '6-8 years', '785', 'Black', '2017-12-28', '16:20:23', 1, 'loops garment\r\n', 0, 0, 'kidmen', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('KMT1002', 'Tshirt/KidsMen/Cartoon-Network-Ben-10-Half-SDL728482184-1-b8e77.jpg', 'Half Sleeves', 'Crew Neck', 'Printed', '4-6 years', '890', 'Black', '2017-12-28', '16:20:23', 0, 'loops garment', 0, 4, 'kidmen', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('KMT1003', 'Tshirt/KidsMen/Colour-Kids-Boys-Printed-Polo-SDL067242846-1-b8df1.jpg', 'Half Sleeves', 'Polo Neck', 'Printed', '10-12 years', '640', 'Black', '2017-12-28', '18:39:45', 0, 'loops garment', 0, 0, 'kidmen', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('KMT1004', 'Tshirt/KidsMen/Dongli-Boys-Printed-T-shirt-SDL948056720-2-480d3.jpg', 'Half Sleeves', 'Round Neck', 'Printed', '8-10 years', '550', 'Purple', '2017-12-28', '18:39:45', 0, 'loops garment', 0, 0, 'kidmen', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('KMT1005', 'Tshirt/KidsMen/Dongli-Multicolor-T-shirt-For-SDL304000744-5-69f91.jpg', 'Half Sleeves', 'Round Neck', 'Printed', '6-8 years', '800', 'Green', '2017-12-28', '18:39:45', 0, 'loops garment', 0, 0, 'kidmen', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('KMT1006', 'Tshirt/KidsMen/Dongli-Multicolour-Solid-Cotton-Full-SDL503498667-3-0aec8.jpg', 'Half Sleeves', 'Polo Neck', 'Solid', '6-8 years', '400', 'Yellow', '2017-12-28', '18:39:45', 0, 'loops garment', 0, 4, 'kidmen', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('KMT1007', 'Tshirt/KidsMen/Dongli-Multicolour-Solid-Cotton-Full-SDL503498667-6-0f24a.jpg', 'Half Sleeves', 'Round Neck', 'Solid', '10-12 years', '800', 'Red', '2017-12-28', '18:39:45', 1, 'loops garment', 0, 5, 'kidmen', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('KMT1008', 'Tshirt/KidsMen/Dongli-Multicolour-Solid-Cotton-Full-SDL509883509-4-1e75d.jpg', 'Full Sleeves', 'Round Neck', 'Solid', '6-8 years', '600', 'Gery', '2017-12-28', '18:39:45', 0, 'loops garment', 0, 0, 'kidmen', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('KMT1009', 'Tshirt/KidsMen/Dongli-Multicolour-Solid-Cotton-Full-SDL585417365-3-3c29e.jpg', 'Full Sleeves', 'Crew Neck', 'Solid', '4-6 years', '750', 'Blue', '2017-12-28', '18:39:45', 0, 'loops garment', 0, 0, 'kidmen', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('KMT1010', 'Tshirt/KidsMen/Rupa-AGNI-Kids-Unisex-V-SDL795827710-5-da70e.jpg', 'Full Sleeves', 'V Neck', 'Printed', '4-6 years', '900', 'Gery', '2017-12-28', '18:39:45', 0, 'loops garment', 0, 0, 'kidmen', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('KMT1011', 'Tshirt/KidsMen/Dongli-Smart-Boys-Printed-T-SDL726740695-3-cde9c.jpg', 'Half Sleeves', 'V Neck', 'Printed', '10-12 years', '800', 'Turquoise', '2018-01-09', '12:42:15', 0, 'loops garment', 999, 0, 'kidmen', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('KMT1012', 'Tshirt/KidsMen/menbal21.jpg', 'Full Sleeves', 'Crew Neck', 'Striped', '6-8 years', '435', 'Yellow', '2018-02-26', '09:58:36', 0, 'loops', 567, 0, 'kidmen', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('KMT1013', 'Tshirt/KidsMen/256556-975916.jpg', 'Half Sleeves', 'V Neck', 'Printed', '8-10 years', '12', 'Pink', '2018-07-07', '13:31:51', 0, 'grrove', 12, 0, 'kidmen', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `loops_kids_women_sports_wear`
--

CREATE TABLE `loops_kids_women_sports_wear` (
  `id` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `sleeve_type` varchar(255) NOT NULL,
  `shirt_type` varchar(255) NOT NULL,
  `shirt_pattern` varchar(255) NOT NULL,
  `shirt_size` varchar(255) NOT NULL,
  `shirt_range` varchar(255) NOT NULL,
  `shirt_color` varchar(255) NOT NULL,
  `created_date` date NOT NULL,
  `created_time` time NOT NULL,
  `del_status` int(11) NOT NULL DEFAULT 0,
  `description` varchar(255) NOT NULL,
  `offer_range` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loops_kids_women_sports_wear`
--

INSERT INTO `loops_kids_women_sports_wear` (`id`, `file_name`, `sleeve_type`, `shirt_type`, `shirt_pattern`, `shirt_size`, `shirt_range`, `shirt_color`, `created_date`, `created_time`, `del_status`, `description`, `offer_range`) VALUES
(73, 'Sports/KidsWomen/striped8.jpg', 'Women Full Sleeve T-Shirts', 'Men Polo Neck T-Shirts', 'Men Solid T-Shirts', '10-12 years', '100', '#ffff80', '2017-12-30', '17:57:07', 0, 'loops', 111),
(74, 'Sports/KidsWomen/a65b123a66b506a5ca9ac428c2d19c7f--slim-fit-polo-shirts-cotton-polo-shirts.jpg', 'Men Half Sleeves T-Shirts', 'Men Polo Neck T-Shirts', 'Men Solid T-Shirts', '10-12 years', '1', '#000000', '2018-01-02', '12:41:22', 0, 'loops', 111111),
(75, 'Sports/KidsWomen/striped01.jpg', 'Men Half Sleeves T-Shirts', 'Men Round Neck T-Shirts', 'Men Striped T-Shirts', '6-8 years', '14', '#000000', '2018-01-02', '12:42:37', 0, '', 0),
(76, 'Sports/KidsWomen/striped7.jpg', 'Men Half Sleeves T-Shirts', 'Men Round Neck T-Shirts', 'Men Solid T-Shirts', '6-8 years', '12', '#000000', '2018-01-02', '12:44:34', 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `loops_kids_women_tshirt`
--

CREATE TABLE `loops_kids_women_tshirt` (
  `id` varchar(10) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `sleeve_type` varchar(255) NOT NULL,
  `shirt_type` varchar(255) NOT NULL,
  `shirt_pattern` varchar(255) NOT NULL,
  `shirt_size` varchar(255) NOT NULL,
  `shirt_range` varchar(255) NOT NULL,
  `shirt_color` varchar(255) NOT NULL,
  `created_date` date NOT NULL,
  `created_time` time NOT NULL,
  `del_status` int(11) NOT NULL DEFAULT 0,
  `description` varchar(255) NOT NULL,
  `offer_range` int(11) NOT NULL,
  `star` int(11) NOT NULL DEFAULT 0,
  `cart` varchar(255) NOT NULL DEFAULT 'kidwomen',
  `wish_status` int(255) NOT NULL,
  `qnto` varchar(255) DEFAULT NULL,
  `anto` varchar(255) DEFAULT NULL,
  `Ashik` varchar(255) DEFAULT NULL,
  `ts shrikrishna` varchar(255) DEFAULT NULL,
  `Chenthil` varchar(255) DEFAULT NULL,
  `Murugan.l` varchar(255) DEFAULT NULL,
  `Vairavel` varchar(255) DEFAULT NULL,
  `sam` varchar(255) DEFAULT NULL,
  `jo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loops_kids_women_tshirt`
--

INSERT INTO `loops_kids_women_tshirt` (`id`, `file_name`, `sleeve_type`, `shirt_type`, `shirt_pattern`, `shirt_size`, `shirt_range`, `shirt_color`, `created_date`, `created_time`, `del_status`, `description`, `offer_range`, `star`, `cart`, `wish_status`, `qnto`, `anto`, `Ashik`, `ts shrikrishna`, `Chenthil`, `Murugan.l`, `Vairavel`, `sam`, `jo`) VALUES
('KWT1000', 'Tshirt/KidsWomen/avtar-15-compressor.jpg', 'Half Sleeve', 'V Neck', 'Printed', '10-12 years', '4532', 'Gery', '2017-12-30', '12:26:44', 0, 'loops', 1200, 0, 'deal', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('KWT1001', 'Tshirt/KidsWomen/Bio-Kid-Girls-Designer-Tee-SDL041195194-1-523b8.jpg', 'Full Sleeve', 'Round Neck', 'Printed', '8-10 years', '500', 'Blue', '2018-01-09', '13:02:13', 0, 'loops garment\r\n', 0, 0, 'kidwomen', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('KWT1002', 'Tshirt/KidsWomen/Bio-Kid-Multicolour-3-In-SDL805066281-5-42e7f.jpg', 'Half Sleeve', 'Round Neck', 'Striped', '4-6 years', '123', 'Green', '2018-01-09', '13:06:16', 0, 'loops garment', 540, 0, 'kidwomen', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('KWT1003', 'Tshirt/KidsWomen/Bio-Kid-Multicolour-3-In-SDL805066281-9-2a471.jpg', 'Half Sleeve', 'Round Neck', 'Printed', '10-12 years', '12', 'Pink', '2018-01-09', '13:19:38', 0, 'QWOP', 0, 0, 'kidwomen', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('KWT1004', 'Tshirt/KidsWomen/Diaz-Multicolour-Full-Sleeve-Kids-SDL390793885-2-d6248.jpg', 'Full Sleeve', 'Crew Neck', 'Striped', '4-6 years', '1000', 'Yellow', '2018-02-13', '18:09:43', 0, 'loops garment', 1500, 4, 'kidwomen', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('KWT1005', 'Tshirt/KidsWomen/Imagica-Girl-s-Raglan-T-SDL177001709-3-ca612.jpg', 'Full Sleeve', 'Crew Neck', 'Striped', '4-6 years', '1000', 'White', '2018-02-13', '18:09:43', 0, 'loops garment', 1500, 0, 'kidwomen', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('KWT1006', 'Tshirt/KidsWomen/IndiWeaves-Girls-Cotton-Full-Sleeve-SDL719255811-5-cb409.jpg', 'Full Sleeve', 'Crew Neck', 'Striped', '4-6 years', '1000', 'Yellow', '2018-02-13', '18:09:43', 0, 'loops garment', 1500, 0, 'kidwomen', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('KWT1007', 'Tshirt/KidsWomen/IndiWeaves-Girls-Cotton-Full-Sleeve-SDL719255811-7-63a82.jpg', 'Full Sleeve', 'Crew Neck', 'Striped', '4-6 years', '1000', 'Pink', '2018-02-13', '18:09:43', 0, 'loops garment', 1500, 0, 'kidwomen', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('KWT1008', 'Tshirt/KidsWomen/IndiWeaves-Girls-Cotton-Full-Sleeve-SDL956610341-2-833c5.jpg', 'Full Sleeve', 'Crew Neck', 'Striped', '4-6 years', '1000', 'Turquoise', '2018-02-13', '18:09:43', 0, 'loops garment', 1500, 4, 'kidwomen', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('KWT1009', 'Tshirt/KidsWomen/kids.jpg', 'Full Sleeve', 'Round Neck', 'Printed', '8-10 years', '234', 'Green', '2018-02-26', '10:06:17', 0, 'loops', 456, 0, 'kidwomen', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('KWT1010', 'Tshirt/KidsWomen/IndiWeaves-Girls-Cotton-Full-Sleeve-SDL719255811-5-cb409.jpg', 'Half Sleeve', 'V Neck', 'Solid', '6-8 years', '123', 'Yellow', '2018-02-15', '12:52:23', 0, 'loops', 1, 0, 'kidwomen', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('KWT1011', 'Tshirt/KidsWomen/Imagica-Girl-s-Raglan-T-SDL177001709-3-ca612.jpg', 'Half Sleeve', 'V Neck', 'Solid', '6-8 years', '123', 'White', '2018-02-15', '12:52:23', 0, 'loops', 1, 0, 'kidwomen', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('KWT1012', 'Tshirt/KidsWomen/SINIMINI-GIRLS-SOLID-ROUND-NECK-SDL608590453-6-9ff7f.jpg', 'Half Sleeve', 'V Neck', 'Solid', '6-8 years', '123', 'Gery', '2018-02-15', '12:52:23', 0, 'loops', 1, 0, 'kidwomen', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('KWT1013', 'Tshirt/KidsWomen/Diaz-Multicolour-Full-Sleeve-Kids-SDL390793885-2-d6248.jpg', 'Half Sleeve', 'V Neck', 'Solid', '6-8 years', '123', 'Yellow', '2018-02-15', '12:52:23', 0, 'loops', 1, 0, 'kidwomen', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('KWT1014', 'Tshirt/KidsWomen/Bio-Kid-Multicolour-3-In-SDL805066281-9-2a471.jpg', 'Half Sleeve', 'V Neck', 'Solid', '6-8 years', '123', 'Pink', '2018-02-15', '12:52:23', 0, 'loops', 1, 0, 'kidwomen', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('KWT1015', 'Tshirt/KidsWomen/Bio-Kid-Multicolour-3-In-SDL805066281-5-42e7f.jpg', 'Half Sleeve', 'V Neck', 'Solid', '6-8 years', '123', 'Green', '2018-02-15', '12:52:23', 0, 'loops', 1, 0, 'kidwomen', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('KWT1016', 'Tshirt/KidsWomen/Bio-Kid-Girls-Designer-Tee-SDL944702356-1-57af6.jpg', 'Half Sleeve', 'V Neck', 'Solid', '6-8 years', '123', 'Brown', '2018-02-15', '12:52:23', 0, 'loops', 1, 0, 'kidwomen', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('KWT1017', 'Tshirt/KidsWomen/Bio-Kid-Girls-Designer-Tee-SDL041195194-1-523b8.jpg', 'Half Sleeve', 'V Neck', 'Solid', '6-8 years', '123', 'Blue', '2018-02-15', '12:52:23', 0, 'loops', 1, 0, 'kidwomen', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('KWT1018', 'Tshirt/KidsWomen/Aristot-Cream-Cotton-T-Shirt-SDL675031793-1-67f22.jpg', 'Half Sleeve', 'V Neck', 'Solid', '6-8 years', '123', 'Pink', '2018-02-15', '12:52:23', 0, 'loops', 1, 0, 'kidwomen', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('KWT1019', 'Tshirt/KidsWomen/Sinimini-Multicolor-Cotton-Full-Sleeve-SDL488673461-4-37f27.jpg', 'Full Sleeve', 'Crew Neck', 'Striped', '4-6 years', '1000', 'Navy', '2018-02-13', '18:09:43', 0, 'loops garment', 1500, 0, 'kidwomen', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('KWT1020', 'Tshirt/KidsWomen/SINIMINI-GIRLS-SOLID-ROUND-NECK-SDL608590453-6-9ff7f.jpg', 'Full Sleeve', 'Crew Neck', 'Striped', '4-6 years', '1000', 'Gery', '2018-02-13', '18:09:43', 0, 'loops garment', 1500, 0, 'kidwomen', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('KWT1021', 'Tshirt/KidsWomen/SINIMINI-GIRLS-SOLID-ROUND-NECK-SDL608590453-2-6252c.jpg', 'Full Sleeve', 'Crew Neck', 'Striped', '4-6 years', '1000', 'Turquoise', '2018-02-13', '18:09:43', 0, 'loops garment', 1500, 5, 'kidwomen', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('KWT1022', 'Tshirt/KidsWomen/Sinimini-Fashion-Girls-Top-4-SDL006919719-4-d0392.jpg', 'Full Sleeve', 'Crew Neck', 'Striped', '4-6 years', '1000', 'Pink', '2018-02-13', '18:09:43', 0, 'loops garment', 1500, 0, 'kidwomen', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('KWT1023', 'Tshirt/KidsWomen/Sinimini-Fancy-Girls-Top-3-SDL805810358-6-b9cb3.jpg', 'Full Sleeve', 'Crew Neck', 'Striped', '4-6 years', '1000', 'Blue', '2018-02-13', '18:09:43', 0, 'loops garment', 1500, 0, 'kidwomen', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('KWT1024', 'Tshirt/KidsWomen/Sinimini-Cute-Girls-Top-3-SDL004537052-4-b46f1.jpg', 'Full Sleeve', 'Crew Neck', 'Striped', '4-6 years', '1000', 'Black', '2018-02-13', '18:09:43', 0, 'loops garment', 1500, 0, 'kidwomen', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('KWT1025', 'Tshirt/KidsWomen/IndiWeaves-Girls-Cotton-Full-Sleeve-SDL956610341-4-e24b1.jpg', 'Full Sleeve', 'Crew Neck', 'Striped', '4-6 years', '1000', 'Pink', '2018-02-13', '18:09:43', 0, 'loops garment', 1500, 0, 'kidwomen', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('KWT1026', 'Tshirt/KidsWomen/avtar-15-compressor.jpg', 'Full Sleeve', 'V Neck', 'Printed', '8-10 years', '123', 'Yellow', '2018-07-09', '10:15:25', 0, 'err', 1234, 0, 'kidwomen', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('KWT1027', 'Tshirt/KidsWomen/greeting.png', 'Half Sleeve', 'Crew Neck', 'Printed', '4-6 years', '355', 'Orange', '2018-07-09', '11:54:41', 0, 'efsd', 345, 0, 'kidwomen', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `loops_list_men_innerwearvets`
--

CREATE TABLE `loops_list_men_innerwearvets` (
  `id` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `innerwear_type` varchar(255) NOT NULL,
  `innerwear_size` varchar(255) NOT NULL,
  `innerwear_range` int(11) NOT NULL,
  `offer_price` int(11) NOT NULL,
  `innerwear_color` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_date` date NOT NULL,
  `created_time` time NOT NULL,
  `del_status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `loops_list_men_winterwear`
--

CREATE TABLE `loops_list_men_winterwear` (
  `id` varchar(10) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `sweatshirt_type` varchar(255) NOT NULL,
  `sweatshirt_size` varchar(255) NOT NULL,
  `sweatshirt_range` int(11) NOT NULL,
  `offer_price` int(11) NOT NULL,
  `sweatshirt_color` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_date` date NOT NULL,
  `created_time` time NOT NULL,
  `del_status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loops_list_men_winterwear`
--

INSERT INTO `loops_list_men_winterwear` (`id`, `file_name`, `sweatshirt_type`, `sweatshirt_size`, `sweatshirt_range`, `offer_price`, `sweatshirt_color`, `description`, `created_date`, `created_time`, `del_status`) VALUES
('MW100', 'Winter/Men/1-AM-400x400.png', 'Striped Sweatshirts', '3-Extra-large', 1234, 3214, '#00ff00', 'loops garments', '2018-01-24', '19:15:40', 0),
('MW1002', 'Shirt/Men/3women.jpg', 'Striped Sweatshirts', 'Large', 1000, 150, '#ffff80', 'loops garments', '2018-01-24', '19:22:55', 0),
('MW1003', 'Winter/Men/zoom.jpg', 'Round Hem Sweartsshirts', '2-Extra-large', 123, 456, '#8000ff', 'loops garment\r\n', '2018-01-24', '19:45:38', 0),
('MW1004', 'Winter/Men/311.jpg', 'basic Sweatshirts', '2-Extra-large', 1452, 1452, '#000000', 'loops garment', '2018-02-22', '18:34:32', 0),
('MW1005', 'Winter/Men/FLOCK-GREYMELANGE-DROP-1_500x.jpg', 'Graphic sweatshirt', '2-Extra-large', 650, 860, '#ffffff', 'loops garment', '2018-02-22', '18:35:49', 0);

-- --------------------------------------------------------

--
-- Table structure for table `loops_men_shirt`
--

CREATE TABLE `loops_men_shirt` (
  `id` varchar(10) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `sleeve_type` varchar(255) NOT NULL,
  `shirt_type` varchar(255) NOT NULL,
  `shirt_pattern` varchar(255) NOT NULL,
  `shirt_size` varchar(255) NOT NULL,
  `shirt_range` varchar(255) NOT NULL,
  `shirt_color` varchar(255) NOT NULL,
  `created_date` date NOT NULL,
  `current_date` date NOT NULL,
  `created_time` time NOT NULL,
  `del_status` int(11) NOT NULL DEFAULT 0,
  `description` varchar(255) NOT NULL,
  `offer_range` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loops_men_shirt`
--

INSERT INTO `loops_men_shirt` (`id`, `file_name`, `sleeve_type`, `shirt_type`, `shirt_pattern`, `shirt_size`, `shirt_range`, `shirt_color`, `created_date`, `current_date`, `created_time`, `del_status`, `description`, `offer_range`) VALUES
('KMT1000', 'Shirt/Men/A21.jpg', 'Men Half Sleeves Shirts', 'Men Crew Neck Shirt', 'Men Striped Shirts', 'Large', '350', '#ff0000', '2017-12-28', '0000-00-00', '18:38:36', 0, 'loops', 540),
('KMT1001', 'Shirt/Men/05150279-2ec61370.jpg', 'Men Half Sleeves Shirts', 'Men Crew Neck Shirt', 'Men Printed Shirts', 'Medium', '222', '#00ff00', '2017-12-28', '0000-00-00', '18:38:36', 0, '', 670),
('KMT1002', 'Shirt/Men/brand.JPG', 'Men Half Sleeves Shirts', 'Men Crew Neck Shirt', 'Men Solid Shirts', 'Medium', 'Men Shirts', '#000000', '2017-12-28', '0000-00-00', '18:38:37', 0, '', 0),
('KMT1003', 'Shirt/Men/camera.JPG', 'Men Half Sleeves Shirts', 'Men Crew Neck Shirt', 'Men Solid Shirts', 'Medium', 'Men Shirts', '#000000', '2017-12-28', '0000-00-00', '18:38:37', 0, '', 0),
('KMT1004', 'Shirt/Men/contact.JPG', 'Men Half Sleeves Shirts', 'Men Round Necked Shirts', 'Men Solid Shirts', 'Medium', 'Men Shirts', '#000000', '2017-12-28', '0000-00-00', '18:38:37', 0, '', 0),
('KMT1005', 'Shirt/Men/digital.jpg', 'Men Half Sleeves Shirts', 'Men Round Necked Shirts', 'Men Solid Shirts', 'Medium', 'Men Shirts', '#000000', '2017-12-28', '0000-00-00', '18:38:37', 0, '', 0),
('KMT1006', 'Shirt/Men/IMG_9799-443a87fd.jpg', 'Men Half Sleeves Shirts', 'Men Round Necked Shirts', 'Men Solid Shirts', 'Medium', 'Men Shirts', '#000000', '2017-12-28', '0000-00-00', '18:38:37', 0, '', 0),
('KMT1007', 'Shirt/Men/IMG_9952.JPG', 'Men Half Sleeves Shirts', 'Men Round Necked Shirts', 'Men Solid Shirts', 'Medium', 'Men Shirts', '#000000', '2017-12-28', '0000-00-00', '18:38:37', 0, '', 0),
('KMT1008', 'Shirt/Men/mobile.JPG', 'Men Half Sleeves Shirts', 'Men Round Necked Shirts', 'Men Solid Shirts', 'Medium', 'Men Shirts', '#000000', '2017-12-28', '0000-00-00', '18:38:37', 0, '', 0),
('KMT1009', 'Shirt/Men/seo.jpg', 'MenFullSleevesShirts', 'Men Round Neck Shirts', 'Men Solid Shirts', 'Medium', 'Men Shirts', '#000000', '2017-12-28', '2017-12-28', '18:38:37', 0, '', 900),
('KMT1010', 'Shirt/Men/seo.jpg', 'MenFullSleevesShirts', 'Men Round Neck Shirts', 'Men Solid Shirts', 'Medium', 'Men Shirts', '#000000', '2017-12-28', '2017-12-30', '18:38:37', 800, '', 900);

-- --------------------------------------------------------

--
-- Table structure for table `loops_men_sports_wear`
--

CREATE TABLE `loops_men_sports_wear` (
  `id` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `sleeve_type` varchar(255) NOT NULL,
  `shirt_type` varchar(255) NOT NULL,
  `shirt_pattern` varchar(255) NOT NULL,
  `shirt_size` varchar(255) NOT NULL,
  `shirt_range` varchar(255) NOT NULL,
  `shirt_color` varchar(255) NOT NULL,
  `created_date` date NOT NULL,
  `created_time` time NOT NULL,
  `del_status` int(11) NOT NULL DEFAULT 0,
  `description` varchar(255) NOT NULL,
  `offer_range` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loops_men_sports_wear`
--

INSERT INTO `loops_men_sports_wear` (`id`, `file_name`, `sleeve_type`, `shirt_type`, `shirt_pattern`, `shirt_size`, `shirt_range`, `shirt_color`, `created_date`, `created_time`, `del_status`, `description`, `offer_range`) VALUES
(1, 'Sports/Men/1.jpg', 'Men Full Sleeve T-Shirts', 'Men Polo Neck T-Shirts', 'Men Striped T-Shirts', '3-Extra-large', '380', '#004040', '2017-12-27', '15:08:24', 0, 'loops', 650),
(2, 'Sports/Men/camera.JPG', 'Men Half Sleeves T-Shirts', 'Men Round Neck T-Shirts', 'Men Printed T-Shirts', 'Medium', '200', '#ff8000', '2017-12-27', '15:13:37', 0, '', 0),
(3, 'Sports/Men/1497251-8aae5d47.jpg', 'Men Half Sleeves T-Shirts', 'Men Round Neck T-Shirts', 'Men Striped T-Shirts', 'Large', '100000', '#004000', '2017-12-28', '12:11:57', 0, '', 0),
(4, 'Sports/Men/05150279-2ec61370.jpg', 'Men Half Sleeves T-Shirts', 'Men Round Neck T-Shirts', 'Men Striped T-Shirts', 'Large', '1', '#004000', '2017-12-28', '12:11:57', 0, '', 0),
(5, 'Sports/Men/brand.JPG', 'Men Half Sleeves T-Shirts', 'Men Round Neck T-Shirts', 'Men Striped T-Shirts', 'Large', '1', '#004000', '2017-12-28', '12:11:57', 0, '', 0),
(6, 'Sports/Men/camera.JPG', 'Men Half Sleeves T-Shirts', 'Men Round Neck T-Shirts', 'Men Striped T-Shirts', 'Large', '1', '#004000', '2017-12-28', '12:11:57', 0, '', 0),
(7, 'Sports/Men/contact.JPG', 'Men Half Sleeves T-Shirts', 'Men Round Neck T-Shirts', 'Men Striped T-Shirts', 'Large', '10000', '#004000', '2017-12-28', '12:11:57', 0, '', 0),
(8, 'Sports/Men/digital.jpg', 'Men Half Sleeves T-Shirts', 'Men Round Neck T-Shirts', 'Men Striped T-Shirts', 'Large', '1', '#004000', '2017-12-28', '12:11:57', 0, '', 0),
(9, 'Sports/Men/IMG_9639-c55fa750.jpg', 'Men Half Sleeves T-Shirts', 'Men Round Neck T-Shirts', 'Men Striped T-Shirts', 'Large', '1', '#004000', '2017-12-28', '12:11:57', 0, '', 0),
(10, 'Sports/Men/IMG_9799-443a87fd.jpg', 'Men Half Sleeves T-Shirts', 'Men Round Neck T-Shirts', 'Men Striped T-Shirts', 'Large', '667', '#004000', '2017-12-28', '12:11:57', 0, '', 0),
(11, 'Sports/Men/IMG_9952.JPG', 'Men Half Sleeves T-Shirts', 'Men Round Neck T-Shirts', 'Men Striped T-Shirts', 'Large', '1', '#004000', '2017-12-28', '12:11:58', 0, '', 0),
(12, 'Sports/Men/mobile.JPG', 'Men Half Sleeves T-Shirts', 'Men Round Neck T-Shirts', 'Men Striped T-Shirts', 'Large', '1', '#004000', '2017-12-28', '12:11:58', 0, '', 0),
(13, 'Sports/Men/seo.jpg', 'Men Half Sleeves T-Shirts', 'Men Round Neck T-Shirts', 'Men Striped T-Shirts', 'Large', '1', '#004000', '2017-12-28', '12:11:58', 0, '', 0),
(14, 'Sports/Men/web.JPG', 'Men Half Sleeves T-Shirts', 'Men Round Neck T-Shirts', 'Men Striped T-Shirts', 'Large', '1', '#004000', '2017-12-28', '12:11:58', 0, '', 0),
(15, 'Sports/Men/1497251-8aae5d47.jpg', 'Men Half Sleeves T-Shirts', 'Men Round Necked T-Shirts', 'Men Printed T-Shirts', 'Large', '1', '#004000', '2017-12-28', '12:12:45', 0, '', 0),
(16, 'Sports/Men/05150279-2ec61370.jpg', 'Men Half Sleeves T-Shirts', 'Men Round Necked T-Shirts', 'Men Printed T-Shirts', 'Large', '1', '#004000', '2017-12-28', '12:12:45', 0, '', 0),
(17, 'Sports/Men/brand.JPG', 'Men Half Sleeves T-Shirts', 'Men Round Necked T-Shirts', 'Men Printed T-Shirts', 'Large', '1', '#004000', '2017-12-28', '12:12:45', 0, '', 0),
(18, 'Sports/Men/camera.JPG', 'Men Half Sleeves T-Shirts', 'Men Round Necked T-Shirts', 'Men Printed T-Shirts', 'Large', '1', '#004000', '2017-12-28', '12:12:45', 0, '', 0),
(19, 'Sports/Men/contact.JPG', 'Men Half Sleeves T-Shirts', 'Men Round Necked T-Shirts', 'Men Printed T-Shirts', 'Large', '1', '#004000', '2017-12-28', '12:12:45', 0, '', 0),
(20, 'Sports/Men/digital.jpg', 'Men Half Sleeves T-Shirts', 'Men Round Necked T-Shirts', 'Men Printed T-Shirts', 'Large', '1', '#004000', '2017-12-28', '12:12:45', 0, '', 0),
(21, 'Sports/Men/IMG_9639-c55fa750.jpg', 'Men Half Sleeves T-Shirts', 'Men Round Necked T-Shirts', 'Men Printed T-Shirts', 'Large', '1', '#004000', '2017-12-28', '12:12:45', 0, '', 0),
(22, 'Sports/Men/IMG_9799-443a87fd.jpg', 'Men Half Sleeves T-Shirts', 'Men Round Necked T-Shirts', 'Men Printed T-Shirts', 'Large', '1', '#004000', '2017-12-28', '12:12:45', 0, '', 0),
(23, 'Sports/Men/IMG_9952.JPG', 'Men Half Sleeves T-Shirts', 'Men Round Necked T-Shirts', 'Men Printed T-Shirts', 'Large', '1', '#004000', '2017-12-28', '12:12:45', 0, '', 0),
(24, 'Sports/Men/mobile.JPG', 'Men Half Sleeves T-Shirts', 'Men Round Necked T-Shirts', 'Men Printed T-Shirts', 'Large', '1', '#004000', '2017-12-28', '12:12:45', 0, '', 0),
(25, 'Sports/Men/seo.jpg', 'Men Half Sleeves T-Shirts', 'Men Round Necked T-Shirts', 'Men Printed T-Shirts', 'Large', '1', '#004000', '2017-12-28', '12:12:45', 0, '', 0),
(26, 'Sports/Men/web.JPG', 'Men Half Sleeves T-Shirts', 'Men Round Necked T-Shirts', 'Men Printed T-Shirts', 'Large', '1', '#004000', '2017-12-28', '12:12:45', 0, '', 0),
(27, 'Sports/Men/1497251-8aae5d47.jpg', 'Men Half Sleeves T-Shirts', 'Men Round Neck T-Shirts', 'Men Striped T-Shirts', 'Medium', '1', '#000000', '2017-12-28', '18:59:35', 0, '', 0),
(28, 'Sports/Men/05150279-2ec61370.jpg', 'Men Half Sleeves T-Shirts', 'Men Round Neck T-Shirts', 'Men Striped T-Shirts', 'Medium', '1', '#000000', '2017-12-28', '18:59:36', 0, '', 0),
(29, 'Sports/Men/brand.JPG', 'Men Half Sleeves T-Shirts', 'Men Round Neck T-Shirts', 'Men Striped T-Shirts', 'Medium', '1', '#000000', '2017-12-28', '18:59:36', 0, '', 0),
(30, 'Sports/Men/camera.JPG', 'Men Half Sleeves T-Shirts', 'Men Round Neck T-Shirts', 'Men Striped T-Shirts', 'Medium', '1', '#000000', '2017-12-28', '18:59:36', 0, '', 0),
(31, 'Sports/Men/contact.JPG', 'Men Half Sleeves T-Shirts', 'Men Round Neck T-Shirts', 'Men Striped T-Shirts', 'Medium', '1', '#000000', '2017-12-28', '18:59:36', 0, '', 0),
(32, 'Sports/Men/digital.jpg', 'Men Half Sleeves T-Shirts', 'Men Round Neck T-Shirts', 'Men Striped T-Shirts', 'Medium', '1', '#000000', '2017-12-28', '18:59:36', 0, '', 0),
(33, 'Sports/Men/IMG_9639-c55fa750.jpg', 'Men Half Sleeves T-Shirts', 'Men Round Neck T-Shirts', 'Men Striped T-Shirts', 'Medium', '1', '#000000', '2017-12-28', '18:59:36', 0, '', 0),
(34, 'Sports/Men/IMG_9799-443a87fd.jpg', 'Men Half Sleeves T-Shirts', 'Men Round Neck T-Shirts', 'Men Striped T-Shirts', 'Medium', '1', '#000000', '2017-12-28', '18:59:36', 0, '', 0),
(35, 'Sports/Men/IMG_9952.JPG', 'Men Half Sleeves T-Shirts', 'Men Round Neck T-Shirts', 'Men Striped T-Shirts', 'Medium', '1', '#000000', '2017-12-28', '18:59:36', 0, '', 0),
(36, 'Sports/Men/mobile.JPG', 'Men Half Sleeves T-Shirts', 'Men Round Neck T-Shirts', 'Men Striped T-Shirts', 'Medium', '1', '#000000', '2017-12-28', '18:59:36', 0, '', 0),
(37, 'Sports/Men/seo.jpg', 'Men Half Sleeves T-Shirts', 'Men Round Neck T-Shirts', 'Men Striped T-Shirts', 'Medium', '1', '#000000', '2017-12-28', '18:59:36', 0, '', 0),
(38, 'Sports/Men/web.JPG', 'Men Half Sleeves T-Shirts', 'Men Round Neck T-Shirts', 'Men Striped T-Shirts', 'Medium', '1', '#000000', '2017-12-28', '18:59:36', 0, '', 0),
(39, 'Sports/Men/04-663c41bd.jpg', 'Men Half Sleeves T-Shirts', 'Men Round Neck T-Shirts', 'Men Solid T-Shirts', 'Large', '11', '#000000', '2018-01-02', '13:36:39', 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `loops_men_tshirt`
--

CREATE TABLE `loops_men_tshirt` (
  `id` varchar(10) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_name_2` varchar(255) NOT NULL,
  `file_name_3` varchar(255) NOT NULL,
  `file_name_4` varchar(255) NOT NULL,
  `file_name_5` varchar(255) NOT NULL,
  `availability` int(255) NOT NULL,
  `sleeve_type` varchar(255) NOT NULL,
  `shirt_type` varchar(255) NOT NULL,
  `shirt_pattern` varchar(255) NOT NULL,
  `shirt_size` varchar(255) NOT NULL,
  `shirt_range` varchar(255) NOT NULL,
  `shirt_color` varchar(255) NOT NULL,
  `created_date` date NOT NULL,
  `created_time` time NOT NULL,
  `del_status` int(11) NOT NULL DEFAULT 1,
  `description` varchar(255) NOT NULL,
  `offer_price` int(11) NOT NULL,
  `star` int(11) NOT NULL DEFAULT 0,
  `cart` varchar(255) NOT NULL DEFAULT 'men',
  `wish_status` int(255) NOT NULL DEFAULT 0,
  `qnto` varchar(255) DEFAULT NULL,
  `anto` varchar(255) DEFAULT NULL,
  `Ashik` varchar(255) DEFAULT NULL,
  `ts shrikrishna` varchar(255) DEFAULT NULL,
  `Chenthil` varchar(255) DEFAULT NULL,
  `Murugan.l` varchar(255) DEFAULT NULL,
  `Vairavel` varchar(255) DEFAULT NULL,
  `sam` varchar(255) DEFAULT NULL,
  `jo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loops_men_tshirt`
--

INSERT INTO `loops_men_tshirt` (`id`, `file_name`, `file_name_2`, `file_name_3`, `file_name_4`, `file_name_5`, `availability`, `sleeve_type`, `shirt_type`, `shirt_pattern`, `shirt_size`, `shirt_range`, `shirt_color`, `created_date`, `created_time`, `del_status`, `description`, `offer_price`, `star`, `cart`, `wish_status`, `qnto`, `anto`, `Ashik`, `ts shrikrishna`, `Chenthil`, `Murugan.l`, `Vairavel`, `sam`, `jo`) VALUES
('MT1001', 'Tshirt/Men/_H9A0384.JPG', 'Tshirt/Men/_H9A0386.JPG', 'Tshirt/Men/_H9A0388.JPG', 'Tshirt/Men/_H9A0390.JPG', 'Tshirt/Men/_H9A0391.JPG', 40, 'Half Sleeves', 'Crew Neck', 'Striped', 'L', '500', 'Black', '2019-06-10', '00:11:06', 1, 'The Finest One ;', 450, 0, 'men', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0'),
('MT1002', 'Tshirt/Men/_H9A0396.JPG', 'Tshirt/Men/_H9A0397.JPG', 'Tshirt/Men/_H9A0400.JPG', 'Tshirt/Men/_H9A0400_.JPG', 'Tshirt/Men/_H9A0402.JPG', 30, 'Half Sleeves', 'Round Neck', 'Printed', 'L', '650', 'Black', '2019-06-10', '01:47:08', 1, 'The Finest One ...', 600, 0, 'men', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '71e4dc58cf6c5ee0b9b48c3b401b8d36'),
('MT1003', 'Tshirt/Men/_H9A0407.JPG', 'Tshirt/Men/_H9A0410.JPG', 'Tshirt/Men/_H9A0412.JPG', 'Tshirt/Men/_H9A0412_.JPG', 'Tshirt/Men/_H9A0414.JPG', 20, 'Half Sleeves', 'Round Neck', 'Printed', '2XL', '300', 'Black', '2019-06-10', '01:48:53', 1, 'The Finest One...', 250, 0, 'men', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0'),
('MT1004', 'Tshirt/Men/_H9A0420.JPG', 'Tshirt/Men/_H9A0422.JPG', 'Tshirt/Men/_H9A0424.JPG', 'Tshirt/Men/_H9A0425.JPG', 'Tshirt/Men/_H9A0427.JPG', 60, 'Half Sleeves', 'Round Neck', 'Printed', '3XL', '350', 'Black', '2019-06-10', '01:50:40', 1, 'The Finest One ....', 300, 0, 'men', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '71e4dc58cf6c5ee0b9b48c3b401b8d36'),
('MT1005', 'Tshirt/Men/_H9A0433.JPG', 'Tshirt/Men/_H9A0435.JPG', 'Tshirt/Men/_H9A0437.JPG', 'Tshirt/Men/_H9A0437_.JPG', 'Tshirt/Men/_H9A0439.JPG', 60, 'Half Sleeves', 'Round Neck', 'Solid', 'XL', '300', 'Black', '2019-06-10', '01:51:45', 1, 'The Finest One ....', 200, 0, 'men', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '71e4dc58cf6c5ee0b9b48c3b401b8d36'),
('MT1006', 'Tshirt/Men/_H9A0445.JPG', 'Tshirt/Men/_H9A0447.JPG', 'Tshirt/Men/_H9A0450.JPG', 'Tshirt/Men/_H9A0437_.JPG', 'Tshirt/Men/_H9A0453.JPG', 60, 'Half Sleeves', 'Round Neck', 'Printed', '2XL', '450', 'Black', '2019-06-10', '01:54:56', 1, 'The Finest One ....', 350, 0, 'men', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '71e4dc58cf6c5ee0b9b48c3b401b8d36'),
('MT1007', 'Tshirt/Men/_H9A0457.JPG', 'Tshirt/Men/_H9A0459.JPG', 'Tshirt/Men/_H9A0462.JPG', 'Tshirt/Men/_H9A0462_.JPG', 'Tshirt/Men/_H9A0464.JPG', 30, 'Half Sleeves', 'Round Neck', 'Printed', 'M', '350', 'Ash', '2019-06-10', '01:55:48', 1, 'The Finest One ....', 245, 0, 'men', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('MT1008', 'Tshirt/Men/_H9A0470.JPG', 'Tshirt/Men/_H9A0471.JPG', 'Tshirt/Men/_H9A0474.JPG', 'Tshirt/Men/_H9A0474_.JPG', 'Tshirt/Men/_H9A0476.JPG', 50, 'Half Sleeves', 'Round Neck', 'Printed', 'M', '200', 'Ash', '2019-06-10', '01:57:19', 1, 'The Finest One ....', 150, 0, 'men', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('MT1009', 'Tshirt/Men/_H9A0482.JPG', 'Tshirt/Men/_H9A0484.JPG', 'Tshirt/Men/_H9A0486.JPG', 'Tshirt/Men/_H9A0487.JPG', 'Tshirt/Men/_H9A0489.JPG', 70, 'Half Sleeves', 'Round Neck', 'Printed', '2XL', '670', 'Ash', '2019-06-10', '01:58:11', 1, 'The Finest One ....', 340, 0, 'men', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('MT1010', 'Tshirt/Men/_H9A0493.JPG', 'Tshirt/Men/_H9A0495.JPG', 'Tshirt/Men/_H9A0497.JPG', 'Tshirt/Men/_H9A0498.JPG', 'Tshirt/Men/_H9A0500.JPG', 70, 'Half Sleeves', 'Round Neck', 'Printed', '3XL', '452', 'Ash', '2019-06-10', '01:58:41', 1, 'The Finest One ....', 231, 0, 'men', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '71e4dc58cf6c5ee0b9b48c3b401b8d36');

-- --------------------------------------------------------

--
-- Table structure for table `loops_sports_men_tshirt`
--

CREATE TABLE `loops_sports_men_tshirt` (
  `id` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `sleeve_type` varchar(255) NOT NULL,
  `sleeve_size` varchar(255) NOT NULL,
  `sleeve_range` varchar(255) NOT NULL,
  `created_date` date NOT NULL,
  `created_time` time NOT NULL,
  `del_status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loops_sports_men_tshirt`
--

INSERT INTO `loops_sports_men_tshirt` (`id`, `file_name`, `sleeve_type`, `sleeve_size`, `sleeve_range`, `created_date`, `created_time`, `del_status`) VALUES
(1, 'Sports/Men/1.jpg', 'Mens Printed T-Shirts', 'Small', '100-200', '2017-12-19', '13:34:21', 0),
(2, 'Sports/Men/1.jpg', 'Mens Fashion T-Shirts', 'Medium', '200-500', '2017-12-19', '13:34:42', 0),
(3, 'Sports/Men/1.jpg', 'Mens Printed T-Shirts', 'Small', '100-200', '2017-12-19', '13:35:00', 0),
(4, 'Sports/Men/1.jpg', 'Mens Printed T-Shirts', 'Small', '100-200', '2017-12-19', '13:35:18', 0);

-- --------------------------------------------------------

--
-- Table structure for table `loops_sports_women_tshirt`
--

CREATE TABLE `loops_sports_women_tshirt` (
  `id` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `sleeve_type` varchar(255) NOT NULL,
  `sleeve_size` varchar(255) NOT NULL,
  `sleeve_range` varchar(255) NOT NULL,
  `created_date` date NOT NULL,
  `created_time` time NOT NULL,
  `del_status` int(11) NOT NULL DEFAULT 0,
  `offer_range` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loops_sports_women_tshirt`
--

INSERT INTO `loops_sports_women_tshirt` (`id`, `file_name`, `sleeve_type`, `sleeve_size`, `sleeve_range`, `created_date`, `created_time`, `del_status`, `offer_range`) VALUES
(1, 'Sports/Women/1.jpg', 'Mens Fashion T-Shirts', 'Medium', '200-500', '2017-12-19', '13:46:47', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `loops_women_sports_wear`
--

CREATE TABLE `loops_women_sports_wear` (
  `id` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `sleeve_type` varchar(255) NOT NULL,
  `shirt_type` varchar(255) NOT NULL,
  `shirt_pattern` varchar(255) NOT NULL,
  `shirt_size` varchar(255) NOT NULL,
  `shirt_range` varchar(255) NOT NULL,
  `shirt_color` varchar(255) NOT NULL,
  `created_date` date NOT NULL,
  `created_time` time NOT NULL,
  `del_status` int(11) NOT NULL DEFAULT 0,
  `description` varchar(255) NOT NULL,
  `offer_range` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loops_women_sports_wear`
--

INSERT INTO `loops_women_sports_wear` (`id`, `file_name`, `sleeve_type`, `shirt_type`, `shirt_pattern`, `shirt_size`, `shirt_range`, `shirt_color`, `created_date`, `created_time`, `del_status`, `description`, `offer_range`) VALUES
(1, 'Sports/Women/c-6-332cca8f.png', 'Men Half Sleeves T-Shirts', 'Men Polo Neck T-Shirts', 'Men Solid T-Shirts', '3-Extra-large', '816', '#ffffff', '2017-12-27', '15:27:21', 0, 'loopssss', 1156),
(2, 'Sports/Women/1497251-8aae5d47.jpg', 'Men Full Sleeves T-Shirts', 'Men Round Neck T-Shirts', 'Men Printed T-Shirts', 'Large', '550', '#000000', '2017-12-28', '19:00:21', 0, 'loops', 750),
(3, 'Sports/Women/05150279-2ec61370.jpg', 'Men Half Sleeves T-Shirts', 'Men Round Neck T-Shirts', 'Men Printed T-Shirts', 'Large', '400', '#000000', '2017-12-28', '19:00:21', 0, 'loops', 600),
(4, 'Sports/Women/brand.JPG', 'Men Half Sleeves T-Shirts', 'Men Round Neck T-Shirts', 'Men Printed T-Shirts', 'Large', '450', '#000000', '2017-12-28', '19:00:21', 0, 'loops', 500),
(5, 'Sports/Women/camera.JPG', 'Men Half Sleeves T-Shirts', 'Men Round Neck T-Shirts', 'Men Printed T-Shirts', 'Large', '850', '#000000', '2017-12-28', '19:00:21', 0, 'loops', 960),
(6, 'Sports/Women/contact.JPG', 'Men Half Sleeves T-Shirts', 'Men Round Neck T-Shirts', 'Men Printed T-Shirts', 'Large', 'Women Sports Wear T-Shirt Department', '#000000', '2017-12-28', '19:00:21', 0, '', 0),
(7, 'Sports/Women/digital.jpg', 'Men Half Sleeves T-Shirts', 'Men Round Neck T-Shirts', 'Men Printed T-Shirts', 'Large', 'Women Sports Wear T-Shirt Department', '#000000', '2017-12-28', '19:00:21', 0, '', 0),
(8, 'Sports/Women/IMG_9639-c55fa750.jpg', 'Men Half Sleeves T-Shirts', 'Men Round Neck T-Shirts', 'Men Printed T-Shirts', 'Large', 'Women Sports Wear T-Shirt Department', '#000000', '2017-12-28', '19:00:21', 0, '', 0),
(9, 'Sports/Women/IMG_9799-443a87fd.jpg', 'Men Half Sleeves T-Shirts', 'Men Round Neck T-Shirts', 'Men Printed T-Shirts', 'Large', 'Women Sports Wear T-Shirt Department', '#000000', '2017-12-28', '19:00:21', 0, '', 0),
(10, 'Sports/Women/IMG_9952.JPG', 'Men Half Sleeves T-Shirts', 'Men Round Neck T-Shirts', 'Men Printed T-Shirts', 'Large', 'Women Sports Wear T-Shirt Department', '#000000', '2017-12-28', '19:00:21', 0, '', 0),
(11, 'Sports/Women/mobile.JPG', 'Men Half Sleeves T-Shirts', 'Men Round Neck T-Shirts', 'Men Printed T-Shirts', 'Large', 'Women Sports Wear T-Shirt Department', '#000000', '2017-12-28', '19:00:21', 0, '', 0),
(12, 'Sports/Women/seo.jpg', 'Men Half Sleeves T-Shirts', 'Men Round Neck T-Shirts', 'Men Printed T-Shirts', 'Large', 'Women Sports Wear T-Shirt Department', '#000000', '2017-12-28', '19:00:21', 0, '', 0),
(13, 'Sports/Women/web.JPG', 'Men Half Sleeves T-Shirts', 'Men Round Neck T-Shirts', 'Men Printed T-Shirts', 'Large', 'Women Sports Wear T-Shirt Department', '#000000', '2017-12-28', '19:00:21', 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `loops_women_tshirt`
--

CREATE TABLE `loops_women_tshirt` (
  `id` varchar(10) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `sleeve_type` varchar(255) NOT NULL,
  `shirt_type` varchar(255) NOT NULL,
  `shirt_pattern` varchar(255) NOT NULL,
  `shirt_size` varchar(255) NOT NULL,
  `shirt_range` varchar(255) NOT NULL,
  `shirt_color` varchar(255) NOT NULL,
  `created_date` date NOT NULL,
  `created_time` time NOT NULL,
  `del_status` int(11) NOT NULL DEFAULT 0,
  `description` varchar(255) NOT NULL,
  `offer_range` int(11) NOT NULL,
  `star` int(11) NOT NULL DEFAULT 0,
  `cart` varchar(255) NOT NULL DEFAULT 'women',
  `wish_status` int(255) NOT NULL DEFAULT 0,
  `qnto` varchar(255) DEFAULT NULL,
  `anto` varchar(255) DEFAULT NULL,
  `Ashik` varchar(255) DEFAULT NULL,
  `ts shrikrishna` varchar(255) DEFAULT NULL,
  `Chenthil` varchar(255) DEFAULT NULL,
  `Murugan.l` varchar(255) DEFAULT NULL,
  `Vairavel` varchar(255) DEFAULT NULL,
  `sam` varchar(255) DEFAULT NULL,
  `jo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loops_women_tshirt`
--

INSERT INTO `loops_women_tshirt` (`id`, `file_name`, `sleeve_type`, `shirt_type`, `shirt_pattern`, `shirt_size`, `shirt_range`, `shirt_color`, `created_date`, `created_time`, `del_status`, `description`, `offer_range`, `star`, `cart`, `wish_status`, `qnto`, `anto`, `Ashik`, `ts shrikrishna`, `Chenthil`, `Murugan.l`, `Vairavel`, `sam`, `jo`) VALUES
('WT1000', 'Tshirt/Women/avtar-15-compressor.jpg', 'Full Sleeve', 'Crew Neck', 'Solid', 'M', '1450', 'Black', '2018-02-05', '11:47:16', 0, 'loops garment', 999, 2, 'deal', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('WT1001', 'Tshirt/Women/170d74377dd63ee21c8fa1c4f61fdd66--oscar-wilde-womans-tops.jpg', 'Full Sleeve', 'Round Neck', 'Striped', 'S', '600', 'White', '2018-02-05', '11:48:35', 0, 'loops garment', 720, 1, 'women', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0'),
('WT1002', 'Tshirt/Women/222fe9af1abc45893e13dcba85f53843--liz-claiborne-crew-neck.jpg', 'Half Sleeve', 'Crew Neck', 'Solid', 'L', '580', 'Blue', '2018-02-05', '11:49:40', 0, 'loops garment', 700, 0, 'women', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('WT1003', 'Tshirt/Women/1592c4e2aded2710230af4ea4ae18635.jpg', 'Half Sleeve', 'Round Neck', 'Printed', 'M', '400', 'White', '2018-02-05', '11:50:32', 0, 'loops garment', 550, 0, 'women', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('WT1004', 'Tshirt/Women/1965.jpg', 'Full Sleeve', 'Crew Neck', 'Striped', 'XL', '640', 'Black', '2018-02-05', '11:51:20', 0, 'loops garment', 800, 0, 'women', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('WT1005', 'Tshirt/Women/5027822-MDB00.jpg', 'Full Sleeve', 'Crew Neck', 'Solid', '2XL', '850', 'Blue', '2018-02-05', '11:52:28', 0, 'loops garment', 900, 0, 'women', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('WT1006', 'Tshirt/Women/10371967x1012379_zm.jpg', 'Half Sleeve', 'Round Neck', 'Printed', '3XL', '480', 'Blue', '2018-02-05', '11:53:13', 0, 'loops garment', 600, 0, 'women', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('WT1007', 'Tshirt/Women/10371969x1036982_zm.jpg', 'Half Sleeve', 'Round Neck', 'Printed', 'XL', '280', 'Gery', '2018-02-05', '11:54:21', 0, 'loops garment', 580, 5, 'women', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('WT1008', 'Tshirt/Women/52346495.jpg', 'Full Sleeve', 'Crew Neck', 'Striped', 'XL', '290', 'Blue', '2018-02-05', '11:55:53', 0, 'loops garment', 480, 0, 'women', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('WT1009', 'Tshirt/Women/018030290743.jpg', 'Full Sleeve', 'Crew Neck', 'Striped', '3XL', '810', 'Black', '2018-02-05', '11:56:43', 0, 'loops garment', 1100, 4, 'women', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('WT1010', 'Tshirt/Women/054010203445.jpg', 'Full Sleeve', 'Round Neck', 'Striped', '2XL', '410', 'Blue', '2018-02-05', '11:57:31', 0, 'loops garment', 600, 4, 'women', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('WT1011', 'Tshirt/Women/A222_51_z-400x400.jpg', 'Half Sleeve', 'Polo Neck', 'Solid', 'S', '450', 'Black', '2018-02-05', '11:58:16', 0, 'loops garment', 650, 0, 'women', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('WT1012', 'Tshirt/Women/DP0609201718211962M.jpg', 'Full Sleeve', 'Crew Neck', 'Solid', 'L', '560', 'Purple', '2018-02-05', '11:59:13', 0, 'loops garment', 680, 0, 'women', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('WT1013', 'Tshirt/Women/DP0713201717264413M.jpg', 'Full Sleeve', 'Crew Neck', 'Solid', 'M', '580', 'Pink', '2018-02-05', '12:00:00', 0, 'loops garment', 640, 0, 'women', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('WT1014', 'Tshirt/Women/DP0713201717271423M.jpg', 'Full Sleeve', 'Round Neck', 'Printed', 'M', '280', 'Pink', '2018-02-05', '12:00:41', 0, 'loops garment', 460, 0, 'women', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('WT1015', 'Tshirt/Women/G63V00L-2-400x400.jpg', 'Half Sleeve', 'Round Neck', 'Solid', 'XL', '860', 'Red', '2018-02-05', '12:01:29', 0, 'loops garment', 1000, 0, 'women', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('WT1016', 'Tshirt/Women/gd076_ls1_2017.jpg', 'Full Sleeve', 'Round Neck', 'Solid', '2XL', '500', 'White', '2018-02-05', '12:02:10', 0, 'loops garment', 740, 0, 'women', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('WT1017', 'Tshirt/Women/image_1_.jpg', 'Half Sleeve', 'Polo Neck', 'Solid', 'S', '250', 'Red', '2018-02-05', '12:03:05', 0, 'loops garment', 410, 0, 'women', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('WT1018', 'Tshirt/Women/Ladies-blouse-2015-summer-shirt-printed-batman-Simpson-personality-t-shirt-design-women.jpg', 'Half Sleeve', 'Round Neck', 'Printed', 'M', '610', 'White', '2018-02-05', '12:03:48', 0, 'loops garment', 800, 0, 'women', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('WT1019', 'Tshirt/Women/Myntra-Women-Peace-Love-Chocolate-Yellow-T-shirt-Myntra-29560396-53f00c6e-7549-43f9-92b2-b66a8e2b3676-jpg.jpg', 'Half Sleeve', 'Round Neck', 'Printed', '3XL', '480', 'Yellow', '2018-02-05', '12:04:48', 0, 'loops garment', 690, 0, 'women', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('WT1020', 'Tshirt/Women/p.jpg', 'Half Sleeve', 'Crew Neck', 'Printed', '2XL', '800', 'Gery', '2018-02-05', '12:05:36', 0, 'loops garment', 950, 0, 'women', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('WT1021', 'Tshirt/Women/pf2384_k01_r_1.jpg', 'Half Sleeve', 'Round Neck', 'Printed', 'XL', '260', 'Pink', '2018-02-05', '12:06:37', 0, 'loops garment', 480, 0, 'women', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('WT1022', 'Tshirt/Women/product-image-349555857_grande.jpg', 'Half Sleeve', 'Round Neck', 'Printed', '3XL', '550', 'White', '2018-02-05', '12:07:33', 0, 'loops garment', 800, 0, 'women', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('WT1023', 'Tshirt/Women/p-w20.jpeg', 'Half Sleeve', 'Polo Neck', 'Solid', 'XL', '400', 'White', '2018-02-05', '12:08:42', 0, 'loops garment', 500, 0, 'women', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('WT1024', 'Tshirt/Women/uc106.png', 'Half Sleeve', 'Polo Neck', 'Solid', 'S', '299', 'Red', '2018-02-05', '12:09:25', 0, 'loops garment', 600, 0, 'women', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('WT1025', 'Tshirt/Women/womens-400x400.jpg', 'Half Sleeve', 'Round Neck', 'Printed', 'M', '560', 'Purple', '2018-02-05', '12:10:26', 0, 'loops garment', 890, 0, 'women', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('WT1026', 'Tshirt/Women/women-s-round-neck-t-shirts-500x500.jpg', 'Half Sleeve', 'Crew Neck', 'Solid', '3XL', '900', 'Pink', '2018-02-05', '12:11:07', 0, 'loops garment', 1200, 0, 'women', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('WT1027', 'Tshirt/Women/women-s-shirts-unicorn-floral-women-s-t-shirt-1_400x.jpg', 'Half Sleeve', 'Round Neck', 'Printed', 'S', '250', 'Turquoise', '2018-02-05', '12:12:13', 0, 'loops garment', 650, 0, 'women', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('WT1028', 'Tshirt/Women/fred_perry_girls_twin_tipped_polo_wht-blk_1.png', 'Half Sleeve', 'Polo Neck', 'Solid', 'S', '585', 'white', '2018-02-05', '12:12:55', 0, 'loops garment', 650, 0, 'women', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('WT1029', 'Tshirt/Women/400x400.png', 'Full Sleeve', 'Round Neck', 'Solid', 'L', '123', 'White', '2018-02-21', '10:15:26', 0, 'ewd', 432, 0, 'women', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('WT1030', 'Tshirt/Women/kids.jpg', 'Half Sleeve', 'V Neck', 'Solid', 'XL', '543', 'Red', '2018-02-21', '10:20:25', 0, 'loops garments', 766, 0, 'women', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('WT1031', 'Tshirt/Women/slide_1.jpg', 'Full Sleeve', 'Crew Neck', 'Printed', 'L', '34', 'White', '2018-02-23', '13:41:49', 0, 'test', 345, 0, 'women', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('WT1032', 'Tshirt/Women/avtar-15-compressor.jpg', 'Half Sleeve', 'Crew Neck', 'Striped', 'L', '123', 'Yellow', '2018-07-07', '13:01:13', 0, 'deer', 123, 0, 'women', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `total_price` float(10,2) NOT NULL,
  `created_day` date NOT NULL,
  `created_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `total_price`, `created_day`, `created_time`) VALUES
(1, 'jo@gmail.com', 199.00, '2018-09-04', '13:36:54'),
(2, 'jo@gmail.com', 860.00, '2018-09-18', '08:57:29'),
(3, 'jo@gmail.com', 199.00, '2018-10-19', '06:44:13'),
(4, 'jo@gmail.com', 199.00, '2018-10-23', '09:22:23'),
(5, 'jo@gmail.com', 1198.00, '2018-10-23', '09:37:03'),
(6, 'jo@gmail.com', 800.00, '2018-10-23', '11:05:43'),
(7, 'jo@gmail.com', 800.00, '2018-10-23', '11:11:10'),
(8, 'jo@gmail.com', 550.00, '2018-10-23', '12:59:58'),
(9, 'jo@gmail.com', 800.00, '2018-10-23', '14:42:45'),
(10, 'jo@gmail.com', 398.00, '2018-10-29', '11:24:57'),
(11, 'jo@gmail.com', 398.00, '2018-10-29', '11:34:15'),
(12, 'jo@gmail.com', 350.00, '2018-10-29', '11:36:03'),
(13, 'jo@gmail.com', 700.00, '2018-10-29', '11:37:44'),
(14, 'jo@gmail.com', 199.00, '2018-10-29', '11:40:27'),
(15, 'vairavel2020@gmail.com', 280.00, '2018-10-30', '09:46:29'),
(16, 'vairavel2020@gmail.com', 830.00, '2018-10-30', '09:59:17'),
(17, 'jo@gmail.com', 550.00, '2018-11-02', '05:43:02'),
(18, 'vairavel2020@gmail.com', 1000.00, '2018-11-15', '09:04:06'),
(19, 'jo@gmail.com', 350.00, '2018-11-22', '12:29:11'),
(20, 'jo@gmail.com', 896.00, '2018-11-23', '04:21:44'),
(21, 'vairavel2020@gmail.com', 199.00, '2018-12-04', '13:38:28'),
(22, 'jo@gmail.com', 451.00, '2018-12-11', '09:38:05'),
(23, 'vairavel2020@gmail.com', 199.00, '2018-12-12', '09:48:52'),
(24, 'vairavel2020@gmail.com', 658.00, '2018-12-19', '06:13:19'),
(25, 'jo@gmail.com', 199.00, '2018-12-19', '10:34:41'),
(26, 'vairavel2020@gmail.com', 658.00, '2019-01-05', '04:56:49'),
(27, 'vairavel2020@gmail.com', 658.00, '2019-01-20', '10:22:29'),
(28, 'jo@gmail.com', 1198.00, '2019-02-20', '04:19:41'),
(29, 'jo@gmail.com', 612.00, '2019-03-14', '09:22:38'),
(30, 'shrikrishna@opendesigns.in', 800.00, '2019-03-14', '10:39:50'),
(31, 'shrikrishna@opendesigns.in', 1080.00, '2019-03-14', '10:41:11'),
(32, 'jo@gmail.com', 350.00, '2019-03-14', '11:48:01'),
(33, 'vairavel2020@gmail.com', 199.00, '2019-03-14', '12:41:28'),
(34, 'jo@gmail.com', 550.00, '2019-03-14', '13:10:15'),
(35, 'vairavel2020@gmail.com', 350.00, '2019-04-03', '05:02:39'),
(36, 'jo@gmail.com', 789.00, '2019-04-12', '10:15:04'),
(37, 'vairavel2020@gmail.com', 199.00, '2019-04-12', '18:20:47'),
(38, 'vairavel2020@gmail.com', 280.00, '2019-04-20', '07:18:55');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(5) NOT NULL,
  `status` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `customer_Status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `customer_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customer_mobile` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `modified_day` date NOT NULL,
  `modified_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `quantity`, `status`, `customer_Status`, `customer_address`, `customer_mobile`, `modified_day`, `modified_time`) VALUES
(1, 23, 'MT1001', 1, 'Cancelled', 'Piece is Damaged', 'Trustpuram, Kodambakkam, Chennai, Tamil Nadu, India', '7395962447', '2018-12-19', '11:40:18'),
(2, 2, 'MT1009', 1, 'Pending', '0', 'Vinayaka Nagar Colony, Mylapore, Chennai, Tamil Nadu, India', '7395962447', '2018-10-30', '15:44:51'),
(3, 23, 'MT1001', 1, 'Cancelled', 'Piece is Damaged', 'Vinayaka Nagar Colony, Mylapore, Chennai, Tamil Nadu, India', '7395962447', '2018-12-19', '11:40:18'),
(4, 23, 'MT1001', 1, 'Cancelled', 'Piece is Damaged', 'Vinayaka Nagar Colony, Mylapore, Chennai, Tamil Nadu, India', '7395962447', '2018-12-19', '11:40:18'),
(5, 30, 'MT1005', 1, 'Cancelled', 'Piece is Damaged', 'Vinayaka Nagar Colony, Mylapore, Chennai, Tamil Nadu, India', '7395962447', '2019-03-14', '16:10:20'),
(6, 23, 'MT1001', 2, 'Cancelled', 'Piece is Damaged', 'Vinayaka Nagar Colony, Mylapore, Chennai, Tamil Nadu, India', '7395962447', '2018-12-19', '11:40:18'),
(7, 30, 'MT1005', 1, 'Cancelled', 'Piece is Damaged', 'Vinayaka Nagar Colony, Mylapore, Chennai, Tamil Nadu, India', '7395962447', '2019-03-14', '16:10:20'),
(8, 30, 'MT1005', 1, 'Cancelled', 'Piece is Damaged', 'Vinayaka Nagar Colony, Mylapore, Chennai, Tamil Nadu, India', '7395962447', '2019-03-14', '16:10:20'),
(9, 8, 'MT1004', 1, 'Delivered', '0', 'Vinayaka Nagar Colony1, Mylapore, Chennai, TamilNadu, India', '7395962447', '2018-11-02', '11:26:19'),
(10, 30, 'MT1005', 1, 'Cancelled', 'Piece is Damaged', 'Vinayaka Nagar Colony1, Mylapore, Chennai, TamilNadu, India', '7395962447', '2019-03-14', '16:10:20'),
(11, 23, 'MT1001', 2, 'Cancelled', 'Piece is Damaged', 'Vinayaka Nagar Colony1, Mylapore, Chennai, TamilNadu, India', '7395962447', '2018-12-19', '11:40:18'),
(12, 23, 'MT1001', 2, 'Cancelled', 'Piece is Damaged', 'Vinayaka Nagar Colony1, Mylapore, Chennai, TamilNadu, India', '7395962447', '2018-12-19', '11:40:18'),
(13, 19, 'MT1002', 1, 'Cancelled', 'Piece is Damaged', 'Vinayaka Nagar Colony1, Mylapore, Chennai, TamilNadu, India', '7395962447', '2018-11-23', '10:08:19'),
(14, 19, 'MT1002', 2, 'Cancelled', 'Piece is Damaged', 'Vinayaka Nagar Colony1, Mylapore, Chennai, TamilNadu, India', '7395962447', '2018-11-23', '10:08:19'),
(15, 23, 'MT1001', 1, 'Cancelled', 'Piece is Damaged', 'Vinayaka Nagar Colony1, Mylapore, Chennai, TamilNadu, India', '7395962447', '2018-12-19', '11:40:18'),
(16, 15, 'MT1006', 1, 'Pending', '0', '3/13 AB Gandhi Nagar 1st Street, Periyar Salai Palavakkam', '', '2018-10-30', '15:16:29'),
(17, 16, 'MT1016', 1, 'Shipped', '0', '3/13 AB Gandhi Nagar 1st Street, Periyar Salai Palavakkam', '', '2018-10-30', '15:30:03'),
(18, 16, 'MT1006', 1, 'Pending', '0', '3/13 AB Gandhi Nagar 1st Street, Periyar Salai Palavakkam', '', '2018-10-30', '15:29:17'),
(19, 17, 'MT1004', 1, 'Delivered', '0', 'Vinayaka Nagar Colony1, Mylapore, Chennai, TamilNadu, India', '7395962447', '2018-11-02', '11:26:19'),
(20, 18, 'MT1042', 1, 'Cancelled', 'Piece is Damaged', '3/13 AB Gandhi Nagar 1st Street, Periyar Salai Palavakkam', '', '2018-11-15', '14:34:23'),
(21, 19, 'MT1002', 1, 'Cancelled', 'Piece is Damaged', 'Vinayaka Nagar Colony1, Mylapore, Chennai, TamilNadu, India', '7395962447', '2018-11-23', '10:08:19'),
(22, 20, 'MT1014', 1, 'Pending', '0', 'Vinayaka Nagar Colony1, Mylapore, Chennai, TamilNadu, India', '7395962447', '2018-11-23', '09:51:44'),
(23, 23, 'MT1001', 1, 'Cancelled', 'Piece is Damaged', '3/13 AB Gandhi Nagar 1st Street, Periyar Salai Palavakkam', '', '2018-12-19', '11:40:18'),
(24, 22, 'MT1003', 1, 'Pending', '0', 'Vinayaka Nagar Colony1, Mylapore, Chennai, TamilNadu, India', '7395962447', '2018-12-11', '15:08:05'),
(25, 23, 'MT1001', 1, 'Cancelled', 'Piece is Damaged', '3/13 AB Gandhi Nagar 1st Street, Periyar Salai Palavakkam', '', '2018-12-19', '11:40:18'),
(26, 24, 'MT1010', 1, 'Pending', '0', '3/13 AB Gandhi Nagar 1st Street, Periyar Salai Palavakkam', '', '2018-12-19', '11:43:19'),
(27, 25, 'MT1001', 1, 'Pending', '0', 'Vinayaka Nagar Colony1, Mylapore, Chennai, TamilNadu, India', '7395962447', '2018-12-19', '16:04:41'),
(28, 26, 'MT1010', 1, 'Pending', '0', '3/13 AB Gandhi Nagar 1st Street, Periyar Salai Palavakkam', '', '2019-01-05', '10:26:49'),
(29, 27, 'MT1010', 1, 'Pending', '0', '3/13 AB Gandhi Nagar 1st Street, Periyar Salai Palavakkam', '', '2019-01-20', '15:52:29'),
(30, 28, 'MT1001', 2, 'Pending', '0', 'Vinayaka Nagar Colony1, Mylapore, Chennai, TamilNadu, India', '7395962447', '2019-02-20', '09:49:41'),
(31, 30, 'MT1005', 1, 'Cancelled', 'Piece is Damaged', 'Vinayaka Nagar Colony1, Mylapore, Chennai, TamilNadu, India', '7395962447', '2019-03-14', '16:10:20'),
(32, 29, 'MT1019', 1, 'Pending', '0', 'Vinayaka Nagar Colony1, Mylapore, Chennai, TamilNadu, India', '7395962447', '2019-03-14', '14:52:38'),
(33, 30, 'MT1005', 1, 'Cancelled', 'Piece is Damaged', '27/28. damodharan street, t.nagar', '', '2019-03-14', '16:10:20'),
(34, 31, 'WT1007', 1, 'Pending', '0', '27/28. damodharan street, t.nagar', '', '2019-03-14', '16:11:11'),
(35, 31, 'MT1005', 1, 'Pending', '0', '27/28. damodharan street, t.nagar', '', '2019-03-14', '16:11:11'),
(36, 32, 'MT1002', 1, 'Pending', '0', 'Vinayaka Nagar Colony1, Mylapore, Chennai, TamilNadu, India', '7395962447', '2019-03-14', '17:18:01'),
(37, 33, 'MT1001', 1, 'Pending', '0', '3/13 AB Gandhi Nagar 1st Street, Periyar Salai Palavakkam', '', '2019-03-14', '18:11:28'),
(38, 34, 'MT1004', 1, 'Pending', '0', 'Vinayaka Nagar Colony1, Mylapore, Chennai, TamilNadu, India', '7395962447', '2019-03-14', '18:40:15'),
(39, 35, 'MT1002', 1, 'Pending', '0', '3/13 AB Gandhi Nagar 1st Street, Periyar Salai Palavakkam', '', '2019-04-03', '10:32:39'),
(40, 36, 'MT1000', 1, 'Pending', '0', 'Vinayaka Nagar Colony1, Mylapore, Chennai, TamilNadu, India', '7395962447', '2019-04-12', '15:45:04'),
(41, 37, 'MT1001', 1, 'Pending', '0', '3/13 AB Gandhi Nagar 1st Street, Periyar Salai Palavakkam', '', '2019-04-12', '23:50:47'),
(42, 38, 'MT1006', 1, 'Pending', '0', '3/13 AB Gandhi Nagar 1st Street, Periyar Salai Palavakkam', '', '2019-04-20', '12:48:55');

-- --------------------------------------------------------

--
-- Table structure for table `othersinfo`
--

CREATE TABLE `othersinfo` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telephone` varchar(255) NOT NULL,
  `gstnumber` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `postcode` varchar(255) NOT NULL,
  `interested` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `othersinfo`
--

INSERT INTO `othersinfo` (`id`, `firstname`, `email`, `telephone`, `gstnumber`, `address`, `postcode`, `interested`) VALUES
(1, 'samantony', 'samantony59@gmail.com', '123454556664343', '23343454554', 'saligramam', '600094', 'Corporate T-Shirts');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `price`, `quantity`, `description`) VALUES
(1, 'Men_T_Shirt', '600', '4', 'good'),
(2, 'Men_Shirt', '780', '2', 'good'),
(3, 'Women_T_Shirt', '578', '2', 'good'),
(4, 'Sportz_Women_T_Shirt', '985', '2', 'good');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `rating` varchar(255) NOT NULL,
  `review` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `del_status` int(255) NOT NULL DEFAULT 0,
  `star` varchar(25) NOT NULL,
  `productid` varchar(255) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`id`, `email`, `rating`, `review`, `name`, `del_status`, `star`, `productid`, `date`) VALUES
(426, 'sam@gmail.com', 'satisfaction', 'fooooo', 'dare', 0, '4', 'MT1001', '2018-07-05'),
(427, 'adas@gmail.com', 'satisfaction', 'fooo', 'dasd', 0, '3', 'MT1004', '2018-08-23'),
(428, 'grdg', 'perfect', 'rhthrth', 'fgsrgr', 0, '2', 'MT1004', '2018-08-23'),
(429, 'grdrfgtdf', 'Poor', 'drfhtfghyfht', 'efrdsgrdf', 0, '2', 'MT1004', '2018-08-23'),
(430, 'sdgrdg', 'good', 'szgrrdgrdghtdh', 'etgrdtg', 0, '2', 'MT1004', '2018-08-23'),
(431, 'drgyrthtrh', 'satisfaction', 'rdyhtrh', 'sgrdhtfgj', 0, '3', 'MT1004', '2018-08-23'),
(432, 'kirstgthrdthty', 'bad', 'uhjrtjuytjufk', 'setgrdhrtfj', 0, '2', 'MT1004', '2018-08-23');

-- --------------------------------------------------------

--
-- Table structure for table `subscribe`
--

CREATE TABLE `subscribe` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `del_status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscribe`
--

INSERT INTO `subscribe` (`id`, `email`, `del_status`) VALUES
(1, '', 0),
(2, '$email', 0),
(3, '', 0),
(4, '', 0),
(5, '', 0),
(6, 'log', 0),
(7, 'd', 0),
(8, 'demo', 0);

-- --------------------------------------------------------

--
-- Table structure for table `userinfo`
--

CREATE TABLE `userinfo` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `card_name` varchar(255) NOT NULL DEFAULT '0',
  `card_number` varchar(255) NOT NULL DEFAULT '0',
  `expiry_month` int(50) NOT NULL DEFAULT 0,
  `expiry_year` varchar(255) NOT NULL DEFAULT '0',
  `del_status` int(11) NOT NULL DEFAULT 0,
  `wish_status` varchar(255) NOT NULL,
  `activation_code` varchar(255) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userinfo`
--

INSERT INTO `userinfo` (`id`, `firstname`, `email`, `mobile`, `password`, `address`, `zipcode`, `country`, `city`, `state`, `card_name`, `card_number`, `expiry_month`, `expiry_year`, `del_status`, `wish_status`, `activation_code`) VALUES
(190, 'jo', 'jo@gmail.com', '7395962447', '789', 'Trustpuram, Kodambakkam, Chennai, Tamil Nadu, Indiaa', '600024', 'India', 'Chennai', 'TN', 'Rupay', '6071 0510 1201 1122', 3, '2027', 1, '71e4dc58cf6c5ee0b9b48c3b401b8d36', 'LG'),
(197, 'sam', 'samantony59@gmail.com', '02124234324', '456', 'Royapettah, Chennai, Tamil Nadu, India', '60026', 'India', 'Chennai', 'TN', '0', '0', 0, '0', 1, 'b7f363af1d369a9bf3f084107f7b2a3d', '278'),
(198, 'Vairavel', 'vairavel2020@gmail.com', '9345555196', 'vairavel@2', '3/13 AB Gandhi Nagar 1st Street, Periyar Salai Palavakkam', '600041', 'India', 'Chennai', 'Tamilnadu', '0', '0', 0, '0', 1, '3312394c57e6bc64c8538a25f11fa430', 'LG'),
(199, 'Vairavel', 'vairavel2020@gmail.com', '9345555196', 'vairam@2', '2-50,Subramaniyapuram,Pannavadi PO Mettur TK Salem Dt', '636303', 'India', 'Salem', 'Tamil Nadu', '0', '0', 0, '0', 1, '51cacc5815bbe20204bac940c15118b1', 'LG'),
(200, 'Murugan.l', 'muruganselvi9305@gmail.com', '9840769035', 'sri1981', '2/1529 D Karpaga vinayaka Nagar 4th main road 20th cross street', '600115', 'India', 'Kanchipuram', 'Tamilnadu', '0', '0', 0, '0', 1, '6fb96b03b3c444ba51333663802d60cd', 'LG'),
(201, 'Chenthil', 'kumarchenthil2@gmail.com', '9443502670', 'athish', '48 Vanchiyathithan new street, Vadasery', '629001', 'India', 'Nagercoil', 'Tamilnadu', '0', '0', 0, '0', 1, '1c94c416911fce5e9c0a452c965135c8', '212'),
(202, 'ts shrikrishna', 'shrikrishna@opendesigns.in', '9840218632', 'saibaba2010', '27/28. damodharan street, t.nagar', '600017', 'India', 'chennai', 'Tamil Nadu', '0', '0', 0, '0', 1, '053461eda1e09e4477db122162987550', 'LG'),
(203, 'Ashik', 'ashik.a@zepo.in', '9084616116', 'upd4ashik', 'Chira Bazaar', '400002', 'India', 'Mumbai', 'Maharashtra', '0', '0', 0, '0', 1, '7308e9b4ffae8fd1c47be26ed65ef4a3', 'LG'),
(204, 'anto', 'samantony60@gmail.com', '34335345', 'coder\"123', 'T. Nagar, Chennai, Tamil Nadu, India', '600098', 'India', 'Chennai', 'TN', '0', '0', 0, '0', 1, '2ec4a0f18dc9c3bb76094b102adf5fb2', 'LG'),
(205, 'qnto', 'samantony61@gmail.com', '45656768768', 'coder\"123', '67/91, Manavalan Street, Kulasekarapuram, Chinmaya Nagar, Sri Iyappa Nagar, Chennai, Tamil Nadu, India', '600093', 'India', 'Chennai', 'TN', '0', '0', 0, '0', 1, '712e7dce96348d77341e1463bdc64417', 'LG');

-- --------------------------------------------------------

--
-- Table structure for table `wallet_payment`
--

CREATE TABLE `wallet_payment` (
  `id` int(11) NOT NULL,
  `bank_ref_no` varchar(255) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `tracking_id` varchar(255) NOT NULL,
  `order_status` varchar(255) NOT NULL,
  `failure_message` varchar(255) NOT NULL,
  `payment_mode` varchar(255) NOT NULL,
  `card_name` varchar(255) NOT NULL,
  `status_code` varchar(255) NOT NULL,
  `status_message` varchar(255) NOT NULL,
  `currency` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `billing_name` varchar(255) NOT NULL,
  `billing_address` varchar(255) NOT NULL,
  `billing_city` varchar(255) NOT NULL,
  `billing_state` varchar(255) NOT NULL,
  `billing_zip` varchar(255) NOT NULL,
  `billing_country` varchar(255) NOT NULL,
  `billing_tel` varchar(255) NOT NULL,
  `billing_email` varchar(255) NOT NULL,
  `delivery_name` varchar(255) NOT NULL,
  `delivery_address` varchar(255) NOT NULL,
  `delivery_city` varchar(255) NOT NULL,
  `delivery_state` varchar(255) NOT NULL,
  `delivery_zip` varchar(255) NOT NULL,
  `delivery_country` varchar(255) NOT NULL,
  `delivery_tel` varchar(255) NOT NULL,
  `mer_amount` varchar(255) NOT NULL,
  `trans_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_credentials`
--
ALTER TABLE `admin_credentials`
  ADD PRIMARY KEY (`admin_setting_id`);

--
-- Indexes for table `bank_order_items`
--
ALTER TABLE `bank_order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_payment`
--
ALTER TABLE `bank_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bulkorder`
--
ALTER TABLE `bulkorder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bulkorderinfo`
--
ALTER TABLE `bulkorderinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_wishlist`
--
ALTER TABLE `client_wishlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cod_payment`
--
ALTER TABLE `cod_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactinfo`
--
ALTER TABLE `contactinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deals_of_the_day`
--
ALTER TABLE `deals_of_the_day`
  ADD PRIMARY KEY (`s.no`);

--
-- Indexes for table `delivery_address`
--
ALTER TABLE `delivery_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hiddden`
--
ALTER TABLE `hiddden`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loops_categorie`
--
ALTER TABLE `loops_categorie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loops_category`
--
ALTER TABLE `loops_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loops_kids_men_boxers`
--
ALTER TABLE `loops_kids_men_boxers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loops_kids_men_shirt`
--
ALTER TABLE `loops_kids_men_shirt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loops_kids_men_sports_wear`
--
ALTER TABLE `loops_kids_men_sports_wear`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loops_kids_men_tshirt`
--
ALTER TABLE `loops_kids_men_tshirt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loops_kids_women_sports_wear`
--
ALTER TABLE `loops_kids_women_sports_wear`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loops_kids_women_tshirt`
--
ALTER TABLE `loops_kids_women_tshirt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loops_list_men_innerwearvets`
--
ALTER TABLE `loops_list_men_innerwearvets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loops_list_men_winterwear`
--
ALTER TABLE `loops_list_men_winterwear`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loops_men_shirt`
--
ALTER TABLE `loops_men_shirt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loops_men_sports_wear`
--
ALTER TABLE `loops_men_sports_wear`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loops_men_tshirt`
--
ALTER TABLE `loops_men_tshirt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loops_sports_men_tshirt`
--
ALTER TABLE `loops_sports_men_tshirt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loops_sports_women_tshirt`
--
ALTER TABLE `loops_sports_women_tshirt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loops_women_sports_wear`
--
ALTER TABLE `loops_women_sports_wear`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loops_women_tshirt`
--
ALTER TABLE `loops_women_tshirt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `othersinfo`
--
ALTER TABLE `othersinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribe`
--
ALTER TABLE `subscribe`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userinfo`
--
ALTER TABLE `userinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallet_payment`
--
ALTER TABLE `wallet_payment`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_credentials`
--
ALTER TABLE `admin_credentials`
  MODIFY `admin_setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bank_order_items`
--
ALTER TABLE `bank_order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bank_payment`
--
ALTER TABLE `bank_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `bulkorder`
--
ALTER TABLE `bulkorder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `bulkorderinfo`
--
ALTER TABLE `bulkorderinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `client_wishlist`
--
ALTER TABLE `client_wishlist`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `cod_payment`
--
ALTER TABLE `cod_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contactinfo`
--
ALTER TABLE `contactinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=367;

--
-- AUTO_INCREMENT for table `deals_of_the_day`
--
ALTER TABLE `deals_of_the_day`
  MODIFY `s.no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `delivery_address`
--
ALTER TABLE `delivery_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `hiddden`
--
ALTER TABLE `hiddden`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `loops_categorie`
--
ALTER TABLE `loops_categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `loops_category`
--
ALTER TABLE `loops_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `loops_kids_men_boxers`
--
ALTER TABLE `loops_kids_men_boxers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `loops_kids_men_shirt`
--
ALTER TABLE `loops_kids_men_shirt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `loops_kids_men_sports_wear`
--
ALTER TABLE `loops_kids_men_sports_wear`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `loops_kids_women_sports_wear`
--
ALTER TABLE `loops_kids_women_sports_wear`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `loops_list_men_innerwearvets`
--
ALTER TABLE `loops_list_men_innerwearvets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loops_men_sports_wear`
--
ALTER TABLE `loops_men_sports_wear`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `loops_sports_men_tshirt`
--
ALTER TABLE `loops_sports_men_tshirt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `loops_sports_women_tshirt`
--
ALTER TABLE `loops_sports_women_tshirt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `loops_women_sports_wear`
--
ALTER TABLE `loops_women_sports_wear`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `othersinfo`
--
ALTER TABLE `othersinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=433;

--
-- AUTO_INCREMENT for table `subscribe`
--
ALTER TABLE `subscribe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `userinfo`
--
ALTER TABLE `userinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;

--
-- AUTO_INCREMENT for table `wallet_payment`
--
ALTER TABLE `wallet_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
