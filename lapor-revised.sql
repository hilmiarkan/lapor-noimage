-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 03, 2023 at 08:19 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lapor-revised`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `content` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `laporan_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `content`, `created_at`, `user_id`, `laporan_id`) VALUES
(1, 'ini contoh komentar panjang jangan ditiru, ngapain komen panjang panajang ya? oiya pengen liat ae layout e jadi gimana di ui nya', '2023-06-06 18:09:17', 17, 9),
(2, 'komen', '2023-06-06 23:24:19', 9, 9),
(3, 'komen', '2023-06-06 23:24:21', 9, 9),
(4, 'mantapp siok ya allah', '2023-06-06 23:25:53', 9, 9),
(8, 'oke utiwi', '2023-06-06 23:39:37', 8, 1),
(9, 'tes', '2023-06-06 23:40:11', 8, 1),
(10, 'p gimana?', '2023-06-06 23:42:12', 15, 5),
(11, 'haloow', '2023-06-06 23:42:26', 15, 5),
(12, 'ada kelanjutan ga?', '2023-06-06 23:42:31', 15, 5),
(13, 'wenakk', '2023-06-06 23:43:45', 17, 9),
(14, 'tolong gan', '2023-06-06 23:44:52', 18, 10),
(15, 'p balap', '2023-06-06 23:45:10', 17, 9),
(16, 'tes', '2023-06-06 23:46:25', 18, 10),
(17, 'ygtkts', '2023-06-06 23:49:15', 18, 10),
(18, 'yntkts', '2023-06-06 23:52:23', 7, 10),
(19, 'wkwkwk', '2023-06-06 23:52:30', 7, 10),
(20, 'piye lo maksud mu', '2023-06-06 23:52:38', 7, 10),
(21, 'la piye lo pak', '2023-06-06 23:52:52', 17, 10),
(22, 'pean pejabat e og', '2023-06-06 23:52:59', 17, 10),
(23, 'gaada', '2023-06-06 23:57:04', 17, 5),
(24, 'gambaran ku dengan mu', '2023-06-14 03:13:48', 10, 11),
(25, 'maksudmu lo pak', '2023-06-14 03:14:06', 8, 11),
(26, '🤣', '2023-06-14 03:15:03', 18, 11),
(27, 'p', '2023-11-29 13:15:04', 18, 11),
(28, 'kj', '2023-11-29 13:19:24', 8, 1),
(29, 'halo', '2023-12-04 02:03:55', 20, 11),
(30, 'okee', '2023-12-04 02:04:09', 20, 9),
(31, 'ok', '2023-12-04 02:07:55', 7, 12),
(32, 'tks', '2023-12-04 02:08:43', 20, 12),
(33, 'fff', '2023-12-04 02:13:27', 20, 13);

-- --------------------------------------------------------

--
-- Table structure for table `instansi`
--

CREATE TABLE `instansi` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `instansi`
--

INSERT INTO `instansi` (`id`, `name`, `user_id`) VALUES
(1, 'Dinas Pekerjaan Umum Kota Malang', 7),
(2, 'Dinas Perhubungan Kab. Blora', 10);

-- --------------------------------------------------------

--
-- Table structure for table `laporan`
--

CREATE TABLE `laporan` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `is_anonymous` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` enum('diverifikasi','ditindaklanjuti','selesai') NOT NULL,
  `user_id` int(11) NOT NULL,
  `instansi_id` int(11) DEFAULT NULL,
  `imagepath` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `laporan`
--

INSERT INTO `laporan` (`id`, `title`, `content`, `is_anonymous`, `created_at`, `updated_at`, `status`, `user_id`, `instansi_id`, `imagepath`) VALUES
(1, 'jalan berlubang arah ke uin', 'tolong ditindak lanjuti saya dari arah gasek kalo kuliah telat terus, sudah ganti ban depan 100 kali', 0, '2023-06-03 21:14:25', '2023-06-03 21:14:25', 'selesai', 8, 1, ''),
(2, 'Saya tidak mendapatkan BLT', 'dana blt saya dikorupsi perut saya sendiri hehe saya belikan tahutelor', 1, '2023-06-03 22:08:26', '2023-06-03 22:08:26', 'ditindaklanjuti', 9, 2, ''),
(3, 'sd', 'sd', 0, '2023-06-04 20:37:34', '2023-06-04 20:37:34', 'ditindaklanjuti', 17, 2, ''),
(4, 'alhamdulillah isokkk', 'wkwkwk', 1, '2023-06-04 20:37:54', '2023-06-04 20:37:54', 'ditindaklanjuti', 17, 1, ''),
(5, 'saya kenapa gaboleh ngundang ganjar', 'why', 0, '2023-06-04 21:55:52', '2023-06-04 21:55:52', 'diverifikasi', 15, NULL, ''),
(6, 'Lindungi anak Anda dr konten internet berbahaya. ', 'Download app SAFE, pemantau aktivitas internet & lokasi anak, Free di http://tsel.me/safe3 skrg.Info:188 - SKB', 0, '2023-06-04 21:56:51', '2023-06-04 21:56:51', 'diverifikasi', 15, NULL, ''),
(7, 'tes anonim', 'gatau nama saya kan', 1, '2023-06-04 21:57:05', '2023-06-04 21:57:05', 'ditindaklanjuti', 15, 1, ''),
(8, 'jalan bocor', 'di malang', 0, '2023-06-06 07:40:39', '2023-06-06 07:40:39', 'ditindaklanjuti', 17, 1, ''),
(9, 'alhamdulillah ISO!!!!', 'gokil', 0, '2023-06-06 09:32:13', '2023-06-06 09:32:13', 'selesai', 17, NULL, ''),
(10, 'gelas pecah', 'gimana cara benerin', 0, '2023-06-06 23:44:34', '2023-06-06 23:44:34', 'ditindaklanjuti', 18, 1, ''),
(11, 'tebak gambar', 'gambar apa ini?', 0, '2023-06-14 03:08:21', '2023-06-14 03:08:21', 'ditindaklanjuti', 8, 2, 'uploads/cat pulling two sweater.jpeg'),
(12, 'ffff', 'dddd', 0, '2023-12-04 02:06:00', '2023-12-04 02:06:00', 'selesai', 20, 1, NULL),
(13, 'ini anonim', 'aaaaa', 1, '2023-12-04 02:06:53', '2023-12-04 02:06:53', 'diverifikasi', 20, NULL, NULL),
(14, 'ggg', 'cccc', 0, '2023-12-04 02:13:34', '2023-12-04 02:13:34', 'diverifikasi', 20, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `usertype` enum('masyarakat','instansi','admin') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `name`, `password`, `usertype`) VALUES
(6, 'admin@lapor.go.id', 'Admin Lapor', 'admin', 'admin'),
(7, 'sutiaji@malangkota.go.id', 'Sutiaji', 'sutiaji', 'instansi'),
(8, 'hilmi@gmail.com', 'Hilmi', 'hilmi', 'masyarakat'),
(9, 'arkan@gmail.com', 'Arkan', 'arkan', 'masyarakat'),
(10, 'arief@blorakab.go.id', 'Arief Rohman', 'arief', 'instansi'),
(12, 'maulanahelmy7@gmail.com', 'Hilmi Arkan', 'maulana1', 'masyarakat'),
(13, 'test@test.com', 'Testing', 'testing', 'masyarakat'),
(14, 'hai@gmail.com', 'John Seed', 'johnseed', 'masyarakat'),
(15, 'botak@ctd.com', 'Deddy Corbuzier', 'botak', 'masyarakat'),
(16, 'sd@g', 'sd', 'sd', 'masyarakat'),
(17, 'hil@mi', 'Helmi Arkan', 'hilmi', 'masyarakat'),
(18, 'fahma@mail.ye', 'Fahma Sah', 'fahma', 'masyarakat'),
(19, 'as@a', 'a', 'a', 'masyarakat'),
(20, 'david@ahoy.com', 'david david', 'david', 'masyarakat');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `laporan_id` (`laporan_id`);

--
-- Indexes for table `instansi`
--
ALTER TABLE `instansi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `laporan`
--
ALTER TABLE `laporan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `instansi_id` (`instansi_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `instansi`
--
ALTER TABLE `instansi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `laporan`
--
ALTER TABLE `laporan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`laporan_id`) REFERENCES `laporan` (`id`);

--
-- Constraints for table `instansi`
--
ALTER TABLE `instansi`
  ADD CONSTRAINT `instansi_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `laporan`
--
ALTER TABLE `laporan`
  ADD CONSTRAINT `laporan_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `laporan_ibfk_2` FOREIGN KEY (`instansi_id`) REFERENCES `instansi` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
