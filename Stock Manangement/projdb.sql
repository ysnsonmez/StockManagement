SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

CREATE DATABASE IF NOT EXISTS `projdb` DEFAULT CHARACTER SET utf8 COLLATE utf8_turkish_ci;
USE `projdb`;

CREATE TABLE IF NOT EXISTS `kategori` (
`id` int(11) NOT NULL,
  `adi` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

INSERT INTO `kategori` (`id`, `adi`) VALUES
(1, 'Beyaz Esya'),
(2, 'Elektronik'),
(3, 'Gida'),
(4, 'Yemek'),
(5, 'Saglik'),
(6, 'Temizlik');

CREATE TABLE IF NOT EXISTS `musteri` (
`id` int(20) NOT NULL,
  `adi` varchar(255) NOT NULL,
  `soyadi` varchar(255) NOT NULL,
  `telefon` varchar(255) NOT NULL,
  `adres` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO `musteri` (`id`, `adi`, `soyadi`, `telefon`, `adres`) VALUES
(1, 'yasin', 'sonmez', '506', 'Safranbolu'),
(2, 'çagdas', 'dikici', '505', 'Kütahya');

CREATE TABLE IF NOT EXISTS `sepet` (
`id` int(11) NOT NULL,
  `kategori_adi` varchar(255) NOT NULL,
  `urun_adi` varchar(255) NOT NULL,
  `musteri_adi` varchar(255) NOT NULL,
  `adet` int(11) NOT NULL,
  `fiyat` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `sepet` (`id`, `kategori_adi`, `urun_adi`, `musteri_adi`, `adet`, `fiyat`) VALUES
(1, 'Beyaz Esya', 'buzdolabi', 'çagdas', 1, 150),
(2, 'Elektronik', 'laptop', 'yasin', 1, 250);

CREATE TABLE IF NOT EXISTS `tedarikci` (
`id` int(20) NOT NULL,
  `adi` varchar(255) NOT NULL,
  `telefon` varchar(255) NOT NULL,
  `adres` varchar(255) NOT NULL,
  `urun_adi` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

INSERT INTO `tedarikci` (`id`, `adi`, `telefon`, `adres`, `urun_adi`) VALUES
(5, 'mod a.ş.', '12345', 'beşiktaş', 'televizyon'),
(6, 'beyaz a.ş.', '4445444', 'etiler', 'buzdolabı'),
(7, 'say?n a.?.', '12345', 'maltepe', ''),
(8, 'aga ldt. sti. a.?.', '4440500', 'ankara', 'antibiyotik');

CREATE TABLE IF NOT EXISTS `urunler` (
`id` int(11) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `adi` varchar(255) NOT NULL,
  `fiyat` varchar(50) NOT NULL,
  `adet` int(11) NOT NULL,
  `tarih` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

INSERT INTO `urunler` (`id`, `kategori`, `adi`, `fiyat`, `adet`, `tarih`) VALUES
(12, 'Elektronik', 'televizyon', '100', 11, '2014-12-13 17:24:00'),
(13, 'Beyaz Esya', 'buzdolabi', '150', 5, '2014-12-13 17:27:53'),
(14, 'Gida', 'çikolata', '5', 100, '2014-12-13 17:28:16'),
(15, 'Gida', 'reçel', '6', 100, '2014-12-13 21:39:28'),
(16, 'Elektronik', 'laptop', '250', 40, '2014-12-13 21:47:33'),
(18, 'Beyaz Esya', 'camasir makinesi', '75', 5, '2014-12-13 22:49:47'),
(19, 'Beyaz Esya', 'firin', '100', 5, '2014-12-13 22:50:14'),
(20, 'Elektronik', 'traş makinesi', '20', 10, '2014-12-13 22:50:32'),
(21, 'Elektronik', 'ütü', '20', 10, '2014-12-13 22:50:43'),
(22, 'Elektronik', 'tost makinesi', '15', 10, '2014-12-13 22:50:59'),
(23, 'Gida', 'bisküvi', '5', 100, '2014-12-13 22:51:25'),
(24, 'Yemek', 'konserve bezelye', '5', 100, '2014-12-13 22:51:47'),
(25, 'Yemek', 'konserve fasulye', '5', 100, '2014-12-13 22:51:57'),
(26, 'Saglik', 'yarabandı', '2', 100, '2014-12-13 22:52:09'),
(27, 'Saglik', 'sargı bezi', '2', 100, '2014-12-13 22:52:18'),
(28, 'Saglik', 'antibiyotik', '2', 100, '2014-12-13 22:52:31'),
(29, 'Temizlik', 'çamaşır suyu', '2', 100, '2014-12-13 22:52:41'),
(30, 'Temizlik', 'bulaşık deterjanı', '2', 100, '2014-12-13 22:52:47'),
(31, 'Elektronik', 'mutfak robotu', '30', 20, '2014-12-13 22:53:30'),
(32, 'Gida', 'un', '10', 30, '2014-12-13 22:53:59'),
(33, 'Gida', 'yağ', '10', 30, '2014-12-13 22:54:04'),
(34, 'Gida', 'şeker', '10', 30, '2014-12-13 22:54:11'),
(37, 'Yemek', 'peynir', '10', 500, '2014-12-17 21:57:48');

CREATE TABLE IF NOT EXISTS `users` (
`id` int(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `users` (`id`, `name`, `password`) VALUES
(1, 'yasin', '123');


ALTER TABLE `kategori`
 ADD PRIMARY KEY (`id`);

ALTER TABLE `musteri`
 ADD PRIMARY KEY (`id`);

ALTER TABLE `sepet`
 ADD PRIMARY KEY (`id`);

ALTER TABLE `tedarikci`
 ADD PRIMARY KEY (`id`);

ALTER TABLE `urunler`
 ADD PRIMARY KEY (`id`);

ALTER TABLE `users`
 ADD PRIMARY KEY (`id`);


ALTER TABLE `kategori`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
ALTER TABLE `musteri`
MODIFY `id` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
ALTER TABLE `sepet`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
ALTER TABLE `tedarikci`
MODIFY `id` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
ALTER TABLE `urunler`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
ALTER TABLE `users`
MODIFY `id` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
