-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2020 at 01:45 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.3.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yubelajar`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `birthdate` date NOT NULL,
  `added` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `first_name`, `last_name`, `email`, `birthdate`, `added`) VALUES
(1, 'Jesse', 'Dietrich', 'christy.howe@example.com', '1988-11-22', '2007-02-20 03:56:53'),
(2, 'Carlos', 'Douglas', 'lionel11@example.net', '1979-05-17', '2007-10-22 06:17:12'),
(3, 'Erling', 'Predovic', 'naomi.keebler@example.com', '1980-07-05', '1986-09-14 16:21:06'),
(4, 'Juwan', 'Kshlerin', 'chaya38@example.org', '1995-08-05', '2020-06-02 04:27:13'),
(5, 'Randi', 'Walker', 'luella.bergnaum@example.org', '2013-02-28', '1972-12-01 06:15:52'),
(6, 'Brigitte', 'O\'Reilly', 'dicki.xzavier@example.org', '2000-11-28', '2000-09-05 06:45:27'),
(7, 'Sandrine', 'Jacobi', 'bartell.bart@example.com', '1977-12-15', '2001-03-13 04:55:46'),
(8, 'Jayme', 'Lockman', 'santino96@example.com', '1993-02-04', '2010-04-14 02:42:59'),
(9, 'Bridget', 'Friesen', 'larkin.tyra@example.org', '1997-10-14', '2005-07-23 02:57:23'),
(10, 'Chance', 'Haley', 'amy.hansen@example.com', '1985-06-15', '1986-09-22 11:41:45'),
(11, 'Lela', 'Goyette', 'kautzer.karina@example.net', '1996-11-26', '2019-02-21 18:49:28'),
(12, 'Pierce', 'Vandervort', 'nabshire@example.org', '2019-10-17', '1980-08-09 22:24:01'),
(13, 'April', 'Hilpert', 'cruickshank.demetrius@example.com', '1973-01-19', '2012-06-10 17:39:42'),
(14, 'Godfrey', 'Schmeler', 'donnelly.raleigh@example.net', '2009-06-10', '1980-10-15 09:18:16'),
(15, 'Mireille', 'O\'Conner', 'gus.mccullough@example.com', '2005-11-28', '2000-03-31 06:18:53'),
(16, 'Kaylin', 'Von', 'milo.sipes@example.com', '2014-02-25', '1987-09-22 05:25:06'),
(17, 'Alfredo', 'Williamson', 'efadel@example.com', '1997-04-20', '1970-04-18 14:00:49'),
(18, 'Quinn', 'Lynch', 'pcartwright@example.net', '1979-03-25', '1997-03-26 18:27:07'),
(19, 'Mckayla', 'Lemke', 'aliyah11@example.com', '1991-02-17', '1978-09-08 19:36:33'),
(20, 'Lupe', 'Prohaska', 'kuvalis.ursula@example.org', '1984-09-16', '1989-05-16 20:44:03'),
(21, 'Leonard', 'Bechtelar', 'jorge.heller@example.net', '2006-05-26', '2003-06-17 14:39:20'),
(22, 'Humberto', 'Considine', 'arlo82@example.org', '2015-02-25', '2001-11-09 19:07:43'),
(23, 'Eva', 'Schaden', 'walsh.madilyn@example.net', '1970-03-12', '1975-06-02 08:18:18'),
(24, 'Elda', 'Gleichner', 'karley.hegmann@example.com', '2005-10-31', '1988-04-12 01:17:35'),
(25, 'Dawn', 'Barrows', 'toney.schowalter@example.net', '1993-01-04', '1976-03-15 19:41:36'),
(26, 'Keaton', 'Labadie', 'rmurray@example.org', '1976-12-18', '1975-02-05 17:55:04'),
(27, 'Fritz', 'Trantow', 'mtrantow@example.net', '1973-07-20', '1988-04-18 01:36:51'),
(28, 'Hester', 'Jerde', 'arch.lowe@example.com', '1985-04-03', '1985-08-11 02:58:24'),
(29, 'Friedrich', 'Johnson', 'hackett.fernando@example.net', '1998-11-13', '2006-08-12 22:32:21'),
(30, 'Eliezer', 'Daugherty', 'brakus.moshe@example.net', '1985-11-14', '1971-12-03 21:35:25'),
(31, 'Shyanne', 'Gottlieb', 'maximillian63@example.org', '2015-01-19', '2015-06-26 18:55:27'),
(32, 'Hilda', 'Weimann', 'tyrique96@example.net', '1976-11-19', '1997-01-10 11:37:50'),
(33, 'Olin', 'Muller', 'domenic02@example.com', '2006-07-24', '1981-10-29 04:30:53'),
(34, 'Amalia', 'Keebler', 'lindsay.lueilwitz@example.com', '1976-08-19', '1980-08-04 16:08:30'),
(35, 'Felton', 'Rohan', 'kendra25@example.com', '1992-07-30', '1970-08-17 10:02:00'),
(36, 'Taryn', 'Koepp', 'emmitt.toy@example.org', '1975-03-23', '2007-04-22 21:59:38'),
(37, 'Electa', 'Weber', 'tyshawn70@example.net', '2008-04-15', '2020-07-11 23:37:33'),
(38, 'Rosalia', 'Roob', 'peyton42@example.org', '2003-12-29', '2015-03-28 17:19:24'),
(39, 'Annamae', 'Stark', 'kimberly.kessler@example.com', '2020-09-08', '2005-09-29 12:00:52'),
(40, 'Destiny', 'Lang', 'nicolas.jayne@example.net', '2001-07-05', '1994-03-30 01:55:22'),
(41, 'Reymundo', 'Swaniawski', 'jacobson.earnest@example.net', '2018-02-05', '2017-05-05 14:52:36'),
(42, 'Ken', 'Schulist', 'nayeli52@example.com', '2013-04-08', '1975-04-24 20:31:46'),
(43, 'Hillard', 'Batz', 'ernest72@example.com', '2018-10-01', '1985-01-01 00:45:48'),
(44, 'Rusty', 'Pouros', 'rschneider@example.org', '1971-09-29', '2020-10-01 10:03:41'),
(45, 'Bernadine', 'Cummings', 'hershel.legros@example.com', '1989-03-15', '2008-08-07 17:52:56'),
(46, 'Richard', 'Hyatt', 'tillman.jammie@example.com', '1981-09-01', '1973-11-20 05:22:44'),
(47, 'Mekhi', 'Jakubowski', 'danial.lesch@example.net', '2004-04-19', '1981-05-06 08:33:20'),
(48, 'Keven', 'Paucek', 'gusikowski.alayna@example.org', '2014-03-24', '2018-05-05 04:43:50'),
(49, 'Duncan', 'Fadel', 'yundt.damian@example.com', '1991-09-08', '1987-01-19 05:29:29'),
(50, 'Josefa', 'Raynor', 'zlarkin@example.com', '2002-02-06', '2012-03-29 05:44:17'),
(51, 'Ervin', 'Turcotte', 'myriam69@example.net', '1973-03-02', '2002-05-14 00:04:22'),
(52, 'Hellen', 'Harvey', 'boyer.raymundo@example.net', '1989-11-21', '1981-01-28 15:42:55'),
(53, 'Hiram', 'Sawayn', 'hauck.enoch@example.net', '2008-12-03', '1982-02-23 01:46:46'),
(54, 'Una', 'Hilll', 'larson.lura@example.com', '1986-06-30', '1989-01-23 21:29:15'),
(55, 'Heath', 'Cormier', 'eshields@example.net', '1978-02-13', '2017-02-07 07:01:09'),
(56, 'Michel', 'Ritchie', 'reichert.laura@example.net', '1996-05-28', '2003-01-18 14:53:09'),
(57, 'Lelia', 'Osinski', 'stan55@example.org', '2014-07-20', '2018-03-09 07:35:32'),
(58, 'Laney', 'Sporer', 'boyle.karlee@example.com', '1993-06-27', '1983-03-09 18:09:55'),
(59, 'Paxton', 'Aufderhar', 'jammie.dickinson@example.org', '1987-01-29', '1973-10-04 03:04:06'),
(60, 'Marquis', 'Rosenbaum', 'd\'angelo.bartoletti@example.com', '2017-10-08', '2013-11-09 16:44:24'),
(61, 'Blaise', 'Windler', 'eldred22@example.com', '2001-01-18', '2017-10-06 22:54:24'),
(62, 'Eldred', 'Weber', 'maximillian30@example.com', '1992-08-19', '2012-11-14 15:50:52'),
(63, 'Lera', 'Mosciski', 'vandervort.jerod@example.org', '1974-11-27', '1986-04-29 21:27:36'),
(64, 'Veronica', 'Leffler', 'jerde.eladio@example.com', '2013-07-22', '1974-01-03 21:13:06'),
(65, 'Bernadine', 'Kling', 'jskiles@example.com', '1972-04-10', '1984-04-27 00:25:39'),
(66, 'Aron', 'Kassulke', 'christiansen.gilda@example.com', '1990-12-18', '1986-08-29 21:39:08'),
(67, 'Tamia', 'Erdman', 'guy.farrell@example.com', '1995-06-01', '2004-08-22 07:05:54'),
(68, 'Shanel', 'Koepp', 'nleannon@example.com', '1989-03-29', '1987-05-17 18:45:57'),
(69, 'Romaine', 'Lakin', 'earlene.lebsack@example.net', '1983-02-24', '1977-09-24 00:58:41'),
(70, 'Sharon', 'Spinka', 'antwan47@example.net', '1988-01-31', '1993-10-02 13:41:32'),
(71, 'Larue', 'Aufderhar', 'fatima29@example.org', '2016-05-04', '2008-04-29 09:35:44'),
(72, 'Tara', 'Johnston', 'louvenia72@example.org', '1994-07-28', '1998-12-28 06:15:52'),
(73, 'Russel', 'Fahey', 'amari52@example.com', '1982-11-26', '2010-04-18 07:19:56'),
(74, 'Lucile', 'Fritsch', 'retta.greenfelder@example.net', '2013-06-21', '1970-05-16 02:08:42'),
(75, 'Melany', 'Koepp', 'iroob@example.org', '1988-09-24', '2010-03-24 17:36:21'),
(76, 'Angeline', 'Hamill', 'marian.walsh@example.org', '1994-07-22', '1982-04-21 07:52:50'),
(77, 'Nickolas', 'Botsford', 'ncorkery@example.org', '2017-06-26', '2009-12-04 02:05:42'),
(78, 'Andre', 'Stracke', 'ojakubowski@example.net', '1984-07-28', '1999-03-03 01:52:25'),
(79, 'Moses', 'Lesch', 'pierre.crist@example.net', '2012-10-11', '2020-04-03 12:24:56'),
(80, 'Lilliana', 'Kuvalis', 'nwisozk@example.net', '2015-05-31', '2011-07-06 18:37:17'),
(81, 'Pedro', 'Halvorson', 'beahan.carmel@example.org', '1998-12-23', '1986-01-07 09:42:55'),
(82, 'Lea', 'King', 'anastasia.feeney@example.org', '1994-05-01', '1999-10-05 18:19:30'),
(83, 'Kendall', 'Maggio', 'schoen.walter@example.com', '1975-04-08', '2005-07-03 17:53:14'),
(84, 'Felix', 'Runolfsdottir', 'kayley40@example.com', '2011-04-20', '2011-11-01 04:27:20'),
(85, 'Zoey', 'Ward', 'bergnaum.meaghan@example.org', '1980-09-05', '1970-01-12 21:51:38'),
(86, 'Desiree', 'Armstrong', 'davis.jaden@example.com', '1991-05-17', '1993-07-27 03:34:51'),
(87, 'Sylvia', 'Koelpin', 'batz.joannie@example.org', '2007-09-10', '1982-12-19 07:22:23'),
(88, 'Lenora', 'Champlin', 'hintz.gage@example.net', '2010-04-23', '1990-05-14 20:21:38'),
(89, 'Harmony', 'Gulgowski', 'furman.flatley@example.org', '1980-01-21', '2013-09-25 17:39:04'),
(90, 'Moshe', 'Fay', 'cnienow@example.com', '2004-12-30', '1994-07-03 20:07:15'),
(91, 'Caleb', 'Ward', 'oritchie@example.com', '1995-11-17', '1984-09-26 06:47:40'),
(92, 'Ora', 'Corwin', 'kjast@example.net', '2014-06-27', '1996-06-07 00:02:25'),
(93, 'Jonatan', 'Kihn', 'xhaley@example.com', '2009-06-03', '2002-06-02 13:22:23'),
(94, 'Carey', 'Metz', 'sylvester.mckenzie@example.net', '2005-09-14', '2007-10-09 18:22:43'),
(95, 'Janick', 'Waelchi', 'alexis.fahey@example.net', '1978-05-05', '2010-08-17 01:16:40'),
(96, 'Freeda', 'Lubowitz', 'janie96@example.net', '1972-11-02', '2005-09-01 20:37:35'),
(97, 'Chadrick', 'Nienow', 'streutel@example.net', '1992-03-17', '1985-11-27 17:57:22'),
(98, 'Isaiah', 'Ondricka', 'alek72@example.org', '1991-01-30', '2020-03-18 17:57:18'),
(99, 'Alycia', 'Thompson', 'ned20@example.net', '2005-01-13', '2014-05-30 13:04:17'),
(100, 'Garth', 'Ondricka', 'umetz@example.net', '1986-02-09', '2002-03-19 18:55:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
