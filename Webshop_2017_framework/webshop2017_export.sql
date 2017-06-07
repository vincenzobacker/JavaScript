-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 11 jan 2017 om 17:02
-- Serverversie: 5.7.14
-- PHP-versie: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webshop2017`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `categories`
--

CREATE TABLE `categories` (
  `categoryID` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `products_count` int(11) DEFAULT NULL,
  `description` text,
  `picture` varchar(30) DEFAULT NULL,
  `products_count_admin` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `categories`
--

INSERT INTO `categories` (`categoryID`, `name`, `parent`, `products_count`, `description`, `picture`, `products_count_admin`) VALUES
(1, 'Automobiles', 0, 7, 'The world famous automobiles', 'C1_jaguar.jpg', 0),
(2, 'Cellular', 0, 25, 'Callular phones and accessories', 'C2_cphone.jpg', 0),
(3, 'Sport', 0, 5, '', 'C3_RBaccess.jpg', 0),
(4, 'Audio / Video', 0, 25, 'We sell DVD, home theatres (currently out of stock) and mp3 players', 'C4_cplayer.jpg', 0),
(5, 'Beverages', 0, 5, '', 'C5_svetly_lezak.gif', 0),
(8, 'Mercedes', 1, 2, '', '', 2),
(9, 'Toyota', 1, 1, '', '', 1),
(12, 'In-line skates', 3, 2, '', '', 3),
(13, 'Snowboards', 3, 3, '', '', 3),
(14, 'Samsung', 2, 4, '', '', 4),
(15, 'Ericsson', 2, 4, '', '', 4),
(16, 'Accessories', 17, 1, '', '', 1),
(17, 'Nokia', 2, 12, '', '', 11),
(18, 'Siemens', 2, 5, '', '', 5),
(19, 'Accessories', 14, 0, '', '', 0),
(20, 'DVD', 4, 21, 'DVD movies. High quality!', '', 22),
(21, 'mp3-players', 4, 4, '', '', 4),
(23, 'Books', 0, 7, '', 'C23_pic_gifts.gif', 1),
(24, 'Lexus', 1, 2, '"Japanese Mercedes"', '', 2),
(25, 'Clothes', 0, 3, '', 'C25_clothes.jpg', 0),
(27, 'Computers', 0, 13, '', 'C27_comp.gif', 0),
(38, 'Winter', 25, 1, '', '', 1),
(39, 'Summer', 25, 1, '', '', 1),
(40, 'Home', 25, 1, '', '', 1),
(46, 'Alcohol', 5, 3, '', '', 3),
(47, 'Alcohol free', 5, 2, '', '', 2),
(51, 'Notebooks', 27, 5, '', '', 5),
(57, 'PDA', 27, 6, '', '', 6),
(58, 'Personal', 27, 2, '', '', 2),
(63, 'Lotus', 1, 1, 'The fast and the furious', '', 1),
(64, 'Lamborghini', 1, 1, 'Famous autos from Italy!', '', 1),
(71, 'Harry Potter', 23, 3, 'the world known books about Harry Potter', '15794s.jpg', 3),
(72, 'Design', 23, 1, '', '', 1),
(73, 'Programming', 23, 2, '', '', 2),
(74, 'Classic', 25, 0, '', '', 0),
(75, 'Multimedia', 27, 0, '', '', 0),
(76, 'Home theatres', 4, 0, '', '', 0),
(77, 'Bycicles', 3, 0, '', '', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `ordered_carts`
--

CREATE TABLE `ordered_carts` (
  `productID` int(11) NOT NULL,
  `orderID` int(11) NOT NULL,
  `name` char(255) DEFAULT NULL,
  `Price` float DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `ordered_carts`
--

INSERT INTO `ordered_carts` (`productID`, `orderID`, `name`, `Price`, `Quantity`) VALUES
(45, 0, 'Coca-Cola', 0.99, 1),
(47, 0, 'Budwieser', 0.39, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `orderregels`
--

CREATE TABLE `orderregels` (
  `orderid` int(11) NOT NULL,
  `voornaam` varchar(50) NOT NULL,
  `achternaam` varchar(50) NOT NULL,
  `straat` varchar(50) NOT NULL,
  `huisnummer` int(6) NOT NULL,
  `plaats` varchar(25) NOT NULL,
  `provincie` varchar(25) NOT NULL,
  `postcode` varchar(25) NOT NULL,
  `land` varchar(25) NOT NULL,
  `telefoon` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `levering` text NOT NULL,
  `betaling` text NOT NULL,
  `service` text NOT NULL,
  `ordertijd` date NOT NULL,
  `productid1` int(11) NOT NULL,
  `productaantal1` int(11) NOT NULL,
  `afhandeling` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `orderregels`
--

INSERT INTO `orderregels` (`orderid`, `voornaam`, `achternaam`, `straat`, `huisnummer`, `plaats`, `provincie`, `postcode`, `land`, `telefoon`, `email`, `levering`, `betaling`, `service`, `ordertijd`, `productid1`, `productaantal1`, `afhandeling`) VALUES
(1, 'pietje', 'bell', 'Netherlands', 0, 'rotterdam', 'phl', '3197KG', 'Netherlands', '010', 'k.bakker@stc-r.nl', '', '', '', '2016-04-20', 0, 0, ''),
(2, 'a', 'bakker', 'Netherlands', 0, 'rotterdam', 'phl', '3197KG', 'Netherlands', '0101', 'info@zadkine.nl', '', '', '', '2016-04-20', 0, 0, ''),
(3, 'pietje', 'Bell', 'posthumalaan', 120, 'rotterdam', 'zuid-holland', '3197KG', '', '0101', 'info@zadkine.nl', '1', '', '', '2016-04-20', 3, 22, 'vooruitbetaling'),
(4, 'pietje', 'Bell', 'posthumalaan', 1, 'rotterdam', 'zuid holland', '3197KG', 'Netherlands', '018145759', 'info@zadkine.nl', '2', '', '', '2016-04-20', 2, 12, 'rembours'),
(5, 'm', 'bakker', 'posthumalaan', 120, 'rotterdam', 'zuid holland', '3206SL', 'Belgium', '018145759', 'k.bakker@zadkine.nl', '', '', '', '2016-04-26', 3, 5, ''),
(6, 'm', 'bakker', 'posthumalaan', 120, 'rotterdam', 'zuid holland', '3197KG', 'Barbados', '123', 'info@telfort.nl', '1', '', '', '2016-04-26', 3, 12, 'rembours'),
(7, '', '', '', 0, '', '', '', '', '', '', '', '', '', '2016-05-27', 1, 1, '');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `orders`
--

CREATE TABLE `orders` (
  `orderID` int(11) NOT NULL,
  `order_time` datetime DEFAULT NULL,
  `cust_firstname` varchar(30) DEFAULT NULL,
  `cust_lastname` varchar(30) DEFAULT NULL,
  `cust_email` varchar(30) DEFAULT NULL,
  `cust_country` varchar(30) DEFAULT NULL,
  `cust_zip` varchar(30) DEFAULT NULL,
  `cust_state` varchar(30) DEFAULT NULL,
  `cust_city` varchar(30) DEFAULT NULL,
  `cust_address` varchar(30) DEFAULT NULL,
  `cust_phone` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `orders`
--

INSERT INTO `orders` (`orderID`, `order_time`, `cust_firstname`, `cust_lastname`, `cust_email`, `cust_country`, `cust_zip`, `cust_state`, `cust_city`, `cust_address`, `cust_phone`) VALUES
(1, '2016-03-23 22:09:38', 'k', 'bakker', 'k.bakker@zadkine.nl', 'netherlands', '3197KG', 'zuid-holland', 'rotterdam', 'second floor', ''),
(2, '2016-03-23 22:17:15', 'k', 'bakker', 'k.bakker@zadkine.nl', 'netherlands', '3197KG', 'zuid-holland', 'rotterdam', '', ''),
(3, '2016-04-05 19:28:52', 'k', 'bakker', 'k.bakker@zadkine.nl', 'Netherlands', '3197KG', 'posthumalaan', 'rotterdam', 'Netherlands', '010'),
(13, '2016-04-06 12:43:10', '', '', '', '', '', '', '', '', ''),
(14, '2016-04-18 19:24:08', '', '', '', '', '', '', '', '', ''),
(15, '2016-04-18 20:08:05', '', '', '', '', '', '', '', '', ''),
(16, '2016-04-18 20:36:33', '', '', '', '', '', '', '', '', ''),
(17, '2016-04-18 22:38:13', '', '', '', '', '', '', '', '', ''),
(18, '2016-04-18 22:39:08', '', '', '', '', '', '', '', '', ''),
(19, '2016-04-18 22:39:46', '', '', '', '', '', '', '', '', ''),
(20, '2016-04-18 22:40:28', '', '', '', '', '', '', '', '', ''),
(21, '2016-04-18 22:40:47', '', '', '', '', '', '', '', '', ''),
(22, '2016-04-18 22:40:59', '', '', '', '', '', '', '', '', ''),
(23, '2016-04-18 22:43:12', '', '', '', '', '', '', '', '', ''),
(24, '2016-04-18 22:45:24', '', '', '', '', '', '', '', '', ''),
(25, '2016-04-18 22:45:49', '', '', '', '', '', '', '', '', ''),
(26, '2016-04-18 22:47:58', '', '', '', '', '', '', '', '', ''),
(27, '2016-04-18 22:49:04', '', '', '', '', '', '', '', '', ''),
(28, '2016-04-18 22:50:04', '', '', '', '', '', '', '', '', ''),
(29, '2016-04-19 10:20:49', '', '', '', '', '', '', '', '', ''),
(30, '2016-04-19 15:23:07', '', '', '', '', '', '', '', '', ''),
(31, '2016-04-20 09:33:25', 'k', 'bakker', 'k.bakker@zadkine.nl', 'Netherlands', '3197KG', 'posthumalaan', 'rotterdam', 'Netherlands', '010'),
(35, '2017-01-09 21:07:57', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `products`
--

CREATE TABLE `products` (
  `productID` int(11) NOT NULL,
  `categoryID` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `customers_rating` float NOT NULL,
  `Price` float DEFAULT NULL,
  `picture` varchar(30) DEFAULT NULL,
  `in_stock` int(11) DEFAULT NULL,
  `thumbnail` varchar(30) DEFAULT NULL,
  `customer_votes` int(11) NOT NULL,
  `items_sold` int(11) NOT NULL,
  `big_picture` varchar(30) DEFAULT NULL,
  `enabled` int(11) NOT NULL,
  `brief_description` text,
  `list_price` float DEFAULT NULL,
  `product_code` char(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `products`
--

INSERT INTO `products` (`productID`, `categoryID`, `name`, `description`, `customers_rating`, `Price`, `picture`, `in_stock`, `thumbnail`, `customer_votes`, `items_sold`, `big_picture`, `enabled`, `brief_description`, `list_price`, `product_code`) VALUES
(1, 9, 'Toyota Land Cruiser 100', '', 4.16667, 70000, 'toyota_landcruizer.jpg', 100, 'toyota_landcruizer_1.jpg', 12, 13, 'toyota_landcruizer.jpg', 1, '', 0, ''),
(4, 24, 'Lexus GS300', '', 4.05, 49000, '4_gs300072.jpg', 100, '4_gs300071.jpg', 12, 9, '4_gs30007.jpg', 1, '', 51000, ''),
(6, 13, 'BURTON Balance', '', 5, 640, '848_Bur_Bal_157,5_m.gif', 100, '491_Bur_Bal_157,5_m_small.jpg', 1, 0, '', 1, '', 0, ''),
(7, 14, 'Samsung R200', 'Its stylish design makes it easy to grip with a comfortable feel. The SGH-R200 has PIM (personal information management) functions that contain Timetable, Scheduler, Phonebook, analog & digital clock, among other features. You will be satisfied using them. \r\r\n\r\r\nThe SGH-R200`s long large battery of can last for up to 5 hours talking and be in standby for up to 150 hours.\r\r\n\r\r\nThis colorful phone has a sophisticated blue screen which attracts people in the street. You can also select various ring tone colors to different callers to easily identify them. Select this unique phone right now! And then you can be a unique person! \r\r\n', 4, 135, '821_sghr200.jpg', 100, '0', 2, 0, '', 1, '', 0, ''),
(8, 14, 'Samsung N100', 'The Samsung GSM WAP handset, SGH-N100, is the world`s smallest and lightest WAP phone, measuring just 105 x 42 x 17.5 mm and weighing only 83 g. It provides access to the World Wide Web, allowing users to perform e-mail functions, receive current news, traffic, weather, and stock reports, and make on-line purchases such as airline or concert tickets, without using a PC. Its high resolution LCD provides a clear display of the information on the Internet  \r\r\n \r\r\n', 2, 175, '867_sghn100.jpg', 100, '0', 1, 0, '', 1, '', 0, ''),
(9, 13, 'BURTON Power', '', 0, 659, '253_Bur_Pow_158_m.gif', 100, '606_Bur_Pow_158_m_small.jpg', 0, 1, '', 1, '', 0, ''),
(10, 17, 'Nokia 8850', 'This section offers guides to help you make the most of your Nokia 8850 phone. ', 3.66667, 335, '608_n8850gold.jpg', 100, '505_n8850gold_small.jpg', 3, 0, '', 1, '', 0, ''),
(11, 17, 'Nokia 8250', 'There`s more to the new Nokia 8250 than meets the eye. It`s not just the electric blue display, or its sleek, streamlined looks. It`s also a spectrum of stylish, state-of-the-art and thoughtful features that let you connect to life. ', 5, 273, '288_n8250.jpg', 100, '913_n8250_small.jpg', 1, 2, '', 1, '', 0, ''),
(12, 17, 'Nokia 8210', 'Welcome to the Nokia 8210 phone support pages, where you can find assistance and information to help you make the most of your Nokia 8210 phone. ', 2.25, 173, '374_n8210.jpg', 100, '256_n8210_small.jpg', 4, 1, '', 1, '', 0, ''),
(13, 17, 'Nokia 6210', 'Use PC Suite to synchronize phone information with a compatible PC, install software, configure phone settings, and make backups of phone files. \r\r\n\r\r\n', 0, 207, '252_n6210.jpg', 100, '232_n6210_small.jpg', 0, 0, '', 1, '', 0, ''),
(14, 17, 'Nokia 3330', 'Welcome to the Nokia 3330 phone support pages, where you can find assistance and information to help you make the most of your Nokia 3330 phone. ', 0, 109, '592_n3330.jpg', 100, '32_n3330_small.jpg', 0, 0, '', 1, '', 0, ''),
(15, 17, 'Nokia 3210', 'The Nokia 3210 phone has an ergonomic design with a large display, easy-to-use keypad, and built-in antenna. It lets you send pictures as part of a short message to other compatible phones. \r\r\n\r\r\n', 0, 90, '496_n3210.jpg', 100, '918_n3210_small.jpg', 0, 0, '', 1, '', 0, ''),
(16, 17, 'Nokia 7110', 'With Modem Setup installed on your compatible PC, you can use your Nokia 7110 phone as a modem for PC access to the Internet. You can also configure your phone`s data capabilities and transfer speed. \r\r\n\r\r\n', 0, 160, '787_n7110.jpg', 100, '76_n7110_small.jpg', 0, 0, '', 1, '', 0, ''),
(17, 17, 'Nokia 9210', 'Combining new key technologies such as high-resolution color display and high-speed mobile email, the Nokia 9210 Communicator is designed to meet the demanding needs of mobile professionals and corporate users.\r\r\n', 0, 803, '960_n92104.jpg', 100, '937_n92104_small.jpg', 0, 0, '', 1, '', 0, ''),
(18, 17, 'Nokia 6310', 'This tutorial is designed as an interactive guide to help you familiarize yourself with your Nokia 6310 phone. ', 2, 275, '524_n6310.jpg', 100, '644_n6310_small.jpg', 1, 0, '', 1, '', 0, ''),
(19, 17, 'Nokia 8310', 'This section contains detailed guides on a variety of topics. These guides are currently available in English. ', 4.11176, 299, '561_n8310.jpg', 100, '596_n8310_small.jpg', 17, 8, '', 1, '', 330, ''),
(20, 17, 'Nokia 3310', 'Welcome to the Nokia 3310 phone support pages, where you can find assistance and information to help you make the most of your Nokia 3310 phone. ', 0, 99, '398_n3310.jpg', 100, '601_n3310_small.jpg', 0, 0, '', 1, '', 0, ''),
(21, 15, 'Ericsson T29', 'Today, Ericsson introduced its new T29 mobile phone in Europe. It is the first phone to feature Enhanced Messaging Service (EMS) ', 0, 173, '233_ert29.jpg', 100, '217_ert29_small.jpg', 0, 2, '', 1, '', 0, ''),
(22, 15, 'Ericsson T39', 'On this site you`ll find useful information about Ericsson`s new T39 mobile phone and the technologies that made it possible.\r\r\n', 0, 266, '912_ert392.jpg', 100, '332_ert392_small.jpg', 0, 0, '', 1, '', 0, ''),
(23, 15, 'Ericsson T68', 'Today, Ericsson announced the T68, its first mobile phone with color display, Multimedia Messaging Service (MMS).', 0, 44, '452_ert68.jpg', 100, '944_ert68_small.jpg', 0, 0, '', 1, '', 0, ''),
(24, 15, 'Ericsson T60', 'At the Ericsson Strategy and Technology Summit today, Ericsson announced the T60 WAP-enabled handset. ', 3.33333, 77, '37_ert602.jpg', 100, '764_ert602_small.jpg', 3, 2, '', 1, '', 0, ''),
(25, 14, 'Samsung A100', 'Distinguished design \r\r\nSmall folder type\r\r\n\r\r\nExcellent business companion\r\r\nPersonal Information Management\r\r\n(Calendar / To do list)\r\r\nRing Customization / Own Melody Creation \r\r\nShort cut Easy communication\r\r\nIrDA\r\r\n\r\r\nUser Friendly\r\r\nLarge display & navigation key map  \r\r\n \r\r\nDisplay\r\r\nIlluminated full graphics display with games\r\r\nand animation\r\r\nDynamic text display for large/middle/small\r\r\nfont\r\r\nUp to four lines text and numbers\r\r\nEL Back light(much clear in the dark)\r\r\n\r\r\nMemories \r\r\nSIM card memory location (depend on SIM)\r\r\nPhone memory locatin\r\r\n(99 names and numbers)\r\r\nScratch pad memo\r\r\nLast 10 numbers dialed/received/missed\r\r\nShort cut method\r\r\nSpeed dialing (9 numbers)\r\r\n\r\r\nCost Control & Security\r\r\nAdvice of Charge\r\r\nCall log \r\r\nCall time display\r\r\nCall time alert \r\r\nPIN 1 / PIN 2\r\r\nPhone lock Option\r\r\n\r\r\nSMS & Data transmission\r\r\nShort message service\r\r\nVoice mail service \r\r\nImbeded modem \r\r\nFast data transmission rate : 14.4 kbps Call Management\r\r\nEnhanced voice quality(EFR)\r\r\nAutomatic redial \r\r\nInternational call access (`+` function)\r\r\nAdvanced tone dialing feature (DTMF)\r\r\nfixed dialing number\r\r\nCalling line identification\r\r\nAny key answer\r\r\nCall forwarding/ Call barring\r\r\nCall waiting / Call holding\r\r\nClosed user group\r\r\nMulti party calling (1+5 person)\r\r\nMute\r\r\n\r\r\nBusiness Feature Package \r\r\nCalendar / To do list / Calculator\r\r\nOwn Melody creation\r\r\nRing tone customization\r\r\nSIM application tool kit\r\r\nVibrating alert\r\r\nWorld time / Alarm\r\r\n\r\r\nOptional Control\r\r\nMultiple languages choice (20 languages)\r\r\n20 selectable ring tone\r\r\n3 selectable key tone\r\r\nVolume adjustment Ring, Speaker and\r\r\nKeytone\r\r\nGreeting message \r\r\n', 0, 187, '117_SGHA100.jpg', 100, '0', 0, 0, '', 1, '', 0, ''),
(26, 18, 'Siemens SL45', 'What if a phone is also an MP3 player, a digital voice recorder, an organizer? Can it still be called a phone? Whatever you decide to call the new SL45, you can`t help but label it as absolutely ingenious. State-of-the-art technology in 88 grams. An almost endless list of multimedia capabilities and intelligent features. The SL45 sets a new standard in the premium class of mobile phones. That is, if you can still call it a mobile phone.', 3.57143, 240, '83_ssl45.jpg', 100, '720_ssl45_small.jpg', 7, 1, '', 1, '', 0, ''),
(27, 18, 'Siemens ME45', 'The action never really stops and neither do you. Work, play or relaxation, you’re ready for the next challenge. So maximise your communication and personal organisation.\r\r\nThe ME45 is tough enough to stay with you in the heat of the action. Dust, water and shock resistant, light but tough ready to cope with life ’s changing conditions.\r\r\nGreat organisation is part of success. With the ME45 you have it right in your hand. Voice direction and dialling, flexible memorymanagement for total personalisation, easy and fast calendar synchronisation with Microsoft Outlook, GPRS for really fast net action via your notebook or WAP. Plus the ease of use and clarity you rightly expect from Siemens. All this packed into a phone which looks and sounds great.\r\r\nGood service is part of the package. Should your phone ever fail to function, we are there to help at all times. Manufacturing defects will be attended to immediately – and absolutely free of charge during the 12-month warranty period. After all, we want you to have maximum convenience not only when you ’re phoning!', 0, 219, '532_sme45.jpg', 100, '546_sme45_small.jpg', 0, 0, '', 1, '', 0, ''),
(28, 18, 'Siemens M35i', 'Even without being extreme, life can be tough on the streets, or on the slopes, in fact anywhere that the action reaches towards radical. That is when the M35i shows its strengths. Improved shock, water and dust resistance means that it stays right there with you. A natural extension to your lifestyle, supporting your interaction, where and whenever the need arises. But there is more than just action involved. The M35i gives you mobile web access, Personal Messaging with pictures, Intelligent Typing, and even allows the occasional game whenever life slows down. In short, the M35i is built for the demands of the NOW impulse.', 3.26667, 95, '604_sm35.jpg', 100, '366_sm35_small.jpg', 3, 4, '', 1, '', 0, ''),
(29, 18, 'Siemens C45', 'You will now have more choice and freedom of expression with the new C45. With front and back, exchangeable CLIPit™ Covers in eight vibrant and contemporary colors and the opportunity to download ringer melodies, display images and screensavers, as well as creating personalized covers, the C45 allows you to socialize in your own individual style. ', 0, 85.1, '760_sc45.jpg', 100, '729_sc45_small.jpg', 0, 0, '', 1, '', 0, ''),
(30, 18, 'Siemens C35i', 'High on style and elegance. Low on weight and space. Functional simplicity blending intense clarity with real staying power and mobile web access. The C35i fits to the lifestyle you choose to live. The clear, user-friendly interface (including selectable menu levels and animated graphics) puts you completely and easily in control. Dual Band technology and long talk and stand-by time keep you firmly in communication.', 0, 74.99, '387_sc35i.jpg', 100, '549_sc35i_small.jpg', 0, 0, '', 1, '', 0, ''),
(31, 14, 'Samsung A300', 'The premium SGH-A300, designed to succeed the SGH-A100 and A110, is targeted for people who lead in fashion rather than follow. This slim folder phone with its stylish high-resolution dual-LCDs will compliment any trend-setter`s lifestyle. The circular external LCD accentuates its fashion sense, but its greatest benefit is its use of the world first dual LCD to display messages and caller`s numbers without having to open the phone.\r\r\nAvailable in Europe.\r\r\n\r\r\n', 0, 294.99, '539_sgha300.jpg', 100, '0', 0, 0, '', 1, '', 0, ''),
(32, 13, 'BURTON Cruzer', '"freeride/freestyle"', 0, 345, '932_Bur_Cruz_155_m.gif', 100, '174_Bur_Cruz_155_m_small.jpg', 0, 0, '', 1, '', 0, ''),
(33, 12, 'Roces Khuti', '', 3.86429, 179, '919_khuti.jpg', 100, '294_khuti_small.jpg', 14, 6, '', 1, '', 0, ''),
(34, 12, 'Roces Majestic 12', '', 3.75, 149, '327_m12.jpg', 100, '157_m12_small.jpg', 2, 0, '', 1, '', 0, ''),
(35, 12, 'Rollerblade TRS Access', '', 0, 0, '643_RBaccess.jpg', 100, '337_RBaccess_small.jpg', 0, 0, '', 1, '', 0, ''),
(36, 39, 'Pants', '', 0, 19, '697_192.gif', 100, '315_192_small.jpg', 0, 1, '', 1, '', 0, ''),
(37, 38, 'Pants', '', 0, 21, '693_193.gif', 100, '116_193_small.jpg', 0, 0, '', 1, '', 0, ''),
(38, 40, 'Sweeter', '', 4.33333, 47, '194_095.gif', 100, '480_095_small.jpg', 3, 2, '', 1, '', 0, ''),
(39, 21, 'Diamond Rio Volt', '', 3.575, 149, 'riovolt_b.jpg', 100, '697_riovolt_b_small.jpg', 20, 39, '', 1, '', 173, ''),
(41, 21, 'MPIO Ñ-32 FM', 'Included User Manual, Setup CD-Rom, Serial D/C, High Quality Earphone, AA Battery       \r\r\nSize  66(W) x 90(H) x 18(D)mm   \r\r\nWeight  75g (excluding battery)     replay time  About 10 hours \r\r\nMapping environment  Win95/98/2000 \r\r\n \r\r\n', 1, 148, '688_mpio[big].gif', 100, '812_mpio[big]_small.jpg', 1, 0, '', 1, '', 0, ''),
(44, 20, 'Face/Off', '', 2.6375, 22.99, '548_4578.jpg', 100, '580_4578_small.jpg', 16, 11, '', 1, '', 0, ''),
(45, 47, 'Coca-Cola', 'The Coca-Cola company refreshes people across the globe. Take a look at some of our websites around the world to discover how we are meeting the demands of local tastes and cultures with almost 300 brands in nearly 200 countries.', 2.9875, 0.99, '732_469.jpg', 100, '0', 8, 22, '', 1, '', 1.12, ''),
(46, 46, 'Rum Captain Morgan', '', 3.5, 14, '46_captain_morgan.jpg', 100, '0', 3, 106, '', 1, '', 15, ''),
(47, 46, 'Budwieser', 'Beer from Czech Republic. Wazzup!?...\r\r\n\r\r\n\r\r\n', 3.91667, 0.39, '47_svetly_lezak.gif', 100, '0', 6, 10, '', 1, '', 0, ''),
(48, 47, 'Mineral water', 'Good water.', 2.25, 0.12, '913_AsusTmp.bmp', 100, '75_AUTOEXEC.BAK', 2, 0, '', 1, '', 0, ''),
(49, 24, 'Lexus RX300', '', 2.51, 52000, '825_RX300_1.jpg', 100, '115_RX300_1_small.jpg', 10, 24, '', 1, '', 0, ''),
(52, 46, 'Nevskoye', '', 0, 0.4, '', 100, '', 0, 1, '', 1, '', 0, ''),
(63, 63, 'Lotus Esprit', '', 3.49231, 72000, '63_lotus0.jpg', 100, '63_lotus2.jpg', 13, 7, '63_2lotus-640.jpg', 1, '', 80000, ''),
(64, 64, 'Lamborghini Diablo', '', 4.03077, 190000, '64_DSV2.jpg', 100, '64_DSV1.jpg', 13, 28, '64_DSV3.jpg', 1, '', 230000, ''),
(67, 8, 'Mercedes SLR', '', 4.14286, 240000, '67_491.jpg', 100, '67_490.jpg', 7, 0, '67_49.jpg', 1, '', 0, ''),
(68, 16, 'Hands Free', 'Microphone + head-phones', 0, 17, '', 100, '', 0, 0, '', 1, 'Microphone + head-phones', 18, ''),
(70, 8, 'Mercedes S600', '', 0, 85990, '', 100, '', 0, 1, '', 1, '', 87900, ''),
(71, 20, '13th floor', '', 0, 19.9, '', 100, '', 0, 3, '', 1, '', 20, ''),
(72, 20, 'South Park', 'Our favorite foul-mouthed third-graders face the wrath of Mr. Hat. General hysteria ensues, including a run-in with Iraqi dictator Saddam Hussein. Those crazy kids! \r\r\n\r\r\n', 4.5, 12, '', 100, '', 5, 5, '', 1, 'Our favorite foul-mouthed third-graders face the wrath of Mr. Hat. General hysteria ensues, including a run-in with Iraqi dictator Saddam Hussein. Those crazy kids!... \r\r\n\r\r\n', 16, ''),
(73, 20, 'Devil`s advocate', '', 0, 15.99, '', 100, '', 0, 0, '', 1, '', 17.5, ''),
(74, 20, '007 - The world is not enough', 'celluloid adventure, 007 is assigned to protect EIn his 19th lektra King (Sophie Marceau), an oil heiress attempting to control six trillion dollars worth of oil found in the Caspian Sea — and who blames Bond for the recent death of her father. Hot on King`s trail is Bosnian baddy Renard (Robert Carlyle). He`s had an encounter with Her Majesty`s Secret Service before — when 009 put a bullet in his head. Unfortunately for our hero, what doesn`t kill you makes you stronger, and Renard is: A) impervious to pain, and B) very cranky. Ah, yes, and there`s the lovely Dr. Christmas Jones (Richards), a shapely scientist drawn into the fray — and presumably, Bond`s bed. \r\r\n\r\r\n', 2.5, 15.99, '', 100, '', 1, 0, '', 1, 'celluloid adventure, 007 is assigned to protect EIn his 19th lektra King (Sophie Marceau), an oil heiress attempting to control six trillion dollars worth of oil found in the Caspian Sea... ', 17.5, ''),
(75, 20, '007 - Gold Finger', '', 5, 15.99, '', 100, '', 1, 7, '', 1, '', 17.5, ''),
(76, 20, '15 minutes', 'Talk about a media frenzy! When two killers embark on a New York crime spree, news outlets hype the story endlessly. This bestows notoriety on the attention-craving killers and creates a frustrating swirl of attention around the case`s already famous investigators: detective Eddie Fleming (Robert De Niro) and arson expert Jordy Warsaw (Edward Burns). Kelsey Grammer and Melina Kanakaredes co-star as sleazy media personalities. \r\r\n\r\r\n', 3.8, 15.99, '', 100, '', 2, 1, '', 1, 'Talk about a media frenzy! When two killers embark on a New York crime spree...', 17.5, ''),
(77, 20, 'American Pie', 'Four seniors make a pact to lose their virginity by the end of the school year and, in the process, learn those inevitable life lessons about themselves, each other, and love. \r\r\n\r\r\n', 2.55, 15.99, '', 100, '', 2, 2, '', 1, 'Four seniors make a pact to lose their virginity...', 17.5, ''),
(78, 20, 'American Pie 2', 'The sequel to American Pie, one of the biggest grossing teen comedies ever. The script for the sequel was completely reworked by Adam Herz, the writer of the original. The action takes place one year after high school, when Kevin arranges for a reunion of sorts at a Lake Michigan beach house. Oz`s girlfriend is in Paris studying, and he must resist different forms of temptation, which no doubt often come in the form of nubile young women. Nadia returns from the Czech Republic to put the moves on easily embarrassed Jim, who of course gets lots of advice from his easygoing dad. The rest of the crew has romantic and other entanglements to deal with, too. \r\r\n\r\r\n', 0, 15.99, '', 100, '', 0, 0, '', 1, 'The sequel to American Pie, one of the biggest grossing teen comedies ever. The script for the sequel was completely reworked by Adam Herz...', 17.5, ''),
(79, 20, 'Charlie`s angels', 'Drew Barrymore and her production company, Flower Films (Never Been Kissed), have collaborated with director Joseph McGinty Nichol (a k a McG) to produce a big-screen version of the campy TV classic. Charlie (the mysterious voice on the speakerphone) is the head of a detective agency that uses three beautiful women to investigate unscrupulous cases and nefarious individuals. In the updated version, Barrymore, Cameron Diaz, and Lucy Liu are the new Angels. Bill Murray plays Bosley. \r\r\n\r\r\n', 1.325, 15.99, '', 100, '', 4, 0, '', 1, 'Drew Barrymore and her production company, Flower Films (Never Been Kissed), have collaborated with director Joseph McGinty Nichol (a k a McG) to produce a big-screen version of the campy TV classic...', 17.5, ''),
(80, 20, 'Shipping news', 'Based on the Pulitzer Prize-winning novel by Annie Proulx, the story is about a man named Quoyle (Spacey), a newspaper writer, who moves his aunt and his two daughters back to his ancestral home in a Newfoundland fishing town after his adulterous wife dies in a car crash. Quoyle gets work writing shipping news as he struggles to pull the life of his family back together. \r\r\n\r\r\n ', 0, 15.99, '', 100, '', 0, 0, '', 1, 'Based on the Pulitzer Prize-winning novel by Annie Proulx...', 17.5, ''),
(81, 20, 'Monsters inc.', 'In the realm of things that go bump in the night … another animated flick from Pixar (Toy Story, Toy Story 2, A Bug`s Life), this comedy-adventure tells the story of a large, furry, spotted, and horned James P. Sullivan (John Goodman) and his best friend and roommate, a green, opinionated, feisty little one-eyed monster (Billy Crystal), who audition for spots under children`s beds. They then must capture the children`s screams, that provide the energy on which the monsters live. When the two accidently transport a little girl (Mary Gibbs) back to their realm — an absolute no-no — they are exiled from their land by the factory`s mean crablike CEO (James Coburn) and are forced to live in the human world. ', 0, 14.49, '', 100, '', 0, 0, '', 1, 'In the realm of things that go bump in the night … another animated flick from Pixar...', 0, ''),
(82, 20, 'Scary movie', '', 0, 15.99, '', 100, '', 0, 0, '', 1, '', 17.5, ''),
(83, 20, 'Lara Croft - Tomb raider', 'The further adventures of buxom video-game babe Lara Croft, the female Indiana Jones. \r\r\n\r\r\n', 0, 15.99, '', 100, '', 0, 0, '', 1, 'The further adventures of buxom video-game babe Lara Croft, the female Indiana Jones. \r\r\n\r\r\n', 17.5, ''),
(84, 20, 'Planet of the Apes', 'This version of Planet of the Apes is neither a remake of the 1968 original nor a sequel to the first five films and subsequent television show (all inspired by Pierre Boulle`s 1963 novel). Mark Wahlberg plays Leo Davidson, an Air Force astronaut whose chip crash-lands on a planet ruled by simians and worked by human slaves. Helena Bonham Carter plays a sympathetic ape who eventually joins Wahlberg`s posse — which includes Estella Warren — as they try to escape from the apes, led by an evil general (Tim Roth) and his first-in-command (Michael Clarke Duncan). Look for Charlton Heston, the star of the original, in a humorous supporting role. \r\r\n\r\r\n', 0, 15.99, '', 100, '', 0, 0, '', 1, 'This version of Planet of the Apes is neither a remake of the 1968 original nor a sequel to the first five films and subsequent television show (all inspired by Pierre Boulle`s 1963 novel)...', 17.5, ''),
(85, 20, 'Pay it to the bone', '', 0, 14.49, '', 100, '', 0, 0, '', 0, '', 16.1, ''),
(87, 20, 'Memento', 'An insurance investigator (Guy Pearce) loses his short-term memory when he sustains a head injury during his wife`s murder. He can now remember things only through notes, photographs, or writing them on his body. As he tries to track down his wife`s killer despite his handicap, the movie`s story moves backward in time to retrace his steps with him. \r\r\n\r\r\n', 0, 15.99, '', 100, '', 0, 0, '', 1, 'An insurance investigator (Guy Pearce) loses his short-term memory when he sustains a head injury during his wife`s murder...', 17.5, ''),
(88, 20, 'Frequency', 'What if you had the chance to travel back in time and change just one event in your life? For police officer John Sullivan, there is no question. He would undo the events of Oct. 12, 1969, when the Bruxton fire took the life of his father, a heroic firefighter. Now John may get his wish — and more — after he discovers his father`s old ham radio and finds himself talking to a man who claims to be a firefighter and who appears to be awaiting the `69 World Series. \r\r\n\r\r\n', 0, 15.99, '', 100, '', 0, 0, '', 1, 'What if you had the chance to travel back in time and change just one event in your life?...', 17.5, ''),
(89, 20, 'XXX', 'Vin Diesel stars as Xander "xXx" Cage, a notorious underground thrill-seeker who, until now, has been deemed untouchable by the law. But when NSA Agent Gibbons (Samuel L. Jackson) wants to infiltrate a Russian crime ring, he knows there`s only one man for the job. He makes a deal with xXx, offering him freedom from prosecution if he`ll use his extreme athletic skills and attitude to go undercover. \r\r\n\r\r\n', 3.775, 19.6, '', 100, '', 4, 0, '', 1, 'Vin Diesel stars as Xander "xXx" Cage, a notorious underground thrill-seeker...', 0, ''),
(90, 20, 'Gone in 60 seconds', 'Reformed car thief Randall "Memphis" Raines (Nicolas Cage) and his gang are forced to boost 50 autos in one night in order to pay off his little brother`s debt to a mob boss. \r\r\n\r\r\n', 0, 13.1, '', 100, '', 0, 0, '', 1, 'Reformed car thief Randall...', 17.5, ''),
(91, 20, '51th state', '', 3.15, 18.35, '', 100, '', 4, 0, '', 1, '', 0, ''),
(92, 20, 'Fast and furious', 'Loosely based on a Vibe magazine article, the movie is set in Los Angeles, where street youth gangs adapt Japanese sports cars into muscle cars and race them illegally. The two main plots of the movie are a Romeo and Juliet scenario about lovers from rival gangs and an undercover investigation of the highjacking ring. \r\r\n\r\r\n', 0, 14.49, '', 100, '', 0, 0, '', 1, 'Loosely based on a Vibe magazine article...', 17.5, ''),
(93, 57, 'Compaq iPAQ H3760', '3.8’’, 240 õ 320, 206MHz, 64MB,\r\r\n\r\r\n32MB ROM, MS Pocket PC 2002', 3.75, 365, '40212.jpg', 100, '40212_s.jpg', 2, 0, '', 1, '3.8’’, 240 õ 320, 206MHz, 64MB,\r\r\n\r\r\n32MB ROM, MS Pocket PC 2002', 377, ''),
(94, 57, 'HP Jornada 568', '3.5’’, 240õ320, 206MHz, 64MB,\r\r\n\r\r\n32MB ROM, Win CE ', 0, 531, '18787.jpg', 100, '18787_s.jpg', 0, 0, '', 1, '3.5’’, 240õ320, 206MHz, 64MB,\r\r\n\r\r\n32MB ROM, Win CE ', 550, ''),
(95, 57, 'Rover Computers RoverPC P5', '3.5’’, 240 õ 320, 206MHz, 64MB, 32MB ROM,\r\r\n\r\r\nMS Pocket PC 2002 ', 3.04, 414, '53101.jpg', 100, '53101_s.jpg', 10, 3, '', 1, '3.5’’, 240 õ 320, 206MHz, 64MB, 32MB ROM,\r\r\n\r\r\nMS Pocket PC 2002 ', 430, ''),
(96, 57, 'Fujitsu Siemens Pocket LOOX 60', '3.5’’, 240 õ 320, 400MHz, 64MB, 32MB ROM,\r\r\n\r\r\nMS Pocket PC 2002 \r\r\n\r\r\n', 0, 568, '50801.jpg', 100, '50801_s.jpg', 0, 0, '', 1, '3.5’’, 240 õ 320, 400MHz, 64MB, 32MB ROM,\r\r\n\r\r\nMS Pocket PC 2002 \r\r\n\r\r\n', 613, ''),
(97, 57, '3Com Palm m130', '160x160, 33MHz, 8MB, 4MB ROM, keypad,\r\r\n\r\r\nPalmOS \r\r\n\r\r\n', 0, 250, '50794.jpg', 100, '50794_s.jpg', 0, 0, '', 1, '160x160, 33MHz, 8MB, 4MB ROM, ñòèëóñ, keypad,\r\r\n\r\r\nPalmOS \r\r\n\r\r\n', 280, ''),
(98, 57, 'Nec Mobile Pro P300e', '3.5’’, 240 õ 320, 206MHz, 64MB, 32MB ROM,\r\r\n\r\r\nMS Pocket PC 2002 ', 0, 377, '42514.jpg', 100, '42514_s.jpg', 0, 0, '', 1, '3.5’’, 240 õ 320, 206MHz, 64MB, 32MB ROM,\r\r\n\r\r\nMS Pocket PC 2002 ', 400, ''),
(99, 51, 'Rover Computers RoverBook Voya', 'Cel 1.7GHz, 15.1’’ TFT, 128MB, 20.0GB,\r\r\r\nAGP, CD-ROM, 56Ê, 10/100 Eth, Win XP ', 0, 1080, '44893.jpg', 100, '44893_s.jpg', 0, 0, '', 1, 'Cel 1.7GHz, 15.1’’ TFT, 128MB, 20.0GB,\r\r\r\nAGP, CD-ROM, 56Ê, 10/100 Eth, Win XP ', 0, ''),
(100, 51, 'IBM ThinkPad A31p', 'P-IV 1.7GHz, 15’’ TFT, 256MB,\r\r\n\r\r\n60.0GB, 64MB AGP, DVD-R/CD-RW, 56Ê,\r\r\n\r\r\n10/100 Eth, wireless, WinXP Pro ', 0, 2610, '27183.jpg', 100, '27183_s.jpg', 0, 0, '', 1, 'P-IV 1.7GHz, 15’’ TFT, 256MB,\r\r\n\r\r\n60.0GB, 64MB AGP, DVD-R/CD-RW, 56Ê,\r\r\n\r\r\n10/100 Eth, wireless, WinXP Pro ', 2870, ''),
(101, 51, 'IBM ThinkPad T30 2366-89G', 'P-IV 2000GHz, 14.1’’ TFT, 256MB,\r\r\n\r\r\n40.0GB, 16MB AGP, DVD-ROM, 56Ê, 10/100 Eth,\r\r\n\r\r\nwireless, WinXP Pro ', 3.7, 3170, '39947.jpg', 100, '39947_s.jpg', 4, 0, '', 1, 'P-IV 2000GHz, 14.1’’ TFT, 256MB,\r\r\n\r\r\n40.0GB, 16MB AGP, DVD-ROM, 56Ê, 10/100 Eth,\r\r\n\r\r\nwireless, WinXP Pro ', 3400, ''),
(102, 51, 'Toshiba Tecra 9100', 'P-IV 1.4GHz, 14.1’’ TFT, 256MB,\r\r\n\r\r\n20GB, 16MB AGP, DVD-ROM, 56Ê, 10/100 Eth,\r\r\n\r\r\nwireless, WinXP Pro \r\r\n', 2.72, 2310, '28187.jpg', 100, '28187_s.jpg', 5, 0, '', 1, 'P-IV 1.4GHz, 14.1’’ TFT, 256MB,\r\r\n\r\r\n20GB, 16MB AGP, DVD-ROM, 56Ê, 10/100 Eth,\r\r\n\r\r\nwireless, WinXP Pro ', 2571, ''),
(103, 51, 'Fujitsu Siemens LifeBook P-111', 'TM5800 733MHz, 8.9’’ TFT, 256MB,\r\r\r\n20GB, 4MB AGP, 56Ê, 10/100 Eth, WinXP ', 0, 1503, '42499.jpg', 100, '42499_s.jpg', 0, 0, '', 1, 'TM5800 733MHz, 8.9’’ TFT, 256MB,\r\r\r\n20GB, 4MB AGP, 56Ê, 10/100 Eth, WinXP ', 0, ''),
(104, 58, 'IBM NetVista M42', 'P-IV 2.0GHz, 256MB PC2100 DDR SDRAM, 40GB,\r\r\n\r\r\nCD-ROM, AGP, 10/100 Eth, WinXP Pro ', 2.5, 1152, '42623.jpg', 100, '42623_s.jpg', 1, 0, '', 1, 'P-IV 2.0GHz, 256MB PC2100 DDR SDRAM, 40GB,\r\r\n\r\r\nCD-ROM, AGP, 10/100 Eth, WinXP Pro ', 0, ''),
(105, 58, 'HP Compaq Evo D310', 'P-IV 2.4GHz, 256MB PC2100 DDR SDRAM, 40GB,\r\r\n\r\r\nCD-RW, Direct AGP, 10/100 Eth, WinXP Pro ', 0, 1207, '41772.jpg', 100, '41772_s.jpg', 0, 0, '', 1, 'P-IV 2.4GHz, 256MB PC2100 DDR SDRAM, 40GB,\r\r\n\r\r\nCD-RW, Direct AGP, 10/100 Eth, WinXP Pro ', 1300, ''),
(106, 21, 'Samsung CD Yepp MCD-SM60', 'The Samsung MCD-SM60 Yepp is a great portable Audio device. Not only does it play your favorite CDs that you already own, but also whatever MP3 files you own. Just burn those MP3 files to a CD-R or CD-RW for hours upon hours of music! The MCD-SM60 also features ESP for skip protection. In regular Audio CD Mode you get 45 seconds of protection & in MP3 CD Mode you get 120 seconds of protection.', 0, 165, '43730.jpg', 100, '43730_s.jpg', 0, 0, '', 1, 'The Samsung MCD-SM60 Yepp is a great portable Audio device. Not only does it play your favorite CDs that you already own, but also whatever MP3 files you own.', 0, ''),
(107, 21, 'Duo MP3', '', 0, 170, '37598.jpg', 100, '37598_s.jpg', 0, 0, '', 1, '', 0, ''),
(108, 72, 'Stiv Krug :: Web-design ``Don`', 'Exactly how do you deliver great web usability? This book shows you, start to finish! Steve Krug knows his stuff, and this slim volume brings together a career`s worth of hands-on wisdom and experience. Discover how users really use the Web nowadays -- it`s not how you think. Learn how to design pages for scanning, not reading; how to write for the Web; how to build great navigation; create an outstanding home page; and more. Includes three great chapters on doing your own low-budget usability testing -- and making sense of the results. \r\r\n\r\r\n', 0, 8, '10805.jpg', 100, '10805s.jpg', 0, 1, '', 1, 'Exactly how do you deliver great web usability?...', 8.6, ''),
(109, 23, 'The darkness of Avalon', '', 2.83333, 5.4, '81446.jpg', 100, '81446s.jpg', 3, 0, '', 1, '', 0, ''),
(110, 71, 'Harry Potter book #1', 'Harry Potter has never played a sport while flying on a broomstick. He`s never worn a cloak of invisibility, befriended a giant, or helped hatch a dragon. All Harry knows is a miserable life with the Dursleys, his horrible aunt and uncle, and their abominable son, Dudley. Harry`s room is a tiny closet at the foot of the stairs, and he hasn`t had a birthday party in eleven years.\r\r\nBut all that is about to change when a mysterious letter arrives by owl messenger: a letter with an invitation to a wonderful place he never dreamed existed. There he finds not only friends, aerial sports, and magic around every corner, but a great destiny that`s been waiting for him...if Harry can survive the encounter. \r\r\n\r\r\n\r\r\n ', 0, 5, '15794.jpg', 100, '15794s.jpg', 0, 0, '', 1, 'Harry Potter has never played a sport while flying on a broomstick. He`s never worn a cloak of invisibility, befriended a giant, or helped hatch a dragon...', 0, ''),
(111, 71, 'Harry Potter book #2', 'The Dursleys were so mean and hideous that summer that all Harry Potter wanted was to get back to the Hogwarts School for Witchcraft and Wizardry. But just as he`s packing his bags, Harry receives a warning from a strange, impish creature named Dobby who says that if Harry Potter returns to Hogwarts, disaster will strike. \r\r\n\r\r\nAnd strike it does. For in Harry`s second year at Hogwarts, fresh torments and horrors arise, including an outrageously stuck-up new professor, Gilderoy Lockheart, a spirit named Moaning Myrtle who haunts the girls` bathroom, and the unwanted attentions of Ron Weasley`s younger sister, Ginny. \r\r\n\r\r\nBut each of these seem minor annoyances when the real trouble begins, and someone — or something — starts turning Hogwarts students to stone. Could it be Draco Malfoy, a more poisonous rival than ever? Could it possibly be Hagrid, whose mysterious past is finally told? Or could it be the one everyone at Hogwarts most suspects...Harry Potter himself!\r\r\n\r\r\n\r\r\n', 5, 5, '15795.jpg', 100, '15795s.jpg', 2, 1, '', 1, 'The Dursleys were so mean and hideous that summer that all Harry Potter wanted was to get back to the Hogwarts School for Witchcraft and Wizardry. But just as he`s packing his bags, Harry receives a warning from a strange, impish creature named Dobby who says that if Harry Potter returns to Hogwarts, disaster will strike...', 0, ''),
(112, 71, 'Harry Potter. Magic Eye. Album', '', 5, 3, '26949.jpg', 100, '26949s.jpg', 1, 0, '', 1, '', 0, ''),
(113, 73, 'Visual C++ and MFC', 'Tap into a collection of programming solutions that use the Microsoft Foundation Class(MFC) library. Topics are organized into appropriate sections, such as " Dialog Boxes" and " MFC Databases Classes," each offering common and important development challenges. CD includes pertinent Knowledge Base articles for intermediate MFC programmers using Visual C++.  ', 0, 17, '4064.jpg', 100, '4064s.jpg', 0, 0, '', 1, 'Tap into a collection of programming solutions that use the Microsoft Foundation Class(MFC) library...', 0, ''),
(114, 73, 'Professional PHP programming', 'PHP is a new technology that is growing fast. It is the open-source that is the next step beyond CGI and is a powerful, evolving alternative to Active Server Pages and Java servlets. Developers who need to build database-driven Web-architecture applications will be pleased with Professional PHP Programming.', 0, 15, '8472.jpg', 100, '8472s.jpg', 0, 91, '', 1, 'PHP is a new technology that is growing fast...', 18, '');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `special_offers`
--

CREATE TABLE `special_offers` (
  `offerID` int(11) NOT NULL,
  `productID` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `special_offers`
--

INSERT INTO `special_offers` (`offerID`, `productID`, `sort_order`) VALUES
(1, 64, 3),
(3, 101, 1),
(4, 94, 2),
(5, 4, 4);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `users`
--

CREATE TABLE `users` (
  `email` varchar(45) NOT NULL,
  `password` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `users`
--

INSERT INTO `users` (`email`, `password`) VALUES
('info@stc', 'zadkine'),
('info@zadkine.nl', '$2y$12$5d1SLB2DO0R.2GOx5KFW6elVVGtT3iakEdio7ERll9N8EfKswFpki'),
('k.bakker@zadkine.nl', '$2y$12$lhq8HMRdru6kyqjy47RJpe0TsFP6xYqh85aFqifHL0TYbw1I0/Y9u');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `werknemers`
--

CREATE TABLE `werknemers` (
  `id` int(11) NOT NULL,
  `voornaam` varchar(25) NOT NULL,
  `achternaam` varchar(25) NOT NULL,
  `kamer` varchar(15) NOT NULL,
  `toestel` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `werknemers`
--

INSERT INTO `werknemers` (`id`, `voornaam`, `achternaam`, `kamer`, `toestel`) VALUES
(2, 'karel', 'appellen', '12', '600'),
(5, 'peter', 'pan', '144', '166'),
(6, 'hans', 'doorestein', '195', '180'),
(25, 'Joop', 'Braakhekke', '1', '1'),
(26, 'Andre', 'Rieu', '1', '1'),
(29, 'piet', 'Picasso', '200', '193'),
(30, 'Vincent', 'Biertje', '2', '2'),
(31, 'Joop', 'Ratinger', '1', '9'),
(32, 'KU', 'NOORD-Noord', '00.10 – 00.16', '20275'),
(33, 'KU', 'NOORD-Zuid', '01.01 – 01.11', ' 20272 ');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categoryID`);

--
-- Indexen voor tabel `ordered_carts`
--
ALTER TABLE `ordered_carts`
  ADD PRIMARY KEY (`productID`,`orderID`);

--
-- Indexen voor tabel `orderregels`
--
ALTER TABLE `orderregels`
  ADD PRIMARY KEY (`orderid`);

--
-- Indexen voor tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderID`);

--
-- Indexen voor tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productID`);

--
-- Indexen voor tabel `special_offers`
--
ALTER TABLE `special_offers`
  ADD PRIMARY KEY (`offerID`);

--
-- Indexen voor tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`email`);

--
-- Indexen voor tabel `werknemers`
--
ALTER TABLE `werknemers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `categoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
--
-- AUTO_INCREMENT voor een tabel `orderregels`
--
ALTER TABLE `orderregels`
  MODIFY `orderid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT voor een tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `orderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT voor een tabel `products`
--
ALTER TABLE `products`
  MODIFY `productID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;
--
-- AUTO_INCREMENT voor een tabel `special_offers`
--
ALTER TABLE `special_offers`
  MODIFY `offerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT voor een tabel `werknemers`
--
ALTER TABLE `werknemers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
