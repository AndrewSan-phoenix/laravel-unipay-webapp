-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2024 at 11:22 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `name`, `email`, `phone`, `password`, `ip`, `user_agent`, `created_at`, `updated_at`) VALUES
(1, 'htetlinthu', 'htetlinthu@gmail.com', '09977292898', '$2y$12$Jk3a/DUmowpJJKjN8FkEmu2cxEKs/eno93GZJQ0AjisKL.8z4dbMa', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:125.0) Gecko/20100101 Firefox/125.0', NULL, '2024-05-03 19:24:01');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_01_13_120625_create_admin_users_table', 1),
(6, '2021_01_17_144925_create_wallets_table', 2),
(7, '2021_06_05_200539_create_transactions_table', 3),
(9, '2021_07_13_010422_create_notifications_table', 4),
(10, '2016_06_01_000001_create_oauth_auth_codes_table', 5),
(11, '2016_06_01_000002_create_oauth_access_tokens_table', 5),
(12, '2016_06_01_000003_create_oauth_refresh_tokens_table', 5),
(13, '2016_06_01_000004_create_oauth_clients_table', 5),
(14, '2016_06_01_000005_create_oauth_personal_access_clients_table', 5),
(15, '2021_01_24_154837_create_webauthn_credentials_table', 6),
(17, '2021_08_15_221015_create_web_authn_tables', 7);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('1dd2f221-5605-4dfc-a1f2-597a7eaf7193', 'App\\Notifications\\GeneralNotification', 'App\\User', 7, '{\"title\":\"E-money Transfered!\",\"message\":\"Your wallet transfered 10,000 MMK to Testing ( 0922222222 )\",\"sourceable_id\":43,\"sourceable_type\":\"App\\\\Transaction\",\"web_link\":\"http:\\/\\/localhost:8000\\/transaction\\/1385378905461259\",\"deep_link\":{\"target\":\"transaction_detail\",\"parameter\":{\"trx_id\":1385378905461259}}}', NULL, '2021-07-22 16:36:42', '2021-07-22 16:36:42'),
('1f1d2cb2-1db0-4b87-a38f-35a06958c0dd', 'App\\Notifications\\GeneralNotification', 'App\\User', 17, '{\"title\":\"E-money Transfered!\",\"message\":\"Your wallet transfered 20,000 MMK to Kyaw Kyaw ( 09762228526 )\",\"sourceable_id\":52,\"sourceable_type\":\"App\\\\Transaction\",\"web_link\":\"http:\\/\\/localhost:8000\\/transaction\\/9538922421635323\",\"deep_link\":{\"target\":\"transaction_detail\",\"parameter\":{\"trx_id\":9538922421635323}}}', NULL, '2024-05-03 19:39:29', '2024-05-03 19:39:29'),
('2136fb59-ae57-4e4c-82ea-bc3ecd7102e9', 'App\\Notifications\\GeneralNotification', 'App\\User', 14, '{\"title\":\"E-money Received!\",\"message\":\"Your wallet received 10,000 MMK from Htet Lin Thu ( 09977292898 )\",\"sourceable_id\":42,\"sourceable_type\":\"App\\\\Transaction\",\"web_link\":\"http:\\/\\/localhost:8000\\/transaction\\/7718705536625785\",\"deep_link\":{\"target\":\"transaction_detail\",\"parameter\":{\"trx_id\":7718705536625785}}}', NULL, '2021-07-22 07:29:20', '2021-07-22 07:29:20'),
('329464ec-9fc9-4470-a84b-83442d4477bb', 'App\\Notifications\\GeneralNotification', 'App\\User', 16, '{\"title\":\"E-money Received!\",\"message\":\"Your wallet received 50,000 MMK by Magic Pay Super Admin.\",\"sourceable_id\":50,\"sourceable_type\":\"App\\\\Transaction\",\"web_link\":\"http:\\/\\/localhost:8000\\/transaction\\/4633014677999106\",\"deep_link\":{\"target\":\"transaction_detail\",\"parameter\":{\"trx_id\":4633014677999106}}}', NULL, '2024-05-03 19:28:56', '2024-05-03 19:28:56'),
('3bc315c5-6f59-42be-bf07-a43cff762526', 'App\\Notifications\\GeneralNotification', 'App\\User', 14, '{\"title\":\"E-money Received!\",\"message\":\"Your wallet received 10,000 MMK from Htet Lin Thu ( 09977292898 )\",\"sourceable_id\":44,\"sourceable_type\":\"App\\\\Transaction\",\"web_link\":\"http:\\/\\/localhost:8000\\/transaction\\/4120856863814532\",\"deep_link\":{\"target\":\"transaction_detail\",\"parameter\":{\"trx_id\":4120856863814532}}}', NULL, '2021-07-22 16:36:42', '2021-07-22 16:36:42'),
('58b9aa3b-6945-48cc-ab18-a88fde59ca23', 'App\\Notifications\\GeneralNotification', 'App\\User', 7, '{\"title\":\"Changed Password!\",\"message\":\"Your account password is successfully changed.\",\"sourceable_id\":7,\"sourceable_type\":\"App\\\\User\",\"web_link\":\"http:\\/\\/localhost:8000\\/profile\",\"deep_link\":{\"target\":\"profile\",\"parameter\":null}}', NULL, '2021-07-22 07:28:41', '2021-07-22 07:28:41'),
('5f4d5ef1-692f-45cc-8330-7e68b0236e5d', 'App\\Notifications\\GeneralNotification', 'App\\User', 7, '{\"title\":\"E-money Transfered!\",\"message\":\"Your wallet transfered 10,000 MMK to Testing ( 0922222222 )\",\"sourceable_id\":41,\"sourceable_type\":\"App\\\\Transaction\",\"web_link\":\"http:\\/\\/localhost:8000\\/transaction\\/7206858414596288\",\"deep_link\":{\"target\":\"transaction_detail\",\"parameter\":{\"trx_id\":7206858414596288}}}', '2021-07-22 07:30:08', '2021-07-22 07:29:20', '2021-07-22 07:30:08'),
('75b4e619-db42-4bc3-9159-c935b565bc29', 'App\\Notifications\\GeneralNotification', 'App\\User', 17, '{\"title\":\"E-money Received!\",\"message\":\"Your wallet received 40,000 MMK by Magic Pay Super Admin.\",\"sourceable_id\":51,\"sourceable_type\":\"App\\\\Transaction\",\"web_link\":\"http:\\/\\/localhost:8000\\/transaction\\/8900884154649439\",\"deep_link\":{\"target\":\"transaction_detail\",\"parameter\":{\"trx_id\":8900884154649439}}}', NULL, '2024-05-03 19:29:23', '2024-05-03 19:29:23'),
('8d80c620-a45d-4e67-92b8-ac6bf38726da', 'App\\Notifications\\GeneralNotification', 'App\\User', 14, '{\"title\":\"E-money Received!\",\"message\":\"Your wallet received 10,000 MMK from Htet Lin Thu ( 09977292898 )\",\"sourceable_id\":46,\"sourceable_type\":\"App\\\\Transaction\",\"web_link\":\"http:\\/\\/localhost:8000\\/transaction\\/7335559541111762\",\"deep_link\":{\"target\":\"transaction_detail\",\"parameter\":{\"trx_id\":7335559541111762}}}', NULL, '2021-07-22 17:00:04', '2021-07-22 17:00:04'),
('8e8d4256-5abf-4edb-8060-af4e02ddfd86', 'App\\Notifications\\GeneralNotification', 'App\\User', 18, '{\"title\":\"E-money Received!\",\"message\":\"Your wallet received 20,000 MMK from Tun Tun ( 09987654321 )\",\"sourceable_id\":53,\"sourceable_type\":\"App\\\\Transaction\",\"web_link\":\"http:\\/\\/localhost:8000\\/transaction\\/9829502217654095\",\"deep_link\":{\"target\":\"transaction_detail\",\"parameter\":{\"trx_id\":9829502217654095}}}', NULL, '2024-05-03 19:39:29', '2024-05-03 19:39:29'),
('91e5dee1-7131-49e5-8a45-ad2b06da8b2d', 'App\\Notifications\\GeneralNotification', 'App\\User', 7, '{\"title\":\"E-money Transfered!\",\"message\":\"Your wallet transfered 10,000 MMK to Testing ( 0922222222 )\",\"sourceable_id\":45,\"sourceable_type\":\"App\\\\Transaction\",\"web_link\":\"http:\\/\\/localhost:8000\\/transaction\\/1630586337245958\",\"deep_link\":{\"target\":\"transaction_detail\",\"parameter\":{\"trx_id\":1630586337245958}}}', NULL, '2021-07-22 17:00:04', '2021-07-22 17:00:04'),
('d5039f98-2bca-4503-9932-5589dc094218', 'App\\Notifications\\GeneralNotification', 'App\\User', 7, '{\"title\":\"Changed Password!\",\"message\":\"Your account password is successfully changed.\",\"sourceable_id\":7,\"sourceable_type\":\"App\\\\User\",\"web_link\":\"http:\\/\\/localhost:8000\\/profile\",\"deep_link\":{\"target\":\"profile\",\"parameter\":null}}', NULL, '2021-07-22 07:28:08', '2021-07-22 07:28:08');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('274849c0daaba72d36c2c076ac9059d87b0c22e4675bb23180751f481102b150f6d305a256ce9e11', 14, 1, 'Magic Pay', '[]', 0, '2021-07-21 17:04:57', '2021-07-21 17:04:57', '2022-07-21 23:34:57'),
('8080aa3d1ea12194aa76fe78d496c4fff712e7038598ea3db7c2b1ff195f5e9c92e77d0f0da817d2', 14, 1, 'Magic Pay', '[]', 1, '2021-07-21 17:16:33', '2021-07-21 17:16:33', '2022-07-21 23:46:33'),
('9fe4a43382a432365ee910a718bde89671c407af74c10512970f7f5166d3b3410ecd9afbdf63bf34', 14, 1, 'Magic Pay', '[]', 0, '2021-07-22 05:33:52', '2021-07-22 05:33:52', '2022-07-22 12:03:52'),
('a8d6ba520702bed9400ed0d3f833096474d62d00beb980c27c835f39a4b6954dfeca211f3cd112be', 14, 1, 'Magic Pay', '[]', 1, '2021-07-21 17:41:33', '2021-07-21 17:41:33', '2022-07-22 00:11:33'),
('aebd4585f69e6cc9b40f29e6ce944b8758b9b1a956d0ff8bbb27845d8d8bc4ce2e829d724a09bb86', 7, 1, 'Magic Pay', '[]', 0, '2021-07-22 05:40:25', '2021-07-22 05:40:25', '2022-07-22 12:10:25'),
('b9f2d418e758621f35e38aa474004ca1f80d98937b757cb7eba0c523f9f242b99f7bd3bfaff727fc', 14, 1, 'Magic Pay', '[]', 0, '2021-07-21 16:52:41', '2021-07-21 16:52:41', '2022-07-21 23:22:41'),
('c33b317b781de039a93d9096be7933e29d8e7c48d229565808ae0dd6d37d998b3a3abea6cb145fd0', 14, 1, 'Magic Pay', '[]', 0, '2021-07-21 17:04:55', '2021-07-21 17:04:55', '2022-07-21 23:34:55'),
('d879f80895e4365c26c46009ae8a7420b99694e72bd161f9475f548e0fcf277c120bafa4bb1aa2a1', 14, 1, 'Magic Pay', '[]', 0, '2021-07-21 17:04:00', '2021-07-21 17:04:00', '2022-07-21 23:34:00'),
('e5f17286c5d43e237698672eee16ca71734fe8b6d3f541afcc70c3fa3de1d19e4aade5596d4afef6', 14, 1, 'Magic Pay', '[]', 0, '2021-07-21 16:41:57', '2021-07-21 16:41:57', '2022-07-21 23:11:57'),
('f02a7412abc690c98e84288c73b23b635564dcfeee2cf8f4390e32a6951f7310bb64417a3a54e4b8', 14, 1, 'Magic Pay', '[]', 0, '2021-07-21 16:59:51', '2021-07-21 16:59:51', '2022-07-21 23:29:51');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'MagicPay Personal Access Client', 'cQ17NuQ4R5F9qidSDyN5UK7vnWlbYf94caWw9EdZ', NULL, 'http://localhost', 1, 0, 0, '2021-07-21 16:18:32', '2021-07-21 16:18:32'),
(2, NULL, 'MagicPay Password Grant Client', 'Ngn6fD5V0SzQXHnenULMNB1izYU7TlaY6AER1Vq1', 'users', 'http://localhost', 0, 1, 0, '2021-07-21 16:18:32', '2021-07-21 16:18:32');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-07-21 16:18:32', '2021-07-21 16:18:32');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ref_no` varchar(255) NOT NULL,
  `trx_id` varchar(255) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `type` tinyint(4) NOT NULL COMMENT '1 => income, 2 => expense',
  `amount` decimal(20,2) NOT NULL,
  `source_id` bigint(20) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `ref_no`, `trx_id`, `user_id`, `type`, `amount`, `source_id`, `description`, `created_at`, `updated_at`) VALUES
(5, '5684234976901167', '2998651713833444', 7, 2, 5000.00, 8, 'အကြွေးဆပ်လိုက်တယ်', '2021-06-06 11:26:52', '2021-06-06 11:26:52'),
(6, '5684234976901167', '6332916727093421', 8, 1, 5000.00, 7, 'အကြွေးဆပ်လိုက်တယ်', '2021-06-06 11:26:52', '2021-06-06 11:26:52'),
(7, '5232033085033390', '9416517464272117', 7, 2, 2000.00, 8, 'မုန့်ဖိုး', '2021-06-06 11:31:00', '2021-06-06 11:31:00'),
(8, '5232033085033390', '5424107079454566', 8, 1, 2000.00, 7, 'မုန့်ဖိုး', '2021-06-06 11:31:00', '2021-06-06 11:31:00'),
(9, '3389432741981909', '8721095193106980', 7, 2, 3000.00, 8, NULL, '2021-06-06 11:32:21', '2021-06-06 11:32:21'),
(10, '3389432741981909', '9619885920558936', 8, 1, 3000.00, 7, NULL, '2021-06-06 11:32:21', '2021-06-06 11:32:21'),
(11, '7574623376711472', '7778080023001674', 7, 2, 10000.00, 8, 'hello my friend', '2021-06-06 11:35:11', '2021-06-06 11:35:11'),
(12, '7574623376711472', '6095553273916436', 8, 1, 10000.00, 7, 'hello my friend', '2021-06-06 11:35:11', '2021-06-06 11:35:11'),
(13, '9089439743984037', '2162353865717180', 7, 2, 2500.00, 8, NULL, '2021-06-06 11:35:31', '2021-06-06 11:35:31'),
(14, '9089439743984037', '3606595938752928', 8, 1, 2500.00, 7, NULL, '2021-06-06 11:35:31', '2021-06-06 11:35:31'),
(15, '5915954419988758', '5593543864588861', 7, 2, 7800.00, 8, NULL, '2021-06-06 11:35:53', '2021-06-06 11:35:53'),
(16, '5915954419988758', '2497681314301071', 8, 1, 7800.00, 7, NULL, '2021-06-06 11:35:53', '2021-06-06 11:35:53'),
(17, '8100982250114476', '8180118646184648', 7, 2, 1000.00, 8, NULL, '2021-06-06 11:43:33', '2021-06-06 11:43:33'),
(18, '8100982250114476', '2376787064690574', 8, 1, 1000.00, 7, NULL, '2021-06-06 11:43:33', '2021-06-06 11:43:33'),
(19, '2145746898025466', '9224787940223791', 7, 2, 2000.00, 8, NULL, '2021-06-06 11:43:54', '2021-06-06 11:43:54'),
(20, '2145746898025466', '5186034475687579', 8, 1, 2000.00, 7, NULL, '2021-06-06 11:43:54', '2021-06-06 11:43:54'),
(21, '3915950484540308', '6562021964673589', 13, 2, 5000.00, 7, NULL, '2021-06-06 12:04:38', '2021-06-06 12:04:38'),
(22, '3915950484540308', '5441377424318587', 7, 1, 5000.00, 13, NULL, '2021-06-06 12:04:38', '2021-06-06 12:04:38'),
(23, '3679987772236278', '2035616197704637', 13, 2, 4000.00, 7, NULL, '2021-06-06 18:36:37', '2021-06-06 18:36:37'),
(24, '3679987772236278', '3504684526106157', 7, 1, 4000.00, 13, NULL, '2021-06-06 18:36:37', '2021-06-06 18:36:37'),
(25, '7974300754050582', '1204228183865338', 7, 2, 2000.00, 8, 'မုန့်ဖိုး', '2021-06-06 19:15:04', '2021-06-06 19:15:04'),
(26, '7974300754050582', '8964963481422635', 8, 1, 2000.00, 7, 'မုန့်ဖိုး', '2021-06-06 19:15:04', '2021-06-06 19:15:04'),
(27, '3997342168082836', '6174862582656906', 7, 2, 1200.00, 8, 'testing', '2021-06-11 18:30:25', '2021-06-11 18:30:25'),
(28, '3997342168082836', '8769324330376708', 8, 1, 1200.00, 7, 'testing', '2021-06-11 18:30:25', '2021-06-11 18:30:25'),
(29, '1613589035294277', '7821116975729916', 7, 2, 5000.00, 8, 'မုန့်ဖိုး', '2021-06-11 18:43:37', '2021-06-11 18:43:37'),
(30, '1613589035294277', '8572389641994646', 8, 1, 5000.00, 7, 'မုန့်ဖိုး', '2021-06-11 18:43:37', '2021-06-11 18:43:37'),
(31, '9934551643956162', '2784149145075842', 7, 2, 2000.00, 8, 'အလကားပေးတာကွာ', '2021-06-12 15:06:47', '2021-06-12 15:06:47'),
(32, '9934551643956162', '8478146085567191', 8, 1, 2000.00, 7, 'အလကားပေးတာကွာ', '2021-06-12 15:06:47', '2021-06-12 15:06:47'),
(33, '2385373371986501', '9776586083031202', 7, 2, 3000.00, 8, 'မုန့်ဖိုး ပေးတာ', '2021-06-12 15:09:20', '2021-06-12 15:09:20'),
(34, '2385373371986501', '4781190521462143', 8, 1, 3000.00, 7, 'မုန့်ဖိုး ပေးတာ', '2021-06-12 15:09:20', '2021-06-12 15:09:20'),
(35, '9770466089593352', '6042961112079542', 7, 2, 3000.00, 8, 'မုန့်ဖိုး ပေးတာကွာ', '2021-06-12 15:58:29', '2021-06-12 15:58:29'),
(36, '9770466089593352', '4682509035087319', 8, 1, 3000.00, 7, 'မုန့်ဖိုး ပေးတာကွာ', '2021-06-12 15:58:29', '2021-06-12 15:58:29'),
(37, '1442380462094545', '2199954631355274', 7, 2, 5000.00, 12, 'testing noti', '2021-07-21 15:35:09', '2021-07-21 15:35:09'),
(38, '1442380462094545', '6627467775045820', 12, 1, 5000.00, 7, 'testing noti', '2021-07-21 15:35:09', '2021-07-21 15:35:09'),
(39, '7189452948456432', '9275243256957917', 7, 2, 10000.00, 12, NULL, '2021-07-21 15:36:41', '2021-07-21 15:36:41'),
(40, '7189452948456432', '8265655904772832', 12, 1, 10000.00, 7, NULL, '2021-07-21 15:36:41', '2021-07-21 15:36:41'),
(41, '3472037164559380', '7206858414596288', 7, 2, 10000.00, 14, 'testing', '2021-07-22 07:29:19', '2021-07-22 07:29:19'),
(42, '3472037164559380', '7718705536625785', 14, 1, 10000.00, 7, 'testing', '2021-07-22 07:29:19', '2021-07-22 07:29:19'),
(43, '7249306815422956', '1385378905461259', 7, 2, 10000.00, 14, 'testing', '2021-07-22 16:36:41', '2021-07-22 16:36:41'),
(44, '7249306815422956', '4120856863814532', 14, 1, 10000.00, 7, 'testing', '2021-07-22 16:36:41', '2021-07-22 16:36:41'),
(45, '1922080936304507', '1630586337245958', 7, 2, 10000.00, 14, 'testing', '2021-07-22 17:00:04', '2021-07-22 17:00:04'),
(46, '1922080936304507', '7335559541111762', 14, 1, 10000.00, 7, 'testing', '2021-07-22 17:00:04', '2021-07-22 17:00:04'),
(47, '5555049696694140', '3780283542506761', 14, 1, 5000.00, 0, 'manual add amount', '2021-07-23 18:08:12', '2021-07-23 18:08:12'),
(48, '6498946981978197', '9490065831437880', 14, 1, 5000.00, 0, 'manual add amount', '2021-07-23 18:08:38', '2021-07-23 18:08:38'),
(49, '6442366048486541', '9540666963400139', 14, 2, 40000.00, 0, NULL, '2021-07-23 18:23:45', '2021-07-23 18:23:45'),
(50, '4453462791989395', '4633014677999106', 16, 1, 50000.00, 0, 'Bill', '2024-05-03 19:28:55', '2024-05-03 19:28:55'),
(51, '8868583466598987', '8900884154649439', 17, 1, 40000.00, 0, 'bill', '2024-05-03 19:29:23', '2024-05-03 19:29:23'),
(52, '3603468382609184', '9538922421635323', 17, 2, 20000.00, 18, 'Ph Bill Transfer', '2024-05-03 19:39:29', '2024-05-03 19:39:29'),
(53, '3603468382609184', '9829502217654095', 18, 1, 20000.00, 17, 'Ph Bill Transfer', '2024-05-03 19:39:29', '2024-05-03 19:39:29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `login_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `password`, `remember_token`, `ip`, `user_agent`, `login_at`, `created_at`, `updated_at`) VALUES
(7, 'Htet Lin Thu', 'mg@gmail.com', '09977292898', '$2y$10$hWbEKJZRs.t9JRpuYvgpw.HdS/dt68fUK/Zshx9hJGl3S9FHyu5Xq', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-03 16:15:51', '2021-01-17 08:33:29', '2024-05-03 16:15:51'),
(8, 'Aung Aung', 'aung@gmail.com', '0911111111', '$2y$10$0ShXQ4pYRI5Sj/i3BpDEqO2wOM53BktwFqwc9lNNX4fnHHt4jkYSO', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36', '2021-06-12 14:54:14', '2021-01-17 08:37:45', '2021-06-12 14:54:14'),
(12, 'hello', 'hello@gmail.com', '0944444444', '$2y$10$NpFwn/gRQhFd3veQldxPPuUskNw83Pq6yYPymEtoR2V8hUqcl26yC', NULL, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.164 Mobile Safari/537.36', '2021-07-21 15:37:17', '2021-01-17 09:14:46', '2021-07-21 15:37:17'),
(13, 'aye aye', 'aye@gmail.com', '0999999999', '$2y$10$5Mz16cwUhm3KDoewzUobAO7W0HSQMJyP86psuQENujsz8.BMU0kzW', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36', '2021-06-06 12:02:49', '2021-01-17 10:45:14', '2021-06-06 12:02:49'),
(14, 'Testing', 'testing@gmail.com', '0922222222', '$2y$10$cJy4Y1kzhFd/Tv.hiiSWEeCWz30oDUyQjYILCMIy0idqmPykmwAvG', NULL, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Mobile Safari/537.36', '2021-07-22 16:44:20', '2021-07-21 16:41:57', '2021-07-22 16:44:20'),
(15, 'aung aung', 'aungaung@gmail.com', '09786481558', '$2y$10$kbe5iZXYM2mKq9adGbKJTeC52A7dNSuxbEXtOL14UFosr1qo0r19q', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', '2021-08-15 15:10:45', '2021-08-15 15:10:45', '2021-08-15 15:10:45'),
(17, 'Tun Tun', 'tuntun123@gmail.com', '09987654321', '$2y$10$.QGxO0ocN6UFXsToXGktyOgVd8AVWmBW8g4AmFEn7CN.fNp2wyQrO', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', '2024-05-11 13:25:07', '2024-05-03 19:28:24', '2024-05-11 13:25:07'),
(18, 'Kyaw Kyaw', 'kyawkyaw123@gmail.com', '09762228526', '$2y$10$SuqH86GU3/ncN3El9oF.7OIcCWa94FYITqA1TdnQ10VX/WWzWHlK2', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-05-03 20:12:07', '2024-05-03 19:32:41', '2024-05-03 20:12:07');

-- --------------------------------------------------------

--
-- Table structure for table `wallets`
--

CREATE TABLE `wallets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `account_number` varchar(255) NOT NULL,
  `amount` decimal(20,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wallets`
--

INSERT INTO `wallets` (`id`, `user_id`, `account_number`, `amount`, `created_at`, `updated_at`) VALUES
(1, 7, '8088123868922225', 14500.00, '2021-01-17 08:33:29', '2021-07-22 17:00:04'),
(2, 12, '8088123868922223', 15000.00, '2021-01-17 09:14:46', '2021-07-21 15:36:41'),
(3, 8, '9502495773717284', 49500.00, '2021-01-17 09:18:56', '2021-06-12 15:58:29'),
(4, 13, '9536653036371405', 91000.00, '2021-06-06 12:03:44', '2021-06-06 18:36:37'),
(5, 14, '5032331524916315', 0.00, '2021-07-21 17:16:33', '2021-07-23 18:23:45'),
(6, 15, '2340277781625870', 0.00, '2021-08-15 15:10:45', '2021-08-15 15:10:45'),
(7, 16, '7316650649913658', 50000.00, '2024-05-03 19:26:43', '2024-05-03 19:28:55'),
(8, 17, '4241629126102236', 20000.00, '2024-05-03 19:28:24', '2024-05-03 19:39:29'),
(9, 18, '8672117536011925', 20000.00, '2024-05-03 19:32:41', '2024-05-03 19:39:29');

-- --------------------------------------------------------

--
-- Table structure for table `web_authn_credentials`
--

CREATE TABLE `web_authn_credentials` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(16) NOT NULL,
  `transports` text NOT NULL,
  `attestation_type` text NOT NULL,
  `trust_path` text NOT NULL,
  `aaguid` char(36) NOT NULL,
  `public_key` blob NOT NULL,
  `counter` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_handle` char(36) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `disabled_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `web_authn_credentials`
--

INSERT INTO `web_authn_credentials` (`id`, `user_id`, `name`, `type`, `transports`, `attestation_type`, `trust_path`, `aaguid`, `public_key`, `counter`, `user_handle`, `created_at`, `updated_at`, `disabled_at`) VALUES
('AX7DvcKvwr51w5XDs1ZuwpRqf8KewrB6wqbCosKhbUzCi1R-QX19S8OmCgvCjXFAXcOFRsKoBF8GwpXCq8OMw7FAw7_ClTs3Yk8Iwq1Ewq3Di8Odwr7CnULDvFoLw5l8woxYw5nCqMOkw4jDrzbDt8OXwrgTwoNxw63DvMOtwoo0wpbCsMKSw43DjsK5wrIiIsOLwr03', 7, NULL, 'public-key', '[]', 'none', '{\"type\":\"Webauthn\\\\TrustPath\\\\EmptyTrustPath\"}', '00000000-0000-0000-0000-000000000000', 0xc2a5010203262001215820662955c3b733c38e49c394c284c2904e6f49c2b805c285c3b202c39f20c3aac399c38fc2b20112c2bc564a24c2bac28422582020301c0d5e1bc2ae65c2a2c3aac3b13b24c2aa7f417076503627096e6ec391197dc3944ec3ae5cc2bb, 1630091338, '5dbe1f2f-5358-46eb-ba7a-57ca5a5e0f56', '2021-08-27 19:08:59', '2021-08-27 19:08:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `web_authn_recoveries`
--

CREATE TABLE `web_authn_recoveries` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_email_unique` (`email`),
  ADD UNIQUE KEY `admin_users_phone_unique` (`phone`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- Indexes for table `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wallets_account_number_unique` (`account_number`);

--
-- Indexes for table `web_authn_credentials`
--
ALTER TABLE `web_authn_credentials`
  ADD PRIMARY KEY (`id`,`user_id`);

--
-- Indexes for table `web_authn_recoveries`
--
ALTER TABLE `web_authn_recoveries`
  ADD KEY `web_authn_recoveries_email_index` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
