-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 13 nov. 2024 à 22:32
-- Version du serveur : 8.0.31
-- Version de PHP : 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `centre_de_formation`
--

-- --------------------------------------------------------

--
-- Structure de la table `est_inscrit`
--

DROP TABLE IF EXISTS `est_inscrit`;
CREATE TABLE IF NOT EXISTS `est_inscrit` (
  `NumCINEtu` varchar(55) NOT NULL,
  `codesess` varchar(55) NOT NULL,
  `typecours` varchar(55) NOT NULL,
  PRIMARY KEY (`NumCINEtu`,`codesess`),
  KEY `codesess` (`codesess`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

DROP TABLE IF EXISTS `etudiant`;
CREATE TABLE IF NOT EXISTS `etudiant` (
  `NumCINEtu` varchar(55) NOT NULL,
  `NomEtu` varchar(55) DEFAULT NULL,
  `PrenomEtu` varchar(55) DEFAULT NULL,
  `dateNaissance` date DEFAULT NULL,
  `adresseEtu` varchar(55) DEFAULT NULL,
  `villeEtu` varchar(55) DEFAULT NULL,
  `niveauEtu` int DEFAULT NULL,
  PRIMARY KEY (`NumCINEtu`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `formation`
--

DROP TABLE IF EXISTS `formation`;
CREATE TABLE IF NOT EXISTS `formation` (
  `codeForm` varchar(55) DEFAULT NULL,
  `titreForm` varchar(55) DEFAULT NULL,
  `dureeForm` varchar(55) DEFAULT NULL,
  `prixForm` int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `session`
--

DROP TABLE IF EXISTS `session`;
CREATE TABLE IF NOT EXISTS `session` (
  `codesess` varchar(55) NOT NULL,
  `nomsess` varchar(55) DEFAULT NULL,
  `datedebut` varchar(55) DEFAULT NULL,
  `datefin` varchar(55) DEFAULT NULL,
  `codeForm` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`codesess`),
  KEY `codeForm` (`codeForm`)
) ;

-- --------------------------------------------------------

--
-- Structure de la table `spécialité`
--

DROP TABLE IF EXISTS `spécialité`;
CREATE TABLE IF NOT EXISTS `spécialité` (
  `codespec` varchar(55) DEFAULT NULL,
  `nomspec` varchar(55) DEFAULT NULL,
  `descspec` varchar(55) DEFAULT NULL,
  `codeForm` varchar(55) DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  KEY `codeForm` (`codeForm`)
) ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
