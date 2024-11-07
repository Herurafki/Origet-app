-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2024 at 06:51 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `origet_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `no_hp` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id`, `username`, `no_hp`, `password`) VALUES
(5, 'herurafki11@gmail.com', '082174841013', 'herurafki.1'),
(7, 'ramyon2019@gamil.com', '08345678987', 'hareshida121'),
(10, 'mama@gmail.com', '08542934802', 'blakcpinkhylt'),
(11, '', '', ''),
(12, 'admin@gmail.com', '08281797392', '123456'),
(13, 'heruadmin@gmail.com', '08367238634', 'qwerty');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id_product` bigint(20) UNSIGNED NOT NULL,
  `id_category` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `harga` int(11) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `toko` varchar(50) DEFAULT NULL,
  `rating` float NOT NULL,
  `terjual` int(11) NOT NULL,
  `image_default` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id_product`, `id_category`, `nama`, `harga`, `deskripsi`, `toko`, `rating`, `terjual`, `image_default`, `created_at`, `updated_at`) VALUES
(0, 1, 'REDMI 9C (3GB+32GB) - GARANSI RESMI', 1500000, 'NETWORK Technology\r\n\r\nGSM / HSPA / LTE / 5G', '0', 3.5, 17, 'xiaomi_xiaomi_redmi_9c_smartphone_-3gb-_32gb.webp', NULL, NULL),
(1, 1, 'REDMI 9C (3GB+32GB)', 1500000, 'NETWORK Technology\r\n\r\nGSM / HSPA / LTE / 5G', 'Mekar Jaya', 4.5, 17, 'xiaomi_xiaomi_redmi_9c_smartphone_-3gb-_32gb.webp', NULL, NULL),
(2, 1, 'Samsung Galaxy A03s Ram', 1524000, 'NETWORK Technology\r\n\r\nGSM / HSPA / LTE / 5G', 'Mekar Jaya', 4, 10, 'samsung_samsung_galaxy_a33_5g_-_8gb-128gb.webp', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products_categories`
--

CREATE TABLE `products_categories` (
  `id_category` bigint(20) UNSIGNED NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `gambar` varchar(200) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_categories`
--

INSERT INTO `products_categories` (`id_category`, `nama_kategori`, `gambar`, `created_at`, `updated_at`) VALUES
(1, 'phone', NULL, NULL, NULL),
(2, 'watch', NULL, NULL, NULL),
(3, 'tablet', NULL, NULL, NULL),
(4, 'accsesoris', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `image`, `deskripsi`, `created_at`, `updated_at`) VALUES
(4, 'Sliders/slider_1.jpg', 'Promosi Produk', NULL, NULL),
(5, 'Sliders/slider_2.jpg', 'Promosi Produk', NULL, NULL),
(6, 'Sliders/slider_3.jpg', 'Promosi Produk', NULL, NULL),
(7, 'Sliders/slider_4.jpg', 'Promosi Produk', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `level` enum('admin','seller') NOT NULL,
  `gender` enum('pria','wanita') NOT NULL,
  `province_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `address` text NOT NULL,
  `phone` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `name`, `email`, `email_verified_at`, `password`, `level`, `gender`, `province_id`, `city_id`, `address`, `phone`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admnistrator', 'rn.putra@gmail.com', '2022-06-18 03:44:49', '123456', 'admin', 'pria', 0, 0, 'Padang', '', NULL, NULL, NULL, NULL),
(3, 'Grosir Murah Acc', 'seller1@gmail.com', '2022-06-18 03:44:49', '123456', 'seller', 'pria', 6, 151, 'Padang', '', NULL, NULL, NULL, NULL),
(4, 'Empo Indonesia', 'seller2@gmail.com', '2022-06-18 03:44:49', '123456', 'seller', 'pria', 6, 152, 'Padang', '', NULL, NULL, NULL, NULL),
(5, 'indokuwtc', 'seller3@gmail.com', '2022-06-18 03:44:49', '123456', 'seller', 'pria', 6, 153, 'Padang', '', NULL, NULL, NULL, NULL),
(6, 'Sentral Ponsel Jakarta', 'seller4@gmail.com', '2022-06-18 03:44:49', '123456', 'seller', 'pria', 6, 154, 'Padang', '', NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id_product`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
