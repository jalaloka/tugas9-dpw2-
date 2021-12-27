-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 27, 2021 at 06:45 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tugas9`
--

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `berat` decimal(11,5) DEFAULT NULL,
  `stok` int(11) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `id_user`, `nama`, `harga`, `berat`, `stok`, `deskripsi`, `created_at`, `updated_at`) VALUES
(15, 1, 'curyy 9', 994000, '23.11100', 30, 'AAA', '2021-10-29 09:55:45', '2021-11-21 16:16:44'),
(16, 1, 'curyy 8', 2000000, '22.34500', 10, 'aa', '2021-11-21 09:17:36', '2021-11-21 09:17:36'),
(17, 1, 'Steelseries Arctis 3 White 2019 Edition', 2000000, '6000.00000', 10, 'blalal', '2021-11-21 09:26:24', '2021-11-21 09:26:24'),
(18, 16, 'baju renang', 12, '12.00000', 10, 'baju renang', '2021-12-26 22:44:55', '2021-12-26 22:44:55');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `jenis_kelamin` int(1) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `nama`, `jenis_kelamin`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'kaloa meme', 'ariagames100@gmail.com', 'aria', 1, '$2y$10$nQ49ZcCNArFJ.YZDvAqPbeufxIBIjMKK68lccicLJNVYfdKv4C.Oe', NULL, '2021-10-21 09:43:44', '2021-11-21 15:46:25'),
(16, 'oka', 'jalal@gmail.com', 'jalal', 1, '$2y$10$nQ49ZcCNArFJ.YZDvAqPbeufxIBIjMKK68lccicLJNVYfdKv4C.Oe', NULL, '2021-10-21 09:43:44', '2021-11-21 15:46:25');

-- --------------------------------------------------------

--
-- Table structure for table `user_detail`
--

CREATE TABLE `user_detail` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `no_handphone` varchar(15) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_detail`
--

INSERT INTO `user_detail` (`id`, `id_user`, `no_handphone`, `created_at`, `updated_at`) VALUES
(1, 4, '089689203086', '2021-10-29 08:41:22', '2021-10-29 08:41:22'),
(2, 5, '089689203086', '2021-11-21 08:51:05', '2021-11-21 08:51:05'),
(3, 6, '089689203086', '2021-11-21 08:52:40', '2021-11-21 08:52:40'),
(4, 7, '089689203086', '2021-11-21 08:58:21', '2021-11-21 08:58:21'),
(5, 8, '089689203086', '2021-11-21 08:58:47', '2021-11-21 08:58:47'),
(6, 9, '089689203086', '2021-11-21 09:05:00', '2021-11-21 09:05:00'),
(7, 10, '089689203086', '2021-11-21 09:26:54', '2021-11-21 09:26:54'),
(8, 11, '089689203086', '2021-11-21 09:27:16', '2021-11-21 09:27:16'),
(9, 12, '089689203086', '2021-11-21 09:34:19', '2021-11-21 09:34:19'),
(10, 14, '08969998988', '2021-12-26 22:35:42', '2021-12-26 22:35:42'),
(11, 15, NULL, '2021-12-26 22:39:13', '2021-12-26 22:39:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_detail`
--
ALTER TABLE `user_detail`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user_detail`
--
ALTER TABLE `user_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
