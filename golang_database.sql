-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Jun 2022 pada 05.09
-- Versi server: 10.4.6-MariaDB
-- Versi PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `golang_database`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `comment` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `comments`
--

INSERT INTO `comments` (`id`, `email`, `comment`) VALUES
(1, 'luk@gmail.com', 'Keren sangat membantu'),
(2, 'joko@gmail.com', 'Mantap om'),
(3, 'lukman0@gmail.com', 'Komentar ke 1'),
(4, 'lukman1@gmail.com', 'Komentar ke 1'),
(5, 'lukman2@gmail.com', 'Komentar ke 1'),
(6, 'lukman3@gmail.com', 'Komentar ke 1'),
(7, 'lukman4@gmail.com', 'Komentar ke 1'),
(8, 'lukman5@gmail.com', 'Komentar ke 1'),
(9, 'lukman6@gmail.com', 'Komentar ke 1'),
(10, 'lukman7@gmail.com', 'Komentar ke 1'),
(11, 'lukman8@gmail.com', 'Komentar ke 1'),
(12, 'lukman9@gmail.com', 'Komentar ke 1'),
(13, 'lukman0@gmail.com', 'Komentar ke 1'),
(14, 'lukman1@gmail.com', 'Komentar ke 1'),
(15, 'lukman2@gmail.com', 'Komentar ke 1'),
(16, 'lukman3@gmail.com', 'Komentar ke 1'),
(17, 'lukman4@gmail.com', 'Komentar ke 1'),
(18, 'lukman5@gmail.com', 'Komentar ke 1'),
(19, 'lukman6@gmail.com', 'Komentar ke 1'),
(20, 'lukman7@gmail.com', 'Komentar ke 1'),
(21, 'lukman8@gmail.com', 'Komentar ke 1'),
(22, 'lukman9@gmail.com', 'Komentar ke 1'),
(33, 'repository@test.com', 'Test Repository'),
(34, 'repository2@test.com', 'Test Repository 2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `balance` int(11) DEFAULT 0,
  `rating` double DEFAULT 0,
  `birth_date` date DEFAULT NULL,
  `married` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `customer`
--

INSERT INTO `customer` (`id`, `name`, `email`, `balance`, `rating`, `birth_date`, `married`, `created_at`) VALUES
('joko', 'Joko S', NULL, 90000, 5.5, NULL, 1, '2022-06-12 11:32:10'),
('lukmans', 'Lukman Sanjaya', 'luk@gmail.com', 100000, 6, '2018-09-23', 0, '2022-06-12 11:30:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`username`, `password`) VALUES
('admin', 'admin123');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
