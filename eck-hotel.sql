-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2025 at 12:12 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eck-hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `finance_income`
--

CREATE TABLE `finance_income` (
  `id_finance_income` int(5) NOT NULL,
  `nomor_invoice` varchar(20) NOT NULL,
  `jenis_income` varchar(100) NOT NULL,
  `jumlah` int(20) NOT NULL,
  `tanggal_pembayaran` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kamar`
--

CREATE TABLE `kamar` (
  `id_kamar` int(3) NOT NULL,
  `nomor_kamar` int(3) NOT NULL,
  `id_kamar_tipe` int(3) NOT NULL,
  `max_dewasa` int(11) NOT NULL,
  `max_anak` int(11) NOT NULL,
  `status_kamar` varchar(20) NOT NULL DEFAULT 'TERSEDIA'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kamar`
--

INSERT INTO `kamar` (`id_kamar`, `nomor_kamar`, `id_kamar_tipe`, `max_dewasa`, `max_anak`, `status_kamar`) VALUES
(9, 202, 3, 2, 1, 'TERPAKAI'),
(10, 20, 0, 0, 0, 'TERSEDIA'),
(11, 203, 4, 2, 1, 'TERPAKAI'),
(12, 204, 4, 2, 1, 'TERSEDIA'),
(13, 301, 2, 2, 1, 'TERPAKAI'),
(14, 302, 2, 2, 2, 'TERPAKAI'),
(15, 303, 3, 2, 2, 'TERPAKAI'),
(16, 304, 3, 2, 2, 'TERPAKAI'),
(17, 305, 3, 2, 2, 'TERPAKAI'),
(18, 306, 3, 2, 2, 'TERPAKAI'),
(19, 307, 3, 2, 2, 'TERPAKAI'),
(20, 308, 3, 2, 2, 'TERPAKAI'),
(21, 309, 3, 2, 2, 'TERPAKAI'),
(22, 310, 3, 2, 2, 'TERSEDIA'),
(23, 401, 3, 2, 2, 'TERPAKAI'),
(24, 402, 3, 2, 2, 'TERSEDIA'),
(25, 403, 3, 2, 2, 'TERSEDIA'),
(26, 404, 3, 2, 2, 'TERSEDIA'),
(27, 405, 3, 2, 2, 'TERSEDIA'),
(28, 407, 3, 2, 2, 'TERSEDIA'),
(29, 406, 3, 2, 2, 'TERSEDIA'),
(30, 408, 3, 2, 2, 'TERSEDIA'),
(31, 409, 3, 2, 2, 'TERSEDIA'),
(32, 410, 3, 2, 2, 'TERSEDIA'),
(33, 501, 3, 2, 2, 'TERSEDIA'),
(34, 502, 3, 2, 2, 'TERSEDIA'),
(35, 503, 3, 2, 2, 'TERSEDIA'),
(36, 601, 2, 2, 2, 'TERSEDIA'),
(37, 601, 2, 2, 2, 'TERSEDIA'),
(38, 601, 2, 2, 2, 'TERSEDIA'),
(39, 601, 2, 2, 2, 'TERSEDIA'),
(40, 601, 2, 2, 2, 'TERSEDIA'),
(41, 601, 2, 2, 2, 'TERSEDIA'),
(42, 601, 2, 2, 2, 'TERSEDIA'),
(43, 601, 2, 2, 2, 'TERSEDIA'),
(44, 601, 2, 2, 2, 'TERPAKAI'),
(45, 601, 2, 2, 2, 'TERSEDIA'),
(46, 201, 3, 2, 2, 'TERPAKAI'),
(47, 201, 3, 2, 2, 'TERPAKAI'),
(48, 201, 3, 2, 2, 'TERPAKAI'),
(49, 201, 3, 2, 2, 'TERPAKAI'),
(50, 201, 3, 2, 2, 'TERPAKAI'),
(51, 201, 3, 2, 2, 'TERPAKAI'),
(52, 201, 3, 2, 2, 'TERPAKAI'),
(53, 201, 3, 2, 2, 'TERPAKAI'),
(54, 201, 3, 2, 2, 'TERPAKAI'),
(55, 602, 4, 2, 2, 'TERSEDIA'),
(56, 602, 4, 2, 2, 'TERSEDIA'),
(57, 602, 4, 2, 2, 'TERPAKAI'),
(58, 602, 4, 2, 2, 'TERSEDIA'),
(59, 602, 4, 2, 2, 'TERSEDIA'),
(60, 602, 4, 2, 2, 'TERPAKAI'),
(61, 602, 4, 2, 2, 'TERPAKAI'),
(62, 602, 4, 2, 2, 'TERSEDIA'),
(63, 602, 4, 2, 2, 'TERSEDIA'),
(64, 602, 4, 2, 2, 'TERSEDIA'),
(65, 602, 4, 2, 2, 'TERPAKAI'),
(66, 602, 4, 2, 2, 'TERSEDIA'),
(67, 602, 4, 2, 2, 'TERPAKAI'),
(68, 602, 4, 2, 2, 'TERSEDIA'),
(69, 602, 4, 2, 2, 'TERSEDIA'),
(70, 602, 4, 2, 2, 'TERSEDIA'),
(71, 602, 4, 2, 2, 'TERSEDIA'),
(72, 602, 4, 2, 2, 'TERSEDIA'),
(73, 602, 4, 2, 2, 'TERSEDIA'),
(74, 602, 4, 2, 2, 'TERSEDIA'),
(75, 603, 2, 2, 2, 'TERSEDIA'),
(76, 603, 2, 2, 2, 'TERSEDIA'),
(77, 603, 2, 2, 2, 'TERSEDIA'),
(78, 603, 2, 2, 2, 'TERSEDIA'),
(79, 603, 2, 2, 2, 'TERSEDIA'),
(80, 603, 2, 2, 2, 'TERSEDIA'),
(81, 603, 2, 2, 2, 'TERSEDIA'),
(82, 603, 2, 2, 2, 'TERSEDIA'),
(83, 603, 2, 2, 2, 'TERSEDIA'),
(84, 603, 2, 2, 2, 'TERSEDIA');

-- --------------------------------------------------------

--
-- Table structure for table `kamar_tipe`
--

CREATE TABLE `kamar_tipe` (
  `id_kamar_tipe` int(3) NOT NULL,
  `nama_kamar_tipe` varchar(50) NOT NULL,
  `harga_malam` int(3) NOT NULL,
  `harga_orang` int(3) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kamar_tipe`
--

INSERT INTO `kamar_tipe` (`id_kamar_tipe`, `nama_kamar_tipe`, `harga_malam`, `harga_orang`, `keterangan`) VALUES
(2, 'SUPERIOR', 250000, 0, ''),
(3, 'DELUXE', 400000, 0, ''),
(4, 'SUITE', 2000000, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `layanan`
--

CREATE TABLE `layanan` (
  `id_layanan` int(3) NOT NULL,
  `nama_layanan` varchar(100) NOT NULL,
  `id_layanan_kategori` int(3) NOT NULL,
  `satuan` varchar(30) NOT NULL,
  `harga_layanan` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `layanan`
--

INSERT INTO `layanan` (`id_layanan`, `nama_layanan`, `id_layanan_kategori`, `satuan`, `harga_layanan`) VALUES
(5, 'Avocado Juice', 1, '', 15000),
(6, 'Avocado Manggo', 1, '', 15000);

-- --------------------------------------------------------

--
-- Table structure for table `layanan_kategori`
--

CREATE TABLE `layanan_kategori` (
  `id_layanan_kategori` int(3) NOT NULL,
  `nama_layanan_kategori` varchar(100) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `layanan_kategori`
--

INSERT INTO `layanan_kategori` (`id_layanan_kategori`, `nama_layanan_kategori`, `keterangan`) VALUES
(1, 'Food and Beverage', 'Produk makanan, snack, sarapan dan lain-lain'),
(3, 'TRANSPORTASI', 'Fasilitas transportasi untuk kebutuhan tamu hotel'),
(4, 'Laundry', 'Harga tertera berdasarkan hitungan 1Kg');

-- --------------------------------------------------------

--
-- Table structure for table `perusahaan`
--

CREATE TABLE `perusahaan` (
  `id_perusahaan` int(100) NOT NULL,
  `nama_hotel` varchar(100) NOT NULL,
  `nama_perusahaan` varchar(100) NOT NULL,
  `alamat_jalan` text NOT NULL,
  `alamat_kabupaten` varchar(50) NOT NULL,
  `alamat_provinsi` varchar(50) NOT NULL,
  `nomor_telp` varchar(20) NOT NULL,
  `nomor_fax` varchar(20) NOT NULL,
  `website` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `perusahaan`
--

INSERT INTO `perusahaan` (`id_perusahaan`, `nama_hotel`, `nama_perusahaan`, `alamat_jalan`, `alamat_kabupaten`, `alamat_provinsi`, `nomor_telp`, `nomor_fax`, `website`, `email`) VALUES
(1, 'EDHOTEL GRAHADI', 'SMK AL-FATHONAH', 'Jalan Pelabuhan II KM 10 Pasirmalang', 'Sukabumi', 'Jawa Barat', '085759592825', '02265354', 'https://smkalfathonah.sch.id', 'smkalfathonahsmi@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tamu`
--

CREATE TABLE `tamu` (
  `id_tamu` int(3) NOT NULL,
  `prefix` varchar(5) NOT NULL,
  `nama_depan` varchar(100) NOT NULL,
  `nama_belakang` varchar(100) NOT NULL,
  `tipe_identitas` varchar(20) NOT NULL,
  `nomor_identitas` varchar(20) NOT NULL,
  `warga_negara` varchar(100) NOT NULL DEFAULT 'Indonesia',
  `alamat_jalan` text NOT NULL,
  `alamat_kabupaten` varchar(100) NOT NULL,
  `alamat_provinsi` varchar(100) NOT NULL,
  `nomor_telp` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tamu`
--

INSERT INTO `tamu` (`id_tamu`, `prefix`, `nama_depan`, `nama_belakang`, `tipe_identitas`, `nomor_identitas`, `warga_negara`, `alamat_jalan`, `alamat_kabupaten`, `alamat_provinsi`, `nomor_telp`, `email`) VALUES
(4, 'Mr', 'Asep', 'Setia Gunawan', 'KTP', '3720206036909921', 'indonesia', 'gg. mesjid NO 16747 des.Kebonjati Kec.Cikole', 'sukabumi', 'jawabarat', '085793161157', ''),
(5, 'Mr', 'Asep', 'Setia Gunawan', 'KTP', '12060458', 'indonesia', 'GG Mesjid No 16747 A', 'sukabumi', 'jawabarat', '085793161157', ''),
(6, 'Mr', 'Asep', 'Setia Gunawan', 'KTP', '32720206036990921', 'indonesia', 'GG Mesjid No 16747', 'sukabumi', 'jawabarat', '085793161157', 'asep @gmail.com'),
(7, 'Mr', 'Asep', 'Setia Gunawan', 'KTP', '32720220603690921', 'indonesia', 'GG MESJID ', 'sukabumi', 'jawabarat', '085793161157', ''),
(8, 'Mr', 'Asep ', 'Setia Gunawan', 'KTP', '3272020603690921', 'indonesia', 'GG mesjid', 'sukabumi', 'jawabarat', '085793161157', ''),
(9, 'Mr', 'Asep', 'Setia Gunawan', 'KTP', '12060458', 'indonesia', 'GG Mesjid ', 'cikole', 'jawa barat', '085700880555', 'ssyakillaaulia@gmai.com'),
(10, 'Mr', 'Asep', 'Setia Gunawan', 'KTP', '12060458', 'indonesia', 'GG.Masjid NO 167474', 'sukabumi', 'jawabarat', '085793161157', 'asep05@gmail.com'),
(11, 'Mr', 'Asep', 'Setia Gunawan.', 'KTP', '12060458', 'indonesia', 'kp.gg masjid no 16747 kec cikole', 'sukabumi', 'jawabarat', '085700880555', ''),
(12, 'Mr', 'Asep', 'Setia Gunawan', 'KTP', '12060458', 'indonesia', 'GG masjid ', 'sukabumi', 'jawabarat', '085793161157', ''),
(13, 'Mr', 'Asep', 'Setia Gunawan', 'KTP', '12060458', 'indonesia', 'kp.kebon jati', 'sukabumi', 'jawabarat', '085793161157', 'asep@gmail.com'),
(14, 'Mr', 'Asep', 'suganda', 'KTP', '12060458', 'indonesia', 'gg masjid masjid no 16747', 'sukabumi', 'jawabarat', '085700880555', 'asep05@gmail.com'),
(15, 'Mr', 'Asep', 'Setia Gunawan', 'KTP', '12060458', 'indonesia', 'kp kebon jati', 'sukabumi', 'jawabarat', '085700880555', 'rian@gmail.com'),
(16, 'Mr', 'Asep', 'Setia Gunawan ', 'KTP', '32022', 'indonesia', 'GG Mesjid no 16747 a', 'sukabumi', 'jawabarat', '085700880555', 'sandi@gmail.com'),
(17, 'Ms', 'Risna', 'Regina Putri', 'KTP', '3202085603060002', 'indonesia', 'KP.BANTAR JATI,RT036/RW009,DES.SINDANGRESMI,KEC.JAMPANG TENGAH', 'sukabumi', 'jawabarat', '085722735217', 'Risna.Regina.putri@gmail.com.'),
(18, 'Mrs', 'destin', 'permatasari', 'KTP', '3203035108050003', 'indonesia', 'kp.cioray RT/RW 003/002 Desa bojongraharja kec.cikembar ', 'sukabumi', 'jawabarat', '087798372067', '2destin'),
(19, 'Ms', 'syifa', 'septiani', 'KTP', '12060458', 'indonesia', 'kp.tanjung sari RT02/RW07 desa.sirnaresmi kec. gunung guruh ', 'sukabumi', 'jawa barat', '0', 'fauzi r05@gmail.com'),
(20, 'Ms', 'aida', 'hodijah', 'KTP', '3202270504060006', 'indonesia', 'kp.kebon manggu', 'sukabumi', 'jawabarat', '085864533194', ''),
(21, 'Mrs', 'Euis', 'Nurhidayati', 'KTP', '32022', 'indonesia', '', '', '', '085700880555', ''),
(22, 'Ms', 'Dra. Euis', 'Nurhidayati, M.Pd', 'KTP', '32720206036990921', 'Indonesia', 'Cibadak', '', '', '08129428458', '');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_kamar`
--

CREATE TABLE `transaksi_kamar` (
  `id_transaksi_kamar` int(3) NOT NULL,
  `id_user` int(3) NOT NULL,
  `nomor_invoice` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `id_tamu` int(3) NOT NULL,
  `id_kamar` int(3) NOT NULL,
  `jumlah_dewasa` int(3) NOT NULL,
  `jumlah_anak` int(3) NOT NULL,
  `tanggal_checkin` date NOT NULL,
  `waktu_checkin` time NOT NULL,
  `tanggal_checkout` date NOT NULL,
  `waktu_checkout` time NOT NULL,
  `total_biaya_kamar` int(20) NOT NULL,
  `deposit` int(20) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'CHECK IN'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi_kamar`
--

INSERT INTO `transaksi_kamar` (`id_transaksi_kamar`, `id_user`, `nomor_invoice`, `tanggal`, `id_tamu`, `id_kamar`, `jumlah_dewasa`, `jumlah_anak`, `tanggal_checkin`, `waktu_checkin`, `tanggal_checkout`, `waktu_checkout`, `total_biaya_kamar`, `deposit`, `status`) VALUES
(20, 1, 'INV-20240125-48', '2024-01-25', 4, 1, 1, 0, '2024-01-25', '22:15:00', '2024-01-26', '12:00:00', 100000, 100000, 'CHECK OUT'),
(21, 1, 'INV-20240125-75', '2024-01-25', 4, 6, 2, 0, '2024-01-25', '22:24:00', '2024-01-26', '12:00:00', 100000, 100000, 'CHECK OUT'),
(22, 1, 'INV-20240126-67', '2024-01-26', 4, 1, 2, 1, '2024-01-26', '10:54:00', '2024-01-27', '12:00:00', 100000, 0, 'CHECK OUT'),
(23, 1, 'INV-20240126-13', '2024-01-26', 4, 6, 2, 0, '2024-01-26', '11:42:00', '2024-01-27', '12:00:00', 100000, 0, 'CHECK OUT'),
(24, 1, 'INV-20240126-68', '2024-01-26', 4, 1, 1, 1, '2024-01-26', '13:10:00', '2024-01-27', '12:00:00', 500000, 0, 'CHECK IN'),
(25, 1, 'INV-20240129-38', '2024-01-29', 6, 6, 2, 1, '2024-01-29', '10:16:00', '2024-01-30', '12:00:00', 100000, 0, 'CHECK OUT'),
(26, 1, 'INV-20240129-19', '2024-01-29', 7, 8, 1, 0, '2024-01-29', '12:00:00', '2024-01-30', '12:00:00', 375000, 0, 'CHECK OUT'),
(27, 1, 'INV-20240129-66', '2024-01-29', 4, 9, 0, 0, '2024-01-29', '12:06:00', '2024-01-30', '12:00:00', 292500, 0, 'CHECK OUT'),
(28, 1, 'INV-20240129-42', '2024-01-29', 4, 11, 0, 0, '2024-01-29', '12:06:00', '2024-01-31', '12:00:00', 849980, 0, 'CHECK OUT'),
(29, 1, 'INV-20240129-30', '2024-01-29', 4, 12, 1, 0, '2024-01-29', '12:08:00', '2024-01-30', '12:00:00', 424990, 0, 'CHECK OUT'),
(30, 1, 'INV-20240202-87', '2024-02-02', 9, 11, 2, 1, '2024-02-02', '13:42:00', '2024-02-03', '12:00:00', 424990, 300000, 'CHECK OUT'),
(31, 1, 'INV-20240202-25', '2024-02-02', 10, 9, 2, 2, '2024-02-02', '13:48:00', '2024-02-05', '12:00:00', 877500, 200000, 'CHECK OUT'),
(32, 1, 'INV-20240202-19', '2024-02-02', 11, 9, 2, 5, '2024-02-02', '13:55:00', '2024-02-10', '12:00:00', 2340000, 500000, 'CHECK OUT'),
(33, 1, 'INV-20240202-44', '2024-02-02', 12, 12, 0, 5, '2024-02-02', '14:01:00', '2024-02-05', '12:00:00', 1274970, 300000, 'CHECK OUT'),
(34, 1, 'INV-20240202-98', '2024-02-02', 13, 8, 2, 2, '2024-02-02', '14:06:00', '2024-02-04', '12:00:00', 675000, 300000, 'CHECK OUT'),
(35, 1, 'INV-20240202-70', '2024-02-02', 14, 12, 2, 5, '2024-02-02', '14:11:00', '2024-02-06', '12:00:00', 1699960, 300000, 'CHECK OUT'),
(36, 1, 'INV-20240202-77', '2024-02-02', 15, 9, 3, 4, '2024-02-02', '14:17:00', '2024-02-05', '12:00:00', 877500, 500000, 'CHECK OUT'),
(37, 1, 'INV-20240202-82', '2024-02-02', 16, 12, 2, 1, '2024-02-02', '14:23:00', '2024-02-06', '12:00:00', 1699960, 500000, 'CHECK OUT'),
(38, 1, 'INV-20240202-27', '2024-02-02', 18, 9, 1, 0, '2024-02-02', '14:32:00', '2024-02-04', '12:00:00', 585000, 300000, 'CHECK OUT'),
(39, 1, 'INV-20240202-36', '2024-02-02', 19, 12, 1, 2, '2024-02-02', '14:36:00', '2024-02-07', '12:00:00', 2124950, 300000, 'CHECK OUT'),
(40, 1, 'INV-20240202-25', '2024-02-02', 20, 11, 1, 1, '2024-02-02', '14:43:00', '2024-02-04', '12:00:00', 849980, 300000, 'CHECK OUT'),
(41, 1, 'INV-20240202-57', '2024-02-02', 21, 9, 2, 1, '2024-02-02', '14:47:00', '2024-02-06', '12:00:00', 1170000, 200000, 'CHECK OUT'),
(42, 1, 'INV-20240202-75', '2024-02-02', 22, 11, 1, 1, '2024-02-02', '14:51:00', '2024-02-04', '12:00:00', 849980, 300000, 'CHECK OUT'),
(43, 1, 'INV-20240202-55', '2024-02-02', 23, 8, 2, 2, '2024-02-02', '14:55:00', '2024-02-06', '12:00:00', 1350000, 300000, 'CHECK OUT'),
(44, 1, 'INV-20240202-57', '2024-02-02', 24, 12, 1, 1, '2024-02-02', '15:00:00', '2024-02-06', '12:00:00', 1699960, 300000, 'CHECK OUT'),
(45, 1, 'INV-20240202-98', '2024-02-02', 25, 8, 2, 0, '2024-02-02', '15:04:00', '2024-02-03', '12:00:00', 337500, 300000, 'CHECK OUT'),
(46, 1, 'INV-20240202-62', '2024-02-02', 26, 8, 1, 1, '2024-02-02', '15:09:00', '2024-02-05', '12:00:00', 1012500, 300000, 'CHECK OUT'),
(47, 1, 'INV-20240202-98', '2024-02-02', 27, 9, 2, 1, '2024-02-02', '15:14:00', '2024-02-05', '12:00:00', 877500, 300000, 'CHECK OUT'),
(48, 1, 'INV-20240202-84', '2024-02-02', 28, 8, 1, 1, '2024-02-02', '15:18:00', '2024-02-05', '12:00:00', 1012500, 300000, 'CHECK OUT'),
(49, 1, 'INV-20240208-23', '2024-02-08', 29, 11, 1, 0, '2024-02-08', '14:09:00', '2024-02-09', '12:00:00', 424990, 0, 'CHECK OUT'),
(50, 1, 'INV-20240208-73', '2024-02-08', 31, 8, 2, 5, '2024-02-08', '14:36:00', '2024-02-10', '12:00:00', 675000, 0, 'CHECK OUT'),
(51, 1, 'INV-20240208-34', '2024-02-08', 32, 9, 1, 1, '2024-02-08', '14:55:00', '2024-02-04', '12:00:00', 1170000, 450, 'CHECK OUT'),
(52, 1, 'INV-20240208-55', '2024-02-08', 33, 8, 2, 0, '2024-02-08', '15:07:00', '2024-02-09', '12:00:00', 337500, 0, 'CHECK OUT'),
(53, 1, 'INV-20240208-26', '2024-02-08', 34, 11, 1, 0, '2024-02-08', '15:17:00', '2024-02-11', '12:00:00', 1274970, 0, 'CHECK OUT'),
(54, 1, 'INV-20240208-10', '2024-02-08', 35, 11, 1, 0, '2024-02-08', '15:26:00', '2024-02-27', '12:00:00', 8074810, 0, 'CHECK OUT'),
(55, 1, 'INV-20240208-98', '2024-02-08', 0, 9, 1, 0, '2024-02-08', '15:37:00', '2024-02-10', '12:00:00', 585000, 0, 'CHECK IN'),
(56, 1, 'INV-20240208-41', '2024-02-08', 36, 8, 1, 0, '2024-02-08', '15:39:00', '2024-02-10', '12:00:00', 675000, 0, 'CHECK OUT'),
(57, 1, 'INV-20240209-16', '2024-02-09', 37, 11, 1, 1, '2024-02-09', '13:17:00', '2024-02-10', '12:00:00', 2000000, 0, 'CHECK OUT'),
(58, 1, 'INV-20240209-93', '2024-02-09', 38, 8, 1, 1, '2024-02-09', '13:26:00', '2024-02-10', '12:00:00', 1000000, 0, 'CHECK OUT'),
(59, 1, 'INV-20240209-33', '2024-02-09', 39, 9, 0, 0, '2024-02-09', '13:34:00', '0000-00-00', '12:00:00', 0, 0, 'CHECK OUT'),
(60, 1, 'INV-20240209-36', '2024-02-09', 40, 8, 1, 1, '2024-02-09', '13:43:00', '2024-02-05', '12:00:00', 4000000, 0, 'CHECK OUT'),
(61, 1, 'INV-20240209-85', '2024-02-09', 40, 9, 0, 0, '2024-02-09', '13:46:00', '2024-02-10', '12:00:00', 800000, 0, 'CHECK OUT'),
(62, 1, 'INV-20240209-15', '2024-02-09', 41, 11, 1, 1, '2024-02-09', '13:53:00', '2024-02-10', '12:00:00', 2000000, 0, 'CHECK OUT'),
(63, 1, 'INV-20240209-63', '2024-02-09', 42, 8, 1, 0, '2024-02-09', '14:05:00', '2024-02-10', '12:00:00', 1000000, 0, 'CHECK OUT'),
(64, 1, 'INV-20240209-42', '2024-02-09', 43, 9, 1, 0, '2024-02-09', '14:15:00', '2024-02-10', '12:00:00', 800000, 0, 'CHECK OUT'),
(65, 1, 'INV-20240209-76', '2024-02-09', 44, 11, 1, 4, '2024-02-09', '14:23:00', '2024-02-10', '12:00:00', 2000000, 0, 'CHECK OUT'),
(66, 1, 'INV-20240216-45', '2024-02-16', 45, 12, 1, 0, '2024-02-16', '13:50:00', '2024-02-17', '12:00:00', 2000000, 300000, 'CHECK OUT'),
(67, 1, 'INV-20240216-31', '2024-02-16', 46, 9, 1, 1, '2024-02-16', '14:00:00', '2024-02-17', '12:00:00', 800000, 450, 'CHECK OUT'),
(68, 1, 'INV-20240216-12', '2024-02-16', 45, 9, 1, 0, '2024-02-16', '14:18:00', '2024-02-04', '12:00:00', 9600000, 500000, 'CHECK OUT'),
(69, 1, 'INV-20240229-24', '2024-02-29', 47, 9, 1, 0, '2024-02-29', '14:51:00', '2024-02-01', '12:00:00', 22400000, 0, 'CHECK OUT'),
(70, 1, 'INV-20240229-93', '2024-02-29', 34, 11, 1, 0, '2024-02-29', '15:07:00', '2024-03-01', '12:00:00', 2000000, 1000000, 'CHECK OUT'),
(71, 1, 'INV-20240229-95', '2024-02-29', 28, 12, 1, 0, '2024-02-29', '15:23:00', '2024-03-01', '12:00:00', 2000000, 1000000, 'CHECK OUT'),
(72, 1, 'INV-20240229-90', '2024-02-29', 50, 9, 1, 1, '2024-02-29', '15:35:00', '2024-02-07', '12:00:00', 17600000, 0, 'CHECK OUT'),
(73, 1, 'INV-20240229-40', '2024-02-29', 49, 9, 1, 0, '2024-02-29', '15:44:00', '2024-03-01', '12:00:00', 800000, 1000000, 'CHECK OUT'),
(74, 1, 'INV-20240229-78', '2024-02-29', 49, 9, 0, 0, '2024-02-29', '15:44:00', '2024-03-01', '12:00:00', 1000000, 1000000, 'CHECK IN'),
(75, 7, 'INV-20240306-81', '2024-03-06', 1, 11, 2, 0, '2024-03-06', '09:35:00', '2024-03-07', '12:00:00', 2000000, 0, 'CHECK OUT'),
(76, 8, 'INV-20240306-12', '2024-03-06', 2, 40, 1, 0, '2024-03-06', '09:53:00', '2024-03-07', '12:00:00', 800000, 0, 'CHECK IN'),
(77, 9, 'INV-20240306-30', '2024-03-06', 3, 47, 1, 0, '2024-03-06', '10:06:00', '2024-03-06', '12:00:00', 0, 0, 'CHECK IN'),
(78, 10, 'INV-20240306-80', '2024-03-06', 4, 54, 0, 0, '2024-03-06', '10:25:00', '2024-03-07', '12:00:00', 1000000, 0, 'CHECK IN'),
(79, 11, 'INV-20240306-33', '2024-03-06', 5, 39, 1, 0, '2024-03-06', '10:39:00', '2024-03-07', '12:00:00', 800000, 0, 'CHECK IN'),
(80, 12, 'INV-20240306-15', '2024-03-06', 6, 14, 1, 0, '2024-03-06', '11:01:00', '2024-03-07', '12:00:00', 800000, 0, 'CHECK OUT'),
(81, 12, 'INV-20240306-96', '2024-03-06', 6, 45, 1, 0, '2024-03-06', '11:02:00', '2024-03-07', '12:00:00', 800000, 0, 'CHECK IN'),
(82, 25, 'INV-20240306-85', '2024-03-06', 6, 13, 1, 1, '2024-03-06', '11:19:00', '2024-03-06', '12:00:00', 0, 0, 'CHECK IN'),
(83, 25, 'INV-20240306-96', '2024-03-06', 6, 41, 1, 1, '2024-03-06', '11:21:00', '2024-03-06', '12:00:00', 0, 0, 'CHECK IN'),
(84, 19, 'INV-20240306-29', '2024-03-06', 8, 59, 1, 0, '2024-03-06', '11:51:00', '2024-03-06', '12:00:00', 0, 0, 'CHECK IN'),
(85, 14, 'INV-20240306-27', '2024-03-06', 9, 42, 1, 0, '2024-03-06', '12:08:00', '2024-03-06', '12:00:00', 0, 0, 'CHECK IN'),
(86, 23, 'INV-20240306-93', '2024-03-06', 10, 12, 1, 0, '2024-03-06', '12:21:00', '2024-03-06', '12:00:00', 0, 0, 'CHECK IN'),
(87, 18, 'INV-20240306-59', '2024-03-06', 11, 37, 1, 0, '2024-03-06', '12:34:00', '2024-03-07', '12:00:00', 800000, 0, 'CHECK IN'),
(88, 21, 'INV-20240306-85', '2024-03-06', 12, 57, 1, 0, '2024-03-06', '12:46:00', '2024-03-07', '12:00:00', 2000000, 0, 'CHECK IN'),
(89, 20, 'INV-20240306-24', '2024-03-06', 13, 64, 1, 0, '2024-03-06', '12:57:00', '2024-03-07', '12:00:00', 2000000, 0, 'CHECK IN'),
(90, 27, 'INV-20240306-42', '2024-03-06', 14, 55, 1, 0, '2024-03-06', '13:11:00', '2024-03-07', '12:00:00', 2000000, 0, 'CHECK IN'),
(91, 16, 'INV-20240306-99', '2024-03-06', 15, 81, 1, 0, '2024-03-06', '13:23:00', '2024-03-07', '12:00:00', 800000, 0, 'CHECK IN'),
(92, 22, 'INV-20240306-96', '2024-03-06', 16, 51, 1, 0, '2024-03-06', '13:32:00', '2024-03-04', '12:00:00', 2000000, 0, 'CHECK IN'),
(93, 15, 'INV-20240306-46', '2024-03-06', 17, 44, 0, 0, '2024-03-06', '13:46:00', '2024-02-07', '12:00:00', 22400000, 800, 'CHECK IN'),
(94, 17, 'INV-20240306-75', '2024-03-06', 18, 62, 0, 0, '2024-03-06', '13:55:00', '2024-03-21', '12:00:00', 30000000, 2000, 'CHECK IN'),
(95, 24, 'INV-20240306-15', '2024-03-06', 19, 23, 1, 0, '2024-03-06', '14:02:00', '2024-03-07', '12:00:00', 1000000, 1000000, 'CHECK IN'),
(96, 8, 'INV-20240307-34', '2024-03-07', 1, 44, 1, 0, '2024-03-07', '09:30:00', '2024-03-08', '12:00:00', 800000, 0, 'CHECK IN'),
(97, 16, 'INV-20240307-81', '2024-03-07', 4, 60, 1, 0, '2024-03-07', '10:13:00', '2024-03-08', '12:00:00', 2000000, 0, 'CHECK IN'),
(98, 20, 'INV-20240307-21', '2024-03-07', 5, 57, 1, 0, '2024-03-07', '10:33:00', '2024-03-08', '12:00:00', 2000000, 0, 'CHECK IN'),
(99, 10, 'INV-20240307-27', '2024-03-07', 1, 47, 0, 0, '2024-03-07', '10:48:00', '2024-03-08', '12:00:00', 1000000, 0, 'CHECK IN'),
(100, 23, 'INV-20240307-64', '2024-03-07', 7, 51, 1, 0, '2024-03-07', '11:03:00', '2024-03-08', '12:00:00', 1000000, 0, 'CHECK IN'),
(101, 21, 'INV-20240307-32', '2024-03-07', 8, 52, 1, 0, '2024-03-07', '11:16:00', '2024-03-08', '12:00:00', 1000000, 0, 'CHECK IN'),
(102, 25, 'INV-20240307-12', '2024-03-07', 10, 48, 1, 1, '2024-03-07', '11:56:00', '2024-03-08', '12:00:00', 1000000, 0, 'CHECK IN'),
(103, 25, 'INV-20240307-76', '2024-03-07', 10, 49, 1, 1, '2024-03-07', '11:57:00', '2024-03-08', '12:00:00', 1000000, 0, 'CHECK IN'),
(104, 25, 'INV-20240307-42', '2024-03-07', 10, 46, 1, 1, '2024-03-07', '11:58:00', '2024-03-08', '12:00:00', 1000000, 0, 'CHECK IN'),
(105, 9, 'INV-20240307-90', '2024-03-07', 11, 54, 1, 0, '2024-03-07', '13:40:00', '2024-03-07', '12:00:00', 0, 0, 'CHECK IN'),
(106, 7, 'INV-20240307-15', '2024-03-07', 1, 67, 0, 0, '2024-03-07', '13:51:00', '2024-03-08', '12:00:00', 2000000, 0, 'CHECK IN'),
(107, 28, 'INV-20240307-54', '2024-03-07', 1, 53, 1, 0, '2024-03-07', '14:05:00', '2024-03-07', '12:00:00', 0, 0, 'CHECK IN'),
(108, 26, 'INV-20240307-38', '2024-03-07', 14, 50, 0, 0, '2024-03-07', '14:17:00', '2024-03-08', '12:00:00', 1000000, 0, 'CHECK IN'),
(109, 26, 'INV-20240307-33', '2024-03-07', 14, 9, 0, 0, '2024-03-07', '14:18:00', '2024-03-08', '12:00:00', 1000000, 0, 'CHECK IN'),
(110, 22, 'INV-20240307-42', '2024-03-07', 1, 17, 1, 0, '2024-03-07', '14:42:00', '2024-03-04', '12:00:00', 3000000, 0, 'CHECK IN'),
(111, 24, 'INV-20240307-20', '2024-03-07', 16, 61, 1, 0, '2024-03-07', '14:52:00', '2024-03-07', '12:00:00', 0, 2000, 'CHECK IN'),
(112, 14, 'INV-20240307-40', '2024-03-07', 1, 16, 1, 0, '2024-03-07', '15:13:00', '2024-03-07', '12:00:00', 0, 1000000, 'CHECK IN'),
(113, 14, 'INV-20240307-44', '2024-03-07', 1, 20, 1, 0, '2024-03-07', '15:27:00', '2024-03-08', '12:00:00', 1000000, 0, 'CHECK IN'),
(114, 14, 'INV-20240307-21', '2024-03-07', 1, 19, 1, 0, '2024-03-07', '15:28:00', '2024-03-08', '12:00:00', 1000000, 0, 'CHECK IN'),
(115, 19, 'INV-20240307-96', '2024-03-07', 1, 65, 0, 0, '2024-03-07', '15:43:00', '2024-03-08', '12:00:00', 2000000, 2000, 'CHECK IN'),
(116, 30, 'INV-20240530-42', '2024-05-30', 17, 15, 1, 0, '2024-05-30', '10:50:00', '2024-06-01', '12:00:00', 2000000, 0, 'CHECK IN'),
(117, 31, 'INV-20240530-49', '2024-05-30', 18, 21, 0, 0, '2024-05-30', '11:04:00', '0000-00-00', '12:00:00', 0, 0, 'CHECK IN'),
(118, 32, 'INV-20240530-58', '2024-05-30', 19, 12, 2, 0, '2024-05-30', '11:21:00', '2024-03-07', '12:00:00', 168000000, 0, 'CHECK OUT'),
(119, 29, 'INV-20240530-44', '2024-05-30', 20, 18, 1, 0, '2024-05-30', '11:39:00', '2024-05-31', '12:00:00', 1000000, 0, 'CHECK IN'),
(120, 1, 'INV-20240613-17', '2024-06-13', 22, 13, 0, 0, '2024-06-13', '15:27:00', '2024-06-14', '12:00:00', 250000, 0, 'CHECK IN'),
(121, 1, 'INV-20240613-35', '2024-06-13', 22, 14, 0, 0, '2024-06-13', '15:33:00', '2024-06-14', '12:00:00', 250000, 0, 'CHECK IN'),
(122, 1, 'INV-20240613-19', '2024-06-13', 22, 23, 0, 0, '2024-06-13', '15:36:00', '2024-06-14', '12:00:00', 400000, 0, 'CHECK IN'),
(123, 1, 'INV-20250220-82', '2025-02-20', 0, 11, 1, 1, '2025-02-20', '09:14:00', '2025-02-27', '12:00:00', 14000000, 50000, 'CHECK IN');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_layanan`
--

CREATE TABLE `transaksi_layanan` (
  `id_transaksi_layanan` int(3) NOT NULL,
  `id_user` int(3) NOT NULL,
  `tanggal` date NOT NULL,
  `waktu` time NOT NULL,
  `id_transaksi_kamar` int(3) NOT NULL,
  `id_layanan` int(3) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi_layanan`
--

INSERT INTO `transaksi_layanan` (`id_transaksi_layanan`, `id_user`, `tanggal`, `waktu`, `id_transaksi_kamar`, `id_layanan`, `jumlah`, `total`) VALUES
(30, 1, '2024-01-26', '13:11:00', 24, 2, 1, 15000),
(31, 1, '2024-01-26', '13:14:00', 24, 4, 2, 20000),
(32, 1, '2024-01-29', '10:18:00', 25, 4, 2, 20000),
(33, 1, '2024-02-02', '13:45:00', 30, 2, 100000, 1500000000),
(34, 1, '2024-02-16', '13:52:00', 66, 2, 2, 30000),
(35, 1, '2024-02-16', '13:52:00', 66, 1, 2, 50000),
(36, 35, '2025-02-20', '08:59:00', 78, 4, 5, 50000),
(37, 1, '2025-02-20', '09:01:00', 78, 2, 2, 30000),
(38, 1, '2025-02-20', '09:11:00', 78, 5, 2, 30000),
(39, 1, '2025-02-20', '09:13:00', 79, 5, 2, 30000);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(3) NOT NULL,
  `images` varchar(100) NOT NULL DEFAULT 'user.jpg',
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `id_user_role` int(5) NOT NULL,
  `jabatan` varchar(100) NOT NULL,
  `nomor_telp` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `images`, `username`, `password`, `nama`, `id_user_role`, `jabatan`, `nomor_telp`) VALUES
(1, 'user.jpg', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Intan Yunia Cahyani', 1, 'Application Developer', '085659257393'),
(4, 'user.jpg', 'office', 'e72f4545eb68c96c754f91fc01573517', 'Front Office', 4, 'FO', '085759585756'),
(5, 'user.jpg', 'service', 'aaabf0d39951f3e6c3e8a7911df524c2', 'sevice', 5, 'RS', '0987898765'),
(6, 'user.jpg', 'administrator', '200ceb26807d6bf99fd6f4f0d1ca54d4', 'administrator', 3, 'Admin', '0987898760'),
(7, 'user.jpg', 'Budi', '5894c82cc2aeb6560140a81694f99051', 'Budi Firmansyah', 4, 'Reception', '0'),
(8, 'user.jpg', 'Eva', '67a2a324cb08c0b2f02d096eceee933b', 'Eva Nurhasanah', 4, 'Reception', '0'),
(9, 'user.jpg', 'Farhan', '9048d07348e59dcbf50c227937d4b906', 'Farhan Septiana', 4, 'Reception', '0'),
(10, 'user.jpg', 'Fauzi', '67a7d074aac7f2b18ad53d24f18ca5ec', 'Fauzi Endiarsyah', 4, 'Reception', '0'),
(11, 'user.jpg', 'Fitri', '77c796ee460fecfb87f038f1bb6fb248', 'Fitri Aryanti', 4, 'Reception', '0'),
(12, 'user.jpg', 'Habi', 'd07483705af8f1a5fd915f51a2080c0d', 'Habi Al Permana', 4, 'Reception', '0'),
(13, 'user.jpg', 'Hirestu', 'd05fef942c2cba133807f9b58d174a69', 'Hirestu', 4, 'Reception', '0'),
(14, 'user.jpg', 'Noval', 'bdb500c0495ba2890b60364257c7ad54', 'M. Noval Adnan', 4, 'Reception', '0'),
(15, 'user.jpg', 'Fahrul', '08e305466aa59f691dce0637fa742149', 'M. Fahrul Pahlevi', 4, 'Reception', '0'),
(16, 'user.jpg', 'Mupti', '6fbe56f4a24927904096388ac75c4357', 'M. Mupti Aliyudin', 4, 'Reception', '0'),
(17, 'user.jpg', 'Aprizal', '49a8494b8e79e2f91e20e7f766b6a3be', 'M. Aprizal', 4, 'Reception', '0'),
(18, 'user.jpg', 'Neng', '294ece374256f2bc3f6bd0c822699efb', 'Neng Fitria Hardiani', 4, 'Reception', '0'),
(19, 'user.jpg', 'Pauzi', 'c072e1c82fecf8c9f4f62b7d8c724f2e', 'Pauzi Rizki Pinasti', 4, 'Reception', '0'),
(20, 'user.jpg', 'Pirna', '9e83e68e7595767550305b2e0f5c0ec1', 'Pirna Pitriani', 4, 'Reception', '0'),
(21, 'user.jpg', 'Restina', '66c62661358144189d1bf834a12dc970', 'Restina Aulia', 4, 'Reception', '0'),
(22, 'user.jpg', 'Rian', '869bc62a99676368c7fdac2909a4b2e7', 'Rian Muhammad Maulana', 4, 'Reception', '0'),
(23, 'user.jpg', 'Risna', '6855ebb308f3001fdac8f007969a900f', 'Risnawati', 4, 'Reception', '0'),
(24, 'user.jpg', 'Sandi', '82075a4af9b5882e13b06e50a3488237', 'Sandi Permana Adi', 4, 'Reception', '0'),
(25, 'user.jpg', 'Seni', '1843adfa2c9e4234ceb9f3780ba929a9', 'Seni Fitriani', 4, 'Reception', '0'),
(26, 'user.jpg', 'Sopyan', '80bafe0513fe5c36110eb93cd1d9b882', 'Sopyan Firmansyah', 4, 'Reception', '0'),
(27, 'user.jpg', 'Syakila', 'c9fd21b0e363cb5544ca1c1573403c56', 'Syakila Aulia', 4, 'Reception', '0'),
(28, 'user.jpg', 'Yoga', '8be1c94fdc10945f5704322b08faa2a2', 'Yoga Adi Purnama', 4, 'Reception', '0'),
(29, 'user.jpg', 'Ruli', 'b1e1838853c5682a4d629e95fa4c4d07', 'Ruli', 4, 'Reception', '0'),
(30, 'user.jpg', 'Pini', 'ab746005b07347b2596c298dfa448bf1', 'Pini', 4, 'Reception', '0'),
(31, 'user.jpg', 'Ica', '967f96d98b992e7efffc9116266e7dbc', 'Ica Widianisngsih', 4, 'Reception', '0'),
(32, 'user.jpg', 'Nabila', '85556b2fa3baab25d250149e1ede1b81', 'Nabila Amalia P', 4, 'Reception', '0'),
(33, 'user.jpg', 'Rena', '838c3d325c15d42be95709a84f8a09de', 'Rena Hari D', 4, 'Reception', '0'),
(34, 'user.jpg', 'Naida', 'f788cec5df20d822146bd67ff2052f9b', 'Naida Marmora A', 4, 'Reception', '0'),
(35, 'user.jpg', 'ewokz', '18e7925e795eaf1ca22a8247adea87d4', 'ewokz', 4, 'Reception', '085700880555');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id_user_role` int(10) NOT NULL,
  `role_name` varchar(100) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id_user_role`, `role_name`, `keterangan`) VALUES
(1, 'DEVELOPER', 'Akses khusus untuk pembuat aplikasi'),
(2, 'SUPER ADMINISTRATOR', ''),
(3, 'ADMINISTRATOR', ''),
(4, 'FRONT OFFICE', ''),
(5, 'ROOM SERVICE', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `finance_income`
--
ALTER TABLE `finance_income`
  ADD PRIMARY KEY (`id_finance_income`);

--
-- Indexes for table `kamar`
--
ALTER TABLE `kamar`
  ADD PRIMARY KEY (`id_kamar`);

--
-- Indexes for table `kamar_tipe`
--
ALTER TABLE `kamar_tipe`
  ADD PRIMARY KEY (`id_kamar_tipe`);

--
-- Indexes for table `layanan`
--
ALTER TABLE `layanan`
  ADD PRIMARY KEY (`id_layanan`);

--
-- Indexes for table `layanan_kategori`
--
ALTER TABLE `layanan_kategori`
  ADD PRIMARY KEY (`id_layanan_kategori`);

--
-- Indexes for table `perusahaan`
--
ALTER TABLE `perusahaan`
  ADD PRIMARY KEY (`id_perusahaan`);

--
-- Indexes for table `tamu`
--
ALTER TABLE `tamu`
  ADD PRIMARY KEY (`id_tamu`);

--
-- Indexes for table `transaksi_kamar`
--
ALTER TABLE `transaksi_kamar`
  ADD PRIMARY KEY (`id_transaksi_kamar`);

--
-- Indexes for table `transaksi_layanan`
--
ALTER TABLE `transaksi_layanan`
  ADD PRIMARY KEY (`id_transaksi_layanan`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id_user_role`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `finance_income`
--
ALTER TABLE `finance_income`
  MODIFY `id_finance_income` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kamar`
--
ALTER TABLE `kamar`
  MODIFY `id_kamar` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `kamar_tipe`
--
ALTER TABLE `kamar_tipe`
  MODIFY `id_kamar_tipe` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `layanan`
--
ALTER TABLE `layanan`
  MODIFY `id_layanan` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `layanan_kategori`
--
ALTER TABLE `layanan_kategori`
  MODIFY `id_layanan_kategori` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `perusahaan`
--
ALTER TABLE `perusahaan`
  MODIFY `id_perusahaan` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tamu`
--
ALTER TABLE `tamu`
  MODIFY `id_tamu` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `transaksi_kamar`
--
ALTER TABLE `transaksi_kamar`
  MODIFY `id_transaksi_kamar` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `transaksi_layanan`
--
ALTER TABLE `transaksi_layanan`
  MODIFY `id_transaksi_layanan` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id_user_role` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
