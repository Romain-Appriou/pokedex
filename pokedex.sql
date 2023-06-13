-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : mar. 13 juin 2023 à 08:16
-- Version du serveur :  5.7.34
-- Version de PHP : 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `pokedex`
--

-- --------------------------------------------------------

--
-- Structure de la table `evolutions`
--

CREATE TABLE `evolutions` (
  `pokemonnumber` int(11) NOT NULL,
  `evol1` int(11) NOT NULL,
  `evol2` int(11) DEFAULT NULL,
  `evol3` int(11) DEFAULT NULL,
  `evol4` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `evolutions`
--

INSERT INTO `evolutions` (`pokemonnumber`, `evol1`, `evol2`, `evol3`, `evol4`) VALUES
(1, 1, 2, 3, NULL),
(2, 1, 2, 3, NULL),
(3, 1, 2, 3, NULL),
(4, 4, 5, 6, NULL),
(5, 4, 5, 6, NULL),
(6, 4, 5, 6, NULL),
(7, 7, 8, 9, NULL),
(8, 7, 8, 9, NULL),
(9, 7, 8, 9, NULL),
(10, 10, 11, 12, NULL),
(11, 10, 11, 12, NULL),
(12, 10, 11, 12, NULL),
(13, 13, 14, 15, NULL),
(14, 13, 14, 15, NULL),
(15, 13, 14, 15, NULL),
(16, 16, 17, 18, NULL),
(17, 16, 17, 18, NULL),
(18, 16, 17, 18, NULL),
(19, 19, 20, NULL, NULL),
(20, 19, 20, NULL, NULL),
(21, 21, 22, NULL, NULL),
(22, 21, 22, NULL, NULL),
(23, 23, 24, NULL, NULL),
(24, 23, 24, NULL, NULL),
(25, 25, 26, NULL, NULL),
(26, 25, 26, NULL, NULL),
(27, 27, 28, NULL, NULL),
(28, 27, 28, NULL, NULL),
(29, 29, 30, 31, NULL),
(30, 29, 30, 31, NULL),
(31, 29, 30, 31, NULL),
(32, 32, 33, 34, NULL),
(33, 32, 33, 34, NULL),
(34, 32, 33, 34, NULL),
(35, 35, 36, NULL, NULL),
(36, 35, 36, NULL, NULL),
(37, 37, 38, NULL, NULL),
(38, 37, 38, NULL, NULL),
(39, 39, 40, NULL, NULL),
(40, 39, 40, NULL, NULL),
(41, 41, 42, NULL, NULL),
(42, 41, 42, NULL, NULL),
(43, 43, 44, 45, NULL),
(44, 43, 44, 45, NULL),
(45, 43, 44, 45, NULL),
(46, 46, 47, NULL, NULL),
(47, 46, 47, NULL, NULL),
(48, 48, 49, NULL, NULL),
(49, 48, 49, NULL, NULL),
(50, 50, 51, NULL, NULL),
(51, 50, 51, NULL, NULL),
(52, 52, 53, NULL, NULL),
(53, 52, 53, NULL, NULL),
(54, 54, 55, NULL, NULL),
(55, 54, 55, NULL, NULL),
(56, 56, 57, NULL, NULL),
(57, 56, 57, NULL, NULL),
(58, 58, 59, NULL, NULL),
(59, 58, 59, NULL, NULL),
(60, 60, 61, 62, NULL),
(61, 60, 61, 62, NULL),
(62, 60, 61, 62, NULL),
(63, 63, 64, 65, NULL),
(64, 63, 64, 65, NULL),
(65, 63, 64, 65, NULL),
(66, 66, 67, 68, NULL),
(67, 66, 67, 68, NULL),
(68, 66, 67, 68, NULL),
(69, 69, 70, 71, NULL),
(70, 69, 70, 71, NULL),
(71, 69, 70, 71, NULL),
(72, 72, 73, NULL, NULL),
(73, 72, 73, NULL, NULL),
(74, 74, 75, 76, NULL),
(75, 74, 75, 76, NULL),
(76, 74, 75, 76, NULL),
(77, 77, 78, NULL, NULL),
(78, 77, 78, NULL, NULL),
(79, 79, 80, NULL, NULL),
(80, 79, 80, NULL, NULL),
(81, 81, 82, NULL, NULL),
(82, 81, 82, NULL, NULL),
(83, 83, NULL, NULL, NULL),
(84, 84, 85, NULL, NULL),
(85, 84, 85, NULL, NULL),
(86, 86, 87, NULL, NULL),
(87, 86, 87, NULL, NULL),
(88, 88, 89, NULL, NULL),
(89, 88, 89, NULL, NULL),
(90, 90, 91, NULL, NULL),
(91, 90, 91, NULL, NULL),
(92, 92, 93, 94, NULL),
(93, 92, 93, 94, NULL),
(94, 92, 93, 94, NULL),
(95, 95, NULL, NULL, NULL),
(96, 96, 97, NULL, NULL),
(97, 96, 97, NULL, NULL),
(98, 98, 99, NULL, NULL),
(99, 98, 99, NULL, NULL),
(100, 100, 101, NULL, NULL),
(101, 100, 101, NULL, NULL),
(102, 102, 103, NULL, NULL),
(103, 102, 103, NULL, NULL),
(104, 104, 105, NULL, NULL),
(105, 104, 105, NULL, NULL),
(106, 106, NULL, NULL, NULL),
(107, 107, NULL, NULL, NULL),
(108, 108, NULL, NULL, NULL),
(109, 109, 110, NULL, NULL),
(110, 109, 110, NULL, NULL),
(111, 111, 112, NULL, NULL),
(112, 111, 112, NULL, NULL),
(113, 113, NULL, NULL, NULL),
(114, 114, NULL, NULL, NULL),
(115, 115, NULL, NULL, NULL),
(116, 116, 117, NULL, NULL),
(117, 116, 117, NULL, NULL),
(118, 118, 119, NULL, NULL),
(119, 118, 119, NULL, NULL),
(120, 120, 121, NULL, NULL),
(121, 120, 121, NULL, NULL),
(122, 122, NULL, NULL, NULL),
(123, 123, NULL, NULL, NULL),
(124, 124, NULL, NULL, NULL),
(125, 125, NULL, NULL, NULL),
(126, 126, NULL, NULL, NULL),
(127, 127, NULL, NULL, NULL),
(128, 128, NULL, NULL, NULL),
(129, 129, 130, NULL, NULL),
(130, 129, 130, NULL, NULL),
(131, 131, NULL, NULL, NULL),
(132, 132, NULL, NULL, NULL),
(133, 133, 134, 135, 136),
(134, 133, 134, NULL, NULL),
(135, 133, 135, NULL, NULL),
(136, 133, 136, NULL, NULL),
(137, 137, NULL, NULL, NULL),
(138, 138, 139, NULL, NULL),
(139, 138, 139, NULL, NULL),
(140, 140, 141, NULL, NULL),
(141, 140, 141, NULL, NULL),
(142, 142, NULL, NULL, NULL),
(143, 143, NULL, NULL, NULL),
(144, 144, NULL, NULL, NULL),
(145, 145, NULL, NULL, NULL),
(146, 146, NULL, NULL, NULL),
(147, 147, 148, 149, NULL),
(148, 147, 148, 149, NULL),
(149, 147, 148, 149, NULL),
(150, 150, NULL, NULL, NULL),
(151, 151, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `evolveIn`
--

CREATE TABLE `evolveIn` (
  `poknumber` int(11) NOT NULL,
  `pokevolved` int(11) NOT NULL,
  `lvl` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `evolveIn`
--

INSERT INTO `evolveIn` (`poknumber`, `pokevolved`, `lvl`) VALUES
(1, 2, 16),
(2, 3, 32),
(4, 5, 16),
(5, 6, 36),
(7, 8, 16),
(8, 9, 36),
(10, 11, 7),
(11, 12, 10),
(13, 14, 7),
(14, 15, 10),
(16, 17, 18),
(17, 18, 36),
(19, 20, 20),
(21, 22, 20),
(23, 24, 22),
(25, 26, -3),
(27, 28, 22),
(29, 30, 16),
(30, 31, -1),
(32, 33, 16),
(33, 34, -1),
(35, 36, -1),
(37, 38, -4),
(39, 40, -1),
(41, 42, 22),
(43, 44, 21),
(44, 45, -5),
(46, 47, 24),
(48, 49, 31),
(50, 51, 26),
(52, 53, 28),
(54, 55, 33),
(56, 57, 28),
(58, 59, -4),
(60, 61, 25),
(61, 62, -6),
(63, 64, 16),
(64, 65, -2),
(66, 67, 28),
(67, 68, -2),
(69, 70, 21),
(70, 71, -5),
(72, 73, 30),
(74, 75, 25),
(75, 76, -2),
(77, 78, 40),
(79, 80, 37),
(81, 82, 30),
(84, 85, 31),
(86, 87, 34),
(88, 89, 38),
(90, 91, -6),
(92, 93, 25),
(93, 94, -2),
(96, 97, 26),
(98, 99, 28),
(100, 101, 30),
(102, 103, -5),
(104, 105, 28),
(109, 110, 35),
(111, 112, 42),
(116, 117, 32),
(118, 119, 33),
(120, 121, -6),
(129, 130, 20),
(133, 134, -6),
(133, 135, -3),
(133, 136, -4),
(138, 139, 40),
(140, 141, 40),
(147, 148, 30),
(148, 149, 55);

-- --------------------------------------------------------

--
-- Structure de la table `pokemon`
--

CREATE TABLE `pokemon` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `hp` int(11) NOT NULL,
  `attack` int(11) NOT NULL,
  `defense` int(11) NOT NULL,
  `spe_attack` int(11) NOT NULL,
  `spe_defense` int(11) NOT NULL,
  `speed` int(11) NOT NULL,
  `number` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `pokemon`
--

INSERT INTO `pokemon` (`id`, `name`, `hp`, `attack`, `defense`, `spe_attack`, `spe_defense`, `speed`, `number`) VALUES
(1209, 'Bulbizarre', 45, 49, 49, 65, 65, 45, 1),
(1210, 'Herbizarre', 60, 62, 63, 80, 80, 60, 2),
(1211, 'Florizarre', 80, 82, 83, 100, 100, 80, 3),
(1212, 'Salameche', 39, 52, 43, 60, 50, 65, 4),
(1213, 'Reptincel', 58, 64, 58, 80, 65, 80, 5),
(1214, 'Dracaufeu', 78, 84, 78, 109, 85, 100, 6),
(1215, 'Carapuce', 44, 48, 65, 50, 64, 43, 7),
(1216, 'Carabaffe', 59, 63, 80, 65, 80, 58, 8),
(1217, 'Tortank', 79, 83, 100, 85, 105, 78, 9),
(1218, 'Chenipan', 45, 30, 35, 20, 20, 45, 10),
(1219, 'Chrysacier', 50, 20, 55, 25, 25, 30, 11),
(1220, 'Papilusion', 60, 45, 50, 80, 80, 70, 12),
(1221, 'Aspicot', 40, 35, 30, 20, 20, 50, 13),
(1222, 'Coconfort', 45, 25, 50, 25, 25, 35, 14),
(1223, 'Dardargnan', 65, 80, 40, 45, 80, 75, 15),
(1224, 'Roucool', 40, 45, 40, 35, 35, 56, 16),
(1225, 'Roucoups', 63, 60, 55, 50, 50, 71, 17),
(1226, 'Roucarnage', 83, 80, 75, 70, 70, 91, 18),
(1227, 'Rattata', 30, 56, 35, 25, 35, 72, 19),
(1228, 'Rattatac', 55, 81, 60, 50, 70, 97, 20),
(1229, 'Piafabec', 40, 60, 30, 31, 31, 70, 21),
(1230, 'Rapasdepic', 65, 90, 65, 61, 61, 100, 22),
(1231, 'Abo', 35, 60, 44, 40, 54, 55, 23),
(1232, 'Arbok', 60, 85, 69, 65, 79, 80, 24),
(1233, 'Pikachu', 35, 55, 30, 50, 40, 90, 25),
(1234, 'Raichu', 60, 90, 55, 90, 80, 100, 26),
(1235, 'Sabelette', 50, 75, 85, 20, 30, 40, 27),
(1236, 'Sablaireau', 75, 100, 110, 45, 55, 65, 28),
(1237, 'Nidoran F', 55, 47, 52, 40, 40, 41, 29),
(1238, 'Nidorina', 70, 62, 67, 55, 55, 56, 30),
(1239, 'Nidoqueen', 90, 82, 87, 75, 85, 76, 31),
(1240, 'Nidoran M', 46, 57, 40, 40, 40, 50, 32),
(1241, 'Nidorino', 61, 72, 57, 55, 55, 65, 33),
(1242, 'Nidoking', 81, 92, 77, 85, 75, 85, 34),
(1243, 'Melofee', 70, 45, 48, 60, 65, 35, 35),
(1244, 'Melodelfe', 95, 70, 73, 85, 90, 60, 36),
(1245, 'Goupix', 38, 41, 40, 50, 65, 65, 37),
(1246, 'Feunard', 73, 76, 75, 81, 100, 100, 38),
(1247, 'Rondoudou', 115, 45, 20, 45, 25, 20, 39),
(1248, 'Grodoudou', 140, 70, 45, 75, 50, 45, 40),
(1249, 'Nosferapti', 40, 45, 35, 30, 40, 55, 41),
(1250, 'Nosferalto', 75, 80, 70, 65, 75, 90, 42),
(1251, 'Mystherbe', 45, 50, 55, 75, 65, 30, 43),
(1252, 'Ortide', 60, 65, 70, 85, 75, 40, 44),
(1253, 'Rafflesia', 75, 80, 85, 100, 90, 50, 45),
(1254, 'Paras', 35, 70, 55, 45, 55, 25, 46),
(1255, 'Parasect', 60, 95, 80, 60, 80, 30, 47),
(1256, 'Mimitoss', 60, 55, 50, 40, 55, 45, 48),
(1257, 'Aeromite', 70, 65, 60, 90, 75, 90, 49),
(1258, 'Taupiqueur', 10, 55, 25, 35, 45, 95, 50),
(1259, 'Triopikeur', 35, 80, 50, 50, 70, 120, 51),
(1260, 'Miaouss', 40, 45, 35, 40, 40, 90, 52),
(1261, 'Persian', 65, 70, 60, 65, 65, 115, 53),
(1262, 'Psykokwak', 50, 52, 48, 65, 50, 55, 54),
(1263, 'Akwakwak', 80, 82, 78, 95, 80, 85, 55),
(1264, 'Ferosinge', 40, 80, 35, 35, 45, 70, 56),
(1265, 'Colossinge', 65, 105, 60, 60, 70, 95, 57),
(1266, 'Caninos', 55, 70, 45, 70, 50, 60, 58),
(1267, 'Arcanin', 90, 110, 80, 100, 80, 95, 59),
(1268, 'Ptitard', 40, 50, 40, 40, 40, 90, 60),
(1269, 'Tetarte', 65, 65, 65, 50, 50, 90, 61),
(1270, 'Tartard', 90, 85, 95, 70, 90, 70, 62),
(1271, 'Abra', 25, 20, 15, 105, 55, 90, 63),
(1272, 'Kadabra', 40, 35, 30, 120, 70, 105, 64),
(1273, 'Alakazam', 55, 50, 45, 135, 85, 120, 65),
(1274, 'Machoc', 70, 80, 50, 35, 35, 35, 66),
(1275, 'Machopeur', 80, 100, 70, 50, 60, 45, 67),
(1276, 'Mackogneur', 90, 130, 80, 65, 85, 55, 68),
(1277, 'Chetiflor', 50, 75, 35, 70, 30, 40, 69),
(1278, 'Boustiflor', 65, 90, 50, 85, 45, 55, 70),
(1279, 'Empiflor', 80, 105, 65, 100, 60, 70, 71),
(1280, 'Tentacool', 40, 40, 35, 50, 100, 70, 72),
(1281, 'Tentacruel', 80, 70, 65, 80, 120, 100, 73),
(1282, 'Racaillou', 40, 80, 100, 30, 30, 20, 74),
(1283, 'Gravalanch', 55, 95, 115, 45, 45, 35, 75),
(1284, 'Grolem', 80, 110, 130, 55, 65, 45, 76),
(1285, 'Ponyta', 50, 85, 55, 65, 65, 90, 77),
(1286, 'Galopa', 65, 100, 70, 80, 80, 105, 78),
(1287, 'Ramoloss', 90, 65, 65, 40, 40, 15, 79),
(1288, 'Flagadoss', 95, 75, 110, 100, 80, 30, 80),
(1289, 'Magneti', 25, 35, 70, 95, 55, 45, 81),
(1290, 'Magneton', 50, 60, 95, 120, 70, 70, 82),
(1291, 'Canarticho', 52, 65, 55, 58, 62, 60, 83),
(1292, 'Doduo', 35, 85, 45, 35, 35, 75, 84),
(1293, 'Dodrio', 60, 110, 70, 60, 60, 100, 85),
(1294, 'Otaria', 65, 45, 55, 45, 70, 45, 86),
(1295, 'Lamantine', 90, 70, 80, 70, 95, 70, 87),
(1296, 'Tadmorv', 80, 80, 50, 40, 50, 25, 88),
(1297, 'Grotadmorv', 105, 105, 75, 65, 100, 50, 89),
(1298, 'Kokiyas', 30, 65, 100, 45, 25, 40, 90),
(1299, 'Crustabri', 50, 95, 180, 85, 45, 70, 91),
(1300, 'Fantominus', 30, 35, 30, 100, 35, 80, 92),
(1301, 'Spectrum', 45, 50, 45, 115, 55, 95, 93),
(1302, 'Ectoplasma', 60, 65, 60, 130, 75, 110, 94),
(1303, 'Onix', 35, 45, 160, 30, 45, 70, 95),
(1304, 'Soporifik', 60, 48, 45, 43, 90, 42, 96),
(1305, 'Hypnomade', 85, 73, 70, 73, 115, 67, 97),
(1306, 'Krabby', 30, 105, 90, 25, 25, 50, 98),
(1307, 'Krabboss', 55, 130, 115, 50, 50, 75, 99),
(1308, 'Voltorbe', 40, 30, 50, 55, 55, 100, 100),
(1309, 'Electrode', 60, 50, 70, 80, 80, 140, 101),
(1310, 'Noeunoeuf', 60, 40, 80, 60, 45, 40, 102),
(1311, 'Noadkoko', 95, 95, 85, 125, 65, 55, 103),
(1312, 'Osselait', 50, 50, 95, 40, 50, 35, 104),
(1313, 'Ossatueur', 60, 80, 110, 50, 80, 45, 105),
(1314, 'Kicklee', 50, 120, 53, 35, 110, 87, 106),
(1315, 'Tygnon', 50, 105, 79, 35, 110, 76, 107),
(1316, 'Excelangue', 90, 55, 75, 60, 75, 30, 108),
(1317, 'Smogo', 40, 65, 95, 60, 45, 35, 109),
(1318, 'Smogogo', 65, 90, 120, 85, 70, 60, 110),
(1319, 'Rhinocorne', 80, 85, 95, 30, 30, 25, 111),
(1320, 'Rhinoferos', 105, 130, 120, 45, 45, 40, 112),
(1321, 'Leveinard', 250, 5, 5, 35, 105, 50, 113),
(1322, 'Saquedeneu', 65, 55, 115, 100, 40, 60, 114),
(1323, 'Kangourex', 105, 95, 80, 40, 80, 90, 115),
(1324, 'Hypotrempe', 30, 40, 70, 70, 25, 60, 116),
(1325, 'Hypocean', 55, 65, 95, 95, 45, 85, 117),
(1326, 'Poissirene', 45, 67, 60, 35, 50, 63, 118),
(1327, 'Poissoroy', 80, 92, 65, 65, 80, 68, 119),
(1328, 'Stari', 30, 45, 55, 70, 55, 85, 120),
(1329, 'Staross', 60, 75, 85, 100, 85, 115, 121),
(1330, 'M.Mime', 40, 45, 65, 100, 120, 90, 122),
(1331, 'Insecateur', 70, 110, 80, 55, 80, 105, 123),
(1332, 'Lippoutou', 65, 50, 35, 115, 95, 95, 124),
(1333, 'Elektek', 65, 83, 57, 95, 85, 105, 125),
(1334, 'Magmar', 65, 95, 57, 100, 85, 93, 126),
(1335, 'Scarabrute', 65, 125, 100, 55, 70, 85, 127),
(1336, 'Tauros', 75, 100, 95, 40, 70, 110, 128),
(1337, 'Magicarpe', 20, 10, 55, 15, 20, 80, 129),
(1338, 'Leviator', 95, 125, 79, 60, 100, 81, 130),
(1339, 'Lokhlass', 130, 85, 80, 85, 95, 60, 131),
(1340, 'Metamorph', 48, 48, 48, 48, 48, 48, 132),
(1341, 'Evoli', 55, 55, 50, 45, 65, 55, 133),
(1342, 'Aquali', 130, 65, 60, 110, 95, 65, 134),
(1343, 'Voltali', 65, 65, 60, 110, 95, 130, 135),
(1344, 'Pyroli', 65, 130, 60, 95, 110, 65, 136),
(1345, 'Porygon', 65, 60, 70, 85, 75, 40, 137),
(1346, 'Amonita', 35, 40, 100, 90, 55, 35, 138),
(1347, 'Amonistar', 70, 60, 125, 115, 70, 55, 139),
(1348, 'Kabuto', 30, 80, 90, 55, 45, 55, 140),
(1349, 'Kabutops', 60, 115, 105, 65, 70, 80, 141),
(1350, 'Ptera', 80, 105, 65, 60, 75, 130, 142),
(1351, 'Ronflex', 160, 110, 65, 65, 110, 30, 143),
(1352, 'Artikodin', 90, 85, 100, 95, 125, 85, 144),
(1353, 'Electhor', 90, 90, 85, 125, 90, 100, 145),
(1354, 'Sulfura', 90, 100, 90, 125, 85, 90, 146),
(1355, 'Minidraco', 41, 64, 45, 50, 50, 50, 147),
(1356, 'Draco', 61, 84, 65, 70, 70, 70, 148),
(1357, 'Dracolosse', 91, 134, 95, 100, 100, 80, 149),
(1358, 'Mewtwo', 106, 110, 90, 154, 90, 130, 150),
(1359, 'Mew', 100, 100, 100, 100, 100, 100, 151);

-- --------------------------------------------------------

--
-- Structure de la table `pokemon_type`
--

CREATE TABLE `pokemon_type` (
  `id` int(11) NOT NULL,
  `pokemon_number` int(10) UNSIGNED NOT NULL,
  `type_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `pokemon_type`
--

INSERT INTO `pokemon_type` (`id`, `pokemon_number`, `type_id`) VALUES
(431, 1, 10),
(432, 1, 11),
(433, 2, 10),
(434, 2, 11),
(435, 3, 10),
(436, 3, 11),
(437, 4, 6),
(438, 5, 6),
(439, 6, 6),
(440, 6, 17),
(441, 7, 4),
(442, 8, 4),
(443, 9, 4),
(444, 10, 8),
(445, 11, 8),
(446, 12, 8),
(447, 12, 17),
(448, 13, 8),
(449, 13, 11),
(450, 14, 8),
(451, 14, 11),
(452, 15, 8),
(453, 15, 11),
(454, 16, 9),
(455, 16, 17),
(456, 17, 9),
(457, 17, 17),
(458, 18, 9),
(459, 18, 17),
(460, 19, 9),
(461, 20, 9),
(462, 21, 9),
(463, 21, 17),
(464, 22, 9),
(465, 22, 17),
(466, 23, 11),
(467, 24, 11),
(468, 25, 5),
(469, 26, 5),
(470, 27, 14),
(471, 28, 14),
(472, 29, 11),
(473, 30, 11),
(474, 31, 11),
(475, 31, 14),
(476, 32, 11),
(477, 33, 11),
(478, 34, 11),
(479, 34, 14),
(480, 35, 9),
(481, 36, 9),
(482, 37, 6),
(483, 38, 6),
(484, 39, 9),
(485, 40, 9),
(486, 41, 11),
(487, 41, 17),
(488, 42, 11),
(489, 42, 17),
(490, 43, 10),
(491, 43, 11),
(492, 44, 10),
(493, 44, 11),
(494, 45, 10),
(495, 45, 11),
(496, 46, 8),
(497, 46, 10),
(498, 47, 8),
(499, 47, 10),
(500, 48, 8),
(501, 48, 11),
(502, 49, 8),
(503, 49, 11),
(504, 50, 14),
(505, 51, 14),
(506, 52, 9),
(507, 53, 9),
(508, 54, 4),
(509, 55, 4),
(510, 56, 2),
(511, 57, 2),
(512, 58, 6),
(513, 59, 6),
(514, 60, 4),
(515, 61, 4),
(516, 62, 4),
(517, 62, 2),
(518, 63, 12),
(519, 64, 12),
(520, 65, 12),
(521, 66, 2),
(522, 67, 2),
(523, 68, 2),
(524, 69, 10),
(525, 69, 11),
(526, 70, 10),
(527, 70, 11),
(528, 71, 10),
(529, 71, 11),
(530, 72, 4),
(531, 72, 11),
(532, 73, 4),
(533, 73, 11),
(534, 74, 13),
(535, 74, 14),
(536, 75, 13),
(537, 75, 14),
(538, 76, 13),
(539, 76, 14),
(540, 77, 6),
(541, 78, 6),
(542, 79, 4),
(543, 79, 12),
(544, 80, 4),
(545, 80, 12),
(546, 81, 5),
(547, 81, 1),
(548, 82, 5),
(549, 82, 1),
(550, 83, 9),
(551, 83, 17),
(552, 84, 9),
(553, 84, 17),
(554, 85, 9),
(555, 85, 17),
(556, 86, 4),
(557, 87, 4),
(558, 87, 7),
(559, 88, 11),
(560, 89, 11),
(561, 90, 4),
(562, 91, 4),
(563, 91, 7),
(564, 92, 15),
(565, 92, 11),
(566, 93, 15),
(567, 93, 11),
(568, 94, 15),
(569, 94, 11),
(570, 95, 13),
(571, 95, 14),
(572, 96, 12),
(573, 97, 12),
(574, 98, 4),
(575, 99, 4),
(576, 100, 5),
(577, 101, 5),
(578, 102, 10),
(579, 102, 12),
(580, 103, 10),
(581, 103, 12),
(582, 104, 14),
(583, 105, 14),
(584, 106, 2),
(585, 107, 2),
(586, 108, 9),
(587, 109, 11),
(588, 110, 11),
(589, 111, 14),
(590, 111, 13),
(591, 112, 14),
(592, 112, 13),
(593, 113, 9),
(594, 114, 10),
(595, 115, 9),
(596, 116, 4),
(597, 117, 4),
(598, 118, 4),
(599, 119, 4),
(600, 120, 4),
(601, 121, 4),
(602, 121, 12),
(603, 122, 12),
(604, 123, 8),
(605, 123, 17),
(606, 124, 7),
(607, 124, 12),
(608, 125, 5),
(609, 126, 6),
(610, 127, 8),
(611, 128, 9),
(612, 129, 4),
(613, 130, 4),
(614, 130, 17),
(615, 131, 4),
(616, 131, 7),
(617, 132, 9),
(618, 133, 9),
(619, 134, 4),
(620, 135, 5),
(621, 136, 6),
(622, 137, 9),
(623, 138, 13),
(624, 138, 4),
(625, 139, 13),
(626, 139, 4),
(627, 140, 13),
(628, 140, 4),
(629, 141, 13),
(630, 141, 4),
(631, 142, 13),
(632, 142, 17),
(633, 143, 9),
(634, 144, 7),
(635, 144, 17),
(636, 145, 5),
(637, 145, 17),
(638, 146, 6),
(639, 146, 17),
(640, 147, 3),
(641, 148, 3),
(642, 149, 3),
(643, 149, 17),
(644, 150, 12),
(645, 151, 12);

-- --------------------------------------------------------

--
-- Structure de la table `type`
--

CREATE TABLE `type` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `color` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `type`
--

INSERT INTO `type` (`id`, `name`, `color`) VALUES
(1, 'Acier', 'aaaabb'),
(2, 'Combat', 'bb5544'),
(3, 'Dragon', '7766ee'),
(4, 'Eau', '3399ff'),
(5, 'Électrik', 'ffbb33'),
(6, 'Feu', 'ff4422'),
(7, 'Glace', '77ddff'),
(8, 'Insecte', 'aabb22'),
(9, 'Normal', 'bbaabb'),
(10, 'Plante', '77cc55'),
(11, 'Poison', 'aa5599'),
(12, 'Psy', 'ff5599'),
(13, 'Roche', 'bbaa66'),
(14, 'Sol', 'ddbb55'),
(15, 'Spectre', '6666bb'),
(16, 'Ténèbres', '665544'),
(17, 'Vol', '6699ff');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `evolutions`
--
ALTER TABLE `evolutions`
  ADD PRIMARY KEY (`pokemonnumber`);

--
-- Index pour la table `evolveIn`
--
ALTER TABLE `evolveIn`
  ADD PRIMARY KEY (`pokevolved`);

--
-- Index pour la table `pokemon`
--
ALTER TABLE `pokemon`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `number_2` (`number`),
  ADD KEY `number` (`number`);

--
-- Index pour la table `pokemon_type`
--
ALTER TABLE `pokemon_type`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type_id` (`type_id`),
  ADD KEY `pokemon_number` (`pokemon_number`);

--
-- Index pour la table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `evolutions`
--
ALTER TABLE `evolutions`
  MODIFY `pokemonnumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT pour la table `pokemon`
--
ALTER TABLE `pokemon`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1360;

--
-- AUTO_INCREMENT pour la table `pokemon_type`
--
ALTER TABLE `pokemon_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=646;

--
-- AUTO_INCREMENT pour la table `type`
--
ALTER TABLE `type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `pokemon_type`
--
ALTER TABLE `pokemon_type`
  ADD CONSTRAINT `pokemon_type_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `type` (`id`),
  ADD CONSTRAINT `pokemon_type_ibfk_2` FOREIGN KEY (`pokemon_number`) REFERENCES `pokemon` (`number`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
