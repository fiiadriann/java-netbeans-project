-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2024 at 11:09 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `needbook`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id` int(255) NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `pengarang` varchar(255) DEFAULT NULL,
  `kategori` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id`, `judul`, `pengarang`, `kategori`) VALUES
(1, 'Atlas Sejarah Indonesia', 'Pustaka Baru Press', 'Sejarah'),
(3, 'The Remarkable Story of Soekarno', 'Roemah Soekarno', 'Sejarah'),
(4, 'Cerita Perang Kemerdekaan Indonesia', 'Wahyu Media Barat', 'Sejarah'),
(5, 'World History Sejarah Dunia Lengkap', 'Indoliterasi', 'Sejarah'),
(6, 'The People Immortal', 'Vasily Grossman', 'Sejarah'),
(7, 'Selected Works II', 'Vladimir Vysotsky', 'Sejarah'),
(8, 'Barcelona Prose', 'Efim Etkind', 'Sejarah'),
(9, 'Countries That Don’t Exist', 'Sigizmund Krzhizhanovsky', 'Sejarah'),
(10, 'Experiments in prose', 'Peter the Great’s African', 'Sejarah'),
(11, 'Hikayat Majapahit-Kebangkitan dan Keruntuhan Kerajaan Terbesar di Nusantara', 'Elex Media Komputindo', 'Sejarah'),
(12, 'Tortured: When Good Soldiers Do Bad Things', 'Galuh Wandita', 'Sejarah'),
(13, 'Krakatoa: The Day the World Exploded', 'Simon Winchester', 'Sejarah'),
(14, 'The Indonesian Genocide of 1965: Causes, Dynamics and Legacies', 'Jess Melvin', 'Sejarah'),
(15, 'Indonesia Menggugat', 'Mochtar Lubis', 'Sejarah'),
(16, 'Menulis Sejarah, Mengungkap Pemalsuan', 'Asvi Warman Adam', 'Sejarah'),
(17, 'buku baru', 'gua', 'novel');

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id` int(11) NOT NULL,
  `siswa_id` bigint(20) NOT NULL,
  `book_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`id`, `siswa_id`, `book_id`) VALUES
(1, 6, 5),
(2, 6, 4),
(3, 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id`, `username`, `email`, `password`, `is_admin`) VALUES
(5, 'ewrewr', 'sdwasdrw', 'aweqwe', 0),
(6, 'paksi', 'paksi@gmail.com', 'password123', 0),
(7, 'rafi', 'rafi@gmail.com', 'pw123', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
