-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Mar 2022 pada 14.53
-- Versi server: 10.1.33-MariaDB
-- Versi PHP: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `melife`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `biodata`
--

CREATE TABLE `biodata` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `no_rekam_medis` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_bpjs` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_ktp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `jenis_kelamin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_pernikahan` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_status` bigint(20) DEFAULT NULL,
  `agama` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verifikasi` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pendidikan_terakhir` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pekerjaan` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `biodata`
--

INSERT INTO `biodata` (`id`, `id_user`, `no_rekam_medis`, `no_bpjs`, `no_ktp`, `tgl_lahir`, `jenis_kelamin`, `status_pernikahan`, `id_status`, `agama`, `verifikasi`, `pendidikan_terakhir`, `pekerjaan`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 2, 'MRF2803960010', '000141996032801', '6171012803960010', '1996-03-28', 'Laki-laki', 'Belum Kawin', 2, 'Islam', 'verifikasi', 'S1', 'Swasta', 'Jl. Purnama Komplek Dinasti Indah B.15', '2019-11-10 00:26:08', '2020-03-02 01:47:54'),
(5, 8, 'GYM28031996008', NULL, NULL, '1996-03-28', 'Laki-laki', NULL, 2, 'Islam', 'verifikasi', NULL, 'Swasta', 'Jalan Purnama', '2020-03-08 08:22:03', '2020-03-08 08:22:03'),
(6, 9, 'FGX28031996009', NULL, NULL, '1996-03-28', 'Laki-laki', 'Menikah', 2, 'Islam', 'verifikasi', 'S1', 'Swasta', 'Jalan Purnama', '2020-03-08 08:30:38', '2020-03-08 08:30:38'),
(7, 10, 'AWP05111996010', NULL, NULL, '1996-11-05', 'Laki-laki', 'Menikah', 2, 'Islam', 'verifikasi', 'S1', 'Tenaga Kesahatan', 'Jalan Sulawesi', '2021-03-17 19:13:39', '2021-03-17 19:13:39'),
(8, 11, 'TAX22042002011', NULL, NULL, '2002-04-22', 'Perempuan', 'Belum Menikah', 2, 'Islam', 'verifikasi', 'S1', 'Pelajar', 'Pontianak', '2021-03-17 19:18:56', '2021-03-17 19:18:56'),
(9, 12, 'TSC13091999012', NULL, NULL, '1999-09-13', 'Perempuan', 'Belum Menikah', 2, 'Islam', 'verifikasi', 'S1', 'Pelajar', 'Pontianak', '2021-03-17 19:20:39', '2021-03-17 19:20:39'),
(10, 13, 'KAP07082001013', NULL, NULL, '2001-08-07', 'Perempuan', 'Belum Menikah', 2, 'Islam', 'verifikasi', 'S1', 'Pelajar', 'Pontianak', '2021-03-17 19:21:43', '2021-03-17 19:21:43'),
(11, 14, 'AWR05112002014', NULL, NULL, '2002-11-05', 'Laki-laki', 'Belum Menikah', 2, 'Islam', 'verifikasi', 'S1', 'Pelajar', 'Pontianak', '2021-03-17 19:22:38', '2021-03-17 19:22:38'),
(12, 15, 'NBA08072001015', NULL, NULL, '2001-07-08', 'Perempuan', 'Belum Menikah', 2, 'Islam', 'verifikasi', 'S1', 'Pelajar', 'Pontianak', '2021-03-17 19:24:33', '2021-03-17 19:24:33'),
(13, 16, 'MAS02032003016', NULL, NULL, '2003-03-02', 'Laki-laki', 'Belum Menikah', 2, 'Islam', 'verifikasi', 'S1', 'Pelajar', 'Pontianak', '2021-03-17 19:25:47', '2021-03-17 19:25:47'),
(14, 17, 'PFX23031997017', NULL, NULL, '1997-03-23', 'Laki-laki', 'Belum Menikah', 2, 'Islam', 'verifikasi', 'S1', 'Pelajar', 'Pontianak', '2021-03-17 19:26:40', '2021-03-17 19:26:40'),
(15, 18, 'ODS17102001018', NULL, NULL, '2001-10-17', 'Perempuan', 'Belum Menikah', 2, 'Kristen', 'verifikasi', 'S1', 'Pelajar', 'Pontianak', '2021-03-17 19:31:03', '2021-03-17 19:31:03'),
(16, 19, 'ANR31081999019', NULL, NULL, '1999-08-31', 'Perempuan', 'Belum Menikah', 2, 'Islam', 'verifikasi', 'S1', 'Pelajar', 'Pontianak', '2021-03-17 19:32:09', '2021-03-17 19:32:09'),
(17, 20, 'MXX23092001020', NULL, NULL, '2001-09-23', 'Laki-laki', 'Belum Menikah', 2, 'Islam', 'verifikasi', 'S1', 'Pelajar', 'Pontianak', '2021-03-17 19:33:03', '2021-03-17 19:33:03'),
(18, 21, 'HAX22072001021', NULL, NULL, '2001-07-22', 'Perempuan', 'Belum Menikah', 2, 'Islam', 'verifikasi', 'S1', 'Pelajar', 'Pontianak', '2021-03-17 19:37:49', '2021-03-17 19:37:49'),
(19, 22, 'ISX11011999022', NULL, NULL, '1999-01-11', 'Laki-laki', 'Belum Menikah', 2, 'Katolik', 'verifikasi', 'S1', 'Pelajar', 'Pontianak', '2021-03-17 19:39:43', '2021-03-17 19:39:43'),
(20, 23, 'APK04081999023', NULL, NULL, '1999-08-04', 'Perempuan', 'Belum Menikah', 2, 'Islam', 'verifikasi', 'S1', 'Pelajar', 'Pontianak', '2021-03-17 19:40:37', '2021-03-17 19:40:37'),
(21, 24, 'TAX14071999024', NULL, NULL, '1999-07-14', 'Perempuan', 'Belum Menikah', 2, 'Islam', 'verifikasi', 'S1', 'Pelajar', 'Pontianak', '2021-03-17 19:41:27', '2021-03-17 19:41:27'),
(22, 25, 'KNR29121999025', NULL, NULL, '1999-12-29', 'Perempuan', 'Belum Menikah', 2, 'Islam', 'verifikasi', 'S1', 'Pelajar', 'Pontianak', '2021-03-17 19:42:17', '2021-03-17 19:42:17'),
(23, 26, 'DFX27081995026', NULL, NULL, '1995-08-27', 'Laki-laki', 'Belum Menikah', 2, 'Islam', 'verifikasi', 'S1', 'Pelajar', 'Pontianak', '2021-03-17 19:43:13', '2021-03-17 19:43:13'),
(24, 27, 'TDP28061997027', NULL, NULL, '1997-06-28', 'Laki-laki', 'Belum Menikah', 2, 'Islam', 'verifikasi', 'S1', 'Tenaga Kesahatan', 'Pontianak', '2021-03-17 19:44:09', '2021-03-17 19:44:09'),
(25, 28, 'AMI22032001028', NULL, NULL, '2001-03-22', 'Laki-laki', 'Belum Menikah', 2, 'Islam', 'verifikasi', 'S1', 'Pelajar', 'Pontianak', '2021-03-17 19:45:10', '2021-03-17 19:45:10'),
(26, 29, 'NFF03081999029', NULL, NULL, '1999-08-03', 'Perempuan', 'Belum Menikah', 2, 'Islam', 'verifikasi', 'S1', 'Pelajar', 'Pontianak', '2021-03-17 19:46:55', '2021-03-17 19:46:55'),
(27, 30, 'AHA03111998030', NULL, NULL, '1998-11-03', 'Perempuan', 'Belum Menikah', 2, 'Islam', 'verifikasi', 'S1', 'Pelajar', 'Pontianak', '2021-03-17 19:50:26', '2021-03-17 19:50:26'),
(28, 31, 'JMX06121999031', NULL, NULL, '1999-12-06', 'Perempuan', 'Belum Menikah', 2, 'Islam', 'verifikasi', 'S1', 'Pelajar', 'Pontianak', '2021-03-17 19:51:43', '2021-03-17 19:51:43'),
(29, 32, 'MAX18121995032', NULL, NULL, '1995-12-18', 'Perempuan', 'Belum Menikah', 2, 'Islam', 'verifikasi', 'S1', 'Pegawai Non Pemerintahan', 'Jakarta', '2021-03-17 19:55:22', '2021-03-17 19:55:22'),
(30, 33, 'FXX27021997033', NULL, NULL, '1997-02-27', 'Perempuan', 'Belum Menikah', 2, 'Islam', 'verifikasi', 'S1', 'Pelajar', 'Pontianak', '2021-03-17 19:56:42', '2021-03-17 19:56:42'),
(31, 34, 'HPX08081996034', NULL, NULL, '1996-08-08', 'Laki-laki', 'Belum Menikah', 2, 'Islam', 'verifikasi', 'S1', 'Pengajar', 'Pontianak', '2021-03-17 19:57:39', '2021-03-17 19:57:39'),
(32, 35, 'NMX14081996035', NULL, NULL, '1996-08-14', 'Perempuan', 'Menikah', 2, 'Islam', 'verifikasi', 'S1', 'Tenaga Kesahatan', 'Pontianak', '2021-03-17 20:14:20', '2021-03-17 20:14:20'),
(33, 36, 'NXX04032022036', '213123', '2313', '2022-03-04', 'Perempuan', 'Belum Menikah', 2, 'Islam', 'verifikasi', 'SMA', 'Pelajar', 'Jalan', '2022-03-04 06:03:05', '2022-03-04 06:03:05');

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
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_07_18_151658_create_role_table', 1),
(9, '2019_07_18_153131_create_biodata_table', 1),
(10, '2019_07_18_153152_create_status_table', 1),
(11, '2019_08_31_063056_create_riwayat_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0d58f05287e43fd8ba8d2f5fdd36879acb86686f0518a52d161dde6848f2a3d7f0e215a693aab993', 2, 1, 'Personal Access Token', '[]', 0, '2020-03-02 01:42:09', '2020-03-02 01:42:09', '2021-03-02 08:42:09'),
('10c9ae311b23af0b442957285a3b012edb8bea3477dd3c7b331129c5a2067dc8392b0678bc93cc46', 2, 1, 'Personal Access Token', '[]', 0, '2020-02-18 01:38:11', '2020-02-18 01:38:11', '2021-02-18 08:38:11'),
('17a99e797b2e4411cbac8b9bca59d7983d0fa1e8eaebc01d18e91f58920b17404024931af274626a', 2, 1, 'Personal Access Token', '[]', 0, '2020-02-24 00:30:15', '2020-02-24 00:30:15', '2021-02-24 07:30:15'),
('1c2321ce538191be344e00a662e064c728f11fe04408d0534effa8fed102921ca2ad55731f0a668d', 2, 1, 'Personal Access Token', '[]', 0, '2019-11-11 23:53:10', '2019-11-11 23:53:10', '2020-11-12 06:53:10'),
('2faeb84c5d862f58698c88b64a040a8ad7f89f4d830c29033f0bc0b24fbc5c79eec49546ffce2976', 2, 1, 'Personal Access Token', '[]', 0, '2020-02-24 00:42:59', '2020-02-24 00:42:59', '2021-02-24 07:42:59'),
('303db50cf01fee2b1974c1e04f7dd91c6d13de6a54f4f4f2c66125c3f44b5680d549323231daca86', 2, 1, 'Personal Access Token', '[]', 0, '2020-02-24 00:33:25', '2020-02-24 00:33:25', '2021-02-24 07:33:25'),
('3cd87caddc4a486ac9e7c5ddf02dc38b7039995b468cb40c88accbf1f7a47a6d2b12de0d25f7b0d3', 2, 1, 'Personal Access Token', '[]', 0, '2020-02-24 00:24:31', '2020-02-24 00:24:31', '2021-02-24 07:24:31'),
('40bd3613bf51bb88b0d0ff0f81f1e8305be24bc7a1630574e1e9747bb7936c23ff0f5c2cbbf118fb', 2, 1, 'Personal Access Token', '[]', 0, '2020-02-24 00:45:13', '2020-02-24 00:45:13', '2021-02-24 07:45:13'),
('475847b3e0db91010247f8990d25df488e9155c0181222549863b620f4a5700de880fd851dc6f45b', 2, 1, 'Personal Access Token', '[]', 0, '2019-11-10 01:06:16', '2019-11-10 01:06:16', '2020-11-10 08:06:16'),
('64d2fa80bb1b9af0c96ec92c32a4ad9defed9a90269f5ad9e323a3ab59b44c04cabd67013d11ee0e', 2, 1, 'Personal Access Token', '[]', 0, '2019-11-12 00:12:20', '2019-11-12 00:12:20', '2020-11-12 07:12:20'),
('6caa2329d8ee055587ca2156e1ff2438ef35696a29951ec3b81f289cc695f624d8e5509480085e4d', 2, 1, 'Personal Access Token', '[]', 0, '2020-02-24 00:42:58', '2020-02-24 00:42:58', '2021-02-24 07:42:58'),
('73e84d6b7c8f78508ba0f4ee2ab2cf6841a31fd1ba83ef1020b83e44efed8ac6ec46f24a8de81905', 2, 1, 'Personal Access Token', '[]', 0, '2020-02-29 03:38:00', '2020-02-29 03:38:00', '2021-03-01 10:38:00'),
('929296ff3064d51bc2d78fc44c624b83de27031a9d5d53668d4cfb51f53bc56df51981f04e2e4ad8', 2, 1, 'Personal Access Token', '[]', 0, '2019-11-10 01:05:51', '2019-11-10 01:05:51', '2020-11-10 08:05:51'),
('95c9f0e4207292997f66f09c64250a45fa4202cd076894a78315136389d9af235f0caf9abbb1188d', 2, 1, 'Personal Access Token', '[]', 0, '2020-02-18 01:10:35', '2020-02-18 01:10:35', '2021-02-18 08:10:35'),
('95dcd2a4c3fe1fb03da8fff20f1ea3ed753e2dea2d1d7a21b71d3ebda52f0dbf49e5d03613d2745f', 2, 1, 'Personal Access Token', '[]', 0, '2020-03-02 01:41:47', '2020-03-02 01:41:47', '2021-03-02 08:41:47'),
('a9263a1f286789d4410d0e7c191d7b425eb732ba5e80157f42434b69f7a09e41c655d58ef9c6bc95', 2, 1, 'Personal Access Token', '[]', 0, '2020-02-18 01:07:41', '2020-02-18 01:07:41', '2021-02-18 08:07:41'),
('b521ac035b538b5494282cf7aeb2246171b8fd52bf62c3c9866953e9c9586907718577ed3d37f48c', 2, 1, 'Personal Access Token', '[]', 0, '2020-02-24 00:46:26', '2020-02-24 00:46:26', '2021-02-24 07:46:26'),
('b98071904dfc34b7a04c24fdb8ff3b1961066567b0bee35c8e86af062aad43527fb359205bc73dab', 2, 1, 'Personal Access Token', '[]', 0, '2020-02-29 03:30:33', '2020-02-29 03:30:33', '2021-03-01 10:30:33'),
('d5800da680c2fc941e34ee2e0ec0c8d91133b3f9b640377afc55fde75c3f7112908b62ee2401c8b3', 2, 1, 'Personal Access Token', '[]', 0, '2020-02-24 00:44:01', '2020-02-24 00:44:01', '2021-02-24 07:44:01'),
('d78b7b0523009499d20cc49f34e22cec8ad382133a0982a3785979f2208a7e2578ce6183316cc8ca', 2, 1, 'Personal Access Token', '[]', 0, '2020-02-28 23:36:55', '2020-02-28 23:36:55', '2021-03-01 06:36:55'),
('e2db0da0ee115d1674e2a10d03659d79b1c5f6a2f144b1bfe6570c7cbe21ae5706246f7d8e5a0b3c', 2, 1, 'Personal Access Token', '[]', 0, '2020-02-18 00:53:14', '2020-02-18 00:53:14', '2021-02-18 07:53:14'),
('f50b0e5fc609beee5aa2303e486a21f0fdf77e19803ff2af0fa3574405d59b54051d57e35233a792', 2, 1, 'Personal Access Token', '[]', 0, '2020-02-24 00:32:07', '2020-02-24 00:32:07', '2021-02-24 07:32:07'),
('fefa6a05fa410f3e9ff83ee2498ac1c367b7715aba58e98cbe32e93def0efacd6f4b33e6a93dde49', 2, 1, 'Personal Access Token', '[]', 0, '2020-02-29 03:32:23', '2020-02-29 03:32:23', '2021-03-01 10:32:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'VHQOi0HZqd2ueougrP7LcYnN4DIJDNpPpjpCeiTB', 'http://localhost', 1, 0, 0, '2019-11-09 17:00:00', '2019-11-09 17:00:00'),
(2, NULL, 'Laravel Password Grant Client', 'nKfrjoevcUuNfXUQ1jqoe92qdUv21hTDxpGbejqF', 'http://localhost', 0, 1, 0, '2019-11-09 17:00:00', '2019-11-09 17:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2019-11-09 17:00:00', '2019-11-09 17:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Struktur dari tabel `riwayat`
--

CREATE TABLE `riwayat` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_biodata` bigint(20) UNSIGNED NOT NULL,
  `tanggal` datetime DEFAULT NULL,
  `berat_badan` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tinggi_badan` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tekanan_darah` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `denyut_nadi` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pernapasan` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `saturasi_oksigen` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hemoglobin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `glukosa` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `asam_urat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kolesterol` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `leukosit` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trombosit` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hematokrit` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eritrosit` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mcv` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mch` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mchc` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trigliserida` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ldl` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hdl` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hba1c` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ureum` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kreatinin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `suhu_tubuh` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `komentar` longtext COLLATE utf8mb4_unicode_ci,
  `keluhan` longtext COLLATE utf8mb4_unicode_ci,
  `dokter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `riwayat`
--

INSERT INTO `riwayat` (`id`, `id_biodata`, `tanggal`, `berat_badan`, `tinggi_badan`, `tekanan_darah`, `denyut_nadi`, `pernapasan`, `saturasi_oksigen`, `hemoglobin`, `glukosa`, `asam_urat`, `kolesterol`, `leukosit`, `trombosit`, `hematokrit`, `eritrosit`, `mcv`, `mch`, `mchc`, `trigliserida`, `ldl`, `hdl`, `hba1c`, `ureum`, `kreatinin`, `suhu_tubuh`, `komentar`, `keluhan`, `dokter`, `created_at`, `updated_at`) VALUES
(1, 1, '2019-11-10 00:00:00', '60', '160', '120/80', '80', '20', '98', '15', '140', '6', '200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '37', 'Menjaga Pola Makan', 'Sakit Kepala', 'Dr. Agil Wahyu Pangestu', '2019-11-10 00:30:49', '2019-11-10 00:30:49'),
(2, 1, '2019-11-11 00:00:00', '60', '160', '110/90', '80', '25', '97', '15', '145', '7', '210', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '38', 'Menjaga Pola Tidur', 'Pusing,Susah Pencernaan', 'Dr. Agil Wahyu Pangestu', '2019-11-10 00:32:06', '2019-11-10 00:32:06'),
(3, 1, '2019-11-12 00:00:00', '56', '160', '110/80', '75', '25', '97', '15', '140', '8', '200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '35', 'Jaga Pola Tidur', 'Pusing,Susah Tidur', 'Dr. Agil Wahyu Pangestu', '2019-11-10 07:01:29', '2019-11-10 07:01:29'),
(4, 1, '2019-11-13 00:00:00', '60', '160', '120/80', '82', '21', '97', '17', '140', '7', '200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '35', 'Jaga Pola Makan', 'Pusing, Pencernaan Tidak Lancar', 'Dr. Agil Wahyu Pangestu', '2019-11-10 07:03:44', '2019-11-10 07:03:44'),
(5, 1, '2019-11-14 00:00:00', '60', '160', '120/80', '70', '20', '96', '15', '142', '6', '205', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '35', 'Jaga Pola Makan', 'Pencernaan Kurang lancar, Cepat Ngantuk', 'Dr. Agil Wahyu Pangestu', '2019-11-10 07:05:19', '2019-11-10 07:05:19'),
(6, 1, '2020-02-20 00:00:00', '868', '6', '6', '6', '6', '6', '6', '6', '6', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6', 'rfrvfr', 'erefe', 'frvv', '2020-02-29 03:37:31', '2020-02-29 03:37:31'),
(7, 33, '2022-03-04 00:00:00', '20(kg)', '20(cm)', '20(mmHg)', '20(x/menit)', '20(x/menit)', '20(oC)', '20(%)', '20(mg/dL)', '20(mg/dL)', '20(mg/dL)', '20(103/μl)', '20(103/μl)', '20(%)', '20(juta/μl)', '20(fl)', '20(pg)', '20(g/dL)', '20(mg/dL)', '20(mg/dL)', '20(mg/dL)', '20(%)', '20(mg/dL)', '20(mg/dL)', '20(g/dL)', 'aaaaaaaaaa', 'asdasdas', '20', '2022-03-04 06:11:13', '2022-03-04 06:11:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role`
--

CREATE TABLE `role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rolename` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `role`
--

INSERT INTO `role` (`id`, `rolename`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'Super Admin', '2019-11-09 17:00:00', '2019-11-09 17:00:00'),
(2, 'Admin Klinik', 'Admin Klinik', '2019-11-09 17:00:00', '2019-11-09 17:00:00'),
(3, 'Pasien', 'Pasien', '2019-11-09 17:00:00', '2019-11-09 17:00:00'),
(4, 'Dokter/Lab', 'Dokter/Lab', '2022-03-03 17:00:00', '2022-03-03 17:00:00'),
(5, 'Farmasi', 'Farmasi', '2022-03-03 17:00:00', '2022-03-03 17:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `status`
--

CREATE TABLE `status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `status`
--

INSERT INTO `status` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Comdev', '2019-11-09 17:00:00', '2019-11-09 17:00:00'),
(2, 'Umum', '2019-11-09 17:00:00', '2019-11-09 17:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_role` bigint(20) UNSIGNED NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `verifikasi` tinyint(4) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `nama`, `email`, `no_hp`, `id_role`, `password`, `verifikasi`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Agil Wahyu Pangestu', 'agilwahyu@gmail.com', '08111111111', 1, '$2y$10$vqSEsF/HA5YW8iSv8oq//.DE93nqFxUahncQzfKCA/WSejjHHIKfm', 0, NULL, '2019-11-10 00:20:15', '2019-11-10 00:20:15'),
(2, 'Muhammad Rizki Firdaus', 'rizky56789@gmail.com', '089656147033', 3, '$2y$10$exnyXyEIdfdu1dKPYYH.rewE3XpBKJgPqR5gahztCiUPtOieYT4f2', 0, NULL, '2019-11-10 00:26:08', '2019-11-10 00:26:08'),
(3, 'anyong@gmail.com', 'rizky@gmail.com', '0896969696', 3, '$2y$10$Zo0ViQbWoJ8zgLIDo0OzU.nty5L3rwZjyVuTS5SIWglXQtN1H/mCK', 0, NULL, '2020-02-29 03:35:45', '2020-02-29 03:35:45'),
(8, 'Garry Yonathan Manurung', 'garry@gmail.com', '089693831555', 3, '$2y$10$pBo9VTsiIanV6KjWsYi29OyfYvQQHe/g20C4EzbYhEYTdc11gvfiG', 0, NULL, '2020-03-08 08:22:03', '2020-03-08 08:22:03'),
(9, 'Firly Gilalom', 'firly@gmail.com', '081111111111', 3, '$2y$10$6nN3/vWvBSIBR3XuQLpP0uN8IfeZalyJQlfcrOY6a5crdni8tHBvS', 0, NULL, '2020-03-08 08:30:38', '2020-03-08 08:30:38'),
(10, 'Agil Wahyu Pangestuputra', 'agilwahyup@gmail.com', '08115774567', 3, '$2y$10$FQdLGRb7O9RWNSxMTWPLF./JdTxIPd5gqVkKarUcph6WPjK/BAsJe', 0, NULL, '2021-03-17 19:13:39', '2021-03-17 19:13:39'),
(11, 'Tirtalia Annisa', 'tirtaliaa22@gmail.com', '089519193204', 3, '$2y$10$SE5VjtqnHMm4stlJlOx0QuBLhZZ7GJpYqrzz0vK10rmvBJOEWakFe', 0, NULL, '2021-03-17 19:18:56', '2021-03-17 19:18:56'),
(12, 'Tamara Septia Chairunisa', 'tamara.septia123@gmail.com', '089612335557', 3, '$2y$10$2Drakwy2F2zCGV9U1Ct9EuBqgKK4X32wNTma/uPkB4/wVJtsN8ZEW', 0, NULL, '2021-03-17 19:20:39', '2021-03-17 19:20:39'),
(13, 'Khairunnisa Azizah Patria', 'khairunnisaazizahp@gmail.com', '085218086351', 3, '$2y$10$4BDXo7yDCxGT4T/Tng2sgumFijVW1L0bY0eRQwsbnVAkUVZUuqy.2', 0, NULL, '2021-03-17 19:21:43', '2021-03-17 19:21:43'),
(14, 'Amru Wali Ramadhanuarta', 'amruwali54@gmail.com', '082157809181', 3, '$2y$10$E7XHWpngTcYg0TP8c3NTZeGb4nwhrgfaw1e6jtM4CyYEIuXyBErWG', 0, NULL, '2021-03-17 19:22:38', '2021-03-17 19:22:38'),
(15, 'Nabilla Bunga Andari', 'nbllbunga@gmail.com', '082113311579', 3, '$2y$10$jygRHD4qzGC.hv69OYZ.SONvQUNZo.aUawmLHoNC1lqnwjKiXG1hG', 0, NULL, '2021-03-17 19:24:33', '2021-03-17 19:24:33'),
(16, 'Muhammad Abdi Setyo Yudha', 'muhammadabdisetyoyudha@gmail.com', '08152221975', 3, '$2y$10$Iqnud.cbnbkwIC8V5mkxDO5m232dJMan495KCrs1UHPcVlPCHJY5W', 0, NULL, '2021-03-17 19:25:47', '2021-03-17 19:25:47'),
(17, 'Prihan Fakri', 'Prihanaveiro@gmail.com', '085753878475', 3, '$2y$10$FcdTcsyu5OvCpbdlcHhN/OfbOouEgm1w8fFmM/SiMaLhFh1kFbzaO', 0, NULL, '2021-03-17 19:26:40', '2021-03-17 19:26:40'),
(18, 'Orlana Deviana Siambaton Munthe', 'orlana.deviana01@gmail.com', '089627433194', 3, '$2y$10$8nS/2/3kyWwspUVoGC2CM.pWa6M1RE7rswZIn6z4d0Gpt66CL7SoG', 0, NULL, '2021-03-17 19:31:03', '2021-03-17 19:31:03'),
(19, 'Adni Nur Rahmadhanty', 'Adninrahmadhanty@gmail.com', '081287645775', 3, '$2y$10$sUyv/Gg04V.4VK0YT4ZxXO1xQ6fv7dEqngh9/HTQKBItSfSYNtxTe', 0, NULL, '2021-03-17 19:32:09', '2021-03-17 19:32:09'),
(20, 'Makhruzal', 'uzalmaximus08@gmail.com', '085348983349', 3, '$2y$10$6.8pbasVr/XODZeOvqddg.GjJ1zbxvWAzDIxjm1JmAb/tu7Uecpwq', 0, NULL, '2021-03-17 19:33:03', '2021-03-17 19:33:03'),
(21, 'Hannan Anugrah', 'hannananugrah22@gmail.com', '081253249955', 3, '$2y$10$PEJJoovGIwPPagOygIhyg.VtUTI8ES8Ef7apgbIXS0xjM8FhCKtRG', 0, NULL, '2021-03-17 19:37:49', '2021-03-17 19:37:49'),
(22, 'Irwan Susilo', 'sherlock.irwan@gmail.com', '081352636249', 3, '$2y$10$zeW1./DctCi4onTShMxGRebwn9LkPgFoqyj/p4.iL95dDCZRBDZlu', 0, NULL, '2021-03-17 19:39:43', '2021-03-17 19:39:43'),
(23, 'Aldisa Prameswari Kakondo', 'aldisaprameswari@gmail.com', '081545340549', 3, '$2y$10$Pc9IdGkftL9kHrpaxCd1JOadkMADxMD7bk83lWWhbnZ6hp3Wy7Z2i', 0, NULL, '2021-03-17 19:40:37', '2021-03-17 19:40:37'),
(24, 'Titania Auril', 'auriltitania99@gmail.com', '085787135303', 3, '$2y$10$WwBkgFbv4nz2XsiVyMBWr.SrGGksgGumL0T2AXyRxtV1rm5FVFGxe', 0, NULL, '2021-03-17 19:41:27', '2021-03-17 19:41:27'),
(25, 'Khofifah Nur Rahmah', 'khofifahrahmah16@gmail.com', '089693742227', 3, '$2y$10$I2DdDA1UEHb7BJHkV74dmegA04anVonrID88nkDsfqxorYWsgX/Fa', 0, NULL, '2021-03-17 19:42:17', '2021-03-17 19:42:17'),
(26, 'Dedi Firmansyah', 'akhidedi7@gmail.com', '081295198216', 3, '$2y$10$pnpCUzqOE7EvunqR6YsQw.ddmFpnSm74wNR.B/Qzt5I8mKN5.0TDq', 0, NULL, '2021-03-17 19:43:13', '2021-03-17 19:43:13'),
(27, 'Tommy Dwi Prakarsa', 'tommyprakarsa28@gmai.com', '0895702480690', 3, '$2y$10$xMo8oApvEAP/X5p5gi1Pmexzu.DfNTMxD0KgUX7SpHYeLgpPNePWi', 0, NULL, '2021-03-17 19:44:09', '2021-03-17 19:44:09'),
(28, 'Abim Mayu Indra Ardiansyah', 'sakilavino@gmail.com', '089518116008', 3, '$2y$10$rSUffpw09/5cpvSglkBlPewVr8as01uBXkxgf7DXowvKKYCfm0krW', 0, NULL, '2021-03-17 19:45:10', '2021-03-17 19:45:10'),
(29, 'Nurul Fatwa Fathonah', 'Fathonah360@gmail.com', '082149601944', 3, '$2y$10$0.nXYmgHVvW.wiB8TJyjU.M2k3Kh/uBxtfGoufaE4oeEg35qlYcpq', 0, NULL, '2021-03-17 19:46:55', '2021-03-17 19:46:55'),
(30, 'Ardziani Hayyu Abdilla', 'ardzianihayyuabdilla@student.untan.ac.id', '089661242772', 3, '$2y$10$.ru2yq41heP0F9Wq5aVIJuWM.YKT/ALI1Ey8XXWfT3uWFlrLtS4d.', 0, NULL, '2021-03-17 19:50:26', '2021-03-17 19:50:26'),
(31, 'Javier Mellynia', 'jmellynia@gmail.com', '085802575362', 3, '$2y$10$raL2ymaMFU5fpp2g6ejOrOvwzK54FtXOgKKUeKAmRwQc5klk6rt5y', 0, NULL, '2021-03-17 19:51:43', '2021-03-17 19:51:43'),
(32, 'Maya Andzela', 'mayaa@xlfutureleader.com', '08176420628', 3, '$2y$10$f76Q1d0HzmMo/Rnx6UwYbuJC2TWFC6JqPgAKdZjtx7wc/0KrMCyoO', 0, NULL, '2021-03-17 19:55:22', '2021-03-17 19:55:22'),
(33, 'Fithriyyah', 'Fithriyyahiskandar@gmail.com', '081254619728', 3, '$2y$10$K4vTb26S8OkHPCEIVhAjI./ylEvMYtvL6JqWpNwPHvTN5kOGrl37y', 0, NULL, '2021-03-17 19:56:42', '2021-03-17 19:56:42'),
(34, 'Hervian Putra', 'mrhervianpratama@gmail.com', '081256699886', 3, '$2y$10$4.bSYoySJT1yZOMkCnNlAeXcCvU4Lzlh5c6F8WT7itqt0BSlvVx4m', 0, NULL, '2021-03-17 19:57:39', '2021-03-17 19:57:39'),
(35, 'Nabila Mauliya', 'dr.nabilamauliya@gmail.com', '082111350879', 3, '$2y$10$64JRNS9RTBc9Dc6h4Z89mePr9zQye1novsxBhXyqdHXaPOE3kKOmi', 0, NULL, '2021-03-17 20:14:20', '2021-03-17 20:14:20'),
(36, 'Natasha', 'natasha@gmail.com', '0', 3, '$2y$10$/3QsNHXmke11W7ypLDu5EuyMwOiGmTv8bNkbc9nIuMbASrIj4BGBq', 0, NULL, '2022-03-04 06:03:05', '2022-03-04 06:03:05');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `biodata`
--
ALTER TABLE `biodata`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indeks untuk tabel `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indeks untuk tabel `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indeks untuk tabel `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `riwayat`
--
ALTER TABLE `riwayat`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_no_hp_unique` (`no_hp`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `biodata`
--
ALTER TABLE `biodata`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `riwayat`
--
ALTER TABLE `riwayat`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `role`
--
ALTER TABLE `role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `status`
--
ALTER TABLE `status`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
