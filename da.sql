-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 28 nov. 2020 à 11:56
-- Version du serveur :  10.4.13-MariaDB
-- Version de PHP : 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `da`
--

-- --------------------------------------------------------

--
-- Structure de la table `atelier`
--
-- Création : mar. 24 nov. 2020 à 20:41
--

CREATE TABLE `atelier` (
  `Id` varchar(100) NOT NULL,
  `Nom_Atelier` varchar(100) NOT NULL,
  `TKT` varchar(100) NOT NULL,
  `Stock_Ec` varchar(100) NOT NULL,
  `Effectif` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `lt_time`
--
-- Création : mar. 24 nov. 2020 à 20:41
--

CREATE TABLE `lt_time` (
  `id_LT` int(11) NOT NULL,
  `Id_Atelier` varchar(11) NOT NULL,
  `H_debut` varchar(11) NOT NULL,
  `H_fin` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `performence`
--
-- Création : mar. 24 nov. 2020 à 20:41
--

CREATE TABLE `performence` (
  `Id_Per` int(100) NOT NULL,
  `Id_Atelier` varchar(11) NOT NULL,
  `TRG_Atelier` varchar(100) NOT NULL,
  `Stock_Ec_Atelier` varchar(100) NOT NULL,
  `Productivity_Atelier` varchar(100) NOT NULL,
  `T_Conformite_Atelier` varchar(100) NOT NULL,
  `LT_Atelier` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `pilote`
--
-- Création : ven. 27 nov. 2020 à 19:58
--

CREATE TABLE `pilote` (
  `ID` int(200) NOT NULL,
  `LeadTime` float NOT NULL,
  `Productivite` float NOT NULL,
  `CoefGlob` float NOT NULL,
  `StockECGlob` float NOT NULL,
  `PosteGoulot` varchar(40) NOT NULL,
  `Desequilibre` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `pilote`
--

INSERT INTO `pilote` (`ID`, `LeadTime`, `Productivite`, `CoefGlob`, `StockECGlob`, `PosteGoulot`, `Desequilibre`) VALUES
(1, 50, 75, 80, 500, 'Poste Carre', 1.5);

-- --------------------------------------------------------

--
-- Structure de la table `production`
--
-- Création : mar. 24 nov. 2020 à 20:41
--

CREATE TABLE `production` (
  `ID` int(100) NOT NULL,
  `Id_Atelier` varchar(100) NOT NULL,
  `Date` varchar(100) NOT NULL,
  `Heure` varchar(100) NOT NULL,
  `Stock_Ec` varchar(100) NOT NULL,
  `P_Conforme` varchar(100) NOT NULL,
  `P_Non_Coforme` varchar(100) NOT NULL,
  `Stock_Nominale` varchar(100) NOT NULL,
  `Cycle_Time` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `userinfo`
--
-- Création : ven. 27 nov. 2020 à 19:06
--

CREATE TABLE `userinfo` (
  `ID` int(20) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `DateCreated` varchar(25) NOT NULL,
  `LastLogin` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `userinfo`
--

INSERT INTO `userinfo` (`ID`, `Username`, `Password`, `DateCreated`, `LastLogin`) VALUES
(1, 'imane', '123', '27/11/2020 20:19:45', '27/11/2020 20:22:16'),
(2, 'zah', '5252', '27/11/2020 20:21:19', '27/11/2020 20:21:19');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `atelier`
--
ALTER TABLE `atelier`
  ADD PRIMARY KEY (`Id`);

--
-- Index pour la table `lt_time`
--
ALTER TABLE `lt_time`
  ADD PRIMARY KEY (`id_LT`);

--
-- Index pour la table `performence`
--
ALTER TABLE `performence`
  ADD PRIMARY KEY (`Id_Per`);

--
-- Index pour la table `pilote`
--
ALTER TABLE `pilote`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `production`
--
ALTER TABLE `production`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `userinfo`
--
ALTER TABLE `userinfo`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `lt_time`
--
ALTER TABLE `lt_time`
  MODIFY `id_LT` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `performence`
--
ALTER TABLE `performence`
  MODIFY `Id_Per` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pilote`
--
ALTER TABLE `pilote`
  MODIFY `ID` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `production`
--
ALTER TABLE `production`
  MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `userinfo`
--
ALTER TABLE `userinfo`
  MODIFY `ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
