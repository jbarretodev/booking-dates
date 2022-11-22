-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2022 at 08:08 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `booking_test_1`
--

-- --------------------------------------------------------

--
-- Table structure for table `cmn_branches`
--

CREATE TABLE `cmn_branches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cmn_branches`
--

INSERT INTO `cmn_branches` (`id`, `name`, `phone`, `email`, `address`, `order`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Example Branch', '01111111111', 'demo@example.com', 'Example Address', 0, 1, 1, 1, '2021-10-27 05:18:33', '2022-01-14 06:50:10');

-- --------------------------------------------------------

--
-- Table structure for table `cmn_business_holidays`
--

CREATE TABLE `cmn_business_holidays` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cmn_branch_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cmn_business_holidays`
--

INSERT INTO `cmn_business_holidays` (`id`, `cmn_branch_id`, `title`, `start_date`, `end_date`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(4, 1, 'rewewr', '2021-10-11', '2021-10-12', 1, 1, '2021-10-31 05:38:09', '2021-10-31 05:40:03'),
(5, 1, 'rewr', '2021-10-19', '2021-10-20', 1, NULL, '2021-10-31 05:39:57', '2021-10-31 05:39:57'),
(11, 1, 'test', '2021-12-21', '2021-12-21', 1, NULL, '2021-12-17 02:46:01', '2021-12-17 02:46:01');

-- --------------------------------------------------------

--
-- Table structure for table `cmn_business_hours`
--

CREATE TABLE `cmn_business_hours` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `day` int(11) NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `is_off_day` tinyint(1) NOT NULL DEFAULT 0,
  `cmn_branch_id` bigint(20) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cmn_business_hours`
--

INSERT INTO `cmn_business_hours` (`id`, `day`, `start_time`, `end_time`, `is_off_day`, `cmn_branch_id`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(36, 0, '07:00:00', '23:55:00', 1, 1, 1, NULL, NULL, '2022-01-14 06:39:17'),
(37, 1, '07:00:00', '23:45:00', 0, 1, 1, NULL, NULL, '2022-01-14 06:39:17'),
(38, 2, '07:00:00', '23:55:00', 0, 1, 1, NULL, NULL, '2022-01-14 06:39:17'),
(39, 3, '07:00:00', '23:55:00', 0, 1, 1, NULL, NULL, '2022-01-14 06:39:17'),
(40, 4, '07:00:00', '23:45:00', 0, 1, 1, NULL, NULL, '2022-01-14 06:39:17'),
(41, 5, '07:00:00', '23:55:00', 0, 1, 1, NULL, NULL, '2022-01-14 06:39:17'),
(42, 6, '07:00:00', '23:45:00', 0, 1, 1, NULL, NULL, '2022-01-14 06:39:17');

-- --------------------------------------------------------

--
-- Table structure for table `cmn_companies`
--

CREATE TABLE `cmn_companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `web_address` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_link` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cmn_companies`
--

INSERT INTO `cmn_companies` (`id`, `name`, `address`, `phone`, `mobile`, `email`, `web_address`, `image_link`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(9, 'Example Company', 'Example Company Address', '01111111111', '01111111111', 'demo@example.com', 'www.example.com', NULL, 1, 1, '2021-10-18 04:17:27', '2022-01-14 06:41:36');

-- --------------------------------------------------------

--
-- Table structure for table `cmn_currency_setups`
--

CREATE TABLE `cmn_currency_setups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cmn_currency_setups`
--

INSERT INTO `cmn_currency_setups` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, '$', 'USD', '2021-10-31 12:00:00', '2021-12-24 07:13:22');

-- --------------------------------------------------------

--
-- Table structure for table `cmn_customers`
--

CREATE TABLE `cmn_customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `full_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_no` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(160) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street_address` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street_number` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cmn_customers`
--

INSERT INTO `cmn_customers` (`id`, `user_id`, `full_name`, `phone_no`, `email`, `dob`, `country`, `state`, `postal_code`, `city`, `street_address`, `street_number`, `remarks`, `created_at`, `updated_at`) VALUES
(1, 29, 'Web User', '448801111111', 'webuser@example.com', NULL, NULL, NULL, NULL, NULL, 'Example customer address', NULL, NULL, '2021-11-18 18:11:07', '2022-01-22 04:33:17'),
(39, NULL, 'example customer', '8806732625222', 'demo@example.com', NULL, NULL, 'Dhaka', '1230', 'Inside Dhaka Metro City', 'Demo address', NULL, NULL, '2022-01-21 22:22:32', '2022-01-21 22:22:32'),
(40, NULL, 'example customer 2', '8801672886562', 'demo1@gmail.com', NULL, NULL, 'Dhaka', '1230', 'Inside Dhaka Metro City', 'demo address', NULL, NULL, '2022-01-22 01:47:48', '2022-01-22 01:47:48');

-- --------------------------------------------------------

--
-- Table structure for table `cmn_languages`
--

CREATE TABLE `cmn_languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rtl` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cmn_languages`
--

INSERT INTO `cmn_languages` (`id`, `name`, `code`, `rtl`, `created_at`, `updated_at`) VALUES
(1, 'English', 'en', 0, NULL, NULL);

INSERT INTO `cmn_languages` (`id`, `name`, `code`, `rtl`, `created_at`, `updated_at`) VALUES
    (2, 'Español', 'es', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cmn_payment_infos`
--

CREATE TABLE `cmn_payment_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `paymentable_id` int(11) NOT NULL,
  `paymentable_type` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_type` int(11) NOT NULL COMMENT '1=local,2=paypal',
  `payment_amount` decimal(18,2) NOT NULL,
  `payment_fee` decimal(18,2) NOT NULL,
  `currency_code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payee_email_address` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payee_crd_no` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_create_time` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_details` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cmn_payment_types`
--

CREATE TABLE `cmn_payment_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 1,
  `order` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cmn_payment_types`
--

INSERT INTO `cmn_payment_types` (`id`, `name`, `type`, `order`, `status`, `created_by`, `modified_by`, `created_at`, `updated_at`) VALUES
(1, 'Local Payment', 1, 1, 1, 1, NULL, NULL, NULL),
(2, 'Paypal', 2, 2, 1, 1, NULL, NULL, NULL),
(3, 'Stripe', 3, 3, 1, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cmn_paypal_api_configs`
--

CREATE TABLE `cmn_paypal_api_configs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cmn_payment_type_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_secret` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sandbox` tinyint(4) NOT NULL,
  `charge_type` tinyint(4) NOT NULL COMMENT '1=addition, 2=deduction',
  `charge_percentage` decimal(4,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cmn_paypal_api_configs`
--

INSERT INTO `cmn_paypal_api_configs` (`id`, `cmn_payment_type_id`, `client_id`, `client_secret`, `sandbox`, `charge_type`, `charge_percentage`, `created_at`, `updated_at`) VALUES
(1, 2, 'test_id', 'test_key', 1, 1, '0.00', NULL, '2022-01-23 07:56:53');

-- --------------------------------------------------------

--
-- Table structure for table `cmn_stripe_api_configs`
--

CREATE TABLE `cmn_stripe_api_configs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cmn_payment_type_id` bigint(20) UNSIGNED NOT NULL,
  `api_key` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_secret` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `charge_type` tinyint(4) NOT NULL COMMENT '1=addition, 2=deduction',
  `charge_percentage` decimal(4,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cmn_translations`
--

CREATE TABLE `cmn_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cmn_language_id` bigint(20) UNSIGNED NOT NULL,
  `lang_key` varchar(1500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_value` varchar(1500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cmn_translations`
--

INSERT INTO `cmn_translations` (`id`, `cmn_language_id`, `lang_key`, `lang_value`, `created_at`, `updated_at`) VALUES
(1, 1, 'Book An Appointment', 'Book An Appointment', '2022-04-15 04:30:58', '2022-04-15 04:30:58'),
(2, 1, 'Total Services', 'Total Services', '2022-04-15 04:30:58', '2022-04-15 04:30:58'),
(3, 1, 'Expertise Staffs', 'Expertise Staffs', '2022-04-15 04:30:58', '2022-04-15 04:30:58'),
(4, 1, 'Satisfied Clients', 'Satisfied Clients', '2022-04-15 04:30:58', '2022-04-15 04:30:58'),
(5, 1, 'Done Services', 'Done Services', '2022-04-15 04:30:58', '2022-04-15 04:30:58'),
(6, 1, 'Available Our Top and Popular Services', 'Available Our Top and Popular Services', '2022-04-15 04:30:58', '2022-04-15 04:30:58'),
(7, 1, 'We calculate top services based on our client feedback and number of provided services.', 'We calculate top services based on our client feedback and number of provided services.', '2022-04-15 04:30:58', '2022-04-15 04:30:58'),
(8, 1, 'Learn More', 'Learn More', '2022-04-15 04:30:58', '2022-04-15 04:30:58'),
(9, 1, 'Recently Joined New Team Members Us', 'Recently Joined New Team Members Us', '2022-04-15 04:30:58', '2022-04-15 04:30:58'),
(10, 1, 'We are offering, you can take service from our new team member, hope they will provide to you best services.', 'We are offering, you can take service from our new team member, hope they will provide to you best services.', '2022-04-15 04:30:58', '2022-04-15 04:30:58'),
(11, 1, 'Book Now', 'Book Now', '2022-04-15 04:30:58', '2022-04-15 04:30:58'),
(12, 1, 'Valuable Clients Testimonials', 'Valuable Clients Testimonials', '2022-04-15 04:30:58', '2022-04-15 04:30:58'),
(13, 1, 'We got testimonials from our valued clients both online and offline and they are very much happy.', 'We got testimonials from our valued clients both online and offline and they are very much happy.', '2022-04-15 04:30:58', '2022-04-15 04:30:58'),
(14, 1, 'Sign Up', 'Sign Up', '2022-04-15 04:30:59', '2022-04-15 04:30:59'),
(15, 1, 'Sign In', 'Sign In', '2022-04-15 04:30:59', '2022-04-15 04:30:59'),
(16, 1, 'Home', 'Home', '2022-04-15 04:30:59', '2022-04-15 04:30:59'),
(17, 1, 'Service', 'Service', '2022-04-15 04:30:59', '2022-04-15 04:30:59'),
(18, 1, 'Our Team', 'Our Team', '2022-04-15 04:30:59', '2022-04-15 04:30:59'),
(19, 1, 'Photo Galley', 'Photo Galley', '2022-04-15 04:30:59', '2022-04-15 04:30:59'),
(20, 1, 'FAQ', 'FAQ', '2022-04-15 04:30:59', '2022-04-15 04:30:59'),
(21, 1, 'About Us', 'About Us', '2022-04-15 04:30:59', '2022-04-15 04:30:59'),
(22, 1, 'Contact Us', 'Contact Us', '2022-04-15 04:30:59', '2022-04-15 04:30:59'),
(23, 1, 'About Service', 'About Service', '2022-04-15 04:30:59', '2022-04-15 04:30:59'),
(24, 1, 'Website Navigation Links', 'Website Navigation Links', '2022-04-15 04:30:59', '2022-04-15 04:30:59'),
(25, 1, 'Terms & Conditions', 'Terms & Conditions', '2022-04-15 04:30:59', '2022-04-15 04:30:59'),
(26, 1, 'Contact Information', 'Contact Information', '2022-04-15 04:30:59', '2022-04-15 04:30:59'),
(27, 1, 'Phone', 'Phone', '2022-04-15 04:30:59', '2022-04-15 04:30:59'),
(28, 1, 'Email to', 'Email to', '2022-04-15 04:30:59', '2022-04-15 04:30:59'),
(29, 1, 'Website', 'Website', '2022-04-15 04:30:59', '2022-04-15 04:30:59'),
(30, 1, 'Address', 'Address', '2022-04-15 04:30:59', '2022-04-15 04:30:59'),
(31, 1, 'Payment Method', 'Payment Method', '2022-04-15 04:30:59', '2022-04-15 04:30:59'),
(32, 1, 'Email', 'Email', '2022-04-15 04:31:44', '2022-04-15 04:31:44'),
(33, 1, 'Send Password Reset Link', 'Send Password Reset Link', '2022-04-15 04:31:44', '2022-04-15 04:31:44'),
(34, 1, 'Sign in existing account', 'Sign in existing account', '2022-04-15 04:31:44', '2022-04-15 04:31:44'),
(35, 1, 'Welcome back', 'Welcome back', '2022-04-15 04:37:38', '2022-04-15 04:37:38'),
(36, 1, 'Please sign in to your account.', 'Please sign in to your account.', '2022-04-15 04:37:38', '2022-04-15 04:37:38'),
(37, 1, 'No account', 'No account', '2022-04-15 04:37:38', '2022-04-15 04:37:38'),
(38, 1, 'now', 'now', '2022-04-15 04:37:38', '2022-04-15 04:37:38'),
(39, 1, 'Eamil Or Username', 'Eamil Or Username', '2022-04-15 04:37:38', '2022-04-15 04:37:38'),
(40, 1, 'Password', 'Password', '2022-04-15 04:37:38', '2022-04-15 04:37:38'),
(41, 1, 'Remember Me', 'Remember Me', '2022-04-15 04:37:38', '2022-04-15 04:37:38'),
(42, 1, 'Click to Login', 'Click to Login', '2022-04-15 04:37:38', '2022-04-15 04:37:38'),
(43, 1, 'Forgot Your Password?', 'Forgot Your Password?', '2022-04-15 04:37:38', '2022-04-15 04:37:38'),
(44, 1, 'Go to Website', 'Go to Website', '2022-04-15 04:37:38', '2022-04-15 04:37:38'),
(45, 1, 'Welcome to', 'Welcome to', '2022-04-15 04:38:32', '2022-04-15 04:38:32'),
(46, 1, 'It only takes a few seconds to create your account', 'It only takes a few seconds to create your account', '2022-04-15 04:38:32', '2022-04-15 04:38:32'),
(47, 1, 'Email address', 'Email address', '2022-04-15 04:38:32', '2022-04-15 04:38:32'),
(48, 1, 'User Name', 'User Name', '2022-04-15 04:38:32', '2022-04-15 04:38:32'),
(49, 1, 'Name', 'Name', '2022-04-15 04:38:32', '2022-04-15 04:38:32'),
(50, 1, 'Name here', 'Name here', '2022-04-15 04:38:32', '2022-04-15 04:38:32'),
(51, 1, 'Password here', 'Password here', '2022-04-15 04:38:32', '2022-04-15 04:38:32'),
(52, 1, 'Repeat Password', 'Repeat Password', '2022-04-15 04:38:32', '2022-04-15 04:38:32'),
(53, 1, 'Repeat Password here', 'Repeat Password here', '2022-04-15 04:38:32', '2022-04-15 04:38:32'),
(54, 1, 'Terms and Conditions', 'Terms and Conditions', '2022-04-15 04:38:32', '2022-04-15 04:38:32'),
(55, 1, 'Already have an account', 'Already have an account', '2022-04-15 04:38:32', '2022-04-15 04:38:32'),
(56, 1, 'Create Account', 'Create Account', '2022-04-15 04:38:32', '2022-04-15 04:38:32'),
(57, 1, 'Booking Info', 'Booking Info', '2022-04-15 05:42:06', '2022-04-15 05:42:06'),
(58, 1, 'Date From', 'Date From', '2022-04-15 05:42:06', '2022-04-15 05:42:06'),
(59, 1, 'Date To', 'Date To', '2022-04-15 05:42:06', '2022-04-15 05:42:06'),
(60, 1, 'Employee', 'Employee', '2022-04-15 05:42:06', '2022-04-15 05:42:06'),
(61, 1, 'Customer', 'Customer', '2022-04-15 05:42:06', '2022-04-15 05:42:06'),
(62, 1, 'Service Status', 'Service Status', '2022-04-15 05:42:06', '2022-04-15 05:42:06'),
(63, 1, 'Booking No', 'Booking No', '2022-04-15 05:42:06', '2022-04-15 05:42:06'),
(64, 1, 'Filter', 'Filter', '2022-04-15 05:42:06', '2022-04-15 05:42:06'),
(65, 1, 'Booking No#', 'Booking No#', '2022-04-15 05:42:06', '2022-04-15 05:42:06'),
(66, 1, 'Send notification by email', 'Send notification by email', '2022-04-15 05:42:06', '2022-04-15 05:42:06'),
(67, 1, 'Close', 'Close', '2022-04-15 05:42:06', '2022-04-15 05:42:06'),
(68, 1, 'Save Change', 'Save Change', '2022-04-15 05:42:06', '2022-04-15 05:42:06'),
(69, 1, 'Add mutiple:', 'Add mutiple:', '2022-04-15 05:42:35', '2022-04-15 05:42:35'),
(70, 1, 'Yes', 'Yes', '2022-04-15 05:42:35', '2022-04-15 05:42:35'),
(71, 1, 'No', 'No', '2022-04-15 05:42:35', '2022-04-15 05:42:35'),
(72, 1, 'Date', 'Date', '2022-04-15 05:42:35', '2022-04-15 05:42:35'),
(73, 1, 'Previous day', 'Previous day', '2022-04-15 05:42:35', '2022-04-15 05:42:35'),
(74, 1, 'Next day', 'Next day', '2022-04-15 05:42:35', '2022-04-15 05:42:35'),
(75, 1, 'Load', 'Load', '2022-04-15 05:42:35', '2022-04-15 05:42:35'),
(76, 1, 'Total Booking', 'Total Booking', '2022-04-15 05:42:35', '2022-04-15 05:42:35'),
(77, 1, 'Done', 'Done', '2022-04-15 05:42:35', '2022-04-15 05:42:35'),
(78, 1, 'Cancel', 'Cancel', '2022-04-15 05:42:35', '2022-04-15 05:42:35'),
(79, 1, 'Approved', 'Approved', '2022-04-15 05:42:35', '2022-04-15 05:42:35'),
(80, 1, 'Processing', 'Processing', '2022-04-15 05:42:35', '2022-04-15 05:42:35'),
(81, 1, 'Pending', 'Pending', '2022-04-15 05:42:35', '2022-04-15 05:42:35'),
(82, 1, 'Add Schedule', 'Add Schedule', '2022-04-15 05:42:35', '2022-04-15 05:42:35'),
(83, 1, 'Add/Edit Service', 'Add/Edit Service', '2022-04-15 05:42:35', '2022-04-15 05:42:35'),
(84, 1, 'Branch', 'Branch', '2022-04-15 05:42:35', '2022-04-15 05:42:35'),
(85, 1, 'Category', 'Category', '2022-04-15 05:42:35', '2022-04-15 05:42:35'),
(86, 1, 'Select One', 'Select One', '2022-04-15 05:42:35', '2022-04-15 05:42:35'),
(87, 1, 'Staff', 'Staff', '2022-04-15 05:42:35', '2022-04-15 05:42:35'),
(88, 1, 'Service Date', 'Service Date', '2022-04-15 05:42:36', '2022-04-15 05:42:36'),
(89, 1, 'Add Customer', 'Add Customer', '2022-04-15 05:42:36', '2022-04-15 05:42:36'),
(90, 1, 'Payment By', 'Payment By', '2022-04-15 05:42:36', '2022-04-15 05:42:36'),
(91, 1, 'Paid Amount', 'Paid Amount', '2022-04-15 05:42:36', '2022-04-15 05:42:36'),
(92, 1, 'Paid/Unpaid', 'Paid/Unpaid', '2022-04-15 05:42:36', '2022-04-15 05:42:36'),
(93, 1, 'Application Status', 'Application Status', '2022-04-15 05:42:36', '2022-04-15 05:42:36'),
(94, 1, 'Remarks', 'Remarks', '2022-04-15 05:42:36', '2022-04-15 05:42:36'),
(95, 1, 'Send booking notification by email', 'Send booking notification by email', '2022-04-15 05:42:36', '2022-04-15 05:42:36'),
(96, 1, 'Customer Info', 'Customer Info', '2022-04-15 05:44:27', '2022-04-15 05:44:27'),
(97, 1, 'Customer Name', 'Customer Name', '2022-04-15 05:44:27', '2022-04-15 05:44:27'),
(98, 1, 'Full name', 'Full name', '2022-04-15 05:44:27', '2022-04-15 05:44:27'),
(99, 1, 'System User', 'System User', '2022-04-15 05:44:27', '2022-04-15 05:44:27'),
(100, 1, 'Customer Phone', 'Customer Phone', '2022-04-15 05:44:27', '2022-04-15 05:44:27'),
(101, 1, 'Phone Number', 'Phone Number', '2022-04-15 05:44:27', '2022-04-15 05:44:27'),
(102, 1, 'Date of Birth', 'Date of Birth', '2022-04-15 05:44:27', '2022-04-15 05:44:27'),
(103, 1, 'Street Address', 'Street Address', '2022-04-15 05:44:27', '2022-04-15 05:44:27'),
(104, 1, 'Country', 'Country', '2022-04-15 05:44:27', '2022-04-15 05:44:27'),
(105, 1, 'City', 'City', '2022-04-15 05:44:27', '2022-04-15 05:44:27'),
(106, 1, 'State Name', 'State Name', '2022-04-15 05:44:27', '2022-04-15 05:44:27'),
(107, 1, 'Postal Code', 'Postal Code', '2022-04-15 05:44:27', '2022-04-15 05:44:27'),
(108, 1, 'Customer Information', 'Customer Information', '2022-04-15 05:44:27', '2022-04-15 05:44:27'),
(109, 1, 'Add New Customer', 'Add New Customer', '2022-04-15 05:44:28', '2022-04-15 05:44:28'),
(110, 1, 'Appointment Booking Dashboard', 'Appointment Booking Dashboard', '2022-04-15 05:45:13', '2022-04-15 05:45:13'),
(111, 1, 'Add New Booking', 'Add New Booking', '2022-04-15 05:45:13', '2022-04-15 05:45:13'),
(112, 1, 'Total Done', 'Total Done', '2022-04-15 05:45:13', '2022-04-15 05:45:13'),
(113, 1, 'Total Cancel', 'Total Cancel', '2022-04-15 05:45:13', '2022-04-15 05:45:13'),
(114, 1, 'Total Approved', 'Total Approved', '2022-04-15 05:45:13', '2022-04-15 05:45:13'),
(115, 1, 'Processing & Pending', 'Processing & Pending', '2022-04-15 05:45:13', '2022-04-15 05:45:13'),
(116, 1, 'Today\'s Service statistics', 'Today\'s Service statistics', '2022-04-15 05:45:13', '2022-04-15 05:45:13'),
(117, 1, 'Show all service statistics based on user branch permission.', 'Show all service statistics based on user branch permission.', '2022-04-15 05:45:13', '2022-04-15 05:45:13'),
(118, 1, 'Total', 'Total', '2022-04-15 05:45:13', '2022-04-15 05:45:13'),
(119, 1, 'Today\'s Income & Other Statistics', 'Today\'s Income & Other Statistics', '2022-04-15 05:45:13', '2022-04-15 05:45:13'),
(120, 1, 'Total Income', 'Total Income', '2022-04-15 05:45:13', '2022-04-15 05:45:13'),
(121, 1, 'Total Due', 'Total Due', '2022-04-15 05:45:13', '2022-04-15 05:45:13'),
(122, 1, 'Total Cash Payment', 'Total Cash Payment', '2022-04-15 05:45:13', '2022-04-15 05:45:13'),
(123, 1, 'Total Online Payment', 'Total Online Payment', '2022-04-15 05:45:13', '2022-04-15 05:45:13'),
(124, 1, 'Today', 'Today', '2022-04-15 05:45:13', '2022-04-15 05:45:13'),
(125, 1, 'Month', 'Month', '2022-04-15 05:45:13', '2022-04-15 05:45:13'),
(126, 1, 'Top Booking Service', 'Top Booking Service', '2022-04-15 05:45:13', '2022-04-15 05:45:13'),
(127, 1, 'Add or update off day', 'Add or update off day', '2022-04-15 05:47:09', '2022-04-15 05:47:09'),
(128, 1, 'Subject', 'Subject', '2022-04-15 05:47:09', '2022-04-15 05:47:09'),
(129, 1, 'Start date', 'Start date', '2022-04-15 05:47:09', '2022-04-15 05:47:09'),
(130, 1, 'End date', 'End date', '2022-04-15 05:47:09', '2022-04-15 05:47:09'),
(131, 1, 'Edit', 'Edit', '2022-04-15 05:47:09', '2022-04-15 05:47:09'),
(132, 1, 'Delete', 'Delete', '2022-04-15 05:47:09', '2022-04-15 05:47:09'),
(133, 1, 'Staff / Employee Info', 'Staff / Employee Info', '2022-04-15 05:47:09', '2022-04-15 05:47:09'),
(134, 1, 'Basic Profile', 'Basic Profile', '2022-04-15 05:47:10', '2022-04-15 05:47:10'),
(135, 1, 'Available Service', 'Available Service', '2022-04-15 05:47:10', '2022-04-15 05:47:10'),
(136, 1, 'Service Time', 'Service Time', '2022-04-15 05:47:10', '2022-04-15 05:47:10'),
(137, 1, 'Day Off', 'Day Off', '2022-04-15 05:47:10', '2022-04-15 05:47:10'),
(138, 1, 'Image', 'Image', '2022-04-15 05:47:10', '2022-04-15 05:47:10'),
(139, 1, 'Staff Name', 'Staff Name', '2022-04-15 05:47:10', '2022-04-15 05:47:10'),
(140, 1, 'Staff/Employee Name', 'Staff/Employee Name', '2022-04-15 05:47:10', '2022-04-15 05:47:10'),
(141, 1, 'Staff ID', 'Staff ID', '2022-04-15 05:47:10', '2022-04-15 05:47:10'),
(142, 1, 'Staff/Employee ID', 'Staff/Employee ID', '2022-04-15 05:47:10', '2022-04-15 05:47:10'),
(143, 1, 'Phone No', 'Phone No', '2022-04-15 05:47:10', '2022-04-15 05:47:10'),
(144, 1, 'Department', 'Department', '2022-04-15 05:47:10', '2022-04-15 05:47:10'),
(145, 1, 'Designation', 'Designation', '2022-04-15 05:47:10', '2022-04-15 05:47:10'),
(146, 1, 'Gender', 'Gender', '2022-04-15 05:47:10', '2022-04-15 05:47:10'),
(147, 1, 'Specialist', 'Specialist', '2022-04-15 05:47:10', '2022-04-15 05:47:10'),
(148, 1, 'Present Address', 'Present Address', '2022-04-15 05:47:10', '2022-04-15 05:47:10'),
(149, 1, 'Permanent Address', 'Permanent Address', '2022-04-15 05:47:10', '2022-04-15 05:47:10'),
(150, 1, 'Note', 'Note', '2022-04-15 05:47:10', '2022-04-15 05:47:10'),
(151, 1, 'Visibility Status', 'Visibility Status', '2022-04-15 05:47:10', '2022-04-15 05:47:10'),
(152, 1, 'Day', 'Day', '2022-04-15 05:47:10', '2022-04-15 05:47:10'),
(153, 1, 'Start Time', 'Start Time', '2022-04-15 05:47:10', '2022-04-15 05:47:10'),
(154, 1, 'End Time', 'End Time', '2022-04-15 05:47:10', '2022-04-15 05:47:10'),
(155, 1, 'Break Start', 'Break Start', '2022-04-15 05:47:10', '2022-04-15 05:47:10'),
(156, 1, 'Break End', 'Break End', '2022-04-15 05:47:10', '2022-04-15 05:47:10'),
(157, 1, 'Weekly Holiday', 'Weekly Holiday', '2022-04-15 05:47:10', '2022-04-15 05:47:10'),
(158, 1, 'Monday', 'Monday', '2022-04-15 05:47:10', '2022-04-15 05:47:10'),
(159, 1, 'Tuesday', 'Tuesday', '2022-04-15 05:47:11', '2022-04-15 05:47:11'),
(160, 1, 'Wednesday', 'Wednesday', '2022-04-15 05:47:11', '2022-04-15 05:47:11'),
(161, 1, 'Thursday', 'Thursday', '2022-04-15 05:47:11', '2022-04-15 05:47:11'),
(162, 1, 'Friday', 'Friday', '2022-04-15 05:47:11', '2022-04-15 05:47:11'),
(163, 1, 'Saturday', 'Saturday', '2022-04-15 05:47:11', '2022-04-15 05:47:11'),
(164, 1, 'Staff Info', 'Staff Info', '2022-04-15 05:47:11', '2022-04-15 05:47:11'),
(165, 1, 'Add New Staff', 'Add New Staff', '2022-04-15 05:47:11', '2022-04-15 05:47:11'),
(166, 1, 'Search', 'Search', '2022-04-15 05:48:40', '2022-04-15 05:48:40'),
(167, 1, 'Messages', 'Messages', '2022-04-15 05:48:40', '2022-04-15 05:48:40'),
(168, 1, 'Mark all as read', 'Mark all as read', '2022-04-15 05:48:40', '2022-04-15 05:48:40'),
(169, 1, 'See all messages', 'See all messages', '2022-04-15 05:48:40', '2022-04-15 05:48:40'),
(170, 1, 'You have 4 new notification', 'You have 4 new notification', '2022-04-15 05:48:40', '2022-04-15 05:48:40'),
(171, 1, 'Notification 1', 'Notification 1', '2022-04-15 05:48:40', '2022-04-15 05:48:40'),
(172, 1, '5 minutes ago', '5 minutes ago', '2022-04-15 05:48:40', '2022-04-15 05:48:40'),
(173, 1, 'See all notifications', 'See all notifications', '2022-04-15 05:48:40', '2022-04-15 05:48:40'),
(174, 1, 'Quick Actions', 'Quick Actions', '2022-04-15 05:48:41', '2022-04-15 05:48:41'),
(175, 1, 'Shortcuts', 'Shortcuts', '2022-04-15 05:48:41', '2022-04-15 05:48:41'),
(176, 1, 'Booking Calendar', 'Booking Calendar', '2022-04-15 05:48:41', '2022-04-15 05:48:41'),
(177, 1, 'Booking Information', 'Booking Information', '2022-04-15 05:48:41', '2022-04-15 05:48:41'),
(178, 1, 'Create New Customer', 'Create New Customer', '2022-04-15 05:48:41', '2022-04-15 05:48:41'),
(179, 1, 'Change Photo', 'Change Photo', '2022-04-15 05:48:41', '2022-04-15 05:48:41'),
(180, 1, 'Change Password', 'Change Password', '2022-04-15 05:48:41', '2022-04-15 05:48:41'),
(181, 1, 'Logout', 'Logout', '2022-04-15 05:48:41', '2022-04-15 05:48:41'),
(182, 1, 'Currency Setup', 'Currency Setup', '2022-04-15 05:49:23', '2022-04-15 05:49:23'),
(183, 1, 'Local Payment', 'Local Payment', '2022-04-15 05:49:23', '2022-04-15 05:49:23'),
(184, 1, 'Paypal Payment', 'Paypal Payment', '2022-04-15 05:49:23', '2022-04-15 05:49:23'),
(185, 1, 'Paypal Config', 'Paypal Config', '2022-04-15 05:49:23', '2022-04-15 05:49:23'),
(186, 1, 'Client ID', 'Client ID', '2022-04-15 05:49:23', '2022-04-15 05:49:23'),
(187, 1, 'Client Secret', 'Client Secret', '2022-04-15 05:49:24', '2022-04-15 05:49:24'),
(188, 1, 'Charge Type', 'Charge Type', '2022-04-15 05:49:24', '2022-04-15 05:49:24'),
(189, 1, 'Charge Percentage', 'Charge Percentage', '2022-04-15 05:49:24', '2022-04-15 05:49:24'),
(190, 1, 'Enable Sandbox', 'Enable Sandbox', '2022-04-15 05:49:24', '2022-04-15 05:49:24'),
(191, 1, 'Stripe Config', 'Stripe Config', '2022-04-15 05:49:24', '2022-04-15 05:49:24'),
(192, 1, 'Enable Stripe Payment', 'Enable Stripe Payment', '2022-04-15 05:49:24', '2022-04-15 05:49:24'),
(193, 1, 'API Key', 'API Key', '2022-04-15 05:49:24', '2022-04-15 05:49:24'),
(194, 1, 'API Secret', 'API Secret', '2022-04-15 05:49:24', '2022-04-15 05:49:24'),
(195, 1, 'Category Info', 'Category Info', '2022-04-15 05:49:48', '2022-04-15 05:49:48'),
(196, 1, 'Category name', 'Category name', '2022-04-15 05:49:48', '2022-04-15 05:49:48'),
(197, 1, 'Add New Category', 'Add New Category', '2022-04-15 05:49:48', '2022-04-15 05:49:48'),
(198, 1, 'Service Information', 'Service Information', '2022-04-15 05:50:30', '2022-04-15 05:50:30'),
(199, 1, 'Service Category', 'Service Category', '2022-04-15 05:50:30', '2022-04-15 05:50:30'),
(200, 1, 'Service Title', 'Service Title', '2022-04-15 05:50:30', '2022-04-15 05:50:30'),
(201, 1, 'Service Price', 'Service Price', '2022-04-15 05:50:30', '2022-04-15 05:50:30'),
(202, 1, 'Service Duration', 'Service Duration', '2022-04-15 05:50:31', '2022-04-15 05:50:31'),
(203, 1, 'Service Time Slot', 'Service Time Slot', '2022-04-15 05:50:31', '2022-04-15 05:50:31'),
(204, 1, 'Gap Time Before', 'Gap Time Before', '2022-04-15 05:50:31', '2022-04-15 05:50:31'),
(205, 1, 'Gap Time After', 'Gap Time After', '2022-04-15 05:50:31', '2022-04-15 05:50:31'),
(206, 1, 'Appointment Limit Type', 'Appointment Limit Type', '2022-04-15 05:50:31', '2022-04-15 05:50:31'),
(207, 1, 'No of Limit', 'No of Limit', '2022-04-15 05:50:31', '2022-04-15 05:50:31'),
(208, 1, 'Minimum Time Required to Service Booking', 'Minimum Time Required to Service Booking', '2022-04-15 05:50:31', '2022-04-15 05:50:31'),
(209, 1, 'Minimum Time Required to Cancel', 'Minimum Time Required to Cancel', '2022-04-15 05:50:31', '2022-04-15 05:50:31'),
(210, 1, 'Details', 'Details', '2022-04-15 05:50:31', '2022-04-15 05:50:31'),
(211, 1, 'Service Visibility', 'Service Visibility', '2022-04-15 05:50:31', '2022-04-15 05:50:31'),
(212, 1, 'Service Info', 'Service Info', '2022-04-15 05:50:31', '2022-04-15 05:50:31'),
(213, 1, 'Add New Service', 'Add New Service', '2022-04-15 05:50:31', '2022-04-15 05:50:31'),
(214, 1, 'Branch Info', 'Branch Info', '2022-04-15 05:50:55', '2022-04-15 05:50:55'),
(215, 1, 'Branch name', 'Branch name', '2022-04-15 05:50:55', '2022-04-15 05:50:55'),
(216, 1, 'Email address number', 'Email address number', '2022-04-15 05:50:55', '2022-04-15 05:50:55'),
(217, 1, 'Order', 'Order', '2022-04-15 05:50:55', '2022-04-15 05:50:55'),
(218, 1, 'Order value', 'Order value', '2022-04-15 05:50:55', '2022-04-15 05:50:55'),
(219, 1, 'Status', 'Status', '2022-04-15 05:50:55', '2022-04-15 05:50:55'),
(220, 1, 'Active', 'Active', '2022-04-15 05:50:55', '2022-04-15 05:50:55'),
(221, 1, 'Inactive', 'Inactive', '2022-04-15 05:50:55', '2022-04-15 05:50:55'),
(222, 1, 'Add New Branch', 'Add New Branch', '2022-04-15 05:50:56', '2022-04-15 05:50:56'),
(223, 1, 'Business Holiday', 'Business Holiday', '2022-04-15 05:51:36', '2022-04-15 05:51:36'),
(224, 1, 'Business Hour Settings', 'Business Hour Settings', '2022-04-15 05:51:56', '2022-04-15 05:51:56'),
(225, 1, 'Sunday', 'Sunday', '2022-04-15 05:51:56', '2022-04-15 05:51:56'),
(226, 1, 'Is Weekly Holiday', 'Is Weekly Holiday', '2022-04-15 05:51:56', '2022-04-15 05:51:56'),
(227, 1, 'Company Settings', 'Company Settings', '2022-04-15 05:52:14', '2022-04-15 05:52:14'),
(228, 1, 'Company Name', 'Company Name', '2022-04-15 05:52:14', '2022-04-15 05:52:14'),
(229, 1, 'Mobile', 'Mobile', '2022-04-15 05:52:14', '2022-04-15 05:52:14'),
(230, 1, 'Web Address', 'Web Address', '2022-04-15 05:52:14', '2022-04-15 05:52:14'),
(231, 1, 'Department Info', 'Department Info', '2022-04-15 05:52:24', '2022-04-15 05:52:24'),
(232, 1, 'Department name', 'Department name', '2022-04-15 05:52:24', '2022-04-15 05:52:24'),
(233, 1, 'Add New Department', 'Add New Department', '2022-04-15 05:52:24', '2022-04-15 05:52:24'),
(234, 1, 'Add Designation', 'Add Designation', '2022-04-15 05:52:38', '2022-04-15 05:52:38'),
(235, 1, 'Designation name', 'Designation name', '2022-04-15 05:52:38', '2022-04-15 05:52:38'),
(236, 1, 'Designation Info', 'Designation Info', '2022-04-15 05:52:38', '2022-04-15 05:52:38'),
(237, 1, 'Add New Designation', 'Add New Designation', '2022-04-15 05:52:38', '2022-04-15 05:52:38'),
(238, 1, 'Language Information', 'Language Information', '2022-04-15 05:52:52', '2022-04-15 05:52:52'),
(239, 1, 'Code', 'Code', '2022-04-15 05:52:52', '2022-04-15 05:52:52'),
(240, 1, 'Language List', 'Language List', '2022-04-15 05:52:52', '2022-04-15 05:52:52'),
(241, 1, 'Translate', 'Translate', '2022-04-15 05:53:54', '2022-04-15 05:53:54'),
(242, 1, 'Complete Booking', 'Complete Booking', '2022-04-15 06:07:55', '2022-04-15 06:07:55'),
(243, 1, 'Cancel Booking', 'Cancel Booking', '2022-04-15 06:07:55', '2022-04-15 06:07:55'),
(244, 1, 'Pending & Other', 'Pending & Other', '2022-04-15 06:07:55', '2022-04-15 06:07:55'),
(245, 1, 'Last 10 booking info', 'Last 10 booking info', '2022-04-15 06:07:55', '2022-04-15 06:07:55'),
(246, 1, 'New Booking', 'New Booking', '2022-04-15 06:07:55', '2022-04-15 06:07:55'),
(247, 1, 'My Panel', 'My Panel', '2022-04-15 06:07:56', '2022-04-15 06:07:56'),
(248, 1, 'All pending & other booking info', 'All pending & other booking info', '2022-04-15 06:08:23', '2022-04-15 06:08:23'),
(249, 1, 'User Info', 'User Info', '2022-04-15 06:08:25', '2022-04-15 06:08:25'),
(250, 1, 'Your Name', 'Your Name', '2022-04-15 06:08:25', '2022-04-15 06:08:25'),
(251, 1, 'Street number', 'Street number', '2022-04-15 06:08:25', '2022-04-15 06:08:25'),
(252, 1, 'State', 'State', '2022-04-15 06:08:25', '2022-04-15 06:08:25'),
(253, 1, 'Current Password', 'Current Password', '2022-04-15 06:18:46', '2022-04-15 06:18:46'),
(254, 1, 'New Password', 'New Password', '2022-04-15 06:18:46', '2022-04-15 06:18:46'),
(255, 1, 'Confirm New Password', 'Confirm New Password', '2022-04-15 06:18:46', '2022-04-15 06:18:46'),
(256, 1, 'Role & Permission', 'Role & Permission', '2022-04-15 06:19:03', '2022-04-15 06:19:03'),
(257, 1, 'Add New Role', 'Add New Role', '2022-04-15 06:19:03', '2022-04-15 06:19:03'),
(258, 1, 'Role Name', 'Role Name', '2022-04-15 06:19:03', '2022-04-15 06:19:03'),
(259, 1, 'Save Role Permission', 'Save Role Permission', '2022-04-15 06:19:03', '2022-04-15 06:19:03'),
(260, 1, 'Menu List', 'Menu List', '2022-04-15 06:19:03', '2022-04-15 06:19:03'),
(261, 1, 'Select All', 'Select All', '2022-04-15 06:19:03', '2022-04-15 06:19:03'),
(262, 1, 'click for edit', 'click for edit', '2022-04-15 06:19:03', '2022-04-15 06:19:03'),
(263, 1, 'click to save', 'click to save', '2022-04-15 06:19:03', '2022-04-15 06:19:03'),
(264, 1, 'Role Info', 'Role Info', '2022-04-15 06:19:14', '2022-04-15 06:19:14'),
(265, 1, 'Is Default Role', 'Is Default Role', '2022-04-15 06:19:14', '2022-04-15 06:19:14'),
(266, 1, 'Role Information', 'Role Information', '2022-04-15 06:19:14', '2022-04-15 06:19:14'),
(267, 1, 'Confirm Password', 'Confirm Password', '2022-04-15 06:19:24', '2022-04-15 06:19:24'),
(268, 1, 'User Role', 'User Role', '2022-04-15 06:19:24', '2022-04-15 06:19:24'),
(269, 1, 'Staff/Employee', 'Staff/Employee', '2022-04-15 06:19:24', '2022-04-15 06:19:24'),
(270, 1, 'User Branch', 'User Branch', '2022-04-15 06:19:25', '2022-04-15 06:19:25'),
(271, 1, 'User Information', 'User Information', '2022-04-15 06:19:25', '2022-04-15 06:19:25'),
(272, 1, 'Add New User', 'Add New User', '2022-04-15 06:19:25', '2022-04-15 06:19:25'),
(273, 1, 'Image Size 658x542', 'Image Size 658x542', '2022-04-15 06:19:46', '2022-04-15 06:19:46'),
(274, 1, 'Title', 'Title', '2022-04-15 06:19:46', '2022-04-15 06:19:46'),
(275, 1, 'Is Active', 'Is Active', '2022-04-15 06:19:46', '2022-04-15 06:19:46'),
(276, 1, 'Add New', 'Add New', '2022-04-15 06:19:46', '2022-04-15 06:19:46'),
(277, 1, 'General Settings', 'General Settings', '2022-04-15 06:19:55', '2022-04-15 06:19:55'),
(278, 1, 'App Name', 'App Name', '2022-04-15 06:19:55', '2022-04-15 06:19:55'),
(279, 1, 'Example', 'Example', '2022-04-15 06:19:55', '2022-04-15 06:19:55'),
(280, 1, 'Website Motto', 'Website Motto', '2022-04-15 06:19:55', '2022-04-15 06:19:55'),
(281, 1, 'Theam Color', 'Theam Color', '2022-04-15 06:19:55', '2022-04-15 06:19:55'),
(282, 1, 'Page Menu Color', 'Page Menu Color', '2022-04-15 06:19:55', '2022-04-15 06:19:55'),
(283, 1, 'Theam Hover Color', 'Theam Hover Color', '2022-04-15 06:19:55', '2022-04-15 06:19:55'),
(284, 1, 'Theam Active Color', 'Theam Active Color', '2022-04-15 06:19:55', '2022-04-15 06:19:55'),
(285, 1, 'Icon 32x32', 'Icon 32x32', '2022-04-15 06:19:55', '2022-04-15 06:19:55'),
(286, 1, 'Logo 212x60', 'Logo 212x60', '2022-04-15 06:19:56', '2022-04-15 06:19:56'),
(287, 1, 'Background Image 1920x800', 'Background Image 1920x800', '2022-04-15 06:19:56', '2022-04-15 06:19:56'),
(288, 1, 'Login Background 1920x1080', 'Login Background 1920x1080', '2022-04-15 06:19:56', '2022-04-15 06:19:56'),
(289, 1, 'Contact Info', 'Contact Info', '2022-04-15 06:19:56', '2022-04-15 06:19:56'),
(290, 1, 'Social Media Link', 'Social Media Link', '2022-04-15 06:19:56', '2022-04-15 06:19:56'),
(291, 1, 'Facebook Link', 'Facebook Link', '2022-04-15 06:19:56', '2022-04-15 06:19:56'),
(292, 1, 'Youtube Link', 'Youtube Link', '2022-04-15 06:19:56', '2022-04-15 06:19:56'),
(293, 1, 'Twitter Link', 'Twitter Link', '2022-04-15 06:19:56', '2022-04-15 06:19:56'),
(294, 1, 'Instagram Link', 'Instagram Link', '2022-04-15 06:19:56', '2022-04-15 06:19:56'),
(295, 1, 'SEO Settings', 'SEO Settings', '2022-04-15 06:19:56', '2022-04-15 06:19:56'),
(296, 1, 'Meta Title', 'Meta Title', '2022-04-15 06:19:56', '2022-04-15 06:19:56'),
(297, 1, 'Meta Description', 'Meta Description', '2022-04-15 06:19:56', '2022-04-15 06:19:56'),
(298, 1, 'Meta keywords', 'Meta keywords', '2022-04-15 06:19:56', '2022-04-15 06:19:56'),
(299, 1, 'Client Testimonial', 'Client Testimonial', '2022-04-15 06:20:06', '2022-04-15 06:20:06'),
(300, 1, 'Image Size 80x80', 'Image Size 80x80', '2022-04-15 06:20:06', '2022-04-15 06:20:06'),
(301, 1, 'Client Name', 'Client Name', '2022-04-15 06:20:06', '2022-04-15 06:20:06'),
(302, 1, 'Description', 'Description', '2022-04-15 06:20:06', '2022-04-15 06:20:06'),
(303, 1, 'Rating', 'Rating', '2022-04-15 06:20:06', '2022-04-15 06:20:06'),
(304, 1, 'Email Settings', 'Email Settings', '2022-04-15 06:20:18', '2022-04-15 06:20:18'),
(305, 1, 'Mailer', 'Mailer', '2022-04-15 06:20:18', '2022-04-15 06:20:18'),
(306, 1, 'Host', 'Host', '2022-04-15 06:20:18', '2022-04-15 06:20:18'),
(307, 1, 'Port', 'Port', '2022-04-15 06:20:18', '2022-04-15 06:20:18'),
(308, 1, 'Username/email', 'Username/email', '2022-04-15 06:20:18', '2022-04-15 06:20:18'),
(309, 1, 'Force add new configuration', 'Force add new configuration', '2022-04-15 06:20:18', '2022-04-15 06:20:18'),
(310, 1, 'At first try to update, if not update then check force update. Don\'t try before update.', 'At first try to update, if not update then check force update. Don\'t try before update.', '2022-04-15 06:20:19', '2022-04-15 06:20:19'),
(311, 1, 'Question', 'Question', '2022-04-15 06:20:31', '2022-04-15 06:20:31'),
(312, 1, 'Answer', 'Answer', '2022-04-15 06:20:31', '2022-04-15 06:20:31'),
(313, 1, 'Order/Serial', 'Order/Serial', '2022-04-15 06:20:31', '2022-04-15 06:20:31'),
(314, 1, 'FAQ List', 'FAQ List', '2022-04-15 06:20:31', '2022-04-15 06:20:31'),
(315, 1, 'Add New FAQ', 'Add New FAQ', '2022-04-15 06:20:31', '2022-04-15 06:20:31'),
(316, 1, 'Google Map Settings', 'Google Map Settings', '2022-04-15 06:20:54', '2022-04-15 06:20:54'),
(317, 1, 'Lat', 'Lat', '2022-04-15 06:20:54', '2022-04-15 06:20:54'),
(318, 1, 'Long', 'Long', '2022-04-15 06:20:54', '2022-04-15 06:20:54'),
(319, 1, 'Map Key', 'Map Key', '2022-04-15 06:20:54', '2022-04-15 06:20:54'),
(320, 1, 'Photo Gallery', 'Photo Gallery', '2022-04-15 06:20:56', '2022-04-15 06:20:56'),
(321, 1, 'Photo Gallary', 'Photo Gallary', '2022-04-15 06:20:56', '2022-04-15 06:20:56'),
(322, 1, 'Active Terms & Conditions', 'Active Terms & Conditions', '2022-04-15 06:21:06', '2022-04-15 06:21:06'),
(323, 1, 'Website Menu', 'Website Menu', '2022-04-15 06:21:17', '2022-04-15 06:21:17'),
(324, 1, 'Menu Under', 'Menu Under', '2022-04-15 06:21:17', '2022-04-15 06:21:17'),
(325, 1, 'Menu Name', 'Menu Name', '2022-04-15 06:21:17', '2022-04-15 06:21:17'),
(326, 1, 'Route', 'Route', '2022-04-15 06:21:17', '2022-04-15 06:21:17'),
(327, 1, 'Route Name', 'Route Name', '2022-04-15 06:21:17', '2022-04-15 06:21:17'),
(328, 1, 'Add New Menu', 'Add New Menu', '2022-04-15 06:21:17', '2022-04-15 06:21:17'),
(329, 1, 'Dashboard', 'Dashboard', '2022-04-15 06:22:44', '2022-04-15 06:22:44'),
(330, 1, 'Main Dashboard', 'Main Dashboard', '2022-04-15 06:22:44', '2022-04-15 06:22:44'),
(331, 1, 'User Management', 'User Management', '2022-04-15 06:22:44', '2022-04-15 06:22:44'),
(332, 1, 'Role Permission', 'Role Permission', '2022-04-15 06:22:45', '2022-04-15 06:22:45'),
(333, 1, 'Settings', 'Settings', '2022-04-15 06:22:45', '2022-04-15 06:22:45'),
(334, 1, 'Deprtment', 'Deprtment', '2022-04-15 06:22:45', '2022-04-15 06:22:45'),
(335, 1, 'Company', 'Company', '2022-04-15 06:22:45', '2022-04-15 06:22:45'),
(336, 1, 'Business Hour', 'Business Hour', '2022-04-15 06:22:45', '2022-04-15 06:22:45'),
(337, 1, 'Language', 'Language', '2022-04-15 06:22:45', '2022-04-15 06:22:45'),
(338, 1, 'Staff / Employee', 'Staff / Employee', '2022-04-15 06:22:45', '2022-04-15 06:22:45'),
(339, 1, 'Staff Manage', 'Staff Manage', '2022-04-15 06:22:45', '2022-04-15 06:22:45'),
(340, 1, 'Service Booking', 'Service Booking', '2022-04-15 06:22:45', '2022-04-15 06:22:45'),
(341, 1, 'Payment', 'Payment', '2022-04-15 06:22:45', '2022-04-15 06:22:45'),
(342, 1, 'Payment Setup', 'Payment Setup', '2022-04-15 06:22:45', '2022-04-15 06:22:45'),
(343, 1, 'Appearance', 'Appearance', '2022-04-15 06:22:45', '2022-04-15 06:22:45'),
(344, 1, 'Email Configuration', 'Email Configuration', '2022-04-15 06:22:45', '2022-04-15 06:22:45'),
(345, 1, 'Google Map', 'Google Map', '2022-04-15 06:22:45', '2022-04-15 06:22:45'),
(346, 1, 'Terms & Condition', 'Terms & Condition', '2022-04-15 06:22:45', '2022-04-15 06:22:45'),
(347, 1, 'Appointment Booking', 'Appointment Booking', '2022-04-15 17:50:01', '2022-04-15 17:50:01'),
(348, 1, 'Call for any Emergency Support!', 'Call for any Emergency Support!', '2022-04-15 17:50:01', '2022-04-15 17:50:01'),
(349, 1, 'Service Remarks', 'Service Remarks', '2022-04-15 17:50:02', '2022-04-15 17:50:02'),
(350, 1, 'Your service booking is completed & service is under processing, Check your email.', 'Your service booking is completed & service is under processing, Check your email.', '2022-04-15 17:50:02', '2022-04-15 17:50:02');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hrm_departments`
--

CREATE TABLE `hrm_departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hrm_departments`
--

INSERT INTO `hrm_departments` (`id`, `name`, `order`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Example Department', 1, 1, 1, '2021-10-12 05:11:32', '2022-01-22 02:27:23');

-- --------------------------------------------------------

--
-- Table structure for table `hrm_designations`
--

CREATE TABLE `hrm_designations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hrm_designations`
--

INSERT INTO `hrm_designations` (`id`, `name`, `order`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Example Designation', 1, 1, 1, '2021-10-13 05:03:51', '2022-01-14 06:42:10');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_11_27_184012_create_sec_resources_table', 1),
(5, '2020_11_27_184157_create_sec_roles_table', 1),
(6, '2020_11_27_184348_create_sec_user_roles_table', 1),
(7, '2020_11_27_184630_create_sec_role_permission_infos_table', 1),
(8, '2020_11_27_184730_create_sec_resource_permissions_table', 1),
(9, '2020_11_27_184902_create_sec_role_permissions_table', 1),
(10, '2020_12_01_193358_add_new_column_users_table', 1),
(11, '2020_12_23_165116_add_new_columns_to_users', 1),
(12, '2021_01_05_163345_add_new_column_to_sec_role', 1),
(13, '2021_01_08_190858_add_new_column_sec_resources_and_sec_role_perm_info', 1),
(14, '2021_10_12_155950_create_hrm_departments_table', 1),
(15, '2021_10_13_092517_create_sch_service_categories_table', 1),
(16, '2021_10_13_175830_create_hrm_designations_table', 1),
(17, '2021_10_14_181034_create_cmn_companies_table', 1),
(18, '2021_10_15_063004_create_cmn_payment_types_table', 1),
(19, '2021_10_15_065043_create_cmn_branches_table', 1),
(20, '2021_10_17_045856_create_cmn_business_hours_table', 1),
(21, '2021_10_20_033418_create_cmn_paypal_api_configs_table', 1),
(22, '2021_10_20_033452_create_cmn_currency_setups_table', 1),
(23, '2021_10_20_101650_create_sch_employees_table', 1),
(24, '2021_10_20_143659_create_sch_services_table', 1),
(25, '2021_10_20_152840_create_sch_employee_schedules_table', 1),
(26, '2021_10_20_162746_create_sch_employee_services_table', 1),
(27, '2021_10_20_163303_create_sch_employee_offdays_table', 1),
(28, '2021_10_25_152303_alter_cmn_business_hours_table', 1),
(29, '2021_10_30_161513_create_cmn_customers_table', 1),
(30, '2021_10_30_182258_create_cmn_business_holidays_table', 1),
(31, '2021_11_10_150621_create_sch_service_bookings_table', 1),
(32, '2021_11_21_192012_create_cmn_payment_infos_table', 1),
(33, '2021_11_24_173750_create_site_menus_table', 1),
(34, '2021_11_25_175550_create_site_appearances_table', 1),
(35, '2021_11_27_034130_create_site_client_testimonials_table', 1),
(36, '2021_11_28_174549_create_site_photo_galleries_table', 1),
(37, '2021_11_29_150423_create_site_about_us_table', 1),
(38, '2021_11_29_150856_create_site_frequently_asked_questions_table', 1),
(39, '2021_11_29_173145_create_site_google_maps', 1),
(40, '2021_11_29_175219_create_site_terms_and_conditions_table', 1),
(41, '2021_11_30_174221_create_sec_user_branches_table', 1),
(42, '2022_01_03_150114_add_new_column_sch_employee_id_users_table', 1),
(43, '2022_01_22_085920_insert_or_update_user_role_other_init_info', 1),
(44, '2022_03_11_183147_update_site_frequently_asked_questions_table', 1),
(45, '2022_03_22_143034_create_cmn_stripe_api_configs_table', 1),
(46, '2022_03_22_180651_create_cmn_languages_table', 1),
(47, '2022_03_22_181433_create_cmn_translations_table', 1),
(48, '2022_04_15_153024_insert_update_version_updated_data_dependency', 1),
(49, '2022_04_16_091624_insert_translation_default_en_language', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sch_employees`
--

CREATE TABLE `sch_employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_id` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cmn_branch_id` bigint(20) UNSIGNED NOT NULL,
  `email_address` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_no` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hrm_department_id` bigint(20) UNSIGNED DEFAULT NULL,
  `hrm_designation_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `gender` tinyint(4) NOT NULL,
  `dob` date DEFAULT NULL,
  `specialist` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `present_address` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permanent_address` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sch_employees`
--

INSERT INTO `sch_employees` (`id`, `full_name`, `image_url`, `employee_id`, `cmn_branch_id`, `email_address`, `country_code`, `contact_no`, `hrm_department_id`, `hrm_designation_id`, `user_id`, `gender`, `dob`, `specialist`, `present_address`, `permanent_address`, `note`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Demo Staff', 'uploadfiles/wdyGp9ndxy9J0J5kM0XYmKQReeP6q3GhRuiMM2Xv.jpg', '00001', 1, 'demo@example.com', NULL, '+8801111111111', 1, 1, NULL, 1, '2022-04-20', 'Example Specialist', NULL, NULL, NULL, 1, NULL, 1, NULL, '2022-01-23 07:26:16');

-- --------------------------------------------------------

--
-- Table structure for table `sch_employee_offdays`
--

CREATE TABLE `sch_employee_offdays` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sch_employee_id` bigint(20) UNSIGNED NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sch_employee_schedules`
--

CREATE TABLE `sch_employee_schedules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sch_employee_id` bigint(20) UNSIGNED NOT NULL,
  `day` int(11) NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `break_start_time` time NOT NULL,
  `break_end_time` time NOT NULL,
  `is_off_day` tinyint(4) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sch_employee_schedules`
--

INSERT INTO `sch_employee_schedules` (`id`, `sch_employee_id`, `day`, `start_time`, `end_time`, `break_start_time`, `break_end_time`, `is_off_day`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(15, 1, 0, '07:00:00', '23:55:00', '01:50:00', '02:10:00', 0, 1, 1, '2021-12-20 07:40:25', '2021-12-20 07:41:15'),
(16, 1, 1, '07:00:00', '23:45:00', '01:50:00', '01:50:00', 0, 1, 1, '2021-12-20 07:40:25', '2021-12-20 07:41:15'),
(17, 1, 2, '07:00:00', '23:55:00', '01:50:00', '01:50:00', 0, 1, 1, '2021-12-20 07:40:25', '2021-12-20 07:41:15'),
(18, 1, 3, '07:00:00', '23:55:00', '01:50:00', '01:50:00', 0, 1, 1, '2021-12-20 07:40:25', '2021-12-20 07:41:15'),
(19, 1, 4, '07:00:00', '23:45:00', '01:50:00', '01:50:00', 0, 1, 1, '2021-12-20 07:40:25', '2021-12-20 07:41:15'),
(20, 1, 5, '07:00:00', '23:55:00', '01:50:00', '01:50:00', 1, 1, 1, '2021-12-20 07:40:25', '2021-12-20 07:41:15'),
(21, 1, 6, '07:00:00', '23:45:00', '01:50:00', '01:50:00', 0, 1, 1, '2021-12-20 07:40:25', '2021-12-20 07:41:15');

-- --------------------------------------------------------

--
-- Table structure for table `sch_employee_services`
--

CREATE TABLE `sch_employee_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sch_employee_id` bigint(20) UNSIGNED NOT NULL,
  `sch_service_id` bigint(20) UNSIGNED NOT NULL,
  `fees` decimal(18,2) NOT NULL DEFAULT 0.00,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sch_employee_services`
--

INSERT INTO `sch_employee_services` (`id`, `sch_employee_id`, `sch_service_id`, `fees`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '43.00', 1, 1, 1, '2021-11-02 03:18:22', '2022-01-23 07:26:16');

-- --------------------------------------------------------

--
-- Table structure for table `sch_services`
--

CREATE TABLE `sch_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(1500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sch_service_category_id` bigint(20) UNSIGNED NOT NULL,
  `visibility` tinyint(4) NOT NULL DEFAULT 1,
  `price` decimal(18,2) NOT NULL,
  `duration_in_days` int(11) NOT NULL DEFAULT 0,
  `duration_in_time` time NOT NULL DEFAULT '00:00:00',
  `time_slot_in_time` time NOT NULL,
  `padding_time_before` time NOT NULL DEFAULT '00:00:00',
  `padding_time_after` time NOT NULL DEFAULT '00:00:00',
  `appoinntment_limit_type` int(11) NOT NULL DEFAULT 0,
  `appoinntment_limit` int(11) NOT NULL DEFAULT 0,
  `minimum_time_required_to_booking_in_days` int(11) NOT NULL DEFAULT 0,
  `minimum_time_required_to_booking_in_time` time NOT NULL DEFAULT '00:00:00',
  `minimum_time_required_to_cancel_in_days` int(11) NOT NULL DEFAULT 0,
  `minimum_time_required_to_cancel_in_time` time NOT NULL DEFAULT '00:00:00',
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sch_services`
--

INSERT INTO `sch_services` (`id`, `title`, `image`, `sch_service_category_id`, `visibility`, `price`, `duration_in_days`, `duration_in_time`, `time_slot_in_time`, `padding_time_before`, `padding_time_after`, `appoinntment_limit_type`, `appoinntment_limit`, `minimum_time_required_to_booking_in_days`, `minimum_time_required_to_booking_in_time`, `minimum_time_required_to_cancel_in_days`, `minimum_time_required_to_cancel_in_time`, `remarks`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Example Service', 'uploadfiles/E7cBlCZzl8sMnyTOxTPec3folCZezKZYwAEImc1J.jpg', 1, 1, '100.00', 0, '00:30:00', '00:30:00', '00:05:00', '00:01:00', 2, 10, 0, '00:00:00', 0, '01:10:00', 'Example service description.', NULL, NULL, '2021-10-31 06:19:17', '2022-01-23 07:25:52');

-- --------------------------------------------------------

--
-- Table structure for table `sch_service_bookings`
--

CREATE TABLE `sch_service_bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cmn_branch_id` bigint(20) UNSIGNED NOT NULL,
  `cmn_customer_id` bigint(20) UNSIGNED NOT NULL,
  `sch_employee_id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `sch_service_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL,
  `service_amount` decimal(18,2) NOT NULL,
  `paid_amount` decimal(18,2) NOT NULL DEFAULT 0.00,
  `payment_status` tinyint(4) NOT NULL,
  `cmn_payment_type_id` bigint(20) UNSIGNED NOT NULL,
  `canceled_paid_amount` decimal(18,2) NOT NULL DEFAULT 0.00,
  `cancel_paid_status` tinyint(4) NOT NULL,
  `cancel_cmn_payment_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `remarks` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sch_service_categories`
--

CREATE TABLE `sch_service_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sch_service_categories`
--

INSERT INTO `sch_service_categories` (`id`, `name`, `created_by`, `modified_by`, `created_at`, `updated_at`) VALUES
(1, 'Example Category', NULL, NULL, '2021-10-26 02:38:20', '2022-01-14 06:32:45');

-- --------------------------------------------------------

--
-- Table structure for table `sec_resources`
--

CREATE TABLE `sec_resources` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sec_resource_id` int(11) DEFAULT NULL,
  `sec_module_id` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `serial` int(11) NOT NULL,
  `level` int(11) DEFAULT NULL,
  `method` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sec_resources`
--

INSERT INTO `sec_resources` (`id`, `name`, `display_name`, `sec_resource_id`, `sec_module_id`, `status`, `serial`, `level`, `method`, `icon`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Dashboard', 'Dashboard', NULL, 1, 1, 0, 1, '', 'fas fa-tachometer-alt', 1, NULL, NULL, NULL),
(2, 'dashboard.blade.php', 'Main Dashboard', 1, 1, 1, 1, 2, 'home', NULL, 1, NULL, NULL, NULL),
(3, 'User Management', 'User Management', NULL, 1, 1, 1, 1, '', 'fas fa-user-shield', 1, 1, NULL, '2021-10-11 05:22:17'),
(4, 'user.blade.php', 'User Info', 3, 1, 1, 0, 2, 'user.info', NULL, 1, NULL, NULL, NULL),
(5, 'role.blade.php', 'Role Info', 3, 1, 1, 1, 2, 'role', NULL, 1, NULL, NULL, NULL),
(6, 'role_permission.blade.php', 'Role Permission', 3, 1, 1, 2, 2, 'role.permission', NULL, 1, NULL, NULL, NULL),
(7, 'Top Menu Settings', 'Settings', NULL, 1, 1, 3, 1, '', 'fas fa-cogs', 1, 1, '2021-10-12 03:48:55', '2021-10-19 21:12:03'),
(8, 'department.blade.php', 'Department', 7, 1, 1, 1, 2, 'department', NULL, 1, NULL, '2021-10-12 03:51:03', '2021-10-12 03:51:03'),
(9, 'designation.blade.php', 'Designation', 7, 1, 1, 2, 2, 'designation', NULL, 1, NULL, '2021-10-13 04:59:45', '2021-10-13 04:59:45'),
(10, 'company.blade.php', 'Company', 7, 1, 1, 3, 2, 'company', NULL, 1, NULL, '2021-10-18 03:29:57', '2021-10-18 03:29:57'),
(11, 'business-hour.blade.php', 'Business Hour', 7, 1, 1, 3, 2, 'business.hour', NULL, 1, NULL, '2021-10-18 03:35:29', '2021-10-18 03:35:29'),
(12, 'Top Menu Service', 'Service', NULL, 1, 1, 4, 1, '', 'fas fa-briefcase', 1, 1, '2021-10-18 03:39:17', '2021-10-19 21:12:17'),
(13, 'category.blade.php', 'Category', 12, 1, 1, 1, 2, 'category', NULL, 1, NULL, '2021-10-18 05:30:39', '2021-10-18 05:30:39'),
(14, 'service.blade.php', 'Add Service', 12, 1, 1, 2, 2, 'service', '', 1, 1, '2021-10-18 06:56:25', '2021-10-30 04:41:24'),
(15, 'Top Menu Employee', 'Staff / Employee', NULL, 1, 1, 5, 1, '', 'fas fa-user-tie', 1, 1, '2021-10-19 21:10:40', '2021-10-19 21:12:29'),
(16, 'employee.blade.php', 'Staff Manage', 15, 1, 1, 1, 2, 'employee', NULL, 1, NULL, '2021-10-19 21:13:39', '2021-10-19 21:13:39'),
(17, 'business-holiday.blade.php', 'Business Holiday', 7, 1, 1, 4, 2, 'business.holiday', '', 1, 1, '2021-10-30 06:49:01', '2021-10-30 06:51:42'),
(18, 'branch.blade.php', 'Branch', 7, 1, 1, 1, 2, 'branch', NULL, 1, NULL, '2021-10-31 05:41:05', '2021-10-31 05:41:05'),
(19, 'Top Menu Service Booking', 'Service Booking', NULL, 1, 1, 6, 1, 'service.booking', 'far fa-calendar-alt', 1, 1, '2021-11-10 05:18:04', '2021-11-10 05:23:34'),
(20, 'booking-calendar.blade.php', 'Booking Calendar', 19, 1, 1, 1, 2, 'booking.calendar', '', 1, 1, '2021-11-10 05:18:58', '2021-11-10 05:23:24'),
(22, 'customer.blade.php', 'Add Customer', 23, 1, 1, 1, 2, 'customer', '', 1, 1, '2021-11-14 06:37:21', '2021-11-14 06:43:38'),
(23, 'Top Menu Customer', 'Customer', NULL, 1, 1, 5, 1, 'top.customer', 'fas fa-hands-helping', 1, NULL, '2021-11-14 06:42:53', '2021-11-14 06:42:53'),
(24, 'Top Menu Website', 'Website', NULL, 1, 1, 8, 1, 'website', 'fas fa-globe-africa', 1, NULL, '2021-12-12 06:57:30', '2021-12-12 06:57:30'),
(25, 'appearance.blade.php', 'Appearance', 24, 1, 1, 1, 2, 'website.appearance', NULL, 1, NULL, '2021-12-12 07:01:26', '2021-12-12 07:01:26'),
(26, 'about-us.blade.php', 'About Us', 24, 1, 1, 2, 2, 'website.aboutus', NULL, 1, NULL, '2021-12-18 02:18:52', '2021-12-18 02:18:52'),
(27, 'client-testimonial.blade.php', 'Client Testimonial', 24, 1, 1, 3, 2, 'website.client.testimonial', NULL, 1, NULL, '2021-12-19 04:23:07', '2021-12-19 04:23:07'),
(28, 'frequently-asked-question.blade.php', 'FAQ', 24, 1, 1, 4, 2, 'website.frequently.asked.question', '', 1, 1, '2021-12-21 07:31:47', '2021-12-21 07:53:33'),
(29, 'google-map.blade.php', 'Google Map', 24, 1, 1, 5, 2, 'website.google.map', '', 1, 1, '2021-12-21 17:40:11', '2021-12-21 17:44:03'),
(30, 'photo-gallery.blade.php', 'Photo Gallery', 24, 1, 1, 6, 2, 'website.photo.gallery', '', 1, 1, '2021-12-21 18:30:30', '2021-12-21 18:33:37'),
(31, 'terms-and-condition.blade.php', 'Terms & Condition', 24, 1, 1, 6, 2, 'website.terms.and.condition', '', 1, 1, '2021-12-22 04:34:22', '2021-12-22 04:35:04'),
(32, 'website.menu.blade.php', 'Website Menu', 24, 1, 1, 0, 2, 'website.menu', NULL, 1, NULL, '2021-12-23 03:40:46', '2021-12-23 03:40:46'),
(33, 'Top Menu Payment', 'Payment', NULL, 1, 1, 7, 1, '', 'fas fa-dollar-sign', 1, NULL, '2021-12-23 20:43:20', '2021-12-23 20:43:20'),
(34, 'payment-config.blade.php', 'Payment Setup', 33, 1, 1, 1, 2, 'payment.config', NULL, 1, NULL, '2021-12-23 20:49:55', '2021-12-23 20:49:55'),
(36, 'service-booking-info.blade.php', 'Booking Info', 19, 1, 1, 2, 2, 'service.booking.info', NULL, 1, NULL, '2022-01-04 02:56:26', '2022-01-04 02:56:26'),
(37, 'email.configuration.blade.php', 'Email Configuration', 24, 1, 1, 3, 2, 'email.configuration', '', 1, 1, '2022-01-08 06:20:44', '2022-01-08 06:21:31'),
(38, 'language.blade.php', 'Language', 7, 1, 1, 7, 2, 'language', '', 1, 1, '2022-03-23 05:09:59', '2022-03-23 05:12:34');

-- --------------------------------------------------------

--
-- Table structure for table `sec_resource_permissions`
--

CREATE TABLE `sec_resource_permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sec_resource_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sec_role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sec_resource_permissions`
--

INSERT INTO `sec_resource_permissions` (`id`, `display_name`, `sec_resource_id`, `sec_role_id`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Dashboard', 1, 1, 1, 1, NULL, NULL, NULL),
(2, 'Main Dashboard', 2, 1, 1, 1, NULL, NULL, '2021-12-24 19:21:20'),
(3, 'User Management', 3, 1, 1, 1, NULL, NULL, NULL),
(4, 'User Info', 4, 1, 1, 1, NULL, NULL, NULL),
(5, 'Role Info', 5, 1, 1, 1, NULL, NULL, NULL),
(6, 'Role Permission', 6, 1, 1, 1, NULL, NULL, NULL),
(7, 'Dashboard', 1, 3, 1, 1, 1, NULL, '2022-01-14 06:52:00'),
(8, 'User Dashboard', 2, 3, 1, 1, 1, NULL, '2022-01-14 06:52:00'),
(9, 'User Management', 3, 3, 0, 1, 1, NULL, '2022-01-14 06:57:37'),
(10, 'User Info', 4, 3, 0, 1, 1, NULL, '2022-01-14 06:57:37'),
(11, 'Role Info', 5, 3, 0, 1, 1, NULL, '2022-01-14 06:57:37'),
(12, 'Role Permission', 6, 3, 0, 1, 1, NULL, '2022-01-14 06:57:37'),
(13, 'Dashboard', 1, 2, 1, 1, NULL, NULL, NULL),
(14, 'Main Dashboard', 2, 2, 1, 1, NULL, NULL, '2021-12-24 19:18:34'),
(15, 'User Management', 3, 2, 0, 1, 1, NULL, '2022-01-14 06:56:16'),
(16, 'User Info', 4, 2, 0, 1, 1, NULL, '2022-01-14 06:56:16'),
(17, 'Role Info', 5, 2, 0, 1, 1, NULL, '2022-01-14 06:56:16'),
(18, 'Role Permission', 6, 2, 0, 1, 1, NULL, '2022-01-14 06:56:16'),
(19, 'Settings', 7, 1, 1, 1, NULL, '2021-10-12 03:49:38', NULL),
(20, 'Department', 8, 1, 1, 1, NULL, '2021-10-12 03:53:39', NULL),
(21, 'Designation', 9, 1, 1, 1, NULL, '2021-10-13 05:00:07', NULL),
(22, 'Company', 10, 1, 1, 1, NULL, '2021-10-18 04:04:23', NULL),
(23, 'Business Hour', 11, 1, 1, 1, NULL, '2021-10-18 04:04:23', NULL),
(24, 'Service', 12, 1, 1, 1, NULL, '2021-10-18 04:04:23', NULL),
(25, 'Category', 13, 1, 1, 1, NULL, '2021-10-19 21:17:07', NULL),
(26, 'Service', 14, 1, 1, 1, 1, '2021-10-19 21:17:07', '2021-10-30 04:42:00'),
(27, 'Staff / Employee', 15, 1, 1, 1, NULL, '2021-10-19 21:17:07', NULL),
(28, 'Staff Manage', 16, 1, 1, 1, NULL, '2021-10-19 21:17:07', NULL),
(29, 'Business Holiday', 17, 1, 1, 1, NULL, '2021-10-30 06:52:02', NULL),
(30, 'Branch', 18, 1, 1, 1, NULL, '2021-10-31 05:44:48', NULL),
(31, 'Service Booking', 19, 1, 1, 1, NULL, '2021-11-10 05:20:42', NULL),
(32, 'Booking Calendar', 20, 1, 1, 1, NULL, '2021-11-10 05:20:42', NULL),
(33, 'Customer', 23, 1, 1, 1, NULL, '2021-11-14 06:43:50', NULL),
(34, 'Add Customer', 22, 1, 1, 1, NULL, '2021-11-14 06:43:50', NULL),
(35, 'Website', 24, 1, 1, 1, NULL, '2021-12-12 06:58:01', NULL),
(36, 'Appearance', 25, 1, 1, 1, NULL, '2021-12-12 07:05:19', NULL),
(37, 'About Us', 26, 1, 1, 1, NULL, '2021-12-18 02:19:11', NULL),
(38, 'Client Testimonial', 27, 1, 1, 1, NULL, '2021-12-19 04:23:30', NULL),
(39, 'FAQ', 28, 1, 1, 1, NULL, '2021-12-21 07:53:53', NULL),
(40, 'Google Map', 29, 1, 1, 1, NULL, '2021-12-21 17:41:05', NULL),
(41, 'Photo Gallery', 30, 1, 1, 1, NULL, '2021-12-21 18:31:33', NULL),
(42, 'Terms & Condition', 31, 1, 1, 1, NULL, '2021-12-22 04:35:42', NULL),
(43, 'Website Menu', 32, 1, 1, 1, NULL, '2021-12-23 03:41:02', NULL),
(44, 'Payment', 33, 1, 1, 1, NULL, '2021-12-23 20:43:49', NULL),
(45, 'Payment Setup', 34, 1, 1, 1, NULL, '2021-12-24 02:52:54', NULL),
(46, 'Settings', 7, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(47, 'Department', 8, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(48, 'Branch', 18, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(49, 'Designation', 9, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(50, 'Company', 10, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(51, 'Business Hour', 11, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(52, 'Business Holiday', 17, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(53, 'Service', 12, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(54, 'Category', 13, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(55, 'Add Service', 14, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(56, 'Staff / Employee', 15, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(57, 'Staff Manage', 16, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(58, 'Customer', 23, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(59, 'Add Customer', 22, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(60, 'Service Booking', 19, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(61, 'Booking Calendar', 20, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(62, 'Payment', 33, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(63, 'Payment Setup', 34, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(64, 'Website', 24, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(65, 'Website Menu', 32, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(66, 'Appearance', 25, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(67, 'About Us', 26, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(68, 'Client Testimonial', 27, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(69, 'FAQ', 28, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(70, 'Google Map', 29, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(71, 'Photo Gallery', 30, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(72, 'Terms & Condition', 31, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(74, 'Booking Info', 36, 1, 1, 1, NULL, '2022-01-04 03:44:41', NULL),
(75, 'Email Configuration', 37, 1, 1, 1, NULL, '2022-01-08 06:22:14', NULL),
(76, 'Settings', 7, 3, 1, 1, NULL, '2022-01-14 06:51:34', NULL),
(77, 'Department', 8, 3, 1, 1, NULL, '2022-01-14 06:51:34', NULL),
(78, 'Branch', 18, 3, 1, 1, NULL, '2022-01-14 06:51:34', NULL),
(79, 'Designation', 9, 3, 1, 1, NULL, '2022-01-14 06:51:34', NULL),
(80, 'Company', 10, 3, 1, 1, NULL, '2022-01-14 06:51:34', NULL),
(81, 'Business Hour', 11, 3, 1, 1, NULL, '2022-01-14 06:51:34', NULL),
(82, 'Business Holiday', 17, 3, 1, 1, NULL, '2022-01-14 06:51:34', NULL),
(83, 'Service', 12, 3, 1, 1, NULL, '2022-01-14 06:51:34', NULL),
(84, 'Category', 13, 3, 1, 1, NULL, '2022-01-14 06:51:34', NULL),
(85, 'Add Service', 14, 3, 1, 1, NULL, '2022-01-14 06:51:34', NULL),
(86, 'Staff / Employee', 15, 3, 1, 1, NULL, '2022-01-14 06:51:34', NULL),
(87, 'Staff Manage', 16, 3, 1, 1, NULL, '2022-01-14 06:51:34', NULL),
(88, 'Customer', 23, 3, 1, 1, NULL, '2022-01-14 06:51:34', NULL),
(89, 'Add Customer', 22, 3, 1, 1, NULL, '2022-01-14 06:51:34', NULL),
(90, 'Service Booking', 19, 3, 1, 1, NULL, '2022-01-14 06:51:34', NULL),
(91, 'Booking Calendar', 20, 3, 1, 1, NULL, '2022-01-14 06:51:34', NULL),
(92, 'Booking Info', 36, 3, 1, 1, NULL, '2022-01-14 06:51:34', NULL),
(93, 'Payment', 33, 3, 0, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:57:37'),
(94, 'Payment Setup', 34, 3, 0, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:57:37'),
(95, 'Website', 24, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:56:43'),
(96, 'Website Menu', 32, 3, 0, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:57:37'),
(97, 'Appearance', 25, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:56:43'),
(98, 'About Us', 26, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:56:43'),
(99, 'Client Testimonial', 27, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:56:43'),
(100, 'Email Configuration', 37, 3, 0, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:57:37'),
(101, 'FAQ', 28, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:56:43'),
(102, 'Google Map', 29, 3, 0, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:57:37'),
(103, 'Photo Gallery', 30, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:56:43'),
(104, 'Terms & Condition', 31, 3, 0, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:57:37'),
(105, 'Booking Info', 36, 2, 1, 1, NULL, '2022-01-14 06:56:16', NULL),
(106, 'Email Configuration', 37, 2, 1, 1, NULL, '2022-01-14 06:56:16', NULL),
(107, 'Dashboard', 1, 4, 1, 1, NULL, '2022-01-14 06:58:41', NULL),
(108, 'Main Dashboard', 2, 4, 1, 1, NULL, '2022-01-14 06:58:41', NULL),
(109, 'User Management', 3, 4, 0, 1, 1, '2022-01-14 06:58:41', '2022-01-14 07:10:16'),
(110, 'User Info', 4, 4, 0, 1, 1, '2022-01-14 06:58:41', '2022-01-14 07:10:16'),
(111, 'Role Info', 5, 4, 0, 1, 1, '2022-01-14 06:58:41', '2022-01-14 07:10:16'),
(112, 'Role Permission', 6, 4, 0, 1, 1, '2022-01-14 06:58:41', '2022-01-14 07:10:16'),
(113, 'Settings', 7, 4, 0, 1, 1, '2022-01-14 06:58:41', '2022-01-14 07:10:16'),
(114, 'Department', 8, 4, 0, 1, 1, '2022-01-14 06:58:41', '2022-01-14 07:10:16'),
(115, 'Branch', 18, 4, 0, 1, 1, '2022-01-14 06:58:41', '2022-01-14 07:10:16'),
(116, 'Designation', 9, 4, 0, 1, 1, '2022-01-14 06:58:41', '2022-01-14 07:10:16'),
(117, 'Company', 10, 4, 0, 1, 1, '2022-01-14 06:58:41', '2022-01-14 07:10:16'),
(118, 'Business Hour', 11, 4, 0, 1, 1, '2022-01-14 06:58:41', '2022-01-14 07:10:16'),
(119, 'Business Holiday', 17, 4, 0, 1, 1, '2022-01-14 06:58:41', '2022-01-14 07:10:16'),
(120, 'Service', 12, 4, 0, 1, 1, '2022-01-14 06:58:41', '2022-01-14 07:10:16'),
(121, 'Category', 13, 4, 0, 1, 1, '2022-01-14 06:58:41', '2022-01-14 07:10:16'),
(122, 'Add Service', 14, 4, 0, 1, 1, '2022-01-14 06:58:41', '2022-01-14 07:10:16'),
(123, 'Staff / Employee', 15, 4, 0, 1, 1, '2022-01-14 06:58:41', '2022-01-14 07:10:16'),
(124, 'Staff Manage', 16, 4, 0, 1, 1, '2022-01-14 06:58:41', '2022-01-14 07:10:16'),
(125, 'Customer', 23, 4, 0, 1, 1, '2022-01-14 06:58:41', '2022-01-14 07:10:16'),
(126, 'Add Customer', 22, 4, 0, 1, 1, '2022-01-14 06:58:41', '2022-01-14 07:10:16'),
(127, 'Service Booking', 19, 4, 1, 1, NULL, '2022-01-14 06:58:41', NULL),
(128, 'Booking Calendar', 20, 4, 1, 1, NULL, '2022-01-14 06:58:41', NULL),
(129, 'Booking Info', 36, 4, 1, 1, NULL, '2022-01-14 06:58:41', NULL),
(130, 'Payment', 33, 4, 0, 1, 1, '2022-01-14 06:58:41', '2022-01-14 07:10:16'),
(131, 'Payment Setup', 34, 4, 0, 1, 1, '2022-01-14 06:58:41', '2022-01-14 07:10:16'),
(132, 'Website', 24, 4, 0, 1, 1, '2022-01-14 06:58:41', '2022-01-14 07:10:16'),
(133, 'Website Menu', 32, 4, 0, 1, 1, '2022-01-14 06:58:41', '2022-01-14 07:10:16'),
(134, 'Appearance', 25, 4, 0, 1, 1, '2022-01-14 06:58:41', '2022-01-14 07:10:16'),
(135, 'About Us', 26, 4, 0, 1, 1, '2022-01-14 06:58:41', '2022-01-14 07:10:16'),
(136, 'Client Testimonial', 27, 4, 0, 1, 1, '2022-01-14 06:58:41', '2022-01-14 07:10:16'),
(137, 'Email Configuration', 37, 4, 0, 1, 1, '2022-01-14 06:58:41', '2022-01-14 07:10:16'),
(138, 'FAQ', 28, 4, 0, 1, 1, '2022-01-14 06:58:41', '2022-01-14 07:10:16'),
(139, 'Google Map', 29, 4, 0, 1, 1, '2022-01-14 06:58:41', '2022-01-14 07:10:16'),
(140, 'Photo Gallery', 30, 4, 0, 1, 1, '2022-01-14 06:58:41', '2022-01-14 07:10:16'),
(141, 'Terms & Condition', 31, 4, 0, 1, 1, '2022-01-14 06:58:41', '2022-01-14 07:10:16'),
(142, 'Language', 38, 1, 1, 1, NULL, '2022-03-23 05:13:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sec_roles`
--

CREATE TABLE `sec_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default_user_role` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sec_roles`
--

INSERT INTO `sec_roles` (`id`, `name`, `is_default_user_role`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Admin Role', 0, 1, 1, NULL, NULL, NULL),
(2, 'Default Role', 1, 1, 1, 1, NULL, '2022-01-01 07:08:09'),
(3, 'Operator', 0, 1, 1, NULL, NULL, NULL),
(4, 'Staff Role', 0, 1, 1, NULL, '2022-01-14 06:58:11', '2022-01-14 06:58:11');

-- --------------------------------------------------------

--
-- Table structure for table `sec_role_permissions`
--

CREATE TABLE `sec_role_permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sec_role_permission_info_id` bigint(20) UNSIGNED NOT NULL,
  `sec_role_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sec_role_permissions`
--

INSERT INTO `sec_role_permissions` (`id`, `sec_role_permission_info_id`, `sec_role_id`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, NULL, NULL, NULL),
(2, 2, 1, 1, 1, NULL, NULL, NULL),
(3, 3, 1, 1, 1, NULL, NULL, NULL),
(4, 4, 1, 1, 1, NULL, NULL, NULL),
(5, 5, 1, 1, 1, NULL, NULL, NULL),
(6, 6, 1, 1, 1, NULL, NULL, NULL),
(7, 7, 1, 1, 1, NULL, NULL, NULL),
(8, 8, 1, 1, 1, 1, NULL, '2021-10-11 05:27:44'),
(9, 9, 1, 1, 1, NULL, NULL, NULL),
(10, 1, 3, 0, 1, 1, NULL, '2022-01-14 06:57:37'),
(11, 2, 3, 0, 1, 1, NULL, '2022-01-14 06:57:37'),
(12, 3, 3, 0, 1, 1, NULL, '2022-01-14 06:57:37'),
(13, 4, 3, 0, 1, 1, NULL, '2022-01-14 06:57:37'),
(14, 5, 3, 0, 1, 1, NULL, '2022-01-14 06:57:37'),
(15, 6, 3, 0, 1, 1, NULL, '2022-01-14 06:57:37'),
(16, 7, 3, 0, 1, 1, NULL, '2022-01-14 06:57:37'),
(17, 8, 3, 0, 1, 1, NULL, '2022-01-14 06:57:37'),
(18, 9, 3, 0, 1, 1, NULL, '2022-01-14 06:57:37'),
(19, 1, 2, 1, 1, NULL, NULL, NULL),
(20, 2, 2, 0, 1, 1, NULL, '2022-01-14 06:56:16'),
(21, 3, 2, 0, 1, 1, NULL, '2022-01-14 06:56:16'),
(22, 4, 2, 0, 1, 1, NULL, '2022-01-14 06:56:16'),
(23, 5, 2, 0, 1, 1, NULL, '2022-01-14 06:56:16'),
(24, 6, 2, 0, 1, 1, NULL, '2022-01-14 06:56:16'),
(25, 7, 2, 0, 1, 1, NULL, '2022-01-14 06:56:16'),
(26, 8, 2, 0, 1, 1, NULL, '2022-01-14 06:56:16'),
(27, 9, 2, 0, 1, 1, NULL, '2022-01-14 06:56:16'),
(28, 10, 1, 1, 1, NULL, '2021-10-12 03:53:39', NULL),
(29, 11, 1, 1, 1, NULL, '2021-10-12 03:53:39', NULL),
(30, 12, 1, 1, 1, NULL, '2021-10-12 03:53:39', NULL),
(31, 13, 1, 1, 1, 1, '2021-10-18 04:04:23', '2021-10-18 04:04:28'),
(32, 14, 1, 1, 1, 1, '2021-10-18 04:04:23', '2021-10-18 04:04:28'),
(33, 15, 1, 1, 1, 1, '2021-10-18 04:04:23', '2021-10-18 04:04:28'),
(34, 16, 1, 1, 1, NULL, '2021-10-18 04:04:23', NULL),
(35, 17, 1, 1, 1, NULL, '2021-10-18 04:04:23', NULL),
(36, 18, 1, 1, 1, NULL, '2021-10-18 04:04:23', NULL),
(37, 19, 1, 1, 1, NULL, '2021-10-18 04:04:23', NULL),
(38, 20, 1, 1, 1, 1, '2021-10-19 21:17:07', '2021-10-30 04:42:00'),
(39, 21, 1, 1, 1, 1, '2021-10-19 21:17:07', '2021-10-30 04:42:00'),
(40, 22, 1, 1, 1, 1, '2021-10-19 21:17:07', '2021-10-30 04:42:00'),
(41, 23, 1, 1, 1, NULL, '2021-10-19 21:17:07', NULL),
(42, 24, 1, 1, 1, NULL, '2021-10-19 21:17:07', NULL),
(43, 25, 1, 1, 1, 1, '2021-10-30 04:42:00', '2021-12-12 06:58:01'),
(44, 26, 1, 1, 1, 1, '2021-10-30 04:42:00', '2021-12-12 06:58:01'),
(45, 27, 1, 1, 1, 1, '2021-10-30 04:42:00', '2021-12-12 06:58:01'),
(46, 28, 1, 1, 1, NULL, '2021-10-31 05:44:48', NULL),
(47, 29, 1, 1, 1, NULL, '2021-10-31 05:44:48', NULL),
(48, 30, 1, 1, 1, NULL, '2021-10-31 05:44:48', NULL),
(49, 31, 1, 1, 1, 1, '2021-10-31 05:44:48', '2021-12-12 06:58:01'),
(50, 32, 1, 1, 1, 1, '2021-10-31 05:44:48', '2021-12-12 06:58:01'),
(51, 33, 1, 1, 1, 1, '2021-10-31 05:44:48', '2021-12-12 06:58:01'),
(52, 34, 1, 1, 1, NULL, '2021-12-07 04:07:06', NULL),
(53, 35, 1, 1, 1, NULL, '2021-12-11 05:14:24', NULL),
(54, 36, 1, 1, 1, NULL, '2021-12-12 06:58:01', NULL),
(55, 37, 1, 1, 1, NULL, '2021-12-12 06:58:01', NULL),
(56, 38, 1, 1, 1, NULL, '2021-12-18 02:19:11', NULL),
(57, 42, 1, 1, 1, 1, '2021-12-21 07:53:53', '2021-12-21 17:41:05'),
(58, 43, 1, 1, 1, 1, '2021-12-21 07:53:53', '2021-12-21 17:41:05'),
(59, 44, 1, 1, 1, 1, '2021-12-21 07:53:53', '2021-12-21 17:41:05'),
(60, 39, 1, 1, 1, 1, '2021-12-21 07:53:53', '2021-12-21 17:41:05'),
(61, 40, 1, 1, 1, 1, '2021-12-21 07:53:53', '2021-12-21 17:41:05'),
(62, 41, 1, 1, 1, 1, '2021-12-21 07:53:53', '2021-12-21 17:41:05'),
(63, 45, 1, 1, 1, NULL, '2021-12-21 17:41:05', NULL),
(64, 46, 1, 1, 1, NULL, '2021-12-21 17:41:05', NULL),
(65, 47, 1, 1, 1, NULL, '2021-12-21 17:41:05', NULL),
(66, 48, 1, 1, 1, NULL, '2021-12-21 17:41:05', NULL),
(67, 49, 1, 1, 1, NULL, '2021-12-21 18:31:33', NULL),
(68, 50, 1, 1, 1, NULL, '2021-12-21 18:31:33', NULL),
(69, 51, 1, 1, 1, NULL, '2021-12-21 18:31:33', NULL),
(70, 52, 1, 1, 1, 1, '2021-12-23 03:41:02', '2021-12-23 20:43:49'),
(71, 53, 1, 1, 1, 1, '2021-12-24 02:52:54', '2021-12-24 07:15:43'),
(72, 54, 1, 1, 1, 1, '2021-12-24 02:52:54', '2021-12-24 07:15:43'),
(73, 55, 1, 1, 1, 1, '2021-12-24 02:52:54', '2021-12-24 07:15:44'),
(74, 56, 1, 1, 1, NULL, '2021-12-24 07:15:43', NULL),
(75, 57, 1, 1, 1, NULL, '2021-12-24 07:15:43', NULL),
(76, 58, 1, 1, 1, NULL, '2021-12-24 07:15:43', NULL),
(77, 59, 1, 1, 1, NULL, '2021-12-24 07:15:43', NULL),
(78, 10, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(79, 11, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(80, 12, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(81, 28, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(82, 29, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(83, 30, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(84, 13, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(85, 14, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(86, 15, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(87, 16, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(88, 17, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(89, 18, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(90, 19, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(91, 31, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(92, 32, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(93, 33, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(94, 20, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(95, 21, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(96, 22, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(97, 23, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(98, 24, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(99, 25, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(100, 26, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(101, 27, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(102, 34, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(103, 35, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(104, 36, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(105, 37, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(106, 56, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(107, 57, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(108, 58, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(109, 59, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(110, 53, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(111, 54, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(112, 55, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(113, 38, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(114, 42, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(115, 43, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(116, 44, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(117, 39, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(118, 40, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(119, 41, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(120, 45, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(121, 46, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(122, 47, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(123, 48, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(124, 49, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(125, 50, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(126, 51, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(127, 52, 2, 1, 1, NULL, '2021-12-24 19:11:41', NULL),
(128, 60, 1, 1, 1, NULL, '2022-01-01 07:08:33', NULL),
(131, 63, 1, 1, 1, 1, '2022-01-04 03:44:41', '2022-01-10 07:27:45'),
(132, 64, 1, 1, 1, 1, '2022-01-04 03:44:41', '2022-01-10 07:27:45'),
(133, 65, 1, 1, 1, 1, '2022-01-04 03:44:41', '2022-01-10 07:27:45'),
(134, 66, 1, 1, 1, NULL, '2022-01-10 07:26:22', NULL),
(135, 67, 1, 1, 1, NULL, '2022-01-10 07:27:45', NULL),
(136, 68, 1, 1, 1, NULL, '2022-01-14 06:32:41', NULL),
(137, 69, 1, 1, 1, NULL, '2022-01-14 06:32:41', NULL),
(138, 70, 1, 1, 1, NULL, '2022-01-14 06:32:41', NULL),
(139, 10, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:52:27'),
(140, 11, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:52:27'),
(141, 12, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:52:27'),
(142, 28, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:52:27'),
(143, 29, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:52:27'),
(144, 30, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:52:27'),
(145, 13, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:52:27'),
(146, 14, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:52:27'),
(147, 15, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:52:28'),
(148, 16, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:52:28'),
(149, 17, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:52:28'),
(150, 18, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:52:28'),
(151, 19, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:52:28'),
(152, 31, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:52:28'),
(153, 32, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:52:28'),
(154, 33, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:52:28'),
(155, 68, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:56:43'),
(156, 69, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:56:43'),
(157, 70, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:56:43'),
(158, 20, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:56:43'),
(159, 21, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:56:43'),
(160, 22, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:56:43'),
(161, 23, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:56:43'),
(162, 24, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:56:43'),
(163, 25, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:56:43'),
(164, 26, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:56:43'),
(165, 27, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:56:43'),
(166, 63, 3, 1, 1, NULL, '2022-01-14 06:51:34', NULL),
(167, 64, 3, 1, 1, NULL, '2022-01-14 06:51:34', NULL),
(168, 65, 3, 1, 1, NULL, '2022-01-14 06:51:34', NULL),
(169, 34, 3, 1, 1, NULL, '2022-01-14 06:51:34', NULL),
(170, 35, 3, 1, 1, NULL, '2022-01-14 06:51:34', NULL),
(171, 36, 3, 1, 1, NULL, '2022-01-14 06:51:34', NULL),
(172, 37, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:56:43'),
(173, 60, 3, 1, 1, NULL, '2022-01-14 06:51:34', NULL),
(174, 67, 3, 1, 1, NULL, '2022-01-14 06:51:34', NULL),
(175, 56, 3, 0, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:57:37'),
(176, 57, 3, 0, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:57:37'),
(177, 58, 3, 0, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:57:37'),
(178, 59, 3, 0, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:57:37'),
(179, 53, 3, 0, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:57:37'),
(180, 54, 3, 0, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:57:37'),
(181, 55, 3, 0, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:57:37'),
(182, 38, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:56:43'),
(183, 42, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:56:43'),
(184, 43, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:56:43'),
(185, 44, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:56:43'),
(186, 39, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:56:43'),
(187, 40, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:56:43'),
(188, 41, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:56:43'),
(189, 66, 3, 0, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:57:37'),
(190, 45, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:56:43'),
(191, 46, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:56:43'),
(192, 47, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:56:43'),
(193, 48, 3, 0, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:57:37'),
(194, 49, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:56:43'),
(195, 50, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:56:43'),
(196, 51, 3, 1, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:56:43'),
(197, 52, 3, 0, 1, 1, '2022-01-14 06:51:34', '2022-01-14 06:57:37'),
(198, 68, 2, 0, 1, NULL, '2022-01-14 06:56:16', NULL),
(199, 69, 2, 0, 1, NULL, '2022-01-14 06:56:16', NULL),
(200, 70, 2, 0, 1, NULL, '2022-01-14 06:56:16', NULL),
(201, 63, 2, 0, 1, NULL, '2022-01-14 06:56:16', NULL),
(202, 64, 2, 0, 1, NULL, '2022-01-14 06:56:16', NULL),
(203, 65, 2, 0, 1, NULL, '2022-01-14 06:56:16', NULL),
(204, 60, 2, 0, 1, NULL, '2022-01-14 06:56:16', NULL),
(205, 67, 2, 0, 1, NULL, '2022-01-14 06:56:16', NULL),
(206, 66, 2, 1, 1, NULL, '2022-01-14 06:56:17', NULL),
(207, 1, 4, 1, 1, NULL, '2022-01-14 06:58:41', NULL),
(208, 2, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(209, 3, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(210, 4, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(211, 5, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(212, 6, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(213, 7, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(214, 8, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(215, 9, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(216, 10, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(217, 11, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(218, 12, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(219, 28, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(220, 29, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(221, 30, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(222, 13, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(223, 14, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(224, 15, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(225, 16, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(226, 17, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(227, 18, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(228, 19, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(229, 31, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(230, 32, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(231, 33, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(232, 68, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(233, 69, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(234, 70, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(235, 20, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(236, 21, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(237, 22, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(238, 23, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(239, 24, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(240, 25, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(241, 26, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(242, 27, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(243, 63, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(244, 64, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(245, 65, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(246, 34, 4, 1, 1, NULL, '2022-01-14 06:58:41', NULL),
(247, 35, 4, 1, 1, NULL, '2022-01-14 06:58:41', NULL),
(248, 36, 4, 1, 1, NULL, '2022-01-14 06:58:41', NULL),
(249, 37, 4, 1, 1, NULL, '2022-01-14 06:58:41', NULL),
(250, 60, 4, 1, 1, NULL, '2022-01-14 06:58:41', NULL),
(251, 67, 4, 1, 1, NULL, '2022-01-14 06:58:41', NULL),
(252, 56, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(253, 57, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(254, 58, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(255, 59, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(256, 53, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(257, 54, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(258, 55, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(259, 38, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(260, 42, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(261, 43, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(262, 44, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(263, 39, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(264, 40, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(265, 41, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(266, 66, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(267, 45, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(268, 46, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(269, 47, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(270, 48, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(271, 49, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(272, 50, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(273, 51, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(274, 52, 4, 0, 1, NULL, '2022-01-14 06:58:41', NULL),
(275, 71, 1, 1, 1, NULL, '2022-03-24 17:30:52', NULL),
(276, 72, 1, 1, 1, NULL, '2022-03-24 17:30:52', NULL),
(277, 73, 1, 1, 1, NULL, '2022-03-24 17:30:52', NULL),
(278, 74, 1, 1, 1, NULL, '2022-03-24 17:30:52', NULL),
(279, 75, 1, 1, 1, NULL, '2022-03-24 18:30:54', NULL),
(280, 76, 1, 1, 1, NULL, '2022-04-13 19:04:39', NULL),
(281, 77, 1, 1, 1, NULL, '2022-04-13 20:04:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sec_role_permission_infos`
--

CREATE TABLE `sec_role_permission_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sec_resource_id` bigint(20) UNSIGNED NOT NULL,
  `permission_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `route_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sec_role_permission_infos`
--

INSERT INTO `sec_role_permission_infos` (`id`, `sec_resource_id`, `permission_name`, `route_name`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 2, 'Booking Status', 'dashboard.booking.status', 1, 1, NULL, '2021-12-24 21:34:40'),
(2, 4, 'Add', 'add.new.user', 1, 1, NULL, NULL),
(3, 4, 'Edit', 'edit.user.info', 1, 1, NULL, NULL),
(4, 4, 'Delete', 'delete.user.info', 1, 1, NULL, NULL),
(5, 5, 'Add', 'add.new.role', 1, 1, NULL, NULL),
(6, 5, 'Edit', 'edit.role.info', 1, 1, NULL, NULL),
(7, 5, 'Delete', 'delete.role.info', 1, 1, NULL, NULL),
(8, 6, 'Save Permission', 'save.or.update.permission', 1, 1, NULL, NULL),
(9, 6, 'Edit Menu Name', 'update.resource.display.name', 1, 1, NULL, NULL),
(10, 8, 'Update', 'department.update', 1, 1, '2021-10-12 03:51:58', '2021-10-12 03:52:25'),
(11, 8, 'Add', 'department.add', 1, 1, '2021-10-12 03:53:02', '2021-10-12 03:53:02'),
(12, 8, 'Delete', 'department.delete', 1, 1, '2021-10-12 03:53:18', '2021-10-12 03:53:18'),
(13, 9, 'Add', 'designation.store', 1, 1, '2021-10-13 05:01:56', '2021-10-13 05:01:56'),
(14, 9, 'Update', 'designation.update', 1, 1, '2021-10-13 05:03:21', '2021-10-13 05:03:21'),
(15, 9, 'Delete', 'designation.delete', 1, 1, '2021-10-13 05:03:37', '2021-10-13 05:03:37'),
(16, 10, 'Add', 'company.add', 1, 1, '2021-10-18 03:32:18', '2021-10-18 03:32:18'),
(17, 10, 'Update', 'company.update', 1, 1, '2021-10-18 03:32:49', '2021-10-18 03:32:49'),
(18, 11, 'Add', 'business.hour.add', 1, 1, '2021-10-18 03:35:59', '2021-10-18 03:35:59'),
(19, 11, 'Update', 'business.hour.update', 1, 1, '2021-10-18 03:36:30', '2021-10-18 03:36:30'),
(20, 14, 'Add', 'service.add', 1, 1, '2021-10-18 06:57:28', '2021-10-30 04:47:35'),
(21, 14, 'Update', 'service.update', 1, 1, '2021-10-18 06:57:46', '2021-10-30 04:47:54'),
(22, 14, 'Delete', 'service.delete', 1, 1, '2021-10-18 06:58:00', '2021-10-30 04:48:07'),
(23, 16, 'Add', 'employee.add', 1, 1, '2021-10-19 21:13:59', '2021-10-19 21:13:59'),
(24, 16, 'Update', 'employee.update', 1, 1, '2021-10-19 21:14:13', '2021-10-19 21:14:13'),
(25, 16, 'Save Change Off Day', 'save.update.offday', 1, 1, '2021-10-29 05:21:35', '2021-10-29 05:21:35'),
(26, 16, 'Delete Off day', 'delete.employee.offday', 1, 1, '2021-10-29 17:58:05', '2021-10-29 17:58:05'),
(27, 16, 'Move Off day', 'update.offday.by.move', 1, 1, '2021-10-29 19:09:56', '2021-10-29 19:09:56'),
(28, 18, 'Add', 'branch.add', 1, 1, '2021-10-31 05:42:22', '2021-10-31 05:42:22'),
(29, 18, 'Update', 'branch.update', 1, 1, '2021-10-31 05:42:36', '2021-10-31 05:42:36'),
(30, 18, 'Delete', 'branch.delete', 1, 1, '2021-10-31 05:43:05', '2021-10-31 05:43:05'),
(31, 17, 'Save Change', 'save.update.business.holiday', 1, 1, '2021-10-31 05:43:37', '2021-10-31 05:43:37'),
(32, 17, 'Move', 'update.business.holiday.by.move', 1, 1, '2021-10-31 05:44:11', '2021-10-31 05:44:11'),
(33, 17, 'Delete', 'delete.business.holiday', 1, 1, '2021-10-31 05:44:27', '2021-10-31 05:44:27'),
(34, 20, 'Save Booking', 'save.service.booking', 1, 1, '2021-12-07 04:06:46', '2021-12-07 04:06:46'),
(35, 20, 'Update Booking', 'update.service.booking', 1, 1, '2021-12-11 05:14:10', '2021-12-11 05:14:10'),
(36, 20, 'Cancel Booking', 'cancel.service.booking', 1, 1, '2021-12-12 06:53:43', '2021-12-27 02:49:08'),
(37, 20, 'Delete Booking', 'delete.service.booking', 1, 1, '2021-12-12 06:54:02', '2021-12-12 06:54:02'),
(38, 25, 'Save Change', 'save.or.update.appearance', 1, 1, '2021-12-18 02:17:31', '2021-12-18 02:17:31'),
(39, 27, 'Save', 'website.save.client.testimonial', 1, 1, '2021-12-21 07:28:52', '2021-12-21 07:28:52'),
(40, 27, 'Update', 'website.update.client.testimonial', 1, 1, '2021-12-21 07:29:08', '2021-12-21 07:29:08'),
(41, 27, 'Delete', 'website.delete.client.testimonial', 1, 1, '2021-12-21 07:29:22', '2021-12-21 07:29:22'),
(42, 26, 'Save', 'website.save.aboutus', 1, 1, '2021-12-21 07:29:37', '2021-12-21 07:29:37'),
(43, 26, 'Update', 'website.update.aboutus', 1, 1, '2021-12-21 07:29:55', '2021-12-21 07:29:55'),
(44, 26, 'Delete', 'website.delete.aboutus', 1, 1, '2021-12-21 07:30:09', '2021-12-21 07:30:09'),
(45, 28, 'Save', 'website.save.frequently.asked.question', 1, 1, '2021-12-21 07:54:32', '2021-12-21 07:54:32'),
(46, 28, 'Update', 'website.update.frequently.asked.question', 1, 1, '2021-12-21 07:54:44', '2021-12-21 07:54:44'),
(47, 28, 'Delete', 'website.delete.frequently.asked.Question', 1, 1, '2021-12-21 07:55:05', '2021-12-21 07:55:05'),
(48, 29, 'Save Change', 'website.save.or.update.google.map', 1, 1, '2021-12-21 17:40:48', '2021-12-21 17:40:48'),
(49, 30, 'Save', 'website.save.photo.gallery', 1, 1, '2021-12-21 18:30:49', '2021-12-21 18:30:49'),
(50, 30, 'Update', 'website.update.photo.gallery', 1, 1, '2021-12-21 18:31:08', '2021-12-21 18:31:08'),
(51, 30, 'Delete', 'website.delete.photo.gallery', 1, 1, '2021-12-21 18:31:20', '2021-12-21 18:31:20'),
(52, 31, 'Save Change', 'website.save.or.update.terms.condition', 1, 1, '2021-12-22 06:49:07', '2021-12-22 06:49:07'),
(53, 32, 'Save', 'website.save.menu', 1, 1, '2021-12-24 02:52:04', '2021-12-24 02:52:04'),
(54, 32, 'Update', 'website.update.menu', 1, 1, '2021-12-24 02:52:23', '2021-12-24 02:52:23'),
(55, 32, 'Delete', 'website.delete.menu', 1, 1, '2021-12-24 02:52:40', '2021-12-24 02:52:40'),
(56, 34, 'Save Change Currency', 'save.or.update.currency', 1, 1, '2021-12-24 07:14:02', '2022-01-23 07:50:46'),
(57, 34, 'Enable Local Payment', 'currency.update', 1, 1, '2021-12-24 07:14:19', '2022-01-23 07:50:19'),
(58, 34, 'Enable Paypal Payment', 'enable.or.disable.paypa.payment', 1, 1, '2021-12-24 07:14:38', '2022-01-23 07:49:48'),
(59, 34, 'Save Paypal API', 'save.or.update.paypal.config', 1, 1, '2021-12-24 07:15:23', '2022-01-23 07:49:25'),
(60, 20, 'Done Booking', 'done.service.booking', 1, 1, '2021-12-27 02:49:29', '2021-12-27 02:49:29'),
(63, 22, 'Save', 'customer.store', 1, 1, '2022-01-04 02:57:54', '2022-01-04 02:57:54'),
(64, 22, 'Update', 'customer.update', 1, 1, '2022-01-04 02:58:14', '2022-01-04 02:58:14'),
(65, 22, 'Delete', 'customer.delete', 1, 1, '2022-01-04 02:58:31', '2022-01-04 02:58:31'),
(66, 37, 'Save Change', 'save.email.configuration', 1, 1, '2022-01-10 07:25:56', '2022-01-10 07:25:56'),
(67, 36, 'Change Service Status', 'change.service.booking.status', 1, 1, '2022-01-10 07:27:32', '2022-01-10 07:27:32'),
(68, 13, 'Add', 'category.add', 1, 1, '2022-01-14 06:31:24', '2022-01-14 06:31:24'),
(69, 13, 'Update', 'category.update', 1, 1, '2022-01-14 06:31:38', '2022-01-14 06:31:38'),
(70, 13, 'Delete', 'category.delete', 1, 1, '2022-01-14 06:31:53', '2022-01-14 06:31:53'),
(71, 38, 'Save Change', 'save.language', 1, 1, '2022-03-24 17:12:28', '2022-03-24 17:12:28'),
(72, 38, 'Update', 'update.language', 1, 1, '2022-03-24 17:13:03', '2022-03-24 17:13:03'),
(73, 38, 'Delete', 'delete.language', 1, 1, '2022-03-24 17:13:19', '2022-03-24 17:13:19'),
(74, 38, 'Save Translated Language', 'save.translated.language', 1, 1, '2022-03-24 17:14:17', '2022-03-24 17:14:17'),
(75, 38, 'Update RTL', 'update.rtl.status', 1, 1, '2022-03-24 18:30:34', '2022-03-24 18:30:34'),
(76, 34, 'Enable Stripe Payment', 'enable.or.disable.stripe.payment', 1, 1, '2022-04-13 19:04:14', '2022-04-13 19:04:14'),
(77, 34, 'Save Stripe API', 'save.or.update.stripe.config', 1, 1, '2022-04-13 20:00:41', '2022-04-13 20:00:41');

-- --------------------------------------------------------

--
-- Table structure for table `sec_user_branches`
--

CREATE TABLE `sec_user_branches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `cmn_branch_id` bigint(20) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sec_user_branches`
--

INSERT INTO `sec_user_branches` (`id`, `user_id`, `cmn_branch_id`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(46, 30, 1, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sec_user_roles`
--

CREATE TABLE `sec_user_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sec_user_id` bigint(20) UNSIGNED NOT NULL,
  `sec_role_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sec_user_roles`
--

INSERT INTO `sec_user_roles` (`id`, `sec_user_id`, `sec_role_id`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, NULL, NULL, '2022-01-24 06:27:27'),
(12, 30, 4, 1, 1, NULL, '2022-01-14 07:05:43', '2022-01-14 07:05:43');

-- --------------------------------------------------------

--
-- Table structure for table `site_about_us`
--

CREATE TABLE `site_about_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` varchar(3000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(1500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_about_us`
--

INSERT INTO `site_about_us` (`id`, `title`, `details`, `image_url`, `status`, `order`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Example About  Title.', 'Example about details.', 'uploadfiles/NkEgaStAhCw3Cn4e674Axd9iHUcq5kYYDW3u7bHV.jpg', 1, 0, NULL, 1, NULL, '2022-01-23 07:36:52');

-- --------------------------------------------------------

--
-- Table structure for table `site_appearances`
--

CREATE TABLE `site_appearances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `app_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `motto` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theam_color` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theam_menu_color2` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theam_hover_color` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theam_active_color` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook_link` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube_link` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_link` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram_link` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_service` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_phone` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_web` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_image` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `login_background_image` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_appearances`
--

INSERT INTO `site_appearances` (`id`, `app_name`, `logo`, `icon`, `motto`, `theam_color`, `theam_menu_color2`, `theam_hover_color`, `theam_active_color`, `facebook_link`, `youtube_link`, `twitter_link`, `instagram_link`, `about_service`, `contact_email`, `contact_phone`, `contact_web`, `address`, `background_image`, `login_background_image`, `meta_title`, `meta_description`, `meta_keywords`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Demo Booking', 'uploadfiles/Q0nUSMb5m849o33jV6jEfprgoIy4fHwjekv5CpEz.png', 'uploadfiles/zA6rybWqCD6x9pZBkYPleYReCmKNKDplR8LSe1o9.ico', 'Demo Website Motto', '#007bff', '#ffffff', '#0b66c8', '#499df6', '#', '#', '#', '#', 'Example about service.', 'demo@example.com', '+67 0112 11111', 'www.example.com', 'Example address', 'uploadfiles/xBXh5meQhHnilJkEeENqCWrJCmt4rbPV0ftRI44L.jpg', 'uploadfiles/aBRExUHaD2RcAiphZ42Si46BaUyZXpJkYMnFSBnr.jpg', 'Example meta', 'Example meta description', 'Example', NULL, 1, NULL, '2022-01-23 07:31:57');

-- --------------------------------------------------------

--
-- Table structure for table `site_client_testimonials`
--

CREATE TABLE `site_client_testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int(11) NOT NULL,
  `image` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_phone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_email` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_ref` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_client_testimonials`
--

INSERT INTO `site_client_testimonials` (`id`, `name`, `description`, `rating`, `image`, `contact_phone`, `contact_email`, `client_ref`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Example Client Name', 'Example Feedback.', 3, 'uploadfiles/A67OhPaVjkOxeg10pIT9eG5k4WTUtI5IhMUlskAl.jpg', NULL, NULL, NULL, 1, NULL, 1, NULL, '2022-01-23 07:37:38');

-- --------------------------------------------------------

--
-- Table structure for table `site_frequently_asked_questions`
--

CREATE TABLE `site_frequently_asked_questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_frequently_asked_questions`
--

INSERT INTO `site_frequently_asked_questions` (`id`, `question`, `answer`, `status`, `order`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Example FAQ?', 'Example FAQ', 1, 1, NULL, 1, NULL, '2022-01-23 07:37:11');

-- --------------------------------------------------------

--
-- Table structure for table `site_google_maps`
--

CREATE TABLE `site_google_maps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lat` decimal(18,6) NOT NULL,
  `long` decimal(18,6) NOT NULL,
  `map_key` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_google_maps`
--

INSERT INTO `site_google_maps` (`id`, `lat`, `long`, `map_key`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(2, '24.877255', '90.386725', 'AIzaSyDwRZb6VdsCVE5gFMtR3X6Dik1Tx9bxhq0', 1, 1, '2021-12-21 17:50:08', '2022-01-23 07:39:35');

-- --------------------------------------------------------

--
-- Table structure for table `site_menus`
--

CREATE TABLE `site_menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_menu_id` int(11) NOT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `route` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remarks` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_menus`
--

INSERT INTO `site_menus` (`id`, `name`, `site_menu_id`, `order`, `route`, `remarks`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Service', 0, 1, 'site.menu.services', '', 1, NULL, NULL, NULL, NULL),
(2, 'Our Team', 0, 2, 'site.menu.team', '', 1, NULL, NULL, NULL, NULL),
(3, 'Home', 0, 0, 'site.home', '', 1, NULL, NULL, NULL, NULL),
(4, 'About Us', 0, 5, 'site.about.us', '', 1, NULL, NULL, NULL, NULL),
(5, 'Contact Us', 0, 6, 'site.contact', '', 1, NULL, NULL, NULL, NULL),
(7, 'Photo Gallery', 0, 3, 'site.photo.gallery', NULL, 1, NULL, 1, NULL, '2021-12-23 18:35:29'),
(8, 'FAQ', 0, 4, 'site.faq', NULL, 1, NULL, 1, NULL, '2021-12-23 18:35:17');

-- --------------------------------------------------------

--
-- Table structure for table `site_photo_galleries`
--

CREATE TABLE `site_photo_galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_url` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_photo_galleries`
--

INSERT INTO `site_photo_galleries` (`id`, `name`, `image_url`, `order`, `status`, `description`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(2, 'Example Name', 'uploadfiles/fQLn6wrjdOzDq3SVHNdpN9XciNQIPDW9tMSF2Utg.jpg', 0, 1, NULL, NULL, 1, NULL, '2022-01-23 07:37:56');

-- --------------------------------------------------------

--
-- Table structure for table `site_terms_and_conditions`
--

CREATE TABLE `site_terms_and_conditions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_terms_and_conditions`
--

INSERT INTO `site_terms_and_conditions` (`id`, `details`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, '<p>Example terms &amp; conditions</p>', 1, NULL, 1, NULL, '2022-01-13 18:40:03');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_sys_adm` int(11) NOT NULL DEFAULT 0,
  `user_type` tinyint(4) NOT NULL DEFAULT 2,
  `photo` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sch_employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `email` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `is_sys_adm`, `user_type`, `photo`, `sch_employee_id`, `status`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin User', 'admin', 1, 1, 'uploadfiles/gCmBjghX7Fir4liC67nsJwmnUGgAZZ49TZzAaf29.jpg', NULL, 1, 'admin@example.com', '2021-10-11 04:59:29', '$2y$10$hlDiJ1sLjAXNRpjUNqBEh.bOek0gUc3d8YOOsoBsRfvSmEWn1tvg.', '7F8JQIsKlgljDzzv1vd7hHSTjRrt3hRqwnOWQbAItXUrSfZ0YqwQUrslWU3y', NULL, '2022-01-24 06:27:27'),
(29, 'Web User', 'webuser', 0, 2, NULL, NULL, 1, 'webuser@example.com', '2022-01-07 06:54:59', '$2y$10$hlDiJ1sLjAXNRpjUNqBEh.bOek0gUc3d8YOOsoBsRfvSmEWn1tvg.', 'M3sSk1deGVOh7FqDEXqzpDjR16RDqZO3sA0C70zeskDVp6p3F17mUtsF2YSY', '2022-01-07 06:54:59', '2022-01-14 07:25:15'),
(30, 'Staff Employee', 'staff', 0, 1, NULL, 1, 1, 'staff@gmail.com', '2022-01-14 07:05:43', '$2y$10$hlDiJ1sLjAXNRpjUNqBEh.bOek0gUc3d8YOOsoBsRfvSmEWn1tvg.', NULL, '2022-01-14 07:05:43', '2022-01-14 07:05:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cmn_branches`
--
ALTER TABLE `cmn_branches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cmn_branches_name_unique` (`name`),
  ADD UNIQUE KEY `cmn_branches_phone_unique` (`phone`),
  ADD UNIQUE KEY `cmn_branches_email_unique` (`email`);

--
-- Indexes for table `cmn_business_holidays`
--
ALTER TABLE `cmn_business_holidays`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cmn_business_holidays_cmn_branch_id_foreign` (`cmn_branch_id`);

--
-- Indexes for table `cmn_business_hours`
--
ALTER TABLE `cmn_business_hours`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uk_cmn_business_hours_day_cmn_branch_id` (`day`,`cmn_branch_id`),
  ADD KEY `cmn_business_hours_cmn_branch_id_foreign` (`cmn_branch_id`);

--
-- Indexes for table `cmn_companies`
--
ALTER TABLE `cmn_companies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cmn_companies_name_unique` (`name`);

--
-- Indexes for table `cmn_currency_setups`
--
ALTER TABLE `cmn_currency_setups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cmn_currency_setups_name_unique` (`name`);

--
-- Indexes for table `cmn_customers`
--
ALTER TABLE `cmn_customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cmn_customers_phone_no_unique` (`phone_no`),
  ADD UNIQUE KEY `cmn_customers_email_unique` (`email`),
  ADD KEY `cmn_customers_user_id_foreign` (`user_id`);

--
-- Indexes for table `cmn_languages`
--
ALTER TABLE `cmn_languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cmn_languages_code_unique` (`code`);

--
-- Indexes for table `cmn_payment_infos`
--
ALTER TABLE `cmn_payment_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cmn_payment_types`
--
ALTER TABLE `cmn_payment_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cmn_payment_types_name_unique` (`name`);

--
-- Indexes for table `cmn_paypal_api_configs`
--
ALTER TABLE `cmn_paypal_api_configs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cmn_paypal_api_configs_cmn_payment_type_id_foreign` (`cmn_payment_type_id`);

--
-- Indexes for table `cmn_stripe_api_configs`
--
ALTER TABLE `cmn_stripe_api_configs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cmn_stripe_api_configs_cmn_payment_type_id_foreign` (`cmn_payment_type_id`);

--
-- Indexes for table `cmn_translations`
--
ALTER TABLE `cmn_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cmn_translations_cmn_language_id_foreign` (`cmn_language_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `hrm_departments`
--
ALTER TABLE `hrm_departments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hrm_departments_name_unique` (`name`);

--
-- Indexes for table `hrm_designations`
--
ALTER TABLE `hrm_designations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hrm_designations_name_unique` (`name`);

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
-- Indexes for table `sch_employees`
--
ALTER TABLE `sch_employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sch_employees_employee_id_unique` (`employee_id`),
  ADD KEY `sch_employees_user_id_foreign` (`user_id`),
  ADD KEY `sch_employees_cmn_branch_id_foreign` (`cmn_branch_id`),
  ADD KEY `sch_employees_hrm_department_id_foreign` (`hrm_department_id`),
  ADD KEY `sch_employees_hrm_designation_id_foreign` (`hrm_designation_id`);

--
-- Indexes for table `sch_employee_offdays`
--
ALTER TABLE `sch_employee_offdays`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sch_employee_offdays_sch_employee_id_foreign` (`sch_employee_id`);

--
-- Indexes for table `sch_employee_schedules`
--
ALTER TABLE `sch_employee_schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sch_employee_schedules_sch_employee_id_foreign` (`sch_employee_id`);

--
-- Indexes for table `sch_employee_services`
--
ALTER TABLE `sch_employee_services`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sch_employee_services_sch_employee_id_sch_service_id_unique` (`sch_employee_id`,`sch_service_id`),
  ADD KEY `sch_employee_services_sch_service_id_foreign` (`sch_service_id`);

--
-- Indexes for table `sch_services`
--
ALTER TABLE `sch_services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sch_services_sch_service_category_id_foreign` (`sch_service_category_id`);

--
-- Indexes for table `sch_service_bookings`
--
ALTER TABLE `sch_service_bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sch_service_bookings_cmn_branch_id_foreign` (`cmn_branch_id`),
  ADD KEY `sch_service_bookings_cmn_customer_id_foreign` (`cmn_customer_id`),
  ADD KEY `sch_service_bookings_sch_employee_id_foreign` (`sch_employee_id`),
  ADD KEY `sch_service_bookings_sch_service_id_foreign` (`sch_service_id`),
  ADD KEY `sch_service_bookings_cmn_payment_type_id_foreign` (`cmn_payment_type_id`),
  ADD KEY `sch_service_bookings_cancel_cmn_payment_type_id_foreign` (`cancel_cmn_payment_type_id`);

--
-- Indexes for table `sch_service_categories`
--
ALTER TABLE `sch_service_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sch_service_categories_name_unique` (`name`);

--
-- Indexes for table `sec_resources`
--
ALTER TABLE `sec_resources`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sec_resource_permissions`
--
ALTER TABLE `sec_resource_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sec_resource_permissions_sec_role_id_foreign` (`sec_role_id`),
  ADD KEY `sec_resource_permissions_sec_resource_id_foreign` (`sec_resource_id`);

--
-- Indexes for table `sec_roles`
--
ALTER TABLE `sec_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sec_role_permissions`
--
ALTER TABLE `sec_role_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sec_role_permissions_sec_role_permission_info_id_foreign` (`sec_role_permission_info_id`),
  ADD KEY `sec_role_permissions_sec_role_id_foreign` (`sec_role_id`);

--
-- Indexes for table `sec_role_permission_infos`
--
ALTER TABLE `sec_role_permission_infos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sec_role_permission_infos_sec_resource_id_foreign` (`sec_resource_id`);

--
-- Indexes for table `sec_user_branches`
--
ALTER TABLE `sec_user_branches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sec_user_branches_user_id_foreign` (`user_id`),
  ADD KEY `sec_user_branches_cmn_branch_id_foreign` (`cmn_branch_id`);

--
-- Indexes for table `sec_user_roles`
--
ALTER TABLE `sec_user_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sec_user_roles_sec_user_id_foreign` (`sec_user_id`),
  ADD KEY `sec_user_roles_sec_role_id_foreign` (`sec_role_id`);

--
-- Indexes for table `site_about_us`
--
ALTER TABLE `site_about_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_appearances`
--
ALTER TABLE `site_appearances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_client_testimonials`
--
ALTER TABLE `site_client_testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_frequently_asked_questions`
--
ALTER TABLE `site_frequently_asked_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_google_maps`
--
ALTER TABLE `site_google_maps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_menus`
--
ALTER TABLE `site_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_photo_galleries`
--
ALTER TABLE `site_photo_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_terms_and_conditions`
--
ALTER TABLE `site_terms_and_conditions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD KEY `users_sch_employee_id_foreign` (`sch_employee_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cmn_branches`
--
ALTER TABLE `cmn_branches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cmn_business_holidays`
--
ALTER TABLE `cmn_business_holidays`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `cmn_business_hours`
--
ALTER TABLE `cmn_business_hours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `cmn_companies`
--
ALTER TABLE `cmn_companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `cmn_currency_setups`
--
ALTER TABLE `cmn_currency_setups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cmn_customers`
--
ALTER TABLE `cmn_customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `cmn_languages`
--
ALTER TABLE `cmn_languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cmn_payment_infos`
--
ALTER TABLE `cmn_payment_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cmn_payment_types`
--
ALTER TABLE `cmn_payment_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cmn_paypal_api_configs`
--
ALTER TABLE `cmn_paypal_api_configs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cmn_stripe_api_configs`
--
ALTER TABLE `cmn_stripe_api_configs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cmn_translations`
--
ALTER TABLE `cmn_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=351;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hrm_departments`
--
ALTER TABLE `hrm_departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hrm_designations`
--
ALTER TABLE `hrm_designations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `sch_employees`
--
ALTER TABLE `sch_employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sch_employee_offdays`
--
ALTER TABLE `sch_employee_offdays`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sch_employee_schedules`
--
ALTER TABLE `sch_employee_schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `sch_employee_services`
--
ALTER TABLE `sch_employee_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sch_services`
--
ALTER TABLE `sch_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sch_service_bookings`
--
ALTER TABLE `sch_service_bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sch_service_categories`
--
ALTER TABLE `sch_service_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sec_resources`
--
ALTER TABLE `sec_resources`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `sec_resource_permissions`
--
ALTER TABLE `sec_resource_permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT for table `sec_roles`
--
ALTER TABLE `sec_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sec_role_permissions`
--
ALTER TABLE `sec_role_permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=282;

--
-- AUTO_INCREMENT for table `sec_role_permission_infos`
--
ALTER TABLE `sec_role_permission_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `sec_user_branches`
--
ALTER TABLE `sec_user_branches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `sec_user_roles`
--
ALTER TABLE `sec_user_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `site_about_us`
--
ALTER TABLE `site_about_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `site_appearances`
--
ALTER TABLE `site_appearances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `site_client_testimonials`
--
ALTER TABLE `site_client_testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `site_frequently_asked_questions`
--
ALTER TABLE `site_frequently_asked_questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `site_google_maps`
--
ALTER TABLE `site_google_maps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `site_menus`
--
ALTER TABLE `site_menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `site_photo_galleries`
--
ALTER TABLE `site_photo_galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `site_terms_and_conditions`
--
ALTER TABLE `site_terms_and_conditions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cmn_business_holidays`
--
ALTER TABLE `cmn_business_holidays`
  ADD CONSTRAINT `cmn_business_holidays_cmn_branch_id_foreign` FOREIGN KEY (`cmn_branch_id`) REFERENCES `cmn_branches` (`id`);

--
-- Constraints for table `cmn_business_hours`
--
ALTER TABLE `cmn_business_hours`
  ADD CONSTRAINT `cmn_business_hours_cmn_branch_id_foreign` FOREIGN KEY (`cmn_branch_id`) REFERENCES `cmn_branches` (`id`);

--
-- Constraints for table `cmn_customers`
--
ALTER TABLE `cmn_customers`
  ADD CONSTRAINT `cmn_customers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `cmn_paypal_api_configs`
--
ALTER TABLE `cmn_paypal_api_configs`
  ADD CONSTRAINT `cmn_paypal_api_configs_cmn_payment_type_id_foreign` FOREIGN KEY (`cmn_payment_type_id`) REFERENCES `cmn_payment_types` (`id`);

--
-- Constraints for table `cmn_stripe_api_configs`
--
ALTER TABLE `cmn_stripe_api_configs`
  ADD CONSTRAINT `cmn_stripe_api_configs_cmn_payment_type_id_foreign` FOREIGN KEY (`cmn_payment_type_id`) REFERENCES `cmn_payment_types` (`id`);

--
-- Constraints for table `cmn_translations`
--
ALTER TABLE `cmn_translations`
  ADD CONSTRAINT `cmn_translations_cmn_language_id_foreign` FOREIGN KEY (`cmn_language_id`) REFERENCES `cmn_languages` (`id`);

--
-- Constraints for table `sch_employees`
--
ALTER TABLE `sch_employees`
  ADD CONSTRAINT `sch_employees_cmn_branch_id_foreign` FOREIGN KEY (`cmn_branch_id`) REFERENCES `cmn_branches` (`id`),
  ADD CONSTRAINT `sch_employees_hrm_department_id_foreign` FOREIGN KEY (`hrm_department_id`) REFERENCES `hrm_departments` (`id`),
  ADD CONSTRAINT `sch_employees_hrm_designation_id_foreign` FOREIGN KEY (`hrm_designation_id`) REFERENCES `hrm_designations` (`id`),
  ADD CONSTRAINT `sch_employees_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `sch_employee_offdays`
--
ALTER TABLE `sch_employee_offdays`
  ADD CONSTRAINT `sch_employee_offdays_sch_employee_id_foreign` FOREIGN KEY (`sch_employee_id`) REFERENCES `sch_employees` (`id`);

--
-- Constraints for table `sch_employee_schedules`
--
ALTER TABLE `sch_employee_schedules`
  ADD CONSTRAINT `sch_employee_schedules_sch_employee_id_foreign` FOREIGN KEY (`sch_employee_id`) REFERENCES `sch_employees` (`id`);

--
-- Constraints for table `sch_employee_services`
--
ALTER TABLE `sch_employee_services`
  ADD CONSTRAINT `sch_employee_services_sch_employee_id_foreign` FOREIGN KEY (`sch_employee_id`) REFERENCES `sch_employees` (`id`),
  ADD CONSTRAINT `sch_employee_services_sch_service_id_foreign` FOREIGN KEY (`sch_service_id`) REFERENCES `sch_services` (`id`);

--
-- Constraints for table `sch_services`
--
ALTER TABLE `sch_services`
  ADD CONSTRAINT `sch_services_sch_service_category_id_foreign` FOREIGN KEY (`sch_service_category_id`) REFERENCES `sch_service_categories` (`id`);

--
-- Constraints for table `sch_service_bookings`
--
ALTER TABLE `sch_service_bookings`
  ADD CONSTRAINT `sch_service_bookings_cancel_cmn_payment_type_id_foreign` FOREIGN KEY (`cancel_cmn_payment_type_id`) REFERENCES `cmn_payment_types` (`id`),
  ADD CONSTRAINT `sch_service_bookings_cmn_branch_id_foreign` FOREIGN KEY (`cmn_branch_id`) REFERENCES `cmn_branches` (`id`),
  ADD CONSTRAINT `sch_service_bookings_cmn_customer_id_foreign` FOREIGN KEY (`cmn_customer_id`) REFERENCES `cmn_customers` (`id`),
  ADD CONSTRAINT `sch_service_bookings_cmn_payment_type_id_foreign` FOREIGN KEY (`cmn_payment_type_id`) REFERENCES `cmn_payment_types` (`id`),
  ADD CONSTRAINT `sch_service_bookings_sch_employee_id_foreign` FOREIGN KEY (`sch_employee_id`) REFERENCES `sch_employees` (`id`),
  ADD CONSTRAINT `sch_service_bookings_sch_service_id_foreign` FOREIGN KEY (`sch_service_id`) REFERENCES `sch_services` (`id`);

--
-- Constraints for table `sec_resource_permissions`
--
ALTER TABLE `sec_resource_permissions`
  ADD CONSTRAINT `sec_resource_permissions_sec_resource_id_foreign` FOREIGN KEY (`sec_resource_id`) REFERENCES `sec_resources` (`id`),
  ADD CONSTRAINT `sec_resource_permissions_sec_role_id_foreign` FOREIGN KEY (`sec_role_id`) REFERENCES `sec_roles` (`id`);

--
-- Constraints for table `sec_role_permissions`
--
ALTER TABLE `sec_role_permissions`
  ADD CONSTRAINT `sec_role_permissions_sec_role_id_foreign` FOREIGN KEY (`sec_role_id`) REFERENCES `sec_roles` (`id`),
  ADD CONSTRAINT `sec_role_permissions_sec_role_permission_info_id_foreign` FOREIGN KEY (`sec_role_permission_info_id`) REFERENCES `sec_role_permission_infos` (`id`);

--
-- Constraints for table `sec_role_permission_infos`
--
ALTER TABLE `sec_role_permission_infos`
  ADD CONSTRAINT `sec_role_permission_infos_sec_resource_id_foreign` FOREIGN KEY (`sec_resource_id`) REFERENCES `sec_resources` (`id`);

--
-- Constraints for table `sec_user_branches`
--
ALTER TABLE `sec_user_branches`
  ADD CONSTRAINT `sec_user_branches_cmn_branch_id_foreign` FOREIGN KEY (`cmn_branch_id`) REFERENCES `cmn_branches` (`id`),
  ADD CONSTRAINT `sec_user_branches_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `sec_user_roles`
--
ALTER TABLE `sec_user_roles`
  ADD CONSTRAINT `sec_user_roles_sec_role_id_foreign` FOREIGN KEY (`sec_role_id`) REFERENCES `sec_roles` (`id`),
  ADD CONSTRAINT `sec_user_roles_sec_user_id_foreign` FOREIGN KEY (`sec_user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_sch_employee_id_foreign` FOREIGN KEY (`sch_employee_id`) REFERENCES `sch_employees` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
