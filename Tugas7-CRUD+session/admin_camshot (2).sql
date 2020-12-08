-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2020 at 04:29 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admin_camshot`
--

-- --------------------------------------------------------

--
-- Table structure for table `checkout`
--

CREATE TABLE `checkout` (
  `id_checkout` int(11) NOT NULL,
  `id_produk` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `ongkir` int(11) DEFAULT NULL,
  `total_pembayaran` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Nikon');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `id_kategori` int(5) NOT NULL,
  `nama_produk` varchar(50) NOT NULL,
  `harga_produk` int(20) NOT NULL,
  `berat_produk` int(20) NOT NULL,
  `stok_produk` int(20) NOT NULL,
  `spesifikasi_produk` text NOT NULL,
  `foto_produk` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `id_kategori`, `nama_produk`, `harga_produk`, `berat_produk`, `stok_produk`, `spesifikasi_produk`, `foto_produk`) VALUES
(17, 1, 'EOS 80D Kit (EF-S18-55 IS STM)', 18000000, 2000, 5, 'Dual Pixel CMOS AF yang Disempurnakan, Pemotretan Beruntun 7.0fps - Selangkah Lebih Maju dalam Penangkapan Gambar\r\nDilengkapi dengan sensor CMOS ukuran APS-C 24.2MP yang menangkap gambar resolusi tinggi, EOS 80D, dengan ukuran bodi yang mudah ditangani, memiliki cakupan viewfinder kira-kira 100% yang layak dibanggakan. 45 titik yang baru saja dikembangkan, sensor AF semua tipe silang dan kecepatan pemotretan beruntun hingga 7.0fps, membuatnya sebagai pilihan istimewa untuk menangkap subjek bergerak. Pembuatan film berkualitas hingga Full HD 60p juga didukung, dan Dual Pixel CMOS AF, yang memungkinkannya mencapai AF kecepatan tinggi selama pemotretan Live View sudah disempurnakan agar kompatibel dengan penggunaan semua lensa EF. Pemotretan jarak jauh dan berbagi gambar dengan perangkat cerdas juga mudah, karena kamera ini mendukung Wi-Fi dan NFC.\r\n\r\nCMOS APS-C 24MP + DIGIC 6\r\nAF 45 titik semua tipe silang\r\nAF CMOS Piksel Ganda', '20200611101307EOS80D_kiti_b1.png'),
(18, 1, 'EOS 90D (EF-S18-55mm f/3.5-5.6 IS STM)', 22000000, 2000, 5, 'DSLR Kelas Menengah Berperforma Tinggi\r\nEOS 90D dirancang bagi mereka yang ingin lebih mengasah keterampilannya, memiliki 45 titik AF tipe silang dalam jendela bidik optiknya dengan cakupan 100% dan dapat memotret hingga 10fps, bahkan dalam mode AF tracking (pelacakan AF)--menangkap momen yang menentukan, baik dalam fotografi olahraga maupun kehidupan alam liar. 5.481 pilihan posisi fokus dan Eye Detection AF memberikan kreativitas yang lebih luas dalam menyusun komposisi pada mode Live View, memberikan jaminan setiap gambar dapat terabadikan dengan tajam.\r\n\r\nEOS 90D dapat merekam video 4K dalam mode uncropped (tanpa krop) atau cropped (krop), sehingga pengguna bisa mendapatkan sudut pandang penuh atau menjangkau objek yang lebih jauh dengan lensa mereka.\r\n\r\nOperabilitas EOS 90D semakin ditingkatkan, dilengkapi dengan daya tahan terhadap kelembapan dan kedap debu, multi-controller yang baru serta tombol rana yang lebih sempurna, mengurangi kerepotan selama pemotretan beruntun.\r\n\r\nSensor APS-C CMOS 32,5MP + DIGIC 8\r\nDual Pixel CMOS AF\r\n45 AF tipe silang (Viewfinder Optik)\r\nFace detection (Viewfinder Optik & Live View)\r\n5.481 pilihan posisi fokus (Live View)\r\nEye Detection AF (One Shot & Servo AF – Live View)\r\n4K Video (Uncropped/Cropped)', '2020061110140912b2d7431a5d4f51bd3184bb8d332bda_19_EOS+90D_BK_FrontSlantDown_18-55ISSTM.png'),
(19, 1, 'EOS 200D II (EF-S 18-55mm f/4-5.6 IS STM)', 12250000, 1500, 3, 'Buat Fotografimu Lebih Berwarna\r\nEOS 200D II adalah DSLR Canon paling ringan yang dilengkapi layar LCD Touch Screen Vari-angle. Beratnya tidak melebihi berat dari sebotol air*, kamera ini pas dibawa menggunakan tas dan siap menemanimu memotret setiap hari. Bodi kamera yang mungil ini dilengkapi dengan sensor CMOS APS-C 24,1 megapiksel, prosesor DIGIC 8 dan segudang fitur yang akan memudahkanmu untuk memotret kehidupan yang kamu temui setiap hari.\r\n\r\nUntuk pertama kalinya, fitur Creative Assist dan Smooth Skin, tergabung dalam EOS DSLR. Kamu bisa menghasilkan efek yang kamu inginkan dan dengan mudah mengambil foto selfie yang sempurna. Perangkat selulermu bisa tetap terhubung ke kamera dengan koneksi Bluetooth Hemat Energi dan kamu bisa mengirimkan foto ke perangkat selulermu melalui Wi-Fi seketika saat kamu memotret. Sehingga memudahkanmu untuk berbagi foto.\r\n\r\nEOS 200D II didesain nyaman dengan pegangan yang dalam dan sejumlah dial fungsi yang diatur ergonomis. Dengan pilihan warna Black, Silver dan White, kamera ini semakin melengkapi gayamu.\r\n\r\nSensor CMOS APS-C 24,1MP\r\nDual Pixel CMOS AF\r\nDIGIC 8\r\n3.975 pilihan posisi fokus (Live View)\r\nCreative Assist, Creative Filters dan Smooth Skin\r\nEye Detection AF (One Shot & Servo AF – Live View)', '20200611101506bc342d12af8c417393a4f78e4c10955e_EOS+200D+MKII+BK+Front.png'),
(20, 1, 'EOS 800D Kit (EF S18-55 IS STM)', 13800000, 1500, 4, 'Mengalami performa AF yang di luar dugaan\r\nAlami sendiri kecepatan pemfokusan 0.03 det.*^ selama pemotretan Live View dengan model EOS DSLR standar ini, yang juga memiliki UI intuitif yang mudah digunakan, yang memandu Anda untuk membidik gambar yang cantik dan menawan. Prosesor gambar DIGIC 7 dan sensor APS-C 24,2 megapiksel dipadukan untuk menghasilkan gambar yang lebih akurat dan detail dari yang sudah-sudah – sungguh bagus untuk melestarikan kenangan liburan, peristiwa khusus dan waktu yang dihabiskan bersama orang terkasih. Dengan sistem Dual Pixel CMOS AF, fokus bisa ditetapkan secepat 0,03 detik selama fotografi gambar diam dalam mode Live View^. Sistem ini, bersama dengan fitur desain, seperti layar LCD panel sentuh vari-angle, membuat lebih leluasa ketika memotret, lebih memudahkannya untuk membidik nyaris segalanya, dari potret diri hingga film yang terlihat profesional dalam Full HD 50p / 60p. Fitur komunikasi nirkabel mencakup Bluetooth**, sehingga bisa nyaman melangsungkan koneksi yang konstan dengan ponsel cerdas.\r\n*Di antara semua kamera digital yang lensanya dapat dipertukarkan, menyatukan sensor gambar ukuran APS-C dengan AF pendeteksian perbedaan fase pada bidang gambar. Sejak 14 Februari, 2017 (Diriset oleh Canon).\r\n^Penghitungan didasarkan pada kecepatan AF yang dihasilkan yang diukur menurut panduan CIPA.\r\n(Bervariasi, tergantung pada kondisi pemotretan dan lensa yang digunakan.) Metode pengukuran internal.\r\n\r\n[Ketentuan pengukuran]\r\nMemfokuskan kecerahan: EV 12 (suhu ruangan, ISO 100)Shooting mode: M\r\nLensa yang digunakan: EF-S18-55mm f/4-5.6 IS STM (pada panjang fokus 55mm)\r\nPemotretan Live View menggunakan tombol rana\r\nMetode AF: Live 1-point AF (dengan titik AF Tengah)pengoperasian AF: One-Shot AF\r\n\r\n** Lambang dunia dan logo Bluetooth® adalah merek dagang milik Bluetooth SIG, Inc. dan penggunaan lambang tersebut oleh Canon Inc. berdasarkan lisensi. Semua merek dagang dan nama dagang lainnya adalah properti dari masing-masing pemiliknya.\r\n\r\nAF CMOS Piksel Ganda\r\nHingga AF 45 titik semua tipe silang', '20200611101651EOS 800D.png'),
(21, 1, 'EOS 1500D Kit (EF S18-55 IS II)', 7500000, 2000, 3, 'Kamera beresolusi tinggi 24,1 megapiksel untuk menghasilkan foto yang indah\r\nSemua fotografer, bahkan pemula, akan dapat mengabadikan foto dan merekam film yang memukau dengan kamera DSLR ini. Dilengkapi dengan sensor CMOS berukuran APS-C 24,1 megapiksel dan jendela bidik optik untuk pengalaman pemotretan/perekaman yang nyata dengan DSLR. Mengabadikan foto yang tajam dengan mudah berkat AF yang cepat dan akurat, serta memiliki pegangan besar agar Anda dapat menggenggam kamera lebih mantap. Konektivitas Wi-Fi / NFC yang mampu mengunggah foto dan video secara lancar ke media sosial.\r\n\r\nSensor CMOS APS-C 24,1MP & prosesor gambar DIGIC 4+\r\n9 titik AF dengan 1 titik AF tipe silang tengah\r\nISO Standar 100 – 6400 (dapat ditingkatkan hingga 12800)\r\nDidukung Wi-Fi / NFC\r\n', '20200611101811937d6225816f49538c9dac956e8b8a8c_eos-1500d_b1.png'),
(22, 1, 'EOS 3000D Kit (EF S18-55 III)', 6000000, 1500, 3, 'Kamera sederhana untuk pengguna DSLR pemula\r\nDilengkapi dengan pegangan yang mantap pada kamera, jendela bidik optik yang dapat secara cepat menangkap momen, dan main dial untuk mengubah fungsi secara cepat, EOS 3000D menawarkan pengalaman menggunakan DSLR klasik bagi pemula. Sensor CMOS 18 megapiksel berukuran APS-C 25 kali lebih besar daripada sensor yang digunakan pada kamera smartphone. Hal ini membuat sensor mampu menangkap lebih banyak cahaya dan detail dalam sebuah foto, juga ikut menyumbangkan kemampuan untuk menghasilkan latar belakang buram nan indah. Informasi gambar secara cepat diproses oleh prosesor gambar DIGIC 4+, menghasilkan output beresolusi tinggi dan berkualitas tinggi. Kecil dan ringan, kira-kira seberat 436g (termasuk baterai dan kartu memori), inilah kamera yang ideal untuk dibawa saat bepergian.\r\n\r\nSensor CMOS APS-C 18 megapiksel & prosesor gambar DIGIC 4+\r\n9 titik AF dengan 1 titik AF tipe silang tengah\r\nISO Standar 100 – 6400 (dapat ditingkatkan hingga 12800)\r\nDidukung Wi-Fi', '20200611101851141b3157be3c414583055d976e70a9db_eos-3000d_b1.png'),
(23, 2, 'EOS M6 Mark II (EF-M18-150mm f/3.5-6.3 IS STM)', 21000000, 1500, 3, 'Kecil - Kecil Cabe Rawit\r\nKamera kecil ini sarat dengan berbagai fitur, bentuknya begitu ringkas dan ringan, sampai tidak sadar kalau Anda membawanya di dalam tas Anda. EOS M6 Mark II dapat meningkatkan pemotretan burst atau bidikan beruntun hingga 30fps dengan RAW burst mode yang dimilikinya, dan Anda dapat terus mengabadikan penari di panggung tanpa mengganggu orang lain, karena kamera ini telah dilengkapi silent electronic shutter (rana elektronik senyap) hingga 1/16.000s (membekukan gerakan apa pun yang dilakukan sang penari)\r\n\r\nBatas intensitas rendah EOS M6 Mark II sebesar EV -5 memastikan fokus yang akurat di ruangan yang memiliki penerangan redup, dan sensitivitas ISO hingga 51.200 mampu menerangi gambar Anda dengan baik.\r\n\r\nAnda dapat merekam pertunjukan dengan perekaman video 4K pada EOS M6 Mark II dalam kondisi uncropped (tanpa krop) atau dalam cropped (krop), sehingga mendapatkan tayangan penuh aula yang begitu luas atau melakukan zoom lebih besar untuk mendapatkan ekspresi wajah sang penari.\r\n\r\nSensor APS-C CMOS 32,5MP + DIGIC 8\r\nDual Pixel CMOS AF\r\n30fps RAW burst mode (One -Shot & Servo AF)\r\n5.481 pilihan area fokus\r\nEye Detection AF (One-Shot & Servo AF)\r\n4K Video (Uncropped/Cropped)', '20200611102257d23495a8ff4f4558bd617104c80bc440_26_EOS+M6+Mark+II_BK_FrontSlantLeft_EF-M18-150mm1.3.5-6.3ISSTM.png'),
(25, 6, 'dsadad', 1231231, 321311, 1, '3 wf fgdsgfsd gsg wqrewrw', '202011021412061.jpg'),
(26, 6, 'adsada', 123321, 1313131, 41, '2 dsgfsdgsdfsfsfs', '20201102161727wp4819898.jpg'),
(27, 1, 'adeee', 123, 122, 123, 'sadsadsad', '20201208161819unud-bg.jpg'),
(28, 1, '213123', 3213, 3213, 2131, 'sadsadsadsad', '20201208161835background.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `produk_foto`
--

CREATE TABLE `produk_foto` (
  `id_produk_foto` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `nama_produk_foto` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk_foto`
--

INSERT INTO `produk_foto` (`id_produk_foto`, `id_produk`, `nama_produk_foto`) VALUES
(68, 27, '20201208161819unud-bg.jpg'),
(69, 28, '20201208161835background.jpg'),
(70, 29, '20201208161908Galaxy.jfif');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `alamat_user` text NOT NULL,
  `tlp_user` varchar(50) NOT NULL,
  `level` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `name`, `username`, `email`, `password`, `alamat_user`, `tlp_user`, `level`) VALUES
(4, 'adi', '1808561089', 'adi@gmail.com', 'c46335eb267e2e1cde5b017acb4cd799', 'ewqeqw', 'weqewq', 'admin'),
(22, 'ddddddd', 'a', 'adisusilayasa@gmail.com', '$2y$10$62dIkvVG7RFNViAVpAitHutBO.pIqLV/afAxj1mxOfJEvALFn.oea', '', '', 'user'),
(23, 'Adi Susilayasa', '1808561089', 'adisusilayasa@gmail.com', '$2y$10$a8icGhPBLzR6PYGeO3M5JexJ1AxrNGBwLJcRcvo662EnjPUDe/DLe', '', '', 'user'),
(24, 'Inconesian Magazine / Book Front Cover  ', '1808561089', '3523adisusilayasa@gmail.com', '$2y$10$uabWUEcx9s59j3Q4xJSnEeq5iRXxmK8E2to4Ns83jgynkDSjoubq2', '', '', 'user'),
(25, 'Adi Susilayasa', 'kotongzz', 'adisusilayasa@gmail.com', '$2y$10$ZGb4yvsbmG8.lv3PdBMzXOGXNB89zR9JIFVLrOb9uxb./6zQ1Hwre', '', '', 'admin'),
(26, 'Adi Susilayasa', 'kotongzzz', 'adisusilayasa@gmail.comm', '$2y$10$tmYJlTZj4r7A4Ie.lDtrIup6FECmaHR1.Y8z2SwxDY.RYzTrsT.j6', 'saddddddddd', '12321321321', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `checkout`
--
ALTER TABLE `checkout`
  ADD PRIMARY KEY (`id_checkout`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `produk_foto`
--
ALTER TABLE `produk_foto`
  ADD PRIMARY KEY (`id_produk_foto`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `checkout`
--
ALTER TABLE `checkout`
  MODIFY `id_checkout` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `produk_foto`
--
ALTER TABLE `produk_foto`
  MODIFY `id_produk_foto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
