-- MariaDB dump 10.17  Distrib 10.4.13-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: koperasi
-- ------------------------------------------------------
-- Server version	10.4.13-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ci_sessions`
--

DROP TABLE IF EXISTS `ci_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT 0,
  `data` blob NOT NULL,
  PRIMARY KEY (`id`,`ip_address`),
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ci_sessions`
--

LOCK TABLES `ci_sessions` WRITE;
/*!40000 ALTER TABLE `ci_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `ci_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jns_akun`
--

DROP TABLE IF EXISTS `jns_akun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jns_akun` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `kd_aktiva` varchar(5) DEFAULT NULL,
  `jns_trans` varchar(50) NOT NULL,
  `akun` enum('Aktiva','Pasiva') DEFAULT NULL,
  `laba_rugi` enum('','PENDAPATAN','BIAYA') NOT NULL DEFAULT '',
  `pemasukan` enum('Y','N') DEFAULT NULL,
  `pengeluaran` enum('Y','N') DEFAULT NULL,
  `aktif` enum('Y','N') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `kd_aktiva` (`kd_aktiva`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jns_akun`
--

LOCK TABLES `jns_akun` WRITE;
/*!40000 ALTER TABLE `jns_akun` DISABLE KEYS */;
INSERT INTO `jns_akun` VALUES (5,'A4','Piutang Usaha','Aktiva','','Y','Y','Y'),(6,'A5','Piutang Karyawan','Aktiva','','N','Y','N'),(7,'A6','Pinjaman Anggota','Aktiva','',NULL,NULL,'Y'),(8,'A7','Piutang Anggota','Aktiva','','Y','Y','N'),(9,'A8','Persediaan Barang','Aktiva','','N','Y','Y'),(10,'A9','Biaya Dibayar Dimuka','Aktiva','','N','Y','Y'),(11,'A10','Perlengkapan Usaha','Aktiva','','N','Y','Y'),(17,'C','Aktiva Tetap Berwujud','Aktiva','',NULL,NULL,'Y'),(18,'C1','Peralatan Kantor','Aktiva','','N','Y','Y'),(19,'C2','Inventaris Kendaraan','Aktiva','','N','Y','Y'),(20,'C3','Mesin','Aktiva','','N','Y','Y'),(21,'C4','Aktiva Tetap Lainnya','Aktiva','','Y','N','Y'),(26,'E','Modal Pribadi','Aktiva','',NULL,NULL,'N'),(27,'E1','Prive','Aktiva','','Y','Y','N'),(28,'F','Utang','Pasiva','',NULL,NULL,'Y'),(29,'F1','Utang Usaha','Pasiva','','Y','Y','Y'),(31,'K3','Pengeluaran Lainnya','Aktiva','','N','Y','N'),(32,'F4','Simpanan Sukarela','Pasiva','',NULL,NULL,'Y'),(33,'F5','Utang Pajak','Pasiva','','Y','Y','Y'),(36,'H','Utang Jangka Panjang','Pasiva','',NULL,NULL,'Y'),(37,'H1','Utang Bank','Pasiva','','Y','Y','Y'),(38,'H2','Obligasi','Pasiva','','Y','Y','N'),(39,'I','Modal','Pasiva','',NULL,NULL,'Y'),(40,'I1','Simpanan Pokok','Pasiva','',NULL,NULL,'Y'),(41,'I2','Simpanan Wajib','Pasiva','',NULL,NULL,'Y'),(42,'I3','Modal Awal','Pasiva','','Y','Y','Y'),(43,'I4','Modal Penyertaan','Pasiva','','Y','Y','N'),(44,'I5','Modal Sumbangan','Pasiva','','Y','Y','Y'),(45,'I6','Modal Cadangan','Pasiva','','Y','Y','Y'),(47,'J','Pendapatan','Pasiva','PENDAPATAN',NULL,NULL,'Y'),(48,'J1','Pembayaran Angsuran','Pasiva','',NULL,NULL,'Y'),(49,'J2','Pendapatan Lainnya','Pasiva','PENDAPATAN','Y','N','Y'),(50,'K','Beban','Aktiva','',NULL,NULL,'Y'),(52,'K2','Beban Gaji Karyawan','Aktiva','BIAYA','N','Y','Y'),(53,'K3','Biaya Listrik dan Air','Aktiva','BIAYA','N','Y','Y'),(54,'K4','Biaya Transportasi','Aktiva','BIAYA','N','Y','Y'),(60,'K10','Biaya Lainnya','Aktiva','BIAYA','N','Y','Y'),(110,'TRF','Transfer Antar Kas',NULL,'',NULL,NULL,'N'),(111,'A11','Permisalan','Aktiva','','Y','Y','Y');
/*!40000 ALTER TABLE `jns_akun` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jns_angsuran`
--

DROP TABLE IF EXISTS `jns_angsuran`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jns_angsuran` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ket` int(11) NOT NULL,
  `aktif` enum('Y','T','','') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jns_angsuran`
--

LOCK TABLES `jns_angsuran` WRITE;
/*!40000 ALTER TABLE `jns_angsuran` DISABLE KEYS */;
INSERT INTO `jns_angsuran` VALUES (1,3,'Y'),(2,6,'Y'),(3,18,'Y'),(11,24,'Y'),(12,36,'Y'),(13,5,'Y');
/*!40000 ALTER TABLE `jns_angsuran` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jns_simpan`
--

DROP TABLE IF EXISTS `jns_simpan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jns_simpan` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `jns_simpan` varchar(30) NOT NULL,
  `jumlah` double NOT NULL,
  `tampil` enum('Y','T') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jns_simpan`
--

LOCK TABLES `jns_simpan` WRITE;
/*!40000 ALTER TABLE `jns_simpan` DISABLE KEYS */;
INSERT INTO `jns_simpan` VALUES (32,'Simpanan Sukarela',0,'Y'),(40,'Simpanan Pokok',100000,'Y'),(41,'Simpanan Wajib',50000,'Y');
/*!40000 ALTER TABLE `jns_simpan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nama_kas_tbl`
--

DROP TABLE IF EXISTS `nama_kas_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nama_kas_tbl` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nama` varchar(225) CHARACTER SET latin1 NOT NULL,
  `aktif` enum('Y','T') CHARACTER SET latin1 NOT NULL,
  `tmpl_simpan` enum('Y','T') CHARACTER SET latin1 NOT NULL,
  `tmpl_penarikan` enum('Y','T') CHARACTER SET latin1 NOT NULL,
  `tmpl_pinjaman` enum('Y','T') CHARACTER SET latin1 NOT NULL,
  `tmpl_bayar` enum('Y','T') CHARACTER SET latin1 NOT NULL,
  `tmpl_pemasukan` enum('Y','T') NOT NULL,
  `tmpl_pengeluaran` enum('Y','T') NOT NULL,
  `tmpl_transfer` enum('Y','T') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nama_kas_tbl`
--

LOCK TABLES `nama_kas_tbl` WRITE;
/*!40000 ALTER TABLE `nama_kas_tbl` DISABLE KEYS */;
INSERT INTO `nama_kas_tbl` VALUES (1,'Kas Tunai','Y','Y','Y','Y','Y','Y','Y','Y'),(2,'Kas Besar','Y','T','T','Y','T','Y','Y','Y'),(3,'Bank BNI','Y','T','T','T','T','Y','Y','Y');
/*!40000 ALTER TABLE `nama_kas_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pekerjaan`
--

DROP TABLE IF EXISTS `pekerjaan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pekerjaan` (
  `id_kerja` varchar(5) NOT NULL,
  `jenis_kerja` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pekerjaan`
--

LOCK TABLES `pekerjaan` WRITE;
/*!40000 ALTER TABLE `pekerjaan` DISABLE KEYS */;
INSERT INTO `pekerjaan` VALUES ('1','TNI'),('2','PNS'),('3','Karyawan Swasta'),('4','Guru'),('5','Buruh'),('6','Tani'),('7','Pedagang'),('8','Wiraswasta'),('9','Mengurus Rumah Tangga'),('99','Lainnya'),('98','Pensiunan'),('97','Penjahit');
/*!40000 ALTER TABLE `pekerjaan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suku_bunga`
--

DROP TABLE IF EXISTS `suku_bunga`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `suku_bunga` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `opsi_key` varchar(20) NOT NULL,
  `opsi_val` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suku_bunga`
--

LOCK TABLES `suku_bunga` WRITE;
/*!40000 ALTER TABLE `suku_bunga` DISABLE KEYS */;
INSERT INTO `suku_bunga` VALUES (1,'bg_tab','0'),(2,'bg_pinjam','2'),(3,'biaya_adm','1500'),(4,'denda','1000'),(5,'denda_hari','15'),(6,'dana_cadangan','40'),(7,'jasa_anggota','40'),(8,'dana_pengurus','5'),(9,'dana_karyawan','5'),(10,'dana_pend','5'),(11,'dana_sosial','5'),(12,'jasa_usaha','70'),(13,'jasa_modal','30'),(14,'pjk_pph','5'),(15,'pinjaman_bunga_tipe','A');
/*!40000 ALTER TABLE `suku_bunga` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_anggota`
--

DROP TABLE IF EXISTS `tbl_anggota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_anggota` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET latin1 NOT NULL,
  `identitas` varchar(255) NOT NULL,
  `jk` enum('L','P') NOT NULL,
  `tmp_lahir` varchar(225) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `status` varchar(30) NOT NULL,
  `agama` varchar(30) NOT NULL,
  `departement` varchar(255) NOT NULL,
  `pekerjaan` varchar(30) NOT NULL,
  `alamat` text CHARACTER SET latin1 NOT NULL,
  `kota` varchar(255) NOT NULL,
  `notelp` varchar(12) NOT NULL,
  `tgl_daftar` date NOT NULL,
  `jabatan_id` int(10) NOT NULL,
  `aktif` enum('Y','N') NOT NULL,
  `pass_word` varchar(225) NOT NULL,
  `file_pic` varchar(225) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `identitas` (`identitas`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_anggota`
--

LOCK TABLES `tbl_anggota` WRITE;
/*!40000 ALTER TABLE `tbl_anggota` DISABLE KEYS */;
INSERT INTO `tbl_anggota` VALUES (1,'Edi Suprayitno','edisupra377','L','Lumajang','1981-05-14','Kawin','Islam','WH','Buruh','Jl Perusahaan No 14','Lumajang','081232060526','2021-09-07',2,'Y','50f7e61ca206f40307cb02e3a0a423bef4666f97','');
/*!40000 ALTER TABLE `tbl_anggota` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_barang`
--

DROP TABLE IF EXISTS `tbl_barang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_barang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nm_barang` varchar(255) NOT NULL,
  `type` varchar(50) NOT NULL,
  `merk` varchar(50) NOT NULL,
  `harga` double NOT NULL,
  `jml_brg` int(11) NOT NULL,
  `ket` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_barang`
--

LOCK TABLES `tbl_barang` WRITE;
/*!40000 ALTER TABLE `tbl_barang` DISABLE KEYS */;
INSERT INTO `tbl_barang` VALUES (4,'Pinjaman Uang','Uang','-',0,0,'');
/*!40000 ALTER TABLE `tbl_barang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_pengajuan`
--

DROP TABLE IF EXISTS `tbl_pengajuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_pengajuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `no_ajuan` int(11) NOT NULL,
  `ajuan_id` varchar(255) NOT NULL,
  `anggota_id` bigint(20) NOT NULL,
  `tgl_input` datetime NOT NULL,
  `jenis` varchar(255) NOT NULL,
  `nominal` bigint(20) NOT NULL,
  `lama_ags` int(11) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `alasan` varchar(255) NOT NULL,
  `tgl_cair` date NOT NULL,
  `tgl_update` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`anggota_id`),
  CONSTRAINT `tbl_pengajuan_ibfk_1` FOREIGN KEY (`anggota_id`) REFERENCES `tbl_anggota` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_pengajuan`
--

LOCK TABLES `tbl_pengajuan` WRITE;
/*!40000 ALTER TABLE `tbl_pengajuan` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_pengajuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_pinjaman_d`
--

DROP TABLE IF EXISTS `tbl_pinjaman_d`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_pinjaman_d` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tgl_bayar` datetime NOT NULL,
  `pinjam_id` bigint(20) NOT NULL,
  `angsuran_ke` bigint(20) NOT NULL,
  `jumlah_bayar` int(11) NOT NULL,
  `denda_rp` int(11) NOT NULL,
  `terlambat` int(11) NOT NULL,
  `ket_bayar` enum('Angsuran','Pelunasan','Bayar Denda') NOT NULL,
  `dk` enum('D','K') NOT NULL,
  `kas_id` bigint(20) NOT NULL,
  `jns_trans` bigint(20) NOT NULL,
  `update_data` datetime NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `kas_id` (`kas_id`),
  KEY `user_name` (`user_name`),
  KEY `pinjam_id` (`pinjam_id`),
  KEY `jns_trans` (`jns_trans`),
  CONSTRAINT `tbl_pinjaman_d_ibfk_1` FOREIGN KEY (`pinjam_id`) REFERENCES `tbl_pinjaman_h` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tbl_pinjaman_d_ibfk_2` FOREIGN KEY (`kas_id`) REFERENCES `nama_kas_tbl` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `tbl_pinjaman_d_ibfk_3` FOREIGN KEY (`user_name`) REFERENCES `tbl_user` (`u_name`) ON DELETE CASCADE,
  CONSTRAINT `tbl_pinjaman_d_ibfk_4` FOREIGN KEY (`jns_trans`) REFERENCES `jns_akun` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_pinjaman_d`
--

LOCK TABLES `tbl_pinjaman_d` WRITE;
/*!40000 ALTER TABLE `tbl_pinjaman_d` DISABLE KEYS */;
INSERT INTO `tbl_pinjaman_d` VALUES (1,'2021-09-07 21:04:00',1,1,205500,0,0,'Angsuran','D',1,48,'0000-00-00 00:00:00','admin','angsuran 1'),(2,'2021-09-07 21:18:00',1,2,205500,0,0,'Angsuran','D',1,48,'0000-00-00 00:00:00','user','angsuran 2'),(3,'2021-09-07 21:25:00',1,3,205500,0,0,'Angsuran','D',1,48,'0000-00-00 00:00:00','admin','angsuran 3'),(4,'2021-09-07 21:25:00',1,4,205500,0,0,'Angsuran','D',1,48,'0000-00-00 00:00:00','admin','Angsuran 4'),(9,'2021-09-07 21:37:00',1,5,205500,0,0,'Pelunasan','D',1,48,'0000-00-00 00:00:00','admin','lunas');
/*!40000 ALTER TABLE `tbl_pinjaman_d` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_pinjaman_h`
--

DROP TABLE IF EXISTS `tbl_pinjaman_h`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_pinjaman_h` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tgl_pinjam` datetime NOT NULL,
  `anggota_id` bigint(20) NOT NULL,
  `barang_id` bigint(20) NOT NULL,
  `lama_angsuran` bigint(20) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `bunga` float(10,2) NOT NULL,
  `biaya_adm` int(11) NOT NULL,
  `lunas` enum('Belum','Lunas') NOT NULL,
  `dk` enum('D','K') NOT NULL,
  `kas_id` bigint(20) NOT NULL,
  `jns_trans` bigint(20) NOT NULL,
  `update_data` datetime NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `contoh` int(23) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `anggota_id` (`anggota_id`),
  KEY `kas_id` (`kas_id`),
  KEY `user_name` (`user_name`),
  KEY `jns_trans` (`jns_trans`),
  KEY `barang_id` (`barang_id`),
  CONSTRAINT `tbl_pinjaman_h_ibfk_1` FOREIGN KEY (`anggota_id`) REFERENCES `tbl_anggota` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `tbl_pinjaman_h_ibfk_2` FOREIGN KEY (`kas_id`) REFERENCES `nama_kas_tbl` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `tbl_pinjaman_h_ibfk_3` FOREIGN KEY (`user_name`) REFERENCES `tbl_user` (`u_name`) ON UPDATE CASCADE,
  CONSTRAINT `tbl_pinjaman_h_ibfk_4` FOREIGN KEY (`jns_trans`) REFERENCES `jns_akun` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `tbl_pinjaman_h_ibfk_5` FOREIGN KEY (`barang_id`) REFERENCES `tbl_barang` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_pinjaman_h`
--

LOCK TABLES `tbl_pinjaman_h` WRITE;
/*!40000 ALTER TABLE `tbl_pinjaman_h` DISABLE KEYS */;
INSERT INTO `tbl_pinjaman_h` VALUES (1,'2021-09-07 21:02:00',1,4,5,1000000,2.00,1500,'Belum','K',1,7,'0000-00-00 00:00:00','admin','Pinjaman',0);
/*!40000 ALTER TABLE `tbl_pinjaman_h` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_setting`
--

DROP TABLE IF EXISTS `tbl_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_setting` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `opsi_key` varchar(255) NOT NULL,
  `opsi_val` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_setting`
--

LOCK TABLES `tbl_setting` WRITE;
/*!40000 ALTER TABLE `tbl_setting` DISABLE KEYS */;
INSERT INTO `tbl_setting` VALUES (1,'nama_lembaga','KOPERASI TUNAS BARU'),(2,'nama_ketua','HENDRA JAYA'),(3,'hp_ketua','081232060526'),(4,'alamat','JL. DR. Wahidin No. 19, Krajan, Bedali Kec Lawang Kab Malang'),(5,'telepon','0341 123 456'),(6,'kota','Malang'),(7,'email','koperasitunasbaru@gmail.com'),(8,'web','www.koperasitunasbaru.com');
/*!40000 ALTER TABLE `tbl_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_trans_kas`
--

DROP TABLE IF EXISTS `tbl_trans_kas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_trans_kas` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tgl_catat` datetime NOT NULL,
  `jumlah` double NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `akun` enum('Pemasukan','Pengeluaran','Transfer') NOT NULL,
  `dari_kas_id` bigint(20) DEFAULT NULL,
  `untuk_kas_id` bigint(20) DEFAULT NULL,
  `jns_trans` bigint(20) DEFAULT NULL,
  `dk` enum('D','K') DEFAULT NULL,
  `update_data` datetime NOT NULL,
  `user_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_name` (`user_name`),
  KEY `dari_kas_id` (`dari_kas_id`,`untuk_kas_id`),
  KEY `untuk_kas_id` (`untuk_kas_id`),
  KEY `jns_trans` (`jns_trans`),
  CONSTRAINT `tbl_trans_kas_ibfk_2` FOREIGN KEY (`user_name`) REFERENCES `tbl_user` (`u_name`) ON UPDATE CASCADE,
  CONSTRAINT `tbl_trans_kas_ibfk_3` FOREIGN KEY (`dari_kas_id`) REFERENCES `nama_kas_tbl` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `tbl_trans_kas_ibfk_4` FOREIGN KEY (`untuk_kas_id`) REFERENCES `nama_kas_tbl` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `tbl_trans_kas_ibfk_5` FOREIGN KEY (`jns_trans`) REFERENCES `jns_akun` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_trans_kas`
--

LOCK TABLES `tbl_trans_kas` WRITE;
/*!40000 ALTER TABLE `tbl_trans_kas` DISABLE KEYS */;
INSERT INTO `tbl_trans_kas` VALUES (1,'2021-09-07 20:32:00',1000000,'Pembayaran Tagihan','Pemasukan',NULL,2,5,'D','0000-00-00 00:00:00','admin'),(2,'2021-09-07 20:43:00',1000000,'Pinjaman','Pengeluaran',2,NULL,42,'K','0000-00-00 00:00:00','admin'),(3,'2021-09-07 20:44:00',1000000,'Adjustment','Transfer',2,1,110,NULL,'0000-00-00 00:00:00','admin');
/*!40000 ALTER TABLE `tbl_trans_kas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_trans_sp`
--

DROP TABLE IF EXISTS `tbl_trans_sp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_trans_sp` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tgl_transaksi` datetime NOT NULL,
  `anggota_id` bigint(20) NOT NULL,
  `jenis_id` int(5) NOT NULL,
  `jumlah` double NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `akun` enum('Setoran','Penarikan') NOT NULL,
  `dk` enum('D','K') NOT NULL,
  `kas_id` bigint(20) NOT NULL,
  `update_data` datetime NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `nama_penyetor` varchar(255) NOT NULL,
  `no_identitas` varchar(20) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `anggota_id` (`anggota_id`),
  KEY `jenis_id` (`jenis_id`),
  KEY `kas_id` (`kas_id`),
  KEY `user_name` (`user_name`),
  CONSTRAINT `tbl_trans_sp_ibfk_1` FOREIGN KEY (`anggota_id`) REFERENCES `tbl_anggota` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `tbl_trans_sp_ibfk_2` FOREIGN KEY (`kas_id`) REFERENCES `nama_kas_tbl` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `tbl_trans_sp_ibfk_4` FOREIGN KEY (`jenis_id`) REFERENCES `jns_simpan` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `tbl_trans_sp_ibfk_5` FOREIGN KEY (`user_name`) REFERENCES `tbl_user` (`u_name`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_trans_sp`
--

LOCK TABLES `tbl_trans_sp` WRITE;
/*!40000 ALTER TABLE `tbl_trans_sp` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_trans_sp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `u_name` varchar(255) NOT NULL,
  `pass_word` varchar(255) NOT NULL,
  `aktif` enum('Y','N') NOT NULL,
  `level` enum('admin','operator','pinjaman') NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_name` (`u_name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_user`
--

LOCK TABLES `tbl_user` WRITE;
/*!40000 ALTER TABLE `tbl_user` DISABLE KEYS */;
INSERT INTO `tbl_user` VALUES (1,'admin','224bec3dd08832bc6a69873f15a50df406045f40','Y','admin'),(4,'user','e22b7d59cb35d199ab7e54ed0f2ef58f5da5347b','Y','operator'),(5,'pinjaman','efd2770f6782f7218be595baf2fc16bc7cf45143','Y','pinjaman');
/*!40000 ALTER TABLE `tbl_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `v_hitung_pinjaman`
--

DROP TABLE IF EXISTS `v_hitung_pinjaman`;
/*!50001 DROP VIEW IF EXISTS `v_hitung_pinjaman`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_hitung_pinjaman` (
  `id` tinyint NOT NULL,
  `tgl_pinjam` tinyint NOT NULL,
  `anggota_id` tinyint NOT NULL,
  `lama_angsuran` tinyint NOT NULL,
  `jumlah` tinyint NOT NULL,
  `bunga` tinyint NOT NULL,
  `biaya_adm` tinyint NOT NULL,
  `lunas` tinyint NOT NULL,
  `dk` tinyint NOT NULL,
  `kas_id` tinyint NOT NULL,
  `user_name` tinyint NOT NULL,
  `pokok_angsuran` tinyint NOT NULL,
  `bunga_pinjaman` tinyint NOT NULL,
  `ags_per_bulan` tinyint NOT NULL,
  `tempo` tinyint NOT NULL,
  `tagihan` tinyint NOT NULL,
  `keterangan` tinyint NOT NULL,
  `barang_id` tinyint NOT NULL,
  `bln_sudah_angsur` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_transaksi`
--

DROP TABLE IF EXISTS `v_transaksi`;
/*!50001 DROP VIEW IF EXISTS `v_transaksi`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_transaksi` (
  `tbl` tinyint NOT NULL,
  `id` tinyint NOT NULL,
  `tgl` tinyint NOT NULL,
  `kredit` tinyint NOT NULL,
  `debet` tinyint NOT NULL,
  `dari_kas` tinyint NOT NULL,
  `untuk_kas` tinyint NOT NULL,
  `transaksi` tinyint NOT NULL,
  `ket` tinyint NOT NULL,
  `user` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `v_hitung_pinjaman`
--

/*!50001 DROP TABLE IF EXISTS `v_hitung_pinjaman`*/;
/*!50001 DROP VIEW IF EXISTS `v_hitung_pinjaman`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_hitung_pinjaman` AS select `tbl_pinjaman_h`.`id` AS `id`,`tbl_pinjaman_h`.`tgl_pinjam` AS `tgl_pinjam`,`tbl_pinjaman_h`.`anggota_id` AS `anggota_id`,`tbl_pinjaman_h`.`lama_angsuran` AS `lama_angsuran`,`tbl_pinjaman_h`.`jumlah` AS `jumlah`,`tbl_pinjaman_h`.`bunga` AS `bunga`,`tbl_pinjaman_h`.`biaya_adm` AS `biaya_adm`,`tbl_pinjaman_h`.`lunas` AS `lunas`,`tbl_pinjaman_h`.`dk` AS `dk`,`tbl_pinjaman_h`.`kas_id` AS `kas_id`,`tbl_pinjaman_h`.`user_name` AS `user_name`,`tbl_pinjaman_h`.`jumlah` / `tbl_pinjaman_h`.`lama_angsuran` AS `pokok_angsuran`,round(ceiling(`tbl_pinjaman_h`.`jumlah` / `tbl_pinjaman_h`.`lama_angsuran` * `tbl_pinjaman_h`.`bunga` / 100),-2) AS `bunga_pinjaman`,round(ceiling((`tbl_pinjaman_h`.`jumlah` / `tbl_pinjaman_h`.`lama_angsuran` * `tbl_pinjaman_h`.`bunga` / 100 + `tbl_pinjaman_h`.`jumlah` / `tbl_pinjaman_h`.`lama_angsuran` + `tbl_pinjaman_h`.`biaya_adm`) * 100 / 100),-2) AS `ags_per_bulan`,`tbl_pinjaman_h`.`tgl_pinjam` + interval `tbl_pinjaman_h`.`lama_angsuran` month AS `tempo`,round(ceiling((`tbl_pinjaman_h`.`jumlah` / `tbl_pinjaman_h`.`lama_angsuran` * `tbl_pinjaman_h`.`bunga` / 100 + `tbl_pinjaman_h`.`jumlah` / `tbl_pinjaman_h`.`lama_angsuran` + `tbl_pinjaman_h`.`biaya_adm`) * 100 / 100),-2) * `tbl_pinjaman_h`.`lama_angsuran` AS `tagihan`,`tbl_pinjaman_h`.`keterangan` AS `keterangan`,`tbl_pinjaman_h`.`barang_id` AS `barang_id`,ifnull(max(`tbl_pinjaman_d`.`angsuran_ke`),0) AS `bln_sudah_angsur` from (`tbl_pinjaman_h` left join `tbl_pinjaman_d` on(`tbl_pinjaman_h`.`id` = `tbl_pinjaman_d`.`pinjam_id`)) group by `tbl_pinjaman_h`.`id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_transaksi`
--

/*!50001 DROP TABLE IF EXISTS `v_transaksi`*/;
/*!50001 DROP VIEW IF EXISTS `v_transaksi`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_transaksi` AS select 'A' AS `tbl`,`tbl_pinjaman_h`.`id` AS `id`,`tbl_pinjaman_h`.`tgl_pinjam` AS `tgl`,`tbl_pinjaman_h`.`jumlah` AS `kredit`,0 AS `debet`,`tbl_pinjaman_h`.`kas_id` AS `dari_kas`,NULL AS `untuk_kas`,`tbl_pinjaman_h`.`jns_trans` AS `transaksi`,`tbl_pinjaman_h`.`keterangan` AS `ket`,`tbl_pinjaman_h`.`user_name` AS `user` from `tbl_pinjaman_h` union select 'B' AS `tbl`,`tbl_pinjaman_d`.`id` AS `id`,`tbl_pinjaman_d`.`tgl_bayar` AS `tgl`,0 AS `kredit`,`tbl_pinjaman_d`.`jumlah_bayar` AS `debet`,NULL AS `dari_kas`,`tbl_pinjaman_d`.`kas_id` AS `untuk_kas`,`tbl_pinjaman_d`.`jns_trans` AS `transaksi`,`tbl_pinjaman_d`.`keterangan` AS `ket`,`tbl_pinjaman_d`.`user_name` AS `user` from `tbl_pinjaman_d` union select 'C' AS `tbl`,`tbl_trans_sp`.`id` AS `id`,`tbl_trans_sp`.`tgl_transaksi` AS `tgl`,if(`tbl_trans_sp`.`dk` = 'K',`tbl_trans_sp`.`jumlah`,0) AS `kredit`,if(`tbl_trans_sp`.`dk` = 'D',`tbl_trans_sp`.`jumlah`,0) AS `debet`,if(`tbl_trans_sp`.`dk` = 'K',`tbl_trans_sp`.`kas_id`,NULL) AS `dari_kas`,if(`tbl_trans_sp`.`dk` = 'D',`tbl_trans_sp`.`kas_id`,NULL) AS `untuk_kas`,`tbl_trans_sp`.`jenis_id` AS `transaksi`,`tbl_trans_sp`.`keterangan` AS `ket`,`tbl_trans_sp`.`user_name` AS `user` from `tbl_trans_sp` union select 'D' AS `tbl`,`tbl_trans_kas`.`id` AS `id`,`tbl_trans_kas`.`tgl_catat` AS `tgl`,if(`tbl_trans_kas`.`dk` = 'K',`tbl_trans_kas`.`jumlah`,if(`tbl_trans_kas`.`dk` is null,`tbl_trans_kas`.`jumlah`,0)) AS `kredit`,if(`tbl_trans_kas`.`dk` = 'D',`tbl_trans_kas`.`jumlah`,if(`tbl_trans_kas`.`dk` is null,`tbl_trans_kas`.`jumlah`,0)) AS `debet`,`tbl_trans_kas`.`dari_kas_id` AS `dari_kas`,`tbl_trans_kas`.`untuk_kas_id` AS `untuk_kas`,`tbl_trans_kas`.`jns_trans` AS `transaksi`,`tbl_trans_kas`.`keterangan` AS `ket`,`tbl_trans_kas`.`user_name` AS `user` from `tbl_trans_kas` order by `tgl` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-07 22:15:31
