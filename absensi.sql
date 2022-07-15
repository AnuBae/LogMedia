-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Jul 2022 pada 18.11
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `absensi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `logact`
--

CREATE TABLE `logact` (
  `IdLog` int(11) NOT NULL,
  `IdMdLog` int(11) DEFAULT NULL,
  `Kegiatan` varchar(255) NOT NULL,
  `Deskripsi` text NOT NULL,
  `Tanggal` varchar(15) DEFAULT NULL,
  `Waktu` varchar(11) DEFAULT NULL,
  `Keterangan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `logact`
--

INSERT INTO `logact` (`IdLog`, `IdMdLog`, `Kegiatan`, `Deskripsi`, `Tanggal`, `Waktu`, `Keterangan`) VALUES
(1, 1, 'Make a web app', 'Web app only for recording activity log', '15-07-2022', '06:15 am', 'Mulai');

-- --------------------------------------------------------

--
-- Struktur dari tabel `media`
--

CREATE TABLE `media` (
  `IdMd` int(11) NOT NULL,
  `Nama` varchar(150) DEFAULT NULL,
  `JenisKelamin` varchar(20) DEFAULT NULL,
  `Alamat` text DEFAULT NULL,
  `NoHp` varchar(15) DEFAULT NULL,
  `Email` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `media`
--

INSERT INTO `media` (`IdMd`, `Nama`, `JenisKelamin`, `Alamat`, `NoHp`, `Email`) VALUES
(1, 'Rusmansyah', 'Laki-laki', 'Ponpes Hidayatullah Yogyakarta', '082179061973', 'rusman.putra.712@gmail.com'),
(2, 'Rif\'at', 'Laki-laki', 'Jalanin aja dulu, nikahnya barokah', '098123479876', 'ngadul@mantap.com'),
(3, 'Maknae Azzam', 'Perempuan', 'Jalan doang jadian kaga', '098712376152', 'mantapea@mantap.com'),
(5, 'Anubae Ganteng', 'Laki-laki', 'Jalan jalan euy, ok', '082179972662', 'anubae@mantap.com');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `logact`
--
ALTER TABLE `logact`
  ADD PRIMARY KEY (`IdLog`),
  ADD KEY `IdMdLog` (`IdMdLog`);

--
-- Indeks untuk tabel `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`IdMd`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `logact`
--
ALTER TABLE `logact`
  MODIFY `IdLog` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `media`
--
ALTER TABLE `media`
  MODIFY `IdMd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `logact`
--
ALTER TABLE `logact`
  ADD CONSTRAINT `logact_ibfk_1` FOREIGN KEY (`IdMdLog`) REFERENCES `media` (`IdMd`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
