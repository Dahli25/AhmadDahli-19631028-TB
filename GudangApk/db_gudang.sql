-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2022 at 11:41 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_gudang`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `tipe` int(11) NOT NULL,
  `nama_barang` varchar(200) NOT NULL,
  `merk` varchar(200) NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `stok` int(10) NOT NULL,
  `harga` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`tipe`, `nama_barang`, `merk`, `tanggal_masuk`, `stok`, `harga`) VALUES
(1, 'Laptop', 'Asus', '2022-01-02', 30, 2000000),
(2, 'Monitor', 'LG', '2022-01-01', 25, 1000000),
(3, 'Mouse', 'Logitec', '2022-01-02', 50, 60000);

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE `pembelian` (
  `kode` int(11) NOT NULL,
  `nama_barang` varchar(200) NOT NULL,
  `merk` varchar(200) NOT NULL,
  `perusahaan` varchar(200) NOT NULL,
  `jumlah_unit` int(4) NOT NULL,
  `harga` int(10) NOT NULL,
  `total` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pembelian`
--

INSERT INTO `pembelian` (`kode`, `nama_barang`, `merk`, `perusahaan`, `jumlah_unit`, `harga`, `total`) VALUES
(12, 'Laptop', 'Asus', 'PT. ASUSTeK Computer Inc', 10, 2000000, 20000000),
(14, 'Monitor', 'LG', 'PT. LG Astra Electronics', 5, 1000000, 5000000),
(15, 'Mouse', 'Logitec', 'PT. Logitec Asiaji', 2, 60000, 120000),
(16, 'Laptop', 'Asus', 'PT. ASUSTeK Computer Inc', 3, 2000000, 6000000),
(17, 'Mouse', 'Logitec', 'PT. Logitec Asiaji', 4, 60000, 240000);

-- --------------------------------------------------------

--
-- Table structure for table `suplier`
--

CREATE TABLE `suplier` (
  `id` int(11) NOT NULL,
  `perusahaan` varchar(200) NOT NULL,
  `barang_produksi` varchar(200) NOT NULL,
  `asal` varchar(200) NOT NULL,
  `garansi` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `suplier`
--

INSERT INTO `suplier` (`id`, `perusahaan`, `barang_produksi`, `asal`, `garansi`) VALUES
(122, 'PT. ASUSTeK Computer Inc', 'Laptop', 'Taiwan', '2 Tahun'),
(123, 'PT. LG Astra Electronics', 'Monitor', 'Korea', '3 Tahun'),
(124, 'PT. Logitec Asiaji', 'Mouse', 'Jepang', '2 Tahun');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`tipe`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `suplier`
--
ALTER TABLE `suplier`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `tipe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `kode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `suplier`
--
ALTER TABLE `suplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
