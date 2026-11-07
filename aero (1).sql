-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 01, 2026 at 01:10 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aerocare`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_pengguna` int NOT NULL,
  `hak_akses` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_pengguna`, `hak_akses`) VALUES
(1, 'Mengelola Data Fasilitas'),
(2, 'Mengelola Laporan Kerusakan'),
(3, 'Mengelola Data Pengguna');

-- --------------------------------------------------------

--
-- Table structure for table `detail_penugasan`
--

CREATE TABLE `detail_penugasan` (
  `id_detail` int NOT NULL,
  `status_keterlibatan` enum('Aktif','Digantikan','Selesai') NOT NULL,
  `PETUGAS_id_pengguna` int NOT NULL,
  `PENUGASAN_id_penugasan` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `detail_penugasan`
--

INSERT INTO `detail_penugasan` (`id_detail`, `status_keterlibatan`, `PETUGAS_id_pengguna`, `PENUGASAN_id_penugasan`) VALUES
(1, 'Selesai', 7, 1),
(2, 'Selesai', 11, 2),
(3, 'Digantikan', 9, 3),
(4, 'Aktif', 7, 3),
(5, 'Selesai', 7, 4),
(6, 'Selesai', 17, 5),
(7, 'Digantikan', 18, 6),
(8, 'Aktif', 16, 6),
(9, 'Selesai', 13, 7),
(10, 'Digantikan', 8, 8),
(11, 'Aktif', 9, 8),
(12, 'Selesai', 21, 9),
(13, 'Selesai', 10, 10),
(14, 'Digantikan', 8, 11),
(15, 'Aktif', 9, 11),
(16, 'Selesai', 12, 12),
(17, 'Selesai', 16, 13),
(18, 'Digantikan', 11, 14),
(19, 'Aktif', 12, 14),
(20, 'Selesai', 9, 15),
(21, 'Selesai', 7, 16),
(22, 'Selesai', 20, 17),
(23, 'Digantikan', 9, 18),
(24, 'Aktif', 7, 18),
(25, 'Selesai', 10, 19),
(26, 'Selesai', 8, 20),
(27, 'Digantikan', 9, 21),
(28, 'Aktif', 7, 21),
(29, 'Selesai', 10, 22),
(30, 'Selesai', 8, 23),
(31, 'Digantikan', 18, 24),
(32, 'Aktif', 16, 24),
(33, 'Selesai', 7, 25),
(34, 'Selesai', 20, 26),
(35, 'Digantikan', 9, 27),
(36, 'Aktif', 7, 27),
(37, 'Aktif', 16, 28),
(38, 'Aktif', 14, 29),
(39, 'Digantikan', 12, 30),
(40, 'Aktif', 10, 30),
(41, 'Aktif', 16, 31),
(42, 'Aktif', 8, 32),
(43, 'Digantikan', 12, 33),
(44, 'Aktif', 10, 33),
(45, 'Aktif', 7, 34),
(46, 'Aktif', 17, 35),
(47, 'Digantikan', 18, 36),
(48, 'Aktif', 16, 36),
(49, 'Aktif', 16, 37),
(50, 'Aktif', 14, 38),
(51, 'Digantikan', 9, 39),
(52, 'Aktif', 7, 39),
(53, 'Aktif', 19, 40),
(54, 'Aktif', 8, 3),
(55, 'Aktif', 9, 4),
(56, 'Aktif', 17, 6),
(57, 'Aktif', 8, 8),
(58, 'Aktif', 7, 11),
(59, 'Aktif', 10, 14),
(60, 'Aktif', 8, 18),
(61, 'Aktif', 9, 21),
(62, 'Aktif', 17, 24),
(63, 'Aktif', 8, 27),
(64, 'Aktif', 12, 30),
(65, 'Aktif', 11, 33);

-- --------------------------------------------------------

--
-- Table structure for table `fasilitas`
--

CREATE TABLE `fasilitas` (
  `id_fasilitas` int NOT NULL,
  `nama_fasilitas` varchar(30) NOT NULL,
  `jenis_fasilitas` varchar(30) NOT NULL,
  `lokasi` varchar(50) NOT NULL,
  `kondisi` enum('Baik','Rusak','Perlu Perbaikan') NOT NULL,
  `keterangan` varchar(60) DEFAULT NULL,
  `ADMIN_id_pengguna` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `fasilitas`
--

INSERT INTO `fasilitas` (`id_fasilitas`, `nama_fasilitas`, `jenis_fasilitas`, `lokasi`, `kondisi`, `keterangan`, `ADMIN_id_pengguna`) VALUES
(1, 'Toilet Pria', 'Sanitasi', 'Terminal Keberangkatan Lt. 1', 'Baik', 'Pemeriksaan rutin harian', 1),
(2, 'Toilet Wanita', 'Sanitasi', 'Terminal Keberangkatan Lt. 1', 'Perlu Perbaikan', 'Tekanan air wastafel tidak stabil', 1),
(3, 'Ruang Tunggu A', 'Area Penumpang', 'Terminal Keberangkatan Lt. 2', 'Baik', 'Kapasitas 120 kursi', 1),
(4, 'Ruang Tunggu B', 'Area Penumpang', 'Terminal Kedatangan Lt. 2', 'Perlu Perbaikan', 'Beberapa kursi mengalami kerusakan', 1),
(5, 'Eskalator Utara', 'Transportasi Vertikal', 'Terminal Keberangkatan', 'Rusak', 'Berhenti mendadak saat jam sibuk', 1),
(6, 'Eskalator Selatan', 'Transportasi Vertikal', 'Terminal Kedatangan', 'Baik', 'Beroperasi normal', 1),
(7, 'Lift Terminal 1', 'Transportasi Vertikal', 'Terminal Keberangkatan', 'Perlu Perbaikan', 'Tombol lantai dua kadang tidak merespons', 1),
(8, 'Lift Terminal 2', 'Transportasi Vertikal', 'Terminal Kedatangan', 'Baik', 'Pemeriksaan berkala Oktober', 1),
(9, 'Troli Bagasi A', 'Peralatan Penumpang', 'Area Pengambilan Bagasi', 'Rusak', 'Roda depan terkunci', 1),
(10, 'Troli Bagasi B', 'Peralatan Penumpang', 'Area Check-in', 'Baik', 'Tersedia untuk penumpang', 1),
(11, 'Pipa Air Utama', 'Utilitas', 'Area Toilet Terminal', 'Rusak', 'Kebocoran pada sambungan pipa', 1),
(12, 'Saluran Drainase Barat', 'Infrastruktur', 'Area Parkir Barat', 'Perlu Perbaikan', 'Aliran melambat saat hujan deras', 1),
(13, 'Panel Listrik A', 'Utilitas', 'Ruang Panel Terminal 1', 'Baik', 'Hasil inspeksi terakhir normal', 1),
(14, 'AC Ruang Tunggu A', 'Tata Udara', 'Ruang Tunggu Terminal 1', 'Rusak', 'Pendinginan tidak merata', 1),
(15, 'Pintu Otomatis Utama', 'Akses Bangunan', 'Pintu Masuk Terminal', 'Baik', 'Sensor gerak berfungsi normal', 1),
(16, 'AC Ruang Tunggu B', 'Tata Udara', 'Ruang Tunggu Terminal 2', 'Perlu Perbaikan', 'Filter perlu dibersihkan', 1),
(17, 'Pompa Air Cadangan', 'Utilitas', 'Ruang Pompa Gedung A', 'Baik', 'Uji fungsi mingguan', 2),
(18, 'Lampu Area Parkir', 'Penerangan', 'Area Parkir Timur', 'Rusak', 'Tiga titik lampu padam', 2),
(19, 'Kanopi Drop-off', 'Infrastruktur', 'Area Drop-off', 'Perlu Perbaikan', 'Sambungan talang perlu diperkuat', 2),
(20, 'Pintu Darurat Timur', 'Keselamatan', 'Koridor Terminal 2', 'Baik', 'Jalur evakuasi tidak terhalang', 2),
(21, 'Conveyor Bagasi 1', 'Peralatan Bagasi', 'Area Klaim Bagasi', 'Rusak', 'Sabuk conveyor bergeser', 2),
(22, 'Conveyor Bagasi 2', 'Peralatan Bagasi', 'Area Klaim Bagasi', 'Baik', 'Beroperasi normal', 2),
(23, 'Genset Utama', 'Utilitas', 'Gedung Utilitas', 'Baik', 'Uji beban bulanan', 3),
(24, 'AC Ruang Operasional', 'Tata Udara', 'Ruang Operasional', 'Perlu Perbaikan', 'Suhu naik pada siang hari', 3),
(25, 'Saluran Air Hujan', 'Infrastruktur', 'Sisi Timur Terminal', 'Rusak', 'Terdapat sumbatan material', 3);

-- --------------------------------------------------------

--
-- Table structure for table `laporan_kerusakan`
--

CREATE TABLE `laporan_kerusakan` (
  `id_laporan` int NOT NULL,
  `tanggal_laporan` date NOT NULL,
  `deskripsi_kerusakan` varchar(150) NOT NULL,
  `prioritas` enum('Rendah','Sedang','Tinggi') NOT NULL,
  `status` enum('Menunggu','Diproses','Selesai') NOT NULL,
  `FASILITAS_id_fasilitas` int NOT NULL,
  `ADMIN_id_pengguna` int NOT NULL,
  `PENUGASAN_id_penugasan` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `laporan_kerusakan`
--

INSERT INTO `laporan_kerusakan` (`id_laporan`, `tanggal_laporan`, `deskripsi_kerusakan`, `prioritas`, `status`, `FASILITAS_id_fasilitas`, `ADMIN_id_pengguna`, `PENUGASAN_id_penugasan`) VALUES
(1, '2026-10-01', 'Lift bergetar saat bergerak', 'Sedang', 'Menunggu', 8, 2, 1),
(2, '2026-10-02', 'Sensor pintu otomatis tidak merespons', 'Sedang', 'Selesai', 15, 2, 2),
(3, '2026-10-03', 'Sabuk conveyor bagasi bergerak tidak stabil', 'Tinggi', 'Selesai', 22, 2, 3),
(4, '2026-10-04', 'Eskalator berhenti mendadak saat digunakan', 'Tinggi', 'Selesai', 5, 2, 4),
(5, '2026-10-05', 'Roda troli bagasi sulit berputar', 'Rendah', 'Selesai', 12, 3, 5),
(6, '2026-10-06', 'Pipa air bocor pada sambungan', 'Sedang', 'Menunggu', 19, 2, 6),
(7, '2026-10-07', 'Kursi ruang tunggu retak pada sandaran', 'Sedang', 'Menunggu', 1, 2, 7),
(8, '2026-10-08', 'Tombol lift lantai dua tidak merespons', 'Tinggi', 'Selesai', 9, 2, 8),
(9, '2026-10-09', 'Eskalator mengeluarkan suara gesekan', 'Sedang', 'Menunggu', 16, 2, 9),
(10, '2026-10-10', 'Lampu area parkir padam di beberapa titik', 'Rendah', 'Menunggu', 23, 3, 10),
(11, '2026-10-11', 'Tekanan air toilet menurun saat jam sibuk', 'Sedang', 'Menunggu', 5, 2, 11),
(12, '2026-10-12', 'Saluran drainase meluap setelah hujan', 'Sedang', 'Menunggu', 13, 2, 12),
(13, '2026-10-13', 'Panel listrik menunjukkan indikator peringatan', 'Tinggi', 'Diproses', 20, 2, 13),
(14, '2026-10-14', 'AC ruang tunggu tidak mencapai suhu yang diatur', 'Sedang', 'Diproses', 2, 2, 14),
(15, '2026-10-15', 'Sensor pintu otomatis terlambat merespons', 'Sedang', 'Menunggu', 9, 3, 15),
(16, '2026-10-16', 'Filter AC mengeluarkan bau tidak sedap', 'Sedang', 'Selesai', 17, 2, 16),
(17, '2026-10-17', 'Pompa air cadangan bergetar saat dinyalakan', 'Rendah', 'Selesai', 24, 2, 17),
(18, '2026-10-18', 'Lampu jalur pejalan kaki berkedip', 'Sedang', 'Selesai', 6, 2, 18),
(19, '2026-10-19', 'Talang kanopi menetes ke area penumpang', 'Sedang', 'Diproses', 13, 2, 19),
(20, '2026-10-20', 'Pegangan pintu darurat longgar', 'Sedang', 'Selesai', 21, 3, 20),
(21, '2026-10-21', 'Sabuk conveyor bagasi bergerak tidak stabil', 'Tinggi', 'Diproses', 3, 2, 21),
(22, '2026-10-22', 'Conveyor bagasi mengeluarkan bunyi berisik', 'Rendah', 'Menunggu', 10, 2, 22),
(23, '2026-10-23', 'Genset sulit dinyalakan saat uji rutin', 'Tinggi', 'Diproses', 17, 2, 23),
(24, '2026-10-24', 'AC ruang operasional mengeluarkan suara keras', 'Sedang', 'Diproses', 25, 2, 24),
(25, '2026-10-25', 'Saluran air hujan tersumbat daun', 'Sedang', 'Diproses', 7, 3, 25),
(26, '2026-10-26', 'Keran toilet kembali mengalami kebocoran', 'Sedang', 'Selesai', 14, 2, 26),
(27, '2026-10-27', 'Lampu ruang tunggu padam di dua baris kursi', 'Sedang', 'Menunggu', 21, 2, 27),
(28, '2026-10-28', 'Lift berhenti sesaat sebelum membuka pintu', 'Tinggi', 'Menunggu', 4, 2, 28),
(29, '2026-10-29', 'Troli bagasi kehilangan satu roda kecil', 'Rendah', 'Selesai', 11, 2, 29),
(30, '2026-10-30', 'Pipa toilet bocor dan membasahi lantai', 'Sedang', 'Menunggu', 18, 3, 30),
(31, '2026-10-31', 'Kursi tunggu longgar pada bagian kaki', 'Sedang', 'Menunggu', 25, 2, 31),
(32, '2026-11-01', 'Eskalator tersendat saat beban tinggi', 'Tinggi', 'Selesai', 8, 2, 32),
(33, '2026-11-02', 'Unit AC meneteskan air ke lantai', 'Sedang', 'Diproses', 15, 2, 33),
(34, '2026-11-03', 'Drainase parkir tidak mengalir lancar', 'Sedang', 'Diproses', 22, 2, 34),
(35, '2026-11-04', 'Pintu otomatis menutup terlalu cepat', 'Sedang', 'Diproses', 4, 3, 35),
(36, '2026-11-05', 'Pompa air menghasilkan tekanan tidak stabil', 'Rendah', 'Selesai', 12, 2, 36),
(37, '2026-11-06', 'Panel listrik terasa panas saat pemeriksaan', 'Tinggi', 'Menunggu', 19, 2, 37),
(38, '2026-11-07', 'Conveyor bagasi berhenti sesaat', 'Sedang', 'Diproses', 1, 2, 38),
(39, '2026-11-08', 'Lampu darurat tidak menyala saat diuji', 'Tinggi', 'Selesai', 8, 2, 39),
(40, '2026-11-09', 'Lift berbunyi saat mencapai lantai dasar', 'Tinggi', 'Selesai', 16, 3, 40);

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id_pengguna` int NOT NULL,
  `nama_lengkap` varchar(60) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `no_telepon` varchar(20) NOT NULL,
  `peran` enum('Admin','Supervisor','Petugas') NOT NULL,
  `status_aktif` enum('Aktif','Tidak Aktif') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id_pengguna`, `nama_lengkap`, `username`, `password`, `email`, `no_telepon`, `peran`, `status_aktif`) VALUES
(1, 'Andi Pratama', 'andi.admin', 'admin123', 'andi@aero.id', '081234567801', 'Admin', 'Aktif'),
(2, 'Budi Santoso', 'budi.admin', 'admin234', 'budi@aero.id', '081234567802', 'Admin', 'Aktif'),
(3, 'Citra Lestari', 'citra.admin', 'admin345', 'citra@aero.id', '081234567803', 'Admin', 'Aktif'),
(4, 'Dimas Saputra', 'dimas.supervisor', 'super123', 'dimas@aero.id', '081234567804', 'Supervisor', 'Aktif'),
(5, 'Eka Wulandari', 'eka.supervisor', 'super234', 'eka@aero.id', '081234567805', 'Supervisor', 'Aktif'),
(6, 'Fajar Ramadhan', 'fajar.supervisor', 'super345', 'fajar@aero.id', '081234567806', 'Supervisor', 'Aktif'),
(7, 'Gilang Maulana', 'gilangmaulana.petugas', 'petugas7', 'gilangmaulana@aero.id', '081234567807', 'Petugas', 'Aktif'),
(8, 'Hana Putri', 'hanaputri.petugas', 'petugas8', 'hanaputri@aero.id', '081234567808', 'Petugas', 'Aktif'),
(9, 'Ilham Akbar', 'ilhamakbar.petugas', 'petugas9', 'ilhamakbar@aero.id', '081234567809', 'Petugas', 'Aktif'),
(10, 'Joko Firmansyah', 'jokofirmansyah.petugas', 'petugas10', 'jokofirmansyah@aero.id', '081234567810', 'Petugas', 'Aktif'),
(11, 'Kartika Sari', 'kartikasari.petugas', 'petugas11', 'kartikasari@aero.id', '081234567811', 'Petugas', 'Aktif'),
(12, 'Lukman Hakim', 'lukmanhakim.petugas', 'petugas12', 'lukmanhakim@aero.id', '081234567812', 'Petugas', 'Aktif'),
(13, 'Maya Anggraini', 'mayaanggraini.petugas', 'petugas13', 'mayaanggraini@aero.id', '081234567813', 'Petugas', 'Aktif'),
(14, 'Nanda Prakoso', 'nandaprakoso.petugas', 'petugas14', 'nandaprakoso@aero.id', '081234567814', 'Petugas', 'Aktif'),
(15, 'Oki Setiawan', 'okisetiawan.petugas', 'petugas15', 'okisetiawan@aero.id', '081234567815', 'Petugas', 'Aktif'),
(16, 'Putri Amelia', 'putriamelia.petugas', 'petugas16', 'putriamelia@aero.id', '081234567816', 'Petugas', 'Aktif'),
(17, 'Rizky Firmansyah', 'rizkyfirmansyah.petugas', 'petugas17', 'rizkyfirmansyah@aero.id', '081234567817', 'Petugas', 'Aktif'),
(18, 'Salsa Nabila', 'salsanabila.petugas', 'petugas18', 'salsanabila@aero.id', '081234567818', 'Petugas', 'Aktif'),
(19, 'Taufik Hidayat', 'taufikhidayat.petugas', 'petugas19', 'taufikhidayat@aero.id', '081234567819', 'Petugas', 'Aktif'),
(20, 'Vina Oktaviani', 'vinaoktaviani.petugas', 'petugas20', 'vinaoktaviani@aero.id', '081234567820', 'Petugas', 'Aktif'),
(21, 'Wahyu Kurniawan', 'wahyukurniawan.petugas', 'petugas21', 'wahyukurniawan@aero.id', '081234567821', 'Petugas', 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `penugasan`
--

CREATE TABLE `penugasan` (
  `id_penugasan` int NOT NULL,
  `waktu_penugasan` date NOT NULL,
  `catatan_penugasan` varchar(150) DEFAULT NULL,
  `SUPERVISOR_id_pengguna` int NOT NULL,
  `LAPORAN_KERUSAKAN_id_laporan` int NOT NULL,
  `id_pengguna` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `penugasan`
--

INSERT INTO `penugasan` (`id_penugasan`, `waktu_penugasan`, `catatan_penugasan`, `SUPERVISOR_id_pengguna`, `LAPORAN_KERUSAKAN_id_laporan`, `id_pengguna`) VALUES
(1, '2026-10-01', 'Pemeriksaan kebocoran keran wastafel', 4, 1, 7),
(2, '2026-10-02', 'Perbaikan lampu lorong ruang tunggu', 4, 2, 10),
(3, '2026-10-03', 'Pemeriksaan eskalator yang berhenti mendadak', 4, 3, 7),
(4, '2026-10-04', 'Pemeriksaan getaran pada lift', 4, 4, 8),
(5, '2026-10-05', 'Perbaikan roda troli bagasi', 5, 5, 11),
(6, '2026-10-06', 'Pemeriksaan kebocoran pipa air', 6, 6, 13),
(7, '2026-10-07', 'Perbaikan kursi ruang tunggu', 4, 7, 16),
(8, '2026-10-08', 'Pemeriksaan tombol lift', 4, 8, 8),
(9, '2026-10-09', 'Pemeriksaan suara gesekan eskalator', 4, 9, 7),
(10, '2026-10-10', 'Penggantian lampu area parkir', 5, 10, 10),
(11, '2026-10-11', 'Pemeriksaan tekanan air toilet', 6, 11, 13),
(12, '2026-10-12', 'Pembersihan saluran drainase', 5, 12, 16),
(13, '2026-10-13', 'Pemeriksaan panel listrik', 6, 13, 10),
(14, '2026-10-14', 'Pemeriksaan sistem pendingin AC', 4, 14, 19),
(15, '2026-10-15', 'Perbaikan sensor pintu otomatis', 4, 15, 8),
(16, '2026-10-16', 'Pembersihan filter AC', 4, 16, 19),
(17, '2026-10-17', 'Pemeriksaan pompa air cadangan', 6, 17, 13),
(18, '2026-10-18', 'Perbaikan lampu jalur pejalan kaki', 5, 18, 10),
(19, '2026-10-19', 'Perbaikan talang kanopi', 5, 19, 16),
(20, '2026-10-20', 'Pemeriksaan pegangan pintu darurat', 4, 20, 16),
(21, '2026-10-21', 'Pemeriksaan conveyor bagasi', 5, 21, 7),
(22, '2026-10-22', 'Pemeriksaan bunyi conveyor bagasi', 5, 22, 7),
(23, '2026-10-23', 'Pemeriksaan genset utama', 6, 23, 10),
(24, '2026-10-24', 'Pemeriksaan AC ruang operasional', 4, 24, 19),
(25, '2026-10-25', 'Pembersihan saluran air hujan', 5, 25, 13),
(26, '2026-10-26', 'Perbaikan keran toilet', 6, 26, 13),
(27, '2026-10-27', 'Pemeriksaan lampu ruang tunggu', 4, 27, 10),
(28, '2026-10-28', 'Pemeriksaan sistem lift', 4, 28, 8),
(29, '2026-10-29', 'Perbaikan roda troli bagasi', 5, 29, 11),
(30, '2026-10-30', 'Perbaikan pipa toilet', 6, 30, 13),
(31, '2026-10-31', 'Perbaikan kursi ruang tunggu', 4, 31, 16),
(32, '2026-11-01', 'Pemeriksaan eskalator saat beban tinggi', 4, 32, 7),
(33, '2026-11-02', 'Perbaikan kebocoran AC', 4, 33, 19),
(34, '2026-11-03', 'Pembersihan drainase parkir', 5, 34, 16),
(35, '2026-11-04', 'Perbaikan pintu otomatis', 4, 35, 8),
(36, '2026-11-05', 'Pemeriksaan pompa air', 6, 36, 13),
(37, '2026-11-06', 'Pemeriksaan panel listrik', 6, 37, 10),
(38, '2026-11-07', 'Pemeriksaan conveyor bagasi', 5, 38, 7),
(39, '2026-11-08', 'Pengujian lampu darurat', 4, 39, 10),
(40, '2026-11-09', 'Pemeriksaan lift lantai dasar', 4, 40, 8);

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `id_pengguna` int NOT NULL,
  `spesialisasi` enum('Mekanikal','Elektrikal','Plumbing dan Perpipaan','Pemeliharaan Bangunan','HVAC (Tata Udara)') NOT NULL,
  `shift_kerja` enum('Pagi','Malam') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`id_pengguna`, `spesialisasi`, `shift_kerja`) VALUES
(7, 'Mekanikal', 'Pagi'),
(8, 'Mekanikal', 'Malam'),
(9, 'Mekanikal', 'Pagi'),
(10, 'Elektrikal', 'Pagi'),
(11, 'Elektrikal', 'Malam'),
(12, 'Elektrikal', 'Pagi'),
(13, 'Plumbing dan Perpipaan', 'Pagi'),
(14, 'Plumbing dan Perpipaan', 'Malam'),
(15, 'Plumbing dan Perpipaan', 'Pagi'),
(16, 'Pemeliharaan Bangunan', 'Pagi'),
(17, 'Pemeliharaan Bangunan', 'Malam'),
(18, 'Pemeliharaan Bangunan', 'Pagi'),
(19, 'HVAC (Tata Udara)', 'Pagi'),
(20, 'HVAC (Tata Udara)', 'Malam'),
(21, 'HVAC (Tata Udara)', 'Pagi');

-- --------------------------------------------------------

--
-- Table structure for table `progres_penanganan`
--

CREATE TABLE `progres_penanganan` (
  `id_progres` int NOT NULL,
  `waktu_update` datetime NOT NULL,
  `status_progres` enum('Pemeriksaan','Perbaikan','Pengujian','Selesai') NOT NULL,
  `tindakan_penanganan` varchar(150) DEFAULT NULL,
  `PENUGASAN_id_penugasan` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `progres_penanganan`
--

INSERT INTO `progres_penanganan` (`id_progres`, `waktu_update`, `status_progres`, `tindakan_penanganan`, `PENUGASAN_id_penugasan`) VALUES
(1, '2026-10-01 00:00:00', 'Pemeriksaan', 'Pemeriksaan awal dan pencatatan kondisi', 1),
(2, '2026-10-02 00:00:00', 'Pemeriksaan', 'Pemeriksaan awal dan pencatatan kondisi', 2),
(3, '2026-10-04 00:00:00', 'Perbaikan', 'Perbaikan komponen atau penggantian bagian rusak', 2),
(4, '2026-10-06 00:00:00', 'Pengujian', 'Uji fungsi setelah perbaikan', 2),
(5, '2026-10-08 00:00:00', 'Selesai', 'Pemeriksaan akhir dan dokumentasi hasil', 2),
(6, '2026-10-03 00:00:00', 'Pemeriksaan', 'Pemeriksaan awal dan pencatatan kondisi', 3),
(7, '2026-10-05 00:00:00', 'Perbaikan', 'Perbaikan komponen atau penggantian bagian rusak', 3),
(8, '2026-10-07 00:00:00', 'Pengujian', 'Uji fungsi setelah perbaikan', 3),
(9, '2026-10-09 00:00:00', 'Selesai', 'Pemeriksaan akhir dan dokumentasi hasil', 3),
(10, '2026-10-04 00:00:00', 'Pemeriksaan', 'Pemeriksaan awal dan pencatatan kondisi', 4),
(11, '2026-10-06 00:00:00', 'Perbaikan', 'Perbaikan komponen atau penggantian bagian rusak', 4),
(12, '2026-10-08 00:00:00', 'Pengujian', 'Uji fungsi setelah perbaikan', 4),
(13, '2026-10-10 00:00:00', 'Selesai', 'Pemeriksaan akhir dan dokumentasi hasil', 4),
(14, '2026-10-05 00:00:00', 'Pemeriksaan', 'Pemeriksaan awal dan pencatatan kondisi', 5),
(15, '2026-10-07 00:00:00', 'Perbaikan', 'Perbaikan komponen atau penggantian bagian rusak', 5),
(16, '2026-10-09 00:00:00', 'Pengujian', 'Uji fungsi setelah perbaikan', 5),
(17, '2026-10-11 00:00:00', 'Selesai', 'Pemeriksaan akhir dan dokumentasi hasil', 5),
(18, '2026-10-06 00:00:00', 'Pemeriksaan', 'Pemeriksaan awal dan pencatatan kondisi', 6),
(19, '2026-10-07 00:00:00', 'Pemeriksaan', 'Pemeriksaan awal dan pencatatan kondisi', 7),
(20, '2026-10-08 00:00:00', 'Pemeriksaan', 'Pemeriksaan awal dan pencatatan kondisi', 8),
(21, '2026-10-10 00:00:00', 'Perbaikan', 'Perbaikan komponen atau penggantian bagian rusak', 8),
(22, '2026-10-12 00:00:00', 'Pengujian', 'Uji fungsi setelah perbaikan', 8),
(23, '2026-10-14 00:00:00', 'Selesai', 'Pemeriksaan akhir dan dokumentasi hasil', 8),
(24, '2026-10-09 00:00:00', 'Pemeriksaan', 'Pemeriksaan awal dan pencatatan kondisi', 9),
(25, '2026-10-10 00:00:00', 'Pemeriksaan', 'Pemeriksaan awal dan pencatatan kondisi', 10),
(26, '2026-10-11 00:00:00', 'Pemeriksaan', 'Pemeriksaan awal dan pencatatan kondisi', 11),
(27, '2026-10-12 00:00:00', 'Pemeriksaan', 'Pemeriksaan awal dan pencatatan kondisi', 12),
(28, '2026-10-13 00:00:00', 'Pemeriksaan', 'Pemeriksaan awal dan pencatatan kondisi', 13),
(29, '2026-10-15 00:00:00', 'Perbaikan', 'Perbaikan komponen atau penggantian bagian rusak', 13),
(30, '2026-10-14 00:00:00', 'Pemeriksaan', 'Pemeriksaan awal dan pencatatan kondisi', 14),
(31, '2026-10-16 00:00:00', 'Perbaikan', 'Perbaikan komponen atau penggantian bagian rusak', 14),
(32, '2026-10-18 00:00:00', 'Perbaikan', 'Pekerjaan dilanjutkan setelah komponen atau akses tersedia', 14),
(33, '2026-10-15 00:00:00', 'Pemeriksaan', 'Pemeriksaan awal dan pencatatan kondisi', 15),
(34, '2026-10-16 00:00:00', 'Pemeriksaan', 'Pemeriksaan awal dan pencatatan kondisi', 16),
(35, '2026-10-18 00:00:00', 'Perbaikan', 'Perbaikan komponen atau penggantian bagian rusak', 16),
(36, '2026-10-20 00:00:00', 'Pengujian', 'Uji fungsi setelah perbaikan', 16),
(37, '2026-10-22 00:00:00', 'Selesai', 'Pemeriksaan akhir dan dokumentasi hasil', 16),
(38, '2026-10-17 00:00:00', 'Pemeriksaan', 'Pemeriksaan awal dan pencatatan kondisi', 17),
(39, '2026-10-19 00:00:00', 'Perbaikan', 'Perbaikan komponen atau penggantian bagian rusak', 17),
(40, '2026-10-21 00:00:00', 'Pengujian', 'Uji fungsi setelah perbaikan', 17),
(41, '2026-10-23 00:00:00', 'Selesai', 'Pemeriksaan akhir dan dokumentasi hasil', 17),
(42, '2026-10-18 00:00:00', 'Pemeriksaan', 'Pemeriksaan awal dan pencatatan kondisi', 18),
(43, '2026-10-20 00:00:00', 'Perbaikan', 'Perbaikan komponen atau penggantian bagian rusak', 18),
(44, '2026-10-22 00:00:00', 'Pengujian', 'Uji fungsi setelah perbaikan', 18),
(45, '2026-10-24 00:00:00', 'Selesai', 'Pemeriksaan akhir dan dokumentasi hasil', 18),
(46, '2026-10-19 00:00:00', 'Pemeriksaan', 'Pemeriksaan awal dan pencatatan kondisi', 19),
(47, '2026-10-21 00:00:00', 'Perbaikan', 'Perbaikan komponen atau penggantian bagian rusak', 19),
(48, '2026-10-20 00:00:00', 'Pemeriksaan', 'Pemeriksaan awal dan pencatatan kondisi', 20),
(49, '2026-10-22 00:00:00', 'Perbaikan', 'Perbaikan komponen atau penggantian bagian rusak', 20),
(50, '2026-10-24 00:00:00', 'Pengujian', 'Uji fungsi setelah perbaikan', 20),
(51, '2026-10-26 00:00:00', 'Selesai', 'Pemeriksaan akhir dan dokumentasi hasil', 20),
(52, '2026-10-21 00:00:00', 'Pemeriksaan', 'Pemeriksaan awal dan pencatatan kondisi', 21),
(53, '2026-10-23 00:00:00', 'Perbaikan', 'Perbaikan komponen atau penggantian bagian rusak', 21),
(54, '2026-10-25 00:00:00', 'Perbaikan', 'Pekerjaan dilanjutkan setelah komponen atau akses tersedia', 21),
(55, '2026-10-22 00:00:00', 'Pemeriksaan', 'Pemeriksaan awal dan pencatatan kondisi', 22),
(56, '2026-10-23 00:00:00', 'Pemeriksaan', 'Pemeriksaan awal dan pencatatan kondisi', 23),
(57, '2026-10-25 00:00:00', 'Perbaikan', 'Perbaikan komponen atau penggantian bagian rusak', 23),
(58, '2026-10-24 00:00:00', 'Pemeriksaan', 'Pemeriksaan awal dan pencatatan kondisi', 24),
(59, '2026-10-26 00:00:00', 'Perbaikan', 'Perbaikan komponen atau penggantian bagian rusak', 24),
(60, '2026-10-28 00:00:00', 'Perbaikan', 'Pekerjaan dilanjutkan setelah komponen atau akses tersedia', 24),
(61, '2026-10-25 00:00:00', 'Pemeriksaan', 'Pemeriksaan awal dan pencatatan kondisi', 25),
(62, '2026-10-27 00:00:00', 'Perbaikan', 'Perbaikan komponen atau penggantian bagian rusak', 25),
(63, '2026-10-26 00:00:00', 'Pemeriksaan', 'Pemeriksaan awal dan pencatatan kondisi', 26),
(64, '2026-10-28 00:00:00', 'Perbaikan', 'Perbaikan komponen atau penggantian bagian rusak', 26),
(67, '2026-10-27 00:00:00', 'Pemeriksaan', 'Pemeriksaan awal dan pencatatan kondisi', 27),
(68, '2026-10-28 00:00:00', 'Pemeriksaan', 'Pemeriksaan awal dan pencatatan kondisi', 28),
(69, '2026-10-01 00:00:00', 'Pemeriksaan', 'Pemeriksaan awal dan pencatatan kondisi', 29),
(70, '2026-10-03 00:00:00', 'Perbaikan', 'Perbaikan komponen atau penggantian bagian rusak', 29),
(71, '2026-10-05 00:00:00', 'Pengujian', 'Uji fungsi setelah perbaikan', 29),
(72, '2026-10-07 00:00:00', 'Selesai', 'Pemeriksaan akhir dan dokumentasi hasil', 29),
(73, '2026-10-02 00:00:00', 'Pemeriksaan', 'Pemeriksaan awal dan pencatatan kondisi', 30),
(74, '2026-11-03 00:00:00', 'Pemeriksaan', 'Pemeriksaan awal dan pencatatan kondisi', 31),
(75, '2026-11-04 00:00:00', 'Pemeriksaan', 'Pemeriksaan awal dan pencatatan kondisi', 32),
(76, '2026-11-06 00:00:00', 'Perbaikan', 'Perbaikan komponen atau penggantian bagian rusak', 32),
(77, '2026-11-08 00:00:00', 'Pengujian', 'Uji fungsi setelah perbaikan', 32),
(78, '2026-11-10 00:00:00', 'Selesai', 'Pemeriksaan akhir dan dokumentasi hasil', 32),
(79, '2026-11-05 00:00:00', 'Pemeriksaan', 'Pemeriksaan awal dan pencatatan kondisi', 33),
(80, '2026-11-07 00:00:00', 'Perbaikan', 'Perbaikan komponen atau penggantian bagian rusak', 33),
(81, '2026-11-09 00:00:00', 'Perbaikan', 'Pekerjaan dilanjutkan setelah komponen atau akses tersedia', 33),
(82, '2026-11-06 00:00:00', 'Pemeriksaan', 'Pemeriksaan awal dan pencatatan kondisi', 34),
(83, '2026-11-08 00:00:00', 'Perbaikan', 'Perbaikan komponen atau penggantian bagian rusak', 34),
(84, '2026-11-07 00:00:00', 'Pemeriksaan', 'Pemeriksaan awal dan pencatatan kondisi', 35),
(85, '2026-11-09 00:00:00', 'Perbaikan', 'Perbaikan komponen atau penggantian bagian rusak', 35),
(86, '2026-11-08 00:00:00', 'Pemeriksaan', 'Pemeriksaan awal dan pencatatan kondisi', 36),
(87, '2026-11-10 00:00:00', 'Perbaikan', 'Perbaikan komponen atau penggantian bagian rusak', 36),
(88, '2026-11-12 00:00:00', 'Pengujian', 'Uji fungsi setelah perbaikan', 36),
(89, '2026-11-14 00:00:00', 'Selesai', 'Pemeriksaan akhir dan dokumentasi hasil', 36),
(90, '2026-11-09 00:00:00', 'Pemeriksaan', 'Pemeriksaan awal dan pencatatan kondisi', 37),
(91, '2026-11-10 00:00:00', 'Pemeriksaan', 'Pemeriksaan awal dan pencatatan kondisi', 38),
(92, '2026-11-12 00:00:00', 'Perbaikan', 'Perbaikan komponen atau penggantian bagian rusak', 38),
(93, '2026-11-11 00:00:00', 'Pemeriksaan', 'Pemeriksaan awal dan pencatatan kondisi', 39),
(94, '2026-11-13 00:00:00', 'Perbaikan', 'Perbaikan komponen atau penggantian bagian rusak', 39),
(95, '2026-11-15 00:00:00', 'Pengujian', 'Uji fungsi setelah perbaikan', 39),
(96, '2026-11-17 00:00:00', 'Selesai', 'Pemeriksaan akhir dan dokumentasi hasil', 39),
(97, '2026-11-12 00:00:00', 'Pemeriksaan', 'Pemeriksaan awal dan pencatatan kondisi', 40),
(98, '2026-11-14 00:00:00', 'Perbaikan', 'Perbaikan komponen atau penggantian bagian rusak', 40),
(99, '2026-11-16 00:00:00', 'Pengujian', 'Uji fungsi setelah perbaikan', 40),
(100, '2026-11-18 00:00:00', 'Selesai', 'Pemeriksaan akhir dan dokumentasi hasil', 40),
(101, '2026-11-02 00:00:00', 'Pemeriksaan', 'Pemeriksaan ulang setelah laporan pengguna', 3),
(102, '2026-11-03 00:00:00', 'Perbaikan', 'Penggantian sambungan pipa', 6),
(103, '2026-11-04 00:00:00', 'Pengujian', 'Uji buka-tutup lift setelah penyetelan', 8),
(104, '2026-11-05 00:00:00', 'Perbaikan', 'Penggantian seal dan uji aliran', 11),
(105, '2026-11-06 00:00:00', 'Pengujian', 'Pengukuran suhu keluaran AC', 14),
(106, '2026-11-07 00:00:00', 'Perbaikan', 'Penggantian kabel penerangan', 18),
(107, '2026-11-08 00:00:00', 'Pengujian', 'Uji conveyor dengan beban operasional', 21),
(108, '2026-11-09 00:00:00', 'Perbaikan', 'Pembersihan unit dan pemeriksaan kompresor', 24),
(109, '2026-11-10 00:00:00', 'Pengujian', 'Uji kebocoran setelah perbaikan', 30),
(110, '2026-11-11 00:00:00', 'Pemeriksaan', 'Pemeriksaan ulang saluran kondensasi', 33),
(111, '2026-11-12 00:00:00', 'Pengujian', 'Uji tekanan setelah penyesuaian', 36),
(112, '2026-11-13 00:00:00', 'Perbaikan', 'Penggantian baterai lampu darurat', 39);

-- --------------------------------------------------------

--
-- Table structure for table `supervisor`
--

CREATE TABLE `supervisor` (
  `id_pengguna` int NOT NULL,
  `area_pengawasan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `supervisor`
--

INSERT INTO `supervisor` (`id_pengguna`, `area_pengawasan`) VALUES
(4, 'Area Terminal Penumpang'),
(5, 'Area Operasional Bandara'),
(6, 'Area Utilitas dan Infrastruktur');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_pengguna`);

--
-- Indexes for table `detail_penugasan`
--
ALTER TABLE `detail_penugasan`
  ADD PRIMARY KEY (`id_detail`),
  ADD KEY `DETAIL_PENUGASAN_PETUGAS_FK` (`PETUGAS_id_pengguna`),
  ADD KEY `DETAIL_PENUGASAN_PENUGASAN_FK` (`PENUGASAN_id_penugasan`);

--
-- Indexes for table `fasilitas`
--
ALTER TABLE `fasilitas`
  ADD PRIMARY KEY (`id_fasilitas`),
  ADD KEY `FASILITAS_ADMIN_FK` (`ADMIN_id_pengguna`);

--
-- Indexes for table `laporan_kerusakan`
--
ALTER TABLE `laporan_kerusakan`
  ADD PRIMARY KEY (`id_laporan`),
  ADD KEY `LAPORAN_KERUSAKAN_ADMIN_FK` (`ADMIN_id_pengguna`),
  ADD KEY `LAPORAN_KERUSAKAN_FASILITAS_FK` (`FASILITAS_id_fasilitas`),
  ADD KEY `LAPORAN_KERUSAKAN_PENUGASAN_FK` (`PENUGASAN_id_penugasan`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id_pengguna`);

--
-- Indexes for table `penugasan`
--
ALTER TABLE `penugasan`
  ADD PRIMARY KEY (`id_penugasan`),
  ADD KEY `PENUGASAN_SUPERVISOR_FK` (`SUPERVISOR_id_pengguna`),
  ADD KEY `PENUGASAN_LAPORAN_KERUSAKAN_FK` (`LAPORAN_KERUSAKAN_id_laporan`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_pengguna`);

--
-- Indexes for table `progres_penanganan`
--
ALTER TABLE `progres_penanganan`
  ADD PRIMARY KEY (`id_progres`),
  ADD KEY `PROGRES_PENANGANAN_PENUGASAN_FK` (`PENUGASAN_id_penugasan`);

--
-- Indexes for table `supervisor`
--
ALTER TABLE `supervisor`
  ADD PRIMARY KEY (`id_pengguna`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_penugasan`
--
ALTER TABLE `detail_penugasan`
  MODIFY `id_detail` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `fasilitas`
--
ALTER TABLE `fasilitas`
  MODIFY `id_fasilitas` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `laporan_kerusakan`
--
ALTER TABLE `laporan_kerusakan`
  MODIFY `id_laporan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id_pengguna` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `penugasan`
--
ALTER TABLE `penugasan`
  MODIFY `id_penugasan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `progres_penanganan`
--
ALTER TABLE `progres_penanganan`
  MODIFY `id_progres` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `ADMIN_PENGGUNA_FK` FOREIGN KEY (`id_pengguna`) REFERENCES `pengguna` (`id_pengguna`);

--
-- Constraints for table `detail_penugasan`
--
ALTER TABLE `detail_penugasan`
  ADD CONSTRAINT `DETAIL_PENUGASAN_PENUGASAN_FK` FOREIGN KEY (`PENUGASAN_id_penugasan`) REFERENCES `penugasan` (`id_penugasan`),
  ADD CONSTRAINT `DETAIL_PENUGASAN_PETUGAS_FK` FOREIGN KEY (`PETUGAS_id_pengguna`) REFERENCES `petugas` (`id_pengguna`);

--
-- Constraints for table `fasilitas`
--
ALTER TABLE `fasilitas`
  ADD CONSTRAINT `FASILITAS_ADMIN_FK` FOREIGN KEY (`ADMIN_id_pengguna`) REFERENCES `admin` (`id_pengguna`);

--
-- Constraints for table `laporan_kerusakan`
--
ALTER TABLE `laporan_kerusakan`
  ADD CONSTRAINT `LAPORAN_KERUSAKAN_ADMIN_FK` FOREIGN KEY (`ADMIN_id_pengguna`) REFERENCES `admin` (`id_pengguna`),
  ADD CONSTRAINT `LAPORAN_KERUSAKAN_FASILITAS_FK` FOREIGN KEY (`FASILITAS_id_fasilitas`) REFERENCES `fasilitas` (`id_fasilitas`),
  ADD CONSTRAINT `LAPORAN_KERUSAKAN_PENUGASAN_FK` FOREIGN KEY (`PENUGASAN_id_penugasan`) REFERENCES `penugasan` (`id_penugasan`);

--
-- Constraints for table `penugasan`
--
ALTER TABLE `penugasan`
  ADD CONSTRAINT `PENUGASAN_LAPORAN_KERUSAKAN_FK` FOREIGN KEY (`LAPORAN_KERUSAKAN_id_laporan`) REFERENCES `laporan_kerusakan` (`id_laporan`),
  ADD CONSTRAINT `PENUGASAN_SUPERVISOR_FK` FOREIGN KEY (`SUPERVISOR_id_pengguna`) REFERENCES `supervisor` (`id_pengguna`);

--
-- Constraints for table `petugas`
--
ALTER TABLE `petugas`
  ADD CONSTRAINT `PETUGAS_PENGGUNA_FK` FOREIGN KEY (`id_pengguna`) REFERENCES `pengguna` (`id_pengguna`);

--
-- Constraints for table `progres_penanganan`
--
ALTER TABLE `progres_penanganan`
  ADD CONSTRAINT `PROGRES_PENANGANAN_PENUGASAN_FK` FOREIGN KEY (`PENUGASAN_id_penugasan`) REFERENCES `penugasan` (`id_penugasan`);

--
-- Constraints for table `supervisor`
--
ALTER TABLE `supervisor`
  ADD CONSTRAINT `SUPERVISOR_PENGGUNA_FK` FOREIGN KEY (`id_pengguna`) REFERENCES `pengguna` (`id_pengguna`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
