-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 14, 2023 at 08:42 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `report`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(3, 'mahdi', 'admin1@gmail.com', '$2y$10$s7OyP/07e4XWVHyLT8e68.eErxcyZpOD4MANle/dTlV7U.StBq6FW', '2023-03-14 10:57:10', '2023-03-14 10:57:10');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2023_02_23_080318_create_reports_table', 1),
(11, '2023_03_14_112412_create_admins_table', 2);

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
('00a8f2be23138a55a5dd716fd8f6f882c1ff69253895111f40bc5741522fb025bb1af50bff357f8a', 1, 1, 'API TOKEN', '[]', 0, '2023-03-11 14:49:57', '2023-03-11 14:49:57', '2024-03-11 17:49:57'),
('031f31329b5ccb07d10cd4e459bc5f33cdbf581005bf9ecdad94097cc1936f713062386bfed9e0fc', 4, 1, 'API TOKEN', '[]', 0, '2023-03-14 05:58:59', '2023-03-14 05:58:59', '2024-03-14 08:58:59'),
('03a54e9aab8216ee47c82c9f3c7e4a311b5c11c34b9501389d2710fd2e5d65523153c2705f35af3e', 7, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 16:32:37', '2023-03-14 16:32:37', '2024-03-14 19:32:37'),
('060316c3443a5429d79aad625b49303fbd2f4ed0e51cc881b2d88b084b9ca9882506666075821d7b', 3, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 14:53:10', '2023-03-14 14:53:11', '2024-03-14 17:53:10'),
('0646ad598351947d92b032c2f04c70192717f959d15c12b1f825a71467d3644a2f17bf8f9925229f', 1, 1, 'API TOKEN', '[]', 0, '2023-03-12 08:28:28', '2023-03-12 08:28:28', '2024-03-12 11:28:28'),
('06553a2a6c8910d22271460e02df77666d80bf6863d38639d70c7863ff49171f8ed8e1cd8af03d6f', 5, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 10:54:28', '2023-03-14 10:54:28', '2024-03-14 13:54:28'),
('076d4683c83e41efdd6bda0d89edab00418fb5f5b2b4c613173e13a3734514cc89c86fef8c4fa7ac', 4, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 14:53:11', '2023-03-14 14:53:11', '2024-03-14 17:53:11'),
('07ae78e94759abb70be1af1460efd906e5cfeb1442251893d7697a817b7e5cb2bfe4da2423ce237c', 1, 1, 'API TOKEN', '[]', 0, '2023-03-12 09:22:38', '2023-03-12 09:22:38', '2024-03-12 12:22:38'),
('08468ae107d20bc2cb467040a9f959381e984e835cc2bf2a45a9beb53ab28621e5692ef4f2c11642', 1, 1, 'API TOKEN', '[]', 0, '2023-03-13 04:55:02', '2023-03-13 04:55:02', '2024-03-13 07:55:02'),
('090635180d126fb5563b99a027314456fb35e7d32d41bc507cf484efca46caeb2c407c3c461f2ff9', 12, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 16:21:31', '2023-03-14 16:21:31', '2024-03-14 19:21:31'),
('0ba81802a722c008a8f4548d42c50b43a61ec662b0ec1fa867975260dcb4e507fe7ebf08e1bdf99a', 10, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 14:53:11', '2023-03-14 14:53:11', '2024-03-14 17:53:11'),
('0be17c0eb59946ffa0aaed35c3f0c4f82842c3898cb66b41abda3ed717a45390ca04cee2049849e5', 5, 1, 'API TOKEN', '[]', 0, '2023-03-14 05:56:39', '2023-03-14 05:56:39', '2024-03-14 08:56:39'),
('0c7ec77197ca70fd398f16bffa89a0ed0088b6eb01258d91694ea6875a0abfc5ca1c89e44a586281', 11, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 15:21:26', '2023-03-14 15:21:26', '2024-03-14 18:21:26'),
('0d15e493ea82e905c3676fb9e7e6f9b5ac549a55f6b6c477b34836a64e99dc22cb7ed0d5df7a732a', 7, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 14:32:00', '2023-03-14 14:32:00', '2024-03-14 17:32:00'),
('0deaca9e878b3cee0ec2ea8fa9a81ad1d8583ef162367afa4e7168f5e026f8951a7ecf9d7bcb6a69', 3, 1, 'MyApp', '[\"admin\"]', 0, '2023-03-14 14:30:41', '2023-03-14 14:30:41', '2024-03-14 17:30:41'),
('102ad3d1af85a8ad32f83f7dd1889ea40cc44a18ba42bce5d8485fa1524a22f60ab0263d6d23f848', 1, 1, 'API TOKEN', '[]', 0, '2023-03-14 05:13:47', '2023-03-14 05:13:48', '2024-03-14 08:13:47'),
('10e74f42077d3f08c4c5b418e45deadf58a69f49e595512715a57dda88ca4143de82d943bfb1c631', 8, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 15:21:26', '2023-03-14 15:21:26', '2024-03-14 18:21:26'),
('155e1c45a51199b7453fe644dc4ffa5ddca483a8690413bf7c83a36904543c4380b936aba1e169cc', 4, 1, 'API TOKEN', '[]', 0, '2023-03-14 14:44:19', '2023-03-14 14:44:19', '2024-03-14 17:44:19'),
('17535b6f337ac3282ad3c3c1b79a9058d87c5f902f37b80749bbf830958eccd9c5a83d2d1a6da42f', 9, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 10:54:29', '2023-03-14 10:54:29', '2024-03-14 13:54:29'),
('1876ada8159c4c6b3516e00ec0c47b0d3424af280ea5534ded6513763a912fe470eaf35b0423e64e', 6, 1, 'API TOKEN', '[]', 0, '2023-03-14 05:56:45', '2023-03-14 05:56:45', '2024-03-14 08:56:45'),
('18e07db83049bafbeaf3b0e0d46cb81bb0a23395c8f1ec85f08a1693acabf99a92ca25396545f403', 5, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 14:31:59', '2023-03-14 14:32:00', '2024-03-14 17:31:59'),
('1b0149fd29716cab8fb7ffa54fd865dbb177cfe0aa99483a3a7f2a73854c4dfdb060ea6ac62d4c04', 7, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 10:48:51', '2023-03-14 10:48:51', '2024-03-14 13:48:51'),
('1c3576fce98f7ca827b5d861d0a27cecc89b1738341122119988b84efd85c551c0e24f8c38df888b', 1, 1, 'API TOKEN', '[]', 0, '2023-03-11 05:15:11', '2023-03-11 05:15:11', '2024-03-11 08:15:11'),
('1f92d36124fc4688025eaa7696e603318319b2a87b6a732381f2495312f72796bf1af7fddb3f0a5f', 7, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 14:56:11', '2023-03-14 14:56:11', '2024-03-14 17:56:11'),
('1fa3ab7db7ffa1479fad164af3db948238f58eb1c34ae97d0b2f5c81dbec5eaa1c3cfee51f75e5ae', 1, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 14:31:59', '2023-03-14 14:31:59', '2024-03-14 17:31:59'),
('1fd5ce95f956c0e1327e303719533b3b85e95416cf3328e3d7ec62054267fa3e767bebf6175c3c22', 14, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 14:32:00', '2023-03-14 14:32:00', '2024-03-14 17:32:00'),
('216ad22c300c304e3bf645a6187444710420920a883ff5ea9f8680dfd724d6460e02b4aff45ec7d8', 1, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 10:48:51', '2023-03-14 10:48:51', '2024-03-14 13:48:51'),
('281e144defb8f8d642d4ce6c5e36beda79e479a1c02f63a50a52e28e84e55c0a84c4a12fdfaa8246', 1, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 14:44:51', '2023-03-14 14:44:51', '2024-03-14 17:44:51'),
('28328eb1ef9262fe54ea6290407f29ceed99136fcee1b8128c7e173f58664474cdfbef681e7adf08', 1, 1, 'API TOKEN', '[]', 0, '2023-03-13 04:04:36', '2023-03-13 04:04:36', '2024-03-13 07:04:36'),
('283297ef65522ba6fb86cc23ccb95a7d2e7afd8842b2861f5aa740a64d9376655c305f4230abcb5f', 12, 1, 'API TOKEN', '[]', 0, '2023-03-14 05:57:27', '2023-03-14 05:57:28', '2024-03-14 08:57:27'),
('2aa1c3b0d95857a082ef47cab99bd7030baa186334e7832bed79982f86abf1c68c6ab2eaf2333572', 1, 1, 'API TOKEN', '[]', 0, '2023-03-14 10:18:49', '2023-03-14 10:18:49', '2024-03-14 13:18:49'),
('2bc14d6a06fd43cfdcee1b53600eb91a609970e93bdb1232a1d244c68c16240e882290359b8dffb3', 3, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 10:48:51', '2023-03-14 10:48:51', '2024-03-14 13:48:51'),
('2dabdac2abf65d094f882ee3418bac470d0481cb4bf341eedf2d472ace2551c2996c5faed8861234', 11, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 10:54:29', '2023-03-14 10:54:29', '2024-03-14 13:54:29'),
('30b5d0a4c119258bd527abba1a25d32b75bd38ccdac438de70cb3c49c9a518a3e6e20a92ec8d0da5', 8, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 16:32:37', '2023-03-14 16:32:37', '2024-03-14 19:32:37'),
('314371f17abb43b36c5f9caede462f2d032ff4ccb8de8c2c22dd66b88dc5d5aac851093293a1cbd1', 5, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 15:21:26', '2023-03-14 15:21:26', '2024-03-14 18:21:26'),
('34d96976605bebb94005c66437c8afbade8682106cc9f588a4077dc8af9abb39d519822c10103e5c', 1, 1, 'API TOKEN', '[]', 0, '2023-03-14 07:48:28', '2023-03-14 07:48:28', '2024-03-14 10:48:28'),
('36ca75e797974b72fab66ad70ec337beb6ced86be536d4d2eca5770a3c23ae053d9ef1689229a8f8', 4, 1, 'API TOKEN', '[]', 0, '2023-03-14 05:56:32', '2023-03-14 05:56:33', '2024-03-14 08:56:32'),
('3aa04950beb70fc354c235fa9f7d6fdcfc50c9bedf70f23ef4adeaa961574027a6fdef1002b52926', 1, 1, 'API TOKEN', '[]', 0, '2023-03-14 04:31:59', '2023-03-14 04:31:59', '2024-03-14 07:31:59'),
('3b1f3198ef966aacbbad43ca026f18fe957395fc08e36dec39a66d004ad0f9591f4ca7ebf7fff670', 8, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 14:53:11', '2023-03-14 14:53:11', '2024-03-14 17:53:11'),
('3bd00c11fd3b8e233939d334c4db43ba6c4a90d1c916ad6bfdcb5660d0b93cc6e676bbce07b4de0b', 3, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 10:54:28', '2023-03-14 10:54:28', '2024-03-14 13:54:28'),
('3bda95fbfaed8c337d07e7e67a4da132b476183aaac4396c64fe4fec97c0076d61beefa30b75a62f', 1, 1, 'API TOKEN', '[]', 0, '2023-03-14 14:30:02', '2023-03-14 14:30:03', '2024-03-14 17:30:02'),
('3ffedacb6bce6fe37d20bc264bee5b42ba547096c810f2f2ae819ac426b64d4675142c0b265b81e3', 5, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 14:53:11', '2023-03-14 14:53:11', '2024-03-14 17:53:11'),
('417586b48432d72d9a06a1de5b95b9730c4f3467b85fbd41c144111f80bcd67b66a0f6e08fbd75c6', 6, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 14:53:11', '2023-03-14 14:53:11', '2024-03-14 17:53:11'),
('4230a2765ed013542082b573e523765f310d6e627142e1da5475231c774f8845eb100f01da669f05', 4, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 14:31:59', '2023-03-14 14:31:59', '2024-03-14 17:31:59'),
('42b91dcb60856bfa4d0108667fcb672d1ab93e8f5c120a4bc023a955cbc2ed622e10277532bdf897', 3, 1, 'API TOKEN', '[]', 0, '2023-03-13 03:54:43', '2023-03-13 03:54:43', '2024-03-13 06:54:43'),
('43585dd20db0df85cd7a555e10cfe95d09501ca8550848c0d8773d1d1a3f12d1970fbb61935ee108', 12, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 14:56:12', '2023-03-14 14:56:12', '2024-03-14 17:56:12'),
('457949d4e25593812465c422b7edbeea9a48ab251b1ba5f7d1620b57bd53951055034dd73d5722a4', 14, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 16:32:37', '2023-03-14 16:32:37', '2024-03-14 19:32:37'),
('49d4772c923a5564b81573a4ce3e102993c446942c57b70f673978b24b2880e42abc6a9bf4165b6c', 11, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 10:48:51', '2023-03-14 10:48:52', '2024-03-14 13:48:51'),
('4b067c95424afcccfe622190b7c05b03a6711e6be66f96a901e6f7bbd6b522820391a9884fb506a0', 5, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 10:48:51', '2023-03-14 10:48:51', '2024-03-14 13:48:51'),
('4d0d65d2f28d65643db1871982815492312193d6d5e1d1ee16b18a4d7ab5bb8e03b337a7b367c0bc', 7, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 14:44:51', '2023-03-14 14:44:51', '2024-03-14 17:44:51'),
('4f749e634e27cea5ec286ec5290469c0d7f1eb10f39b8dffce4884dd96ef07feb24f08033a47313b', 4, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 14:44:51', '2023-03-14 14:44:51', '2024-03-14 17:44:51'),
('50c7a993817ed3bf9b9a1d8c1d1b9e9c2b4547e470198d4a4afac53c410046e59976196ac6908ee5', 1, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 14:53:10', '2023-03-14 14:53:10', '2024-03-14 17:53:10'),
('510a53ba27c1e8e91c41658b1a044217a285eea8c26c4198155bcd639753e92015094857e427cbe2', 1, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 14:42:13', '2023-03-14 14:42:13', '2024-03-14 17:42:13'),
('51665463b39751fe7e4e557e8bb9d504ac38a09bd96454881c175b15f6fef64313c8cf31fac6fa6b', 3, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 14:56:11', '2023-03-14 14:56:11', '2024-03-14 17:56:11'),
('5169efb01cb820cd16292b97c73ff6b60e76c7f544893655265ab8647e3e311668b1c6a5a0db22bf', 2, 1, 'API TOKEN', '[]', 0, '2023-03-14 10:22:30', '2023-03-14 10:22:31', '2024-03-14 13:22:30'),
('521224b401a0ef00feab199e2cb44725675316ea3500d971546813ccb1654e2cdb1cc7507093bbac', 3, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 16:33:12', '2023-03-14 16:33:12', '2024-03-14 19:33:12'),
('5242b2d3baf80b8f776e767205f7b39416568aa336e59f87fcf92e3219635fa827d725e8562cb483', 3, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 15:21:25', '2023-03-14 15:21:26', '2024-03-14 18:21:25'),
('53a7fd99acf71384f97bac9b570505cb15a7120fc60f8b45ac5187e24daf2977ea67b180fbaf0b50', 9, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 16:33:12', '2023-03-14 16:33:13', '2024-03-14 19:33:12'),
('548412157a994e0049c285d602c1bc7c7c8ae200729b7cb989604158934ab0ca34c9665520b3a074', 7, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 10:54:29', '2023-03-14 10:54:29', '2024-03-14 13:54:29'),
('54e22f727f69e18ff945b8575e9721e5de6738353dc551a3590bab75fee475948e2225967663df07', 1, 1, 'API TOKEN', '[]', 0, '2023-03-13 04:32:44', '2023-03-13 04:32:44', '2024-03-13 07:32:44'),
('5657306f798929a2597839726dc092ecba7cde4b3e115796b9a0e581390f0727d91b6d14bc934717', 8, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 14:32:00', '2023-03-14 14:32:00', '2024-03-14 17:32:00'),
('57f55d4d6882e2fa121f7db2562f4784140e56a024c0bf340c76a2c434c8b635bf9b0dfa20feb86f', 1, 1, 'API TOKEN', '[]', 0, '2023-03-11 07:54:17', '2023-03-11 07:54:17', '2024-03-11 10:54:17'),
('58775be73704b1a940132c3f3b5b15848314a94db50d091e49b1cfe18bf7cfca788642973d916e3c', 10, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 14:44:51', '2023-03-14 14:44:51', '2024-03-14 17:44:51'),
('5ab548dce853d61dd6499b8f5094de986655b77259b5b4c95b086916f94969450185a923c019787b', 5, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 16:21:30', '2023-03-14 16:21:30', '2024-03-14 19:21:30'),
('5bbb47da0055eacec21cc7b868cb0bd22066e981718f37417d2eee6cc5f089294d872d64457a8ae4', 4, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 15:21:26', '2023-03-14 15:21:26', '2024-03-14 18:21:26'),
('5d07eb1426b298a19876c4df2f9249838d58eb565cd5cda7b9db20a4068a94304725c4004a9d615d', 12, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 14:42:14', '2023-03-14 14:42:14', '2024-03-14 17:42:14'),
('5e1da0bcb46ce110ea4cb062075dd9681a4845553db900107fe9dbc5e8c254042d801a93f36be5e4', 3, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 14:31:59', '2023-03-14 14:31:59', '2024-03-14 17:31:59'),
('5fffe85fa78b34b0b575259b97a960f90d7811e54dadbaa2a66c32220a3773bfe93901a58ef5a6c8', 3, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 14:42:13', '2023-03-14 14:42:13', '2024-03-14 17:42:13'),
('6567126bab0a85461a78e2dd04346fb9ba768ce1c61e4c46e02a3c4247b5c1face0788dd29c59092', 3, 1, 'MyApp', '[\"admin\"]', 0, '2023-03-14 14:44:50', '2023-03-14 14:44:50', '2024-03-14 17:44:50'),
('6755c82f9530f698fef896150076613da117b5f4a1282b12e86e114ae74cb546b013937690f54932', 12, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 16:33:13', '2023-03-14 16:33:13', '2024-03-14 19:33:13'),
('69235a1231e129147e387320e804689af69b258379f0e9e8e07e0db6a1486cf4d50950d8d9f784e7', 10, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 16:33:13', '2023-03-14 16:33:13', '2024-03-14 19:33:13'),
('6d673a40146b15083df92ff0b8d95393f6bac7b129680bf0434ab18466cb8d81552cca64357f8370', 4, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 16:32:37', '2023-03-14 16:32:37', '2024-03-14 19:32:37'),
('6d8c75c295d5bc79292ee0c47499180e66e6780dfd69f622aadbd43980bce93247efde0dccacfe24', 1, 1, 'MyApp', '[\"admin\"]', 0, '2023-03-14 10:21:07', '2023-03-14 10:21:07', '2024-03-14 13:21:07'),
('73159a9657195a3abcafcf53bbc54a1e10d0496a010d3dee5ba2169e8370a5724972ceffa349e967', 14, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 10:54:29', '2023-03-14 10:54:29', '2024-03-14 13:54:29'),
('73ac8d53ff44100537ace916f0c3a5069d02678f5d1dfdafc0f9d662d5d46956b0e2cf5adbb7159b', 3, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 16:32:37', '2023-03-14 16:32:37', '2024-03-14 19:32:37'),
('73e762dfcbcf77f6b9652f30ea8ef5a2564744762b44d90533db1e3ac11a0ed1ac58d0455e32b431', 6, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 10:54:28', '2023-03-14 10:54:28', '2024-03-14 13:54:28'),
('78bad4aacf819c1135cf975b38abad4e3eb8bb7a39063c3ac1295ecb126de42ab2b144c5c4ae82df', 4, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 10:48:51', '2023-03-14 10:48:51', '2024-03-14 13:48:51'),
('793b241f2f73d4c089359cc3a3cd53168a31c40bbd7f2db70d2fcb077c8dc3817aa0d0e682a017c7', 14, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 15:21:26', '2023-03-14 15:21:26', '2024-03-14 18:21:26'),
('79b391c4c0b831d136acc1c170bfe4a455455eb48abbcc9432ac76d683752def628c78033b380465', 8, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 10:48:51', '2023-03-14 10:48:51', '2024-03-14 13:48:51'),
('7a104c6319c27703cc16bd4832f47a5dc0e018ba498a75d650479416613cfd5c3cac3c220e203785', 8, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 14:42:14', '2023-03-14 14:42:14', '2024-03-14 17:42:14'),
('7a526960707ff7f3203b3cffcafbe94286da6d6082e0f94a1b696a72f5d2b5c64de616de62444d86', 14, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 10:48:52', '2023-03-14 10:48:52', '2024-03-14 13:48:52'),
('7ba11e16d05d3f2483db1ac728b41f403037a3cf628ffdcd4c1adb047dfe00b98046f8a46aa5cd06', 8, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 16:21:30', '2023-03-14 16:21:30', '2024-03-14 19:21:30'),
('7c709d58ff5e6f35e50d2b9153827cc64f2ef3707f8c2dd6bdfd6c9ce3766f1eb8bf2bb1127a2769', 6, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 16:32:37', '2023-03-14 16:32:37', '2024-03-14 19:32:37'),
('7dda21c1c5b37993a783384ab6fa6e33732cb925a3d124493c9b0fc42d4119e31e3944abc81d476f', 12, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 14:53:11', '2023-03-14 14:53:11', '2024-03-14 17:53:11'),
('7df4cf04b20a7959962d4a22eb70a04bedcdfbf5e26f79fb0efc8683eb112bff19fd8689ec3d47bc', 14, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 14:42:14', '2023-03-14 14:42:14', '2024-03-14 17:42:14'),
('7ed8fce0d982d0f52df11ace7718bb46480ea3087f7302b15c4ed883323769a73192e89446671d20', 11, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 16:33:13', '2023-03-14 16:33:13', '2024-03-14 19:33:13'),
('819c96336e01bbc27f6a49bdf10756125e33bb8c14b0e4c61d75544d79f918766078d07ced28ca9f', 1, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 16:33:12', '2023-03-14 16:33:12', '2024-03-14 19:33:12'),
('842aa638893994d971a2ac1b907924ff9cdad6c8659179962f324a3f3a658bfa8d1754ac01590ed7', 12, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 15:21:26', '2023-03-14 15:21:26', '2024-03-14 18:21:26'),
('84844944934eb717a399aff200ccd781aaf1f8c5c5119725cd100180210d17038c39cc113c69a908', 14, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 14:56:12', '2023-03-14 14:56:12', '2024-03-14 17:56:12'),
('84e878e6e614ab60b7eecb5f658bbf9299da9cd6b8c17ba8d1bb8cb8218e8cf2e8a9450aa241876a', 14, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 16:21:31', '2023-03-14 16:21:31', '2024-03-14 19:21:31'),
('85ed8ce8d2f015ec996e3f5b43e4d2c8150c9ed8b25af21ea57cf94b7c4f3c90c0a9fd81f370609d', 1, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 16:21:30', '2023-03-14 16:21:30', '2024-03-14 19:21:30'),
('86685f0a9972b9513c8748d02cfc6662bda074c809a3b5c73a301adf2afd1d30b2b269eec3c8922a', 4, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 14:56:11', '2023-03-14 14:56:11', '2024-03-14 17:56:11'),
('86f4089418bf9aa0450527332004b4df8e7bd09ad3c92282cb581aef7ee70dff313c3ad6763607fe', 6, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 16:33:12', '2023-03-14 16:33:12', '2024-03-14 19:33:12'),
('89033d83df97c3963d0c9e166c6a9fbbcc4bbcefa5bc5433957042f59cb6ee0ec98016f090cc760b', 11, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 14:53:11', '2023-03-14 14:53:11', '2024-03-14 17:53:11'),
('8c40229ef4ff96bbcd7e1432df9c0a8ae92514a75cd18ff04cfc2d66ecd8555dd9c394b14589da5c', 10, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 10:54:29', '2023-03-14 10:54:29', '2024-03-14 13:54:29'),
('8cd5a88683b4f60b7767ec254ee60a4aa2dc606ba81fc0a5fad68777c84c8db76cb83fb7152d5119', 12, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 14:44:52', '2023-03-14 14:44:52', '2024-03-14 17:44:52'),
('8dd11bb6f1ee7b597d93df73c17275bd51ef9d8bb4c4eeda2846dd1dc38cc0404f75f635386cefb6', 11, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 14:32:00', '2023-03-14 14:32:00', '2024-03-14 17:32:00'),
('9153c9d5aecf93965c558abc65ec51999f1d9091455eb8769ac1ffe28a760a6cd6bbc6566ec83775', 4, 1, 'API TOKEN', '[]', 0, '2023-03-14 06:01:56', '2023-03-14 06:01:56', '2024-03-14 09:01:56'),
('9243a61980b452a9e714b261633c03e78889e8845b1e2f2e189a6a68fe9a588a7c2ff5cb098c4ef1', 3, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 14:44:51', '2023-03-14 14:44:51', '2024-03-14 17:44:51'),
('93285936ad27ea81a7d7b8ef247a5b40610a3ae5bfdbb761ec66ff348557f5de07eac5c2def0d4c2', 10, 1, 'API TOKEN', '[]', 0, '2023-03-14 05:57:16', '2023-03-14 05:57:16', '2024-03-14 08:57:16'),
('93ac55dcb760403691232b0e31527a100b40e923fc278f49575391a23ed5b6d4febdc02a8feeedc5', 9, 1, 'API TOKEN', '[]', 0, '2023-03-14 05:57:10', '2023-03-14 05:57:10', '2024-03-14 08:57:10'),
('95ea362c3ac0f68380705f6e330a103c2598b7d2752342e5de122fc2211900f04b97c8c7be480718', 14, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 14:53:11', '2023-03-14 14:53:11', '2024-03-14 17:53:11'),
('973ed3688b6d1378a088a5a7b2cab094ee015939fda4cf7f38768a7571de86eeeca04da25de2b461', 11, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 14:56:12', '2023-03-14 14:56:12', '2024-03-14 17:56:12'),
('9818753a7030293c532962df651f58a9a8229b117ce571402d3a1684d265ef115c3f81e84bec3204', 4, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 16:33:12', '2023-03-14 16:33:12', '2024-03-14 19:33:12'),
('9d0b75aac06a7ddf0523c940de920f4cd6e869d992418ff5965a95ebab118621c11b889ca7c2c5e7', 9, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 14:42:14', '2023-03-14 14:42:14', '2024-03-14 17:42:14'),
('9e331ca573d076f7ba74231cbca61d698777400ad96819c1cdb649dabaa995361b185d60a44b5d73', 9, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 10:48:51', '2023-03-14 10:48:51', '2024-03-14 13:48:51'),
('9e396763003e06323106ca8a8959f6762ccde8fe630ddd053ce1acaf78d12fac44ecc222118fe1bf', 1, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 14:56:11', '2023-03-14 14:56:11', '2024-03-14 17:56:11'),
('9f88f3305cfc849ea8c7968d93e4ffc8452a347b4f0aa4db90a9f4f3b59601c616f3d395eb1a678f', 1, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 10:32:45', '2023-03-14 10:32:45', '2024-03-14 13:32:45'),
('a05577311c5478ecbaea9741e6f8472b72553ef9fbdf20a8871d7d51473c2746f299ee6134378c9c', 5, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 14:44:51', '2023-03-14 14:44:51', '2024-03-14 17:44:51'),
('a08a19ded7688b7954a7a844f0b4bd393ec698f43fc2898627977fafdb701f262e94bcfd9b37e333', 6, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 14:42:13', '2023-03-14 14:42:13', '2024-03-14 17:42:13'),
('a249438c4b196ad4e5fc28a8030f32fe923198ee4da6cb54111b8de65bf875afe2a337c1ef0e5198', 9, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 15:21:26', '2023-03-14 15:21:26', '2024-03-14 18:21:26'),
('a3800e511af90ad9264ce9e27b84cba91b681dfeeb703c15f00f7d8d17228b37ee217653c2897900', 9, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 16:21:30', '2023-03-14 16:21:30', '2024-03-14 19:21:30'),
('a4051a02bd6165c5765d1e8a3fa05f89ec2cf5c3673aea2e28aa228f8277d7a0ae50f8f22e095c92', 12, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 14:32:00', '2023-03-14 14:32:00', '2024-03-14 17:32:00'),
('a59664e5514fe5c95d922e43f30833f92972aed7d2b840b1a1c08f5c876dce94dea188500d2170d7', 10, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 14:32:00', '2023-03-14 14:32:00', '2024-03-14 17:32:00'),
('a62a21703be60e8908ebc7fd041732fcc27b0eb9b0f99905a65d91105eef6da6e88fe5f0cdd7fcba', 14, 1, 'API TOKEN', '[]', 0, '2023-03-14 09:53:40', '2023-03-14 09:53:40', '2024-03-14 12:53:40'),
('a6c646a5911132acdedbd1d4f27d5496743563cda32f883c1e68963608b0bdb1c54e6535f9ca5b2f', 1, 1, 'API TOKEN', '[]', 0, '2023-03-14 14:52:33', '2023-03-14 14:52:33', '2024-03-14 17:52:33'),
('a6de8393199a8c7423fe8d26ee7b42c112e245d3077633dd9100bb54362d67493f75d3c315f3bf1d', 1, 1, 'API TOKEN', '[]', 0, '2023-03-11 06:12:48', '2023-03-11 06:12:48', '2024-03-11 09:12:48'),
('a72f5923c3afc5dc54ea5b01b83db5285ce04a0b594c9498796eff068a170307df549283d4ab262e', 3, 1, 'API TOKEN', '[]', 0, '2023-03-14 10:57:11', '2023-03-14 10:57:11', '2024-03-14 13:57:11'),
('a87a0ce58e2d87f832510427100c7487a8483b3be418647fc71ee0ef9eadba1e4d7c1c3b7ed85613', 1, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 16:32:37', '2023-03-14 16:32:37', '2024-03-14 19:32:37'),
('aa823201855fc89d393da0987ea7d2187a9137486a0d4be8ebfbc9af752c2d21cefd6eaed6566d61', 11, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 16:21:31', '2023-03-14 16:21:31', '2024-03-14 19:21:31'),
('ab4264956b28ee8cce1a1b981b2cc2987d8db61c44bc85f7af0ff6d248d7780f369c587844f74d91', 6, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 14:56:11', '2023-03-14 14:56:11', '2024-03-14 17:56:11'),
('aeca28eff81fc8bb508874c4526634c3be9e061d871b45fa56bd647f311b4ef3a8b8657da176ca63', 12, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 10:54:29', '2023-03-14 10:54:29', '2024-03-14 13:54:29'),
('aff3df319af8e49a739b17e9f6238d238a8c9fba56ac6e3198ea49789323746949fcd78fd91e931e', 8, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 10:54:29', '2023-03-14 10:54:29', '2024-03-14 13:54:29'),
('b00b38f4a3a146528be454bcf1b2467fddc1c4a983019a45261b813315867d55dfb53a2ba142cc55', 7, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 16:33:12', '2023-03-14 16:33:12', '2024-03-14 19:33:12'),
('b1ca422fe98e042246ea55b1cc9f6021431d2faebb88eb8d21211ba292b9a3ee4ccb3212bcf58fe5', 7, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 16:21:30', '2023-03-14 16:21:30', '2024-03-14 19:21:30'),
('b28c29df8f7087433b4a02c4e60ec8ba4fc7acd9d08177c4bd3d5c41e7d497eedf2db26e480daf8d', 9, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 16:32:37', '2023-03-14 16:32:37', '2024-03-14 19:32:37'),
('b39e8fa71207576a8fe3de130ef10cc11016ff36a46cb060abcfc10f01e5f403e7ca083372cc6838', 4, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 16:21:30', '2023-03-14 16:21:30', '2024-03-14 19:21:30'),
('b45e2575646c638e35492ac331533e89d212236345ff19e222bb08ce6a0fd6a86e1bb479375048ac', 7, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 14:53:11', '2023-03-14 14:53:11', '2024-03-14 17:53:11'),
('b494f3d1ac2178a4d7b76fc41f822c35f425a039b059159bc15b1e8d1d19271c0af7e74477dae2f7', 1, 1, 'API TOKEN', '[]', 0, '2023-03-14 05:21:29', '2023-03-14 05:21:29', '2024-03-14 08:21:29'),
('b712b375ae2bb2537802e83dcd19f09df34a95e963b5b1a2dc3d900b1917ea66e36e8605366d1dd1', 14, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 16:33:13', '2023-03-14 16:33:13', '2024-03-14 19:33:13'),
('b7ea56b7595017cb23534a821c4851ef4dd6ff79a5cad999eabfcf2489f882477171a51184ab3af8', 7, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 14:42:13', '2023-03-14 14:42:13', '2024-03-14 17:42:13'),
('b8d6c38464a5b351d3aad7525a6201ffee18c4f8b16195864cb00c20dca977c4491d79297b3aa762', 5, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 16:33:12', '2023-03-14 16:33:12', '2024-03-14 19:33:12'),
('b8e9986a2546639b06a82fc754da52d89688d6086081a544b41beb449e40ff5a8e0ab6b8a2160cb2', 6, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 14:32:00', '2023-03-14 14:32:00', '2024-03-14 17:32:00'),
('ba46493da6c6e93413ec4604ba0daf2a973e12a80aa35795aff60cd8a15da64215947fa826496ac6', 5, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 14:42:13', '2023-03-14 14:42:13', '2024-03-14 17:42:13'),
('bb6ddc0ba4bcc741d6cbc3a94ace656ba6c3c59098471e433fa0dd9d1356f567cb7b1a5e92dceead', 11, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 14:42:14', '2023-03-14 14:42:14', '2024-03-14 17:42:14'),
('bf3e5e3946969c84d8cb3a183e961b14ace443c9c6306b0ee667d7cb211afe7143e649020937e5c8', 14, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 14:44:52', '2023-03-14 14:44:52', '2024-03-14 17:44:52'),
('bf4babf537d2ae44e04c8f6d1ae68e8225df9830308b339b541e786988a859cd99e933cd45ebf455', 4, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 14:42:13', '2023-03-14 14:42:13', '2024-03-14 17:42:13'),
('c010da995e04769e88d27cfc852b26c03d3433d15eb925a06686cad0a8e7897fbaaed37c74e86763', 12, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 10:48:52', '2023-03-14 10:48:52', '2024-03-14 13:48:52'),
('c0b898c4e1fee406c78bbc3c0a237be210a6f5311e13ed539b0dbf8f70a833cf40a7a135c0ede1d7', 7, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 15:21:26', '2023-03-14 15:21:26', '2024-03-14 18:21:26'),
('c1233c5668456067581841995c8e7bc908dffdda4111a4459387d272b1866dccaf0a52f6bd4b3dda', 1, 1, 'MyApp', '[\"admin\"]', 0, '2023-03-14 10:19:12', '2023-03-14 10:19:12', '2024-03-14 13:19:12'),
('c1be24056080359350938ea1ec325cd95f593f81cb145dbd54209e231d3f7d7103055ac127258129', 1, 1, 'API TOKEN', '[]', 0, '2023-03-14 14:43:49', '2023-03-14 14:43:50', '2024-03-14 17:43:49'),
('c2c1958847303e120e03dbc0e2b7df421b33272b977354ee19a7590521edce9a008f459bdf5f592e', 10, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 15:21:26', '2023-03-14 15:21:26', '2024-03-14 18:21:26'),
('c3cd38be61e30487e4cfdd5cf316c3e573ffa01cd3a968c5e8605922d106175aeb41615080c4c63c', 7, 1, 'API TOKEN', '[]', 0, '2023-03-14 05:56:55', '2023-03-14 05:56:55', '2024-03-14 08:56:55'),
('c87f2ee1ba3ed32ed9113dde62dbc8bfacbc1be028dc61658128e80c10549cee4bdb2fd49475e193', 3, 1, 'MyApp', '[\"admin\"]', 0, '2023-03-14 15:21:11', '2023-03-14 15:21:11', '2024-03-14 18:21:11'),
('c88e8ee6b20d3b79927f2b8e2b5b176e66feadf4a39d7c0fd67acc20c069cd202e7a64cb8b8d9855', 10, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 14:42:14', '2023-03-14 14:42:14', '2024-03-14 17:42:14'),
('caafed67a81cc7215562b20e4417e47873915cdd3f47f81de5c5a908906acd787d218e8722d80f47', 8, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 14:44:51', '2023-03-14 14:44:51', '2024-03-14 17:44:51'),
('cd4c318ac2478becb45206d867ebf1f1c952353bc1a53e0d0c0931992b0b1bedaa08afe9634ceec4', 1, 1, 'API TOKEN', '[]', 0, '2023-03-14 04:29:19', '2023-03-14 04:29:20', '2024-03-14 07:29:19'),
('cea344808a6ebdf0ce623cd72855a4f31e2b9afaa8ad803d93ca2370b0f726a1ced7df218ff047bd', 8, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 16:33:12', '2023-03-14 16:33:12', '2024-03-14 19:33:12'),
('d15c7323f8f14ef7941d477fd1e74bc5b25012449c7253be50a22b8fa396cbd2633d24003bd36f8a', 1, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 10:54:28', '2023-03-14 10:54:28', '2024-03-14 13:54:28'),
('d23d03c5718aa4a290a75fce0e856bcbb4c5355aff856ce88f489ac0193ed11d76d506a80908dff4', 1, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 15:21:25', '2023-03-14 15:21:25', '2024-03-14 18:21:25'),
('d568c85506f16cfd83a8b8d8d44ae22747fdaa463baf554f9501a4aeb2c53361b4c80875d9cf753a', 11, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 16:32:37', '2023-03-14 16:32:37', '2024-03-14 19:32:37'),
('d6802554db6f098c5cd0adc27482370d67480fa2bcc41d88d51fa4f871ba5e2ce794fa7638db7e68', 10, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 10:48:51', '2023-03-14 10:48:51', '2024-03-14 13:48:51'),
('d6fa421559ff2c213c04a2cdf1596f0e74192192990efa96b0596be337854f7dc939b03f8f4d1852', 10, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 14:56:12', '2023-03-14 14:56:12', '2024-03-14 17:56:12'),
('d88cd5522f96307082ba30c2bffcf1c086c3619f36cab642db3b94baef515f040cfee12f75878584', 9, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 14:53:11', '2023-03-14 14:53:11', '2024-03-14 17:53:11'),
('d9cd01dc2362eae836ff7d4262a1c9eb65d381eba7bf71036ccfa7981a940109293a3a7a20824e4c', 12, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 16:32:37', '2023-03-14 16:32:37', '2024-03-14 19:32:37'),
('da3dd776e71778135a8f6b1a8dc980560535ec92a0507f29934b35ca1c353d86f6e52f2e80b28be2', 6, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 10:48:51', '2023-03-14 10:48:51', '2024-03-14 13:48:51'),
('dc1f6b7b89db629200f2e0fadc1d8f50d6babdf128be1b7b48331a793ba80ffd21874772a08bc885', 9, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 14:56:12', '2023-03-14 14:56:12', '2024-03-14 17:56:12'),
('dee2bb42369ddc45452b47bbb8b6eb8836d9e1cf3e3be6994e8e439b3ae7655a8bb020f5f5a10646', 6, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 16:21:30', '2023-03-14 16:21:30', '2024-03-14 19:21:30'),
('df4587684a8404b4c7c2e70e9f13704c4f86ef2ca2368bfd62dffbde29d7d627f96818f6eabd8cf2', 5, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 14:56:11', '2023-03-14 14:56:11', '2024-03-14 17:56:11'),
('df72498e3ab01a542fa22ef944368bafe1c40bbdb1c53226e31adbf43b8712f75745f0bf8f975ff4', 1, 1, 'API TOKEN', '[]', 0, '2023-03-14 04:34:13', '2023-03-14 04:34:14', '2024-03-14 07:34:13'),
('df85dadea13954643feb82e0528f48117f79aa9bd39398682fc21643457710240ae1944849e3a090', 11, 1, 'API TOKEN', '[]', 0, '2023-03-14 05:57:21', '2023-03-14 05:57:21', '2024-03-14 08:57:21'),
('e3347b9dc2ed158900f8a25db320ca2398288aa20089530212e6edc726749f5d60d414638ce7dace', 1, 1, 'API TOKEN', '[]', 0, '2023-03-14 05:07:13', '2023-03-14 05:07:13', '2024-03-14 08:07:13'),
('e777f9e4a289281ed1bd9c332c1532f9ce1921d5df2cf9c2b6d57da0f388412634971f503e98b453', 8, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 14:56:11', '2023-03-14 14:56:11', '2024-03-14 17:56:11'),
('e7eea84a77e4109dedd31fd3d10305597df6ec2ed2d5d4879c9b211218e440f54b9f74e8e566386e', 6, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 14:44:51', '2023-03-14 14:44:51', '2024-03-14 17:44:51'),
('e94f06ce37c755155b10ea6fa5516a261c162c9539acfaa807b7ee5275af3cb2cb3dcaace7ab6cf6', 9, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 14:32:00', '2023-03-14 14:32:00', '2024-03-14 17:32:00'),
('e962a9420aa05a4f3fcca5fd03d4c0fca71157e5a649c5ec69e9169994cdf0143a75944294c1c728', 10, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 16:32:37', '2023-03-14 16:32:37', '2024-03-14 19:32:37'),
('effbe854040e2fa25651e46be1765438c8a7012428d8e54addcd817767f12478d5236606a2d17bda', 8, 1, 'API TOKEN', '[]', 0, '2023-03-14 05:57:03', '2023-03-14 05:57:03', '2024-03-14 08:57:03'),
('f1127ef42945e930d6c33d83c77f41fcb08c06a64a60c2f799f58000b5637b9b391a212b2f99af94', 3, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 16:21:30', '2023-03-14 16:21:30', '2024-03-14 19:21:30'),
('f19f0d720b59ced4233ed7cafbb06e1ec8bc47b6528dbdeea4f09a4aa8a4f3ad5403261a353ce166', 11, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 14:44:51', '2023-03-14 14:44:51', '2024-03-14 17:44:51'),
('f435bb7cbda9dfb7c95af7f6f12440e158492cb90d136f1ff50b66ad7f703e8e7c43407f2dfd5ce9', 10, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 16:21:30', '2023-03-14 16:21:31', '2024-03-14 19:21:30'),
('f59c288564c656c84066c739331b3866e6cbc26dcc0dcead3a948703251625108e5202e75fe2a726', 9, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 14:44:51', '2023-03-14 14:44:51', '2024-03-14 17:44:51'),
('f604b172fdfeec9e5986a9de5f649e8ef4b3c65fdb8296020e80b8651c4014a9d080ff1002b73600', 4, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 10:54:28', '2023-03-14 10:54:28', '2024-03-14 13:54:28'),
('fafd27dd8cf67bf860e2749c60f66228eda19c4eadc123db3fbc7eb4a5d49958265e3a2adbe2a5b9', 3, 1, 'MyApp', '[\"admin\"]', 0, '2023-03-14 14:53:10', '2023-03-14 14:53:10', '2024-03-14 17:53:10'),
('fb72a4c5eafffcf1e8035b1279ab9d3487972447465f6118637dc576c3bf7810ad73a475f3030180', 5, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 16:32:37', '2023-03-14 16:32:37', '2024-03-14 19:32:37'),
('fcddd6d9a7c036e0539fca9bc5136093b9e6912e6e84c2af069c7ba23efc2f86bdc3f75aed9d711d', 6, 1, 'LaravelAuthApp', '[]', 0, '2023-03-14 15:21:26', '2023-03-14 15:21:26', '2024-03-14 18:21:26'),
('fd018fdae77c29e99ef1771e4dbdcd80aca8e6499749baf8f029c05f43ccfca91feac5a5a9ef34e5', 1, 1, 'API TOKEN', '[]', 0, '2023-03-13 03:53:25', '2023-03-13 03:53:25', '2024-03-13 06:53:25'),
('fe7cedd8f200c2e4666659194862b8f7d311286a936095a23310cc1b37b909cdb8b9e44867bd42be', 1, 1, 'API TOKEN', '[]', 0, '2023-03-11 05:56:24', '2023-03-11 05:56:25', '2024-03-11 08:56:24');

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
(1, NULL, 'Laravel Personal Access Client', 'TyIrUwThzRUkQVBYMOfs3PPGs1iXAynujLTQNYyz', NULL, 'http://localhost', 1, 0, 0, '2023-03-11 05:14:59', '2023-03-11 05:14:59'),
(2, NULL, 'Laravel Password Grant Client', 'C1PH1wqrAcTgbhHiQiFOfygpUG9Izo8eA3svtZoG', 'users', 'http://localhost', 0, 1, 0, '2023-03-11 05:14:59', '2023-03-11 05:14:59');

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
(1, 1, '2023-03-11 05:14:59', '2023-03-11 05:14:59');

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
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` longtext NOT NULL,
  `report` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `user_id`, `title`, `report`, `created_at`, `updated_at`) VALUES
(22, 1, 'yyyyyyyyyyyy', 'uuuu', '2023-03-13 05:05:27', '2023-03-14 09:54:22'),
(23, 1, 'hsdjsgfjgdj', 'dcdfhuditfgue', '2023-03-13 05:24:37', '2023-03-13 05:24:37'),
(24, 1, 'rwqewe', 'tfeteretrt', '2023-03-14 04:13:48', '2023-03-14 04:13:48');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `address`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'mahdi', '1@gmail.com', 'basra', NULL, '$2y$10$Xbq9KU4CGm9Q499b.Hf7FOO/PTYx.k0FBLspQO90zF.0d4aazsgPG', NULL, '2023-03-11 05:15:11', '2023-03-11 05:15:11'),
(3, 'm', 'm@gmail.com', 'basra', NULL, '$2y$10$Dnp9R6HNiFZIlH4v9SuyLeu.GH50X4Iu0Fa6XT9sW/4qiTARoMW7q', NULL, '2023-03-13 03:54:43', '2023-03-13 03:54:43'),
(4, 'mahdi', '10@gmail.com', 'basra', NULL, '$2y$10$kEPD2xnaF/cxyIhSsBpT/eLQ.2N28BBXEodpELZvhOCH0CPdU90ce', NULL, '2023-03-14 05:56:31', '2023-03-14 05:56:31'),
(5, 'mahdi', '2@gmail.com', 'basra', NULL, '$2y$10$9C1ZlqLU6hzFbLuZpXALnu.7BKrnYq6hIHH9od78371PDLGFS51rC', NULL, '2023-03-14 05:56:39', '2023-03-14 05:56:39'),
(6, 'mahdi', '3@gmail.com', 'basra', NULL, '$2y$10$gVr4dBegtEu9ZJbs8I2/YufODtzPB2IBX/vCgQnnpao9VYFi4eD0u', NULL, '2023-03-14 05:56:45', '2023-03-14 05:56:45'),
(7, 'mahdi', '4@gmail.com', 'basra', NULL, '$2y$10$6cgnS7LaSAK.L83BC.C5X.462lLxws875CLi8M92cwFEKhmi3jyYK', NULL, '2023-03-14 05:56:55', '2023-03-14 05:56:55'),
(8, 'mahdi', '5@gmail.com', 'basra', NULL, '$2y$10$NSzCw4WuX4YCuhzsBopR5eV4G9xFYpgjAru9rS3dJfY4RGlmbBxGe', NULL, '2023-03-14 05:57:02', '2023-03-14 05:57:02'),
(9, 'mahdi', '6@gmail.com', 'basra', NULL, '$2y$10$2RFI4/ek0nhcGgswp0SPIeRHVDAyP2ceQYLPor5VI4XFMG7DP5dF6', NULL, '2023-03-14 05:57:10', '2023-03-14 05:57:10'),
(10, 'mahdi', '7@gmail.com', 'basra', NULL, '$2y$10$v.8fPyjSGtpZhcsWW/vlNeRz/xX48N9s3Ly/sUWqbn8MmMkYjqxSe', NULL, '2023-03-14 05:57:16', '2023-03-14 05:57:16'),
(11, 'mahdi', '8@gmail.com', 'basra', NULL, '$2y$10$JBcEjY3lRtWdGzHpqhblu.oe4GBGSPCANT7WzCB1BcMv91kriBMDq', NULL, '2023-03-14 05:57:21', '2023-03-14 05:57:21'),
(12, 'mahdi', '9@gmail.com', 'basra', NULL, '$2y$10$4k1UMPee2lh7rFQpCwoIHuBSiuqKNr6.ThbrXMzCOWYu6hnOEtTr2', NULL, '2023-03-14 05:57:27', '2023-03-14 05:57:27'),
(14, 'mahdi', '66@gmail.com', 'basra', NULL, '$2y$10$EOwCcgWAhK/guMeZwmxe0.n1v35gZWHoQaexcuJvwOKngBtRyz0wi', NULL, '2023-03-14 09:53:39', '2023-03-14 09:53:39');

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
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reports_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reports`
--
ALTER TABLE `reports`
  ADD CONSTRAINT `reports_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
