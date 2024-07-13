-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 13, 2024 at 01:56 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ph34027_lab34_php3`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_07_13_005110_create_saches_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `saches`
--

CREATE TABLE `saches` (
  `id` int UNSIGNED NOT NULL,
  `ten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `anh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngayxuatban` date NOT NULL,
  `tacgia` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `soluong` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `saches`
--

INSERT INTO `saches` (`id`, `ten`, `anh`, `ngayxuatban`, `tacgia`, `soluong`, `created_at`, `updated_at`) VALUES
(1, 'Mr. Charlie Wolf', 'https://via.placeholder.com/640x480.png/00bbee?text=pariatur', '1996-03-07', 'Prof. Kenya VonRueden III', 433, '2024-07-12 18:21:43', '2024-07-12 18:21:43'),
(2, 'Gaston Gaylord', 'https://via.placeholder.com/640x480.png/004422?text=quidem', '1992-09-23', 'Devyn Mayer DVM', 995, '2024-07-12 18:21:43', '2024-07-12 18:21:43'),
(4, 'Skylar Crist PhD', 'https://via.placeholder.com/640x480.png/000022?text=itaque', '2001-03-06', 'Monique Hermiston', 235, '2024-07-12 18:21:43', '2024-07-12 18:21:43'),
(5, 'Mrs. Kimberly Bauch PhD', 'https://via.placeholder.com/640x480.png/009977?text=et', '1988-07-29', 'Cleve Flatley', 169, '2024-07-12 18:21:43', '2024-07-12 18:21:43'),
(6, 'Bell Raynor', 'https://via.placeholder.com/640x480.png/0066aa?text=omnis', '1988-10-22', 'Dr. Ryan Bergnaum PhD', 41, '2024-07-12 18:21:43', '2024-07-12 18:21:43'),
(7, 'Adrianna Sporer', 'https://via.placeholder.com/640x480.png/008844?text=doloremque', '2006-12-26', 'Roselyn Braun', 10, '2024-07-12 18:21:43', '2024-07-12 18:21:43'),
(8, 'Kaleigh Mosciski', 'https://via.placeholder.com/640x480.png/003333?text=quasi', '2012-11-26', 'Prof. Abby Zboncak IV', 1, '2024-07-12 18:21:43', '2024-07-12 18:21:43'),
(9, 'Teresa Mosciski', 'sach/P3JO3yfuYxhxJtUEa5k3lVhyYhNeZTHFw78wf753.jpg', '1988-06-29', 'Mr. Merl Witting Sr.', 836, '2024-07-12 18:21:43', '2024-07-12 18:55:20'),
(10, 'Prof. Abelardo Johnston', 'https://via.placeholder.com/640x480.png/0044bb?text=ab', '2004-05-25', 'Nicklaus Kuphal V', 382, '2024-07-12 18:21:43', '2024-07-12 18:21:43'),
(11, 'Gene O\'Connell', 'https://via.placeholder.com/640x480.png/00ee99?text=libero', '1975-10-05', 'Mrs. Antonina Halvorson', 965, '2024-07-12 18:21:43', '2024-07-12 18:21:43'),
(12, 'Frederick O\'Kon', 'https://via.placeholder.com/640x480.png/009977?text=est', '2017-10-28', 'Jovan Gutkowski', 573, '2024-07-12 18:21:43', '2024-07-12 18:21:43'),
(14, 'Rhianna Goodwin', 'https://via.placeholder.com/640x480.png/005544?text=delectus', '2014-10-17', 'Mr. Gunnar Wunsch MD', 679, '2024-07-12 18:21:43', '2024-07-12 18:21:43'),
(15, 'Arnold Harber', 'https://via.placeholder.com/640x480.png/007777?text=inventore', '1985-10-24', 'Norberto Spencer MD', 192, '2024-07-12 18:21:43', '2024-07-12 18:21:43'),
(16, 'Sean Macejkovic Jr.', 'https://via.placeholder.com/640x480.png/008866?text=beatae', '1989-05-13', 'Jayson Carter', 757, '2024-07-12 18:21:43', '2024-07-12 18:21:43'),
(17, 'Dr. Orin Lakin', 'https://via.placeholder.com/640x480.png/009944?text=dolores', '2022-07-26', 'Sidney Crist', 139, '2024-07-12 18:21:43', '2024-07-12 18:21:43'),
(18, 'Lucie Ullrich', 'https://via.placeholder.com/640x480.png/0044bb?text=iure', '2007-08-29', 'Prof. Cora Ziemann', 647, '2024-07-12 18:21:43', '2024-07-12 18:21:43'),
(19, 'Bella Marks', 'https://via.placeholder.com/640x480.png/001122?text=delectus', '1987-02-18', 'Maximillia Schimmel', 630, '2024-07-12 18:21:43', '2024-07-12 18:21:43'),
(20, 'Miss Oleta Boyle', 'https://via.placeholder.com/640x480.png/000011?text=in', '1973-12-22', 'Prof. Gunner Anderson', 264, '2024-07-12 18:21:43', '2024-07-12 18:21:43');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `saches`
--
ALTER TABLE `saches`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `saches`
--
ALTER TABLE `saches`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
