-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 29, 2024 at 08:06 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
(9, 202, 2, 2, 1, 'TERSEDIA'),
(10, 20, 0, 0, 0, 'TERSEDIA'),
(11, 203, 4, 2, 1, 'TERSEDIA'),
(12, 204, 4, 2, 1, 'TERSEDIA');

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
(2, 'SUPERIOR', 800000, 0, ''),
(3, 'DELUXE', 1000000, 0, ''),
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
(1, 'NASI GORENG', 1, 'Porsi', 25000),
(2, 'MIE GORENG', 1, 'Porsi', 15000),
(3, 'KOPI TUBRUK', 2, 'Pitcher', 85000),
(4, 'Laundry Pakaian', 4, 'kg', 10000);

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
(1, 'FOOD', 'Produk makanan, snack, sarapan dan lain-lain'),
(2, 'DRINK', 'Produk minuman'),
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
(1, 'EDHOTEL GRAHADI', 'SMK AL-FATHONAH', 'Jalan Pelabuhan II KM 10 Pasirmalang', 'Sukabumi', 'Jawa Barat', '085759592825', '000 0000 0000', 'https://smkalfathonah.sch.id', 'smkalfathonahsmi@gmail.com');

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
(4, 'Mr', 'Iwan', 'Kusmiadi', 'KTP', '3202100104990007', 'Indonesia', 'Kp. Keramat RT 01/01', 'Sukabumi', 'Jawa Barat', '085759592825', 'ewokzsudrazat58@gmail.com'),
(5, 'Mr', 'Budianto', 'Widarto', 'KTP', '320210010499099', 'Indonesia', 'Jl. Kemerdekaan No 12 Jakarta Pusat', 'Jakarta', 'DKI Jakarta', '085759592828', 'budianto9987@gmail.com'),
(6, 'Mr', 'Hamdan', 'Maulana', 'KTP', '32021001022356', 'Indonesia', 'Kp Salabintana', 'sukabumi', 'Jawa Barat', '085759592826', 'hamdan_bengals@yahoo.co.id'),
(7, 'Mr', 'ASEP ', 'SAMSUDIN', 'KTP', '320256256360', 'Indonesia', 'JL. MALIOBORO 3', 'sukabumi', 'Jawa Barat', '085759592826', 'hamdan_bengals@yahoo.co.id'),
(8, 'Mr', 'ASEP ', 'SAMSUDIN', 'KTP', '32021001022356', 'Indonesia', 'JL. MALIBORO 2', 'sukabumi', 'Jawa Barat', '085759592826', 'hamdan_bengals@yahoo.co.id'),
(9, 'Mr', 'Andre', 'Wahyudin', 'KTP', '12345', 'Indonesia', 'Pasir Malang', 'Sukabumi', 'Jawa Barat', '0877', 'andre12@gmail.com'),
(10, 'Ms', 'Risnawati', 'Wahyudin', 'KTP', '12345678', 'Indonesia', 'KP.Pangantolan', 'Sukabumi', 'Jawa Barat', '088888', 'risnawati@gmail .com'),
(11, 'Mr', 'fauzi', 'kecil', 'KTP', '12345678', 'Indonesia', 'kebonjati', 'Sukabumi', 'jawa timur', '0837121314', 'kecil05@gmai.com'),
(12, 'Mr', 'habi', 'al jumuah', 'KTP', '1234567', 'Indonesia', 'kp.cikaret', 'Sukabumi', 'Jawa Barat', '12334556', 'habi095@gmail.com'),
(13, 'Mr', 'budi', 'pirmansyah', 'KTP', '12345', 'Indonesia', 'kp wangunreja', 'Sukabumi', 'Jawa Barat', '0856', 'budi@gmail.com'),
(14, 'Ms', 'Eva ', 'Nurhasanah', 'KTP', '12345678', 'Indonesia', 'kp. pasir malang', 'Sukabumi', 'Jawa Barat', '0837121314', 'eva123@gmail.com'),
(15, 'Mr', 'fauzi', 'kecil', 'KTP', '12345678', 'Indonesia', 'kp. pangles', 'Sukabumi', 'Jawa Barat', '0837121314', 'kecil05@gmai.com'),
(16, 'Mr', 'Muhamad Aabdul', 'Rojak', 'KTP', '12345678', 'Indonesia', 'kp. Legok Sengon', 'Sukabumi', 'Jawa Barat', '0864765', 'ROJAK.STJ@.COM'),
(17, 'Mr', 'fauzi', 'ENDIYANSAH', 'KTP', '12345678', 'Indonesia', 'kp,pangles', 'Sukabumi', 'Jawa Barat', '0837121314', 'kecil05@gmai.com'),
(18, 'Mr', 'william', 'amsterdam', 'KTP', '0896654365', 'Belanda', 'jl. amterdam, belanda ', 'belanda', 'amsterdam', '18976785445', 'willianamterdan009@gmaiil.com'),
(19, 'Ms', 'Sarti', 'Romlah', 'KTP', '65412987', 'Indonesia', 'kp.padabenghar', 'Sukabumi', 'Jawa Barat', '086754321', 'sarti32@gmail.com'),
(20, 'Ms', 'Risnawati', 'Risnawati', 'KTP', '12345678', 'Indonesia', 'kp. cipempes', 'Sukabumi', 'Jawa Barat', '0837121314', 'risnawati@gmail .com'),
(21, 'Ms', 'Restina', 'Aulia', 'KTP', '12345678', 'Indonesia', 'KP.CIBATU', 'Sukabumi', 'Jawa Barat', '0837121314', 'RESTINA22@Gmail.conm'),
(22, 'Ms', 'Risnawati', 'Risnawati', 'KTP', '12345678', 'Indonesia', 'Kp.cigarung', 'Sukabumi', 'Jawa Barat', '0837121314', 'risnawati@gmail .com'),
(23, 'Mr', 'udin', 'petot', 'KTP', '12345678', 'Indonesia', 'ci hangseur', 'Sukabumi', 'Jawa Barat', '0837121314', 'jekicen@.com'),
(24, 'Mr', 'umat', 'hidayat', 'KTP', '1346776', 'Indonesia', 'kp. tanjung ancol', 'Sukabumi', 'Jawa Barat', '07895356', 'mamat@gmail.com'),
(25, 'Mr', 'sopyan ', 'firmansah ', 'KTP', '12345', 'Indonesia', 'kp ciorai', 'Sukabumi', 'Jawa Barat', '0837121314', 'intan4622@guru.smk.belajar.id'),
(26, 'Ms', 'syakila aulia', 'aulia', 'KTP', '12345678', 'Indonesia', 'kp/\r\n?\r\n\r\n\r\n\r\n\r\nkp.panyaweyan', 'Sukabumi', 'Jawa Barat', '0837121314', 'syakilaaulia['),
(27, 'Ms', 'Eva ', 'Nurhasanah', 'KTP', '12345678', 'Indonesia', 'Kp.Tanjungsari', 'Sukabumi', 'Jawa Barat', '12334556', 'seniftyni@gmail.com'),
(28, 'Mr', 'farhan', 'asep', 'KTP', '12345678', 'Indonesia', 'kp.cioray', 'Sukabumi', 'Jawa Barat', '0837121314', 'intan4622@guru.smk.belajar.id'),
(29, 'Mr', 'Budi ', 'Firmansyah', 'KTP', '081223334444', 'Indonesia', 'Kp.Wangun', 'Sukabumi', 'Jawa Barat', '0837121314', 'Budifirmansyah@gmail.com'),
(30, 'Mr', 'fauzi', 'kecil', 'KTP', '12345678', 'Indonesia', 'kp.kebonjati', 'Sukabumi', 'Jawa Barat', '0837121314', ''),
(31, 'Mr', 'mupti ', 'aliudin', 'KTP', '12345678', 'indonesia', 'jaln cioray', 'Sukabumi', 'Jawa Barat', '0856766546444', 'risnawati@gmail .com'),
(32, 'Ms', 'eva', 'nurhasanah', 'KTP', '654322', 'Belanda', 'kp.jepang', 'Sukabumi', 'Jawa Barat', '08675554', 'evahasanh@gmail.com'),
(33, 'Ms', 'fitri', 'aryanti', 'KTP', '345565', 'Indonesia', 'kp.karangpara', 'Sukabumi', 'Jawa Barat', '12334556', 'fitriaryanti@gmail.com'),
(34, 'Mr', 'mufti', 'aliyudin', 'KTP', '12345678', 'indonesia', 'cioray', 'Sukabumi', 'Jawa Barat', '0837121314', 'mufti@gmail.com'),
(35, 'Mr', 'Budi', 'Firmansyah', 'KTP', '334567843', 'Indonesia', 'jl. wangunreja RT002/RW004\r\n', 'Sukabumi', 'Jawa Barat', '089766543342', 'budirampak@gmail.com'),
(36, 'Ms', 'Intan', 'yunia', 'KTP', '124576', 'Belanda2344565', 'kp cikaret', 'Sukabumi', 'Jawa Barat', '56547876', 'intan65@gmail.com'),
(37, 'Ms', 'EVA ', 'NURHASANAH', 'KTP', '21725788', 'Indonesia', 'KP. CIGARUNG', 'Sukabumi', 'Jawa Barat', '55555555', 'EVA@GMAIL.COM'),
(38, 'Ms', 'FITRI ', 'ARYANTI', 'KTP', '32578865', 'Indonesia', 'KP.PADARAANG', 'Sukabumi', 'Jawa Barat', '43297654', 'FITRI@GMAIL.COM'),
(39, 'Ms', 'FITRI', 'ARYANTI', 'KTP', '12345678', 'Indonesia', 'KP. KEBON MANGGU', 'Sukabumi', 'Jawa Barat', '45336677', 'FITRI@GMAIL.COM'),
(40, 'Ms', 'Eva ', 'Nurhasanah', 'KTP', '12345678', 'Indonesia', 'kP.PONDOK BITUNG', 'Sukabumi', 'Jawa Barat', '0837121314', 'eva123@gmail.com'),
(41, 'Ms', 'RESTINA', 'AULIA', 'KTP', '12345678', 'Indonesia', 'KP.TANJUNGSARI', 'Sukabumi', 'Jawa Barat', '0837121314', 'RESTINA22@Gmail.conm'),
(42, 'Ms', 'SENI', 'BRIGADIR', 'KTP', '1276538', 'Indonesia', 'KP.LEGOK HANGSEUR', 'Sukabumi', 'jawa timur', '085765437267363', 'SENI@GMAIL.COM'),
(43, 'Ms', 'FITRI', 'ARYANTI', 'KTP', '21225655', 'Indonesia', 'KP.JATI MEKAR ', 'Sukabumi', 'Jawa Barat', '08867578864', 'FITRI@GMAIL.COM'),
(44, 'Ms', 'EVA', 'NURHASANAH', 'KTP', '2435463367', 'Indonesia', 'KP.JATI NANGOR', 'Sukabumi', 'Jawa Barat', '5423467568', 'EVANURHASANAH7@GMAIL.COM'),
(45, 'Mr', 'Hi', 'Restu', 'KTP', '117', 'Indonesia', 'kp. kalaparea kec. cikembar ', 'Sukabumi', 'Jawa Barat', '08123456789', 'hirestu7@gmail.com'),
(46, 'Mr', 'fahrul', 'pahlevi', 'KTP', '98987654', 'Indonesia', 'kp.bojongkidul\r\n', 'Sukabumi', 'Jawa Barat', '083836427167', 'fahrulpahlevi28@gmail.com');

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
(67, 1, 'INV-20240216-31', '2024-02-16', 46, 9, 1, 1, '2024-02-16', '14:00:00', '2024-02-17', '12:00:00', 800000, 450, 'CHECK IN'),
(68, 1, 'INV-20240216-12', '2024-02-16', 45, 9, 1, 0, '2024-02-16', '14:18:00', '2024-02-04', '12:00:00', 9600000, 500000, 'CHECK IN');

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
(35, 1, '2024-02-16', '13:52:00', 66, 1, 2, 50000);

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
(6, 'user.jpg', 'administrator', '200ceb26807d6bf99fd6f4f0d1ca54d4', 'administrator', 3, 'Admin', '0987898760');

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
  MODIFY `id_finance_income` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kamar`
--
ALTER TABLE `kamar`
  MODIFY `id_kamar` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `kamar_tipe`
--
ALTER TABLE `kamar_tipe`
  MODIFY `id_kamar_tipe` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `layanan`
--
ALTER TABLE `layanan`
  MODIFY `id_layanan` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `id_tamu` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `transaksi_kamar`
--
ALTER TABLE `transaksi_kamar`
  MODIFY `id_transaksi_kamar` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `transaksi_layanan`
--
ALTER TABLE `transaksi_layanan`
  MODIFY `id_transaksi_layanan` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id_user_role` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
