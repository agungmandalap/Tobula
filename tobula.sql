-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 01 Jul 2019 pada 15.04
-- Versi Server: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tobula`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `jenis_berita` varchar(20) NOT NULL,
  `judul_berita` varchar(255) NOT NULL,
  `slug_berita` varchar(255) NOT NULL,
  `keywords` text NOT NULL,
  `status_berita` varchar(20) NOT NULL,
  `keterangan` text NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `gambar`
--

CREATE TABLE `gambar` (
  `id_gambar` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `judul_gambar` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `gambar`
--

INSERT INTO `gambar` (`id_gambar`, `id_produk`, `judul_gambar`, `gambar`, `tanggal_update`) VALUES
(1, 15, 'Gambar Belakang', 'agama3_belakang.jpg', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `header_transaksi`
--

CREATE TABLE `header_transaksi` (
  `id_header_transaksi` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `kode_transaksi` varchar(255) NOT NULL,
  `tanggal_transaksi` datetime NOT NULL,
  `jumlah_transaksi` int(11) NOT NULL,
  `status_bayar` varchar(20) NOT NULL,
  `jumlah_bayar` int(11) NOT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `slug_kategori` varchar(255) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `urutan` int(11) DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `slug_kategori`, `nama_kategori`, `urutan`, `tanggal`) VALUES
(1, 'buku-novel', 'Buku Novel', 1, '2019-03-19 23:29:06'),
(2, 'komik', 'Komik', 2, '2019-03-19 23:29:06'),
(4, 'komputer-dan-internet', 'Komputer dan Internet', 3, '2019-03-19 23:51:42'),
(5, 'anak-anak', 'Anak-Anak', 4, '2019-03-30 02:10:47'),
(6, 'buku-sekolah', 'Buku Sekolah', 5, '2019-03-30 02:12:25'),
(7, 'bahasa-dan-kamus', 'Bahasa dan Kamus', 6, '2019-03-30 02:12:52'),
(8, 'sejarah-dan-budaya', 'Sejarah dan Budaya', 7, '2019-03-30 02:13:30'),
(9, 'majalah', 'Majalah', 8, '2019-03-30 02:14:21'),
(10, 'hobi-dan-usaha', 'Hobi dan Usaha', 9, '2019-03-30 02:15:24'),
(11, 'agama', 'Agama', 10, '2019-03-30 02:15:41'),
(12, 'ekonomi-dan-manajemen', 'Ekonomi dan Manajemen', 11, '2019-03-30 02:29:31'),
(13, 'masakan-dan-makanan', 'Masakan dan Makanan', 12, '2019-03-30 02:30:24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `konfigurasi`
--

CREATE TABLE `konfigurasi` (
  `id_konfigurasi` int(11) NOT NULL,
  `namaweb` varchar(255) NOT NULL,
  `tagline` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `keywords` text NOT NULL,
  `metatext` text NOT NULL,
  `telepon` varchar(50) NOT NULL,
  `alamat` varchar(300) NOT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `deskripsi` text,
  `logo` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `rekening_pembayaran` varchar(255) DEFAULT NULL,
  `tanggal_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `konfigurasi`
--

INSERT INTO `konfigurasi` (`id_konfigurasi`, `namaweb`, `tagline`, `email`, `website`, `keywords`, `metatext`, `telepon`, `alamat`, `facebook`, `instagram`, `deskripsi`, `logo`, `icon`, `rekening_pembayaran`, `tanggal_update`) VALUES
(1, 'Toko Buku Lama Shop', 'Kumpulan Buku-Buku Murah', 'tokobukulama@gmail.com', 'http://tobula.com', 'Toko Buku Lama - Online Store', 'OK', '021-345345346', 'Jl. Raya Kranggan No. 6\r\nJatisampurna Bekasi', 'http://facebook.com/tobula', 'http://instagram.com/tobula', 'Toko Buku Lama Shop', 'logo11.png', 'favicon.png', 'OK', '2019-05-11 15:54:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `status_pelanggan` varchar(20) NOT NULL,
  `nama_pelanggan` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(64) NOT NULL,
  `telepon` varchar(50) NOT NULL,
  `alamat` varchar(300) NOT NULL,
  `tanggal_daftar` datetime NOT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `kode_produk` varchar(20) DEFAULT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `tanggal_terbit` varchar(255) DEFAULT NULL,
  `jumlah_halaman` int(11) NOT NULL,
  `slug_produk` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `keywords` text,
  `harga` int(11) NOT NULL,
  `stok` int(11) DEFAULT NULL,
  `gambar` varchar(255) NOT NULL,
  `status_produk` varchar(20) NOT NULL,
  `tanggal_post` datetime DEFAULT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_produk`, `id_user`, `id_kategori`, `kode_produk`, `nama_produk`, `penulis`, `penerbit`, `tanggal_terbit`, `jumlah_halaman`, `slug_produk`, `keterangan`, `keywords`, `harga`, `stok`, `gambar`, `status_produk`, `tanggal_post`, `tanggal_update`) VALUES
(1, 4, 1, 'NOV001', 'dilan 1990', 'Pidi Baiq', 'PT. Mizan Pustaka', '2014', 332, 'dilan-1990-nov001', '<p>dilan 1990</p>\r\n', 'dilan, pidi baiq, 1990', 45000, 100, 'nov61.jpg', 'Publish', '2019-03-30 01:07:43', '2019-04-01 08:48:12'),
(2, 4, 1, 'NOV002', 'dilan 1991', 'Pidi Baiq', 'PT. Mizan Pustaka', '2015', 344, 'dilan-1991-nov002', '<p>dilan 1991</p>\r\n', 'dilan, pidi baiq, 1991', 54000, 100, 'nov73.jpg', 'Publish', '2019-04-01 07:21:41', '2019-04-01 09:28:53'),
(3, 4, 1, 'NOV003', 'milea', 'Pidi Baiq', 'PT. Mizan Pustaka', '2016', 360, 'milea-nov003', '<p>milea</p>\r\n', 'milea, pidi baiq', 45000, 100, 'nov51.jpg', 'Publish', '2019-04-01 07:23:13', '2019-04-01 08:45:26'),
(4, 4, 1, 'NOV004', 'Critical Eleven', 'Ika Natassa', 'Gramedia Pustaka Utama', '10 Agustus 2015', 344, 'critical-eleven-nov004', '<p>Critical Eleven</p>\r\n', 'critical eleven, ika natassa', 60000, 10, 'nov81.jpg', 'Publish', '2019-04-01 07:28:14', '2019-04-01 08:46:43'),
(5, 4, 1, 'NOV005', 'Laskar Pelangi', 'Andrea Hirata', 'Bentang Pustaka', '2005', 529, 'laskar-pelangi-nov005', '<p>laskar pelangi</p>\r\n', 'laskar pelangi, andrea hirata', 40000, 5, 'nov122.jpg', 'Publish', '2019-04-01 07:30:19', '2019-04-01 09:30:36'),
(6, 4, 2, 'KMK001', 'Haikyuu vol17', 'Haruichi Furudate', 'M&C Comics', '2019', 200, 'haikyuu-vol17-kmk001', '<p>Haikyuu vol17</p>\r\n', 'Haikyuu, Haruichi Furudate', 22000, 5, 'komik5.jpg', 'Publish', '2019-04-01 07:34:25', '2019-04-01 05:34:25'),
(7, 4, 2, 'KMK002', 'Diamond No Ace vol38', 'Yuji Terajima', 'Yuji Terajima', 'Maret 2019', 200, 'diamond-no-ace-vol38-kmk002', '<p>Diamond No Ace vol38</p>\r\n', 'Diamond No Ace, Yuji Terajima', 22000, 5, 'komik7.jpg', 'Publish', '2019-04-01 07:36:39', '2019-04-01 05:36:39'),
(8, 4, 2, 'KMK003', 'Akame Ga Kill vol3', 'Takahiro,Tetsuya Tashiro', 'Elex Media Komputindo ', 'Maret 2019', 216, 'akame-ga-kill-vol3-kmk003', '<p>Akame Ga Kill vol3</p>\r\n', 'Akame Ga Kill, Takahiro, Tetsuya Tashiro', 26000, 10, 'komik6.jpg', 'Publish', '2019-04-01 07:38:30', '2019-04-01 05:38:30'),
(9, 4, 2, 'KMK004', 'Clean Freak! Aoyama-kun 01', 'Taku Sakamoto', 'Elex Media Komputindo ', 'Maret 2019', 200, 'clean-freak-aoyama-kun-01-kmk004', '<p>Clean Freak! Aoyama-kun 01</p>\r\n', 'Clean Freak, Aoyama-kun, Taku Sakamoto', 22000, 10, 'komik1.jpg', 'Publish', '2019-04-01 07:40:32', '2019-04-01 05:40:32'),
(10, 4, 2, 'KMK005', 'Rainbow Days 15', 'Minami Mizuno', 'Elex Media Komputindo ', 'Maret 2019', 192, 'rainbow-days-15-kmk005', '<p>Rainbow Days 15</p>\r\n', 'Rainbow Days, Minami Mizuno', 22000, 10, 'komik9.jpg', 'Publish', '2019-04-01 07:42:12', '2019-04-01 05:42:12'),
(11, 4, 13, 'MNM001', 'Dapur Bekal Quik & Easy', 'CLARISSA NOVIANY', 'Gramedia Pustaka Utama ', 'Januari - 2019', 286, 'dapur-bekal-quik-easy-mnm001', '<p>Dapur Bekal Quik &amp; Easy</p>\r\n', 'dapur bekal, clarissa noviany', 130000, 10, 'masak2.jpg', 'Publish', '2019-04-08 07:27:31', '2019-04-08 05:27:31'),
(12, 4, 13, 'MNM002', 'Snack Antilapar ala DEBM', 'Robert Hendrik Liembono', 'Gramedia Pustaka Utama', 'Februari - 2019', 124, 'snack-antilapar-ala-debm-mnm002', '<p>Snack Antilapar ala DEBM</p>\r\n', 'snack antilapar ala debm, Robert Hendrik Liembono', 100000, 10, 'masak4.jpg', 'Publish', '2019-04-08 07:29:31', '2019-04-08 05:29:31'),
(13, 4, 11, 'AGM001', 'AL-MATSURAT KUBRA Doa & Dzikir Penyejuk Jiwa', 'Imam Hasan Al-Banna', 'Gema Insani', 'Maret - 2019', 120, 'al-matsurat-kubra-doa-dzikir-penyejuk-jiwa-agm001', '<p>AL-MATSURAT KUBRA Doa &amp; Dzikir Penyejuk Jiwa</p>\r\n', 'AL-MATSURAT KUBRA Doa & Dzikir Penyejuk Jiwa, Imam Hasan Al-Banna', 25000, 5, 'agama1.jpg', 'Publish', '2019-04-08 07:31:57', '2019-04-08 05:31:57'),
(14, 4, 11, 'AGM002', 'Di Dalam Lembah Kehidupan', 'Prof. Dr. Hamka', 'Gema Insani', 'Maret - 2019', 120, 'di-dalam-lembah-kehidupan-agm002', '<p>Di Dalam Lembah Kehidupan</p>\r\n', 'Di Dalam Lembah Kehidupan, Prof. Dr. Hamka', 45000, 5, 'agama2.jpg', 'Publish', '2019-04-08 07:33:43', '2019-04-08 05:33:43'),
(15, 4, 11, 'AGM003', 'Pelajaran Agama Islam: Hamka Berbicara tentang Rukun Iman', 'Prof. Dr. Hamka', 'Gema Insani', 'Maret - 2019', 120, 'pelajaran-agama-islam-hamka-berbicara-tentang-rukun-iman-agm003', '<p>Pelajaran Agama Islam: Hamka Berbicara tentang Rukun Iman</p>\r\n', 'Pelajaran Agama Islam: Hamka Berbicara tentang Rukun Iman, Prof. Dr. Hamka', 130000, 10, 'agama3.jpg', 'Publish', '2019-04-08 07:35:15', '2019-04-08 05:35:15'),
(16, 4, 1, 'NVL001', 'Blast Heart', 'Andi Tenri Ayu Mayasari', 'Change', 'Juni - 2014', 50, 'blast-heart-nvl001', '<p>Seperti sebuah mimpi, kehidupan Rafa yang mewah berubah drastis. Bukan hanya kematian kakeknya yang tiba-tiba, tapi seluruh harta warisannya lenyap. Rafa bertemu dengan Kirei, gadis pendiam nan misterius yang membuatnya penasaran. Memiliki kisah masa lalu yang sama-sama menyedihkan, membuat keduanya dekat. Rafa mencoba mendekati Kirei, tapi semakin ia berusaha, gadis itu justru semakin jauh dari dirinya.<br />\r\n<br />\r\nPersahabatannya yang manis telah dipenuhi dengan kebohongan yang amat pahit. Air mata yang jatuh, luka yang tersayat, darah yang menetes, hati yang terluka, jeritan kesakitan, akankah semua terobati? Ataukah berakhir sia-sia?</p>\r\n', '', 510000, 10, 'nvl001.jpg', 'Publish', '2019-05-24 10:01:43', '2019-05-24 08:17:00'),
(17, 4, 1, 'NVL002', 'Binorrow: Tongkat Musa dan Tujuh Roh Boorne', 'Sudarman BK', 'Buku Mojok ', '2018', 296, 'binorrow-tongkat-musa-dan-tujuh-roh-boorne-nvl002', '<p>&quot;Sudarman BK mendokumentasikan kegemaran mendaki gunung dengan cara tidak biasa. Alih-alih menuliskan catatan perjalanan, ia justru menuangkannya dalam bentuk novel fantasi yang memukau.&quot;<br />\r\n<br />\r\nBinorrow nyaris putus asa dihina terus-menerus karena kebodohannya. Ia bahkan melakukan percobaan bunuh diri. Beruntung, ia mampu bertahan. Dan kembali melakukan kegiatan sebagaimana biasa. Peristiwa menyedihkan itu membuat orang tuanya memindahkannya ke sekolah berasrama.<br />\r\n<br />\r\nDi sekolah barunya, Binorrow bertemu Leon, Franklin, dan Evelyn. Ketiga sahabat yang melenyapkan bayangan seram &#39;sekolah berasrama&#39;. Mereka juga ikut serta dalam petualangan menuju gunung Sweden, gunung angker yang menjadi batas antara dunia manusia dan Dunia Grovog.<br />\r\n<br />\r\nBerbagai rintangan menghambat Binorrow dan ketiga sahabatnya dalam mendaki gunung Sweeden. Dari bertemu manusia kerdil, makhluk penjaga puncak Sweeden, hingga menghalangi para Grovog membuka pintu ke dunia manusia. Perjalanan yang menguji tekad dan persahabatan, serta mengantarkan Binorrow menemukan dirinya yang sejati</p>\r\n', '', 63000, 10, 'nvl002.jpg', 'Publish', '2019-05-24 10:05:38', '2019-05-24 08:16:42'),
(18, 4, 1, 'NVL003', 'Goodbye, Things: Hidup Minimalis ala Orang Jepang', 'Fumio Sasaki', 'Gramedia Pustaka Utama ', 'November - 2018', 280, 'goodbye-things-hidup-minimalis-ala-orang-jepang-nvl003', '<p>Fumio Sasaki bukan ahli dalam hal minimalisme; ia hanya pria biasa yang mudah tertekan di tempat kerja, tidak percaya diri, dan terus menerus membandingkan diri dengan orang lain-sampai suatu hari, ia memutuskan untuk mengubah hidupnya dengan mengurangi barang yang ia miliki. Manfaat luar biasa langsung ia rasakan: tanoa semua &quot;barangnya&quot;, Sasaki akhirnya merasakan kebebasan sejati, kedamaian pikiran, dan penghargaan terhadap momen saat ini</p>\r\n', '', 63000, 10, 'nvl003.jpg', 'Publish', '2019-05-24 10:08:37', '2019-05-24 08:16:24'),
(19, 4, 1, 'NVL004', 'Sobat, Jangan Lupakan Aku!', 'Camille Noe', 'Alvabet ', 'November - 2012', 200, 'sobat-jangan-lupakan-aku-nvl004', '<p>Marissa dan Julia telah bersahabat karib sejak kecil. Marissa seorang gadis yang cerdas dan pendiam dengan sifat yang menenangkan. Dia selalu bertarung dengan berat badannya, juga kurang percaya diri. Namun, pertemanannya dengan Julia membuat dia merasa berarti. Julia, di sisi lain, adalah wanita nan cantik, karismatik, dan posesif. Keduanya berlawanan karakter tetapi tak terpisahkan sebagai sahabat.<br />\r\n<br />\r\nSepuluh tahun kemudian, saat ini, mereka tinggal di sebuah kota yang sejak kecil mereka impikan. Marissa bekerja sebagai editor senior di sebuah majalah ternama, sementara Julia bekerja sebagai humas sebuah perusahaan tari terkemuka. Suatu ketika, Julia mengalami kecelakaan. Dia bertahan hidup dengan cedera yang tidak serius, namun kerusakan pada otaknya merenggut ingatannya dan megubah kepribadiannya. Kala Julia berjuang mengembalikan ingatannya, Marissa justru alpa dalam jiwa dan hari-hari Julia, seolah melupakannya.<br />\r\n<br />\r\nMampukah keduanya mengembalikan persahabatan yang terburai? Inilah cerita menggetarkan tentang kekuatan persahabatan, kenangan masa lalu, dan mitos ciptaan sendiri yang menghalangi potensi dan kekuatan kita yang sesungguhnya. Lebih dari itu, inilah kisah inspirasional tentang kekuatan memaafkan dan melupakan.</p>\r\n', '', 46000, 15, 'nvl004.jpg', 'Publish', '2019-05-24 10:11:58', '2019-05-24 08:16:11'),
(20, 4, 1, 'NVL005', 'Satu Mata Panah Pada Kompas Yang Buta', 'Suarcani', 'Jendela O\' Publishing House ', 'Maret - 2016', 250, 'satu-mata-panah-pada-kompas-yang-buta-nvl005', '<p>Kompasmu, apakah kamu memperhatikannya? Ada dua arah di sana. Utara dan selatan. Sama halnya seperti matamu sendiri, arah itu menyelamatkanmu dari kesesatan. Tapi kompas milikku buta. Tidak ada utara selatan dalam hidupku, semua hanyut dalam ketakutan dan masa lalu. Lima belas tahun penjara mencuri jarum kompasku dan setelah bebas, aku pun masih belum tahu ke mana arah hidupku. Aku pembunuh, korban hasrat yang menyimpang. Dunia luar menungguku, berpura-pura menyambutku dengan semarak, untuk&nbsp; kemudian kembali meremukkanku dalam&nbsp; ketakutan. Aku butuh jalan, butuh mata kompasku. Apakah kamu bisa membantuku menemukannya? Aku Ravit, bekas tahanan yang kini kembali terpenjara rasa takut.</p>\r\n', '', 55000, 20, 'nvl005.jpg', 'Publish', '2019-05-24 10:15:56', '2019-05-24 08:15:56'),
(21, 4, 4, 'KDI001', 'Awas! Hati-Hati dengan Emailmu : Etika Beremail dan Panduan Mengelola yang Efektif', 'Utari Ninghadiyati dan Dewi Agushinta R', 'Kataelha', 'Maret - 2010', 100, 'awas-hati-hati-dengan-emailmu-etika-beremail-dan-panduan-mengelola-yang-efektif-kdi001', '<p>E-mail telah menjadi bagian sangat penting yang memudahkan pekerjaan dan hubungan kita dengan orang lain.<br />\r\n<br />\r\nNamun e-mail hanya bisa memberi daya dukung positif bila cermat menggunakannya. Banyak kejadian menyangkut e-mail berdampak serius. Salah satunya kasus Prita Mulyasari, dia sempat dipenjara gara-gara e-mail.<br />\r\n<br />\r\nBuku ini memberi panduan anda menggunakan e-mail secara jelas, runtut dan terperinci. Semoga buku ini membuat Anda terbebas dari kesalahan penggunanan e-mail. Terima kasih</p>\r\n', '', 24000, 10, 'Kdi001.jpg', 'Publish', '2019-05-24 10:20:26', '2019-05-24 08:20:26'),
(22, 4, 4, 'KDI002', 'CISCO Kung Fu: Jurus-Jurus Routing', 'Aristo', 'Jasakom', 'Desember - 2017', 250, 'cisco-kung-fu-jurus-jurus-routing-kdi002', '<p>Router Cisco yang merupakan router yang sangat handal dengan kapasitas hardware yang sangat mumpuni dan digunakan pada berbagai infrastruktur jaringan baik pada<br />\r\nperusahaan-perusahaan maupun pada berbagai provider internet. Namun dikarenakan antar muka yang menggunakan fitur command line, mempelajari Router Cisco bagi sebagian kalangan mungkin terasa memberatkan. Namun apakah hal tersebut akan menjadi penghalang bagi Anda untuk mempelajari berbagai fitur-fitur handal yang dimiliki oleh router ini ? Melalui buku ini segala hal mengenai teknik-teknik routing dengan menggunakan Router Cisco yang kadang dipandang rumit akan dibuat sederhana dan menyenangkan.<br />\r\n<br />\r\nBagi Anda yang baru ingin mencoba membangun skill routing terutama pada penerapannya dengan menggunakan Router Cisco, buku ini akan sangat cocok bagi Anda. Adapun secara garis besar, konfigurasi yang akan dipratekkan dalam buku ini, yaitu :<br />\r\n<br />\r\n?&nbsp;&nbsp;&nbsp; Konfigurasi-konfigurasi dasar pada Route<br />\r\n?&nbsp;&nbsp;&nbsp; Konfigurasi static route<br />\r\n?&nbsp;&nbsp;&nbsp; Konfigurasi RIP<br />\r\n?&nbsp;&nbsp;&nbsp; Konfigurasi OSPF single area dan multi area<br />\r\n?&nbsp;&nbsp;&nbsp; Konfigurasi EIGRP<br />\r\n?&nbsp;&nbsp;&nbsp; Konfigurasi Frame Relay dan MPLS<br />\r\n<br />\r\nSetiap pemaparan materi, baik teori-teori dasar maupun praktek konfigurasi disajikan dengan menggunakan bahasa yang sederhana, komunikatif, dan mudah dipahami serta menggunakan contoh-contoh topologi yang sederhana dan mudah untuk diaplikasikan</p>\r\n', '', 58000, 30, 'kdi002.jpg', 'Publish', '2019-05-24 10:23:57', '2019-05-24 08:23:57'),
(23, 4, 4, 'KDI003', 'Photoshop - World Best Effect Collection (Full Color)', 'JASAKOM', 'Jasakom', 'Juni - 2010', 300, 'photoshop-world-best-effect-collection-full-color-kdi003', '<p>kumpulan efek-efek terbaik dunia menggunakan adobe photoshop berdasarkan ide dan teknik dari alexandro p. hernandez , peter kalous, mark mayer,jurgen heiss,dan artis artis terbaik dunia lainnya</p>\r\n', '', 85000, 30, 'KDI003.jpg', 'Publish', '2019-05-24 10:26:46', '2019-05-24 08:26:46'),
(24, 4, 4, 'KDI004', 'Hacking Aplikasi Web : Uncensored', 'Efvy Zam', 'Jasakom', 'Oktober - 2015', 300, 'hacking-aplikasi-web-uncensored-kdi004', '<p>Buku ini akan menunjukkan kepada Anda, bahwa dengan logika yang sederhana saja maka seseorang sudah bisa melakukan aksi website hacking.<br />\r\n<br />\r\nDimulai dari proses menggali informasi sebuah website hingga melakukan eksekusi untuk menerobos website. Tentu saja ada banyak jalan menuju Roma dan banyak pula cara atau teknik yang dapat ditempuh.<br />\r\n<br />\r\nTeknik itulah yang akan diulas dan dibahas dalam buku ini.<br />\r\n<br />\r\nBagi hacker, website adalah sebuah pintu yang bila tidak dikunci dengan baik, akan menjadi masuk yang sangat menyenangkan.<br />\r\n<br />\r\nBila Pintu Depan Terbuka Lebar, Untuk Apa Lewat Pintu Belakang?</p>\r\n', '', 62000, 30, 'kdi004.jpg', 'Publish', '2019-05-24 10:30:30', '2019-05-24 08:30:30'),
(25, 4, 4, 'KDI005', 'Panduan Lengkap Windows 10', 'Indra Susanto', 'Jasakom ', 'September - 2016', 300, 'panduan-lengkap-windows-10-kdi005', '<p>Windows 10 adalah sistem operasi yang diharapkan mampu mengembalikan kejayaan microsoft dl kancah sistem operasi yang terus berkembang dan berubah. dengan mengusungteknologi terkini dan berbagai macam fitur canggih yang akan membuat anda bisa bekerja dengan efektif dan efisien sesuai dengan perkembangan jaman yang begitu dinamis. buku ini akan membahas berbagai macam fitur yang ada dl dalam microsoft Windows 10 agar Anda bisa memahami dan memanfaatkannya secara maksimal. pembahasan didalam buku ini dilakukan dengan cara sederhana namun mendalam.</p>\r\n', '', 87000, 30, 'kdi005.jpg', 'Publish', '2019-05-24 10:32:56', '2019-05-24 08:32:56'),
(26, 4, 12, 'EDM001', 'Manusia Digital', 'CHRIS SKINNER', ' Elex Media Komputindo', '27 Mei 2019', 432, 'manusia-digital-edm001', '<pre>\r\nKita hidup di abad keempat kemanusiaan. Fase pertama menjadi manusia. Yang kedua menjadi beradab, ketika kami menciptakan uang. Yang ketiga menjadi komersial, ketika kami menciptakan bank. Di abad keempat kemanusiaan ini, kita telah mengubah diri kita menjadi Manusia Digital.Teknologi mengubah cara kita berbicara, berdagang, dan bertransaksi. Kita sekarang berinteraksi dengan teknologi setiap kali kita melakukan bisnis, berteman, dan menjalani kehidupan kita. \r\n\r\nApa artinya ini untuk bisnis, perbankan, masyarakat dan pemerintah? Apa artinya ini bagi Anda? Digital Human mengeksplorasi transformasi yang menyapu seluruh bidang kehidupan: dominasi raksasa digital global; munculnya struktur keuangan baru (Tekfin); gangguan yang disebabkan oleh Bitcoin; munculnya robot; dan jatuhnya bank. Segera, tidak hanya semua orang di planet ini akan terhubung secara digital, mereka dapat keluar dari kemiskinan melalui inklusi.</pre>\r\n', '', 115000, 25, 'edm001.jpg', 'Publish', '2019-05-24 10:41:52', '2019-05-24 08:41:52'),
(27, 4, 12, 'EDM002', 'Buka Hati Buka Dompet Buka Celana', 'Andreas Freddy Pieloor', ' Elex Media Komputindo', '27 Mei 2019', 168, 'buka-hati-buka-dompet-buka-celana-edm002', '<pre>\r\nKami percaya bahwa sebagian besar pasangan suami isteri (pasutri) di Indonesia dan bahkan di dunia yang telah menikah saat ini, tidak atau belum membicarakan masalah keuangan sebelum mereka berikrar setia sehidup semati. \r\n\r\nMereka berpikir bahwa masalah keuangan adalah masalah yang peka atau &ldquo;tabu&rdquo; untuk dibicarakan sebelum mereka menikah. Namun kenyataannya, setelah menikah pun mereka masih menganggap hal tersebut sebuah hal yang kurang pantas diperbincangkan, apalagi diperdebatkan.</pre>\r\n', '', 55000, 25, 'edm002.jpg', 'Publish', '2019-05-24 10:44:42', '2019-05-24 08:44:42'),
(28, 4, 12, 'EDM003', 'Laris Manis Bisnis Wisata Halal', 'Cheriatna', 'Gema Insani ', 'Maret - 2019', 168, 'laris-manis-bisnis-wisata-halal-edm003', '<p>Jadi Muslim berduit yang bisa keliling dunia gratis bukanlah sebuah mimpi. Era digitalisasi membuat segalanya menjadi cepat dan mudah, termasuk buku ini. Anda bisa dengan mudah mempunyai usaha travel dengan mudah, bisa aroundthe world ke banyak kota di dunia.<br />\r\n<br />\r\nPasar wisata halal ceruknya masih sangat luas. Bekerja, dapat duit, dapat pahala, itulah wisata halal yang kini trennya meluas. Muslim milenial, ayo kita berjalan di muka bumi Singgahi kota-kota di dunia.<br />\r\n<br />\r\nBuku ini ditulis berdasarkan pengalaman dari seorang traveler yang telah singgah di lebih dari 200 kota di dunia, dari Xinjiang, Kashmir, hingga Paris. Terkadang Cheriatna<br />\r\nbreakfast di Paris, lunch di Brussel Belgia, dinner di Amsterdam dalam satu hari. Asyik, ya? Ayo, tunggu apalagi. Memulai bisnis travel halal adalah investasi menguntungkan untuk masa depan Anda.<br />\r\n<br />\r\nDengan memiliki buku ini Anda punya kesempatan belajar langsung dengan penulis.</p>\r\n', '', 56000, 25, 'edm003.jpg', 'Publish', '2019-05-24 10:51:31', '2019-05-24 08:51:31'),
(29, 4, 12, 'EDM004', 'Bisnis Modal 500 Ribuan', 'EVITA P PURNAMASARI', 'Anak Hebat Indonesia ', 'Mei - 2018', 476, 'bisnis-modal-500-ribuan-edm004', '<p>+ PERKIRAAN &amp; ANALISIS BISNIS<br />\r\n+ STRATEGI, HAMBATAN DAN CARA MENGATASINYA<br />\r\n+ TIPS MENJADI WIRAUSAHA SUKSES<br />\r\n+ KISAH SUKSES PARA PENGUSAHA MUDA<br />\r\n<br />\r\n<br />\r\n-&nbsp;&nbsp;&nbsp; Bisnis Warung Tenda<br />\r\n-&nbsp;&nbsp;&nbsp; Cafe Awak Muda<br />\r\n-&nbsp;&nbsp;&nbsp; Bisnis Permen 3alie<br />\r\n-&nbsp;&nbsp;&nbsp; Bisnis Sirup Jahe<br />\r\n-&nbsp;&nbsp;&nbsp; Bisnis Manisan Pala<br />\r\n-&nbsp;&nbsp;&nbsp; Bisnis Mie Sayur<br />\r\n-&nbsp;&nbsp;&nbsp; Bisnis Keripik Singkong Pedas<br />\r\n-&nbsp;&nbsp;&nbsp; Bisnis Kue Aneka Rasd dan Bentuk<br />\r\n-&nbsp;&nbsp;&nbsp; Bisnis Jus Buah<br />\r\n-&nbsp;&nbsp;&nbsp; Bisnis Kue Kering Tanpa Telur<br />\r\n-&nbsp;&nbsp;&nbsp; Bisnis Kebab<br />\r\n-&nbsp;&nbsp;&nbsp; Bisnis Ceriping Pisang<br />\r\n-&nbsp;&nbsp;&nbsp; Bisnis Gepuk Daging<br />\r\n-&nbsp;&nbsp;&nbsp; Bisnis Tahu Isi Sayur<br />\r\n-&nbsp;&nbsp;&nbsp; Bisnis Tahu Bumbu Krispi<br />\r\n-&nbsp;&nbsp;&nbsp; Bisnis Baiado Bakso Sapi<br />\r\n-&nbsp;&nbsp;&nbsp; Bisnis Kremes Kelamud<br />\r\n-&nbsp;&nbsp;&nbsp; Bisnis Pare Krispi<br />\r\n-&nbsp;&nbsp;&nbsp; Bisnis Bakmi<br />\r\n-&nbsp;&nbsp;&nbsp; Bisnis Keripik Pisang Keju<br />\r\n-&nbsp;&nbsp;&nbsp; Bisnis Skotel<br />\r\n-&nbsp;&nbsp;&nbsp; Makaroni Saus Tomat<br />\r\n-&nbsp;&nbsp;&nbsp; Bisnis Sekoteng<br />\r\n- &nbsp;&nbsp; Bisnis lapis legit Kukus<br />\r\n-&nbsp;&nbsp;&nbsp; Bisnis Tea Corner<br />\r\n-&nbsp;&nbsp;&nbsp; Online Marketing<br />\r\n-&nbsp;&nbsp;&nbsp; Bisnis Rental Laptop<br />\r\n-&nbsp;&nbsp;&nbsp; Bisnis Jual-Beli Sjjeaker<br />\r\n-&nbsp;&nbsp;&nbsp; MC (Master of Ceremony)</p>\r\n', '', 60000, 25, 'edm004.jpg', 'Publish', '2019-05-24 10:54:09', '2019-05-24 08:54:09'),
(30, 4, 12, 'EDM005', 'Rahasia Sukses Membangun Kekayaan Melalui Bisnis Properti Kost', 'Iwan Kenrianto', 'Gramedia Pustaka Utama ', '2 Juli 2018', 144, 'rahasia-sukses-membangun-kekayaan-melalui-bisnis-properti-kost-edm005', '<p>KENAPA BUKU INI WAJIB DIBACA?<br />\r\n<br />\r\n? Ditulis langsung oleh praktisi yang sudah terbukti menghasilkan.<br />\r\n<br />\r\n? Berisikan banyak gambar ilustrasi dan studi kasus untuk memudahkan pembaca.<br />\r\n<br />\r\n? Materi yang aplikatif dan dapat langsung dipraktikkan.<br />\r\n<br />\r\nSETELAH MEMBACA BUKU INI ANDA AKAN MAMPU:<br />\r\n<br />\r\n? Mengerti cara investasi di bisnis properti kost dengan modal yang minimal atau tanpa modal.<br />\r\n<br />\r\n? Menemukan listing properti kost yang hot deal.<br />\r\n<br />\r\n? Meningkatkan grade bisnis properti kost Anda.<br />\r\n<br />\r\n? Mengoptimalkan kapasitas hunian kost Anda.<br />\r\n<br />\r\n? Membuat bisnis kost Anda menjadi autopilot tanpa kehadiran Anda.<br />\r\n<br />\r\n? Menambah bisnis kost Anda dengan leverage.</p>\r\n', '', 85000, 25, 'edm005.jpg', 'Publish', '2019-05-24 10:57:55', '2019-05-24 08:57:55'),
(31, 4, 8, 'SDB001', 'Reaktualisasi Kecerdasan yang Terpinggirkan', 'F.X. Rahyono', 'Wedatama Widya Sastra', 'April - 2018', 240, 'reaktualisasi-kecerdasan-yang-terpinggirkan-sdb001', '<p>Topik-topik yang disajikan dalam buku ini merupakan ungkapan kegelisahan penulis terhadap pewarisan dan keberlanjutan keadiluhungan budaya Pemahaman tentang lingkup kebudayaan pun menyempit. Di samping itu pembelajaraan tentang kebudayaan tidak secara tegas diperankan sebagai sarana pembelajaran kecerdasan.<br />\r\n<br />\r\nTulisan-tulisan dalam buku ini juga merupakan upaya penulis untuk membuktikan bahwa linguistik merupakan &quot;pisau bedah&quot; analisis kebudayaan yang dapat diberdayakan untuk menemukan kecerdasan dalam proses penciptaan dan pembelajaran kebudayaan. Tulisan-tulisan tersebut dipilah ke dalam dua bagian. Bagian pertama adalah kelompok tulisan tentang pragmatik dan kearifan budaya; sedang kelompok kedua merupakan tulisan-tulisan tentang reaktualisasi kecerdasan tradisional.</p>\r\n', '', 55000, 20, 'sdb001.jpg', 'Publish', '2019-05-24 11:01:52', '2019-05-24 09:01:52'),
(32, 4, 8, 'SDB002', 'Mahasiswa, Nasionalisme & Penjara Perhimpunan Indonesia 1923-1928', 'John Ingleson', 'Komunitas Bambu', 'Mei - 2018', 250, 'mahasiswa-nasionalisme-penjara-perhimpunan-indonesia-1923-1928-sdb002', '', '', 103000, 30, 'sdb002.jpg', 'Publish', '2019-05-24 11:17:08', '2019-05-24 09:17:08'),
(33, 4, 8, 'SDB003', 'Perang Salib Timur dan Barat', 'Jati Pamungkas, S.Hum, M.A', ' Sociality', ' 3 Jan 2018', 230, 'perang-salib-timur-dan-barat-sdb003', '<pre>\r\nPerang Salib merupakan peperangan yang paling bersejarah di dunia karena melibatkan faktor paling rumit dan paling pribadi dalam diri manusia yaitu religiusitas. Perang Salib adalah peperangan yang terjadi antara pasukan Kristen dari berbagai kerajaan di Eropa melawan pasukan Islam yang bertujuan untuk merebut &quot;Kota Suci&quot; Yerusalem dari kekuasaan Islam (Sinclair, 1995: 57). Pengertian tersebut merupakan mayoritas arti Perang Salib yang dipahami orang-orang pada masa sekarang. Pengertian tersebut dapat dipersempit lagi yaitu dengan melibatkan kata agama yaitu peperangan yang terjadi antara Kristen dengan Islam dalam merebut Yerusalem. Jika pemahaman tersebut dijadikan suatu kebenaran mutlak maka akan timbul persepsi yang saling menyudutkan antara Kristen dan Islam.\r\n\r\n\r\nBuku ini memaparkan pengertian Perang Salib yang lebih obyektif dengan menyajikan kronologi tiap Perang Salib yang terjadi antara tahun 1096 -1365. Pengertian obyektif tersebut membantu pembaca memandang lebih bijak tentang Perang Salib dan kepentingan-kepentingan yang ada di dalamnya, sehingga tidak lagi menyudutkan pihak manapun termasuk tidak menyudutkan Islam maupun Kristen. Di bagian akhir buku diberikan ringkasan tiap-tiap Perang Salib, termasuk lokasi dan hasil akhirnya, sehingga pembaca bisa melakukan review lebih padat dan jelas.</pre>\r\n', '', 58000, 30, 'sdb003.jpg', 'Publish', '2019-05-24 11:19:48', '2019-05-24 09:19:48'),
(34, 4, 8, 'SDB004', 'Penghancuran PKI', 'Olle Torquist', 'Komunitas Bambu ', 'Agustus - 2017', 250, 'penghancuran-pki-sdb004', '<p>Buku ini dicap sebagai &quot;bacaan berbahaya&quot; sejak pertama kali terbit dalam bahasa Swedia 30 tahun lalu. Tetapi sebagai karya, daya tariknya bukan hanya pada bagaimana kekuasaan Orba begitu takut pada buku ini, melainkan cara Tornquist menempatkan pokok pembahasan atas Peristiwa G30S 1965. Tornquist mengupas persoalan yang hampir tidak pernah dicermati sungguh-sungguh di dalam karya-karya para peneliti maupun pelaku peristiwa G30S 1965. Apakah penyebab kegagalan PKI? Apakah keterlibatan pemimpin PKI dalam G30S cuma sial dan keliru langkah seorang Aidit atau itulah pilihan jalan PKI untuk menyingkirkan &quot;strategi borjuis&quot; seraya menggenjot partai memobilisasi petani? Sejauh mana Aidit mengkhianati partai dan terlibat petualangan rahasia serta elitis? Apakah PKI terlalu doktriner sehingga salah membaca kondisi sehingga mudah dihancurkan dan sejauh ini gagal bangkit kembali?&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ini adalah sumbangan penting sebab yang dibahas adalah PKI, partai komunis terbesar di luar Uni Soviet dan Republik Rakyat Cina. Juga penting karena akhir riwayat partai itu dan kegagalannya belum banyak diteliti secara kritis tanpa meninggalkan pemikiran yang progresif.</p>\r\n', '', 111000, 30, 'sdb004.jpg', 'Publish', '2019-05-24 11:23:07', '2019-05-24 09:23:07'),
(35, 4, 8, 'SDB005', 'Bung Tomo Pandu Garuda yang Pantang Menyerah', 'Aira Kimberly', 'Indonesia Membumi ', 'Mei - 2017', 268, 'bung-tomo-pandu-garuda-yang-pantang-menyerah-sdb005', '<p>Bung Tomo tidak pernah patah semangat. Dia bekerja membantu ayahnya dalam mencukupi kebutuhan keluarga. Pada masa itu seluruh dunia sedang mengalami kesulitan di berbagai bidang. Banyak masalah yang timbul akibat perang. Masalah ekonomi dunia pun sangat berpengaruh terhadap keadaan masyarakat Indonesia.<br />\r\n<br />\r\nNamun, kesulitan ini tidak mematahkan harapan Bung Tomo untuk memperoleh pendidikan yang lebih tinggi. Setiap kesempatan digunakannya untuk melanjutkan pendidikannya. Bahkan, Bung Tomo dikabarkan berhasil meneruskan sekolahnya hingga ke HBS (Horgere Burger School). Dia belajar melalui proses korespondensi atau surat menyurat.<br />\r\n<br />\r\nSelain bekerja keras dan belajar, Bung Tomo juga aktif dalam kegiatan kepanduan. Pasa masa itu gerakan kepanduan dikenal dengan nama Kepanduan Bangsa Indonesia atau KBI. Sementara itu, pada masa sekarang gerakan kepanduan dikenal sebagai Gerakan Pramuka.</p>\r\n', '', 30000, 30, 'sdb005.jpg', 'Publish', '2019-05-24 11:26:22', '2019-05-24 09:26:22'),
(36, 4, 4, 'KDI006', 'Virus Pencuri Account', 'Taruna Aang', 'Jasakom', 'Januari 2015', 210, 'virus-pencuri-account-kdi006', '<p>Membuat virus selalu menjadi misteri bagi banyak orang namun sebenarnya, dengan sedikit kemampuan programming, Anda sudah bisa membuatnya. Anda tidak perlu menguasai bahasa pemrograman mesin assembly namun cukup dengan bahasa pemrograman tingkat tinggi seperti delphi didalam buku ini.<br />\r\n<br />\r\nAnda akan melihat bagaimana mudahnya membuat virus dan bisa melakukan banyak hal seperti mencuri account, password dan lain sebagainya sesuai kebutuhan sang tuan pembuat virus. menguasai pembuatan virus ini juga secara otomatis anda memahami dan bisa mencegah diri anda menjadi korban.<br />\r\n<br />\r\nVirus bisa melakukan pencurian account password dengan mudah. Kenali cara kerja dan cara membuatnya agar anda tidak menjadi korban olehnya.<br />\r\n<br />\r\nAwas! Buku ini disertai dengan Source Code Virus!</p>\r\n', '', 53000, 15, 'kdi006.jpg', 'Publish', '2019-05-27 19:11:47', '2019-05-27 17:11:47'),
(37, 4, 4, 'KDI007', 'KONSEP DAN IMPLEMENTASI STRUKTUR DATA DALAM PEMROGRAMAN DELPHI', 'Abdul Kadir', 'Andi Publisher', 'Desember - 2011', 530, 'konsep-dan-implementasi-struktur-data-dalam-pemrograman-delphi-kdi007', '<p>Buku yang perlu dibaca bagi siapa saja, terutama mahasiswa teknik informatika dan teknologi informasi yang sedang memelajari struktur data.<br />\r\n<br />\r\nDitulis dengan cara yang sederhana, dilengkapi banyak ilustrasi, dan disertai contoh aplikatif, menjadikan materi mudah untuk dipahami.<br />\r\n<br />\r\nMembahas:<br />\r\n? Dasar struktur data<br />\r\n? Antrian (stack)<br />\r\n? Tumpukan (queue)<br />\r\n? Senarai berantai (linked-list)<br />\r\n? Ekspresi postfix<br />\r\n? Pohon biner (binary tree)<br />\r\n? Pengurutan data<br />\r\n? Pencarian data<br />\r\n? Tabel hash (hash table)<br />\r\n? Graf (graph)</p>\r\n', '', 100000, 20, 'kdi007.jpg', 'Publish', '2019-05-27 19:14:22', '2019-05-27 17:14:22'),
(38, 4, 4, 'KDI008', 'Pemrograman Arduino Menggunakan ArduBlock + cd', 'Abdul Kadir', 'Andi Publisher', '17 November 2017', 288, 'pemrograman-arduino-menggunakan-ardublock-cd-kdi008', '<pre>\r\nMemprogram Arduino tanpa menulis kode dalam bentuk C atau C++? Ya, hal itu dimungkinkan. Dengan menggunakan ArduBlock, program untuk Arduino dapat dibentuk dengan cukup menyusun blok-blok seperti layaknya ketika bermain dengan blok-blok Lego, sehingga kesalahan sintaks yang biasa dialami oleh mereka yang menulis kode dalam bentuk teks dapat dihindari. \r\n\r\n\r\nBuku ini menuntun siapa pun yang ingin menggunakan ArduBlock untuk mewujudkan aneka proyek Elektronika yang berbasis Arduino. Bahasan yang sederhana serta mudah untuk diikuti dan dipahami untuk para pemula merupakan kekuatan buku ini.</pre>\r\n', '', 150000, 20, 'kdi0081.jpg', 'Publish', '2019-05-27 19:17:33', '2019-05-27 17:51:55'),
(39, 4, 4, 'KDI009', 'Menguasai Formula dan Fungsi Excel 2007-2019', 'Adi Kusrianto', 'Elex Media Komputindo', '20 Mei 2019', 360, 'menguasai-formula-dan-fungsi-excel-2007-2019-kdi009', '<pre>\r\nBuku ini membahas secara lengkap tentang formula dan fungsi yang terdapat pada Excel, mulai dari Excel 2007 sampai yang terbaru, yaitu Excel 2019. Buku ini juga akan mengupas habis enam fungsi terbaru pada Excel 2019 yang menyempurnakan kemampuan fungsi-fungsi yang sudah ada sebelumnya, sebagai contoh: &bull; Fungsi TEXTJOIN &bull; Fungsi CONCAT &bull; Fungsi IFS &bull; Fungsi SWITCH &bull; Fungsi MAXIFS &bull; Fungsi MINIFS Sekalipun buku ini sebagian besar disusun menggunakan Excel 2010 dan beberapa bagian menggunakan Excel 2013 dan 2019, namun bagi Anda yang menggunakan versi 2007 tetap dapat memanfaatkan buku ini dengan menyesuaikan dengan versi program yang Anda pakai. Dengan demikian, buku ini selayaknya mendampingi Anda dalam bekerja menggunakan Excel sehari-hari agar lebih efektif.</pre>\r\n', '', 78000, 20, 'kdi009.jpg', 'Publish', '2019-05-27 19:22:00', '2019-05-27 17:22:00'),
(40, 4, 4, 'KDI010', 'Mahir Bahasa Pemrograman PHP', 'Miftahul Jannah,  Sarwandi,  Cyber Creative', 'Elex Media Komputindo', '201 Mei 2019', 224, 'mahir-bahasa-pemrograman-php-kdi010', '<pre>\r\nDengan pesatnya perkembangan teknologi saat ini, kita dituntut untuk bisa membuat dan mengembangkan sebuah sistem atau program berbasis web. Pembuatan sebuah sistem berbasis web bisa menggunakan berbagai macam bahasa pemrograman. Namun, pada umumnya orang menggunakan bahasa pemrograman PHP. PHP merupakan salah satu bahasa pemrograman web yang sangat populer. Bahasa pemrograman yang dibuat oleh Rasmus ini wajib dikuasai oleh semua kalangan yang ingin ahli dalam pemrograman web, khususnya web developer. Oleh karena itu, buku ini hadir untuk memaparkan dan memandu cara menguasai pemrograman PHP dengan mudah. Dalam buku ini akan dijelaskan step by step, dimulai dari teori beserta contoh-contoh kode PHP yang mudah dipahami. Buku ini sangat komplet bagi Anda yang ingin menguasai bahasa pemrograman PHP. Pembahasan dimulai dari tingkat dasar hingga Anda benar-benar bisa membuat sebuah program berbasis web menggunakan bahasa pemrograman PHP</pre>\r\n', '', 61000, 20, 'kdi010.jpg', 'Publish', '2019-05-27 19:24:30', '2019-05-27 17:24:30'),
(41, 4, 4, 'KDI011', 'Data Mining: Algoritma Dan Implementasi Dengan Pemrograman PHP', 'Joko Suntoro', 'Elex Media Komputindo', '20 Mei 2019', 192, 'data-mining-algoritma-dan-implementasi-dengan-pemrograman-php-kdi011', '<pre>\r\nEra industri 4.0 dengan pilar utama, yaitu Internet of Things (IoT), cloud computing, artificial intelligence, dan big data telah memproduksi banyak sekali data. Penumpukan data tersebut akan menjadi masalah, karena data tersebut akan menjadi &quot;sampah&quot; dalam memori dan tidak bermanfaat. Agar data tersebut menjadi bermanfaat perlu diekstraksi agar menjadi informasi/pola/pengetahuan baru. Metode untuk ekstraksi data tersebut dinamakan data mining. Data mining didefinisikan sebagai proses ekstraksi suatu data (sebelumnya tidak diketahui, bersifat implisit, dianggap tidak berguna) menjadi informasi atau pengetahuan atau pola dari data yang jumlahnya besar. Buku ini mengupas tuntas algoritma-algoritma untuk proses pengolahan data menjadi informasi dalam data mining. Dalam buku ini akan dijelaskan secara teoritis (definisi dan penghitungan manual algoritma) dan aplikatif (implementasi dan testbed penghitungan manual algoritma menggunakan bahasa pemrograman PHP), dan jenis algoritma data mining, seperti algoritme k-Nearest Neighbor, algoritme Na&iuml;ve Bayes, algoritme ID3, algoritme C4.5, algoritme CART, serta algoritme K-Means.</pre>\r\n', '', 57000, 20, 'kdi011.jpg', 'Publish', '2019-05-27 19:26:38', '2019-05-27 17:26:38'),
(42, 4, 11, 'AGM004', 'Assalamualaikum Generasi Milenial', 'Nita Puji', 'Elex Media Komputindo', '27 Mei 2019', 168, 'assalamualaikum-generasi-milenial-agm004', '<pre>\r\nSaat ini, terjadi krisis akhlak dan mental pada generasi milenial. Hal ini dipengaruhi oleh perkembangan teknologi yang semakin canggih dan masuknya budaya barat yang menyalahi norma-norma dalam Islam. Akhirnya, moral generasi bangsa menjadi rusak. Buku ini berisi motivasi dan inspirasi untuk generasi milenial pada zaman sekarang agar bisa berevolusi menjadi generasi yang hebat. Baik dari segi mental, mimpi, maupun cinta.</pre>\r\n', '', 75000, 25, 'agm004.jpg', 'Publish', '2019-05-27 19:31:44', '2019-05-27 17:31:44'),
(43, 4, 11, 'AGM005', 'Jangan Tunggu Besok! Hari Ini adalah yang Terbaik', 'Aji Pram', 'Elex Media Komputindo', '27 Mei 2019', 196, 'jangan-tunggu-besok-hari-ini-adalah-yang-terbaik-agm005', '<pre>\r\nDalam permasalahan yang berhubungan dengan hati, sudah seharusnya seorang hamba melibatkan Allah di dalamnya. Hati adalah pengendali atas semua yang dilakukan manusia. Jika hati baik, semuanya akan baik pula. Orang yang tidak membersamai hatinya dengan Allah akan dikuasai oleh ego dan kelemahan. Tidak ada kata terlambat untuk menata hati. Sebelum ajal menjemput, sebelum badan dikandung tanah, bersihkanlah hati agar hidup menjadi berkah. Jangan tunggu besok, karena hari ini adalah yang terbaik.</pre>\r\n', '', 65000, 25, 'agm005.jpg', 'Publish', '2019-05-27 19:34:58', '2019-05-27 17:34:58'),
(45, 4, 11, 'AGM007', 'Rindu? Ke Allah Aja!', 'Muh. Ramli', 'Elex Media Komputindo', '27 Mei 2019', 224, 'rindu-ke-allah-aja-agm007', '<pre>\r\nRindu! Jangan pernah salahkan rindu, sebab ia adalah amanah yang Allah titipkan pada setiap hamba-Nya. Namun, jangan sampai rindu itu menjadi sesuatu yang dibenci dan dimurkai oleh Allah karena tidak ditempatkan pada tempat yang semestinya. Jangan pernah salahkan rindu, sebab ia adalah puzzle hidup yang melengkapi jejak kita bersama dengan orang-orang yang kita cintai dan sayangi. Maka jadikanlah rindu itu sesuatu yang bisa mendatangkan keridaan Allah sebagai Pemilik Rindu. Olah rindu itu menjadi ketaatan kepada-Nya. Bagaimana caranya? Buku ini membahasnya secara detail dan lugas. Memberikan pemahaman bahwa rindu tidaklah tercelah apalagi membuat merana. Dibahas secara sederhana dan dilengkapi dengan beragam kisah yang sarat akan nilai. Selamat menemukan ibrah dan pelajaran di dalamnya lalu buatlah rindumu menjadi wasilah untuk semakin mencintai-Nya dan meningkatkan amalan ibadah dan kebaikanmu.</pre>\r\n', '', 65000, 25, 'agm007.jpg', 'Publish', '2019-05-27 19:43:13', '2019-05-27 17:43:13'),
(46, 4, 11, 'AGM008', 'Ensiklopedia Al-Qur`An Dan Hadis Per Tema', 'Alita Aksara Media', 'Elex Media Komputindo', '20 Mei 2019', 1370, 'ensiklopedia-al-quran-dan-hadis-per-tema-agm008', '<pre>\r\nEnsiklopedia Al-Qur`An Dan Hadis Per Tema</pre>\r\n', '', 700000, 25, 'agm008.jpg', 'Publish', '2019-05-27 19:45:25', '2019-05-27 17:45:25'),
(47, 4, 11, 'AGM009', 'Tanya & Jawab Bersama Nabi: Kitab Ihsan', 'LingkarKalam', 'Elex Media Komputindo', '13 mei 2019', 304, 'tanya-jawab-bersama-nabi-kitab-ihsan-agm009', '<pre>\r\nApa keutamaan dari murah senyum? Doa apa yang perlu diucapkan agar dianugerahi akhlak yang baik oleh Allah? Apa keutamaan dari majelis ilmu? Dikemas dan disajikan dalam bentuk pertanyaan-pertanyaan yang seolah dijawab langsung oleh beliau, seri Tanya &amp; Jawab Bersama Nabi ini memiliki daya tarik tersendiri yang dapat memudahkan kita semua untuk memahami apa arti sesungguhnya dari Iman, Islam, dan Ihsan secara lebih utuh. Buku yang pembaca pegang ini adalah kitab ketiga yang membahas tentang ihsan. Di dalamnya pembaca akan diajak untuk menyelami pembahasan-pembahasan menarik seputar fikih muamalah, kehidupan sosial, hingga cara memperbaiki akhlak. Semoga kita semua diberi kesabaran dan keteguhan hati agar mau dan mampu belajar tentang ajaran islam secara lebih baik lagi. Sehingga nikmat agama islam yang telah ada dalam diri kita akan terasa semakin nikmat dari hari ke hari. Amin. Semoga bermanfaat</pre>\r\n', '', 95000, 25, 'agm009.jpg', 'Publish', '2019-05-27 19:48:05', '2019-05-27 17:48:05'),
(48, 4, 11, 'AGM010', 'Hijrah Aja Dulu', 'FahdMaya', 'Elex Media Komputindo', '29 April 2019', 120, 'hijrah-aja-dulu-agm010', '<pre>\r\nKetika seseorang ingin berhijrah, ada banyak yang mengatakan tidak pantas karena memiliki masa lalu yang kelam dan akhirnya ia selalu merasa hina. Tetapi, cobalah untuk hijrah aja dulu dan jangan jadikan masa lalumu sebagai alasan, sebab masa depanmu masih suci. Hijrah aja dulu, istikamah kemudian. Ini merupakan kata-kata yang pas bagi mereka yang mempunyai rasa takut tidak istikamah yang berlebihan. Ketahuilah, rasa takut itu hanyalah karena niat yang setengah-setengah. Saat kita sudah yakin dengan pilihan kita, ingatlah, Allah selalu bersama kita. Buku ini membahas apa yang sering kita tanyakan selama proses hijrah. Mulai dari bagaimana cara menghadapi orang-orang yang mencemooh kita, hingga cara menggapai hidayah untuk berhijrah. Buku ini ditulis untuk menjawab pertanyaan kalian soal hijrah itu sendiri. Selamat membaca, semoga kalian temukan apa yang telah menjadi tanda tanya dalam proses hijrah kalian selama ini.</pre>\r\n', '', 63000, 25, 'agm010.jpg', 'Publish', '2019-05-27 19:50:18', '2019-05-27 17:50:18'),
(49, 4, 11, 'AGM006', 'Hapus Penat Dengan Shalat', 'Dwi Suwiknyo', 'Elex Media Komputindo', '22 April', 120, 'hapus-penat-dengan-shalat-agm006', '<pre>\r\nSegarkan Jiwamu dengan Shalat Sungguh, tiada keberuntungan di dunia ini selain ketenteraman karena selalu dekat dan ingat kepada-Nya. Pun tidak ada yang lebih berharga dari nikmat shalat dan istiqamah beramal shalih. Hati, jiwa, dan ruh kita butuh kesegaran kembali. Energi-kesegaran itu akan kita peroleh kembali saat kita sudi men-zero-kan diri kita. Kita berserah diri sepenuh hati, pikiran, fisik, jiwa, lantaran apa pun yang melekat pada diri kita, semuanya sejatinya milik Allah Swt. Oleh karena diri kita sepenuhnya milik Allah Swt, maka istirahatkan diri kita sesuai dengan cara yang telah Allah Swt., tentukan melalui Rasulullah saw. Rasulullah saw., beristirahat dari lelahnya beban dakwah yang begitu berat, melalui shalat. Begitu juga kita. \r\n\r\nDengan shalatlah iman itu menguat, harapan tubuh kembali, doa-doa tersampaikan, hati yang sakit menjadi sehat, fisik bertambah bugar, pikiran pun kembali segar, jiwa yang kering tersirami dengan alami. Kesegaran fisik dimulai dari berwudhu ini: lesu fisik pun hilang dan semangat kembali. Cara ini dilakukan rutin setiap hari, setidaknya lima kali sehari. Begitu segar fisik kita, maka kita pun telah siap untuk menyegarkan hati, pikiran, dan jiwa kita.</pre>\r\n', '', 56000, 25, 'agm006.jpg', 'Publish', '2019-05-27 19:57:01', '2019-05-27 17:57:01'),
(50, 4, 13, 'MKN001', 'Menu Terfavorit dan Hit dari instagram Cooking With Sheila - Full Colour', 'Sheila Gondowijoyo', 'Andi Publisher', 'Juli 2018', 376, 'menu-terfavorit-dan-hit-dari-instagram-cooking-with-sheila-full-colour-mkn001', '<p><strong>Berisi 270++ Resep Lengkap</strong><br />\r\n<strong>Free Video cara masaknya</strong><br />\r\n<strong>Semua resep Teruji dan Anti Gagal</strong><br />\r\n<br />\r\nBuku ini ditujukan untuk menjadi panduan bagi siapa saja yang suka memasak di rumah untuk keluarga, menjamu tamu istimewa ataupun mencari resep untuk dibuat usaha catering atau semacamnya. Membantu bagi siapa saja yang suka bingung mencari ide resep.<br />\r\n<br />\r\nMembantu bagi para pemula yang sedang belajar memasak. Bahkan, jika ingin mencari resep-resep tradisional untuk bernostalgia, dapat ditemukan dalam buku ini. Dijamin buku ini memuat resep cukup lengkap, mulai dari baking, minuman hingga resep masakan rumahan dan resto. Sangat lengkap bukan?!<br />\r\n<br />\r\nJadi, saya berharap buku resep ini akhirnya akan mempunyai banyak noda-noda bumbu dan kumal saking sering Anda gunakan di dapur.<br />\r\n<br />\r\nHappy Cooking....Anyone can cook!!!</p>\r\n', '', 192000, 20, 'mkn001.jpg', 'Publish', '2019-05-27 20:00:46', '2019-05-27 18:00:46'),
(51, 4, 13, 'MKN002', 'Kreasi Tumpeng Nusantara Paling Populer (Full Color)', 'Afin Murtie', 'Dunia Kreasi', 'Maret 2013', 190, 'kreasi-tumpeng-nusantara-paling-populer-full-color-mkn002', '<p>- Pariaman<br />\r\n- Tumpeng Nasi Uduk<br />\r\n- Tumpeng Berundak<br />\r\n- Nasi Merah<br />\r\n- Tumpeng Manten<br />\r\n- Tumpeng Barbie<br />\r\n- Tumpeng Guldeg Komplit<br />\r\n- Tumpeng Urapan<br />\r\n- Tumpeng Nasi Kuning Sayuran<br />\r\n- Tumpeng Madura<br />\r\n- Tumpeng Pulau Dewata<br />\r\n- Tumpeng Lanjar Kacang<br />\r\n- Tumpeng Liwet<br />\r\n- Tumpeng Proklamasi<br />\r\n- Tumpeng Astana Giri<br />\r\n- Tumpeng Pantura<br />\r\n- Tumpeng Lapindo<br />\r\n- Tumpeng Jenang Grantul<br />\r\n- Tumpeng Jenang Grantul<br />\r\n- Tumpeng Jajanan Pasar<br />\r\n- Tumpeng Kue Mini</p>\r\n', '', 30000, 20, 'mkn002.jpg', 'Publish', '2019-05-27 20:03:51', '2019-05-27 18:03:51'),
(52, 4, 13, 'MKN003', 'Menu Lengkap Sehari-Hari Untuk 1 Bulan', 'Sufi Sy', 'Gramedia Pustaka Utama ', '27 Mei 2019', 172, 'menu-lengkap-sehari-hari-untuk-1-bulan-mkn003', '<pre>\r\nSesuai judulnya, Menu Lengkap Sehari-hari untuk 1 Bulan, menampilkan resep-resep untuk hidangan keluarga seharihari selama sebulan. Setiap hari, tersedia 3 resep menu utama, dilengkap dengan 22 kreasi sarapan pagi dan 15 resep dessert. Khusus di akhir pekan, hari sabtu dan minggu yang santai, menu tampil sedikit lebih istimewa dari harihari biasa, ala rumah makan atau resto. Jenis olahan tersedia dengan selera Nusantara, sentuhan rasa Eropa, ala Oriental, dan paduan ketiganya. Untuk menu utama antara lain ada: Brongkos Tahu Kacang Merah, Ikan Goreng Krispi Siram Saus Nanas, juga ada Semur 3 Rupa Bumbu Komplit. Menu sarapan juga bervariasi, ada Ketupat Sayur, Sandwich Ragout Goreng, Kupat Tahu Magelang, dan lain sebagainya. Untuk dessert, tampil aneka Puding dan minuman buah segar Pokoknya benar-benar komplit. Semua resep dilengkapi dengan foto-foto yang membuat masakan lebih menarik lagi dan meningkatkan selera makan keluarga. .</pre>\r\n', '', 140000, 20, 'mkn003.jpg', 'Publish', '2019-05-27 20:07:39', '2019-05-27 18:07:39'),
(53, 4, 13, 'MKN004', '120 Resep Hitz di Instagram- Resep Favorit Keluarga ala Bunda Nina', 'Dapur Bunda Nina', 'Gramedia Pustaka Utama ', '29 April 2019', 284, '120-resep-hitz-di-instagram-resep-favorit-keluarga-ala-bunda-nina-mkn004', '<pre>\r\n120 Resep Hitz di Instagram- Resep Favorit Keluarga ala Bunda Nina</pre>\r\n', '', 190000, 20, 'mkn004.jpg', 'Publish', '2019-05-27 20:09:28', '2019-05-27 18:09:28'),
(54, 4, 13, 'MKN005', 'Cookies & Dessert Box Hits Di Instagram @Mindy_Cakes', 'Mindy Mol', 'Gramedia Pustaka Utama ', '13 mei 2019', 120, 'cookies-dessert-box-hits-di-instagram-mindy_cakes-mkn005', '<pre>\r\nCookies &amp; Dessert Box Hits Di Instagram @Mindy_Cakes</pre>\r\n', '', 120000, 20, 'mkn005.jpg', 'Publish', '2019-05-27 20:13:07', '2019-05-27 18:13:07'),
(55, 4, 13, 'MKN006', '90 Resep Hits di Instagram Express Cooking By Mak Evi', 'Evi Novrianty', 'Gramedia Pustaka Utama ', '18 Maret 2019', 112, '90-resep-hits-di-instagram-express-cooking-by-mak-evi-mkn006', '<pre>\r\nMemasak lezat dalam sekejap!\r\nCuma 30 menit Anda sudah bisa menyajikan\r\nmasakan buat seluruh anggota keluarga.\r\nPenulis buku ini ibu dari 4 anak yang tinggal\r\ndi Palembang yang memiliki hobi memasak\r\nsejak remaja. Melalui akun instagram evi_\r\nnovrianty, ia telah mem-posting 2.000 lebih\r\nfoto masakan yang menggoda selera. Tak\r\nheran dalam 1 tahun followers-nya mencapai\r\nlebih dari 72.000. Resep andalan Evi adalah\r\nmasakan khas daerah seperti ayam kalasan,\r\nrendang, kari ayam, pempek, juga makanan\r\nringan seperti puding, jajanan pasar, bolu,\r\ndan aneka kue.\r\n\r\nBuku ini berisi 90 resep pilihan lezat yang\r\npasti memenuhi semua selera, yang terdiri\r\natas:\r\n1. Hidangan Mi dan Nasi\r\n2. Hidangan Sayur\r\n3. Lauk Ayam\r\n4. Lauk Daging\r\n5. Lauk Ikan\r\n6. Lauk Tahu, Tempe, dan Telur\r\n7. Lauk Gorengan\r\n8. Soto dan Sop\r\n9. Hidangan Selingan\r\n10. Dessert, Minuman Segar, dan Puding\r\n\r\nDengan mengikuti resep dan petunjuk di\r\nbuku ini, Anda pun bisa menyajikan masakan\r\ndengan cepat dan lezat, seperti buatan Mak\r\nEvi.</pre>\r\n', '', 99000, 20, 'mkn006.jpg', 'Publish', '2019-05-27 20:15:28', '2019-05-27 18:15:28'),
(56, 4, 13, 'MKN007', 'Delicious Recipes', '@Fitri Sasmaya', 'Demedia Pustaka', '11 Maret 2019', 100, 'delicious-recipes-mkn007', '<h1>Delicious Recipes</h1>\r\n', '', 150000, 20, 'mkn007.jpg', 'Publish', '2019-05-27 20:18:41', '2019-05-27 18:18:41'),
(57, 4, 13, 'MKN008', 'Barista #Nocingcong', '@Willy Sidewalk', 'Agro Media Pustaka', '11 Apr 2019', 120, 'barista-nocingcong-mkn008', '<h1>Barista #Nocingcong</h1>\r\n', '', 165000, 20, 'mkn008.jpg', 'Publish', '2019-05-27 20:21:18', '2019-05-27 18:21:18'),
(58, 4, 13, 'MKN009', 'Roti Buatan Rumah Klasik dan Kekinian', 'Diah Nimpuno', 'Gramedia Pustaka Utama ', '8 Maret 2019', 188, 'roti-buatan-rumah-klasik-dan-kekinian-mkn009', '<pre>\r\nSeringkali kita mendengar pertanyaan: Saya hanya mempunyai peralatan baking skala rumahan, bisakah untuk membuat roti seenak toko kue atau bakery favorit? \r\n\r\nDengan petunjuk dan resep dalam buku ini ternyata tidak ada kata sulit dalam membuat aneka jenis roti lezat di dapur rumahan. Semua bahan yang digunakan mudah didapat di pasaran Indonesia dan peralatan untuk membuatnya pun dapat menggunakan peralatan baking skala rumahan pada umumnya. Tak ketinggalan dijelaskan secara terperinci petunjuk pembuatan aneka roti, dari pengetahuan bahan dan alat, proses pembuatan, hingga masalah yang sering timbul lengkap dengan solusinya. Tentu saja lengkap dengan resep-resep aneka jenis roti beserta variasinya, yang klasik hingga kekinian. Dari berbagai jenis roti tawar, roti manis, roti sisir, roti sobek, bluder, pizza, hingga brioche &hellip;</pre>\r\n', '', 200000, 20, 'mkn009.jpg', 'Publish', '2019-05-27 20:23:21', '2019-05-27 18:23:21'),
(59, 4, 13, 'MKN010', 'Dapur Bekal Quik & Easy', 'Clarissa Noviany', 'Gramedia Pustaka Utama ', '21 January 2019', 286, 'dapur-bekal-quik-easy-mkn010', '<pre>\r\nClarissa adalah pemilik sebuah restoran di kota Mojokerto dan kayawati di perusahaan internasinal di Jawa Timur. Kesibukkannya bekerja di dua tempat tidak menghalanginya untuk berkreasi dan berbagi ilmu lewat akun instagram @dapur bekal. Selain gemar memasak untuk bekal sang suami, ia pun suka fotografi makanan (food photography). Sejak tahun 2016 ia rajin memposting foto masakannya di akun@dapurbekal yang kini memiliki 118.000 followers. Buku ini berisi 130 resep @dapurbekal, yang terbagi atas 8 kategori yaitu: olahan Nasi, olahan Mi/Spaghetti/misua,Olahan tahu/tempe/telur, Olahan Ayam/Sapi, Olahan Seafood, Olahan Sayur, Snack/Kudapan, dan Roti. Seperti motto Clarissa, masak itu bukn BIsa atau tidak bisa, tetapi Biasa atau tidak biasa. Kita juga bisa, yuk buktikan!</pre>\r\n', '', 160000, 20, 'mkn010.jpg', 'Publish', '2019-05-27 20:25:27', '2019-05-27 18:25:27'),
(60, 4, 13, 'KMK006', 'Light Novel Conan A Challenge Letter to Shinichi Kudo : Love Formula Murder Case', 'Aoyama Gosho', 'Elex Media Komputindo', '29 Mei 2019', 266, 'light-novel-conan-a-challenge-letter-to-shinichi-kudo-love-formula-murder-case-kmk006', '<pre>\r\nDi aula tempat berkumpulnya Miss dan runner up Miss sepuluh kampus, yaitu total dua puluh orang, dilaksanakan sebuah permainan. Namun, insiden yang tak terduga menimpa sang pemenang! Shinichi Kudo yang berada di tempat kejadian mengungkapkan kebenaran menyedihkan yang tersembunyi di baliknya!</pre>\r\n', '', 69000, 30, 'kmk006.jpg', 'Publish', '2019-05-27 20:28:50', '2019-05-27 18:28:50'),
(61, 4, 13, 'KMK007', 'Dk Marvel Encyclopedia New Edition', 'Stan Lee', ' Dorling Kindersley Us', '21 Mei 2019', 448, 'dk-marvel-encyclopedia-new-edition-kmk007', '<pre>\r\nDk Marvel Encyclopedia New Edition</pre>\r\n', '', 700000, 20, 'kmk007.jpg', 'Publish', '2019-05-27 20:32:27', '2019-05-27 18:32:27'),
(62, 4, 2, 'KMK008', 'Hajigur', 'PEPEKOMIK', 'M&C!', '15 Mei 2019', 120, 'hajigur-kmk008', '<h1>Hajigur</h1>\r\n', '', 69000, 20, 'kmk008.jpg', 'Publish', '2019-05-27 20:34:33', '2019-05-27 18:34:33');
INSERT INTO `produk` (`id_produk`, `id_user`, `id_kategori`, `kode_produk`, `nama_produk`, `penulis`, `penerbit`, `tanggal_terbit`, `jumlah_halaman`, `slug_produk`, `keterangan`, `keywords`, `harga`, `stok`, `gambar`, `status_produk`, `tanggal_post`, `tanggal_update`) VALUES
(63, 4, 2, 'KMK009', 'Educomics : Keluarga Super Irit Keliling Dunia : Kutub Selatan', 'Yim, Young-Je', 'Bhuana Ilmu Populer', '13 mei 2019', 184, 'educomics-keluarga-super-irit-keliling-dunia-kutub-selatan-kmk009', '<pre>\r\nMenceritakan perjalanan Keluarga Bindae ke Kutub Selatan. Di sana mereka bertemu dengan penguin, mengenal olimpiade Kutub Selatan, belajar bertahan hidup di tempat yang sangat dingin, dan masih banyak lagi.</pre>\r\n', '', 105000, 20, 'kmk009.jpg', 'Publish', '2019-05-27 20:36:59', '2019-05-27 18:36:59'),
(64, 4, 2, 'KMK010', 'Doraemon Movie: Petualangan Nobita di Kachi Kochi Antartika', 'Fujiko F. Fujio', 'Elex Media Komputindo', '8 Mei 2019', 152, 'doraemon-movie-petualangan-nobita-di-kachi-kochi-antartika-kmk010', '<pre>\r\nAkibat cuaca panas yang terus berlangsung, Nobita dan Doraemon pergi ke Antartika untuk membuat es serut dari gunung es raksasa! Akan tetapi, di sana Nobita malah menemukan cincin misterius. Petualangan baru apa yang menanti Nobita dan kawan-kawan?</pre>\r\n', '', 50000, 20, 'kmk010.jpg', 'Publish', '2019-05-27 20:39:40', '2019-05-27 18:39:40'),
(65, 4, 8, 'SDB006', 'Sejarah Umat Manusia - Dari Nenek Moyang Kita Yang Paling Awal Sampai Akhir Era Media Sosial', 'Hendrik Willem Van Loon', 'Elex Media Komputindo', '20 Mei 2019', 772, 'sejarah-umat-manusia-dari-nenek-moyang-kita-yang-paling-awal-sampai-akhir-era-media-sosial-sdb006', '<pre>\r\nSejarah Umat Manusia karya Hendrik Van Loon diterbitkan pertama kali pada tahun 1921, dan menerima penghargaan John Newberry pada 1922. Buku yang Anda baca ini sudah dimutakhirkan isinya hingga ke era sosial media oleh Robert Sullivan, seorang penulis sejarah, sehingga menjadi sebuah buku sejarah manusia terlengkap dari sisi linimasa, namun tetap sederhana dan menyenangkan untuk dibaca semua orang dan usia.</pre>\r\n', '', 230000, 20, 'sdb006.jpg', 'Publish', '2019-05-27 20:42:08', '2019-05-27 18:42:08'),
(66, 4, 8, 'SDB007', 'Sejarah Ringkas Pengeran Diponegoro', 'Wardiman Djojonegoro', 'Kepustakaan Populer Gramedia', '29 April 2019', 218, 'sejarah-ringkas-pengeran-diponegoro-sdb007', '<pre>\r\nSEJARAH Ringkas Pengeran Diponegoro dan Perang Jawa, 1825-1830 mengisahkan secara singkat riwayat hidup Pangeran Diponegoro (1785-1855) dan Perang Jawa (1825-1830). Secara khusus dimaksudkan untuk membantu pengajar pendidikan tingkat dasar untuk lebih mengenal sejarah Diponegoro dan Perang Jawa, buku ini didasarkan pada berbagai arsip, kepustakaan, autobiografi Pangeran Diponegoro (Babad Diponegoro), dan buku Peter Carey, Kuasa Ramalan; Pangeran Diponegoro dan Akhir Tatatnan Lama di Jawa, 1785-1855</pre>\r\n', '', 70000, 20, 'sdb007.jpg', 'Publish', '2019-05-27 20:44:16', '2019-05-27 18:44:16'),
(67, 4, 8, 'SDB008', 'Misteri Pembunuhan Tan Malaka & Catatan-Catatan Revolusioner', 'Badruddin', 'Araska Publisher', '14 Maret 2019', 150, 'misteri-pembunuhan-tan-malaka-catatan-catatan-revolusioner-sdb008', '<h1>Misteri Pembunuhan Tan Malaka &amp; Catatan-Catatan Revolusioner</h1>\r\n', '', 60000, 20, 'sdb008.jpg', 'Publish', '2019-05-27 20:46:25', '2019-05-27 18:46:25'),
(68, 4, 8, 'SDB009', 'Surabaya: Di Mana Kau Sembunyikan Nyali Kepahlawananmu', 'Ady Setiawan', 'Mata Padi', '20 February 2018', 125, 'surabaya-di-mana-kau-sembunyikan-nyali-kepahlawananmu-sdb009', '<h1>Surabaya: Di Mana Kau Sembunyikan Nyali Kepahlawananmu</h1>\r\n', '', 100000, 20, 'sdb009.jpg', 'Publish', '2019-05-27 20:48:26', '2019-05-27 18:48:26'),
(69, 4, 8, 'SDB010', 'Peter Frankopan: New Silk Roads', 'Peter Frankopan', 'Bloomsburry', '1 January 2019', 200, 'peter-frankopan-new-silk-roads-sdb010', '<pre>\r\nAll roads used to lead to Rome. Today, they lead to Beijing.&#39;When The Silk Roads was published in 2015, it became an instant classic. A major reassessment of world history, it compelled us to look at the past from a different perspective. The New Silk Roads brings this story up to date, addressing the present and future of a world that is changing dramatically.Following the Silk Roads eastwards, from Europe through to China, by way of Russia and the Middle East, The New Silk Roads provides a timely reminder that we live in a world that is profoundly interconnected. In an age of Brexit and Trump, the themes of isolation and fragmentation permeating the western world stand in sharp contrast to events along the Silk Roads since 2015, where ties have been strengthened and mutual cooperation established. With brilliant insight, Peter Frankopan takes a fresh look at the network of relationships being formed along the length and breadth of the Silk Roads today, assessing the global reverberations of these continual shifts in the centre of power - all too often absent from headlines in the West.This important - and ultimately hopeful - book asks us to reread who we are and where we are in the world, illuminating the themes on which all our lives and livelihoods depend.</pre>\r\n', '', 300000, 20, 'sdb010.png', 'Publish', '2019-05-27 20:50:51', '2019-05-27 18:50:51'),
(70, 4, 12, 'EDM006', 'Perpajakan Internasional', 'Dr. Timbul Hamonangan Simanjuntak, SE., MA', 'Andi Publisher', '27 February 2019', 282, 'perpajakan-internasional-edm006', '<pre>\r\nMeningkatnya arus perdagangan antar negara dalam dunia bisnis internasional memiliki konsekuensi terjadinya transaksi keuangan dunia yang semakin besar yang berakibat pada kepentingan pajak antar negara.Penghasilan yang diperoleh dari manapun di dunia dapat dianggap sebagai penghasilan dalam negeri bagi suatu negara sehingga dapat berakibat benturan aturan hak pemungutan pajak karena masing-masing negara akan mengedepankan kepentingan negaranya masing-masing.Terlebih adanya perbedaan tata cara pemungutan dan perbedaan pandangan penentuan jenis pajak. Oleh karena itu dibutuhkan pemahaman perpajakan tidak saja aturan dalam negeri tetapi juga diperlukan pemahaman perpajakan internasional dengan baik dalam upaya meningkatkan penerimaan pajak dalam negeri yang diperoleh dari penghasilan yang diperoleh dari transaksi internasional.\r\n\r\nBuku ini mengupas pajak internasional dalam aspek empiris dan teoritis. Diawali dengan kajian empirik ekonomi makro dan kecenderungan tarif pajak global yang terjadi. Dalam aspek teori dibicarakan pengertian pengertian, penyebab dan akibat dari perpajakan internasional yang berdampak pada pajak berganda serta kaitan aturan pajak internasional dengan aturan Pajak Penghasilan (PPh) Indonesia. Aspek hubungan istimewa dan perencanaan pajak internasional juga dibahas. Hak pemajakan dibicarakan pada setiap jenis pajak, demikian juga masalah bentuk usaha tetap dan penghitungan perpajakan dan model-model pengkreditan pajak. Dalam setiap bab telah dilengkapi dengan contoh serta kasus yang terjadi sesuai dengan problem pajak internasional yang berkembang dewasa ini. \r\n\r\nBuku ini sangat cocok digunakan oleh para mahasiswa dan praktisi khususnya dalam bidang ekonomi bisnis, akuntansi, dan konsentrasi bidang yang relevan dengan dunia perpajakan internasional. Termasuk dalam hal ini juga para wajib pajak dan pengamat kebijakan perpajakan.</pre>\r\n', '', 105000, 20, 'edm006.jpg', 'Publish', '2019-05-27 20:54:12', '2019-05-27 18:54:12'),
(71, 4, 12, 'EDM007', 'Pemimpin Bermakna', 'Deddy Hermania Iskandar', 'Elex Media Komputindo', '18 February 2018', 212, 'pemimpin-bermakna-edm007', '<pre>\r\nSecara keseluruhan buku ini menceritakan pengalaman penulisnya saat memulai aktivitas sebagai trainer hingga pada akhirnya menjalani dan menikmati profesi tersebut. Kandungan isi buku ini sebagian besar bersumber dari pengalaman pribadi penulis semasa aktif bekerja di sebuah bank BUMN di tanah air. Selain referensi dari beberapa literatur leadership dan pengelolaan sumber daya manusia untuk melengkapi dan memperkuat bahasannya, pengalaman berkarier selama lebih dari 27 tahun telah memberi banyak bahan berharga untuk dituliskan dan dikupas di sini.</pre>\r\n', '', 80000, 20, 'edm007.jpg', 'Publish', '2019-05-27 20:56:04', '2019-05-27 18:56:04'),
(72, 4, 13, 'EDM008', 'Rahasia Cermat Dan Mahir Menguasai Akuntansi Keuangan Menengah', 'Hery, S.e., M.si., Crp., Rsa', 'Gramedia Pustaka Utama ', '3 February 2019', 100, 'rahasia-cermat-dan-mahir-menguasai-akuntansi-keuangan-menengah-edm008', '<h1>Rahasia Cermat Dan Mahir Menguasai Akuntansi Keuangan Menengah</h1>\r\n', '', 30000, 10, 'edm008.jpg', 'Publish', '2019-05-27 20:59:03', '2019-05-27 18:59:03'),
(73, 4, 12, 'EDM009', 'Revolusi Industri 4.0: Mengubah Tantangan Menjadi Peluang di Era Disrupsi 4.0', 'Astrid Savitri', 'Penerbit Genesis', '11 January 2019', 198, 'revolusi-industri-40-mengubah-tantangan-menjadi-peluang-di-era-disrupsi-40-edm009', '<pre>\r\nInternet telah merevolusi cara kerja dunia begitu cepat. Lebih dari 20 miliar perangkat pintar akan terkoneksi pada tahun 2020. Dengan terhubungnya perangkat pintar dari smartphone, smarthome, asisten virtual, hingga mesin produksi yang ada di pabrik-pabrik menandakan era baru sudah di ambang pintu. Internet of Things (IoT) telah berkembang secara masif.\r\n\r\nGaya hidup yang digambarkan seperti Tony Stark (Iron Man) dalam film Avengers sebentar lagi benar-benar menjadi kenyataan. Kecanggihan Jarvis sebagai asisten pribadi virtual yang dapat melakukan banyak hal, dari menyalakan lampu, mengatur suhu AC, hingga melakukan prediksi, nyaris sudah dapat dilakukan oleh kecerdasan buatan (AI) besutan beberapa raksasa teknologi seperti Asisten Google, SIRI, hingga Cortana. Semuanya hanya butuh perintah suara.\r\n\r\nDengan perkembangan sepesat itu, seluruh perangkat cerdas termasuk mesin produksi pabrik akan segera terkoneksi satu sama lain dengan kecepatan transfer informasi yang cepat (5G), diatur dengan AI sehingga proses produksi bisa lebih efisien. Tidak hanya itu, mesin-mesin ini dapat belajar secara mandiri (deep learning), memetakan kesalahan yang lalu, dan menghindarinya di masa depan.\r\n\r\nPerkembangan dunia yang seperti itu akan mengubah tatanan hampir setiap industri. Sistem produksi, manajemen, hingga sumber daya manusia. Era baru telah dimulai. Persiapkan diri agar siap menghadapi Disrupsi 4.0 yang menyertai Revolusi Industri 4.0.</pre>\r\n', '', 60000, 10, 'edm009.jpg', 'Publish', '2019-05-27 21:01:35', '2019-05-27 19:01:35'),
(74, 4, 12, 'EDM010', 'Teori Ekonomi Makro Islam', 'Imamudin Yuliadi', 'Rajagrafindo Persada', '1 January 2019', 302, 'teori-ekonomi-makro-islam-edm010', '<h1>Teori Ekonomi Makro Islam</h1>\r\n', '', 100000, 10, 'edm010.jpg', 'Publish', '2019-05-27 21:04:26', '2019-05-27 19:04:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `kode_transaksi` varchar(255) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `tanggal_transaksi` datetime NOT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(64) NOT NULL,
  `akses_level` varchar(20) NOT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_user`, `nama`, `email`, `username`, `password`, `akses_level`, `tanggal_update`) VALUES
(3, 'Detha Hanky', 'dethahanky@gmail.com', 'dethahanky123', 'dc8c2a6daf9293adbc97e8047e95a329b9ee5e4d', 'Admin', '2019-04-16 02:56:49'),
(4, 'Agung Mandala', 'agungmandala134@gmail.com', 'agung123', 'agung123', 'Admin', '2019-03-19 16:37:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `gambar`
--
ALTER TABLE `gambar`
  ADD PRIMARY KEY (`id_gambar`);

--
-- Indexes for table `header_transaksi`
--
ALTER TABLE `header_transaksi`
  ADD PRIMARY KEY (`id_header_transaksi`),
  ADD UNIQUE KEY `kode_transaksi` (`kode_transaksi`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `konfigurasi`
--
ALTER TABLE `konfigurasi`
  ADD PRIMARY KEY (`id_konfigurasi`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`),
  ADD UNIQUE KEY `kode_produk` (`kode_produk`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gambar`
--
ALTER TABLE `gambar`
  MODIFY `id_gambar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `header_transaksi`
--
ALTER TABLE `header_transaksi`
  MODIFY `id_header_transaksi` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `konfigurasi`
--
ALTER TABLE `konfigurasi`
  MODIFY `id_konfigurasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
