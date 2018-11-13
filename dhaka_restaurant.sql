-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2018 at 07:28 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dhaka`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Rina', 'rina@gmail.com', NULL, '$2y$10$IfX4unVO4mcs7XExF0XRr.j/YW/q72g.v2nxwLEO0KJzBLYg4mnQe', NULL, '2018-11-08 12:24:28', '2018-11-08 12:24:28'),
(2, 'Noushin', 'noushin123@gmail.com', NULL, '$2y$10$Cfdf2Gbxc/fEocthgtMqxuSDjGVoYgKvVrhkoNgyzoUEWStsozVMa', NULL, '2018-11-08 12:36:58', '2018-11-08 12:36:58'),
(3, 'Md Nur Nabi', 'nurcse926e@gmail.com', NULL, '$2y$10$4aqPx.xfO4mLqxCGpsaQi.UdQl1/7azSoSSl9NISoIOpvO.Nz8oie', NULL, '2018-11-08 23:46:16', '2018-11-08 23:46:16'),
(4, 'Rakhi', 'rakhi1@gmail.com', NULL, 'ed1e56ef963bb91c45a14a50c2f3cd95', NULL, NULL, NULL),
(5, 'Anindya Nur', 'nur1@gmail.com', NULL, '$2y$10$Yy32mON17KDQRNYDp3J3J.D2yG9DYjBo8bMDT3Z1qI2r7vBhOuZR.', NULL, '2018-11-09 10:35:49', '2018-11-09 10:35:49'),
(6, 'Rakib', 'rakib@gmail.com', NULL, '$2y$10$ae08ovDfgWisP.4Xhr184.kHDQUnYs6GoKEyqKIIu1.Sni6mfVZrq', NULL, '2018-11-09 10:39:37', '2018-11-09 10:39:37'),
(7, 'Md Nur Nabi', 'nurcse926@gmail.com', NULL, '$2y$10$y/iKGc/dljKDdB2WpY5CquN6DTmAiubKYR7axsTzzGHdkG1eIsjpW', NULL, '2018-11-09 23:07:23', '2018-11-09 23:07:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
