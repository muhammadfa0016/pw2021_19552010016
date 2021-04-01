-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 01, 2021 at 06:33 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `latihan_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_karyawan`
--

CREATE TABLE `data_karyawan` (
  `id` int(4) NOT NULL,
  `nip` int(20) NOT NULL,
  `identitas_jenis` varchar(10) NOT NULL,
  `identitas_no` varchar(20) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `tempat_lahir` varchar(25) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `status` varchar(15) NOT NULL,
  `nomor_hp` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_karyawan`
--

INSERT INTO `data_karyawan` (`id`, `nip`, `identitas_jenis`, `identitas_no`, `nama`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `status`, `nomor_hp`, `email`, `alamat`) VALUES
(1, 123, 'ktp', '1872012311970001', 'Muhammad Fadhli', 'pria', 'Palembang', '1997-11-23', 'karyawan tetap', '089626709824', 'fadhli.smart7@gmail.com', 'jln.Kh.Azhari, Lorong Al-Kautsar, RT.02, RW.01, Kelurahan 7ulu, Kecamatan Seberang Ulu 1, Kota Palembang'),
(2, 123456789, 'ktp', '1872017012990001', 'Nadila Ramadhoni', 'wanita', 'Palembang', '1999-12-30', 'karyawan tetap', '0895237654130', 'nadila.rhd12@gmail.com', 'Jln. Lorong Samping, Kelurahan 7 Ulu, Kecamatan Seberang Ulu 1, Kota Palembang');

-- --------------------------------------------------------

--
-- Table structure for table `data_mahasiswa`
--

CREATE TABLE `data_mahasiswa` (
  `id` int(4) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_mahasiswa`
--

INSERT INTO `data_mahasiswa` (`id`, `nama`, `email`, `alamat`) VALUES
(1, 'fadhli', 'fadhli.smart7@gmail.com', 'palembang'),
(2, 'imam', 'imambagoes13@gmail.com', 'kenten baru lorong 12');

-- --------------------------------------------------------

--
-- Table structure for table `data_pelanggan`
--

CREATE TABLE `data_pelanggan` (
  `id` int(11) NOT NULL,
  `pelanggan_kode` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `identitas_jenis` varchar(10) NOT NULL,
  `identitas_no` varchar(25) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `agama` varchar(10) NOT NULL,
  `unit` varchar(10) NOT NULL,
  `kota` varchar(25) NOT NULL,
  `nomor_hp` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `status` varchar(15) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_pelanggan`
--

INSERT INTO `data_pelanggan` (`id`, `pelanggan_kode`, `nama`, `identitas_jenis`, `identitas_no`, `jenis_kelamin`, `agama`, `unit`, `kota`, `nomor_hp`, `email`, `status`, `keterangan`) VALUES
(1, 'q123', 'fadhli', 'ktp', '123432', 'pria', 'islam', 'pusat', 'Palembang', '0896765421211', 'muhammadfa0016@students.uss.ac.id', 'aktif', 'dsdsdsd'),
(2, '4123', 'Muhammad Fadhli', 'sim', '34524236745', 'pria', 'islam', 'pusat', 'Bogor', '089626709824', 'fadhli.smart7@gmail.com', 'aktif', 'we are smile'),
(3, 'ab14567828', 'Nadila Ramadhoni', 'ktp', '1872017012990001', 'wanita', 'islam', 'cabang', 'Palembang', '082142108765', 'nadila.rhd12@gmail.com', 'aktif', 'Saya adalah karyawan yang suka kebebasan dalam bertindak');

-- --------------------------------------------------------

--
-- Table structure for table `data_tamu`
--

CREATE TABLE `data_tamu` (
  `id` int(3) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `identitas_jenis` varchar(10) NOT NULL,
  `identitas_no` varchar(25) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `kota` varchar(50) NOT NULL,
  `nomor_hp` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_tamu`
--

INSERT INTO `data_tamu` (`id`, `nama`, `identitas_jenis`, `identitas_no`, `jenis_kelamin`, `kota`, `nomor_hp`, `email`) VALUES
(1, 'Muhammad Fadhli', 'paspor', '1872012311970001', 'laki_laki', 'Palembang', '089626709824', 'muhammadfa0016@students.uss.ac.id'),
(2, 'Aditya Nugraha', 'sim', '1234567', 'perempuan', 'Palembang', '081234567891', 'adityanug0001@students.uss.ac.id'),
(3, 'imam', 'sim', '12345432', 'perempuan', 'bogor', '0896273463', 'imambagoes13@gmail.com'),
(4, 'gerrard', 'paspor', 'ab1122323', 'laki_laki', 'manchester', '0896765434', 'gerardganteng@gmail.com'),
(5, 'fadhli', 'ktp', '123432', 'pria', 'Palembang', '0896765421211', 'muhammadfa0016@students.uss.ac.id'),
(6, 'nursaidah', 'sim', '19552010020', 'perempuan', 'Palembang', '081234767890', 'nursaidah0020@students.uss.ac.id');

-- --------------------------------------------------------

--
-- Table structure for table `data_users`
--

CREATE TABLE `data_users` (
  `id` int(4) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_users`
--

INSERT INTO `data_users` (`id`, `nama`, `alamat`) VALUES
(1, 'Fadhli', 'Palembang'),
(2, 'Fadhli', 'Palembang'),
(3, 'Fadhli', 'Palembang'),
(4, 'imam', 'kenten'),
(5, 'febrian', 'pusri');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_karyawan`
--
ALTER TABLE `data_karyawan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_mahasiswa`
--
ALTER TABLE `data_mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_pelanggan`
--
ALTER TABLE `data_pelanggan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_tamu`
--
ALTER TABLE `data_tamu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_users`
--
ALTER TABLE `data_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_karyawan`
--
ALTER TABLE `data_karyawan`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `data_mahasiswa`
--
ALTER TABLE `data_mahasiswa`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `data_pelanggan`
--
ALTER TABLE `data_pelanggan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `data_tamu`
--
ALTER TABLE `data_tamu`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `data_users`
--
ALTER TABLE `data_users`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
