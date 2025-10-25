-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Pritësi (host): 127.0.0.1:4306
-- Koha e gjenerimit: Tet 25, 2025 në 03:35 MD
-- Versioni i serverit: 10.4.32-MariaDB
-- PHP Versioni: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databaza: `supermarket`
--

-- --------------------------------------------------------

--
-- Struktura e tabelës për tabelën `fatura`
--

CREATE TABLE `fatura` (
  `fatura_id` int(11) NOT NULL,
  `fatura_data` date NOT NULL,
  `fatura_shuma` decimal(10,0) NOT NULL,
  `punonjes_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zbraz të dhënat për tabelën `fatura`
--

INSERT INTO `fatura` (`fatura_id`, `fatura_data`, `fatura_shuma`, `punonjes_id`) VALUES
(711, '2025-05-22', 2000, 211),
(712, '2025-07-01', 6240, 211),
(713, '2025-05-13', 840, 212),
(714, '2025-05-07', 5710, 212),
(715, '2025-05-08', 1050, 211),
(716, '2025-05-08', 400, 211),
(717, '2025-05-08', 400, 211),
(718, '2025-05-08', 9000, 211),
(719, '2025-05-08', 1000, 211),
(720, '2025-05-08', 240, 211);

-- --------------------------------------------------------

--
-- Struktura e tabelës për tabelën `furnitoret`
--

CREATE TABLE `furnitoret` (
  `furnitor_id` int(11) NOT NULL,
  `furnitor_emer` varchar(20) NOT NULL,
  `furnitor_adres` text NOT NULL,
  `furnitor_nr_tel` int(11) NOT NULL,
  `furnitor_email` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zbraz të dhënat për tabelën `furnitoret`
--

INSERT INTO `furnitoret` (`furnitor_id`, `furnitor_emer`, `furnitor_adres`, `furnitor_nr_tel`, `furnitor_email`) VALUES
(311, 'Teuta', 'Durres', 689885252, 'teutadurres@gmail.al'),
(312, 'Coca-Cola', 'Tirane', 699995214, 'cocacola@gmail.com'),
(313, 'Elka', 'Gjirokaster', 685540001, 'info@elka.al'),
(314, 'Qafshtama', 'Tirane', 672050113, 'infoqafshtama@gmail.'),
(316, 'Palma', 'Tirane', 687845693, 'frutatethata@gmail.c'),
(318, 'Lufra', 'Lushnje', 698552110, 'lufra@gmail.com');

-- --------------------------------------------------------

--
-- Struktura e tabelës për tabelën `klientet`
--

CREATE TABLE `klientet` (
  `klient_id` int(11) NOT NULL,
  `klient_emri` varchar(20) NOT NULL,
  `klient_email` varchar(20) NOT NULL,
  `klient_nr_tel` int(11) NOT NULL,
  `klient_adres` varchar(100) NOT NULL,
  `klient_gjinia` enum('Femer','Mashkull') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zbraz të dhënat për tabelën `klientet`
--

INSERT INTO `klientet` (`klient_id`, `klient_emri`, `klient_email`, `klient_nr_tel`, `klient_adres`, `klient_gjinia`) VALUES
(123, 'Era Gjika', 'eragj@gmail.com', 692587522, 'Lagja 15,Durres, Albania', 'Femer'),
(124, 'Erinold Pjetri', 'epjetri22@gmail.com', 693546899, 'Lagja nr.1,Durres, Albania', 'Mashkull'),
(125, 'Arsen Mucmata', 'arsen12m@gmail.com', 688252555, 'Rruga Bardhyl,Tirane, Albania', 'Mashkull'),
(126, 'Sara Muca', 'mucamuca@gmail.com', 678745511, 'Rruga Kadri, Lushnje, Albania\r\n', 'Femer'),
(127, 'Arjeta Iberhasaj', 'arjetaiberhasaj@gmai', 682032222, 'Rruga Mihal Komnena,Berat, Albania ', 'Femer'),
(128, 'Amarildo Hyseni', 'hysenaja@gmail.com', 675222314, 'Rruga Marin Bicikemi, Shkoder, Albania', 'Mashkull'),
(129, 'Liridon Krasniqi', 'krasniqi11l@gmail.co', 2147483647, 'Rruga Luan Haradinaj,Prishtine, Kosove', 'Mashkull'),
(131, 'Emilian Hoxha', 'emialianh89l@gmail.c', 695542002, 'Rruga Hoti,Prizren,Kosove', 'Mashkull'),
(132, 'Majlinda Bardhi', 'majlindal@gmail.com', 685547699, 'Rruga Isa Boletini,Tirane, Albania', 'Femer'),
(6666, 'dorjan', 'doran@gmail.com', 69822222, 'tirane', 'Mashkull'),
(6667, 'valmira', 'valmira2', 69822222, 'tirane, prane albmarket', 'Femer');

-- --------------------------------------------------------

--
-- Struktura e tabelës për tabelën `porosingaklientet`
--

CREATE TABLE `porosingaklientet` (
  `porosingaklientet_id` int(11) NOT NULL,
  `data_porosise` date NOT NULL,
  `statusi` enum('e derguar','e paderguar') NOT NULL,
  `klient_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zbraz të dhënat për tabelën `porosingaklientet`
--

INSERT INTO `porosingaklientet` (`porosingaklientet_id`, `data_porosise`, `statusi`, `klient_id`) VALUES
(511, '2025-07-18', 'e paderguar', 123),
(512, '2025-06-25', 'e derguar', 124),
(513, '2025-04-17', 'e paderguar', 126),
(515, '2025-05-29', 'e paderguar', 128),
(516, '2025-08-08', 'e paderguar', 123),
(517, '2025-07-06', 'e derguar', 123);

-- --------------------------------------------------------

--
-- Struktura e tabelës për tabelën `porosingaklientet_produkt`
--

CREATE TABLE `porosingaklientet_produkt` (
  `porosingaklientet_id` int(11) NOT NULL,
  `produkt_id` int(11) NOT NULL,
  `sasia_kerkuar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zbraz të dhënat për tabelën `porosingaklientet_produkt`
--

INSERT INTO `porosingaklientet_produkt` (`porosingaklientet_id`, `produkt_id`, `sasia_kerkuar`) VALUES
(512, 415, 12),
(511, 416, 20),
(513, 412, 5),
(515, 413, 50),
(512, 414, 5),
(517, 425, 1),
(516, 418, 1);

-- --------------------------------------------------------

--
-- Struktura e tabelës për tabelën `porosiperfurnitoret`
--

CREATE TABLE `porosiperfurnitoret` (
  `porosiperfurnitoret_id` int(11) NOT NULL,
  `data_porosise` date NOT NULL,
  `statusi` enum('e derguar','e paderguar') NOT NULL,
  `funitor_id` int(11) NOT NULL,
  `punonjes_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zbraz të dhënat për tabelën `porosiperfurnitoret`
--

INSERT INTO `porosiperfurnitoret` (`porosiperfurnitoret_id`, `data_porosise`, `statusi`, `funitor_id`, `punonjes_id`) VALUES
(611, '2025-05-15', 'e derguar', 313, 212),
(612, '2025-07-18', 'e derguar', 311, 216),
(613, '2025-06-27', 'e paderguar', 312, 221),
(614, '2025-07-01', 'e derguar', 314, 215),
(615, '2025-07-29', 'e paderguar', 318, 211);

-- --------------------------------------------------------

--
-- Struktura e tabelës për tabelën `produktet`
--

CREATE TABLE `produktet` (
  `produkt_id` int(11) NOT NULL,
  `produkt_emri` varchar(30) NOT NULL,
  `produkt_pershkrimi` text NOT NULL,
  `produkt_data_prodhimit` date NOT NULL,
  `produkt_data_skadences` date NOT NULL,
  `produkt_cmimi` decimal(10,0) NOT NULL,
  `produkt_kapaciteti` decimal(10,0) NOT NULL,
  `produkt_sasia_aktuale` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zbraz të dhënat për tabelën `produktet`
--

INSERT INTO `produktet` (`produkt_id`, `produkt_emri`, `produkt_pershkrimi`, `produkt_data_prodhimit`, `produkt_data_skadences`, `produkt_cmimi`, `produkt_kapaciteti`, `produkt_sasia_aktuale`) VALUES
(411, 'Oriz', 'Oriz gold jeshil', '2025-03-13', '2025-08-10', 200, 10, 1),
(412, 'Makarona', 'Makarona Divella', '2025-02-13', '2025-08-10', 100, 11, 11),
(413, 'Uje', 'Uje Qafshtama 0,5l', '2024-10-11', '2025-08-11', 60, 50, 35),
(414, 'Kos', 'Kos 1l', '2025-06-12', '2025-08-10', 180, 18, 10),
(415, 'Chips', 'Chips xaxiq', '2025-04-25', '2025-09-08', 70, 65, 40),
(416, 'Kanace Coca-Cola', 'Coca-Cola 0 sheqer', '2024-10-23', '2026-01-30', 120, 40, 28),
(417, 'Lajthi', '500gr', '2024-08-30', '2025-10-09', 450, 35, 15),
(418, 'Bajame', 'Bajame 500gr', '2025-05-22', '2025-09-27', 450, 30, 1),
(420, 'Miell', 'Miell gruri', '2025-07-17', '2025-09-27', 120, 14, 8),
(421, 'Coca-Cola 0 sheqer', 'Coca-Cola kanace 0 sheqer 0,5l ', '2025-03-20', '2025-08-08', 80, 80, 51),
(422, 'Belino cokollate', 'Belino cokollate 400gr', '2025-06-18', '2025-08-04', 75, 30, 20),
(423, 'Stika 0,5gr', 'Stika te kripura 0,5gr', '2025-06-18', '2025-09-26', 600, 40, 40),
(424, 'Qumesht 1,5l', 'Qumesht i skremuar 1,5l', '2025-08-01', '2025-08-15', 190, 10, 5),
(425, 'Gjalpe 0,5gr', 'Gjalpe lope 0,5gr', '2025-07-16', '2025-09-04', 700, 5, 3),
(429, 'Miell Ola', 'Miell gruri Ola', '2025-07-17', '2025-09-27', 120, 15, 5),
(432, 'ananas', 'frut', '2025-05-06', '2025-05-29', 350, 100, 20);

-- --------------------------------------------------------

--
-- Struktura e tabelës për tabelën `punonjesit`
--

CREATE TABLE `punonjesit` (
  `punonjes_id` int(11) NOT NULL,
  `punonjes_emri` varchar(20) NOT NULL,
  `punonjes_email` varchar(20) NOT NULL,
  `punonjes_nr_tel` int(11) NOT NULL,
  `punonjes_adres` varchar(20) NOT NULL,
  `punonjes_gjinia` enum('Femer','Mashkull') NOT NULL,
  `punonjes_paga` float NOT NULL,
  `punonjes_pozicion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zbraz të dhënat për tabelën `punonjesit`
--

INSERT INTO `punonjesit` (`punonjes_id`, `punonjes_emri`, `punonjes_email`, `punonjes_nr_tel`, `punonjes_adres`, `punonjes_gjinia`, `punonjes_paga`, `punonjes_pozicion`) VALUES
(211, 'Iriada Gjini', 'idagjini@gmail.com', 675488974, 'Tirane, Rruga Jordan', 'Femer', 70000, 'Kasiere'),
(212, 'Esmeralda Pode', 'aldaalda@gmail.com', 685478033, 'Tirane, Rruga Siri K', 'Femer', 73000, 'Kasiere'),
(215, 'Kleana Kodra', 'kleakodra@gmail.com', 688999587, 'Tirane, Rruga 5 Maji', 'Femer', 50000, 'Sistemuese'),
(216, 'Ervina Gjergji', 'gjergjie@gmail.com', 677888411, 'Tirane, Rruga e Dibr', 'Femer', 50000, 'Sistemuese'),
(220, 'Klodia Prenga', 'klodiprenga@gmail.co', 685020300, 'Tirane, Rruga 5 Maji', 'Femer', 55000, 'Sistemuese'),
(221, 'Manjola Lamce', 'manjola12@gmail.com', 688477177, 'Tirane, Rruga Siri K', 'Femer', 120000, 'Ekonomiste'),
(2112, 'Dorjan Taho', 'Dtaho@gmail.com', 675438975, 'Tirane, Rruga Jordan', 'Mashkull', 70000, 'Menaxher'),
(2119, 'Artan Taho', 'ataho@gmail.com', 674438975, 'Tirane, Rruga Jordan', 'Mashkull', 70000, 'Menaxher'),
(2233, 'Altin Naqellari', 'allari@gmail.com', 675428975, 'Tirane, Rruga Jordan', 'Mashkull', 70000, 'Kasier'),
(2333, 'Blerim Taho', 'btaho@gmail.com', 694438975, 'Tirane, Rruga Jordan', 'Mashkull', 70000, 'Menaxher'),
(4331, 'Dashamir Talo', 'dtal@gmail.com', 697438975, 'Tirane, Rruga Jordan', 'Mashkull', 70000, 'Kasier'),
(4332, 'Blerim Dushku', 'bdush@gmail.com', 694438935, 'Tirane, Rruga Jordan', 'Mashkull', 70000, 'Kasier'),
(4333, 'Perparim Dine', 'pdin@gmail.com', 694438925, 'Tirane, Rruga Jordan', 'Mashkull', 70000, 'Kasier');

-- --------------------------------------------------------

--
-- Struktura e tabelës për tabelën `punonjesit_logs`
--

CREATE TABLE `punonjesit_logs` (
  `punonjes_id` int(11) NOT NULL,
  `punonjes_emri` varchar(20) NOT NULL,
  `punonjes_email` varchar(20) NOT NULL,
  `punonjes_nr_tel` int(11) NOT NULL,
  `punonjes_adres` varchar(20) NOT NULL,
  `punonjes_gjinia` enum('Femer','Mashkull') NOT NULL,
  `punonjes_paga` float NOT NULL,
  `punonjes_pozicion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zbraz të dhënat për tabelën `punonjesit_logs`
--

INSERT INTO `punonjesit_logs` (`punonjes_id`, `punonjes_emri`, `punonjes_email`, `punonjes_nr_tel`, `punonjes_adres`, `punonjes_gjinia`, `punonjes_paga`, `punonjes_pozicion`) VALUES
(213, 'Julian Plovishti', 'plovishti@gmail.com', 688455446, 'Tirane, Rruga Bardhy', 'Mashkull', 150000, 'Menaxher'),
(214, 'Arben Muka', 'muka33@gmail.com', 676444520, 'Tirane, Rruga Bardhy', 'Mashkull', 155000, 'Menaxher'),
(2111, 'Tomor Gjini', 'tdagjini@gmail.com', 675488975, 'Tirane, Rruga Jordan', 'Mashkull', 70000, 'Kasier');

--
-- Indekset për tabelat e hedhura
--

--
-- Indekset për tabelë `fatura`
--
ALTER TABLE `fatura`
  ADD PRIMARY KEY (`fatura_id`),
  ADD KEY `punonjes_id` (`punonjes_id`);

--
-- Indekset për tabelë `furnitoret`
--
ALTER TABLE `furnitoret`
  ADD PRIMARY KEY (`furnitor_id`);

--
-- Indekset për tabelë `klientet`
--
ALTER TABLE `klientet`
  ADD PRIMARY KEY (`klient_id`);

--
-- Indekset për tabelë `porosingaklientet`
--
ALTER TABLE `porosingaklientet`
  ADD PRIMARY KEY (`porosingaklientet_id`),
  ADD KEY `klient_id` (`klient_id`);

--
-- Indekset për tabelë `porosingaklientet_produkt`
--
ALTER TABLE `porosingaklientet_produkt`
  ADD KEY `porosingaklientet_id` (`porosingaklientet_id`),
  ADD KEY `produkt_id` (`produkt_id`);

--
-- Indekset për tabelë `porosiperfurnitoret`
--
ALTER TABLE `porosiperfurnitoret`
  ADD PRIMARY KEY (`porosiperfurnitoret_id`),
  ADD KEY `funitor_id` (`funitor_id`),
  ADD KEY `punonjes_id` (`punonjes_id`);

--
-- Indekset për tabelë `produktet`
--
ALTER TABLE `produktet`
  ADD PRIMARY KEY (`produkt_id`);

--
-- Indekset për tabelë `punonjesit`
--
ALTER TABLE `punonjesit`
  ADD PRIMARY KEY (`punonjes_id`);

--
-- Indekset për tabelë `punonjesit_logs`
--
ALTER TABLE `punonjesit_logs`
  ADD PRIMARY KEY (`punonjes_id`);

--
-- AUTO_INCREMENT për tabelat e hedhura
--

--
-- AUTO_INCREMENT për tabelë `fatura`
--
ALTER TABLE `fatura`
  MODIFY `fatura_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=721;

--
-- AUTO_INCREMENT për tabelë `produktet`
--
ALTER TABLE `produktet`
  MODIFY `produkt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=433;

--
-- Detyrimet për tabelat e hedhura
--

--
-- Detyrimet për tabelën `fatura`
--
ALTER TABLE `fatura`
  ADD CONSTRAINT `fatura_ibfk_2` FOREIGN KEY (`punonjes_id`) REFERENCES `punonjesit` (`punonjes_id`);

--
-- Detyrimet për tabelën `porosingaklientet`
--
ALTER TABLE `porosingaklientet`
  ADD CONSTRAINT `porosingaklientet_ibfk_1` FOREIGN KEY (`klient_id`) REFERENCES `klientet` (`klient_id`);

--
-- Detyrimet për tabelën `porosingaklientet_produkt`
--
ALTER TABLE `porosingaklientet_produkt`
  ADD CONSTRAINT `porosingaklientet_produkt_ibfk_1` FOREIGN KEY (`porosingaklientet_id`) REFERENCES `porosingaklientet` (`porosingaklientet_id`);

--
-- Detyrimet për tabelën `porosiperfurnitoret`
--
ALTER TABLE `porosiperfurnitoret`
  ADD CONSTRAINT `porosiperfurnitoret_ibfk_1` FOREIGN KEY (`funitor_id`) REFERENCES `furnitoret` (`furnitor_id`),
  ADD CONSTRAINT `porosiperfurnitoret_ibfk_2` FOREIGN KEY (`punonjes_id`) REFERENCES `punonjesit` (`punonjes_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
