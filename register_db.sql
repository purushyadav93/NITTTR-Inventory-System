-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 23, 2024 at 05:48 PM
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
-- Database: `register_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblcard`
--

CREATE TABLE `tblcard` (
  `Id` int(20) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `BillNo` varchar(1000) NOT NULL,
  `Price` float NOT NULL,
  `Image` varchar(1000) NOT NULL,
  `Unit` varchar(100) NOT NULL,
  `Quantity` float NOT NULL,
  `Total` float NOT NULL,
  `Date` date DEFAULT NULL,
  `BillDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblcard`
--

INSERT INTO `tblcard` (`Id`, `Name`, `BillNo`, `Price`, `Image`, `Unit`, `Quantity`, `Total`, `Date`, `BillDate`) VALUES
(10, 'Small Onions (சின்ன வெங்காயம்)', '1', 200, 'uploadImage/smallonions.jpeg', 'Kg', 10, 0, '2024-07-08', NULL),
(15, 'Large Onions(பெரிய வெங்காயம்)', '34', 70, 'uploadImage/largeonions.jpeg', '', 2, 0, '2024-07-08', NULL),
(16, 'Tomato(தக்காளி)', '45', 70, 'uploadImage/tomatoes.jpeg', '', 2, 0, '2024-07-08', NULL),
(17, 'Ginger(இஞ்சி)', '56', 40, 'uploadImage/ginger.jpeg', '', 2, 0, '2024-07-08', NULL),
(18, 'Green Chilli(பச்சை மிளகாய்)', '56', 70, 'uploadImage/green chilli.jpeg', '', 2, 0, '2024-07-08', NULL),
(19, 'Coconut(தேங்காய்)', '445', 40, 'uploadImage/coconut.jpeg', '', 2, 0, '2024-07-08', NULL),
(20, 'Raw Mango(மாங்காய்)', '56', 20, 'uploadImage/raw mangoes.jpeg', '', 7, 0, '2024-07-08', NULL),
(21, 'Drumstick(முருங்கைக்காய்)', '78', 70, 'uploadImage/drumsticks.jpeg', '', 2, 0, '2024-07-08', NULL),
(22, 'Brinjal(கத்தரிக்காய்)', '67', 20, 'uploadImage/brinjal.jpeg', '', 7, 0, '2024-07-08', NULL),
(23, 'Potato(உருளைக்கிழங்கு)', '586', 40, 'uploadImage/potato.jpeg', '', 2, 0, '2024-07-08', NULL),
(24, 'Yam(கருணைக்கிழங்கு)', '456', 70, 'uploadImage/yam.jpeg', '', 7, 0, '2024-07-08', NULL),
(26, 'Taro Root(சேப்பங்கிழங்கு)', '324', 40, 'uploadImage/taroroot.jpeg', '', 6, 0, '2024-07-08', NULL),
(27, 'Sweet Potato(சர்க்கரைவள்ளிக் கிழங்கு)', '879', 40, 'uploadImage/sweepotato.jpeg', '', 7, 0, '2024-07-08', NULL),
(28, 'Tapioca(மரவள்ளிகிழங்கு )', '576', 70, 'uploadImage/tapioca.jpeg', '', 6, 0, '2024-07-08', NULL),
(29, 'Baby Potato(சின்ன உருளைக்கிழங்கு)', '54', 40, 'uploadImage/babypotato.jpeg', '', 10, 0, '2024-07-08', NULL),
(30, 'Cabbage(கோஸ்)', '45', 40, 'uploadImage/cabbage.jpeg', '', 6, 0, '2024-07-08', NULL),
(31, 'Red Cabbage(ரெட் கோஸ்)', '45', 70, 'uploadImage/redcabbage.jpeg', '', 6, 0, '2024-07-08', NULL),
(32, 'Iceberg lettuce( ஐஸ் கோஸ்)', '78', 70, 'uploadImage/icecabbage.jpeg', '', 6, 0, '2024-07-08', NULL),
(33, 'Carrot(கேரட்)', '57', 40, 'uploadImage/carrot.jpeg', '', 7, 0, '2024-07-08', NULL),
(35, 'Beans(பீன்ஸ்)', '467', 40, 'uploadImage/beans.jpeg', '', 2, 0, '2024-07-08', NULL),
(36, 'Butter Beans(பட்டர் பீன்ஸ்)', '567', 20, 'uploadImage/butterbeans.jpeg', '', 1, 0, '2024-07-08', NULL),
(37, 'Double Beans(டபுள் பீன்ஸ்)', '34', 70, 'uploadImage/doublebeans.jpeg', '', 7, 0, '2024-07-08', NULL),
(38, 'Green Peas(பச்சை பட்டாணி)', '89', 70, 'uploadImage/green peas.jpeg', '', 2, 0, '2024-07-08', NULL),
(39, 'Beetroot(பீட்ரூட்)', '677', 70, 'uploadImage/beetroot.jpeg', '', 2, 0, '2024-07-08', NULL),
(40, 'Turtle Beans(காராமணி)', '876', 70, 'uploadImage/Turtlebeans.jpeg', '', 1, 0, '2024-07-08', NULL),
(41, 'Chow Chow(சௌ சௌ)', '89', 80, 'uploadImage/chowchow.jpeg', '', 2, 0, '2024-07-08', NULL),
(43, 'Radish(முள்ளங்கி )', '99', 40, 'uploadImage/rad.jpeg', '', 2, 0, '2024-07-08', NULL),
(44, 'Cauliflower(காலிபிளவர்)', '80', 60, 'uploadImage/cauliflower.jpeg', '', 1, 0, '2024-07-08', NULL),
(45, 'Broccoli(ப்ரோக்கோலி)', '90', 50, 'uploadImage/broccoli.jpeg', '', 1, 0, '2024-07-08', NULL),
(46, 'Mushroom(காளான் )', '34', 30, 'uploadImage/mushroom.jpeg', '', 1, 0, '2024-07-08', NULL),
(47, 'Coriander(கொத்தமல்லி)', '88', 20, 'uploadImage/coriander.jpeg', '', 1, 0, '2024-07-08', NULL),
(48, 'Curry Leaf(கறிவேப்பிலை)', '67', 10, 'uploadImage/curryleaf.jpeg', '', 1, 0, '2024-07-08', NULL),
(49, 'Mint(புதினா)', '24', 20, 'uploadImage/mint.jpeg', '', 2, 0, '2024-07-08', NULL),
(50, 'Spring Onions( வெங்காய தாள் )', '45', 20, 'uploadImage/spring onions.jpeg', '', 2, 0, '2024-07-08', NULL),
(51, 'Red Capsicum( சிவப்பு குடைமிளகாய்)', '67', 20, 'uploadImage/redcapsicum.jpeg', '', 2, 0, '2024-07-08', NULL),
(52, 'Green Capsicum(பச்சை குடைமிளகாய்)', '12', 20, 'uploadImage/green capsicum.jpeg', '', 2, 0, '2024-07-08', NULL),
(54, 'Yellow Capsicum( மஞ்சள் குடைமிளகாய் )', '53', 20, 'uploadImage/yello.jpeg', '', 2, 0, '2024-07-08', NULL),
(55, 'Ridge Gourd(பீக்கங்காய்)', '66', 40, 'uploadImage/ridge.jpeg', '', 7, 0, '2024-07-08', NULL),
(56, 'Broad Beans(அவரைக்காய்)', '89', 40, 'uploadImage/broad beans.jpeg', '', 1, 0, '2024-07-08', NULL),
(57, 'Ladies Finger(வெண்டைக்காய்)', '45', 20, 'uploadImage/ladiesfinger.jpeg', '', 2, 0, '2024-07-08', NULL),
(58, 'Pumpkin(பரங்கிக்காய்)', '34', 40, 'uploadImage/pumpkin.jpeg', '', 2, 0, '2024-07-08', NULL),
(59, 'Bittergourd(பாகற்காய்)', '234', 40, 'uploadImage/bittergourd.jpeg', '', 1, 0, '2024-07-08', NULL),
(60, 'Bottlegourd(சுரைக்காய்)', '12', 40, 'uploadImage/bottlegourd.jpeg', '', 6, 0, '2024-07-08', NULL),
(61, 'Ivygourd(கோவைக்காய்)', '90', 40, 'uploadImage/ivygourd.jpeg', '', 1, 0, '2024-07-08', NULL),
(62, 'White pampkin(பூசணிக்காய்)', '809', 40, 'uploadImage/white pampkin.jpeg', '', 2, 0, '2024-07-08', NULL),
(63, 'Cucumber(வெள்ளரிக்காய்)', '90', 800, 'uploadImage/cucumber.jpeg', '', 6, 0, '2024-07-08', NULL),
(64, 'Snakegourd(புடலங்காய்)', '87', 500, 'uploadImage/snakegourd.jpeg', '', 10, 0, '2024-07-08', NULL),
(65, 'Cluster Beans(கொத்தவரங்காய்)', '834', 20, 'uploadImage/clusterbeans.jpeg', '', 2, 0, '2024-07-08', NULL),
(66, 'Raw Banana(வாழைக்காய்)', '34', 40, 'uploadImage/rawbanana.jpeg', '', 5, 0, '2024-07-08', NULL),
(67, 'Banana stem(வாழைத்தண்டு)', '233', 40, 'uploadImage/bananastem.jpeg', '', 6, 0, '2024-07-08', NULL),
(68, 'Banana(வாழைப்பழம்)', '234', 20, 'uploadImage/banana.jpeg', '', 1, 0, '2024-07-08', NULL),
(70, 'Lemon(எலுமிச்சை பழம்)', '9876', 34, 'uploadImage/lemon.jpeg', '', 2, 0, '2024-07-08', NULL),
(71, 'Pineapple(அன்னாசிப்பழம்)', '76', 90, 'uploadImage/pineapple.jpeg', '', 2, 0, '2024-07-08', NULL),
(72, 'Pomegranate(மாதுளைப்பழம்)', '45', 60, 'uploadImage/pomogranate.jpeg', '', 1, 0, '2024-07-08', NULL),
(73, 'Apple(ஆப்பிள்)', '677', 150, 'uploadImage/apple.jpg', '', 2, 0, '2024-07-08', NULL),
(74, 'Grapes(திராட்சை)', '23', 30, 'uploadImage/grapes.jpeg', '', 3, 0, '2024-07-08', NULL),
(75, 'Pears(பேரிக்காய்)', '87', 45, 'uploadImage/pears.jpeg', '', 4, 0, '2024-07-08', NULL),
(76, 'Mosambi(சாத்துகுடி)', '90', 50, 'uploadImage/mosambi.jpeg', '', 3, 0, '2024-07-08', NULL),
(77, 'Orange(ஆரஞ்சு)', '785', 80, 'uploadImage/orange.jpeg', '', 5, 0, '2024-07-08', NULL),
(78, 'Papaya(பப்பாளி)', '564', 90, 'uploadImage/papaya.jpeg', '', 4, 0, '2024-07-08', NULL),
(79, 'Watermelon(தர்பூசணி)', '43', 70, 'uploadImage/watermelon.jpeg', '', 7, 0, '2024-07-08', NULL),
(80, 'Mango(மாம்பழம்)', '896', 60, 'uploadImage/mango.jpeg', '', 2, 0, '2024-07-08', NULL),
(81, 'Green Apple(பச்சை ஆப்பிள் )', '0887', 250, 'uploadImage/greenapple.jpeg', '', 5, 0, '2024-07-08', NULL),
(82, 'Muskmelon(கிர்ணி)', '675', 130, 'uploadImage/muskmelon.jpeg', '', 3, 0, '2024-07-08', NULL),
(83, 'Chiku(சப்போட்டா)', '867', 70, 'uploadImage/chiku.jpeg', '', 6, 0, '2024-07-08', NULL),
(84, 'Guava(கொய்யாப் பழம்)', '896', 123, 'uploadImage/guava.jpeg', '', 6, 0, '2024-07-08', NULL),
(85, 'Jackfruit(பலாப்பழம்)', '896', 60, 'uploadImage/jackfruit.jpeg', '', 4, 0, '2024-07-08', NULL),
(86, 'Plum(ப்ளம்ஸ்)', '876', 450, 'uploadImage/plum.jpeg', '', 6, 0, '2024-07-08', NULL),
(87, 'Dragon fruit(டிராகன் பழம்)', '24', 34, 'uploadImage/dragonfruit.jpg', '', 3, 0, '2024-07-08', NULL),
(88, 'Star fruit(நட்சத்திர பழம் )', '98t', 70, 'uploadImage/starfruit.jpeg', '', 5, 0, '2024-07-08', NULL),
(89, 'Corn(சோளம்)', '86', 230, 'uploadImage/corn.jpeg', '', 7, 0, '2024-07-08', NULL),
(90, 'Mulai keerai (முளைக்கீரை)', '45', 40, 'uploadImage/mulaikeerai.jpeg', '', 6, 0, '2024-07-08', NULL),
(91, 'Gongura (புளிச்சக்கீரை)', '907', 80, 'uploadImage/gongura.jpeg', '', 2, 0, '2024-07-08', NULL),
(92, 'Arai keerai(அரைக்கீரை)', '653', 40, 'uploadImage/araikeerai.jpeg', '', 7, 0, '2024-07-08', NULL),
(93, 'Drumstick leaves(முருங்கை கீரை)', '54', 40, 'uploadImage/drumstickleaves.jpeg', '', 5, 0, '2024-07-08', NULL),
(94, 'Palak(பாலக் கீரை)', '98', 78, 'uploadImage/palak.jpeg', '', 3, 0, '2024-07-08', NULL),
(95, 'Turmeric powder(மஞ்சள் தூள்)', '9078', 40, 'uploadImage/turmeric powder.jpeg', '', 6, 0, '2024-07-08', NULL),
(97, 'Mustard(கடுகு)', '897', 20, 'uploadImage/mustard.jpeg', '', 6, 0, '2024-07-08', NULL),
(98, 'Cumin seeds(சீரகம்)', '564', 40, 'uploadImage/cumin.jpeg', '', 1, 0, '2024-07-08', NULL),
(99, 'Pepper(மிளகு)', '978', 44, 'uploadImage/pepper.jpeg', '', 4, 0, '2024-07-08', NULL),
(100, 'Fenugreek(வெந்தயம்)', '898', 40, 'uploadImage/fenugreek.jpeg', '', 1, 0, '2024-07-08', NULL),
(101, 'Fennel seeds(வெந்தயம்)', '64', 20, 'uploadImage/fennelseeds.jpeg', '', 2, 0, '2024-07-08', NULL),
(102, 'Asafotedia powder(எல் ஜி பவுடர்)', '097', 10000, 'uploadImage/asafotediapowder.jpeg', '', 6, 0, '2024-07-08', NULL),
(103, 'Asafotedia (எல் ஜி பெருங்காய கட்டி)', '765', 40, 'uploadImage/asafotedia.jpeg', '', 2, 0, '2024-07-08', NULL),
(104, 'Tamarind(புதுப்புளி)', '674', 50, 'uploadImage/tamarind.jpeg', '', 5, 0, '2024-07-08', NULL),
(105, 'Garlic(பூண்டு)', '', 40, 'uploadImage/garlic.jpeg', '', 2, 0, '2024-07-09', NULL),
(106, 'Dry chilli(குண்டூர் மிளகாய்)', '', 70, 'uploadImage/drychilliround.jpeg', '', 2, 0, '2024-07-09', NULL),
(107, 'Dry chilli (மிளகாய் நீலம்)', '', 40, 'uploadImage/milagai-neetam (1).jpg', '', 2, 0, '2024-07-09', NULL),
(108, 'S.Chilli Powder(சக்தி மிளகாய் தூள்)', '', 7, 'uploadImage/chillipowder.jpeg', '', 3, 0, '2024-07-09', NULL),
(109, 'S.Coriander Powder(சக்தி மல்லித் தூள்)', '', 50, 'uploadImage/coriander powder.jpeg', '', 4, 0, '2024-07-09', NULL),
(110, 'Pepper Powder(மிளகுத்தூள்)', '', 4, 'uploadImage/pepeer powder.jpeg', '', 2, 0, '2024-07-09', NULL),
(111, 'White Pepper Powder( வெள்ளை மிளகு தூள்)', '', 40, 'uploadImage/white pepper powder.jpg', '', 3, 0, '2024-07-09', NULL),
(112, 'Fennel seeds Powder(சோம்பு  தூள்)', '', 70, 'uploadImage/fennel powder.jpeg', '', 5, 0, '2024-07-09', NULL),
(113, 'Cumin seeds Powder(சீரகம்  தூள்)', '', 70, 'uploadImage/cumin-powder3.jpg', '', 4, 0, '2024-07-09', NULL),
(114, 'Crystal Salt(கல் உப்பு)', '', 4, 'uploadImage/crystal salt.jpg', '', 3, 0, '2024-07-09', NULL),
(115, 'Table salt(தூள் உப்பு)', '', 70, 'uploadImage/table salt.jpg', '', 2, 0, '2024-07-09', NULL),
(116, 'Parboiled Rice(புழுங்கல் அரிசி)', '', 70, 'uploadImage/parboiled rice.jpeg', '', 4, 0, '2024-07-09', NULL),
(117, 'Idly Rice(இட்லி அரிசி)', '', 30, 'uploadImage/idly rice.jpg', '', 4, 0, '2024-07-09', NULL),
(118, 'Ponni raw rice(பொன்னி பச்சை அரிசி)', '', 35, 'uploadImage/ponni raw rice.png', '', 3, 0, '2024-07-09', NULL),
(120, 'Biriyani rice(பிரியாணி அரிசி)', '', 30, 'uploadImage/biriyani rice.jpeg', '', 3, 0, '2024-07-09', NULL),
(121, 'Semolina(ரவை)', '', 70, 'uploadImage/ravai.jpeg', '', 2, 0, '2024-07-09', NULL),
(122, 'Wheat Flour(கோதுமை மாவு)', '', 70, 'uploadImage/wheat flour.jpg', '', 2, 0, '2024-07-09', NULL),
(123, 'Refined Wheat flour(மைதா மாவு)(', '', 40, 'uploadImage/maida flour.webp', '', 2, 0, '2024-07-09', NULL),
(124, 'Ragi Flour(ராகி மாவு)', '', 70, 'uploadImage/ragi flour.webp', '', 2, 0, '2024-07-09', NULL),
(125, 'Peanut Flour( கடலை மாவு)', '', 70, 'uploadImage/peanut flour.jpeg', '', 2, 0, '2024-07-09', NULL),
(126, 'Rice Flour(அரிசி மாவு)', '', 97, 'uploadImage/rice flour.jpeg', '', 8, 0, '2024-07-09', NULL),
(127, 'Corn flour(சோள மாவு)', '', 100, 'uploadImage/corn flour.jpeg', '', 6, 0, '2024-07-09', NULL),
(128, 'Toor Dhal(துவரம் பருப்பு)', '', 40, 'uploadImage/toor dhal.jpeg', '', 2, 0, '2024-07-09', NULL),
(129, 'Bengal gram(கடலைப்பருப்பு)', '', 60, 'uploadImage/bengalgram.jpeg', '', 7, 0, '2024-07-09', NULL),
(130, 'Orid dhal( உளுத்தம் பருப்பு)', '', 60, 'uploadImage/orid dhal.jpeg', '', 1, 0, '2024-07-09', NULL),
(131, 'P lentil(ப பருப்பு)', '', 40, 'uploadImage/plenthil.jpeg', '', 7, 0, '2024-07-09', NULL),
(132, 'White Channa(வெள்ளை கொண்டைக்கடலை)', '', 54, 'uploadImage/white channa.jpeg', '', 3, 0, '2024-07-09', NULL),
(133, 'Black Channa(கருப்பு கொண்டைக்கடலை)', '', 40, 'uploadImage/blackchanna.jpeg', '', 6, 0, '2024-07-09', NULL),
(134, 'Dried Black night shade(பொட்டுக்கடலை)', '', 20, 'uploadImage/pottukadalai.jpeg', '', 1, 0, '2024-07-09', NULL),
(135, 'Peas(பட்டாணி)', '', 40, 'uploadImage/peas.jpeg', '', 6, 0, '2024-07-09', NULL),
(136, 'Soya Chunks(மீல் மேக்கர்)', '', 40, 'uploadImage/soya chunks.jpeg', '', 7, 0, '2024-07-09', NULL),
(137, 'Rajmah(ராஜ்மா)', '', 40, 'uploadImage/rajmah.jpeg', '', 6, 0, '2024-07-09', NULL),
(138, 'Rice Vermicellli(அரிசி சேவை)', '', 20, 'uploadImage/rice sevai.jpg', '', 1, 0, '2024-07-09', NULL),
(139, 'Semiya(சேமியா)', '', 86, 'uploadImage/semiya.jpeg', '', 8, 0, '2024-07-09', NULL),
(140, 'Ragi semiya(ராகி சேமியா)', '', 70, 'uploadImage/ragi semiya.jpeg', '', 6, 0, '2024-07-09', NULL),
(141, 'Flattened Rice(அவல்)', '', 40, 'uploadImage/flattened rice.jpeg', '', 6, 0, '2024-07-09', NULL),
(142, 'Pappad(அப்பளம்)', '', 70, 'uploadImage/pappad.jpeg', '', 2, 0, '2024-07-09', NULL),
(143, 'Dried Black night shade(மணத்தக்காளி வத்தல்)', '', 40, 'uploadImage/manathakkalivathal.jpeg', '', 6, 0, '2024-07-09', NULL),
(147, 'Cashew 1/2(முந்திரிப்பருப்பு)', '', 60, 'uploadImage/cashew.jpeg', '', 1, 0, '2024-07-09', NULL),
(148, 'Cashew 1/8(முந்திரிப்பருப்பு)', '', 70, 'uploadImage/cashewnut.webp', '', 6, 0, '2024-07-09', NULL),
(149, 'Dry Grapes(திராட்சை)', '', 567, 'uploadImage/dry grapes.jpeg', '', 5, 0, '2024-07-09', NULL),
(150, 'Sara dal(சாரா பருப்பு)', '', 40, 'uploadImage/sara dal.jpeg', '', 3, 0, '2024-07-09', NULL),
(151, 'Cucumber seeds(வெள்ளரி விதை)', '', 60, 'uploadImage/cucumberseeds.jpeg', '', 4, 0, '2024-07-09', NULL),
(152, 'Badam(பாதாம் )', '', 70, 'uploadImage/badam.jpeg', '', 5, 0, '2024-07-09', NULL),
(153, 'Pista(பிஸ்தா)', '', 678, 'uploadImage/pista.jpeg', '', 6, 0, '2024-07-09', NULL),
(154, 'Groundnut(நிலக்கடலை)', '', 886, 'uploadImage/groundnut.jpeg', '', 7, 0, '2024-07-09', NULL),
(155, 'Cinnamon(பட்டை)', '', 60, 'uploadImage/cinnamon.jpeg', '', 6, 0, '2024-07-09', NULL),
(156, 'Cardamom(ஏலக்காய்)', '', 600, 'uploadImage/cardamom.jpeg', '', 6, 0, '2024-07-09', NULL),
(157, 'Poppy seeds(கசகசா)', '', 40, 'uploadImage/poppyseeds.jpeg', '', 6, 0, '2024-07-09', NULL),
(158, 'Camphor(கற்பூரம்)', '', 70, 'uploadImage/camphor.jpeg', '', 7, 0, '2024-07-09', NULL),
(159, 'Bay leaf(பிரியாணி இலை)', '', 785, 'uploadImage/bayleaf.jpeg', '', 10, 0, '2024-07-09', NULL),
(160, 'Star anise(அன்னாசிபூ)', '', 456, 'uploadImage/staranise.jpeg', '', 3, 0, '2024-07-09', NULL),
(161, 'Cloves(இலவங்கம்)', '', 768, 'uploadImage/cloves.jpeg', '', 5, 0, '2024-07-09', NULL),
(162, 'Mutton masala(மட்டன் மசாலா)', '', 768, 'uploadImage/muttonmasala.jpeg', '', 6, 0, '2024-07-09', NULL),
(163, 'Chicken masala(சிக்கன் மசாலா)', '', 568, 'uploadImage/chickenmasala.jpeg', '', 6, 0, '2024-07-09', NULL),
(164, 'Channa masala(சென்னா மசாலா)', '', 675, 'uploadImage/channamasala.jpeg', '', 8, 0, '2024-07-09', NULL),
(165, 'Kapok buds(மராட்டி மொக்கு)', '', 45, 'uploadImage/kapok buds.jpeg', '', 3, 0, '2024-07-10', NULL),
(166, 'Black stone flower(கல்பாசி )', '', 78, 'uploadImage/black stone flower.jpeg', '', 2, 0, '2024-07-10', NULL),
(167, 'Curry chilli powder(குழம்பு மிளகாய் தூள் )', '', 57, 'uploadImage/currychillipowder.jpeg', '', 5, 0, '2024-07-10', NULL),
(168, 'S.Garam masala(சக்தி கரம் மசாலா)', '', 86, 'uploadImage/s.garam masala.jpeg', '', 9, 0, '2024-07-10', NULL),
(169, 'Sugar(சர்க்கரை)', '', 70, 'uploadImage/sugar.jpeg', '', 2, 0, '2024-07-10', NULL),
(170, 'Fish masala(மீன் மசாலா)', '', 20, 'uploadImage/fish masala.jpeg', '', 7, 0, '2024-07-10', NULL),
(171, 'Jaggery(வெல்லம்)', '', 67, 'uploadImage/jaggery.jpeg', '', 5, 0, '2024-07-10', NULL),
(173, 'Coffee powder(காபி தூள்)', '', 20, 'uploadImage/coffeepowder.jpeg', '', 6, 0, '2024-07-10', NULL),
(174, 'Tea powder(தேயிலை தூள்)', '', 78, 'uploadImage/tea powder.jpeg', '', 5, 0, '2024-07-10', NULL),
(175, 'Badam powder(பாதாம்  பவுடர் )', '', 65, 'uploadImage/badampowder.jpeg', '', 4, 0, '2024-07-10', NULL),
(176, 'Pickle(ஊறுகாய்)', '', 76, 'uploadImage/pickle.jpeg', '', 6, 0, '2024-07-10', NULL),
(177, 'Vim bar(பொன்வண்டு சோப்)', '', 65, 'uploadImage/vimbar.webp', '', 5, 0, '2024-07-10', NULL),
(178, 'Sabena powder(சபீனா பவுடர்)', '', 87, 'uploadImage/sabena powder.jpeg', '', 6, 0, '2024-07-10', NULL),
(179, 'Nutmeg mace(ஜாதிபதிரி)', '', 65, 'uploadImage/nutmegmace.jpeg', '', 4, 0, '2024-07-10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcard2`
--

CREATE TABLE `tblcard2` (
  `Id` int(20) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `BillNo` varchar(1000) NOT NULL,
  `Price` float NOT NULL,
  `Image` varchar(1000) NOT NULL,
  `Unit` varchar(100) NOT NULL,
  `Quantity` float NOT NULL,
  `Total` float NOT NULL,
  `Date` date DEFAULT NULL,
  `BillDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblcard2`
--

INSERT INTO `tblcard2` (`Id`, `Name`, `BillNo`, `Price`, `Image`, `Unit`, `Quantity`, `Total`, `Date`, `BillDate`) VALUES
(6, 'Ghee(நெய்)', '', 600, 'uploadImage/ghee.jpeg', '', 2, 0, '2024-07-10', NULL),
(7, 'Vanaspathi(டால்டா)', '', 60, 'uploadImage/dalda.jpeg', '', 1, 0, '2024-07-10', NULL),
(8, 'Sunflower oil(சன்பிளவர் ஆயில்)', '', 50, 'uploadImage/sunflower oil.jpeg', '', 5, 0, '2024-07-10', NULL),
(9, 'Gingelly oil(நல்லெண்ணெய்)', '', 65, 'uploadImage/gingellyoil.jpeg', '', 5, 0, '2024-07-10', NULL),
(10, 'Coconut oil(தேங்காய் எண்ணெய் )', '', 70, 'uploadImage/coconutoil.jpeg', '', 1, 0, '2024-07-10', NULL),
(11, 'Tomato sauce(தக்காளி சாஸ் )', '', 65, 'uploadImage/tomatosauce.jpeg', '', 6, 0, '2024-07-10', NULL),
(12, 'Chilli  sauce(சில்லி சாஸ்)', '', 65, 'uploadImage/chillisauce.jpeg', '', 5, 0, '2024-07-10', NULL),
(13, 'Soya sauce( சோயா சாஸ்)', '', 34, 'uploadImage/soyasauce.jpeg', '', 4, 0, '2024-07-10', NULL),
(14, 'Briyani essence(பிரியாணி எசென்ஸ்)', '', 40, 'uploadImage/briyaniessence.jpeg', '', 5, 0, '2024-07-10', NULL),
(15, 'Vannila essence(வெனிலா எசென்ஸ்)', '', 68, 'uploadImage/vannilaessence.jpeg', '', 5, 0, '2024-07-10', NULL),
(16, 'Pineapple essence(பைனாப்பிள் எசென்ஸ்)', '', 65, 'uploadImage/pineappleessence.jpeg', '', 5, 0, '2024-07-10', NULL),
(17, 'Vinegar(வினிகர்)', '', 76, 'uploadImage/vinegar.jpeg', '', 4, 0, '2024-07-10', NULL),
(18, 'Rose water(ரோஸ் வாட்டர்)', '', 88, 'uploadImage/rosewater.jpeg', '', 5, 0, '2024-07-10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcard3`
--

CREATE TABLE `tblcard3` (
  `Id` int(20) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `BillNo` varchar(1000) NOT NULL,
  `Price` float NOT NULL,
  `Image` varchar(1000) NOT NULL,
  `Unit` varchar(100) NOT NULL,
  `Quantity` float NOT NULL,
  `Total` float NOT NULL,
  `Date` date DEFAULT NULL,
  `BillDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblcard3`
--

INSERT INTO `tblcard3` (`Id`, `Name`, `BillNo`, `Price`, `Image`, `Unit`, `Quantity`, `Total`, `Date`, `BillDate`) VALUES
(3, 'Monitor', '', 10000, 'uploadImage/monitor.jpg', 'No.of', 8, 0, '2024-07-15', NULL),
(4, 'CPU', '', 10000, 'uploadImage/cpu.jpg', 'No.of', 7, 0, '2024-07-15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(50) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `reset_token_hash` varchar(64) DEFAULT NULL,
  `reset_token_expires_at` datetime DEFAULT NULL,
  `account_activation_hash` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password_hash`, `reset_token_hash`, `reset_token_expires_at`, `account_activation_hash`) VALUES
(1, 'seeta', 'seeta@gmail.com', '$2y$10$4Ay6vxVW9AIhdppqm5O6d.sNCyWITB/twRFlgg8rKPBXk9bPYlV0q', '02b3fae2dca13a31503767ce97451d5713ae2b6d1be0f24a3608501b9c9484dd', '2024-07-02 11:49:11', NULL),
(2, 'Kailash', 'kailash@gmail.com', '$2y$10$DO6ULSziULOWNvCpbg.oaeFVoND9x82GRL4eQLC/9LHGxugkl5WHS', NULL, NULL, NULL),
(3, 'krishna', 'krishna1@gmail.com', '$2y$10$FL6VEZqT2ReNO3sfaB0BtOI4RP.XW7oRNmTE4NioN5AME/IOzDyda', NULL, NULL, NULL),
(4, 'Deva', 'deva@gmail.com', '$2y$10$OOJzj3QGLWQIp7IYmAnOWOTIzmLN.ccwqNfWHiGPlRfdQiv7NB1F2', NULL, NULL, NULL),
(5, 'Jeevan', 'jeevan@gmail.com', '$2y$10$TzzP3E8ldqa.9QCAT/3a3uYjdqC5EKIHvdfiNz3zrezBYvL1Zon.u', NULL, NULL, NULL),
(6, 'kailash', 'kailash.k@gmail.com', '$2y$10$Fb2kADeEBxFgP8nr33S5EuO2VMMIOk182EsQjp9EnWCsQrJmD2dNS', NULL, NULL, NULL),
(10, 'purush45', 'purushyadavpujari@gmail.com', '$2y$10$8XXs5tAzk/Glun3GIczQcOYGqT1vCbCtY16JZuBelGfWYx0q/Nd7m', NULL, NULL, '5b8aef14cd2c16d7aeefb33b60470cec0ffc601a73388dd6c3c879bc799c9a78'),
(17, 'monish', 'monishkpt@gmail.com', '$2y$10$gsJ3SgZHH0uL1xmuYVCNuODlFUYEt0rv5HoWnrvoK5eBocd7ke6yW', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblcard`
--
ALTER TABLE `tblcard`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblcard2`
--
ALTER TABLE `tblcard2`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblcard3`
--
ALTER TABLE `tblcard3`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `reset_token_hash` (`reset_token_hash`),
  ADD UNIQUE KEY `account_activation_hash` (`account_activation_hash`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblcard`
--
ALTER TABLE `tblcard`
  MODIFY `Id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;

--
-- AUTO_INCREMENT for table `tblcard2`
--
ALTER TABLE `tblcard2`
  MODIFY `Id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tblcard3`
--
ALTER TABLE `tblcard3`
  MODIFY `Id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
