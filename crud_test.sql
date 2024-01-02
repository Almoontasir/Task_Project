-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 02, 2024 at 02:37 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crud_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `catagories`
--

CREATE TABLE `catagories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Catagory_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Catagory_slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_page` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `catagories`
--

INSERT INTO `catagories` (`id`, `Catagory_name`, `Catagory_slug`, `icon`, `home_page`, `created_at`, `updated_at`) VALUES
(1, 'Electronic', 'electronic', 'file/category_icon/electronic.png', 1, NULL, NULL),
(4, 'Mans Fashion', 'mans-fashion', 'file/category_icon/mans-fashion.png', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(1, 'default', '{\"uuid\":\"1ec5ab3a-9044-42f9-b00b-c623243699b2\",\"displayName\":\"App\\\\Jobs\\\\SendEmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendEmailJob\",\"command\":\"O:21:\\\"App\\\\Jobs\\\\SendEmailJob\\\":1:{s:11:\\\"\\u0000*\\u0000sendMail\\\";s:15:\\\"admin@email.com\\\";}\"}}', 0, NULL, 1704182501, 1704182501),
(2, 'default', '{\"uuid\":\"5150c4f5-453a-4b25-9f30-7a729641a5b4\",\"displayName\":\"App\\\\Jobs\\\\SendEmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendEmailJob\",\"command\":\"O:21:\\\"App\\\\Jobs\\\\SendEmailJob\\\":1:{s:11:\\\"\\u0000*\\u0000sendMail\\\";s:18:\\\"customer@email.com\\\";}\"}}', 0, NULL, 1704182501, 1704182501);

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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(7, '2023_12_23_074500_create_catagories_table', 2),
(8, '2023_12_23_074520_create_subcatagories_table', 2),
(9, '2023_12_23_074444_create_products_table', 3),
(11, '2014_10_12_000000_create_users_table', 4),
(12, '2024_01_02_075422_create_jobs_table', 5);

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
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `subcategory_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchase_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `selling_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock_quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` int(11) DEFAULT NULL,
  `product_views` int(11) DEFAULT NULL,
  `product_slider` int(11) DEFAULT NULL,
  `trendy` int(11) DEFAULT NULL,
  `today_deal` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `flash_deal_id` int(11) DEFAULT NULL,
  `cash_on_delivery` int(11) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `subcategory_id`, `name`, `slug`, `code`, `unit`, `tags`, `color`, `size`, `video`, `purchase_price`, `selling_price`, `discount_price`, `stock_quantity`, `description`, `thumbnail`, `images`, `featured`, `product_views`, `product_slider`, `trendy`, `today_deal`, `status`, `flash_deal_id`, `cash_on_delivery`, `admin_id`, `created_at`, `updated_at`) VALUES
(2, 1, 1, 'I phone 12', 'i-phone-12', '123456', '6', 'new,phone', 'red,white', '5.5\'', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/X1b3C2081-Q?si=9gcOz-8PvnpyFGyY\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '400000', '500000', '450000', 'limited', '<table cellspacing=\"0\" style=\"margin: 0px; padding: 1px 0px; border-width: 5px 0px 0px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: initial; border-top-color: rgb(238, 238, 238); border-right-color: initial; border-bottom-color: initial; border-left-color: initial; border-image: initial; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: Arimo, Arial, sans-serif; vertical-align: baseline; width: 727px; background-color: rgb(250, 250, 250); border-spacing: 0px; color: rgb(0, 0, 0);\"><tbody style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><tr style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><th rowspan=\"4\" scope=\"row\" style=\"margin: 0px; padding: 2px 10px; border-width: 0px medium 0px 0px; border-top-style: initial; border-right-style: none; border-bottom-style: initial; border-left-style: initial; border-color: initial; border-image: initial; font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: normal; font-stretch: normal; line-height: normal; font-family: Google-Oswald, Arial; vertical-align: top; text-align: left; text-transform: uppercase; width: 86px; color: rgb(213, 0, 0);\">PLATFORM</th><td class=\"ttl\" style=\"margin: 0px; padding: 2px 10px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(240, 240, 240); border-left-color: initial; border-image: initial; font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: 700; font-stretch: normal; font-size: 14px; line-height: 16px; font-family: Arimo, Arial; vertical-align: top; color: rgb(125, 116, 100); width: 110px;\"><a href=\"https://www.gsmarena.com/glossary.php3?term=os\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(85, 85, 85);\">OS</a></td><td class=\"nfo\" data-spec=\"os\" style=\"margin: 0px; padding: 2px 10px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(240, 240, 240); border-left-color: initial; border-image: initial; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 16px; font-family: Arimo, Arial; vertical-align: top; position: relative;\">iOS 14.1, upgradable to iOS 17.2</td></tr><tr style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><td class=\"ttl\" style=\"margin: 0px; padding: 2px 10px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(240, 240, 240); border-left-color: initial; border-image: initial; font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: 700; font-stretch: normal; font-size: 14px; line-height: 16px; font-family: Arimo, Arial; vertical-align: top; color: rgb(125, 116, 100); width: 110px;\"><a href=\"https://www.gsmarena.com/glossary.php3?term=chipset\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(85, 85, 85);\">Chipset</a></td><td class=\"nfo\" data-spec=\"chipset\" style=\"margin: 0px; padding: 2px 10px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(240, 240, 240); border-left-color: initial; border-image: initial; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 16px; font-family: Arimo, Arial; vertical-align: top; position: relative;\">Apple A14 Bionic (5 nm)</td></tr><tr style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><td class=\"ttl\" style=\"margin: 0px; padding: 2px 10px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(240, 240, 240); border-left-color: initial; border-image: initial; font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: 700; font-stretch: normal; font-size: 14px; line-height: 16px; font-family: Arimo, Arial; vertical-align: top; color: rgb(125, 116, 100); width: 110px;\"><a href=\"https://www.gsmarena.com/glossary.php3?term=cpu\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(85, 85, 85);\">CPU</a></td><td class=\"nfo\" data-spec=\"cpu\" style=\"margin: 0px; padding: 2px 10px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(240, 240, 240); border-left-color: initial; border-image: initial; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 16px; font-family: Arimo, Arial; vertical-align: top; position: relative;\">Hexa-core (2x3.1 GHz Firestorm + 4x1.8 GHz Icestorm)</td></tr><tr style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><td class=\"ttl\" style=\"margin: 0px; padding: 2px 10px; border-width: 0px 0px medium; border-top-style: initial; border-right-style: initial; border-bottom-style: none; border-left-style: initial; border-color: initial; border-image: initial; font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: 700; font-stretch: normal; font-size: 14px; line-height: 16px; font-family: Arimo, Arial; vertical-align: top; color: rgb(125, 116, 100); width: 110px;\"><a href=\"https://www.gsmarena.com/glossary.php3?term=gpu\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(85, 85, 85);\">GPU</a></td><td class=\"nfo\" data-spec=\"gpu\" style=\"margin: 0px; padding: 2px 10px; border-width: 0px 0px medium; border-top-style: initial; border-right-style: initial; border-bottom-style: none; border-left-style: initial; border-color: initial; border-image: initial; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 16px; font-family: Arimo, Arial; vertical-align: top; position: relative;\">Apple GPU (4-core graphics)</td></tr></tbody></table><table cellspacing=\"0\" style=\"margin: 0px; padding: 1px 0px; border-width: 5px 0px 0px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: initial; border-top-color: rgb(238, 238, 238); border-right-color: initial; border-bottom-color: initial; border-left-color: initial; border-image: initial; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: Arimo, Arial, sans-serif; vertical-align: baseline; width: 727px; background-color: rgb(250, 250, 250); border-spacing: 0px; color: rgb(0, 0, 0);\"><tbody style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><tr style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><th rowspan=\"5\" scope=\"row\" style=\"margin: 0px; padding: 2px 10px; border-width: 0px medium 0px 0px; border-top-style: initial; border-right-style: none; border-bottom-style: initial; border-left-style: initial; border-color: initial; border-image: initial; font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: normal; font-stretch: normal; line-height: normal; font-family: Google-Oswald, Arial; vertical-align: top; text-align: left; text-transform: uppercase; width: 86px; color: rgb(213, 0, 0);\">MEMORY</th><td class=\"ttl\" style=\"margin: 0px; padding: 2px 10px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(240, 240, 240); border-left-color: initial; border-image: initial; font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: 700; font-stretch: normal; font-size: 14px; line-height: 16px; font-family: Arimo, Arial; vertical-align: top; color: rgb(125, 116, 100); width: 110px;\"><a href=\"https://www.gsmarena.com/glossary.php3?term=memory-card-slot\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(85, 85, 85);\">Card slot</a></td><td class=\"nfo\" data-spec=\"memoryslot\" style=\"margin: 0px; padding: 2px 10px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(240, 240, 240); border-left-color: initial; border-image: initial; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 16px; font-family: Arimo, Arial; vertical-align: top; position: relative;\">No</td></tr><tr style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><td class=\"ttl\" style=\"margin: 0px; padding: 2px 10px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(240, 240, 240); border-left-color: initial; border-image: initial; font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: 700; font-stretch: normal; font-size: 14px; line-height: 16px; font-family: Arimo, Arial; vertical-align: top; color: rgb(125, 116, 100); width: 110px;\"><a href=\"https://www.gsmarena.com/glossary.php3?term=dynamic-memory\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(85, 85, 85);\">Internal</a></td><td class=\"nfo\" data-spec=\"internalmemory\" style=\"margin: 0px; padding: 2px 10px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(240, 240, 240); border-left-color: initial; border-image: initial; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 16px; font-family: Arimo, Arial; vertical-align: top; position: relative;\">64GB 4GB RAM, 128GB 4GB RAM, 256GB 4GB RAM</td></tr><tr style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><td class=\"ttl\" style=\"margin: 0px; padding: 2px 10px; border-width: 0px 0px medium; border-top-style: initial; border-right-style: initial; border-bottom-style: none; border-left-style: initial; border-color: initial; border-image: initial; font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: 700; font-stretch: normal; font-size: 14px; line-height: 16px; font-family: Arimo, Arial; vertical-align: top; color: rgb(125, 116, 100); width: 110px;\">&nbsp;</td><td class=\"nfo\" data-spec=\"memoryother\" style=\"margin: 0px; padding: 2px 10px; border-width: 0px 0px medium; border-top-style: initial; border-right-style: initial; border-bottom-style: none; border-left-style: initial; border-color: initial; border-image: initial; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 16px; font-family: Arimo, Arial; vertical-align: top; position: relative;\">NVMe</td></tr></tbody></table>', 'i-phone-12.png', '[\"1786077190102128.png\",\"1786077190134355.png\",\"1786077190181230.png\"]', 1, NULL, 1, 1, 1, 1, NULL, NULL, 1, NULL, NULL),
(27, 1, 1, 'I phone 13', 'i-phone-13', '123456343', '4', 'new', 'red', NULL, NULL, '4000', '500000', '450000', 'limited', '<p>this is a new product</p>', 'i-phone-13.png', '[]', 1, NULL, NULL, NULL, 1, 1, NULL, NULL, 1, NULL, '2024-01-02 04:44:29'),
(28, 1, 1, 'I phone 13', 'i-phone-12', '1234333356', '6', NULL, 'red,white', '5.5\'', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/X1b3C2081-Q?si=9gcOz-8PvnpyFGyY\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '400000', '500000', '450000', 'limited', '<table cellspacing=\"0\" style=\"margin: 0px; padding: 1px 0px; border-width: 5px 0px 0px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: initial; border-top-color: rgb(238, 238, 238); border-right-color: initial; border-bottom-color: initial; border-left-color: initial; border-image: initial; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: Arimo, Arial, sans-serif; vertical-align: baseline; width: 727px; background-color: rgb(250, 250, 250); border-spacing: 0px; color: rgb(0, 0, 0);\"><tbody style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><tr style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><th rowspan=\"4\" scope=\"row\" style=\"margin: 0px; padding: 2px 10px; border-width: 0px medium 0px 0px; border-top-style: initial; border-right-style: none; border-bottom-style: initial; border-left-style: initial; border-color: initial; border-image: initial; font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: normal; font-stretch: normal; line-height: normal; font-family: Google-Oswald, Arial; vertical-align: top; text-align: left; text-transform: uppercase; width: 86px; color: rgb(213, 0, 0);\">PLATFORM</th><td class=\"ttl\" style=\"margin: 0px; padding: 2px 10px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(240, 240, 240); border-left-color: initial; border-image: initial; font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: 700; font-stretch: normal; font-size: 14px; line-height: 16px; font-family: Arimo, Arial; vertical-align: top; color: rgb(125, 116, 100); width: 110px;\"><a href=\"https://www.gsmarena.com/glossary.php3?term=os\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(85, 85, 85);\">OS</a></td><td class=\"nfo\" data-spec=\"os\" style=\"margin: 0px; padding: 2px 10px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(240, 240, 240); border-left-color: initial; border-image: initial; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 16px; font-family: Arimo, Arial; vertical-align: top; position: relative;\">iOS 14.1, upgradable to iOS 17.2</td></tr><tr style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><td class=\"ttl\" style=\"margin: 0px; padding: 2px 10px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(240, 240, 240); border-left-color: initial; border-image: initial; font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: 700; font-stretch: normal; font-size: 14px; line-height: 16px; font-family: Arimo, Arial; vertical-align: top; color: rgb(125, 116, 100); width: 110px;\"><a href=\"https://www.gsmarena.com/glossary.php3?term=chipset\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(85, 85, 85);\">Chipset</a></td><td class=\"nfo\" data-spec=\"chipset\" style=\"margin: 0px; padding: 2px 10px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(240, 240, 240); border-left-color: initial; border-image: initial; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 16px; font-family: Arimo, Arial; vertical-align: top; position: relative;\">Apple A14 Bionic (5 nm)</td></tr><tr style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><td class=\"ttl\" style=\"margin: 0px; padding: 2px 10px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(240, 240, 240); border-left-color: initial; border-image: initial; font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: 700; font-stretch: normal; font-size: 14px; line-height: 16px; font-family: Arimo, Arial; vertical-align: top; color: rgb(125, 116, 100); width: 110px;\"><a href=\"https://www.gsmarena.com/glossary.php3?term=cpu\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(85, 85, 85);\">CPU</a></td><td class=\"nfo\" data-spec=\"cpu\" style=\"margin: 0px; padding: 2px 10px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(240, 240, 240); border-left-color: initial; border-image: initial; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 16px; font-family: Arimo, Arial; vertical-align: top; position: relative;\">Hexa-core (2x3.1 GHz Firestorm + 4x1.8 GHz Icestorm)</td></tr><tr style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><td class=\"ttl\" style=\"margin: 0px; padding: 2px 10px; border-width: 0px 0px medium; border-top-style: initial; border-right-style: initial; border-bottom-style: none; border-left-style: initial; border-color: initial; border-image: initial; font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: 700; font-stretch: normal; font-size: 14px; line-height: 16px; font-family: Arimo, Arial; vertical-align: top; color: rgb(125, 116, 100); width: 110px;\"><a href=\"https://www.gsmarena.com/glossary.php3?term=gpu\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(85, 85, 85);\">GPU</a></td><td class=\"nfo\" data-spec=\"gpu\" style=\"margin: 0px; padding: 2px 10px; border-width: 0px 0px medium; border-top-style: initial; border-right-style: initial; border-bottom-style: none; border-left-style: initial; border-color: initial; border-image: initial; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 16px; font-family: Arimo, Arial; vertical-align: top; position: relative;\">Apple GPU (4-core graphics)</td></tr></tbody></table><table cellspacing=\"0\" style=\"margin: 0px; padding: 1px 0px; border-width: 5px 0px 0px; border-top-style: solid; border-right-style: initial; border-bottom-style: initial; border-left-style: initial; border-top-color: rgb(238, 238, 238); border-right-color: initial; border-bottom-color: initial; border-left-color: initial; border-image: initial; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: Arimo, Arial, sans-serif; vertical-align: baseline; width: 727px; background-color: rgb(250, 250, 250); border-spacing: 0px; color: rgb(0, 0, 0);\"><tbody style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><tr style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><th rowspan=\"5\" scope=\"row\" style=\"margin: 0px; padding: 2px 10px; border-width: 0px medium 0px 0px; border-top-style: initial; border-right-style: none; border-bottom-style: initial; border-left-style: initial; border-color: initial; border-image: initial; font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: normal; font-stretch: normal; line-height: normal; font-family: Google-Oswald, Arial; vertical-align: top; text-align: left; text-transform: uppercase; width: 86px; color: rgb(213, 0, 0);\">MEMORY</th><td class=\"ttl\" style=\"margin: 0px; padding: 2px 10px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(240, 240, 240); border-left-color: initial; border-image: initial; font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: 700; font-stretch: normal; font-size: 14px; line-height: 16px; font-family: Arimo, Arial; vertical-align: top; color: rgb(125, 116, 100); width: 110px;\"><a href=\"https://www.gsmarena.com/glossary.php3?term=memory-card-slot\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(85, 85, 85);\">Card slot</a></td><td class=\"nfo\" data-spec=\"memoryslot\" style=\"margin: 0px; padding: 2px 10px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(240, 240, 240); border-left-color: initial; border-image: initial; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 16px; font-family: Arimo, Arial; vertical-align: top; position: relative;\">No</td></tr><tr style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><td class=\"ttl\" style=\"margin: 0px; padding: 2px 10px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(240, 240, 240); border-left-color: initial; border-image: initial; font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: 700; font-stretch: normal; font-size: 14px; line-height: 16px; font-family: Arimo, Arial; vertical-align: top; color: rgb(125, 116, 100); width: 110px;\"><a href=\"https://www.gsmarena.com/glossary.php3?term=dynamic-memory\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(85, 85, 85);\">Internal</a></td><td class=\"nfo\" data-spec=\"internalmemory\" style=\"margin: 0px; padding: 2px 10px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(240, 240, 240); border-left-color: initial; border-image: initial; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 16px; font-family: Arimo, Arial; vertical-align: top; position: relative;\">64GB 4GB RAM, 128GB 4GB RAM, 256GB 4GB RAM</td></tr><tr style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><td class=\"ttl\" style=\"margin: 0px; padding: 2px 10px; border-width: 0px 0px medium; border-top-style: initial; border-right-style: initial; border-bottom-style: none; border-left-style: initial; border-color: initial; border-image: initial; font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: 700; font-stretch: normal; font-size: 14px; line-height: 16px; font-family: Arimo, Arial; vertical-align: top; color: rgb(125, 116, 100); width: 110px;\">&nbsp;</td><td class=\"nfo\" data-spec=\"memoryother\" style=\"margin: 0px; padding: 2px 10px; border-width: 0px 0px medium; border-top-style: initial; border-right-style: initial; border-bottom-style: none; border-left-style: initial; border-color: initial; border-image: initial; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 14px; line-height: 16px; font-family: Arimo, Arial; vertical-align: top; position: relative;\">NVMe</td></tr></tbody></table>', 'i-phone-12.png', '[\"1786077190102128.png\",\"1786077190134355.png\",\"1786077190181230.png\"]', 1, NULL, NULL, 1, 1, 1, NULL, NULL, 1, '2024-01-02 04:46:08', '2024-01-02 04:46:08'),
(29, 1, 3, 'Almoontasir', 'almoontasir', '323412', '3467', NULL, 'gffg', NULL, NULL, NULL, '500000', NULL, NULL, '<p>gfdggfdfdgfdfd</p>', 'almoontasir.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 2, '2024-01-02 04:46:08', '2024-01-02 04:46:08');

-- --------------------------------------------------------

--
-- Table structure for table `subcatagories`
--

CREATE TABLE `subcatagories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Catagory_id` bigint(20) UNSIGNED NOT NULL,
  `Subcatagory_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Subcatagory_slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcatagories`
--

INSERT INTO `subcatagories` (`id`, `Catagory_id`, `Subcatagory_name`, `Subcatagory_slug`, `created_at`, `updated_at`) VALUES
(1, 1, 'Mobile', 'mobile', NULL, NULL),
(3, 1, 'Laptop', 'laptop', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` int(11) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `is_admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@email.com', NULL, '$2y$12$Xf546.0PPqEwvft9FWRb5ezdF4UrdVVQp3S6cV7mVhCO2IO0nwh2W', 1, NULL, '2024-01-01 23:47:32', '2024-01-01 23:47:32'),
(2, 'Customer', 'customer@email.com', NULL, '$2y$12$SCgP2Dg/Ho3YJLI20iFeseFf6KNGWF93PWMv/X8F2Mh9XF7oM3W/q', NULL, NULL, '2024-01-01 23:48:45', '2024-01-01 23:48:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `catagories`
--
ALTER TABLE `catagories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_subcategory_id_foreign` (`subcategory_id`);

--
-- Indexes for table `subcatagories`
--
ALTER TABLE `subcatagories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subcatagories_catagory_id_foreign` (`Catagory_id`);

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
-- AUTO_INCREMENT for table `catagories`
--
ALTER TABLE `catagories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `subcatagories`
--
ALTER TABLE `subcatagories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `catagories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `subcatagories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subcatagories`
--
ALTER TABLE `subcatagories`
  ADD CONSTRAINT `subcatagories_catagory_id_foreign` FOREIGN KEY (`Catagory_id`) REFERENCES `catagories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
