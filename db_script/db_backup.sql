-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.1.33-community-log - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for hie_db
DROP DATABASE IF EXISTS `hie_db`;
CREATE DATABASE IF NOT EXISTS `hie_db` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `hie_db`;

-- Dumping structure for table hie_db.aadhaar_dump
DROP TABLE IF EXISTS `aadhaar_dump`;
CREATE TABLE IF NOT EXISTS `aadhaar_dump` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aadhaar_num` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=473 DEFAULT CHARSET=latin1;

-- Dumping data for table hie_db.aadhaar_dump: 426 rows
DELETE FROM `aadhaar_dump`;
/*!40000 ALTER TABLE `aadhaar_dump` DISABLE KEYS */;
INSERT INTO `aadhaar_dump` (`id`, `aadhaar_num`) VALUES
	(1, '111122223333'),
	(2, '111122223334'),
	(3, '684107489589'),
	(343, '967536437294'),
	(5, '107909024793'),
	(6, '337590551318'),
	(7, '364225712944'),
	(8, '808356941499'),
	(9, '949107599397'),
	(10, '320467203222'),
	(11, '755013248655'),
	(12, '813664664340'),
	(13, '803283606472'),
	(14, '575424070074'),
	(15, '467269561688'),
	(16, '610075628953'),
	(17, '648569490433'),
	(18, '412620596040'),
	(19, '117394539636'),
	(20, '349110940796'),
	(21, '393371115804'),
	(22, '919522787369'),
	(23, '417500620165'),
	(24, '328934769452'),
	(25, '392172017499'),
	(26, '974055809875'),
	(27, '693763027613'),
	(28, '546647739174'),
	(29, '651949643764'),
	(30, '619805032033'),
	(31, '143176259606'),
	(32, '856466232665'),
	(33, '852802415241'),
	(34, '694613408944'),
	(35, '914659829730'),
	(36, '489458952554'),
	(37, '703315304315'),
	(342, '917788563219'),
	(39, '131052591028'),
	(40, '510663901931'),
	(41, '160161767304'),
	(42, '268817161460'),
	(43, '863600536122'),
	(44, '511551226965'),
	(45, '966954557194'),
	(46, '300119135808'),
	(47, '599732038192'),
	(341, '207135469845'),
	(49, '692317987505'),
	(50, '166681525452'),
	(51, '756453695480'),
	(52, '282223931776'),
	(53, '141758603175'),
	(54, '862121251283'),
	(55, '885330477622'),
	(56, '840288664996'),
	(57, '545451922850'),
	(58, '206393649993'),
	(59, '395612512152'),
	(60, '358881641513'),
	(61, '607570701844'),
	(62, '961208615415'),
	(63, '983331002279'),
	(340, '372629605580'),
	(65, '215153003311'),
	(66, '976677459642'),
	(67, '237928319012'),
	(68, '259609246868'),
	(69, '584261308036'),
	(70, '142478830313'),
	(71, '959610258191'),
	(72, '370614830749'),
	(73, '974243409907'),
	(74, '759372588022'),
	(75, '874132741125'),
	(339, '218670862930'),
	(77, '840331668816'),
	(78, '924020457942'),
	(338, '573574913268'),
	(80, '723475226874'),
	(81, '320054223127'),
	(82, '429845465747'),
	(83, '189064690087'),
	(84, '655787083931'),
	(85, '711741380125'),
	(86, '591345679565'),
	(87, '821504288186'),
	(88, '333484432970'),
	(89, '202909331026'),
	(337, '216401244715'),
	(91, '461738972423'),
	(92, '266414731989'),
	(93, '946856773408'),
	(94, '935039701811'),
	(95, '834628219562'),
	(96, '368022023111'),
	(97, '336225487604'),
	(98, '577061399423'),
	(99, '876630565036'),
	(100, '651968657646'),
	(101, '629951623855'),
	(102, '193852177070'),
	(336, '836143780347'),
	(104, '815473722122'),
	(105, '839150507784'),
	(106, '749331403290'),
	(107, '229205523831'),
	(108, '898033440018'),
	(109, '802550659331'),
	(110, '318653007334'),
	(111, '185613089413'),
	(112, '972106455799'),
	(113, '303693041488'),
	(114, '602145870776'),
	(335, '988105895917'),
	(116, '691813719171'),
	(117, '160117846131'),
	(118, '725148103875'),
	(119, '145387011715'),
	(120, '551490777685'),
	(121, '321292884015'),
	(122, '951992117755'),
	(123, '796081967461'),
	(124, '124433514777'),
	(125, '233921702237'),
	(126, '796307997588'),
	(127, '279774911962'),
	(334, '701461909992'),
	(129, '210428283745'),
	(333, '173067894925'),
	(131, '480163460113'),
	(132, '333948362929'),
	(133, '229251465042'),
	(134, '144412267156'),
	(136, '738298086205'),
	(137, '588569547597'),
	(138, '727953510105'),
	(139, '874058938467'),
	(140, '186434192756'),
	(141, '309994179112'),
	(142, '990668348028'),
	(331, '700020487140'),
	(144, '144791154325'),
	(145, '653878101756'),
	(146, '835017076539'),
	(147, '213451108162'),
	(148, '562204341927'),
	(149, '170668415884'),
	(150, '166729084371'),
	(151, '321640204937'),
	(152, '108013802308'),
	(153, '575148427463'),
	(154, '551700761124'),
	(330, '148492200438'),
	(156, '510190517185'),
	(157, '451776954766'),
	(158, '728313253008'),
	(159, '286235431475'),
	(160, '246237429088'),
	(161, '372480881747'),
	(162, '123692152205'),
	(163, '501018146519'),
	(164, '134014306714'),
	(165, '167017124748'),
	(166, '433042734333'),
	(167, '664162328153'),
	(329, '680813515261'),
	(169, '115930388789'),
	(170, '514601569170'),
	(171, '225216710218'),
	(172, '582278874313'),
	(173, '235744271646'),
	(174, '431884766027'),
	(175, '452191045928'),
	(176, '965300962296'),
	(177, '469931704429'),
	(178, '453755665993'),
	(179, '858983247409'),
	(180, '933649269802'),
	(328, '418525135534'),
	(182, '655535408906'),
	(327, '137270731047'),
	(185, '250286630587'),
	(325, '769703405694'),
	(187, '721361793318'),
	(188, '323476004715'),
	(189, '453294674356'),
	(190, '296045388370'),
	(191, '120342949517'),
	(192, '713578613208'),
	(193, '206864248222'),
	(194, '893585432221'),
	(195, '847334447174'),
	(196, '555915969941'),
	(197, '237576538918'),
	(198, '520134815499'),
	(199, '887944491475'),
	(200, '879318041614'),
	(201, '732756764379'),
	(324, '586413625242'),
	(203, '930878376523'),
	(204, '576902729996'),
	(323, '387454917083'),
	(206, '728684596464'),
	(207, '367787359624'),
	(208, '652883039464'),
	(209, '161053149179'),
	(210, '846616658239'),
	(211, '749923874391'),
	(212, '209769427971'),
	(213, '799075547418'),
	(214, '366069483911'),
	(215, '433120808036'),
	(322, '116953663636'),
	(218, '985891685807'),
	(219, '816611352205'),
	(220, '125381734338'),
	(221, '177074645810'),
	(222, '509228056770'),
	(320, '403967362273'),
	(224, '546897746200'),
	(225, '689739630268'),
	(226, '808004943475'),
	(227, '970805857303'),
	(228, '430014486825'),
	(229, '237654892949'),
	(230, '898231035003'),
	(231, '778190526904'),
	(232, '196259560246'),
	(233, '646726251250'),
	(234, '644852606248'),
	(235, '284084308225'),
	(236, '485863753115'),
	(237, '577065871634'),
	(238, '427738129559'),
	(239, '407493063628'),
	(240, '754250960195'),
	(241, '548775640827'),
	(242, '481125354283'),
	(243, '759299879669'),
	(244, '353123366230'),
	(245, '487717222876'),
	(246, '379216046425'),
	(247, '432928594232'),
	(319, '651355232718'),
	(249, '836188561130'),
	(318, '284269610684'),
	(251, '991225589989'),
	(252, '656253235094'),
	(253, '307589436236'),
	(254, '569187506632'),
	(255, '923169255185'),
	(256, '908283786762'),
	(257, '771911198992'),
	(258, '134704665406'),
	(259, '357789760788'),
	(260, '384834838458'),
	(261, '850804940658'),
	(317, '923330950479'),
	(263, '945186302014'),
	(264, '427370884853'),
	(265, '301295548958'),
	(266, '224365120962'),
	(267, '217938988672'),
	(268, '416599611208'),
	(269, '429181120758'),
	(270, '896106800899'),
	(271, '192990672954'),
	(272, '276632992808'),
	(273, '804192975912'),
	(274, '191065931870'),
	(275, '542750762349'),
	(276, '140556046870'),
	(316, '777461724148'),
	(278, '950971780299'),
	(279, '531274998124'),
	(280, '803459680456'),
	(281, '423473438642'),
	(282, '706988182577'),
	(283, '264520627692'),
	(284, '201638621465'),
	(285, '214631254984'),
	(286, '468240441259'),
	(287, '697308472075'),
	(315, '321325900332'),
	(289, '317179951180'),
	(290, '340436584633'),
	(291, '750643100357'),
	(292, '731905778620'),
	(293, '407599622763'),
	(294, '842280808689'),
	(295, '988605205890'),
	(296, '416183634117'),
	(297, '115102583649'),
	(298, '326962046629'),
	(299, '289502512933'),
	(300, '466626455510'),
	(301, '464624769487'),
	(302, '923244511637'),
	(303, '222348280458'),
	(304, '342007898112'),
	(314, '943055936082'),
	(306, '188949736011'),
	(307, '815764671019'),
	(308, '511974177800'),
	(309, '112576906674'),
	(313, '131317936937'),
	(311, '797079464231'),
	(312, '904511259779'),
	(345, '518973356596'),
	(346, '341917231066'),
	(347, '152666116275'),
	(348, '737578918912'),
	(349, '229896276472'),
	(350, '936744656354'),
	(351, '994034483091'),
	(352, '159938477128'),
	(353, '817588967101'),
	(354, '608129434853'),
	(355, '587880303699'),
	(356, '115013244668'),
	(357, '811425342980'),
	(358, '712087011627'),
	(359, '126159059932'),
	(360, '494534295512'),
	(362, '987368786695'),
	(363, '654260978712'),
	(364, '309198564206'),
	(365, '583209915629'),
	(366, '988453916263'),
	(367, '192639865160'),
	(368, '997837607746'),
	(369, '411268473985'),
	(372, '213223777909'),
	(373, '825091432617'),
	(374, '485785860089'),
	(375, '953655033329'),
	(376, '310917617111'),
	(377, '693623016303'),
	(378, '535362260914'),
	(379, '595942286398'),
	(380, '373624679980'),
	(382, '280608847998'),
	(383, '162154556403'),
	(384, '968946268753'),
	(385, '358267705289'),
	(386, '884499750923'),
	(387, '347695669483'),
	(389, '381808649172'),
	(390, '654105900464'),
	(391, '125103585538'),
	(392, '663200257032'),
	(393, '940690559279'),
	(394, '713852056035'),
	(395, '747188633072'),
	(396, '594387027988'),
	(397, '730369271459'),
	(398, '868685304064'),
	(399, '152318736680'),
	(400, '155537801939'),
	(401, '320732830391'),
	(402, '137050776870'),
	(403, '723055423910'),
	(404, '204124819677'),
	(405, '851457857388'),
	(406, '644914858643'),
	(407, '670200751787'),
	(408, '416259213738'),
	(410, '104691609837'),
	(411, '311376547730'),
	(412, '242807939874'),
	(413, '279910086914'),
	(414, '671126645683'),
	(415, '515902998406'),
	(416, '566135085715'),
	(417, '282966464090'),
	(418, '716427094038'),
	(419, '733236108658'),
	(420, '516899291907'),
	(421, '384788164295'),
	(422, '373242976491'),
	(423, '711850420303'),
	(424, '439523202776'),
	(426, '991754340931'),
	(427, '772577384274'),
	(428, '887623929313'),
	(429, '120387524478'),
	(430, '939065865184'),
	(431, '334166783219'),
	(432, '853636351277'),
	(433, '265681437464'),
	(434, '767498164221'),
	(436, '899738235305'),
	(437, '377351588921'),
	(438, '187543269421'),
	(439, '805661611077'),
	(440, '465678277859'),
	(441, '911406586795'),
	(442, '159998131133'),
	(444, '848860267408'),
	(446, '688362177171'),
	(447, '300845147390'),
	(448, '439139236173'),
	(449, '293160769430'),
	(450, '148386169363'),
	(451, '862448569259'),
	(452, '867084368939'),
	(453, '748076167654'),
	(454, '139127762186'),
	(455, '451410338702'),
	(456, '839668437689'),
	(457, '844111203070'),
	(458, '701550733020'),
	(459, '975420086621'),
	(460, '772448264781'),
	(461, '935981094777'),
	(462, '362560710276'),
	(464, '936619388811'),
	(465, '668516081449'),
	(466, '532722271543'),
	(467, '658063144104'),
	(468, '692148936625'),
	(469, '486555281548'),
	(470, '356329628598'),
	(471, '321982329079'),
	(472, '540922790338');
/*!40000 ALTER TABLE `aadhaar_dump` ENABLE KEYS */;

-- Dumping structure for table hie_db.general_history
DROP TABLE IF EXISTS `general_history`;
CREATE TABLE IF NOT EXISTS `general_history` (
  `aadhaar_num` varchar(50) NOT NULL,
  `marital_status` varchar(50) DEFAULT NULL,
  `no_of_children` varchar(50) DEFAULT NULL,
  `habits_cigarette` varchar(50) DEFAULT NULL,
  `tobacco_snuff` varchar(50) DEFAULT NULL,
  `alcohol` varchar(50) DEFAULT NULL,
  `diabetes` varchar(50) DEFAULT NULL,
  `cardiac_diseases` varchar(50) DEFAULT NULL,
  `endrocrine_others` varchar(50) DEFAULT NULL,
  `eplepsy` varchar(50) DEFAULT NULL,
  `cancer` varchar(50) DEFAULT NULL,
  `medical` text,
  `surgical` text,
  `present_medications` text,
  `drug_allergies` text,
  PRIMARY KEY (`aadhaar_num`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table hie_db.general_history: 1 rows
DELETE FROM `general_history`;
/*!40000 ALTER TABLE `general_history` DISABLE KEYS */;
INSERT INTO `general_history` (`aadhaar_num`, `marital_status`, `no_of_children`, `habits_cigarette`, `tobacco_snuff`, `alcohol`, `diabetes`, `cardiac_diseases`, `endrocrine_others`, `eplepsy`, `cancer`, `medical`, `surgical`, `present_medications`, `drug_allergies`) VALUES
	('821504288186', '', '', 'Occasionally', 'Occasionally', 'Occasionally', 'No', 'No', 'No', 'No', 'No', '', '', '', '');
/*!40000 ALTER TABLE `general_history` ENABLE KEYS */;

-- Dumping structure for table hie_db.medical_status
DROP TABLE IF EXISTS `medical_status`;
CREATE TABLE IF NOT EXISTS `medical_status` (
  `aadhaar_num` varchar(50) NOT NULL,
  `height` varchar(50) DEFAULT NULL,
  `weight` varchar(50) DEFAULT NULL,
  `pulse` int(11) DEFAULT NULL,
  `bp_mm` int(11) DEFAULT NULL,
  `bp_hg` int(11) DEFAULT NULL,
  `habits_cigarette` varchar(50) DEFAULT NULL,
  `tobacco_snuff` varchar(50) DEFAULT NULL,
  `alcohol` varchar(50) DEFAULT NULL,
  `diabetes` varchar(50) DEFAULT NULL,
  `cardiac_diseases` varchar(50) DEFAULT NULL,
  `endrocrine_others` varchar(50) DEFAULT NULL,
  `eplepsy` varchar(50) DEFAULT NULL,
  `cancer` varchar(50) DEFAULT NULL,
  `medical` longtext,
  `surgical` longtext,
  `present_medications` longtext,
  `drug_allergies` longtext,
  PRIMARY KEY (`aadhaar_num`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table hie_db.medical_status: 1 rows
DELETE FROM `medical_status`;
/*!40000 ALTER TABLE `medical_status` DISABLE KEYS */;
INSERT INTO `medical_status` (`aadhaar_num`, `height`, `weight`, `pulse`, `bp_mm`, `bp_hg`, `habits_cigarette`, `tobacco_snuff`, `alcohol`, `diabetes`, `cardiac_diseases`, `endrocrine_others`, `eplepsy`, `cancer`, `medical`, `surgical`, `present_medications`, `drug_allergies`) VALUES
	('821504288186', '0', '0', 0, 333, 333, 'Occasionally', 'Occasionally', 'Occasionally', 'No', 'No', 'No', 'No', 'No', 'asd', 'sda', 'asd', 'sd');
/*!40000 ALTER TABLE `medical_status` ENABLE KEYS */;

-- Dumping structure for table hie_db.otp_history
DROP TABLE IF EXISTS `otp_history`;
CREATE TABLE IF NOT EXISTS `otp_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aadhaar_num` varchar(45) NOT NULL,
  `otp` varchar(45) NOT NULL,
  `date_of_generation` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1 COMMENT='This table is using for store generate and store dummy otp ';

-- Dumping data for table hie_db.otp_history: 15 rows
DELETE FROM `otp_history`;
/*!40000 ALTER TABLE `otp_history` DISABLE KEYS */;
INSERT INTO `otp_history` (`id`, `aadhaar_num`, `otp`, `date_of_generation`) VALUES
	(1, '111122223333', '2851', '2019-07-31 22:48:21'),
	(2, '111122223334', '3432', '2019-07-31 22:45:39'),
	(3, '684107489589', '7172', '2019-07-31 22:45:46'),
	(4, '067318201127', '8569', '2019-07-31 22:45:51'),
	(5, '107909024793', '4849', '2019-07-31 22:45:55'),
	(6, '904511259779', '6512', '2019-07-31 22:46:14'),
	(7, '797079464231', '3647', '2019-07-31 22:46:19'),
	(8, '467269561688', '6619', '2019-09-06 11:16:48'),
	(9, '337590551318', '8519', '2019-07-31 22:48:29'),
	(10, '803283606472', '9244', '2019-07-31 22:48:33'),
	(11, '575424070074', '1544', '2019-07-31 22:48:37'),
	(12, '412620596040', '5798', '2019-07-31 22:48:41'),
	(13, '349110940796', '1511', '2019-09-05 22:53:12'),
	(14, '393371115804', '1800', '2019-09-05 23:10:25'),
	(15, '821504288186', '9379', '2019-10-04 11:33:27');
/*!40000 ALTER TABLE `otp_history` ENABLE KEYS */;

-- Dumping structure for table hie_db.user_auth
DROP TABLE IF EXISTS `user_auth`;
CREATE TABLE IF NOT EXISTS `user_auth` (
  `aadhaar_num` varchar(50) NOT NULL,
  `privilege` int(11) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  `session_start` datetime DEFAULT NULL,
  `session_id` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`aadhaar_num`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table hie_db.user_auth: 1 rows
DELETE FROM `user_auth`;
/*!40000 ALTER TABLE `user_auth` DISABLE KEYS */;
INSERT INTO `user_auth` (`aadhaar_num`, `privilege`, `role`, `session_start`, `session_id`) VALUES
	('821504288186', 1, 'administrator', NULL, NULL);
/*!40000 ALTER TABLE `user_auth` ENABLE KEYS */;

-- Dumping structure for table hie_db.user_details
DROP TABLE IF EXISTS `user_details`;
CREATE TABLE IF NOT EXISTS `user_details` (
  `aadhaar_num` varchar(50) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `middle_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `dob` datetime DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `primary_contact` varchar(50) DEFAULT NULL,
  `secondary_contact` varchar(50) DEFAULT NULL,
  `zip` varchar(50) DEFAULT NULL,
  `building` varchar(50) DEFAULT NULL,
  `street` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`aadhaar_num`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table hie_db.user_details: 1 rows
DELETE FROM `user_details`;
/*!40000 ALTER TABLE `user_details` DISABLE KEYS */;
INSERT INTO `user_details` (`aadhaar_num`, `first_name`, `middle_name`, `last_name`, `dob`, `gender`, `email`, `primary_contact`, `secondary_contact`, `zip`, `building`, `street`, `city`, `state`) VALUES
	('821504288186', 'KARTHIKA', '', 'syamjith', '1999-02-06 00:00:00', 'F', 'karthikasyamjith@live.in', '8423948023', '', '644564', 'asdasd', 'asd', 'asdasd', 'Madhya Pradesh');
/*!40000 ALTER TABLE `user_details` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
