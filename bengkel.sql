-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Jan 2023 pada 11.53
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kopishop`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_transaksi`
--

CREATE TABLE `detail_transaksi` (
  `id_detail_transaksi` int(11) NOT NULL,
  `id_transaksi` int(11) DEFAULT NULL,
  `id_produk` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `subtotal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `detail_transaksi`
--

INSERT INTO `detail_transaksi` (`id_detail_transaksi`, `id_transaksi`, `id_produk`, `qty`, `subtotal`) VALUES
(6, 6, 3, 2, 60000),
(7, 7, 4, 3, 120000),
(9, 9, 1, 2, 20000),
(11, 11, 1, 1, 10000),
(12, 12, 1, 1, 10000),
(13, 13, 1, 1, 10000),
(14, 14, 1, 1, 10000),
(15, 15, 1, 1, 10000),
(16, 16, 23, 1, 125000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama_pelanggan` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `telp` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `foto_pelanggan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama_pelanggan`, `username`, `alamat`, `telp`, `password`, `foto_pelanggan`) VALUES
(1, 'Intan Putri', 'putrintun', 'Jl. Lembayung VII', '081234567890', '827ccb0eea8a706c4c34a16891f84e7b', 'PELANGGAN 1.jpg'),
(2, 'Dimas Bahari', 'dimsantoso', 'Jl. Bayam IV', '081234567890', '827ccb0eea8a706c4c34a16891f84e7b', 'PELANGGAN 2.jpg'),
(3, 'Raka Pratama', 'raktama', 'Jl. Ambarawa V', '081234567890', '827ccb0eea8a706c4c34a16891f84e7b', 'PELANGGAN 3.jpg'),
(12, 'George Marlissa', 'Jorz', 'Jl. S. Mambramo', '082236358060', 'aaaad3ee4d5dd668ca112f55ad814dec', 'bIDuvBP.jpg'),
(13, 'George Marlissa', 'Jorz', 'asfs', '082199256040', 'aa08769cdcb26674c6706093503ff0a3', 'IMG_20200101_165127.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(11) NOT NULL,
  `id_transaksi` int(11) NOT NULL,
  `tgl_pembayaran` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `id_transaksi`, `tgl_pembayaran`) VALUES
(3, 6, '2021-10-31'),
(4, 7, '2021-10-31'),
(5, 11, '2022-11-17'),
(6, 9, '2022-11-18'),
(7, 16, '2023-01-24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(11) NOT NULL,
  `nama_petugas` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `level` varchar(100) DEFAULT NULL,
  `foto_petugas` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `nama_petugas`, `username`, `password`, `level`, `foto_petugas`) VALUES
(1, 'Andi', 'Andi', '21232f297a57a5a743894a0e4a801fc3', 'T', 'PETUGAS 1.jpg'),
(2, 'Shafira Virda', 'rameyputri', '21232f297a57a5a743894a0e4a801fc3', '0', 'PETUGAS 2.jpg'),
(3, 'Anna Ambarwati', 'annati', '827ccb0eea8a706c4c34a16891f84e7b', 'T', 'PETUGAS 3.jpg'),
(14, 'George Marlissa', 'Jorz', '21232f297a57a5a743894a0e4a801fc3', 'T', 'Untitled.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(100) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `foto_produk` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `deskripsi`, `harga`, `foto_produk`) VALUES
(23, 'GEAR SUPRA', 'Gear khusus motor jadul', 125000, 'gir supra 125.jpeg'),
(24, 'Kaca spion bulat', 'kaca spion berkualitas', 500000, 'kaca spion bulat karbon.jpeg'),
(25, 'Kampas rem depan', 'kampas', 30000, 'kampas rem depan N-mex.jpg'),
(26, 'Kampas rem belakang', 'kampas', 30000, 'KAMPAS_REM_BELAKANG_HONDA_VARIO_125_BEAT_SPACY_ORI.jpg'),
(27, 'Lampu honda', 'bagus berkualitas', 70000, 'lampu honda beat-f1.jpeg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_pelanggan` int(11) DEFAULT NULL,
  `id_petugas` int(11) DEFAULT NULL,
  `tgl_transaksi` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_pelanggan`, `id_petugas`, `tgl_transaksi`) VALUES
(6, 1, 2, '2021-10-31'),
(7, 1, 1, '2021-10-31'),
(9, 11, 2, '2021-10-31'),
(11, 12, 1, '2022-11-17'),
(12, 12, 1, '2022-11-18'),
(13, 12, 1, '2022-11-18'),
(14, 12, 1, '2022-11-18'),
(15, 12, 1, '2022-11-18'),
(16, 13, 1, '2023-01-24');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD PRIMARY KEY (`id_detail_transaksi`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`);

--
-- Indeks untuk tabel `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  MODIFY `id_detail_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id_petugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
