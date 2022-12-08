-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 26, 2022 at 09:18 AM
-- Server version: 10.5.17-MariaDB-cll-lve
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u1272680_pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `account_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `initial_balance` double DEFAULT NULL,
  `total_balance` double NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `account_no`, `name`, `initial_balance`, `total_balance`, `note`, `is_default`, `is_active`, `created_at`, `updated_at`) VALUES
(1, '11111', 'Sales Account', 1000, 1000, 'this is first account', 0, 1, '2018-12-18 01:58:02', '2022-10-12 05:40:08'),
(3, '21211', 'Sa', 0, 0, '', 1, 1, '2018-12-18 01:58:56', '2022-10-12 05:40:08');

-- --------------------------------------------------------

--
-- Table structure for table `adjustments`
--

CREATE TABLE `adjustments` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_qty` double NOT NULL,
  `item` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `employee_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `checkin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checkout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendances`
--

INSERT INTO `attendances` (`id`, `date`, `employee_id`, `user_id`, `checkin`, `checkout`, `status`, `note`, `created_at`, `updated_at`) VALUES
(1, '2019-01-02', 1, 1, '10:00am', '6:30pm', 1, '', '2019-01-02 02:30:50', '2019-01-02 02:30:50'),
(3, '2019-01-02', 3, 1, '10:15am', '6:30pm', 0, '', '2019-01-02 02:57:12', '2019-01-02 02:57:12'),
(6, '2020-02-03', 1, 1, '11:30am', '6:00pm', 0, '', '2020-02-03 08:57:30', '2020-02-03 08:57:30');

-- --------------------------------------------------------

--
-- Table structure for table `billers`
--

CREATE TABLE `billers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vat_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `billers`
--

INSERT INTO `billers` (`id`, `name`, `image`, `company_name`, `vat_number`, `email`, `phone_number`, `address`, `city`, `state`, `postal_code`, `country`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'yousuf', 'aks.jpg', 'Nama Tokonya', '31123', 'yousuf@kds.com', '442343324', 'halishahar', 'chittagong', '', '', 'sdgs', 1, '2018-05-12 20:49:30', '2019-03-02 04:20:38'),
(2, 'tariq', '', 'Nama Tokonya', '', 'tariq@bigtree.com', '321312', 'khulshi', 'chittagong', '', '', '', 1, '2018-05-12 20:57:54', '2018-06-14 23:07:11'),
(3, 'test', '', 'Nama Tokonya', '', 'test@test.com', '3211', 'erewrwqre', 'afsf', '', '', '', 0, '2018-05-30 01:38:58', '2018-05-30 01:39:57'),
(5, 'modon', 'mogaTel.jpg', 'Nama Tokonya', '', 'modon@gmail.com', '32321', 'nasirabad', 'chittagong', '', '', 'bd', 1, '2018-09-01 02:59:54', '2018-10-07 01:35:51'),
(6, 'a', '', 'Nama Tokonya', '', 'a@a.com', 'q', 'q', 'q', '', '', '', 0, '2018-10-07 01:33:39', '2018-10-07 01:34:18'),
(7, 'a', '', 'Nama Tokonya', '', 'a@a.com', 'a', 'a', 'a', '', '', '', 0, '2018-10-07 01:34:36', '2018-10-07 01:36:07'),
(8, 'x', 'x.png', 'Nama Tokonya', '', 'x@x.com', 'x', 'x', 'x', '', '', '', 1, '2019-03-18 10:02:42', '2019-12-21 10:01:24');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `title`, `image`, `is_active`, `created_at`, `updated_at`) VALUES
(3, 'HP', 'HP.jpg', 1, '2018-05-12 08:06:14', '2019-03-02 04:32:21'),
(4, 'samsung', 'samsung.jpg', 1, '2018-05-12 08:08:41', '2018-07-04 02:38:37'),
(5, 'Apple', 'Apple.jpg', 1, '2018-08-31 22:34:49', '2018-12-06 02:05:38'),
(6, 'jjjj', '20201019093419.jpg', 0, '2020-10-19 14:33:52', '2020-10-19 14:35:58'),
(7, 'Lotto', '', 1, '2020-11-16 03:13:41', '2020-11-16 03:13:41');

-- --------------------------------------------------------

--
-- Table structure for table `cash_registers`
--

CREATE TABLE `cash_registers` (
  `id` int(10) UNSIGNED NOT NULL,
  `cash_in_hand` double NOT NULL,
  `user_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cash_registers`
--

INSERT INTO `cash_registers` (`id`, `cash_in_hand`, `user_id`, `warehouse_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 100, 9, 1, 0, '2020-10-13 06:32:54', '2020-10-23 23:27:42'),
(2, 50, 9, 1, 1, '2020-10-13 14:25:26', '2020-10-13 14:25:26'),
(3, 200, 1, 1, 0, '2020-10-22 06:53:07', '2021-06-19 03:52:48'),
(4, 100, 1, 2, 1, '2020-10-24 00:04:39', '2020-10-24 00:04:39'),
(5, 1000, 1, 1, 1, '2021-06-19 03:53:22', '2021-06-19 03:53:22'),
(6, 50000, 1, 7, 1, '2022-10-09 16:34:22', '2022-10-09 16:34:22');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `parent_id`, `is_active`, `created_at`, `updated_at`) VALUES
(22, 'Aksesoris Komputer', NULL, NULL, 1, '2022-03-23 21:39:38', '2022-03-23 21:39:38'),
(23, 'Komputer', NULL, NULL, 1, '2022-03-23 21:39:49', '2022-03-23 21:39:49'),
(24, 'Test', NULL, NULL, 1, '2022-05-18 00:45:27', '2022-05-18 00:45:27');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `minimum_amount` double DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `used` int(11) NOT NULL,
  `expired_date` date NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `amount`, `minimum_amount`, `quantity`, `used`, `expired_date`, `user_id`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'sonar bangla', 'percentage', 20, 0, 100, 4, '2020-11-19', 1, 1, '2018-10-25 21:38:50', '2020-11-17 23:52:39'),
(2, 'i love bangladesh', 'fixed', 200, 1000, 50, 1, '2018-12-31', 1, 1, '2018-10-27 01:59:26', '2019-03-02 04:46:48'),
(3, 'DISKON50', 'percentage', 50, NULL, 100, 0, '2022-10-31', 1, 1, '2022-10-11 04:30:58', '2022-10-11 04:30:58'),
(4, 'promo70', 'percentage', 70, NULL, 10, 0, '2022-10-15', 1, 1, '2022-10-11 04:32:38', '2022-10-11 04:32:38');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange_rate` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `code`, `exchange_rate`, `created_at`, `updated_at`) VALUES
(1, 'Rupiah', 'Rp', 2, '2022-03-23 19:33:42', '2022-03-23 22:58:40'),
(2, 'Euro', 'Euro', 0.85, '2020-11-01 00:29:12', '2020-11-10 22:15:34');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `points` double DEFAULT NULL,
  `deposit` double DEFAULT NULL,
  `expense` double DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `customer_group_id`, `user_id`, `name`, `company_name`, `email`, `phone_number`, `tax_no`, `address`, `city`, `state`, `postal_code`, `country`, `points`, `deposit`, `expense`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 22, 'dhiman', 'lioncoders', 'dhiman@gmail.com', '+8801111111101', '', 'kajir deuri', 'chittagong', '', '', 'bd', 127, 190, 20, 1, '2018-05-12 09:00:48', '2022-03-21 04:57:31'),
(2, 2, 0, 'moinul', 'lioncoders', '', '+8801200000001', '', 'jamalkhan', 'chittagong', '', '', 'bd', 0, 100, 20, 1, '2018-05-12 09:04:51', '2019-02-22 04:38:08'),
(3, 3, 0, 'tariq', 'big tree', '', '3424', '', 'khulshi', 'chittagong', '', '', 'bd', 1960, 0, 0, 1, '2018-05-12 09:07:52', '2022-05-23 07:41:17'),
(4, 1, 0, 'test', '', '', '4234', '', 'frwerw', 'qwerwqr', '', '', '', 0, 0, 0, 0, '2018-05-30 00:35:28', '2018-05-30 00:37:38'),
(8, 1, 0, 'anwar', 'smart it', 'anwar@smartit.com', '32321', '', 'nasirabad', 'chittagong', '', '', 'bd', 0, 0, 0, 0, '2018-09-01 02:26:13', '2018-09-01 02:29:55'),
(11, 1, 0, 'walk-in-customer', NULL, NULL, '0', '11111', 'mohammadpur', 'dhaka', NULL, NULL, NULL, 80622, 0, 0, 1, '2018-09-02 00:30:54', '2022-10-12 21:21:50'),
(15, 1, 0, 's', '', '', '2', '', 's', '3e', '', '', '', 0, 0, 0, 0, '2018-11-05 03:00:39', '2018-11-08 02:37:08'),
(16, 1, 0, 'asas', '', '', '2121', '', 'dasd', 'asdd', '', '', '', 0, 0, 0, 0, '2018-11-30 23:07:53', '2018-12-03 20:55:46'),
(17, 1, 0, 'sadman', '', '', '312312', '', 'khulshi', 'ctg', '', '', '', 0, 0, 0, 0, '2020-06-22 08:45:35', '2020-06-22 08:45:51'),
(19, 1, 19, 'Ashfaq', 'Digital image', 'shakalaka@gmail.com', '1212', '999', 'Andorkillah', 'Chittagong', 'Chittagong', '1234', 'Bangladesh', 6, 0, 0, 1, '2020-11-08 23:07:16', '2021-10-14 08:58:20'),
(21, 1, 21, 'Modon Miya', 'modon company', 'modon@gmail.com', '2222', '', 'kuril road', 'Dhaka', '', '', '', 0, 0, 0, 1, '2020-11-13 06:12:11', '2020-11-13 06:12:11'),
(25, 1, 28, 'Imran miya', '', 'imran@gmail.com', '01923000001', '', 'kljkj', 'hhjhh', '', '', '', 0, 0, 0, 0, '2021-02-04 05:26:47', '2021-02-04 05:26:47'),
(26, 3, NULL, 'Customer A', '-', 'qazx@mail.com', '29031847', NULL, 'Jalan A', 'Kota A', 'A', '11111', 'B', NULL, NULL, NULL, 1, '2022-05-18 01:09:23', '2022-05-18 01:09:23'),
(27, 1, NULL, 'Customer A', 'cust', 'cust12@mail.com', '1234', NULL, 'asdf', 'Jaksel', 'asd', NULL, 'ID', NULL, NULL, NULL, 1, '2022-05-18 01:18:18', '2022-05-18 01:18:18');

-- --------------------------------------------------------

--
-- Table structure for table `customer_groups`
--

CREATE TABLE `customer_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `percentage` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_groups`
--

INSERT INTO `customer_groups` (`id`, `name`, `percentage`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'general', '0', 1, '2018-05-12 07:09:36', '2019-03-02 05:01:35'),
(2, 'distributor', '-10', 1, '2018-05-12 07:12:14', '2019-03-02 05:02:12'),
(3, 'reseller', '5', 1, '2018-05-12 07:12:26', '2018-05-30 00:18:14'),
(4, 'test', '12', 0, '2018-05-30 00:17:16', '2018-05-30 00:17:57'),
(5, 'test', '0', 0, '2018-08-03 08:10:27', '2018-08-03 08:10:34');

-- --------------------------------------------------------

--
-- Table structure for table `deliveries`
--

CREATE TABLE `deliveries` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sale_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivered_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recieved_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deliveries`
--

INSERT INTO `deliveries` (`id`, `reference_no`, `sale_id`, `user_id`, `address`, `delivered_by`, `recieved_by`, `file`, `note`, `status`, `created_at`, `updated_at`) VALUES
(1, 'dr-20180808-044431', 1, 1, 'kajir deuri chittagong bd', 'abul', 'dhiman', '', 'Instrument 1', '3', '2018-08-08 09:44:55', '2020-09-26 11:25:39'),
(2, 'dr-20181106-105936', 88, 1, 'mohammadpur dhaka', '', '', '', '', '2', '2018-11-06 03:59:43', '2018-11-06 04:10:38'),
(3, 'dr-20181106-111321', 79, 1, 'mohammadpur dhaka', 'Harun', 'Amjad', '', '', '3', '2018-11-06 04:13:25', '2020-09-26 12:22:11'),
(5, 'dr-20220807-053935', 372, 1, 'mohammadpur dhaka', NULL, NULL, NULL, NULL, '1', '2022-08-06 22:40:02', '2022-08-06 22:40:02');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Sale', 1, '2018-12-27 04:16:47', '2018-12-27 09:40:23'),
(2, 'xyz', 1, '2018-12-27 09:28:47', '2018-12-27 09:28:47');

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` int(10) UNSIGNED NOT NULL,
  `amount` double NOT NULL,
  `customer_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deposits`
--

INSERT INTO `deposits` (`id`, `amount`, `customer_id`, `user_id`, `note`, `created_at`, `updated_at`) VALUES
(1, 90, 1, 1, 'first deposit', '2018-08-25 21:48:23', '2018-08-26 00:18:55'),
(3, 100, 2, 1, '', '2018-08-25 23:53:16', '2018-08-26 20:42:39'),
(4, 50, 1, 1, '', '2018-09-04 21:56:19', '2018-09-04 21:56:19'),
(5, 50, 1, 1, '', '2018-09-09 23:08:40', '2018-09-09 23:08:40');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `email`, `phone_number`, `department_id`, `user_id`, `image`, `address`, `city`, `country`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'john', 'john@gmail.com', '10001', 2, 12, 'johngmailcom.jpg', 'GEC', 'chittagong', 'Bangladesh', 1, '2018-12-29 23:48:37', '2019-03-02 05:50:23'),
(3, 'tests', 'test@test.com', '111', 1, 0, '', '', '', '', 0, '2018-12-30 21:20:51', '2022-07-13 05:52:22'),
(6, 'test', '1232@qwe', '123123', 1, 35, NULL, NULL, NULL, NULL, 0, '2022-07-13 05:51:56', '2022-07-13 05:52:12');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expense_category_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cash_register_id` int(11) DEFAULT NULL,
  `amount` double NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `reference_no`, `expense_category_id`, `warehouse_id`, `account_id`, `user_id`, `cash_register_id`, `amount`, `note`, `created_at`, `updated_at`) VALUES
(2, 'er-20180817-012254', 1, 2, 1, 1, 0, 150, 'first expense...', '2018-08-17 06:22:54', '2018-08-17 06:44:13'),
(3, 'er-20180817-014241', 1, 1, 1, 1, 0, 125, 'second expense...', '2018-08-17 06:42:41', '2018-08-17 06:43:50'),
(4, 'er-20181022-043609', 2, 1, 1, 1, 0, 1000, '', '2018-10-22 09:36:09', '2018-10-22 09:36:09'),
(5, 'er-20181101-050207', 2, 2, 1, 1, 0, 1000, '', '2018-10-31 22:02:07', '2018-10-31 22:02:07'),
(6, 'er-20181101-050231', 2, 1, 1, 1, 0, 550, '', '2018-10-31 22:02:31', '2018-10-31 22:02:31'),
(7, 'er-20181105-091913', 1, 1, 1, 1, 0, 2000, '', '2018-11-05 02:19:13', '2018-11-05 02:19:13'),
(8, 'er-20181105-091929', 2, 2, 1, 1, 0, 1000, '', '2018-11-05 02:19:29', '2018-11-05 02:19:29'),
(9, 'er-20190101-063342', 2, 1, 1, 1, 0, 100, '', '2018-12-31 23:33:42', '2018-12-31 23:33:42'),
(10, 'er-20190103-070018', 2, 2, 1, 9, 0, 2000, '', '2019-01-03 00:00:18', '2019-01-03 00:00:18'),
(11, 'er-20190209-104656', 2, 2, 1, 1, 0, 500, '', '2019-02-09 03:46:56', '2019-02-09 03:46:56'),
(12, 'er-20190209-104716', 2, 1, 1, 1, 0, 400, '', '2019-02-09 03:47:16', '2019-02-09 03:47:16'),
(14, 'er-20190303-104142', 2, 2, 1, 1, 0, 250, 'jjj', '2019-03-03 03:41:42', '2019-03-20 08:17:16'),
(15, 'er-20190404-095645', 2, 1, 1, 1, 0, 200, '', '2019-04-04 02:56:45', '2019-04-04 02:56:45'),
(16, 'er-20190528-103306', 2, 1, 1, 1, 0, 560, '', '2019-05-28 03:33:06', '2019-05-28 03:33:06'),
(17, 'er-20190528-103325', 2, 2, 1, 1, 0, 600, '', '2019-05-28 03:33:25', '2019-05-28 03:33:25'),
(19, 'er-20190613-101955', 2, 2, 1, 1, 0, 800, '', '2019-06-13 03:19:55', '2019-06-13 03:19:55'),
(20, 'er-20191019-033149', 2, 1, 1, 1, 0, 300, '', '2019-10-19 08:31:49', '2019-10-19 08:31:49'),
(21, 'er-20191222-023508', 2, 1, 1, 1, 0, 550, '', '2019-12-22 07:35:08', '2019-12-22 07:35:08'),
(22, 'er-20200101-022304', 2, 2, 1, 1, 0, 500, '', '2020-01-01 07:23:04', '2020-01-01 07:23:04'),
(23, 'er-20200204-105938', 1, 1, 1, 1, 0, 400, '', '2020-02-04 15:59:38', '2020-02-04 15:59:38'),
(24, 'er-20200204-105957', 1, 2, 1, 1, 0, 350, '', '2020-02-04 15:59:57', '2020-02-04 15:59:57'),
(25, 'er-20200406-075239', 2, 2, 1, 1, 0, 750, '', '2020-04-06 12:52:39', '2020-04-06 12:52:39'),
(26, 'er-20200506-110112', 2, 2, 1, 1, 0, 1260, '', '2020-05-06 16:01:12', '2020-05-06 16:01:12'),
(27, 'er-20200609-124344', 2, 1, 1, 1, 0, 500, '', '2020-06-09 05:43:44', '2020-06-09 05:43:44'),
(28, 'er-20200609-124406', 2, 2, 1, 1, 0, 1000, '', '2020-06-09 05:44:06', '2020-06-09 05:44:06'),
(29, 'er-20200703-064005', 2, 2, 1, 1, 0, 630, '', '2020-07-03 11:40:05', '2020-07-03 11:40:05'),
(30, 'er-20200812-062947', 1, 2, 1, 1, 0, 320, '', '2020-08-12 11:29:47', '2020-08-12 11:29:47'),
(31, 'er-20200812-063010', 2, 2, 1, 1, 0, 730, '', '2020-08-12 11:30:10', '2020-08-12 11:30:10'),
(32, 'er-20201018-124438', 2, 1, 1, 9, 2, 100, '', '2020-10-18 05:44:38', '2020-10-18 05:44:38'),
(33, 'er-20201101-072257', 1, 2, 1, 1, 4, 50, '', '2020-11-01 00:22:57', '2020-11-01 00:22:57'),
(34, 'er-20201118-062500', 4, 1, 1, 1, 3, 200, '', '2020-11-17 23:25:00', '2020-11-17 23:25:00'),
(37, 'er-20210114-065938', 2, 2, 1, 1, 4, 25.5, '', '2021-01-13 23:59:38', '2021-01-13 23:59:38'),
(38, 'er-20210601-075909', 2, 1, 1, 1, 3, 100, '', '2021-06-01 12:59:09', '2021-06-01 12:59:09');

-- --------------------------------------------------------

--
-- Table structure for table `expense_categories`
--

CREATE TABLE `expense_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expense_categories`
--

INSERT INTO `expense_categories` (`id`, `code`, `name`, `is_active`, `created_at`, `updated_at`) VALUES
(1, '16718342', 'washing', 1, '2018-08-15 23:32:48', '2019-03-02 06:02:07'),
(2, '60128975', 'electric bill', 1, '2018-08-15 23:39:18', '2018-08-15 23:39:18'),
(3, '83954970', 'test', 0, '2018-08-15 23:50:28', '2018-08-15 23:51:40'),
(4, '1234', 'snacks', 1, '2018-09-01 01:40:04', '2018-09-01 01:40:04');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `site_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_rtl` tinyint(1) DEFAULT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `staff_access` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_format` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `developed_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_format` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `theme` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `currency_position` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `site_title`, `site_logo`, `is_rtl`, `currency`, `staff_access`, `date_format`, `developed_by`, `invoice_format`, `state`, `theme`, `created_at`, `updated_at`, `currency_position`) VALUES
(1, 'POSku', '20220324041756.jpeg', 0, '1', 'all', 'd-m-Y', 'Anonymous', 'standard', 1, 'default.css', '2018-07-06 05:13:11', '2022-10-11 02:11:12', 'prefix');

-- --------------------------------------------------------

--
-- Table structure for table `gift_cards`
--

CREATE TABLE `gift_cards` (
  `id` int(10) UNSIGNED NOT NULL,
  `card_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `expense` double NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `expired_date` date DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gift_cards`
--

INSERT INTO `gift_cards` (`id`, `card_no`, `amount`, `expense`, `customer_id`, `user_id`, `expired_date`, `created_by`, `is_active`, `created_at`, `updated_at`) VALUES
(1, '3571097513020486', 1400, 450, 1, 0, '2020-12-31', 1, 1, '2018-08-18 00:57:40', '2020-10-18 04:14:26'),
(2, '0452297501931931', 500, 100, 2, 0, '2021-12-31', 1, 1, '2018-08-18 01:46:43', '2021-02-11 06:36:01'),
(3, '123', 13123, 0, 1, 0, '2018-08-19', 1, 0, '2018-08-18 21:38:21', '2018-08-18 21:38:28'),
(4, '1862381252690499', 100, 0, 0, 1, '2018-10-04', 1, 0, '2018-09-29 23:16:28', '2018-09-29 23:17:21'),
(5, '2300813717254199', 143, 0, 0, 1, '2018-10-04', 1, 0, '2018-09-29 23:18:49', '2018-09-29 23:20:20'),
(6, '8327019475026421', 1, 0, 1, 0, '2018-10-07', 1, 0, '2018-10-07 02:12:41', '2018-10-07 02:12:55'),
(7, '2063379780590151', 1, 0, 1, 0, '2018-10-23', 1, 0, '2018-10-22 23:23:22', '2018-10-22 23:23:39');

-- --------------------------------------------------------

--
-- Table structure for table `gift_card_recharges`
--

CREATE TABLE `gift_card_recharges` (
  `id` int(10) UNSIGNED NOT NULL,
  `gift_card_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gift_card_recharges`
--

INSERT INTO `gift_card_recharges` (`id`, `gift_card_id`, `amount`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 2, 100, 1, '2018-08-24 22:08:29', '2018-08-24 22:08:29'),
(2, 1, 200, 1, '2018-08-24 22:08:50', '2018-08-24 22:08:50'),
(3, 1, 100, 1, '2018-09-04 22:50:41', '2018-09-04 22:50:41'),
(4, 1, 50, 1, '2018-09-04 22:51:38', '2018-09-04 22:51:38'),
(5, 1, 50, 1, '2018-09-04 22:53:36', '2018-09-04 22:53:36'),
(6, 2, 50, 1, '2018-09-04 22:54:34', '2018-09-04 22:54:34'),
(7, 5, 10, 1, '2018-09-29 23:19:48', '2018-09-29 23:19:48'),
(8, 5, 10, 1, '2018-09-29 23:20:04', '2018-09-29 23:20:04'),
(9, 2, 100, 1, '2018-10-07 02:13:05', '2018-10-07 02:13:05'),
(10, 1, 200, 1, '2018-10-07 02:13:39', '2018-10-07 02:13:39'),
(11, 1, 300, 1, '2018-10-22 23:22:49', '2018-10-22 23:22:49'),
(12, 2, 130, 1, '2021-02-11 06:36:01', '2021-02-11 06:36:01');

-- --------------------------------------------------------

--
-- Table structure for table `holidays`
--

CREATE TABLE `holidays` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_approved` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hrm_settings`
--

CREATE TABLE `hrm_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `checkin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checkout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hrm_settings`
--

INSERT INTO `hrm_settings` (`id`, `checkin`, `checkout`, `created_at`, `updated_at`) VALUES
(1, '10:00am', '6:00pm', '2019-01-02 01:20:08', '2019-01-02 03:20:53');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `code`, `created_at`, `updated_at`) VALUES
(1, 'id', '2018-07-07 21:59:17', '2019-12-24 16:34:20');

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
(3, '2018_02_17_060412_create_categories_table', 1),
(4, '2018_02_20_035727_create_brands_table', 1),
(5, '2018_02_25_100635_create_suppliers_table', 1),
(6, '2018_02_27_101619_create_warehouse_table', 1),
(7, '2018_03_03_040448_create_units_table', 1),
(8, '2018_03_04_041317_create_taxes_table', 1),
(9, '2018_03_10_061915_create_customer_groups_table', 1),
(10, '2018_03_10_090534_create_customers_table', 1),
(11, '2018_03_11_095547_create_billers_table', 1),
(12, '2018_04_05_054401_create_products_table', 1),
(13, '2018_04_06_133606_create_purchases_table', 1),
(14, '2018_04_06_154600_create_product_purchases_table', 1),
(15, '2018_04_06_154915_create_product_warhouse_table', 1),
(16, '2018_04_10_085927_create_sales_table', 1),
(17, '2018_04_10_090133_create_product_sales_table', 1),
(18, '2018_04_10_090254_create_payments_table', 1),
(19, '2018_04_10_090341_create_payment_with_cheque_table', 1),
(20, '2018_04_10_090509_create_payment_with_credit_card_table', 1),
(21, '2018_04_13_121436_create_quotation_table', 1),
(22, '2018_04_13_122324_create_product_quotation_table', 1),
(23, '2018_04_14_121802_create_transfers_table', 1),
(24, '2018_04_14_121913_create_product_transfer_table', 1),
(25, '2018_05_13_082847_add_payment_id_and_change_sale_id_to_payments_table', 2),
(26, '2018_05_13_090906_change_customer_id_to_payment_with_credit_card_table', 3),
(27, '2018_05_20_054532_create_adjustments_table', 4),
(28, '2018_05_20_054859_create_product_adjustments_table', 4),
(29, '2018_05_21_163419_create_returns_table', 5),
(30, '2018_05_21_163443_create_product_returns_table', 5),
(31, '2018_06_02_050905_create_roles_table', 6),
(32, '2018_06_02_073430_add_columns_to_users_table', 7),
(33, '2018_06_03_053738_create_permission_tables', 8),
(36, '2018_06_21_063736_create_pos_setting_table', 9),
(37, '2018_06_21_094155_add_user_id_to_sales_table', 10),
(38, '2018_06_21_101529_add_user_id_to_purchases_table', 11),
(39, '2018_06_21_103512_add_user_id_to_transfers_table', 12),
(40, '2018_06_23_061058_add_user_id_to_quotations_table', 13),
(41, '2018_06_23_082427_add_is_deleted_to_users_table', 14),
(42, '2018_06_25_043308_change_email_to_users_table', 15),
(43, '2018_07_06_115449_create_general_settings_table', 16),
(44, '2018_07_08_043944_create_languages_table', 17),
(45, '2018_07_11_102144_add_user_id_to_returns_table', 18),
(46, '2018_07_11_102334_add_user_id_to_payments_table', 18),
(47, '2018_07_22_130541_add_digital_to_products_table', 19),
(49, '2018_07_24_154250_create_deliveries_table', 20),
(50, '2018_08_16_053336_create_expense_categories_table', 21),
(51, '2018_08_17_115415_create_expenses_table', 22),
(55, '2018_08_18_050418_create_gift_cards_table', 23),
(56, '2018_08_19_063119_create_payment_with_gift_card_table', 24),
(57, '2018_08_25_042333_create_gift_card_recharges_table', 25),
(58, '2018_08_25_101354_add_deposit_expense_to_customers_table', 26),
(59, '2018_08_26_043801_create_deposits_table', 27),
(60, '2018_09_02_044042_add_keybord_active_to_pos_setting_table', 28),
(61, '2018_09_09_092713_create_payment_with_paypal_table', 29),
(62, '2018_09_10_051254_add_currency_to_general_settings_table', 30),
(63, '2018_10_22_084118_add_biller_and_store_id_to_users_table', 31),
(65, '2018_10_26_034927_create_coupons_table', 32),
(66, '2018_10_27_090857_add_coupon_to_sales_table', 33),
(67, '2018_11_07_070155_add_currency_position_to_general_settings_table', 34),
(68, '2018_11_19_094650_add_combo_to_products_table', 35),
(69, '2018_12_09_043712_create_accounts_table', 36),
(70, '2018_12_17_112253_add_is_default_to_accounts_table', 37),
(71, '2018_12_19_103941_add_account_id_to_payments_table', 38),
(72, '2018_12_20_065900_add_account_id_to_expenses_table', 39),
(73, '2018_12_20_082753_add_account_id_to_returns_table', 40),
(74, '2018_12_26_064330_create_return_purchases_table', 41),
(75, '2018_12_26_144210_create_purchase_product_return_table', 42),
(76, '2018_12_26_144708_create_purchase_product_return_table', 43),
(77, '2018_12_27_110018_create_departments_table', 44),
(78, '2018_12_30_054844_create_employees_table', 45),
(79, '2018_12_31_125210_create_payrolls_table', 46),
(80, '2018_12_31_150446_add_department_id_to_employees_table', 47),
(81, '2019_01_01_062708_add_user_id_to_expenses_table', 48),
(82, '2019_01_02_075644_create_hrm_settings_table', 49),
(83, '2019_01_02_090334_create_attendances_table', 50),
(84, '2019_01_27_160956_add_three_columns_to_general_settings_table', 51),
(85, '2019_02_15_183303_create_stock_counts_table', 52),
(86, '2019_02_17_101604_add_is_adjusted_to_stock_counts_table', 53),
(87, '2019_04_13_101707_add_tax_no_to_customers_table', 54),
(89, '2019_10_14_111455_create_holidays_table', 55),
(90, '2019_11_13_145619_add_is_variant_to_products_table', 56),
(91, '2019_11_13_150206_create_product_variants_table', 57),
(92, '2019_11_13_153828_create_variants_table', 57),
(93, '2019_11_25_134041_add_qty_to_product_variants_table', 58),
(94, '2019_11_25_134922_add_variant_id_to_product_purchases_table', 58),
(95, '2019_11_25_145341_add_variant_id_to_product_warehouse_table', 58),
(96, '2019_11_29_182201_add_variant_id_to_product_sales_table', 59),
(97, '2019_12_04_121311_add_variant_id_to_product_quotation_table', 60),
(98, '2019_12_05_123802_add_variant_id_to_product_transfer_table', 61),
(100, '2019_12_08_114954_add_variant_id_to_product_returns_table', 62),
(101, '2019_12_08_203146_add_variant_id_to_purchase_product_return_table', 63),
(102, '2020_02_28_103340_create_money_transfers_table', 64),
(103, '2020_07_01_193151_add_image_to_categories_table', 65),
(105, '2020_09_26_130426_add_user_id_to_deliveries_table', 66),
(107, '2020_10_11_125457_create_cash_registers_table', 67),
(108, '2020_10_13_155019_add_cash_register_id_to_sales_table', 68),
(109, '2020_10_13_172624_add_cash_register_id_to_returns_table', 69),
(110, '2020_10_17_212338_add_cash_register_id_to_payments_table', 70),
(111, '2020_10_18_124200_add_cash_register_id_to_expenses_table', 71),
(112, '2020_10_21_121632_add_developed_by_to_general_settings_table', 72),
(113, '2019_08_19_000000_create_failed_jobs_table', 73),
(114, '2020_10_30_135557_create_notifications_table', 73),
(115, '2020_11_01_044954_create_currencies_table', 74),
(116, '2020_11_01_140736_add_price_to_product_warehouse_table', 75),
(117, '2020_11_02_050633_add_is_diff_price_to_products_table', 76),
(118, '2020_11_09_055222_add_user_id_to_customers_table', 77),
(119, '2020_11_17_054806_add_invoice_format_to_general_settings_table', 78),
(120, '2021_02_10_074859_add_variant_id_to_product_adjustments_table', 79),
(121, '2021_03_07_093606_create_product_batches_table', 80),
(122, '2021_03_07_093759_add_product_batch_id_to_product_warehouse_table', 80),
(123, '2021_03_07_093900_add_product_batch_id_to_product_purchases_table', 80),
(124, '2021_03_11_132603_add_product_batch_id_to_product_sales_table', 81),
(127, '2021_03_25_125421_add_is_batch_to_products_table', 82),
(128, '2021_05_19_120127_add_product_batch_id_to_product_returns_table', 82),
(130, '2021_05_22_105611_add_product_batch_id_to_purchase_product_return_table', 83),
(131, '2021_05_23_124848_add_product_batch_id_to_product_transfer_table', 84),
(132, '2021_05_26_153106_add_product_batch_id_to_product_quotation_table', 85),
(133, '2021_06_08_213007_create_reward_point_settings_table', 86),
(134, '2021_06_16_104155_add_points_to_customers_table', 87),
(135, '2021_06_17_101057_add_used_points_to_payments_table', 88),
(136, '2021_07_06_132716_add_variant_list_to_products_table', 89),
(137, '2021_09_27_161141_add_is_imei_to_products_table', 90),
(138, '2021_09_28_170052_add_imei_number_to_product_warehouse_table', 91),
(139, '2021_09_28_170126_add_imei_number_to_product_purchases_table', 91),
(140, '2021_10_03_170652_add_imei_number_to_product_sales_table', 92),
(141, '2021_10_10_145214_add_imei_number_to_product_returns_table', 93),
(142, '2021_10_11_104504_add_imei_number_to_product_transfer_table', 94),
(143, '2021_10_12_160107_add_imei_number_to_purchase_product_return_table', 95),
(144, '2021_10_12_205146_add_is_rtl_to_general_settings_table', 96);

-- --------------------------------------------------------

--
-- Table structure for table `money_transfers`
--

CREATE TABLE `money_transfers` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_account_id` int(11) NOT NULL,
  `to_account_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `money_transfers`
--

INSERT INTO `money_transfers` (`id`, `reference_no`, `from_account_id`, `to_account_id`, `amount`, `created_at`, `updated_at`) VALUES
(2, 'mtr-20200228-071852', 1, 3, 100, '2020-02-28 12:18:52', '2020-02-28 12:18:52');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('249beded-5431-40a3-ba1e-d255ffb047a3', 'AppNotificationsSendNotification', 'AppUser', 9, '{\"message\":\"Please delete all pending purchase.\"}', '2020-11-01 00:33:32', '2020-11-01 00:33:07', '2020-11-01 00:33:32'),
('a39e8b29-ba22-4fb0-965b-1d39e04b8db5', 'App\\Notifications\\SendNotification', 'App\\User', 19, '{\"message\":\"test\"}', NULL, '2022-03-21 05:07:52', '2022-03-21 05:07:52');

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
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_reference` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `sale_id` int(11) DEFAULT NULL,
  `cash_register_id` int(11) DEFAULT NULL,
  `account_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `used_points` double DEFAULT NULL,
  `change` double NOT NULL,
  `paying_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `payment_reference`, `user_id`, `purchase_id`, `sale_id`, `cash_register_id`, `account_id`, `amount`, `used_points`, `change`, `paying_method`, `payment_note`, `created_at`, `updated_at`) VALUES
(33, 'spr-20180809-055453', 1, 0, 2, 0, 1, 1000, 0, 0, 'Cash', '', '2018-08-08 22:54:53', '2018-08-08 22:54:53'),
(34, 'spr-20180809-055553', 1, 0, 2, 0, 1, 1200, 0, 0, 'Cheque', '', '2018-08-08 22:55:53', '2018-08-08 22:56:36'),
(35, 'spr-20180809-063214', 1, 0, 3, 0, 1, 897, 0, 0, 'Cheque', '', '2018-08-08 23:32:14', '2018-08-08 23:32:14'),
(36, 'spr-20180825-034836', 1, 0, 4, 0, 1, 100, 0, 0, 'Gift Card', '100 bucks paid...', '2018-08-24 20:48:36', '2018-08-24 23:57:35'),
(39, 'spr-20180825-083634', 1, 0, 4, 0, 1, 200, 0, 0, 'Gift Card', '', '2018-08-25 01:36:34', '2018-08-25 01:36:34'),
(41, 'spr-20180826-094836', 1, 0, 6, 0, 1, 20, 0, 0, 'Deposit', '20 bucks paid', '2018-08-26 02:48:36', '2018-08-26 20:42:13'),
(42, 'spr-20180827-073545', 1, 0, 7, 0, 1, 880, 0, 0, 'Cash', '', '2018-08-27 00:35:45', '2018-08-27 00:35:45'),
(43, 'ppr-20180830-071637', 1, 13, 0, 0, 1, 100, 0, 0, 'Cash', '100 bucks paid...', '2018-08-30 00:16:37', '2018-08-30 00:16:37'),
(44, 'ppr-20180830-090718', 1, 13, 0, 0, 1, 200, 0, 0, 'Cheque', '', '2018-08-30 02:07:18', '2018-08-30 02:07:18'),
(46, 'spr-20180902-053954', 1, 0, 8, 0, 1, 3529.8, 0, 0, 'Cash', 'fully paid', '2018-09-01 22:39:54', '2018-09-01 22:39:54'),
(49, 'spr-20180903-033314', 1, 0, 9, 0, 1, 20, 0, 0, 'Deposit', 'fully paid', '2018-09-02 20:33:14', '2018-09-02 20:33:14'),
(50, 'spr-20180903-050138', 1, 0, 10, 0, 1, 200, 0, 0, 'Gift Card', '50 bucks due...', '2018-09-02 22:01:38', '2018-09-09 20:40:28'),
(51, 'spr-20180903-100821', 1, 0, 11, 0, 1, 5500, 0, 0, 'Cheque', '', '2018-09-03 03:08:21', '2018-09-03 03:08:21'),
(53, 'ppr-20180903-101524', 1, 16, 0, 0, 1, 1750, 0, 0, 'Cheque', '', '2018-09-03 03:15:24', '2018-10-06 00:09:20'),
(78, 'spr-20180926-092105', 1, 0, 31, 0, 1, 560, 0, 0, 'Cash', '', '2018-09-26 02:21:05', '2018-09-26 02:21:05'),
(79, 'spr-20181006-065017', 1, 0, 30, 0, 1, 100, 0, 0, 'Cheque', '', '2018-10-05 23:50:17', '2018-10-05 23:51:55'),
(80, 'spr-20181006-065222', 1, 0, 30, 0, 1, 20, 0, 0, 'Cash', '', '2018-10-05 23:52:22', '2018-10-05 23:52:22'),
(82, 'ppr-20181006-070935', 1, 16, 0, 0, 1, 1600, 0, 0, 'Cash', '', '2018-10-06 00:09:35', '2018-10-06 00:09:35'),
(83, 'spr-20181010-041636', 1, 0, 41, 0, 1, 461, 0, 0, 'Cash', '', '2018-10-09 21:16:36', '2018-10-09 21:16:36'),
(84, 'spr-20181010-053456', 1, 0, 42, 0, 1, 440, 0, 0, 'Cash', '', '2018-10-09 22:34:56', '2018-10-09 22:34:56'),
(91, 'spr-20181021-065338', 1, 0, 55, 0, 1, 250, 0, 0, 'Cash', '', '2018-10-20 23:53:38', '2018-10-20 23:53:38'),
(92, 'spr-20181021-082618', 1, 0, 57, 0, 1, 575.2, 0, 0, 'Cash', '', '2018-10-21 01:26:18', '2018-10-21 01:26:18'),
(93, 'spr-20181022-032730', 1, 0, 58, 0, 1, 1220, 0, 0, 'Cash', '', '2018-10-22 08:27:30', '2018-10-22 08:27:30'),
(104, 'spr-20181023-071548', 11, 0, 73, 0, 1, 5500, 0, 0, 'Cash', '', '2018-10-23 00:15:48', '2018-10-23 00:15:48'),
(105, 'spr-20181023-071648', 1, 0, 74, 0, 1, 2320, 0, 0, 'Cash', '', '2018-10-23 00:16:48', '2018-10-23 00:16:48'),
(126, 'spr-20181101-050033', 1, 0, 75, 0, 1, 7678, 0, 0, 'Cash', '', '2018-10-31 22:00:33', '2018-10-31 22:00:33'),
(127, 'spr-20181101-050130', 1, 0, 76, 0, 1, 1424, 0, 0, 'Cash', '', '2018-10-31 22:01:30', '2018-11-08 02:44:51'),
(129, 'spr-20181105-091523', 1, 0, 79, 0, 1, 14454, 0, 0, 'Cash', '', '2018-11-05 02:15:23', '2018-11-05 02:15:23'),
(130, 'spr-20181105-092002', 1, 0, 80, 0, 1, 2500, 0, 0, 'Cash', '', '2018-11-05 02:20:02', '2018-11-05 02:20:02'),
(131, 'ppr-20181105-092128', 1, 24, 0, 0, 1, 15950, 0, 0, 'Cash', '', '2018-11-05 02:21:28', '2018-11-05 02:21:28'),
(137, 'spr-20181105-095952', 1, 0, 86, 0, 1, 1100, 0, 0, 'Cash', '', '2018-11-05 02:59:52', '2018-11-05 02:59:52'),
(138, 'spr-20181105-100310', 1, 0, 88, 0, 1, 1100, 0, 0, 'Cash', '', '2018-11-05 03:03:10', '2018-11-05 03:03:10'),
(139, 'spr-20181126-020534', 1, 0, 94, 0, 1, 120, 0, 0, 'Cash', '', '2018-11-26 07:05:34', '2018-11-26 07:05:34'),
(140, 'spr-20181128-071515', 1, 0, 96, 0, 1, 132, 0, 0, 'Cash', '', '2018-11-28 00:15:15', '2018-11-28 00:15:15'),
(141, 'spr-20181201-060524', 1, 0, 97, 0, 1, 200, 0, 300, 'Cash', '', '2018-11-30 23:05:24', '2018-12-03 23:21:05'),
(148, 'ppr-20181204-065932', 1, 23, 0, 0, 1, 500, 0, 500, 'Cash', '', '2018-12-03 23:59:32', '2018-12-03 23:59:44'),
(149, 'ppr-20181205-053443', 1, 25, 0, 0, 1, 4450, 0, 550, 'Cash', '', '2018-12-04 22:34:43', '2018-12-04 22:34:43'),
(150, 'spr-20181205-053608', 1, 0, 98, 0, 1, 800, 0, 200, 'Cash', '', '2018-12-04 22:36:08', '2018-12-04 22:36:08'),
(151, 'spr-20181205-053724', 1, 0, 99, 0, 1, 800, 0, 0, 'Cash', '', '2018-12-04 22:37:24', '2018-12-04 22:37:24'),
(152, 'spr-20181208-062032', 1, 0, 101, 0, 1, 100, 0, 400, 'Cash', '', '2018-12-07 23:20:32', '2018-12-11 02:19:39'),
(157, 'ppr-20181220-063439', 1, 27, 0, 0, 1, 10, 0, 0, 'Cash', '', '2018-12-19 23:34:39', '2018-12-19 23:35:01'),
(159, 'spr-20181224-045832', 1, 0, 103, 0, 1, 120, 0, 0, 'Cash', '', '2018-12-23 21:58:32', '2018-12-23 21:58:32'),
(160, 'spr-20190101-054544', 1, 0, 105, 0, 1, 21, 0, 0, 'Cash', '', '2018-12-31 22:45:44', '2018-12-31 22:45:44'),
(161, 'spr-20190101-091040', 1, 0, 106, 0, 1, 860, 0, 0, 'Cash', '', '2019-01-01 02:10:40', '2019-01-01 02:10:40'),
(162, 'spr-20190103-065627', 1, 0, 107, 0, 1, 5040, 0, 960, 'Cash', '', '2019-01-02 23:56:27', '2019-01-02 23:56:27'),
(163, 'spr-20190120-035824', 1, 0, 108, 0, 1, 120, 0, 0, 'Cash', '', '2019-01-20 08:58:24', '2019-01-20 08:58:24'),
(164, 'ppr-20190129-100302', 9, 36, 0, 0, 1, 650, 0, 350, 'Cash', '', '2019-01-29 03:03:02', '2019-01-29 03:03:02'),
(165, 'ppr-20190129-100324', 9, 34, 0, 0, 1, 2860, 0, 140, 'Cash', '', '2019-01-29 03:03:24', '2019-01-29 03:03:24'),
(166, 'spr-20190129-101451', 9, 0, 109, 0, 1, 540, 0, 460, 'Cash', '', '2019-01-29 03:14:51', '2019-01-29 03:14:51'),
(167, 'spr-20190129-115048', 9, 0, 110, 0, 1, 1700, 0, 300, 'Cash', '', '2019-01-29 04:50:48', '2019-01-29 04:50:48'),
(168, 'spr-20190131-110839', 9, 0, 111, 0, 1, 271, 0, 0, 'Cash', '', '2019-01-31 04:08:39', '2019-01-31 04:08:39'),
(169, 'spr-20190202-104045', 1, 0, 112, 0, 1, 440, 0, 0, 'Cash', '', '2019-02-02 03:40:45', '2019-02-02 03:40:45'),
(170, 'spr-20190202-114117', 1, 0, 113, 0, 1, 350, 0, 0, 'Cash', '', '2019-02-02 04:41:17', '2019-02-02 04:41:17'),
(171, 'spr-20190205-030454', 1, 0, 114, 0, 1, 440, 0, 0, 'Cash', '', '2019-02-05 08:04:54', '2019-02-05 08:04:54'),
(176, 'ppr-20190207-125418', 1, 35, 0, 0, 1, 50, 0, 50, 'Cash', '', '2019-02-07 05:54:18', '2019-02-07 06:05:23'),
(178, 'ppr-20190207-010640', 1, 35, 0, 0, 1, 50, 0, 50, 'Cheque', '', '2019-02-07 06:06:40', '2019-02-07 06:07:04'),
(179, 'spr-20190207-010915', 1, 0, 120, 0, 1, 50, 0, 50, 'Cash', '', '2019-02-07 06:09:15', '2019-02-07 06:09:15'),
(180, 'spr-20190209-104816', 1, 0, 121, 0, 1, 1272, 0, 728, 'Cash', '', '2019-02-09 03:48:16', '2019-02-09 03:48:16'),
(181, 'ppr-20190209-104940', 1, 38, 0, 0, 1, 1660, 0, 0, 'Cash', '', '2019-02-09 03:49:40', '2019-02-09 03:49:40'),
(182, 'ppr-20190209-104959', 1, 39, 0, 0, 1, 973.5, 0, 0, 'Cash', '', '2019-02-09 03:49:59', '2019-02-09 03:49:59'),
(183, 'spr-20190219-023214', 1, 0, 123, 0, 1, 440, 0, 0, 'Cash', '', '2019-02-19 07:32:14', '2019-02-19 07:32:14'),
(189, 'spr-20190303-104010', 1, 0, 127, 0, 1, 2500, 0, 0, 'Cash', '', '2019-03-03 03:40:10', '2019-03-03 03:40:10'),
(190, 'ppr-20190303-104046', 1, 40, 0, 0, 1, 100, 0, 0, 'Cash', '', '2019-03-03 03:40:46', '2019-03-03 03:40:46'),
(191, 'ppr-20190303-104222', 1, 37, 0, 0, 1, 4000, 0, 0, 'Cash', '', '2019-03-03 03:42:22', '2019-03-03 03:42:22'),
(192, 'ppr-20190303-104414', 1, 41, 0, 0, 1, 1000, 0, 0, 'Cash', '', '2019-03-03 03:44:14', '2019-03-03 03:44:14'),
(193, 'spr-20190404-095555', 1, 0, 128, 0, 1, 560, 0, 0, 'Cash', '', '2019-04-04 02:55:55', '2019-04-04 02:55:55'),
(194, 'ppr-20190404-095910', 1, 42, 0, 0, 1, 300, 0, 200, 'Cash', '', '2019-04-04 02:59:10', '2019-04-13 09:52:38'),
(195, 'spr-20190404-095937', 1, 0, 129, 0, 1, 120, 0, 0, 'Cash', '', '2019-04-04 02:59:37', '2019-04-04 02:59:37'),
(196, 'spr-20190421-122124', 1, 0, 130, 0, 1, 586, 0, 0, 'Cash', '', '2019-04-21 05:21:24', '2019-04-21 05:21:24'),
(197, 'spr-20190528-103229', 1, 0, 131, 0, 1, 2890, 0, 0, 'Cash', '', '2019-05-28 03:32:29', '2019-05-28 03:32:29'),
(198, 'ppr-20190613-101351', 1, 37, 0, 0, 1, 2390, 0, 0, 'Cash', '', '2019-06-13 03:13:51', '2019-06-13 03:13:51'),
(199, 'spr-20190613-101637', 1, 0, 132, 0, 1, 840, 0, 0, 'Cash', '', '2019-06-13 03:16:37', '2019-06-13 03:16:37'),
(200, 'ppr-20190613-101713', 1, 43, 0, 0, 1, 1000, 0, 0, 'Cash', '', '2019-06-13 03:17:13', '2019-06-13 03:17:13'),
(201, 'spr-20190613-101752', 1, 0, 133, 0, 1, 2700, 0, 0, 'Cash', '', '2019-06-13 03:17:52', '2019-06-13 03:17:52'),
(202, 'ppr-20191019-032925', 1, 43, 0, 0, 1, 3290, 0, 710, 'Cash', '', '2019-10-19 08:29:25', '2019-10-19 08:29:25'),
(203, 'spr-20191019-033028', 1, 0, 134, 0, 1, 2940, 0, 60, 'Cash', '', '2019-10-19 08:30:28', '2019-10-19 08:30:28'),
(205, 'spr-20191103-114044', 1, 0, 139, 0, 1, 488, 0, 12, 'Cash', '', '2019-11-03 04:40:44', '2019-11-03 04:40:44'),
(206, 'ppr-20191103-114222', 1, 46, 0, 0, 1, 200, 0, 0, 'Cash', '', '2019-11-03 04:42:22', '2019-11-03 04:42:22'),
(211, 'spr-20191109-074131', 1, 0, 144, 0, 1, 1220, 0, 0, 'Cash', '', '2019-11-09 12:41:31', '2019-11-09 12:41:31'),
(216, 'ppr-20191111-103911', 1, 49, 0, 0, 1, 5000, 0, 0, 'Cheque', '', '2019-11-11 03:39:11', '2019-11-11 03:39:11'),
(217, 'spr-20191111-104008', 1, 0, 147, 0, 1, 2220, 0, 780, 'Cash', '', '2019-11-11 03:40:08', '2019-11-11 03:40:08'),
(222, 'spr-20191203-115128', 1, 0, 163, 0, 1, 3, 0, 0, 'Cash', '', '2019-12-03 04:51:28', '2019-12-03 04:51:28'),
(227, 'ppr-20191204-111124', 1, 57, 0, 0, 1, 220, 0, 280, 'Cash', '', '2019-12-04 16:11:24', '2019-12-04 16:11:24'),
(228, 'spr-20191205-092712', 1, 0, 173, 0, 1, 621, 0, 0, 'Cash', '', '2019-12-05 02:27:12', '2019-12-05 02:27:12'),
(239, 'spr-20191222-104058', 1, 0, 187, 0, 1, 288, 0, 212, 'Cash', '', '2019-12-22 03:40:58', '2019-12-22 03:40:58'),
(241, 'spr-20191223-125946', 1, 0, 190, 0, 1, 1100, 0, 400, 'Cash', '', '2019-12-23 05:59:46', '2019-12-23 05:59:46'),
(244, 'ppr-20200101-010750', 1, 61, 0, 0, 1, 60, 0, 0, 'Cash', '', '2020-01-01 06:07:50', '2020-01-01 06:07:50'),
(246, 'spr-20200101-022028', 1, 0, 193, 0, 1, 1100, 0, 400, 'Cash', '', '2020-01-01 07:20:28', '2020-01-01 07:20:28'),
(247, 'ppr-20200101-022131', 1, 59, 0, 0, 1, 6, 0, 0, 'Cash', '', '2020-01-01 07:21:31', '2020-01-01 07:21:31'),
(248, 'ppr-20200101-022137', 1, 58, 0, 0, 1, 4, 0, 0, 'Cash', '', '2020-01-01 07:21:37', '2020-01-01 07:21:37'),
(249, 'ppr-20200101-022144', 1, 56, 0, 0, 1, 2, 0, 0, 'Cash', '', '2020-01-01 07:21:44', '2020-01-01 07:21:44'),
(250, 'ppr-20200101-022152', 1, 55, 0, 0, 1, 4, 0, 0, 'Cash', '', '2020-01-01 07:21:52', '2020-01-01 07:21:52'),
(251, 'ppr-20200101-022225', 1, 49, 0, 0, 1, 2000, 0, 0, 'Cash', '', '2020-01-01 07:22:25', '2020-01-01 07:22:25'),
(252, 'spr-20200102-043947', 1, 0, 194, 0, 1, 892, 0, 108, 'Cash', '', '2020-01-02 09:39:47', '2020-01-02 09:39:47'),
(258, 'spr-20200203-035256', 1, 0, 201, 0, 1, 120, 0, 880, 'Cash', '', '2020-02-03 08:52:56', '2020-02-03 08:52:56'),
(259, 'spr-20200204-105853', 1, 0, 202, 0, 1, 1400, 0, 100, 'Cash', '', '2020-02-04 15:58:53', '2020-02-04 15:58:53'),
(260, 'ppr-20200204-110050', 1, 67, 0, 0, 1, 300, 0, 0, 'Cash', '', '2020-02-04 16:00:50', '2020-02-04 16:00:50'),
(261, 'spr-20200302-115414', 1, 0, 203, 0, 1, 350, 0, 150, 'Cash', '', '2020-03-02 04:54:14', '2020-03-02 04:54:14'),
(262, 'spr-20200302-115741', 1, 0, 204, 0, 1, 40, 0, 10, 'Cash', '', '2020-03-02 04:57:41', '2020-03-02 04:57:41'),
(263, 'ppr-20200302-115811', 1, 70, 0, 0, 1, 50, 0, 0, 'Cash', '', '2020-03-02 04:58:11', '2020-03-02 04:58:11'),
(264, 'ppr-20200302-115820', 1, 69, 0, 0, 1, 50, 0, 0, 'Cash', '', '2020-03-02 04:58:20', '2020-03-02 04:58:20'),
(265, 'spr-20200311-044642', 1, 0, 205, 0, 1, 352, 0, 148, 'Cash', '', '2020-03-11 09:46:42', '2020-03-11 09:46:42'),
(266, 'ppr-20200406-073823', 1, 71, 0, 0, 1, 2000, 0, 1000, 'Cash', 'First Payment', '2020-04-06 12:38:23', '2020-04-06 12:38:55'),
(267, 'spr-20200406-074024', 1, 0, 207, 0, 1, 500, 0, 500, 'Cash', '', '2020-04-06 12:40:24', '2020-04-06 12:40:24'),
(268, 'spr-20200406-074201', 1, 0, 207, 0, 1, 144, 0, 56, 'Cash', '', '2020-04-06 12:42:01', '2020-04-06 12:42:01'),
(269, 'spr-20200506-105950', 1, 0, 208, 0, 1, 1540, 0, 460, 'Cash', '', '2020-05-06 15:59:50', '2020-05-06 15:59:50'),
(270, 'spr-20200609-124248', 1, 0, 209, 0, 1, 1220, 0, 780, 'Cash', '', '2020-06-09 05:42:48', '2020-06-09 05:42:48'),
(273, 'spr-20200703-063914', 1, 0, 212, 0, 1, 2585, 0, 415, 'Cash', '', '2020-07-03 11:39:14', '2020-07-03 11:39:14'),
(274, 'spr-20200712-095153', 1, 0, 213, 0, 1, 13, 0, 37, 'Cash', '', '2020-07-12 14:51:53', '2020-07-12 14:51:53'),
(276, 'spr-20200727-083808', 1, 0, 217, 0, 1, 385, 0, 0, 'Cash', '', '2020-07-27 13:38:08', '2020-07-27 13:38:08'),
(277, 'spr-20200727-084024', 1, 0, 218, 0, 1, 385, 0, 0, 'Cash', '', '2020-07-27 13:40:24', '2020-07-27 13:40:24'),
(278, 'spr-20200727-084645', 1, 0, 219, 0, 1, 385, 0, 0, 'Cash', '', '2020-07-27 13:46:45', '2020-07-27 13:46:45'),
(279, 'spr-20200812-062806', 1, 0, 220, 0, 1, 760, 0, 240, 'Cash', '', '2020-08-12 11:28:06', '2020-08-12 11:28:06'),
(280, 'ppr-20200812-062853', 1, 62, 0, 0, 1, 1650, 0, 0, 'Cash', '', '2020-08-12 11:28:53', '2020-08-12 11:28:53'),
(281, 'spr-20200812-063035', 1, 0, 221, 0, 1, 1100, 0, 0, 'Cash', '', '2020-08-12 11:30:35', '2020-08-12 11:30:35'),
(282, 'spr-20200816-100426', 1, 0, 222, 0, 1, 23000, 0, 2000, 'Cash', '', '2020-08-16 15:04:26', '2020-08-16 15:04:26'),
(283, 'spr-20200816-100523', 1, 0, 223, 0, 1, 300, 0, 200, 'Cash', '', '2020-08-16 15:05:23', '2020-08-16 15:05:23'),
(284, 'spr-20200816-100632', 1, 0, 223, 0, 1, 100, 0, 0, 'Cash', '', '2020-08-16 15:06:32', '2020-08-16 15:06:32'),
(285, 'spr-20200816-100735', 1, 0, 223, 0, 1, 40, 0, 0, 'Cash', '', '2020-08-16 15:07:35', '2020-08-16 15:07:35'),
(290, 'spr-20201017-092854', 9, 0, 230, 2, 1, 200, 0, 0, 'Cash', '', '2020-10-17 14:28:54', '2020-10-18 03:48:54'),
(291, 'spr-20201018-105138', 9, 0, 230, 2, 1, 50, 0, 0, 'Cash', '', '2020-10-18 03:51:38', '2020-10-18 03:51:38'),
(292, 'spr-20201018-111333', 9, 0, 231, 2, 1, 100, 0, 0, 'Cash', '', '2020-10-18 04:13:33', '2020-10-18 04:13:33'),
(293, 'spr-20201018-111426', 9, 0, 231, 2, 1, 50, 0, 0, 'Gift Card', '', '2020-10-18 04:14:26', '2020-10-18 04:14:26'),
(294, 'spr-20201018-111651', 9, 0, 231, 2, 1, 50, 0, 0, 'Credit Card', '', '2020-10-18 04:16:51', '2020-10-18 04:16:51'),
(295, 'spr-20201018-111724', 9, 0, 231, 2, 1, 50, 0, 0, 'Cheque', '', '2020-10-18 04:17:24', '2020-10-18 04:17:24'),
(296, 'spr-20201022-013018', 9, 0, 232, 2, 1, 100, 0, 0, 'Cash', '', '2020-10-22 06:30:18', '2020-10-22 06:30:18'),
(297, 'spr-20201022-015606', 1, 0, 233, 3, 1, 250, 0, 0, 'Cash', '', '2020-10-22 06:56:06', '2020-10-22 06:56:06'),
(298, 'spr-20201024-070508', 1, 0, 234, 4, 1, 11500, 0, 0, 'Cash', '', '2020-10-24 00:05:08', '2020-10-24 00:05:08'),
(299, 'spr-20201024-070753', 1, 0, 235, 4, 1, 250, 0, 0, 'Cash', '', '2020-10-24 00:07:53', '2020-10-24 00:07:53'),
(300, 'spr-20201024-034619', 1, 0, 237, 4, 1, 61900, 0, 0, 'Cash', '', '2020-10-24 08:46:19', '2020-10-24 08:46:19'),
(302, 'spr-20201027-054004', 1, 0, 239, 3, 1, 2, 0, 0, 'Cash', '', '2020-10-26 22:40:04', '2020-10-26 22:40:04'),
(303, 'spr-20201027-054207', 1, 0, 240, 3, 1, 6, 0, 0, 'Cash', '', '2020-10-26 22:42:07', '2020-10-26 22:42:07'),
(304, 'spr-20201027-063202', 1, 0, 241, 4, 1, 250, 0, 0, 'Cash', '', '2020-10-26 23:32:02', '2020-10-26 23:32:02'),
(305, 'spr-20201029-073033', 1, 0, 242, 4, 1, 250, 0, 0, 'Cash', '', '2020-10-29 00:30:33', '2020-10-29 00:30:33'),
(306, 'spr-20201101-072115', 1, 0, 243, 4, 1, 250, 0, 0, 'Cash', '', '2020-11-01 00:21:15', '2020-11-01 00:21:15'),
(307, 'spr-20201101-074225', 1, 0, 245, 3, 1, 1130, 0, 0, 'Cash', '', '2020-11-01 00:42:25', '2020-11-01 00:42:25'),
(308, 'spr-20201101-075019', 1, 0, 246, 4, 1, 440, 0, 0, 'Cash', '', '2020-11-01 00:50:19', '2020-11-01 00:50:19'),
(310, 'spr-20201106-013042', 1, 0, 250, 4, 1, 378.4, 0, 0, 'Cash', '', '2020-11-06 06:30:42', '2020-11-06 06:30:42'),
(311, 'spr-20201109-011527', 1, 0, 251, 4, 1, 500, 0, 0, 'Cash', '', '2020-11-09 06:15:27', '2020-11-09 06:15:27'),
(312, 'spr-20201111-055902', 1, 0, 252, 3, 1, 229.5, 0, 0, 'Cash', '', '2020-11-10 22:59:02', '2020-11-10 22:59:02'),
(313, 'spr-20201114-064739', 1, 0, 253, 4, 1, 10242.5, 0, 0, 'Cash', '', '2020-11-13 23:47:39', '2020-11-13 23:47:39'),
(316, 'spr-20201117-064751', 1, 0, 256, 4, 1, 715, 0, 0, 'Cash', '', '2020-11-16 23:47:51', '2020-11-16 23:47:51'),
(317, 'spr-20201117-070920', 1, 0, 257, 4, 1, 250, 0, 0, 'Cash', '', '2020-11-17 00:09:20', '2020-11-17 00:09:20'),
(320, 'ppr-20201118-062036', 1, 90, 0, 0, 1, 33000, 0, 0, 'Cash', '', '2020-11-17 23:20:36', '2020-11-17 23:20:36'),
(321, 'spr-20201118-065242', 1, 0, 258, 4, 1, 27200, 0, 0, 'Cash', '', '2020-11-17 23:52:42', '2020-11-17 23:52:42'),
(324, 'spr-20201208-094000', 1, 0, 263, 4, 1, 300, 0, 200, 'Cash', '', '2020-12-08 02:40:00', '2020-12-08 02:40:00'),
(325, 'spr-20210106-022350', 1, 0, 263, 4, 1, 50, 0, 0, 'Cash', '', '2021-01-06 07:23:50', '2021-01-06 07:23:50'),
(330, 'spr-20210111-021625', 1, 0, 271, 3, 1, 1274, 0, 0, 'Cash', '', '2021-01-11 07:16:25', '2021-01-11 07:16:25'),
(332, 'spr-20210113-070243', 1, 0, 274, 4, 1, 1556, 0, 0, 'Cash', '', '2021-01-13 00:02:43', '2021-01-13 00:02:43'),
(333, 'spr-20210201-023748', 1, 0, 275, 4, 1, 484, 0, 0, 'Cash', '', '2021-02-01 07:37:48', '2021-02-01 07:37:48'),
(335, 'spr-20210216-070948', 1, 0, 277, 4, 1, 15156, 0, 0, 'Cash', '', '2021-02-16 00:09:48', '2021-02-16 00:09:48'),
(336, 'spr-20210217-073238', 1, 0, 278, 4, 1, 26949.9, 0, 0, 'Cash', '', '2021-02-17 00:32:38', '2021-02-17 00:32:38'),
(338, 'spr-20210524-074506', 1, 0, 290, 3, 1, 250, 0, 0, 'Cash', '', '2021-05-24 12:45:06', '2021-05-24 12:45:06'),
(339, 'spr-20210524-074647', 1, 0, 290, 3, 1, -130, 0, 0, 'Cash', '', '2021-05-24 12:46:47', '2021-05-24 12:46:47'),
(341, 'spr-20210601-123530', 1, 0, 294, 4, 1, 440, 0, 0, 'Cash', '', '2021-06-01 05:35:30', '2021-06-01 05:35:30'),
(342, 'spr-20210601-032209', 1, 0, 295, 3, 1, 2, 0, 0, 'Cash', '', '2021-06-01 08:22:09', '2021-06-01 08:22:09'),
(343, 'spr-20210601-034624', 1, 0, 296, 3, 1, 2, 0, 0, 'Cash', '', '2021-06-01 08:46:24', '2021-06-01 08:46:24'),
(344, 'spr-20210601-074150', 9, 0, 297, 2, 1, 250, 0, 0, 'Cash', '', '2021-06-01 12:41:50', '2021-06-01 12:41:50'),
(345, 'spr-20210601-075547', 9, 0, 298, 2, 1, 2, 0, 0, 'Cash', '', '2021-06-01 12:55:47', '2021-06-01 12:55:47'),
(346, 'spr-20210616-105325', 1, 0, 299, 4, 1, 1100, 0, 0, 'Cash', '', '2021-06-16 03:53:25', '2021-06-16 03:53:25'),
(347, 'spr-20210616-111044', 1, 0, 300, 4, 1, 440, 0, 0, 'Cash', '', '2021-06-16 04:10:44', '2021-06-16 04:10:44'),
(348, 'spr-20210616-111120', 1, 0, 301, 4, 1, 2200, 0, 0, 'Cash', '', '2021-06-16 04:11:20', '2021-06-16 04:11:20'),
(349, 'spr-20210616-080543', 1, 0, 303, 4, 1, 440, 2, 0, 'Points', '', '2021-06-16 13:05:43', '2021-06-16 13:05:43'),
(351, 'spr-20210616-082851', 1, 0, 305, 4, 1, 440, 0, 0, 'Cash', '', '2021-06-16 13:28:51', '2021-06-16 13:28:51'),
(352, 'spr-20210617-115553', 1, 0, 306, 3, 1, 1100, 4, 0, 'Points', '', '2021-06-17 04:55:53', '2021-06-17 04:55:53'),
(353, 'spr-20210617-121359', 1, 0, 304, 4, 1, 440, 2, 0, 'Points', '', '2021-06-17 05:13:59', '2021-06-17 05:13:59'),
(354, 'spr-20210617-030013', 1, 0, 307, 3, 1, 100, 0, 0, 'Cash', '', '2021-06-17 08:00:13', '2021-06-17 08:00:13'),
(355, 'ppr-20210618-082857', 1, 115, 0, 0, 1, 101, 0, 0, 'Cash', '', '2021-06-18 13:28:57', '2021-06-18 13:28:57'),
(356, 'spr-20210618-083127', 1, 0, 308, 4, 1, 1608, 0, 392, 'Cash', '', '2021-06-18 13:31:27', '2021-06-18 13:31:27'),
(357, 'spr-20210618-083254', 1, 0, 309, 3, 1, 2, 0, 0, 'Cash', '', '2021-06-18 13:32:54', '2021-06-18 13:32:54'),
(358, 'ppr-20210619-104903', 1, 116, 0, 0, 1, 101, 0, 0, 'Cash', '', '2021-06-19 03:49:03', '2021-06-19 03:49:03'),
(359, 'spr-20210619-105121', 1, 0, 310, 4, 1, 958, 0, 42, 'Cash', '', '2021-06-19 03:51:21', '2021-06-19 03:51:21'),
(360, 'spr-20210619-110231', 1, 0, 312, 4, 1, 440, 2, 0, 'Points', '', '2021-06-19 04:02:31', '2021-06-19 04:02:31'),
(361, 'spr-20210619-110638', 1, 0, 313, 4, 1, 250, 1, 0, 'Points', '', '2021-06-19 04:06:38', '2021-06-19 04:06:38'),
(362, 'spr-20210627-124247', 1, 0, 314, 4, 1, 1100, 0, 0, 'Cash', '', '2021-06-27 05:42:47', '2021-06-27 05:42:47'),
(364, 'spr-20210707-103455', 1, 0, 317, 4, 1, 18, 0, 0, 'Cash', '', '2021-07-07 03:34:55', '2021-07-07 03:34:55'),
(367, 'spr-20210814-092805', 1, 0, 325, 4, 1, 1250, 0, 0, 'Cash', '', '2021-08-14 14:28:05', '2021-08-14 14:28:05'),
(371, 'spr-20210921-010722', 1, 0, 333, 4, 1, 2, 0, 0, 'Cash', '', '2021-09-21 06:07:22', '2021-09-21 06:07:22'),
(372, 'spr-20210921-035020', 1, 0, 334, 4, 1, 120, 0, 0, 'Cash', '', '2021-09-21 08:50:20', '2021-09-21 08:50:20'),
(373, 'spr-20210923-024704', 1, 0, 335, 4, 1, 11, 0, 0, 'Cash', '', '2021-09-23 07:47:04', '2021-09-23 07:47:04'),
(374, 'spr-20211003-051829', 1, 0, 336, 4, 1, 1220, 0, 0, 'Cash', '', '2021-10-03 10:18:29', '2021-10-03 10:18:29'),
(376, 'spr-20211003-054404', 1, 0, 338, 4, 1, 1100, 0, 0, 'Cash', '', '2021-10-03 10:44:04', '2021-10-03 10:44:04'),
(378, 'spr-20211007-025229', 1, 0, 340, 4, 1, 1100, 0, 0, 'Cash', '', '2021-10-07 07:52:29', '2021-10-07 07:52:29'),
(379, 'spr-20211007-033840', 1, 0, 341, 4, 1, 1100, 0, 0, 'Cash', '', '2021-10-07 08:38:40', '2021-10-07 08:38:40'),
(384, 'spr-20211014-035825', 1, 0, 348, 4, 1, 1100, 0, 0, 'Cash', '', '2021-10-14 08:58:25', '2021-10-14 08:58:25'),
(385, 'spr-20211020-011209', 1, 0, 349, 4, 1, 102, 0, 0, 'Cash', '', '2021-10-20 06:12:09', '2021-10-20 06:12:09'),
(386, 'spr-20211114-013929', 1, 0, 353, 4, 1, 374, 0, 0, 'Cash', '', '2021-11-14 06:39:29', '2021-11-14 06:39:29'),
(387, 'spr-20211124-062858', 1, 0, 355, 4, 1, 3161, 0, 0, 'Cash', '', '2021-11-24 11:28:58', '2021-11-24 11:28:58'),
(388, 'spr-20211207-070932', 1, 0, 356, 4, 1, 573, 0, 0, 'Cash', '', '2021-12-07 12:09:32', '2021-12-07 12:09:32'),
(393, 'spr-20220324-044919', 1, NULL, 363, 5, 1, 13210000, NULL, 0, 'Cash', NULL, '2022-03-23 21:49:19', '2022-03-23 21:49:19'),
(394, 'spr-20220517-041509', 1, NULL, 364, 5, 1, 277500, NULL, 22500, 'Cash', NULL, '2022-05-17 09:15:09', '2022-05-17 09:15:09'),
(395, 'spr-20220518-075605', 1, NULL, 365, 5, 1, 3000000, NULL, 0, 'Cash', NULL, '2022-05-18 00:56:05', '2022-05-18 00:56:05'),
(396, 'spr-20220523-071848', 1, NULL, 366, 5, 1, 810000, NULL, 0, 'Cash', NULL, '2022-05-23 00:18:48', '2022-05-23 00:18:48'),
(397, 'spr-20220523-024117', 1, NULL, 367, 5, 1, 588000, NULL, 0, 'Cash', NULL, '2022-05-23 07:41:17', '2022-05-23 07:41:17'),
(398, 'spr-20220623-071006', 1, NULL, 368, 5, 1, 1060000, NULL, 0, 'Cash', NULL, '2022-06-23 00:10:06', '2022-06-23 00:10:06'),
(399, 'spr-20220723-033420', 1, NULL, 369, 5, 3, 810000, NULL, 0, 'Cash', '810000', '2022-07-23 08:34:20', '2022-07-23 08:34:20'),
(400, 'spr-20220723-040455', 1, NULL, 370, 5, 3, 810000, NULL, 0, 'Cash', NULL, '2022-07-23 09:04:55', '2022-07-23 09:04:55'),
(401, 'spr-20220805-083844', 1, NULL, 371, 5, 1, 810000, NULL, 0, 'Cash', NULL, '2022-08-05 01:38:44', '2022-08-05 01:38:44'),
(402, 'spr-20220807-053714', 1, NULL, 372, 5, 1, 250000, NULL, 0, 'Cash', NULL, '2022-08-06 22:37:14', '2022-08-06 22:37:14'),
(403, 'spr-20221009-073908', 1, NULL, 373, 5, 1, 500000, NULL, -500000, 'Cash', NULL, '2022-10-09 00:39:08', '2022-10-09 00:39:08'),
(404, 'spr-20221011-090950', 1, NULL, 374, 5, 1, 250000, NULL, 0, 'Cash', NULL, '2022-10-11 02:09:50', '2022-10-11 02:09:50'),
(405, 'spr-20221013-042150', 1, NULL, 375, 5, 3, 560000, NULL, 0, 'Cash', NULL, '2022-10-12 21:21:50', '2022-10-12 21:21:50');

-- --------------------------------------------------------

--
-- Table structure for table `payment_with_cheque`
--

CREATE TABLE `payment_with_cheque` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_id` int(11) NOT NULL,
  `cheque_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_with_cheque`
--

INSERT INTO `payment_with_cheque` (`id`, `payment_id`, `cheque_no`, `created_at`, `updated_at`) VALUES
(1, 19, '23425235235', '2018-07-01 02:09:48', '2018-07-01 02:09:48'),
(2, 24, '3123123123', '2018-07-10 00:21:32', '2018-07-10 00:21:32'),
(3, 31, '767867678', '2018-08-08 09:36:22', '2018-08-08 09:36:22'),
(4, 34, '3123412', '2018-08-08 22:55:54', '2018-08-08 22:55:54'),
(5, 35, '7765', '2018-08-08 23:32:14', '2018-08-08 23:32:14'),
(6, 44, '3124142412', '2018-08-30 02:07:18', '2018-08-30 02:07:18'),
(7, 51, '6576764646', '2018-09-03 03:08:21', '2018-09-03 03:08:21'),
(8, 53, '111111111', '2018-09-03 03:15:24', '2018-09-03 03:15:24'),
(9, 79, '1111', '2018-10-05 23:51:55', '2018-10-05 23:51:55'),
(10, 147, '221133', '2018-12-03 23:58:35', '2018-12-03 23:58:35'),
(11, 175, '1111', '2019-02-07 05:38:23', '2019-02-07 05:38:23'),
(12, 176, '1111', '2019-02-07 05:54:59', '2019-02-07 05:54:59'),
(13, 178, '420', '2019-02-07 06:07:04', '2019-02-07 06:07:04'),
(14, 216, '12344321', '2019-11-11 03:39:11', '2019-11-11 03:39:11'),
(15, 295, '111122222', '2020-10-18 04:17:24', '2020-10-18 04:17:24');

-- --------------------------------------------------------

--
-- Table structure for table `payment_with_credit_card`
--

CREATE TABLE `payment_with_credit_card` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `customer_stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_with_credit_card`
--

INSERT INTO `payment_with_credit_card` (`id`, `payment_id`, `customer_id`, `customer_stripe_id`, `charge_id`, `created_at`, `updated_at`) VALUES
(4, 294, 1, 'cus_IDw8z9yJZn4qH3', 'ch_1HdUGJKwOmA8HLXePiqphlky', '2020-10-18 04:16:55', '2020-10-18 04:16:55');

-- --------------------------------------------------------

--
-- Table structure for table `payment_with_gift_card`
--

CREATE TABLE `payment_with_gift_card` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_id` int(11) NOT NULL,
  `gift_card_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_with_gift_card`
--

INSERT INTO `payment_with_gift_card` (`id`, `payment_id`, `gift_card_id`, `created_at`, `updated_at`) VALUES
(1, 36, 2, '2018-08-24 20:48:36', '2018-08-24 23:57:35'),
(4, 39, 1, '2018-08-25 01:36:34', '2018-08-25 01:36:34'),
(6, 50, 1, '2018-09-02 22:01:38', '2018-09-02 22:01:38'),
(8, 293, 1, '2020-10-18 04:14:26', '2020-10-18 04:14:26');

-- --------------------------------------------------------

--
-- Table structure for table `payment_with_paypal`
--

CREATE TABLE `payment_with_paypal` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_id` int(11) NOT NULL,
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payrolls`
--

CREATE TABLE `payrolls` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `paying_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payrolls`
--

INSERT INTO `payrolls` (`id`, `reference_no`, `employee_id`, `account_id`, `user_id`, `amount`, `paying_method`, `note`, `created_at`, `updated_at`) VALUES
(8, 'payroll-20190101-055231', 1, 1, 1, 100, '0', '', '2018-12-31 22:52:31', '2018-12-31 22:52:31'),
(9, 'payroll-20191204-113802', 1, 1, 1, 10000, '0', '', '2019-12-04 16:38:02', '2019-12-04 16:38:02'),
(10, 'payroll-20210619-123706', 1, 1, 1, 200, '0', '', '2021-06-19 05:37:06', '2021-06-19 05:37:06');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(4, 'products-edit', 'web', '2018-06-03 00:00:09', '2018-06-03 00:00:09'),
(5, 'products-delete', 'web', '2018-06-03 21:54:22', '2018-06-03 21:54:22'),
(6, 'products-add', 'web', '2018-06-03 23:34:14', '2018-06-03 23:34:14'),
(7, 'products-index', 'web', '2018-06-04 02:34:27', '2018-06-04 02:34:27'),
(8, 'purchases-index', 'web', '2018-06-04 07:03:19', '2018-06-04 07:03:19'),
(9, 'purchases-add', 'web', '2018-06-04 07:12:25', '2018-06-04 07:12:25'),
(10, 'purchases-edit', 'web', '2018-06-04 08:47:36', '2018-06-04 08:47:36'),
(11, 'purchases-delete', 'web', '2018-06-04 08:47:36', '2018-06-04 08:47:36'),
(12, 'sales-index', 'web', '2018-06-04 09:49:08', '2018-06-04 09:49:08'),
(13, 'sales-add', 'web', '2018-06-04 09:49:52', '2018-06-04 09:49:52'),
(14, 'sales-edit', 'web', '2018-06-04 09:49:52', '2018-06-04 09:49:52'),
(15, 'sales-delete', 'web', '2018-06-04 09:49:53', '2018-06-04 09:49:53'),
(16, 'quotes-index', 'web', '2018-06-04 21:05:10', '2018-06-04 21:05:10'),
(17, 'quotes-add', 'web', '2018-06-04 21:05:10', '2018-06-04 21:05:10'),
(18, 'quotes-edit', 'web', '2018-06-04 21:05:10', '2018-06-04 21:05:10'),
(19, 'quotes-delete', 'web', '2018-06-04 21:05:10', '2018-06-04 21:05:10'),
(20, 'transfers-index', 'web', '2018-06-04 21:30:03', '2018-06-04 21:30:03'),
(21, 'transfers-add', 'web', '2018-06-04 21:30:03', '2018-06-04 21:30:03'),
(22, 'transfers-edit', 'web', '2018-06-04 21:30:03', '2018-06-04 21:30:03'),
(23, 'transfers-delete', 'web', '2018-06-04 21:30:03', '2018-06-04 21:30:03'),
(24, 'returns-index', 'web', '2018-06-04 21:50:24', '2018-06-04 21:50:24'),
(25, 'returns-add', 'web', '2018-06-04 21:50:24', '2018-06-04 21:50:24'),
(26, 'returns-edit', 'web', '2018-06-04 21:50:25', '2018-06-04 21:50:25'),
(27, 'returns-delete', 'web', '2018-06-04 21:50:25', '2018-06-04 21:50:25'),
(28, 'customers-index', 'web', '2018-06-04 22:15:54', '2018-06-04 22:15:54'),
(29, 'customers-add', 'web', '2018-06-04 22:15:55', '2018-06-04 22:15:55'),
(30, 'customers-edit', 'web', '2018-06-04 22:15:55', '2018-06-04 22:15:55'),
(31, 'customers-delete', 'web', '2018-06-04 22:15:55', '2018-06-04 22:15:55'),
(32, 'suppliers-index', 'web', '2018-06-04 22:40:12', '2018-06-04 22:40:12'),
(33, 'suppliers-add', 'web', '2018-06-04 22:40:12', '2018-06-04 22:40:12'),
(34, 'suppliers-edit', 'web', '2018-06-04 22:40:12', '2018-06-04 22:40:12'),
(35, 'suppliers-delete', 'web', '2018-06-04 22:40:12', '2018-06-04 22:40:12'),
(36, 'product-report', 'web', '2018-06-24 22:05:33', '2018-06-24 22:05:33'),
(37, 'purchase-report', 'web', '2018-06-24 22:24:56', '2018-06-24 22:24:56'),
(38, 'sale-report', 'web', '2018-06-24 22:33:13', '2018-06-24 22:33:13'),
(39, 'customer-report', 'web', '2018-06-24 22:36:51', '2018-06-24 22:36:51'),
(40, 'due-report', 'web', '2018-06-24 22:39:52', '2018-06-24 22:39:52'),
(41, 'users-index', 'web', '2018-06-24 23:00:10', '2018-06-24 23:00:10'),
(42, 'users-add', 'web', '2018-06-24 23:00:10', '2018-06-24 23:00:10'),
(43, 'users-edit', 'web', '2018-06-24 23:01:30', '2018-06-24 23:01:30'),
(44, 'users-delete', 'web', '2018-06-24 23:01:30', '2018-06-24 23:01:30'),
(45, 'profit-loss', 'web', '2018-07-14 20:50:05', '2018-07-14 20:50:05'),
(46, 'best-seller', 'web', '2018-07-14 21:01:38', '2018-07-14 21:01:38'),
(47, 'daily-sale', 'web', '2018-07-14 21:24:21', '2018-07-14 21:24:21'),
(48, 'monthly-sale', 'web', '2018-07-14 21:30:41', '2018-07-14 21:30:41'),
(49, 'daily-purchase', 'web', '2018-07-14 21:36:46', '2018-07-14 21:36:46'),
(50, 'monthly-purchase', 'web', '2018-07-14 21:48:17', '2018-07-14 21:48:17'),
(51, 'payment-report', 'web', '2018-07-14 22:10:41', '2018-07-14 22:10:41'),
(52, 'warehouse-stock-report', 'web', '2018-07-14 22:16:55', '2018-07-14 22:16:55'),
(53, 'product-qty-alert', 'web', '2018-07-14 22:33:21', '2018-07-14 22:33:21'),
(54, 'supplier-report', 'web', '2018-07-30 02:00:01', '2018-07-30 02:00:01'),
(55, 'expenses-index', 'web', '2018-09-05 00:07:10', '2018-09-05 00:07:10'),
(56, 'expenses-add', 'web', '2018-09-05 00:07:10', '2018-09-05 00:07:10'),
(57, 'expenses-edit', 'web', '2018-09-05 00:07:10', '2018-09-05 00:07:10'),
(58, 'expenses-delete', 'web', '2018-09-05 00:07:11', '2018-09-05 00:07:11'),
(59, 'general_setting', 'web', '2018-10-19 22:10:04', '2018-10-19 22:10:04'),
(60, 'mail_setting', 'web', '2018-10-19 22:10:04', '2018-10-19 22:10:04'),
(61, 'pos_setting', 'web', '2018-10-19 22:10:04', '2018-10-19 22:10:04'),
(62, 'hrm_setting', 'web', '2019-01-02 09:30:23', '2019-01-02 09:30:23'),
(63, 'purchase-return-index', 'web', '2019-01-02 20:45:14', '2019-01-02 20:45:14'),
(64, 'purchase-return-add', 'web', '2019-01-02 20:45:14', '2019-01-02 20:45:14'),
(65, 'purchase-return-edit', 'web', '2019-01-02 20:45:14', '2019-01-02 20:45:14'),
(66, 'purchase-return-delete', 'web', '2019-01-02 20:45:14', '2019-01-02 20:45:14'),
(67, 'account-index', 'web', '2019-01-02 21:06:13', '2019-01-02 21:06:13'),
(68, 'balance-sheet', 'web', '2019-01-02 21:06:14', '2019-01-02 21:06:14'),
(69, 'account-statement', 'web', '2019-01-02 21:06:14', '2019-01-02 21:06:14'),
(70, 'department', 'web', '2019-01-02 21:30:01', '2019-01-02 21:30:01'),
(71, 'attendance', 'web', '2019-01-02 21:30:01', '2019-01-02 21:30:01'),
(72, 'payroll', 'web', '2019-01-02 21:30:01', '2019-01-02 21:30:01'),
(73, 'employees-index', 'web', '2019-01-02 21:52:19', '2019-01-02 21:52:19'),
(74, 'employees-add', 'web', '2019-01-02 21:52:19', '2019-01-02 21:52:19'),
(75, 'employees-edit', 'web', '2019-01-02 21:52:19', '2019-01-02 21:52:19'),
(76, 'employees-delete', 'web', '2019-01-02 21:52:19', '2019-01-02 21:52:19'),
(77, 'user-report', 'web', '2019-01-16 05:48:18', '2019-01-16 05:48:18'),
(78, 'stock_count', 'web', '2019-02-17 09:32:01', '2019-02-17 09:32:01'),
(79, 'adjustment', 'web', '2019-02-17 09:32:02', '2019-02-17 09:32:02'),
(80, 'sms_setting', 'web', '2019-02-22 04:18:03', '2019-02-22 04:18:03'),
(81, 'create_sms', 'web', '2019-02-22 04:18:03', '2019-02-22 04:18:03'),
(82, 'print_barcode', 'web', '2019-03-07 04:02:19', '2019-03-07 04:02:19'),
(83, 'empty_database', 'web', '2019-03-07 04:02:19', '2019-03-07 04:02:19'),
(84, 'customer_group', 'web', '2019-03-07 04:37:15', '2019-03-07 04:37:15'),
(85, 'unit', 'web', '2019-03-07 04:37:15', '2019-03-07 04:37:15'),
(86, 'tax', 'web', '2019-03-07 04:37:15', '2019-03-07 04:37:15'),
(87, 'gift_card', 'web', '2019-03-07 05:29:38', '2019-03-07 05:29:38'),
(88, 'coupon', 'web', '2019-03-07 05:29:38', '2019-03-07 05:29:38'),
(89, 'holiday', 'web', '2019-10-19 07:57:15', '2019-10-19 07:57:15'),
(90, 'warehouse-report', 'web', '2019-10-22 05:00:23', '2019-10-22 05:00:23'),
(91, 'warehouse', 'web', '2020-02-26 05:47:32', '2020-02-26 05:47:32'),
(92, 'brand', 'web', '2020-02-26 05:59:59', '2020-02-26 05:59:59'),
(93, 'billers-index', 'web', '2020-02-26 06:11:15', '2020-02-26 06:11:15'),
(94, 'billers-add', 'web', '2020-02-26 06:11:15', '2020-02-26 06:11:15'),
(95, 'billers-edit', 'web', '2020-02-26 06:11:15', '2020-02-26 06:11:15'),
(96, 'billers-delete', 'web', '2020-02-26 06:11:15', '2020-02-26 06:11:15'),
(97, 'money-transfer', 'web', '2020-03-02 04:41:48', '2020-03-02 04:41:48'),
(98, 'category', 'web', '2020-07-13 11:13:16', '2020-07-13 11:13:16'),
(99, 'delivery', 'web', '2020-07-13 11:13:16', '2020-07-13 11:13:16'),
(100, 'send_notification', 'web', '2020-10-31 05:21:31', '2020-10-31 05:21:31'),
(101, 'today_sale', 'web', '2020-10-31 05:57:04', '2020-10-31 05:57:04'),
(102, 'today_profit', 'web', '2020-10-31 05:57:04', '2020-10-31 05:57:04'),
(103, 'currency', 'web', '2020-11-08 23:23:11', '2020-11-08 23:23:11'),
(104, 'backup_database', 'web', '2020-11-14 23:16:55', '2020-11-14 23:16:55'),
(105, 'reward_point_setting', 'web', '2021-06-27 03:34:42', '2021-06-27 03:34:42');

-- --------------------------------------------------------

--
-- Table structure for table `pos_setting`
--

CREATE TABLE `pos_setting` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `biller_id` int(11) NOT NULL,
  `product_number` int(11) NOT NULL,
  `keybord_active` tinyint(1) NOT NULL,
  `stripe_public_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_secret_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pos_setting`
--

INSERT INTO `pos_setting` (`id`, `customer_id`, `warehouse_id`, `biller_id`, `product_number`, `keybord_active`, `stripe_public_key`, `stripe_secret_key`, `created_at`, `updated_at`) VALUES
(1, 11, 1, 1, 4, 0, '1312', '123412', '2018-09-02 02:17:04', '2022-03-23 19:44:10');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barcode_symbology` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `purchase_unit_id` int(11) NOT NULL,
  `sale_unit_id` int(11) NOT NULL,
  `cost` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` double DEFAULT NULL,
  `alert_quantity` double DEFAULT NULL,
  `promotion` tinyint(4) DEFAULT NULL,
  `promotion_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `starting_date` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_date` date DEFAULT NULL,
  `tax_id` int(11) DEFAULT NULL,
  `tax_method` int(11) DEFAULT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_variant` tinyint(1) DEFAULT NULL,
  `is_batch` tinyint(1) DEFAULT NULL,
  `is_diffPrice` tinyint(1) DEFAULT NULL,
  `is_imei` tinyint(1) DEFAULT NULL,
  `featured` tinyint(4) DEFAULT NULL,
  `product_list` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variant_list` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty_list` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_list` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `code`, `type`, `barcode_symbology`, `brand_id`, `category_id`, `unit_id`, `purchase_unit_id`, `sale_unit_id`, `cost`, `price`, `qty`, `alert_quantity`, `promotion`, `promotion_price`, `starting_date`, `last_date`, `tax_id`, `tax_method`, `image`, `file`, `is_variant`, `is_batch`, `is_diffPrice`, `is_imei`, `featured`, `product_list`, `variant_list`, `qty_list`, `price_list`, `product_details`, `is_active`, `created_at`, `updated_at`) VALUES
(83, 'Mouse Hitam', 'Mouse123', 'standard', 'C128', 3, 22, 1, 1, 1, '100000', '125000', 271, 10, NULL, NULL, NULL, NULL, NULL, 1, '1648096834568e8384959-ad1a-1b95-762b-2861496b886e.png', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-03-23 21:40:42', '2022-10-11 02:09:50'),
(84, 'Monitor PC', 'MP123', 'standard', 'C128', 4, 23, 1, 1, 1, '250000', '280000', 133, 10, NULL, NULL, NULL, NULL, NULL, 1, '164809689199239-396248_point-of-sales-logo.png', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-03-23 21:41:37', '2022-10-12 21:21:50'),
(85, 'keyboard', 'KB123123', 'standard', 'C128', 3, 22, 1, 1, 1, '500000', '650000', 12, 10, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, '', 1, '2022-04-22 20:07:17', '2022-10-24 18:04:14'),
(86, 'hp', '15895123', 'standard', 'C128', 4, 23, 1, 1, 1, '500000', '1000000', 0, 466, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-10-09 00:50:57', '2022-10-24 05:47:48');

-- --------------------------------------------------------

--
-- Table structure for table `product_adjustments`
--

CREATE TABLE `product_adjustments` (
  `id` int(10) UNSIGNED NOT NULL,
  `adjustment_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `qty` double NOT NULL,
  `action` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_batches`
--

CREATE TABLE `product_batches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `batch_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_date` date NOT NULL,
  `qty` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_batches`
--

INSERT INTO `product_batches` (`id`, `product_id`, `batch_no`, `expired_date`, `qty`, `created_at`, `updated_at`) VALUES
(1, 71, '1001', '2023-05-31', 18, '2021-03-07 07:14:05', '2021-11-29 06:22:53'),
(2, 71, '1002', '2023-05-31', 6, '2021-03-07 07:55:06', '2021-06-18 13:32:54'),
(3, 71, '1003', '2023-09-30', 2, '2021-03-09 08:42:13', '2021-09-21 08:49:37'),
(4, 22, '10001', '2021-11-30', 1, '2021-10-20 06:47:09', '2021-10-20 06:47:09');

-- --------------------------------------------------------

--
-- Table structure for table `product_purchases`
--

CREATE TABLE `product_purchases` (
  `id` int(10) UNSIGNED NOT NULL,
  `purchase_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `imei_number` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` double NOT NULL,
  `recieved` double NOT NULL,
  `purchase_unit_id` int(11) NOT NULL,
  `net_unit_cost` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_purchases`
--

INSERT INTO `product_purchases` (`id`, `purchase_id`, `product_id`, `product_batch_id`, `variant_id`, `imei_number`, `qty`, `recieved`, `purchase_unit_id`, `net_unit_cost`, `discount`, `tax_rate`, `tax`, `total`, `created_at`, `updated_at`) VALUES
(372, 136, 84, NULL, NULL, NULL, 155, 155, 1, 250000, 0, 0, 0, 38750000, '2022-03-23 21:42:30', '2022-03-23 21:42:30'),
(373, 136, 83, NULL, NULL, NULL, 100, 100, 1, 100000, 0, 0, 0, 10000000, '2022-03-23 21:42:30', '2022-03-23 21:42:30'),
(374, 137, 84, NULL, NULL, NULL, 1, 1, 1, 250000, 0, 0, 0, 250000, '2022-04-22 19:58:14', '2022-04-22 19:58:14'),
(375, 138, 83, NULL, NULL, NULL, 10, 10, 1, 100000, 0, 0, 0, 1000000, '2022-05-17 08:54:26', '2022-05-17 08:54:26'),
(376, 139, 85, NULL, NULL, NULL, 10, 10, 1, 500000, 0, 0, 0, 5000000, '2022-05-17 09:02:06', '2022-05-17 09:02:06'),
(377, 139, 83, NULL, NULL, NULL, 100, 100, 1, 100000, 0, 0, 0, 10000000, '2022-05-17 09:02:06', '2022-05-17 09:02:06'),
(378, 140, 83, NULL, NULL, NULL, 100, 100, 1, 100000, 0, 0, 0, 10000000, '2022-05-18 00:53:08', '2022-05-18 00:53:08'),
(379, 141, 85, NULL, NULL, NULL, 2, 2, 1, 500000, 0, 0, 0, 1000000, '2022-10-24 18:04:14', '2022-10-24 18:04:14'),
(380, 142, 83, NULL, NULL, NULL, 2, 0, 1, 100000, 0, 0, 0, 200000, '2022-10-24 18:07:31', '2022-10-24 18:07:31'),
(381, 142, 85, NULL, NULL, NULL, 2, 0, 1, 500000, 0, 0, 0, 1000000, '2022-10-24 18:07:31', '2022-10-24 18:07:31');

-- --------------------------------------------------------

--
-- Table structure for table `product_quotation`
--

CREATE TABLE `product_quotation` (
  `id` int(10) UNSIGNED NOT NULL,
  `quotation_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `qty` double NOT NULL,
  `sale_unit_id` int(11) NOT NULL,
  `net_unit_price` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_quotation`
--

INSERT INTO `product_quotation` (`id`, `quotation_id`, `product_id`, `product_batch_id`, `variant_id`, `qty`, `sale_unit_id`, `net_unit_price`, `discount`, `tax_rate`, `tax`, `total`, `created_at`, `updated_at`) VALUES
(39, 16, 84, NULL, NULL, 2, 1, 560000, 0, 0, 0, 1120000, '2022-10-09 16:35:28', '2022-10-09 16:35:28');

-- --------------------------------------------------------

--
-- Table structure for table `product_returns`
--

CREATE TABLE `product_returns` (
  `id` int(10) UNSIGNED NOT NULL,
  `return_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `imei_number` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` double NOT NULL,
  `sale_unit_id` int(11) NOT NULL,
  `net_unit_price` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_returns`
--

INSERT INTO `product_returns` (`id`, `return_id`, `product_id`, `product_batch_id`, `variant_id`, `imei_number`, `qty`, `sale_unit_id`, `net_unit_price`, `discount`, `tax_rate`, `tax`, `total`, `created_at`, `updated_at`) VALUES
(55, 30, 83, NULL, NULL, NULL, 1, 1, 250000, 0, 0, 0, 250000, '2022-08-06 22:42:08', '2022-08-06 22:42:08');

-- --------------------------------------------------------

--
-- Table structure for table `product_sales`
--

CREATE TABLE `product_sales` (
  `id` int(10) UNSIGNED NOT NULL,
  `sale_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `imei_number` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` double NOT NULL,
  `sale_unit_id` int(11) NOT NULL,
  `net_unit_price` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_sales`
--

INSERT INTO `product_sales` (`id`, `sale_id`, `product_id`, `product_batch_id`, `variant_id`, `imei_number`, `qty`, `sale_unit_id`, `net_unit_price`, `discount`, `tax_rate`, `tax`, `total`, `created_at`, `updated_at`) VALUES
(588, 363, 84, NULL, NULL, NULL, 16, 1, 560000, 0, 0, 0, 8960000, '2022-03-23 21:49:19', '2022-05-09 00:40:25'),
(589, 363, 83, NULL, NULL, NULL, 17, 1, 250000, 0, 0, 0, 4250000, '2022-03-23 21:49:19', '2022-05-09 00:40:25'),
(590, 364, 83, NULL, NULL, NULL, 1, 1, 250000, 0, 0, 0, 250000, '2022-05-17 09:15:09', '2022-05-17 09:15:09'),
(591, 365, 83, NULL, NULL, NULL, 12, 1, 250000, 0, 0, 0, 3000000, '2022-05-18 00:56:05', '2022-05-18 00:56:05'),
(592, 366, 84, NULL, NULL, NULL, 1, 1, 560000, 0, 0, 0, 560000, '2022-05-23 00:18:48', '2022-05-23 00:18:48'),
(593, 366, 83, NULL, NULL, NULL, 1, 1, 250000, 0, 0, 0, 250000, '2022-05-23 00:18:48', '2022-05-23 00:18:48'),
(594, 367, 84, NULL, NULL, NULL, 1, 1, 588000, 0, 0, 0, 588000, '2022-05-23 07:41:17', '2022-05-23 07:41:17'),
(595, 368, 84, NULL, NULL, NULL, 1, 1, 560000, 0, 0, 0, 560000, '2022-06-23 00:10:06', '2022-06-23 00:10:06'),
(596, 368, 83, NULL, NULL, NULL, 2, 1, 250000, 0, 0, 0, 500000, '2022-06-23 00:10:06', '2022-06-23 00:10:06'),
(597, 369, 84, NULL, NULL, NULL, 1, 1, 560000, 0, 0, 0, 560000, '2022-07-23 08:34:20', '2022-07-23 08:34:20'),
(598, 369, 83, NULL, NULL, NULL, 1, 1, 250000, 0, 0, 0, 250000, '2022-07-23 08:34:20', '2022-07-23 08:34:20'),
(599, 370, 84, NULL, NULL, NULL, 1, 1, 560000, 0, 0, 0, 560000, '2022-07-23 09:04:55', '2022-07-23 09:04:55'),
(600, 370, 83, NULL, NULL, NULL, 1, 1, 250000, 0, 0, 0, 250000, '2022-07-23 09:04:55', '2022-07-23 09:04:55'),
(601, 371, 84, NULL, NULL, NULL, 1, 1, 560000, 0, 0, 0, 560000, '2022-08-05 01:38:44', '2022-08-05 01:38:44'),
(602, 371, 83, NULL, NULL, NULL, 1, 1, 250000, 0, 0, 0, 250000, '2022-08-05 01:38:44', '2022-08-05 01:38:44'),
(603, 372, 83, NULL, NULL, NULL, 1, 1, 250000, 0, 0, 0, 250000, '2022-08-06 22:37:14', '2022-08-06 22:37:14'),
(604, 373, 83, NULL, NULL, NULL, 2, 1, 250000, 0, 0, 0, 500000, '2022-10-09 00:39:08', '2022-10-09 00:39:08'),
(605, 374, 83, NULL, NULL, NULL, 1, 1, 250000, 0, 0, 0, 250000, '2022-10-11 02:09:50', '2022-10-11 02:09:50'),
(606, 375, 84, NULL, NULL, NULL, 1, 1, 560000, 0, 0, 0, 560000, '2022-10-12 21:21:50', '2022-10-12 21:21:50');

-- --------------------------------------------------------

--
-- Table structure for table `product_transfer`
--

CREATE TABLE `product_transfer` (
  `id` int(10) UNSIGNED NOT NULL,
  `transfer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `imei_number` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` double NOT NULL,
  `purchase_unit_id` int(11) NOT NULL,
  `net_unit_cost` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_transfer`
--

INSERT INTO `product_transfer` (`id`, `transfer_id`, `product_id`, `product_batch_id`, `variant_id`, `imei_number`, `qty`, `purchase_unit_id`, `net_unit_cost`, `tax_rate`, `tax`, `total`, `created_at`, `updated_at`) VALUES
(32, 21, 83, NULL, NULL, NULL, 10, 1, 100000, 0, 0, 1000000, '2022-05-18 01:04:01', '2022-05-18 01:04:01'),
(33, 22, 84, NULL, NULL, NULL, 2, 1, 250000, 0, 0, 500000, '2022-10-09 16:33:24', '2022-10-09 16:33:24');

-- --------------------------------------------------------

--
-- Table structure for table `product_variants`
--

CREATE TABLE `product_variants` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `variant_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `item_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `additional_price` double DEFAULT NULL,
  `qty` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_warehouse`
--

CREATE TABLE `product_warehouse` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `imei_number` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warehouse_id` int(11) NOT NULL,
  `qty` double NOT NULL,
  `price` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_warehouse`
--

INSERT INTO `product_warehouse` (`id`, `product_id`, `product_batch_id`, `variant_id`, `imei_number`, `warehouse_id`, `qty`, `price`, `created_at`, `updated_at`) VALUES
(65, '84', NULL, NULL, NULL, 1, 131, NULL, '2022-03-23 21:42:30', '2022-10-12 21:21:50'),
(66, '83', NULL, NULL, NULL, 1, 161, NULL, '2022-03-23 21:42:30', '2022-10-11 02:09:50'),
(67, '85', NULL, NULL, NULL, 1, 12, NULL, '2022-05-17 09:02:06', '2022-10-24 18:04:14'),
(68, '83', NULL, NULL, NULL, 7, 110, NULL, '2022-05-18 00:53:08', '2022-05-18 01:04:01'),
(69, '84', NULL, NULL, NULL, 7, 2, NULL, '2022-10-09 16:33:24', '2022-10-09 16:33:24');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_cost` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `order_discount` double DEFAULT NULL,
  `shipping_cost` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `paid_amount` double NOT NULL,
  `status` int(11) NOT NULL,
  `payment_status` int(11) NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `reference_no`, `user_id`, `warehouse_id`, `supplier_id`, `item`, `total_qty`, `total_discount`, `total_tax`, `total_cost`, `order_tax_rate`, `order_tax`, `order_discount`, `shipping_cost`, `grand_total`, `paid_amount`, `status`, `payment_status`, `document`, `note`, `created_at`, `updated_at`) VALUES
(136, 'pr-20220324-044230', 1, 1, 1, 2, 255, 0, 0, 48750000, 0, 0, NULL, NULL, 48750000, 0, 1, 1, NULL, NULL, '2022-03-23 21:42:30', '2022-03-23 21:42:30'),
(137, 'pr-20220423-025814', 1, 1, NULL, 1, 1, 0, 0, 250000, 0, 0, NULL, NULL, 250000, 0, 1, 1, NULL, NULL, '2022-04-22 19:58:14', '2022-04-22 19:58:14'),
(138, 'pr-20220517-035426', 1, 1, 1, 1, 10, 0, 0, 1000000, 0, 0, NULL, NULL, 1000000, 0, 1, 1, NULL, NULL, '2022-05-17 08:54:26', '2022-05-17 08:54:26'),
(139, 'pr-20220517-040206', 1, 1, 1, 2, 110, 0, 0, 15000000, 0, 0, NULL, NULL, 15000000, 0, 1, 1, NULL, NULL, '2022-05-17 09:02:06', '2022-05-17 09:02:06'),
(140, 'pr-20220518-075308', 1, 7, 1, 1, 100, 0, 0, 10000000, 11, 1100000, NULL, NULL, 11100000, 0, 1, 1, NULL, NULL, '2022-05-18 00:53:08', '2022-05-18 00:53:08'),
(141, 'pr-20221025-010414', 1, 1, 1, 1, 2, 0, 0, 1000000, 0, 0, NULL, NULL, 1000000, 0, 1, 1, NULL, NULL, '2022-10-24 18:04:14', '2022-10-24 18:04:14'),
(142, 'pr-20221025-010731', 1, 1, 1, 2, 4, 0, 0, 1200000, 0, 0, 10, NULL, 1199990, 0, 4, 1, NULL, NULL, '2022-10-24 18:07:31', '2022-10-24 18:07:31');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_product_return`
--

CREATE TABLE `purchase_product_return` (
  `id` int(10) UNSIGNED NOT NULL,
  `return_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `imei_number` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` double NOT NULL,
  `purchase_unit_id` int(11) NOT NULL,
  `net_unit_cost` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quotations`
--

CREATE TABLE `quotations` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `biller_id` int(11) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_price` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `order_discount` double DEFAULT NULL,
  `shipping_cost` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `quotation_status` int(11) NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quotations`
--

INSERT INTO `quotations` (`id`, `reference_no`, `user_id`, `biller_id`, `supplier_id`, `customer_id`, `warehouse_id`, `item`, `total_qty`, `total_discount`, `total_tax`, `total_price`, `order_tax_rate`, `order_tax`, `order_discount`, `shipping_cost`, `grand_total`, `quotation_status`, `document`, `note`, `created_at`, `updated_at`) VALUES
(16, 'qr-20221009-113528', 1, 8, 1, 21, 7, 1, 2, 0, 0, 1120000, 0, 0, NULL, NULL, 1120000, 1, NULL, NULL, '2022-10-09 16:35:28', '2022-10-09 16:35:28');

-- --------------------------------------------------------

--
-- Table structure for table `returns`
--

CREATE TABLE `returns` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `cash_register_id` int(11) DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `biller_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_price` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `returns`
--

INSERT INTO `returns` (`id`, `reference_no`, `user_id`, `cash_register_id`, `customer_id`, `warehouse_id`, `biller_id`, `account_id`, `item`, `total_qty`, `total_discount`, `total_tax`, `total_price`, `order_tax_rate`, `order_tax`, `grand_total`, `document`, `return_note`, `staff_note`, `created_at`, `updated_at`) VALUES
(30, 'rr-20220807-054208', 1, 5, 11, 1, 1, 1, 1, 1, 0, 0, 250000, 0, 0, 250000, NULL, NULL, NULL, '2022-08-06 22:42:08', '2022-08-06 22:42:08');

-- --------------------------------------------------------

--
-- Table structure for table `return_purchases`
--

CREATE TABLE `return_purchases` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_cost` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reward_point_settings`
--

CREATE TABLE `reward_point_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `per_point_amount` double NOT NULL,
  `minimum_amount` double NOT NULL,
  `duration` int(11) DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reward_point_settings`
--

INSERT INTO `reward_point_settings` (`id`, `per_point_amount`, `minimum_amount`, `duration`, `type`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 300, 1000, 1, 'Year', 1, '2021-06-08 14:40:15', '2021-06-27 04:20:55');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `guard_name`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin can access all data...', 'web', 1, '2018-06-01 22:46:44', '2018-06-02 22:13:05'),
(2, 'Owner', 'Owner of shop...', 'web', 1, '2018-10-22 01:38:13', '2018-10-22 01:38:13'),
(4, 'staff', 'staff has specific acess...', 'web', 1, '2018-06-01 23:05:27', '2018-06-01 23:05:27'),
(5, 'Customer', '', 'web', 1, '2020-11-05 05:43:16', '2020-11-14 23:24:15'),
(6, 'Kasir', NULL, 'web', 1, '2022-03-23 19:00:37', '2022-03-23 19:00:37');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(4, 1),
(4, 2),
(4, 4),
(5, 1),
(5, 2),
(6, 1),
(6, 2),
(6, 4),
(7, 1),
(7, 2),
(7, 4),
(8, 1),
(8, 2),
(8, 4),
(9, 1),
(9, 2),
(9, 4),
(10, 1),
(10, 2),
(11, 1),
(11, 2),
(12, 1),
(12, 2),
(12, 4),
(13, 1),
(13, 2),
(13, 4),
(14, 1),
(14, 2),
(15, 1),
(15, 2),
(16, 1),
(16, 2),
(17, 1),
(17, 2),
(18, 1),
(18, 2),
(19, 1),
(19, 2),
(20, 1),
(20, 2),
(20, 4),
(21, 1),
(21, 2),
(21, 4),
(22, 1),
(22, 2),
(22, 4),
(23, 1),
(23, 2),
(24, 1),
(24, 2),
(24, 4),
(25, 1),
(25, 2),
(25, 4),
(26, 1),
(26, 2),
(27, 1),
(27, 2),
(28, 1),
(28, 2),
(28, 4),
(29, 1),
(29, 2),
(29, 4),
(30, 1),
(30, 2),
(31, 1),
(31, 2),
(32, 1),
(32, 2),
(33, 1),
(33, 2),
(34, 1),
(34, 2),
(35, 1),
(35, 2),
(36, 1),
(36, 2),
(37, 1),
(37, 2),
(38, 1),
(38, 2),
(39, 1),
(39, 2),
(40, 1),
(40, 2),
(41, 1),
(41, 2),
(42, 1),
(42, 2),
(43, 1),
(43, 2),
(44, 1),
(44, 2),
(45, 1),
(45, 2),
(46, 1),
(46, 2),
(47, 1),
(47, 2),
(48, 1),
(48, 2),
(49, 1),
(49, 2),
(50, 1),
(50, 2),
(51, 1),
(51, 2),
(52, 1),
(52, 2),
(53, 1),
(53, 2),
(54, 1),
(54, 2),
(55, 1),
(55, 2),
(55, 4),
(56, 1),
(56, 2),
(56, 4),
(57, 1),
(57, 2),
(57, 4),
(58, 1),
(58, 2),
(59, 1),
(59, 2),
(60, 1),
(60, 2),
(61, 1),
(61, 2),
(62, 1),
(62, 2),
(63, 1),
(63, 2),
(63, 4),
(64, 1),
(64, 2),
(64, 4),
(65, 1),
(65, 2),
(66, 1),
(66, 2),
(67, 1),
(67, 2),
(68, 1),
(68, 2),
(69, 1),
(69, 2),
(70, 1),
(70, 2),
(71, 1),
(71, 2),
(72, 1),
(72, 2),
(73, 1),
(73, 2),
(74, 1),
(74, 2),
(75, 1),
(75, 2),
(76, 1),
(76, 2),
(77, 1),
(77, 2),
(78, 1),
(78, 2),
(79, 1),
(79, 2),
(80, 1),
(80, 2),
(81, 1),
(81, 2),
(82, 1),
(82, 2),
(83, 1),
(83, 2),
(84, 1),
(84, 2),
(85, 1),
(85, 2),
(86, 1),
(86, 2),
(87, 1),
(87, 2),
(88, 1),
(88, 2),
(89, 1),
(89, 2),
(90, 1),
(90, 2),
(91, 1),
(91, 2),
(92, 1),
(92, 2),
(93, 1),
(93, 2),
(94, 1),
(94, 2),
(95, 1),
(95, 2),
(96, 1),
(96, 2),
(97, 1),
(97, 2),
(98, 1),
(98, 2),
(99, 1),
(99, 2),
(100, 1),
(100, 2),
(101, 1),
(101, 2),
(102, 1),
(102, 2),
(103, 1),
(103, 2),
(104, 1),
(104, 2),
(105, 1),
(105, 2),
(12, 6),
(13, 6);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `cash_register_id` int(11) DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `biller_id` int(11) DEFAULT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_price` double NOT NULL,
  `grand_total` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `order_discount` double DEFAULT NULL,
  `coupon_id` int(11) DEFAULT NULL,
  `coupon_discount` double DEFAULT NULL,
  `shipping_cost` double DEFAULT NULL,
  `sale_status` int(11) NOT NULL,
  `payment_status` int(11) NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_amount` double DEFAULT NULL,
  `sale_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `reference_no`, `user_id`, `cash_register_id`, `customer_id`, `warehouse_id`, `biller_id`, `item`, `total_qty`, `total_discount`, `total_tax`, `total_price`, `grand_total`, `order_tax_rate`, `order_tax`, `order_discount`, `coupon_id`, `coupon_discount`, `shipping_cost`, `sale_status`, `payment_status`, `document`, `paid_amount`, `sale_note`, `staff_note`, `created_at`, `updated_at`) VALUES
(363, 'posr-20220324-044919', 1, 5, 11, 1, 1, 2, 33, 0, 0, 13210000, 13210000, 0, 0, 0, NULL, NULL, 0, 1, 4, NULL, 13210000, NULL, NULL, '2022-03-23 21:49:19', '2022-05-09 00:40:25'),
(364, 'posr-20220517-041509', 1, 5, 11, 1, 1, 1, 1, 0, 0, 250000, 277500, 11, 27500, NULL, NULL, NULL, NULL, 1, 4, NULL, 277500, NULL, NULL, '2022-05-17 09:15:09', '2022-05-17 09:15:09'),
(365, 'posr-20220518-075605', 1, 5, 11, 1, 1, 1, 12, 0, 0, 3000000, 3000000, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 3000000, NULL, NULL, '2022-05-18 00:56:05', '2022-05-18 00:56:05'),
(366, 'posr-20220523-071848', 1, 5, 11, 1, 1, 2, 2, 0, 0, 810000, 810000, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 810000, NULL, NULL, '2022-05-23 00:18:48', '2022-05-23 00:18:48'),
(367, 'posr-20220523-024117', 1, 5, 3, 1, 1, 1, 1, 0, 0, 588000, 588000, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 588000, NULL, NULL, '2022-05-23 07:41:17', '2022-05-23 07:41:17'),
(368, 'posr-20220623-071006', 1, 5, 11, 1, 1, 2, 3, 0, 0, 1060000, 1060000, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 1060000, NULL, NULL, '2022-06-23 00:10:06', '2022-06-23 00:10:06'),
(369, 'posr-20220723-033420', 1, 5, 11, 1, 1, 2, 2, 0, 0, 810000, 810000, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 810000, NULL, NULL, '2022-07-23 08:34:20', '2022-07-23 08:34:20'),
(370, 'posr-20220723-040455', 1, 5, 11, 1, 1, 2, 2, 0, 0, 810000, 810000, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 810000, NULL, NULL, '2022-07-23 09:04:55', '2022-07-23 09:04:55'),
(371, 'posr-20220805-083844', 1, 5, 11, 1, 1, 2, 2, 0, 0, 810000, 810000, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 810000, NULL, NULL, '2022-08-05 01:38:44', '2022-08-05 01:38:44'),
(372, 'posr-20220807-053714', 1, 5, 11, 1, 1, 1, 1, 0, 0, 250000, 250000, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 250000, NULL, NULL, '2022-08-06 22:37:14', '2022-08-06 22:37:14'),
(373, 'posr-20221009-073908', 1, 5, 11, 1, 1, 1, 2, 0, 0, 500000, 500000, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 500000, NULL, NULL, '2022-10-09 00:39:08', '2022-10-09 00:39:08'),
(374, 'posr-20221011-090950', 1, 5, 11, 1, 1, 1, 1, 0, 0, 250000, 250000, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 250000, NULL, NULL, '2022-10-11 02:09:50', '2022-10-11 02:09:50'),
(375, 'posr-20221013-042150', 1, 5, 11, 1, 1, 1, 1, 0, 0, 560000, 560000, 0, 0, NULL, NULL, NULL, NULL, 1, 4, NULL, 560000, NULL, NULL, '2022-10-12 21:21:50', '2022-10-12 21:21:50');

-- --------------------------------------------------------

--
-- Table structure for table `stock_counts`
--

CREATE TABLE `stock_counts` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `category_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `initial_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `final_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_adjusted` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stock_counts`
--

INSERT INTO `stock_counts` (`id`, `reference_no`, `warehouse_id`, `category_id`, `brand_id`, `user_id`, `type`, `initial_file`, `final_file`, `note`, `is_adjusted`, `created_at`, `updated_at`) VALUES
(2, 'scr-20221024-124906', 1, NULL, NULL, 1, 'full', '20221024-124906.csv', NULL, NULL, 0, '2022-10-24 05:49:06', '2022-10-24 05:49:06');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vat_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `image`, `company_name`, `vat_number`, `email`, `phone_number`, `address`, `city`, `state`, `postal_code`, `country`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Supplier 1', 'globaltouch.jpg', 'Supplier 1', '', 'Supplier 1@mail.com', '231231', 'Jakarta', 'Jakarta Selatan', '', '', 'Indonesia', 1, '2018-05-12 21:06:34', '2019-12-21 09:58:47');

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` double NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taxes`
--

INSERT INTO `taxes` (`id`, `name`, `rate`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'vat@11', 11, 1, '2018-05-12 08:58:30', '2022-05-17 09:08:02'),
(2, 'vat@15', 15, 1, '2018-05-12 08:58:43', '2018-05-27 22:35:05'),
(3, 'test', 6, 0, '2018-05-27 22:32:54', '2018-05-27 22:34:44'),
(4, 'vat 20', 20, 1, '2018-08-31 23:58:57', '2018-08-31 23:58:57');

-- --------------------------------------------------------

--
-- Table structure for table `transfers`
--

CREATE TABLE `transfers` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `from_warehouse_id` int(11) NOT NULL,
  `to_warehouse_id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_cost` double NOT NULL,
  `shipping_cost` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transfers`
--

INSERT INTO `transfers` (`id`, `reference_no`, `user_id`, `status`, `from_warehouse_id`, `to_warehouse_id`, `item`, `total_qty`, `total_tax`, `total_cost`, `shipping_cost`, `grand_total`, `document`, `note`, `created_at`, `updated_at`) VALUES
(21, 'tr-20220518-080401', 1, 1, 1, 7, 1, 10, 0, 1000000, 0, 1000000, NULL, NULL, '2022-05-18 01:04:01', '2022-05-18 01:04:01'),
(22, 'tr-20221009-113324', 1, 1, 1, 7, 1, 2, 0, 500000, NULL, 500000, NULL, NULL, '2022-10-09 16:33:24', '2022-10-09 16:33:24');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` int(10) UNSIGNED NOT NULL,
  `unit_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `base_unit` int(11) DEFAULT NULL,
  `operator` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `operation_value` double DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `unit_code`, `unit_name`, `base_unit`, `operator`, `operation_value`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'pcs', 'Pieces', 0, '*', 1, 1, '2018-05-12 01:27:46', '2018-08-17 20:41:53'),
(2, 'dozen', 'dozen box', 1, '*', 12, 1, '2018-05-12 08:57:05', '2018-05-12 08:57:05'),
(3, 'cartoon', 'cartoon box', 1, '*', 24, 1, '2018-05-12 08:57:45', '2020-03-11 09:36:59'),
(4, 'm', 'meter', 0, '*', 1, 1, '2018-05-12 08:58:07', '2018-05-27 22:20:57'),
(6, 'test', 'test', 0, '*', 1, 0, '2018-05-27 22:20:20', '2018-05-27 22:20:25'),
(7, 'kg', 'kilogram', 0, '*', 1, 1, '2018-06-24 23:49:26', '2018-06-24 23:49:26'),
(8, '20', 'ni33', 8, '*', 1, 0, '2018-07-31 21:35:51', '2018-07-31 21:40:54'),
(9, 'gm', 'gram', 7, '/', 1000, 1, '2018-08-31 23:06:28', '2018-08-31 23:06:28'),
(10, 'gz', 'goz', 0, '*', 1, 0, '2018-11-29 02:40:29', '2019-03-02 10:53:29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  `biller_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `phone`, `company_name`, `role_id`, `biller_id`, `warehouse_id`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$DWAHTfjcvwCpOCXaJg11MOhsqns03uvlwiSUOQwkHL2YYrtrXPcL6', 'EP8W2uWFlOfo8lUWUApDzLzuvBH71R789pAVbzoma6Jyz0IzIETMWTcS9Nk3', '12112', 'lioncoders', 1, 0, 0, 1, 0, '2018-06-02 02:24:15', '2018-09-04 23:14:15'),
(3, 'dhiman da', 'dhiman@gmail.com', '$2y$10$Fef6vu5E67nm11hX7V5a2u1ThNCQ6n9DRCvRF9TD7stk.Pmt2R6O.', '5ehQM6JIfiQfROgTbB5let0Z93vjLHS7rd9QD5RPNgOxli3xdo7fykU7vtTt', '212', 'lioncoders', 1, 0, 0, 0, 1, '2018-06-13 21:00:31', '2020-11-05 06:06:51'),
(6, 'test', 'test@gmail.com', '$2y$10$TDAeHcVqHyCmurki0wjLZeIl1SngKX3WLOhyTiCoZG3souQfqv.LS', 'KpW1gYYlOFacumklO2IcRfSsbC3KcWUZzOI37gqoqM388Xie6KdhaOHIFEYm', '1234', '212312', 4, 0, 0, 0, 1, '2018-06-23 02:05:33', '2018-06-23 02:13:45'),
(8, 'test', 'test@yahoo.com', '$2y$10$hlMigidZV0j2/IPkgE/xsOSb8WM2IRlsMv.1hg1NM7kfyd6bGX3hC', '', '31231', '', 4, 0, 0, 0, 1, '2018-06-24 21:35:49', '2018-07-02 00:07:39'),
(9, 'staff', 'anda@gmail.com', '$2y$10$kxDbnynB6mB1e1w3pmtbSOlSxy/WwbLPY5TJpMi0Opao5ezfuQjQm', 'dLNcktdks0IxKepKusPC61sjhCPt6UXBhYwXwxbQe89o2ZOQBJo5YZ9oteEA', '3123', '', 4, 5, 1, 1, 0, '2018-07-02 00:08:08', '2018-10-23 20:41:13'),
(10, 'abul', 'abul@alpha.com', '$2y$10$5zgB2OOMyNBNVAd.QOQIju5a9fhNnTqPx5H6s4oFlXhNiF6kXEsPq', 'x7HlttI5bM0vSKViqATaowHFJkLS3PHwfvl7iJdFl5Z1SsyUgWCVbLSgAoi0', '1234', 'anda', 1, 0, 0, 0, 0, '2018-09-07 22:44:48', '2018-09-07 22:44:48'),
(11, 'teststaff', 'a@a.com', '$2y$10$5KNBIIhZzvvZEQEhkHaZGu.Q8bbQNfqYvYgL5N55B8Pb4P5P/b/Li', 'DkHDEcCA0QLfsKPkUK0ckL0CPM6dPiJytNa0k952gyTbeAyMthW3vi7IRitp', '111', 'aa', 4, 5, 1, 0, 1, '2018-10-22 01:47:56', '2018-10-23 01:10:56'),
(12, 'john', 'john@gmail.com', '$2y$10$P/pN2J/uyTYNzQy2kRqWwuSv7P2f6GE/ykBwtHdda7yci3XsfOKWe', 'O0f1WJBVjT5eKYl3Js5l1ixMMtoU6kqrH7hbHDx9I1UCcD9CmiSmCBzHbQZg', '10001', '', 4, 2, 2, 0, 1, '2018-12-29 23:48:37', '2019-03-06 03:59:49'),
(13, 'jjj', 'test@test.com', '$2y$10$/Qx3gHWYWUhlF1aPfzXaCeZA7fRzfSEyCIOnk/dcC4ejO8PsoaalG', '', '1213', '', 1, 0, 0, 0, 1, '2019-01-02 23:08:31', '2019-03-03 03:02:29'),
(19, 'shakalaka', 'shakalaka@gmail.com', '$2y$10$ketLWT0Ib/JXpo00eJlxoeSw.7leS8V1CUGInfbyOWT4F5.Xuo7S2', '', '1212', 'Digital image', 5, 0, 0, 1, 0, '2020-11-08 23:07:16', '2020-11-08 23:07:16'),
(21, 'modon', 'modon@gmail.com', '$2y$10$7VpoeGMkP8QCvL5zLwFW..6MYJ5MRumDLDoX.TTQtClS561rpFHY.', '', '2222', 'modon company', 5, 0, 0, 1, 0, '2020-11-13 06:12:08', '2020-11-13 06:12:08'),
(22, 'dhiman', 'dhiman@gmail.com', '$2y$10$3mPygsC6wwnDtw/Sg85IpuExtUhgaHx52Lwp7Rz0.FNfuFdfKVpRq', '', '+8801111111101', 'lioncoders', 5, 0, 0, 0, 1, '2020-11-15 05:14:58', '2022-05-18 01:17:31'),
(29, 'aryatama045', 'aryatama045@gmail.com', '$2y$10$S.4.fv5b2U7.88GrCO9xmOsaTReCJNZ6TI/zC7vkyeZkRoxhBh7za', NULL, '0812345678', 'it', 1, NULL, NULL, 1, 0, '2022-03-20 21:06:42', '2022-03-20 21:06:42'),
(30, 'kasir', 'kasir@mail.com', '$2y$10$Laj5fiXdn6/Isa/.SZR1AeSUMqJfZQpt7Hj9HvIKGERR44HZKSege', NULL, '012', 'Nama Tokonya', 6, 1, 1, 1, 0, '2022-03-23 19:45:30', '2022-03-23 19:45:30'),
(31, 'qwerty', 'qwerty@mail.com', '$2y$10$7oEZSQ.Nant26OCr4i7RXuM8vbTZ1BiiQJs2hCYR57oPRWmlxm4VW', NULL, '2378975', '-', 6, 2, 7, 1, 0, '2022-05-18 00:58:53', '2022-05-18 00:58:53'),
(32, 'qazx', 'qazx@mail.com', '$2y$10$rV5Jgen0hukpEwBHzRqAN.uQN3wScD2nDfEhgSs8ucehdSyPrsKTy', NULL, '29031847', '-', 5, NULL, NULL, 0, 1, '2022-05-18 01:09:23', '2022-05-18 01:15:40'),
(33, 'cust', 'cust12@mail.com', '$2y$10$d9EU7MPdi6yTL.rr1KTRIuKaynVquv8hWHoaenoyY/NQ0IhP2sU3i', NULL, '1234', 'cust', 5, NULL, NULL, 0, 1, '2022-05-18 01:18:18', '2022-05-18 01:18:57'),
(34, 'yansa', 'yansa@gmail.com', '$2y$10$X4wufAASE8zOygRiN/pPkORa26AEpDoXfTwI.4ep9B3Ia3e5Q6m9y', NULL, '123', 'fgh', 2, NULL, NULL, 1, 0, '2022-05-20 04:16:48', '2022-05-20 04:16:48'),
(35, '123123123', '1232@qwe', '$2y$10$vrwF2HDCyZyTQAjDHsZjuuLrl3.mQEH6Z3UdPfj2EJHeVNzBDeLqK', NULL, '123123', NULL, 4, 1, 1, 1, 1, '2022-07-13 05:51:56', '2022-07-13 05:52:12');

-- --------------------------------------------------------

--
-- Table structure for table `variants`
--

CREATE TABLE `variants` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variants`
--

INSERT INTO `variants` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'Medium', '2019-11-21 06:03:04', '2019-11-24 07:43:52'),
(3, 'Small', '2019-11-21 06:03:04', '2019-11-24 07:43:52'),
(5, 'Large', '2019-11-24 05:07:20', '2019-11-24 07:44:56'),
(9, 'a', '2020-05-18 15:44:14', '2020-05-18 15:44:14'),
(11, 'b', '2020-05-18 15:53:49', '2020-05-18 15:53:49'),
(12, 'variant 1', '2020-09-27 05:08:27', '2020-09-27 05:08:27'),
(13, 'variant 2', '2020-09-27 05:08:27', '2020-09-27 05:08:27'),
(15, 'S', '2020-11-16 05:09:33', '2020-11-16 05:09:33'),
(16, 'M', '2020-11-16 05:09:33', '2020-11-16 05:09:33'),
(17, 'L', '2020-11-16 05:09:33', '2020-11-16 05:09:33');

-- --------------------------------------------------------

--
-- Table structure for table `warehouses`
--

CREATE TABLE `warehouses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `warehouses`
--

INSERT INTO `warehouses` (`id`, `name`, `phone`, `email`, `address`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Rumah', '2312121', 'war1@lion.com', 'Bekasi - Jawa Barat', 1, '2018-05-12 06:51:44', '2022-03-23 19:43:23'),
(2, 'warehouse 2', '1234', '', 'boropul, chittagong', 0, '2018-05-12 07:09:03', '2022-03-23 19:43:14'),
(3, 'test', '', '', 'dqwdeqw', 0, '2018-05-29 23:14:23', '2018-05-29 23:14:47'),
(6, 'gudam', '2121', '', 'gazipur', 0, '2018-08-31 21:53:26', '2018-08-31 21:54:48'),
(7, 'Gudang B', '6789', 'a@mail.com', 'asd', 0, '2022-05-18 00:52:32', '2022-10-11 05:00:49'),
(8, 'Toko 1', '08111111', 'yty@gmail.com', 'jakarta', 0, '2022-10-11 04:27:32', '2022-10-11 05:00:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adjustments`
--
ALTER TABLE `adjustments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `billers`
--
ALTER TABLE `billers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cash_registers`
--
ALTER TABLE `cash_registers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_groups`
--
ALTER TABLE `customer_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deliveries`
--
ALTER TABLE `deliveries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense_categories`
--
ALTER TABLE `expense_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gift_cards`
--
ALTER TABLE `gift_cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gift_card_recharges`
--
ALTER TABLE `gift_card_recharges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `holidays`
--
ALTER TABLE `holidays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hrm_settings`
--
ALTER TABLE `hrm_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `money_transfers`
--
ALTER TABLE `money_transfers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_with_cheque`
--
ALTER TABLE `payment_with_cheque`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_with_credit_card`
--
ALTER TABLE `payment_with_credit_card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_with_gift_card`
--
ALTER TABLE `payment_with_gift_card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_with_paypal`
--
ALTER TABLE `payment_with_paypal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payrolls`
--
ALTER TABLE `payrolls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pos_setting`
--
ALTER TABLE `pos_setting`
  ADD UNIQUE KEY `pos_setting_id_unique` (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_adjustments`
--
ALTER TABLE `product_adjustments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_batches`
--
ALTER TABLE `product_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_purchases`
--
ALTER TABLE `product_purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_quotation`
--
ALTER TABLE `product_quotation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_returns`
--
ALTER TABLE `product_returns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_sales`
--
ALTER TABLE `product_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_transfer`
--
ALTER TABLE `product_transfer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_variants`
--
ALTER TABLE `product_variants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_warehouse`
--
ALTER TABLE `product_warehouse`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_product_return`
--
ALTER TABLE `purchase_product_return`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quotations`
--
ALTER TABLE `quotations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `returns`
--
ALTER TABLE `returns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `return_purchases`
--
ALTER TABLE `return_purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reward_point_settings`
--
ALTER TABLE `reward_point_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_counts`
--
ALTER TABLE `stock_counts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfers`
--
ALTER TABLE `transfers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `variants`
--
ALTER TABLE `variants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `warehouses`
--
ALTER TABLE `warehouses`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `adjustments`
--
ALTER TABLE `adjustments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `billers`
--
ALTER TABLE `billers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cash_registers`
--
ALTER TABLE `cash_registers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `customer_groups`
--
ALTER TABLE `customer_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `deliveries`
--
ALTER TABLE `deliveries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `expense_categories`
--
ALTER TABLE `expense_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gift_cards`
--
ALTER TABLE `gift_cards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `gift_card_recharges`
--
ALTER TABLE `gift_card_recharges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `holidays`
--
ALTER TABLE `holidays`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `hrm_settings`
--
ALTER TABLE `hrm_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT for table `money_transfers`
--
ALTER TABLE `money_transfers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=406;

--
-- AUTO_INCREMENT for table `payment_with_cheque`
--
ALTER TABLE `payment_with_cheque`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `payment_with_credit_card`
--
ALTER TABLE `payment_with_credit_card`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payment_with_gift_card`
--
ALTER TABLE `payment_with_gift_card`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `payment_with_paypal`
--
ALTER TABLE `payment_with_paypal`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payrolls`
--
ALTER TABLE `payrolls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `product_adjustments`
--
ALTER TABLE `product_adjustments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `product_batches`
--
ALTER TABLE `product_batches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_purchases`
--
ALTER TABLE `product_purchases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=382;

--
-- AUTO_INCREMENT for table `product_quotation`
--
ALTER TABLE `product_quotation`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `product_returns`
--
ALTER TABLE `product_returns`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `product_sales`
--
ALTER TABLE `product_sales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=607;

--
-- AUTO_INCREMENT for table `product_transfer`
--
ALTER TABLE `product_transfer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `product_variants`
--
ALTER TABLE `product_variants`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `product_warehouse`
--
ALTER TABLE `product_warehouse`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT for table `purchase_product_return`
--
ALTER TABLE `purchase_product_return`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `quotations`
--
ALTER TABLE `quotations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `returns`
--
ALTER TABLE `returns`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `return_purchases`
--
ALTER TABLE `return_purchases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `reward_point_settings`
--
ALTER TABLE `reward_point_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=376;

--
-- AUTO_INCREMENT for table `stock_counts`
--
ALTER TABLE `stock_counts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transfers`
--
ALTER TABLE `transfers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `variants`
--
ALTER TABLE `variants`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `warehouses`
--
ALTER TABLE `warehouses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
