-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 13, 2020 at 04:11 AM
-- Server version: 8.0.21
-- PHP Version: 7.3.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `app_blanja_backend`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` int NOT NULL,
  `addressAs` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `nameRecipient` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `address` varchar(256) NOT NULL,
  `city` varchar(255) NOT NULL,
  `noRecipient` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `codePos` varchar(64) NOT NULL,
  `idSeller` int NOT NULL,
  `idUser` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`id`, `addressAs`, `nameRecipient`, `address`, `city`, `noRecipient`, `codePos`, `idSeller`, `idUser`) VALUES
(1, 'Kantor', 'Gungun', 'Palawija no 56 Coblong', 'Bandung', '2331433222', '34211', 2, 7),
(2, 'Rumah', 'gugun', 'Kp.Janari rt 09 rw3 Desa Cibaligo Kec Kalongwetan', 'kab bandung barat', '087654345211', '98788', 2, 8),
(3, 'Kantor', 'Bintang', 'Palawija no 56 Coblong', 'Bandung', '08765566543', '34211', 3, 9);

-- --------------------------------------------------------

--
-- Table structure for table `addressuser`
--

CREATE TABLE `addressuser` (
  `id` int NOT NULL,
  `addressAs` varchar(256) NOT NULL,
  `nameRecipient` varchar(64) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(64) NOT NULL,
  `noRecipient` varchar(64) NOT NULL,
  `codePos` varchar(64) NOT NULL,
  `idUser` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `addressuser`
--

INSERT INTO `addressuser` (`id`, `addressAs`, `nameRecipient`, `address`, `city`, `noRecipient`, `codePos`, `idUser`) VALUES
(1, 'Kantor', 'sinta widi', 'Cisangkan 34 RT 09RW 9 Kel Cimahi Kec Cimahi Utara', 'Cimahi', '087665444342', '23144', 10);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int NOT NULL,
  `name` varchar(64) NOT NULL,
  `image` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `image`) VALUES
(1, 'Wrist watch', 'http://localhost:3000/uploads/writswatch.png'),
(2, 'T-shirt', 'http://localhost:3000/uploads/T-shirt.png'),
(3, 'Shorts', 'http://localhost:3000/uploads/shorts.png'),
(4, 'Jacket', 'http://localhost:3000/uploads/jacket.png'),
(5, 'Pants', 'http://localhost:3000/uploads/pants.png'),
(6, 'Handbag', 'http://localhost:3000/uploads/handbag.png'),
(7, 'Bagback', 'http://localhost:3000/uploads/backbag.png'),
(8, 'Socks', 'http://localhost:3000/uploads/socks.png'),
(9, 'Glasses', 'http://localhost:3000/uploads/glasses.png'),
(10, 'Cap', 'http://localhost:3000/uploads/cap.png'),
(11, 'Tie', 'http://localhost:3000/uploads/tie.png'),
(12, 'Dress', 'http://localhost:3000/uploads/dress.png'),
(13, 'Formal suit', 'http://localhost:3000/uploads/formal suit.png'),
(14, 'Accessoris', 'http://localhost:3000/uploads/accessoris.png'),
(15, 'High Heels', 'http://localhost:3000/uploads/high heels.png');

-- --------------------------------------------------------

--
-- Table structure for table `imageproduct`
--

CREATE TABLE `imageproduct` (
  `id` int NOT NULL,
  `image` varchar(256) NOT NULL,
  `id_product` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `imageproduct`
--

INSERT INTO `imageproduct` (`id`, `image`, `id_product`) VALUES
(23, 'http://localhost:3000/uploads/10/images-15998717014621203444_8f884c13_04e0_444f_8da2_ea432bad470c_1500_1138.jpg', 20),
(24, 'http://localhost:3000/uploads/10/images-159987170147921425609_fd828fc1-9eac-4610-9e98-dc163b782cfb_640_640.jpg', 20),
(25, 'http://localhost:3000/uploads/10/images-1599871701496Oakley_Hat_Golf_Classic_Original___Topi_Golf_Pria_Original_B.jpg', 20),
(26, 'http://localhost:3000/uploads/11/images-159990463576551WO3wo5MtL._AC_UY580_.jpg', 21),
(27, 'http://localhost:3000/uploads/11/images-1599904635771487-4c3d629422cf1e3fa8e23c6f898ab370.jpg', 21),
(28, 'http://localhost:3000/uploads/11/images-1599904635795106232425_00da8cdd-bf05-4600-b88a-e0f6b25e1d00_1280_1280.jpg', 21),
(29, 'http://localhost:3000/uploads/11/images-1599904635800406187650_1_720x928.jpg', 21),
(30, 'http://localhost:3000/uploads/1/images-159990655390223172450_B.jpg', 21),
(31, 'http://localhost:3000/uploads/1/images-1599906553921d2cb376d27296d781ae61e29e29fc293.jpg', 21),
(32, 'http://localhost:3000/uploads/1/images-1599906553929Jam_Tangan_Pria_Murah_Berkualitas__Casual_Jam_Tangan_Quicksi.jpg', 21),
(33, 'http://localhost:3000/uploads/1/images-1599906553949Jam_Tangan_QUIKSILVER_PRIA_DIGITAL_TALI_KARET_BULAT.jpg', 21),
(34, 'http://localhost:3000/uploads/15/images-1599950572564640102274_eecdacad-943a-46e4-af88-b600a83041be_642_642.jpg', 23),
(35, 'http://localhost:3000/uploads/15/images-1599950572568delight-613-w.jpg', 23),
(36, 'http://localhost:3000/uploads/15/images-1599950572581domina-420-white-6-inch-heel-pump-700x900 (1).jpg', 23),
(37, 'http://localhost:3000/uploads/15/images-1599950572584domina-420-white-6-inch-heel-pump-700x900.jpg', 23),
(38, 'http://localhost:3000/uploads/15/images-1599950629739640102274_eecdacad-943a-46e4-af88-b600a83041be_642_642.jpg', 24),
(39, 'http://localhost:3000/uploads/15/images-1599950629750delight-613-w.jpg', 24),
(40, 'http://localhost:3000/uploads/15/images-1599950629772domina-420-white-6-inch-heel-pump-700x900 (1).jpg', 24),
(41, 'http://localhost:3000/uploads/15/images-1599950629788domina-420-white-6-inch-heel-pump-700x900.jpg', 24),
(42, 'http://localhost:3000/uploads/15/images-1599950689813640102274_eecdacad-943a-46e4-af88-b600a83041be_642_642.jpg', 25),
(43, 'http://localhost:3000/uploads/15/images-1599950689817delight-613-w.jpg', 25),
(44, 'http://localhost:3000/uploads/15/images-1599950689825domina-420-white-6-inch-heel-pump-700x900 (1).jpg', 25),
(45, 'http://localhost:3000/uploads/15/images-1599950689829domina-420-white-6-inch-heel-pump-700x900.jpg', 25),
(46, 'http://localhost:3000/uploads/14/images-1599950750388640102274_eecdacad-943a-46e4-af88-b600a83041be_642_642.jpg', 25),
(47, 'http://localhost:3000/uploads/14/images-1599950750392delight-613-w.jpg', 25),
(48, 'http://localhost:3000/uploads/14/images-1599950750403domina-420-white-6-inch-heel-pump-700x900 (1).jpg', 25),
(49, 'http://localhost:3000/uploads/14/images-1599950750406domina-420-white-6-inch-heel-pump-700x900.jpg', 25),
(50, 'http://localhost:3000/uploads/14/images-159995082441771FQe1qkCwL._SY355_.jpg', 25),
(51, 'http://localhost:3000/uploads/14/images-159995082442181pyXAxNCoL._SY355_.jpg', 25),
(52, 'http://localhost:3000/uploads/14/images-15999508244232019-0524-angouleme.png', 25),
(53, 'http://localhost:3000/uploads/14/images-1599950824480ed8c68a3dc6af991ec89b78f3040d744.jpg', 25),
(54, 'http://localhost:3000/uploads/14/images-159995087364871FQe1qkCwL._SY355_.jpg', 25),
(55, 'http://localhost:3000/uploads/14/images-159995087365481pyXAxNCoL._SY355_.jpg', 25),
(56, 'http://localhost:3000/uploads/14/images-15999508736612019-0524-angouleme.png', 25),
(57, 'http://localhost:3000/uploads/14/images-1599950873678ed8c68a3dc6af991ec89b78f3040d744.jpg', 25),
(58, 'http://localhost:3000/uploads/14/images-159995090138571FQe1qkCwL._SY355_.jpg', 25),
(59, 'http://localhost:3000/uploads/14/images-159995090138781pyXAxNCoL._SY355_.jpg', 25),
(60, 'http://localhost:3000/uploads/14/images-15999509013912019-0524-angouleme.png', 25),
(61, 'http://localhost:3000/uploads/14/images-1599950901404ed8c68a3dc6af991ec89b78f3040d744.jpg', 25),
(62, 'http://localhost:3000/uploads/14/images-159995096481371NWx-ppoWL._UL1500_.jpg', 25),
(63, 'http://localhost:3000/uploads/14/images-159995096485681J-BVFlUZL._SL1500_.jpg', 25),
(64, 'http://localhost:3000/uploads/14/images-1599950964876Mustard-Yellow-Fan-Dangle-Earrings-1-600x600.jpg', 25),
(65, 'http://localhost:3000/uploads/14/images-1599950964880Thread-Party-Wear-Earrings-In-Yellow-Colour-ER4290035-A-1200x1799.jpg', 25),
(66, 'http://localhost:3000/uploads/14/images-159995098387971NWx-ppoWL._UL1500_.jpg', 25),
(67, 'http://localhost:3000/uploads/14/images-159995098388681J-BVFlUZL._SL1500_.jpg', 25),
(68, 'http://localhost:3000/uploads/14/images-1599950983897Mustard-Yellow-Fan-Dangle-Earrings-1-600x600.jpg', 25),
(69, 'http://localhost:3000/uploads/14/images-1599950983901Thread-Party-Wear-Earrings-In-Yellow-Colour-ER4290035-A-1200x1799.jpg', 25),
(70, 'http://localhost:3000/uploads/14/images-159995101505571NWx-ppoWL._UL1500_.jpg', 25),
(71, 'http://localhost:3000/uploads/14/images-159995101506681J-BVFlUZL._SL1500_.jpg', 25),
(72, 'http://localhost:3000/uploads/14/images-1599951015087Mustard-Yellow-Fan-Dangle-Earrings-1-600x600.jpg', 25),
(73, 'http://localhost:3000/uploads/14/images-1599951015097Thread-Party-Wear-Earrings-In-Yellow-Colour-ER4290035-A-1200x1799.jpg', 25),
(74, 'http://localhost:3000/uploads/13/images-159995109292261xic1lDgyL._AC_UX466_.jpg', 25),
(75, 'http://localhost:3000/uploads/13/images-1599951092925Blue_Suit_for_Men__29099_zoom.jpg', 25),
(76, 'http://localhost:3000/uploads/13/images-1599951092934rBVaSVuZAt-AaVC1AAHPKpCjTw4607.jpg', 25),
(77, 'http://localhost:3000/uploads/13/images-1599951092938Royal_Blue_Suit__52568_zoom.jpg', 25),
(78, 'http://localhost:3000/uploads/13/images-159995111267961xic1lDgyL._AC_UX466_.jpg', 25),
(79, 'http://localhost:3000/uploads/13/images-1599951112682Blue_Suit_for_Men__29099_zoom.jpg', 25),
(80, 'http://localhost:3000/uploads/13/images-1599951112694rBVaSVuZAt-AaVC1AAHPKpCjTw4607.jpg', 25),
(81, 'http://localhost:3000/uploads/13/images-1599951112701Royal_Blue_Suit__52568_zoom.jpg', 25),
(82, 'http://localhost:3000/uploads/13/images-159995113511961xic1lDgyL._AC_UX466_.jpg', 25),
(83, 'http://localhost:3000/uploads/13/images-1599951135122Blue_Suit_for_Men__29099_zoom.jpg', 25),
(84, 'http://localhost:3000/uploads/13/images-1599951135138rBVaSVuZAt-AaVC1AAHPKpCjTw4607.jpg', 25),
(85, 'http://localhost:3000/uploads/13/images-1599951135142Royal_Blue_Suit__52568_zoom.jpg', 25),
(86, 'http://localhost:3000/uploads/13/images-159995118050461-bJeOwhoL._AC_UX385_.jpg', 25),
(87, 'http://localhost:3000/uploads/13/images-1599951180506Blacksuit1__28774.1434406249.1280.1280__57900.1525121133.jpg', 25),
(88, 'http://localhost:3000/uploads/13/images-1599951180517h320-0s2_01-black_a (1).jpg', 25),
(89, 'http://localhost:3000/uploads/13/images-1599951180538h320-0s2_01-black_a.jpg', 25),
(90, 'http://localhost:3000/uploads/13/images-159995120206061-bJeOwhoL._AC_UX385_.jpg', 25),
(91, 'http://localhost:3000/uploads/13/images-1599951202064Blacksuit1__28774.1434406249.1280.1280__57900.1525121133.jpg', 25),
(92, 'http://localhost:3000/uploads/13/images-1599951202084h320-0s2_01-black_a (1).jpg', 25),
(93, 'http://localhost:3000/uploads/13/images-1599951202101h320-0s2_01-black_a.jpg', 25),
(94, 'http://localhost:3000/uploads/13/images-159995122149061-bJeOwhoL._AC_UX385_.jpg', 25),
(95, 'http://localhost:3000/uploads/13/images-1599951221493Blacksuit1__28774.1434406249.1280.1280__57900.1525121133.jpg', 25),
(96, 'http://localhost:3000/uploads/13/images-1599951221504h320-0s2_01-black_a (1).jpg', 25),
(97, 'http://localhost:3000/uploads/13/images-1599951221522h320-0s2_01-black_a.jpg', 25),
(98, 'http://localhost:3000/uploads/13/images-159995124269161-bJeOwhoL._AC_UX385_.jpg', 25),
(99, 'http://localhost:3000/uploads/13/images-1599951242699Blacksuit1__28774.1434406249.1280.1280__57900.1525121133.jpg', 25),
(100, 'http://localhost:3000/uploads/13/images-1599951242711h320-0s2_01-black_a (1).jpg', 25),
(101, 'http://localhost:3000/uploads/13/images-1599951242742h320-0s2_01-black_a.jpg', 25),
(102, 'http://localhost:3000/uploads/12/images-1599951336394Butter-Color-Cotton-Dress-Shirt-5066.jpg', 25),
(103, 'http://localhost:3000/uploads/12/images-1599951336403HTB18b4zKVXXXXXtaXXXq6xXFXXXl.jpg', 25),
(104, 'http://localhost:3000/uploads/12/images-1599951336408images (1).jpg', 25),
(105, 'http://localhost:3000/uploads/12/images-1599951336411images.jpg', 25),
(106, 'http://localhost:3000/uploads/12/images-1599951364301Butter-Color-Cotton-Dress-Shirt-5066.jpg', 25),
(107, 'http://localhost:3000/uploads/12/images-1599951364305HTB18b4zKVXXXXXtaXXXq6xXFXXXl.jpg', 25),
(108, 'http://localhost:3000/uploads/12/images-1599951364307images (1).jpg', 25),
(109, 'http://localhost:3000/uploads/12/images-1599951364311images.jpg', 25),
(110, 'http://localhost:3000/uploads/12/images-1599951382102Butter-Color-Cotton-Dress-Shirt-5066.jpg', 25),
(111, 'http://localhost:3000/uploads/12/images-1599951382107HTB18b4zKVXXXXXtaXXXq6xXFXXXl.jpg', 25),
(112, 'http://localhost:3000/uploads/12/images-1599951382110images (1).jpg', 25),
(113, 'http://localhost:3000/uploads/12/images-1599951382113images.jpg', 25),
(114, 'http://localhost:3000/uploads/11/images-1599951493820406187650_1_720x928.jpg', 25),
(115, 'http://localhost:3000/uploads/11/images-1599951493831knot-theory-tie-1_1060x.jpg', 25),
(116, 'http://localhost:3000/uploads/11/images-1599951493845pr-tie-navy.jpg', 25),
(117, 'http://localhost:3000/uploads/11/images-1599951493849WN31B_Black_1.jpg', 25),
(118, 'http://localhost:3000/uploads/11/images-1599951538681487-4c3d629422cf1e3fa8e23c6f898ab370.jpg', 25),
(119, 'http://localhost:3000/uploads/11/images-1599951538696106232425_00da8cdd-bf05-4600-b88a-e0f6b25e1d00_1280_1280.jpg', 25),
(120, 'http://localhost:3000/uploads/11/images-1599951538699images.jpg', 25),
(121, 'http://localhost:3000/uploads/11/images-1599951538702red-tie-41663-3.jpg', 25),
(122, 'http://localhost:3000/uploads/11/images-1599951571352487-4c3d629422cf1e3fa8e23c6f898ab370.jpg', 25),
(123, 'http://localhost:3000/uploads/11/images-1599951571377106232425_00da8cdd-bf05-4600-b88a-e0f6b25e1d00_1280_1280.jpg', 25),
(124, 'http://localhost:3000/uploads/11/images-1599951571383images.jpg', 25),
(125, 'http://localhost:3000/uploads/11/images-1599951571386red-tie-41663-3.jpg', 25),
(126, 'http://localhost:3000/uploads/11/images-1599951632768487-4c3d629422cf1e3fa8e23c6f898ab370.jpg', 25),
(127, 'http://localhost:3000/uploads/11/images-1599951632781download.jpg', 25),
(128, 'http://localhost:3000/uploads/11/images-1599951632785images (1).jpg', 25),
(129, 'http://localhost:3000/uploads/11/images-1599951632790navy-dotted-tie-silk-john-henric-1.jpg', 25),
(130, 'http://localhost:3000/uploads/11/images-1599951669327download.jpg', 25),
(131, 'http://localhost:3000/uploads/11/images-1599951669342images (1).jpg', 25),
(132, 'http://localhost:3000/uploads/11/images-1599951669358navy-dotted-tie-silk-john-henric-1.jpg', 25),
(133, 'http://localhost:3000/uploads/11/images-1599951669384pr-tie-navy.jpg', 25),
(134, 'http://localhost:3000/uploads/10/images-15999517390076_Women-Men-Hat-Curved-Sun-Visor-Light-Board-Solid-Color-Baseball-Cap-Men-Cap-Outdoor-Sun.jpg', 25),
(135, 'http://localhost:3000/uploads/10/images-159995173901871ZVZvzCvdL._AC_UL1500_.jpg', 25),
(136, 'http://localhost:3000/uploads/10/images-1599951739029lacoste-gabardine-white-rk9811-001-cab-3-mens-caps-p1768-6540_image.jpg', 25),
(137, 'http://localhost:3000/uploads/10/images-1599951739033Snapback-Baseball-Cap-White-Plain-Canvas-Dad-Hat-Hip-Hop-Men-Trucker-Hats-Women-Summer-Casual.jpg', 25),
(138, 'http://localhost:3000/uploads/10/images-15999517598376_Women-Men-Hat-Curved-Sun-Visor-Light-Board-Solid-Color-Baseball-Cap-Men-Cap-Outdoor-Sun.jpg', 25),
(139, 'http://localhost:3000/uploads/10/images-159995175984271ZVZvzCvdL._AC_UL1500_.jpg', 25),
(140, 'http://localhost:3000/uploads/10/images-1599951759848lacoste-gabardine-white-rk9811-001-cab-3-mens-caps-p1768-6540_image.jpg', 25),
(141, 'http://localhost:3000/uploads/10/images-1599951759852Snapback-Baseball-Cap-White-Plain-Canvas-Dad-Hat-Hip-Hop-Men-Trucker-Hats-Women-Summer-Casual.jpg', 25),
(142, 'http://localhost:3000/uploads/10/images-15999517862076_Women-Men-Hat-Curved-Sun-Visor-Light-Board-Solid-Color-Baseball-Cap-Men-Cap-Outdoor-Sun.jpg', 25),
(143, 'http://localhost:3000/uploads/10/images-159995178621171ZVZvzCvdL._AC_UL1500_.jpg', 25),
(144, 'http://localhost:3000/uploads/10/images-1599951786222lacoste-gabardine-white-rk9811-001-cab-3-mens-caps-p1768-6540_image.jpg', 25),
(145, 'http://localhost:3000/uploads/10/images-1599951786228Snapback-Baseball-Cap-White-Plain-Canvas-Dad-Hat-Hip-Hop-Men-Trucker-Hats-Women-Summer-Casual.jpg', 25),
(146, 'http://localhost:3000/uploads/10/images-1599951821575269952_men-under-control-cap-yellow_yellow_QTSXX.jpg', 25),
(147, 'http://localhost:3000/uploads/10/images-1599951821581DOLEFT-New-Long-Straps-Baseball-Cap-Men-Adjustable-Streetwear-Letter-Snapback-Caps-Unisex-Cotton-Yellow-Trucker-247x247.jpg', 25),
(148, 'http://localhost:3000/uploads/10/images-1599951821587download.jpg', 25),
(149, 'http://localhost:3000/uploads/10/images-1599951821590e5fda7372a9b81c8de181d4cb49a2c79.jpg', 25),
(150, 'http://localhost:3000/uploads/10/images-1599951847823269952_men-under-control-cap-yellow_yellow_QTSXX.jpg', 25),
(151, 'http://localhost:3000/uploads/10/images-1599951847827DOLEFT-New-Long-Straps-Baseball-Cap-Men-Adjustable-Streetwear-Letter-Snapback-Caps-Unisex-Cotton-Yellow-Trucker-247x247.jpg', 25),
(152, 'http://localhost:3000/uploads/10/images-1599951847831download.jpg', 25),
(153, 'http://localhost:3000/uploads/10/images-1599951847840e5fda7372a9b81c8de181d4cb49a2c79.jpg', 25),
(154, 'http://localhost:3000/uploads/10/images-1599951877718269952_men-under-control-cap-yellow_yellow_QTSXX.jpg', 25),
(155, 'http://localhost:3000/uploads/10/images-1599951877722DOLEFT-New-Long-Straps-Baseball-Cap-Men-Adjustable-Streetwear-Letter-Snapback-Caps-Unisex-Cotton-Yellow-Trucker-247x247.jpg', 25),
(156, 'http://localhost:3000/uploads/10/images-1599951877728download.jpg', 25),
(157, 'http://localhost:3000/uploads/10/images-1599951877732e5fda7372a9b81c8de181d4cb49a2c79.jpg', 25);

-- --------------------------------------------------------

--
-- Table structure for table `order_tb`
--

CREATE TABLE `order_tb` (
  `id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int NOT NULL,
  `nameCategory` int NOT NULL,
  `nameProduct` varchar(64) NOT NULL,
  `nameBrand` varchar(64) NOT NULL,
  `price` int NOT NULL,
  `color` varchar(64) NOT NULL,
  `condition` varchar(64) NOT NULL,
  `description` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `stock` int NOT NULL,
  `idSeller` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `nameCategory`, `nameProduct`, `nameBrand`, `price`, `color`, `condition`, `description`, `stock`, `idSeller`) VALUES
(20, 10, 'Oakley Hat Golf Classic Original', 'Oakley', 150000, 'black', 'new', 'Oakley Hat Golf Classic Original BRAND NEW FULL TAGSize : ALL SIZE*100% ORIGINAL*ORIGINAL PICTURE', 20, 2),
(21, 11, 'Berkner Aqua Tie', 'ties', 150000, 'black', 'new', 'The Berkner tie in aqua is just the accessory you\'ve been looking for if you\'re going for a clean, simple look that is easy to style', 20, 3),
(22, 1, 'Jam Tangan Pria Quiksilver Rantai Chrono Aktif Premium', 'quicksilver', 350000, 'black', 'new', 'Kualitas Premium, Diameter 4,5cm, Chrono aktif, Tanggal Aktif, Rantai Stainless, Kaca Blue Shapire, Termasuk box Kancing, Bonus baterai cadangan', 20, 3),
(23, 15, 'high heels ', 'lorem', 320000, 'white', 'new', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. Etiam tincidunt tristique placerat. Pellentesque a consequat mauris, vel suscipit ipsum. Donec ac mauris vitae diam commodo vehicula. Donec quam elit, sollicitudin eu nisl at, ornare suscipit magna. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. In ultricies rutrum tempus. Mauris vel molestie orci. ', 20, 3),
(24, 15, 'high heels putih', 'lorem', 300000, 'white', 'new', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. Etiam tincidunt tristique placerat. Pellentesque a consequat mauris, vel suscipit ipsum. Donec ac mauris vitae diam commodo vehicula. Donec quam elit, sollicitudin eu nisl at, ornare suscipit magna. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. In ultricies rutrum tempus. Mauris vel molestie orci. ', 20, 3),
(25, 15, 'branded high heels', 'lorem', 390000, 'white', 'new', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. Etiam tincidunt tristique placerat. Pellentesque a consequat mauris, vel suscipit ipsum. Donec ac mauris vitae diam commodo vehicula. Donec quam elit, sollicitudin eu nisl at, ornare suscipit magna. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. In ultricies rutrum tempus. Mauris vel molestie orci. ', 50, 3),
(26, 14, 'accessoris', 'lorem', 90000, 'white', 'new', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. Etiam tincidunt tristique placerat. Pellentesque a consequat mauris, vel suscipit ipsum. Donec ac mauris vitae diam commodo vehicula. Donec quam elit, sollicitudin eu nisl at, ornare suscipit magna. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. In ultricies rutrum tempus. Mauris vel molestie orci. ', 50, 3),
(27, 14, 'accessoris', 'lorem', 90000, 'green', 'new', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. Etiam tincidunt tristique placerat. Pellentesque a consequat mauris, vel suscipit ipsum. Donec ac mauris vitae diam commodo vehicula. Donec quam elit, sollicitudin eu nisl at, ornare suscipit magna. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. In ultricies rutrum tempus. Mauris vel molestie orci. ', 50, 3),
(28, 14, 'new accessoris', 'lorem', 70000, 'green', 'new', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. Etiam tincidunt tristique placerat. Pellentesque a consequat mauris, vel suscipit ipsum. Donec ac mauris vitae diam commodo vehicula. Donec quam elit, sollicitudin eu nisl at, ornare suscipit magna. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. In ultricies rutrum tempus. Mauris vel molestie orci. ', 80, 3),
(29, 14, 'b accessoris', 'lorem', 50000, 'green', 'new', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. Etiam tincidunt tristique placerat. Pellentesque a consequat mauris, vel suscipit ipsum. Donec ac mauris vitae diam commodo vehicula. Donec quam elit, sollicitudin eu nisl at, ornare suscipit magna. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. In ultricies rutrum tempus. Mauris vel molestie orci. ', 100, 3),
(30, 14, 'y accessoris', 'lorem', 40000, 'yellow', 'new', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. Etiam tincidunt tristique placerat. Pellentesque a consequat mauris, vel suscipit ipsum. Donec ac mauris vitae diam commodo vehicula. Donec quam elit, sollicitudin eu nisl at, ornare suscipit magna. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. In ultricies rutrum tempus. Mauris vel molestie orci. ', 200, 3),
(31, 14, 'z accessoris', 'lorem', 60000, 'yellow', 'new', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. Etiam tincidunt tristique placerat. Pellentesque a consequat mauris, vel suscipit ipsum. Donec ac mauris vitae diam commodo vehicula. Donec quam elit, sollicitudin eu nisl at, ornare suscipit magna. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. In ultricies rutrum tempus. Mauris vel molestie orci. ', 130, 3),
(32, 14, 'd accessoris', 'lorem', 45000, 'yellow', 'new', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. Etiam tincidunt tristique placerat. Pellentesque a consequat mauris, vel suscipit ipsum. Donec ac mauris vitae diam commodo vehicula. Donec quam elit, sollicitudin eu nisl at, ornare suscipit magna. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. In ultricies rutrum tempus. Mauris vel molestie orci. ', 176, 3),
(33, 13, 'd formal suite', 'lorem', 80000, 'blue', 'new', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. Etiam tincidunt tristique placerat. Pellentesque a consequat mauris, vel suscipit ipsum. Donec ac mauris vitae diam commodo vehicula. Donec quam elit, sollicitudin eu nisl at, ornare suscipit magna. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. In ultricies rutrum tempus. Mauris vel molestie orci. ', 176, 3),
(34, 13, 'x formal suite', 'lorem', 70000, 'blue', 'new', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. Etiam tincidunt tristique placerat. Pellentesque a consequat mauris, vel suscipit ipsum. Donec ac mauris vitae diam commodo vehicula. Donec quam elit, sollicitudin eu nisl at, ornare suscipit magna. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. In ultricies rutrum tempus. Mauris vel molestie orci. ', 200, 3),
(35, 13, 'a formal suite', 'lorem', 750000, 'blue', 'new', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. Etiam tincidunt tristique placerat. Pellentesque a consequat mauris, vel suscipit ipsum. Donec ac mauris vitae diam commodo vehicula. Donec quam elit, sollicitudin eu nisl at, ornare suscipit magna. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. In ultricies rutrum tempus. Mauris vel molestie orci. ', 145, 3),
(36, 13, 'b formal suite', 'lorem', 100000, 'black', 'new', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. Etiam tincidunt tristique placerat. Pellentesque a consequat mauris, vel suscipit ipsum. Donec ac mauris vitae diam commodo vehicula. Donec quam elit, sollicitudin eu nisl at, ornare suscipit magna. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. In ultricies rutrum tempus. Mauris vel molestie orci. ', 230, 3),
(37, 13, 'f formal suite', 'lorem', 120000, 'black', 'new', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. Etiam tincidunt tristique placerat. Pellentesque a consequat mauris, vel suscipit ipsum. Donec ac mauris vitae diam commodo vehicula. Donec quam elit, sollicitudin eu nisl at, ornare suscipit magna. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. In ultricies rutrum tempus. Mauris vel molestie orci. ', 267, 3),
(38, 13, 's formal suite', 'lorem', 140000, 'black', 'new', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. Etiam tincidunt tristique placerat. Pellentesque a consequat mauris, vel suscipit ipsum. Donec ac mauris vitae diam commodo vehicula. Donec quam elit, sollicitudin eu nisl at, ornare suscipit magna. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. In ultricies rutrum tempus. Mauris vel molestie orci. ', 340, 3),
(39, 13, 'g formal suite', 'lorem', 160000, 'black', 'new', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. Etiam tincidunt tristique placerat. Pellentesque a consequat mauris, vel suscipit ipsum. Donec ac mauris vitae diam commodo vehicula. Donec quam elit, sollicitudin eu nisl at, ornare suscipit magna. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. In ultricies rutrum tempus. Mauris vel molestie orci. ', 300, 3),
(40, 12, 'g dress', 'lorem', 160000, 'yellow', 'new', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. Etiam tincidunt tristique placerat. Pellentesque a consequat mauris, vel suscipit ipsum. Donec ac mauris vitae diam commodo vehicula. Donec quam elit, sollicitudin eu nisl at, ornare suscipit magna. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. In ultricies rutrum tempus. Mauris vel molestie orci. ', 200, 3),
(41, 12, 'e dress', 'lorem', 123000, 'yellow', 'new', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. Etiam tincidunt tristique placerat. Pellentesque a consequat mauris, vel suscipit ipsum. Donec ac mauris vitae diam commodo vehicula. Donec quam elit, sollicitudin eu nisl at, ornare suscipit magna. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. In ultricies rutrum tempus. Mauris vel molestie orci. ', 100, 3),
(42, 12, 'x dress', 'lorem', 133000, 'yellow', 'new', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. Etiam tincidunt tristique placerat. Pellentesque a consequat mauris, vel suscipit ipsum. Donec ac mauris vitae diam commodo vehicula. Donec quam elit, sollicitudin eu nisl at, ornare suscipit magna. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. In ultricies rutrum tempus. Mauris vel molestie orci. ', 140, 3),
(43, 11, 'x tie', 'lorem', 133000, 'black', 'new', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. Etiam tincidunt tristique placerat. Pellentesque a consequat mauris, vel suscipit ipsum. Donec ac mauris vitae diam commodo vehicula. Donec quam elit, sollicitudin eu nisl at, ornare suscipit magna. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. In ultricies rutrum tempus. Mauris vel molestie orci. ', 140, 3),
(44, 11, 'a tie', 'lorem', 133000, 'red', 'new', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. Etiam tincidunt tristique placerat. Pellentesque a consequat mauris, vel suscipit ipsum. Donec ac mauris vitae diam commodo vehicula. Donec quam elit, sollicitudin eu nisl at, ornare suscipit magna. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. In ultricies rutrum tempus. Mauris vel molestie orci. ', 10, 3),
(45, 11, 'd tie', 'lorem', 138000, 'red', 'new', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. Etiam tincidunt tristique placerat. Pellentesque a consequat mauris, vel suscipit ipsum. Donec ac mauris vitae diam commodo vehicula. Donec quam elit, sollicitudin eu nisl at, ornare suscipit magna. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. In ultricies rutrum tempus. Mauris vel molestie orci. ', 19, 3),
(46, 11, 'z tie', 'lorem', 134000, 'navy', 'new', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. Etiam tincidunt tristique placerat. Pellentesque a consequat mauris, vel suscipit ipsum. Donec ac mauris vitae diam commodo vehicula. Donec quam elit, sollicitudin eu nisl at, ornare suscipit magna. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. In ultricies rutrum tempus. Mauris vel molestie orci. ', 17, 3),
(47, 11, 's tie', 'lorem', 147000, 'navy', 'new', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. Etiam tincidunt tristique placerat. Pellentesque a consequat mauris, vel suscipit ipsum. Donec ac mauris vitae diam commodo vehicula. Donec quam elit, sollicitudin eu nisl at, ornare suscipit magna. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. In ultricies rutrum tempus. Mauris vel molestie orci. ', 155, 3),
(48, 10, 's cap', 'lorem', 133000, 'white', 'new', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. Etiam tincidunt tristique placerat. Pellentesque a consequat mauris, vel suscipit ipsum. Donec ac mauris vitae diam commodo vehicula. Donec quam elit, sollicitudin eu nisl at, ornare suscipit magna. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. In ultricies rutrum tempus. Mauris vel molestie orci. ', 76, 3),
(49, 10, 'c cap', 'lorem', 135000, 'white', 'new', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. Etiam tincidunt tristique placerat. Pellentesque a consequat mauris, vel suscipit ipsum. Donec ac mauris vitae diam commodo vehicula. Donec quam elit, sollicitudin eu nisl at, ornare suscipit magna. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. In ultricies rutrum tempus. Mauris vel molestie orci. ', 55, 3),
(50, 10, 'd cap', 'lorem', 132000, 'white', 'new', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. Etiam tincidunt tristique placerat. Pellentesque a consequat mauris, vel suscipit ipsum. Donec ac mauris vitae diam commodo vehicula. Donec quam elit, sollicitudin eu nisl at, ornare suscipit magna. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. In ultricies rutrum tempus. Mauris vel molestie orci. ', 76, 3),
(51, 10, 'da cap', 'lorem', 135000, 'yellow', 'new', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. Etiam tincidunt tristique placerat. Pellentesque a consequat mauris, vel suscipit ipsum. Donec ac mauris vitae diam commodo vehicula. Donec quam elit, sollicitudin eu nisl at, ornare suscipit magna. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. In ultricies rutrum tempus. Mauris vel molestie orci. ', 80, 3),
(52, 10, 'w cap', 'lorem', 144000, 'yellow', 'new', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. Etiam tincidunt tristique placerat. Pellentesque a consequat mauris, vel suscipit ipsum. Donec ac mauris vitae diam commodo vehicula. Donec quam elit, sollicitudin eu nisl at, ornare suscipit magna. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. In ultricies rutrum tempus. Mauris vel molestie orci. ', 66, 3),
(53, 10, 'r cap', 'lorem', 158000, 'yellow', 'new', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. Etiam tincidunt tristique placerat. Pellentesque a consequat mauris, vel suscipit ipsum. Donec ac mauris vitae diam commodo vehicula. Donec quam elit, sollicitudin eu nisl at, ornare suscipit magna. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. In ultricies rutrum tempus. Mauris vel molestie orci. ', 34, 3);

-- --------------------------------------------------------

--
-- Table structure for table `seller`
--

CREATE TABLE `seller` (
  `id` int NOT NULL,
  `name` varchar(64) NOT NULL,
  `email` varchar(64) NOT NULL,
  `phoneNumber` varchar(64) NOT NULL,
  `storeName` varchar(64) NOT NULL,
  `password` varchar(64) NOT NULL,
  `roleId` varchar(64) NOT NULL,
  `gender` varchar(256) DEFAULT NULL,
  `tglLahir` date DEFAULT NULL,
  `image` varchar(256) DEFAULT NULL,
  `id_store` int DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `seller`
--

INSERT INTO `seller` (`id`, `name`, `email`, `phoneNumber`, `storeName`, `password`, `roleId`, `gender`, `tglLahir`, `image`, `id_store`, `description`) VALUES
(1, 'Dadan', 'dadan@gmail.com', '111111222333', 'dadanCloth', '$2a$10$8w7RLKWsLk35wT9rq/uvT.6wVuAPxF9PU5rSNv2rypOPYmZ3XKmLq', 'seller', 'L', '1990-05-25', 'http://localhost:3000/uploads/imgUser/seller/image-1599885139489Penguins.jpg', 1, ''),
(2, 'Gungun Wi', 'gugun@gmail.com', '111444222333', 'gungunCloth', '$2a$10$jG9qLjCj6be/tn1YrfYXEOwysbdCosPSxImuxKV4u5KJ7mc2fz2jW', 'seller', 'L', '1990-05-25', 'http://localhost:3000/uploads/imgUser/seller/image-1599888687893Penguins.jpg', 2, ''),
(3, 'Bintang Wi', 'bintang@gmail.com', '082112211443', 'bintangClothing', '$2a$10$e8aHdhD.gOshvH5XBhRWPeVNi/QV9/hNWY14nkaJRqCZAo7DoyaMe', 'seller', 'L', '1990-05-25', 'http://localhost:3000/uploads/imgUser/seller/image-1599899628943Lighthouse.jpg', NULL, 'lorem ipsum doler amet');

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `idStore` int NOT NULL,
  `nameStore` varchar(50) NOT NULL,
  `descriptionStore` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `store`
--

INSERT INTO `store` (`idStore`, `nameStore`, `descriptionStore`) VALUES
(1, 'dadanCloth', 'lorem '),
(2, 'gungunCloth', 'lorem dorem ipsum');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(64) NOT NULL,
  `email` varchar(64) NOT NULL,
  `password` varchar(64) NOT NULL,
  `roleId` varchar(64) NOT NULL,
  `phoneNumber` varchar(64) DEFAULT NULL,
  `gender` varchar(64) DEFAULT NULL,
  `tglLahir` date DEFAULT NULL,
  `image` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `roleId`, `phoneNumber`, `gender`, `tglLahir`, `image`) VALUES
(1, 'hamdan', 'hamdan230598@gmail.com', '$2a$10$z8rIgTyiw3h4J98OvNXcd.Wgy62nZ09yCklgP1Xk7QMhlG1UcrsAK', 'customer', '0', '0', NULL, '0'),
(2, 'hamdan', 'mysite..1234@yahoo.com', '$2a$10$cruIMNL2nHTDva8jKDJdneQVFCE1kIG8sLSd.ekzvotqZIYLXdRbq', 'customer', '0', '0', NULL, '0'),
(3, 'hamdan', 'mysite..12346@yahoo.com', '$2a$10$cruIMNL2nHTDva8jKDJdneQVFCE1kIG8sLSd.ekzvotqZIYLXdRbq', 'customer', '0', '0', NULL, '0'),
(4, 'hamdan', 'mysite..123467@yahoo.com', '$2a$10$cruIMNL2nHTDva8jKDJdneQVFCE1kIG8sLSd.ekzvotqZIYLXdRbq', 'customer', '0', '0', NULL, '0'),
(5, 'hamdan', 'mysite123@gmail.b', '$2a$10$cruIMNL2nHTDva8jKDJdneQVFCE1kIG8sLSd.ekzvotqZIYLXdRbq', 'customer', '0', '0', NULL, '0'),
(6, 'hamdan', 'mysite1234@gmail.b', '$2a$10$fjhp8hDUjgfjD6RQ5/M6XeqimYRyyt/dgWWbr3ENPF9bd/G5Flz4m', 'customer', '0', '0', NULL, '0'),
(7, 'Dodi', 'dodi1234@gmail.com', '$2a$10$.V9lf/u.5BoBGYOjJDDEpeazdYrTW0yQ1A/kgkTKOcWbnei1UHPsi', 'customer', '0', '0', NULL, '0'),
(8, 'Sani', 'sani1234@gmail.com', '$2a$10$Ch6jHkFdnBf7pUoEwVgEB.ux3ZGuSJXasvl4WETzjUdFR4sAXJjqG', 'customer', '0', '0', NULL, '0'),
(9, 'Sani2', 'sani123@gmail.com', '$2a$10$Gcofc4wYaZqgt/OQ7234zebyTNi0.CmJdm35Do0UsZ8cDQLpuzGa.', 'customer', '0', '0', NULL, '0'),
(10, 'sani33', 'sani12345@gmail.com', '$2a$10$XKbEBtzwE4U9Vo5ski4x5.2iTWRuxX9i4NOd6U8wpw2VSQoe5WiYO', 'customer', '089345222111', 'L', '1990-05-25', 'http://localhost:3000/uploads/imgUser/customer/image-1599959964051Koala.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idSeller` (`idSeller`),
  ADD KEY `idUser` (`idUser`);

--
-- Indexes for table `addressuser`
--
ALTER TABLE `addressuser`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idUser` (`idUser`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `imageproduct`
--
ALTER TABLE `imageproduct`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`);

--
-- Indexes for table `order_tb`
--
ALTER TABLE `order_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nameCategory` (`nameCategory`),
  ADD KEY `id_seller` (`idSeller`);

--
-- Indexes for table `seller`
--
ALTER TABLE `seller`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_store` (`id_store`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`idStore`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `addressuser`
--
ALTER TABLE `addressuser`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `imageproduct`
--
ALTER TABLE `imageproduct`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `order_tb`
--
ALTER TABLE `order_tb`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `seller`
--
ALTER TABLE `seller`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `store`
--
ALTER TABLE `store`
  MODIFY `idStore` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `address_ibfk_1` FOREIGN KEY (`idSeller`) REFERENCES `seller` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `address_ibfk_2` FOREIGN KEY (`idUser`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `addressuser`
--
ALTER TABLE `addressuser`
  ADD CONSTRAINT `addressuser_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `imageproduct`
--
ALTER TABLE `imageproduct`
  ADD CONSTRAINT `imageproduct_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`nameCategory`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`idSeller`) REFERENCES `seller` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `seller`
--
ALTER TABLE `seller`
  ADD CONSTRAINT `seller_ibfk_1` FOREIGN KEY (`id_store`) REFERENCES `store` (`idStore`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
