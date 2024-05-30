-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Maj 30, 2024 at 08:30 PM
-- Wersja serwera: 10.5.20-MariaDB
-- Wersja PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id21971346_libraryapp`
--
CREATE DATABASE IF NOT EXISTS `id21971346_libraryapp` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `id21971346_libraryapp`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `db_autor`
--

CREATE TABLE `db_autor` (
  `ID` int(11) NOT NULL,
  `nazwa_autora` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_autor`
--

INSERT INTO `db_autor` (`ID`, `nazwa_autora`) VALUES
(1, 'Józef wybicki'),
(2, 'Jan kopec'),
(3, ''),
(4, 'Laura golden');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `db_gatunki`
--

CREATE TABLE `db_gatunki` (
  `ID` int(11) NOT NULL,
  `nazwa_gatunku` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_gatunki`
--

INSERT INTO `db_gatunki` (`ID`, `nazwa_gatunku`) VALUES
(1, 'Horror'),
(2, 'Sci - fi'),
(3, ''),
(4, ''),
(5, 'Fikcja'),
(6, '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `db_historia`
--

CREATE TABLE `db_historia` (
  `id` int(11) NOT NULL,
  `nazwa_ksiazki` varchar(255) NOT NULL,
  `imie_nazwisko` varchar(255) NOT NULL,
  `data_czas_dodania` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_historia`
--

INSERT INTO `db_historia` (`id`, `nazwa_ksiazki`, `imie_nazwisko`, `data_czas_dodania`) VALUES
(1, 'Noc nad jeziorem', 'Jacek Stefaniak', '2024-05-19 15:24:08'),
(2, 'Xd', 'Jacek Stefaniak', '2024-05-19 21:38:33'),
(3, 'Lesław', 'Jacek Stefaniak', '2024-05-23 09:30:36'),
(4, 'Noc nad jeziorem', 'Jacek Stefaniak', '2024-05-23 15:06:00'),
(5, 'Noc nad jeziorem', 'Kacper Adamczyk', '2024-05-26 11:25:05'),
(6, 'Dom nad lasem', 'Kacper Adamczyk', '2024-05-28 01:26:51'),
(7, 'Noc nad jeziorem', 'Jacek Stefaniak', '2024-05-28 01:28:24'),
(8, 'Noc nad jeziorem', 'Jacek Stefaniak', '2024-05-28 01:32:59'),
(9, 'Noc nad jeziorem', 'Kacper Adamczyk', '2024-05-28 01:38:31'),
(10, 'Krzysztof król ', 'Kacper Adamczyk', '2024-05-29 10:17:21');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `db_klasy`
--

CREATE TABLE `db_klasy` (
  `ID` int(11) NOT NULL,
  `nazwa_klasy` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_klasy`
--

INSERT INTO `db_klasy` (`ID`, `nazwa_klasy`) VALUES
(1, '3eT'),
(2, '2aT');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `db_ksiazki`
--

CREATE TABLE `db_ksiazki` (
  `id` int(11) NOT NULL,
  `tytul` varchar(200) DEFAULT NULL,
  `autor` varchar(200) DEFAULT NULL,
  `rodzaj` varchar(200) DEFAULT NULL,
  `gatunek` varchar(200) DEFAULT NULL,
  `lokalizacja` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_ksiazki`
--

INSERT INTO `db_ksiazki` (`id`, `tytul`, `autor`, `rodzaj`, `gatunek`, `lokalizacja`) VALUES
(1, 'Noc nad jeziorem', 'Józef wybicki', 'Lektura', 'Horror', 'Na stanie'),
(2, 'Noc nad jeziorem', 'Józef wybicki', 'Lektura', 'Horror', 'Na stanie'),
(3, 'Xd', 'Józef wybicki', 'Książka', 'Horror', 'Na stanie'),
(5, 'Xd', 'Józef wybicki', 'Książka', 'Horror', 'Na stanie'),
(6, 'Test1', 'Jan kopec', 'Lektura', 'Sci - fi', 'Na stanie'),
(7, 'Lesław', 'Józef wybicki', 'Lektura', 'Horror', 'Na stanie'),
(9, 'Dom nad lasem', 'Laura golden', 'Lektura', 'Horror', 'Na stanie'),
(10, '', '', '', '', 'Na stanie'),
(11, 'Krzysztof król ', 'Jan kopec', 'Książka', 'Sci - fi', 'Wypożyczona'),
(12, 'Krzysztof król ', 'Jan kopec', 'Książka', 'Sci - fi', 'Na stanie');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `db_uczniowie`
--

CREATE TABLE `db_uczniowie` (
  `id` int(11) NOT NULL,
  `imie_nazwisko` varchar(200) DEFAULT NULL,
  `klasa` varchar(20) DEFAULT NULL,
  `bookid` int(11) DEFAULT NULL,
  `wypozyczenia` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_uczniowie`
--

INSERT INTO `db_uczniowie` (`id`, `imie_nazwisko`, `klasa`, `bookid`, `wypozyczenia`) VALUES
(1, 'Jacek Stefaniak', '2aT', 0, 'brak'),
(2, 'Kacper Adamczyk', '3eT', 11, 'Krzysztof król '),
(3, 'Aniela Badura', '3eT', 0, 'brak');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `db_users`
--

CREATE TABLE `db_users` (
  `id` int(11) NOT NULL,
  `login` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `permissions` varchar(10) DEFAULT NULL,
  `im_naz` varchar(255) DEFAULT 'Brak danych'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_users`
--

INSERT INTO `db_users` (`id`, `login`, `password`, `permissions`, `im_naz`) VALUES
(1, 'admin', 'admin', NULL, 'Jacek Stefaniak'),
(3, 'test1', 'test1', NULL, 'Kacper Adamczyk'),
(4, '', '', NULL, 'Brak danych'),
(5, 'admin2', 'admin2', NULL, 'Brak danych'),
(10, 'root', 'root', 'y', 'Brak danych'),
(53, 'ewlwqh', '', NULL, 'Brak danych'),
(60, 'kxtyqh', '', NULL, 'Brak danych'),
(61, 'xvxcku', 'ongzpo', NULL, 'Brak danych'),
(62, 'kiukzy', 'ongzpo', NULL, 'Brak danych'),
(63, 'jpbwyw', 'zoxrmc', NULL, 'Brak danych'),
(64, 'dczcue', 'zuyequ', NULL, 'Brak danych');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `db_autor`
--
ALTER TABLE `db_autor`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `db_gatunki`
--
ALTER TABLE `db_gatunki`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `db_historia`
--
ALTER TABLE `db_historia`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `db_klasy`
--
ALTER TABLE `db_klasy`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `db_ksiazki`
--
ALTER TABLE `db_ksiazki`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `db_uczniowie`
--
ALTER TABLE `db_uczniowie`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `db_users`
--
ALTER TABLE `db_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `db_autor`
--
ALTER TABLE `db_autor`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `db_gatunki`
--
ALTER TABLE `db_gatunki`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `db_historia`
--
ALTER TABLE `db_historia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `db_klasy`
--
ALTER TABLE `db_klasy`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `db_ksiazki`
--
ALTER TABLE `db_ksiazki`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `db_uczniowie`
--
ALTER TABLE `db_uczniowie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `db_users`
--
ALTER TABLE `db_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
