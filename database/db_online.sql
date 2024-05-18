-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Bulan Mei 2024 pada 08.12
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_online`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_dsn`
--

CREATE TABLE `tbl_dsn` (
  `kd_dosen` int(11) NOT NULL,
  `nama` varchar(60) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `tgllhir` date NOT NULL,
  `agama` varchar(15) NOT NULL,
  `matkul` varchar(50) NOT NULL,
  `walikls` varchar(6) DEFAULT NULL,
  `thnmasuk` varchar(4) NOT NULL,
  `no_tlpn` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_dsn`
--

INSERT INTO `tbl_dsn` (`kd_dosen`, `nama`, `alamat`, `tgllhir`, `agama`, `matkul`, `walikls`, `thnmasuk`, `no_tlpn`) VALUES
(2212, 'Hazel Alt.S', 'Jakarta Selatan', '1998-10-08', 'Islam', 'Probabilitas Dan Statistika', 'SI-4J', '2019', '082232598768'),
(2213, 'Haikal ', 'Bandung', '1997-06-04', 'Kristen', 'Web Programing', 'SI-1A', '2017', '082134554678'),
(2214, 'Arjianta', 'Yogyakarta', '1997-02-14', 'Khatolik', 'RPL', 'SI-3H', '2016', '081234556456');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_mhsw`
--

CREATE TABLE `tbl_mhsw` (
  `nim` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(250) NOT NULL,
  `prodi` varchar(50) NOT NULL,
  `age` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_mhsw`
--

INSERT INTO `tbl_mhsw` (`nim`, `name`, `address`, `prodi`, `age`) VALUES
(221321, 'Jaxer Tunggal Halim', 'Tanggerang', 'Sistem Informasi', 20),
(223451, 'Narendra', 'Bandung', 'Sistem Komputer', 19),
(224123, 'Rafael William Stuick', 'Semarang', 'Sistem Informasi', 21);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_dsn`
--
ALTER TABLE `tbl_dsn`
  ADD PRIMARY KEY (`kd_dosen`);

--
-- Indeks untuk tabel `tbl_mhsw`
--
ALTER TABLE `tbl_mhsw`
  ADD PRIMARY KEY (`nim`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
