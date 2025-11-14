-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2025 at 01:29 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bimbel_utbk`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` char(5) NOT NULL,
  `nama_admin` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `nama_admin`, `username`, `password`, `email`) VALUES
('AD001', 'Farid', 'Farid', '$2y$10$zRAABeap1fw8kw9yJwDLj.2vPt8mTi6TkPmIA4.JZJ6qB8z5xSiRK', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `laporan`
--

CREATE TABLE `laporan` (
  `laporan_id` char(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'ID laporan',
  `admin_id` char(5) NOT NULL COMMENT 'ID admin',
  `transaksi_id` char(8) NOT NULL COMMENT 'ID transaksi',
  `tanggal_laporan` datetime NOT NULL COMMENT 'Tanggal laporan',
  `keterangan` varchar(100) DEFAULT NULL COMMENT 'Catatan laporan'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `paket_bimbel`
--

CREATE TABLE `paket_bimbel` (
  `paket_id` char(5) NOT NULL COMMENT 'ID paket',
  `nama_paket` varchar(50) NOT NULL COMMENT 'Nama paket',
  `kategori` varchar(30) DEFAULT NULL COMMENT 'Kategori paket',
  `deskripsi` varchar(200) DEFAULT NULL COMMENT 'Deskripsi singkat',
  `harga` decimal(10,2) NOT NULL COMMENT 'Harga paket',
  `durasi` varchar(20) DEFAULT NULL COMMENT 'Lama belajar',
  `link_classroom` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `paket_bimbel`
--

INSERT INTO `paket_bimbel` (`paket_id`, `nama_paket`, `kategori`, `deskripsi`, `harga`, `durasi`, `link_classroom`) VALUES
('PK001', 'Basic', 'Paket Normal', '3 Video Pembelajaran (7 menit),\r\n5 Pelatihan Soal,\r\n2 Buku Pembelajaran.', 500000.00, '30 Hari', 'https://classroom.google.com/c/ODI4MzAxMTU5MTAw?cjc=x3bu7mie'),
('PK002', 'Standard', 'Paket Spesial', '6 Video Pembelajaran (12 menit),\r\n12 Pelatihan Soal,\r\n4 Buku Pembelajaran,\r\n1 Pertemuan Dengan Pembimbing.', 800000.00, '30 Hari', 'https://classroom.google.com/c/ODI4MzAxMjI5MzUx?cjc=w4ncknbp'),
('PK003', 'Premium', 'Paket Eksklusif', '15 Video Pembelajaran (18 menit),\r\n25 Pelatihan Soal,\r\n12 Buku Pembelajaran,\r\n5 Pertemuan Dengan Pembimbing,\r\nBonus Sertifikat Resmi Bimbel.', 1200000.00, '47 Hari', 'https://classroom.google.com/c/ODI4MzAxOTYwMzQ0?cjc=scjgpjpu');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `pembayaran_id` char(8) NOT NULL COMMENT 'ID pembayaran',
  `transaksi_id` char(8) NOT NULL COMMENT 'ID transaksi',
  `metode` varchar(20) NOT NULL COMMENT 'Metode pembayaran',
  `nominal` decimal(10,2) NOT NULL COMMENT 'Jumlah uang dibayar',
  `bukti_bayar` varchar(100) DEFAULT NULL COMMENT 'Path/file bukti bayar',
  `tanggal_bayar` datetime DEFAULT NULL COMMENT 'Tanggal pembayaran',
  `status_validasi` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `transaksi_id` char(8) NOT NULL COMMENT 'ID transaksi',
  `tanggal_transaksi` date NOT NULL COMMENT 'Tanggal transaksi',
  `status_transaksi` varchar(20) NOT NULL COMMENT 'Status(Selesai/Pending)',
  `total_bayar` decimal(10,2) NOT NULL COMMENT 'Total pembayaran',
  `user_id` char(8) NOT NULL COMMENT 'ID_user',
  `paket_id` char(5) NOT NULL COMMENT 'ID_paket'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` char(8) NOT NULL COMMENT 'ID unik user',
  `nama` varchar(50) NOT NULL COMMENT 'Nama lengkap user',
  `email` varchar(50) NOT NULL COMMENT 'Email user',
  `password` varchar(255) NOT NULL COMMENT 'Password user',
  `no_telp` varchar(15) DEFAULT NULL COMMENT 'Nomor telepon',
  `alamat` varchar(100) DEFAULT NULL COMMENT 'Alamat user',
  `tanggal_daftar` date DEFAULT NULL COMMENT 'Tanggal registrasi'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `nama`, `email`, `password`, `no_telp`, `alamat`, `tanggal_daftar`) VALUES
('U6911ce9', 'dani', 'dani@gmail.com', '$2y$10$jMIXCI2RfV2FversBgl2xO7zMhEcbbKYnJWXlSbk47UoKyTGjMkg.', '12345', 'malang', '2025-11-10'),
('U6915ce1', 'ayu lestari', 'ayulestari@gmail.com', '$2y$10$TW3M96TrNvRyF66iR.ag9.mHVkGy/fTiifm63/XZmeGjldOUEmS42', '12345', 'malangg', '2025-11-13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `laporan`
--
ALTER TABLE `laporan`
  ADD PRIMARY KEY (`laporan_id`),
  ADD KEY `fk_admin` (`admin_id`),
  ADD KEY `fk_transaksi` (`transaksi_id`);

--
-- Indexes for table `paket_bimbel`
--
ALTER TABLE `paket_bimbel`
  ADD PRIMARY KEY (`paket_id`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`pembayaran_id`),
  ADD KEY `fk_transaksi` (`transaksi_id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`transaksi_id`),
  ADD KEY `fk_user` (`user_id`),
  ADD KEY `fk_paket` (`paket_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `laporan`
--
ALTER TABLE `laporan`
  ADD CONSTRAINT `fk_laporan_admin` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`admin_id`),
  ADD CONSTRAINT `fk_laporan_transaksi` FOREIGN KEY (`transaksi_id`) REFERENCES `transaksi` (`transaksi_id`);

--
-- Constraints for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `fk_pembayaran_transaksi` FOREIGN KEY (`transaksi_id`) REFERENCES `transaksi` (`transaksi_id`);

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `fk_transaksi_paket` FOREIGN KEY (`paket_id`) REFERENCES `paket_bimbel` (`paket_id`),
  ADD CONSTRAINT `fk_transaksi_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
