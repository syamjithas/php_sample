-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.5.8-log - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for hie_db
DROP DATABASE IF EXISTS `hie_db`;
CREATE DATABASE IF NOT EXISTS `hie_db` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `hie_db`;

-- Dumping structure for table hie_db.aadhaar_dump
DROP TABLE IF EXISTS `aadhaar_dump`;
CREATE TABLE IF NOT EXISTS `aadhaar_dump` (
  `aadhaar_num` varchar(45) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table hie_db.aadhaar_dump: 426 rows
/*!40000 ALTER TABLE `aadhaar_dump` DISABLE KEYS */;
INSERT INTO `aadhaar_dump` (`aadhaar_num`) VALUES
	('111122223333'),
	('111122223334'),
	('684107489589'),
	('967536437294'),
	('107909024793'),
	('337590551318'),
	('364225712944'),
	('808356941499'),
	('949107599397'),
	('320467203222'),
	('755013248655'),
	('813664664340'),
	('803283606472'),
	('575424070074'),
	('467269561688'),
	('610075628953'),
	('648569490433'),
	('412620596040'),
	('117394539636'),
	('349110940796'),
	('393371115804'),
	('919522787369'),
	('417500620165'),
	('328934769452'),
	('392172017499'),
	('974055809875'),
	('693763027613'),
	('546647739174'),
	('651949643764'),
	('619805032033'),
	('143176259606'),
	('856466232665'),
	('852802415241'),
	('694613408944'),
	('914659829730'),
	('489458952554'),
	('703315304315'),
	('917788563219'),
	('131052591028'),
	('510663901931'),
	('160161767304'),
	('268817161460'),
	('863600536122'),
	('511551226965'),
	('966954557194'),
	('300119135808'),
	('599732038192'),
	('207135469845'),
	('692317987505'),
	('166681525452'),
	('756453695480'),
	('282223931776'),
	('141758603175'),
	('862121251283'),
	('885330477622'),
	('840288664996'),
	('545451922850'),
	('206393649993'),
	('395612512152'),
	('358881641513'),
	('607570701844'),
	('961208615415'),
	('983331002279'),
	('372629605580'),
	('215153003311'),
	('976677459642'),
	('237928319012'),
	('259609246868'),
	('584261308036'),
	('142478830313'),
	('959610258191'),
	('370614830749'),
	('974243409907'),
	('759372588022'),
	('874132741125'),
	('218670862930'),
	('840331668816'),
	('924020457942'),
	('573574913268'),
	('723475226874'),
	('320054223127'),
	('429845465747'),
	('189064690087'),
	('655787083931'),
	('711741380125'),
	('591345679565'),
	('821504288186'),
	('333484432970'),
	('202909331026'),
	('216401244715'),
	('461738972423'),
	('266414731989'),
	('946856773408'),
	('935039701811'),
	('834628219562'),
	('368022023111'),
	('336225487604'),
	('577061399423'),
	('876630565036'),
	('651968657646'),
	('629951623855'),
	('193852177070'),
	('836143780347'),
	('815473722122'),
	('839150507784'),
	('749331403290'),
	('229205523831'),
	('898033440018'),
	('802550659331'),
	('318653007334'),
	('185613089413'),
	('972106455799'),
	('303693041488'),
	('602145870776'),
	('988105895917'),
	('691813719171'),
	('160117846131'),
	('725148103875'),
	('145387011715'),
	('551490777685'),
	('321292884015'),
	('951992117755'),
	('796081967461'),
	('124433514777'),
	('233921702237'),
	('796307997588'),
	('279774911962'),
	('701461909992'),
	('210428283745'),
	('173067894925'),
	('480163460113'),
	('333948362929'),
	('229251465042'),
	('144412267156'),
	('738298086205'),
	('588569547597'),
	('727953510105'),
	('874058938467'),
	('186434192756'),
	('309994179112'),
	('990668348028'),
	('700020487140'),
	('144791154325'),
	('653878101756'),
	('835017076539'),
	('213451108162'),
	('562204341927'),
	('170668415884'),
	('166729084371'),
	('321640204937'),
	('108013802308'),
	('575148427463'),
	('551700761124'),
	('148492200438'),
	('510190517185'),
	('451776954766'),
	('728313253008'),
	('286235431475'),
	('246237429088'),
	('372480881747'),
	('123692152205'),
	('501018146519'),
	('134014306714'),
	('167017124748'),
	('433042734333'),
	('664162328153'),
	('680813515261'),
	('115930388789'),
	('514601569170'),
	('225216710218'),
	('582278874313'),
	('235744271646'),
	('431884766027'),
	('452191045928'),
	('965300962296'),
	('469931704429'),
	('453755665993'),
	('858983247409'),
	('933649269802'),
	('418525135534'),
	('655535408906'),
	('137270731047'),
	('250286630587'),
	('769703405694'),
	('721361793318'),
	('323476004715'),
	('453294674356'),
	('296045388370'),
	('120342949517'),
	('713578613208'),
	('206864248222'),
	('893585432221'),
	('847334447174'),
	('555915969941'),
	('237576538918'),
	('520134815499'),
	('887944491475'),
	('879318041614'),
	('732756764379'),
	('586413625242'),
	('930878376523'),
	('576902729996'),
	('387454917083'),
	('728684596464'),
	('367787359624'),
	('652883039464'),
	('161053149179'),
	('846616658239'),
	('749923874391'),
	('209769427971'),
	('799075547418'),
	('366069483911'),
	('433120808036'),
	('116953663636'),
	('985891685807'),
	('816611352205'),
	('125381734338'),
	('177074645810'),
	('509228056770'),
	('403967362273'),
	('546897746200'),
	('689739630268'),
	('808004943475'),
	('970805857303'),
	('430014486825'),
	('237654892949'),
	('898231035003'),
	('778190526904'),
	('196259560246'),
	('646726251250'),
	('644852606248'),
	('284084308225'),
	('485863753115'),
	('577065871634'),
	('427738129559'),
	('407493063628'),
	('754250960195'),
	('548775640827'),
	('481125354283'),
	('759299879669'),
	('353123366230'),
	('487717222876'),
	('379216046425'),
	('432928594232'),
	('651355232718'),
	('836188561130'),
	('284269610684'),
	('991225589989'),
	('656253235094'),
	('307589436236'),
	('569187506632'),
	('923169255185'),
	('908283786762'),
	('771911198992'),
	('134704665406'),
	('357789760788'),
	('384834838458'),
	('850804940658'),
	('923330950479'),
	('945186302014'),
	('427370884853'),
	('301295548958'),
	('224365120962'),
	('217938988672'),
	('416599611208'),
	('429181120758'),
	('896106800899'),
	('192990672954'),
	('276632992808'),
	('804192975912'),
	('191065931870'),
	('542750762349'),
	('140556046870'),
	('777461724148'),
	('950971780299'),
	('531274998124'),
	('803459680456'),
	('423473438642'),
	('706988182577'),
	('264520627692'),
	('201638621465'),
	('214631254984'),
	('468240441259'),
	('697308472075'),
	('321325900332'),
	('317179951180'),
	('340436584633'),
	('750643100357'),
	('731905778620'),
	('407599622763'),
	('842280808689'),
	('988605205890'),
	('416183634117'),
	('115102583649'),
	('326962046629'),
	('289502512933'),
	('466626455510'),
	('464624769487'),
	('923244511637'),
	('222348280458'),
	('342007898112'),
	('943055936082'),
	('188949736011'),
	('815764671019'),
	('511974177800'),
	('112576906674'),
	('131317936937'),
	('797079464231'),
	('904511259779'),
	('518973356596'),
	('341917231066'),
	('152666116275'),
	('737578918912'),
	('229896276472'),
	('936744656354'),
	('994034483091'),
	('159938477128'),
	('817588967101'),
	('608129434853'),
	('587880303699'),
	('115013244668'),
	('811425342980'),
	('712087011627'),
	('126159059932'),
	('494534295512'),
	('987368786695'),
	('654260978712'),
	('309198564206'),
	('583209915629'),
	('988453916263'),
	('192639865160'),
	('997837607746'),
	('411268473985'),
	('213223777909'),
	('825091432617'),
	('485785860089'),
	('953655033329'),
	('310917617111'),
	('693623016303'),
	('535362260914'),
	('595942286398'),
	('373624679980'),
	('280608847998'),
	('162154556403'),
	('968946268753'),
	('358267705289'),
	('884499750923'),
	('347695669483'),
	('381808649172'),
	('654105900464'),
	('125103585538'),
	('663200257032'),
	('940690559279'),
	('713852056035'),
	('747188633072'),
	('594387027988'),
	('730369271459'),
	('868685304064'),
	('152318736680'),
	('155537801939'),
	('320732830391'),
	('137050776870'),
	('723055423910'),
	('204124819677'),
	('851457857388'),
	('644914858643'),
	('670200751787'),
	('416259213738'),
	('104691609837'),
	('311376547730'),
	('242807939874'),
	('279910086914'),
	('671126645683'),
	('515902998406'),
	('566135085715'),
	('282966464090'),
	('716427094038'),
	('733236108658'),
	('516899291907'),
	('384788164295'),
	('373242976491'),
	('711850420303'),
	('439523202776'),
	('991754340931'),
	('772577384274'),
	('887623929313'),
	('120387524478'),
	('939065865184'),
	('334166783219'),
	('853636351277'),
	('265681437464'),
	('767498164221'),
	('899738235305'),
	('377351588921'),
	('187543269421'),
	('805661611077'),
	('465678277859'),
	('911406586795'),
	('159998131133'),
	('848860267408'),
	('688362177171'),
	('300845147390'),
	('439139236173'),
	('293160769430'),
	('148386169363'),
	('862448569259'),
	('867084368939'),
	('748076167654'),
	('139127762186'),
	('451410338702'),
	('839668437689'),
	('844111203070'),
	('701550733020'),
	('975420086621'),
	('772448264781'),
	('935981094777'),
	('362560710276'),
	('936619388811'),
	('668516081449'),
	('532722271543'),
	('658063144104'),
	('692148936625'),
	('486555281548'),
	('356329628598'),
	('321982329079'),
	('540922790338');
/*!40000 ALTER TABLE `aadhaar_dump` ENABLE KEYS */;

-- Dumping structure for table hie_db.alert
DROP TABLE IF EXISTS `alert`;
CREATE TABLE IF NOT EXISTS `alert` (
  `alert_id` int(11) DEFAULT NULL,
  `heading` varchar(50) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `affected_cases` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table hie_db.alert: ~0 rows (approximately)
/*!40000 ALTER TABLE `alert` DISABLE KEYS */;
/*!40000 ALTER TABLE `alert` ENABLE KEYS */;

-- Dumping structure for table hie_db.death_report
DROP TABLE IF EXISTS `death_report`;
CREATE TABLE IF NOT EXISTS `death_report` (
  `aadhaar_num` varchar(50) DEFAULT NULL,
  `briefed_by` varchar(50) DEFAULT NULL,
  `terms_of_reference` varchar(50) DEFAULT NULL,
  `last_seen_alive` datetime DEFAULT NULL,
  `history` text,
  `condition_of_body` text,
  `verification_of_death` varchar(50) DEFAULT NULL,
  `absence_of_carotid_pulse` int(11) DEFAULT NULL,
  `absence_of_heart_sounds` int(11) DEFAULT NULL,
  `absence_of_respiratory` int(11) DEFAULT NULL,
  `fixed_dilated_pupils` int(11) DEFAULT NULL,
  `presence_of_hypostasis` int(11) DEFAULT NULL,
  `presence_of_rigor_mortis` int(11) DEFAULT NULL,
  `can_death_be_verified` int(11) DEFAULT NULL,
  `time` timestamp NULL DEFAULT NULL,
  `suspicious_circumstances` int(11) DEFAULT NULL,
  `further_action_needed` int(11) DEFAULT NULL,
  `details` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table hie_db.death_report: ~1 rows (approximately)
/*!40000 ALTER TABLE `death_report` DISABLE KEYS */;
INSERT INTO `death_report` (`aadhaar_num`, `briefed_by`, `terms_of_reference`, `last_seen_alive`, `history`, `condition_of_body`, `verification_of_death`, `absence_of_carotid_pulse`, `absence_of_heart_sounds`, `absence_of_respiratory`, `fixed_dilated_pupils`, `presence_of_hypostasis`, `presence_of_rigor_mortis`, `can_death_be_verified`, `time`, `suspicious_circumstances`, `further_action_needed`, `details`) VALUES
	('393371115804', '3', '1', '0000-00-00 00:00:00', 'asdasdas', 'asdasdasasdasd', 'asdasdasdasd', 0, 0, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 'asdasdas');
/*!40000 ALTER TABLE `death_report` ENABLE KEYS */;

-- Dumping structure for table hie_db.documents
DROP TABLE IF EXISTS `documents`;
CREATE TABLE IF NOT EXISTS `documents` (
  `document_id` int(11) NOT NULL AUTO_INCREMENT,
  `data` longtext,
  PRIMARY KEY (`document_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table hie_db.documents: ~0 rows (approximately)
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents` ENABLE KEYS */;

-- Dumping structure for table hie_db.general_history
DROP TABLE IF EXISTS `general_history`;
CREATE TABLE IF NOT EXISTS `general_history` (
  `aadhaar_num` varchar(50) NOT NULL,
  `marital_status` varchar(50) DEFAULT 'NA',
  `no_of_children` varchar(50) DEFAULT 'NA',
  `habits_cigarette` varchar(50) DEFAULT 'NA',
  `tobacco_snuff` varchar(50) DEFAULT 'NA',
  `alcohol` varchar(50) DEFAULT 'NA',
  `diabetes` varchar(50) DEFAULT 'NA',
  `cardiac_diseases` varchar(50) DEFAULT 'NA',
  `endrocrine_others` varchar(50) DEFAULT 'NA',
  `eplepsy` varchar(50) DEFAULT 'NA',
  `cancer` varchar(50) DEFAULT 'NA',
  `medical` text,
  `surgical` text,
  `present_medications` text,
  `drug_allergies` text,
  PRIMARY KEY (`aadhaar_num`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table hie_db.general_history: 3 rows
/*!40000 ALTER TABLE `general_history` DISABLE KEYS */;
INSERT INTO `general_history` (`aadhaar_num`, `marital_status`, `no_of_children`, `habits_cigarette`, `tobacco_snuff`, `alcohol`, `diabetes`, `cardiac_diseases`, `endrocrine_others`, `eplepsy`, `cancer`, `medical`, `surgical`, `present_medications`, `drug_allergies`) VALUES
	('821504288186', 'Single', '0', 'Occasionally', 'Occasionally', 'Occasionally', 'No', 'No', 'No', 'No', 'No', 'Saint Francis Receiving the Stigmata is the subject of two unsigned paintings, nearly identical except for their size, that were both completed around 1430. Art historians usually attribute them to the Flemish artist Jan van Eyck. The larger panel measures 29.3 cm Ã— 33.4 cm (11.5 in Ã— 13.1 in) and is in the Sabauda Gallery in Turin, Italy; the smaller panel is 12.7 cm Ã— 14.6 cm (5.0 in Ã— 5.7 in) and is in the Philadelphia Museum of Art. The paintings show Saint Francis of Assisi kneeling in front of detailed rock formations as he receives the stigmata of the crucified Christ on the palms of his hands and soles of his feet. A panoramic landscape seems to relegate the figures in the foreground to secondary importance. The Philadelphia wood panel comes from the same tree as that of two paintings definitively attributed to van Eyck, and the Italian panel has underdrawings of a quality that probably could only have come from him. Today the consensus is that both were painted by the same hand', 'Life is a characteristic that distinguishes physical entities that have biological processes, such as signaling and self-sustaining processes, from those that do not, either because such functions have ceased (they have died), or because they never had such functions and are classified as inanimate. Various forms of life exist, such as plants, animals, fungi, protists, archaea, and bacteria. The criteria can at times be ambiguous and may or may not define viruses, viroids, or potential synthetic life as "living". Biology is the science concerned with the study of life.\r\n\r\nThere is currently no consensus regarding the definition of life. One popular definition is that organisms are open systems that maintain homeostasis, are composed of cells, have a life cycle, undergo metabolism, can grow, adapt to their environment, respond to stimuli, reproduce and evolve. However, several other definitions have been proposed, and there are some borderline cases of life, such as viruses or viroids.\r\n\r\nAbiogenesis is the natural process of life arising from non-living matter, such as simple organic compounds. The prevailing scientific hypothesis is that the transition from non-living to living entities was not a single event, but a gradual process of increasing complexity. Life on Earth first appeared as early as 4.28 billion years ago, soon after ocean formation 4.41 billion years ago, and not long after the formation of the Earth 4.54 billion years ago.[1][2][3][4] The earliest known life forms are microfossils of bacteria.[5][6] Researchers generally think that current life on Earth descends from an RNA world,[7] although RNA-based life may not have been the first life to have existed.[8][9] The classic 1952 Millerâ€“Urey experiment and similar research demonstrated that most amino acids, the chemical constituents of the proteins used in all living organisms, can be synthesized from inorganic compounds under conditions intended to replicate those of the early Earth. Complex organic molecules occur in the Solar System and in interstellar space, and these molecules may have provided starting material for the development of life on Earth.[10][11][12][13]\r\n\r\nSince its primordial beginnings, life on Earth has changed its environment on a geologic time scale, but it has also adapted to survive in most ecosystems and conditions. Some microorganisms, called extremophiles, thrive in physically or geochemically extreme environments that are detrimental to most other life on Earth. The cell is considered the structural and functional unit of life.[14] There are two kinds of cells, prokaryotic and eukaryotic, both of which consist of cytoplasm enclosed within a membrane and contain many biomolecules such as proteins and nucleic acids. Cells reproduce through a process of cell division, in which the parent cell divides into two or more daughter cells.', 'Life is a characteristic that distinguishes physical entities that have biological processes, such as signaling and self-sustaining processes, from those that do not, either because such functions have ceased (they have died), or because they never had such functions and are classified as inanimate. Various forms of life exist, such as plants, animals, fungi, protists, archaea, and bacteria. The criteria can at times be ambiguous and may or may not define viruses, viroids, or potential synthetic life as "living". Biology is the science concerned with the study of life.\r\n\r\nThere is currently no consensus regarding the definition of life. One popular definition is that organisms are open systems that maintain homeostasis, are composed of cells, have a life cycle, undergo metabolism, can grow, adapt to their environment, respond to stimuli, reproduce and evolve. However, several other definitions have been proposed, and there are some borderline cases of life, such as viruses or viroids.\r\n\r\nAbiogenesis is the natural process of life arising from non-living matter, such as simple organic compounds. The prevailing scientific hypothesis is that the transition from non-living to living entities was not a single event, but a gradual process of increasing complexity. Life on Earth first appeared as early as 4.28 billion years ago, soon after ocean formation 4.41 billion years ago, and not long after the formation of the Earth 4.54 billion years ago.[1][2][3][4] The earliest known life forms are microfossils of bacteria.[5][6] Researchers generally think that current life on Earth descends from an RNA world,[7] although RNA-based life may not have been the first life to have existed.[8][9] The classic 1952 Millerâ€“Urey experiment and similar research demonstrated that most amino acids, the chemical constituents of the proteins used in all living organisms, can be synthesized from inorganic compounds under conditions intended to replicate those of the early Earth. Complex organic molecules occur in the Solar System and in interstellar space, and these molecules may have provided starting material for the development of life on Earth.[10][11][12][13]\r\n\r\nSince its primordial beginnings, life on Earth has changed its environment on a geologic time scale, but it has also adapted to survive in most ecosystems and conditions. Some microorganisms, called extremophiles, thrive in physically or geochemically extreme environments that are detrimental to most other life on Earth. The cell is considered the structural and functional unit of life.[14] There are two kinds of cells, prokaryotic and eukaryotic, both of which consist of cytoplasm enclosed within a membrane and contain many biomolecules such as proteins and nucleic acids. Cells reproduce through a process of cell division, in which the parent cell divides into two or more daughter cells.', 'Life is a characteristic that distinguishes physical entities that have biological processes, such as signaling and self-sustaining processes, from those that do not, either because such functions have ceased (they have died), or because they never had such functions and are classified as inanimate. Various forms of life exist, such as plants, animals, fungi, protists, archaea, and bacteria. The criteria can at times be ambiguous and may or may not define viruses, viroids, or potential synthetic life as "living". Biology is the science concerned with the study of life.\r\n\r\nThere is currently no consensus regarding the definition of life. One popular definition is that organisms are open systems that maintain homeostasis, are composed of cells, have a life cycle, undergo metabolism, can grow, adapt to their environment, respond to stimuli, reproduce and evolve. However, several other definitions have been proposed, and there are some borderline cases of life, such as viruses or viroids.\r\n\r\nAbiogenesis is the natural process of life arising from non-living matter, such as simple organic compounds. The prevailing scientific hypothesis is that the transition from non-living to living entities was not a single event, but a gradual process of increasing complexity. Life on Earth first appeared as early as 4.28 billion years ago, soon after ocean formation 4.41 billion years ago, and not long after the formation of the Earth 4.54 billion years ago.[1][2][3][4] The earliest known life forms are microfossils of bacteria.[5][6] Researchers generally think that current life on Earth descends from an RNA world,[7] although RNA-based life may not have been the first life to have existed.[8][9] The classic 1952 Millerâ€“Urey experiment and similar research demonstrated that most amino acids, the chemical constituents of the proteins used in all living organisms, can be synthesized from inorganic compounds under conditions intended to replicate those of the early Earth. Complex organic molecules occur in the Solar System and in interstellar space, and these molecules may have provided starting material for the development of life on Earth.[10][11][12][13]\r\n\r\nSince its primordial beginnings, life on Earth has changed its environment on a geologic time scale, but it has also adapted to survive in most ecosystems and conditions. Some microorganisms, called extremophiles, thrive in physically or geochemically extreme environments that are detrimental to most other life on Earth. The cell is considered the structural and functional unit of life.[14] There are two kinds of cells, prokaryotic and eukaryotic, both of which consist of cytoplasm enclosed within a membrane and contain many biomolecules such as proteins and nucleic acids. Cells reproduce through a process of cell division, in which the parent cell divides into two or more daughter cells.'),
	('467269561688', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', NULL, NULL, NULL, NULL),
	('', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
/*!40000 ALTER TABLE `general_history` ENABLE KEYS */;

-- Dumping structure for table hie_db.medical_status
DROP TABLE IF EXISTS `medical_status`;
CREATE TABLE IF NOT EXISTS `medical_status` (
  `medical_status_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `aadhaar_num` varchar(50) NOT NULL,
  `height` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `marital_status` varchar(50) DEFAULT NULL,
  `no_of_children` varchar(50) DEFAULT NULL,
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
  `alive` varchar(50) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_role` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  PRIMARY KEY (`medical_status_id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

-- Dumping data for table hie_db.medical_status: 24 rows
/*!40000 ALTER TABLE `medical_status` DISABLE KEYS */;
INSERT INTO `medical_status` (`medical_status_id`, `aadhaar_num`, `height`, `weight`, `marital_status`, `no_of_children`, `pulse`, `bp_mm`, `bp_hg`, `habits_cigarette`, `tobacco_snuff`, `alcohol`, `diabetes`, `cardiac_diseases`, `endrocrine_others`, `eplepsy`, `cancer`, `medical`, `surgical`, `present_medications`, `drug_allergies`, `alive`, `created_date`, `updated_date`, `updated_by`, `updated_role`, `status`, `latitude`, `longitude`) VALUES
	(1, '821504288186', 0, 0, 'Married', '2', 0, 100, 100, 'Occasionally', 'Occasionally', 'Occasionally', 'No', 'No', 'No', 'No', 'No', 'Continuous fever: Temperature remains above normal throughout the day and does not fluctuate more than 1 °C in 24 hours, e.g. lobar pneumonia, typhoid, meningitis, urinary tract infection, or typhus. Typhoid fever may show a specific fever pattern (Wunderlich curve of typhoid fever), with a slow stepwise increase and a high plateau', 'Saint Francis Receiving the Stigmata is the subject of two unsigned paintings, nearly identical except for their size, that were both completed around 1430. Art historians usually attribute them to the Flemish artist Jan van Eyck. The larger panel measures 29.3 cm Ã— 33.4 cm (11.5 in Ã— 13.1 in) and is in the Sabauda Gallery in Turin, Italy; the smaller panel is 12.7 cm Ã— 14.6 cm (5.0 in Ã— 5.7 in) and is in the Philadelphia Museum of Art. The paintings show Saint Francis of Assisi kneeling in front of detailed rock formations as he receives the stigmata of the crucified Christ on the palms of his hands and soles of his feet. A panoramic landscape seems to relegate the figures in the foreground to secondary importance. The Philadelphia wood panel comes from the same tree as that of two paintings definitively attributed to van Eyck, and the Italian panel has underdrawings of a quality that probably could only have come from him. Today the consensus is that both were painted by the same hand', 'Saint Francis Receiving the Stigmata is the subject of two unsigned paintings, nearly identical except for their size, that were both completed around 1430. Art historians usually attribute them to the Flemish artist Jan van Eyck. The larger panel measures 29.3 cm Ã— 33.4 cm (11.5 in Ã— 13.1 in) and is in the Sabauda Gallery in Turin, Italy; the smaller panel is 12.7 cm Ã— 14.6 cm (5.0 in Ã— 5.7 in) and is in the Philadelphia Museum of Art. The paintings show Saint Francis of Assisi kneeling in front of detailed rock formations as he receives the stigmata of the crucified Christ on the palms of his hands and soles of his feet. A panoramic landscape seems to relegate the figures in the foreground to secondary importance. The Philadelphia wood panel comes from the same tree as that of two paintings definitively attributed to van Eyck, and the Italian panel has underdrawings of a quality that probably could only have come from him. Today the consensus is that both were painted by the same hand', 'Saint Francis Receiving the Stigmata is the subject of two unsigned paintings, nearly identical except for their size, that were both completed around 1430. Art historians usually attribute them to the Flemish artist Jan van Eyck. The larger panel measures 29.3 cm Ã— 33.4 cm (11.5 in Ã— 13.1 in) and is in the Sabauda Gallery in Turin, Italy; the smaller panel is 12.7 cm Ã— 14.6 cm (5.0 in Ã— 5.7 in) and is in the Philadelphia Museum of Art. The paintings show Saint Francis of Assisi kneeling in front of detailed rock formations as he receives the stigmata of the crucified Christ on the palms of his hands and soles of his feet. A panoramic landscape seems to relegate the figures in the foreground to secondary importance. The Philadelphia wood panel comes from the same tree as that of two paintings definitively attributed to van Eyck, and the Italian panel has underdrawings of a quality that probably could only have come from him. Today the consensus is that both were painted by the same hand', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(2, '821504288186', 0, 0, 'Married', '2', 0, 100, 100, 'Occasionally', 'Occasionally', 'Occasionally', 'No', 'No', 'No', 'No', 'No', 'Feeling Good', 'Saint Francis Receiving the Stigmata is the subject of two unsigned paintings, nearly identical except for their size, that were both completed around 1430. Art historians usually attribute them to the Flemish artist Jan van Eyck. The larger panel measures 29.3 cm Ã— 33.4 cm (11.5 in Ã— 13.1 in) and is in the Sabauda Gallery in Turin, Italy; the smaller panel is 12.7 cm Ã— 14.6 cm (5.0 in Ã— 5.7 in) and is in the Philadelphia Museum of Art. The paintings show Saint Francis of Assisi kneeling in front of detailed rock formations as he receives the stigmata of the crucified Christ on the palms of his hands and soles of his feet. A panoramic landscape seems to relegate the figures in the foreground to secondary importance. The Philadelphia wood panel comes from the same tree as that of two paintings definitively attributed to van Eyck, and the Italian panel has underdrawings of a quality that probably could only have come from him. Today the consensus is that both were painted by the same hand', 'Saint Francis Receiving the Stigmata is the subject of two unsigned paintings, nearly identical except for their size, that were both completed around 1430. Art historians usually attribute them to the Flemish artist Jan van Eyck. The larger panel measures 29.3 cm Ã— 33.4 cm (11.5 in Ã— 13.1 in) and is in the Sabauda Gallery in Turin, Italy; the smaller panel is 12.7 cm Ã— 14.6 cm (5.0 in Ã— 5.7 in) and is in the Philadelphia Museum of Art. The paintings show Saint Francis of Assisi kneeling in front of detailed rock formations as he receives the stigmata of the crucified Christ on the palms of his hands and soles of his feet. A panoramic landscape seems to relegate the figures in the foreground to secondary importance. The Philadelphia wood panel comes from the same tree as that of two paintings definitively attributed to van Eyck, and the Italian panel has underdrawings of a quality that probably could only have come from him. Today the consensus is that both were painted by the same hand', 'Saint Francis Receiving the Stigmata is the subject of two unsigned paintings, nearly identical except for their size, that were both completed around 1430. Art historians usually attribute them to the Flemish artist Jan van Eyck. The larger panel measures 29.3 cm Ã— 33.4 cm (11.5 in Ã— 13.1 in) and is in the Sabauda Gallery in Turin, Italy; the smaller panel is 12.7 cm Ã— 14.6 cm (5.0 in Ã— 5.7 in) and is in the Philadelphia Museum of Art. The paintings show Saint Francis of Assisi kneeling in front of detailed rock formations as he receives the stigmata of the crucified Christ on the palms of his hands and soles of his feet. A panoramic landscape seems to relegate the figures in the foreground to secondary importance. The Philadelphia wood panel comes from the same tree as that of two paintings definitively attributed to van Eyck, and the Italian panel has underdrawings of a quality that probably could only have come from him. Today the consensus is that both were painted by the same hand', 'Yes', '2019-11-10 22:44:52', '2019-11-10 22:44:52', NULL, NULL, NULL, 25.2559544, 55.303301399999995),
	(3, '821504288186', 0, 0, 'Married', '2', 0, 100, 100, 'Occasionally', 'Occasionally', 'Occasionally', 'No', 'No', 'No', 'No', 'No', 'A pyrogen is a substance that induces fever. These can be either internal (endogenous) or external (exogenous) to the body. The bacterial substance lipopolysaccharide (LPS), present in the cell wall of gram-negative bacteria,[46] is an example of an exogenous pyrogen. Pyrogenicity can vary: In extreme examples, some bacterial pyrogens known as superantigens can cause rapid and dangerous fevers. Depyrogenation may be achieved through filtration, distillation, chromatography, or inactivation.', 'Saint Francis Receiving the Stigmata is the subject of two unsigned paintings, nearly identical except for their size, that were both completed around 1430. Art historians usually attribute them to the Flemish artist Jan van Eyck. The larger panel measures 29.3 cm Ã— 33.4 cm (11.5 in Ã— 13.1 in) and is in the Sabauda Gallery in Turin, Italy; the smaller panel is 12.7 cm Ã— 14.6 cm (5.0 in Ã— 5.7 in) and is in the Philadelphia Museum of Art. The paintings show Saint Francis of Assisi kneeling in front of detailed rock formations as he receives the stigmata of the crucified Christ on the palms of his hands and soles of his feet. A panoramic landscape seems to relegate the figures in the foreground to secondary importance. The Philadelphia wood panel comes from the same tree as that of two paintings definitively attributed to van Eyck, and the Italian panel has underdrawings of a quality that probably could only have come from him. Today the consensus is that both were painted by the same hand', 'Saint Francis Receiving the Stigmata is the subject of two unsigned paintings, nearly identical except for their size, that were both completed around 1430. Art historians usually attribute them to the Flemish artist Jan van Eyck. The larger panel measures 29.3 cm Ã— 33.4 cm (11.5 in Ã— 13.1 in) and is in the Sabauda Gallery in Turin, Italy; the smaller panel is 12.7 cm Ã— 14.6 cm (5.0 in Ã— 5.7 in) and is in the Philadelphia Museum of Art. The paintings show Saint Francis of Assisi kneeling in front of detailed rock formations as he receives the stigmata of the crucified Christ on the palms of his hands and soles of his feet. A panoramic landscape seems to relegate the figures in the foreground to secondary importance. The Philadelphia wood panel comes from the same tree as that of two paintings definitively attributed to van Eyck, and the Italian panel has underdrawings of a quality that probably could only have come from him. Today the consensus is that both were painted by the same hand', 'Saint Francis Receiving the Stigmata is the subject of two unsigned paintings, nearly identical except for their size, that were both completed around 1430. Art historians usually attribute them to the Flemish artist Jan van Eyck. The larger panel measures 29.3 cm Ã— 33.4 cm (11.5 in Ã— 13.1 in) and is in the Sabauda Gallery in Turin, Italy; the smaller panel is 12.7 cm Ã— 14.6 cm (5.0 in Ã— 5.7 in) and is in the Philadelphia Museum of Art. The paintings show Saint Francis of Assisi kneeling in front of detailed rock formations as he receives the stigmata of the crucified Christ on the palms of his hands and soles of his feet. A panoramic landscape seems to relegate the figures in the foreground to secondary importance. The Philadelphia wood panel comes from the same tree as that of two paintings definitively attributed to van Eyck, and the Italian panel has underdrawings of a quality that probably could only have come from him. Today the consensus is that both were painted by the same hand', 'Yes', '2019-11-10 22:45:08', '2019-11-10 22:45:08', NULL, NULL, NULL, 25.2559544, 55.303301399999995),
	(4, '821504288186', 0, 0, 'Married', '2', 0, 100, 100, 'Occasionally', 'Occasionally', 'Occasionally', 'No', 'No', 'No', 'No', 'No', 'Feeling Good', 'Saint Francis Receiving the Stigmata is the subject of two unsigned paintings, nearly identical except for their size, that were both completed around 1430. Art historians usually attribute them to the Flemish artist Jan van Eyck. The larger panel measures 29.3 cm Ã— 33.4 cm (11.5 in Ã— 13.1 in) and is in the Sabauda Gallery in Turin, Italy; the smaller panel is 12.7 cm Ã— 14.6 cm (5.0 in Ã— 5.7 in) and is in the Philadelphia Museum of Art. The paintings show Saint Francis of Assisi kneeling in front of detailed rock formations as he receives the stigmata of the crucified Christ on the palms of his hands and soles of his feet. A panoramic landscape seems to relegate the figures in the foreground to secondary importance. The Philadelphia wood panel comes from the same tree as that of two paintings definitively attributed to van Eyck, and the Italian panel has underdrawings of a quality that probably could only have come from him. Today the consensus is that both were painted by the same hand', 'Saint Francis Receiving the Stigmata is the subject of two unsigned paintings, nearly identical except for their size, that were both completed around 1430. Art historians usually attribute them to the Flemish artist Jan van Eyck. The larger panel measures 29.3 cm Ã— 33.4 cm (11.5 in Ã— 13.1 in) and is in the Sabauda Gallery in Turin, Italy; the smaller panel is 12.7 cm Ã— 14.6 cm (5.0 in Ã— 5.7 in) and is in the Philadelphia Museum of Art. The paintings show Saint Francis of Assisi kneeling in front of detailed rock formations as he receives the stigmata of the crucified Christ on the palms of his hands and soles of his feet. A panoramic landscape seems to relegate the figures in the foreground to secondary importance. The Philadelphia wood panel comes from the same tree as that of two paintings definitively attributed to van Eyck, and the Italian panel has underdrawings of a quality that probably could only have come from him. Today the consensus is that both were painted by the same hand', 'Saint Francis Receiving the Stigmata is the subject of two unsigned paintings, nearly identical except for their size, that were both completed around 1430. Art historians usually attribute them to the Flemish artist Jan van Eyck. The larger panel measures 29.3 cm Ã— 33.4 cm (11.5 in Ã— 13.1 in) and is in the Sabauda Gallery in Turin, Italy; the smaller panel is 12.7 cm Ã— 14.6 cm (5.0 in Ã— 5.7 in) and is in the Philadelphia Museum of Art. The paintings show Saint Francis of Assisi kneeling in front of detailed rock formations as he receives the stigmata of the crucified Christ on the palms of his hands and soles of his feet. A panoramic landscape seems to relegate the figures in the foreground to secondary importance. The Philadelphia wood panel comes from the same tree as that of two paintings definitively attributed to van Eyck, and the Italian panel has underdrawings of a quality that probably could only have come from him. Today the consensus is that both were painted by the same hand', 'Yes', '2019-11-10 23:10:57', '2019-11-10 23:10:57', NULL, NULL, NULL, 25.2559544, 55.303301399999995),
	(5, '821504288186', 0, 0, 'Married', '2', 0, 100, 100, 'Occasionally', 'Occasionally', 'Occasionally', 'No', 'No', 'No', 'No', 'No', 'Feeling Good', 'Saint Francis Receiving the Stigmata is the subject of two unsigned paintings, nearly identical except for their size, that were both completed around 1430. Art historians usually attribute them to the Flemish artist Jan van Eyck. The larger panel measures 29.3 cm Ã— 33.4 cm (11.5 in Ã— 13.1 in) and is in the Sabauda Gallery in Turin, Italy; the smaller panel is 12.7 cm Ã— 14.6 cm (5.0 in Ã— 5.7 in) and is in the Philadelphia Museum of Art. The paintings show Saint Francis of Assisi kneeling in front of detailed rock formations as he receives the stigmata of the crucified Christ on the palms of his hands and soles of his feet. A panoramic landscape seems to relegate the figures in the foreground to secondary importance. The Philadelphia wood panel comes from the same tree as that of two paintings definitively attributed to van Eyck, and the Italian panel has underdrawings of a quality that probably could only have come from him. Today the consensus is that both were painted by the same hand', 'Saint Francis Receiving the Stigmata is the subject of two unsigned paintings, nearly identical except for their size, that were both completed around 1430. Art historians usually attribute them to the Flemish artist Jan van Eyck. The larger panel measures 29.3 cm Ã— 33.4 cm (11.5 in Ã— 13.1 in) and is in the Sabauda Gallery in Turin, Italy; the smaller panel is 12.7 cm Ã— 14.6 cm (5.0 in Ã— 5.7 in) and is in the Philadelphia Museum of Art. The paintings show Saint Francis of Assisi kneeling in front of detailed rock formations as he receives the stigmata of the crucified Christ on the palms of his hands and soles of his feet. A panoramic landscape seems to relegate the figures in the foreground to secondary importance. The Philadelphia wood panel comes from the same tree as that of two paintings definitively attributed to van Eyck, and the Italian panel has underdrawings of a quality that probably could only have come from him. Today the consensus is that both were painted by the same hand', 'Saint Francis Receiving the Stigmata is the subject of two unsigned paintings, nearly identical except for their size, that were both completed around 1430. Art historians usually attribute them to the Flemish artist Jan van Eyck. The larger panel measures 29.3 cm Ã— 33.4 cm (11.5 in Ã— 13.1 in) and is in the Sabauda Gallery in Turin, Italy; the smaller panel is 12.7 cm Ã— 14.6 cm (5.0 in Ã— 5.7 in) and is in the Philadelphia Museum of Art. The paintings show Saint Francis of Assisi kneeling in front of detailed rock formations as he receives the stigmata of the crucified Christ on the palms of his hands and soles of his feet. A panoramic landscape seems to relegate the figures in the foreground to secondary importance. The Philadelphia wood panel comes from the same tree as that of two paintings definitively attributed to van Eyck, and the Italian panel has underdrawings of a quality that probably could only have come from him. Today the consensus is that both were painted by the same hand', 'Yes', '2019-11-10 23:11:00', '2019-11-10 23:11:00', NULL, NULL, NULL, 25.2559544, 55.303301399999995),
	(6, '821504288186', 0, 0, 'Married', '2', 0, 100, 100, 'Occasionally', 'Occasionally', 'Occasionally', 'No', 'No', 'No', 'No', 'No', 'Feeling Good', 'Saint Francis Receiving the Stigmata is the subject of two unsigned paintings, nearly identical except for their size, that were both completed around 1430. Art historians usually attribute them to the Flemish artist Jan van Eyck. The larger panel measures 29.3 cm Ã— 33.4 cm (11.5 in Ã— 13.1 in) and is in the Sabauda Gallery in Turin, Italy; the smaller panel is 12.7 cm Ã— 14.6 cm (5.0 in Ã— 5.7 in) and is in the Philadelphia Museum of Art. The paintings show Saint Francis of Assisi kneeling in front of detailed rock formations as he receives the stigmata of the crucified Christ on the palms of his hands and soles of his feet. A panoramic landscape seems to relegate the figures in the foreground to secondary importance. The Philadelphia wood panel comes from the same tree as that of two paintings definitively attributed to van Eyck, and the Italian panel has underdrawings of a quality that probably could only have come from him. Today the consensus is that both were painted by the same hand', 'Saint Francis Receiving the Stigmata is the subject of two unsigned paintings, nearly identical except for their size, that were both completed around 1430. Art historians usually attribute them to the Flemish artist Jan van Eyck. The larger panel measures 29.3 cm Ã— 33.4 cm (11.5 in Ã— 13.1 in) and is in the Sabauda Gallery in Turin, Italy; the smaller panel is 12.7 cm Ã— 14.6 cm (5.0 in Ã— 5.7 in) and is in the Philadelphia Museum of Art. The paintings show Saint Francis of Assisi kneeling in front of detailed rock formations as he receives the stigmata of the crucified Christ on the palms of his hands and soles of his feet. A panoramic landscape seems to relegate the figures in the foreground to secondary importance. The Philadelphia wood panel comes from the same tree as that of two paintings definitively attributed to van Eyck, and the Italian panel has underdrawings of a quality that probably could only have come from him. Today the consensus is that both were painted by the same hand', 'Saint Francis Receiving the Stigmata is the subject of two unsigned paintings, nearly identical except for their size, that were both completed around 1430. Art historians usually attribute them to the Flemish artist Jan van Eyck. The larger panel measures 29.3 cm Ã— 33.4 cm (11.5 in Ã— 13.1 in) and is in the Sabauda Gallery in Turin, Italy; the smaller panel is 12.7 cm Ã— 14.6 cm (5.0 in Ã— 5.7 in) and is in the Philadelphia Museum of Art. The paintings show Saint Francis of Assisi kneeling in front of detailed rock formations as he receives the stigmata of the crucified Christ on the palms of his hands and soles of his feet. A panoramic landscape seems to relegate the figures in the foreground to secondary importance. The Philadelphia wood panel comes from the same tree as that of two paintings definitively attributed to van Eyck, and the Italian panel has underdrawings of a quality that probably could only have come from him. Today the consensus is that both were painted by the same hand', 'Yes', '2019-11-10 23:11:03', '2019-11-10 23:11:03', NULL, NULL, NULL, 25.2559544, 55.303301399999995),
	(7, '821504288186', 0, 0, 'Married', '2', 0, 100, 100, 'Occasionally', 'Occasionally', 'Occasionally', 'No', 'No', 'No', 'No', 'No', 'Feeling Good', 'Saint Francis Receiving the Stigmata is the subject of two unsigned paintings, nearly identical except for their size, that were both completed around 1430. Art historians usually attribute them to the Flemish artist Jan van Eyck. The larger panel measures 29.3 cm Ã— 33.4 cm (11.5 in Ã— 13.1 in) and is in the Sabauda Gallery in Turin, Italy; the smaller panel is 12.7 cm Ã— 14.6 cm (5.0 in Ã— 5.7 in) and is in the Philadelphia Museum of Art. The paintings show Saint Francis of Assisi kneeling in front of detailed rock formations as he receives the stigmata of the crucified Christ on the palms of his hands and soles of his feet. A panoramic landscape seems to relegate the figures in the foreground to secondary importance. The Philadelphia wood panel comes from the same tree as that of two paintings definitively attributed to van Eyck, and the Italian panel has underdrawings of a quality that probably could only have come from him. Today the consensus is that both were painted by the same hand', 'Saint Francis Receiving the Stigmata is the subject of two unsigned paintings, nearly identical except for their size, that were both completed around 1430. Art historians usually attribute them to the Flemish artist Jan van Eyck. The larger panel measures 29.3 cm Ã— 33.4 cm (11.5 in Ã— 13.1 in) and is in the Sabauda Gallery in Turin, Italy; the smaller panel is 12.7 cm Ã— 14.6 cm (5.0 in Ã— 5.7 in) and is in the Philadelphia Museum of Art. The paintings show Saint Francis of Assisi kneeling in front of detailed rock formations as he receives the stigmata of the crucified Christ on the palms of his hands and soles of his feet. A panoramic landscape seems to relegate the figures in the foreground to secondary importance. The Philadelphia wood panel comes from the same tree as that of two paintings definitively attributed to van Eyck, and the Italian panel has underdrawings of a quality that probably could only have come from him. Today the consensus is that both were painted by the same hand', 'Saint Francis Receiving the Stigmata is the subject of two unsigned paintings, nearly identical except for their size, that were both completed around 1430. Art historians usually attribute them to the Flemish artist Jan van Eyck. The larger panel measures 29.3 cm Ã— 33.4 cm (11.5 in Ã— 13.1 in) and is in the Sabauda Gallery in Turin, Italy; the smaller panel is 12.7 cm Ã— 14.6 cm (5.0 in Ã— 5.7 in) and is in the Philadelphia Museum of Art. The paintings show Saint Francis of Assisi kneeling in front of detailed rock formations as he receives the stigmata of the crucified Christ on the palms of his hands and soles of his feet. A panoramic landscape seems to relegate the figures in the foreground to secondary importance. The Philadelphia wood panel comes from the same tree as that of two paintings definitively attributed to van Eyck, and the Italian panel has underdrawings of a quality that probably could only have come from him. Today the consensus is that both were painted by the same hand', 'Yes', '2019-11-10 23:11:06', '2019-11-10 23:11:06', NULL, NULL, NULL, 25.2559544, 55.303301399999995),
	(8, '821504288186', 0, 0, 'Married', '2', 0, 100, 100, 'Occasionally', 'Occasionally', 'Occasionally', 'No', 'No', 'No', 'No', 'No', 'Feeling Good', 'Saint Francis Receiving the Stigmata is the subject of two unsigned paintings, nearly identical except for their size, that were both completed around 1430. Art historians usually attribute them to the Flemish artist Jan van Eyck. The larger panel measures 29.3 cm Ã— 33.4 cm (11.5 in Ã— 13.1 in) and is in the Sabauda Gallery in Turin, Italy; the smaller panel is 12.7 cm Ã— 14.6 cm (5.0 in Ã— 5.7 in) and is in the Philadelphia Museum of Art. The paintings show Saint Francis of Assisi kneeling in front of detailed rock formations as he receives the stigmata of the crucified Christ on the palms of his hands and soles of his feet. A panoramic landscape seems to relegate the figures in the foreground to secondary importance. The Philadelphia wood panel comes from the same tree as that of two paintings definitively attributed to van Eyck, and the Italian panel has underdrawings of a quality that probably could only have come from him. Today the consensus is that both were painted by the same hand', 'Saint Francis Receiving the Stigmata is the subject of two unsigned paintings, nearly identical except for their size, that were both completed around 1430. Art historians usually attribute them to the Flemish artist Jan van Eyck. The larger panel measures 29.3 cm Ã— 33.4 cm (11.5 in Ã— 13.1 in) and is in the Sabauda Gallery in Turin, Italy; the smaller panel is 12.7 cm Ã— 14.6 cm (5.0 in Ã— 5.7 in) and is in the Philadelphia Museum of Art. The paintings show Saint Francis of Assisi kneeling in front of detailed rock formations as he receives the stigmata of the crucified Christ on the palms of his hands and soles of his feet. A panoramic landscape seems to relegate the figures in the foreground to secondary importance. The Philadelphia wood panel comes from the same tree as that of two paintings definitively attributed to van Eyck, and the Italian panel has underdrawings of a quality that probably could only have come from him. Today the consensus is that both were painted by the same hand', 'Saint Francis Receiving the Stigmata is the subject of two unsigned paintings, nearly identical except for their size, that were both completed around 1430. Art historians usually attribute them to the Flemish artist Jan van Eyck. The larger panel measures 29.3 cm Ã— 33.4 cm (11.5 in Ã— 13.1 in) and is in the Sabauda Gallery in Turin, Italy; the smaller panel is 12.7 cm Ã— 14.6 cm (5.0 in Ã— 5.7 in) and is in the Philadelphia Museum of Art. The paintings show Saint Francis of Assisi kneeling in front of detailed rock formations as he receives the stigmata of the crucified Christ on the palms of his hands and soles of his feet. A panoramic landscape seems to relegate the figures in the foreground to secondary importance. The Philadelphia wood panel comes from the same tree as that of two paintings definitively attributed to van Eyck, and the Italian panel has underdrawings of a quality that probably could only have come from him. Today the consensus is that both were painted by the same hand', 'Yes', '2019-11-10 23:11:09', '2019-11-10 23:11:09', NULL, NULL, NULL, 25.2559544, 55.303301399999995),
	(9, '821504288186', 0, 0, 'Married', '2', 0, 100, 100, 'Occasionally', 'Occasionally', 'Occasionally', 'No', 'No', 'No', 'No', 'No', 'Feeling Good', 'Saint Francis Receiving the Stigmata is the subject of two unsigned paintings, nearly identical except for their size, that were both completed around 1430. Art historians usually attribute them to the Flemish artist Jan van Eyck. The larger panel measures 29.3 cm Ã— 33.4 cm (11.5 in Ã— 13.1 in) and is in the Sabauda Gallery in Turin, Italy; the smaller panel is 12.7 cm Ã— 14.6 cm (5.0 in Ã— 5.7 in) and is in the Philadelphia Museum of Art. The paintings show Saint Francis of Assisi kneeling in front of detailed rock formations as he receives the stigmata of the crucified Christ on the palms of his hands and soles of his feet. A panoramic landscape seems to relegate the figures in the foreground to secondary importance. The Philadelphia wood panel comes from the same tree as that of two paintings definitively attributed to van Eyck, and the Italian panel has underdrawings of a quality that probably could only have come from him. Today the consensus is that both were painted by the same hand', 'Saint Francis Receiving the Stigmata is the subject of two unsigned paintings, nearly identical except for their size, that were both completed around 1430. Art historians usually attribute them to the Flemish artist Jan van Eyck. The larger panel measures 29.3 cm Ã— 33.4 cm (11.5 in Ã— 13.1 in) and is in the Sabauda Gallery in Turin, Italy; the smaller panel is 12.7 cm Ã— 14.6 cm (5.0 in Ã— 5.7 in) and is in the Philadelphia Museum of Art. The paintings show Saint Francis of Assisi kneeling in front of detailed rock formations as he receives the stigmata of the crucified Christ on the palms of his hands and soles of his feet. A panoramic landscape seems to relegate the figures in the foreground to secondary importance. The Philadelphia wood panel comes from the same tree as that of two paintings definitively attributed to van Eyck, and the Italian panel has underdrawings of a quality that probably could only have come from him. Today the consensus is that both were painted by the same hand', 'Saint Francis Receiving the Stigmata is the subject of two unsigned paintings, nearly identical except for their size, that were both completed around 1430. Art historians usually attribute them to the Flemish artist Jan van Eyck. The larger panel measures 29.3 cm Ã— 33.4 cm (11.5 in Ã— 13.1 in) and is in the Sabauda Gallery in Turin, Italy; the smaller panel is 12.7 cm Ã— 14.6 cm (5.0 in Ã— 5.7 in) and is in the Philadelphia Museum of Art. The paintings show Saint Francis of Assisi kneeling in front of detailed rock formations as he receives the stigmata of the crucified Christ on the palms of his hands and soles of his feet. A panoramic landscape seems to relegate the figures in the foreground to secondary importance. The Philadelphia wood panel comes from the same tree as that of two paintings definitively attributed to van Eyck, and the Italian panel has underdrawings of a quality that probably could only have come from him. Today the consensus is that both were painted by the same hand', 'Yes', '2019-11-10 23:11:13', '2019-11-10 23:11:13', NULL, NULL, NULL, 25.2559544, 55.303301399999995),
	(10, '821504288186', 0, 0, 'Married', '2', 0, 100, 100, 'Occasionally', 'Occasionally', 'Occasionally', 'No', 'No', 'No', 'No', 'No', 'Feeling Good', 'Saint Francis Receiving the Stigmata is the subject of two unsigned paintings, nearly identical except for their size, that were both completed around 1430. Art historians usually attribute them to the Flemish artist Jan van Eyck. The larger panel measures 29.3 cm Ã— 33.4 cm (11.5 in Ã— 13.1 in) and is in the Sabauda Gallery in Turin, Italy; the smaller panel is 12.7 cm Ã— 14.6 cm (5.0 in Ã— 5.7 in) and is in the Philadelphia Museum of Art. The paintings show Saint Francis of Assisi kneeling in front of detailed rock formations as he receives the stigmata of the crucified Christ on the palms of his hands and soles of his feet. A panoramic landscape seems to relegate the figures in the foreground to secondary importance. The Philadelphia wood panel comes from the same tree as that of two paintings definitively attributed to van Eyck, and the Italian panel has underdrawings of a quality that probably could only have come from him. Today the consensus is that both were painted by the same hand', 'Saint Francis Receiving the Stigmata is the subject of two unsigned paintings, nearly identical except for their size, that were both completed around 1430. Art historians usually attribute them to the Flemish artist Jan van Eyck. The larger panel measures 29.3 cm Ã— 33.4 cm (11.5 in Ã— 13.1 in) and is in the Sabauda Gallery in Turin, Italy; the smaller panel is 12.7 cm Ã— 14.6 cm (5.0 in Ã— 5.7 in) and is in the Philadelphia Museum of Art. The paintings show Saint Francis of Assisi kneeling in front of detailed rock formations as he receives the stigmata of the crucified Christ on the palms of his hands and soles of his feet. A panoramic landscape seems to relegate the figures in the foreground to secondary importance. The Philadelphia wood panel comes from the same tree as that of two paintings definitively attributed to van Eyck, and the Italian panel has underdrawings of a quality that probably could only have come from him. Today the consensus is that both were painted by the same hand', 'Saint Francis Receiving the Stigmata is the subject of two unsigned paintings, nearly identical except for their size, that were both completed around 1430. Art historians usually attribute them to the Flemish artist Jan van Eyck. The larger panel measures 29.3 cm Ã— 33.4 cm (11.5 in Ã— 13.1 in) and is in the Sabauda Gallery in Turin, Italy; the smaller panel is 12.7 cm Ã— 14.6 cm (5.0 in Ã— 5.7 in) and is in the Philadelphia Museum of Art. The paintings show Saint Francis of Assisi kneeling in front of detailed rock formations as he receives the stigmata of the crucified Christ on the palms of his hands and soles of his feet. A panoramic landscape seems to relegate the figures in the foreground to secondary importance. The Philadelphia wood panel comes from the same tree as that of two paintings definitively attributed to van Eyck, and the Italian panel has underdrawings of a quality that probably could only have come from him. Today the consensus is that both were painted by the same hand', 'Yes', '2019-11-10 23:11:23', '2019-11-10 23:11:23', NULL, NULL, NULL, 25.2559544, 55.303301399999995),
	(11, '821504288186', 0, 0, 'Married', '2', 0, 100, 100, 'Occasionally', 'Occasionally', 'Occasionally', 'No', 'No', 'No', 'No', 'No', 'Feeling Good', 'Saint Francis Receiving the Stigmata is the subject of two unsigned paintings, nearly identical except for their size, that were both completed around 1430. Art historians usually attribute them to the Flemish artist Jan van Eyck. The larger panel measures 29.3 cm Ã— 33.4 cm (11.5 in Ã— 13.1 in) and is in the Sabauda Gallery in Turin, Italy; the smaller panel is 12.7 cm Ã— 14.6 cm (5.0 in Ã— 5.7 in) and is in the Philadelphia Museum of Art. The paintings show Saint Francis of Assisi kneeling in front of detailed rock formations as he receives the stigmata of the crucified Christ on the palms of his hands and soles of his feet. A panoramic landscape seems to relegate the figures in the foreground to secondary importance. The Philadelphia wood panel comes from the same tree as that of two paintings definitively attributed to van Eyck, and the Italian panel has underdrawings of a quality that probably could only have come from him. Today the consensus is that both were painted by the same hand', 'Saint Francis Receiving the Stigmata is the subject of two unsigned paintings, nearly identical except for their size, that were both completed around 1430. Art historians usually attribute them to the Flemish artist Jan van Eyck. The larger panel measures 29.3 cm Ã— 33.4 cm (11.5 in Ã— 13.1 in) and is in the Sabauda Gallery in Turin, Italy; the smaller panel is 12.7 cm Ã— 14.6 cm (5.0 in Ã— 5.7 in) and is in the Philadelphia Museum of Art. The paintings show Saint Francis of Assisi kneeling in front of detailed rock formations as he receives the stigmata of the crucified Christ on the palms of his hands and soles of his feet. A panoramic landscape seems to relegate the figures in the foreground to secondary importance. The Philadelphia wood panel comes from the same tree as that of two paintings definitively attributed to van Eyck, and the Italian panel has underdrawings of a quality that probably could only have come from him. Today the consensus is that both were painted by the same hand', 'Saint Francis Receiving the Stigmata is the subject of two unsigned paintings, nearly identical except for their size, that were both completed around 1430. Art historians usually attribute them to the Flemish artist Jan van Eyck. The larger panel measures 29.3 cm Ã— 33.4 cm (11.5 in Ã— 13.1 in) and is in the Sabauda Gallery in Turin, Italy; the smaller panel is 12.7 cm Ã— 14.6 cm (5.0 in Ã— 5.7 in) and is in the Philadelphia Museum of Art. The paintings show Saint Francis of Assisi kneeling in front of detailed rock formations as he receives the stigmata of the crucified Christ on the palms of his hands and soles of his feet. A panoramic landscape seems to relegate the figures in the foreground to secondary importance. The Philadelphia wood panel comes from the same tree as that of two paintings definitively attributed to van Eyck, and the Italian panel has underdrawings of a quality that probably could only have come from him. Today the consensus is that both were painted by the same hand', 'Yes', '2019-11-10 23:11:26', '2019-11-10 23:11:26', NULL, NULL, NULL, 25.2559544, 55.303301399999995),
	(12, '821504288186', 0, 0, 'Married', '2', 0, 100, 100, 'Occasionally', 'Occasionally', 'Occasionally', 'No', 'No', 'No', 'No', 'No', 'Feeling Good', 'Saint Francis Receiving the Stigmata is the subject of two unsigned paintings, nearly identical except for their size, that were both completed around 1430. Art historians usually attribute them to the Flemish artist Jan van Eyck. The larger panel measures 29.3 cm Ã— 33.4 cm (11.5 in Ã— 13.1 in) and is in the Sabauda Gallery in Turin, Italy; the smaller panel is 12.7 cm Ã— 14.6 cm (5.0 in Ã— 5.7 in) and is in the Philadelphia Museum of Art. The paintings show Saint Francis of Assisi kneeling in front of detailed rock formations as he receives the stigmata of the crucified Christ on the palms of his hands and soles of his feet. A panoramic landscape seems to relegate the figures in the foreground to secondary importance. The Philadelphia wood panel comes from the same tree as that of two paintings definitively attributed to van Eyck, and the Italian panel has underdrawings of a quality that probably could only have come from him. Today the consensus is that both were painted by the same hand', 'Saint Francis Receiving the Stigmata is the subject of two unsigned paintings, nearly identical except for their size, that were both completed around 1430. Art historians usually attribute them to the Flemish artist Jan van Eyck. The larger panel measures 29.3 cm Ã— 33.4 cm (11.5 in Ã— 13.1 in) and is in the Sabauda Gallery in Turin, Italy; the smaller panel is 12.7 cm Ã— 14.6 cm (5.0 in Ã— 5.7 in) and is in the Philadelphia Museum of Art. The paintings show Saint Francis of Assisi kneeling in front of detailed rock formations as he receives the stigmata of the crucified Christ on the palms of his hands and soles of his feet. A panoramic landscape seems to relegate the figures in the foreground to secondary importance. The Philadelphia wood panel comes from the same tree as that of two paintings definitively attributed to van Eyck, and the Italian panel has underdrawings of a quality that probably could only have come from him. Today the consensus is that both were painted by the same hand', 'Saint Francis Receiving the Stigmata is the subject of two unsigned paintings, nearly identical except for their size, that were both completed around 1430. Art historians usually attribute them to the Flemish artist Jan van Eyck. The larger panel measures 29.3 cm Ã— 33.4 cm (11.5 in Ã— 13.1 in) and is in the Sabauda Gallery in Turin, Italy; the smaller panel is 12.7 cm Ã— 14.6 cm (5.0 in Ã— 5.7 in) and is in the Philadelphia Museum of Art. The paintings show Saint Francis of Assisi kneeling in front of detailed rock formations as he receives the stigmata of the crucified Christ on the palms of his hands and soles of his feet. A panoramic landscape seems to relegate the figures in the foreground to secondary importance. The Philadelphia wood panel comes from the same tree as that of two paintings definitively attributed to van Eyck, and the Italian panel has underdrawings of a quality that probably could only have come from him. Today the consensus is that both were painted by the same hand', 'Yes', '2019-11-10 23:11:29', '2019-11-10 23:11:29', NULL, NULL, NULL, 25.2559544, 55.303301399999995),
	(13, '821504288186', 0, 0, 'Married', '2', 0, 100, 100, 'Occasionally', 'Occasionally', 'Occasionally', 'No', 'No', 'No', 'No', 'No', 'In essence, all endogenous pyrogens are cytokines, molecules that are a part of the immune system. They are produced by activated immune cells and cause the increase in the thermoregulatory', 'Saint Francis Receiving the Stigmata is the subject of two unsigned paintings, nearly identical except for their size, that were both completed around 1430. Art historians usually attribute them to the Flemish artist Jan van Eyck. The larger panel measures 29.3 cm Ã— 33.4 cm (11.5 in Ã— 13.1 in) and is in the Sabauda Gallery in Turin, Italy; the smaller panel is 12.7 cm Ã— 14.6 cm (5.0 in Ã— 5.7 in) and is in the Philadelphia Museum of Art. The paintings show Saint Francis of Assisi kneeling in front of detailed rock formations as he receives the stigmata of the crucified Christ on the palms of his hands and soles of his feet. A panoramic landscape seems to relegate the figures in the foreground to secondary importance. The Philadelphia wood panel comes from the same tree as that of two paintings definitively attributed to van Eyck, and the Italian panel has underdrawings of a quality that probably could only have come from him. Today the consensus is that both were painted by the same hand', 'Saint Francis Receiving the Stigmata is the subject of two unsigned paintings, nearly identical except for their size, that were both completed around 1430. Art historians usually attribute them to the Flemish artist Jan van Eyck. The larger panel measures 29.3 cm Ã— 33.4 cm (11.5 in Ã— 13.1 in) and is in the Sabauda Gallery in Turin, Italy; the smaller panel is 12.7 cm Ã— 14.6 cm (5.0 in Ã— 5.7 in) and is in the Philadelphia Museum of Art. The paintings show Saint Francis of Assisi kneeling in front of detailed rock formations as he receives the stigmata of the crucified Christ on the palms of his hands and soles of his feet. A panoramic landscape seems to relegate the figures in the foreground to secondary importance. The Philadelphia wood panel comes from the same tree as that of two paintings definitively attributed to van Eyck, and the Italian panel has underdrawings of a quality that probably could only have come from him. Today the consensus is that both were painted by the same hand', 'Saint Francis Receiving the Stigmata is the subject of two unsigned paintings, nearly identical except for their size, that were both completed around 1430. Art historians usually attribute them to the Flemish artist Jan van Eyck. The larger panel measures 29.3 cm Ã— 33.4 cm (11.5 in Ã— 13.1 in) and is in the Sabauda Gallery in Turin, Italy; the smaller panel is 12.7 cm Ã— 14.6 cm (5.0 in Ã— 5.7 in) and is in the Philadelphia Museum of Art. The paintings show Saint Francis of Assisi kneeling in front of detailed rock formations as he receives the stigmata of the crucified Christ on the palms of his hands and soles of his feet. A panoramic landscape seems to relegate the figures in the foreground to secondary importance. The Philadelphia wood panel comes from the same tree as that of two paintings definitively attributed to van Eyck, and the Italian panel has underdrawings of a quality that probably could only have come from him. Today the consensus is that both were painted by the same hand', 'Yes', '2019-11-10 23:11:32', '2019-11-10 23:11:32', NULL, NULL, NULL, 25.2559544, 55.303301399999995),
	(14, '821504288186', 0, 0, 'Married', '2', 0, 100, 100, 'Occasionally', 'Occasionally', 'Occasionally', 'No', 'No', 'No', 'No', 'No', 'Feeling Good', 'Saint Francis Receiving the Stigmata is the subject of two unsigned paintings, nearly identical except for their size, that were both completed around 1430. Art historians usually attribute them to the Flemish artist Jan van Eyck. The larger panel measures 29.3 cm Ã— 33.4 cm (11.5 in Ã— 13.1 in) and is in the Sabauda Gallery in Turin, Italy; the smaller panel is 12.7 cm Ã— 14.6 cm (5.0 in Ã— 5.7 in) and is in the Philadelphia Museum of Art. The paintings show Saint Francis of Assisi kneeling in front of detailed rock formations as he receives the stigmata of the crucified Christ on the palms of his hands and soles of his feet. A panoramic landscape seems to relegate the figures in the foreground to secondary importance. The Philadelphia wood panel comes from the same tree as that of two paintings definitively attributed to van Eyck, and the Italian panel has underdrawings of a quality that probably could only have come from him. Today the consensus is that both were painted by the same hand', 'Saint Francis Receiving the Stigmata is the subject of two unsigned paintings, nearly identical except for their size, that were both completed around 1430. Art historians usually attribute them to the Flemish artist Jan van Eyck. The larger panel measures 29.3 cm Ã— 33.4 cm (11.5 in Ã— 13.1 in) and is in the Sabauda Gallery in Turin, Italy; the smaller panel is 12.7 cm Ã— 14.6 cm (5.0 in Ã— 5.7 in) and is in the Philadelphia Museum of Art. The paintings show Saint Francis of Assisi kneeling in front of detailed rock formations as he receives the stigmata of the crucified Christ on the palms of his hands and soles of his feet. A panoramic landscape seems to relegate the figures in the foreground to secondary importance. The Philadelphia wood panel comes from the same tree as that of two paintings definitively attributed to van Eyck, and the Italian panel has underdrawings of a quality that probably could only have come from him. Today the consensus is that both were painted by the same hand', 'Saint Francis Receiving the Stigmata is the subject of two unsigned paintings, nearly identical except for their size, that were both completed around 1430. Art historians usually attribute them to the Flemish artist Jan van Eyck. The larger panel measures 29.3 cm Ã— 33.4 cm (11.5 in Ã— 13.1 in) and is in the Sabauda Gallery in Turin, Italy; the smaller panel is 12.7 cm Ã— 14.6 cm (5.0 in Ã— 5.7 in) and is in the Philadelphia Museum of Art. The paintings show Saint Francis of Assisi kneeling in front of detailed rock formations as he receives the stigmata of the crucified Christ on the palms of his hands and soles of his feet. A panoramic landscape seems to relegate the figures in the foreground to secondary importance. The Philadelphia wood panel comes from the same tree as that of two paintings definitively attributed to van Eyck, and the Italian panel has underdrawings of a quality that probably could only have come from him. Today the consensus is that both were painted by the same hand', 'Yes', '2019-11-10 23:11:35', '2019-11-10 23:11:35', NULL, NULL, NULL, 25.2559544, 55.303301399999995),
	(15, '821504288186', 0, 0, 'Married', '2', 0, 100, 100, 'Occasionally', 'Occasionally', 'Occasionally', 'No', 'No', 'No', 'No', 'No', 'Feeling Good', 'Saint Francis Receiving the Stigmata is the subject of two unsigned paintings, nearly identical except for their size, that were both completed around 1430. Art historians usually attribute them to the Flemish artist Jan van Eyck. The larger panel measures 29.3 cm Ã— 33.4 cm (11.5 in Ã— 13.1 in) and is in the Sabauda Gallery in Turin, Italy; the smaller panel is 12.7 cm Ã— 14.6 cm (5.0 in Ã— 5.7 in) and is in the Philadelphia Museum of Art. The paintings show Saint Francis of Assisi kneeling in front of detailed rock formations as he receives the stigmata of the crucified Christ on the palms of his hands and soles of his feet. A panoramic landscape seems to relegate the figures in the foreground to secondary importance. The Philadelphia wood panel comes from the same tree as that of two paintings definitively attributed to van Eyck, and the Italian panel has underdrawings of a quality that probably could only have come from him. Today the consensus is that both were painted by the same hand', 'Saint Francis Receiving the Stigmata is the subject of two unsigned paintings, nearly identical except for their size, that were both completed around 1430. Art historians usually attribute them to the Flemish artist Jan van Eyck. The larger panel measures 29.3 cm Ã— 33.4 cm (11.5 in Ã— 13.1 in) and is in the Sabauda Gallery in Turin, Italy; the smaller panel is 12.7 cm Ã— 14.6 cm (5.0 in Ã— 5.7 in) and is in the Philadelphia Museum of Art. The paintings show Saint Francis of Assisi kneeling in front of detailed rock formations as he receives the stigmata of the crucified Christ on the palms of his hands and soles of his feet. A panoramic landscape seems to relegate the figures in the foreground to secondary importance. The Philadelphia wood panel comes from the same tree as that of two paintings definitively attributed to van Eyck, and the Italian panel has underdrawings of a quality that probably could only have come from him. Today the consensus is that both were painted by the same hand', 'Saint Francis Receiving the Stigmata is the subject of two unsigned paintings, nearly identical except for their size, that were both completed around 1430. Art historians usually attribute them to the Flemish artist Jan van Eyck. The larger panel measures 29.3 cm Ã— 33.4 cm (11.5 in Ã— 13.1 in) and is in the Sabauda Gallery in Turin, Italy; the smaller panel is 12.7 cm Ã— 14.6 cm (5.0 in Ã— 5.7 in) and is in the Philadelphia Museum of Art. The paintings show Saint Francis of Assisi kneeling in front of detailed rock formations as he receives the stigmata of the crucified Christ on the palms of his hands and soles of his feet. A panoramic landscape seems to relegate the figures in the foreground to secondary importance. The Philadelphia wood panel comes from the same tree as that of two paintings definitively attributed to van Eyck, and the Italian panel has underdrawings of a quality that probably could only have come from him. Today the consensus is that both were painted by the same hand', 'Yes', '2019-11-10 23:11:39', '2019-11-10 23:11:39', NULL, NULL, NULL, 25.2559544, 55.303301399999995),
	(16, '821504288186', 0, 0, 'Married', '2', 0, 100, 100, 'Occasionally', 'Occasionally', 'Occasionally', 'No', 'No', 'No', 'No', 'No', 'Feeling Good', 'Saint Francis Receiving the Stigmata is the subject of two unsigned paintings, nearly identical except for their size, that were both completed around 1430. Art historians usually attribute them to the Flemish artist Jan van Eyck. The larger panel measures 29.3 cm Ã— 33.4 cm (11.5 in Ã— 13.1 in) and is in the Sabauda Gallery in Turin, Italy; the smaller panel is 12.7 cm Ã— 14.6 cm (5.0 in Ã— 5.7 in) and is in the Philadelphia Museum of Art. The paintings show Saint Francis of Assisi kneeling in front of detailed rock formations as he receives the stigmata of the crucified Christ on the palms of his hands and soles of his feet. A panoramic landscape seems to relegate the figures in the foreground to secondary importance. The Philadelphia wood panel comes from the same tree as that of two paintings definitively attributed to van Eyck, and the Italian panel has underdrawings of a quality that probably could only have come from him. Today the consensus is that both were painted by the same hand', 'Saint Francis Receiving the Stigmata is the subject of two unsigned paintings, nearly identical except for their size, that were both completed around 1430. Art historians usually attribute them to the Flemish artist Jan van Eyck. The larger panel measures 29.3 cm Ã— 33.4 cm (11.5 in Ã— 13.1 in) and is in the Sabauda Gallery in Turin, Italy; the smaller panel is 12.7 cm Ã— 14.6 cm (5.0 in Ã— 5.7 in) and is in the Philadelphia Museum of Art. The paintings show Saint Francis of Assisi kneeling in front of detailed rock formations as he receives the stigmata of the crucified Christ on the palms of his hands and soles of his feet. A panoramic landscape seems to relegate the figures in the foreground to secondary importance. The Philadelphia wood panel comes from the same tree as that of two paintings definitively attributed to van Eyck, and the Italian panel has underdrawings of a quality that probably could only have come from him. Today the consensus is that both were painted by the same hand', 'Saint Francis Receiving the Stigmata is the subject of two unsigned paintings, nearly identical except for their size, that were both completed around 1430. Art historians usually attribute them to the Flemish artist Jan van Eyck. The larger panel measures 29.3 cm Ã— 33.4 cm (11.5 in Ã— 13.1 in) and is in the Sabauda Gallery in Turin, Italy; the smaller panel is 12.7 cm Ã— 14.6 cm (5.0 in Ã— 5.7 in) and is in the Philadelphia Museum of Art. The paintings show Saint Francis of Assisi kneeling in front of detailed rock formations as he receives the stigmata of the crucified Christ on the palms of his hands and soles of his feet. A panoramic landscape seems to relegate the figures in the foreground to secondary importance. The Philadelphia wood panel comes from the same tree as that of two paintings definitively attributed to van Eyck, and the Italian panel has underdrawings of a quality that probably could only have come from him. Today the consensus is that both were painted by the same hand', 'Yes', '2019-11-10 23:11:44', '2019-11-10 23:11:44', NULL, NULL, NULL, 25.2559544, 55.303301399999995),
	(17, '821504288186', 0, 0, 'Married', '2', 0, 100, 100, 'Occasionally', 'Occasionally', 'Occasionally', 'No', 'No', 'No', 'No', 'No', 'Feeling Good', 'Saint Francis Receiving the Stigmata is the subject of two unsigned paintings, nearly identical except for their size, that were both completed around 1430. Art historians usually attribute them to the Flemish artist Jan van Eyck. The larger panel measures 29.3 cm Ã— 33.4 cm (11.5 in Ã— 13.1 in) and is in the Sabauda Gallery in Turin, Italy; the smaller panel is 12.7 cm Ã— 14.6 cm (5.0 in Ã— 5.7 in) and is in the Philadelphia Museum of Art. The paintings show Saint Francis of Assisi kneeling in front of detailed rock formations as he receives the stigmata of the crucified Christ on the palms of his hands and soles of his feet. A panoramic landscape seems to relegate the figures in the foreground to secondary importance. The Philadelphia wood panel comes from the same tree as that of two paintings definitively attributed to van Eyck, and the Italian panel has underdrawings of a quality that probably could only have come from him. Today the consensus is that both were painted by the same hand', 'Saint Francis Receiving the Stigmata is the subject of two unsigned paintings, nearly identical except for their size, that were both completed around 1430. Art historians usually attribute them to the Flemish artist Jan van Eyck. The larger panel measures 29.3 cm Ã— 33.4 cm (11.5 in Ã— 13.1 in) and is in the Sabauda Gallery in Turin, Italy; the smaller panel is 12.7 cm Ã— 14.6 cm (5.0 in Ã— 5.7 in) and is in the Philadelphia Museum of Art. The paintings show Saint Francis of Assisi kneeling in front of detailed rock formations as he receives the stigmata of the crucified Christ on the palms of his hands and soles of his feet. A panoramic landscape seems to relegate the figures in the foreground to secondary importance. The Philadelphia wood panel comes from the same tree as that of two paintings definitively attributed to van Eyck, and the Italian panel has underdrawings of a quality that probably could only have come from him. Today the consensus is that both were painted by the same hand', 'Saint Francis Receiving the Stigmata is the subject of two unsigned paintings, nearly identical except for their size, that were both completed around 1430. Art historians usually attribute them to the Flemish artist Jan van Eyck. The larger panel measures 29.3 cm Ã— 33.4 cm (11.5 in Ã— 13.1 in) and is in the Sabauda Gallery in Turin, Italy; the smaller panel is 12.7 cm Ã— 14.6 cm (5.0 in Ã— 5.7 in) and is in the Philadelphia Museum of Art. The paintings show Saint Francis of Assisi kneeling in front of detailed rock formations as he receives the stigmata of the crucified Christ on the palms of his hands and soles of his feet. A panoramic landscape seems to relegate the figures in the foreground to secondary importance. The Philadelphia wood panel comes from the same tree as that of two paintings definitively attributed to van Eyck, and the Italian panel has underdrawings of a quality that probably could only have come from him. Today the consensus is that both were painted by the same hand', 'Yes', '2019-11-10 23:11:47', '2019-11-10 23:11:47', NULL, NULL, NULL, 25.2559544, 55.303301399999995),
	(18, '821504288186', 0, 0, 'Married', '2', 0, 100, 100, 'Occasionally', 'Occasionally', 'Occasionally', 'No', 'No', 'No', 'No', 'No', 'Feeling Good', 'Saint Francis Receiving the Stigmata is the subject of two unsigned paintings, nearly identical except for their size, that were both completed around 1430. Art historians usually attribute them to the Flemish artist Jan van Eyck. The larger panel measures 29.3 cm Ã— 33.4 cm (11.5 in Ã— 13.1 in) and is in the Sabauda Gallery in Turin, Italy; the smaller panel is 12.7 cm Ã— 14.6 cm (5.0 in Ã— 5.7 in) and is in the Philadelphia Museum of Art. The paintings show Saint Francis of Assisi kneeling in front of detailed rock formations as he receives the stigmata of the crucified Christ on the palms of his hands and soles of his feet. A panoramic landscape seems to relegate the figures in the foreground to secondary importance. The Philadelphia wood panel comes from the same tree as that of two paintings definitively attributed to van Eyck, and the Italian panel has underdrawings of a quality that probably could only have come from him. Today the consensus is that both were painted by the same hand', 'Saint Francis Receiving the Stigmata is the subject of two unsigned paintings, nearly identical except for their size, that were both completed around 1430. Art historians usually attribute them to the Flemish artist Jan van Eyck. The larger panel measures 29.3 cm Ã— 33.4 cm (11.5 in Ã— 13.1 in) and is in the Sabauda Gallery in Turin, Italy; the smaller panel is 12.7 cm Ã— 14.6 cm (5.0 in Ã— 5.7 in) and is in the Philadelphia Museum of Art. The paintings show Saint Francis of Assisi kneeling in front of detailed rock formations as he receives the stigmata of the crucified Christ on the palms of his hands and soles of his feet. A panoramic landscape seems to relegate the figures in the foreground to secondary importance. The Philadelphia wood panel comes from the same tree as that of two paintings definitively attributed to van Eyck, and the Italian panel has underdrawings of a quality that probably could only have come from him. Today the consensus is that both were painted by the same hand', 'Saint Francis Receiving the Stigmata is the subject of two unsigned paintings, nearly identical except for their size, that were both completed around 1430. Art historians usually attribute them to the Flemish artist Jan van Eyck. The larger panel measures 29.3 cm Ã— 33.4 cm (11.5 in Ã— 13.1 in) and is in the Sabauda Gallery in Turin, Italy; the smaller panel is 12.7 cm Ã— 14.6 cm (5.0 in Ã— 5.7 in) and is in the Philadelphia Museum of Art. The paintings show Saint Francis of Assisi kneeling in front of detailed rock formations as he receives the stigmata of the crucified Christ on the palms of his hands and soles of his feet. A panoramic landscape seems to relegate the figures in the foreground to secondary importance. The Philadelphia wood panel comes from the same tree as that of two paintings definitively attributed to van Eyck, and the Italian panel has underdrawings of a quality that probably could only have come from him. Today the consensus is that both were painted by the same hand', 'Yes', '2019-11-10 23:11:51', '2019-11-10 23:11:51', NULL, NULL, NULL, 25.2559544, 55.303301399999995),
	(19, '821504288186', 0, 0, 'Married', '2', 0, 100, 100, 'Occasionally', 'Occasionally', 'Occasionally', 'No', 'No', 'No', 'No', 'No', 'Feeling Good', 'Saint Francis Receiving the Stigmata is the subject of two unsigned paintings, nearly identical except for their size, that were both completed around 1430. Art historians usually attribute them to the Flemish artist Jan van Eyck. The larger panel measures 29.3 cm Ã— 33.4 cm (11.5 in Ã— 13.1 in) and is in the Sabauda Gallery in Turin, Italy; the smaller panel is 12.7 cm Ã— 14.6 cm (5.0 in Ã— 5.7 in) and is in the Philadelphia Museum of Art. The paintings show Saint Francis of Assisi kneeling in front of detailed rock formations as he receives the stigmata of the crucified Christ on the palms of his hands and soles of his feet. A panoramic landscape seems to relegate the figures in the foreground to secondary importance. The Philadelphia wood panel comes from the same tree as that of two paintings definitively attributed to van Eyck, and the Italian panel has underdrawings of a quality that probably could only have come from him. Today the consensus is that both were painted by the same hand', 'Saint Francis Receiving the Stigmata is the subject of two unsigned paintings, nearly identical except for their size, that were both completed around 1430. Art historians usually attribute them to the Flemish artist Jan van Eyck. The larger panel measures 29.3 cm Ã— 33.4 cm (11.5 in Ã— 13.1 in) and is in the Sabauda Gallery in Turin, Italy; the smaller panel is 12.7 cm Ã— 14.6 cm (5.0 in Ã— 5.7 in) and is in the Philadelphia Museum of Art. The paintings show Saint Francis of Assisi kneeling in front of detailed rock formations as he receives the stigmata of the crucified Christ on the palms of his hands and soles of his feet. A panoramic landscape seems to relegate the figures in the foreground to secondary importance. The Philadelphia wood panel comes from the same tree as that of two paintings definitively attributed to van Eyck, and the Italian panel has underdrawings of a quality that probably could only have come from him. Today the consensus is that both were painted by the same hand', 'Saint Francis Receiving the Stigmata is the subject of two unsigned paintings, nearly identical except for their size, that were both completed around 1430. Art historians usually attribute them to the Flemish artist Jan van Eyck. The larger panel measures 29.3 cm Ã— 33.4 cm (11.5 in Ã— 13.1 in) and is in the Sabauda Gallery in Turin, Italy; the smaller panel is 12.7 cm Ã— 14.6 cm (5.0 in Ã— 5.7 in) and is in the Philadelphia Museum of Art. The paintings show Saint Francis of Assisi kneeling in front of detailed rock formations as he receives the stigmata of the crucified Christ on the palms of his hands and soles of his feet. A panoramic landscape seems to relegate the figures in the foreground to secondary importance. The Philadelphia wood panel comes from the same tree as that of two paintings definitively attributed to van Eyck, and the Italian panel has underdrawings of a quality that probably could only have come from him. Today the consensus is that both were painted by the same hand', 'Yes', '2019-11-10 23:11:56', '2019-11-10 23:11:56', NULL, NULL, NULL, 25.2559544, 55.303301399999995),
	(20, '467269561688', 2, 5, 'Single', '1', 7, 11, 11, 'Yes', 'Yes', 'Yes', 'No', 'No', 'No', 'No', 'No', 'Feeling Good', 'Saint Francis Receiving the Stigmata is the subject of two unsigned paintings, nearly identical except for their size, that were both completed around 1430. Art historians usually attribute them to the Flemish artist Jan van Eyck. The larger panel measures 29.3 cm Ã— 33.4 cm (11.5 in Ã— 13.1 in) and is in the Sabauda Gallery in Turin, Italy; the smaller panel is 12.7 cm Ã— 14.6 cm (5.0 in Ã— 5.7 in) and is in the Philadelphia Museum of Art. The paintings show Saint Francis of Assisi kneeling in front of detailed rock formations as he receives the stigmata of the crucified Christ on the palms of his hands and soles of his feet. A panoramic landscape seems to relegate the figures in the foreground to secondary importance. The Philadelphia wood panel comes from the same tree as that of two paintings definitively attributed to van Eyck, and the Italian panel has underdrawings of a quality that probably could only have come from him. Today the consensus is that both were painted by the same hand', 'Saint Francis Receiving the Stigmata is the subject of two unsigned paintings, nearly identical except for their size, that were both completed around 1430. Art historians usually attribute them to the Flemish artist Jan van Eyck. The larger panel measures 29.3 cm Ã— 33.4 cm (11.5 in Ã— 13.1 in) and is in the Sabauda Gallery in Turin, Italy; the smaller panel is 12.7 cm Ã— 14.6 cm (5.0 in Ã— 5.7 in) and is in the Philadelphia Museum of Art. The paintings show Saint Francis of Assisi kneeling in front of detailed rock formations as he receives the stigmata of the crucified Christ on the palms of his hands and soles of his feet. A panoramic landscape seems to relegate the figures in the foreground to secondary importance. The Philadelphia wood panel comes from the same tree as that of two paintings definitively attributed to van Eyck, and the Italian panel has underdrawings of a quality that probably could only have come from him. Today the consensus is that both were painted by the same hand', 'Saint Francis Receiving the Stigmata is the subject of two unsigned paintings, nearly identical except for their size, that were both completed around 1430. Art historians usually attribute them to the Flemish artist Jan van Eyck. The larger panel measures 29.3 cm Ã— 33.4 cm (11.5 in Ã— 13.1 in) and is in the Sabauda Gallery in Turin, Italy; the smaller panel is 12.7 cm Ã— 14.6 cm (5.0 in Ã— 5.7 in) and is in the Philadelphia Museum of Art. The paintings show Saint Francis of Assisi kneeling in front of detailed rock formations as he receives the stigmata of the crucified Christ on the palms of his hands and soles of his feet. A panoramic landscape seems to relegate the figures in the foreground to secondary importance. The Philadelphia wood panel comes from the same tree as that of two paintings definitively attributed to van Eyck, and the Italian panel has underdrawings of a quality that probably could only have come from him. Today the consensus is that both were painted by the same hand', 'No', '2019-11-19 22:45:30', '2019-11-19 22:45:30', NULL, NULL, NULL, 0, 0),
	(21, '821504288186', 0, 0, 'Married', '2', 0, 100, 100, 'Occasionally', 'Occasionally', 'Occasionally', 'No', 'No', 'No', 'No', 'No', 'Feeling Good', 'Saint Francis Receiving the Stigmata is the subject of two unsigned paintings, nearly identical except for their size, that were both completed around 1430. Art historians usually attribute them to the Flemish artist Jan van Eyck. The larger panel measures 29.3 cm Ã— 33.4 cm (11.5 in Ã— 13.1 in) and is in the Sabauda Gallery in Turin, Italy; the smaller panel is 12.7 cm Ã— 14.6 cm (5.0 in Ã— 5.7 in) and is in the Philadelphia Museum of Art. The paintings show Saint Francis of Assisi kneeling in front of detailed rock formations as he receives the stigmata of the crucified Christ on the palms of his hands and soles of his feet. A panoramic landscape seems to relegate the figures in the foreground to secondary importance. The Philadelphia wood panel comes from the same tree as that of two paintings definitively attributed to van Eyck, and the Italian panel has underdrawings of a quality that probably could only have come from him. Today the consensus is that both were painted by the same hand', 'Saint Francis Receiving the Stigmata is the subject of two unsigned paintings, nearly identical except for their size, that were both completed around 1430. Art historians usually attribute them to the Flemish artist Jan van Eyck. The larger panel measures 29.3 cm Ã— 33.4 cm (11.5 in Ã— 13.1 in) and is in the Sabauda Gallery in Turin, Italy; the smaller panel is 12.7 cm Ã— 14.6 cm (5.0 in Ã— 5.7 in) and is in the Philadelphia Museum of Art. The paintings show Saint Francis of Assisi kneeling in front of detailed rock formations as he receives the stigmata of the crucified Christ on the palms of his hands and soles of his feet. A panoramic landscape seems to relegate the figures in the foreground to secondary importance. The Philadelphia wood panel comes from the same tree as that of two paintings definitively attributed to van Eyck, and the Italian panel has underdrawings of a quality that probably could only have come from him. Today the consensus is that both were painted by the same hand', 'Saint Francis Receiving the Stigmata is the subject of two unsigned paintings, nearly identical except for their size, that were both completed around 1430. Art historians usually attribute them to the Flemish artist Jan van Eyck. The larger panel measures 29.3 cm Ã— 33.4 cm (11.5 in Ã— 13.1 in) and is in the Sabauda Gallery in Turin, Italy; the smaller panel is 12.7 cm Ã— 14.6 cm (5.0 in Ã— 5.7 in) and is in the Philadelphia Museum of Art. The paintings show Saint Francis of Assisi kneeling in front of detailed rock formations as he receives the stigmata of the crucified Christ on the palms of his hands and soles of his feet. A panoramic landscape seems to relegate the figures in the foreground to secondary importance. The Philadelphia wood panel comes from the same tree as that of two paintings definitively attributed to van Eyck, and the Italian panel has underdrawings of a quality that probably could only have come from him. Today the consensus is that both were painted by the same hand', '', '2019-11-22 18:48:00', '2019-11-22 18:48:00', NULL, NULL, NULL, 0, 0),
	(22, '821504288186', 0, 0, 'Married', '2', 0, 100, 100, 'Occasionally', 'Occasionally', 'Occasionally', 'No', 'No', 'No', 'No', 'No', 'Feeling Good', 'Saint Francis Receiving the Stigmata is the subject of two unsigned paintings, nearly identical except for their size, that were both completed around 1430. Art historians usually attribute them to the Flemish artist Jan van Eyck. The larger panel measures 29.3 cm Ã— 33.4 cm (11.5 in Ã— 13.1 in) and is in the Sabauda Gallery in Turin, Italy; the smaller panel is 12.7 cm Ã— 14.6 cm (5.0 in Ã— 5.7 in) and is in the Philadelphia Museum of Art. The paintings show Saint Francis of Assisi kneeling in front of detailed rock formations as he receives the stigmata of the crucified Christ on the palms of his hands and soles of his feet. A panoramic landscape seems to relegate the figures in the foreground to secondary importance. The Philadelphia wood panel comes from the same tree as that of two paintings definitively attributed to van Eyck, and the Italian panel has underdrawings of a quality that probably could only have come from him. Today the consensus is that both were painted by the same hand', 'Saint Francis Receiving the Stigmata is the subject of two unsigned paintings, nearly identical except for their size, that were both completed around 1430. Art historians usually attribute them to the Flemish artist Jan van Eyck. The larger panel measures 29.3 cm Ã— 33.4 cm (11.5 in Ã— 13.1 in) and is in the Sabauda Gallery in Turin, Italy; the smaller panel is 12.7 cm Ã— 14.6 cm (5.0 in Ã— 5.7 in) and is in the Philadelphia Museum of Art. The paintings show Saint Francis of Assisi kneeling in front of detailed rock formations as he receives the stigmata of the crucified Christ on the palms of his hands and soles of his feet. A panoramic landscape seems to relegate the figures in the foreground to secondary importance. The Philadelphia wood panel comes from the same tree as that of two paintings definitively attributed to van Eyck, and the Italian panel has underdrawings of a quality that probably could only have come from him. Today the consensus is that both were painted by the same hand', 'Saint Francis Receiving the Stigmata is the subject of two unsigned paintings, nearly identical except for their size, that were both completed around 1430. Art historians usually attribute them to the Flemish artist Jan van Eyck. The larger panel measures 29.3 cm Ã— 33.4 cm (11.5 in Ã— 13.1 in) and is in the Sabauda Gallery in Turin, Italy; the smaller panel is 12.7 cm Ã— 14.6 cm (5.0 in Ã— 5.7 in) and is in the Philadelphia Museum of Art. The paintings show Saint Francis of Assisi kneeling in front of detailed rock formations as he receives the stigmata of the crucified Christ on the palms of his hands and soles of his feet. A panoramic landscape seems to relegate the figures in the foreground to secondary importance. The Philadelphia wood panel comes from the same tree as that of two paintings definitively attributed to van Eyck, and the Italian panel has underdrawings of a quality that probably could only have come from him. Today the consensus is that both were painted by the same hand', '', '2019-11-22 18:48:03', '2019-11-22 18:48:03', NULL, NULL, NULL, 0, 0),
	(23, '821504288186', 0, 0, 'Married', '2', 0, 100, 100, 'Occasionally', 'Occasionally', 'Occasionally', 'No', 'No', 'No', 'No', 'No', 'Continuous fever: Temperature remains above normal throughout the day and does not fluctuate more than 1 ï¿½C in 24 hours, e.g. lobar pneumonia, typhoid, meningitis, urinary tract infection, or typhus. Typhoid fever may show a specific fever pattern (Wunderlich curve of typhoid fever), with a slow stepwise increase and a high plateau', 'Saint Francis Receiving the Stigmata is the subject of two unsigned paintings, nearly identical except for their size, that were both completed around 1430. Art historians usually attribute them to the Flemish artist Jan van Eyck. The larger panel measures 29.3 cm Ã— 33.4 cm (11.5 in Ã— 13.1 in) and is in the Sabauda Gallery in Turin, Italy; the smaller panel is 12.7 cm Ã— 14.6 cm (5.0 in Ã— 5.7 in) and is in the Philadelphia Museum of Art. The paintings show Saint Francis of Assisi kneeling in front of detailed rock formations as he receives the stigmata of the crucified Christ on the palms of his hands and soles of his feet. A panoramic landscape seems to relegate the figures in the foreground to secondary importance. The Philadelphia wood panel comes from the same tree as that of two paintings definitively attributed to van Eyck, and the Italian panel has underdrawings of a quality that probably could only have come from him. Today the consensus is that both were painted by the same hand', 'Saint Francis Receiving the Stigmata is the subject of two unsigned paintings, nearly identical except for their size, that were both completed around 1430. Art historians usually attribute them to the Flemish artist Jan van Eyck. The larger panel measures 29.3 cm Ã— 33.4 cm (11.5 in Ã— 13.1 in) and is in the Sabauda Gallery in Turin, Italy; the smaller panel is 12.7 cm Ã— 14.6 cm (5.0 in Ã— 5.7 in) and is in the Philadelphia Museum of Art. The paintings show Saint Francis of Assisi kneeling in front of detailed rock formations as he receives the stigmata of the crucified Christ on the palms of his hands and soles of his feet. A panoramic landscape seems to relegate the figures in the foreground to secondary importance. The Philadelphia wood panel comes from the same tree as that of two paintings definitively attributed to van Eyck, and the Italian panel has underdrawings of a quality that probably could only have come from him. Today the consensus is that both were painted by the same hand', 'Saint Francis Receiving the Stigmata is the subject of two unsigned paintings, nearly identical except for their size, that were both completed around 1430. Art historians usually attribute them to the Flemish artist Jan van Eyck. The larger panel measures 29.3 cm Ã— 33.4 cm (11.5 in Ã— 13.1 in) and is in the Sabauda Gallery in Turin, Italy; the smaller panel is 12.7 cm Ã— 14.6 cm (5.0 in Ã— 5.7 in) and is in the Philadelphia Museum of Art. The paintings show Saint Francis of Assisi kneeling in front of detailed rock formations as he receives the stigmata of the crucified Christ on the palms of his hands and soles of his feet. A panoramic landscape seems to relegate the figures in the foreground to secondary importance. The Philadelphia wood panel comes from the same tree as that of two paintings definitively attributed to van Eyck, and the Italian panel has underdrawings of a quality that probably could only have come from him. Today the consensus is that both were painted by the same hand', '', '2019-12-14 18:04:07', '2019-12-14 18:04:07', NULL, NULL, NULL, 0, 0),
	(24, '821504288186', 0, 0, 'Married', '2', 0, 100, 100, 'Occasionally', 'Occasionally', 'Occasionally', 'No', 'No', 'No', 'No', 'No', 'Continuous fever: Temperature remains above normal throughout the day and does not fluctuate more than 1 ï¿½C in 24 hours, e.g. lobar pneumonia, typhoid, meningitis, urinary tract infection, or typhus. Typhoid fever may show a specific fever pattern (Wunderlich curve of typhoid fever), with a slow stepwise increase and a high plateau', 'Saint Francis Receiving the Stigmata is the subject of two unsigned paintings, nearly identical except for their size, that were both completed around 1430. Art historians usually attribute them to the Flemish artist Jan van Eyck. The larger panel measures 29.3 cm Ã— 33.4 cm (11.5 in Ã— 13.1 in) and is in the Sabauda Gallery in Turin, Italy; the smaller panel is 12.7 cm Ã— 14.6 cm (5.0 in Ã— 5.7 in) and is in the Philadelphia Museum of Art. The paintings show Saint Francis of Assisi kneeling in front of detailed rock formations as he receives the stigmata of the crucified Christ on the palms of his hands and soles of his feet. A panoramic landscape seems to relegate the figures in the foreground to secondary importance. The Philadelphia wood panel comes from the same tree as that of two paintings definitively attributed to van Eyck, and the Italian panel has underdrawings of a quality that probably could only have come from him. Today the consensus is that both were painted by the same hand', 'Saint Francis Receiving the Stigmata is the subject of two unsigned paintings, nearly identical except for their size, that were both completed around 1430. Art historians usually attribute them to the Flemish artist Jan van Eyck. The larger panel measures 29.3 cm Ã— 33.4 cm (11.5 in Ã— 13.1 in) and is in the Sabauda Gallery in Turin, Italy; the smaller panel is 12.7 cm Ã— 14.6 cm (5.0 in Ã— 5.7 in) and is in the Philadelphia Museum of Art. The paintings show Saint Francis of Assisi kneeling in front of detailed rock formations as he receives the stigmata of the crucified Christ on the palms of his hands and soles of his feet. A panoramic landscape seems to relegate the figures in the foreground to secondary importance. The Philadelphia wood panel comes from the same tree as that of two paintings definitively attributed to van Eyck, and the Italian panel has underdrawings of a quality that probably could only have come from him. Today the consensus is that both were painted by the same hand', 'Saint Francis Receiving the Stigmata is the subject of two unsigned paintings, nearly identical except for their size, that were both completed around 1430. Art historians usually attribute them to the Flemish artist Jan van Eyck. The larger panel measures 29.3 cm Ã— 33.4 cm (11.5 in Ã— 13.1 in) and is in the Sabauda Gallery in Turin, Italy; the smaller panel is 12.7 cm Ã— 14.6 cm (5.0 in Ã— 5.7 in) and is in the Philadelphia Museum of Art. The paintings show Saint Francis of Assisi kneeling in front of detailed rock formations as he receives the stigmata of the crucified Christ on the palms of his hands and soles of his feet. A panoramic landscape seems to relegate the figures in the foreground to secondary importance. The Philadelphia wood panel comes from the same tree as that of two paintings definitively attributed to van Eyck, and the Italian panel has underdrawings of a quality that probably could only have come from him. Today the consensus is that both were painted by the same hand', '', '2019-12-14 18:19:05', '2019-12-14 18:19:05', NULL, NULL, NULL, 0, 0);
/*!40000 ALTER TABLE `medical_status` ENABLE KEYS */;

-- Dumping structure for table hie_db.message
DROP TABLE IF EXISTS `message`;
CREATE TABLE IF NOT EXISTS `message` (
  `message_id` int(11) DEFAULT NULL,
  `message` text,
  `from` varchar(50) DEFAULT NULL,
  `recipient` varchar(50) DEFAULT NULL,
  `received` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table hie_db.message: ~0 rows (approximately)
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
/*!40000 ALTER TABLE `message` ENABLE KEYS */;

-- Dumping structure for table hie_db.notification
DROP TABLE IF EXISTS `notification`;
CREATE TABLE IF NOT EXISTS `notification` (
  `notification_id` int(11) DEFAULT NULL,
  `message` text,
  `releated_case` text,
  `created_date` datetime DEFAULT NULL,
  `expired` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table hie_db.notification: ~0 rows (approximately)
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;

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
/*!40000 ALTER TABLE `otp_history` DISABLE KEYS */;
INSERT INTO `otp_history` (`id`, `aadhaar_num`, `otp`, `date_of_generation`) VALUES
	(1, '111122223333', '2851', '2019-07-31 22:48:21'),
	(2, '111122223334', '3432', '2019-07-31 22:45:39'),
	(3, '684107489589', '7172', '2019-07-31 22:45:46'),
	(4, '067318201127', '8569', '2019-07-31 22:45:51'),
	(5, '107909024793', '4849', '2019-07-31 22:45:55'),
	(6, '904511259779', '6512', '2019-07-31 22:46:14'),
	(7, '797079464231', '3647', '2019-07-31 22:46:19'),
	(8, '467269561688', '8860', '2019-11-22 15:05:06'),
	(9, '337590551318', '8519', '2019-07-31 22:48:29'),
	(10, '803283606472', '9244', '2019-07-31 22:48:33'),
	(11, '575424070074', '1544', '2019-07-31 22:48:37'),
	(12, '412620596040', '5798', '2019-07-31 22:48:41'),
	(13, '349110940796', '1511', '2019-09-05 22:53:12'),
	(14, '393371115804', '6370', '2019-12-16 19:30:22'),
	(15, '821504288186', '3254', '2019-12-16 19:29:27');
/*!40000 ALTER TABLE `otp_history` ENABLE KEYS */;

-- Dumping structure for table hie_db.request
DROP TABLE IF EXISTS `request`;
CREATE TABLE IF NOT EXISTS `request` (
  `request_id` int(11) DEFAULT NULL,
  `aadhaar_num` varchar(50) DEFAULT NULL,
  `request_details` tinytext,
  `request_date` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `complted_date` datetime DEFAULT NULL,
  `comment` tinyint(4) DEFAULT NULL,
  `documents` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table hie_db.request: ~0 rows (approximately)
/*!40000 ALTER TABLE `request` DISABLE KEYS */;
/*!40000 ALTER TABLE `request` ENABLE KEYS */;

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

-- Dumping data for table hie_db.user_auth: 4 rows
/*!40000 ALTER TABLE `user_auth` DISABLE KEYS */;
INSERT INTO `user_auth` (`aadhaar_num`, `privilege`, `role`, `session_start`, `session_id`) VALUES
	('821504288186', 1, 'administrator', NULL, NULL),
	('393371115804', 2, 'doctor', NULL, NULL),
	('', 0, 'basic_user', NULL, NULL),
	('467269561688', 0, 'basic_user', NULL, NULL);
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
  `image_uploaded` int(11) DEFAULT NULL,
  PRIMARY KEY (`aadhaar_num`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table hie_db.user_details: 4 rows
/*!40000 ALTER TABLE `user_details` DISABLE KEYS */;
INSERT INTO `user_details` (`aadhaar_num`, `first_name`, `middle_name`, `last_name`, `dob`, `gender`, `email`, `primary_contact`, `secondary_contact`, `zip`, `building`, `street`, `city`, `state`, `image_uploaded`) VALUES
	('821504288186', 'KARTHIKA', '', 'vijayan', '1999-02-06 00:00:00', 'F', 'karthikasyamjith@live.in', '8423948023', '', '644564', 'asdasd', 'asd', 'asdasd', 'Uttar Pradesh', NULL),
	('467269561688', 'adasd', '', 'asdasasd', '1970-01-01 00:00:00', 'M', 'asdsad@asd.com', '5324545435', '3453453453', '242342', 'aasdasd', 'asdsad', 'asdasd', 'Maharashtra', NULL),
	('', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('393371115804', 'Vishnu', '', 'Vijayan', '1996-12-02 00:00:00', 'M', 'vishnuvijayan@gmail.com', '7454897854', '8454546542', '686662', 'FLAT', 'ADDRESS', 'ERANAKULAM', 'Kerala', 1);
/*!40000 ALTER TABLE `user_details` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
