-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Jul 2022 pada 14.32
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `barunai`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `assets`
--

CREATE TABLE `assets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `filename` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `assetable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `assetable_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `assets`
--

INSERT INTO `assets` (`id`, `filename`, `assetable_type`, `assetable_id`) VALUES
(43, 'GxKSlkvhcR5l42wufclK9r15GVBqgCSpOZBOLIFL53.jpg', 'App\\Models\\Product', 10),
(50, 'L8gMXgoFfaIvEbsUMlgzZOUEGK6mrmKed01uxr3jIV.jpg', 'App\\Models\\Product', 10),
(55, '1DppRyP3Ka18TEFmRdDRjvP1xHPvlDTLBJKDW0ovr.jpg', 'App\\Models\\Product', 14),
(56, 'mJ8k9IY0Xu8ymR7OPPCHRp0IsoBhoY8m9zPmcml07.jpg', 'App\\Models\\Product', 15),
(57, 'rj5v6frv7u95LxXLGtN4hMpXwo22hV6ocs7jw0IGB.jpg', 'App\\Models\\Product', 16),
(58, 'BGGcu8UxismCdK62F0Jqi2CJsqv0IRZPF8qTdK71u.jpg', 'App\\Models\\Product', 17),
(59, 'HtHycIVzdzxLpSE1zg5TpyK54XiMFAkIwIzIgqP5f.jpg', 'App\\Models\\Product', 18),
(60, 'ejIRDMjgT5qyAYO48dTKLkMvQPPqZzZovZkcfZ7Yl.jpg', 'App\\Models\\Product', 19),
(61, 'k4MVPLgnQ0nbAT4L7X23pmva6QlD7BR5CYWz3vVaV.jpg', 'App\\Models\\Product', 20),
(62, 'lSgvXSNLbBdrE6ihXesoDiF4XS2WXAIiFMDNkYVRK.jpg', 'App\\Models\\Product', 21);

-- --------------------------------------------------------

--
-- Struktur dari tabel `bank_accounts`
--

CREATE TABLE `bank_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bank_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_office` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `bank_accounts`
--

INSERT INTO `bank_accounts` (`id`, `bank_name`, `bank_office`, `account_name`, `account_number`) VALUES
(1, 'COD', 'Anjir', 'Masliana', '0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `blocks`
--

CREATE TABLE `blocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` tinyint(4) NOT NULL DEFAULT 1,
  `position` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `blocks`
--

INSERT INTO `blocks` (`id`, `label`, `description`, `image`, `weight`, `position`, `post_id`, `created_at`, `updated_at`) VALUES
(8, 'Banner 1', NULL, 'hhRaacWPb1mPcu65g7XvH4UiAzcuJyS6QV5dxeOqFX.png', 1, 'Banner', 3, '2022-02-12 17:32:03', '2022-06-12 12:24:26'),
(9, 'Banner 2', NULL, 'nW52rlMNuNtHJSjmI22dU0JuZQnqf1ZWCGvcO4Tuiz.png', 2, 'Banner', 2, '2022-02-12 17:32:20', '2022-06-12 12:24:42'),
(10, 'Banner 3', NULL, 'spTF59pZzPgioRMaco3pwspte0uBdV0FndvLesN6XW.png', 3, 'Banner', 1, '2022-02-12 17:32:35', '2022-06-12 12:24:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_stock` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  `image_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `carts`
--

INSERT INTO `carts` (`id`, `session_id`, `name`, `sku`, `product_stock`, `product_id`, `price`, `quantity`, `weight`, `image_url`, `product_url`, `created_at`, `updated_at`, `note`) VALUES
(36, 'HbnB79y94gBW6A7PBtjLV1nmNJ3Q3DnXlvEnEwopCdqnofbNPBZ5zTsaDd2d', 'Aneka Kripik', 'PRDBIn4pWITSijDXP', 44, 10, 15000, 1, 500, 'http://127.0.0.1:8000/upload/images/GxKSlkvhcR5l42wufclK9r15GVBqgCSpOZBOLIFL53.jpg', 'http://localhost:8080/product/dasi-lebar-7-cm-premium-fabric', '2022-06-21 01:17:27', '2022-06-21 01:17:27', NULL),
(39, 'XvHos0GaZTMrNDobJUXZkTavv0IurShLMvcGcJd1VDxpn17i37XllYrZHBn3', 'Aneka Kripik', 'PRDBIn4pWITSijDXP', 41, 10, 15000, 1, 500, 'http://127.0.0.1:8000/upload/images/GxKSlkvhcR5l42wufclK9r15GVBqgCSpOZBOLIFL53.jpg', 'http://localhost:8080/product/dasi-lebar-7-cm-premium-fabric', '2022-06-22 03:06:22', '2022-06-22 03:06:22', NULL),
(40, 'DiApBQkfHsvKl2VXQwttS8Hm6EZbkwrHz2biO3RJaHeIXSwzT5tAeD5c68Ot', 'Aneka Kripik', 'PRDBIn4pWITSijDXP', 41, 10, 15000, 1, 500, 'http://127.0.0.1:8000/upload/images/GxKSlkvhcR5l42wufclK9r15GVBqgCSpOZBOLIFL53.jpg', 'http://127.0.0.1:8000/product/dasi-lebar-7-cm-premium-fabric', '2022-06-22 03:13:36', '2022-06-22 03:13:36', NULL),
(44, 'PDRCInRAFDCMmwdY4d33Qk32uEcTzKDTubu8yYgmaAP1zAPVODz6lxrHpJ7U', 'Aneka Kripik', 'PRDBIn4pWITSijDXP', 39, 10, 15000, 1, 500, 'http://127.0.0.1:8000/upload/images/GxKSlkvhcR5l42wufclK9r15GVBqgCSpOZBOLIFL53.jpg', 'http://127.0.0.1:8000/product/dasi-lebar-7-cm-premium-fabric', '2022-06-23 13:00:50', '2022-06-23 13:00:50', NULL),
(45, 'qqpBx95CaDu4LOa3DNXweKQuwG7WwMZhkel1bnXUxhvpX41xg1tnGvgQY9uj', 'Aneka Kripik', 'PRDBIn4pWITSijDXP', 39, 10, 15000, 1, 500, 'http://127.0.0.1:8000/upload/images/GxKSlkvhcR5l42wufclK9r15GVBqgCSpOZBOLIFL53.jpg', 'http://127.0.0.1:8000/product/dasi-lebar-7-cm-premium-fabric', '2022-06-24 09:11:48', '2022-06-24 09:11:48', NULL),
(47, 'sUByIa5iFUratSLTnfX2X0SC6p526EWF3ZKTiKwt4nyODtvNJBDOsnKEs8K6', 'Aneka Kripik', 'PRDBIn4pWITSijDXP', 38, 10, 15000, 1, 500, 'http://127.0.0.1:8000/upload/images/GxKSlkvhcR5l42wufclK9r15GVBqgCSpOZBOLIFL53.jpg', 'http://localhost:8080/product/dasi-lebar-7-cm-premium-fabric', '2022-06-24 10:29:14', '2022-06-24 10:29:14', NULL),
(49, '6DwSWBLsWb8UM9Ex3QW1d3Wgmlm3DtlvFG2WcTHnirbJXOBiYXUh6Sm309sd', 'Aneka Kripik', 'PRDBIn4pWITSijDXP', 37, 10, 15000, 1, 500, 'http://127.0.0.1:8000/upload/images/GxKSlkvhcR5l42wufclK9r15GVBqgCSpOZBOLIFL53.jpg', 'http://localhost:8080/product/dasi-lebar-7-cm-premium-fabric', '2022-06-30 08:46:35', '2022-06-30 08:46:35', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filename` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_front` tinyint(1) NOT NULL DEFAULT 1,
  `is_special` tinyint(1) NOT NULL DEFAULT 0,
  `weight` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `title`, `slug`, `filename`, `banner`, `description`, `is_front`, `is_special`, `weight`) VALUES
(13, 'Banana', 'banana', 'ePhHld4y5o1UZjfhDwCsMaEvF2S0vDyYN4RMFGIw.png', '', NULL, 1, 0, 1),
(14, 'Frozen Food', 'frozen-food', 'AUSlI4SNA6exjVVNt58u1KknIwFAIAP1wsF3JBSg.png', NULL, NULL, 1, 0, 2),
(15, 'Snack', 'snack', 'PkEf9o3QgMyB72wOs1yc9kwf9IZeicSKiX1wIOao.png', NULL, NULL, 1, 0, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `configs`
--

CREATE TABLE `configs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `theme` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'default',
  `theme_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '#1bb90d',
  `home_view_mode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'grid',
  `product_view_mode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'grid',
  `is_whatsapp_checkout` tinyint(1) NOT NULL DEFAULT 0,
  `is_guest_checkout` tinyint(1) NOT NULL DEFAULT 0,
  `is_payment_gateway` tinyint(1) NOT NULL DEFAULT 0,
  `cod_list` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_notifypro` tinyint(1) NOT NULL DEFAULT 0,
  `notifypro_interval` tinyint(4) NOT NULL DEFAULT 20,
  `notifypro_timeout` tinyint(4) NOT NULL DEFAULT 4,
  `rajaongkir_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rajaongkir_apikey` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rajaongkir_couriers` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `warehouse_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telegram_bot_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telegram_user_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tripay_api_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tripay_private_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tripay_merchant_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tripay_mode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'sanbox' COMMENT 'sanbox,production'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `configs`
--

INSERT INTO `configs` (`id`, `theme`, `theme_color`, `home_view_mode`, `product_view_mode`, `is_whatsapp_checkout`, `is_guest_checkout`, `is_payment_gateway`, `cod_list`, `is_notifypro`, `notifypro_interval`, `notifypro_timeout`, `rajaongkir_type`, `rajaongkir_apikey`, `rajaongkir_couriers`, `warehouse_id`, `warehouse_address`, `telegram_bot_token`, `telegram_user_id`, `tripay_api_key`, `tripay_private_key`, `tripay_merchant_code`, `tripay_mode`) VALUES
(1, 'default', '#880da0', 'grid', 'grid', 1, 1, 0, '[]', 1, 20, 5, 'starter', NULL, NULL, 43, 'Kabupaten Barito Kuala, Kalimantan Selatan', NULL, NULL, NULL, NULL, NULL, 'sanbox');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_04_11_172021_create_categories_table', 1),
(6, '2021_06_11_172034_create_products_table', 1),
(7, '2021_06_11_172519_create_assets_table', 1),
(8, '2021_06_12_131316_create_sliders_table', 1),
(9, '2021_06_17_010104_create_stores_table', 1),
(10, '2021_10_16_140715_create_reviews_table', 1),
(11, '2021_10_17_130249_create_posts_table', 1),
(12, '2021_10_18_212500_create_blocks_table', 1),
(13, '2021_10_19_154343_add_columns_to_categories_table', 1),
(14, '2021_10_24_081524_create_configs_table', 1),
(15, '2021_10_24_201040_create_orders_table', 1),
(16, '2021_10_24_201114_create_order_items_table', 1),
(17, '2021_10_25_222307_create_bank_accounts_table', 1),
(18, '2021_11_01_210733_add_columns_to_orders_table', 1),
(19, '2021_11_05_091550_create_transactions_table', 1),
(20, '2021_11_11_155008_create_carts_table', 1),
(21, '2021_12_03_124300_add_role_to_users_table', 1),
(22, '2022_01_19_115010_create_product_variants_table', 1),
(23, '2022_01_19_115054_create_product_variant_items_table', 1),
(24, '2022_01_19_115931_create_product_variant_values_table', 1),
(25, '2022_01_20_151938_add_column_note_to_carts_table', 1),
(26, '2022_01_20_152029_add_column_note_to_order_items_table', 1),
(27, '2022_01_20_163950_add_column_sku_to_products_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_ref` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_whatsapp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_qty` int(11) NOT NULL,
  `order_subtotal` int(11) NOT NULL,
  `order_weight` int(11) NOT NULL,
  `order_unique_code` int(11) NOT NULL,
  `order_total` int(11) NOT NULL DEFAULT 0,
  `order_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shipping_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_courier_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_courier_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_courier_service` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_cost` int(11) DEFAULT NULL,
  `shipping_address` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_delivered` timestamp NULL DEFAULT NULL,
  `shipping_received` timestamp NULL DEFAULT NULL,
  `note` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`id`, `order_ref`, `user_id`, `customer_name`, `customer_email`, `customer_whatsapp`, `order_qty`, `order_subtotal`, `order_weight`, `order_unique_code`, `order_total`, `order_status`, `created_at`, `updated_at`, `shipping_type`, `shipping_courier_code`, `shipping_courier_name`, `shipping_courier_service`, `shipping_cost`, `shipping_address`, `shipping_delivered`, `shipping_received`, `note`) VALUES
(12, 'INV-4805WZGOB', NULL, 'Nur Azmi', NULL, '087654321237', 2, 30000, 1000, 224, 30000, 'UNPAID', '2022-06-22 03:05:50', '2022-06-22 03:05:50', NULL, NULL, NULL, NULL, 0, 'griya harmoni <br>Alalak, Kabupaten Barito Kuala<br>Kalimantan Selatan', NULL, NULL, NULL),
(13, 'INV-1040H2GEI', NULL, 'Nur Azmi', NULL, '085674634552', 1, 15000, 500, 110, 15000, 'UNPAID', '2022-06-22 03:16:29', '2022-06-22 03:16:29', NULL, NULL, NULL, NULL, 0, 'griya harmoni <br>Alalak, Kabupaten Barito Kuala<br>Kalimantan Selatan', NULL, NULL, NULL),
(14, 'INV-5707TCWRY', NULL, 'nadia', NULL, '087564534245', 1, 15000, 500, 206, 15000, 'UNPAID', '2022-06-23 12:51:53', '2022-06-23 12:51:53', NULL, NULL, NULL, NULL, 0, 'griya harmoni <br>Alalak, Kabupaten Barito Kuala<br>Kalimantan Selatan', NULL, NULL, NULL),
(15, 'INV-4478OND7E', 1, 'Azmi', NULL, '085754244518', 1, 15000, 500, 235, 15000, 'COMPLETE', '2022-06-24 10:22:52', '2022-06-24 11:03:01', NULL, 'kirim', NULL, NULL, 0, 'griya harmoni', '2022-06-24 11:02:50', NULL, NULL),
(16, 'INV-4914IU2YZ', NULL, 'Azmi', NULL, '087654332456', 1, 15000, 1000, 56, 15000, 'UNPAID', '2022-06-27 02:20:23', '2022-06-27 02:20:23', NULL, NULL, NULL, NULL, 0, 'griya harmoni', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `order_items`
--

INSERT INTO `order_items` (`id`, `name`, `sku`, `order_id`, `product_id`, `quantity`, `price`, `created_at`, `updated_at`, `note`) VALUES
(13, 'Aneka Kripik', 'PRDBIn4pWITSijDXP', 12, 10, 2, 15000, '2022-06-22 03:05:50', '2022-06-22 03:05:50', NULL),
(14, 'Aneka Kripik', 'PRDBIn4pWITSijDXP', 13, 10, 1, 15000, '2022-06-22 03:16:29', '2022-06-22 03:16:29', NULL),
(15, 'Aneka Kripik', 'PRDBIn4pWITSijDXP', 14, 10, 1, 15000, '2022-06-23 12:51:53', '2022-06-23 12:51:53', NULL),
(16, 'Aneka Kripik', 'PRDBIn4pWITSijDXP', 15, 10, 1, 15000, '2022-06-24 10:22:52', '2022-06-24 10:22:52', NULL),
(17, 'Banana Crispy', 'PRDLxZT7oGIVWwYVD', 16, 19, 1, 15000, '2022-06-27 02:20:23', '2022-06-27 02:20:23', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(18, 'App\\Models\\User', 2, 'APP', '2d3263e25f1f0746d5d0f4edc49f0b614806f8b4220ebfe03b3eb0c8c678eac5', '[\"*\"]', '2022-02-11 06:20:09', '2022-02-11 06:19:58', '2022-02-11 06:20:09'),
(50, 'App\\Models\\User', 1, 'APP', '1450010ba3f23e37a2f482de36f17a5987e1e09b53c39b430cc366c32874000d', '[\"*\"]', '2022-06-30 14:00:07', '2022-06-30 08:47:45', '2022-06-30 14:00:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_promote` tinyint(1) NOT NULL DEFAULT 0,
  `is_listing` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `tags`, `image`, `body`, `is_promote`, `is_listing`, `created_at`, `updated_at`) VALUES
(1, 'Minimum Order', 'tips-sukses-memulai-bisnis-online', NULL, 'TB1d2KfOSM0ib2hgm9bbBrQDTW3lozQbvVYDooMYwe.png', '<div>Orderan diluar wilayah Anjir dikenakan minimum pembelian sebanyak 7 box dan dikenakan ongkir.</div>', 1, 1, '2022-02-11 00:09:25', '2022-06-12 11:34:36'),
(2, 'How To Buy', 'cara-membangun-brand-di-tahun-2022', NULL, 'ru1U75UfwXPJZNs4V9xZPayayb84YDnscxx6EsLsG4.jpg', '<div>Cara pemesanan dengan sistem PO. Pilih produk yang ingin dibeli kemudian klik beli sekarang dan silahkan pilih ingin chekout langsung melalui aplikasi atau melalui Whatsapp.</div>', 1, 1, '2022-02-11 00:11:11', '2022-06-12 11:33:16'),
(3, 'Cash On Delivery (COD)', 'konsep-yang-meningkatkan-nilai-brand', 'null', 'yZWAZx6OZV53OJCodA7rIAXNHh9tiOOmwg9OeiprKp.png', 'Gratis ongkir untuk wilayah Anjir. Diluar wilayah Anjir akan dikenakan Ongkir Rp. 5000 pertujuan', 1, 1, '2022-02-11 00:12:24', '2022-06-27 01:14:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` int(11) NOT NULL,
  `price` bigint(20) NOT NULL,
  `sold` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `weight` int(11) NOT NULL DEFAULT 1000,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `title`, `slug`, `description`, `stock`, `price`, `sold`, `status`, `category_id`, `weight`, `created_at`, `updated_at`, `sku`) VALUES
(10, 'Aneka Kripik', 'dasi-lebar-7-cm-premium-fabric', '<div>Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum expedita error ullam soluta totam modi eos fuga sunt, ab dolorum reiciendis! Doloremque voluptate nisi corporis eum! Vitae accusantium qui maiores.</div><div><br></div><div>Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum expedita error ullam soluta totam modi eos fuga sunt, ab dolorum reiciendis! Doloremque voluptate nisi corporis eum! Vitae accusantium qui maiores.</div><div><br></div><div>Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum expedita error ullam soluta totam modi eos fuga sunt, ab dolorum reiciendis! Doloremque voluptate nisi corporis eum! Vitae accusantium qui maiores.</div><div><br></div><div>Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum expedita error ullam soluta totam modi eos fuga sunt, ab dolorum reiciendis! Doloremque voluptate nisi corporis eum! Vitae accusantium qui maiores.</div>', 37, 15000, NULL, 1, 15, 500, '2022-02-16 15:27:45', '2022-06-24 10:22:52', 'PRDBIn4pWITSijDXP'),
(14, 'Selada', 'selada', 'Selada segar dipetik langsung dari kebun. Harga yang tertera dihitung perkilo.', 50, 25000, NULL, 1, 14, 1000, '2022-06-25 05:18:36', '2022-06-25 05:18:36', 'PRDWNNv55cFpdhCZb'),
(15, 'Gorengan Tempe', 'gorengan-tempe', 'Olahan dari tempe segar yang digoreng dengan balutan tepung krispy. Harga yang tertera adalah harga satuan.', 50, 1000, NULL, 1, 15, 1000, '2022-06-25 05:20:00', '2022-06-25 05:20:00', 'PRDhbMPLmvGILqtnj'),
(16, 'Donat', 'donat', 'Donat dengan varian rasa beragam yang dikumpulkan dalam satu box. Harga yang tertera adalah harga perbox.', 50, 50000, NULL, 1, 15, 1000, '2022-06-25 05:21:16', '2022-06-25 05:21:16', 'PRDLWOrSONvgLs5pQ'),
(17, 'Sambal Acan', 'sambal-acan', 'Sambal acan terbuat dari cabai rawit asli dengan perpaduan berbagai rempah lainnya. Harga yang tertera adalah harga perbotol.', 50, 20000, NULL, 1, 14, 1000, '2022-06-25 05:22:53', '2022-06-25 05:22:53', 'PRDW7MqsmhgsyPmhF'),
(18, 'Kue Kacang', 'kue-kacang', 'Kue kacang terbaik yang renyah dengan rempah-rempah yang kaya akan cita rasa. Harga yang tertera adalah harga perbox.', 50, 30000, NULL, 1, 15, 1000, '2022-06-25 05:24:24', '2022-06-25 05:24:24', 'PRDhWq3R3mcwFl60K'),
(19, 'Banana Crispy', 'banana-crispy', 'Banana crispy terbuat pure dari pisang ulahan dibalur dengan tepung roti dan teknik goreng yang berbeda semakin yummy', 49, 15000, NULL, 1, 13, 1000, '2022-06-25 05:27:39', '2022-06-27 02:20:23', 'PRDLxZT7oGIVWwYVD'),
(20, 'Banana Roll', 'banana-roll', 'Pisang berbalut dengan kulit lumpia super cruncy renyah dan garing bertemu dengan lumer aneka pilihan rasa.', 50, 15000, NULL, 1, 13, 1000, '2022-06-25 05:29:17', '2022-06-25 05:29:17', 'PRDEFWLWokmVivRPt'),
(21, 'Molen Mini', 'molen-mini', 'Potongan buah pisang yang dililit dengan lembar tepung tipis sebelum akhirnya digoreng.', 50, 10000, NULL, 1, 13, 1000, '2022-06-25 05:31:25', '2022-06-25 05:32:58', 'PRDkrAk9Jaobxtnhk');

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_variants`
--

CREATE TABLE `product_variants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `variant_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `variant_item_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_variant_items`
--

CREATE TABLE `product_variant_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_variant_id` bigint(20) UNSIGNED NOT NULL,
  `variant_item_label` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_variant_values`
--

CREATE TABLE `product_variant_values` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_variant_item_id` bigint(20) UNSIGNED NOT NULL,
  `item_sku` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_label` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_stock` int(11) NOT NULL DEFAULT 0,
  `additional_price` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `weight` tinyint(4) NOT NULL DEFAULT 1,
  `filename` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sliders`
--

INSERT INTO `sliders` (`id`, `weight`, `filename`) VALUES
(16, 1, 'voi5NHxDzRklhoQFP7t1bB0CsxpCAHE6o8jIl6.png'),
(17, 2, 'Urr2WXExiVwha4eg7xPgmkBZ1LX5zkP4h98cG1.png'),
(18, 3, 'dmylY1TaBierFvkU8Jf0sNZdbUApODNpw9QRIj.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `stores`
--

CREATE TABLE `stores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo_path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `stores`
--

INSERT INTO `stores` (`id`, `name`, `slug`, `phone`, `logo_path`, `description`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Barunai Food', 'my-shop', '085754244518', NULL, 'Barunai Food Delivery, toko online produk makanan buatan sendiri dengan kualitas yang baik.', 'Anjir', '2022-02-09 08:48:18', '2022-06-11 06:31:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `payment_ref` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  `amount_received` int(11) NOT NULL DEFAULT 0,
  `total_fee` int(11) NOT NULL DEFAULT 0,
  `expired_time` int(11) DEFAULT NULL,
  `instructions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'UNPAID',
  `paid_at` timestamp NULL DEFAULT NULL,
  `note` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_proof` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qr_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transactions`
--

INSERT INTO `transactions` (`id`, `order_id`, `payment_ref`, `payment_type`, `payment_method`, `payment_name`, `payment_code`, `amount`, `amount_received`, `total_fee`, `expired_time`, `instructions`, `status`, `paid_at`, `note`, `payment_proof`, `qr_url`, `created_at`, `updated_at`) VALUES
(12, 12, 'DTR-J1CO3QY612', 'DIRECT', 'BANK_TRANSFER', 'COD - Anjir ( a.n Masliana )', '0987654321', 30000, 0, 0, 1656039950, NULL, 'UNPAID', NULL, NULL, NULL, NULL, '2022-06-22 03:05:50', '2022-06-22 03:05:50'),
(13, 13, 'DTR-ZD5UJIEH13', 'DIRECT', 'BANK_TRANSFER', 'COD - Anjir ( a.n Masliana )', '0987654321', 15000, 0, 0, 1656040589, NULL, 'UNPAID', NULL, NULL, NULL, NULL, '2022-06-22 03:16:29', '2022-06-22 03:16:29'),
(14, 14, 'DTR-MLKDYLFI14', 'DIRECT', 'BANK_TRANSFER', 'COD - Anjir ( a.n Masliana )', '0987654321', 15000, 0, 0, 1656161513, NULL, 'UNPAID', NULL, NULL, NULL, NULL, '2022-06-23 12:51:53', '2022-06-23 12:51:53'),
(15, 15, 'DTR-ZUUOT6DS15', 'DIRECT', 'BANK_TRANSFER', 'COD - Anjir ( a.n Masliana )', '0', 15000, 0, 0, 1656238972, NULL, 'PAID', '2022-06-24 10:58:45', NULL, NULL, NULL, '2022-06-24 10:22:52', '2022-06-24 10:58:45'),
(16, 16, 'DTR-NYW5UBCD16', 'DIRECT', 'BANK_TRANSFER', 'COD - Anjir ( a.n Masliana )', '0', 15000, 0, 0, 1656469223, NULL, 'UNPAID', NULL, NULL, NULL, NULL, '2022-06-27 02:20:23', '2022-06-27 02:20:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'customer',
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`, `phone`) VALUES
(1, 'Masliana', 'nurazmi205@gmail.com', '2022-02-09 08:48:18', '$2y$10$DFb7kudq.PQtHEJuuzM.vuEzuGd/rISjRDe3zy7kxUY1cGYwI7aGa', '1Eb1LcaTUe', '2022-02-09 08:48:18', '2022-06-06 23:56:28', 'admin', '085754244518');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assets_assetable_type_assetable_id_index` (`assetable_type`,`assetable_id`);

--
-- Indeks untuk tabel `bank_accounts`
--
ALTER TABLE `bank_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `blocks`
--
ALTER TABLE `blocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blocks_post_id_foreign` (`post_id`);

--
-- Indeks untuk tabel `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `configs`
--
ALTER TABLE `configs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indeks untuk tabel `product_variants`
--
ALTER TABLE `product_variants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_variants_product_id_foreign` (`product_id`);

--
-- Indeks untuk tabel `product_variant_items`
--
ALTER TABLE `product_variant_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_variant_items_product_variant_id_foreign` (`product_variant_id`);

--
-- Indeks untuk tabel `product_variant_values`
--
ALTER TABLE `product_variant_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_variant_values_product_variant_item_id_foreign` (`product_variant_item_id`);

--
-- Indeks untuk tabel `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_product_id_foreign` (`product_id`);

--
-- Indeks untuk tabel `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_order_id_foreign` (`order_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `assets`
--
ALTER TABLE `assets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT untuk tabel `bank_accounts`
--
ALTER TABLE `bank_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `blocks`
--
ALTER TABLE `blocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `configs`
--
ALTER TABLE `configs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `product_variants`
--
ALTER TABLE `product_variants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT untuk tabel `product_variant_items`
--
ALTER TABLE `product_variant_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT untuk tabel `product_variant_values`
--
ALTER TABLE `product_variant_values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT untuk tabel `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `stores`
--
ALTER TABLE `stores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `blocks`
--
ALTER TABLE `blocks`
  ADD CONSTRAINT `blocks_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `product_variants`
--
ALTER TABLE `product_variants`
  ADD CONSTRAINT `product_variants_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `product_variant_items`
--
ALTER TABLE `product_variant_items`
  ADD CONSTRAINT `product_variant_items_product_variant_id_foreign` FOREIGN KEY (`product_variant_id`) REFERENCES `product_variants` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `product_variant_values`
--
ALTER TABLE `product_variant_values`
  ADD CONSTRAINT `product_variant_values_product_variant_item_id_foreign` FOREIGN KEY (`product_variant_item_id`) REFERENCES `product_variant_items` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
