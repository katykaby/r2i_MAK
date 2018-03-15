-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 14, 2018 at 11:04 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_r2i`
--

-- --------------------------------------------------------

--
-- Table structure for table `nro`
--

CREATE TABLE `nro` (
  `id_nro` int(11) NOT NULL,
  `lib_nro` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nro`
--

INSERT INTO `nro` (`id_nro`, `lib_nro`) VALUES
(3, 'MIC13'),
(4, 'FAC34'),
(5, 'BRI44'),
(6, 'MOU92'),
(7, 'ALB91'),
(8, 'FAB92'),
(9, 'COM95'),
(10, 'ROU92'),
(11, 'PEL92'),
(12, 'VIC92'),
(13, 'CHA92'),
(14, 'REB92'),
(15, 'HEB92'),
(16, 'CBV92'),
(17, 'CDG92'),
(140, 'AZA92'),
(141, 'LOG77'),
(142, 'VAI93'),
(143, 'BAR93'),
(144, 'ALL93'),
(145, 'BAB93'),
(146, 'SEM93'),
(147, 'DEL95'),
(148, 'HOR93'),
(149, 'BOI93'),
(150, 'BAU93'),
(151, 'NSG93'),
(152, 'CAR94'),
(153, 'FRA94'),
(154, 'LAF94'),
(155, 'ROU94'),
(156, 'VAI94'),
(157, 'VIE94'),
(158, 'COL59'),
(159, 'ISL59'),
(160, 'LYA59'),
(161, 'REG59'),
(162, 'WAZ59'),
(163, 'QUE45'),
(164, 'SOU45'),
(165, 'GRA86'),
(166, 'PAT86'),
(167, 'TOU86'),
(168, 'BR137'),
(169, 'RC137'),
(170, 'BEA44'),
(872, 'LUC44'),
(873, 'SCH44'),
(874, 'VIV44'),
(875, 'CHE35'),
(876, 'JOU35'),
(877, 'MAG35'),
(878, 'MET35'),
(879, 'ROA76'),
(880, 'ROB76'),
(881, '4AA54'),
(882, '4BE54'),
(883, 'ARL57'),
(884, 'PDA57'),
(885, 'SAB57'),
(886, 'CHA67'),
(887, 'SCH67'),
(888, 'VIC67'),
(889, 'ZOR67'),
(890, 'DEL63'),
(891, 'FLA63'),
(892, 'LAV63'),
(893, 'SAL63'),
(894, 'COU42'),
(895, 'CHA69'),
(896, 'SPV69'),
(897, 'IMB69'),
(898, 'BEL69'),
(899, 'SAL69'),
(900, 'BER69'),
(901, 'CUV69'),
(902, 'DEL69'),
(903, 'GRA69'),
(904, 'PEI69'),
(905, 'HER38'),
(906, 'MEY38'),
(907, 'STA38'),
(908, 'YCL38'),
(909, 'BAS33'),
(910, 'BDN33'),
(911, 'CAU33'),
(912, 'CHE33'),
(913, 'MEK33'),
(914, 'BER31'),
(915, 'FON31'),
(916, 'GLO31'),
(917, 'ITA31'),
(918, 'LOT31'),
(919, 'REC31'),
(920, 'UNI31'),
(921, 'BER34'),
(922, 'FAU34'),
(923, 'FLA34'),
(924, 'GAM34'),
(925, 'JAN34'),
(926, 'LAV34'),
(927, 'RAV34'),
(928, 'RIC34'),
(929, 'NAT13'),
(930, 'ALL13'),
(931, 'MER13'),
(933, 'VIN13'),
(934, 'RED13'),
(935, 'SAN13'),
(936, 'BOC06'),
(937, 'CAN06'),
(938, 'NIC06'),
(939, 'TCA83'),
(940, 'TRO83'),
(941, 'TSM83'),
(942, '12345ABC'),
(943, 'SMA06'),
(944, 'JOF06'),
(945, 'VAU06'),
(946, 'VLL06'),
(947, 'BON06'),
(948, 'SVA92'),
(949, 'GRU92'),
(950, 'MAI92'),
(952, 'GAL92'),
(953, 'JUI92'),
(955, 'POI92'),
(956, 'REP92'),
(957, 'DEB92'),
(959, 'TEH91'),
(960, 'ROU91'),
(961, 'SLO13');

-- --------------------------------------------------------

--
-- Table structure for table `profil_utilisateur`
--

CREATE TABLE `profil_utilisateur` (
  `id_profile_utilisateur` int(11) NOT NULL,
  `lib_profile_utilisateur` varchar(255) DEFAULT NULL,
  `short_lib` char(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profil_utilisateur`
--

INSERT INTO `profil_utilisateur` (`id_profile_utilisateur`, `lib_profile_utilisateur`, `short_lib`) VALUES
(1, 'chef de projet', 'cdp');

-- --------------------------------------------------------

--
-- Table structure for table `projet`
--

CREATE TABLE `projet` (
  `id_projet` int(11) NOT NULL,
  `projet_nom` varchar(100) NOT NULL,
  `id_select_ville` int(11) DEFAULT NULL,
  `id_nro` int(11) NOT NULL,
  `id_site_origine_type` int(11) DEFAULT NULL,
  `id_site_origine_etat` int(11) DEFAULT NULL,
  `id_utilisateur` char(10) NOT NULL,
  `trigram_depart` varchar(60) DEFAULT NULL,
  `type_site_origine` int(11) DEFAULT NULL,
  `taille` int(11) DEFAULT NULL,
  `etat_site_origine` int(11) DEFAULT NULL,
  `date_mad_site_origine` date DEFAULT NULL,
  `date_creation` date NOT NULL,
  `date_attribution` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projet`
--

INSERT INTO `projet` (`id_projet`, `projet_nom`, `id_select_ville`, `id_nro`, `id_site_origine_type`, `id_site_origine_etat`, `id_utilisateur`, `trigram_depart`, `type_site_origine`, `taille`, `etat_site_origine`, `date_mad_site_origine`, `date_creation`, `date_attribution`) VALUES
(1, 'test', 5, 4, 1, 2, '1', 'test123', 1, 3, 2, '2018-03-21', '2018-03-01', '2018-03-23');

-- --------------------------------------------------------

--
-- Table structure for table `select_site_origine_etat`
--

CREATE TABLE `select_site_origine_etat` (
  `id_site_origine_etat` int(11) NOT NULL,
  `lib_site_origine_etat` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `select_site_origine_etat`
--

INSERT INTO `select_site_origine_etat` (`id_site_origine_etat`, `lib_site_origine_etat`) VALUES
(1, 'Promesse'),
(2, 'Acquis'),
(3, 'A Commander'),
(4, 'Prêt pour Travaux'),
(5, 'En Travaux'),
(6, 'Recette OK'),
(7, 'Prêt'),
(8, 'En service');

-- --------------------------------------------------------

--
-- Table structure for table `select_site_origine_type`
--

CREATE TABLE `select_site_origine_type` (
  `id_site_origine_type` int(11) NOT NULL,
  `lib_site_origine_type` char(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `select_site_origine_type`
--

INSERT INTO `select_site_origine_type` (`id_site_origine_type`, `lib_site_origine_type`) VALUES
(1, 'NRA'),
(2, 'NRO'),
(3, 'POP');

-- --------------------------------------------------------

--
-- Table structure for table `select_ville`
--

CREATE TABLE `select_ville` (
  `id_select_ville` int(11) NOT NULL,
  `code_ville` varchar(100) DEFAULT NULL,
  `nom_ville` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `select_ville`
--

INSERT INTO `select_ville` (`id_select_ville`, `code_ville`, `nom_ville`) VALUES
(1, '01', 'Ain'),
(2, '02', 'Aisne'),
(3, '03', 'Allier'),
(4, '04', 'Alpes-de-Haute-Provence'),
(5, '05', 'Hautes-Alpes'),
(6, '06', 'Alpes-Maritimes'),
(7, '07', 'Ardèche'),
(8, '08', 'Ardennes'),
(9, '09', 'Ariège'),
(10, '10', 'Aube'),
(11, '11', 'Aude'),
(12, '12', 'Aveyron'),
(13, '13', 'Bouches-du-Rhône'),
(14, '14', 'Calvados'),
(15, '15', 'Cantal'),
(16, '16', 'Charente'),
(17, '17', 'Charente-Maritime'),
(18, '18', 'Cher'),
(19, '19', 'Corrèze'),
(20, '21', 'Côte-d Or'),
(21, '22', 'Côtes-d Armor'),
(22, '23', 'Creuse'),
(23, '24', 'Dordogne'),
(24, '25', 'Doubs'),
(25, '26', 'Drôme'),
(26, '27', 'Eure'),
(27, '28', 'Eure-et-Loir'),
(28, '29', 'Finistère'),
(29, '2A', 'Corse-du-Sud'),
(30, '2B', 'Haute-Corse'),
(31, '30', 'Gard'),
(32, '31', 'Haute-Garonne'),
(33, '32', 'Gers'),
(34, '33', 'Gironde'),
(35, '34', 'Hérault'),
(36, '35', 'Ille-et-Vilaine'),
(37, '36', 'Indre'),
(38, '37', 'Indre-et-Loire'),
(39, '38', 'Isère'),
(40, '39', 'Jura'),
(41, '40', 'Landes'),
(42, '41', 'Loir-et-Cher'),
(43, '42', 'Loire'),
(44, '43', 'Haute-Loire'),
(45, '44', 'Loire-Atlantique'),
(46, '45', 'Loiret'),
(47, '46', 'Lot'),
(48, '47', 'Lot-et-Garonne'),
(49, '48', 'Lozère'),
(50, '49', 'Maine-et-Loire'),
(51, '50', 'Manche'),
(52, '51', 'Marne'),
(53, '52', 'Haute-Marne'),
(54, '53', 'Mayenne'),
(55, '54', 'Meurthe-et-Moselle'),
(56, '55', 'Meuse'),
(57, '56', 'Morbihan'),
(58, '57', 'Moselle'),
(59, '58', 'Nièvre'),
(60, '59', 'Nord'),
(61, '60', 'Oise'),
(62, '61', 'Orne'),
(63, '62', 'Pas-de-Calais'),
(64, '63', 'Puy-de-Dôme'),
(65, '64', 'Pyrénées-Atlantiques'),
(66, '65', 'Hautes-Pyrénées'),
(67, '66', 'Pyrénées-Orientales'),
(68, '67', 'Bas-Rhin'),
(69, '68', 'Haut-Rhin'),
(70, '69', 'Rhône'),
(71, '70', 'Haute-Saône'),
(72, '71', 'Saône-et-Loire'),
(73, '72', 'Sarthe'),
(74, '73', 'Savoie'),
(75, '74', 'Haute-Savoie'),
(76, '75', 'Paris'),
(77, '76', 'Seine-Maritime'),
(78, '77', 'Seine-et-Marne'),
(79, '78', 'Yvelines'),
(80, '79', 'Deux-Sèvres'),
(81, '80', 'Somme'),
(82, '81', 'Tarn'),
(83, '82', 'Tarn-et-Garonne'),
(84, '83', 'Var'),
(85, '84', 'Vaucluse'),
(86, '85', 'Vendée'),
(87, '86', 'Vienne'),
(88, '87', 'Haute-Vienne'),
(89, '88', 'Vosges'),
(90, '89', 'Yonne'),
(91, '90', 'Territoire de Belfort'),
(92, '91', 'Essonne'),
(93, '92', 'Hauts-de-Seine'),
(94, '93', 'Seine-Saint-Denis'),
(95, '94', 'Val-de-Marne'),
(96, '95', 'Val-d Oise');

-- --------------------------------------------------------

--
-- Table structure for table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id_utilisateur` char(10) NOT NULL,
  `id_profile_utilisateur` int(11) NOT NULL,
  `nom_utilisateur` char(10) DEFAULT NULL,
  `prenom_utilisateur` char(10) DEFAULT NULL,
  `email_utilisateur` varchar(50) DEFAULT NULL,
  `pass_utilisateur` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `utilisateur`
--

INSERT INTO `utilisateur` (`id_utilisateur`, `id_profile_utilisateur`, `nom_utilisateur`, `prenom_utilisateur`, `email_utilisateur`, `pass_utilisateur`) VALUES
('1', 1, 'bouazar', 'mehdi', 'bouazar.mehdi@gmail.com', 'test');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `nro`
--
ALTER TABLE `nro`
  ADD PRIMARY KEY (`id_nro`);

--
-- Indexes for table `profil_utilisateur`
--
ALTER TABLE `profil_utilisateur`
  ADD PRIMARY KEY (`id_profile_utilisateur`);

--
-- Indexes for table `projet`
--
ALTER TABLE `projet`
  ADD PRIMARY KEY (`id_projet`),
  ADD KEY `FK_PROJET_AFFECTER_UTILISAT` (`id_utilisateur`),
  ADD KEY `FK_PROJET_ATTACHER_SELECT_S` (`id_site_origine_etat`),
  ADD KEY `FK_PROJET_ATTRIBUER_SELECT_S` (`id_site_origine_type`),
  ADD KEY `FK_PROJET_CONCERNER_SELECT_V` (`id_select_ville`),
  ADD KEY `FK_PROJET_POSSEDER2_NRO` (`id_nro`);

--
-- Indexes for table `select_site_origine_etat`
--
ALTER TABLE `select_site_origine_etat`
  ADD PRIMARY KEY (`id_site_origine_etat`);

--
-- Indexes for table `select_site_origine_type`
--
ALTER TABLE `select_site_origine_type`
  ADD PRIMARY KEY (`id_site_origine_type`);

--
-- Indexes for table `select_ville`
--
ALTER TABLE `select_ville`
  ADD PRIMARY KEY (`id_select_ville`);

--
-- Indexes for table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id_utilisateur`),
  ADD KEY `FK_UTILISAT_ATTRIBUER_PROFIL_U` (`id_profile_utilisateur`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `projet`
--
ALTER TABLE `projet`
  MODIFY `id_projet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `projet`
--
ALTER TABLE `projet`
  ADD CONSTRAINT `FK_PROJET_AFFECTER_UTILISAT` FOREIGN KEY (`ID_UTILISATEUR`) REFERENCES `utilisateur` (`ID_UTILISATEUR`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_PROJET_ATTACHER_SELECT_S` FOREIGN KEY (`ID_SITE_ORIGINE_ETAT`) REFERENCES `select_site_origine_etat` (`ID_SITE_ORIGINE_ETAT`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_PROJET_ATTRIBUER_SELECT_S` FOREIGN KEY (`ID_SITE_ORIGINE_TYPE`) REFERENCES `select_site_origine_type` (`ID_SITE_ORIGINE_TYPE`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_PROJET_CONCERNER_SELECT_V` FOREIGN KEY (`ID_SELECT_VILLE`) REFERENCES `select_ville` (`ID_SELECT_VILLE`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_PROJET_POSSEDER2_NRO` FOREIGN KEY (`ID_NRO`) REFERENCES `nro` (`ID_NRO`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD CONSTRAINT `FK_UTILISAT_ATTRIBUER_PROFIL_U` FOREIGN KEY (`id_profile_utilisateur`) REFERENCES `profil_utilisateur` (`id_profile_utilisateur`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
