-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Des 2022 pada 12.34
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_musik`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `band`
--

CREATE TABLE `band` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_band` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `genre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_rilis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `band`
--

INSERT INTO `band` (`id`, `nama_band`, `genre`, `tanggal_rilis`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'JKT48', 'Pop', '12-5-12', '2', '2022-11-28 12:22:58', '2022-11-28 12:22:58'),
(2, 'Maher Zain', 'Pop', '28-02-98', '1', '2022-11-28 12:23:27', '2022-11-28 12:23:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `favorit`
--

CREATE TABLE `favorit` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul_lagu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `musik_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `favorit`
--

INSERT INTO `favorit` (`id`, `judul_lagu`, `musik_id`, `created_at`, `updated_at`) VALUES
(1, 'Santuy', 'Insya Allah', '2022-11-28 13:57:06', '2022-11-28 13:57:06'),
(2, 'Beat', 'Heavy Rotation', '2022-11-28 13:57:18', '2022-11-28 13:57:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id`, `nama`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 'Pop', 'Heavy Rotation', '2022-11-28 13:54:17', '2022-11-28 13:57:31'),
(3, 'Mellow', 'Insya Allah', '2022-11-28 13:58:00', '2022-11-28 13:58:00');

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
(2, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(3, '2022_11_22_221934_buat-table-kategori', 1),
(4, '2022_11_24_180948_buat-table-favorit', 1),
(5, '2022_11_25_195708_buat-table-band', 1),
(6, '2022_11_28_145416_buat-table-musik', 1),
(7, '2022_12_01_224334_buat_tabel_masukkan_saran', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `musik`
--

CREATE TABLE `musik` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_lagu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_upload` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `band_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `musik`
--

INSERT INTO `musik` (`id`, `judul`, `link_lagu`, `tanggal_upload`, `band_id`, `created_at`, `updated_at`) VALUES
(2, 'Heavy Rotation', 'musik.com', '11-3-2022', 1, '2022-11-28 12:41:26', '2022-11-28 12:41:26'),
(5, 'Insya Allah', 'musik.com', '11-3-2022', 2, '2022-11-28 13:22:33', '2022-11-28 13:22:33'),
(6, 'Insya Allah 2', 'musik.com', '11-3-2022', 2, '2022-11-28 13:46:38', '2022-11-28 13:46:38'),
(7, 'Teman Selalu Ada', 'musik.com', '11-3-2022', 1, '2022-11-28 14:14:46', '2022-11-28 14:14:46');

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
-- Struktur dari tabel `saran`
--

CREATE TABLE `saran` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `musik_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Saran` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `saran`
--

INSERT INTO `saran` (`id`, `musik_id`, `Saran`, `created_at`, `updated_at`) VALUES
(4, 'Heavy Rotation', 'jangan terlalu cempreng', '2022-12-01 15:34:20', '2022-12-01 15:34:20'),
(5, 'Insya Allah', 'Bikin Lebih Nge beat', '2022-12-01 15:47:42', '2022-12-01 15:51:23'),
(6, 'Insya Allah 2', 'Cepat Keluarkan lagu baru', '2022-12-01 15:47:58', '2022-12-01 15:51:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `nama`, `username`, `password`, `level`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Febrian', 'febrian', 'admin', 'Admin', NULL, '2022-11-28 12:22:17', '2022-11-28 12:22:17'),
(2, 'Febi', 'febi', 'febi', 'Uploader', NULL, '2022-11-28 12:22:36', '2022-11-28 12:22:36');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `band`
--
ALTER TABLE `band`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `favorit`
--
ALTER TABLE `favorit`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `musik`
--
ALTER TABLE `musik`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `saran`
--
ALTER TABLE `saran`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_password_unique` (`password`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `band`
--
ALTER TABLE `band`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `favorit`
--
ALTER TABLE `favorit`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `musik`
--
ALTER TABLE `musik`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `saran`
--
ALTER TABLE `saran`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
