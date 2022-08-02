-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 21, 2022 at 07:11 AM
-- Server version: 10.5.16-MariaDB
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id19277625_absensi`
--

-- --------------------------------------------------------

--
-- Table structure for table `logact`
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
-- Dumping data for table `logact`
--

INSERT INTO `logact` (`IdLog`, `IdMdLog`, `Kegiatan`, `Deskripsi`, `Tanggal`, `Waktu`, `Keterangan`) VALUES
(1, 1, 'Make a web app', 'Web app only for recording activity log', '15-07-2022', '06:15 am', 'Mulai'),
(2, 1, 'Make a web app', 'Web for only recording media team activity', '16-07-2022', '09:05 am', 'Selesai'),
(4, 1, 'upload', 'test Upload web to host', '16-07-2022', '09:34 am', 'Mulai'),
(5, 1, 'Upload to free hostinger', 'fixing minor bugs (actually hide it lol)', '16-07-2022', '09:54 am', 'Selesai'),
(6, 3, 'Desain Kalender Pendidikan 2022-2023', 'desain kalender pendidikan pesanan Uts. Abu Umair', '16-07-2022', '10:37 am', 'Selesai'),
(7, 3, 'Desain Benner Orientasi Wali Santri baru 2022-2023', 'Desain Benner Orientasi Wali Santri baru 2022-2023, sekalian cetak', '16-07-2022', '10:39 am', 'Selesai'),
(8, 3, 'Desain Buku Panduan Akademik tahun ajaran 2022/2023', 'Desain Buku Panduan Akademik tahun ajaran 2022/2023 pesanan Ust. Abu Umair + cetak', '15-07-2022', '10:42 am', 'Selesai'),
(9, 2, 'CETAK BANNER, STIKER & BUAT KONTEN', 'banner selamar datang, banner alu kedatangan, banner photobut\r\nbuat konten quotes upload di IG dan FB', '14-07-2022', '07:00 am da', 'Selesai'),
(10, 2, 'EDITING VIDEO & UPLOAD', 'buat video pembekalan santri pengabdian, upload di youtube', '15-07-2022', '16:00 pm', 'Selesai'),
(11, 2, 'EDITING VIDEO & UPLOAD', 'buat video shalat idul adha dan video kurban', '11-07-2022', '14:00 pm', 'Selesai'),
(12, 2, 'TAKE VIDEO', 'take video kedatangan santri baru', '17-07-2022', '07:00 am', 'Mulai'),
(13, 1, 'Dokumentasi ', 'Take some photo', '17-07-2022', '07:05 am', 'Mulai'),
(14, 1, 'Dokumentasi ', 'Penerimaan santri baru ', '17-07-2022', '17:07 am', 'Selesai'),
(15, 2, 'Take video ', 'Dokumentasi kedatangan santri baru dan kegiatan pembekalan ', '17-07-2022', '18:08 am', 'Selesai'),
(16, 3, 'Dokumentasi ', 'shoot foto dan video penerimaan santri baru ', '17-07-2022', '07:09 am', 'Mulai'),
(17, 3, 'Dokumentasi ', 'Shoot foto dan video penerimaan santri baru dan kegiatan pembekalan ', '17-07-2022', '18:10 am', 'Selesai'),
(18, 1, 'fixing beberapa fitur', 'Memperbaiki UI form absensi dan url', '18-07-2022', '08:37 am', 'Selesai'),
(19, 3, 'Dokumentasi ', 'shoot some photo apel pagi hari pertama KBM', '18-07-2022', '07:30 am', 'Selesai'),
(20, 2, 'Dokumentasi ', 'shoot some video apel pagi hari pertama KBM', '18-07-2022', '07:30 am', 'Selesai'),
(21, 2, 'Dokumentasi ', 'shoot some photo orisba hari pertama', '18-07-2022', '08:02 am', 'Mulai'),
(22, 3, 'Penyediaan keperluan orisba', 'Menyediakan desain dan mencetak banner orisba', '18-07-2022', '10:02 am', 'Mulai'),
(23, 1, 'Listing big days', 'membuat dan memastikan list hari-hari besar ', '18-07-2022', '14:52 pm', 'Selesai'),
(24, 2, 'TAKE FOTO', 'mengambil gambar kegiatan posiba kepanduan', '18-07-2022', '16:30 pm', 'Selesai'),
(25, 2, 'BUAT FLAYER & UPLOAD', 'buat flayer kegiatan ORISBA day 1, upload di IG dan FB serta share ke grup wali santri', '18-07-2022', '16:00 pm', 'Selesai'),
(26, 1, 'edit form', 'ubah cara input tgl waktu', '18-07-2022', '18:51 pm', 'Selesai'),
(27, 1, 'tes', 'testing database', '18-07-2022', '19:22 pm', 'Selesai'),
(28, 1, 'fix and add', 'fixing minor bug and add some features', '19-07-2022', '07:58 am', 'Selesai'),
(29, 3, 'Penyediaan keperluan orisba', 'Memastikan desain tercetak dan terpasang sebagaimana mestinya', '18-07-2022', '17:47 pm', 'Selesai'),
(30, 1, 'peralihan kendali wordpress', 'Menerima akses ke akun wordpress dan mempelajari environmentnya', '02-06-2022', '09:22 am', 'Mulai'),
(31, 1, 'fixing wordpress', 'mengatasi permasalahan akibat dari tema wordpress', '09-06-2022', '09:24 am', 'Proses'),
(32, 3, 'menyusun data dokumentasi madrasah', 'menyusun data domentasi madrasah dari tahun 2020-2022', '19-07-2022', '11:02 am', 'Proses'),
(33, 2, 'TAKE FOTO & VIDEO', 'dokumentasi kegiatan orisba outdoor yaitu kepanduan belajar tentang simpul dan ikatan kemudian dilanjutakan denga rapling beberapa santri', '19-07-2022', '16:00 pm', 'Selesai'),
(34, 1, 'edit web ibs', 'Adding struktural and replace gallery', '20-07-2022', '00:02 am', 'Proses'),
(35, 2, 'EDITING VIDEO', 'editing video kedatangan santri', '19-07-2022', '19:30 pm', 'Mulai'),
(36, 1, 'edit web ibs', 'mengubah dan menambah halaman tentang kami, artikel & berita serta masing-masing halaman, dan halaman beranda.', '20-07-2022', '14:57 pm', 'Proses'),
(37, 3, 'Taking Footage Sholat Menggunakan Drone', 'Taking Footage Sholat Menggunakan Drone', '19-07-2022', '14:59 pm', 'Selesai'),
(38, 3, 'Desain KOP Formal Madrasah + Cetak', 'Mendesain KOP Formal madrasah + Cetak', '20-07-2022', '15:00 pm', 'Proses'),
(39, 3, 'Dokumentasi Kegiatan Orientasi Santri Baru 2022/2023', 'Dokumentasi Kegiatan Orientasi Santri Baru 2022/2023', '20-07-2022', '15:01 pm', 'Selesai'),
(40, 2, 'EDITING VIDEO & UPLOAD', 'melanjutkan proses editing kedatangan santri baru, membuat intro logo baru, upload di youtube kemudian di share ke grup wa', '20-07-2022', '15:15 pm', 'Selesai'),
(41, 2, 'TAKE FOTO', 'dokumentasi penutupan orisba dan tim kepengasuhan', '20-07-2022', '16:00 pm', 'Selesai'),
(42, 1, 'edit web ibs', 'Mengubah desain untuk postingan mts ma putra', '20-07-2022', '23:10 pm', 'Proses'),
(43, 2, 'TAKE FOTO & VIDEO', 'dokumentasi kegiatasan santri shalat lail berjamaah', '19-07-2022', '03:40 am', 'Selesai'),
(44, 3, 'Desain Konten Instagram \"Orientasi Santrii Baru\"', 'Desain Konten Instagram \"Orientasi Santrii Baru\" taun ajaran 2022-2023', '21-07-2022', '14:06 pm', 'Selesai'),
(45, 7, 'RAPAT', '.rapaat bersama ustad munir membahas markom\r\n.rapat membahas dana tahunan', '21-07-2022', '07:38 am', 'Selesai');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `IdMd` int(11) NOT NULL,
  `Nama` varchar(150) DEFAULT NULL,
  `Alamat` text DEFAULT NULL,
  `NoHp` varchar(15) DEFAULT NULL,
  `Email` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`IdMd`, `Nama`, `Alamat`, `NoHp`, `Email`) VALUES
(1, 'Rusmansyah', 'Ponpes Hidayatullah Yogyakarta', '082179061973', 'rusman.putra.712@gmail.com'),
(2, 'Rif\'at', 'Jalanin aja dulu, nikahnya barokah', '098123479876', 'ngadul@mantap.com'),
(3, 'Azzam', 'Jalan doang jadian kaga', '098712376152', 'mantapea@mantap.com'),
(7, 'TEAM', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `logact`
--
ALTER TABLE `logact`
  ADD PRIMARY KEY (`IdLog`),
  ADD KEY `IdMdLog` (`IdMdLog`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`IdMd`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `logact`
--
ALTER TABLE `logact`
  MODIFY `IdLog` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `IdMd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `logact`
--
ALTER TABLE `logact`
  ADD CONSTRAINT `logact_ibfk_1` FOREIGN KEY (`IdMdLog`) REFERENCES `media` (`IdMd`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
