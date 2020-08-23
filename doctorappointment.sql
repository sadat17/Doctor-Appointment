-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 25, 2020 at 12:52 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doctorappointment`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `job_title`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Yeasir', 'yeasir@gmail.com', '', '$2y$10$SWKRqA5xwPwCz8Py.kgMTulJyCNeLoS9zEk6hyM35HE5o4ulgMkdK', '2019-01-19 19:02:00', '2019-01-19 19:02:00');

-- --------------------------------------------------------

--
-- Table structure for table `confirm_requests`
--

CREATE TABLE `confirm_requests` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timeslot` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `department` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `department`, `created_at`, `updated_at`) VALUES
(1, 'Medicine', '2020-07-24 23:33:52', '2020-07-24 23:33:52'),
(2, 'ENT', '2020-07-24 23:34:25', '2020-07-24 23:34:25'),
(3, 'Cardiology', '2020-07-24 23:34:34', '2020-07-24 23:34:34'),
(4, 'Gynae', '2020-07-24 23:34:42', '2020-07-24 23:34:42'),
(5, 'Skin', '2020-07-24 23:34:49', '2020-07-24 23:34:49'),
(6, 'Urology', '2020-07-24 23:34:59', '2020-07-24 23:34:59'),
(7, 'Orthopaedics', '2020-07-24 23:35:07', '2020-07-24 23:35:07'),
(8, 'Eye', '2020-07-24 23:35:16', '2020-07-24 23:35:16');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_infos`
--

CREATE TABLE `doctor_infos` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `education` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weekday` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timeslot` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fee` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '500',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctor_infos`
--

INSERT INTO `doctor_infos` (`id`, `email`, `name`, `department`, `education`, `weekday`, `timeslot`, `fee`, `created_at`, `updated_at`) VALUES
(1, 'yeasir1@gmail.com', 'doctor1', 'Medicine', 'MBBS', 'Sunday, Monday, Tuesday, Wednesday, Thursday', '10AM - 1PM', '500', '2020-07-25 00:21:07', '2020-07-25 00:21:07'),
(2, 'doctor2@gmail.com', 'doctor2', 'Medicine', 'MBBS', 'Sunday, Monday, Tuesday, Wednesday, Thursday', '10AM - 1PM', '300', '2020-07-25 00:21:32', '2020-07-25 00:21:32'),
(3, 'doctor3@gmail.com', 'doctor3', 'ENT', 'MBBS', 'Sunday, Monday, Tuesday, Wednesday, Thursday', '10AM - 1PM', '500', '2020-07-25 00:22:05', '2020-07-25 00:22:05'),
(4, 'doctor4@gmail.com', 'doctor4', 'Cardiology', 'MBBS', 'Sunday, Monday, Tuesday, Wednesday, Thursday', '10AM - 1PM', '500', '2020-07-25 00:22:28', '2020-07-25 00:22:28'),
(5, 'doctor5@gmail.com', 'doctor5', 'Gynae', 'MBBS', 'Sunday, Monday, Tuesday, Wednesday, Thursday', '10AM - 1PM', '500', '2020-07-25 00:22:52', '2020-07-25 00:22:52'),
(6, 'doctor6@gmail.com', 'doctor6', 'Skin', 'MBBS', 'Sunday, Monday, Tuesday, Wednesday, Thursday', '10AM - 1PM', '500', '2020-07-25 00:23:43', '2020-07-25 00:23:43'),
(7, 'doctor7@gmail.com', 'doctor7', 'Urology', 'MBBS', 'Sunday, Monday, Tuesday, Wednesday, Thursday', '10AM - 1PM', '500', '2020-07-25 00:24:04', '2020-07-25 00:24:04'),
(8, 'doctor8@gmail.com', 'doctor8', 'Orthopaedics', 'MBBS', 'Sunday, Monday, Tuesday, Wednesday, Thursday', '10AM - 1PM', '500', '2020-07-25 00:24:34', '2020-07-25 00:24:34'),
(9, 'doctor9@gmail.com', 'doctor9', 'Eye', 'MBBS', 'Sunday, Monday, Tuesday, Wednesday, Thursday', '10AM - 1PM', '500', '2020-07-25 00:25:01', '2020-07-25 00:25:01');

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_01_19_153553_create_admins_table', 1),
(4, '2020_07_25_045326_create_doctor_infos_table', 2),
(5, '2020_07_25_045359_create_user_requests_table', 2),
(6, '2020_07_25_045432_create_confirm_requests_table', 2),
(7, '2020_07_25_051027_create_departments_table', 3);

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
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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

INSERT INTO `users` (`id`, `role`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '1', 'yeasir', 'yeasir@gmail.com', NULL, '$2y$10$UruoOMXE236t29ONL6JEveezLpj5aaYOWJ89TVovQgJnVZBkwSqsa', 'mEmTRmpp5ArmGt0MSTBM4ONuXsRddjaUl6kieaL4JVgTAcb278ArLFiIY8eG', '2019-01-19 10:04:13', '2019-01-19 10:04:13'),
(2, '2', 'yeasir1', 'yeasir1@gmail.com', NULL, '$2y$10$Bjpa5P5tA7u24f9jQuEwi.LhO9Wx5zWopJXNinDZt1SVZg9tg.1FW', '1Y1Cqr7rybgqC5o8s6LnkbfXblFuKyuUoWkBjZJA93MyoeWcHaG0iYZ3RNIP', '2020-07-24 22:32:52', '2020-07-24 22:32:52');

-- --------------------------------------------------------

--
-- Table structure for table `user_requests`
--

CREATE TABLE `user_requests` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timeslot` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `confirm_requests`
--
ALTER TABLE `confirm_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `departments_department_unique` (`department`);

--
-- Indexes for table `doctor_infos`
--
ALTER TABLE `doctor_infos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `doctor_infos_email_unique` (`email`);

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
-- Indexes for table `user_requests`
--
ALTER TABLE `user_requests`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `confirm_requests`
--
ALTER TABLE `confirm_requests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `doctor_infos`
--
ALTER TABLE `doctor_infos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_requests`
--
ALTER TABLE `user_requests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
