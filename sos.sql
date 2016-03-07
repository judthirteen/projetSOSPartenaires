-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 03 Mars 2016 à 17:15
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `sos`
--

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE IF NOT EXISTS `utilisateurs` (
  `ID` int(3) NOT NULL AUTO_INCREMENT,
  `Nom` text NOT NULL,
  `Prenom` text NOT NULL,
  `Date_de_naissance` int(8) NOT NULL,
  `Mot_de_passe` varchar(30) NOT NULL,
  `Sexe` text NOT NULL,
  `Courriel` varchar(50) NOT NULL,
  `Ville` text NOT NULL,
  `Code_postal` int(5) NOT NULL,
  `Telephone` int(10) NOT NULL,
  `Sport` text NOT NULL,
  `Niveau_sportif` text NOT NULL,
  `Description` text NOT NULL,
  `Disponible` text NOT NULL,
  `Horaires` varchar(6) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID` (`ID`,`Courriel`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`ID`, `Nom`, `Prenom`, `Date_de_naissance`, `Mot_de_passe`, `Sexe`, `Courriel`, `Ville`, `Code_postal`, `Telephone`, `Sport`, `Niveau_sportif`, `Description`, `Disponible`, `Horaires`) VALUES
(1, 'Nguyen', 'Valentin', 9071996, 'valentin', 'Homme', 'star@outlook.fr', 'Paris', 75013, 123456789, 'Football', 'DÃ©butant', '', 'Lundi', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
