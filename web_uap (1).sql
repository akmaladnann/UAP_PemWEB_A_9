-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Jun 2024 pada 04.52
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_uap`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `adminn`
--

CREATE TABLE `adminn` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `adminn`
--

INSERT INTO `adminn` (`id`, `email`, `username`, `password`) VALUES
(1, 'user@gmail.com', 'user', 'user123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku_agenda`
--

CREATE TABLE `buku_agenda` (
  `id` int(11) NOT NULL,
  `nomor_agenda` varchar(50) NOT NULL,
  `deskripsi` varchar(100) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `buku_agenda`
--

INSERT INTO `buku_agenda` (`id`, `nomor_agenda`, `deskripsi`, `tanggal`) VALUES
(6, '123/abc/321', 'oke', '2024-06-12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `referensi`
--

CREATE TABLE `referensi` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `tahun` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `referensi`
--

INSERT INTO `referensi` (`id`, `judul`, `penulis`, `tahun`) VALUES
(1, 'Judul 1', 'penulis 1', '2002'),
(2, 'Judul 2', 'penulis 2', '2022');

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_keluar_yang_ditambah`
--

CREATE TABLE `surat_keluar_yang_ditambah` (
  `id` int(11) NOT NULL,
  `nomor_surat` varchar(255) NOT NULL,
  `pengirim` varchar(255) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `surat_keluar_yang_ditambah`
--

INSERT INTO `surat_keluar_yang_ditambah` (`id`, `nomor_surat`, `pengirim`, `tanggal`) VALUES
(4, '123/abc/321', 'nama', '2024-06-09'),
(6, '123/bcd/321', 'pengirim', '2024-06-12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_yang_ditambah`
--

CREATE TABLE `surat_yang_ditambah` (
  `id` int(11) NOT NULL,
  `nomor_surat` varchar(50) NOT NULL,
  `pengirim` varchar(100) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `surat_yang_ditambah`
--

INSERT INTO `surat_yang_ditambah` (`id`, `nomor_surat`, `pengirim`, `tanggal`) VALUES
(4, '123/abc/321', 'nama', '2024-06-09'),
(5, '123/abc/321', 'nama', '2024-06-09'),
(7, '123/bcd/321', 'pengirim', '2024-06-12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_galeri`
--

CREATE TABLE `tbl_galeri` (
  `id` int(11) NOT NULL,
  `nama_file` varchar(255) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `file_path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(11) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `adminn`
--
ALTER TABLE `adminn`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `buku_agenda`
--
ALTER TABLE `buku_agenda`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `referensi`
--
ALTER TABLE `referensi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `surat_keluar_yang_ditambah`
--
ALTER TABLE `surat_keluar_yang_ditambah`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `surat_yang_ditambah`
--
ALTER TABLE `surat_yang_ditambah`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `adminn`
--
ALTER TABLE `adminn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `buku_agenda`
--
ALTER TABLE `buku_agenda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `referensi`
--
ALTER TABLE `referensi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `surat_keluar_yang_ditambah`
--
ALTER TABLE `surat_keluar_yang_ditambah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `surat_yang_ditambah`
--
ALTER TABLE `surat_yang_ditambah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
