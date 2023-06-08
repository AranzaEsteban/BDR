#
# TABLE STRUCTURE FOR: account
#

DROP TABLE IF EXISTS `account`;

CREATE TABLE `account` (
  `Account_ID` int(11) NOT NULL AUTO_INCREMENT,
  `District_ID` int(11) DEFAULT NULL,
  `frecuency` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`Account_ID`),
  KEY `District_ID` (`District_ID`),
  CONSTRAINT `account_ibfk_1` FOREIGN KEY (`District_ID`) REFERENCES `district` (`District_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# TABLE STRUCTURE FOR: card
#

DROP TABLE IF EXISTS `card`;

CREATE TABLE `card` (
  `Card_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Disp_ID` int(11) DEFAULT NULL,
  `type1` varchar(16) DEFAULT NULL,
  `issued` date DEFAULT NULL,
  PRIMARY KEY (`Card_ID`),
  KEY `Disp_ID` (`Disp_ID`),
  CONSTRAINT `card_ibfk_1` FOREIGN KEY (`Disp_ID`) REFERENCES `disp` (`Disp_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# TABLE STRUCTURE FOR: client
#

DROP TABLE IF EXISTS `client`;

CREATE TABLE `client` (
  `Client_ID` int(11) NOT NULL AUTO_INCREMENT,
  `birth_date` date DEFAULT NULL,
  `District_ID` int(11) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Client_ID`),
  KEY `District_ID` (`District_ID`),
  CONSTRAINT `client_ibfk_1` FOREIGN KEY (`District_ID`) REFERENCES `district` (`District_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# TABLE STRUCTURE FOR: disp
#

DROP TABLE IF EXISTS `disp`;

CREATE TABLE `disp` (
  `Disp_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Client_ID` int(11) DEFAULT NULL,
  `Account_ID` int(11) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Disp_ID`),
  KEY `Client_ID` (`Client_ID`),
  KEY `Account_ID` (`Account_ID`),
  CONSTRAINT `disp_ibfk_1` FOREIGN KEY (`Client_ID`) REFERENCES `client` (`Client_ID`),
  CONSTRAINT `disp_ibfk_2` FOREIGN KEY (`Account_ID`) REFERENCES `account` (`Account_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# TABLE STRUCTURE FOR: district
#

DROP TABLE IF EXISTS `district`;

CREATE TABLE `district` (
  `District_ID` int(11) NOT NULL AUTO_INCREMENT,
  `A2` varchar(10) DEFAULT NULL,
  `A3` varchar(10) DEFAULT NULL,
  `A4` varchar(10) DEFAULT NULL,
  `A5` varchar(10) DEFAULT NULL,
  `A6` varchar(10) DEFAULT NULL,
  `A7` varchar(10) DEFAULT NULL,
  `A8` varchar(10) DEFAULT NULL,
  `A9` varchar(10) DEFAULT NULL,
  `A10` varchar(10) DEFAULT NULL,
  `A11` varchar(10) DEFAULT NULL,
  `A12` varchar(10) DEFAULT NULL,
  `A13` varchar(10) DEFAULT NULL,
  `A14` int(11) DEFAULT NULL,
  `A15` int(11) DEFAULT NULL,
  `A16` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`District_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (1, 'British Vi', 'Suite 458', 'Kansas', 'NM', 'stad', 'Island', '7060', 'Jacobiside', 'Leann Brid', '193 Hegman', 'Port Nicho', 'Steuber Sh', 33438, 71759, '9060 Littl');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (2, 'Switzerlan', 'Apt. 930', 'Louisiana', 'ID', 'burgh', 'Passage', '499', 'North Loui', 'Zaria Driv', '204 Kiara ', 'Pfannersti', 'Kevon Junc', 745, 7073, '00956 Lemk');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (3, 'Bhutan', 'Apt. 622', 'California', 'KY', 'bury', 'Summit', '53735', 'Greenholts', 'Jayda Ford', '22284 Pear', 'Benedictto', 'Rhoda Pike', 92841, 6073, '870 Dale P');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (4, 'Israel', 'Apt. 966', 'Massachuse', 'OK', 'stad', 'Alley', '43443', 'Lake Cecil', 'Lula Strea', '73503 Scha', 'Port Grace', 'Hilll Isla', 447, 95387, '94322 Ober');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (5, 'Serbia', 'Apt. 982', 'Washington', 'TN', 'burgh', 'Way', '997', 'Palmaside', 'Grayson La', '88915 Ceci', 'West Natmo', 'Madaline R', 1635, 53868, '9619 Kling');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (6, 'Estonia', 'Apt. 809', 'California', 'ME', 'ville', 'Parkways', '744', 'Bartonstad', 'Vallie Fer', '83579 Lean', 'Pricestad', 'Schaefer S', 319, 97439, '64871 Sean');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (7, 'Martinique', 'Apt. 938', 'Texas', 'RI', 'mouth', 'Tunnel', '54840', 'New Braden', 'Rohan Forg', '4203 Kaley', 'North Ramo', 'Dibbert Hi', 6466, 65696, '9431 Jerde');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (8, 'Nigeria', 'Suite 880', 'Florida', 'OH', 'burgh', 'Locks', '767', 'New Alicia', 'Zboncak Mi', '432 Ayana ', 'West Desti', 'Vickie Sta', 80, 38805, '7524 Giova');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (9, 'Slovenia', 'Suite 287', 'Oklahoma', 'IL', 'stad', 'Shoals', '7313', 'Coltland', 'Sigurd Sky', '468 Altenw', 'South Vero', 'Blick Stra', 61641, 95424, '110 Kristi');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (10, 'Kyrgyz Rep', 'Suite 729', 'NewMexico', 'ID', 'mouth', 'Locks', '51578', 'Schillerfo', 'Elijah Fla', '02580 Doyl', 'South Leop', 'Flatley Mi', 38386, 55586, '3804 Eulal');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (11, 'American S', 'Apt. 771', 'Idaho', 'CT', 'haven', 'Landing', '879', 'Port Coope', 'Willie Key', '34581 Howe', 'Frederickv', 'Dach Cours', 920, 49770, '609 Lemke ');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (12, 'Saint Mart', 'Apt. 941', 'Louisiana', 'IA', 'stad', 'Courts', '83971', 'Priceborou', 'McKenzie I', '768 Shyann', 'North Glor', 'Langworth ', 950, 60441, '71413 Hauc');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (13, 'South Afri', 'Apt. 603', 'NorthCarol', 'MT', 'berg', 'Orchard', '296', 'Reinholdla', 'Chadd Caus', '82593 Murl', 'New Dusty', 'Robel Stra', 21548, 41886, '69507 Arac');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (14, 'Paraguay', 'Apt. 258', 'Delaware', 'NE', 'fort', 'Ways', '7285', 'West Bever', 'Heathcote ', '36179 Wuck', 'Jamarcusfo', 'Hartmann S', 445, 88465, '965 Harvey');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (15, 'Barbados', 'Apt. 590', 'Utah', 'FL', 'chester', 'Estate', '772', 'Aiyanavill', 'Dach Rest', '30387 Halv', 'Port Marjo', 'Heaney Lak', 57919, 21337, '2849 Chari');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (16, 'Guadeloupe', 'Suite 004', 'NewHampshi', 'AL', 'ville', 'Wells', '2593', 'Port Franc', 'Jacobi Mil', '115 Stanto', 'Lake Jeani', 'Powlowski ', 33323, 54272, '82155 Cali');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (17, 'Cocos (Kee', 'Apt. 292', 'Hawaii', 'CT', 'shire', 'Valley', '7885', 'West Patie', 'Erin Ferry', '77829 Jarv', 'Adonishave', 'Goyette Ov', 332, 98909, '80832 Wilb');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (18, 'Switzerlan', 'Apt. 472', 'SouthCarol', 'CO', 'ton', 'Station', '0946', 'New Maia', 'Lexus Rue', '637 Micael', 'Port Jerry', 'Nona Point', 1, 29883, '15182 Hank');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (19, 'Turks and ', 'Suite 524', 'Illinois', 'WI', 'side', 'Lodge', '84202', 'Lake Aurel', 'Adams Rapi', '53126 Huel', 'Kassulkevi', 'Kelsie Ext', 5268, 39284, '6021 Larso');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (20, 'Kiribati', 'Apt. 017', 'Tennessee', 'ME', 'bury', 'Common', '57348', 'Breitenber', 'Gleason Un', '3246 Upton', 'Steubermou', 'Alverta Co', 5417, 57932, '37583 Gutk');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (21, 'Mauritania', 'Apt. 170', 'Nevada', 'DE', 'haven', 'Lock', '6678', 'South Marg', 'Kuhic Orch', '70458 Hirt', 'West Calei', 'Satterfiel', 38685, 10285, '848 Boehm ');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (22, 'Mali', 'Apt. 608', 'Iowa', 'LA', 'land', 'Way', '3199', 'Fredaborou', 'Antonio Br', '4895 Grove', 'North Jany', 'Kling Gard', 6138, 33445, '10335 Cron');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (23, 'Slovenia', 'Apt. 098', 'SouthCarol', 'IN', 'side', 'Crossroad', '4726', 'Lake Reyfu', 'Anderson V', '0149 Moen ', 'Port Othos', 'Sarah Via', 2742, 87471, '83776 Adon');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (24, 'Dominica', 'Suite 936', 'Oregon', 'MD', 'berg', 'Garden', '48458', 'Kulasview', 'Rolfson Po', '00272 Osca', 'Grimesboro', 'Batz Strav', 189, 51469, '7205 Boehm');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (25, 'Marshall I', 'Suite 864', 'Indiana', 'RI', 'mouth', 'Ports', '389', 'Reynoldsto', 'Murray Gre', '124 Albert', 'Lake Glend', 'Blick Cove', 770, 21869, '886 Cortez');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (26, 'American S', 'Suite 388', 'Massachuse', 'WA', 'mouth', 'Court', '3722', 'North Dixi', 'Schaden Pi', '120 Klocko', 'Carrollche', 'Terry Pass', 3536, 25677, '16344 Mabe');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (27, 'Greenland', 'Suite 469', 'RhodeIslan', 'OH', 'side', 'Villages', '13415', 'South Leop', 'Ellie Miss', '026 Kub Ha', 'Morissette', 'Ernser Bri', 971, 71783, '7161 Predo');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (28, 'Western Sa', 'Suite 128', 'Maine', 'MD', 'town', 'Prairie', '23016', 'New Lillia', 'Claudie Li', '39296 Runo', 'West Trudi', 'Spencer Co', 76677, 72940, '6066 Mille');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (29, 'Cote d\'Ivo', 'Suite 856', 'NewYork', 'AR', 'shire', 'Park', '826', 'Jacobsonbo', 'Matt Rapid', '207 Aubree', 'Port Mateo', 'DuBuque Is', 129, 55588, '12990 Absh');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (30, 'Latvia', 'Apt. 376', 'Montana', 'RI', 'land', 'Trafficway', '2215', 'Maiamouth', 'Celestine ', '80627 Colu', 'Lake Emely', 'Moen Green', 5965, 46571, '783 Brady ');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (31, 'Lithuania', 'Suite 383', 'Colorado', 'NC', 'mouth', 'Lodge', '45027', 'Feilcheste', 'Hane Via', '5041 Sunny', 'Kilbackshi', 'Luettgen T', 699, 30460, '219 Maymie');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (32, 'Mali', 'Suite 814', 'Nebraska', 'OK', 'ton', 'Locks', '21480', 'Lake Ervin', 'Hamill Cau', '53390 Deni', 'New Giusep', 'Barton Via', 664, 38223, '0662 Volkm');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (33, 'Hong Kong', 'Apt. 352', 'Alaska', 'ME', 'ville', 'Islands', '2134', 'Port Lotti', 'Myron Ranc', '1280 Alysh', 'Lake Sydne', 'Schroeder ', 1732, 74430, '798 Winthe');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (34, 'Cocos (Kee', 'Apt. 289', 'Maryland', 'OK', 'mouth', 'Crossroad', '509', 'Letitiabur', 'Vena Wall', '782 Lemke ', 'Kleintown', 'Muriel Gro', 519, 8383, '2852 Keely');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (35, 'Andorra', 'Apt. 646', 'Wisconsin', 'NE', 'shire', 'Run', '088', 'West Georg', 'Janiya Cou', '0983 Cryst', 'South Lind', 'Mark Via', 451, 67809, '997 Ratke ');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (36, 'Lebanon', 'Apt. 744', 'Maine', 'MD', 'furt', 'River', '60945', 'Cullenburg', 'Margarete ', '5437 Stant', 'South Cynt', 'Gennaro Gr', 637, 68948, '031 Okunev');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (37, 'Rwanda', 'Suite 922', 'Arizona', 'VA', 'side', 'Ports', '5799', 'South Alay', 'Bogisich M', '5527 Brant', 'Gulgowskit', 'Predovic W', 276, 53147, '444 Freder');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (38, 'Kazakhstan', 'Apt. 317', 'NewMexico', 'IL', 'mouth', 'Fort', '4508', 'Port Lexus', 'Chaz Pine', '5602 Kutch', 'Deionfort', 'Little Har', 58906, 30518, '190 Hoppe ');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (39, 'Argentina', 'Apt. 281', 'Arkansas', 'WV', 'borough', 'Keys', '892', 'North Clai', 'Grimes Lan', '86030 Glov', 'Port Tamia', 'Casandra C', 21144, 32125, '6703 Pagac');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (40, 'Ecuador', 'Suite 684', 'NewMexico', 'ND', 'shire', 'Burgs', '30155', 'East River', 'Camille Fo', '779 Edyth ', 'Homenickst', 'Terry Squa', 18511, 83123, '97081 Dayn');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (41, 'Kenya', 'Suite 097', 'Arkansas', 'WI', 'bury', 'Corner', '506', 'New Kellie', 'Deckow Way', '897 Felici', 'Martinfort', 'Smitham Pr', 7669, 36763, '682 Hand H');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (42, 'Korea', 'Apt. 443', 'NorthDakot', 'NE', 'haven', 'Expressway', '911', 'Beierchest', 'Heidenreic', '90446 Emil', 'Arnemouth', 'Berge Curv', 397, 7987, '6603 Fries');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (43, 'Christmas ', 'Suite 799', 'Georgia', 'DE', 'side', 'Locks', '195', 'New Monty', 'McLaughlin', '179 Nigel ', 'Marysefort', 'Nitzsche M', 633, 13975, '304 Schmel');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (44, 'Madagascar', 'Suite 660', 'Virginia', 'OK', 'mouth', 'Lights', '404', 'Filomenast', 'Rachel Rou', '8931 Hamil', 'Torphaven', 'Tiana Spri', 22254, 47734, '586 Gerald');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (45, 'Azerbaijan', 'Suite 943', 'Pennsylvan', 'FL', 'fort', 'Corner', '2835', 'Morarberg', 'Homenick I', '354 Hugh M', 'Carterstad', 'Letha Rue', 94624, 5283, '2773 Trist');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (46, 'Solomon Is', 'Suite 389', 'Maryland', 'IA', 'burgh', 'Place', '8321', 'Torpfurt', 'Murray Bur', '8753 Jamil', 'North Made', 'Boyle Plaz', 781, 5019, '552 Fay Ne');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (47, 'Cote d\'Ivo', 'Apt. 219', 'Arkansas', 'HI', 'port', 'Green', '8491', 'South Cedr', 'Greenfelde', '4161 Walke', 'Isobelboro', 'Considine ', 62044, 49559, '652 Dawson');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (48, 'Andorra', 'Suite 239', 'Wyoming', 'ND', 'shire', 'Crossroad', '3986', 'Ferrytown', 'Shirley Po', '92699 Berg', 'Wainoborou', 'Keebler Ra', 8308, 36972, '980 Josh O');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (49, 'Northern M', 'Apt. 137', 'NorthDakot', 'MD', 'furt', 'Ramp', '5555', 'Barbarache', 'Vena Drive', '235 Graham', 'Wolffurt', 'Adrien Lan', 436, 40711, '196 Crooks');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (50, 'Taiwan', 'Apt. 453', 'Nevada', 'AZ', 'view', 'Mills', '9528', 'Port Alyss', 'Kemmer Hei', '7639 Bosco', 'Josefaburg', 'Nils Camp', 68421, 79018, '94925 Weld');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (51, 'Saint Bart', 'Apt. 643', 'Louisiana', 'CA', 'town', 'Heights', '7728', 'West Jessy', 'Erdman Cro', '1356 Pouro', 'Jaquelinec', 'Stehr Isla', 2771, 77054, '50074 Goye');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (52, 'Comoros', 'Apt. 708', 'Alabama', 'OK', 'burgh', 'Course', '681', 'Andrewvill', 'Polly Rest', '83664 Shir', 'Stephanies', 'Jaskolski ', 850, 41289, '4164 Javon');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (53, 'Honduras', 'Apt. 156', 'Nebraska', 'IN', 'mouth', 'Common', '1699', 'New Rebecc', 'Nakia Lock', '8643 Earne', 'Ludiebury', 'Emmerich B', 20192, 85661, '97596 Vada');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (54, 'Lao People', 'Apt. 099', 'Delaware', 'CO', 'haven', 'Divide', '56040', 'Lake Wanda', 'Lavina Mis', '70572 Jack', 'Port Odell', 'Bartoletti', 7924, 89292, '9938 Carte');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (55, 'Venezuela', 'Suite 679', 'Louisiana', 'MD', 'ville', 'Shore', '66479', 'North Bert', 'Dena View', '597 Cummer', 'Cummingsbu', 'Spencer Sp', 61131, 44507, '00999 Keeg');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (56, 'Ethiopia', 'Apt. 925', 'Delaware', 'HI', 'ville', 'Inlet', '004', 'Lake Elise', 'Lemke High', '420 Homeni', 'Mikaylamou', 'Grant View', 275, 60601, '2145 Pfann');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (57, 'Bolivia', 'Apt. 035', 'Alaska', 'DE', 'fort', 'Glens', '467', 'East Ediso', 'Reyes Comm', '697 Nicola', 'Claudiaber', 'Ullrich Dr', 97, 88257, '735 Farrel');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (58, 'Saint Vinc', 'Apt. 602', 'Nevada', 'OH', 'furt', 'Ville', '137', 'Taylorstad', 'Zackery Me', '0928 Const', 'Damontown', 'Hassie Cre', 19512, 10487, '5986 Raque');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (59, 'Iran', 'Suite 553', 'Alabama', 'GA', 'borough', 'Road', '426', 'West Brice', 'Volkman Ha', '131 Armani', 'Staceyboro', 'Stefanie B', 7033, 78602, '936 Shield');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (60, 'Zambia', 'Apt. 843', 'SouthDakot', 'WI', 'mouth', 'Tunnel', '187', 'East Camry', 'Bertrand T', '21137 Funk', 'Lake Frede', 'Giovanni L', 1440, 31502, '62626 Kula');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (61, 'Montenegro', 'Suite 314', 'SouthCarol', 'RI', 'berg', 'Alley', '588', 'Port Karol', 'Devante Ro', '751 Kraig ', 'South Lind', 'Kozey Lock', 474, 9159, '37416 Nich');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (62, 'Reunion', 'Suite 482', 'Massachuse', 'GA', 'burgh', 'Junctions', '778', 'West Moham', 'Dahlia Mil', '329 Leusch', 'Bechtelarf', 'O\'Conner R', 9035, 68115, '15713 Virg');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (63, 'Switzerlan', 'Suite 336', 'Wyoming', 'NV', 'borough', 'Overpass', '8877', 'Elvamouth', 'Rolando Mi', '2322 Kamil', 'Zulaufport', 'Swift Land', 7761, 12642, '90793 Dene');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (64, 'Cambodia', 'Suite 332', 'Nevada', 'HI', 'borough', 'Hill', '657', 'Whitehaven', 'Stark Cent', '74702 Aman', 'Lynchbury', 'Carter For', 1998, 97658, '281 Botsfo');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (65, 'Ghana', 'Apt. 110', 'SouthDakot', 'SC', 'land', 'Mountains', '64188', 'Port Jacly', 'Priscilla ', '6610 Marqu', 'Abernathym', 'Schulist F', 58307, 56549, '8469 Allan');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (66, 'France', 'Suite 287', 'Florida', 'MS', 'town', 'Island', '575', 'Lynchmouth', 'Nicolas Ca', '64378 Halv', 'Daphneybur', 'Dietrich C', 3160, 87482, '16894 Mill');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (67, 'Saudi Arab', 'Suite 446', 'Indiana', 'ND', 'ville', 'Plaza', '9719', 'Betteland', 'Mattie Pra', '610 Jade M', 'West Rasha', 'Nelle Spri', 66572, 29144, '44370 Hami');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (68, 'Papua New ', 'Apt. 512', 'Maryland', 'OR', 'chester', 'Flats', '0642', 'New Jerald', 'Jordan Loa', '1398 Jaime', 'Victorside', 'Aniya Comm', 9379, 95190, '75455 Ratk');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (69, 'Liberia', 'Apt. 138', 'Oklahoma', 'OK', 'berg', 'Haven', '7145', 'South Lave', 'Rolando By', '06248 Otil', 'New Tressi', 'Esta Mount', 7261, 5376, '36672 Kend');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (70, 'San Marino', 'Suite 987', 'Alaska', 'AK', 'burgh', 'Plaza', '429', 'Dachcheste', 'Zora Valle', '749 Westle', 'Eulaside', 'Gabe Land', 213, 10090, '002 Waelch');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (71, 'Trinidad a', 'Apt. 932', 'WestVirgin', 'FL', 'furt', 'Pass', '1016', 'South Otti', 'Weber Ways', '9159 Vivia', 'Mayeland', 'Elwyn Stre', 220, 91709, '504 Hubert');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (72, 'Guinea-Bis', 'Apt. 118', 'Arkansas', 'FL', 'burgh', 'Shoal', '8578', 'Hillsport', 'Jayson Wel', '67875 Fade', 'Kennybury', 'Heaven Pla', 212, 28432, '590 Schuyl');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (73, 'Spain', 'Suite 192', 'Montana', 'DE', 'fort', 'Plaza', '418', 'Port Diamo', 'Feil Hollo', '93051 Creo', 'East Ronal', 'Ceasar Rap', 220, 25812, '85328 Zula');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (74, 'Pakistan', 'Suite 211', 'Colorado', 'NE', 'mouth', 'Pine', '5448', 'Juwanstad', 'Scottie Da', '371 Hegman', 'West Janae', 'Dibbert Fo', 9325, 51934, '2678 Hayes');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (75, 'Martinique', 'Apt. 961', 'Nebraska', 'ID', 'port', 'Cove', '1217', 'Lake Dariu', 'Roberto Mi', '205 Josefi', 'New Bruce', 'Assunta Sh', 57521, 95325, '1141 Welch');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (76, 'Mali', 'Apt. 201', 'Vermont', 'OK', 'fort', 'Rue', '6206', 'South Arde', 'Jena Ranch', '025 Jena P', 'Jettmouth', 'Reta Commo', 3923, 92721, '843 Toy Wa');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (77, 'Marshall I', 'Suite 092', 'Iowa', 'NH', 'view', 'Cliffs', '148', 'West Chels', 'Roob Road', '142 August', 'Jolieside', 'Kelvin Cen', 3666, 82424, '253 Imelda');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (78, 'Thailand', 'Suite 253', 'Tennessee', 'PA', 'shire', 'Crossing', '32060', 'Kingville', 'Griffin Tu', '04519 Stie', 'Kshlerinfu', 'Camren Isl', 356, 10747, '33358 Anab');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (79, 'India', 'Apt. 378', 'Kentucky', 'MN', 'haven', 'Court', '741', 'Port Juniu', 'Walker Lig', '8886 Marqu', 'Darrinbury', 'Gutkowski ', 769, 33953, '91509 Dary');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (80, 'Guam', 'Apt. 294', 'Virginia', 'NH', 'land', 'Harbors', '67393', 'Leslyfort', 'Nova Cross', '410 Orlo H', 'Rutherford', 'William Fo', 61597, 30792, '27548 Reic');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (81, 'Gibraltar', 'Apt. 484', 'Washington', 'TN', 'berg', 'Keys', '635', 'Jordanefur', 'Kshlerin M', '590 Marge ', 'East Enriq', 'Faye Flat', 99556, 18853, '1459 Beth ');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (82, 'Cook Islan', 'Suite 490', 'Kansas', 'OK', 'ville', 'Heights', '304', 'New Tobinh', 'Renner Dam', '559 Zbonca', 'Sauerview', 'Ambrose Pa', 68152, 59288, '6357 Ignac');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (83, 'Falkland I', 'Suite 330', 'RhodeIslan', 'TN', 'side', 'Meadows', '754', 'New Kasand', 'Armstrong ', '67621 Caro', 'Brooklynbo', 'Wehner Ram', 936, 52203, '61684 Sydn');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (84, 'Uruguay', 'Apt. 203', 'Wyoming', 'MI', 'haven', 'Mews', '7419', 'North Adri', 'Casper Cre', '09778 Star', 'Elvieton', 'O\'Conner L', 11690, 38256, '78494 Yvon');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (85, 'Madagascar', 'Apt. 297', 'Colorado', 'IN', 'berg', 'Tunnel', '85367', 'South Alex', 'Wyman Port', '9882 Glove', 'North Nell', 'Jenkins Sh', 766, 61672, '077 Kuhlma');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (86, 'Bahrain', 'Apt. 936', 'Pennsylvan', 'KY', 'burgh', 'Mill', '86373', 'North Edga', 'Josianne L', '627 Wilkin', 'Carterland', 'Mante Summ', 8682, 67622, '771 Jacobs');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (87, 'Guernsey', 'Apt. 771', 'Missouri', 'AK', 'fort', 'Divide', '07541', 'Port Ampar', 'Dimitri La', '40370 Zbon', 'O\'Keefevie', 'Marjory Ke', 5114, 30396, '32319 Kenn');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (88, 'Monaco', 'Apt. 232', 'Nebraska', 'MI', 'mouth', 'Point', '275', 'South Bren', 'Arno Freew', '30825 Lebs', 'Boscofort', 'Cummings S', 52670, 23250, '6083 Kulas');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (89, 'Mexico', 'Apt. 687', 'Hawaii', 'PA', 'burgh', 'Isle', '288', 'Kelsishire', 'Carter Isl', '9191 Robin', 'Port Fabia', 'Leon Wells', 17178, 44600, '592 Sigurd');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (90, 'Georgia', 'Suite 445', 'Ohio', 'HI', 'haven', 'Isle', '809', 'Streichber', 'Alaina Ave', '661 Block ', 'Dejaton', 'Collins Fo', 7897, 79257, '29641 Hask');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (91, 'Seychelles', 'Apt. 006', 'Alaska', 'TX', 'ville', 'Via', '707', 'South Ramo', 'Jaydon Gre', '186 Erdman', 'Prohaskafu', 'Blanda For', 389, 44070, '964 Hester');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (92, 'Saint Mart', 'Apt. 471', 'Hawaii', 'MA', 'town', 'Mission', '958', 'Lake Grego', 'Larry Club', '79779 Jayl', 'New Elvis', 'Ambrose Lo', 84463, 71055, '60413 Gage');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (93, 'Chile', 'Apt. 788', 'Kansas', 'GA', 'burgh', 'Court', '53836', 'Tadland', 'Ledner Str', '622 Bayer ', 'Kentontown', 'Collier St', 59067, 2775, '04753 Robe');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (94, 'Cook Islan', 'Suite 900', 'Tennessee', 'ID', 'stad', 'Wall', '14888', 'West Aniba', 'Evie Locks', '351 Anjali', 'Port Nikit', 'Leffler Sq', 6140, 42263, '589 Reinho');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (95, 'Burundi', 'Suite 078', 'Delaware', 'OR', 'bury', 'Turnpike', '544', 'Marilynefu', 'Mabelle Vi', '907 Robert', 'Emilshire', 'Hildegard ', 7625, 25801, '31219 Schu');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (96, 'Portugal', 'Suite 210', 'Kentucky', 'AZ', 'bury', 'Mount', '3923', 'Bauchmouth', 'Summer Orc', '65962 Elli', 'West Freed', 'Pat Grove', 64584, 24503, '812 Smith ');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (97, 'Kuwait', 'Suite 642', 'Missouri', 'MI', 'side', 'Parkways', '739', 'South Elli', 'Colin Spur', '892 Hilll ', 'Oberbrunne', 'Weimann Cr', 492, 95326, '72373 Mitc');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (98, 'Turkmenist', 'Apt. 093', 'Nebraska', 'TN', 'fort', 'Gardens', '233', 'East Dorot', 'Kub Curve', '17754 Arvi', 'Leonardvil', 'Marlin Hav', 79127, 92699, '790 Ulises');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (99, 'Armenia', 'Suite 453', 'Hawaii', 'MO', 'burgh', 'Brook', '254', 'West Brans', 'Camryn Sky', '44633 Ande', 'Angeloshir', 'Corene Wel', 5474, 93897, '93764 Jaco');
INSERT INTO `district` (`District_ID`, `A2`, `A3`, `A4`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `A12`, `A13`, `A14`, `A15`, `A16`) VALUES (100, 'Saint Hele', 'Suite 630', 'Nevada', 'OK', 'land', 'Green', '092', 'Lake Charl', 'Leffler Tr', '588 Cruz V', 'New Veroni', 'Morissette', 488, 68793, '322 Graham');


#
# TABLE STRUCTURE FOR: loan
#

DROP TABLE IF EXISTS `loan`;

CREATE TABLE `loan` (
  `Loan_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Account_ID` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `payments` decimal(10,0) DEFAULT NULL,
  `status` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`Loan_ID`),
  KEY `Account_ID` (`Account_ID`),
  CONSTRAINT `loan_ibfk_1` FOREIGN KEY (`Account_ID`) REFERENCES `account` (`Account_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# TABLE STRUCTURE FOR: orders
#

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `Order_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Account_ID` int(11) DEFAULT NULL,
  `bank_to` varchar(16) DEFAULT NULL,
  `account_to` int(11) DEFAULT NULL,
  `amount` decimal(10,0) DEFAULT NULL,
  `k_symbol` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`Order_ID`),
  KEY `Account_ID` (`Account_ID`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`Account_ID`) REFERENCES `account` (`Account_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# TABLE STRUCTURE FOR: trans
#

DROP TABLE IF EXISTS `trans`;

CREATE TABLE `trans` (
  `Trans_ID` int(11) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `Account_ID` int(11) DEFAULT NULL,
  `type` varchar(3) DEFAULT NULL,
  `operation` varchar(3) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL,
  `k_symbol` varchar(6) DEFAULT NULL,
  `bank` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Trans_ID`),
  KEY `Account_ID` (`Account_ID`),
  CONSTRAINT `trans_ibfk_1` FOREIGN KEY (`Account_ID`) REFERENCES `account` (`Account_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

