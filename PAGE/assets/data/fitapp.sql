-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : mar. 02 jan. 2024 à 08:36
-- Version du serveur : 8.0.30
-- Version de PHP : 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `fitapp`
--

-- --------------------------------------------------------

--
-- Structure de la table `avis_et_evaluations`
--

CREATE TABLE `avis_et_evaluations` (
  `ID_NOTICE` varchar(50) NOT NULL,
  `COMMENT` varchar(250) NOT NULL,
  `NOTICE_DATE` date NOT NULL,
  `ID_CATALOG_TRANING` varchar(50) NOT NULL,
  `ID_USER` varchar(50) NOT NULL,
  `ID_PERSONNAL_TRANING` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `catalogue_d_entrainements`
--

CREATE TABLE `catalogue_d_entrainements` (
  `ID_CATALOG_TRANING` varchar(50) NOT NULL,
  `TRANING_NAME_` varchar(50) NOT NULL,
  `TRANING_DESCRPTION` varchar(250) NOT NULL,
  `TOT_DURATION_TRANING` time NOT NULL,
  `DIFF_LEVEL` varchar(50) NOT NULL,
  `TRANING_CAT` varchar(50) NOT NULL,
  `EXERCISES_LIST` varchar(250) NOT NULL,
  `PREVIEW` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `entrainements_personnalise`
--

CREATE TABLE `entrainements_personnalise` (
  `ID_PERSONNAL_TRANING` varchar(50) NOT NULL,
  `TRANING_NAME_` varchar(50) NOT NULL,
  `TRANING_DESCRPTION` varchar(250) NOT NULL,
  `TOT_DURATION_TRANING` time NOT NULL,
  `DIFF_LEVEL` varchar(50) NOT NULL,
  `TRANING_CAT` varchar(50) NOT NULL,
  `EXERCISES_LIST` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `salle_de_sport`
--

CREATE TABLE `salle_de_sport` (
  `ID_SALLE` varchar(50) NOT NULL,
  `NAME_SALLE` varchar(150) NOT NULL,
  `ADR_SALLE` varchar(250) NOT NULL,
  `CITY_SALLE` varchar(50) NOT NULL,
  `GPS_SALLE` decimal(15,15) NOT NULL,
  `OPENTIME_SALLE_` datetime NOT NULL,
  `AVAILABLE_SERVICE` varchar(500) NOT NULL,
  `PRICES` decimal(4,2) DEFAULT NULL,
  `ZIPCODE_SALLE` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `suivi`
--

CREATE TABLE `suivi` (
  `_ID_FOLLOW_UP` varchar(50) NOT NULL,
  `FOLLOW_UP_DATE` date NOT NULL,
  `PROGRESSIONS` int NOT NULL,
  `NB_STEPS` int NOT NULL,
  `TRANING_DONE` varchar(50) NOT NULL,
  `CALORIES_BURNED` decimal(3,3) NOT NULL,
  `ID_USER` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur_`
--

CREATE TABLE `utilisateur_` (
  `ID_USER` varchar(50) NOT NULL,
  `LASTNAME_USER` varchar(50) NOT NULL,
  `FIRSTNAME_USER` varchar(50) NOT NULL,
  `AGE_USER` date NOT NULL,
  `EMAIL_USER_` varchar(150) NOT NULL,
  `MDP_USER` varchar(50) NOT NULL,
  `WEIGHT_USER_` int NOT NULL,
  `SIZE_USER` int NOT NULL,
  `OBJECT_USER_` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `utilisateur_`
--

INSERT INTO `utilisateur_` (`ID_USER`, `LASTNAME_USER`, `FIRSTNAME_USER`, `AGE_USER`, `EMAIL_USER_`, `MDP_USER`, `WEIGHT_USER_`, `SIZE_USER`, `OBJECT_USER_`) VALUES
('', 'remond', 'ricardo', '1999-08-19', 'ricardo.remond.pro@gmail.com', 'ricardo27', 64, 180, 'Prise de masse ');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur_definis`
--

CREATE TABLE `utilisateur_definis` (
  `ID_USER` varchar(50) NOT NULL,
  `ID_PERSONNAL_TRANING` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur_localise_la_salle_`
--

CREATE TABLE `utilisateur_localise_la_salle_` (
  `ID_USER` varchar(50) NOT NULL,
  `ID_SALLE` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `avis_et_evaluations`
--
ALTER TABLE `avis_et_evaluations`
  ADD PRIMARY KEY (`ID_NOTICE`),
  ADD KEY `ID_CATALOG_TRANING` (`ID_CATALOG_TRANING`),
  ADD KEY `ID_USER` (`ID_USER`),
  ADD KEY `ID_PERSONNAL_TRANING` (`ID_PERSONNAL_TRANING`);

--
-- Index pour la table `catalogue_d_entrainements`
--
ALTER TABLE `catalogue_d_entrainements`
  ADD PRIMARY KEY (`ID_CATALOG_TRANING`);

--
-- Index pour la table `entrainements_personnalise`
--
ALTER TABLE `entrainements_personnalise`
  ADD PRIMARY KEY (`ID_PERSONNAL_TRANING`);

--
-- Index pour la table `salle_de_sport`
--
ALTER TABLE `salle_de_sport`
  ADD PRIMARY KEY (`ID_SALLE`);

--
-- Index pour la table `suivi`
--
ALTER TABLE `suivi`
  ADD PRIMARY KEY (`_ID_FOLLOW_UP`),
  ADD UNIQUE KEY `ID_USER` (`ID_USER`);

--
-- Index pour la table `utilisateur_`
--
ALTER TABLE `utilisateur_`
  ADD PRIMARY KEY (`ID_USER`);

--
-- Index pour la table `utilisateur_definis`
--
ALTER TABLE `utilisateur_definis`
  ADD PRIMARY KEY (`ID_USER`,`ID_PERSONNAL_TRANING`),
  ADD KEY `ID_PERSONNAL_TRANING` (`ID_PERSONNAL_TRANING`);

--
-- Index pour la table `utilisateur_localise_la_salle_`
--
ALTER TABLE `utilisateur_localise_la_salle_`
  ADD PRIMARY KEY (`ID_USER`,`ID_SALLE`),
  ADD KEY `ID_SALLE` (`ID_SALLE`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `avis_et_evaluations`
--
ALTER TABLE `avis_et_evaluations`
  ADD CONSTRAINT `avis_et_evaluations_ibfk_1` FOREIGN KEY (`ID_CATALOG_TRANING`) REFERENCES `catalogue_d_entrainements` (`ID_CATALOG_TRANING`),
  ADD CONSTRAINT `avis_et_evaluations_ibfk_2` FOREIGN KEY (`ID_USER`) REFERENCES `utilisateur_` (`ID_USER`),
  ADD CONSTRAINT `avis_et_evaluations_ibfk_3` FOREIGN KEY (`ID_PERSONNAL_TRANING`) REFERENCES `entrainements_personnalise` (`ID_PERSONNAL_TRANING`);

--
-- Contraintes pour la table `suivi`
--
ALTER TABLE `suivi`
  ADD CONSTRAINT `suivi_ibfk_1` FOREIGN KEY (`ID_USER`) REFERENCES `utilisateur_` (`ID_USER`);

--
-- Contraintes pour la table `utilisateur_definis`
--
ALTER TABLE `utilisateur_definis`
  ADD CONSTRAINT `utilisateur_definis_ibfk_1` FOREIGN KEY (`ID_USER`) REFERENCES `utilisateur_` (`ID_USER`),
  ADD CONSTRAINT `utilisateur_definis_ibfk_2` FOREIGN KEY (`ID_PERSONNAL_TRANING`) REFERENCES `entrainements_personnalise` (`ID_PERSONNAL_TRANING`);

--
-- Contraintes pour la table `utilisateur_localise_la_salle_`
--
ALTER TABLE `utilisateur_localise_la_salle_`
  ADD CONSTRAINT `utilisateur_localise_la_salle__ibfk_1` FOREIGN KEY (`ID_USER`) REFERENCES `utilisateur_` (`ID_USER`),
  ADD CONSTRAINT `utilisateur_localise_la_salle__ibfk_2` FOREIGN KEY (`ID_SALLE`) REFERENCES `salle_de_sport` (`ID_SALLE`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
