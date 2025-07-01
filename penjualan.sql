-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2025 at 01:26 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penjualan`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `kdbrg` varchar(6) NOT NULL,
  `nmbrg` varchar(25) NOT NULL,
  `jenis` varchar(25) NOT NULL,
  `hargabeli` varchar(25) NOT NULL,
  `hargajual` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`kdbrg`, `nmbrg`, `jenis`, `hargabeli`, `hargajual`) VALUES
('K001', 'Nextar', 'Makanan', '2000', '3500'),
('K002', 'Chitato', 'Makanan', '6000', '8000'),
('M001', 'Pulpy Orange', 'Minuman', '4000', '6000'),
('M002', 'Kopi Hitam', 'Makanan', '2000', '3000');

-- --------------------------------------------------------

--
-- Table structure for table `isi`
--

CREATE TABLE `isi` (
  `id_nota` varchar(6) NOT NULL,
  `kdbrg` varchar(6) NOT NULL,
  `hargabeli` int(255) NOT NULL,
  `hargajual` int(255) NOT NULL,
  `qty` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `isi`
--

INSERT INTO `isi` (`id_nota`, `kdbrg`, `hargabeli`, `hargajual`, `qty`) VALUES
('IN0003', 'K001', 2000, 3500, 1),
('IN0004', 'K002', 6000, 8000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `kasir`
--

CREATE TABLE `kasir` (
  `idkasir` varchar(6) NOT NULL,
  `nmkasir` varchar(25) NOT NULL,
  `jenis` varchar(25) NOT NULL,
  `telepon` varchar(20) NOT NULL,
  `agama` varchar(20) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kasir`
--

INSERT INTO `kasir` (`idkasir`, `nmkasir`, `jenis`, `telepon`, `agama`, `alamat`, `password`) VALUES
('ADM001', 'Rizal', 'Laki-Laki', '089234412513', 'Islam', 'Jl. Kalibata Raya', 'admin01'),
('IK0001', 'Kharisma', 'Perempuan', '0894145123', 'Islam', 'Pangandaran', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `nota`
--

CREATE TABLE `nota` (
  `id_nota` varchar(6) NOT NULL,
  `tgl_nota` date NOT NULL,
  `id` varchar(6) NOT NULL,
  `idkasir` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nota`
--

INSERT INTO `nota` (`id_nota`, `tgl_nota`, `id`, `idkasir`) VALUES
('IN0001', '2025-05-25', 'P001', 'ADM001'),
('IN0002', '2025-05-26', 'P002', 'ADM001'),
('IN0003', '2025-06-18', 'P001', 'ADM001'),
('IN0004', '2025-06-18', 'P003', 'ADM001');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id` varchar(6) NOT NULL,
  `nmplgn` varchar(25) NOT NULL,
  `jenis` varchar(20) NOT NULL,
  `telepon` varchar(20) NOT NULL,
  `alamat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id`, `nmplgn`, `jenis`, `telepon`, `alamat`) VALUES
('P001', 'Rizki', 'Laki-Laki', '0894145123', 'Jalan Kampung Gedong'),
('P002', 'Rizma', 'Perempuan', '08955124231', 'Raya Bogor'),
('P003', 'Ridwan', 'Laki-Laki', '0852351236', 'Cibubur');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kdbrg`);

--
-- Indexes for table `kasir`
--
ALTER TABLE `kasir`
  ADD PRIMARY KEY (`idkasir`);

--
-- Indexes for table `nota`
--
ALTER TABLE `nota`
  ADD PRIMARY KEY (`id_nota`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
