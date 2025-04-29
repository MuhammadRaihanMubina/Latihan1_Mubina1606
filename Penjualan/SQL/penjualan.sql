-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Apr 2025 pada 15.08
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penjualan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `KODE BARANG` varchar(25) NOT NULL,
  `NAMA BARANG` varchar(225) NOT NULL,
  `JENIS` varchar(15) NOT NULL,
  `HARGA BELI` int(255) NOT NULL,
  `HARGA JUAL` int(255) NOT NULL,
  `STOK` int(100) NOT NULL,
  `GUDANG` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`KODE BARANG`, `NAMA BARANG`, `JENIS`, `HARGA BELI`, `HARGA JUAL`, `STOK`, `GUDANG`) VALUES
('123', 'awo', 'Makanan', 12000, 13000, 12, 'Basah'),
('6464', 'ayam', 'Makanan', 10000, 11000, 10, ''),
('BRG00005', 'Es Jeruk', 'Minuman', 8000, 10000, 0, ''),
('BRG0001', 'BAKSO', 'Makanan', 12000, 15000, 0, ''),
('BRG0002', 'TEH BOTOL', 'Minuman', 6000, 10000, 0, ''),
('BRG0003', 'Mie Ayam', 'Makanan', 13000, 16000, 0, ''),
('brg007', 'geprek gondes', 'Makanan', 20000, 27000, 0, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kasir`
--

CREATE TABLE `kasir` (
  `id_kasir` varchar(6) NOT NULL,
  `nama_kasir` varchar(25) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `no_telepon` varchar(20) NOT NULL,
  `agama` varchar(15) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kasir`
--

INSERT INTO `kasir` (`id_kasir`, `nama_kasir`, `jenis_kelamin`, `no_telepon`, `agama`, `alamat`, `password`) VALUES
('DK0001', 'M.Raihan Mubina', 'Laki-Laki', '081312341234', 'Islam', 'Jakarta', '1234');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id` varchar(6) NOT NULL,
  `nmplgn` varchar(25) NOT NULL,
  `jenis` varchar(20) NOT NULL,
  `telepon` varchar(20) NOT NULL,
  `alamat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`id`, `nmplgn`, `jenis`, `telepon`, `alamat`) VALUES
('ID0001', 'M.Raihan Mubina', 'Laki-Laki', '08134561234', 'Jakarta');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`KODE BARANG`);

--
-- Indeks untuk tabel `kasir`
--
ALTER TABLE `kasir`
  ADD PRIMARY KEY (`id_kasir`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
