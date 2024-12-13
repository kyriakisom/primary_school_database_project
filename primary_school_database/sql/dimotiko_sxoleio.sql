-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Φιλοξενητής: 127.0.0.1
-- Χρόνος δημιουργίας: 16 Δεκ 2021 στις 01:26:38
-- Έκδοση διακομιστή: 10.1.38-MariaDB
-- Έκδοση PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Βάση δεδομένων: `dimotiko_sxoleio`
--

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `courses`
--

CREATE TABLE `courses` (
  `cid` int(11) NOT NULL,
  `course` varchar(20) DEFAULT NULL,
  `coursetype` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Άδειασμα δεδομένων του πίνακα `courses`
--

INSERT INTO `courses` (`cid`, `course`, `coursetype`) VALUES
(2, 'Glossa', 'Genikis Agogis'),
(5, 'Glossa', 'Genikis Agogis'),
(8, 'Mathimatika', 'Genikis Agogis'),
(9, 'Mathimatika', 'Genikis Agogis'),
(11, 'Meleti Perivalontos', 'Genikis Agogis'),
(13, 'Fisiki', 'Genikis Agogis'),
(18, 'Geografia', 'Genikis Agogis'),
(19, 'Agglika', 'Ksenon Glosson'),
(20, 'Gimnastiki', 'Fisikis Agogis'),
(25, 'Mousiki', 'Mousikis Agogis');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `courseschalls`
--

CREATE TABLE `courseschalls` (
  `cid` int(11) NOT NULL,
  `hname` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Άδειασμα δεδομένων του πίνακα `courseschalls`
--

INSERT INTO `courseschalls` (`cid`, `hname`) VALUES
(2, 'Aithousa A'),
(5, 'Aithousa B'),
(8, 'Aithousa A'),
(9, 'Aithousa B'),
(11, 'Kentriki Aithousa Ek'),
(13, 'Aithousa A'),
(18, 'Aithousa B'),
(19, 'Kentriki Aithousa Ek'),
(20, 'Kentriki Aithousa Ek'),
(25, 'Aithousa Mousikis');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `gradetab`
--

CREATE TABLE `gradetab` (
  `gtid` varchar(10) NOT NULL,
  `sid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Άδειασμα δεδομένων του πίνακα `gradetab`
--

INSERT INTO `gradetab` (`gtid`, `sid`) VALUES
('A2110-02', 2015001),
('A2110-08', 2015004),
('A2110-09', 2015006),
('A2110-11', 2016001),
('A2110-13', 2016005),
('A2110-18', 2018002),
('A2110-19', 2020001),
('A2110-25', 2021001);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `gradetabcourse`
--

CREATE TABLE `gradetabcourse` (
  `gtid` varchar(10) NOT NULL,
  `cid` int(11) NOT NULL,
  `grade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Άδειασμα δεδομένων του πίνακα `gradetabcourse`
--

INSERT INTO `gradetabcourse` (`gtid`, `cid`, `grade`) VALUES
('A2110-02', 2, 5),
('A2110-08', 2, 8),
('A2110-09', 8, 10),
('A2110-11', 13, 10),
('A2110-11', 11, 9),
('A2110-13', 18, 8),
('A2110-13', 5, 7),
('A2110-19', 9, 7),
('A2110-25', 2, 10);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `schoolhalls`
--

CREATE TABLE `schoolhalls` (
  `hname` varchar(20) NOT NULL,
  `maxcapacity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Άδειασμα δεδομένων του πίνακα `schoolhalls`
--

INSERT INTO `schoolhalls` (`hname`, `maxcapacity`) VALUES
('Aithousa A', 20),
('Aithousa B', 20),
('Aithousa Mousikis', 25),
('Kentriki Aithousa Ek', 50);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `students`
--

CREATE TABLE `students` (
  `sid` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `surname` varchar(20) NOT NULL,
  `fathername` varchar(20) NOT NULL,
  `mothername` varchar(20) NOT NULL,
  `birthdate` date DEFAULT NULL,
  `address` varchar(20) DEFAULT NULL,
  `telephone` varchar(10) DEFAULT NULL,
  `class` varchar(15) DEFAULT NULL,
  `registrdate` date DEFAULT NULL,
  `absences` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Άδειασμα δεδομένων του πίνακα `students`
--

INSERT INTO `students` (`sid`, `name`, `surname`, `fathername`, `mothername`, `birthdate`, `address`, `telephone`, `class`, `registrdate`, `absences`) VALUES
(2015001, 'Anthi', 'Konstantinou', 'Iosif', 'Stavroula', '2010-08-02', 'Ploutarxou 13', '2273038518', 'Ekti-ST', '2015-05-06', 0),
(2015004, 'Iraklis', 'Dimopoulos', 'Nikolaos', 'Ioanna', '2010-05-05', 'Diogenous 5', '2273050001', 'Ekti-ST', '2015-05-09', 0),
(2015006, 'Antonios', 'Nakas', 'Alexandros', 'Kyriaki', '2010-10-23', 'Gorgiras 8', '2273055039', 'Ekti-ST', '2015-05-13', 2),
(2016001, 'Olga', 'Kefalogianni', 'Fotios', 'Georgia', '2011-03-07', 'Sofouli 3', '2273011132', 'Pempti-E', '2016-05-14', 3),
(2016005, 'Xrisanthi', 'Platanioti', 'Evangelos', 'Athanasia', '2011-12-17', 'Ploutarxou 13', '2273023256', 'Pempti-E', '2016-05-10', 4),
(2018002, 'Alexios', 'Georgakopoulos', 'Dimosthenis', 'Marianthi', '2014-05-15', 'Gorgiras 8', '2273062270', 'Triti-C', '2018-05-11', 1),
(2020001, 'Labros', 'Papagiannopoulos', 'Miltiadis', 'Melpomeni', '2015-08-28', 'Diogenous 5', '2273045575', 'Deutera-B', '2019-05-12', 1),
(2021001, 'Afroditi', 'Eulampiou', 'Athanasios', 'Euaggelia', '2016-03-03', 'Seferi 9', '2273081026', 'Proti-A', '2020-09-01', 2);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `studentschalls`
--

CREATE TABLE `studentschalls` (
  `sid` int(11) NOT NULL,
  `hname` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Άδειασμα δεδομένων του πίνακα `studentschalls`
--

INSERT INTO `studentschalls` (`sid`, `hname`) VALUES
(2015001, 'Aithousa A'),
(2015004, 'Aithousa B'),
(2015006, 'Kentriki Aithousa Ek'),
(2016001, 'Aithousa A'),
(2016005, 'Aithousa Mousikis'),
(2018002, 'Kentriki Aithousa Ek'),
(2020001, 'Aithousa B'),
(2021001, 'Aithousa B');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `teachers`
--

CREATE TABLE `teachers` (
  `tid` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `surname` varchar(20) NOT NULL,
  `birthdate` date DEFAULT NULL,
  `address` varchar(20) DEFAULT NULL,
  `telephone` varchar(10) DEFAULT NULL,
  `specialty` varchar(20) DEFAULT NULL,
  `workagr` varchar(20) DEFAULT NULL,
  `workhours` int(11) DEFAULT NULL,
  `startdate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Άδειασμα δεδομένων του πίνακα `teachers`
--

INSERT INTO `teachers` (`tid`, `name`, `surname`, `birthdate`, `address`, `telephone`, `specialty`, `workagr`, `workhours`, `startdate`) VALUES
(2111, 'Konstantina', 'Siampani', '1982-08-22', 'Pithagora 9', '6955112233', 'Gimnastria', 'Anaplirotria', 13, '2008-11-03'),
(2334, 'Georgios', 'Nikolaou', '1968-11-16', 'El.Venizelou 25', '6985366256', 'Daskalos', 'Monimos', 25, '1990-08-20'),
(2525, 'Nikolaos', 'Spanos', '1980-11-30', 'Sofouli 3', '6982259689', 'Daskalos', 'Anaplirotis', 25, '2013-06-28'),
(2548, 'Dimitrios', 'Filippou', '1960-01-15', 'Kontaksi 12', '6932154321', 'Daskalos', 'Monimos', 25, '1994-01-25'),
(2868, 'Evgenia', 'Alexandri', '1990-08-04', 'Kontaksi 12', '6934567891', 'Mousikis', 'Anaplirotria', 12, '2015-02-02'),
(2991, 'Lefkothea', 'Papoutsaki', '1965-07-05', 'Sofouli 3', '6925638910', 'Agglikon', 'Monimos', 13, '1995-12-09');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `teacherscourses`
--

CREATE TABLE `teacherscourses` (
  `tid` int(11) DEFAULT NULL,
  `cid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Άδειασμα δεδομένων του πίνακα `teacherscourses`
--

INSERT INTO `teacherscourses` (`tid`, `cid`) VALUES
(2334, 2),
(2334, 8),
(2334, 13),
(2548, 5),
(2548, 9),
(2548, 11),
(2991, 19),
(2525, 18),
(2111, 20),
(2868, 25);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `teachersschoolhalls`
--

CREATE TABLE `teachersschoolhalls` (
  `tid` int(11) NOT NULL,
  `hname` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Άδειασμα δεδομένων του πίνακα `teachersschoolhalls`
--

INSERT INTO `teachersschoolhalls` (`tid`, `hname`) VALUES
(2334, 'Aithousa A'),
(2548, 'Aithousa B'),
(2334, 'Aithousa B'),
(2991, 'Kentriki Aithousa Ek'),
(2525, 'Aithousa A'),
(2868, 'Aithousa Mousikis'),
(2111, 'Kentriki Aithousa Ek');

--
-- Ευρετήρια για άχρηστους πίνακες
--

--
-- Ευρετήρια για πίνακα `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`cid`);

--
-- Ευρετήρια για πίνακα `courseschalls`
--
ALTER TABLE `courseschalls`
  ADD KEY `cid` (`cid`),
  ADD KEY `hname` (`hname`);

--
-- Ευρετήρια για πίνακα `gradetab`
--
ALTER TABLE `gradetab`
  ADD PRIMARY KEY (`gtid`),
  ADD KEY `sid` (`sid`);

--
-- Ευρετήρια για πίνακα `gradetabcourse`
--
ALTER TABLE `gradetabcourse`
  ADD KEY `gtid` (`gtid`),
  ADD KEY `cid` (`cid`);

--
-- Ευρετήρια για πίνακα `schoolhalls`
--
ALTER TABLE `schoolhalls`
  ADD PRIMARY KEY (`hname`);

--
-- Ευρετήρια για πίνακα `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`sid`);

--
-- Ευρετήρια για πίνακα `studentschalls`
--
ALTER TABLE `studentschalls`
  ADD KEY `sid` (`sid`),
  ADD KEY `hname` (`hname`);

--
-- Ευρετήρια για πίνακα `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`tid`);

--
-- Ευρετήρια για πίνακα `teacherscourses`
--
ALTER TABLE `teacherscourses`
  ADD KEY `tid` (`tid`),
  ADD KEY `cid` (`cid`);

--
-- Ευρετήρια για πίνακα `teachersschoolhalls`
--
ALTER TABLE `teachersschoolhalls`
  ADD KEY `tid` (`tid`),
  ADD KEY `hname` (`hname`);

--
-- Περιορισμοί για άχρηστους πίνακες
--

--
-- Περιορισμοί για πίνακα `courseschalls`
--
ALTER TABLE `courseschalls`
  ADD CONSTRAINT `courseschalls_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `courses` (`cid`),
  ADD CONSTRAINT `courseschalls_ibfk_2` FOREIGN KEY (`hname`) REFERENCES `schoolhalls` (`hname`);

--
-- Περιορισμοί για πίνακα `gradetab`
--
ALTER TABLE `gradetab`
  ADD CONSTRAINT `gradetab_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `students` (`sid`);

--
-- Περιορισμοί για πίνακα `gradetabcourse`
--
ALTER TABLE `gradetabcourse`
  ADD CONSTRAINT `gradetabcourse_ibfk_1` FOREIGN KEY (`gtid`) REFERENCES `gradetab` (`gtid`),
  ADD CONSTRAINT `gradetabcourse_ibfk_2` FOREIGN KEY (`cid`) REFERENCES `courses` (`cid`);

--
-- Περιορισμοί για πίνακα `studentschalls`
--
ALTER TABLE `studentschalls`
  ADD CONSTRAINT `studentschalls_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `students` (`sid`),
  ADD CONSTRAINT `studentschalls_ibfk_2` FOREIGN KEY (`hname`) REFERENCES `schoolhalls` (`hname`);

--
-- Περιορισμοί για πίνακα `teacherscourses`
--
ALTER TABLE `teacherscourses`
  ADD CONSTRAINT `teacherscourses_ibfk_1` FOREIGN KEY (`tid`) REFERENCES `teachers` (`tid`),
  ADD CONSTRAINT `teacherscourses_ibfk_2` FOREIGN KEY (`cid`) REFERENCES `courses` (`cid`);

--
-- Περιορισμοί για πίνακα `teachersschoolhalls`
--
ALTER TABLE `teachersschoolhalls`
  ADD CONSTRAINT `teachersschoolhalls_ibfk_1` FOREIGN KEY (`tid`) REFERENCES `teachers` (`tid`),
  ADD CONSTRAINT `teachersschoolhalls_ibfk_2` FOREIGN KEY (`hname`) REFERENCES `schoolhalls` (`hname`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
