-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2020 at 05:23 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `strawbeli`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(2, 'Toko'),
(1, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_group_permissions`
--

INSERT INTO `auth_group_permissions` (`id`, `group_id`, `permission_id`) VALUES
(5, 1, 28),
(1, 1, 32),
(2, 1, 36),
(3, 1, 40),
(4, 1, 44);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add galeri', 7, 'add_galeri'),
(26, 'Can change galeri', 7, 'change_galeri'),
(27, 'Can delete galeri', 7, 'delete_galeri'),
(28, 'Can view galeri', 7, 'view_galeri'),
(29, 'Can add link_galeri', 8, 'add_link_galeri'),
(30, 'Can change link_galeri', 8, 'change_link_galeri'),
(31, 'Can delete link_galeri', 8, 'delete_link_galeri'),
(32, 'Can view link_galeri', 8, 'view_link_galeri'),
(33, 'Can add destinasi', 9, 'add_destinasi'),
(34, 'Can change destinasi', 9, 'change_destinasi'),
(35, 'Can delete destinasi', 9, 'delete_destinasi'),
(36, 'Can view destinasi', 9, 'view_destinasi'),
(37, 'Can add langkah', 10, 'add_langkah'),
(38, 'Can change langkah', 10, 'change_langkah'),
(39, 'Can delete langkah', 10, 'delete_langkah'),
(40, 'Can view langkah', 10, 'view_langkah'),
(41, 'Can add gambar_langkah', 11, 'add_gambar_langkah'),
(42, 'Can change gambar_langkah', 11, 'change_gambar_langkah'),
(43, 'Can delete gambar_langkah', 11, 'delete_gambar_langkah'),
(44, 'Can view gambar_langkah', 11, 'view_gambar_langkah'),
(45, 'Can add dagangan', 12, 'add_dagangan'),
(46, 'Can change dagangan', 12, 'change_dagangan'),
(47, 'Can delete dagangan', 12, 'delete_dagangan'),
(48, 'Can view dagangan', 12, 'view_dagangan'),
(49, 'Can add keranjang', 13, 'add_keranjang'),
(50, 'Can change keranjang', 13, 'change_keranjang'),
(51, 'Can delete keranjang', 13, 'delete_keranjang'),
(52, 'Can view keranjang', 13, 'view_keranjang'),
(53, 'Can add order', 14, 'add_order'),
(54, 'Can change order', 14, 'change_order'),
(55, 'Can delete order', 14, 'delete_order'),
(56, 'Can view order', 14, 'view_order'),
(57, 'Can add daftar forum', 15, 'add_daftarforum'),
(58, 'Can change daftar forum', 15, 'change_daftarforum'),
(59, 'Can delete daftar forum', 15, 'delete_daftarforum'),
(60, 'Can view daftar forum', 15, 'view_daftarforum');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$180000$UM1rnAQCaBzm$13Xsda/qT26fPMBU827JfpeFJCKP0H+RPlYCL6DT9ZY=', '2020-06-07 15:07:34.503780', 1, 'admin', '', '', 'sinjiru2000@hotmail.com', 1, 1, '2020-05-31 09:30:41.428045'),
(6, 'pbkdf2_sha256$180000$Bu7SwqmGbMK0$WayG44z7jIMsb/MgC9CDI8Tj219OXHiHVCG+fR2VzUU=', '2020-06-07 13:41:27.009304', 0, 'pembeli1', '', '', '', 0, 1, '2020-06-07 10:12:11.200977'),
(7, 'pbkdf2_sha256$180000$mixKpj91mAGQ$e69oUcMEmqyQy6ThCNrcl5P/rQk/Ebidew58P2yBmHU=', NULL, 0, 'penjual1', '', '', '', 0, 1, '2020-06-07 10:12:32.421311'),
(8, 'pbkdf2_sha256$180000$oEsH8qBXxS1z$wm9JThMjop01UiggFGhfyuc7xmkG4+CYi+eAnR1ZvSA=', '2020-06-07 11:43:00.515526', 0, 'pembeli2', 'Sayang', 'Mama', 'pembeli2@yahoo.com', 0, 1, '2020-06-07 11:42:46.359099');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `destinations_destinasi`
--

CREATE TABLE `destinations_destinasi` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` longtext NOT NULL,
  `htm` int(11) NOT NULL,
  `jambuka` longtext NOT NULL,
  `fasilitas` longtext NOT NULL,
  `deskripsi` longtext DEFAULT NULL,
  `maplink` longtext NOT NULL,
  `thumbnail` longtext NOT NULL,
  `weblink` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `destinations_destinasi`
--

INSERT INTO `destinations_destinasi` (`id`, `nama`, `alamat`, `htm`, `jambuka`, `fasilitas`, `deskripsi`, `maplink`, `thumbnail`, `weblink`) VALUES
(1, 'Kusuma Agrowisata', 'Jl. Abdul Gani Atas, Ngaglik, Kecamatan Batu, Kota Batu, Jawa Timur 65311', 25000, 'Setiap hari Pk. 09.00 - Pk. 16.00', 'Hotel, WC, Rest Area, petik jambu, petik strawberry, petik jeruk, petik apel, petik buah naga, waterpark, air softgun, motor cross fun ride, Komodo car, flying fox, mushola, restaurant, shopping area.', 'HTM IDR 25.000 - IDR 135.000', 'https://maps.google.com/maps?q=kusuma%20agrowisata&t=&z=15&ie=UTF8&iwloc=&output=embed', '/galeri/images/dest001/main.jpg', '<a href=\"#\"></a>'),
(2, 'Petik Strawberry Pak Paeru', 'Pandanrejo, Bumiaji, RT.01 / RW.09 Kota Batu, Jawa Timur 65332', 15000, 'Setiap Hari Pk. 08.00 - Pk. 16.00', 'Rest Area, kolam renang, kamar ganti, mushola, WC, arung jeram.', 'HTM IDR 15.000 - IDR 25.000', 'https://maps.google.com/maps?q=kebun%20pak%20paeru&t=&z=15&ie=UTF8&iwloc=&output=embed', '/galeri/images/dest002/main.jpg', '<a href=\"#\"></a>'),
(3, 'Strawberry Pujon Paralayang', 'Jurangrejo, Pandesari. Kecamatan Pujon, Malang, Jawa Timur. 65391', 35000, 'Setiap hari Pk. 08.00 - Pk. 17.00', 'kamar mandi umum, area istirahat, petik strawberry, area parkir, ruko makanan & aksesoris, mushola, restoran, area tempat foto.', '-', 'https://maps.google.com/maps?q=tourism%20strawberry%20gardens%20paragliding&t=&z=15&ie=UTF8&iwloc=&output=embed', '/galeri/images/dest003/main.jpg', '<a href=\"#\"></a>'),
(4, 'Strawberry Organic Garden - Purnama Hotel', 'Jl. Raya Selecta No.1-15, Punten, Kecamatan Bumiaji. Kota Batu, Jawa Timur. 65151', 25000, 'Setiap hari Pk. 08.00 - Pk. 18.00', 'Hotel, WC, area istirahat, area parkir, tempat makan, area petik apel, jogging track, tempat penimbang dan pembuatan jus.', 'HTM IDR 25.000 (strawberry 1 ons + jus strawberry) Tamu hotel gratis HTM', 'https://maps.google.com/maps?q=hotel%20purnama%20malang&t=&z=15&ie=UTF8&iwloc=&output=embed', '/galeri/images/dest004/main.jpg', '<a href=\"#\"></a>'),
(5, 'Gussari Strawberry Highland Pujon Malang', 'Jurangrejo Pandesari, Kecamatan Pujon, Malang, Jawa Timur. 65391', 15000, 'Setiap hari Pk. 08.00 - Pk. 17.00', 'area petik, tempat foto, area taman langit, tempat makan, kendang kelinci, WC, rest area, parking area.', '-', 'https://maps.google.com/maps?q=strawberry%20highland%20malang&t=&z=15&ie=UTF8&iwloc=&output=embed', '/galeri/images/dest005/main.jpg', '<a href=\"#\"></a>');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-05-31 09:34:13.865075', '1', 'Kusuma Agrowisata - Halaman depan', 1, '[{\"added\": {}}]', 7, 1),
(2, '2020-05-31 09:35:02.465502', '2', 'Kusuma Agrowisata - Kamar Hotel', 1, '[{\"added\": {}}]', 7, 1),
(3, '2020-05-31 09:35:34.198899', '3', 'Kusuma Agrowisata - Halaman dalam', 1, '[{\"added\": {}}]', 7, 1),
(4, '2020-05-31 09:35:52.511692', '4', 'Kusuma Agrowisata - Halaman dalam', 1, '[{\"added\": {}}]', 7, 1),
(5, '2020-05-31 09:36:44.059538', '4', 'Kusuma Agrowisata - Halaman dalam', 3, '', 7, 1),
(6, '2020-05-31 09:45:40.258058', '5', 'Petik Strawberry Pak Paeru - Kebun', 1, '[{\"added\": {}}]', 7, 1),
(7, '2020-05-31 09:46:03.661987', '6', 'Petik Strawberry Pak Paeru - Kebun dalam', 1, '[{\"added\": {}}]', 7, 1),
(8, '2020-05-31 09:46:33.930915', '7', 'Petik Strawberry Pak Paeru - Arung Jeram', 1, '[{\"added\": {}}]', 7, 1),
(9, '2020-05-31 09:48:32.822033', '8', 'Strawberry Pujon Paralayang - Halaman depan', 1, '[{\"added\": {}}]', 7, 1),
(10, '2020-05-31 09:48:54.489301', '9', 'Strawberry Pujon Paralayang - Halaman dalam', 1, '[{\"added\": {}}]', 7, 1),
(11, '2020-05-31 09:49:34.636754', '10', 'Strawberry Organic Garden - Purnama Hotel - Kebun', 1, '[{\"added\": {}}]', 7, 1),
(12, '2020-05-31 09:49:57.016488', '11', 'Strawberry Organic Garden - Purnama Hotel - Gapura Kebun', 1, '[{\"added\": {}}]', 7, 1),
(13, '2020-05-31 09:50:17.455297', '12', 'Strawberry Organic Garden - Purnama Hotel - Taman Hotel', 1, '[{\"added\": {}}]', 7, 1),
(14, '2020-05-31 09:50:49.859686', '13', 'Gussari Strawberry Highland Pujon Malang - Halaman depan', 1, '[{\"added\": {}}]', 7, 1),
(15, '2020-05-31 09:51:22.351900', '14', 'Gussari Strawberry Highland Pujon Malang - Kebun dalam', 1, '[{\"added\": {}}]', 7, 1),
(16, '2020-05-31 09:51:36.332496', '15', 'Gussari Strawberry Highland Pujon Malang - Kebun dalam', 1, '[{\"added\": {}}]', 7, 1),
(17, '2020-05-31 10:22:01.443358', '5', 'Petik Strawberry Pak Paeru - Halaman depan', 2, '[{\"changed\": {\"fields\": [\"Lokasi\"]}}]', 7, 1),
(18, '2020-05-31 10:22:22.129873', '10', 'Strawberry Organic Garden - Purnama Hotel - Halaman depan', 2, '[{\"changed\": {\"fields\": [\"Lokasi\"]}}]', 7, 1),
(19, '2020-05-31 10:29:56.102546', '1', 'Kusuma Agrowisata', 1, '[{\"added\": {}}]', 8, 1),
(20, '2020-05-31 10:30:06.278987', '2', 'Petik Strawberry Pak Paeru', 1, '[{\"added\": {}}]', 8, 1),
(21, '2020-05-31 10:30:16.550198', '3', 'Strawberry Pujon Paralayang', 1, '[{\"added\": {}}]', 8, 1),
(22, '2020-05-31 10:30:28.161825', '4', 'Strawberry Organic Garden - Purnama Hotel', 1, '[{\"added\": {}}]', 8, 1),
(23, '2020-05-31 10:30:31.432651', '4', 'Strawberry Organic Garden - Purnama Hotel', 2, '[]', 8, 1),
(24, '2020-05-31 10:30:44.096840', '5', 'Gussari Strawberry Highland Pujon Malang', 1, '[{\"added\": {}}]', 8, 1),
(25, '2020-05-31 10:55:16.278852', '2', 'Kusuma Agrowisata - Kamar Hotel', 2, '[{\"changed\": {\"fields\": [\"Link360\"]}}]', 7, 1),
(26, '2020-05-31 11:10:08.355347', '5', 'Gussari Strawberry Highland Pujon Malang', 3, '', 8, 1),
(27, '2020-05-31 11:10:08.360347', '4', 'Strawberry Organic Garden - Purnama Hotel', 3, '', 8, 1),
(28, '2020-05-31 11:10:08.364350', '3', 'Strawberry Pujon Paralayang', 3, '', 8, 1),
(29, '2020-05-31 11:10:08.368349', '2', 'Petik Strawberry Pak Paeru', 3, '', 8, 1),
(30, '2020-05-31 11:10:08.372352', '1', 'Kusuma Agrowisata', 3, '', 8, 1),
(31, '2020-05-31 11:10:32.897529', '1', 'Kusuma Agrowisata - Halaman depan', 2, '[{\"changed\": {\"fields\": [\"Tag\"]}}]', 7, 1),
(32, '2020-05-31 11:10:40.896555', '5', 'Petik Strawberry Pak Paeru - Halaman depan', 2, '[{\"changed\": {\"fields\": [\"Tag\"]}}]', 7, 1),
(33, '2020-05-31 11:15:26.070863', '1', 'Kusuma Agrowisata - Halaman depan', 2, '[]', 7, 1),
(34, '2020-05-31 11:15:38.261948', '8', 'Strawberry Pujon Paralayang - Halaman depan', 2, '[{\"changed\": {\"fields\": [\"Tag\"]}}]', 7, 1),
(35, '2020-05-31 11:16:10.601010', '10', 'Strawberry Organic Garden - Purnama Hotel - Halaman depan', 2, '[{\"changed\": {\"fields\": [\"Tag\"]}}]', 7, 1),
(36, '2020-05-31 11:16:17.622825', '13', 'Gussari Strawberry Highland Pujon Malang - Halaman depan', 2, '[{\"changed\": {\"fields\": [\"Tag\"]}}]', 7, 1),
(37, '2020-05-31 15:23:24.417660', '1', '1 - Kusuma Agrowisata', 1, '[{\"added\": {}}]', 9, 1),
(38, '2020-05-31 15:30:05.837997', '2', '2 - Petik Strawberry Pak Paeru', 1, '[{\"added\": {}}]', 9, 1),
(39, '2020-05-31 15:35:52.829123', '3', '3 - Strawberry Pujon Paralayang', 1, '[{\"added\": {}}]', 9, 1),
(40, '2020-05-31 15:37:13.288974', '4', '4 - Strawberry Organic Garden - Purnama Hotel', 1, '[{\"added\": {}}]', 9, 1),
(41, '2020-05-31 15:38:14.559860', '5', '5 - Gussari Strawberry Highland Pujon Malang', 1, '[{\"added\": {}}]', 9, 1),
(42, '2020-05-31 16:13:37.122920', '1', '1 - Kusuma Agrowisata', 2, '[{\"changed\": {\"fields\": [\"Maplink\"]}}]', 9, 1),
(43, '2020-05-31 16:14:05.570982', '2', '2 - Petik Strawberry Pak Paeru', 2, '[{\"changed\": {\"fields\": [\"Maplink\"]}}]', 9, 1),
(44, '2020-05-31 16:14:24.495021', '3', '3 - Strawberry Pujon Paralayang', 2, '[{\"changed\": {\"fields\": [\"Maplink\"]}}]', 9, 1),
(45, '2020-05-31 16:14:36.035986', '4', '4 - Strawberry Organic Garden - Purnama Hotel', 2, '[{\"changed\": {\"fields\": [\"Maplink\"]}}]', 9, 1),
(46, '2020-05-31 16:14:57.493576', '5', '5 - Gussari Strawberry Highland Pujon Malang', 2, '[{\"changed\": {\"fields\": [\"Maplink\"]}}]', 9, 1),
(47, '2020-05-31 16:17:07.608458', '3', '3 - Strawberry Pujon Paralayang', 2, '[{\"changed\": {\"fields\": [\"Maplink\"]}}]', 9, 1),
(48, '2020-05-31 16:20:42.768060', '3', '3 - Strawberry Pujon Paralayang', 2, '[{\"changed\": {\"fields\": [\"Maplink\"]}}]', 9, 1),
(49, '2020-05-31 16:21:38.430143', '3', '3 - Strawberry Pujon Paralayang', 2, '[{\"changed\": {\"fields\": [\"Maplink\"]}}]', 9, 1),
(50, '2020-05-31 16:22:11.607003', '3', '3 - Strawberry Pujon Paralayang', 2, '[{\"changed\": {\"fields\": [\"Deskripsi\"]}}]', 9, 1),
(51, '2020-05-31 16:22:57.884577', '5', '5 - Gussari Strawberry Highland Pujon Malang', 2, '[{\"changed\": {\"fields\": [\"Deskripsi\"]}}]', 9, 1),
(52, '2020-05-31 16:58:49.497536', '1', 'langkah object (1)', 1, '[{\"added\": {}}]', 10, 1),
(53, '2020-05-31 17:01:34.893213', '1', '1. Disclaimer', 3, '', 10, 1),
(54, '2020-05-31 17:02:52.204281', '2', '2. Disclaimer', 1, '[{\"added\": {}}]', 10, 1),
(55, '2020-05-31 17:08:17.612287', '3', '3. Perlengkapan', 1, '[{\"added\": {}}]', 10, 1),
(56, '2020-05-31 17:09:27.530131', '3', '3. Perlengkapan', 2, '[{\"changed\": {\"fields\": [\"Konten\"]}}]', 10, 1),
(57, '2020-05-31 17:12:18.317112', '4', '4. Media Tanam', 1, '[{\"added\": {}}]', 10, 1),
(58, '2020-05-31 17:13:45.935408', '5', '5. Hal Penyiraman', 1, '[{\"added\": {}}]', 10, 1),
(59, '2020-05-31 17:14:55.752565', '6', '6. Perawatan Tanaman', 1, '[{\"added\": {}}]', 10, 1),
(60, '2020-05-31 17:16:04.876312', '7', '7. Hama', 1, '[{\"added\": {}}]', 10, 1),
(61, '2020-05-31 17:17:30.243029', '8', '8. Pemupukan', 1, '[{\"added\": {}}]', 10, 1),
(62, '2020-05-31 17:18:35.355585', '9', '9. Perempelan', 1, '[{\"added\": {}}]', 10, 1),
(63, '2020-05-31 17:20:24.016306', '10', '10. Pemberian Hormon', 1, '[{\"added\": {}}]', 10, 1),
(64, '2020-05-31 17:21:40.884728', '11', '11. Pendangiran', 1, '[{\"added\": {}}]', 10, 1),
(65, '2020-05-31 17:22:41.177099', '12', '12. Panen', 1, '[{\"added\": {}}]', 10, 1),
(66, '2020-05-31 17:24:46.889348', '1', 'langkah 2. Perlengkapan id 1', 1, '[{\"added\": {}}]', 11, 1),
(67, '2020-05-31 17:25:05.596000', '2', 'langkah 2. Perlengkapan id 2', 1, '[{\"added\": {}}]', 11, 1),
(68, '2020-05-31 17:25:33.638938', '3', 'langkah 2. Perlengkapan id 3', 1, '[{\"added\": {}}]', 11, 1),
(69, '2020-05-31 17:25:53.069108', '4', 'langkah 2. Perlengkapan id 4', 1, '[{\"added\": {}}]', 11, 1),
(70, '2020-05-31 17:26:43.698504', '5', 'langkah 10. Pendangiran id 5', 1, '[{\"added\": {}}]', 11, 1),
(71, '2020-05-31 17:27:15.064977', '6', 'langkah 10. Pendangiran id 6', 1, '[{\"added\": {}}]', 11, 1),
(72, '2020-06-03 08:38:27.535181', '1', 'User', 1, '[{\"added\": {}}]', 3, 1),
(73, '2020-06-03 08:44:35.279069', '2', 'Shop', 1, '[{\"added\": {}}]', 3, 1),
(74, '2020-06-06 17:36:13.848252', '2', 'sinjiru', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 1),
(75, '2020-06-06 18:26:42.579370', '2', 'Toko', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 3, 1),
(76, '2020-06-06 18:27:04.044771', '5', 'akun1', 3, '', 4, 1),
(77, '2020-06-06 18:27:04.049769', '3', 'anak1', 3, '', 4, 1),
(78, '2020-06-06 18:27:04.052841', '4', 'anak2', 3, '', 4, 1),
(79, '2020-06-06 18:27:04.057771', '2', 'sinjiru', 3, '', 4, 1),
(80, '2020-06-07 10:12:11.443042', '6', 'pembeli1', 1, '[{\"added\": {}}]', 4, 1),
(81, '2020-06-07 10:12:32.676377', '7', 'penjual1', 1, '[{\"added\": {}}]', 4, 1),
(82, '2020-06-07 10:13:15.866264', '1', '1. Strawberry Hutan Belantara per kilo', 1, '[{\"added\": {}}]', 12, 1),
(83, '2020-06-07 10:44:57.064858', '1', '1. Strawberry Hutan Belantara per kilo', 2, '[{\"changed\": {\"fields\": [\"Gambar barang\"]}}]', 12, 1),
(84, '2020-06-07 11:08:40.131431', '1', '1. Strawberry Hutan Belantara per kilo', 2, '[{\"changed\": {\"fields\": [\"Gambar barang\"]}}]', 12, 1),
(85, '2020-06-07 11:10:07.597653', '2', '2. Strawberry Malang Super kiloan', 1, '[{\"added\": {}}]', 12, 1),
(86, '2020-06-07 11:15:11.481820', '3', '3. Strawberry Highland Reguler per pak', 1, '[{\"added\": {}}]', 12, 1),
(87, '2020-06-07 11:16:43.646967', '4', '4. Strawberry Kusuma per pak', 1, '[{\"added\": {}}]', 12, 1),
(88, '2020-06-07 11:17:20.037402', '4', '4. Strawberry Kusuma per pak', 2, '[{\"changed\": {\"fields\": [\"Gambar barang\"]}}]', 12, 1),
(89, '2020-06-07 11:32:15.104380', '5', '5. Bibit Strawberry Rambat VUTW', 1, '[{\"added\": {}}]', 12, 1),
(90, '2020-06-07 11:33:40.920618', '1', '1. Strawberry Hutan Belantara per kilo', 2, '[{\"changed\": {\"fields\": [\"Deskripsi barang\"]}}]', 12, 1),
(91, '2020-06-07 11:35:23.329339', '5', '5. Bibit Strawberry Rambat VUTW', 2, '[{\"changed\": {\"fields\": [\"Deskripsi barang\"]}}]', 12, 1),
(92, '2020-06-07 11:45:47.788530', '6', '6. Polybag lengkap dengan paket media tanah', 1, '[{\"added\": {}}]', 12, 1),
(93, '2020-06-07 11:45:51.025956', '6', '6. Polybag lengkap dengan paket media tanah', 2, '[]', 12, 1),
(94, '2020-06-07 12:45:27.741092', '1', '1 pembeli1', 1, '[{\"added\": {}}]', 13, 1),
(95, '2020-06-07 12:50:45.141016', '1', '1 pembeli1', 2, '[]', 13, 1),
(96, '2020-06-07 12:50:53.099058', '2', '2 admin', 1, '[{\"added\": {}}]', 13, 1),
(97, '2020-06-07 12:54:47.506737', '3', '3 admin', 1, '[{\"added\": {}}]', 13, 1),
(98, '2020-06-07 13:24:08.915467', '2', '2. Penanaman Strawberry', 1, '[{\"added\": {}}]', 15, 1),
(99, '2020-06-07 13:40:41.125980', '3', '3. Jual Pupuk Spesial', 1, '[{\"added\": {}}]', 15, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(9, 'destinations', 'destinasi'),
(11, 'edu', 'gambar_langkah'),
(10, 'edu', 'langkah'),
(15, 'forum', 'daftarforum'),
(7, 'galeri', 'galeri'),
(8, 'galeri', 'link_galeri'),
(12, 'market', 'dagangan'),
(13, 'market', 'keranjang'),
(14, 'market', 'order'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-05-31 09:29:52.752214'),
(2, 'auth', '0001_initial', '2020-05-31 09:29:53.025266'),
(3, 'admin', '0001_initial', '2020-05-31 09:29:53.922320'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-05-31 09:29:54.258405'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-05-31 09:29:54.309417'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-05-31 09:29:54.542477'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-05-31 09:29:54.669252'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-05-31 09:29:54.717761'),
(9, 'auth', '0004_alter_user_username_opts', '2020-05-31 09:29:54.740097'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-05-31 09:29:54.857132'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-05-31 09:29:54.869132'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-05-31 09:29:54.895138'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-05-31 09:29:54.935148'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-05-31 09:29:54.973161'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-05-31 09:29:55.009169'),
(16, 'auth', '0011_update_proxy_permissions', '2020-05-31 09:29:55.028173'),
(17, 'galeri', '0001_initial', '2020-05-31 09:29:55.079187'),
(18, 'sessions', '0001_initial', '2020-05-31 09:29:55.122197'),
(19, 'galeri', '0002_link_galeri', '2020-05-31 10:26:26.667448'),
(20, 'galeri', '0003_auto_20200531_1807', '2020-05-31 11:08:07.747671'),
(21, 'galeri', '0004_delete_link_galeri', '2020-05-31 13:21:57.213740'),
(22, 'destinations', '0001_initial', '2020-05-31 13:32:05.004457'),
(23, 'destinations', '0002_auto_20200531_2047', '2020-05-31 13:47:53.459021'),
(24, 'destinations', '0003_auto_20200531_2235', '2020-05-31 15:35:35.162375'),
(25, 'edu', '0001_initial', '2020-05-31 16:55:00.970663'),
(26, 'market', '0001_initial', '2020-06-06 11:13:56.044586'),
(27, 'market', '0002_delete_akun', '2020-06-06 11:13:56.088024'),
(28, 'market', '0003_dagangan_keranjang', '2020-06-06 20:16:09.120591'),
(29, 'market', '0004_auto_20200607_0315', '2020-06-06 20:16:09.618360'),
(30, 'market', '0005_dagangan_gambar_barang', '2020-06-06 20:18:03.283350'),
(31, 'market', '0006_keranjang', '2020-06-07 10:06:41.317428'),
(32, 'market', '0007_order', '2020-06-07 10:08:42.868521'),
(33, 'market', '0008_auto_20200607_1717', '2020-06-07 10:17:23.357289'),
(34, 'market', '0009_auto_20200607_1744', '2020-06-07 10:44:46.640700'),
(35, 'market', '0010_dagangan_deskripsi_barang', '2020-06-07 11:21:52.410845'),
(36, 'market', '0011_auto_20200607_1840', '2020-06-07 11:40:51.399738'),
(37, 'forum', '0001_initial', '2020-06-07 13:18:44.111591');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('rbgeajni42yvutxk8ah00v83b2tk97tg', 'NzQ1NWNjZDI3NWI1NDlkOTVjYjM0OTkyYmJlYjBmMTM5NDIxOGZlNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxOTBiZGQ3ZWYzZjkxZDdjOWY3YWZkZTJmZDFhNzA1YzViYjA5ZGQ0In0=', '2020-06-21 15:07:34.508780');

-- --------------------------------------------------------

--
-- Table structure for table `edu_gambar_langkah`
--

CREATE TABLE `edu_gambar_langkah` (
  `id` int(11) NOT NULL,
  `gambar_langkah` longtext NOT NULL,
  `gambar_desc` varchar(50) NOT NULL,
  `langkah_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `edu_gambar_langkah`
--

INSERT INTO `edu_gambar_langkah` (`id`, `gambar_langkah`, `gambar_desc`, `langkah_id_id`) VALUES
(1, 'edu/images/1. bibit.jpg', 'Bibit Strawberry', 2),
(2, 'edu/images/1. poli.jpg', 'Polybag', 2),
(3, 'edu/images/1. pupuk.jpg', 'Pupuk', 2),
(4, 'edu/images/1. tanah.jpg', 'Tanah', 2),
(5, 'edu/images/9. pendangiran.jpg', 'Proses Pendangiran', 10),
(6, 'edu/images/9. penyiangan.jpg', 'Proses Penyiangan', 10);

-- --------------------------------------------------------

--
-- Table structure for table `edu_langkah`
--

CREATE TABLE `edu_langkah` (
  `id` int(11) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `konten` longtext DEFAULT NULL,
  `thumbnail` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `edu_langkah`
--

INSERT INTO `edu_langkah` (`id`, `judul`, `konten`, `thumbnail`) VALUES
(1, 'Disclaimer', 'Langkah-langkah berikut melibatkan alat berbahan logam, berlakukan perhatian ekstra dan gunakan pelindung tambahan sebagai pengaman diri. Selamat menanam !', '/edu/images/langkah_banner.jpg'),
(2, 'Perlengkapan', 'Alat yang dibutuhkan  :\r\n1. Sekop\r\n2. Penyiram air\r\n\r\nBahan yang dibutuhkan :\r\n1. Bibit\r\n2. Polybag\r\n3. Pupuk kompos\r\n4. Tanah\r\n\r\nSemua bahan dan alat dapat dibeli di online shop kami', '/edu/images/2. polybag.jpeg'),
(3, 'Media Tanam', '1. Isi polybag dengan pupuk dan tanah kira-kira ¼ dengan perbandingan 1:1 \r\n2. Kemudian masukan bibit strawberry tersebut. \r\n3. Setelah itu masukan lagi pupuk dan tanah hingga terisi sampai ¾ dari polybag', 'edu/images/2. polybag.jpeg'),
(4, 'Hal Penyiraman', 'Siram tanaman strawberry setiap pagi dan sore serta jaga tiingkat kelembapan tanahnya. \r\nBibit akan lebih cepat tumbuh jika kebutuhan airnya selalu terpenuhi dengan baik. \r\nPenyiraman harus dilakukan secara intensif dan  rutin hingga masa tanam memasuki fase generatif. \r\nHal yang harus dipastikan adalah jangan membiarkan tanahnya kering.', 'edu/images/3. siram.jpg'),
(5, 'Perawatan Tanaman', 'Jika saat mulai tumbuh tanaman tersebut tidak tumbuh dengan baik, maka harus ditukar dengan bibit baru di media tanam / polybag yang sama. Hal ini dilakukan untuk menghindari gagal panen', 'edu/images/4. mati.jpg'),
(6, 'Hama', 'Perhatikan terus tanaman agar tidak ada hama yang menempel pada tanaman. \r\nUntuk mencegah hama bisa menyemprotkan pestisida khusus.', 'edu/images/5. hama.jpg'),
(7, 'Pemupukan', 'Setelah usia tanaman memasuki 2 bulan, strawberry harus diberi pupuk untuk mempertahankan kemampuan tumbuhnya. \r\nPakailah pupuk organik atau anorgnik sesuai takaran\r\nPastikan tidak ada pupuk yang mengenai organ tanaman (batang, daun, dan buah).', 'edu/images/6. pupuk organik.jpg'),
(8, 'Perempelan', 'Perempelan (pemotongan tunas baru yang muncul berlebihan) dengan tujuan agar tanaman dapat memfokuskan proteinnya untuk pembentukan buah bukan pembentukan tunas baru yang tumbuh terus menerus.\r\nUntuk mengambil bagian vegetatif dari tanaman tersebut, hanya perlu memotong 1 sampai 2 tunas di samping tanaman.', 'edu/images/7. perempelan.jpg'),
(9, 'Pemberian Hormon', 'Pemberian fitohormon (senyawa organik untuk mendorong pematangan buah). \r\nBiasanya diberikan jika ingin tumbuh cepat dengan buah yang banyak dan matang. \r\nJika tidak memakai pun tidak masalah. \r\nJika dianalogikan seperti tubuh manusia yang melakukan gym. jika ingin pembentukan dan pembesaran masa otot yang cepat maka memakai beberapa suplemen, jika tidak memakai pun tidak masalah tetapi prosesnya akan lambat.', 'edu/images/8. fito.jpg'),
(10, 'Pendangiran', 'Lakukan pendangiran dan penyiangan.\r\nPendagiran dilakukan untuk menggemburkan lahan dengan cara dicangkul kecil-kecil. \r\nPenyiangan adalah proses pencabutan rumput-rumput liar untuk mencegah pertumbuhan jamur, penyakit, dan hama.', 'edu/images/9. pendangiran.jpg'),
(11, 'Panen', 'Tanaman strawberry akan panen setelah 2 bulan atau bahkan kurang tergantung proses perawatannya. Proses panen pun memakai gunting khusus. Ciri-ciri yang sudah bisa dipanen seperti :\r\n• Daging buah yang terasa kenyal dan empuk saat dipegang.\r\n• Rasannya sedikit asam jika digigit.\r\n• Kulit buahnya berwarna merah muda sedikit tua dengan tangkai berwarna coklat kekuningan', 'edu/images/10. panen.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `forum_daftarforum`
--

CREATE TABLE `forum_daftarforum` (
  `id` int(11) NOT NULL,
  `topik` varchar(50) NOT NULL,
  `deskripsi_topik` varchar(140) NOT NULL,
  `last_updated` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `forum_daftarforum`
--

INSERT INTO `forum_daftarforum` (`id`, `topik`, `deskripsi_topik`, `last_updated`) VALUES
(1, 'Peraturan Forum', 'Peraturan bagi seluruh pengunjung forum', '2020-06-07 20:22:21.000000'),
(2, 'Penanaman Strawberry', 'Langkah-langkah penanaman Strawbery mandiri di rumah', '2020-06-07 13:24:08.912467'),
(3, 'Jual Pupuk Spesial', 'Forum jual-beli pupuk khusus strawberi', '2020-06-07 13:40:41.121981');

-- --------------------------------------------------------

--
-- Table structure for table `galeri_galeri`
--

CREATE TABLE `galeri_galeri` (
  `id` int(11) NOT NULL,
  `destinasi` varchar(50) NOT NULL,
  `lokasi` varchar(50) NOT NULL,
  `link360` longtext NOT NULL,
  `tag` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `galeri_galeri`
--

INSERT INTO `galeri_galeri` (`id`, `destinasi`, `lokasi`, `link360`, `tag`) VALUES
(1, 'Kusuma Agrowisata', 'Halaman depan', '/galeri/images/dest001/main.jpg', 'master'),
(2, 'Kusuma Agrowisata', 'Kamar Hotel', '/galeri/images/dest001/1.jpg', 'slave'),
(3, 'Kusuma Agrowisata', 'Halaman dalam', '/galeri/images/dest001/3.jpg', 'slave'),
(4, 'Kusuma Agrowisata', 'Taman bermain', '/galeri/images/dest001/4.jpg', 'slave'),
(5, 'Petik Strawberry Pak Paeru', 'Halaman depan', '/galeri/images/dest002/main.jpg', 'master'),
(6, 'Petik Strawberry Pak Paeru', 'Kebun dalam', '/galeri/images/dest002/1.jpg', 'slave'),
(7, 'Petik Strawberry Pak Paeru', 'Arung Jeram', '/galeri/images/dest002/2.jpg', 'slave'),
(8, 'Strawberry Pujon Paralayang', 'Halaman depan', '/galeri/images/dest003/main.jpg', 'master'),
(9, 'Strawberry Pujon Paralayang', 'Halaman dalam', '/galeri/images/dest003/1.jpg', 'slave'),
(10, 'Strawberry Organic Garden - Purnama Hotel', 'Halaman depan', '/galeri/images/dest004/main.jpg', 'master'),
(11, 'Strawberry Organic Garden - Purnama Hotel', 'Gapura Kebun', '/galeri/images/dest004/1.jpg', 'slave'),
(12, 'Strawberry Organic Garden - Purnama Hotel', 'Taman Hotel', '/galeri/images/dest004/2.jpg', 'slave'),
(13, 'Gussari Strawberry Highland Pujon Malang', 'Halaman depan', '/galeri/images/dest005/main.jpg', 'master'),
(14, 'Gussari Strawberry Highland Pujon Malang', 'Kebun dalam', '/galeri/images/dest005/1.jpg', 'slave'),
(15, 'Gussari Strawberry Highland Pujon Malang', 'Kebun dalam', '/galeri/images/dest005/2.jpg', 'slave');

-- --------------------------------------------------------

--
-- Table structure for table `market_dagangan`
--

CREATE TABLE `market_dagangan` (
  `id` int(11) NOT NULL,
  `nama_barang` varchar(60) NOT NULL,
  `harga_barang` int(11) NOT NULL,
  `kategori_barang` varchar(10) DEFAULT NULL,
  `penjual_id` varchar(150) NOT NULL,
  `gambar_barang` longtext NOT NULL,
  `deskripsi_barang` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `market_dagangan`
--

INSERT INTO `market_dagangan` (`id`, `nama_barang`, `harga_barang`, `kategori_barang`, `penjual_id`, `gambar_barang`, `deskripsi_barang`) VALUES
(1, 'Strawberry Hutan Belantara per kilo', 40000, 'strawberry', 'penjual1', 'market/images/shop_straw1.jpg', 'Strawberry hutan belantara malang daerah pujon\r\nJumbo dan besar\r\n\r\nAWAS! Alami tanpa pengawet dan pestisida'),
(2, 'Strawberry Malang Super kiloan', 45000, 'strawberry', 'penjual1', 'market/images/shop_straw3.jpg', NULL),
(3, 'Strawberry Highland Reguler per pak', 20000, 'strawberry', 'penjual1', 'market/images/shop_straw2.jpg', NULL),
(4, 'Strawberry Kusuma per pak', 18000, 'strawberry', 'penjual1', 'market/images/shop_straw4.webp', NULL),
(5, 'Bibit Strawberry Rambat VUTW', 2000, 'peralatan', 'penjual1', 'market/images/shop_bibit1.jpg', 'VUTW (Varietas Unggul Tahan Wereng)\r\nSudah terlindungi secara genetik sehingga cocok untuk penanam pemula'),
(6, 'Polybag lengkap dengan paket media tanah', 5000, 'peralatan', 'penjual1', 'market/images/shop_polybag.jpg', 'Polybag lengkap dengan tanah hara+pupuk siap tanam');

-- --------------------------------------------------------

--
-- Table structure for table `market_keranjang`
--

CREATE TABLE `market_keranjang` (
  `id` int(11) NOT NULL,
  `jumlah_item` int(11) NOT NULL,
  `kode_item_id` int(11) NOT NULL,
  `pemilik_id` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `market_keranjang`
--

INSERT INTO `market_keranjang` (`id`, `jumlah_item`, `kode_item_id`, `pemilik_id`) VALUES
(1, 5, 4, 'pembeli1'),
(2, 2, 2, 'admin'),
(3, 5, 4, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `market_order`
--

CREATE TABLE `market_order` (
  `id` int(11) NOT NULL,
  `penjual_order` varchar(50) NOT NULL,
  `pembeli_order` varchar(50) NOT NULL,
  `status_order` varchar(20) NOT NULL,
  `jumlah_item_order` int(11) NOT NULL,
  `kode_item_order_id` int(11) NOT NULL,
  `kota_asal` varchar(30) NOT NULL,
  `kota_tujuan` varchar(30) NOT NULL,
  `pengiriman` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `destinations_destinasi`
--
ALTER TABLE `destinations_destinasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `edu_gambar_langkah`
--
ALTER TABLE `edu_gambar_langkah`
  ADD PRIMARY KEY (`id`),
  ADD KEY `edu_gambar_langkah_langkah_id_id_b57b2a85_fk_edu_langkah_id` (`langkah_id_id`);

--
-- Indexes for table `edu_langkah`
--
ALTER TABLE `edu_langkah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forum_daftarforum`
--
ALTER TABLE `forum_daftarforum`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galeri_galeri`
--
ALTER TABLE `galeri_galeri`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `market_dagangan`
--
ALTER TABLE `market_dagangan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `market_dagangan_penjual_id_113681a1` (`penjual_id`);

--
-- Indexes for table `market_keranjang`
--
ALTER TABLE `market_keranjang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `market_keranjang_kode_item_id_3b44f478` (`kode_item_id`),
  ADD KEY `market_keranjang_pemilik_id_6bb95fad` (`pemilik_id`);

--
-- Indexes for table `market_order`
--
ALTER TABLE `market_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `market_order_kode_item_order_id_46d92928` (`kode_item_order_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `destinations_destinasi`
--
ALTER TABLE `destinations_destinasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `edu_gambar_langkah`
--
ALTER TABLE `edu_gambar_langkah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `edu_langkah`
--
ALTER TABLE `edu_langkah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `forum_daftarforum`
--
ALTER TABLE `forum_daftarforum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `galeri_galeri`
--
ALTER TABLE `galeri_galeri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `market_dagangan`
--
ALTER TABLE `market_dagangan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `market_keranjang`
--
ALTER TABLE `market_keranjang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `market_order`
--
ALTER TABLE `market_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `edu_gambar_langkah`
--
ALTER TABLE `edu_gambar_langkah`
  ADD CONSTRAINT `edu_gambar_langkah_langkah_id_id_b57b2a85_fk_edu_langkah_id` FOREIGN KEY (`langkah_id_id`) REFERENCES `edu_langkah` (`id`);

--
-- Constraints for table `market_dagangan`
--
ALTER TABLE `market_dagangan`
  ADD CONSTRAINT `market_dagangan_penjual_id_113681a1_fk_auth_user_username` FOREIGN KEY (`penjual_id`) REFERENCES `auth_user` (`username`);

--
-- Constraints for table `market_keranjang`
--
ALTER TABLE `market_keranjang`
  ADD CONSTRAINT `market_keranjang_kode_item_id_3b44f478_fk_market_dagangan_id` FOREIGN KEY (`kode_item_id`) REFERENCES `market_dagangan` (`id`),
  ADD CONSTRAINT `market_keranjang_pemilik_id_6bb95fad_fk_auth_user_username` FOREIGN KEY (`pemilik_id`) REFERENCES `auth_user` (`username`);

--
-- Constraints for table `market_order`
--
ALTER TABLE `market_order`
  ADD CONSTRAINT `market_order_kode_item_order_id_46d92928_fk_market_dagangan_id` FOREIGN KEY (`kode_item_order_id`) REFERENCES `market_dagangan` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
