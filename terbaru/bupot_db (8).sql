-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 31 Bulan Mei 2023 pada 06.40
-- Versi server: 10.4.19-MariaDB
-- Versi PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bupot_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dashboard`
--

CREATE TABLE `dashboard` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `dokumen_pphnon`
--

CREATE TABLE `dokumen_pphnon` (
  `pajak_penghasilan_id` bigint(20) UNSIGNED DEFAULT NULL,
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_dokumen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_dokumen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_dokumen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `dokumen_pphnon`
--

INSERT INTO `dokumen_pphnon` (`pajak_penghasilan_id`, `id`, `nama_dokumen`, `no_dokumen`, `tgl_dokumen`, `created_at`, `updated_at`) VALUES
(NULL, 1, 'Akta Perikatan', '90', '28-02-2023', '2023-02-28 05:59:30', '2023-02-28 05:59:30'),
(NULL, 2, 'Faktur Pajak', '12121', '28-02-2023', '2023-02-28 07:09:22', '2023-02-28 07:09:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dokumen_pphpasal`
--

CREATE TABLE `dokumen_pphpasal` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pajak_penghasilan_id` bigint(20) UNSIGNED DEFAULT NULL,
  `nama_dokumen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_dokumen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_dokumen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `dokumen_pphpasal`
--

INSERT INTO `dokumen_pphpasal` (`id`, `pajak_penghasilan_id`, `nama_dokumen`, `no_dokumen`, `tgl_dokumen`, `created_at`, `updated_at`) VALUES
(3, NULL, 'Bukti Pembayaran', '12121', '23-02-2023', '2023-02-23 08:20:48', '2023-02-23 08:20:48'),
(10, 23, 'Bukti Pembayaran', '1', '16-05-2023', '2023-05-16 13:33:40', '2023-05-16 13:33:40'),
(11, 25, 'Bukti Pembayaran', '90', '18-05-2023', '2023-05-18 14:46:48', '2023-05-18 14:46:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dopp`
--

CREATE TABLE `dopp` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dopp_point_id` bigint(20) UNSIGNED DEFAULT NULL,
  `kode_objek_pajak` varchar(255) DEFAULT NULL,
  `jumlah_dpp` varchar(255) DEFAULT NULL,
  `jumlah_pph` varchar(255) DEFAULT NULL,
  `pajak_penghasilan_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `dopp`
--

INSERT INTO `dopp` (`id`, `dopp_point_id`, `kode_objek_pajak`, `jumlah_dpp`, `jumlah_pph`, `pajak_penghasilan_id`) VALUES
(47, 1, '22-101-01', NULL, NULL, 15),
(48, 2, '22-405-01', NULL, NULL, 15),
(49, 3, '22-405-02', '3', '4', 15),
(50, 4, '27-100-07', NULL, NULL, 15),
(51, 5, '27-102-03', NULL, NULL, 15),
(52, 6, '28-401-01', NULL, NULL, 15),
(53, 7, '28-401-04', NULL, NULL, 15),
(54, 8, '28-401-05', NULL, NULL, 15),
(55, 9, '28-401-06', NULL, NULL, 15),
(56, 10, '28-404-01', NULL, NULL, 15),
(57, 11, '28-404-02', NULL, NULL, 15),
(58, 12, '28-404-03', NULL, NULL, 15),
(59, 13, '28-404-04', NULL, NULL, 15),
(60, 14, '28-404-05', NULL, NULL, 15),
(61, 15, '28-404-06', NULL, NULL, 15),
(62, 16, '28-404-07', NULL, NULL, 15),
(63, 17, '28-404-08', NULL, NULL, 15),
(64, 18, '28-102-09', NULL, NULL, 15),
(65, 19, '28-404-10', NULL, NULL, 15),
(66, 20, '28-404-11', NULL, NULL, 15),
(67, 21, '28-406-01', NULL, NULL, 15),
(68, 22, '28-407-01', NULL, NULL, 15),
(69, 23, '28 -408-01', NULL, NULL, 15),
(70, 1, '22-101-01', NULL, NULL, 15),
(71, 2, '22-405-01', NULL, NULL, 15),
(72, 3, '22-405-02', NULL, NULL, 15),
(73, 4, '27-100-07', NULL, NULL, 15),
(74, 5, '27-102-03', NULL, NULL, 15),
(75, 6, '28-401-01', NULL, NULL, 15),
(76, 7, '28-401-04', NULL, NULL, 15),
(77, 8, '28-401-05', NULL, NULL, 15),
(78, 9, '28-401-06', NULL, NULL, 15),
(79, 10, '28-404-01', NULL, NULL, 15),
(80, 11, '28-404-02', '35.000', '50.000', 15),
(81, 12, '28-404-03', NULL, NULL, 15),
(82, 13, '28-404-04', NULL, NULL, 15),
(83, 14, '28-404-05', NULL, NULL, 15),
(84, 15, '28-404-06', NULL, NULL, 15),
(85, 16, '28-404-07', NULL, NULL, 15),
(86, 17, '28-404-08', NULL, NULL, 15),
(87, 18, '28-102-09', NULL, NULL, 15),
(88, 19, '28-404-10', NULL, NULL, 15),
(89, 20, '28-404-11', NULL, NULL, 15),
(90, 21, '28-406-01', NULL, NULL, 15),
(91, 22, '28-407-01', NULL, NULL, 15),
(92, 23, '28 -408-01', NULL, NULL, 15);

-- --------------------------------------------------------

--
-- Struktur dari tabel `dopp_points`
--

CREATE TABLE `dopp_points` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uraian` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `dopp_points`
--

INSERT INTO `dopp_points` (`id`, `uraian`) VALUES
(1, '22-101-01 - Penghasilan Sehubungan dengan Transaksi Penjualan Barang, Penyerahan Jasa, dan/atau Persewaan serta Penghasilan Lain Sehubungan dengan Penggunaan Harta yang Dilakukan Melalui Pihak Lain dalam Sistem Informasi Pengadaan'),
(2, '22-405-01 - Penghasilan Sehubungan dengan Aset Kripto yang dipungut oleh Penyelenggara Perdagangan Melalui Sistem Elektronik yang Merupakan Pedagang Fisik Aset Kripto'),
(3, '22-405-02 - Penghasilan Sehubungan dengan Aset Kripto yang dipungut oleh Penyelenggara Perdagangan Melalui Sistem Elektronik yang Bukan Merupakan Pedagang Fisik Aset Kripto'),
(4, '27-100-07 - Penghasilan dari Penjualan/Pengalihan Saham (PPh Pasal 26)'),
(5, '27-102-03 - Bunga Obiligasi (PPh Pasal 26)'),
(6, '28-401-01 - Bunga Obligasi, Surat Utang Negara, atau Obligasi Daerah yang Diterima Wajib Pajak Dalam Negeri dan Bentuk Usaha Tetap.'),
(7, '28-401-04 - Diskonto Surat Perbendaharaan Negara yang diterima Wajib Pajak Dalam Negeri dan Bentuk Usaha Tetap'),
(8, '28-401-05 - Diskonto Surat Perbendaharaan Negara yang Diterima Wajib Pajak Penduduk/Berkedudukan di Luar Negeri'),
(9, '28-401-06 - Bunga Obligasi yang Diterima Wajib Pajak Dalam Negeri dan Bentuk Usaha Tetap'),
(10, '28-404-01 - Bunga Tabungan dan Bunga Diskonto yang Ditempatkan di Dalam Negeri yang Dananya Bersumber Selain dari Devisa Hasil Ekspor (DHE)'),
(11, '28-404-02 - Bunga Deposito yang Ditempatkan di Dalam Negeri (mata uang IDR bersumber dari DHE tenor 1 bulan)'),
(12, '28-404-03 - Bunga Deposito yang Ditempatkan di Dalam Negeri (mata uang IDR bersumber dari DHE tenor 3 bulan)'),
(13, '28-404-04 - Bunga Deposito yang Ditempatkan di Dalam Negeri (mata uang IDR bersumber dari DHE tenor 6 bulan atau lebih)'),
(14, '28-404-05 - Bunga Deposito yang Ditempatkan di Dalam Negeri (mata uang USD bersumber dari DHE tenor 1 bulan)'),
(15, '28-404-06 - Bunga Deposito yang Ditempatkan di Dalam Negeri (mata uang USD bersumber dari DHE tenor 3 bulan)'),
(16, '28-404-07 - Bunga Deposito yang Ditempatkan di Dalam Negeri (mata uang USD bersumber dari DHE tenor 6 bulan)'),
(17, '28-404-08 - Bunga Deposito yang Ditempatkan di Dalam Negeri (mata uang USD bersumber dari DHE tenor lebih 6 bulan)'),
(18, '28-102-09 - Bunga Deposito/Tabungan yang Ditempatkan di Luar Negeri Melalui Bank yang Didirikan atau Bertempat Kedudukan di Indonesia atau Cabang Bank Luar Negeri di Indonesia'),
(19, '28-404-10 - Diskonto Sertifikat Bank Indonesia'),
(20, '28-404-11 - Jasa Giro'),
(21, '28-406-01 - Transaksi Penjualan Saham di Bursa Efek (Bukan Saham Pendiri)'),
(22, '28-407-01 - Transaksi Penjualan Saham di Bursa Efek (Saham Pendiri)'),
(23, '28-408-01 - Transaksi Penjualan Saham Milik Perusahaan Modal Ventura Tidak di Bursa Efek');

-- --------------------------------------------------------

--
-- Struktur dari tabel `doss`
--

CREATE TABLE `doss` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `doss_point_id` bigint(20) UNSIGNED DEFAULT NULL,
  `kode_objek_pajak` varchar(255) DEFAULT NULL,
  `jumlah_dpp` varchar(255) DEFAULT NULL,
  `jumlah_pph` varchar(255) DEFAULT NULL,
  `pajak_penghasilan_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `doss`
--

INSERT INTO `doss` (`id`, `doss_point_id`, `kode_objek_pajak`, `jumlah_dpp`, `jumlah_pph`, `pajak_penghasilan_id`) VALUES
(11, 1, NULL, '1', NULL, 15),
(12, 2, NULL, NULL, NULL, 15),
(13, 3, NULL, NULL, '4', 15),
(14, 4, NULL, NULL, NULL, 15),
(15, 5, NULL, NULL, NULL, 15),
(16, 1, NULL, NULL, NULL, 15),
(17, 2, NULL, NULL, NULL, 15),
(18, 3, NULL, NULL, NULL, 15),
(19, 4, NULL, NULL, NULL, 15),
(20, 5, NULL, NULL, NULL, 15);

-- --------------------------------------------------------

--
-- Struktur dari tabel `doss_points`
--

CREATE TABLE `doss_points` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uraian` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `doss_points`
--

INSERT INTO `doss_points` (`id`, `uraian`) VALUES
(1, 'Penghasilan dari Indonesia'),
(2, 'Penghasilan dari Luar Indonesia'),
(3, 'PPh pasal 24 yang dapat diperhitungkan'),
(4, 'PPh pasal yang dipotong pihak lain'),
(5, 'PPh yang disetor sendiri');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `import_data`
--

CREATE TABLE `import_data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `nama_file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('ya','tidak') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ya',
  `ket_up` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pajak_penghasilan_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `import_data`
--

INSERT INTO `import_data` (`id`, `user_id`, `nama_file`, `status`, `ket_up`, `pajak_penghasilan_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'FORMAT_UPLOAD_EBUPOT.xls', 'ya', 'berhasil', 1, '2023-02-15 06:41:23', '2023-02-15 06:41:23'),
(6, 1, 'FORMAT_UPLOAD_EBUPOT.xls', 'ya', 'berhasil', 27, '2023-05-19 02:57:22', '2023-05-19 02:57:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `import_data_details`
--

CREATE TABLE `import_data_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `import_data_id` bigint(20) UNSIGNED NOT NULL,
  `tgl_pemotongan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `penerima_penghasilan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `npwp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nik` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_penerima` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qq` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_hp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kode_objek_pajak` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `penandatangan_bp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `penandatangan_menggunakan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `npwp_penandatangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nik_penandatangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `namapenandatangan_sesuai_nik` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `penghasilan_bruto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fasilitas` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_skb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_aturandtp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_suketpp23` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fasilitaspph_berfaspph_lainnya` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fasilitaspph_lainnya` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tarifpph_berfaspph_lainnya` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lb_diproses` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `import_data_details`
--

INSERT INTO `import_data_details` (`id`, `import_data_id`, `tgl_pemotongan`, `penerima_penghasilan`, `npwp`, `nik`, `nama_penerima`, `qq`, `no_hp`, `kode_objek_pajak`, `penandatangan_bp`, `penandatangan_menggunakan`, `npwp_penandatangan`, `nik_penandatangan`, `namapenandatangan_sesuai_nik`, `penghasilan_bruto`, `fasilitas`, `no_skb`, `no_aturandtp`, `no_suketpp23`, `fasilitaspph_berfaspph_lainnya`, `fasilitaspph_lainnya`, `tarifpph_berfaspph_lainnya`, `lb_diproses`, `created_at`, `updated_at`) VALUES
(5, 6, '03/12/2021', 'NPWP', '123456789416000', '', 'DIAN AYU ', 'HANI', '', '22-100-06', 'Pengurus', 'NPWP', '012345678042000', '', '', '250000000', 'N', '', '', '', NULL, '', '', 'Pemotong', '2023-05-19 02:57:41', '2023-05-19 02:57:41'),
(6, 6, '04/12/2021', 'NPWP', '098765432216000', '', 'AHMAD AJA', '', '', '24-100-02', 'Pengurus', 'NPWP', '012345678042000', '', '', '30000000', 'N', '', '', '', NULL, '', '', 'Pemotong', '2023-05-19 02:57:41', '2023-05-19 02:57:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2021_01_30_121643_create_pengaturans_table', 1),
(11, '2021_02_13_140541_create_pajak_penghasilans_table', 1),
(12, '2022_09_22_072733_create_dashboard_table', 1),
(13, '2022_10_12_100537_create_pphsendiri_table', 1),
(14, '2022_10_13_054912_create_pphpasal_table', 1),
(15, '2022_12_08_180900_create_dokumen_pphpasal_table', 1),
(16, '2022_12_16_200611_create_pph_nonresiden_table', 1),
(17, '2022_12_16_202924_create_objek_pajak_table', 1),
(18, '2022_12_23_161411_create_dokumen_pphnon_table', 1),
(19, '2022_12_23_195446_create_sptmasas_table', 1),
(20, '2022_12_29_205602_create_rekam_spt_table', 1),
(21, '2023_01_06_105514_create_pajak_penghasilan_dipotong_table', 1),
(22, '2023_01_26_193425_create_import_data_table', 1),
(23, '2023_02_03_163114_create_import_data_details_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Struktur dari tabel `objek_pajak`
--

CREATE TABLE `objek_pajak` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_pajak` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_pajak` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `persen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `netto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jenis` enum('non_residen','pasal') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `objek_pajak`
--

INSERT INTO `objek_pajak` (`id`, `kode_pajak`, `nama_pajak`, `persen`, `netto`, `jenis`, `created_at`, `updated_at`) VALUES
(1, '22-100-07', 'Penjualan Hasil Produksi Kepada Distributor Di Dalam Negeri Oleh Badan Usaha/ Industri Tertentu (Industri Semen)\r\n', '0.0025', NULL, 'pasal', NULL, NULL),
(2, '22-100-08', 'Penjualan Hasil Produksi kepada Distributor Didalam Negeri Oleh Badan Usaha/ Industri Tertentu (Industri baja)', '0.003', NULL, 'pasal', NULL, NULL),
(3, '22-100-09', 'Penjualan Hasil Produksi kepada Distributor Didalam Negeri Oleh Badan Usaha/ Industri Tertentu (Industri Otomotif)', '0.003', NULL, 'pasal', NULL, NULL),
(4, '22-100-10', 'Penjualan Hasil Produksi kepada Distributor Didalam Negeri Oleh Badan Usaha/ Industri Tertentu (Industri Farmasi)', '0.003', NULL, 'pasal', NULL, NULL),
(5, '22-100-11', 'Penjualan Hasil Produksi kepada Distributor Didalam Negeri Oleh Badan Usaha/ Industri Tertentu (Industri Kertas)', '0.001', NULL, 'pasal', NULL, NULL),
(6, '22-100-12', 'Penjualan Kendaraan Bermotor Di Dalam Negeri Oleh ATPM, APM, dan Importir Umum Kendaraan Bermotor', '0.0045', NULL, 'pasal', NULL, NULL),
(7, '22-100-13', ' Pembelian Oleh Badan Usaha Berupa Komoditas Tambang Batubara, Mineral Logam, dan Mineral Bukan Logam dari Badan atau Orang Probadi Pemengang IUP\r\n                           ', '0.015', NULL, 'pasal', NULL, NULL),
(8, '22-100-14', 'Penjualan Emas Batangan di Dalam Negeri Oleh Badan Usaha', '0.0045', NULL, 'pasal', NULL, NULL),
(9, '22-100-15', 'Pembelian Bahan Hasil Kehutanan Yang Belum Melalui Proses Industri Manufaktur, untuk Keperluan Industri/ Ekspor oleh Badan Usaha Industri/ Eksportir', '0.0025', NULL, 'pasal', NULL, NULL),
(10, '22-100-16', 'Pembelian Bahan Hasil Perkebunan Belum Melalui Proses Industri Manufaktur, Untuk Keperluan Industri/ Ekspor oleh Badan Usaha Industri/ Eksportir', '0.0025', NULL, 'pasal', NULL, NULL),
(11, '22-100-17', 'Pembelian Bahan Hasil Pertanian Belum Melalui Proses Industri Manufaktur, Untuk Keperluan Industri /Ekspor oleh Badan Usaha Industri/ Eksportir', '0.0025', NULL, 'pasal', NULL, NULL),
(12, '22-100-18', 'Pembelian Bahan Hasil Perternakan Belum Melalui Proses Industri Manufaktur, Untuk Keperluan Industri /Ekspor oleh Badan Usaha Industri/ Eksportir', '0.0025', NULL, 'pasal', NULL, NULL),
(13, '22-100-19', 'Pembelian Bahan Hasil Perikanan Belum Melalui Proses Industri Manufaktur, Untuk Keperluan Industri /Ekspor oleh Badan Usaha Industri/ Eksportir', '0.0025', NULL, 'pasal', NULL, NULL),
(14, '22-100-20', 'Penjualan BBM Oleh Pertamina/ Anak Perusahaan Pertamina  Kepada Selain SPBU/ Agen/ Penyalir', '0.003', NULL, 'pasal', NULL, NULL),
(15, '22-100-21', 'Penjualan BBM Oleh Selain Pertamina/ Anak Perusahaan Pertamina  Kepada Selain SPBU/ Agen/ Penyalir', '0.003', NULL, 'pasal', NULL, NULL),
(16, '22-100-22', 'Penjualan Pelumas Oleh Importir/Produsen', '0.003', NULL, 'pasal', NULL, NULL),
(17, '22-100-23', 'Penjualan Pulsa dan Kartu Perdana Oleh Penyelenggara Distribusi Tingkat Kedua', '0.005', NULL, 'pasal', NULL, NULL),
(18, '22-100-24', 'Penjualan BBG Oleh Produsen/Importir Kepada Selain SPBU/Agen/Penyalur (Tidak Final)', '0.005', NULL, 'pasal', NULL, NULL),
(19, '22-401-01', 'Penjualan BBM Oleh Pertamina/Anak Perusahaan Pertamina Kepada Selain SPBU/Agen/Penyalur (Final)', '0.0025', NULL, 'pasal', NULL, NULL),
(20, '22-401-02', 'Penjualan BBM Oleh Selain Pertamina/Anak Perusahaan Pertamina Kepada Selain SPBU/Agen/Penyalur (Final)', '0.005', NULL, 'pasal', NULL, NULL),
(21, '22-401-03', 'Penjualan BBG Oleh Produsen/Importir Kepada Selain SPBU/Agen/Penyalur (Final)', '0.005', NULL, 'pasal', NULL, NULL),
(22, '22-403-01', 'Penjualan Barang Yang Tergolong Sangat Mewah', '0.05', NULL, 'pasal', NULL, NULL),
(23, '22-403-02', 'Penjualan Barang Yang Tergolong Sangat Mewah Untuk Rumah Berserta Tanah, Apartemen, Kondominium dan Sejenisnya', '0.01', NULL, 'pasal', NULL, NULL),
(24, '22-404-01', 'Ekspor Komoditas Tambang Batubara, Mineral Logam, dan mineral Bukan Logam Yang Dilakukan Oleh Eksportir Kecuali WP Yang Terkait Dalam PKP2B dan KK', '0.015', NULL, 'pasal', NULL, NULL),
(25, '22-900-01', 'Pembayaran Atas Pembelian dan/atau Bahan Untuk Kegiatan Usahanya Oleh BUMN/Badan Usaha Tertentu', '0.015', NULL, 'pasal', NULL, NULL),
(26, '22-100-01', 'Impor Yang Dipungut Ditjen Bea dan Cukai Yang Dikenakan Tarif 10%', '0.01', NULL, 'pasal', NULL, NULL),
(27, '22-100-02', 'Impor Yang Dipungut Ditjen Bea dan Cukai Yang Dikenakan Tarif 7,5%', '0.075', NULL, 'pasal', NULL, NULL),
(28, '22-100-03', 'Impor Yang Dipungut Ditjen Bea dan Cukai Yang Dikenakan Tarif 0,5%', '0.005', NULL, 'pasal', NULL, NULL),
(29, '22-100-04', 'Impor Yang Dipungut Ditjen Bea dan Cukai Atas Importir/Pemilik Barang Yang Memiliki API', '0.025', NULL, 'pasal', NULL, NULL),
(30, '22-100-05', 'Impor Yang Dipungut Ditjen Bea dan Cukai Atas Importir/Pemilik Barang Yang Tidak Memiliki API', '0.075', NULL, 'pasal', NULL, NULL),
(31, '23-100-01', 'Hadiah, Penghargaan, Bonus, dan Lainnya Selain Yang Telah Dipotong PPh Pasal 21 Ayat (1) Huruf E UU PPh', '0.15', NULL, 'pasal', NULL, NULL),
(32, '24-100-02', 'Sewa dan Penghasilan Lain Sehubungan Penggunaan Harta Kecuali Sewa Tanah/Bangunan Yang Telah Dikenai PPh Pasal 4 Ayat (2) UU PPh', '0,02', NULL, 'pasal', NULL, NULL),
(33, '24-101-01', 'Dividen', '0,15', NULL, 'pasal', NULL, NULL),
(34, '24-102-01 ', 'Bunga Selain Yang Dikenakan PPh Pasal 4 Ayat (2)', '0,15', NULL, 'pasal', NULL, NULL),
(35, '24-103-01', 'Royalti', '0,15', NULL, 'pasal', NULL, NULL),
(36, '24-104-01', 'Teknik', '0,02', NULL, 'pasal', NULL, NULL),
(37, '24-104-02', 'Jasa Manajemen', '0,02', NULL, 'pasal', NULL, NULL),
(38, '24-104-03', 'Jasa Konsultan', '0,02', NULL, 'pasal', NULL, NULL),
(39, '24-104-04', 'Jasa Penilai (Appraisal)', '0,02', NULL, 'pasal', NULL, NULL),
(40, '24-104-05', 'Jasa Aktuaris', '0,02', NULL, 'pasal', NULL, NULL),
(41, '24-104-06', 'Jasa Akuntansi, Pembukuan, dan Atestasi Laporan Keuangan', '0,02', NULL, 'pasal', NULL, NULL),
(42, '24-104-07', 'Jasa Hukum', '0,02', NULL, 'pasal', NULL, NULL),
(43, '24-104-08', 'Jasa Arsitektur', '0,02', NULL, 'pasal', NULL, NULL),
(44, '24-104-09', 'Jasa Perencanaan Kota dan Arsitektur Landscape', '0,02', NULL, 'pasal', NULL, NULL),
(45, '24-104-10', 'Jasa Perancangan (Design)', '0,02', NULL, 'pasal', NULL, NULL),
(46, '24-104-11', 'Jasa Pengeboran (Drilling) Dibidang Penambangan Minyak dan Gas Bumi (Migas) Kecuali Yang Dilakukan Oleh Badan Usaha Tetap (BUT)', '0,02', NULL, 'pasal', NULL, NULL),
(47, '24-104-12', 'Jasa Penunjang Dibidang Usaha Panas Bumi dan Penambangan Minyak dan Gas Bumi (Migas)', '0,02', NULL, 'pasal', NULL, NULL),
(48, '24-104-13 ', 'Jasa Penambangan dan Jasa Penunjang Selain Dibidang Usaha Panas Bumi dan Penambangan Minyak dan Gas Bumi (Migas)', '0,02', NULL, 'pasal', NULL, NULL),
(49, '24-104-14', 'Jasa Penunjang Dibidang Penerbangan dan Bandar Udara', '0,02', NULL, 'pasal', NULL, NULL),
(50, '24-104-15', 'Jasa Penebangan Hutan ', '0,02', NULL, 'pasal', NULL, NULL),
(51, '24-104-16', 'Jasa Pengolahan Limbah', '0,02', NULL, 'pasal', NULL, NULL),
(52, '24-104-17', 'Jasa Penyedia Tenaga Kerja dan/atau Tenaga Ahli (Outsourcing Services)', '0,02', NULL, 'pasal', NULL, NULL),
(53, '24-104-18', 'Jasa Perantara dan/atau Keagenan', '0,02', NULL, 'pasal', NULL, NULL),
(54, '24-104-19', 'Jasa Bidang Perdagangan Surat-Surat Berharga, Kecuali Yang Dilakukan Bursa Efek, Kustodian Sentral Efek Indonesia (KSEI) dan Kliring Penjamin Efek Indonesia (KPEI)', '0,02', NULL, 'pasal', NULL, NULL),
(55, '24-104-20', 'Jasa Kustodian/Penyimpanan/Penitipan, Kecuali Yang Dilakukan Oleh KSI', '0,02', NULL, 'pasal', NULL, NULL),
(56, '24-104-21', 'Jasa Pengisian Suara (Dubbing) dan/atau Sulih Suara', '0,02', NULL, 'pasal', NULL, NULL),
(57, '24-104-22', 'Jasa Mixing Film', '0,02', NULL, 'pasal', NULL, NULL),
(58, '24-104-23', 'Jasa Pembuatan Sarana Promosi Film, Iklan, Poster, Foto, Slide, Klise, Banner, Pamphlet, Baliho dan Folder', '0,02', NULL, 'pasal', NULL, NULL),
(59, '24-104-24', 'Jasa Sehubungan Dengan Software atau Hardware atau Sistem Komputer, Termasuk Perawatan, Pemeliharaan dan Perbaikan', '0,02', NULL, 'pasal', NULL, NULL),
(60, '24-104-25', 'Jasa Pembuatan dan/atau Pengelolaan Website', '0,02', NULL, 'pasal', NULL, NULL),
(61, '24-104-26', 'Jasa Internet Termasuk Sambungannya', '0,02', NULL, 'pasal', NULL, NULL),
(62, '24-104-27', 'Jasa Penyimpanan, Pengelolaan, dan/atau Penyaluran Data, Informasi dan/atau Program', '0,02', NULL, 'pasal', NULL, NULL),
(63, '24-104-28', 'Jasa Instalasi atau Pemasangan Mesin, Peralatan, Listrik, Telepon, Air, Gas, Ac atau Tv Kabel, Selain Yang Dilakukan Oleh Wajib Pajak Yang Ruang Lingkupnya Di Bidang Konstruksi dan Mempunyai Izin dan Sertifikasi Sebagai Pengusaha Konstruksi ', '0,02', NULL, 'pasal', NULL, NULL),
(64, '24-104-29', 'Jasa Perawatan/Perbaikan/Pembenaran Mesin, Peralatan, Listrik, Telepon, Air, Gas, Ac atau Tv Kabel, Selain Yang Dilakukan Oleh Wajib Pajak Yang Ruang Lingkupnya Di Bidang Konstruksi dan Mempunyai Izin dan Sertifikasi Sebagai Pengusaha Konstruksi ', '0,02', NULL, 'pasal', NULL, NULL),
(65, '24-104-30 ', 'Jasa Perawatan Kendaraan dan/atau Alat Transportasi Darat, Laut dan Udara', '0,02', NULL, 'pasal', NULL, NULL),
(66, '24-104-31', 'Jasa Maklon', '0,02', NULL, 'pasal', NULL, NULL),
(67, '24-104-32', 'Jasa Penyelidikan dan Keamanan ', '0,02', NULL, 'pasal', NULL, NULL),
(68, '24-104-33', 'Jasa Penyelenggara Kegiatan atau Event Organizer', '0,02', NULL, 'pasal', NULL, NULL),
(69, '24-104-34', 'Jasa Penyedia Tempat dan/atau Waktu Dalam Media Massa, Media Luar Ruang atau Media Lain Untuk Penyampaian Informasi, dan/atau Jasa Periklanan', '0,02', NULL, 'pasal', NULL, NULL),
(70, '24-104-35', 'Jasa Pembasmi Hama', '0,02', NULL, 'pasal', NULL, NULL),
(71, '24-104-36', 'Jasa Kebersihan atau Cleaning Service', '0,02', NULL, 'pasal', NULL, NULL),
(72, '24-104-37', 'Jasa Sedot Septi Tank', '0,02', NULL, 'pasal', NULL, NULL),
(73, '24-104-38', 'Jasa Pemeliharaan Kolam', '0,02', NULL, 'pasal', NULL, NULL),
(74, '24-104-39', 'Jasa Katering atau Tata Boga', '0,02', NULL, 'pasal', NULL, NULL),
(75, '24-104-40', 'Jasa Forwarding ', '0,02', NULL, 'pasal', NULL, NULL),
(76, '24-104-41', 'Jasa Logistik ', '0,02', NULL, 'pasal', NULL, NULL),
(77, '24-104-42', 'Jasa Pengurusan Dokumen', '0,02', NULL, 'pasal', NULL, NULL),
(78, '24-104-43', 'Jasa Pengepakan', '0,02', NULL, 'pasal', NULL, NULL),
(79, '24-104-44', 'Jasa Loading dan Unloading', '0,02', NULL, 'pasal', NULL, NULL),
(80, '24-104-45', 'Jasa Laboratorium dan/atau Pengujian Kecuali Yang Dilakukan Oleh Lembaga atau Institusi  Pendidikan Dalam Rangka Penelitian Akademis', '0,02', NULL, 'pasal', NULL, NULL),
(81, '24-104-46', 'Jasa Pengelolaan Parkir', '0,02', NULL, 'pasal', NULL, NULL),
(82, '24-104-47', 'Jasa Penyondiran Tanah', '0,02', NULL, 'pasal', NULL, NULL),
(83, '24-104-48', 'Jasa Penyiapan dan/atau Pengelolaan Limbah', '0,02', NULL, 'pasal', NULL, NULL),
(84, '24-104-49', 'Jasa Pembibitan dan/atau Penanaman Bibit', '0,02', NULL, 'pasal', NULL, NULL),
(85, '24-104-50', 'Jasa Pemeliharaan Tanaman ', '0,02', NULL, 'pasal', NULL, NULL),
(86, '24-104-51', 'Jasa Pemanenan', '0,02', NULL, 'pasal', NULL, NULL),
(87, '24-104-52', 'Jasa Pengolahan Hasil Pertanian, Pekebunan, Perikanan, Peternakan dan Perhutanan ', '0,02', NULL, 'pasal', NULL, NULL),
(88, '24-104-53', 'Jasa Dekorasi ', '0,02', NULL, 'pasal', NULL, NULL),
(89, '24-104-54', 'Jasa Percetakan/Penerbitan', '0,02', NULL, 'pasal', NULL, NULL),
(90, '24-104-55', 'Jasa Penerjemahan', '0,02', NULL, 'pasal', NULL, NULL),
(91, '24-104-56 ', 'Jasa Pengangkutan/Ekspedisi Kecuali Yang Telah Diatur Dalam Pasal 15 Undang-Undang Pajak Penghasilan', '0,02', NULL, 'pasal', NULL, NULL),
(92, '24-104-57', 'Jasa Pelayanan Pelabuhan', '0,02', NULL, 'pasal', NULL, NULL),
(93, '24-104-58', 'Jasa Pengangkutan Melalui Jalur Pipa', '0,02', NULL, 'pasal', NULL, NULL),
(94, '24-104-59', 'Jasa Pengelolaan Penitipan Anak', '0,02', NULL, 'pasal', NULL, NULL),
(95, '24-104-60', 'Jasa Pelatuhan dan/atau Kursus', '0,02', NULL, 'pasal', NULL, NULL),
(96, '24-104-61', 'Jasa Pengiriman dan Pengisian Uang Ke ATM', '0,02', NULL, 'pasal', NULL, NULL),
(97, '24-104-62', 'Jasa Sertifikasi', '0,02', NULL, 'pasal', NULL, NULL),
(98, '24-104-63', 'Jasa Survey', '0,02', NULL, 'pasal', NULL, NULL),
(99, '24-104-64', 'Jasa Tester', '0,02', NULL, 'pasal', NULL, NULL),
(100, '24-104-65', 'Jasa Selain Jasa-Jasa Tersebut Diatas Yang Pembayaran Dibebankan Kepada APBN (Anggaran Pendapatan dan Belanja Negara) atau APBD (Anggaran Pendapatan dan Belanja Daerah)', '0,02', NULL, 'pasal', NULL, NULL),
(101, '24-104-66', 'Jasa Penyelenggaran Layanan Transaksi Pembayaran Terkait Dengan Distribusi Token Oleh Penyelenggara Distribusi ', '0,02', NULL, 'pasal', NULL, NULL),
(102, '24-104-67', 'Jasa Pemasaran Dengan Media Voucher Oleh Penyelenggara Voucher', '0,02', NULL, 'pasal', NULL, NULL),
(103, '24-104-68', 'Jasa Penyelenggara Transaksi Pembayaran Terkait Dengan Ditribusi Voucher Oleh Penyelenggara Voucher dan Penyelenggara Distribusi', '0,02', NULL, 'pasal', NULL, NULL),
(104, '24-104-69', 'Jasa Penyelenggara Program Loyalitas  dan Penghargaan Pelanggan (Costumer Loyalty/Reward Program) Oleh Penyelenggara Voucher', '0,02', NULL, 'pasal', NULL, NULL),
(105, '24-105-01', 'Bunga Pinjaman Yang Diterima Wajib Pajak Dalam Negeri dan Bentuk Usaha Tetap Melalui Layanan Pinjam Meminjam Uang Berbasis Teknologi Informasi ', '0,15', NULL, 'pasal', NULL, NULL),
(106, '28-403-02', 'Persewaan Tanah dan/atau Bangunan', '0,1', NULL, 'pasal', NULL, NULL),
(107, '28-405-01', 'Hadiah Undian (Yang Diterima Wajib Pajak Dalam Negeri', '0,25', NULL, 'pasal', NULL, NULL),
(108, '28-409-08', 'Perencanaan Konstruksi (Dengan Kualifikasi Usaha)', '0,04', NULL, 'pasal', NULL, NULL),
(109, '28-409-09', 'Perencanaan Konstruksi (Tanpa Kualifikasi Usaha)', '0,06', NULL, 'pasal', NULL, NULL),
(110, '28-409-10', 'Pelaksanaan Konstruksi (Kualifikasi Usaha Kecil)', '0,02', NULL, 'pasal', NULL, NULL),
(111, '28-409-11\r\n', 'Pelaksanaan Konstruksi (Kualifikasi Usaha Menengah dan Besar)', '0,03', NULL, 'pasal', NULL, NULL),
(112, '28-409-12', 'Pelaksanaan Konstruksi (Tanpa Kualifikasi Usaha)', '0,04', NULL, 'pasal', NULL, NULL),
(113, '28-409-13', 'Pengawasan Konstruksi (Dengan Kualifikasi Usaha)', '0.04\r\n', NULL, 'pasal', NULL, NULL),
(114, '28-409-14', 'Pengawasan Konstruksi (Tanpa Kualifikasi Usaha)', '0,06', NULL, 'pasal', NULL, NULL),
(115, '28-409-22', 'Pekerjaan Konstruksi Yang Dilakukan Oleh Penyedia Jasa Yang Memiliki Sertifikat Badan Usaha Kualifikasi Kecil', '0,0175', NULL, 'pasal', NULL, NULL),
(116, '28-409-23\r\n', 'Pekerjaan Konstruksi Yang Dilakukan Oleh Penyedia Jasa Yang Tidak Memiliki Sertifikat Badan Usaha atau Sertifikat Kompetensi Kerja Untuk Usaha Orang Perseorangan ', '0,04', NULL, 'pasal', NULL, NULL),
(117, '28-409-24', 'Pekerjaan Konstruksi Yang Dilakukan Oleh Penyedia Jasa Yang Memilliki Sertifikat Selain Sertifikat Badan Usaha Kualifikasi Kecil atau Sertifikat Kompetensi Kerja Untuk Usaha Orang Perseorangan', '0,0265', NULL, 'pasal', NULL, NULL),
(118, '28-409-25', 'Pekerjaan Konstruksi Terintegrasi Yang Dilakukan Oleh Penyedia Jasa Yang Memiliki Sertifikat Badan Usaha', '0,0265', NULL, 'pasal', NULL, NULL),
(119, '28-409-26', 'Pekerjaan Konstruksi Terintegrasi Yang Dilakukan Oleh Penyedia Jasa Yang Tidak Memiliki Sertifikat Badan Usaha', '0,04', NULL, 'pasal', NULL, NULL),
(120, '28-409-27', 'Jasa Konsultasi Konstruksi Yang Dilakukan Oleh Penyedia Jasa Yang Memiliki Sertifikat Badan Usaha atau Sertifikat Kompetensi Kerja Untuk Usaha Orang Perseorangan ', '0,035', NULL, 'pasal', NULL, NULL),
(121, '28-409-28', 'Jasa Konsultasi Konstruksi Yang Dilakukan Oleh Penyedia Jasa Yang Tidak Memiliki Sertifikat Badan Usaha atau Sertifikat Kompetensi Kerja Untuk Usaha Orang Perseorangan ', '0,06', NULL, 'pasal', NULL, NULL),
(122, '28-410-02', 'Imbalan Yang Dibayarkan/Terutang Kepada Perusahaan Pelayaran Dalam Negeri', '0,012', NULL, 'pasal', NULL, NULL),
(123, '28-411-02', 'Imbalan Charter Kapal Laut dan/atau Pesawat Udara Yang Dibayarkan/Terutang Kepada Perusahaan Pelayaran dan/atau Penerbangan Luar Negeri Melalui BUT Di Indonesia', '0,0264', NULL, 'pasal', NULL, NULL),
(124, '28-417-01', 'Bunga Simpanan Yang Dibayarkan Oleh Koperasi Kepada Anggota Wajib Pajak Orang Pribadi (Bunga Sampai Dengan Rp240.000)', '0', NULL, 'pasal', NULL, NULL),
(125, '28-417-02', 'Bunga Simpanan Yang Dibayarkan Oleh Koperasi Kepada Anggota Wajib Pajak Orang Pribadi (Bunga Diatas Rp240.000)', '0,1', NULL, 'pasal', NULL, NULL),
(126, '28-419-01', 'Dividen Yang Diterima/Diperoleh Wajib Pajak Orang Pribadi Dalam Negeri', '0,1', NULL, 'pasal', NULL, NULL),
(127, '28-421-01', 'Uplift Hulu Migas', '0,2', NULL, 'pasal', NULL, NULL),
(128, '28-421-02', 'Participating Interest Eksplorasi Hulu Migas', '0,05', NULL, 'pasal', NULL, NULL),
(129, '28-421-03', 'Participating Interest Eksploitasi Hulu Migas', '0,07', NULL, 'pasal', NULL, NULL),
(130, '28-423-01', 'Transaksi Dengan Wajib Pajak Yang Menggunakan Tarif Peraturan Pemerintah Nomor 23 Tahun 2018', '0,005', NULL, 'pasal', NULL, NULL),
(131, '29-101-01', 'Imbalan Charter Pesawat Udara Yang Dibayarkan/Terutang Kepada Perusahaan Penerbangan Dalam Negeri Oleh Pemotong Pajak', '0,018', NULL, 'pasal', NULL, NULL),
(132, '27-100-01', 'Sewa dan Penghasilan Lain Sehubungan dengan Penggunaan Harta (PPh Pasal 26)', '0,2', NULL, 'non_residen', NULL, NULL),
(133, '27-100-02 ', 'Hadiah dan Penghargaan (PPh Pasal 26)', '0,2', NULL, 'non_residen', NULL, NULL),
(134, '27-100-03', 'Pensiun dan Pembayaran Berkala Lainnya', '0,2', NULL, 'non_residen', NULL, NULL),
(135, '27-100-04', 'Keuntungan Karena Pembebasan Utang (PPh Pasal 26)', '0,2', NULL, 'non_residen', NULL, NULL),
(136, '27-100-05', 'Penghasilan Dari Penjualan atau Pengalihan Harta di Indonesia (PPh Pasal 26)', '0,2', NULL, 'non_residen', NULL, NULL),
(137, '27-100-06', 'Premi Asuransi/Reasuransi (PPh Pasal 26)', '0,2', NULL, 'non_residen', NULL, NULL),
(138, '27-101-01', 'Dividen (PPh Pasal 26)', '0,2', NULL, 'non_residen', NULL, NULL),
(139, '27-102-01', 'Bunga Selain Bunga Obligasi (PPh Pasal 26)', '0,2', NULL, 'non_residen', NULL, NULL),
(140, '27-102-02', 'Premi Swap dan Transaksi Lindung Nilai Lainnya (PPh Pasal 26)', '0,2', NULL, 'non_residen', NULL, NULL),
(141, '27-103-01', 'Royalti (PPh Pasal 26)', '0,2', NULL, 'non_residen', NULL, NULL),
(142, '27-104-01', 'Imbalan Sehubungan dengan Jasa, Pekerjaan dan Kegiatan (PPh Pasal 26)', '0,2', NULL, 'non_residen', NULL, NULL),
(143, '27-105-01', 'Penghasilan Kena Pajak BUT Setelah Pajak (PPh Pasal 26)', '0,2', NULL, 'non_residen', NULL, NULL),
(144, '27-107-01', 'Bunga pinjaman yang dibayarkan oleh penerima pinjaman melalui Penyelenggara Layanan Pinjam Meminjam yang diterima atau diperoleh pemberi pinjaman (Fintech)', '0,2', NULL, 'non_residen', NULL, NULL),
(145, '28-405-02', 'Hadiah Undian (yang diterima Wajib Pajak luar negeri)', '0,25', NULL, 'non_residen', NULL, NULL),
(146, '28-499-02', ' Penghasilan yang Diterima atau Diperoleh Sehubungan dengan Kerja Sama dengan Lembaga Pengelola Investasi (LPI)', '0,075', NULL, 'non_residen', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pajak_penghasilan`
--

CREATE TABLE `pajak_penghasilan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jenis_bukti_penyetoran` enum('surat setoran pajak','pemindahbukuan') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ntpn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nomor_bukti` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nomor_pemindahbukuan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `masa_pajak` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jenis_pajak` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jenis_setoran` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kode_objek_pajak` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jumlah_penghasilan_bruto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jumlah_setor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal_setor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pengaturan_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tahun_pajak` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identitas` enum('npwp','nik') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_identitas` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qq` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fasilitas_pajak_penghasilan` enum('tanpa fasilitas','surat keterangan bebas','skd wpln','pph ditanggung pemerintah','surat keterangan berdasarkan pp no 23 2018','fasilitas lainnya berdasarkan') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_fasilitas` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kelebihan_pemotongan` enum('pengembalian','pemindahbukuan') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `negara` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tempat_lahir` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_lahir` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_paspor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_kitas` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `netto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tarif` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_bukti` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pernyataan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_posted` tinyint(1) NOT NULL DEFAULT 0,
  `tipe` enum('pphsendiri','pphpasal','pphnon','importdata') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pajak_penghasilan`
--

INSERT INTO `pajak_penghasilan` (`id`, `jenis_bukti_penyetoran`, `ntpn`, `nomor_bukti`, `nomor_pemindahbukuan`, `masa_pajak`, `jenis_pajak`, `jenis_setoran`, `kode_objek_pajak`, `jumlah_penghasilan_bruto`, `jumlah_setor`, `tanggal_setor`, `pengaturan_id`, `tahun_pajak`, `nama`, `identitas`, `no_identitas`, `qq`, `fasilitas_pajak_penghasilan`, `no_fasilitas`, `kelebihan_pemotongan`, `status`, `user_id`, `tin`, `alamat`, `negara`, `tempat_lahir`, `tgl_lahir`, `no_paspor`, `no_kitas`, `netto`, `tarif`, `no_bukti`, `pernyataan`, `is_posted`, `tipe`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'belum posting', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'importdata', '2023-02-15 06:41:22', '2023-02-15 06:41:22'),
(2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'belum posting', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'importdata', '2023-02-15 06:46:14', '2023-02-15 06:46:14'),
(3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'belum posting', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'importdata', '2023-02-15 07:01:46', '2023-02-15 07:01:46'),
(4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'belum posting', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'importdata', '2023-02-15 07:03:43', '2023-02-15 07:03:43'),
(5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'belum posting', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'importdata', '2023-02-15 07:06:09', '2023-02-15 07:06:09'),
(10, NULL, NULL, NULL, NULL, 'MEI', NULL, NULL, '27-100-01', '50,000,000', '10.000,000', NULL, 1, '2023', 'fatma', NULL, NULL, NULL, 'tanpa fasilitas', '0', 'pengembalian', 'belum posting', 1, '32456', 'saguba city', 'Indonesia', 'padang', '16', '43567', '8765', NULL, '0.2', '20230223000001', 'pernyataan', 0, 'pphnon', '2023-02-23 08:20:48', '2023-02-23 08:20:48'),
(14, NULL, NULL, NULL, NULL, 'JANUARI', NULL, NULL, '27-103-01', '250,000,000', '50.000,000', NULL, 10, '2023', 'Fadinda', NULL, NULL, NULL, NULL, '0', 'pemindahbukuan', 'belum posting', 1, '87654356754635354', 'piayu city', 'Indonesia', 'jawa', '23', '45678654323', '67543256765432', NULL, '0.2', '20230228000001', 'pernyataan', 0, 'pphnon', '2023-02-28 05:59:30', '2023-02-28 05:59:30'),
(15, NULL, NULL, '20230201687386', NULL, 'Februari', '411124', '104', '28-499-02', '3,250,000', '243.750', '2023-02-05', 10, '2023', 'Rina Junita', NULL, NULL, NULL, 'tanpa fasilitas', '0', 'pemindahbukuan', 'belum posting', 1, '12', 'piayu city', 'Indonesia', 'batam', '05', '43567', '8765', NULL, '0.075', '20230228000001', 'pernyataan', 0, 'pphnon', '2023-02-28 07:09:22', '2023-05-08 13:19:32'),
(16, 'surat setoran pajak', '4356789765435678', '20230315000001', NULL, 'Februari', '411124', '104', '24-104-34', '1,000,000', '20.000', '2023-01-01', NULL, '2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sudah posting', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'pphsendiri', '2023-03-15 08:30:02', '2023-03-15 08:30:02'),
(20, 'surat setoran pajak', '7652345678908765', '20230516000001', NULL, 'Januari', '411124', '104', '24-104-29', '6,500,000,000', '130.000,000', '2023-01-12', NULL, '2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'belum posting', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'pphsendiri', '2023-05-16 12:38:02', '2023-05-16 12:38:02'),
(23, NULL, NULL, NULL, NULL, 'MEI', NULL, NULL, '23-100-03', '8,900,000', '44.500', NULL, 12, '2023', 'Fatma', 'npwp', '34.567.543.2-456.7865', NULL, 'tanpa fasilitas', NULL, NULL, 'belum posting', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.5%', '20230516000001', NULL, 0, 'pphpasal', '2023-05-16 13:33:40', '2023-05-16 13:33:40'),
(24, 'surat setoran pajak', '8748998178976767', '20230517000001', NULL, 'Maret', '411124', '104', '24-104-24', '230,000,000', '1.035,000', '2023-05-17', NULL, '2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'belum posting', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'pphsendiri', '2023-05-17 04:58:12', '2023-05-17 05:30:00'),
(25, NULL, NULL, NULL, NULL, 'APRIL', NULL, NULL, '24-100-01', '50,000,000', '0', NULL, 11, '2023', 'Anjelina', 'npwp', '54.545.454.5-454.5454', NULL, 'surat keterangan bebas', NULL, NULL, 'belum posting', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0%', '20230518000001', NULL, 0, 'pphpasal', '2023-05-18 14:46:48', '2023-05-18 14:46:48'),
(26, 'surat setoran pajak', '4546758768345678', '20230519000001', NULL, 'April', '411124', '101', '24-101-01', '5,000,000', '750.000', '2023-05-19', NULL, '2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'belum posting', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'pphsendiri', '2023-05-19 02:43:06', '2023-05-19 02:44:15'),
(27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'belum posting', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'importdata', '2023-05-19 02:57:22', '2023-05-19 02:57:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pajak_penghasilan_dipotong`
--

CREATE TABLE `pajak_penghasilan_dipotong` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengaturan`
--

CREATE TABLE `pengaturan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bertindak_sebagai` enum('pengurus','kuasa') COLLATE utf8mb4_unicode_ci NOT NULL,
  `identitas` enum('npwp','nik') COLLATE utf8mb4_unicode_ci NOT NULL,
  `npwp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pengaturan`
--

INSERT INTO `pengaturan` (`id`, `bertindak_sebagai`, `identitas`, `npwp`, `nama`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'pengurus', 'npwp', '65.654.765.1-987.8762', 'dedi', 1, 0, '2023-02-03 04:33:33', '2023-05-21 12:18:38'),
(7, 'kuasa', 'npwp', '32.456.789.0-987.6543', 'wika', 1, 0, '2023-02-23 04:40:13', '2023-02-23 04:46:55'),
(9, 'pengurus', 'npwp', '12.345.675.6-789.0876', 'Rina Junita', 1, 1, '2023-02-23 08:01:18', '2023-05-12 12:20:31'),
(10, 'kuasa', 'npwp', '56.445.643.2-456.7897', 'Fatma Angraini', 1, 0, '2023-02-23 08:50:24', '2023-05-12 11:02:16'),
(11, 'pengurus', 'npwp', '98.543.725.6-745.345', 'Rina Junita', 1, 0, '2023-02-27 04:21:48', '2023-05-21 12:18:12'),
(12, 'pengurus', 'npwp', '54.545.454.5-454.5454', 'Fadinda', 1, 1, '2023-03-21 04:09:54', '2023-03-21 04:09:54'),
(13, 'kuasa', 'npwp', '99.998.765.4-323.4567', 'anjelina', 1, 0, '2023-03-21 07:59:24', '2023-05-12 11:01:52'),
(14, 'pengurus', 'npwp', '63.562.873.6-452.937', 'Rhena', 1, 1, '2023-05-16 05:27:44', '2023-05-16 05:27:44'),
(15, 'pengurus', 'npwp', '54.267.647.6-587.6873', 'Dedi', 1, 1, '2023-05-19 02:38:21', '2023-05-19 02:38:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
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
-- Struktur dari tabel `pphpasal`
--

CREATE TABLE `pphpasal` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pengaturan_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tahun_pajak` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `masa_pajak` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `identitas` enum('npwp','nik') COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_identitas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qq` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kode_objek_pajak` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fasilitas_pajak_penghasilan` enum('tanpa fasilitas','surat keterangan bebas','pph ditanggung pemerintah','surat keterangan berdasarkan pp no 23 2018','fasilitas lainnya berdasarkan') COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_fasilitas` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jumlah_penghasilan_bruto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tarif` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah_setor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_bukti` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelebihan_pemotongan` enum('pengembalian','pemindahbukuan') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pphsendiri`
--

CREATE TABLE `pphsendiri` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jenis_bukti_penyetoran` enum('surat setoran pajak','pemindahbukuan') COLLATE utf8mb4_unicode_ci NOT NULL,
  `ntpn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor_bukti` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor_pemindahbukuan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tahun_pajak` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `masa_pajak` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_pajak` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_setoran` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_objek_pajak` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah_penghasilan_bruto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah_setor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_setor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pph_nonresiden`
--

CREATE TABLE `pph_nonresiden` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pengaturan_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tahun_pajak` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `masa_pajak` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `negara` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempat_lahir` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_lahir` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_paspor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_kitas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_objek_pajak` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fasilitas_pajak_penghasilan` enum('tanpa fasilitas','skd wpln','pph ditanggung pemerintah','fasilitas lainnya berdasarkan') COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_fasilitas` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jumlah_penghasilan_bruto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `netto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tarif` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah_setor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_bukti` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelebihan_pemotongan` enum('pengembalian','pemindahbukuan') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `rekam_spt`
--

CREATE TABLE `rekam_spt` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jenis_bukti_penyetoran` enum('surat setoran pajak','pemindahbukuan') COLLATE utf8mb4_unicode_ci NOT NULL,
  `npwp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ntpn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor_pemindahbukuan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tahun_pajak` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `masa_pajak` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_pajak` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_setoran` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah_setor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_setor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sptmasa`
--

CREATE TABLE `sptmasa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `npwp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nik` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `npwp`, `nik`, `email_verified_at`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Rina Junita', 'rina@gmail.com', '2022120700000001', '2171090804039008', NULL, '$2y$10$1NmuqzGV5GUibaBA69uiDO/X17Q/M0mfL59GdCeubSow.YLIS4Cq.', '2023-01-09 07:48:44', '2023-01-09 07:48:44');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `dashboard`
--
ALTER TABLE `dashboard`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `dokumen_pphnon`
--
ALTER TABLE `dokumen_pphnon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dokumen_pphnon_pajak_penghasilan_id_foreign` (`pajak_penghasilan_id`);

--
-- Indeks untuk tabel `dokumen_pphpasal`
--
ALTER TABLE `dokumen_pphpasal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dokumen_pphpasal_pajak_penghasilan_id_foreign` (`pajak_penghasilan_id`);

--
-- Indeks untuk tabel `dopp`
--
ALTER TABLE `dopp`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `dopp_points`
--
ALTER TABLE `dopp_points`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `doss`
--
ALTER TABLE `doss`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `doss_points`
--
ALTER TABLE `doss_points`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `import_data`
--
ALTER TABLE `import_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `import_data_pajak_penghasilan_id_foreign` (`pajak_penghasilan_id`);

--
-- Indeks untuk tabel `import_data_details`
--
ALTER TABLE `import_data_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `import_data_details_import_data_id_foreign` (`import_data_id`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

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
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indeks untuk tabel `objek_pajak`
--
ALTER TABLE `objek_pajak`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pajak_penghasilan`
--
ALTER TABLE `pajak_penghasilan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pajak_penghasilan_pengaturan_id_foreign` (`pengaturan_id`);

--
-- Indeks untuk tabel `pajak_penghasilan_dipotong`
--
ALTER TABLE `pajak_penghasilan_dipotong`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `pengaturan`
--
ALTER TABLE `pengaturan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pengaturan_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `pphpasal`
--
ALTER TABLE `pphpasal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pphpasal_pengaturan_id_foreign` (`pengaturan_id`);

--
-- Indeks untuk tabel `pphsendiri`
--
ALTER TABLE `pphsendiri`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pph_nonresiden`
--
ALTER TABLE `pph_nonresiden`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pph_nonresiden_pengaturan_id_foreign` (`pengaturan_id`);

--
-- Indeks untuk tabel `rekam_spt`
--
ALTER TABLE `rekam_spt`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sptmasa`
--
ALTER TABLE `sptmasa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_npwp_unique` (`npwp`),
  ADD UNIQUE KEY `users_nik_unique` (`nik`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `dashboard`
--
ALTER TABLE `dashboard`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `dokumen_pphnon`
--
ALTER TABLE `dokumen_pphnon`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `dokumen_pphpasal`
--
ALTER TABLE `dokumen_pphpasal`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `dopp`
--
ALTER TABLE `dopp`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT untuk tabel `dopp_points`
--
ALTER TABLE `dopp_points`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `doss`
--
ALTER TABLE `doss`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `doss_points`
--
ALTER TABLE `doss_points`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `import_data`
--
ALTER TABLE `import_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `import_data_details`
--
ALTER TABLE `import_data_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `objek_pajak`
--
ALTER TABLE `objek_pajak`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT untuk tabel `pajak_penghasilan`
--
ALTER TABLE `pajak_penghasilan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `pajak_penghasilan_dipotong`
--
ALTER TABLE `pajak_penghasilan_dipotong`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pengaturan`
--
ALTER TABLE `pengaturan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pphpasal`
--
ALTER TABLE `pphpasal`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pphsendiri`
--
ALTER TABLE `pphsendiri`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pph_nonresiden`
--
ALTER TABLE `pph_nonresiden`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `rekam_spt`
--
ALTER TABLE `rekam_spt`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `sptmasa`
--
ALTER TABLE `sptmasa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `dokumen_pphnon`
--
ALTER TABLE `dokumen_pphnon`
  ADD CONSTRAINT `dokumen_pphnon_pajak_penghasilan_id_foreign` FOREIGN KEY (`pajak_penghasilan_id`) REFERENCES `pajak_penghasilan` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `dokumen_pphpasal`
--
ALTER TABLE `dokumen_pphpasal`
  ADD CONSTRAINT `dokumen_pphpasal_pajak_penghasilan_id_foreign` FOREIGN KEY (`pajak_penghasilan_id`) REFERENCES `pajak_penghasilan` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `import_data`
--
ALTER TABLE `import_data`
  ADD CONSTRAINT `import_data_pajak_penghasilan_id_foreign` FOREIGN KEY (`pajak_penghasilan_id`) REFERENCES `pajak_penghasilan` (`id`);

--
-- Ketidakleluasaan untuk tabel `import_data_details`
--
ALTER TABLE `import_data_details`
  ADD CONSTRAINT `import_data_details_import_data_id_foreign` FOREIGN KEY (`import_data_id`) REFERENCES `import_data` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pajak_penghasilan`
--
ALTER TABLE `pajak_penghasilan`
  ADD CONSTRAINT `pajak_penghasilan_pengaturan_id_foreign` FOREIGN KEY (`pengaturan_id`) REFERENCES `pengaturan` (`id`);

--
-- Ketidakleluasaan untuk tabel `pengaturan`
--
ALTER TABLE `pengaturan`
  ADD CONSTRAINT `pengaturan_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `pphpasal`
--
ALTER TABLE `pphpasal`
  ADD CONSTRAINT `pphpasal_pengaturan_id_foreign` FOREIGN KEY (`pengaturan_id`) REFERENCES `pengaturan` (`id`);

--
-- Ketidakleluasaan untuk tabel `pph_nonresiden`
--
ALTER TABLE `pph_nonresiden`
  ADD CONSTRAINT `pph_nonresiden_pengaturan_id_foreign` FOREIGN KEY (`pengaturan_id`) REFERENCES `pengaturan` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
