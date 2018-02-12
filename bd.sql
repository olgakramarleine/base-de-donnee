-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 12, 2018 at 04:04 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `base1`
--

-- --------------------------------------------------------

--
-- Table structure for table `categorie_rally`
--

CREATE TABLE `categorie_rally` (
  `id_categorie` int(11) NOT NULL,
  `nom_categorie` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categorie_rally`
--

INSERT INTO `categorie_rally` (`id_categorie`, `nom_categorie`) VALUES
(1, 'motocross'),
(2, '2 roues motrices'),
(3, '4 roues motrices'),
(4, 'quad');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `nom_course` varchar(150) CHARACTER SET utf8 NOT NULL,
  `nom_organisateur` varchar(150) CHARACTER SET utf8 NOT NULL,
  `date_debut_course` varchar(40) CHARACTER SET utf8 NOT NULL,
  `date_fin_course` varchar(40) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `etape`
--

CREATE TABLE `etape` (
  `id` int(11) NOT NULL,
  `nom_etape` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `distance_etape` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `id_course` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `etape`
--

INSERT INTO `etape` (`id`, `nom_etape`, `distance_etape`, `id_course`) VALUES
(1, 'SECTION 1', '3', 10),
(2, 'SECTION 2', '40.53', 10),
(3, 'SECTION 3', '54.96', 10),
(4, 'SECTION 4', '51.94', 10),
(5, 'SECTION 5', '97.79', 10);

-- --------------------------------------------------------

--
-- Table structure for table `pilote`
--

CREATE TABLE `pilote` (
  `id` int(11) NOT NULL,
  `numero` int(11) NOT NULL,
  `num_transpondeur` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `nom_pilote` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prenom_pilote` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nat_pilote` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'CIV',
  `nom_copilote` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prenom_copilote` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nat_copilote` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'CIV',
  `marque_vehicule` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_categorie` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_etape` int(11) DEFAULT NULL,
  `arc` tinyint(1) NOT NULL DEFAULT '0',
  `homologue` tinyint(1) NOT NULL DEFAULT '0',
  `classgroup` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `abandon` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pilote`
--

INSERT INTO `pilote` (`id`, `numero`, `num_transpondeur`, `nom_pilote`, `prenom_pilote`, `nat_pilote`, `nom_copilote`, `prenom_copilote`, `nat_copilote`, `marque_vehicule`, `id_categorie`, `id_etape`, `arc`, `homologue`, `classgroup`, `abandon`) VALUES
(1, 1, '371', 'GARY', 'Chaynes', 'CIV', 'LE BORGNE', 'Didier', 'CIV', 'MITSUBISHI EVO 10', '2', NULL, 0, 1, 'RC2/NR4', 0),
(2, 2, '398', 'MALHERBE', 'Loïc', 'CIV', 'BRION', 'Thierry', 'CIV', 'SUBARU IMPREZA', '2', NULL, 0, 1, 'RC2/NR4', 0),
(3, 3, '379', 'ABONDIO', 'Maxime', 'CIV', 'BORGES', 'Hugo', 'CIV', 'MITSUBISHI EVO 9', '2', NULL, 0, 1, 'RC2/NR4', 1),
(4, 4, '376', 'BROSSIER', 'Pascal', 'CIV', 'BARBARY', 'Alexandre', 'CIV', 'MITSUBISHI EVO 9', '2', NULL, 0, 1, 'RC2/NR4', 0),
(5, 5, '400', 'NOBOU', 'Frédéric', 'CIV', 'COULIBALY', 'Daniel', 'CIV', 'MITSUBISHI EVO 6', '2', NULL, 0, 0, 'S', 0),
(6, 6, '481', 'JACQUELIN', 'Luc', 'CIV', 'JACQUELIN', 'Virginie', 'CIV', 'MITSUBISHI EVO 6', '2', NULL, 0, 0, 'S', 0),
(7, 7, '363', 'PANSOLIN', 'Thierry', 'CIV', 'PANSOLIN', 'Nicolas', 'CIV', 'PEUGEOT 207', '2', NULL, 0, 1, 'RC3/A3', 0),
(8, 8, '380', 'CATHELINEAU', 'Pascal', 'CIV', 'XXXXXXX', 'XXXXXX', 'CIV', 'PEUGEOT 206', '2', NULL, 0, 1, 'RC3/A3', 0),
(9, 9, '396', 'GIGAULT', 'Frédéric', 'CIV', 'KIENDREBEOGO ', 'Nicolas', 'CIV', 'PEUGEOT 106', '2', NULL, 0, 0, 'S', 0),
(10, 10, '261', 'MACQUET', 'Claude', 'CIV', 'JACOBY ', 'Brieux', 'CIV', 'PEUGEOT 206', '2', 5, 0, 0, 'S', 0),
(11, 11, '276', 'OUATTARA \n', 'Daouda', 'CIV', 'IBITTOWA ', 'Djamali', 'CIV', 'PEUGEOT 205', '2', 5, 0, 0, 'S', 0),
(12, 12, '262', 'FANE', 'Salif', 'CIV', 'KONE', 'Aichatou', 'CIV', 'PEUGEOT 206', '2', 5, 0, 0, 'S', 0),
(14, 14, '307', 'KOUASSI-LENOIR \n', 'Y.Roland', 'CIV', 'KOUASSI-LENOIR', 'Adjoua Yarène', 'CIV', 'PEUGEOT 206 XS', '2', 5, 0, 0, 'S', 0),
(15, 15, '275', 'OUANGRE', 'Malick', 'CIV', 'NEAME', 'Léonard', 'CIV', 'PEUGEOT 306', '2', 5, 0, 0, 'S', 0),
(16, 16, '369', 'FANE', 'Mamadou Hamed', 'CIV', 'KONE', 'Aichatou', 'CIV', 'PEUGEOT 206', '2', NULL, 0, 0, 'S', 0),
(23, 17, '501', 'LIGONNET\n', 'Kevin', 'CIV', 'DUFILS', 'Marie', 'CIV', 'MITSUBISHI EVO 6', '2', 5, 0, 0, 'S', 0),
(24, 18, '502', 'SOUMAORO', 'Moriféré', 'CIV', 'COMAS', 'Romain', 'CIV', 'MITSUBISHI EVO 10', '2', 5, 0, 1, 'RC2/NR4', 0),
(25, 19, '503', 'THIERRY', 'Richard', 'FCE', 'xxxxxxxxx', 'xxxxxxxx', 'CIV', 'MITSUBISHI EVO 10', '2', NULL, 0, 1, 'RC2/NR4', 0),
(26, 20, '504', 'KOUADIO ', 'Kan Jésus', 'CIV', 'YAPO-AHUE', 'Marc Antoine', 'CIV', 'PEUGEOT 207', '2', NULL, 0, 1, 'RC3/A', 0);

-- --------------------------------------------------------

--
-- Table structure for table `speciale`
--

CREATE TABLE `speciale` (
  `id` int(50) NOT NULL,
  `nom_speciale` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `distance_speciale` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_course` int(20) DEFAULT NULL,
  `id_etape` int(20) DEFAULT NULL,
  `ordre` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `speciale`
--

INSERT INTO `speciale` (`id`, `nom_speciale`, `distance_speciale`, `id_course`, `id_etape`, `ordre`) VALUES
(1, 'S1', '2.50', 10, 1, 1),
(2, 'S2', '12.30', 10, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `temps`
--

CREATE TABLE `temps` (
  `id` int(11) NOT NULL,
  `id_pilote` bigint(20) DEFAULT NULL,
  `ordre_speciale` int(11) DEFAULT NULL,
  `temps` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `penalite` int(50) DEFAULT NULL,
  `depart` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dms` int(255) DEFAULT NULL,
  `arrivee` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ams` int(255) DEFAULT NULL,
  `id_speciale` int(11) DEFAULT NULL,
  `id_etape` int(11) DEFAULT NULL,
  `id_course` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `temps`
--

INSERT INTO `temps` (`id`, `id_pilote`, `ordre_speciale`, `temps`, `penalite`, `depart`, `dms`, `arrivee`, `ams`, `id_speciale`, `id_etape`, `id_course`) VALUES
(1, 14, 1, '646250', NULL, '2018-01-06T12:10:00', 0, '2018-01-06T12:20:46', 250000, 1, NULL, NULL),
(2, 15, 1, '515320', NULL, '2018-01-06T14:30:00', 0, '2018-01-06T14:38:35', 320000, 1, NULL, NULL),
(3, 16, 1, '707220', NULL, '2018-01-06T11:55:00', 0, '2018-01-06T12:06:47', 220000, 1, NULL, NULL),
(4, 2, 1, '456000', NULL, '2018-01-06T14:12:00', 0, '2018-01-06T14:19:36', 0, 1, NULL, NULL),
(5, 1, 1, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL),
(6, 14, 2, '627787', NULL, '2018-01-06T15:16:00', 0, '2018-01-06T15:26:27', 787000, 2, NULL, NULL),
(7, 3, 1, '469758', NULL, '2018-01-06T14:02:00', 0, '2018-01-06T14:09:49', 758000, 1, NULL, NULL),
(8, 4, 1, '443455', NULL, '2018-01-06T13:53:00', 0, '2018-01-06T14:00:23', 455000, 1, NULL, NULL),
(9, 15, 2, NULL, NULL, '2018-01-06T17:12:00', 0, NULL, 126000, 2, NULL, NULL),
(10, 23, 1, NULL, NULL, NULL, NULL, NULL, 745000, 1, NULL, NULL),
(11, 5, 1, '443897', NULL, '2018-01-06T13:44:00', 0, '2018-01-06T13:51:23', 897000, 1, NULL, NULL),
(12, 16, 2, '657161', NULL, '2018-01-06T15:03:00', 0, '2018-01-06T15:13:57', 161000, 2, NULL, NULL),
(13, 6, 1, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL),
(14, 7, 1, '498880', NULL, '2018-01-06T13:24:00', 0, '2018-01-06T13:32:18', 880000, 1, NULL, NULL),
(15, 8, 1, '582240', NULL, '2018-01-06T13:12:00', 0, '2018-01-06T13:21:42', 240000, 1, NULL, NULL),
(16, 9, 1, NULL, NULL, '2018-01-06T12:59:00', 0, NULL, 0, 1, NULL, NULL),
(17, 12, 1, '601347', NULL, '2018-01-06T12:35:00', 0, '2018-01-06T12:45:01', 347000, 1, NULL, NULL),
(18, 11, 1, '577511', NULL, '2018-01-06T12:22:00', 0, '2018-01-06T12:31:37', 511000, 1, NULL, NULL),
(19, 26, 1, '568304', NULL, '2018-01-06T12:47:00', 0, '2018-01-06T12:56:28', 304000, 1, NULL, NULL),
(20, 25, 1, '455172', NULL, '2018-01-06T13:35:00', 0, '2018-01-06T13:42:35', 172000, 1, NULL, NULL),
(21, 24, 1, '435867', NULL, '2018-01-06T14:21:00', 0, '2018-01-06T14:28:15', 867000, 1, NULL, NULL),
(22, 11, 2, '1004383', NULL, '2018-01-06T15:28:00', 0, '2018-01-06T15:44:44', 383000, 2, NULL, NULL),
(23, 12, 2, '575137', NULL, '2018-01-06T15:46:00', 0, '2018-01-06T15:55:35', 137000, 2, NULL, NULL),
(24, 20, 2, '530161', NULL, '2018-01-06T15:57:00', 0, '2018-01-06T16:05:50', 161000, 2, NULL, NULL),
(25, 18, 1, '435000', NULL, '2018-01-06T14:21:00', 0, '2018-01-06T14:28:15', NULL, 1, NULL, NULL),
(26, 5, 2, '438408', NULL, '2018-01-06T16:37:00', 0, '2018-01-06T16:44:18', 408000, 2, NULL, NULL),
(27, 19, 2, '448161', NULL, '2018-01-06T16:28:00', 0, '2018-01-06T16:35:28', 161000, 2, NULL, NULL),
(28, 7, 2, '489963', NULL, '2018-01-06T16:18:00', 0, '2018-01-06T16:26:09', 963000, 2, NULL, NULL),
(29, 8, 2, '577160', NULL, '2018-01-06T16:07:00', 0, '2018-01-06T16:16:37', 160000, 2, NULL, NULL),
(30, 3, 2, NULL, NULL, '2018-01-06T16:48:00', 0, NULL, NULL, 2, NULL, NULL),
(31, 18, 2, '437000', NULL, '2018-01-06T17:03:00', 0, '2018-01-06T17:10:17', NULL, 2, NULL, NULL),
(32, 2, 2, '455574', NULL, '2018-01-06T16:54:00', 0, '2018-01-06T17:01:35', 574000, 2, NULL, NULL),
(33, 26, 2, '530462', NULL, '2018-01-06T15:57:00', 0, '2018-01-06T16:05:50', 462000, 2, NULL, NULL),
(34, 25, 2, '448599', NULL, '2018-01-06T16:28:00', 0, '2018-01-06T16:35:28', 599000, 2, NULL, NULL),
(35, 24, 2, '437682', NULL, '2018-01-06T17:03:00', 0, '2018-01-06T17:10:17', 682000, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `confirmation_token` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `nom` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `prenoms` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `confirmation_token`, `password_requested_at`, `roles`, `nom`, `prenoms`) VALUES
(1, 'elidjeaka', 'elidjeaka', 'elidjeakaemmanuel@ymail.com', 'elidjeakaemmanuel@ymail.com', 1, NULL, '$2y$13$DqRAGdvbu2Q66MF34CC2HeWYCMu2DBNfx506YNgKFBuQlcXY5a/AS', '2017-11-06 02:50:12', NULL, NULL, 'a:1:{i:0;s:16:\"ROLE_SUPER_ADMIN\";}', 'ELIDJE', 'AKA EMMANUEL'),
(3, 'kos', 'kos', 'p@gmail.com', 'p@gmail.com', 1, NULL, '$2y$13$8Jv9Op2EPphlKMxhVfn.4Oz2lJev4a3fvl.8LXhL0OsFYf9wme04a', '2017-02-15 11:08:09', NULL, NULL, 'a:1:{i:0;s:16:\"ROLE_SUPER_ADMIN\";}', 'KOSSONOU', 'PARFAIT'),
(4, 'jean.kassi', 'jean.kassi', 'jean.kassi@ymail.com', 'jean.kassi@ymail.com', 1, NULL, '$2y$13$bTD6hkQtY4oLIoIdCJxxo.kDaPkNiZRMC9w3ArLGfxUGtCBztEnz2', '2017-02-17 16:12:39', NULL, NULL, 'a:1:{i:0;s:16:\"ROLE_SUPER_ADMIN\";}', 'KASSI', 'JEAN VINCENT'),
(5, 'daniel', 'daniel', '001ndj@gmail.com', '001ndj@gmail.com', 1, NULL, '$2y$13$oTtS6YtlbK5UGz5xhmpA9e3agFEUUwe9TRWrFMnipssCjkhxyyhG2', '2017-09-16 20:33:46', NULL, NULL, 'a:1:{i:0;s:16:\"ROLE_SUPER_ADMIN\";}', 'nougbele', 'daniel'),
(7, 'ange', 'ange', 'angeyoro@gmail.com', 'angeyoro@gmail.com', 1, NULL, '$2y$13$HsOhNaWng22xDthiVqIgJe2KfBOTI8n6PH3WCkd0oi2/gHqcr9lXm', '2017-09-16 20:29:14', NULL, NULL, 'a:1:{i:0;s:16:\"ROLE_SUPER_ADMIN\";}', 'yoro', 'ange');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categorie_rally`
--
ALTER TABLE `categorie_rally`
  ADD PRIMARY KEY (`id_categorie`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `etape`
--
ALTER TABLE `etape`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pilote`
--
ALTER TABLE `pilote`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `numero_UNIQUE` (`numero`),
  ADD UNIQUE KEY `num_transpondeur` (`num_transpondeur`);

--
-- Indexes for table `speciale`
--
ALTER TABLE `speciale`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temps`
--
ALTER TABLE `temps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_etape` (`id_etape`),
  ADD KEY `id_course` (`id_course`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D64992FC23A8` (`username_canonical`),
  ADD UNIQUE KEY `UNIQ_8D93D649A0D96FBF` (`email_canonical`),
  ADD UNIQUE KEY `UNIQ_8D93D649C05FB297` (`confirmation_token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categorie_rally`
--
ALTER TABLE `categorie_rally`
  MODIFY `id_categorie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `etape`
--
ALTER TABLE `etape`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pilote`
--
ALTER TABLE `pilote`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `speciale`
--
ALTER TABLE `speciale`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `temps`
--
ALTER TABLE `temps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `temps`
--
ALTER TABLE `temps`
  ADD CONSTRAINT `fk_id_course` FOREIGN KEY (`id_course`) REFERENCES `course` (`id`),
  ADD CONSTRAINT `fk_id_etape` FOREIGN KEY (`id_etape`) REFERENCES `etape` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
