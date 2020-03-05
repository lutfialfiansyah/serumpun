-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Feb 2020 pada 03.31
-- Versi server: 10.4.8-MariaDB
-- Versi PHP: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `serumpun`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `observasi_tenaga_ahli`
--

CREATE TABLE `observasi_tenaga_ahli` (
  `id_observasi_tenaga_ahli` int(5) NOT NULL,
  `pendaftaran_id` int(10) NOT NULL,
  `sdm_id` char(3) NOT NULL,
  `usia_anak` char(3) NOT NULL,
  `tgl_observasi` date NOT NULL,
  `tgl_laporan_observasi` date NOT NULL,
  `judul_laporan_observasi` varchar(50) NOT NULL,
  `data_observasi_tenaga_ahli` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `observasi_tenaga_ahli`
--

INSERT INTO `observasi_tenaga_ahli` (`id_observasi_tenaga_ahli`, `pendaftaran_id`, `sdm_id`, `usia_anak`, `tgl_observasi`, `tgl_laporan_observasi`, `judul_laporan_observasi`, `data_observasi_tenaga_ahli`) VALUES
(0, 9999, '1', '9', '2020-02-05', '2020-02-29', 'uuhuhuhuhuhuhuhu', '9999_observasi-tenaga_ahli.pdf'),
(4, 0, '1', '20', '2020-02-20', '2020-02-29', '555', '_observasi-awal.'),
(5, 0, '1', '90', '2020-02-20', '2020-02-20', 'kkkllkl', '_observasi-awal.'),
(6, 0, '1', '4', '2020-02-02', '2020-02-29', '[[[p[p[cajknc', '00000_observasi-awal.pdf');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `observasi_tenaga_ahli`
--
ALTER TABLE `observasi_tenaga_ahli`
  ADD PRIMARY KEY (`id_observasi_tenaga_ahli`),
  ADD KEY `pendaftaran_id` (`pendaftaran_id`),
  ADD KEY `sdm_id` (`sdm_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
