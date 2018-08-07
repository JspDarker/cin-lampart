-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 15, 2017 at 11:32 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `faceshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `fs_admin`
--

CREATE TABLE `fs_admin` (
  `id` int(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fs_admin`
--

INSERT INTO `fs_admin` (`id`, `password`, `email`, `name`) VALUES
(100, '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'admin@gmail.com', 'Lê Văn Test'),
(101, '6d681cd9fa5ffab263b219c303f61a0f438716b6', 'user@localhost.com', 'Le van User');

-- --------------------------------------------------------

--
-- Table structure for table `fs_answer`
--

CREATE TABLE `fs_answer` (
  `id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `content` varchar(500) NOT NULL,
  `order` int(11) NOT NULL,
  `vote` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fs_answer`
--

INSERT INTO `fs_answer` (`id`, `question_id`, `content`, `order`, `vote`) VALUES
(1, 1, 'Nokia', 1, 8),
(2, 1, 'SamSung', 2, 3),
(3, 1, 'LG', 3, 3),
(4, 1, 'IPhone', 4, 2),
(5, 2, 'Đẹp', 1, 13),
(6, 2, 'Bình thường', 2, 4),
(7, 2, 'Không đẹp lắm', 3, 1),
(8, 2, 'Xấu', 4, 7);

-- --------------------------------------------------------

--
-- Table structure for table `fs_category`
--

CREATE TABLE `fs_category` (
  `id` int(255) NOT NULL,
  `department_id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `order` int(4) NOT NULL,
  `active` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fs_category`
--

INSERT INTO `fs_category` (`id`, `department_id`, `name`, `order`, `active`) VALUES
(1, 1, 'Điện thoại di động', 1, 1),
(3, 1, 'Máy cũ', 3, 1),
(5, 2, 'Máy tính bảng', 1, 1),
(7, 2, 'Laptop', 3, 1),
(9, 3, 'Tai nghe Bluetooth', 1, 1),
(10, 3, 'Bao da', 1, 1),
(11, 3, 'Tai nghe dây', 1, 1),
(12, 3, 'Sạc', 1, 1),
(13, 3, 'Thẻ nhớ', 1, 1),
(14, 3, 'Loa nghe nhạc', 1, 1),
(15, 3, 'Thiết bị kết nối máy tính', 1, 1),
(16, 3, 'Dán bảo vệ màn hình & Trang trí', 1, 1),
(17, 3, 'Pin ', 1, 1),
(18, 4, 'Thiết bị mạng', 1, 1),
(19, 4, 'Adapter sạc', 1, 1),
(20, 4, 'Loa và tai nghe', 1, 1),
(21, 4, 'Chuột/ Bàn phím', 1, 1),
(22, 4, 'Thiết bị lưu trữ ', 1, 1),
(23, 5, 'Máy ảnh', 1, 1),
(24, 5, 'Máy MP3', 1, 1),
(25, 5, 'MP4/MP5', 1, 1),
(26, 5, 'HD Player', 1, 1),
(27, 5, 'Từ điển điện tử', 1, 1),
(28, 5, 'Máy quay phim', 1, 1),
(29, 5, 'Phụ kiện KTS', 1, 1),
(30, 5, 'Máy ghi âm', 1, 1),
(53, 9, 'Dải đệm Massage', 1, 1),
(54, 9, 'Máy đo huyết áp', 1, 1),
(55, 9, 'Massage chân', 1, 1),
(56, 9, 'Massage cầm tay', 1, 1),
(57, 9, 'Massage bụng', 1, 1),
(58, 9, 'Ghế massage', 1, 1),
(59, 9, 'Nhiệt kế', 1, 1),
(60, 10, 'Hút khói - Khử mùi', 1, 1),
(61, 10, 'Máy may / Thêu', 1, 1),
(62, 10, 'Hút bụi', 1, 1),
(63, 10, 'Bàn ủi', 1, 1),
(64, 10, 'Sấy tóc', 1, 1),
(65, 10, 'Ổ cắm', 1, 1),
(66, 10, 'Quạt', 1, 1),
(67, 10, 'Đèn', 1, 1),
(72, 12, 'Máy làm sữa đậu nành', 1, 1),
(73, 12, 'Xay / Xay ép đa năng', 1, 1),
(74, 12, 'Máy pha cà phê', 1, 1),
(75, 12, 'Máy đánh trứng', 1, 1),
(79, 1, 'Phụ kiện', 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `fs_department`
--

CREATE TABLE `fs_department` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `order` int(4) NOT NULL,
  `active` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fs_department`
--

INSERT INTO `fs_department` (`id`, `name`, `order`, `active`) VALUES
(1, 'Điện Thoại', 1, 1),
(2, 'Máy Tính', 2, 1),
(3, 'Phụ Kiện Điện Thoại', 5, 1),
(4, 'Phụ Kiện Laptop', 5, 1),
(5, 'Kỹ Thuật Số', 5, 1),
(9, 'Chăm sóc sức khoẻ', 4, 1),
(10, 'Điện gia đình', 5, 0),
(12, 'Sinh tố, Xay, Ép, Pha', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `fs_online`
--

CREATE TABLE `fs_online` (
  `id` varchar(50) NOT NULL,
  `last_access` int(11) NOT NULL,
  `user` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fs_online`
--

INSERT INTO `fs_online` (`id`, `last_access`, `user`) VALUES
('8oip1n660toddsntrprbmdvct2', 1491398854, ''),
('me0o4b0t1hfa95ovkb6f82tfs2', 1491398845, '');

-- --------------------------------------------------------

--
-- Table structure for table `fs_order`
--

CREATE TABLE `fs_order` (
  `id` int(255) NOT NULL,
  `user_id` int(255) NOT NULL,
  `create_at` datetime NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(500) NOT NULL,
  `ship_at` datetime NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `remark` varchar(500) DEFAULT NULL,
  `status` tinyint(4) NOT NULL COMMENT '0:Mới đặt, 1:Đã xác nhận,2:Đang giao,3:Đã giao,4:Hoàn tất,-1:Hủy'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fs_order`
--

INSERT INTO `fs_order` (`id`, `user_id`, `create_at`, `name`, `address`, `ship_at`, `email`, `mobile`, `remark`, `status`) VALUES
(7, 101, '2013-03-06 20:48:42', 'Teo', '', '2013-03-07 00:00:00', 'abc@abc.abc', '0901234567', '', 0),
(5, 100, '2013-03-06 19:34:13', 'Lê Văn Test', '49 Hoàng Văn Thụ, Phường 2, Quận Phú Nhuận, TP. Hồ Chí Minh', '2013-07-04 00:00:00', 'admin@gmail.com', '0901234567', 'Goi dien truoc khi giao', -1),
(6, 100, '2013-03-06 19:51:28', 'Lê Văn Test', '49 Hoàng Văn Thụ, Phường 2, Quận Phú Nhuận, TP. Hồ Chí Minh', '2013-03-07 00:00:00', 'admin@gmail.com', '0901234567', '', 4),
(9, 100, '2014-01-04 20:10:05', 'Lê Văn Test', '49 Hoàng Văn Thụ, Phường 2, Quận Phú Nhuận, TP. Hồ Chí Minh', '2013-03-07 00:00:00', 'admin@gmail.com', '0901234567', '', -1),
(10, 100, '2017-07-28 06:18:13', 'Lê Văn Test', '49 Hoàng Văn Thụ, Phường 2, Quận Phú Nhuận, TP. Hồ Chí Minh', '2017-07-30 00:00:00', 'admin@gmail.com', '0901234567', '', 0),
(11, 100, '2017-07-28 06:19:21', 'Lê Văn Test', '49 Hoàng Văn Thụ, Phường 2, Quận Phú Nhuận, TP. Hồ Chí Minh', '2017-07-30 00:00:00', 'admin@gmail.com', '0901234567', '', 0),
(12, 100, '2017-07-28 06:20:56', 'Lê Văn Test', '49 Hoàng Văn Thụ, Phường 2, Quận Phú Nhuận, TP. Hồ Chí Minh', '2017-07-30 00:00:00', 'admin@gmail.com', '0901234567', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `fs_order_detail`
--

CREATE TABLE `fs_order_detail` (
  `order_id` int(255) NOT NULL,
  `product_id` int(255) NOT NULL,
  `qty` int(255) NOT NULL,
  `price` decimal(15,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fs_order_detail`
--

INSERT INTO `fs_order_detail` (`order_id`, `product_id`, `qty`, `price`) VALUES
(5, 382, 10, '13199000.0000'),
(5, 371, 1, '14799000.0000'),
(6, 382, 1, '13199000.0000'),
(6, 371, 1, '14799000.0000'),
(7, 375, 1, '13599000.0000'),
(8, 4, 1, '9799000.0000'),
(8, 382, 1, '13199000.0000'),
(8, 136, 1, '4599000.0000'),
(5, 4, 1, '9799000.0000'),
(9, 2, 2, '9899000.0000'),
(9, 1, 1, '11449000.0000'),
(10, 1, 1, '11449000.0000'),
(10, 2, 4, '9899000.0000'),
(11, 1, 1, '11449000.0000'),
(11, 2, 4, '9899000.0000'),
(12, 1, 1, '11449000.0000'),
(12, 2, 3, '9899000.0000'),
(12, 219, 2, '13699000.0000');

-- --------------------------------------------------------

--
-- Table structure for table `fs_product`
--

CREATE TABLE `fs_product` (
  `id` int(255) NOT NULL,
  `category_id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `desc` text,
  `detail` text,
  `create_at` date NOT NULL,
  `qty` int(255) NOT NULL DEFAULT '0',
  `note` varchar(500) DEFAULT NULL,
  `sold` int(255) NOT NULL DEFAULT '0',
  `view` int(255) NOT NULL DEFAULT '0',
  `active` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fs_product`
--

INSERT INTO `fs_product` (`id`, `category_id`, `name`, `price`, `desc`, `detail`, `create_at`, `qty`, `note`, `sold`, `view`, `active`) VALUES
(1, 1, 'Nokia N8', '11449000.0000', '    * Hệ điều hành Symbian\r\n    * Máy ảnh 12 MP, máy ảnh phụ VGA\r\n    * Mạng 3G với HSDPA, 7.2 Mbps\r\n    * HSUPA, 5.76 Mbps\r\n    * Wi-Fi 802.11 b/g, UPnP technology\r\n    * Document viewer (Word, Excel, PowerPoint, PDF)\r\n    * Đài FM, tích hợp máy phát FM\r\n    * Jack tai nghe 3.5mm, Out Tivi với HDMI and composite, Flash Lite v4.0 ', NULL, '0000-00-00', 100, NULL, 0, 18, 1),
(2, 1, 'Nokia N900', '9899000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Điện thoại truyền th&ocirc;ng đa phương tiện</li>\r\n<li>Camera 5.0 MP, Camera phụ VGA</li>\r\n<li>Kết nối mạng 3.5G với tốc độ l&ecirc;n đến 10 Mbps</li>\r\n<li>Hỗ trợ A-GPS, OVI Maps</li>\r\n<li>Kết nối Wifi tốc độ cao, Bluetooth, USB</li>\r\n<li>Document viewer (Word, Excel, PowerPoint, PDF)</li>\r\n<li>Chỉnh sửa h&igrave;nh ảnh</li>\r\n<li>Adobe Flash Player 9.4</li>\r\n<li>Out Tivi, v&agrave; jack loa 3.5 mm </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 7, 1),
(4, 1, 'Nokia 6700 classic gold', '9799000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Điện thoại 3G với thiết kế thời trang với vỏ tr&aacute;ng 18 carat v&agrave;ng sang trọng</li>\r\n<li>Camera 5 MP, hỗ trợ flash, tự động lấy n&eacute;t</li>\r\n<li>Nghe nhạc/xem phim nhiều định dạng MP3/M4A/AAC/eAAC+/WMA</li>\r\n<li>Đ&agrave;i FM, Bluetooth, kết nối 3.5G với tốc độ truyền dữ liệu 10 Mbps</li>\r\n<li>Định vị GPS, Bản đồ Nokia</li>\r\n<li>Flash Lite 3 </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 3, 1),
(5, 1, 'Nokia N97', '9549000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Kiểu trượt cảm ứng s&agrave;nh điệu</li>\r\n<li>Camera 5 MP, camera phụ thực hiện videocall</li>\r\n<li>Bộ nhớ 32 GB, RAM 128 MB</li>\r\n<li>Chức năng định vị GPS</li>\r\n<li>Chức năng Out-Tivi, jack tai nghe 3.5mm</li>\r\n<li>Pocket Office (Word, Excel, PowerPoint, PDF viewer)</li>\r\n<li>Chỉnh sửa h&igrave;nh ảnh v&agrave; Video</li>\r\n<li>Flash Lite 3</li>\r\n<li>Kết nối 3G, Wifi, Bluetooth </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(6, 1, 'Nokia N97 mini Navi', '9049000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Kiểu trượt cảm ứng s&agrave;nh điệu</li>\r\n<li>Camera 5 MP, camera phụ thực hiện videocall</li>\r\n<li>Bộ nhớ 32 GB, RAM 128 MB</li>\r\n<li>Chức năng định vị GPS</li>\r\n<li>Chức năng Out-Tivi, jack tai nghe 3.5mm</li>\r\n<li>Pocket Office (Word, Excel, PowerPoint, PDF viewer)</li>\r\n<li>Chỉnh sửa h&igrave;nh ảnh v&agrave; Video</li>\r\n<li>Flash Lite 3</li>\r\n<li>Kết nối 3G, Wifi, Bluetooth </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(7, 1, 'Nokia C7', '8679000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Hệ điều h&agrave;nh Symbian</li>\r\n<li>M&agrave;n h&igrave;nh cảm ứng điện dung</li>\r\n<li>M&aacute;y ảnh 8 MP với Flash k&eacute;p</li>\r\n<li>M&aacute;y nghe nhạc, xem phim nhiều định dạng</li>\r\n<li>Mạng 3G, kết nối Wifi, GPS, Bluetooth</li>\r\n<li>Xem văn bản (Word, Excel, PowerPoint, PDF)</li>\r\n<li>Kết nối Tivi v&agrave; Web Tivi </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(8, 1, 'Nokia N86', '7899000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Thiết kế trượt thời trang với m&agrave;n h&igrave;nh AMOLED 2.6 inch</li>\r\n<li>Camera 8.0 MP, Camera phụ VGA, đ&egrave;n LED hỗ trợ, k&iacute;nh chống xước</li>\r\n<li>Hỗ trợ định dạng: MP3, WMA, AAC, AAC+, eAAC, eAAC+, MPEG-4, AVC (H.264), WMV, Flash video, 3GPP (H.263), RealVideo</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp</li>\r\n<li>Duyệt web cực nhanh với Wifi v&agrave; mạng 3G tốc độ truyền 3.6Mb</li>\r\n<li>Định vị to&agrave;n cầu GPS</li>\r\n<li>Out-Tivi </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(9, 1, 'Nokia E72 Navi', '7699000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Symbian OS 9.3, Series 60 v3.2 UI</li>\r\n<li>CPU: ARM 11 600 MHz processor, RAM 128MB</li>\r\n<li>T&iacute;nh năng văn ph&ograve;ng (Word, Excel, PowerPoint, PDF)</li>\r\n<li>Camera 5.0 MP</li>\r\n<li> Camera phụ VGA thực hiện Videocall</li>\r\n<li>M&aacute;y nghe nhạc xem phim nhiều định dạng với jack loa 3.5 mm</li>\r\n<li>C&ocirc;ng nghệ GPS với Nokia Map</li>\r\n<li>Kết nối 3G, Wifi, Bluetooth... </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(10, 1, 'Nokia E72', '7699000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Symbian OS 9.3, Series 60 v3.2 UI</li>\r\n<li>CPU: ARM 11 600 MHz processor, RAM 128MB</li>\r\n<li>T&iacute;nh năng văn ph&ograve;ng (Word, Excel, PowerPoint, PDF)</li>\r\n<li>Camera 5.0 MP</li>\r\n<li> Camera phụ VGA thực hiện Videocall</li>\r\n<li>M&aacute;y nghe nhạc xem phim nhiều định dạng với jack loa 3.5 mm</li>\r\n<li>C&ocirc;ng nghệ GPS với Nokia Map</li>\r\n<li>Kết nối 3G, Wifi, Bluetooth... </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(11, 1, 'Nokia E72 white', '7699000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Symbian OS 9.3, Series 60 v3.2 UI</li>\r\n<li>CPU: ARM 11 600 MHz processor, RAM 128MB</li>\r\n<li>T&iacute;nh năng văn ph&ograve;ng (Word, Excel, PowerPoint, PDF)</li>\r\n<li>Camera 5.0 MP</li>\r\n<li> Camera phụ VGA thực hiện Videocall</li>\r\n<li>M&aacute;y nghe nhạc xem phim nhiều định dạng với jack loa 3.5 mm</li>\r\n<li>C&ocirc;ng nghệ GPS với Nokia Map</li>\r\n<li>Kết nối 3G, Wifi, Bluetooth... </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(12, 1, 'Nokia X6 16GB ', '7199000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>M&agrave;n h&igrave;nh cảm ứng rộng 3.2 inches</li>\r\n<li>CPU: ARM 11, 434 MHz processor, RAM 128 MB</li>\r\n<li>Camera 5 MP, 2592x1944 pixels, ống k&iacute;nh Carl Zeiss</li>\r\n<li>Camera phụ VGA hỗ trợ thực hiện VideoCall</li>\r\n<li>M&aacute;y nghe nhạc xem phim nhiều định dạng</li>\r\n<li>Mạng 3G tốc độ truyền tải l&ecirc;n đến 3.6 Mbps</li>\r\n<li>Chức năng định vị GPS t&iacute;ch hợp, Ovi Maps 3.0</li>\r\n<li>Document viewer (Word, Excel, PowerPoint) </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(13, 1, 'Nokia X6 Navi', '7199000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>M&agrave;n h&igrave;nh cảm ứng rộng 3.2 inches</li>\r\n<li>CPU: ARM 11, 434 MHz processor, RAM 128 MB</li>\r\n<li>Camera 5 MP, ống k&iacute;nh Carl Zeiss</li>\r\n<li>Camera phụ VGA hỗ trợ thực hiện VideoCall</li>\r\n<li>Mạng 3G tốc độ truyền tải l&ecirc;n đến 3.6 Mbps</li>\r\n<li>Chức năng định vị GPS t&iacute;ch hợp, Ovi Maps 3.0</li>\r\n<li>TV-out, Flash Lite 3.0 </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(14, 1, 'Nokia X6 8GB', '6379000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>M&agrave;n h&igrave;nh cảm ứng rộng 3.2 inches</li>\r\n<li>CPU: ARM 11, 434 MHz processor, RAM 128 MB</li>\r\n<li>Camera 5 MP, ống k&iacute;nh Carl Zeiss</li>\r\n<li>Camera phụ VGA hỗ trợ thực hiện VideoCall</li>\r\n<li>Mạng 3G tốc độ truyền tải l&ecirc;n đến 3.6 Mbps</li>\r\n<li>Chức năng định vị GPS t&iacute;ch hợp, Ovi Maps 3.0</li>\r\n<li>TV-out, Flash Lite 3.0 </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(15, 1, 'Nokia C6', '6099000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Hệ điều h&agrave;nh Symbian OS v9.4</li>\r\n<li>M&aacute;y ảnh 5.0 MP, m&aacute;y ảnh phụ thực hiện Videocall</li>\r\n<li>M&aacute;y nghe nhạc MP3/WMA/WAV/eAAC+</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp, jack tai nghe 3.5mm</li>\r\n<li>Mạng 3G với HSDPA 7.2 Mbps</li>\r\n<li> HSUPA 5.76 Mbps</li>\r\n<li> Yahoo! Messenger, Google Talk, Windows Live Messenger</li>\r\n<li>Xem văn bản (Word, Excel, PowerPoint, PDF)</li>\r\n<li>Flash Lite 3 </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(16, 1, 'Nokia E75', '5949000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Thể hiện đẳng cấp doanh nh&acirc;n</li>\r\n<li>B&agrave;n ph&iacute;m QWERTY đầy đủ</li>\r\n<li>Camera 3.2 MP, Camera phụ VGA thực hiện Videocall</li>\r\n<li>Kết nối 3G, Wifi, GPS, Bluetooth</li>\r\n<li>Đ&agrave;i FM, Jack 3.5mm </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(17, 1, 'Nokia 5800 Navi  ', '5899000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Hệ điều h&agrave;nh Symbian 60 thế hệ thứ 5.</li>\r\n<li>M&agrave;n h&igrave;nh cảm ứng độ ph&acirc;n giải 360 x 460 pixel.</li>\r\n<li>Camera 3,2 MP, ống k&iacute;nh Carl Zeiss, đ&egrave;n Flash k&eacute;p.</li>\r\n<li>&Acirc;m thanh tuyệt hảo, Jack &acirc;m thanh 3,5 mm.</li>\r\n<li>Chức năng định vị GPS.</li>\r\n<li>Kết nối Wifi, Bluetooth, Out-Tivi </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(18, 1, 'Nokia 5800 XpressMussic 4GB', '5899000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Hệ điều h&agrave;nh Symbian 60 thế hệ thứ 5.</li>\r\n<li>M&agrave;n h&igrave;nh cảm ứng độ ph&acirc;n giải 360 x 460 pixel.</li>\r\n<li>Camera 3,2 MP, ống k&iacute;nh Carl Zeiss, đ&egrave;n Flash k&eacute;p.</li>\r\n<li>&Acirc;m thanh tuyệt hảo, Jack &acirc;m thanh 3,5 mm.</li>\r\n<li>Chức năng định vị GPS.</li>\r\n<li>Kết nối Wifi, Bluetooth, Out-Tivi </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(19, 1, 'Nokia E71', '5849000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>M&agrave;n h&igrave;nh rộng</li>\r\n<li>B&agrave;n ph&iacute;m QWERTY đầy đủ</li>\r\n<li>Camera 3.2 MP, video(VGA 22fps)</li>\r\n<li>Chức năng định vị GPS</li>\r\n<li>Ứng dụng văn ph&ograve;ng</li>\r\n<li>Đ&agrave;i FM </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(20, 1, 'Nokia E66', '5459000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>M&agrave;n hinh rộng 2.4 inches</li>\r\n<li>Camera 3.2 MP, camera phụ VGA</li>\r\n<li>M&aacute;y nghe nhạc, xem phim nhiều định dạng</li>\r\n<li>Wifi tốc độ cao</li>\r\n<li>Đầy đủ kết nối: bluetooth, 3.5G </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(21, 1, 'Nokia E5', '5399000.0000', '<ul class=\"item_list\">\r\n<li>Hệ điều h&agrave;nh Symbian v9.3</li>\r\n<li>M&aacute;y ảnh 5.0 MP, hỗ trợ quay phim</li>\r\n<li>M&aacute;y nghe nhạc MP3/WAV/WMA/eAAC+</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp, jack tai nghe 3.5mm</li>\r\n<li>Mạng 3G với HSDPA 10.2 Mbps</li>\r\n<li> HSUPA 2.0 Mbps</li>\r\n<li>Xem văn bản (Excel, PDF, Powerpoint, Word)</li>\r\n<li>Flash Lite v3.</li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(22, 1, 'Nokia 6700 classic illuvial pink', '5279000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Điện thoại 3G với thiết kế thời trang</li>\r\n<li>Camera 5 MP, hỗ trợ flash, tự động lấy n&eacute;t</li>\r\n<li>Nghe nhạc/xem phim nhiều định dạng MP3/M4A/AAC/eAAC+/WMA</li>\r\n<li>Đ&agrave;i FM, Bluetooth, kết nối 3.5G với tốc độ truyền dữ liệu 10 Mbps</li>\r\n<li>Định vị GPS, Bản đồ Nokia</li>\r\n<li>Flash Lite 3 </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(23, 1, 'Nokia 6700 classic illuvial pink   ', '5259000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Điện thoại doanh nh&acirc;n thời trang</li>\r\n<li>Hệ điều h&agrave;nh Symbian S60 3.2</li>\r\n<li>Camera 3.2 MP, camera phụ VGA</li>\r\n<li>M&aacute;y nghe nhạc nhiều định dạng</li>\r\n<li>Kết nối 3G, Wifi, GPS, Bluetooth</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp</li>\r\n<li>Xem file văn ph&ograve;ng Excel, PDF, Powerpoint, Word </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(24, 1, 'Nokia E52 Navi ', '5259000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Điện thoại doanh nh&acirc;n thời trang</li>\r\n<li>Hệ điều h&agrave;nh Symbian S60 3.2</li>\r\n<li>Camera 3.2 MP, camera phụ VGA</li>\r\n<li>M&aacute;y nghe nhạc nhiều định dạng</li>\r\n<li>Kết nối 3G, Wifi, GPS, Bluetooth</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp</li>\r\n<li>Xem file văn ph&ograve;ng Excel, PDF, Powerpoint, Word </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(25, 1, 'Nokia 6700 classic', '5179000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Điện thoại 3G với thiết kế thời trang</li>\r\n<li>Camera 5 MP, hỗ trợ flash, tự động lấy n&eacute;t</li>\r\n<li>Nghe nhạc/xem phim nhiều định dạng MP3/M4A/AAC/eAAC+/WMA</li>\r\n<li>Đ&agrave;i FM, Bluetooth, kết nối 3.5G với tốc độ truyền dữ liệu 10 Mbps</li>\r\n<li>Định vị GPS, Bản đồ Nokia</li>\r\n<li>Flash Lite 3 </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(26, 1, 'Nokia C5-03', '4599000.0000', '<p>- Hệ điều h&agrave;nh Symbian S60 V5<br /> - M&aacute;y ảnh 5MP, hỗ trợ quay phim<br /> - Mạng 3G với HSDPA, 10.2 Mbps; HSUPA, 2 Mbps<br /> - Kết nối internet với Wi-Fi 802.11 b/g, UPnP technology<br /> - Đ&agrave;i FM t&iacute;ch hợp, jack tai nghe 3.5 mm<br /> - Kết nối Bluetooth,GPS, Nokia Map</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(27, 1, 'Nokia 6760 slide', '4539000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Thiết kế với kiểu trượt c&aacute; t&iacute;nh</li>\r\n<li>B&agrave;n ph&iacute;m QWERTY đầy đủ</li>\r\n<li>Hệ điều h&agrave;nh Symbian S60 3.2</li>\r\n<li>Camera 3.15 MP, hỗ trợ quay phim</li>\r\n<li>M&aacute;y nghe nhạc MP3, xem phim, đ&agrave;i FM t&iacute;ch hợp</li>\r\n<li>Kết nối USB, Bluetooth, GPRS, 3G với tốc độ 3.6 Mbps</li>\r\n<li>Chức năng định vị to&agrave;n cầu GPS </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(28, 1, 'Nokia 5530 illuvial pink', '4499000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Điện thoại nghe nhạc c&aacute; t&iacute;nh</li>\r\n<li>Hệ điều h&agrave;nh Symbian OS v9.4, Series 60 rel. 5</li>\r\n<li>CPU: ARM 11, 434 MHz processor</li>\r\n<li> RAM 128MB</li>\r\n<li>Xem file văn ph&ograve;ng (Word, Excel, PowerPoint, PDF)</li>\r\n<li>Camera 3.15 MP, hỗ trợ quay phim, Flash</li>\r\n<li>Nghe nhạc xem phim nhiều định dạng, Jack loa 3.5mm</li>\r\n<li>Đ&agrave;i FM</li>\r\n<li>Kết nối Wifi, Bluetooth, USB </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(29, 1, 'Nokia 5530 XpressMusic   ', '4399000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Điện thoại nghe nhạc c&aacute; t&iacute;nh</li>\r\n<li>Hệ điều h&agrave;nh Symbian OS v9.4, Series 60 rel. 5</li>\r\n<li>CPU: ARM 11, 434 MHz processor</li>\r\n<li> RAM 128MB</li>\r\n<li>Xem file văn ph&ograve;ng (Word, Excel, PowerPoint, PDF)</li>\r\n<li>Camera 3.15 MP, hỗ trợ quay phim, Flash</li>\r\n<li>Nghe nhạc xem phim nhiều định dạng, Jack loa 3.5mm</li>\r\n<li>Đ&agrave;i FM</li>\r\n<li>Kết nối Wifi, Bluetooth, USB </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(30, 1, 'Nokia 7610 supernova ', '3459000.0000', '<ul class=\"item_list icffirebug-inline-style\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Thiết kế thời trang</li>\r\n<li>M&agrave;n h&igrave;nh rộng 2.0 inch</li>\r\n<li>Camera 3.15, tự động lấy n&eacute;t</li>\r\n<li>FM radio </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(31, 1, 'Nokia 5233   ', '3149000.0000', '<ul class=\"item_list icffirebug-inline-style\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Kiểu d&aacute;ng thời trang với m&agrave;n h&igrave;nh cảm ứng rộng</li>\r\n<li>Camera 2.0 MP, hỗ trợ quay phim</li>\r\n<li>M&aacute;y nghe nhạc MP3/WMA/WAV/RA/AAC/M4A</li>\r\n<li>Xem phim WMV/RV/MP4/3GP</li>\r\n<li>Đ&agrave;i FM, jack loa 3.5 mm</li>\r\n<li>Document viewer (Word, Excel, PowerPoint)</li>\r\n<li>Kết nối Bluetooth, USB, GPRS </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(32, 1, 'Nokia X3  ', '3099000.0000', '<ul class=\"item_list icffirebug-inline-style\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>M&aacute;y nghe nhạc chuy&ecirc;n dụng với ph&iacute;m chơi nhạc phong c&aacute;ch</li>\r\n<li>Kiểu d&aacute;ng trượt hiện đại thời trang</li>\r\n<li>Camera 3.2 MP, hỗ trợ quay phim</li>\r\n<li>M&aacute;y nghe nhạc MP3/MP4/eAAC+/WMA</li>\r\n<li>Đ&agrave;i FM</li>\r\n<li>Kết nối Bluetooth, USB, GPRS </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(33, 1, 'Nokia 5250', '3089000.0000', '<ul class=\"item_list icffirebug-inline-style\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>M&agrave;n h&igrave;nh cảm ứng 16 triệu m&agrave;u, rộng 2.8 inches</li>\r\n<li>M&aacute;y ảnh 2.0 MP, hỗ trợ quay phim</li>\r\n<li>M&aacute;y nghe nhạc, xem phim MP3, AAC+, MP4, 3GP</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp</li>\r\n<li>Kết nối Bluetooth, USB, GPRS </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(34, 1, 'Nokia C3', '2979000.0000', '<ul class=\"item_list icffirebug-inline-style\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Thiết kế dạng thanh chắc chắn với b&agrave;n ph&iacute;m Qwerty</li>\r\n<li>M&aacute;y ảnh 2.0 MP, hỗ trợ quay phim</li>\r\n<li>M&aacute;y nghe nhạc MP3/WAV/WMA/eAAC+</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp, jack tai nghe 3.5mm</li>\r\n<li>Kết nối Wifi, Bluetooth, USB</li>\r\n<li>Flash Lite v3.0</li>\r\n<li>Mạng x&atilde; hội </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(35, 1, 'Nokia 6303i classic', '2889000.0000', '<ul class=\"item_list icffirebug-inline-style\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Thiết kế thời trang nhưng đơn giản</li>\r\n<li> M&aacute;y ảnh 3.15 MP, hỗ trợ dual LED flash</li>\r\n<li> M&aacute;y nghe nhạc MP3/WAV/eAAC+/WMA</li>\r\n<li> Đ&agrave;i FM t&iacute;ch hợp, Bluetooth</li>\r\n<li> Flash Lite 3.0 </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(36, 1, 'Nokia 7230  ', '2849000.0000', '<ul class=\"item_list icffirebug-inline-style\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>M&aacute;y ảnh 3.15 MP, hỗ trợ quay phim</li>\r\n<li>M&aacute;y nghe nhạc, xem phim nhiều định dạng, jack loa 3.5 mm</li>\r\n<li>Mạng 3G</li>\r\n<li>Kết nối USB, Bluetooth</li>\r\n<li>Flickr/Ovi Upload</li>\r\n<li>Nokia Maps </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(37, 1, 'Nokia X2', '2639000.0000', '<ul class=\"item_list icffirebug-inline-style\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Thiết kế dạng thanh thời trang</li>\r\n<li>M&aacute;y ảnh 5.0 MP, hỗ trợ LED Flash</li>\r\n<li>M&aacute;y nghe nhạc MP3/WMA/eAAC+</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp, jack tai nghe 3.5mm</li>\r\n<li>Kết nối Bluetooth, USB, GPRS</li>\r\n<li>Chức năng chỉnh sửa h&igrave;nh ảnh </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(38, 1, 'Nokia 6600 fold ', '2499000.0000', '<ul class=\"item_list icffirebug-inline-style\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Thiết kế nắp gập thời trang</li>\r\n<li>Camera 2 MP,  Quay video(VGA@15fps)</li>\r\n<li>M&aacute;y nghe nhạc MP3/AAC/AAC+//WMA </li>\r\n<li>Bản đồ v&agrave; c&ocirc;ng cụ T&igrave;m kiếm Nokia</li>\r\n<li>Đ&agrave;i FM với &acirc;m thanh Stereo </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(39, 1, 'Nokia 5130 XpressMusic', '2179000.0000', '<ul class=\"item_list icffirebug-inline-style\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Thiết kế dạng thanh thời trang, s&agrave;nh điệu</li>\r\n<li> M&aacute;y nghe nhạc cực hay với jack loa 3.5 mm</li>\r\n<li> Camera 2.0 MP, zoom 4x</li>\r\n<li> Ph&iacute;m nhạc v&agrave; ph&iacute;m &acirc;m lượng chuy&ecirc;n dụng</li>\r\n<li> Đ&agrave;i FM, Bluetooth </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(40, 1, 'Nokia X2-01', '2149000.0000', '<p>- Thiết kế mạnh mẽ với b&agrave;n ph&iacute;m Qwerty<br /> - M&aacute;y ảnh VGA, hỗ trợ quay phim<br /> - M&aacute;y nghe nhạc MP3/WMA/WAV/eAAC+<br /> - Đ&agrave;i FM t&iacute;ch hợp<br /> - Kết nối Bluetooth<br /> - Dung lượng pin cao 1020 mAh</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(41, 1, 'Nokia 2730 classic', '2059000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Điện thoại internet gi&aacute; rẻ</li>\r\n<li>Hỗ trợ 3G</li>\r\n<li>Camera 2.0 MP, hỗ trợ quay phim</li>\r\n<li>M&aacute;y nghe nhạc MP3, với jack loa 3.5mm</li>\r\n<li>Kết nối Bluetooth, USB micro</li>\r\n<li>Đ&agrave;i FM </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(42, 1, 'Nokia 2700', '1769000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Thiết kế dạng thanh thời trang</li>\r\n<li>Camera 2MP, hỗ trợ quay phim</li>\r\n<li>Nghe nhạc/xem phim MP3, Mp4, jack loa 3.5 mm</li>\r\n<li>Đ&agrave;i FM, Bluetooth, USB </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(43, 1, 'Nokia 2690', '1389000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Thiết kế thời trang</li>\r\n<li>M&aacute;y ảnh VGA, hỗ trợ quay phim</li>\r\n<li>Hỗ trợ thẻ nhớ ngo&agrave;i l&ecirc;n đến 8GB</li>\r\n<li>M&aacute;y nghe nhạc MP3 với jack loa 3.5mm</li>\r\n<li>Đ&agrave;i FM, Bluetooth </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(44, 1, 'Nokia C1-01', '1329000.0000', '<p>- Thiết kế dạng thanh thời trang<br /> - M&aacute;y ảnh VGA<br /> - Hỗ trợ thẻ nhớ ngo&agrave;i microSD<br /> - M&aacute;y nghe nhạc MP3/WAV/AAC+<br /> - Đ&agrave;i FM t&iacute;ch hợp, ghi &acirc;m FM<br /> - Jack tai nghe 3.5mm</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(45, 1, 'Nokia 5030', '849000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>M&aacute;y nghe radio chuy&ecirc;n nghiệp</li>\r\n<li> C&aacute;c ph&iacute;m chọn k&ecirc;nh v&agrave; ph&iacute;m radio FM chuy&ecirc;n dụng</li>\r\n<li> M&agrave;n h&igrave;nh 65.000 m&agrave;u</li>\r\n<li> Hỗ trợ đ&egrave;n Pin</li>\r\n<li> Danh bạn 1000 số </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(46, 1, 'Nokia C1-00', '799000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Hỗ trợ 2 khe gắn sim (kh&ocirc;ng online c&ugrave;ng l&uacute;c)</li>\r\n<li>Chức năng đ&egrave;n pin rất s&aacute;ng</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp, jack tai nghe 3.5mm</li>\r\n<li>Pin (BL-5C) với dung lượng lớn </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(47, 1, 'Nokia 1800', '719000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Thiết kế mạnh mẽ thời trang</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp</li>\r\n<li>Chức năng đ&egrave;n pin </li>\r\n<li>Vỏ m&aacute;y cho ph&eacute;p tuỳ chọn m&agrave;u sắc </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(48, 1, 'Nokia 1616', '659000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Thiết kế mạnh mẽ thời trang</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp</li>\r\n<li>Chức năng đ&egrave;n pin</li>\r\n<li>Pin bền</li>\r\n<li>Vỏ nhiều m&agrave;u sắc </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(49, 1, 'Nokia 1208', '599000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Bền đẹp với vỏ b&ecirc;n ngo&agrave;i chống b&aacute;m bụi</li>\r\n<li>Kiểm so&aacute;t thời gian gọi</li>\r\n<li>Hỗ trợ đ&egrave;n pin với ph&iacute;m chọn nhanh</li>\r\n<li>Danh bạ chia sẻ</li>\r\n<li>Lịch &acirc;m Việt Nam</li>\r\n<li>Pin cho thời gian đ&agrave;m thoại l&acirc;u </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 2, 1),
(50, 1, 'Nokia 1280', '539000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Thiết đế với kiểu d&aacute;ng đơn giản</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp</li>\r\n<li>Chức năng đ&egrave;n pin</li>\r\n<li>Pin bền</li>\r\n<li>T&iacute;ch hợp dịch vụ Nokia Life Tools </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(51, 1, 'Motorola XT720 Milestone', '9499000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Hệ điều h&agrave;nh Adroid 2.1</li>\r\n<li>M&aacute;y ảnh 8.0 MP, hỗ trợ flash xenon</li>\r\n<li>Quay phim, xem phim HD</li>\r\n<li>M&agrave;n h&igrave;nh cảm ứng điện dung với giao diện cuộn v&agrave; lật</li>\r\n<li>Mạng 3G HSDPA, 10.2 Mbps</li>\r\n<li> HSUPA, 5.76 Mbps</li>\r\n<li>Out Tivi v&agrave; cổng HDMI t&iacute;ch hợp</li>\r\n<li>Google Search, Maps, Gmail, YouTube, Google Talk </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(52, 1, 'Motorola MILESTONE  ', '8888000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Hệ điều h&agrave;nh Android 2.1 với m&agrave;n h&igrave;nh cảm ứng rộng</li>\r\n<li>M&aacute;y ảnh 5.0 MP, LED Flash k&eacute;p</li>\r\n<li>Quay phim với chuẩn D1 (720x480 pixels)@24fps</li>\r\n<li>Mạng 3 với HSDPA, 10.2 Mbps</li>\r\n<li> HSUPA, 5.76 Mbps</li>\r\n<li>Kết nối Internet với Wifi tốc độ cao</li>\r\n<li>Bluetooth 2.1+ EDR </li>\r\n<li>Google Search, Maps, Gmail, YouTube, Google Talk</li>\r\n<li>Adobe Flash Player v10.1</li>\r\n<li>Jack tai nghe 3.5mm </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(53, 1, 'Motorola MB300 BACKFLIP   ', '5899000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Kiểu d&aacute;ng độc đ&aacute;o với b&agrave;n ph&iacute;m lật</li>\r\n<li>M&aacute;y ảnh 5 MP, hỗ trợ LED Flash</li>\r\n<li>Hệ điều h&agrave;nh Android 1.5</li>\r\n<li>Kết nối internet với Wifi v&agrave; mạng 3G</li>\r\n<li>Định vị to&agrave;n cầu GPS</li>\r\n<li>Xem file văn bản, mạng x&atilde; hội Facebook, MySpace, Twitter apps </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(54, 1, 'Motorola EX300  ', '2689000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>M&aacute;y ảnh 3.0 MP, hỗ trợ quay phim</li>\r\n<li>Mạng 3G, chức năng định vị GPS</li>\r\n<li>Nghe nhạc, xem phim nhiều định dạng</li>\r\n<li>Đ&agrave;i Fm t&iacute;ch hợp </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(55, 1, 'Motorola CD920', '0.0000', '<p>- Ghi &acirc;m đến 3 ph&uacute;t.</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(56, 1, 'Motorola CD930    ', '0.0000', '<p>- Ghi &acirc;m đến 3 ph&uacute;t.</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(57, 1, 'Motorola MB300 BACKFLIP   ', '5899000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Kiểu d&aacute;ng độc đ&aacute;o với b&agrave;n ph&iacute;m lật</li>\r\n<li>M&aacute;y ảnh 5 MP, hỗ trợ LED Flash</li>\r\n<li>Hệ điều h&agrave;nh Android 1.5</li>\r\n<li>Kết nối internet với Wifi v&agrave; mạng 3G</li>\r\n<li>Định vị to&agrave;n cầu GPS</li>\r\n<li>Xem file văn bản, mạng x&atilde; hội Facebook, MySpace, Twitter apps </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(58, 1, 'Motorola D520 ', '0.0000', NULL, NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(59, 1, 'Motorola EX300', '2689000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>M&aacute;y ảnh 3.0 MP, hỗ trợ quay phim</li>\r\n<li>Mạng 3G, chức năng định vị GPS</li>\r\n<li>Nghe nhạc, xem phim nhiều định dạng</li>\r\n<li>Đ&agrave;i Fm t&iacute;ch hợp </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(60, 1, 'Motorola E360', '0.0000', '<p>- WAP 1.2.1.<br />- Từ điển T9.<br />- M&aacute;y t&iacute;nh.<br />- Chuyển đổi tiền tệ.<br />- Chức năng tổ chức.<br />- Ghi &acirc;m.<br />- Quya số giọng n&oacute;i.</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(61, 1, 'Motorola WX295   ', '789000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Thiết kế kiểu d&aacute;ng nắp gập thời trang</li>\r\n<li>M&aacute;y ảnh VGA</li>\r\n<li>Hỗ trợ thẻ nhớ ngo&agrave;i microSD</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp</li>\r\n<li>Kết nối Bluetooth, GPRS </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(62, 1, 'Motorola E365  ', '0.0000', '<p>- WAP 2.0.<br />- Từ điển T9.<br />- M&aacute;y t&iacute;nh.<br />- Chuyển đổi tiền tệ.<br />- Chức năng tổ chức.<br />- Ghi &acirc;m.</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(63, 1, 'Motorola WX290     * Thiết kế dạng thanh trẻ trung     * Máy ảnh VGA     * Hỗ trợ thẻ nhớ ngoài MicroSD     * Máy nghe nhạc MP3     * Đài FM tích hợp, chức năng đèn pin ', '659000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Thiết kế dạng thanh trẻ trung</li>\r\n<li>M&aacute;y ảnh VGA</li>\r\n<li>Hỗ trợ thẻ nhớ ngo&agrave;i MicroSD</li>\r\n<li>M&aacute;y nghe nhạc MP3</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp, chức năng đ&egrave;n pin </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(64, 1, 'Motorola E380 ', '0.0000', '<p>- Java.<br />- WAP 2.0.<br />- Từ điển T9.<br />- M&aacute;y t&iacute;nh.<br />- Chuyển đổi tiền tệ.<br />- Chức năng tổ chức.<br />- Ghi &acirc;m.<br />- Cổng USB.</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(65, 1, 'Motorola WX260   ', '549000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Thiết kế đơn giản nhưng thời trang</li>\r\n<li>Hỗ trợ thẻ nhớ ngo&agrave;i MicroSD</li>\r\n<li>M&aacute;y nghe nhạc MP3</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp</li>\r\n<li>Kết nối Bluetooth, GPRS </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(66, 1, 'Motorola E390', '0.0000', '<p>- Bluetooth.<br />- WAP 2.0.<br />- Tr&igrave;nh duyệt xHTML.<br />- Từ điển T9.<br />- M&aacute;y t&iacute;nh.<br />- Chuyển đổi tiền tệ.<br />- Chức năng tổ chức.</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(67, 1, 'Motorola WX180   ', '399000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Thiết kế thời trang v&agrave; chức năng đơn giản</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp </li>\r\n<li>M&agrave;n h&igrave;nh m&agrave;u </li>\r\n<li>Pin bền với thời gian chờ l&ecirc;n đến 480 giờ </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(68, 1, 'Motorola M3188 ', '0.0000', NULL, NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(69, 1, 'Motorola WX181 ', '389000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Thiết kế dạng thanh đơn giản</li>\r\n<li>M&agrave;n h&igrave;nh m&agrave;u rộng 1.45 inches</li>\r\n<li>Nhạc chu&ocirc;ng 64 &acirc;m sắc</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp</li>\r\n<li>Chức năng đ&egrave;n pin </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(70, 1, 'Motorola M3288 ', '0.0000', NULL, NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(71, 1, 'Motorola RAZR V3i D&G Gold ', '0.0000', '<p><strong><span style=\"color: #ff0000;\">MOTOROLA RAZR V3i - Moto thời trang<br /></span></strong>- Thiết kế mỏng với vỏ bằng nh&ocirc;m chống trầy xước<br />- Nghe nhạc MP3<br />- Camera 1.3MP<br />- Kết nối bluetooth</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(72, 1, 'Motorola M3588', '0.0000', NULL, NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(73, 1, 'Motorola C350', '0.0000', '<p>- WAP 1.2.1.<br />- Từ điển T9.<br />- M&aacute;y t&iacute;nh.<br />- Chuyển đổi tiền tệ.<br />- Chức năng tổ chức.<br />- Quya số giọng n&oacute;i</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(74, 1, 'Motorola A6188', '0.0000', '<p>- 2 SIM card.<br />- WAP 1.2.<br />- M&aacute;y t&iacute;nh.<br />- Ghi &acirc;m đến 3 ph&uacute;t.<br />- TrueSync.</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(75, 1, 'Motorola C330  ', '0.0000', '<p>- WAP 1.2.1.<br />- Từ điển T9.<br />- Quay số giọng n&oacute;i.<br />- M&aacute;y t&iacute;nh.<br />- Chuyển đổi tiền tệ.</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(76, 1, 'Motorola A760', '0.0000', '<p>- Hệ điều h&agrave;nh Linux.<br />- Tốc độ xử l&yacute; 206 Mhz.<br />- Java.<br />- Bluetooth.<br />- Nghe nhạc MP3.<br />- Chức năng quản l&yacute; th&ocirc;ng tin c&aacute; nh&acirc;n.<br />- WAP.<br />- Tr&igrave;nh duyệt WEB.<br />- Cổng USB.<br />- RS 232.<br />- Loa speaker.</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(77, 1, 'LG GS500 Cookie Plus', '2999000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Phi&ecirc;n bản n&acirc;ng cấp của KP500</li>\r\n<li>M&agrave;n h&igrave;nh cảm ứng rộng 3.0 inches</li>\r\n<li>M&aacute;y ảnh 3.2 MP, hỗ trợ quay phim</li>\r\n<li>Mạng 3G với tốc độ truyền tải 3.6 Mbps</li>\r\n<li>Kết nối Bluetooth, USB, GPRS</li>\r\n<li>Document viewer (Word, Excel, PowerPoint, PDF) </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(78, 1, 'LG GD880 Mini', '6599000.0000', '<ul class=\"item_list\" style=\"margin: 0px; padding-left: 15px;\">\r\n<li>M&agrave;n h&igrave;nh cảm ứng rộng 3.2 inches</li>\r\n<li>M&aacute;y ảnh 5.0 MP, chức năng nhận diện khu&ocirc;n mặt</li>\r\n<li>&Acirc;m thanh v&ograve;m Dolby Mobile</li>\r\n<li>Mạng 3G với HSDPA 7.2 Mbps</li>\r\n<li>Chức năng định vị to&agrave;n cầu GPS</li>\r\n<li>Kết nối Wifi, Bluetooth </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(79, 1, 'LG Wink Wifi GT350i ', '2800000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Kiểu đ&aacute;ng trượt trẻ trung với b&agrave;n ph&iacute;m Qwerty</li>\r\n<li>M&aacute;y ảnh 2.0 MP, hỗ trợ quay phim</li>\r\n<li>M&aacute;y nghe nhạc MP3/MP4/AAC/AAC+/EAAC+/WMA</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp</li>\r\n<li>Xem văn bản (DOC, XLS, PPT, PDF) </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(80, 1, 'LG GD510 Pop', '2489000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>M&agrave;n h&igrave;nh cảm ứng rộng 3.0 inches</li>\r\n<li>Camera 3.15 MP, hỗ trợ quay phim</li>\r\n<li>M&aacute;y nghe nhạc, xem phim MP3, AAC+, MP4, 3GP</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp</li>\r\n<li>Kết nối Bluetooth, USB, EGDE, GPRS </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(81, 1, 'LG BL40 New Chocolate ', '6499000.0000', '<ul class=\"item_list\" style=\"margin: 0px; padding-left: 15px;\">\r\n<li>Thiết kế thời trang với kiểu d&aacute;ng Chocolate</li>\r\n<li>M&agrave;n h&igrave;nh cảm ứng rộng 4.0 inches, </li>\r\n<li>Camera 5 MP, camera phụ</li>\r\n<li>M&aacute;y nghe nhạc, xem phim nhiều định dạng</li>\r\n<li>Chức năng bộ sưu ảnh 3D</li>\r\n<li>Đ&agrave;i FM, xem file văn bản</li>\r\n<li>Kết nối 3G, GPS, Wifi, Bluetooth, Out-Tivi </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(82, 1, 'LG GS290 Cookie Fresh   ', '2089000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>M&agrave;n h&igrave;nh cảm ứng rộng thời trang với giao diện th&acirc;n thiện</li>\r\n<li>M&aacute;y ảnh 2.0 MP, hỗ trợ quay phim</li>\r\n<li>M&aacute;y nghe nhạc MP3/WAV/eAAC+</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp, jack tai nghe 3.5mm</li>\r\n<li>Kết nối Bluetooth, USB, GPRS</li>\r\n<li> Xem văn bản (Word, Excel, PowerPoint, PDF) </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(83, 1, 'LG Optimus One P500 ', '6199000.0000', '<ul class=\"item_list\" style=\"margin: 0px; padding-left: 15px;\">\r\n<li>Hệ điều h&agrave;nh Android 2.2 </li>\r\n<li>M&aacute;y ảnh 3.0 MP, lấy n&eacute; tự động</li>\r\n<li>Mạng 3G với tốc độ truyền tari7.2Mbps</li>\r\n<li>Kết nối mạng Wifi, GPS, Bluetooth</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(84, 1, 'LG GD350', '1889000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Thiết kế nắp gập thời trang</li>\r\n<li>M&aacute;y ảnh 2.0 MP, hỗ trợ quay phim</li>\r\n<li>M&aacute;y nghe nhạc MP3, AAC+</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp</li>\r\n<li>Kết nối Bluetooth, USB, GPRS </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(85, 1, 'LG GT540 Optimus', '4889000.0000', '<ul class=\"item_list\" style=\"margin: 0px; padding-left: 15px;\">\r\n<li>Hệ điều h&agrave;nh Android 1.6</li>\r\n<li>M&aacute;y ảnh 3.0 MP, lấy n&eacute;t tự động</li>\r\n<li>M&aacute;y nghe nhạc MP3/WAV/WMA/eAAC+</li>\r\n<li>Kết nối mạng 3G với tốc độ truyền 7.2 Mbps</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp, jack tai nghe 3.5mm</li>\r\n<li>Hỗ trợ wed x&atilde; hội Google Search, Maps, Gmail, YouTube, Google Talk, Facebook </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(86, 1, 'LG S310 ', '1849000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Kiểu d&aacute;ng thanh mảnh thời trang</li>\r\n<li>M&aacute;y ảnh 3.2 MP, hỗ trợ quay phim</li>\r\n<li>M&aacute;y nghe nhạc MP3, AAC, AAC+</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp</li>\r\n<li>Kết nối Bluetooth, USB, GPRS </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(87, 1, 'LG GU285', '1789000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Kiểu d&aacute;ng trượt thời trang với gam m&agrave;u tươi</li>\r\n<li>M&aacute;y ảnh 1.3 MP, hỗ trợ quay phim</li>\r\n<li>M&aacute;y nghe nhạc, xem phim MP3, MP4, AAC+</li>\r\n<li>Mạng 3G với tốc độ truyền dữ liệu 384 Kbs</li>\r\n<li>Kết nối bluetooth, USB </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(88, 1, 'LG GW620', '4800000.0000', '<ul class=\"item_list\" style=\"margin: 0px; padding-left: 15px;\">\r\n<li>Hệ điều h&agrave;nh Android</li>\r\n<li>Camera 5.0 MP, lấy n&eacute;t tự động</li>\r\n<li>M&aacute;y nghe nhạc MP3/MP4/AAC/AAC+/EAAC+/WMA</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp, jack tai nghe 3.5mm</li>\r\n<li>Chức năng định vị GPS</li>\r\n<li>Mạng 3G với tốc độ 7.2 Mpbs</li>\r\n<li>Wifi, Bluetooth, USB, GPRS </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(89, 1, 'LG GW300', '1689000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>B&agrave;n ph&iacute;m QWERTYđầy đủ tiện lợi cho soạn thảo tin nhắn</li>\r\n<li>Camera 2.0 MP, hỗ trợ quay phim</li>\r\n<li>M&aacute;y nghe nhạc nhiều định dạng MP3/MP4/eAAC+/WMA</li>\r\n<li>Mạng x&atilde; hội Facebook</li>\r\n<li>Giao diện LiveQuare</li>\r\n<li>Tin nhắn KiWi (chuỗi)</li>\r\n<li>Jack loa 3.5 mm </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(90, 1, 'LG GX500 ', '3989000.0000', '<ul class=\"item_list\" style=\"margin: 0px; padding-left: 15px;\">\r\n<li>Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li>M&aacute;y ảnh 3.15 MP, lấy n&eacute;t tự động</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp</li>\r\n<li>Kết nối Wifi, USB, Bluetooth, GPRS</li>\r\n<li>Chức năng xem file văn ph&ograve;ng </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(91, 1, 'LG GW305', '1650000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Nhắn tin, email cực đỉnh với b&agrave;n ph&iacute;m Qwerty</li>\r\n<li>M&aacute;y ảnh 2.0 MP, hỗ trợ quay phim QCIF</li>\r\n<li>M&aacute;y nghe nhạc MP3, AAC, AAC+</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp, jack tai nghe 3.5mm</li>\r\n<li>Giao diện m&agrave;n h&igrave;nh Livesquare sống động</li>\r\n<li>Ứng dụng từ điển lạc Việt </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(92, 1, 'LG GT505', '3589000.0000', '<ul class=\"item_list\" style=\"margin: 0px; padding-left: 15px;\">\r\n<li>Chuy&ecirc;n gia lướt n&eacute;t</li>\r\n<li>M&aacute;y ảnh 5.0 MP, m&aacute;y ảnh phụ thực hiện Videocall</li>\r\n<li>Mạng 3G hỗ trợ truyền tải l&ecirc;n đến 3.6 Mbps</li>\r\n<li>Kết nối Internet với Wifi tốc độ cao</li>\r\n<li>Chức năng định vị GPS</li>\r\n<li>Document viewer (Word, Excel, PowerPoint, PDF) </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(93, 1, 'LG Wink Touch T300   ', '1550000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Thiết kế cổ điển thời trang</li>\r\n<li>M&aacute;y ảnh 2.0 MP, hỗ trợ quay phim</li>\r\n<li>M&aacute;y nghe nhạc MP3/AAC++, xem phim MP4, 3GP</li>\r\n<li>Đ&agrave;i FM, ghi &acirc;m FM, jack tai nghe 3.5mm</li>\r\n<li>Kết nối mạng x&atilde; hội </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(94, 1, 'LG GM360i ', '3399000.0000', '<ul class=\"item_list\" style=\"margin: 0px; padding-left: 15px;\">\r\n<li>Ống k&iacute;nh zoom quang học Kreuznach &amp; Schneider</li>\r\n<li>Giao diện m&agrave;n h&igrave;nh LiveSquare</li>\r\n<li>M&agrave;n h&igrave;nh cảm ứng 3\"</li>\r\n<li>Giao diện S-Class 3D</li>\r\n<li>M&aacute;y ảnh 5 MP, hỗ trợ Flash</li>\r\n<li>Kết nối Wi-fi</li>\r\n<li>Mạng x&atilde; hội </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(95, 1, 'LG LG 600', '0.0000', '<p>- WAP.<br />- T9.<br />- Scheduler.<br />- M&aacute;y t&iacute;nh.<br />- Lịch.<br />- Đồng hồ thế giới.<br />- Quay số giọng n&oacute;i.<br />- Ghi &acirc;m.</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(96, 1, 'LG GD580 Lollipop', '3399000.0000', '<ul class=\"item_list\" style=\"margin: 0px; padding-left: 15px;\">\r\n<li>Thiết kế thời trang đầy m&agrave;u sắc ngọt ng&agrave;o</li>\r\n<li>M&aacute;y ảnh 3.15 MP, hỗ trợ quay phim</li>\r\n<li>M&aacute;y nghe nhạc MP3, AAC, AAC+, WMA</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp</li>\r\n<li>Mạng 3G với tốc độ truyền dữ liệu 3.6 Mbps </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(97, 1, 'LG Cookie 3G KM555', '2999000.0000', '<ul class=\"item_list\" style=\"margin: 0px; padding-left: 15px;\">\r\n<li>M&agrave;n h&igrave;nh cảm ứng rộng 3.0 inches</li>\r\n<li>M&aacute;y ảnh 3.0 MP, hỗ trợ quay phim chuẩn QVGA@30fps</li>\r\n<li>M&aacute;y nghe nhạc MP3/WAV/AAC</li>\r\n<li>Mạng 3G  v&agrave; kết nối Wifi</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp, tai nghe 3.5mm</li>\r\n<li>C&ocirc;ng nghệ &acirc;m thanh Dolby Mobile</li>\r\n<li>Kết nối USB, Bluetooth, GPRS </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(98, 1, 'LG GX200', '1489000.0000', '<ul class=\"item_list\" style=\"margin: 0px; padding-left: 15px;\">\r\n<li>Kiểu d&aacute;ng thẳng, vu&ocirc;ng mạnh mẽ</li>\r\n<li>Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li>Đ&egrave;n LED hiển thị Sim đang d&ugrave;ng</li>\r\n<li>M&aacute;y ảnh 1.3 MP, hỗ trợ quay phim</li>\r\n<li>M&aacute;y nghe nhạc MP3/WAV/eAAC+</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp</li>\r\n<li>Kết nối Bluetooth, USB, GPRS </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(99, 1, 'LG GU230 ', '1389000.0000', '<ul class=\"item_list\" style=\"margin: 0px; padding-left: 15px;\">\r\n<li>M&aacute;y ảnh 1.3 MP, hỗ trợ quay phim</li>\r\n<li>M&aacute;y nghe nhạc MP3, AAC+</li>\r\n<li>Đ&agrave;i FM với chức năng ghi &acirc;m FM</li>\r\n<li>Kết nối GPS, Bluetooth, USB </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(100, 1, 'LG LG 510w ', '0.0000', '<p>- WAP 1.2.1.<br />- T9.<br />- Scheduler.<br />- M&aacute;y t&iacute;nh.<br />- Lịch.<br />- Đồng hồ thế giới.<br />- Quay số giọng n&oacute;i.<br />- Ghi &acirc;m.</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(101, 1, 'LG LG 500', '0.0000', '<p>- WAP.<br />- T9.<br />- Scheduler.<br />- M&aacute;y t&iacute;nh.<br />- Lịch.<br />- Đồng hồ thế giới.<br />- Quay số giọng n&oacute;i.<br />- Ghi &acirc;m.<br />- Loa speaker.</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(102, 1, 'LG Wink C100', '1350000.0000', '<ul class=\"item_list\" style=\"margin: 0px; padding-left: 15px;\">\r\n<li>Kiểu d&aacute;ng mạnh mẽ với b&agrave;n ph&iacute;m Qwerty</li>\r\n<li>M&aacute;y ảnh 1.3 MP, hỗ trợ quay phim</li>\r\n<li>M&aacute;y nghe nhạc, xem phim MP3/eAAC+/3GP/MP4</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp, jack tai nghe 3.5mm</li>\r\n<li>Ghi &acirc;m FM</li>\r\n<li>Kết nối Bluetooth, USB, Facebook, Twitter apps </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(103, 1, 'LG LG 200   ', '0.0000', '<p>- M&aacute;y t&iacute;nh.<br />- Lịch.<br />- Đồng hồ thế giới.<br />- Quay số giọng n&oacute;i.</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(104, 1, 'LG GS155', '790000.0000', '<ul class=\"item_list\" style=\"margin: 0px; padding-left: 15px;\">\r\n<li>Thiết kế đơn giản, trẻ trung</li>\r\n<li>M&aacute;y ảnh VGA</li>\r\n<li>Hỗ trợ thẻ nhớ ngo&agrave;i</li>\r\n<li>M&aacute;y nghe nhạc MP3</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp</li>\r\n<li>Chế độ đ&egrave;n pin </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(105, 1, 'LG Chocolate Gold KE800   ', '0.0000', '<p>- Hỗ trợ Java MIDP 2.0<br />- FM radio t&iacute;ch hợp<br />- M&aacute;y nghe nhạc kỹ thuật số hỗ trợ c&aacute;c dạng thức MP3/AAC/AAC+/MPEG4<br />- Từ điển T9 đo&aacute;n trước văn bản nhập<br />- Chức năng tổ chức<br />- M&aacute;y ghi &acirc;m t&iacute;ch hợp</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(106, 1, 'LG GS102', '499000.0000', '<ul class=\"item_list\" style=\"margin: 0px; padding-left: 15px;\">\r\n<li>Thiết kế nhỏ gọn chắc chắn</li>\r\n<li>B&agrave;n ph&iacute;m chống bụi</li>\r\n<li>Nhạc chu&ocirc;ng đa &acirc;m </li>\r\n<li>Chức năng đ&egrave;n pin</li>\r\n<li>Pin bền bỉ </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(107, 1, 'K-Touch E62 ', '1789000.0000', '<ul class=\"item_list\" style=\"margin: 0px; padding-left: 15px;\">\r\n<li>Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li>M&aacute;y ảnh 2.0 MP, hỗ trợ quay phim</li>\r\n<li>M&aacute;y nghe nhạc MP3, AAC</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp</li>\r\n<li>Kết nối Bluetooth, USB </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(108, 1, 'K-Touch H677 ', '749000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Thiết kế trẻ trung với b&agrave;n ph&iacute;m Qwerty</li>\r\n<li>Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li>M&aacute;y ảnh VGA, hỗ trợ quay phim</li>\r\n<li> M&aacute;y nghe nhạc MP3</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(109, 1, 'K-Touch X90', '1789000.0000', '<ul class=\"item_list\" style=\"margin: 0px; padding-left: 15px;\">\r\n<li>Thiết kế dạng xoay nữ t&iacute;nh</li>\r\n<li>Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li>M&aacute;y ảnh 2.0 MP, hỗ trợ webcam</li>\r\n<li>M&aacute;y nghe nhạc, xem phim MP3, 3GP, AVI</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(110, 1, 'K Touch Q160   ', '0.0000', '<p>- Thiết kế thời trang c&aacute; t&iacute;nh với m&agrave;n h&igrave;nh xoay tr&ograve;n<br />- Chức năng xem tivi Analog<br />- Camera 2.0 MP<br />- M&aacute;y nghe nhạc, xem phim MP3, MP4<br />- Đ&agrave;i FM t&iacute;ch hợp<br />- Kết nối Bluetooth, USB, GPRS</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(111, 1, 'K-Touch H999', '1589000.0000', '<ul class=\"item_list\" style=\"margin: 0px; padding-left: 15px;\">\r\n<li>M&agrave;n h&igrave;nh Wide rộng 2.4 inches</li>\r\n<li>Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li>M&aacute;y ảnh 2.0 MP, hỗ trợ Webcam</li>\r\n<li>M&aacute;y nghe nhạc, xem phim</li>\r\n<li>Hỗ trợ Wifi, yahoo, Opera</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(112, 1, 'K-Touch B896 white   ', '0.0000', '<p><span style=\"color: #ff0000;\"><strong>K-Touch B896 - Ấn tượng với chất lượng &acirc;m thanh<br /></strong></span><span style=\"color: #000000;\">- Thiết kế thời trang với m&agrave;n h&igrave;nh cảm ứng<br />- Camera VGA, hỗ trợ quay phim<br />- M&aacute;y nghe nhạc MP3, AAC<br />- Lắc x&iacute; ngầu</span></p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(113, 1, 'K-Touch H877', '1489000.0000', '<ul class=\"item_list\" style=\"margin: 0px; padding-left: 15px;\">\r\n<li>B&agrave;n ph&iacute;m Qwerty đầy dễ d&agrave;ng nhắn tin</li>\r\n<li>Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li>M&aacute;y nghe nhạc, xem phim MP3, 3GP</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp, Bluetooth</li>\r\n<li>Yahoo chat, tr&igrave;nh duyệt web Opera</li>\r\n<li>Chức năng chặn tin nhắn, cuộc gọi </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(114, 1, 'K-Touch D173 red   ', '0.0000', '<p><strong><span style=\"color: #ff0000;\">K-Tuoch D173 - Điện thoại 2 Sim</span></strong><br />- Hỗ trợ 2 khe gắn Sim (1 s&oacute;ng)<br />- Thiết kế thời trang, m&agrave;n h&igrave;nh cảm ứng<br />- Camera VGA, hỗ trợ quay phim<br />- Cảm ứng lắc tay chuyển nhạc, h&igrave;nh nền<br />- C&oacute; đ&egrave;n cực tiếp để soi tiền giả</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(115, 1, 'K-Touch E61   ', '0.0000', '<p>- PDA hỗ trợ mạng 3G với</p>\r\n<div class=\"col2\"><!-- .O { color: black; font-size: 149%; }a:link { color: blue ! important; }a:active { color: rgb(192, 80, 77) ! important; }a:visited { color: purple ! important; } --><!-- .sld { left: 0px ! important; width: 6in ! important; height: 4.5in ! important; font-size: 103% ! important; } --> WCDMA/EVDO  <br />- Hệ điều h&agrave;nh <!-- .O { color: black; font-size: 149%; }a:link { color: blue ! important; }a:active { color: rgb(192, 80, 77) ! important; }a:visited { color: purple ! important; } --><!-- .sld { left: 0px ! important; width: 6in ! important; height: 4.5in ! important; font-size: 103% ! important; } -->Windows Mobile 6.1<br />- Hỗ trợ xem tivi<br />- Camera 2.0 MP, hỗ trợ quay phim<br />- Kết nối interet với Wifi, truyền tải dữ liệu 3G<br />- Kết nối Bluetooth, USB, GPRS</div>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(116, 1, 'K-Touch V388 ', '1389000.0000', '<ul class=\"item_list\" style=\"margin: 0px; padding-left: 15px;\">\r\n<li>Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li>M&aacute;y ảnh VGA, hỗ trợ webcam</li>\r\n<li>Chức năng xem Tivi Analog</li>\r\n<li>Nghe nhạc, xem phim MP3, MP4, 3GP</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp</li>\r\n<li>Chặn cuộc gọi, chặn tin nhắn, chat Yahoo</li>\r\n<li>Lắc tay đổi nhạc, h&igrave;nh nền </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(117, 1, 'K Touch V908   ', '0.0000', '<p>- Thiết kế thời trang với m&agrave;n h&igrave;nh cảm ứng rộng<br />- Xem Tivi Analog<br />- Camera 1.3 MP, hỗ trợ quay phim<br />- M&aacute;y nghe nhạc MP3, MP4<br />- Đ&agrave;i FM<br />- Kết nối Bluetooth, USB</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(118, 1, 'K-Touch H888 ', '999000.0000', '<ul class=\"item_list\" style=\"margin: 0px; padding-left: 15px;\">\r\n<li>B&agrave;n ph&iacute;m Qwerty thuận tiện</li>\r\n<li>Hỗ trợ 2 sim 2 s&oacute;ng online</li>\r\n<li>M&aacute;y ảnh VGA, hỗ trợ webcam</li>\r\n<li>M&aacute;y nghe nhạc với chất lượng &acirc;m thanh v&ograve;m YAMAHA</li>\r\n<li>Kết nối mạng x&atilde; hội Yahoo, Facebook </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(119, 1, 'K-Touch M600   ', '0.0000', '<p>- M&aacute;y nghe nhạc chuy&ecirc;n nghiệp với thiết kế thời trang<br />- Hỗ trợ 2 Sim 2 S&oacute;ng online<br />- Camer 2.0 MP, hỗ trợ quay phim<br />- Hỗ trợ thẻ nhớ l&ecirc;n đến 4GB<br />- M&aacute;y nghe nhạc MP3, AAC, AAC+ với chức năng lắc tay đổi nhạc<br />- CPU m&aacute;y nghe nhạc YAMAHA<br />- Đ&agrave;i FM, Bluetooth, USB, GPRS</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1);
INSERT INTO `fs_product` (`id`, `category_id`, `name`, `price`, `desc`, `detail`, `create_at`, `qty`, `note`, `sold`, `view`, `active`) VALUES
(120, 1, 'K-Touch H899 ', '999000.0000', '<ul class=\"item_list\" style=\"margin: 0px; padding-left: 15px;\">\r\n<li>B&agrave;n ph&iacute;m Qwerty thuận tiện</li>\r\n<li>Hỗ trợ 2 sim 2 s&oacute;ng online</li>\r\n<li>M&aacute;y ảnh VGA, hỗ trợ webcam</li>\r\n<li>M&aacute;y nghe nhạc với chất lượng &acirc;m thanh v&ograve;m YAMAHA</li>\r\n<li>Kết nối mạng x&atilde; hội Yahoo, Facebook </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(121, 1, 'K-Touch E606   ', '0.0000', '<p>-</p>\r\n<div class=\"col2\"><!-- .O { color: black; font-size: 149%; }a:link { color: blue ! important; }a:active { color: rgb(192, 80, 77) ! important; }a:visited { color: purple ! important; } --><!-- .sld { left: 0px ! important; width: 6in ! important; height: 4.5in ! important; font-size: 103% ! important; } --> Smart Phone với EVDO c&ocirc;ng nghệ mạng CDMA  <br />- Hệ điều h&agrave;nh <!-- .O { color: black; font-size: 149%; }a:link { color: blue ! important; }a:active { color: rgb(192, 80, 77) ! important; }a:visited { color: purple ! important; } --><!-- .sld { left: 0px ! important; width: 6in ! important; height: 4.5in ! important; font-size: 103% ! important; } -->Windows Mobile 6.1<br />- Camera 5.0 MP, hỗ trợ quay phim<br />- Kết nối interet với Wifi<br />- Kết nối Bluetooth, USB, GPRS</div>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(122, 1, 'K-Touch M606', '0.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>M&aacute;y nghe nhạc chuy&ecirc;n nghiệp với thiết kế thời trang</li>\r\n<li> Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li> Camer 2.0 MP, hỗ trợ quay phim</li>\r\n<li> Hỗ trợ thẻ nhớ l&ecirc;n đến 4GB</li>\r\n<li> M&aacute;y nghe nhạc MP3, AAC, AAC+ với chức năng lắc tay đổi nhạc</li>\r\n<li> CPU m&aacute;y nghe nhạc YAMAHA</li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(123, 1, 'K-Touch A610 ', '849000.0000', '<ul class=\"item_list\" style=\"margin: 0px; padding-left: 15px;\">\r\n<li>Thiết kế cổ điển thời trang</li>\r\n<li>Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li>Camera VGA, hỗ trợ quay phim</li>\r\n<li>Hỗ trợ thẻ nhớ ngo&agrave;i l&ecirc;n đến 2GB </li>\r\n<li>M&aacute;y nghe nhạc MP3, xem phim</li>\r\n<li>Đ&agrave;i FM, t&iacute;nh năng đ&egrave;n pin </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(124, 1, 'K Touch E68   ', '0.0000', '<p>- Điện thoại PDA sử dụng c&ocirc;ng nghệ mạng CDMA<br />- Camera 2.0MP<br />- Hệ điều h&agrave;nh Window Mobile<br />- CPU: Qualcomm, 512<br />- Kết nối Bluetooth, USB, GPRS<br />- Ứng dụng văn ph&ograve;ng</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(125, 1, 'K-Touch H688 ', '849000.0000', '<ul class=\"item_list\" style=\"margin: 0px; padding-left: 15px;\">\r\n<li>Thiết kế dạnh thanh mạnh mẽ</li>\r\n<li>Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li>M&aacute;y ảnh VGA, hỗ trợ quay phim</li>\r\n<li>M&aacute;y nghe nhạc MP3</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp</li>\r\n<li>Kết nối Bluetooth, USB, GPRS </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(126, 1, 'K-Touch H699', '849000.0000', '<ul class=\"item_list\" style=\"margin: 0px; padding-left: 15px;\">\r\n<li>Kiểu d&aacute;ng trẻ trung thời trang</li>\r\n<li>Hỗ trợ 2 Sim 2 s&oacute;ng onlineM&aacute;y ảnh VGA, hỗ trợ quay phim</li>\r\n<li>M&aacute;y nghe nhạc MP3</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp</li>\r\n<li>Kết nối Bluetooth, USB, GPRS </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(127, 1, 'Samsung Galaxy Tab P1000', '15999000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Hệ điều h&agrave;nh Android v2.2 (Froyo)</li>\r\n<li>M&agrave;n h&igrave;nh cảm ứng đa điểm cực rộng 7 inches</li>\r\n<li>Xem phim Full HD</li>\r\n<li>Thinkfree Office (Word, Excel, PowerPoint, PDF)</li>\r\n<li>Mạng 3G với HSDPA, 7.2 Mbps</li>\r\n<li> HSUPA, 5.76 Mbps</li>\r\n<li>Bộ nhớ trong 16/32 GB </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(128, 1, 'Samsung S8530 Wave II   ', '9499000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Hệ điều h&agrave;nh Bada 1.2</li>\r\n<li>M&aacute;y ảnh 5.0 MP, hỗ trợ m&aacute;y ảnh phụ</li>\r\n<li>Quay phim chuẩn HD</li>\r\n<li>Mạng 3G với tốc độ truyền tải 7.2 Mbps</li>\r\n<li>C&ocirc;ng nghệ &acirc;m thanh DNSe (Digital Natural Sound Engine)</li>\r\n<li>Kết nối Wifi, Tivi, Bluetooth,.. </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(129, 1, 'Samsung S8500 Wave   ', '8899000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Hệ điều h&agrave;nh Bada</li>\r\n<li>C&ocirc;ng nghệ m&agrave;n h&igrave;nh đột ph&aacute; Super Amoled</li>\r\n<li>CPU: ARM Cortex A8 1GHz</li>\r\n<li>M&aacute;y ảnh 5.0 MP, hỗ trợ m&aacute;y ảnh phụ</li>\r\n<li>Xem phim chuẩn HD</li>\r\n<li>Kết nối mạng 3G, Wifi, GPS, Bluetooth</li>\r\n<li>Google Maps 3.0, chỉnh sửa ảnh, xem file văn bản </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(130, 1, 'Samsung I5700 Galaxy Spica   ', '6339000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>M&agrave;n h&igrave;nh cảm ứng AMOLED 16 triệu m&agrave;u</li>\r\n<li>Hệ điều h&agrave;nh Android</li>\r\n<li>RAM 128 MB</li>\r\n<li>M&aacute;y ảnh 3.2 MP, lấy n&eacute;t tự động</li>\r\n<li>Mạng 3G với tốc độ truyền dữ liệu 3.6 Mbps</li>\r\n<li>Chức năng định vị to&agrave;n cầu GPS</li>\r\n<li>Kết nối Internet với Wifi tốc độ cao</li>\r\n<li>Google Search, Maps, Gmail,YouTube, Calendar, Google Talk integration </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(131, 1, 'Samsung I5700 Galaxy Spica   ', '6339000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>M&agrave;n h&igrave;nh cảm ứng AMOLED 16 triệu m&agrave;u</li>\r\n<li>Hệ điều h&agrave;nh Android</li>\r\n<li>RAM 128 MB</li>\r\n<li>M&aacute;y ảnh 3.2 MP, lấy n&eacute;t tự động</li>\r\n<li>Mạng 3G với tốc độ truyền dữ liệu 3.6 Mbps</li>\r\n<li>Chức năng định vị to&agrave;n cầu GPS</li>\r\n<li>Kết nối Internet với Wifi tốc độ cao</li>\r\n<li>Google Search, Maps, Gmail,YouTube, Calendar, Google Talk integration </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(132, 1, 'Samsung Wave S7233   ', '5699000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Hệ điều h&agrave;nh Bada</li>\r\n<li>M&aacute;y ảnh 5.0 MP, Flash, nhận diện khu&ocirc;n mặt</li>\r\n<li>Mạng 3G với tốc độ 7.2 Mbps</li>\r\n<li>Kết nối Wifi, Bluetooth, định vị GPS</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp, ghi &acirc;m FM </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(133, 1, 'Samsung Galaxy 3 i5801   ', '5189000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Hệ điều h&agrave;nh Android 2.1 (c&oacute; thể update l&ecirc;n 2.2)</li>\r\n<li>M&aacute;y ảnh 3.2 MP, hỗ trợ quay phim</li>\r\n<li>M&aacute;y nghe nhạc, c&ocirc;ng nghệ &acirc;m thanh DNSe, jack 3.5mm</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp</li>\r\n<li>Kết nối mạng 3G, Wi-Fi 802.11 b/g/n, GPS</li>\r\n<li>Chỉnh sửa văn bản (Word, Excel, PowerPoint, PDF) </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(134, 1, 'Samsung B7330 OmniaPRO   ', '5099000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>B&agrave;n ph&iacute;m QWERTYđầy đủ</li>\r\n<li>Hệ điều h&agrave;nh window mobile 6.5</li>\r\n<li>RAM 256 MB</li>\r\n<li> CPU: 528 MHz processor</li>\r\n<li>Camera 3.15 MP, lấy n&eacute;t tự động</li>\r\n<li>M&aacute;y nghe nhạc MP3/WMA/WAV/AAC+</li>\r\n<li>Kết nối Wifi, GPS, Bluetooth...</li>\r\n<li>Mạng 3G với tốc độ truyền 7.2 Mbps</li>\r\n<li>Windows Live, Yahoo!, AOL</li>\r\n<li>Adobe Flash Lite</li>\r\n<li>Microsoft Outlook Mobile</li>\r\n<li>Pocket Office (Word, Excel, PowerPoint, PDF viewer) </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(135, 1, 'Samsung S5560   ', '4799000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>M&agrave;n h&igrave;nh cảm ứng rộng 3.0 inches</li>\r\n<li>M&aacute;y ảnh 5.0 MP, hỗ trợ LED Flash</li>\r\n<li>M&aacute;y nghe nhạc, xem phim nhiều định dạng</li>\r\n<li>Kết nối Internet với Wifi tốc độ cao</li>\r\n<li>Đ&agrave;i FM </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(136, 1, 'Samsung Wave S5753   ', '4599000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Hệ điều h&agrave;nh Bada</li>\r\n<li>M&aacute;y ảnh 3.2 MP, hỗ trợ quay phim</li>\r\n<li>Mạng 3G với tốc độ truyền tải 3.6 Mbps</li>\r\n<li>Kết nối Wifi, GPS, Bluetooth</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(137, 1, 'Samsung B5310 CorbyPRO   ', '4359000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Kiểu d&aacute;ng trượt s&agrave;nh điệu với b&agrave;n ph&iacute;m QWERTY đầy đủ</li>\r\n<li>Camera 3.15 MP, hỗ trợ quay phim</li>\r\n<li>M&aacute;y nghe nhạc DivX/MP3/AAC/WMA</li>\r\n<li>Đ&agrave;i FM</li>\r\n<li>Mạng 3G với tốc độ truyền dữ liệu 7.2 Mpbs</li>\r\n<li>Xem file văn ph&ograve;ng</li>\r\n<li>Chức năng định vị GPS</li>\r\n<li>Kết nối Wifi, Bluetooth, USB </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(138, 1, 'Samsung i5503 Corby Smart  ', '4299000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Hệ điều h&agrave;nh Android 2.1</li>\r\n<li>M&aacute;y ảnh 2.0 MP, hỗ trợ quay phim</li>\r\n<li>M&aacute;y nghe nhạc MP3/WAV/eAAC+</li>\r\n<li>Mạng 3G với HSDPA 7.2 Mbps</li>\r\n<li>Kết nối Wifi, GPS, Bluetooth, USB</li>\r\n<li>Xem file văn bản (Word, Excel, PowerPoint, PDF)</li>\r\n<li>Google Search, Maps, Gmail, YouTube </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(139, 1, 'Samsung B7320 OmniaPRO', '4299000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Hệ điều h&agrave;nh Windows Mobile 6.1 Standard</li>\r\n<li>CPU: 528 MHz processor </li>\r\n<li> 256 MB RAM, 256 MB ROM</li>\r\n<li>Camera 3.15 MP, hỗ trợ camera phụ thự hiện video</li>\r\n<li>Pocket Office (Word, Excel, PowerPoint, PDF)</li>\r\n<li>Kết nối GPS, Wifi, Bluetooth, USB, GPRS</li>\r\n<li>Windows Media Player 10</li>\r\n<li>Windows Live, Yahoo!, AOL</li>\r\n<li>Adobe Flash Lite</li>\r\n<li>Microsoft Outlook Mobile </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(140, 1, 'Samsung S5620 Monte ', '3899000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>M&aacute;y ảnh 3.2 MP, m&aacute;y ảnh phụ thực hiện Videocall</li>\r\n<li>Kết nối Internet với mạng 3G HSDPA 3.6 Mbps, Wifi</li>\r\n<li>Chức năng mail nhanh Push Email</li>\r\n<li>Định vị to&agrave;n cầu GPS</li>\r\n<li>Chỉnh sửa h&igrave;nh ảnh, kết nối mạng x&atilde; hội Facebook, MySpace apps, Google Maps </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(141, 1, 'Samsung Star S5233TV   ', '3699000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Chức năng xem Tivi Analog</li>\r\n<li>M&aacute;y ảnh 3.15 MP, hỗ trợ quay phim</li>\r\n<li>M&aacute;y nghe nhạc nhiều định dạng</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp</li>\r\n<li>Kết nối Blutooth, USB, GPRS </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(142, 1, 'Samsung Star S5233W   ', '3449000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Hỗ trợ Wifi tốc độ cao.</li>\r\n<li>Chế độ cảm biến tự động xoay m&agrave;n h&igrave;nh, nhận diện chữ viết tay</li>\r\n<li>M&agrave;n h&igrave;nh cảm ứng rộng v&agrave; rực rỡ 3 inche với 262.000 m&agrave;u</li>\r\n<li>Giao diện TouchWiz th&ocirc;ng minh v&agrave; tiện lợi</li>\r\n<li>Kh&aacute;m ph&aacute; thế giới internet với Online Widgets</li>\r\n<li>Camera 3.2 MP, nhận diện nụ cười, quay video QVGA @ 15fps</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp, Bluetooth</li>\r\n<li>Shazam Find Music service </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(143, 1, 'Samsung S5350 Shark   ', '3069000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Thiết kế thanh mảnh thời trang</li>\r\n<li>M&aacute;y ảnh 3.15 MP, hỗ trợ quay phim</li>\r\n<li>M&aacute;y nghe nhạc, xem phim nhiều định dạng</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp, Bluetooth</li>\r\n<li>Kết nối mạng 3G với tốc độ truyền tải 3.6 Mbps</li>\r\n<li>Google Maps, xem file văn bản </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(144, 1, 'Samsung B3410W Ch@t   ', '2989000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Kiểu d&aacute;ng trượt c&aacute; t&iacute;nh với b&agrave;n ph&iacute;m Qwerty</li>\r\n<li>M&aacute;y ảnh 2.0 MP, hỗ trợ quay phim</li>\r\n<li>M&aacute;y nghe nhạc MP3/WAV/eAAC+/WMA</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp, jack tai nghe 3.5mm</li>\r\n<li>Kết nối internet với Wifi tốc độ cao.</li>\r\n<li>Google Search, GMail, Google Maps </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(145, 1, 'Samsung Star S5233   ', '2989000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Chế độ cảm biến tự động xoay m&agrave;n h&igrave;nh, nhận diện chữ viết tay</li>\r\n<li>M&agrave;n h&igrave;nh cảm ứng rộng v&agrave; rực rỡ 3 inche với 262.000 m&agrave;u</li>\r\n<li>Giao diện TouchWiz th&ocirc;ng minh v&agrave; tiện lợi</li>\r\n<li>Kh&aacute;m ph&aacute; thế giới internet với Online Widgets</li>\r\n<li>Camera 3.2 MP, nhận diện nụ cười, quay video QVGA @ 15fps</li>\r\n<li>M&aacute;y nghe nhạc/xem phim MP3/WMA/AAC/MP4</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp</li>\r\n<li>Bluetooth</li>\r\n<li>Shazam Find Music service </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(146, 1, 'Samsung B3410 CorbyChat   ', '2799000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Thiết kế trượt ngang c&aacute; t&iacute;nh</li>\r\n<li>M&aacute;y ảnh 2.0 MP, hỗ trợ quay phim</li>\r\n<li>Sử dụng giao diện TouchWiz 2.0 UI</li>\r\n<li>Chức năng tin nhắn qua Bluetooth</li>\r\n<li>Đ&agrave;i FM, Bluetooth, GPRS </li>\r\n</ul>\r\n<p><span class=\"number\"><br /></span></p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(147, 1, 'Samsung S3653W Corby   ', '2699000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Thiết kế thời trang s&agrave;nh điệu</li>\r\n<li>Hỗ trợ Wifi tốc độ cao</li>\r\n<li>M&aacute;y ảnh 2.0 MP, hỗ trợ quay phim</li>\r\n<li>M&aacute;y nghe nhạc MP3/WAV/eAAC+/WMA</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(148, 1, 'Samsung S3353 Ch@t 335   ', '2599000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Kiểu d&aacute;ng thời trang với b&agrave;n ph&iacute;m Qwerty</li>\r\n<li>M&aacute;y ảnh 2.0 MP, hỗ trợ quay phim</li>\r\n<li>Kết nối Wifi tốc độ cao, mạng x&atilde; hội</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp, ghi &acirc;m FM </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(149, 1, 'Samsung S3653 Corby   ', '2499000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Thiết kế với kiểu d&aacute;ng v&agrave; m&agrave;u sắc thời trang</li>\r\n<li>M&agrave;n h&igrave;nh cảm ứng rộng 2.8 inches</li>\r\n<li>Camera 2.0 MP, hỗ trợ quay phim</li>\r\n<li>M&aacute;y nghe nhạc MP3, AAC, WMV</li>\r\n<li>Đ&agrave;i FM</li>\r\n<li>Kết nối Bluetooth, GPRS </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(150, 1, 'Samsung C3510   ', '2499000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Kiểu d&aacute;ng thời trang với m&agrave;n h&igrave;nh cảm ứng</li>\r\n<li>M&aacute;y ảnh 1.3 MP, hỗ trợ quay phim</li>\r\n<li>M&aacute;y nghe nhạc MP3/WMA/eAAC+</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp</li>\r\n<li>Kết nối Bluetooth, USB </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(151, 1, 'Samsung B3210 CorbyTXT   ', '2369000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>B&agrave;n ph&iacute;m QWERTY đầy đủ</li>\r\n<li>Camera 2.0 MP, hỗ trợ quay phim</li>\r\n<li>M&aacute;y nghe nhạc MP3/AAC/WMA</li>\r\n<li>Đ&agrave;i FM, jack 3.5mm</li>\r\n<li>Kết nối Bluetooth, USB</li>\r\n<li>Chức năng xem file văn bản</li>\r\n<li>Fashion Jackets (changeable battery covers) </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(152, 1, 'Samsung C3222   ', '2099000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Thiết kế mạnh mẽ với b&agrave;n ph&iacute;m Qwerty đầy đủ</li>\r\n<li>Hỗ trợ 2 sim 2 s&oacute;ng online</li>\r\n<li>M&aacute;y ảnh 1.3 MP, hỗ trợ quay phim</li>\r\n<li>M&aacute;y nghe nhạc MP3/eAAC+, xem phim 3GP, Mp4</li>\r\n<li>Kết nối Bluetooth, USB, GPRS, mạng x&atilde; hội </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(153, 1, 'Samsung S3500   ', '1999000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Thiết kế trượt thời trang</li>\r\n<li>M&agrave;n h&igrave;nh 16 triệu m&agrave;u</li>\r\n<li>Camera 2.0 MP, hỗ trợ quay phim</li>\r\n<li>M&aacute;y nghe nhạc nhiều định dạng</li>\r\n<li>Chế độ giả lập cuộc gọi ản</li>\r\n<li>Kết nối Bluetooth, USB, đ&agrave;i FM </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(154, 1, 'Samsung S3100   ', '1799000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Kiểu d&aacute;ng trượt thời trang nữ t&iacute;nh</li>\r\n<li>Camera 1.3 MP, hỗ trợ quay phim</li>\r\n<li>M&aacute;y nghe nhạc nhiều định dạng MP3, AAC, WMA</li>\r\n<li>Đ&agrave;i FM, Bluetooth</li>\r\n<li> Kết nối USB, Bluetooth, GPRS</li>\r\n<li>Hỗ trợ thẻ nhớ ngo&agrave;i l&ecirc;n đến 8GB </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(155, 1, 'Samsung S3600   ', '1749000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Nắp gập thời trang</li>\r\n<li>Giải tr&iacute; đa phương tiện</li>\r\n<li>Hỗ trợ thẻ nhớ tới 2GB</li>\r\n<li>Camera 1.3MP</li>\r\n<li>Đ&agrave;i FM </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(156, 1, 'Samsung C3200 Monte Bar   ', '1699000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Thiết kế thời trang với kiểu d&aacute;ng lạ mắt</li>\r\n<li>M&aacute;y ảnh 2.0 MP, hỗ trợ quay phim</li>\r\n<li>M&aacute;y nghe nhạc MP3/WMA/eAAC+, xem phim MP4, 3GP</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp</li>\r\n<li>Kết nối Bluetooth, USB </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(157, 1, 'Samsung C3303 Champ   ', '1699000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>M&agrave;n h&igrave;nh cảm ứng rộng 2.4 inches</li>\r\n<li>M&aacute;y ảnh 1.3 MP, hỗ trợ quay phim</li>\r\n<li>M&aacute;y nghe nhạc MP3/WMA/eAAC+</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp, jack tai nghe 3.5mm</li>\r\n<li>Kết nối Bluetooth, USB, GPRS </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(158, 1, 'Samsung E2530   ', '1589000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Thiết kế nắp gập thời trang</li>\r\n<li>M&aacute;y ảnh 1.3 MP, hỗ trợ quay phim</li>\r\n<li>M&aacute;y nghe nhạc MP3</li>\r\n<li>Kết nối Bluetooth, USB, GPRS </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(159, 1, 'Samsung E2550 Monte Slider   ', '1519000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Kiểu d&aacute;ng trượt thời trang</li>\r\n<li>M&aacute;y ảnh 1.3 MP, hỗ trợ quay phim</li>\r\n<li>M&aacute;y nghe nhạc MP3/WMA/eAAC+</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp</li>\r\n<li>Kết nối Bluetooth, USB </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(160, 1, 'Samsung E2510  ', '1399000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Nắp gập thời trang</li>\r\n<li> Camera VGA</li>\r\n<li> Giải tr&iacute; nghe nhạc</li>\r\n<li> Hỗ trợ thẻ nhớ</li>\r\n<li> Đ&agrave;i FM </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(161, 1, 'Samsung C3053   ', '1359000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Kiểu trượt thời trang</li>\r\n<li>Camera VGA, c&oacute; chế độ chụp panorama</li>\r\n<li>Hỗ trợ thẻ nhớ ngo&agrave;i</li>\r\n<li>M&aacute;y nghe nhạc MP3, với c&ocirc;ng nghệ &acirc;m thanh 3D </li>\r\n<li>Kết nối USB, Bluetooth</li>\r\n<li>Đ&agrave;i FM với chức năng ghi &acirc;m </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(162, 1, 'Samsung E1360s   ', '889000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Kiểu trượt thời trang</li>\r\n<li> Chặn cuộc gọi</li>\r\n<li> Tạo cuộc gọi ảo</li>\r\n<li> Bảo mật ri&ecirc;ng tư</li>\r\n<li> uTrack 2.0</li>\r\n<li> Đ&agrave;i FM</li>\r\n<li> Nhạc chu&ocirc;ng MP3 </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(163, 1, 'Samsung E1175T   ', '559000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Thiết kế gọn g&agrave;ng, sang trọng</li>\r\n<li>B&agrave;n ph&iacute;m mềm dễ bấm</li>\r\n<li>Nhạc chu&ocirc;ng đa &acirc;m sắc</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp</li>\r\n<li>Đ&egrave;n Pin cực s&aacute;ng với Pin bền </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(164, 1, 'Samsung U600   ', '0.0000', '<p>S<strong><span style=\"color: #ff0000;\">amsung U600 - Vượt tr&ecirc;n mọi đẳng cấp</span></strong><br />- Nắp trượt si&ecirc;u mỏng 10.9 mm<br />- Chất liệu cao cấp<br />- C&aacute;c t&iacute;nh năng ULTRA<br />- Đ&agrave;i FM<br />- Khả năng xem t&agrave;i liệu văn ph&ograve;ng <br />- Loa thoại rảnh tay t&iacute;ch hợp</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(165, 1, 'Cayon E590   ', '1589000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Kiểu d&aacute;ng trượt thời trang</li>\r\n<li>Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li>2 Camera trước v&agrave; sau</li>\r\n<li>M&aacute;y nghe nhạc, xem phim</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp, Bluetooth </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(166, 1, 'Cayon C319  ', '1589000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Kiểu d&aacute;ng trượt v&agrave; m&agrave;u sắc thời trang</li>\r\n<li>Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li>M&aacute;y ảnh 3.0 MP, hỗ trợ quay phim</li>\r\n<li>M&aacute;y nghe nhạc xem phim nhiều định dạng</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp, Bluetooth </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(167, 1, 'Cayon U7 ', '1489000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Kiểu d&aacute;ng trượt thời trang</li>\r\n<li>Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li>M&aacute;y ảnh VGA, hỗ trợ webcam</li>\r\n<li>Nghe nhạc, xem phim MP3, 3GP</li>\r\n<li> Đ&agrave;i FM t&iacute;ch hợp, Bluetooth</li>\r\n<li>Chức năng chặn cuộc gọi </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(168, 1, 'Cayon i7', '1489000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li>M&aacute;y ảnh 2.0 MP, hỗ trợ webcam</li>\r\n<li>M&aacute;y nghe nhạc MP3, WMA</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp</li>\r\n<li>Kết nối Bluetooth, USB, GPRS</li>\r\n<li>Chức năng lắc tay đổi nhạc, h&igrave;nh </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(169, 1, 'Cayon i6 ', '1489000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Thiết kế thời trang với kiểu trượt</li>\r\n<li>Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li>M&aacute;y ảnh 3.0 MP, hỗ trợ quay phim</li>\r\n<li>M&aacute;y nghe nhạc MP3</li>\r\n<li>Kết nối Bluetooth, USB </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(170, 1, 'Cayon E330  ', '1389000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li>2 m&aacute;y ảnh trước v&agrave; sau, hỗ trợ quay phim</li>\r\n<li>M&aacute;y nghe nhạc MP3, xem phim MP4</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp</li>\r\n<li>Chức năng chat Yahoo </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(171, 1, 'Cayon E560  ', '1389000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Thiết kế thời trang với kiểu trượt</li>\r\n<li>Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li>M&aacute;y ảnh VGA, hỗ trợ quay phim</li>\r\n<li>M&aacute;y nghe nhạc MP3, xem phim 3GP</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp</li>\r\n<li>Kết nối Bluetooth, USB, GPRS </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(172, 1, 'Cayon U6', '1389000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Kiểu d&aacute;ng trượt thời trang</li>\r\n<li>Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li>M&aacute;y ảnh VGA, hỗ trợ webcam</li>\r\n<li>Nghe nhạc, xem phim MP3, 3GP</li>\r\n<li> Đ&agrave;i FM t&iacute;ch hợp, Bluetooth</li>\r\n<li>Chức năng chặn cuộc gọi </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(173, 1, 'Cayon E550 ', '1389000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Thiết kế thời trang với vỏ viền th&eacute;p</li>\r\n<li>Hỗ trợ 2 Sim 2 s&oacute;ng online</li>\r\n<li>M&aacute;y ảnh VGA, hỗ trợ quay phim</li>\r\n<li>M&aacute;y nghe nhạc MP3, AAC</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp</li>\r\n<li>Kết nối Bluetooth, USB, GPRS </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(174, 1, 'Cayon C309i ', '1289000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Kiểu d&aacute;ng trượt thời trang sang trọng</li>\r\n<li>Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li>2 m&aacute;y ảnh trước v&agrave; sau</li>\r\n<li>M&aacute;y nghe nhạc MP3, xem phim 3GP</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp, Bluetooth </li>\r\n<li>Xem chi tiết </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(175, 1, 'Cayon C580', '1249000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li>M&aacute;y ảnh VGA, hỗ trợ quay phim</li>\r\n<li>M&aacute;y nghe nhạc MP3, xem phim 3GP</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp</li>\r\n<li>Pin si&ecirc;u bền, giả giọng n&oacute;i khi đ&agrave;m thoại </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(176, 1, 'Cayon C505   ', '1199000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Kiểu gập thời trang v&agrave; m&agrave;u sắc sang trọng</li>\r\n<li>Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li>M&aacute;y ảnh VGA, hỗ trợ quay phim</li>\r\n<li>M&aacute;y nghe nhạc MP3, xem phim 3GP</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp</li>\r\n<li>Kết nối Bluetooth, USB, GPRS </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(177, 1, 'Cayon i8  ', '1189000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Thiết kế dạng thanh với m&agrave;u sắc sang trọng</li>\r\n<li>Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li>M&aacute;y ảnh VGA, hỗ trợ quay phim</li>\r\n<li>M&aacute;y nghe nhạc MP3, AAC, xem phim 3GP, AVI</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp</li>\r\n<li>Kết nối Bluetooth, USB, GPRS\\ </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 2, 1),
(178, 1, 'Cayon V850 ', '1189000.0000', '<p>- Thiết kế dạng thanh sang trọng<br />- Camera 2 MP, quay phim<br />- M&aacute;y nghe nhạc MP3<br />- Đ&agrave;i FM, Bluetooth<br />- Chức năng in ảnh trực tiếp</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(179, 1, 'Cayon C309   ', '1139000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Điện thoại nghe nhạc trượt thời trang</li>\r\n<li>Hỗ trợ 2 sim 2 s&oacute;ng online</li>\r\n<li>M&aacute;y nghe nhạc MP3</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp</li>\r\n<li>Kết nối Bluetooth </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(180, 1, 'Cayon U8  ', '1089000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Kiểu d&aacute;ng dạng thanh thời trang</li>\r\n<li>Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li>M&aacute;y ảnh VGA, hỗ trợ webcam</li>\r\n<li>M&aacute;y nghe nhạc, xem phim MP3, 3GP</li>\r\n<li>Chắc năng lắc tay đổi nhạc, h&igrave;nh nền</li>\r\n<li>Chặn cuộc gọi </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(181, 1, 'Cayon C318  ', '749000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Hỗ trợ 2 Sim 2 s&oacute;ng online</li>\r\n<li>M&aacute;y chụp h&igrave;nh 0.1 MP</li>\r\n<li>Hỗ trợ thẻ nhớ ngo&agrave;i</li>\r\n<li>M&aacute;y nghe nhạc MP3 </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(182, 1, 'Cayon E530   ', '0.0000', '<p>- Thiết kế thời trang, m&agrave;u sắc sang trọng<br />- Camera 2.0 MP, hỗ trợ quay phim<br />- Hỗ trợ 2 sim, 2 s&oacute;ng online<br />- Thẻ nhớ ngo&agrave;i, m&aacute;y nghe nhạc MP3<br />- Chức năng bluetooth</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(183, 1, 'Sony Ericsson XPERIA X10', '13989000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>M&agrave;n h&igrave;nh cảm ứng rộng 4.0 inches</li>\r\n<li>M&aacute;y ảnh 8.1 MP, hỗ trợ LED Flash</li>\r\n<li>Bộ nhớ trọng 1GB, RAM 384MB</li>\r\n<li>CPU: Qualcomm QSD8250 Snapdragon 1 GHz processor</li>\r\n<li>Mạng 3G tốc độ truyền l&ecirc;n đến 10.2 Mbps</li>\r\n<li>Kết nối internet với Wifi tốc độ cao</li>\r\n<li>Xem file văn bản</li>\r\n<li>Google Search, Maps, Gmail, YouTube, Calendar, Google Talk</li>\r\n<li>Jack tai nghe 3.5mm </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(184, 1, 'Sony Ericsson U8 Vivaz pro', '11989000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Kiểu d&aacute;ng trượt với b&agrave;n ph&iacute;m Qwerty đầy đủ</li>\r\n<li>M&aacute;y ảnh 5.0 MP, hỗ trợ LED flash</li>\r\n<li>Quay phim HD 720p một chạm</li>\r\n<li>Nghe nhạc, xem phim nhiều định dạng</li>\r\n<li>Out Tivi</li>\r\n<li>Mạng 3G  với HSDPA</li>\r\n<li> HSUPA</li>\r\n<li>Kết nối Wifi, Buetooth, USB </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(185, 1, 'Sony Ericsson Aino U10   ', '10989000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Thiết kế trượt hiện đại</li>\r\n<li>Camera 8.1 MP, hỗ trợ quay phim VGA@30fps</li>\r\n<li>Kết nối 3G với tốc độ truyền dữ liệu 7.2Mb</li>\r\n<li>Chức năng định vị to&agrave;n cầu GPS, Google Maps</li>\r\n<li>Duyệt internet tốc độ cao với Wifi</li>\r\n<li>M&aacute;y nghe nhạc, đ&agrave;i FM</li>\r\n<li>Remote play for Playstation 3</li>\r\n<li>Bluetooth, USB </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(186, 1, 'Sony Ericsson Satio U1 ', '9989000.0000', '<ul class=\"item_list\">\r\n<li>Điện thoại cảm ứng m&agrave;n h&igrave;nh rộng</li>\r\n<li>M&aacute;y ảnh12 MP, camera phụ VGA thực hiện Videocall</li>\r\n<li>M&aacute;y nghe nhạc MP3/WMA/WAV/RA/AAC/M4A</li>\r\n<li>Xem phim WMV/RV/MP4/3GP</li>\r\n<li>Kết nối 3G, GPS, Wifi, Bluetooth</li>\r\n<li>Đ&agrave;i FM</li>\r\n<li>Out-Tivi, Google ma</li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(187, 1, 'Sony Ericsson XPERIA X2', '8799000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Kiểu trượt với b&agrave;n ph&iacute;m QWERTY đầy đủ,</li>\r\n<li>Hệ điều h&agrave;nh Windows Mobile 6.5 Professional</li>\r\n<li>256 MB RAM, 512 MB ROM</li>\r\n<li>Camera 8.0 MP, LED flash</li>\r\n<li> Camera phụ</li>\r\n<li>M&aacute;y nghe nhạc, xem phim nhiều định dạng MP3/WAV/eAAC+/WMA</li>\r\n<li>Chức năng Out Tivi</li>\r\n<li>Pocket Office (Word, Excel, PowerPoint, OneNote, PDF viewer)</li>\r\n<li>Jack tai nghe 3.5mm </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(188, 1, 'Sony Ericsson Vivaz ', '7888000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>M&agrave;n h&igrave;nh cảm ứng rộng 3.2 inches</li>\r\n<li>M&aacute;y ảnh 8.0 MP, LED  flash</li>\r\n<li>M&aacute;y nghe nhạc, xem phim nhiều định dạng</li>\r\n<li>Mạng 3G với tốc độ truyền tải 10.2 Mbps</li>\r\n<li>Kết nối internet với tốc độ cao</li>\r\n<li>TV out (VGA resolution)</li>\r\n<li>Nhiều ứng dụng hỗ trợ (Google maps, Facebook, Picasa integration, YouTube)</li>\r\n<li>Jack tai nghe 3.5mm </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(189, 1, 'Sony Ericsson XPERIA X10 mini ', '7589000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>M&aacute;y ảnh 5.0 MP, hỗ trợ LED flash</li>\r\n<li>Nghe nhạc, xem phim nhiều định dạng</li>\r\n<li>Mạng 3G  với HSDPA</li>\r\n<li> HSUPA</li>\r\n<li>Kết nối Wifi, Buetooth, USB...</li>\r\n<li>Xem file văn bản</li>\r\n<li>Google Search, Maps, Gmail, YouTube, Calendar, Google Talk </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(190, 1, 'Sony Ericsson W995', '7189000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Thiết kế ấn tượng với m&agrave;n h&igrave;nh s&aacute;ng</li>\r\n<li>Camera 8.1 MP, Tự động lấy n&eacute;t, hỗ trợ flash</li>\r\n<li>M&aacute;y nghe nhạc với c&aacute;c n&uacute;t bấm v&agrave; giống chống l&ecirc;n để xem phim</li>\r\n<li>Đ&agrave;i FM với RDS</li>\r\n<li>Kết nối 3G, Wifi, Bluetooth, USB</li>\r\n<li>Chức năng định vị to&agrave;n cầu GPS</li>\r\n<li>Chỉnh sửa h&igrave;nh ảnh, ứng dụng Youtube.... </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(191, 1, 'Sony Ericsson XPERIA X8', '5989000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Hệ điều h&agrave;nh Android 2.1</li>\r\n<li>M&aacute;y ảnh 3.2 MP, hỗ trợ quay phim</li>\r\n<li>M&aacute;y nghe nhạc MP3/eAAC+/WMA/WAV</li>\r\n<li>Mạng 3G, kết nối Wifi, Bluetooth, USB</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp, jack tai nghe 3.5mm</li>\r\n<li>Google Search, Maps, Gmail, YouTube, Calendar, Google Talk</li>\r\n<li>Xem file văn bản </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(192, 1, 'Sony Ericsson J20i Hazel  ', '5089000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Điện thoại th&acirc;n thiện với m&ocirc;i trường</li>\r\n<li>M&aacute;y ảnh 5 MP, hỗ trợ LED Flash</li>\r\n<li>Kết nối mạng với Wifi tốc độ cao</li>\r\n<li>Mạng 3G với tốc độ truyền tải 7.2 Mbps</li>\r\n<li>Chức năng định vị to&agrave;n cầu GPS</li>\r\n<li>Chức năng lọc tiếng ồn với mic chuy&ecirc;n dụng</li>\r\n<li>Kết nối mạng x&atilde; hội YouTube, Facebook, MySpace, Twitter applications </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(193, 1, 'Sony Ericsson Elm J10i2', '4989000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Điện thoại th&acirc;n thiện với m&ocirc;i trường</li>\r\n<li>M&aacute;y ảnh 5 MP, hỗ trợ LED Flash</li>\r\n<li>Kết nối mạng với Wifi tốc độ cao</li>\r\n<li>Mạng 3G với tốc độ truyền tải 7.2 Mbps</li>\r\n<li>Chức năng định vị to&agrave;n cầu GPS</li>\r\n<li>Chức năng lọc tiếng ồn với mic chuy&ecirc;n dụng</li>\r\n<li>Kết nối mạng x&atilde; hội YouTube, Facebook, MySpace, Twitter applications </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(194, 1, 'Sony Ericsson W980 ', '498900.0000', '<ul class=\"item_list\">\r\n<li>Tận hưởng &acirc;m nhạc</li>\r\n<li> Thiết kế nắp gập thời trang</li>\r\n<li> Bộ nhớ trong 8 GB</li>\r\n<li> M&aacute;y nghe nhạc Walkman với c&aacute;c ph&iacute;m chơi nhạc chuy&ecirc;n dụng</li>\r\n<li> Đ&agrave;i FM với RDS</li>\r\n<li> M&aacute;y ph&aacute;t FM</li>\r\n<li> Bộ điều khiển rung</li>\r\n<li> Chức năng xem v&agrave; chỉnh sửa h&igrave;nh ảnh </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(195, 1, 'Sony Ericsson T715 ', '4589000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Thiết kế chắc chắn với d&aacute;ng trượt thời trang</li>\r\n<li>Kết nối 3G với tốc độ truyền tải dữ lliệu HSDPA</li>\r\n<li>Camera 3.15MP, hỗ trợ quay phim v&agrave; thực hiện videocall</li>\r\n<li>M&aacute;y nghe nhạc, xem phim MP3/eAAC+/WMA, MP4/WMV</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp</li>\r\n<li>Kết nối Bluetooth, USB...</li>\r\n<li>Ứng dụng YouTube, Google Maps </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(196, 1, 'Sony Ericsson W508 ', '4289000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Thiết kế thời trang trẻ trung</li>\r\n<li> M&agrave;n h&igrave;nh cảm biến tự động xoay m&agrave;n h&igrave;nh, bề mặt chống xước</li>\r\n<li> Camera 3.2 Mp, hỗ trợ quay phim  QVGA @ 15 fps</li>\r\n<li> M&aacute;y nghe nhạc chuy&ecirc;n dụng với những ph&iacute;m chơi nhạc b&ecirc;n ngo&agrave;i s&agrave;nh điệu</li>\r\n<li> Đ&agrave;i FM t&iacute;ch hợp</li>\r\n<li> Kết nối dữ liệu nhanh với mạng 3G </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(197, 1, 'Sony Ericsson T707  ', '3989000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Thiết kế nắp gập thời trang sang trọng</li>\r\n<li>Camera 3.2 MP, hỗ trợ quay phim</li>\r\n<li>M&aacute;y nghe nhạc nhiều định dạng</li>\r\n<li>Chức năng calling Video</li>\r\n<li>Kết nối 3G, Bluetooth, USB</li>\r\n<li>Đ&agrave;i FM </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(198, 1, 'Sony Ericsson W890i  ', '3989000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Cho ai y&ecirc;u th&iacute;ch &acirc;m nhạc</li>\r\n<li> Thiết kế thanh mảnh thời trang</li>\r\n<li> Chức năng điều khiển m&aacute;y bằng chuyển động</li>\r\n<li> Camera 3.15 MP, camera phụ thực hiện videocall</li>\r\n<li> M&aacute;y ph&aacute;t nhạc Walkman</li>\r\n<li> Chức năng nhận diện th&ocirc;ng tin b&agrave;i h&aacute;t</li>\r\n<li> Đ&agrave;i FM </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(199, 1, 'Sony Ericsson W760  ', '3590000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Thiết kế nắp trượt s&agrave;nh điệu</li>\r\n<li>Định vị GPS</li>\r\n<li>Camera 3.2 MP</li>\r\n<li>Hỗ trợ thẻ nhớ ngo&agrave;i</li>\r\n<li>Nghe nhạc nhiều định dạng</li>\r\n<li>Đ&agrave;i FM</li>\r\n<li>Loa thoại ngo&agrave;i t&iacute;ch hợp </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(200, 1, 'Sony Ericsson W20i Zylo  ', '3589000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>M&aacute;y nghe nhạc walkman chuy&ecirc;n nghiệp</li>\r\n<li>M&aacute;y ảnh 3.2 MP, hỗ trợ quay phim</li>\r\n<li>M&aacute;y nghe nhạc FLAC/MP3/AAC++/WAV với Walkman 4.0</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp</li>\r\n<li>Mạng 3G với HSDPA, 7.2 Mbps</li>\r\n<li> HSUPA, 2 Mbps</li>\r\n<li>Kết nối Bluetooth, GPS </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(201, 1, 'Sony Ericsson W595 ', '3589000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Kiểu d&aacute;ng nắp trượt s&agrave;nh điệu</li>\r\n<li>Camera 3.2 MP, hỗ trợ xem phim</li>\r\n<li>M&aacute;y nghe nhạc Walkman</li>\r\n<li>Đ&agrave;i FM, Bluetooth, 3G </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(202, 1, 'Sony Ericsson T700', '3089000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Thiết kế cổ điển thời trang với vỏ kim loại</li>\r\n<li>Camera 3.2 MP, hỗ trợ quay phim</li>\r\n<li>M&aacute;y nghe nhạc nhiều định dạng với walkman player 3.0</li>\r\n<li>Kết nối 3G với tốc truyền dữ liệu 3.6 Mbps</li>\r\n<li>Đ&agrave;i FM, Bluetooth, USB, GPRS </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(203, 1, 'Sony Ericsson W395  ', '2489000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Thiết kế nắp trượt thời trang</li>\r\n<li> Camera 2 MP, hỗ trợ quay phim</li>\r\n<li> M&aacute;y nghe nhạc Walkman với TrackID Music</li>\r\n<li> Đ&agrave;i FM, Bluetooth</li>\r\n<li> Chức năng xem v&agrave; chỉnh sửa h&igrave;nh ảnh </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(204, 1, 'Sony Ericsson Spiro W100i', '2389000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>M&aacute;y nghe nhạc Walkman 4.0 chuy&ecirc;n nghiệp</li>\r\n<li>M&aacute;y ảnh 2.0 MP, hỗ trợ quay phim</li>\r\n<li>M&aacute;y nghe nhạc MP3/AAC+/WAV</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp, jack tai nghe 3.5mm </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(205, 1, 'Sony Ericsson W205  ', '1749000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Điện thoại nghe nhạc thời trang</li>\r\n<li>Camera 1.3 MP, hỗ trợ quay phim</li>\r\n<li>M&aacute;y nghe nhạc/xem phim MP3, AAC, MP4, 3GP</li>\r\n<li>Đ&agrave;i FM</li>\r\n<li>Kết nối USB, Bluetooth, GPRS </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(206, 1, 'Sony Ericsson P800  ', '0.0000', '<p>- Java, WAP 2.0.<br />- Tr&igrave;nh duyệt HTML, iMode. <br />- Ghi &acirc;m. <br />- Album h&igrave;nh ảnh</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(207, 1, 'WellcoM A88', '3390000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Hệ điều h&agrave;nh Android 1.6</li>\r\n<li>M&aacute;y ảnh 5.0 MP, hỗ trợ quay phim</li>\r\n<li>Mạng 3G, Wifi tốc độ cao</li>\r\n<li>Ứng dụng google t&iacute;ch hợp: Gmail, Google map</li>\r\n<li>Ứng dụng văn ph&ograve;ng </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(208, 1, 'WellcoM W9229', '1989000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>M&agrave;n h&igrave;nh cảm ứng rộng 3.2 inches</li>\r\n<li> Chức năng xem Tivi Analog</li>\r\n<li> Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li> M&aacute;y ảnh 2.0 MP, hỗ trợ quay phim</li>\r\n<li> M&aacute;y nghe nhạc, xem phim MP3, AAC, AAC+, MP4, 3GP</li>\r\n<li> Đ&agrave;i FM với chức năng ghi &acirc;m </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(209, 1, 'WellcoM A66', '1890000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>M&agrave;n h&igrave;nh cảm ứng</li>\r\n<li>Camera 2.0 MP</li>\r\n<li>Hệ điều h&agrave;nh Android v1.5( Donut)</li>\r\n<li>Chip xử l&yacute; Qualcomm ESM7225, 528 MHz</li>\r\n<li>Bộ nhớ Rom 256 MB, Ram 256 MB</li>\r\n<li>Nghe nhạc MP3/ AAC/AAC+, 3.5 mm jack</li>\r\n<li>Xem phim H </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(210, 1, 'WellcoM W3311  ', '1789000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Thiết kế kiểu vu&ocirc;ng xoay độc đ&aacute;o</li>\r\n<li> Chức năng xem Tivi Analog</li>\r\n<li> Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li> M&aacute;y ảnh 1.3 MP, hỗ trợ Webcam</li>\r\n<li> M&aacute;y nghe nhac, xem phim MP3, MP4, 3GP</li>\r\n<li> Đ&agrave;i FM t&iacute;ch hợp</li>\r\n<li> Chức năng chặn cuộc gọi, lắc tay đổi nhạc/h&igrave;nh/FM </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(211, 1, 'WellcoM W9119', '1190000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>M&agrave;n h&igrave;nh cảm ứng rộng 3.0 inches</li>\r\n<li> Chức năng xem Tivi Analog</li>\r\n<li> Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li> Camera 3.2 MP, lấy n&eacute;t tự động</li>\r\n<li> M&aacute;y nghe nhạc MP3</li>\r\n<li> Đ&agrave;i FM</li>\r\n<li> Kết nối Bluetooth, GPRS </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(212, 1, 'WellcoM W3330  ', '1090000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Thiết kế s&agrave;nh điệu với b&agrave;n ph&iacute;m Qwerty</li>\r\n<li>Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li>M&aacute;y ảnh VGA, hỗ trợ quay phim</li>\r\n<li>M&aacute;y nghe nhạc, xem phim nhiều định dạng</li>\r\n<li>Kết nối Bluetooth, USB </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(213, 1, 'WellcoM W3112', '1090000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Kiểu d&aacute;ng gập với m&agrave;n h&igrave;nh lớn</li>\r\n<li>Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li>M&aacute;y ảnh 1.3 MP, hỗ trợ quay phim</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp</li>\r\n<li>Kết nối Bluetooth, USB, GPRS </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(214, 1, 'WellcoM W3113', '1090000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Kiểu d&aacute;ng gập với m&agrave;n h&igrave;nh lớn</li>\r\n<li>Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li>M&aacute;y ảnh 1.3 MP, hỗ trợ quay phim</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp</li>\r\n<li>Kết nối Bluetooth, USB, GPRS </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(215, 1, 'WellcoM W3111  ', '1090000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Kiểu d&aacute;ng trượt thời trang</li>\r\n<li>Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li>M&aacute;y ảnh 1.3 MP, hỗ trợ quay phim</li>\r\n<li>M&aacute;y nghe nhạc MP3, xem phim 3GP,MP4</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(216, 1, 'WellcoM W3333  ', '109000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>M&agrave;n h&igrave;nh bầu dục độc đ&aacute;o với chức năng cảm ứng</li>\r\n<li>Chức năng xem Tivi Analog</li>\r\n<li>Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li>2 m&aacute;y ảnh với đ&egrave;n flash ph&iacute;a sau</li>\r\n<li>M&aacute;y nghe nhạc, xem phim, đ&agrave;i FM</li>\r\n<li>Kết nối Bluetooth, WAP, GPRS </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(217, 1, 'WellcoM W3339  ', '1090000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Xem Tivi Analog</li>\r\n<li> Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li> M&aacute;y nghe nhạc, xem phim</li>\r\n<li> Chức năng lắc tay đổi nhạc, chuyển k&ecirc;nh FM, Tivi</li>\r\n<li> Chặn cuộc gọi l&ecirc;n 20 số </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(218, 1, 'WellcoM W538  ', '0.0000', '<p>- Thiết kế mini trượt độc đ&aacute;o<br />- M&agrave;n h&igrave;nh TFT, 262.144 m&agrave;u, k&iacute;ch thước 128 x 160 pixels<br />- M&aacute;y ảnh kỹ thuật số t&iacute;ch hợp, độ ph&acirc;n giải 1.3 MP<br />- Chức năng nghe nhạc MP3 qua loa ngo&agrave;i<br />- Nhạc chu&ocirc;ng đa &acirc;m sắc, hỗ trợ c&aacute;c định dạng MIDI, AMR, WAV, MP3<br />- Hỗ trợ thẻ nhớ microSD (TransFlash) đến 1 GB<br />- Tin nhắn SMS/EMS/MMS<br />- STK (SIM Tool Kit)<br />- Chức năng webcam độc đ&aacute;o</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(219, 1, 'HTC Desire Z', '13699000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Hệ điều h&agrave;nh Android 2.2 Froyo</li>\r\n<li>M&agrave;n h&igrave;nh cảm ứng đa điểm, rộng 3.7 inches</li>\r\n<li>M&aacute;y ảnh 5 MP, hỗ trợ LED flash</li>\r\n<li>Mạng 3G với HSDPA, 7.2 Mbps</li>\r\n<li> HSUPA, 2 Mbps</li>\r\n<li>Kết nối Wifi, Bluetooth, A-GPS </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 1, 1),
(220, 1, 'HTC HD2', '13699000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Hệ điều h&agrave;nh Windows Mobile 6.5 Professional</li>\r\n<li>CPU: Qualcomm Snapdragon QSD2850, 1 GHz processor</li>\r\n<li>448 MB RAM, 512 MB ROM</li>\r\n<li>M&aacute;y nghe nhạc MP3/WAV/WMA/eAAC+</li>\r\n<li>Xem phim AVI(DiVX/XviD)/MP4/WMV/H.264/H.263</li>\r\n<li>Facebook and Twitter integration</li>\r\n<li>YouTube client</li>\r\n<li>Pocket Office (Word, Excel, PowerPoint, OneNote, PDF viewer)</li>\r\n<li>HTC Peep, HTC Footprints</li>\r\n<li>Jack tai nghe 3.5mm </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(221, 1, 'HTC Desire', '12699000.0000', '<p>- Hệ điều h&agrave;nh Android 2.2<br /> - M&aacute;y ảnh 5.0 MP, hỗ trợ LED Flash<br /> - Mạng 3G HSDPA, 7.2 Mbps; HSUPA, 2 Mbp<br /> - Chức năng định vị GPS, Wifi, Bluetooth<br /> - Đ&agrave;i FM t&iacute;ch hợp, jack tai nghe 3.5mm<br /> - Google Search, Maps, Gmail, YouTube, Google Talk, Picasa integration</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(222, 1, 'HTC Legend', '11899000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>384 MB RAM, 512 MB ROM</li>\r\n<li>CPU: Qualcomm MSM 7227, 600 MHz processor</li>\r\n<li>Mạng 3G HSDPA, 7.2 Mbps</li>\r\n<li> HSUPA, 2 Mbps</li>\r\n<li>M&aacute;y ảnh 5.0 MP, hỗ trợ LED Flash</li>\r\n<li>Google Search, Maps, Gmail</li>\r\n<li>Xem văn bản, chỉnh sửa ảnh</li>\r\n<li>Jack tai nghe 3.5mm </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(223, 1, 'HTC Magic ', '11399000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Kết nối 3.5G tốc độ cao v&agrave; c&ocirc;ng nghệ Wi-Fi c&ugrave;ng khả năng truyền tải li&ecirc;n tục</li>\r\n<li>Tăng khả năng duyệt web với việc mở nhiều cửa sổ c&ugrave;ng l&uacute;c v&agrave; t&igrave;m từ kho&aacute; ngay tr&ecirc;n trang</li>\r\n<li>M&agrave;n h&igrave;nh cảm ứng chạm 3.2-inch độ ph&acirc;n giải HVGA (320x480 pixel)</li>\r\n<li>M&aacute;y ảnh 3.2 Megapixel với chức năng lấy n&eacute;t tự động</li>\r\n<li>Lu&ocirc;n giữ li&ecirc;n lạc với văn ph&ograve;ng c&ugrave;ng Microsoft Exchange ActiveSync</li>\r\n<li>Tr&igrave;nh quản l&yacute; ứng dụng - SlideME với khả năng truy cập v&agrave; tải c&aacute;c ứng dụng v&agrave; tr&ograve; chơi phong ph&uacute;</li>\r\n<li>Dễ d&agrave;ng xem t&agrave;i liệu PDF, Microsoft&reg; Word v&agrave; bảng t&iacute;nh Excel</li>\r\n<li>Bi điều khiển gi&uacute;p thao t&aacute;c dễ d&agrave;ng </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(224, 1, 'HTC Diamond2  ', '10999000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>M&agrave;n h&igrave;nh TFT, 65.536 m&agrave;u, rộng 3.2 inches </li>\r\n<li>M&aacute;y ảnh 5.0 MP (2592 x 1944 pixels) </li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp: C&oacute; </li>\r\n<li>Nghe nhạc: MP3, WAV, AAC, WMA, AAC+ </li>\r\n<li>Xem Phim: 3GP, WMV, MP4 </li>\r\n<li>Kết nối 3G: HSDPA 7.2 Mbps, Wifi: Wi-Fi 802.11 b/g, GPS: A-GPS, Bluetooth: C&oacute;</li>\r\n<li>Ứng dụng văn ph&ograve;ng: Xem file văn bản </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1);
INSERT INTO `fs_product` (`id`, `category_id`, `name`, `price`, `desc`, `detail`, `create_at`, `qty`, `note`, `sold`, `view`, `active`) VALUES
(225, 1, 'HTC HD mini  ', '10799000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Sử dụng giao diện Sense rất đẹp</li>\r\n<li>384 MB RAM, 512 MB ROM</li>\r\n<li>CPU: Qualcomm 7227, 600 MHz processo</li>\r\n<li>M&aacute;y ảnh 5.0 MP, hỗ trợ lấy n&eacute;t tự động</li>\r\n<li>Mạng 3G với HSDPA, 7.2 Mbps</li>\r\n<li> HSUPA, 2 Mbps</li>\r\n<li>Chức năng định vị GPS, Bluetooth, Wifi </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(226, 1, 'HTC Aria', '9949000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Hệ điều h&agrave;nh Android 2.1</li>\r\n<li>M&aacute;y ảnh 5.0 MP, lấy n&eacute;t tự động</li>\r\n<li>Mạng 3G với tốc độ truyền tải 7.2 Mbps</li>\r\n<li>Kết nối Wifi, GPS, Bluetooth</li>\r\n<li>Google Search, Maps, Gmail</li>\r\n<li>YouTube, Google Talk, Picasa integration </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(227, 1, 'HTC Hero  ', '8999000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Kết nối 3.5G tốc độ cao v&agrave; c&ocirc;ng nghệ WiFi</li>\r\n<li> Tăng khả năng duyệt web với việc mở nhiều cửa sổ c&ugrave;ng l&uacute;c v&agrave; t&igrave;m từ kho&aacute; ngay tr&ecirc;n trang</li>\r\n<li> Lu&ocirc;n giữ li&ecirc;n lạc với văn ph&ograve;ng c&ugrave;ng Microsoft Exchange ActiveSync&reg;</li>\r\n<li> Tr&igrave;nh quản l&yacute; ứng dụng </li>\r\n<li> SlideME với khả năng truy cập v&agrave; tải c&aacute;c ứng dụng v&agrave; tr&ograve; chơi phong ph&uacute;</li>\r\n<li> Dễ d&agrave;ng xem t&agrave;i liệu PDF, Microsoft&reg; Word v&agrave; bảng t&iacute;nh Excel</li>\r\n<li> Nhận dạng chữ viết tay v&agrave; hỗ trợ tiếng Hoa</li>\r\n<li> Bi điều khiển gi&uacute;p thao t&aacute;c dễ d&agrave;ng </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(228, 1, 'HTC Touch Cruise T4242  ', '8979000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Giao diện sử dụng HTC TouchFLO 3D trực quan v&agrave; th&acirc;n thiện với đầu ng&oacute;n tay</li>\r\n<li>Pocket Office (Word, Excel, PowerPoint, PDF viewer) v&agrave; Push Email</li>\r\n<li>Lướt web tr&ecirc;n tốc độ băng th&ocirc;ng rộng với WiFi hoặc HSDPA l&ecirc;n đến 7.2Mbps</li>\r\n<li>Chức năng định vị GPS</li>\r\n<li>Chế độ NaviPanel biến chiếc điện thoại th&ocirc;ng minh của bạn th&agrave;nh một người dẫn đường từng bước một cực kỳ đơn giản</li>\r\n<li>Camera 3.15 MP, quay phim</li>\r\n<li>Sử dụng HTC Footprints&trade; để x&acirc;y dựng bộ sưu tập ri&ecirc;ng về những khoảnh khắc kỷ niệm m&agrave; bạn c&oacute; thể thăm lại bất cứ khi n&agrave;o </li>\r\n<li>Kết nối Bluetooth </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(229, 1, 'HTC Tattoo  ', '7999000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Hệ điều h&agrave;nh Android OS, v1.5</li>\r\n<li>256 MB RAM, 512 MB ROM</li>\r\n<li>CPU: Qualcomm MSM 7225, 528 MHz processor</li>\r\n<li>Camera 3.2 MP, hỗ trợ lấy n&eacute;t tự động</li>\r\n<li>Mạng 3G với tốc độ truyền dữ liệu 7.2 Mbps</li>\r\n<li>Kết nối Wifi, Bluetooth 2.0</li>\r\n<li>Chức năng định vị GPS</li>\r\n<li>Đ&agrave;i FM </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(230, 1, 'HTC Snap', '6999000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Thiết kế với b&agrave;n ph&iacute;m QWERTY đầy đủ</li>\r\n<li>Hệ điều h&agrave;nh Windows Mobile 6.1</li>\r\n<li>CPU: 528 MHz processor</li>\r\n<li>ROM 256 MB, RAM 192 MB</li>\r\n<li>Kết nối 3G với tốc độ download l&ecirc;n đến 7.2 Mbps</li>\r\n<li>Camera 2.0 MP, hỗ trợ quay phim</li>\r\n<li>Chức năng định vị to&agrave;n cầu GPS</li>\r\n<li>Kết nối Wifi, Bluetooth </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(231, 1, 'HTC Touch 3G', '6999000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>M&agrave;n h&igrave;nh cảm ứng 2.8-inch phẳng.</li>\r\n<li>Lướt web v&agrave; download tốc độ băng th&ocirc;ng rộng với kết nối HSDPA l&ecirc;n đến 7.2Mpbs.</li>\r\n<li>Giao  diện sử dụng TouchFLO&trade; thế hệ mới đ&aacute;p ứng tuyệt vời với c&aacute;c thao t&aacute;c  của đầu ng&oacute;n tay khi cuộn t&igrave;m danh bạ, lướt web v&agrave; mở t&iacute;nh năng giải tr&iacute;  đa phương tiện.</li>\r\n<li>Thiết kế nhỏ gọn, nhẹ v&agrave; thời trang.</li>\r\n<li>M&aacute;y ảnh số 3.2 megapixel cho những bức ảnh v&agrave; video chất lượng.</li>\r\n<li>Tăng dung lượng lưu trữ l&ecirc;n đến 16GB với khe cắm thẻ nhớ microSD&trade;.</li>\r\n<li>Mạnh mẽ với hệ điều h&agrave;nh Windows Mobile&reg; 6.1 Professional </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(232, 1, 'HTC Wildfire  ', '6989000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Hệ điều h&agrave;nh Android 2.1 (Eclair)</li>\r\n<li>M&aacute;y ảnh 5.0 MP, hỗ trợ LED flash</li>\r\n<li>Mạng 3G với tốc độ truyền tải 7.2 Mbps</li>\r\n<li>Kết nối Wifi, chức năng định vị GPS</li>\r\n<li>Ph&iacute;m t&igrave;m kiếm chuy&ecirc;n dụng</li>\r\n<li>Google Search, Maps, Gmail, YouTube, Google Talk, Picasa</li>\r\n<li>Facebook, Flickr, Twitter applications </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(233, 1, 'HTC Viva T2223  ', '4989000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Hệ điệu h&agrave;nhWindows Mobile 6.1 Professional</li>\r\n<li>M&agrave;n h&igrave;nh cảm ứng 2.8 inch, QVGA TFT LCD</li>\r\n<li>Chức năng Push Email</li>\r\n<li>Giao diện sử dụng HTC TouchFLO 3D cực kỳ trực quan v&agrave; th&acirc;n thiện với đầu ng&oacute;n tay</li>\r\n<li>Pocket Office (Word, Excel, PowerPoint, OneNote, PDF viewer)</li>\r\n<li>Memory: ROM 256 MB/ RAM 128 MB</li>\r\n<li>Chipset: TI&rsquo;s OMAP 850, 200 MHz</li>\r\n<li>Camera 2.0 MP</li>\r\n<li>Kết nối: Bluetooth 2.0, Wifi </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(234, 1, 'HTC Smart  ', '4499000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Hệ điều h&agrave;nh Brew Mobile</li>\r\n<li>256 MB RAM, 256 MB ROM</li>\r\n<li>CPU tốc độ xử l&yacute; 300 MHz processor</li>\r\n<li>M&aacute;y ảnh 3.15 MP, hỗ trợ LED Flash</li>\r\n<li>M&aacute;y nghe nhạc, xem phim nhiều định dạng, jack loa 3.5 mm</li>\r\n<li>Kết nối mạng 3G, Bluetooth, USB, GPRS </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(235, 1, 'HTC Google Nexus One', '0.0000', '<p>- M&agrave;n h&igrave;nh cảm ứng rộng 3.7 inches<br />- M&aacute;y ảnh 5 MP, hỗ trợ quay phim<br />- 512MB RAM, 512MB ROM&lt;br&gt;<br />- CPU: Qualcomm Snapdragon QSD8250, 1 GHz processor<br />- Kết nối Internet với Wifi tốc độ cao<br />- Chức năng định vị GPS</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(236, 1, 'Mobell M770', '1789000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>M&agrave;n h&igrave;nh cảm ứng k&eacute;o thả độc đ&aacute;o</li>\r\n<li>Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li>M&aacute;y ảnh 3.2 MP, hỗ trợ quay phim</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp, jack tai nghe 3.5mm</li>\r\n<li>Chức năng backup danh bạ v&agrave;o thẻ nhớ</li>\r\n<li>Lắc tay đổi nhạc, video tắt v&agrave; mở m&aacute;y </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(237, 1, 'Mobell M760 ', '1589000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Kiểu d&aacute;ng sang trọng, mạnh mẽ</li>\r\n<li>M&agrave;n h&igrave;nh cảm ứng rộng 3.2 inches</li>\r\n<li>Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li>M&aacute;y ảnh 2.0 MP, hỗ trợ quay phim</li>\r\n<li>Chặn cuộc gọi, Ebuddy,Opera, Facebook, MSN </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(238, 1, 'Mobell M750  ', '1489000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>M&agrave;n h&igrave;nh cảm ứng với chức năng k&eacute;o thả</li>\r\n<li>Hỗ trợ 2 Sim 2 S&oacute;ng</li>\r\n<li>M&aacute;y ảnh VGA, hỗ trợ quay phim</li>\r\n<li>M&aacute;y nghe nhạc MP3, xem phim MP4, 3GP, AVI</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp</li>\r\n<li>Chức năng gửi v&agrave; nhận mail </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(239, 1, 'Mobell M660 ', '1389000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li>M&aacute;y ảnh 2.0 MP, hỗ trợ quay phim</li>\r\n<li>M&aacute;y nghe nhạc MP3</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp</li>\r\n<li>Kết nối Bluetooth, USB, GPRS </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(240, 1, 'Mobell MW660  ', '1389000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Hỗ trợ 3G với Videocall</li>\r\n<li>M&aacute;y ảnh 3.2 MP, hỗ trợ quay phim</li>\r\n<li>M&aacute;y nghe nhạc, xem phim</li>\r\n<li>Chức năng lắc tay đổi nhạc, h&igrave;nh nền</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp</li>\r\n<li>Kết nối Bluetooth, USB, GPRS </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(241, 1, 'Mobell M620  ', '1389000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Điện thoại xem Titvi Analog</li>\r\n<li>Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li>M&aacute;y ảnh VGA, hỗ trợ webcam</li>\r\n<li>M&aacute;y nghe nhạc MP3, xem phim 3GP</li>\r\n<li>Đ&agrave;i FM, kết nối Bluetooth, USB</li>\r\n<li>Chức năng lắc tay đổi nhạc, h&igrave;nh nền </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(242, 1, 'Mobell M720  ', '1289000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li>M&aacute;y nghe nhạc MP3 với giao diện độc d&aacute;o</li>\r\n<li>Tua nhạc bằng tay v&agrave; quản l&yacute; nhạc theo album</li>\r\n<li>Camera 2.0 MP, hỗ trợ quay phim</li>\r\n<li>Đ&agrave;i FM, kết nối Bluetooth </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(243, 1, 'Mobell M560', '1189000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li>M&aacute;y nghe nhạc MP3, xem phim MP4, 3GP</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp</li>\r\n<li>Kết nối Bluetooth, USB</li>\r\n<li>Chức năng chuyển giọng n&oacute;i </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(244, 1, 'Mobell M430  ', '1189000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Hỗ trợ 3 Sim 3 S&oacute;ng online</li>\r\n<li>M&aacute;y ảnh VGA, hỗ trợ quay phim</li>\r\n<li>M&aacute;y nghe nhạc MP3, xem phim 3GP</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp, chức năng ghi &acirc;m</li>\r\n<li>Kết nối Bluetooth, USB, GPRS </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(245, 1, 'Mobell M610', '1189000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Thiết kế trượt thời trang v&agrave; m&agrave;n h&igrave;nh rộng 2.8 inches</li>\r\n<li>Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li>Chức năng t&igrave;m kiếm danh bạ th&ocirc;ng minh theo số</li>\r\n<li>Camera VGA, hỗ trợ quay phim</li>\r\n<li>Nghe nhạc xem phim MP3, MP4, 3GP, AVI</li>\r\n<li>Đ&agrave;i FM, Bluetooth </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(246, 1, 'Mobell M530 ', '1189000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li>M&aacute;y ảnh 2.0 MP, hỗ trợ quay phim</li>\r\n<li>M&aacute;y nghe nhạc MP3</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(247, 1, 'Mobell M520', '1089000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>&Acirc;m nhạc đến mọi nh&agrave;</li>\r\n<li>Hỗ trợ 2 Sim 2 s&oacute;ng online</li>\r\n<li>M&aacute;y nghe nhạc MP3, MP4</li>\r\n<li>Camera VGA, hỗ trợ quay phim</li>\r\n<li>Đ&agrave;i FM, kết nối Bluetooth </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(248, 1, 'Mobell M375', '1049000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Thiết kế đơn giản thời trang</li>\r\n<li>Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li>M&aacute;y ảnh VGA, hỗ trợ quay phim</li>\r\n<li>M&aacute;y nghe nhạc MP3</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp</li>\r\n<li>Chức năng đ&egrave;n pin </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(249, 1, 'Mobell M370 ', '989000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Thiết kế thời trang</li>\r\n<li>Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li>M&aacute;y ảnh 2.0 MP, hỗ trợ webcam</li>\r\n<li>M&aacute;y nghe nhạc MP3, xem phim MP4, 3GP</li>\r\n<li>Đ&agrave;i FM, Bluetooth </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(250, 1, 'Mobell M330', '919000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li> Camera VGA, hỗ trợ quay phim</li>\r\n<li> Thẻ nhớ ngo&agrave;i hỗ trợ l&ecirc;n đến 2GB</li>\r\n<li> M&aacute;y nghe nhạc MP3, xem phim 3GP</li>\r\n<li> Đ&agrave;i FM, ghi &acirc;m</li>\r\n<li> Chặn cuộc gọi, thay đổi giọng n&oacute;i cuộc gọi </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(251, 1, 'Mobell M320', '769000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Thiết kế thời trang</li>\r\n<li>Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li>M&aacute;y nghe nhạc MP3</li>\r\n<li>Kết nối GPRS</li>\r\n<li>Chặn cuộc gọi</li>\r\n<li>Chức năng đ&egrave;n pin </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(252, 1, 'Mobell M110', '750000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Thiết kế trang nh&atilde; với b&agrave;n ph&iacute;m Qwerty</li>\r\n<li>Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li>Thẻ nhớ ngo&agrave;i MicroSD</li>\r\n<li>M&aacute;y nghe nhạc MP3, xem phim 3GP</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp, đ&egrave;n pin </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(253, 1, 'Mobell M230', '669000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Thiết kế thời trang, trẻ trung</li>\r\n<li> Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li> Hỗ trợ thẻ nhớ ngo&agrave;i l&ecirc;n đến 2GB</li>\r\n<li> M&aacute;y nghe nhạc MP3</li>\r\n<li> Đ&agrave;i FM</li>\r\n<li> Chức năng chặn cuộc gọi, đổi giọng n&oacute;i, đ&egrave;n pin </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(254, 1, 'Mobell M220', '629000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Thiết kế thời trang</li>\r\n<li>Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li>Hỗ trợ thẻ nhớ ngo&agrave;i l&ecirc;n đến 2GB</li>\r\n<li>M&aacute;y nghe nhạc MP3</li>\r\n<li>Đ&agrave;i FM</li>\r\n<li>Chức năng chặn cuộc gọi, đ&egrave;n pin </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(255, 1, 'Mobell M270', '59900.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Kiểu d&aacute;ng trượt thời trang</li>\r\n<li> Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li> M&aacute;y nghe nhạc MP3</li>\r\n<li> Đ&agrave;i FM t&iacute;ch hợp</li>\r\n<li> Kết nối Bluetooth USB </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(256, 1, 'Mobell M228', '599000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Hỗ trợ 2 Sim 2 S&oacute;ng online, 2 khe thẻ nhớ</li>\r\n<li>M&aacute;y ảnh VGA, đ&egrave;n flash</li>\r\n<li>M&aacute;y nghe nhạc MP3</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp</li>\r\n<li>Kết nối Bluetooth </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(257, 1, 'Mobell M238  ', '589000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Thiết kế thanh mảnh thời trang</li>\r\n<li>Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li> M&aacute;y ảnh VGA</li>\r\n<li>M&aacute;y nghe nhạc MP3</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(258, 1, 'Mobell M260', '499000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li>M&aacute;y ảnh VGA, hỗ trợ quay phim</li>\r\n<li>Hỗ trợ thẻ nhớ ngo&agrave;i l&ecirc;n đến 2GB</li>\r\n<li>M&aacute;y nghe nhạc MP3</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(259, 1, 'Mobell M218', '490000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li>Thẻ nhớ ngo&agrave;i MicroSD hỗ trợ đến 2GB</li>\r\n<li>M&aacute;y nghe nhạc MP3</li>\r\n<li>Đ&agrave;i FM, ghi &acirc;m</li>\r\n<li>Chức năng chặn cuộc gọi</li>\r\n<li>Hỗ trợ đ&egrave;n pin </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(260, 1, 'Mobell M190', '0.0000', '<p>- Thiết kế nhỏ gọn thời trang<br />- Hỗ trợ thẻ ngo&agrave;i l&ecirc;n đến 1Gb<br />- M&aacute;y nghe nhạc MP3<br />- Chức năng ghi &acirc;m<br />- Kết nối USB</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(261, 1, 'Lenovo X1m', '2790000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Thiết kế thời trang với m&agrave;n h&igrave;nh cảm ứng rộng</li>\r\n<li> M&aacute;y ảnh 3.0 MP, hỗ trợ quay phim</li>\r\n<li> M&aacute;y nghe nhạc, xem phim nhiều định dạng</li>\r\n<li> Kết nối USB, Bluetooth, GPRS </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(262, 1, 'Lenovo S700', '2680000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Thiết kế nắp gập thời trang</li>\r\n<li> Camera 3.2 MP, hỗ trợ flash</li>\r\n<li> M&aacute;y nghe nhạc MP3 với c&aacute;c ph&iacute;m chơi nhạc chuy&ecirc;n dụng</li>\r\n<li> Đ&agrave;i FM</li>\r\n<li> Kết nối Bluetooth, USB, GPRS </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(263, 1, 'Lenovo P80', '2389000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Thiết kế nắp gập mỏng với vỏ hợp kim</li>\r\n<li> C&ocirc;ng nghệ m&agrave;n h&igrave;nh OLED</li>\r\n<li> Camera 3.0&nbsp;</li>\r\n<li> MP, hỗ trợ quay phim</li>\r\n<li> M&aacute;y nghe nhạc MP3, xem phim 3GP, MP4</li>\r\n<li> Đ&agrave;i FM</li>\r\n<li> Kết nối Bluetooh, USB, GPRS </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(264, 1, 'Lenovo i350', '1990000.0000', '<p>- Thiết kế thanh mảnh thời trang<br /> - Hỗ trợ 2 Sim 2 S&oacute;ng online<br /> - M&aacute;y ảnh 2.0 MP, hỗ trợ quay phim<br /> - Đ&agrave;i FM t&iacute;ch hợp, jack tai nghe 3.5<br /> - Kết nối Bluetooth, USB, GPRS</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(265, 1, 'Lenovo i61', '1989000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>M&agrave;n h&igrave;nh cảm ứng rộng 3.2 inches</li>\r\n<li>M&aacute;y ảnh 3.2 MP, quay phim với độ n&eacute;t cao 1280 &times; 720 @ 23fps</li>\r\n<li>M&aacute;y nghe nhạc, xem phim MP3, RM, FLV, AVI, MP4, 3GP</li>\r\n<li>Đ&agrave;i FM, jack loa 3.5mm</li>\r\n<li>Kết nối USB, Bluetooth, GPRS</li>\r\n<li>Chặn cuộc gọi, chặn tin nhắn </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(266, 1, 'Lenovo S520', '1949000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Kiểu d&aacute;ng trượt thời trang, s&agrave;nh điệu</li>\r\n<li>Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li>M&aacute;y ảnh 2.0 MP, hỗ trợ quay phim</li>\r\n<li>M&aacute;y nghe nhạc MP3</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp</li>\r\n<li>Kết nối Bluetooth, USB </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(267, 1, 'Lenovo P629 ', '1859000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li>M&aacute;y ảnh 1.3 MP, hỗ trợ l&agrave;m webcam</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp, jack tai nghe 3.5mm</li>\r\n<li>Ghi &acirc;m, chặn cuộc gọi, t&iacute;nh năng chống trộm</li>\r\n<li>Điều khiển thiết bị kh&aacute;c qua Bluetooth</li>\r\n<li>Lưu trữ điện danh bạ v&agrave;o thẻ nhớ </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(268, 1, 'Lenovo P50', '1789000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Kiểu dạng thanh thời trang</li>\r\n<li> M&aacute;y ảnh 2.0 MP, hỗ trợ quay phim</li>\r\n<li> M&aacute;y nghe nhạc MP3, xem phim MP4, 3GP</li>\r\n<li> Kết nối Bluetooth, USB, GPRS </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(269, 1, 'Lenovo P60', '1629000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Thiết kế dạng gập thời trang với vỏ th&eacute;p</li>\r\n<li> Camera 2.0 MP, hỗ trợ quay phim </li>\r\n<li> M&aacute;y nghe nhạc MP3, AAC, AAC+</li>\r\n<li> Đ&agrave;i FM t&iacute;ch hợp</li>\r\n<li> Kết nối Bluetooth, GPRS, USB </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(270, 1, 'Lenovo A312', '1389000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Hỗ trợ 2 Sim 2 s&oacute;ng online</li>\r\n<li>M&aacute;y ảnh 1.3 MP hỗ trợ quay phim</li>\r\n<li>M&aacute;y nghe nhạc MP3, jack loa 3.5mm</li>\r\n<li>Đ&agrave;i FM với chức năng ghi &acirc;m FM</li>\r\n<li>Kết nối Bluetooth, USB</li>\r\n<li>Chặn cuộc gọi, chặn tin nhắn </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(271, 1, 'Lenovo P580', '1310000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Thiết kế thanh mỏng với vỏ hợp kim</li>\r\n<li> Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li> Camera 1.3 MP, hỗ trợ quay phim</li>\r\n<li> M&aacute;y nghe nhạc MP3</li>\r\n<li> Đ&agrave;i FM</li>\r\n<li> Kết nối Bluetooh, USB, GPRS </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 1, 1),
(272, 1, 'Lenovo i300  ', '1170000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Kiểu d&aacute;ng thời trang</li>\r\n<li> Camera 1.3 MP, hỗ trợ quay phim</li>\r\n<li> M&aacute;y nghe nhạc, xem phim MP3, MP4, 3GP</li>\r\n<li> Đ&agrave;i FM, jack loa 3.5mm</li>\r\n<li> Kết nối Blutooth, USB, GPRS </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(273, 1, 'Lenovo A310 ', '1150000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Thiết kế dạng trượt thời trang</li>\r\n<li> Camera VGA, hỗ rợ quay phim</li>\r\n<li> M&aacute;y nghe nhạc MP3</li>\r\n<li> Đ&agrave;i FM</li>\r\n<li> Kết nối USB, Bluetooth, GPRS </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(274, 1, 'Lenovo A332', '989000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Vỏ cao su chống thấm v&agrave; chống va chạm</li>\r\n<li>Hỗ trợ 2 Sim 2 s&oacute;ng online</li>\r\n<li>M&aacute;y ảnh 1.3 MP, hỗ trợ quay phim</li>\r\n<li>M&aacute;y nghe nhạc MP3</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp, jack tai nghe 3.5mm</li>\r\n<li>Kết nối Bluetooth, USB, GPRS</li>\r\n<li>Chặn cuộc gọi, tin nhắn </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(275, 1, 'Lenovo A330  ', '910000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li> Camera VGA MP, hỗ trợ quay phim</li>\r\n<li> M&aacute;y nghe nhạc MP3</li>\r\n<li> Đ&agrave;i FM nghe loa ng&ograve;ai&nbsp;</li>\r\n<li> kh&ocirc;ng cần tai nghe</li>\r\n<li> Hỗ trợ đ&egrave;n pin</li>\r\n<li> Kết nối Bluetooh, USB, GPRS </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(276, 1, 'Lenovo E228', '749000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Thiết kế với kiểu d&aacute;ng trượt thời trang</li>\r\n<li> Camera 0.1 MP</li>\r\n<li> Hỗ trợ thẻ nhớ ng&ograve;ai l&ecirc;n đến 4GB</li>\r\n<li> M&aacute;y nghe nhạc MP3</li>\r\n<li> Đ&agrave;i FM</li>\r\n<li> Kết nối USB mini, GPRS </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(277, 1, 'Lenovo E268', '749000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Thiết kế nắp gập vỏ s&ograve; thời trang</li>\r\n<li>Hỗ trợ thẻ nhớ ngo&agrave;i MicroSD</li>\r\n<li>M&aacute;y nghe nhạc MP3</li>\r\n<li>Hỗ trợ ghi &acirc;m</li>\r\n<li>Chức năng chặn tin nhắn, cuộc gọi </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(278, 1, 'Lenovo E218 ', '590000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Dạng thanh cổ điển</li>\r\n<li> M&aacute;y nghe nhạc MP3, AAC</li>\r\n<li> Đ&agrave;i FM</li>\r\n<li> Kết nối GPRS, USB </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(279, 1, 'Lenovo E156 ', '549000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Thiết kế đơn giản nhưng thời trang</li>\r\n<li>Hỗ trợ thẻ nhớ ngo&agrave;i l&ecirc;n đến 8GB</li>\r\n<li>M&aacute;y nghe nhạc MP3</li>\r\n<li>Bảo mật ri&ecirc;ng tư, chặn cuộc gọi, chặn tin nhắn </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(280, 1, 'Lenovo A910 ', '0.0000', '<p>- Thiết kế mạnh mẽ với m&agrave;n h&igrave;nh cảm ứng rộng 2.8 inches<br />- M&aacute;y ảnh 2.0 MP, hỗ trợ quay phim<br />- M&aacute;y nghe nhạc MP3, xem phim MP4, 3GP<br />- Đ&agrave;i FM t&iacute;ch hợp<br />- Chức năng định vị GPS<br />- Kết nối Bluetooth, USB</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(281, 1, 'KONKA M526 ', '0.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Nhận diện người gọi bằng h&igrave;nh ảnh</li>\r\n<li> Nhạc chu&ocirc;ng video</li>\r\n<li> Nghe nhạc Mp3,xem phim Mp4</li>\r\n<li> FM radio </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(282, 1, 'KONKA C676', '0.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>M&agrave;n h&igrave;nh&nbsp;</li>\r\n<li>TFT 256k m&agrave;u</li>\r\n<li> &nbsp;</li>\r\n<li>Đ&agrave;i FM</li>\r\n<li> Ghi&nbsp;</li>\r\n<li>&acirc;m&nbsp;</li>\r\n<li> Nhạc chu&ocirc;ng Mp3 </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(283, 1, 'KONKA D316  ', '0.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>M&aacute;y nghe nhạc Mp3</li>\r\n<li> Xem phim Mp4</li>\r\n<li> Hỗ trợ buletooth</li>\r\n<li> M&agrave;n h&igrave;nh rộng 2.2 inch </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(284, 1, 'KONKA D363', '0.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>M&aacute;y nghe nhạc Mp3</li>\r\n<li> Xem phim Mp4</li>\r\n<li> Hỗ trợ bluetooth</li>\r\n<li> GPRS </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(285, 1, 'KONKA D169 ', '0.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>M&aacute;y nghe nhạc MP3</li>\r\n<li> Camera 2.0</li>\r\n<li> Xem phim MP4</li>\r\n<li> GPRS </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(286, 1, 'KONKA D163', '0.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>M&aacute;y nghe nhạc Mp3</li>\r\n<li> Xem phim Mp4</li>\r\n<li> Camera 2.0</li>\r\n<li> GPRS </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(287, 1, 'F-Mobile B900', '2389000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Điện thoại 3G với mẫu m&atilde; cả Iphone</li>\r\n<li>M&aacute;y ảnh 2.0 MP, hỗ trợ quay phim</li>\r\n<li>Chức năng webcam</li>\r\n<li>Mạng 3G với tốc độ truyền tải 3.6 Mbps</li>\r\n<li>Kết nối Bluetooth, USB, GPRS </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(288, 1, 'FPT F99 3G ', '2189000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Điện thoại 3G 2 Sim 2 S&oacute;ng</li>\r\n<li>M&aacute;y ảnh VGA, hỗ trợ quay phim </li>\r\n<li>M&aacute;y nghe nhạc, xem phim nhiều định dạng</li>\r\n<li>Kết nối Wifi, Bluetooth, USB</li>\r\n<li>Kho ứng dụng Việt miễn ph&iacute; </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(289, 1, 'F-Mobile F99i  ', '1949000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Thiết kế mạnh mẽ với b&agrave;n ph&iacute;m Qwerty</li>\r\n<li>Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li>M&aacute;y ảnh 1.3 MP</li>\r\n<li>M&aacute;y nghe nhạc MP3, xem phim 3GP, MP4</li>\r\n<li>Kết nối Wifi tốc độ cao, Bluetooth, GPRS</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(290, 1, 'F-Mobile B940', '1889000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Thiết kế dạng thanh với b&agrave;n ph&iacute;m Qwerty</li>\r\n<li>Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li>M&aacute;y ảnh 2.0 MP, hỗ trợ quay phim</li>\r\n<li>M&aacute;y nghe nhạc MP3</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp</li>\r\n<li>Kết nối Wifi, Bluetooth, GPRS</li>\r\n<li>C&agrave;i đặt sẵn chương tr&igrave;nh chat Vitalk, email, Opera Mini, Facebook </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(291, 1, 'F-Mobile F99', '1889000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li>M&aacute;y ảnh 2.0 MP, hỗ trợ quay phim</li>\r\n<li>Kết nối internet với Wifi tốc độ cao</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp, jack tai nghe 3.5mm</li>\r\n<li>Kết nối Bluetooth, USB, GPRS</li>\r\n<li>C&agrave;i đặt Video tắt v&agrave; mở m&aacute;y </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(292, 1, 'F-Mobile B950  ', '1889000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li> Kết nối internet với Wifi tốc độ cao</li>\r\n<li> M&aacute;y ảnh 2.0 MP, hỗ trợ Webcam</li>\r\n<li> M&aacute;y nghe nhạc với jack tai nghe 3.5 mm</li>\r\n<li> C&agrave;i đặt Video tắt mở m&aacute;y. </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(293, 1, 'F-Mobile F88 ', '1789000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Kiểu thanh với b&agrave;n ph&iacute;m Qwerty đầy đủ</li>\r\n<li>M&aacute;y ảnh 1.3 MP, hỗ trợ webcam</li>\r\n<li>M&aacute;y nghe nhạc MP3</li>\r\n<li>Kết nối internet với Wifi tốc độ cao</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp, Bluetooth, USB </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(294, 1, 'F-Mobile B930', '1689000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li> M&aacute;y ảnh 2.0 MP, lấy n&eacute;t tự động</li>\r\n<li> Kết nối Wifi, Bluetooth, GPRS</li>\r\n<li> Hỗ trợ: chat Vitalk, Email, Opera Mini, Facebook</li>\r\n<li> Lắc tay đổi nhạc, h&igrave;nh nền </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(295, 1, 'F-Mobile C890', '1649000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Điện thoại nắp gập thời trang, sang trọng với vỏ hợp kim nh&ocirc;m.</li>\r\n<li>Hỗ trợ 2 Sim 2 s&oacute;ng online</li>\r\n<li>M&aacute;y ảnh 2.0 MP, hỗ trợ quay phim</li>\r\n<li>Nghe nhạc mp3 với loa k&eacute;p cho chất lượng &acirc;m thanh ho&agrave;n hảo</li>\r\n<li>Ghi &acirc;m kh&ocirc;ng giới hạn cuộc gọi 2 chiều</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp, Bluetooth </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(296, 1, 'F-Mobile S800', '1489000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Kiểu d&aacute;ng thời trang với nhiều m&agrave;u sắc</li>\r\n<li> Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li> M&aacute;y ảnh VGA, hỗ trợ quay phim</li>\r\n<li> M&aacute;y nghe nhạc MP3, đ&agrave;i FM</li>\r\n<li> Kết nối Bluetooth, USB, GPRS </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(297, 1, 'F-Mobile S880i ', '1469000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Thiết kế kiểu trượt thời trang với vỏ kim loại</li>\r\n<li> Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li> M&aacute;y ảnh VGA, hỗ trợ quay phim</li>\r\n<li> M&aacute;y nghe nhạc MP3, đ&agrave;i FM</li>\r\n<li> Kết nối Bluetooth, USB, GPRS </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(298, 1, 'F-Mobile B750 ', '1449000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Kiểu d&aacute;ng thời trang, nhiều m&agrave;u sắc lựa chọn</li>\r\n<li>B&agrave;n ph&iacute;m QWERTY, bi lăn điều hướng</li>\r\n<li>Camera VGA, hỗ trợ quay phim</li>\r\n<li>Nghe nhạc MP3, xem phim 3GP</li>\r\n<li>Đ&agrave;i FM, Bluetooth</li>\r\n<li>Chat Yahoo qua ứng dụng Vitalk </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(299, 1, 'F-Mobile S700  ', '1449000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Kiểu d&aacute;ng thời trang với nhiều m&agrave;u sắc</li>\r\n<li> Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li> M&aacute;y ảnh VGA, hỗ trợ quay phim</li>\r\n<li> M&aacute;y nghe nhạc MP3, đ&agrave;i FM</li>\r\n<li> Kết nối Bluetooth, USB, GPRS </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(300, 1, 'F-Mobile B850', '1449000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>M&agrave;n h&igrave;nh cảm ứng rộng 3.0 inches</li>\r\n<li>Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li>M&aacute;y ảnh 2.0 MP hỗ trợ quay phim</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp</li>\r\n<li>C&agrave;i đặt Video khi tắt mở m&aacute;y</li>\r\n<li>Đọc s&aacute;ch điện tử, lắc tay đổi nhạc, h&igrave;nh </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 2, 1),
(301, 1, 'F-Mobile B880  ', '1449000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Hỗ trợ 2 Sim 2 s&oacute;ng online</li>\r\n<li> M&aacute;y ảnh VGA, hỗ trợ quay phim</li>\r\n<li> M&aacute;y nghe nhạc MP3</li>\r\n<li> Đ&agrave;i FM t&iacute;ch hợp, Bluetooth</li>\r\n<li> Ghi &acirc;m kh&ocirc;ng giới hạn </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(302, 1, 'F-Mobile B650', '1449000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>B&agrave;n ph&iacute;m Qwerty đầy đủ</li>\r\n<li> Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li> M&aacute;y ảnh VGA, hỗ trợ webcam</li>\r\n<li> M&aacute;y nghe nhạc MP3, xem phim 3GP, MP4</li>\r\n<li> Đ&agrave;i FM, Bluetooth, USB </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(303, 1, 'F-Mobile B730', '1389000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Kiểu d&aacute;ng thời trang với b&agrave;n ph&iacute;m Qwerty</li>\r\n<li>M&aacute;y ảnh VGA, hỗ trợ quay phim</li>\r\n<li>M&aacute;y nghe nhạc MP3, xem phim MP4, 3GP</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(304, 1, 'F-Mobile B720', '1349000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Thiết kế ấn tượng, phong c&aacute;ch \"qwerty\" mới mẻ</li>\r\n<li>Chất liệu vỏ kim loại cao cấp</li>\r\n<li>Ứng dụng game c&agrave;i sẵn độc đ&aacute;o: tak - battle city</li>\r\n<li>Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li>M&aacute;y ảnh VGA, hỗ trợ quay phim, webcam </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(305, 1, 'F-Mobile B700', '1349000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Thiết kế vỏ kim loại cao cấp</li>\r\n<li> Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li> M&aacute;y ảnh VGA, hỗ trợ quay phim</li>\r\n<li> M&aacute;y nghe nhạc, xem phim</li>\r\n<li> Kết nối Bluetooth </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(306, 1, 'F-Mobile S550', '1289000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Kiểu d&aacute;ng trượt thanh mảnh</li>\r\n<li> M&aacute;y ảnh VGA, hỗ trợ quay phim</li>\r\n<li> M&aacute;y nghe nhạc, xem phim MP3, 3GP</li>\r\n<li> Đ&agrave;i FM t&iacute;ch hợp</li>\r\n<li> Kết nối Bluetooth, USB, GPRS </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(307, 1, 'F-Mobile S560', '1289000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Kiểu d&aacute;ng trượt thời trang</li>\r\n<li> Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li> M&aacute;y ảnh VGA, hỗ trợ quay phim</li>\r\n<li> M&aacute;y nghe nhạc MP3, đ&agrave;i FM</li>\r\n<li> Kết nối Bluetooth, chức năng đổi giọng n&oacute;i </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(308, 1, 'F-Mobile B510', '1289000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Kiểu d&aacute;ng thời trang s&agrave;nh điệu</li>\r\n<li>Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li>M&aacute;y ảnh VGA, hỗ trợ quay phim</li>\r\n<li>M&aacute;y nghe nhạc MP3</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp</li>\r\n<li>Kết nối Bluetooth, USB, GPRS </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(309, 1, 'F-Mobile B530', '1249000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li>M&aacute;y ảnh VGA, hỗ trợ quay phim</li>\r\n<li> M&aacute;y nghe nhạc MP3</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp</li>\r\n<li>Kết nối Bluetooth, USB, GPRS </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(310, 1, 'F-Mobile S600', '1239000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Hỗ trợ 2 Sim 2 s&oacute;ng online</li>\r\n<li> M&aacute;y ảnh VGA, hỗ trợ quay phim</li>\r\n<li> M&aacute;y nghe nhạc MP3</li>\r\n<li> Đ&agrave;i FM, kết nối Bluetooth</li>\r\n<li> Hiển thị ảnh người gọi </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(311, 1, 'F-Mobile B600', '1189000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Hỗ trợ 2 Sim 2 s&oacute;ng online</li>\r\n<li> M&aacute;y ảnh với chức năng webcam</li>\r\n<li> M&aacute;y nghe nhạc MP3</li>\r\n<li> Đ&agrave;i FM, kết nối Bluetooth</li>\r\n<li> Hiển thị h&igrave;nh ảnh người gọi </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(312, 1, 'F-Mobile B800', '1179000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>B&agrave;n ph&iacute;m Qwerty đầy đủ, chất liệu vỏ cao cấp</li>\r\n<li>Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li>M&aacute;y ảnh VGA, hỗ trợ quay phim</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp, Pin khoẻ</li>\r\n<li>Kết nối Bluetooth, USB</li>\r\n<li>Ứng dụng đa dạng phong ph&uacute; (mail, chat, tr&igrave;nh duyệt web) </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(313, 1, 'F-Mobile B350  ', '1049000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li>B&agrave;n ph&iacute;m Qwerty đầy đủ</li>\r\n<li> M&aacute;y ảnh VGA, hỗ trợ quay phim</li>\r\n<li> Đ&agrave;i FM t&iacute;ch hợp</li>\r\n<li>Kết nối Bluetooth, USB, GPRS </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(314, 1, 'F-Mobile B590', '999000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Thiết kế thời trang thanh mảnh</li>\r\n<li>Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li>M&aacute;y ảnh VGA, hỗ trợ quay phim</li>\r\n<li>M&aacute;y nghe nhạc MP3</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp, chức năng đ&egrave;n pin</li>\r\n<li>Kết nối Bluetooth, USB, GPRS </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(315, 1, 'F-Mobile B250', '949000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Thiết kế đơn giản thời trang</li>\r\n<li> Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li> M&aacute;y ảnh hỗ trợ quay phim</li>\r\n<li> M&aacute;y nghe nhạc xem phim MP3, 3GP, AVI </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(316, 1, 'F-Mobile B330', '949000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Thiết kế trẻ trung với b&agrave;n ph&iacute;m Qwerty</li>\r\n<li>Hỗ trợ 2 Sim 2 s&oacute;ng online</li>\r\n<li> M&aacute;y ảnh VGA, hỗ trợ quay phim</li>\r\n<li>M&aacute;y nghe nhạc MP3</li>\r\n<li> Đ&agrave;i FM t&iacute;ch hợp</li>\r\n<li>Đ&egrave;n pin tiện dụng </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(317, 1, 'F-Mobile B270', '889000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li> M&aacute;y ảnh VGA, hỗ trợ quay phim</li>\r\n<li> M&aacute;y nghe nhạc MP3, xem phim 3GP</li>\r\n<li> Đ&agrave;i FM, BluetoothĐ&egrave;n pin, lắc tay đổi nhạc </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(318, 1, 'F-Mobile B280 ', '889000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Thiết kế dạng thanh với vỏ kim loại mạnh mẽ</li>\r\n<li> Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li> M&aacute;y ảnh VGA, hỗ trợ quay phim</li>\r\n<li> M&aacute;y nghe nhạc MP3</li>\r\n<li> Đ&agrave;i FM, Bluetooth</li>\r\n<li> Chức năng đ&egrave;n pin, pin khoẻ </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(319, 1, 'F-Mobile B400', '849000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Thiết kế trẻ trung với b&agrave;n ph&iacute;m Qwerty</li>\r\n<li>Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li>M&aacute;y ảnh VGA</li>\r\n<li>M&aacute;y nghe nhạc MP3</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(320, 1, 'F-Mobile B260', '789000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Phong c&aacute;ch cổ điển của Nokia</li>\r\n<li> Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li> M&aacute;y ảnh VGA, hỗ trợ quay phim</li>\r\n<li> Đ&agrave;i FM t&iacute;ch hợp, Bluetooth</li>\r\n<li> Chức năng đ&egrave;n pin </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(321, 1, 'F-Mobile B200', '649000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Hỗ trợ 2 sim 2 s&oacute;ng online (Sim 1 chỉ tương th&iacute;ch mạng Mobifone)</li>\r\n<li>M&aacute;y ảnh VGA, hỗ trợ quay phim</li>\r\n<li>Nghe nhạc, xem phim MP3, 3GP</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp</li>\r\n<li>Kết nối GPRS </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(322, 1, 'F-Mobile B360', '0.0000', '<p>- Thiết kết thời trang giống Samsung L700<br />- Hỗ trợ 2 Sim 2 S&oacute;ng online<br />- M&aacute;y ảnh VGA, hỗ trợ quay phim<br />- M&aacute;y nghe nhạc MP3<br />- Đ&agrave;i FM t&iacute;ch hợp, Bluetooth</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(323, 1, 'Acer LiQuid E Smart S100 Ferrari', '1390000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Hệ điều h&agrave;nh Android v2.1</li>\r\n<li>256MB RAM, 512MB ROM</li>\r\n<li>CPU: Qualcomm Snapdragon 8250, 768 MHz processor</li>\r\n<li>M&aacute;y ảnh 5.0 MP, hỗ trợ lấy n&eacute;t tự động</li>\r\n<li>Mạng 3G với HSDPA, 7.2 Mbps</li>\r\n<li> HSUPA, 2.0 Mbps</li>\r\n<li>Xem văn bản (Word, Excel, PowerPoint, PDF) </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(324, 1, 'Acer Stream S110', '11900000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Hệ điều h&agrave;nh Android 2.1</li>\r\n<li>M&aacute;y ảnh 5.0 MP, hỗ trợ quay phim</li>\r\n<li>Mạng 3G với HSDPA, 7.2 Mbps</li>\r\n<li> HSUPA, 2.0 Mbps</li>\r\n<li>Xem file văn ph&ograve;ng (Word, Excel, PowerPoint, PDF)</li>\r\n<li>Google Search, Maps, Gmail</li>\r\n<li>YouTube, Google Talk, Picasa integration </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(325, 1, 'Acer LiQuid E Smart S100 ', '9799000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Hệ điều h&agrave;nh Android v2.1</li>\r\n<li>256MB RAM, 512MB ROM</li>\r\n<li>CPU: Qualcomm Snapdragon 8250, 768 MHz processor</li>\r\n<li>M&aacute;y ảnh 5.0 MP, hỗ trợ lấy n&eacute;t tự động</li>\r\n<li>Mạng 3G với HSDPA, 7.2 Mbps</li>\r\n<li> HSUPA, 2.0 Mbps</li>\r\n<li>Xem văn bản (Word, Excel, PowerPoint, PDF) </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(326, 1, 'Acer beTouch E400 ', '6449000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Hệ điều h&agrave;nh Android v2.1</li>\r\n<li>CPU: Qualcomm 7227, 600 MHz processor</li>\r\n<li>M&aacute;y ảnh 3.2 MP, hỗ trợ lấy n&eacute;t tự động</li>\r\n<li>Mạng 3G với HSDPA, 3.6 Mbps</li>\r\n<li> HSUPA 384 Kbps</li>\r\n<li>Chức năng định vị GPS, Bluetooth, Wifi</li>\r\n<li>Pocket Office (Word, Excel, PowerPoint, OneNote, PDF viewer)</li>\r\n<li>Jack tai nghe 3.5mm </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(327, 1, 'Acer beTouch E130 ', '5340000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Hệ điều h&agrave;nh Android 1.6</li>\r\n<li>M&aacute;y ảnh 3.2 MP, hỗ trợ quay phim</li>\r\n<li>Mạng 3G với HSDPA, 3.6 Mbps</li>\r\n<li> HSUPA, 384 Kbps</li>\r\n<li>Kết nối Wifi, GPS, Bluetooth, USB</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp, jack tai nghe 3.5mm</li>\r\n<li>Google Search, Maps, Gmail, YouTube, Google Talk, Picasa integration</li>\r\n<li>Xem file văn bản (Word, Excel, PowerPoint, PDF) </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 1, 1),
(328, 1, 'Acer Smart E120', '4690000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Hệ điều h&agrave;nh Android 1.6</li>\r\n<li>M&aacute;y ảnh 3.2 MP, hỗ trợ quay phim</li>\r\n<li>M&aacute;y nghe nhạc MP3/WAV/WMA/eAAC+</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp, jack tai nghe 3.5mm</li>\r\n<li>Mạng 3G với HSDPA, 3.6 Mbps</li>\r\n<li> HSUPA, 384 Kbps</li>\r\n<li>Kết nối Wifi, GPS, Bluetooth, USB</li>\r\n<li>Pocket Office (Word, Excel, PowerPoint, OneNote, PDF viewer) </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(329, 1, 'Acer beTouch E110', '3990000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Hệ điều h&agrave;nh Android v1.5</li>\r\n<li>M&aacute;y ảnh 3.0 MP, hỗ trợ quay phim</li>\r\n<li>Mạng 3G</li>\r\n<li>với HSDPA, 3.6 Mbps</li>\r\n<li> HSUPA 384 Kbps</li>\r\n<li>Chức năng định vị GPS, Bluetooth</li>\r\n<li>Pocket Office (Word, Excel, PowerPoint, OneNote, PDF viewer)</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp, jack tai nghe 3.5mm </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 2, 1),
(330, 1, 'Acer Liquid Metal', '0.0000', '<p>- Hệ điều h&agrave;nh Android OS, v2.2<br /> - M&aacute;y ảnh 5.0 MP, hỗ trợ quay phim<br /> - Mạng 3G với tốc độ HSDPA, 14.4 Mbps; HSUPA, 2 Mbps<br /> - Chức năng xem file văn bản<br /> - Wi-Fi 802.11 b/g/n, UPnP</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(331, 1, 'Philips X710  ', '4290000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Hỗ trợ 2 Sim, 2 S&oacute;ng online</li>\r\n<li>Camera 3.15 MP, hỗ trợ quay phim</li>\r\n<li>M&aacute;y nghe nhạc MP3/WAV/AAC</li>\r\n<li>Đ&agrave;i FM, Bluetooth</li>\r\n<li>Pin 1900 mAh </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(332, 1, 'Philips X501', '3150000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Thiết kế dạng thanh thời trang</li>\r\n<li>M&aacute;y ảnh 2.0 MP, hỗ trợ quay phim</li>\r\n<li>M&aacute;y nghe nhạc MP3/AAC/WMA, xem phim MP4, 3GP</li>\r\n<li>Đ&agrave;i FM</li>\r\n<li>Kết nối Bluetooth, USB mini</li>\r\n<li>Pin dung lượng cao </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(333, 1, 'Philips 9@9q ', '1669000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Thiết độc đ&aacute;o thời trang</li>\r\n<li> Camera 1.3MP, quay phim</li>\r\n<li> Hỗ trợ thẻ nhớ ngo&agrave;i</li>\r\n<li> Nghe nhạc MP3</li>\r\n<li> Bluetooth với A2DP </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(334, 1, 'Philips M600', '1669000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Điện thoại nghe nhạc thời trang</li>\r\n<li> Camera 1.3 MP, hỗ trợ quay phim</li>\r\n<li> Hỗ trợ thẻ nhớ ngo&agrave;i l&ecirc;n đến 2GB</li>\r\n<li> M&aacute;y nghe nhạc MP3, AAC</li>\r\n<li> Kết nối USB, Bluetooth </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(335, 1, 'Philips X100', '1230000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Thiết kế dạng thanh thời trang</li>\r\n<li>Hỗ trợ 2 Sim</li>\r\n<li>Hỗ trợ thẻ nhớ ngo&agrave;i l&ecirc;n đến 2GB</li>\r\n<li>M&aacute;y nghe nhạc Mp3/WAV</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp, kết nối USB </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(336, 1, 'Philips Xenium X600 ', '0.0000', '<p>- Thiết kế nắp gập thời trang<br />- M&aacute;y ảnh 2.0 MP, hỗ trợ quay phim<br />- M&aacute;y nghe nhạc MP3/WAV/AAC/MP4<br />- Đ&agrave;i FM t&iacute;ch hợp<br />- Kết nối Bluetooth, USB, GPRS</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(337, 1, 'Mobistar M690s', '1380000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Thiết kế nắp trượt với m&agrave;u sắc trẻ trung, thời trang</li>\r\n<li>Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li> M&aacute;y ảnh VGA, hỗ trợ quay phim</li>\r\n<li> M&aacute;y nghe nhạc, xem phim MP3, MP4, 3GP</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp</li>\r\n<li> Tiện &iacute;ch nhắn tin Mobistar </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(338, 1, 'Mobistar @89', '1350000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Hỗ trợ 2 Sim 2 Sóng</li>\r\n<li>M&aacute;y ảnh VGA, hỗ trợ quay phim</li>\r\n<li>M&aacute;y nghe nhạc MP3, WAV với tai nghe jack USB mini</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp</li>\r\n<li>Kết nối Bluetooth, USB, GPRS</li>\r\n<li>Chat với Yahoo, Skype</li>\r\n<li>Lịch vạn sự </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 2, 1),
(339, 1, 'Mobistar F760', '1250000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Kiểu d&aacute;ng trượt thời trang</li>\r\n<li> Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li>M&aacute;y ảnh 1.3 MP, hỗ trợ flash</li>\r\n<li> M&aacute;y nghe nhạc MP3</li>\r\n<li> Đ&agrave;i FM, ghi &acirc;m FM, Bluetooth</li>\r\n<li>Chức năng chặn cuộc gọi </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(340, 1, 'Mobistar @56  ', '779000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Kiểu d&aacute;ng dạng thanh s&agrave;nh điệu</li>\r\n<li>Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li> M&aacute;y nghe nhạc, xem phim MP3, 3GP với tai nghe 2.5mm</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp</li>\r\n<li>Chức năng chặn cuộc gọi, GPRS </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 2, 1);
INSERT INTO `fs_product` (`id`, `category_id`, `name`, `price`, `desc`, `detail`, `create_at`, `qty`, `note`, `sold`, `view`, `active`) VALUES
(341, 1, 'Mobistar @90', '0.0000', '<p>- M&aacute;y ảnh 2.0 MP, hỗ trợ quay phim<br />- Hỗ trợ 2 Sim 2 S&oacute;ng online<br />- Nghe nhạc MP3, WAV, tai nghe 3.5mm<br />- Đ&agrave;i FM t&iacute;ch hợp<br /> - WIFI, Bluetooth, GPRS<br /> - Tr&igrave;nh duyệt web Opera mini,<br />- Chat với YahooMessenger, Skype, MSN, Facebook<br />- Lịch vạn sự</p>', NULL, '0000-00-00', 100, NULL, 0, 2, 1),
(342, 1, 'Dell Streak ', '14990000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Hệ điều h&agrave;nh Android 1.6 c&oacute; thể n&acirc;ng cấp l&ecirc;n 2.2</li>\r\n<li>Mạng 3G với HSDPA, 7.2 Mbps</li>\r\n<li> HSUPA, 5.76 Mbps</li>\r\n<li>Chức năng văn ph&ograve;ng với QuickOffice</li>\r\n<li>Google Search, Maps, Gmail, YouTube, Google Talk</li>\r\n<li>Chỉnh sửa h&igrave;nh ảnh, Adobe Flash 10.1 </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(343, 1, 'Dell Aero', '0.0000', '<p>- M&agrave;n h&igrave;nh cảm ứng rộng 3.5 inches<br />- M&aacute;y ảnh 3.15 MP, lấy n&eacute;t tự động<br />- Mạng 3G với HSDPA 3.6 Mbps<br />- Kết nối Wifi, GPS, GPRS<br />- Xem file văn bản, chỉnh sửa h&igrave;nh ảnh</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(344, 1, 'Dell Flash', '0.0000', '<p>- Hệ điều h&agrave;nh Android Froyo<br />- M&aacute;y ảnh 5.0 MP, hỗ trợ lấy n&eacute;t tự động<br />- Mạng 3G với HSDPA 14.4 Mbps; HSUPA 5.76 Mbps<br />- Bluetooth 3.0 v&agrave; Wifi 802.11 b/g/i, DLNA &amp; UPnP<br />- Google Search, Maps, Gmail<br />- C&ocirc;ng nghệ lọc tiếng ồn</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(345, 1, 'Dell Venue', '0.0000', '<p>- Hệ điều h&agrave;nh Android v2.1<br /> - CPU: Qualcomm Snapdragon QSD8250, 1 GHz processor<br /> - M&aacute;y ảnh 8MP, hỗ trợ LED Flash<br /> - Mạng 3G, Wifi gi&uacute;p dễ d&agrave;ng truy cập internet mọi l&uacute;c mọi nơi<br /> - Hỗ trợ Full Flash<br /> - YouTube, Google Talk, Picasa integration, Google Search, Maps, Gmail</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(346, 1, 'Dell Mini 3i', '0.0000', '<p>- M&agrave;n h&igrave;nh cực rộng 3.5 inches<br />- M&aacute;y ảnh 3.15 MP, hỗ trợ quay phim<br />- M&aacute;y nghe nhạc, xem phim nhiều định dạng<br />- Chức năng định vị to&agrave;n cầu GPS<br />- Kết nối Bluetooth, USB</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(347, 1, 'Dell Venue Pro', '0.0000', '<p>- Hệ điều h&agrave;nh Microsoft Windows Phone 7<br /> - CPU: Qualcomm Snapdragon QSD8250, 1 GHz processor<br /> - M&aacute;y ảnh 5.0 MP, lấy n&eacute;t tự động<br /> - Mạng 3G với HSDPA, 7.2 Mbps; HSUPA, 5.76 Mbps<br /> - Hỗ trợ Full flash/silverlight</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(348, 1, 'Dell XCD28 ', '0.0000', '<p>- Hệ điều h&agrave;nh Android 2.1<br /> - M&aacute;y ảnh 3.2 MP, hỗ trợ quay phim<br /> - M&aacute;y nghe nhạc, xem phim MP4/H.264/H.263, MP3/WAV/eAAC+<br /> - Mạng 3G với tốc độ truyền tải 7.2 Mbps<br /> - Chức năng định vị GPS<br /> - Xem file văn bản (Word, Excel, PowerPoint, PDF)</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(349, 1, 'Dell XCD35', '0.0000', '<p>- Hệ điều h&agrave;nh Android 2.1<br /> - M&aacute;y ảnh 3.2 MP, hỗ trợ quay phim<br /> - M&aacute;y nghe nhạc xem phim MP4/H.264/H.263, MP3/WAV/eAAC+<br /> - Mạng 3G, chức năng định vị GPS<br /> - Xem file văn bản</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(350, 1, 'Dell Smoke', '0.0000', '<p>- Hệ điều h&agrave;nh Android Froyo<br />- M&aacute;y ảnh 5.0 MP, hỗ trợ lấy n&eacute;t tự động<br />-  Mạng 3G với HSDPA 14.4 Mbps; HSUPA 5.76 Mbps<br />- Bluetooth 2.1 v&agrave; Wifi  802.11<br />- Google Search, Maps, Gmail<br />- C&ocirc;ng  nghệ lọc tiếng ồn</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(351, 1, 'eTouch TD200', '1199000.0000', '<ul class=\"item_list\" style=\"padding-left: 15px; margin: 0px;\">\r\n<li>Điện thoại xem Tivi Analog với m&agrave;n h&igrave;nh rộng 2.4 inches</li>\r\n<li>Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li>Camera 2.0 MP, hỗ trợ quay phim</li>\r\n<li> M&aacute;y nghe nhạc MP3</li>\r\n<li> Đ&agrave;i FM, chức năng ghi &acirc;m FM</li>\r\n<li> Kết nối Bluetooth, chặn cuộc gọi, hẹn giờ tắt mở nguồn </li>\r\n</ul>', NULL, '0000-00-00', 100, NULL, 0, 1, 1),
(352, 1, 'eTouch MK67', '0.0000', '<p>- Điện thoại thời trang sang trọng<br />- Camra 2.0 MP, hỗ trợ quay phim<br />- M&aacute;y nghe nhạc <span class=\"specDetails\">MP3 / WAV, xem phim MP4, 3GP<br />- Đ&agrave;i FM<br />- Kết nối Bluetooth, USB, GPRS</span></p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(353, 1, 'eTouch MD82', '0.0000', '<p>- Thiết kế thời trang<br />- Hỗ trợ 2 Sim 2 S&oacute;ng online<br />- M&aacute;y ảnh VGA, hỗ trợ quay phim<br />- M&aacute;y nghe nhạc, xem phim MP3, MP4<br />- Đ&agrave;i FM<br />- Kết nối Bluetooth, USB, GPRS</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(354, 7, 'Acer Aspire 4820TG 452G50 (219)  ', '16899000.0000', '<p><span class=\"star0\">&nbsp;</span> - CPU: Intel Core i5 450M, 2.40 GHz<br /> - Bộ nhớ: DDR3, 2 GB. Đĩa cứng: 500 GB<br /> - M&agrave;n h&igrave;nh: 14 inch HD (1366 x 768 pixels)<br /> - Đồ họa: ATI Mobility Radeon HD 5470<br /> - Đĩa quang: DVD Super Multi Double Layer<br /> - Hệ điều h&agrave;nh: Windows 7 Home Premium. Trọng lượng: 2,1 kg</p>', NULL, '0000-00-00', 100, NULL, 0, 5, 1),
(355, 7, 'Acer Aspire 4820TG 352G50Mn (038)  ', '16299000.0000', '<p>- CPU: Intel Core i3 350M, 2.26 GHz, L3 Cache,3 MB<br /> - Bo mạch: Mobile Intel HM55 Express Chip, 1066 MHz<br /> - Bộ nhớ: DDR3, 2 GB, 1066 MHz<br /> - M&agrave;n h&igrave;nh: 14 inch HD (1366 x 768)<br /> - Đồ họa: ATI Mobility Radeon HD 5470, 512 MB<br /> - Đĩa cứng: HDD 500 GB, 5400 rpm<br /> - Đĩa quang: DVD Super Multi Double Layer<br /> - Hệ điều h&agrave;nh: Windows 7. Trọng lượng: 2.2 kg</p>', NULL, '0000-00-00', 100, NULL, 0, 4, 1),
(356, 7, 'Acer Aspire 4820T 452G50Mn (060)  ', '15999000.0000', '<p>- CPU: Intel Core i5 450M, 2.40 GHz<br /> - Bộ nhớ: DDR3, 2 GB. Đĩa cứng: 500 GB<br /> - M&agrave;n h&igrave;nh: 14 inch HD (1366 x 768 pixels)<br /> - Đồ họa: Intel Graphics Media Accelerator HD Graphics<br /> - Đĩa quang: DVD Super Multi Double Layer<br /> - Hệ điều h&agrave;nh: Windows 7 Home Premium. Trọng lượng: 2,1 kg</p>', NULL, '0000-00-00', 100, NULL, 0, 1, 1),
(357, 7, 'Acer Aspire 4820TG 372G32Mn (213)  ', '15899000.0000', '<p>- CPU: Intel Core i3 370M, 3 MB, L3 Cache<br /> - Bo mạch: Mobile Intel HM55 Express Chip, 1066 MHz<br /> - Bộ nhớ: DDR3, 2 GB, 1066 MHz<br /> - M&agrave;n h&igrave;nh: 14 inch HD (1366 x 768)<br /> - Đồ họa: ATI Mobility Radeon HD 5470, 512 MB<br /> - Đĩa cứng: HDD 320 GB, 5400 rpm<br /> - Đĩa quang: DVD Super Multi Double Layer</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(358, 7, 'Acer Aspire 4745G 452G64Mn (066)  ', '15099000.0000', '<p>- CPU: Intel Core i5 450M, 2.40 GHz<br /> - Bộ nhớ: DDR3, 2 GB. Đĩa cứng: 640 GB<br /> - M&agrave;n h&igrave;nh: 14 inch HD (1366 x 768 pixels)<br /> - Đồ họa: ATI Mobility Radeon HD 5470<br /> - Đĩa quang: DVD Super Multi Double Layer<br /> - Hệ điều h&agrave;nh: Linux. Trọng lượng: 2,1 kg</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(359, 7, 'Acer Aspire 4745G 462G32Mn (057)  ', '15099000.0000', '<p>- CPU: Intel Core i5 460M, 2.53 GHz<br /> - Bộ nhớ: DDR3, 2 GB. Đĩa cứng: 320 GB<br /> - M&agrave;n h&igrave;nh: 14 inch HD (1366 x 768 pixels)<br /> - Đồ họa: ATI Mobility Radeon HD 5470<br /> - Đĩa quang: DVD Super Multi Double Layer<br /> - Hệ điều h&agrave;nh: Linux. Trọng lượng: 2,2 kg</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(360, 7, 'Acer Aspire 4820T 372G32Mn (232)  ', '14999000.0000', '<p>- CPU: Intel Core i3 370M, 2.40 GHz, L3 Cache, 3 MB<br />- Bo mạch: Mobile Intel HM55 Express Chip, 1066 MHz<br />- Bộ nhớ: DDR3, 2 GB, 1066 MHz<br />- M&agrave;n h&igrave;nh: 14 inch HD (1366 x 768)<br />- Đồ họa: Intel Graphics Media Accelerator HD Graphics, 256 MB<br />- Đĩa cứng: HDD 320 GB, 5400 rpm<br />- Đĩa quang: DVD Super Multi Double Layer</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(361, 7, 'Acer Aspire 4738G 452G50Mn (020)  ', '14799000.0000', '<p>- CPU: Intel Core i5 450M, 2.40 GHz<br /> - Bộ nhớ: DDR3, 2 GB. Đĩa cứng: 500 GB<br /> - M&agrave;n h&igrave;nh: 14 inch HD (1366 x 768 pixels)<br /> - Đồ họa: ATI Mobility Radeon HD 5470<br /> - Đĩa quang: DVD Super Multi Double Layer<br /> - Hệ điều h&agrave;nh: Linux. Trọng lượng: 2,1 kg</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(362, 7, 'Acer Aspire 4738G 452G50Mn (017)  ', '14799000.0000', '<p>- CPU: Intel Core i5 450M, 2.40 GHz<br /> - Bộ nhớ: DDR3, 2 GB. Đĩa cứng: 500 GB<br /> - M&agrave;n h&igrave;nh: 14 inch HD (1366 x 768 pixels)<br /> - Đồ họa: ATI Mobility Radeon HD 5470<br /> - Đĩa quang: DVD Super Multi Double Layer<br /> - Hệ điều h&agrave;nh: Linux. Trọng lượng: 2,1 kg</p>', NULL, '0000-00-00', 100, NULL, 0, 12, 1),
(363, 7, 'Acer Aspire 4738G 452G50Mn (045)  ', '14799000.0000', '<p>- CPU: Intel Core i5 450M, 2.40 GHz<br /> - Bộ nhớ: DDR3, 2 GB. Đĩa cứng: 500 GB<br /> - M&agrave;n h&igrave;nh: 14 inch HD (1366 x 768 pixels)<br /> - Đồ họa: ATI Mobility Radeon HD 5470<br /> - Đĩa quang: DVD Super Multi Double Layer<br /> - Hệ điều h&agrave;nh: Linux. Trọng lượng: 2,1 kg</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(364, 7, 'Acer Aspire 4820TG 452G50 (219) ', '16899000.0000', NULL, NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(365, 7, 'Acer Aspire 4820TG 352G50Mn (038)  ', '16299000.0000', '<p>- CPU: Intel Core i3 350M, 2.26 GHz, L3 Cache,3 MB<br />- Bo mạch: Mobile Intel HM55 Express Chip, 1066 MHz<br />- Bộ nhớ: DDR3, 2 GB, 1066 MHz<br />- M&agrave;n h&igrave;nh: 14 inch HD (1366 x 768)<br />- Đồ họa: ATI Mobility Radeon HD 5470, 512 MB<br />- Đĩa cứng: HDD 500 GB, 5400 rpm<br />- Đĩa quang: DVD Super Multi Double Layer<br />- Hệ điều h&agrave;nh: Windows 7. Trọng lượng: 2.2 kg</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(366, 7, 'Acer Aspire 4820T 452G50Mn (060)', '15999000.0000', '<p>- CPU: Intel Core i5 450M, 2.40 GHz<br />- Bộ nhớ: DDR3, 2 GB. Đĩa cứng: 500 GB<br />- M&agrave;n h&igrave;nh: 14 inch HD (1366 x 768 pixels)<br />- Đồ họa: Intel Graphics Media Accelerator HD Graphics<br />- Đĩa quang: DVD Super Multi Double Layer<br />- Hệ điều h&agrave;nh: Windows 7 Home Premium. Trọng lượng: 2,1 kg</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(367, 7, 'Acer Aspire 4820TG 372G32Mn (213)  ', '15899000.0000', '<p>- CPU: Intel Core i3 370M, 3 MB, L3 Cache<br />- Bo mạch: Mobile Intel HM55 Express Chip, 1066 MHz<br />- Bộ nhớ: DDR3, 2 GB, 1066 MHz<br />- M&agrave;n h&igrave;nh: 14 inch HD (1366 x 768)<br />- Đồ họa: ATI Mobility Radeon HD 5470, 512 MB<br />- Đĩa cứng: HDD 320 GB, 5400 rpm<br />- Đĩa quang: DVD Super Multi Double Layer</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(368, 7, 'Acer Aspire 4745G 452G64Mn (066) ', '15099000.0000', '<p>- CPU: Intel Core i5 450M, 2.40 GHz<br />- Bộ nhớ: DDR3, 2 GB. Đĩa cứng: 640 GB<br />- M&agrave;n h&igrave;nh: 14 inch HD (1366 x 768 pixels)<br />- Đồ họa: ATI Mobility Radeon HD 5470<br />- Đĩa quang: DVD Super Multi Double Layer<br />- Hệ điều h&agrave;nh: Linux. Trọng lượng: 2,1 kg</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(369, 7, 'Acer Aspire 4745G 462G32Mn (057)  ', '15099000.0000', '<p>- CPU: Intel Core i5 460M, 2.53 GHz<br />- Bộ nhớ: DDR3, 2 GB. Đĩa cứng: 320 GB<br />- M&agrave;n h&igrave;nh: 14 inch HD (1366 x 768 pixels)<br />- Đồ họa: ATI Mobility Radeon HD 5470<br />- Đĩa quang: DVD Super Multi Double Layer<br />- Hệ điều h&agrave;nh: Linux. Trọng lượng: 2,2 kg</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(370, 7, 'Acer Aspire 4820T 372G32Mn (232)  ', '14999000.0000', NULL, NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(371, 7, 'Acer Aspire 4738G 452G50Mn (020)  ', '14799000.0000', NULL, NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(372, 7, 'Acer Aspire 4738G 452G50Mn (017)  ', '14799000.0000', '<p>- CPU: Intel Core i5 450M, 2.40 GHz<br />- Bộ nhớ: DDR3, 2 GB. Đĩa cứng: 500 GB<br />- M&agrave;n h&igrave;nh: 14 inch HD (1366 x 768 pixels)<br />- Đồ họa: ATI Mobility Radeon HD 5470<br />- Đĩa quang: DVD Super Multi Double Layer<br />- Hệ điều h&agrave;nh: Linux. Trọng lượng: 2,1 kg</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(373, 7, 'Acer Aspire 4738G 452G50Mn (045)  ', '14799000.0000', '<p>- CPU: Intel Core i5 450M, 2.40 GHz<br />- Bộ nhớ: DDR3, 2 GB. Đĩa cứng: 500 GB<br />- M&agrave;n h&igrave;nh: 14 inch HD (1366 x 768 pixels)<br />- Đồ họa: ATI Mobility Radeon HD 5470<br />- Đĩa quang: DVD Super Multi Double Layer<br />- Hệ điều h&agrave;nh: Linux. Trọng lượng: 2,1 kg</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(374, 7, 'Acer Aspire 5745G 382G50Mn (052)  ', '13599000.0000', '<p>- CPU: Intel Core i3 380M, 2.53 GHz<br />- Bộ nhớ: DDR3, 2 GB. Đĩa cứng: 500 GB<br />- M&agrave;n h&igrave;nh: 15.6 inch HD (1366 x 768 pixels)<br />- Đồ họa: NVIDIA GeForce 310M<br />- Đĩa quang: DVD Super Multi Double Layer<br />- Hệ điều h&agrave;nh: Linux. Trọng lượng: 2,3 kg</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(375, 7, 'Acer Aspire 4738 432G32Mn (035)  ', '13599000.0000', '<p>- CPU: Intel Core i5 430M, 2.26 GHz, 3 MB, L3 Cache<br />- Bo mạch: Mobile Intel HM55 Express Chip, 1066 MHz<br />- Bộ nhớ: DDR3, 2 GB, 1066 MHz<br />- M&agrave;n h&igrave;nh: 14 inch HD (1366 x 768)<br />- Đồ họa: Intel Graphics Media Accelerator HD Graphics, 256 MB<br />- Đĩa cứng: HDD 320 GB, 5400 rpm<br />- Đĩa quang: DVD Super Multi Double Layer<br />- Hệ điều h&agrave;nh: Linux. Trọng lượng: 2,1 kg</p>', NULL, '0000-00-00', 100, NULL, 0, 1, 1),
(376, 7, 'Acer Aspire 5742G 382G50Mn (020)  ', '13599000.0000', '<p>- CPU: Intel Core i3 380M, 2.53 GHz<br />- Bộ nhớ: DDR3, 2 GB. Đĩa cứng: 500 GB<br />- M&agrave;n h&igrave;nh: 15.6 inch HD (1366 x 768 pixels)<br />- Đồ họa: ATI Mobility Radeon HD 5470<br />- Đĩa quang: DVD Super Multi Double Layer<br />- Hệ điều h&agrave;nh: Linux. Trọng lượng: 2,5 kg</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(377, 7, 'Acer Aspire 5742G 382G50Mn (040)  ', '13599000.0000', '<p>- CPU: Intel Core i3 380M, 2.53 GHz<br />- Bộ nhớ: DDR3, 2 GB. Đĩa cứng: 500 GB<br />- M&agrave;n h&igrave;nh: 15.6 inch HD (1366 x 768 pixels)<br />- Đồ họa: ATI Mobility Radeon HD 5470<br />- Đĩa quang: DVD Super Multi Double Layer<br />- Hệ điều h&agrave;nh: Linux. Trọng lượng: 2,5 kg</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(378, 7, 'Acer Aspire 5742G 382G50Mn (012)  ', '13599000.0000', '<p>- CPU: Intel Core i3 380M, 2.53 GHz<br />- Bộ nhớ: DDR3, 2 GB. Đĩa cứng: 500 GB<br />- M&agrave;n h&igrave;nh: 15.6 inch HD (1366 x 768 pixels)<br />- Đồ họa: ATI Mobility Radeon HD 5470<br />- Đĩa quang: DVD Super Multi Double Layer<br />- Hệ điều h&agrave;nh: Linux. Trọng lượng: 2,5 kg</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(379, 7, 'Acer Aspire 4741 - 5452G32Mn (071)  ', '13499000.0000', '<p>- Bộ xử l&yacute;: Intel &nbsp;Core i5 &nbsp;450M &nbsp;2.40 GHz &nbsp;3 MB, L3 Cache &nbsp;2C / 4T &nbsp; <br />- Bo mạch: Mobile Intel HM55 Express Chip &nbsp;1066 MHz &nbsp; <br />- Bộ nhớ: 2 GB &nbsp;DDR3 &nbsp;1066 MHz &nbsp; <br />- Đĩa cứng: HDD &nbsp;320 GB &nbsp;Đang cập nhật &nbsp;5400 rpm &nbsp; <br />- M&agrave;n h&igrave;nh: 14 inch &nbsp;LCD, LED &nbsp;16:9 &nbsp;HD (1366 x 768) &nbsp; <br />- Đồ họa: Intel Graphics Media Accelerator (GMA) X4500 &nbsp;256 MB &nbsp;T&iacute;ch hợp &nbsp; <br />- Đĩa quang: DVD Super Multimedia &nbsp;8X &nbsp; <br />- Hệ điều h&agrave;nh, phần mềm sẵn c&oacute;/OS: Linux &nbsp; <br />- K&iacute;ch thước &amp; trọng lượng: 2.1&nbsp;&nbsp;</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(380, 7, 'Acer Aspire 4745G 372G32Mn (058)  ', '13199000.0000', '<p>- CPU: Intel Core i3 370M, 2.40 GHz, 3 MB, L3 Cache<br />- Bo mạch: Mobile Intel HM55 Express Chip, 1066 MHz<br />- Bộ nhớ: DDR3, 2 GB, 1066 MHz<br />- M&agrave;n h&igrave;nh: 14 inch HD (1366 x 768)<br />- Đồ họa: ATI Mobility Radeon HD 5470, 512 MB<br />- Đĩa cứng: HDD 320 GB, 5400 rpm<br />- Đĩa quang: DVD Super Multi Double Layer<br />- Hệ điều h&agrave;nh: Linux. Trọng lượng: 2,2 kg</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(381, 7, 'Acer Aspire 4738G 372G50Mn (032)  ', '13199000.0000', '<p>- CPU: Intel Core i3 370M, 2.40 GHz, 3 MB Cache<br />- Bộ nhớ: 2 GB. Đĩa cứng: 500 GB<br />- M&agrave;n h&igrave;nh: 14 inch HD (1366 x 768)<br />- Đồ họa: ATI Mobility Radeon HD 5470<br />- Đĩa quang: DVD Super Multi Double Layer<br />- Hệ điều h&agrave;nh: Linux. Trọng lượng: 2,1 kg</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(382, 7, 'Acer Aspire 4738G 372G50Mn (014)  ', '13199000.0000', '<p>- CPU: Intel Core i3 370M, 2.40 GHz, 3 MB Cache<br />- Bộ nhớ: 2 GB. Đĩa cứng: 320 GB<br />- M&agrave;n h&igrave;nh: 14 inch HD (1366 x 768)<br />- Đồ họa: ATI Mobility Radeon HD 5470<br />- Đĩa quang: DVD Super Multi Double Layer<br />- Hệ điều h&agrave;nh: Linux. Trọng lượng: 2,1 kg</p>', NULL, '0000-00-00', 100, NULL, 0, 2, 1),
(383, 7, 'Acer Aspire 5745G 372G32Mn (041)  ', '13199000.0000', '<p>- CPU: Intel Core i3 370M, 2.40 GHz, 3 MB Cache<br />- Bo mạch: Mobile Intel HM55 Express Chip, 1066 MHz<br />- Bộ nhớ: DDR3, 2 GB, 1066 MHz<br />- M&agrave;n h&igrave;nh: 15.6 inch HD (1366 x 768)<br />- Đồ họa: NVIDIA GeForce 310M, 512 MB<br />- Đĩa cứng: HDD 320 GB, 5400 rpm<br />- Đĩa quang: DVD Super Multi Double Layer<br />- Hệ điều h&agrave;nh: Linux. Trọng lượng: 2.4 kg</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(384, 7, 'Toshiba Portege R700  ', '30999000.0000', '<p>- CPU: Intel Core i5 520M, 2.40 GHz, L3 Cache, 3 MB<br />- Bo mạch: Intel, 1066 MHz<br />- Bộ nhớ: DDR3, 4 GB, 1066 MHz<br />- M&agrave;n h&igrave;nh: 13.3 inch HD (1366 x 768)<br />- Đồ họa: Intel Graphics Media Accelerator HD Graphics, 256 MB<br />- Đĩa cứng: HDD 500 GB, 7200 rpm<br />- Đĩa quang: DVD Super Multimedia<br />- Hệ điều h&agrave;nh: Windows 7. Trọng lượng: 1.39 kg</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(385, 7, 'Toshiba Portege R700 ', '30999000.0000', '<p>- CPU: Intel Core i5 520M, 2.40 GHz, L3 Cache, 3 MB<br />- Bo mạch: Intel, 1066 MHz<br />- Bộ nhớ: DDR3, 4 GB, 1066 MHz<br />- M&agrave;n h&igrave;nh: 13.3 inch HD (1366 x 768)<br />- Đồ họa: Intel Graphics Media Accelerator HD Graphics, 256 MB<br />- Đĩa cứng: HDD 500 GB, 7200 rpm<br />- Đĩa quang: DVD Super Multimedia<br />- Hệ điều h&agrave;nh: Windows 7. Trọng lượng: 1.39 kg</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(386, 7, 'Toshiba Sattelite L645 1059UBL PSK0JL 00S001', '13299000.0000', '<p>- CPU: Intel Core i3 370M, 2.40 GHz, 3 MB,L3 Cache<br />- Bo mạch: Mobile Intel&reg; HM55 Express Chipset, 1066 MHz<br />- Bộ nhớ: DDR3, 2 GB, 1066 MHz<br />- M&agrave;n h&igrave;nh: 14 inch HD (1366 x 768)<br />- Đồ họa: Intel Graphics Media Accelerator (GMA) 4500MHD, 256 MB<br />- Đĩa cứng: HDD 500 GB, 5400 rpm<br />- Đĩa quang: DVD Super Multimedia<br />- Hệ điều h&agrave;nh: Free Dos. Trọng lượng: 2.1 kg</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(387, 7, 'Toshiba Satellite L640 1067U PSK0JL 00F001  ', '13099000.0000', '<p>- CPU: Intel Core i3 370M, 2.40 GHz, L3 Cache,3 MB<br />- Bo mạch: Mobile Intel &reg; HM55 Express Chipset, 1066 MHz<br />- Bộ nhớ: DDR3, 2 GB, 1066 MHz<br />- M&agrave;n h&igrave;nh: 14 inch HD (1366 x 768)<br />- Đồ họa: Intel Graphics Media Accelerator (GMA) 4500MHD, 256 MB<br />- Đĩa cứng: HDD 320 GB, 5400 rpm<br />- Đĩa quang: DVD Super Multimedia<br />- Hệ điều h&agrave;nh: Free Dos. Trọng lượng: 2.1 kg</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(388, 7, 'Toshiba Satellite L640 PSK0JL 001001 ', '12099000.0000', '<p>- Bộ xử l&yacute;: Intel &nbsp;Core i3 &nbsp;350M &nbsp;2.26 GHz &nbsp;L3 Cache, 3 MB &nbsp;2C / 4T &nbsp; <br />- Bo mạch: Mobile Intel HM55 Express Chip &nbsp;1066 MHz &nbsp; <br />- Bộ nhớ: 2 GB &nbsp;DDR3 &nbsp;1066 MHz &nbsp; <br />- Đĩa cứng: HDD &nbsp;250 GB &nbsp;Đang cập nhật &nbsp;5400 rpm &nbsp; <br />- M&agrave;n h&igrave;nh: 14 inch &nbsp;LED, TFT &nbsp;16:9 &nbsp;WXGA (1280 x 800) &nbsp; <br />- Đồ họa: Intel Graphics Media Accelerator (GMA) X4500 &nbsp;256 MB &nbsp;T&iacute;ch hợp &nbsp; <br />- Đĩa quang: DVD Super Multimedia &nbsp;8X &nbsp; <br />- Hệ điều h&agrave;nh, phần mềm sẵn c&oacute;/OS: Free Dos &nbsp; <br />- K&iacute;ch thước &amp; trọng lượng: 2.29&nbsp;&nbsp;</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(389, 7, 'Toshiba Satellite L310 T4200  ', '10499000.0000', '<p>- Bộ xử l&yacute;: Intel &nbsp;Pentium &nbsp;T4200 &nbsp;2.00 GHz &nbsp;1 MB, L2 Cache &nbsp;- &nbsp; <br />- Bo mạch: Mobile Intel GL40 Express Chip(ICH 9) &nbsp;800 MHz &nbsp; <br />- Bộ nhớ: 1 GB &nbsp;DDR2 &nbsp;800 MHz &nbsp; <br />- Đĩa cứng: HDD &nbsp;250 GB &nbsp;&nbsp; &nbsp;5400 rpm &nbsp; <br />- M&agrave;n h&igrave;nh: 14.1 inch &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;WXGA (1280 x 800) &nbsp; <br />- Đồ họa: Intel Graphics Media Accelerator (GMA) 4500MHD &nbsp;512 MB &nbsp;T&iacute;ch hợp &nbsp; <br />- Đĩa quang: DVD Super Multimedia &nbsp;&nbsp; &nbsp; <br />- Hệ điều h&agrave;nh, phần mềm sẵn c&oacute;/OS: Free Dos &nbsp; <br />- K&iacute;ch thước &amp; trọng lượng: 2.40&nbsp;&nbsp;</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(390, 7, 'Toshiba Satellite C640 1008U PSC02L 003001 ', '10299000.0000', '<p>- CPU: Intel Pentium P6100, 2.00 GHz, 3 MB,L3 Cache<br />- Bo mạch: Mobile Intel&reg; HM55 Express Chipset, 1066 MHz<br />- Bộ nhớ: DDR3, 1 GB, 1066 MHz<br />- M&agrave;n h&igrave;nh: 14 inch HD (1366 x 768)<br />- Đồ họa: Intel Graphics Media Accelerator (GMA) 4500MHD, 256 MB<br />- Đĩa cứng: HDD 250 GB, 5400 rpm<br />- Đĩa quang: DVD Super Multimedia<br />- Hệ điều h&agrave;nh: Free Dos. Trọng lượng: 2.1 kg</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(391, 7, 'Toshiba Satellite M645 ', '10299000.0000', '<p>- CPU: Intel Core i5 450M, 2.40 GHz<br />- Bộ nhớ: DDR3, 4 GB. Đĩa cứng: 500 GB<br />- M&agrave;n h&igrave;nh: 14 inch HD (1366 x 768)<br />- Đồ họa: NVIDIA GeForce GT 330M<br />- Đĩa quang: DVD Super Multi Double Layer<br />- Hệ điều h&agrave;nh: Windows 7 Home Premium. Trọng lượng: 2.6 kg</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(392, 7, 'Toshiba Satellite M300 N401 (004001)  ', '20299000.0000', '<p>- Bộ xử l&yacute;: Intel &nbsp;Core 2 Duo &nbsp;T8100 &nbsp;2.01 GHz &nbsp;3 MB, L2 Cache &nbsp;- &nbsp; <br />- Bo mạch: Intel 965GM Express Chipset &nbsp;800 MHz &nbsp; <br />- Bộ nhớ: 1 GB &nbsp;DDR2 &nbsp;667 MHz &nbsp; <br />- Đĩa cứng: HDD &nbsp;160 GB &nbsp;&nbsp; &nbsp;5400 rpm &nbsp; <br />- M&agrave;n h&igrave;nh: 14.1 inch &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;WXGA (1280 x 800) &nbsp; <br />- Đồ họa: Intel Graphics Media Accelerator (GMA) X3100 &nbsp;- &nbsp;T&iacute;ch hợp &nbsp; <br />- Đĩa quang: DVD Super Multimedia &nbsp;&nbsp; &nbsp; <br />- Hệ điều h&agrave;nh, phần mềm sẵn c&oacute;/OS: Free Dos &nbsp; <br />- K&iacute;ch thước &amp; trọng lượng: 2.25&nbsp;&nbsp;</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(393, 7, 'Toshiba Satellite Pro M200 E458 (01L002)  ', '30299000.0000', '<p>- Bộ xử l&yacute;: Intel &nbsp;Core 2 Duo &nbsp;T8100 &nbsp;2.01 GHz &nbsp;3 MB, L2 Cache &nbsp;- &nbsp; <br />- Bo mạch: Intel 965GM Express Chipset &nbsp;800 MHz &nbsp; <br />- Bộ nhớ: 1 GB &nbsp;DDR2 &nbsp;667 MHz &nbsp; <br />- Đĩa cứng: HDD &nbsp;120 GB &nbsp;&nbsp; &nbsp;5400 rpm &nbsp; <br />- M&agrave;n h&igrave;nh: 14.1 inch &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;WXGA (1280 x 800) &nbsp; <br />- Đồ họa: Intel Graphics Media Accelerator (GMA) X3100 &nbsp;- &nbsp;T&iacute;ch hợp &nbsp; <br />- Đĩa quang: DVD Super Multimedia &nbsp;&nbsp; &nbsp; <br />- Hệ điều h&agrave;nh, phần mềm sẵn c&oacute;/OS: Windows Vista Business &nbsp; <br />- K&iacute;ch thước &amp; trọng lượng: 2.25&nbsp;&nbsp;</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(394, 7, 'Toshiba Satellite M200(E4311)  ', '25299000.0000', '<p>- Bộ xử l&yacute;: Intel &nbsp;Core 2 Duo &nbsp;T8100 &nbsp;2.01 GHz &nbsp;L2 Cache, 3 MB &nbsp;- &nbsp; <br />- Bo mạch: Intel 965GM Express Chipset &nbsp;800 MHz &nbsp; <br />- Bộ nhớ: 1 GB &nbsp;DDR2 &nbsp;667 MHz &nbsp; <br />- Đĩa cứng: HDD &nbsp;160 GB &nbsp;&nbsp; &nbsp;5400 rpm &nbsp; <br />- M&agrave;n h&igrave;nh: 14.1 inch &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;WXGA (1280 x 800) &nbsp; <br />- Đồ họa: Intel Graphics Media Accelerator (GMA) X3100 &nbsp;- &nbsp;T&iacute;ch hợp &nbsp; <br />- Đĩa quang: DVD Super Multimedia &nbsp;&nbsp; &nbsp; <br />- Hệ điều h&agrave;nh, phần mềm sẵn c&oacute;/OS: Windows Vista Home Premium &nbsp; <br />- K&iacute;ch thước &amp; trọng lượng: 2.25&nbsp;&nbsp;</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(395, 7, 'Toshiba Satellite M300 A401(00C001)  ', '25400000.0000', '<p>- Bộ xử l&yacute;: Intel &nbsp;Core 2 Duo &nbsp;T5750 &nbsp;2.00 GHz &nbsp;2 MB, L2 Cache &nbsp;- &nbsp; <br />- Bo mạch: Intel 965GM Express Chipset &nbsp;800 MHz &nbsp; <br />- Bộ nhớ: 2 GB &nbsp;DDR &nbsp;667 MHz &nbsp; <br />- Đĩa cứng: HDD &nbsp;160 GB &nbsp;&nbsp; &nbsp;5400 rpm &nbsp; <br />- M&agrave;n h&igrave;nh: 14.1 inch &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;WXGA (1280 x 800) &nbsp; <br />- Đồ họa: Intel Graphics Media Accelerator (GMA) X3100 &nbsp;- &nbsp;T&iacute;ch hợp &nbsp; <br />- Đĩa quang: DVD&plusmn;RW &nbsp;&nbsp; &nbsp; <br />- Hệ điều h&agrave;nh, phần mềm sẵn c&oacute;/OS: Free Dos &nbsp; <br />- K&iacute;ch thước &amp; trọng lượng: 2.25&nbsp;&nbsp;</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(396, 7, 'Toshiba Satellite M200 E436 (046004)  ', '15400000.0000', '<p>- Bộ xử l&yacute;: Intel &nbsp;Core 2 Duo &nbsp;T8300 &nbsp;2.40 GHz &nbsp;3 MB, L2 Cache &nbsp;- &nbsp; <br />- Bo mạch: Intel 965GM Express Chipset &nbsp;800 MHz &nbsp; <br />- Bộ nhớ: 1 GB &nbsp;DDR2 &nbsp;667 MHz &nbsp; <br />- Đĩa cứng: HDD &nbsp;200 GB &nbsp;&nbsp; &nbsp;5400 rpm &nbsp; <br />- M&agrave;n h&igrave;nh: 14.1 inch &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;WXGA (1280 x 800) &nbsp; <br />- Đồ họa: ATI Mobility Radeon M7 &nbsp;128 MB &nbsp;Card rời &nbsp; <br />- Đĩa quang: DVD Super Multimedia &nbsp;&nbsp; &nbsp; <br />- Hệ điều h&agrave;nh, phần mềm sẵn c&oacute;/OS: Windows Vista Home Premium &nbsp; <br />- K&iacute;ch thước &amp; trọng lượng: 2.25&nbsp;&nbsp;</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(397, 7, 'Toshiba PORTEGE R500 E264 (07Y09J)  ', '35400000.0000', '<p>- Bộ xử l&yacute;: Intel &nbsp;Core 2 Duo &nbsp;U7700 &nbsp;1.33 GHz &nbsp;2 MB, L2 Cache &nbsp;- &nbsp; <br />- Bo mạch: Intel 965GM Express chipset &nbsp;800 MHz &nbsp; <br />- Bộ nhớ: 2 GB &nbsp;DDR2 &nbsp;667 MHz &nbsp; <br />- Đĩa cứng: HDD &nbsp;160 GB &nbsp;&nbsp; &nbsp;5400 rpm &nbsp; <br />- M&agrave;n h&igrave;nh: 12.1 inch &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;WXGA (1280 x 800) &nbsp; <br />- Đồ họa: Intel Graphics Media Accelerator (GMA) X3100 &nbsp;- &nbsp;T&iacute;ch hợp &nbsp; <br />- Đĩa quang: DVD Super Multimedia &nbsp;&nbsp; &nbsp; <br />- Hệ điều h&agrave;nh, phần mềm sẵn c&oacute;/OS: Windows Vista Business &nbsp; <br />- K&iacute;ch thước &amp; trọng lượng: 1.09&nbsp;&nbsp;</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(398, 7, 'Toshiba PORTEGE M800 E330 (02H00V)  ', '25350000.0000', '<p>- Bộ xử l&yacute;: Intel &nbsp;Core 2 Duo &nbsp;T8100 &nbsp;2.01 GHz &nbsp;L2 Cache, 3 MB &nbsp;- &nbsp; <br />- Bo mạch: Intel 965GM Express chipset &nbsp;800 MHz &nbsp; <br />- Bộ nhớ: 1 GB &nbsp;DDR2 &nbsp;667 MHz &nbsp; <br />- Đĩa cứng: HDD &nbsp;160 GB &nbsp;&nbsp; &nbsp;5400 rpm &nbsp; <br />- M&agrave;n h&igrave;nh: 13.3 inch &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;WXGA (1280 x 800) &nbsp; <br />- Đồ họa: Intel Graphics Media Accelerator (GMA) X3100 &nbsp;- &nbsp;T&iacute;ch hợp &nbsp; <br />- Đĩa quang: DVD Super Multimedia &nbsp;&nbsp; &nbsp; <br />- Hệ điều h&agrave;nh, phần mềm sẵn c&oacute;/OS: Windows Vista Home Premium &nbsp; <br />- K&iacute;ch thước &amp; trọng lượng: 1.79&nbsp;&nbsp;</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(399, 7, 'Toshiba Satellite L300 A511 (08502E)  ', '10299000.0000', '<p>- Bộ xử l&yacute;: Intel &nbsp;Pentium &nbsp;T2390 &nbsp;1.86 GHz &nbsp;1 MB, L2 Cache &nbsp;- &nbsp; <br />- Bo mạch: Intel GM965 Express Chipset &nbsp;800 MHz &nbsp; <br />- Bộ nhớ: 512 MB &nbsp;DDR2 &nbsp;667 MHz &nbsp; <br />- Đĩa cứng: HDD &nbsp;80 GB &nbsp;&nbsp; &nbsp;5400 rpm &nbsp; <br />- M&agrave;n h&igrave;nh: 15.4 inch &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;WXGA (1280 x 800) &nbsp; <br />- Đồ họa: Intel Graphics Media Accelerator (GMA) X3100 &nbsp;- &nbsp;T&iacute;ch hợp &nbsp; <br />- Đĩa quang: DVD&plusmn;RW &nbsp;&nbsp; &nbsp; <br />- Hệ điều h&agrave;nh, phần mềm sẵn c&oacute;/OS: Windows Vista Home Basic &nbsp; <br />- K&iacute;ch thước &amp; trọng lượng: 2.56&nbsp;&nbsp;</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(400, 7, 'Toshiba Satellite L300 S500 (00M00L)  ', '26299000.0000', '<p>- Bộ xử l&yacute;: Intel &nbsp;Core 2 Duo &nbsp;T5800 &nbsp;2.00 GHz &nbsp;L2 Cache, 2 MB &nbsp;- &nbsp; <br />- Bo mạch: Intel GM45 Express Chipset &nbsp;1066 MHz &nbsp; <br />- Bộ nhớ: 1 GB &nbsp;DDR2 &nbsp;667 MHz &nbsp; <br />- Đĩa cứng: HDD &nbsp;160 GB &nbsp;&nbsp; &nbsp;5400 rpm &nbsp; <br />- M&agrave;n h&igrave;nh: 15.4 inch &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;WXGA (1280 x 800) &nbsp; <br />- Đồ họa: Intel Graphics Media Accelerator (GMA) 4500MHD &nbsp;- &nbsp;T&iacute;ch hợp &nbsp; <br />- Đĩa quang: DVD&plusmn;RW &nbsp;&nbsp; &nbsp; <br />- Hệ điều h&agrave;nh, phần mềm sẵn c&oacute;/OS: Linux &nbsp; <br />- K&iacute;ch thước &amp; trọng lượng: 2.56&nbsp;&nbsp;</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(401, 7, 'Toshiba Satellite M300 P500 (00700L)  ', '26350000.0000', '<p>- Bộ xử l&yacute;: Intel &nbsp;Pentium &nbsp;T3200 &nbsp;2.00 GHz &nbsp;L2 Cache, 1 MB &nbsp;- &nbsp; <br />- Bo mạch: Intel 965GM Express Chipset &nbsp;800 MHz &nbsp; <br />- Bộ nhớ: 1 GB &nbsp;DDR2 &nbsp;667 MHz &nbsp; <br />- Đĩa cứng: HDD &nbsp;160 GB &nbsp;&nbsp; &nbsp;5400 rpm &nbsp; <br />- M&agrave;n h&igrave;nh: 15.4 inch &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;WXGA (1280 x 800) &nbsp; <br />- Đồ họa: Intel Graphics Media Accelerator (GMA) 4500MHD &nbsp;- &nbsp;T&iacute;ch hợp &nbsp; <br />- Đĩa quang: DVD&plusmn;RW &nbsp;&nbsp; &nbsp; <br />- Hệ điều h&agrave;nh, phần mềm sẵn c&oacute;/OS: Linux &nbsp; <br />- K&iacute;ch thước &amp; trọng lượng: 2.56&nbsp;&nbsp;</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(402, 7, 'Toshiba Satellite M300 A406 (001001)  ', '30350000.0000', '<p>- Bộ xử l&yacute;: Intel &nbsp;Core 2 Duo &nbsp;P7350 &nbsp;2.00 GHz &nbsp;3 MB, L2 Cache &nbsp;- &nbsp; <br />- Bo mạch: Intel PM45 Express Chipset &nbsp;1066 MHz &nbsp; <br />- Bộ nhớ: 1 GB &nbsp;DDR2 &nbsp;667 MHz &nbsp; <br />- Đĩa cứng: HDD &nbsp;120 GB &nbsp;&nbsp; &nbsp;5400 rpm &nbsp; <br />- M&agrave;n h&igrave;nh: 14.1 inch &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;WXGA (1280 x 800) &nbsp; <br />- Đồ họa: ATI Mobility Radeon HD 3470 &nbsp;- &nbsp;Card rời &nbsp; <br />- Đĩa quang: DVD&plusmn;RW &nbsp;&nbsp; &nbsp; <br />- Hệ điều h&agrave;nh, phần mềm sẵn c&oacute;/OS: Linux &nbsp; <br />- K&iacute;ch thước &amp; trọng lượng: 2.56&nbsp;&nbsp;</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(403, 7, 'Toshiba Qosmio F60  ', '28350000.0000', '<p>- CPU: Intel Core i3 330M, 2.13 GHz<br />- Bộ nhớ: DDR3, 4 GB. Đĩa cứng: 320 GB<br />- M&agrave;n h&igrave;nh: 15.6 inch HD (1366 x 768 pixels)<br />- Đồ họa: NVIDIA GeForce GT 330M<br />- Đĩa quang: Bluray Combo<br />- Hệ điều h&agrave;nh: Windows 7 Home Premium. Trọng lượng: 2.8 kg</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(404, 7, 'Toshiba Satellite M100 (T0US00C)  ', '18350000.0000', '<p>- Bộ xử l&yacute;: Intel &nbsp;Core 2 Duo &nbsp;T5500 &nbsp;1.66 GHz &nbsp;2 MB, L2 Cache &nbsp;- &nbsp; <br />- Bo mạch: Intel 945 GM Chip &nbsp;667 MHz &nbsp; <br />- Bộ nhớ: 512 MB &nbsp;DDR2 &nbsp;667 MHz &nbsp; <br />- Đĩa cứng: HDD &nbsp;100 GB &nbsp;&nbsp; &nbsp;5400 rpm &nbsp; <br />- M&agrave;n h&igrave;nh: 14.1 inch &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;XGA (1024 x 768) &nbsp; <br />- Đồ họa: ATI Mobility Radeon X1300 &nbsp;128 MB &nbsp;Card rời &nbsp; <br />- Đĩa quang: DVD&plusmn;RW Dual Layer &nbsp;&nbsp; &nbsp; <br />- Hệ điều h&agrave;nh, phần mềm sẵn c&oacute;/OS: Windows XP Home Edition &nbsp; <br />- K&iacute;ch thước &amp; trọng lượng: 2.5&nbsp;&nbsp;</p>', NULL, '0000-00-00', 100, NULL, 0, 1, 1),
(405, 7, 'Toshiba Satellite Pro S500  ', '24350000.0000', '<p>- Bộ xử l&yacute;: Intel &nbsp;Core i3 &nbsp;330M &nbsp;2.13 GHz &nbsp;3 MB, - &nbsp;2C / 4T &nbsp; <br />- Bo mạch: - &nbsp;- &nbsp; <br />- Bộ nhớ: 4 GB &nbsp;DDR3 &nbsp;1067 MHz &nbsp; <br />- Đĩa cứng: HDD &nbsp;320 GB &nbsp;&nbsp; &nbsp;5400 rpm &nbsp; <br />- M&agrave;n h&igrave;nh: 15.6 inch &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;HD (1366 x 768) &nbsp; <br />- Đồ họa: Intel Graphics Media Accelerator HD Graphics &nbsp;- &nbsp;T&iacute;ch hợp &nbsp; <br />- Đĩa quang: DVD Super Multimedia &nbsp;&nbsp; &nbsp; <br />- Hệ điều h&agrave;nh, phần mềm sẵn c&oacute;/OS: Windows 7 Professional &nbsp; <br />- K&iacute;ch thước &amp; trọng lượng: 2.79&nbsp;&nbsp;</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(406, 7, 'Toshiba Satellite L310 P401 (005001)  ', '28350000.0000', '<p>- Bộ xử l&yacute;: Intel &nbsp;Pentium &nbsp;T3200 &nbsp;2.00 GHz &nbsp;1 MB, L2 Cache &nbsp;- &nbsp; <br />- Bo mạch: Intel&reg; GL40 Express Chipset &nbsp;667 MHz &nbsp; <br />- Bộ nhớ: 1 GB &nbsp;DDR2 &nbsp;667 MHz &nbsp; <br />- Đĩa cứng: HDD &nbsp;160 GB &nbsp;&nbsp; &nbsp;5400 rpm &nbsp; <br />- M&agrave;n h&igrave;nh: 14.1 inch &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;WXGA (1280 x 800) &nbsp; <br />- Đồ họa: Intel Graphics Media Accelerator (GMA) 4500MHD &nbsp;- &nbsp;T&iacute;ch hợp &nbsp; <br />- Đĩa quang: DVD Super Multimedia &nbsp;&nbsp; &nbsp; <br />- Hệ điều h&agrave;nh, phần mềm sẵn c&oacute;/OS: Free Dos &nbsp; <br />- K&iacute;ch thước &amp; trọng lượng: 2.25&nbsp;&nbsp;</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(407, 7, 'Toshiba Satellite L310 S402 (PSME6L 009001)  ', '34120000.0000', '<p>- Bộ xử l&yacute;: Intel &nbsp;Core 2 Duo &nbsp;T5800 &nbsp;2.00 GHz &nbsp;L2 Cache, 2 MB &nbsp;- &nbsp; <br />- Bo mạch: Intel GM45 Express Chipset &nbsp;1066 MHz &nbsp; <br />- Bộ nhớ: 2 GB &nbsp;DDR2 &nbsp;800 MHz &nbsp; <br />- Đĩa cứng: HDD &nbsp;160 GB &nbsp;&nbsp; &nbsp;5400 rpm &nbsp; <br />- M&agrave;n h&igrave;nh: 14.1 inch &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;- &nbsp; <br />- Đồ họa: Intel Graphics Media Accelerator (GMA) 4500MHD &nbsp;- &nbsp;T&iacute;ch hợp &nbsp; <br />- Đĩa quang: DVD Super Multimedia &nbsp;&nbsp; &nbsp; <br />- Hệ điều h&agrave;nh, phần mềm sẵn c&oacute;/OS: Free Dos &nbsp; <br />- K&iacute;ch thước &amp; trọng lượng: 2.25&nbsp;&nbsp;</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(408, 7, 'Toshiba Qosmio F50 AV530 (02202N)  ', '24120000.0000', '<p>- Bộ xử l&yacute;: Intel &nbsp;Core 2 Duo &nbsp;T9400 &nbsp;2.53 GHz &nbsp;6 MB, L2 Cache &nbsp;- &nbsp; <br />- Bo mạch: Intel PM45 Express Chipset &nbsp;1066 MHz &nbsp; <br />- Bộ nhớ: 4 GB &nbsp;DDR2 &nbsp;800 MHz &nbsp; <br />- Đĩa cứng: HDD &nbsp;400 GB &nbsp;&nbsp; &nbsp;5400 rpm &nbsp; <br />- M&agrave;n h&igrave;nh: 15.4 inch &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;- &nbsp; <br />- Đồ họa: NVIDIA GeForce 9600M GT &nbsp;512 MB &nbsp;Card rời &nbsp; <br />- Đĩa quang: DVD Super Multimedia &nbsp;&nbsp; &nbsp; <br />- Hệ điều h&agrave;nh, phần mềm sẵn c&oacute;/OS: Windows Vista Home Premium &nbsp; <br />- K&iacute;ch thước &amp; trọng lượng: 2.70&nbsp;&nbsp;</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(409, 7, 'Toshiba Qosmio X300 G770 (02202N)  ', '28350000.0000', '<p>- Bộ xử l&yacute;: Intel &nbsp;Core 2 Duo &nbsp;T9400 &nbsp;2.53 GHz &nbsp;L2 Cache, 6 MB &nbsp;- &nbsp; <br />- Bo mạch: Intel 965PM Express Chipset &nbsp;800 MHz &nbsp; <br />- Bộ nhớ: 4 GB &nbsp;DDR2 &nbsp;800 MHz &nbsp; <br />- Đĩa cứng: HDD &nbsp;500 GB &nbsp;&nbsp; &nbsp;5400 rpm &nbsp; <br />- M&agrave;n h&igrave;nh: 17 inch &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;- &nbsp; <br />- Đồ họa: NVIDIA GeForce 9600M GT &nbsp;512 MB &nbsp;Card rời &nbsp; <br />- Đĩa quang: DVD Super Multimedia &nbsp;&nbsp; &nbsp; <br />- Hệ điều h&agrave;nh, phần mềm sẵn c&oacute;/OS: Windows Vista Home Premium &nbsp; <br />- K&iacute;ch thước &amp; trọng lượng: 2.70&nbsp;&nbsp;</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(410, 7, 'Toshiba Satellite M300 P401 (009001)  ', '27350000.0000', '<p>- Bộ xử l&yacute;: Intel &nbsp;Pentium &nbsp;T3200 &nbsp;2.00 GHz &nbsp;1 MB, L2 Cache &nbsp;- &nbsp; <br />- Bo mạch: Intel&reg; 965GM Express chipset &nbsp;800 MHz &nbsp; <br />- Bộ nhớ: 2 GB &nbsp;DDR2 &nbsp;800 MHz &nbsp; <br />- Đĩa cứng: HDD &nbsp;160 GB &nbsp;&nbsp; &nbsp;5400 rpm &nbsp; <br />- M&agrave;n h&igrave;nh: 14.1 inch &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;- &nbsp; <br />- Đồ họa: Intel Graphics Media Accelerator (GMA) 4500MHD &nbsp;- &nbsp;T&iacute;ch hợp &nbsp; <br />- Đĩa quang: DVD Super Multimedia &nbsp;&nbsp; &nbsp; <br />- Hệ điều h&agrave;nh, phần mềm sẵn c&oacute;/OS: Free Dos &nbsp; <br />- K&iacute;ch thước &amp; trọng lượng: 2.25&nbsp;&nbsp;</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(411, 7, 'Toshiba Satellite M300 S403 (TosaM300 S403 DF 009001)  ', '28350000.0000', '<p>- Bộ xử l&yacute;: Intel &nbsp;Core 2 Duo &nbsp;T5800 &nbsp;2.00 GHz &nbsp;2 MB, L2 Cache &nbsp;- &nbsp; <br />- Bo mạch: Intel&reg; 965GM Express chipset &nbsp;800 MHz &nbsp; <br />- Bộ nhớ: 2 GB &nbsp;DDR2 &nbsp;667 MHz &nbsp; <br />- Đĩa cứng: HDD &nbsp;160 GB &nbsp;&nbsp; &nbsp;5400 rpm &nbsp; <br />- M&agrave;n h&igrave;nh: 14.1 inch &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;- &nbsp; <br />- Đồ họa: Intel Graphics Media Accelerator (GMA) 4500M &nbsp;- &nbsp;T&iacute;ch hợp &nbsp; <br />- Đĩa quang: DVD Super Multimedia &nbsp;&nbsp; &nbsp; <br />- Hệ điều h&agrave;nh, phần mềm sẵn c&oacute;/OS: Free Dos &nbsp; <br />- K&iacute;ch thước &amp; trọng lượng: 2.25&nbsp;&nbsp;</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(412, 7, 'Toshiba PORTEGE M800 A360 (033013)  ', '34120000.0000', '<p>- Bộ xử l&yacute;: Intel &nbsp;Core 2 Duo &nbsp;T5670 &nbsp;1.80 GHz &nbsp;2 MB, L2 Cache &nbsp;- &nbsp; <br />- Bo mạch: Intel 965GM Express Chipset &nbsp;800 MHz &nbsp; <br />- Bộ nhớ: 1 GB &nbsp;DDR2 &nbsp;667 MHz &nbsp; <br />- Đĩa cứng: HDD &nbsp;120 GB &nbsp;&nbsp; &nbsp;5400 rpm &nbsp; <br />- M&agrave;n h&igrave;nh: 13.3 inch &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;- &nbsp; <br />- Đồ họa: Intel Graphics Media Accelerator (GMA) X3100 &nbsp;- &nbsp;T&iacute;ch hợp &nbsp; <br />- Đĩa quang: DVD Super Multimedia &nbsp;&nbsp; &nbsp; <br />- Hệ điều h&agrave;nh, phần mềm sẵn c&oacute;/OS: Windows Vista Business &nbsp; <br />- K&iacute;ch thước &amp; trọng lượng: 1.79&nbsp;&nbsp;</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(413, 7, 'Toshiba PORTEGE M600 E360 (02H009) ', '24120000.0000', '<p>- Bộ xử l&yacute;: Intel &nbsp;Core 2 Duo &nbsp;T7100 &nbsp;1.80 GHz &nbsp;2 MB, L2 Cache &nbsp;- &nbsp; <br />- Bo mạch: Intel 965GM Express Chipset &nbsp;800 MHz &nbsp; <br />- Bộ nhớ: 1 GB &nbsp;DDR2 &nbsp;667 MHz &nbsp; <br />- Đĩa cứng: HDD &nbsp;120 GB &nbsp;&nbsp; &nbsp;5400 rpm &nbsp; <br />- M&agrave;n h&igrave;nh: 13.3 inch &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;WXGA (1280 x 800) &nbsp; <br />- Đồ họa: Intel Graphics Media Accelerator (GMA) X3100 &nbsp;- &nbsp;T&iacute;ch hợp &nbsp; <br />- Đĩa quang: DVD Super Multimedia &nbsp;&nbsp; &nbsp; <br />- Hệ điều h&agrave;nh, phần mềm sẵn c&oacute;/OS: Windows Vista Business &nbsp; <br />- K&iacute;ch thước &amp; trọng lượng: 1.88&nbsp;&nbsp;</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(414, 7, 'Toshiba PORTEGE M800 E336 (02H00V)  ', '18350000.0000', '<p>- Bộ xử l&yacute;: Intel &nbsp;Core 2 Duo &nbsp;T8100 &nbsp;2.01 GHz &nbsp;L2 Cache, 3 MB &nbsp;- &nbsp; <br />- Bo mạch: Intel&reg; 965GM Express Chipset &nbsp;800 MHz &nbsp; <br />- Bộ nhớ: 1 GB &nbsp;DDR2 &nbsp;667 MHz &nbsp; <br />- Đĩa cứng: HDD &nbsp;160 GB &nbsp;&nbsp; &nbsp;5400 rpm &nbsp; <br />- M&agrave;n h&igrave;nh: 13.3 inch &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;WXGA (1280 x 800) &nbsp; <br />- Đồ họa: Intel Graphics Media Accelerator (GMA) X3100 &nbsp;- &nbsp;T&iacute;ch hợp &nbsp; <br />- Đĩa quang: DVD Super Multimedia &nbsp;&nbsp; &nbsp; <br />- Hệ điều h&agrave;nh, phần mềm sẵn c&oacute;/OS: Windows Vista Home Premium &nbsp; <br />- K&iacute;ch thước &amp; trọng lượng: 1.88&nbsp;&nbsp;</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(415, 7, 'Asus G51J i7-720QM  ', '44699000.0000', '<p>- Bộ xử l&yacute;: Intel &nbsp;Core i7 &nbsp;720QM &nbsp;1.60 GHz &nbsp;L3 Cache, 6 MB &nbsp;4C / 8T &nbsp; <br />- Bo mạch: Mobile Intel HM55 Express Chip &nbsp;1066 MHz &nbsp; <br />- Bộ nhớ: 2 GB &nbsp;DDR3 &nbsp;1333 MHz &nbsp; <br />- Đĩa cứng: HDD &nbsp;500 GB &nbsp;Đang cập nhật &nbsp;5400 rpm &nbsp; <br />- M&agrave;n h&igrave;nh: 15.6 inch &nbsp;LED &nbsp;- &nbsp;HD (1366 x 768) &nbsp; <br />- Đồ họa: NVIDIA GeForce GTS 360M &nbsp;1 GB &nbsp;Card rời &nbsp; <br />- Đĩa quang: DVD Super Multimedia &nbsp;- &nbsp; <br />- Hệ điều h&agrave;nh, phần mềm sẵn c&oacute;/OS: Free Dos &nbsp; <br />- K&iacute;ch thước &amp; trọng lượng: 3.5&nbsp;&nbsp;</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(416, 7, 'Asus N43JF VX041  ', '26799000.0000', '<p>- CPU: Intel Core i5 460M, 2.53 GHz, L3 Cache, 3 MB<br />- Bo mạch: Mobile Intel HM57 Express Chip, 1066 MHz<br />- Bộ nhớ: DDR3, 4 GB, 1066 MHz<br />- M&agrave;n h&igrave;nh: 14 inch HD (1366 x 768)<br />- Đồ họa: NVIDIA GeForce GT 425M, 1 GB<br />- Đĩa cứng: HDD 500 GB, 5400 rpm<br />- Đĩa quang: DVD Super Multi. Trọng lượng: 2,2 kg</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(417, 7, 'Asus A42JA VX058 ', '22899000.0000', '<p>- CPU: Intel Core i7 740QM, 1.73 GHz<br />- Bộ nhớ: DDR3, 4 GB. Đĩa cứng: 640 GB<br />- M&agrave;n h&igrave;nh: 14 inch HD (1366 x 768 pixels)<br />- Đồ họa: ATI Mobility Radeon HD 5730<br />- Đĩa quang: DVD Super Multi Double Layer<br />- Hệ điều h&agrave;nh: Free Dos. Trọng lượng: 2,1 kg</p>', NULL, '0000-00-00', 100, NULL, 0, 1, 1),
(418, 7, 'Asus U45JC WX090 ', '22599000.0000', '<p>- CPU: Intel Core i3 380M, 2.53 GHz, L3 Cache, 3 MB<br />- Bo mạch: Mobile Intel HM55 Express Chip, 1066 MHz<br />- Bộ nhớ: DDR3, 2 GB, 1066 MHz<br />- M&agrave;n h&igrave;nh: 14 inch HD (1366 x 768)<br />- Đồ họa: NVIDIA GeForce G 310M, 1 GB<br />- Đĩa cứng: HDD 500 GB, 5400 rpm<br />- Đĩa quang: DVD Super Multi Double Layer<br />- Hệ điều h&agrave;nh: Free Dos. Trọng lượng: 2,2 kg</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(419, 7, 'Asus K42JE VX043  ', '20799000.0000', '<p>- CPU: Intel Core i5 460M, 2.53 GHz, L3 Cache,3 MB<br />- Bo mạch: Mobile Intel HM55 Express Chip, 1066 MHz<br />- Bộ nhớ: DDR3, 4 GB, 1066 MHz<br />- M&agrave;n h&igrave;nh: 14 inch HD (1366 x 768)<br />- Đồ họa: ATI Mobility Radeon HD 5730, 2 GB<br />- Đĩa cứng: HDD 500 GB, 5400 rpm<br />- Đĩa quang: DVD Super Multi Double Layer<br />- Hệ điều h&agrave;nh: Free Dos. Trọng lượng: 2,2 kg</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(420, 7, 'Asus X42JE VX087 ', '18599000.0000', '<p>- CPU: Intel Core i7 740QM, 1.73 GHz, L3 Cache,6 MB<br />- Bo mạch: Mobile Intel HM55 Express Chip, 1066 MHz<br />- Bộ nhớ: DDR3, 2 GB, 1066 MHz<br />- M&agrave;n h&igrave;nh: 14 inch HD (1366 x 768)<br />- Đồ họa: ATI Mobility Radeon HD 5470, 512 MB<br />- Đĩa cứng: HDD 500 GB, 5400 rpm<br />- Đĩa quang: DVD Super Multi Double Layer<br />- Hệ điều h&agrave;nh: Free Dos. Trọng lượng: 2,3 kg</p>', NULL, '0000-00-00', 100, NULL, 0, 1, 1),
(421, 7, 'Asus A42JE VX019  ', '15599000.0000', '<p>- CPU: Intel Core i5 460M, 2.53 GHz, 3 MB, L3 Cache<br />- Bo mạch: Mobile Intel HM55 Express Chip, 1066 MHz<br />- Bộ nhớ: DDR3, 2 GB, 1066 MHz<br />- M&agrave;n h&igrave;nh: 14 inch HD (1366 x 768)<br />- Đồ họa: ATI Mobility Radeon HD 5470, 512 MB<br />- Đĩa cứng: HDD 320 GB, 5400 rpm<br />- Đĩa quang: DVD Super Multi Double Layer<br />- Hệ điều h&agrave;nh: Free Dos. Trọng lượng: 2,2 kg</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(422, 7, 'Asus A42JC VX059  ', '14999000.0000', '<p>- CPU: Intel Core i3 370M, 2.40 GHz, 3 MB,L3 Cache<br />- Bo mạch: Mobile Intel&reg; HM55 Express Chipset, 1066 MHz<br />- Bộ nhớ: DDR3, 2 GB, 1066 MHz<br />- M&agrave;n h&igrave;nh: 14 inch HD (1366 x 768)<br />- Đồ họa: NVIDIA GeForce 310M, 1 GB<br />- Đĩa cứng: HDD 320 GB, 5400 rpm<br />- Đĩa quang: DVD Super Multi Double Layer<br />- Hệ điều h&agrave;nh: Free Dos. Trọng lượng: 2.3 kg</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(423, 7, 'Asus A42JE VX003  ', '13799000.0000', '<p>- CPU: Intel Core i3 370M, 2.40 GHz, L3 Cache, 3 MB<br />- Bo mạch: Mobile Intel HM55 Express Chip, 1066 MHz<br />- Bộ nhớ: DDR3, 2 GB, 1066 MHz<br />- M&agrave;n h&igrave;nh: 14 inch HD (1366 x 768)<br />- Đồ họa: ATI Mobility Radeon HD 5470, 512 MB<br />- Đĩa cứng: HDD 320 GB, 5400 rpm<br />- Đĩa quang: DVD Super Multi Double Layer<br />- Hệ điều h&agrave;nh: Free Dos. Trọng lượng: 2,2 kg</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(424, 7, 'Asus K42JE VX089  ', '25299000.0000', '<p>- CPU: Intel Core i3 370M, 2.40 GHz, 3 MB,L3 Cache<br />- Bo mạch: Mobile Intel&reg; HM55 Express Chipset, 1066 MHz<br />- Bộ nhớ: DDR3, 2 GB, 1066 MHz<br />- M&agrave;n h&igrave;nh: 14 inch HD (1366 x 768)<br />- Đồ họa: ATI Mobility Radeon HD 5470, 512 MB<br />- Đĩa cứng: HDD 320 GB, 5400 rpm<br />- Đĩa quang: DVD Super Multimedia<br />- Hệ điều h&agrave;nh: Free Dos. Trọng lượng: 2.3 kg</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(425, 7, 'Asus A42F VX005  ', '11199000.0000', '<p>- CPU: Intel Core i3 330M, 2.13 GHz<br />- Bộ nhớ: DDR3, 2 GB. Đĩa cứng: 320 GB<br />- M&agrave;n h&igrave;nh: 14 inch HD (1366 x 768 pixels)<br />- Đồ họa: Intel Graphics Media Accelerator HD Graphics<br />- Đĩa quang: DVD Super Multi Double Layer<br />- Hệ điều h&agrave;nh: Free Dos. Trọng lượng: 2,1 kg</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(426, 7, 'Asus A42JE VX042  ', '10999000.0000', '<p>- CPU: Intel Pentium P6100, 2.00 GHz, L3 Cache, 3 MB<br />- Bo mạch: Mobile Intel&reg; HM55 Express Chipset, 1066 MHz<br />- Bộ nhớ: DDR3, 2 GB. M&agrave;n h&igrave;nh: 14 inch HD (1366 x 768)<br />- Đồ họa: ATI Mobility Radeon HD 5470, 512 MB<br />- Đĩa quang: DVD Super Multi Double Layer<br />- Đĩa cứng: 320 GB. Trọng lượng: 2,2 kg</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(427, 7, 'Asus EeePC 1015PEM  ', '7999000.0000', '<p>- CPU: Intel Atom N550, 1.50 GHz<br />- Bộ nhớ: DDR3, 1 GB. Đĩa cứng: 250 GB<br />- M&agrave;n h&igrave;nh: 10.1 inch HD (1366 x 768 pixels)<br />- Đồ họa: Intel Graphics Media Accelerator (GMA) 3150<br />- Đĩa quang: -<br />- Hệ điều h&agrave;nh: Free Dos. Trọng lượng: 1,2 kg</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(428, 7, 'Asus Z99L (AsZ99LDF 2330)  ', '26350000.0000', '<p>- Bộ xử l&yacute;: Intel &nbsp;Pentium &nbsp;T2390 &nbsp;1.86 GHz &nbsp;1 MB, L2 Cache &nbsp;- &nbsp; <br />- Bo mạch: Intel 965GM chip &nbsp;800 MHz &nbsp; <br />- Bộ nhớ: 1 GB &nbsp;DDR2 &nbsp;667 MHz &nbsp; <br />- Đĩa cứng: HDD &nbsp;120 GB &nbsp;&nbsp; &nbsp;5400 rpm &nbsp; <br />- M&agrave;n h&igrave;nh: 14.1 inch &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;WXGA (1280 x 800) &nbsp; <br />- Đồ họa: Intel Graphics Media Accelerator (GMA) X3100 &nbsp;256 MB &nbsp;T&iacute;ch hợp &nbsp; <br />- Đĩa quang: DVD Super Multimedia &nbsp;&nbsp; &nbsp; <br />- Hệ điều h&agrave;nh, phần mềm sẵn c&oacute;/OS: Free Dos &nbsp; <br />- K&iacute;ch thước &amp; trọng lượng: 2.39&nbsp;&nbsp;</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(429, 7, 'Asus A8S (AS555004)  ', '27350000.0000', '<p>- Bộ xử l&yacute;: Intel &nbsp;Core 2 Duo &nbsp;T5550 &nbsp;1.83 GHz &nbsp;2 MB, L2 Cache &nbsp;- &nbsp; <br />- Bo mạch: Intel 965GM Express chipset &nbsp;800 MHz &nbsp; <br />- Bộ nhớ: 2 GB &nbsp;DDR2 &nbsp;667 MHz &nbsp; <br />- Đĩa cứng: HDD &nbsp;160 GB &nbsp;&nbsp; &nbsp;5400 rpm &nbsp; <br />- M&agrave;n h&igrave;nh: 14.1 inch &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;WXGA (1280 x 800) &nbsp; <br />- Đồ họa: NVIDIA GeForce Go 8400M GS &nbsp;128 MB &nbsp;Card rời &nbsp; <br />- Đĩa quang: DVD Super Multimedia &nbsp;&nbsp; &nbsp; <br />- Hệ điều h&agrave;nh, phần mềm sẵn c&oacute;/OS: Free Dos &nbsp; <br />- K&iacute;ch thước &amp; trọng lượng: 2.39&nbsp;&nbsp;</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(430, 7, 'Asus Z99H T2250', '28350000.0000', '<p>- Bộ xử l&yacute;: Intel &nbsp;Core Duo &nbsp;T2250 &nbsp;1.73 GHz &nbsp;2 MB, L2 Cache &nbsp;- &nbsp; <br />- Bo mạch: Intel 945 GM Chip &nbsp;667 MHz &nbsp; <br />- Bộ nhớ: 512 MB &nbsp;DDR2 &nbsp;667 MHz &nbsp; <br />- Đĩa cứng: HDD &nbsp;120 GB &nbsp;&nbsp; &nbsp;5400 rpm &nbsp; <br />- M&agrave;n h&igrave;nh: 14.1 inch &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;WXGA (1280 x 800) &nbsp; <br />- Đồ họa: Intel Graphics Media Accelerator (GMA) 950 &nbsp;- &nbsp;T&iacute;ch hợp &nbsp; <br />- Đĩa quang: DVD Super Multimedia &nbsp;&nbsp; &nbsp; <br />- Hệ điều h&agrave;nh, phần mềm sẵn c&oacute;/OS: Free Dos &nbsp; <br />- K&iacute;ch thước &amp; trọng lượng: 2.39&nbsp;&nbsp;</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(431, 7, 'Asus Z99S (AsZ99SDF 7300)  ', '18350000.0000', '<p>- Bộ xử l&yacute;: Intel &nbsp;Core 2 Duo &nbsp;T7300 &nbsp;2.00 GHz &nbsp;4 MB, L2 Cache &nbsp;- &nbsp; <br />- Bo mạch: Intel&reg; PM965 Express Chip + ICH8M &nbsp;800 MHz &nbsp; <br />- Bộ nhớ: 512 MB &nbsp;DDR2 &nbsp;667 MHz &nbsp; <br />- Đĩa cứng: HDD &nbsp;160 GB &nbsp;&nbsp; &nbsp;5400 rpm &nbsp; <br />- M&agrave;n h&igrave;nh: 14.1 inch &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;WXGA (1280 x 800) &nbsp; <br />- Đồ họa: NVIDIA GeForce Go 8400M GS &nbsp;128 MB &nbsp;Card rời &nbsp; <br />- Đĩa quang: DVD Super Multimedia &nbsp;&nbsp; &nbsp; <br />- Hệ điều h&agrave;nh, phần mềm sẵn c&oacute;/OS: Free Dos &nbsp; <br />- K&iacute;ch thước &amp; trọng lượng: 2.39&nbsp;&nbsp;</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(432, 7, 'Asus F9E (AS730006)  ', '18350000.0000', '<p>- Bộ xử l&yacute;: Intel &nbsp;Core 2 Duo &nbsp;T7300 &nbsp;2.00 GHz &nbsp;L2 Cache, 4 MB &nbsp;- &nbsp; <br />- Bo mạch: Intel 965GM Chip &nbsp;800 MHz &nbsp; <br />- Bộ nhớ: 2 GB &nbsp;DDR2 &nbsp;667 MHz &nbsp; <br />- Đĩa cứng: HDD &nbsp;160 GB &nbsp;&nbsp; &nbsp;5400 rpm &nbsp; <br />- M&agrave;n h&igrave;nh: 12.1 inch &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;WXGA (1280 x 800) &nbsp; <br />- Đồ họa: Intel Graphics Media Accelerator (GMA) X3100 &nbsp;256 MB &nbsp;T&iacute;ch hợp &nbsp; <br />- Đĩa quang: DVD Super Multimedia &nbsp;&nbsp; &nbsp; <br />- Hệ điều h&agrave;nh, phần mềm sẵn c&oacute;/OS: Free Dos &nbsp; <br />- K&iacute;ch thước &amp; trọng lượng: 2.09&nbsp;&nbsp;</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1);
INSERT INTO `fs_product` (`id`, `category_id`, `name`, `price`, `desc`, `detail`, `create_at`, `qty`, `note`, `sold`, `view`, `active`) VALUES
(433, 7, 'Asus Z99E T5550', '26299000.0000', '<p>- Bộ xử l&yacute;: Intel &nbsp;Core 2 Duo &nbsp;T5550 &nbsp;1.83 GHz &nbsp;L2 Cache, 2 MB &nbsp;- &nbsp; <br />- Bo mạch: Intel 965 GM Express Chipset &nbsp;800 MHz &nbsp; <br />- Bộ nhớ: 1 GB &nbsp;DDR2 &nbsp;667 MHz &nbsp; <br />- Đĩa cứng: HDD &nbsp;120 GB &nbsp;&nbsp; &nbsp;5400 rpm &nbsp; <br />- M&agrave;n h&igrave;nh: 14.1 inch &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;WXGA (1280 x 800) &nbsp; <br />- Đồ họa: Intel Graphics Media Accelerator (GMA) X3100 &nbsp;- &nbsp;T&iacute;ch hợp &nbsp; <br />- Đĩa quang: DVD Super Multimedia &nbsp;&nbsp; &nbsp; <br />- Hệ điều h&agrave;nh, phần mềm sẵn c&oacute;/OS: Free Dos &nbsp; <br />- K&iacute;ch thước &amp; trọng lượng: 2.39&nbsp;&nbsp;</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(434, 7, 'Asus W7S (AS730005)  ', '27350000.0000', '<p>- Bộ xử l&yacute;: Intel &nbsp;Core 2 Duo &nbsp;T7300 &nbsp;2.00 GHz &nbsp;4 MB, L2 Cache &nbsp;- &nbsp; <br />- Bo mạch: Intel PM965 Express chip &nbsp;800 MHz &nbsp; <br />- Bộ nhớ: 2.5 GB &nbsp;DDR2 &nbsp;667 MHz &nbsp; <br />- Đĩa cứng: HDD &nbsp;160 GB &nbsp;&nbsp; &nbsp;5400 rpm &nbsp; <br />- M&agrave;n h&igrave;nh: 13.3 inch &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;WXGA (1280 x 800) &nbsp; <br />- Đồ họa: NVIDIA GeForce Go 8400M GS &nbsp;128 MB &nbsp;Card rời &nbsp; <br />- Đĩa quang: DVD-RW Dual Layer &nbsp;&nbsp; &nbsp; <br />- Hệ điều h&agrave;nh, phần mềm sẵn c&oacute;/OS: Windows Vista Home Premium &nbsp; <br />- K&iacute;ch thước &amp; trọng lượng: 1.89&nbsp;&nbsp;</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(435, 7, 'Asus A8S T7300  ', '26350000.0000', '<p>- Bộ xử l&yacute;: Intel &nbsp;Core 2 Duo &nbsp;T7300 &nbsp;2.00 GHz &nbsp;4 MB, L2 Cache &nbsp;- &nbsp; <br />- Bo mạch: Intel 965GM Express Chipset &nbsp;800 MHz &nbsp; <br />- Bộ nhớ: 2 GB &nbsp;DDR2 &nbsp;667 MHz &nbsp; <br />- Đĩa cứng: HDD &nbsp;160 GB &nbsp;&nbsp; &nbsp;5400 rpm &nbsp; <br />- M&agrave;n h&igrave;nh: 14.1 inch &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;WXGA (1280 x 800) &nbsp; <br />- Đồ họa: NVIDIA GeForce Go 8400M GS &nbsp;128 MB &nbsp;Card rời &nbsp; <br />- Đĩa quang: DVD Super Multimedia &nbsp;&nbsp; &nbsp; <br />- Hệ điều h&agrave;nh, phần mềm sẵn c&oacute;/OS: Windows Vista Home Basic &nbsp; <br />- K&iacute;ch thước &amp; trọng lượng: 2.39&nbsp;&nbsp;</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(436, 7, 'ASUS W5Fe (AS720001) ', '24120000.0000', '<p>- Bộ xử l&yacute;: Intel &nbsp;Core 2 Duo &nbsp;T7200 &nbsp;2.00 GHz &nbsp;L2 Cache, 4 MB &nbsp;- &nbsp; <br />- Bo mạch: Intel 945GM Express chip &nbsp;667 MHz &nbsp; <br />- Bộ nhớ: 2.5 GB &nbsp;DDR2 &nbsp;667 MHz &nbsp; <br />- Đĩa cứng: HDD &nbsp;160 GB &nbsp;&nbsp; &nbsp;5400 rpm &nbsp; <br />- M&agrave;n h&igrave;nh: 12.1 inch &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;XGA (1024 x 768) &nbsp; <br />- Đồ họa: Intel Graphics Media Accelerator (GMA) 950 &nbsp;128 MB &nbsp;T&iacute;ch hợp &nbsp; <br />- Đĩa quang: DVD Super Multimedia &nbsp;&nbsp; &nbsp; <br />- Hệ điều h&agrave;nh, phần mềm sẵn c&oacute;/OS: Windows Vista Business &nbsp; <br />- K&iacute;ch thước &amp; trọng lượng: 1.70&nbsp;&nbsp;</p>', NULL, '0000-00-00', 100, NULL, 0, 1, 1),
(437, 7, 'Asus S6FM (AS720002)  ', '35400000.0000', '<p>- Bộ xử l&yacute;: Intel &nbsp;Core 2 Duo &nbsp;L7200 &nbsp;1.33 GHz &nbsp;L2 Cache, 4 MB &nbsp;- &nbsp; <br />- Bo mạch: Intel 945GM Chip &nbsp;667 MHz &nbsp; <br />- Bộ nhớ: 1 GB &nbsp;DDR2 &nbsp;667 MHz &nbsp; <br />- Đĩa cứng: HDD &nbsp;160 GB &nbsp;&nbsp; &nbsp;5400 rpm &nbsp; <br />- M&agrave;n h&igrave;nh: 11.1 inch &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;WXGA (1280 x 800) &nbsp; <br />- Đồ họa: Intel Graphics Media Accelerator (GMA) 950 &nbsp;128 MB &nbsp;T&iacute;ch hợp &nbsp; <br />- Đĩa quang: DVD&plusmn;RW &nbsp;&nbsp; &nbsp; <br />- Hệ điều h&agrave;nh, phần mềm sẵn c&oacute;/OS: Windows Vista Home Premium &nbsp; <br />- K&iacute;ch thước &amp; trọng lượng: 1.39&nbsp;&nbsp;</p>\r\n<p>&nbsp;</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(438, 7, 'Asus F9S (AsF9SDF 7300)  ', '26350000.0000', '<p>- Bộ xử l&yacute;: Intel &nbsp;Core 2 Duo &nbsp;T7300 &nbsp;2.00 GHz &nbsp;4 MB, L2 Cache &nbsp;- &nbsp; <br />- Bo mạch: Intel 965 GM Chip &nbsp;800 MHz &nbsp; <br />- Bộ nhớ: 1 GB &nbsp;DDR2 &nbsp;667 MHz &nbsp; <br />- Đĩa cứng: HDD &nbsp;160 GB &nbsp;&nbsp; &nbsp;5400 rpm &nbsp; <br />- M&agrave;n h&igrave;nh: 12.1 inch &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;WXGA (1280 x 800) &nbsp; <br />- Đồ họa: NVIDIA GeForce Go 8400M GS &nbsp;128 MB &nbsp;Card rời &nbsp; <br />- Đĩa quang: DVD Super Multimedia &nbsp;&nbsp; &nbsp; <br />- Hệ điều h&agrave;nh, phần mềm sẵn c&oacute;/OS: Free Dos &nbsp; <br />- K&iacute;ch thước &amp; trọng lượng: 2.09&nbsp;&nbsp;</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(439, 7, 'Asus U3S (AS730004)  ', '34120000.0000', '<p>- Bộ xử l&yacute;: Intel &nbsp;Core 2 Duo &nbsp;T7300 &nbsp;2.00 GHz &nbsp;L2 Cache, 4 MB &nbsp;- &nbsp; <br />- Bo mạch: Intel&reg; GM965 Express Chip &nbsp;800 MHz &nbsp; <br />- Bộ nhớ: 512 MB &nbsp;DDR2 &nbsp;667 MHz &nbsp; <br />- Đĩa cứng: HDD &nbsp;160 GB &nbsp;&nbsp; &nbsp;5400 rpm &nbsp; <br />- M&agrave;n h&igrave;nh: 13.3 inch &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;WXGA (1280 x 800) &nbsp; <br />- Đồ họa: NVIDIA GeForce Go 8400M GS &nbsp;128 MB &nbsp;Card rời &nbsp; <br />- Đĩa quang: DVD Super Multimedia &nbsp;&nbsp; &nbsp; <br />- Hệ điều h&agrave;nh, phần mềm sẵn c&oacute;/OS: Windows Vista Home Premium &nbsp; <br />- K&iacute;ch thước &amp; trọng lượng: 1.95&nbsp;&nbsp;</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(440, 7, 'Asus U6S (AS725001)  ', '24350000.0000', '<p>- Bộ xử l&yacute;: Intel &nbsp;Core 2 Duo &nbsp;T7250 &nbsp;2.00 GHz &nbsp;L2 Cache, 4 MB &nbsp;- &nbsp; <br />- Bo mạch: Intel&reg; 965GML Express Chip &nbsp;800 MHz &nbsp; <br />- Bộ nhớ: 1 GB &nbsp;DDR2 &nbsp;667 MHz &nbsp; <br />- Đĩa cứng: HDD &nbsp;160 GB &nbsp;&nbsp; &nbsp;5400 rpm &nbsp; <br />- M&agrave;n h&igrave;nh: 12.1 inch &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;WXGA (1280 x 800) &nbsp; <br />- Đồ họa: NVIDIA GeForce Go 8400M GS &nbsp;128 MB &nbsp;Card rời &nbsp; <br />- Đĩa quang: DVD Super Multimedia &nbsp;&nbsp; &nbsp; <br />- Hệ điều h&agrave;nh, phần mềm sẵn c&oacute;/OS: Free Dos &nbsp; <br />- K&iacute;ch thước &amp; trọng lượng: 1.60&nbsp;&nbsp;</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(441, 7, 'Asus U1E U7500  ', '25400000.0000', '<p>- Bộ xử l&yacute;: Intel &nbsp;Core 2 Duo &nbsp;U7500 &nbsp;1.06 GHz &nbsp;2 MB, L2 Cache &nbsp;- &nbsp; <br />- Bo mạch: Intel 965GM Express chip &nbsp;667 MHz &nbsp; <br />- Bộ nhớ: 1 GB &nbsp;DDR2 &nbsp;667 MHz &nbsp; <br />- Đĩa cứng: HDD &nbsp;100 GB &nbsp;&nbsp; &nbsp;4200 rpm &nbsp; <br />- M&agrave;n h&igrave;nh: 11.1 inch &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;WXGA (1280 x 768) &nbsp; <br />- Đồ họa: Intel Graphics Media Accelerator (GMA) X3100 &nbsp;- &nbsp;T&iacute;ch hợp &nbsp; <br />- Đĩa quang: - &nbsp;&nbsp; &nbsp; <br />- Hệ điều h&agrave;nh, phần mềm sẵn c&oacute;/OS: Windows Vista Business &nbsp; <br />- K&iacute;ch thước &amp; trọng lượng: 1&nbsp;&nbsp;</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(442, 7, 'Asus VX2S (AS750003)  ', '24120000.0000', '<p>- Bộ xử l&yacute;: Intel &nbsp;Core 2 Duo &nbsp;T7500 &nbsp;2.20 GHz &nbsp;4 MB, L2 Cache &nbsp;- &nbsp; <br />- Bo mạch: Intel&reg; GM965 Express Chip &nbsp;800 MHz &nbsp; <br />- Bộ nhớ: 4 GB &nbsp;DDR2 &nbsp;667 MHz &nbsp; <br />- Đĩa cứng: HDD &nbsp;200 GB &nbsp;&nbsp; &nbsp;5400 rpm &nbsp; <br />- M&agrave;n h&igrave;nh: 15.4 inch &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;WXGA (1280 x 800) &nbsp; <br />- Đồ họa: NVIDIA GeForce 8600M GT &nbsp;512 MB &nbsp;Card rời &nbsp; <br />- Đĩa quang: - &nbsp;&nbsp; &nbsp; <br />- Hệ điều h&agrave;nh, phần mềm sẵn c&oacute;/OS: Windows Vista Ultimate &nbsp; <br />- K&iacute;ch thước &amp; trọng lượng: 2.90&nbsp;&nbsp;</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(443, 7, 'Asus X80L T2330  ', '25350000.0000', '<p>- Bộ xử l&yacute;: Intel &nbsp;Pentium &nbsp;T2330 &nbsp;1.60 GHz &nbsp;L2 Cache, 1 MB &nbsp;- &nbsp; <br />- Bo mạch: Intel&reg; 965 Express Chip &nbsp;800 MHz &nbsp; <br />- Bộ nhớ: 1 GB &nbsp;DDR2 &nbsp;667 MHz &nbsp; <br />- Đĩa cứng: HDD &nbsp;120 GB &nbsp;&nbsp; &nbsp;5400 rpm &nbsp; <br />- M&agrave;n h&igrave;nh: 14.1 inch &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;WXGA (1280 x 800) &nbsp; <br />- Đồ họa: ATI Radeon Xpress 1100 &nbsp;- &nbsp;T&iacute;ch hợp &nbsp; <br />- Đĩa quang: DVD Super Multimedia &nbsp;&nbsp; &nbsp; <br />- Hệ điều h&agrave;nh, phần mềm sẵn c&oacute;/OS: Free Dos &nbsp; <br />- K&iacute;ch thước &amp; trọng lượng: 2.39&nbsp;&nbsp;</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(444, 7, 'Asus Lamborghini VX2S (T9300)', '18350000.0000', '<p>- Bộ xử l&yacute;: Intel &nbsp;Core 2 Duo &nbsp;T9300 &nbsp;2.50 GHz &nbsp;6 MB, L2 Cache &nbsp;- &nbsp; <br />- Bo mạch: Intel 965GM Express Chipset &nbsp;800 MHz &nbsp; <br />- Bộ nhớ: 4 GB &nbsp;DDR2 &nbsp;667 MHz &nbsp; <br />- Đĩa cứng: HDD &nbsp;250 GB &nbsp;&nbsp; &nbsp;5400 rpm &nbsp; <br />- M&agrave;n h&igrave;nh: 15.4 inch &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;WXGA (1280 x 800) &nbsp; <br />- Đồ họa: NVIDIA GeForce 9500M GS &nbsp;512 MB &nbsp;Card rời &nbsp; <br />- Đĩa quang: - &nbsp;&nbsp; &nbsp; <br />- Hệ điều h&agrave;nh, phần mềm sẵn c&oacute;/OS: Windows Vista Ultimate &nbsp; <br />- K&iacute;ch thước &amp; trọng lượng: 2.90&nbsp;&nbsp;</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(445, 7, 'Samsung Q428 i5 460M  ', '17299000.0000', '<p>- CPU: Intel Core i5 460M, 2.53 GHz, L3 Cache, 3 MB<br />- Bo mạch: Mobile Intel HM55 Express Chip, 1066 MHz<br />- Bộ nhớ: DDR3, 4 GB, 1066 MHz<br />- M&agrave;n h&igrave;nh: 14 inch HD (1366 x 768)<br />- Đồ họa: NVIDIA GeForce G 310M, 512 MB<br />- Đĩa cứng: HDD 500 GB, 5400 rpm<br />- Đĩa quang: DVD Super Multimedia<br />- Hệ điều h&agrave;nh: Free Dos. Trọng lượng: 2 kg</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(446, 7, 'Samsung Q428 DS04VN i3 370M  ', '16199000.0000', '<p>- CPU: Intel Core i3 370M, 2.40 GHz, 3 MB, L3 Cache<br />- Bo mạch: Mobile Intel HM55 Express Chip, 1066 MHz<br />- Bộ nhớ: DDR3, 4 GB, 1066 MHz<br />- M&agrave;n h&igrave;nh: 14 inch HD (1366 x 768)<br />- Đồ họa: NVIDIA GeForce 310M, 512 MB<br />- Đĩa cứng: HDD 320 GB, 5400 rpm<br />- Đĩa quang: DVD Super Multimedia<br />- Hệ điều h&agrave;nh: Free Dos. Trọng lượng: 2 kg</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(447, 7, 'Samsung Q428 i3 350M  ', '14599000.0000', '<p>- CPU: Intel Core i3 350M, 2.26 GHz, 3 MB, L3 Cache<br />- Bo mạch: Mobile Intel HM55 Express Chip, 1066 MHz<br />- Bộ nhớ: DDR3, 2 GB, 1066 MHz<br />- M&agrave;n h&igrave;nh: 14 inch HD (1366 x 768)<br />- Đồ họa: NVIDIA GeForce 310M, 512 MB<br />- Đĩa cứng: HDD 320 GB, 5400 rpm<br />- Đĩa quang: DVD Super Multi Double Layer<br />- Hệ điều h&agrave;nh: Free Dos. Trọng lượng: 2 kg</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(448, 7, 'Samsung R439 DT08VN ', '12799000.0000', '<p>- CPU: Intel Core i3 370M, 2.40 GHz, 3 MB Cache<br />- Bộ nhớ: DDR3, 2 GB. Đĩa cứng: 320 GB<br />- M&agrave;n h&igrave;nh: 14 inch HD (1366 x 768)<br />- Đồ họa: ATI Mobility Radeon HD 545v<br />- Đĩa quang: DVD Super Multi Double Layer<br />- Hệ điều h&agrave;nh: Free Dos. Trọng lượng: 2,2 kg</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(449, 7, 'Samsung R439 DA04VN ', '11999000.0000', '<p>- CPU: Intel Core i3 370M, 2.40 GHz<br />- Bộ nhớ: DDR3, 2 GB. Đĩa cứng: 320 GB<br />- M&agrave;n h&igrave;nh: 14 inch HD (1366 x 768 pixels)<br />- Đồ họa: Intel Graphics Media Accelerator HD Graphics<br />- Đĩa quang: DVD Super Multi Double Layer<br />- Hệ điều h&agrave;nh: Free Dos. Trọng lượng: 2,1 kg</p>', NULL, '0000-00-00', 100, NULL, 0, 1, 1),
(450, 7, 'Samsung R439  ', '10999000.0000', '<p>- Bộ xử l&yacute;: Intel &nbsp;Core i3 &nbsp;350M &nbsp;2.26 GHz &nbsp;L3 Cache, 3 MB &nbsp;2C / 4T &nbsp; <br />- Bo mạch: Mobile Intel HM55 Express Chip &nbsp;1066 MHz &nbsp; <br />- Bộ nhớ: 2 GB &nbsp;DDR3 &nbsp;1066 MHz &nbsp; <br />- Đĩa cứng: HDD &nbsp;320 GB &nbsp;Đang cập nhật &nbsp;5400 rpm &nbsp; <br />- M&agrave;n h&igrave;nh: 14 inch &nbsp;LCD, LED &nbsp;16:9 &nbsp;HD (1366 x 768) &nbsp; <br />- Đồ họa: Intel Graphics Media Accelerator (GMA) 4500MHD &nbsp;256 MB &nbsp;T&iacute;ch hợp &nbsp; <br />- Đĩa quang: DVD Super Multimedia &nbsp;16X &nbsp; <br />- Hệ điều h&agrave;nh, phần mềm sẵn c&oacute;/OS: Free Dos &nbsp; <br />- K&iacute;ch thước &amp; trọng lượng: 2.2&nbsp;&nbsp;</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(451, 7, 'Samsung RV408 A01VN  ', '8999000.0000', '<p>- CPU: Intel Pentium T4500, 2.30 GHz, 1 MB, L2 Cache<br />- Bo mạch: Mobile Intel GL40 Express Chip, 800 MHz<br />- Bộ nhớ: DDR3, 2 GB, 1066 MHz<br />- M&agrave;n h&igrave;nh: 14 inch HD (1366 x 768)<br />- Đồ họa: Intel Graphics Media Accelerator (GMA) X4500, 256 MB<br />- Đĩa cứng: HDD 250 GB, 5400 rpm<br />- Đĩa quang: DVD Super Multimedia<br />- Hệ điều h&agrave;nh: Free Dos. Trọng lượng: 2 kg</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(452, 7, 'Samsung N148 DP04VN  ', '7499000.0000', '<p>- CPU: Intel Atom 450, 1.66 GHz<br />- Bộ nhớ: DDR2, 2 GB. Đĩa cứng: 250 GB<br />- M&agrave;n h&igrave;nh: 10.1 inch WSVGA (1024 x 600 pixels)<br />- Đồ họa: Intel Graphics Media Accelerator (GMA) 3150<br />- Đĩa quang: -<br />- Hệ điều h&agrave;nh: Free Dos. Trọng lượng: 1,2 kg</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(453, 7, 'Samsung N148 DP05VN  ', '7499000.0000', '<p>- CPU: Intel Atom 450, 1.66 GHz<br />- Bộ nhớ: DDR2, 2 GB. Đĩa cứng: 250 GB<br />- M&agrave;n h&igrave;nh: 10.1 inch WSVGA (1024 x 600 pixels)<br />- Đồ họa: Intel Graphics Media Accelerator (GMA) 3150<br />- Đĩa quang: -<br />- Hệ điều h&agrave;nh: Free Dos. Trọng lượng: 1,2 kg</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(454, 7, 'Samsung N143 DP01VN  ', '6499000.0000', '<p>- CPU: Intel Atom 450, 1.66 GHz, 512 KB Cache<br />- Bộ nhớ: 1 GB.&nbsp; Đĩa cứng: 160 GB<br />- M&agrave;n h&igrave;nh: 10.1 inch WSVGA (1024 x 600 px)<br />- Đồ họa: Intel Graphics Media Accelerator (GMA) 3150</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(455, 7, 'Samsung SF510-S02DE  ', '7400000.0000', '<p>- CPU: Intel Core i3 370M, 2.40 GHz<br />- Bộ nhớ: DDR3, 4 GB. Đĩa cứng: 500 GB<br />- M&agrave;n h&igrave;nh: 15.6 inch HD (1366 x 768 pixels)<br />- Đồ họa: NVIDIA GeForce 310M<br />- Đĩa quang: DVD&plusmn;RW<br />- Hệ điều h&agrave;nh: Windows 7 Home Premium. Trọng lượng: 2.5 kg</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(456, 7, 'Samsung R470  ', '6400000.0000', '<p>- Bộ xử l&yacute;: Intel &nbsp;Core 2 Duo &nbsp;T6500 &nbsp;2.10 GHz &nbsp;L2 Cache, 2 MB &nbsp;- &nbsp; <br />- Bo mạch: Mobile Intel&reg; PM45 Express Chipset &nbsp;1066 MHz &nbsp; <br />- Bộ nhớ: 2 GB &nbsp;DDR2 &nbsp;800 MHz &nbsp; <br />- Đĩa cứng: HDD &nbsp;250 GB &nbsp;&nbsp; &nbsp;5400 rpm &nbsp; <br />- M&agrave;n h&igrave;nh: 14 inch &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;HD (1366 x 768) &nbsp; <br />- Đồ họa: NVIDIA GeForce G 105M &nbsp;256 MB &nbsp;Card rời &nbsp; <br />- Đĩa quang: DVD Super Multimedia &nbsp;&nbsp; &nbsp; <br />- Hệ điều h&agrave;nh, phần mềm sẵn c&oacute;/OS: Free Dos &nbsp; <br />- K&iacute;ch thước &amp; trọng lượng: 2.29&nbsp;&nbsp;</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(457, 7, 'Samsung R428 (DA02VN)  ', '8400000.0000', '<p>- Bộ xử l&yacute;: Intel &nbsp;Pentium &nbsp;T4400 &nbsp;2.20 GHz &nbsp;1 MB, L2 Cache &nbsp;2C / 2T &nbsp; <br />- Bo mạch: Mobile Intel GL40 Express Chip &nbsp;800 MHz &nbsp; <br />- Bộ nhớ: 1 GB &nbsp;DDR3 &nbsp;1066 MHz &nbsp; <br />- Đĩa cứng: HDD &nbsp;250 GB &nbsp;Đang cập nhật &nbsp;5400 rpm &nbsp; <br />- M&agrave;n h&igrave;nh: 14 inch &nbsp;LED &nbsp;16:9 &nbsp;HD (1366 x 768) &nbsp; <br />- Đồ họa: Intel Graphics Media Accelerator (GMA) X4500 &nbsp;256 MB &nbsp;T&iacute;ch hợp &nbsp; <br />- Đĩa quang: DVD Super Multimedia &nbsp;8X &nbsp; <br />- Hệ điều h&agrave;nh, phần mềm sẵn c&oacute;/OS: Free Dos &nbsp; <br />- K&iacute;ch thước &amp; trọng lượng: 2.2&nbsp;&nbsp;</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(458, 7, 'Samsung NB30', '26299000.0000', '<p>- Bộ xử l&yacute;: Intel &nbsp;Atom &nbsp;N450 &nbsp;133 MHz &nbsp;L2 Cache, 512 KB &nbsp;1C / 2T &nbsp; <br />- Bo mạch: Intel NM10 Express Chipsets &nbsp;667 MHz &nbsp; <br />- Bộ nhớ: 1 GB &nbsp;DDR2 &nbsp;667 MHz &nbsp; <br />- Đĩa cứng: HDD &nbsp;160 GB &nbsp;&nbsp; &nbsp;5400 rpm &nbsp; <br />- M&agrave;n h&igrave;nh: 10.1 inch &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;WSVGA (1024 x 600 px) &nbsp; <br />- Đồ họa: Intel Graphics Media Accelerator (GMA) 3150 &nbsp;- &nbsp;T&iacute;ch hợp &nbsp; <br />- Đĩa quang: - &nbsp;&nbsp; &nbsp; <br />- Hệ điều h&agrave;nh, phần mềm sẵn c&oacute;/OS: Windows 7 Starter &nbsp; <br />- K&iacute;ch thước &amp; trọng lượng: 1&nbsp;&nbsp;</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(459, 7, 'Samsung N310 13GBK  ', '18350000.0000', '<p>- Bộ xử l&yacute;: Intel &nbsp;Atom &nbsp;N270 &nbsp;1.60 GHz &nbsp;512 KB, L2 Cache &nbsp;- &nbsp; <br />- Bo mạch: Intel 945GSE Express &nbsp;667 MHz &nbsp; <br />- Bộ nhớ: 1 GB &nbsp;DDR2 &nbsp;667 MHz &nbsp; <br />- Đĩa cứng: HDD &nbsp;160 GB &nbsp;&nbsp; &nbsp;5400 rpm &nbsp; <br />- M&agrave;n h&igrave;nh: 10.1 inch &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;WSVGA (1024 x 600 px) &nbsp; <br />- Đồ họa: Intel Graphics Media Accelerator (GMA) 950 &nbsp;128 MB &nbsp;T&iacute;ch hợp &nbsp; <br />- Đĩa quang: - &nbsp;&nbsp; &nbsp; <br />- Hệ điều h&agrave;nh, phần mềm sẵn c&oacute;/OS: Windows XP Home Edition &nbsp; <br />- K&iacute;ch thước &amp; trọng lượng: 1.29&nbsp;&nbsp;</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(460, 7, 'Samsung N310 13GMB', '6400000.0000', '<p>- Bộ xử l&yacute;: Intel &nbsp;Atom &nbsp;N270 &nbsp;1.60 GHz &nbsp;512 KB, L2 Cache &nbsp;- &nbsp; <br />- Bo mạch: Intel 945GSE Express &nbsp;667 MHz &nbsp; <br />- Bộ nhớ: 1 GB &nbsp;DDR2 &nbsp;667 MHz &nbsp; <br />- Đĩa cứng: HDD &nbsp;160 GB &nbsp;&nbsp; &nbsp;5400 rpm &nbsp; <br />- M&agrave;n h&igrave;nh: 10.1 inch &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;WSVGA (1024 x 600 px) &nbsp; <br />- Đồ họa: Intel Graphics Media Accelerator (GMA) 950 &nbsp;128 MB &nbsp;T&iacute;ch hợp &nbsp; <br />- Đĩa quang: - &nbsp;&nbsp; &nbsp; <br />- Hệ điều h&agrave;nh, phần mềm sẵn c&oacute;/OS: Windows XP Home Edition &nbsp; <br />- K&iacute;ch thước &amp; trọng lượng: 1.29&nbsp;&nbsp;</p>\r\n<p>&nbsp;</p>', NULL, '0000-00-00', 100, NULL, 0, 1, 1),
(461, 7, 'Samsung N310 13GB ', '35400000.0000', '<p>- Bộ xử l&yacute;: Intel &nbsp;Atom &nbsp;N270 &nbsp;1.60 GHz &nbsp;512 KB, L2 Cache &nbsp;- &nbsp; <br />- Bo mạch: Intel 945GSE Express &nbsp;667 MHz &nbsp; <br />- Bộ nhớ: 1 GB &nbsp;DDR2 &nbsp;667 MHz &nbsp; <br />- Đĩa cứng: HDD &nbsp;160 GB &nbsp;&nbsp; &nbsp;5400 rpm &nbsp; <br />- M&agrave;n h&igrave;nh: 10.1 inch &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;WSVGA (1024 x 600 px) &nbsp; <br />- Đồ họa: Intel Graphics Media Accelerator (GMA) 950 &nbsp;128 MB &nbsp;T&iacute;ch hợp &nbsp; <br />- Đĩa quang: - &nbsp;&nbsp; &nbsp; <br />- Hệ điều h&agrave;nh, phần mềm sẵn c&oacute;/OS: Windows XP Home Edition &nbsp; <br />- K&iacute;ch thước &amp; trọng lượng: 1.29</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(462, 7, 'Samsung N120 12GW ', '35400000.0000', '<p>- Bộ xử l&yacute;: Intel &nbsp;Atom &nbsp;N270 &nbsp;1.60 GHz &nbsp;L2 Cache, 512 KB &nbsp;- &nbsp; <br />- Bo mạch: Intel 945GSE Express &nbsp;667 MHz &nbsp; <br />- Bộ nhớ: 1 GB &nbsp;DDR2 &nbsp;667 MHz &nbsp; <br />- Đĩa cứng: HDD &nbsp;160 GB &nbsp;&nbsp; &nbsp;5400 rpm &nbsp; <br />- M&agrave;n h&igrave;nh: 10.1 inch &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;WSVGA (1024 x 600 px) &nbsp; <br />- Đồ họa: Intel Graphics Media Accelerator (GMA) 950 &nbsp;128 MB &nbsp;T&iacute;ch hợp &nbsp; <br />- Đĩa quang: - &nbsp;&nbsp; &nbsp; <br />- Hệ điều h&agrave;nh, phần mềm sẵn c&oacute;/OS: Windows XP Home Edition &nbsp; <br />- K&iacute;ch thước &amp; trọng lượng: 1.26&nbsp;&nbsp;</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(463, 7, 'Samsung N120 12GBK  ', '24120000.0000', '<p>- Bộ xử l&yacute;: Intel &nbsp;Atom &nbsp;N270 &nbsp;1.60 GHz &nbsp;L2 Cache, 512 KB &nbsp;- &nbsp; <br />- Bo mạch: Intel 945GSE Express &nbsp;667 MHz &nbsp; <br />- Bộ nhớ: 1 GB &nbsp;DDR2 &nbsp;667 MHz &nbsp; <br />- Đĩa cứng: HDD &nbsp;160 GB &nbsp;&nbsp; &nbsp;5400 rpm &nbsp; <br />- M&agrave;n h&igrave;nh: 10.1 inch &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;WSVGA (1024 x 600 px) &nbsp; <br />- Đồ họa: Intel Graphics Media Accelerator (GMA) 950 &nbsp;128 MB &nbsp;T&iacute;ch hợp &nbsp; <br />- Đĩa quang: - &nbsp;&nbsp; &nbsp; <br />- Hệ điều h&agrave;nh, phần mềm sẵn c&oacute;/OS: Windows XP Home Edition &nbsp; <br />- K&iacute;ch thước &amp; trọng lượng: 1.20&nbsp;&nbsp;</p>', NULL, '0000-00-00', 100, NULL, 0, 3, 1),
(464, 7, 'Samsung N120 13GBL ', '15400000.0000', '<p>- Bộ xử l&yacute;: Intel &nbsp;Atom &nbsp;N270 &nbsp;1.60 GHz &nbsp;L2 Cache, 512 KB &nbsp;- &nbsp; <br />- Bo mạch: Intel 945GSE Express &nbsp;667 MHz &nbsp; <br />- Bộ nhớ: 1 GB &nbsp;DDR2 &nbsp;667 MHz &nbsp; <br />- Đĩa cứng: HDD &nbsp;160 GB &nbsp;&nbsp; &nbsp;5400 rpm &nbsp; <br />- M&agrave;n h&igrave;nh: 10.1 inch &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;WSVGA (1024 x 600 px) &nbsp; <br />- Đồ họa: Intel Graphics Media Accelerator (GMA) 950 &nbsp;128 MB &nbsp;T&iacute;ch hợp &nbsp; <br />- Đĩa quang: - &nbsp;&nbsp; &nbsp; <br />- Hệ điều h&agrave;nh, phần mềm sẵn c&oacute;/OS: Windows XP Home Edition &nbsp; <br />- K&iacute;ch thước &amp; trọng lượng: 1.29&nbsp;&nbsp;</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(465, 7, 'Samsung N130 13P  ', '7400000.0000', '<p>- Bộ xử l&yacute;: Intel &nbsp;Atom &nbsp;N270 &nbsp;1.60 GHz &nbsp;L2 Cache, 512 KB &nbsp;- &nbsp; <br />- Bo mạch: Intel 945GSE + ICH7M &nbsp;667 MHz &nbsp; <br />- Bộ nhớ: 1 GB &nbsp;DDR2 &nbsp;667 MHz &nbsp; <br />- Đĩa cứng: HDD &nbsp;160 GB &nbsp;&nbsp; &nbsp;5400 rpm &nbsp; <br />- M&agrave;n h&igrave;nh: 10.1 inch &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;WSVGA (1024 x 600 px) &nbsp; <br />- Đồ họa: Intel Graphics Media Accelerator (GMA) 950 &nbsp;128 MB &nbsp;T&iacute;ch hợp &nbsp; <br />- Đĩa quang: - &nbsp;&nbsp; &nbsp; <br />- Hệ điều h&agrave;nh, phần mềm sẵn c&oacute;/OS: Windows XP Home Edition &nbsp; <br />- K&iacute;ch thước &amp; trọng lượng: 1.29&nbsp;&nbsp;</p>', NULL, '0000-00-00', 100, NULL, 0, 2, 1),
(466, 7, 'Samsung N130 13B  ', '15400000.0000', '<p>- Bộ xử l&yacute;: Intel &nbsp;Atom &nbsp;N270 &nbsp;1.60 GHz &nbsp;L2 Cache, 512 KB &nbsp;- &nbsp; <br />- Bo mạch: Intel 945GSE + ICH7M &nbsp;667 MHz &nbsp; <br />- Bộ nhớ: 1 GB &nbsp;DDR2 &nbsp;667 MHz &nbsp; <br />- Đĩa cứng: HDD &nbsp;160 GB &nbsp;&nbsp; &nbsp;5400 rpm &nbsp; <br />- M&agrave;n h&igrave;nh: 10.1 inch &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;WSVGA (1024 x 600 px) &nbsp; <br />- Đồ họa: Intel Graphics Media Accelerator (GMA) 950 &nbsp;128 MB &nbsp;T&iacute;ch hợp &nbsp; <br />- Đĩa quang: - &nbsp;&nbsp; &nbsp; <br />- Hệ điều h&agrave;nh, phần mềm sẵn c&oacute;/OS: Windows XP Home Edition &nbsp; <br />- K&iacute;ch thước &amp; trọng lượng: 1.29&nbsp;&nbsp;</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(467, 7, 'SAMSUNG R720  ', '28350000.0000', '<p>- Bộ xử l&yacute;: Intel &nbsp;Core 2 Duo &nbsp;P7350 &nbsp;2.00 GHz &nbsp;L2 Cache, 3 MB &nbsp;- &nbsp; <br />- Bo mạch: - &nbsp;- &nbsp; <br />- Bộ nhớ: 4 GB &nbsp;DDR2 &nbsp;800 MHz &nbsp; <br />- Đĩa cứng: HDD &nbsp;320 GB &nbsp;&nbsp; &nbsp;5400 rpm &nbsp; <br />- M&agrave;n h&igrave;nh: 17.3 inch &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;HD+ (1600 x 900) &nbsp; <br />- Đồ họa: ATI Mobility Radeon HD 4330 &nbsp;512 MB &nbsp;Card rời &nbsp; <br />- Đĩa quang: DVD Super Multimedia &nbsp;&nbsp; &nbsp; <br />- Hệ điều h&agrave;nh, phần mềm sẵn c&oacute;/OS: Windows Vista Home Premium &nbsp; <br />- K&iacute;ch thước &amp; trọng lượng: 2.88&nbsp;&nbsp;</p>', NULL, '0000-00-00', 100, NULL, 0, 3, 1),
(468, 7, 'Samsung NF210  ', '6400000.0000', '<p>- CPU: Intel Atom N550, 1.50 GHz<br />- Bộ nhớ: DDR3, 1 GB. Đĩa cứng: 250 GB<br />- M&agrave;n h&igrave;nh: 10.1 inch WSVGA (1024 x 600 px)<br />- Đồ họa: Intel Graphics Media Accelerator (GMA) 3150<br />- Đĩa quang: -<br />- Hệ điều h&agrave;nh: Windows 7 Starter. Trọng lượng: 1.25 kg</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(469, 7, 'Samsung P430  ', '7400000.0000', '<p>- Bộ xử l&yacute;: Intel &nbsp;Core i3 &nbsp;330M &nbsp;2.13 GHz &nbsp;L3 Cache, 3 MB &nbsp;2C / 4T &nbsp; <br />- Bo mạch: Mobile Intel &reg; HM55 Express Chipset &nbsp;1066 MHz &nbsp; <br />- Bộ nhớ: 2 GB &nbsp;DDR3 &nbsp;1066 MHz &nbsp; <br />- Đĩa cứng: HDD &nbsp;250 GB &nbsp;&nbsp; &nbsp;5400 rpm &nbsp; <br />- M&agrave;n h&igrave;nh: 14 inch &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;HD (1366 x 768) &nbsp; <br />- Đồ họa: Intel Graphics Media Accelerator HD Graphics &nbsp;- &nbsp;T&iacute;ch hợp &nbsp; <br />- Đĩa quang: DVD&plusmn;RW Dual Layer &nbsp;&nbsp; &nbsp; <br />- Hệ điều h&agrave;nh, phần mềm sẵn c&oacute;/OS: Windows 7 Professional &nbsp; <br />- K&iacute;ch thước &amp; trọng lượng: 2.25&nbsp;&nbsp;</p>', NULL, '0000-00-00', 100, NULL, 0, 0, 1),
(470, 7, 'Samsung P530 Pro  ', '6400000.0000', '<p>- Bộ xử l&yacute;: Intel &nbsp;Core i3 &nbsp;330M &nbsp;2.13 GHz &nbsp;3 MB, L3 Cache &nbsp;2C / 4T &nbsp; <br />- Bo mạch: Mobile Intel &reg; HM55 Express Chipset &nbsp;1066 MHz &nbsp; <br />- Bộ nhớ: 2 GB &nbsp;DDR3 &nbsp;1066 MHz &nbsp; <br />- Đĩa cứng: HDD &nbsp;250 GB &nbsp;&nbsp; &nbsp;5400 rpm &nbsp; <br />- M&agrave;n h&igrave;nh: 15.6 inch &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;HD (1366 x 768) &nbsp; <br />- Đồ họa: Intel Graphics Media Accelerator HD Graphics &nbsp;- &nbsp;T&iacute;ch hợp &nbsp; <br />- Đĩa quang: DVD&plusmn;RW Dual Layer &nbsp;&nbsp; &nbsp; <br />- Hệ điều h&agrave;nh, phần mềm sẵn c&oacute;/OS: Windows 7 Professional &nbsp; <br />- K&iacute;ch thước &amp; trọng lượng: 2.34&nbsp;&nbsp;</p>', NULL, '0000-00-00', 100, NULL, 0, 6, 1),
(471, 7, 'Samsung P480 Pro ', '15400000.0000', '<p>- Bộ xử l&yacute;: Intel &nbsp;Core i5 &nbsp;540M &nbsp;2.53 GHz &nbsp;4 MB, L3 Cache &nbsp;2C / 4T &nbsp; <br />- Bo mạch: Mobile Intel &reg; HM55 Express Chipset &nbsp;1066 MHz &nbsp; <br />- Bộ nhớ: 2 GB &nbsp;DDR3 &nbsp;1066 MHz &nbsp; <br />- Đĩa cứng: HDD &nbsp;320 GB &nbsp;&nbsp; &nbsp;5400 rpm &nbsp; <br />- M&agrave;n h&igrave;nh: 14 inch &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;HD (1366 x 768) &nbsp; <br />- Đồ họa: Intel Graphics Media Accelerator HD Graphics &nbsp;- &nbsp;T&iacute;ch hợp &nbsp; <br />- Đĩa quang: - &nbsp;&nbsp; &nbsp; <br />- Hệ điều h&agrave;nh, phần mềm sẵn c&oacute;/OS: Windows 7 &nbsp; <br />- K&iacute;ch thước &amp; trọng lượng: 2.22&nbsp;&nbsp;</p>\r\n<p>&nbsp;</p>', NULL, '0000-00-00', 100, NULL, 0, 4, 1),
(472, 7, 'Samsung RF510  ', '24350000.0000', '<p>- CPU: Intel Core i5 460M, 2.53 GHz, 3 MB Cache<br />- Bộ nhớ: 4 GB. Đĩa cứng: 640 GB<br />- M&agrave;n h&igrave;nh: 15.6 inch HD (1366 x 768)<br />- Đồ họa: NVIDIA GeForce GT 330M<br />- Đĩa quang: Bluray Combo<br />- Hệ điều h&agrave;nh: Windows 7 Home Premium. Trọng lượng: 2.6 kg</p>\r\n<p>&nbsp;</p>', NULL, '0000-00-00', 100, NULL, 0, 3, 1),
(473, 7, 'Samsung RF710  ', '6400000.0000', '<p>- CPU: <span>Intel Core i7-720QM</span>, 1.6 GHz, 6 MB Cache<br />- Bộ nhớ: 4 GB. Đĩa cứng: 640 GB<br />- M&agrave;n h&igrave;nh: 17.3 inch HD+ (1600 x 900)<br />- Đồ họa: NVIDIA GeForce GT 330M<br />- Đĩa quang: Bluray Combo<br />- Hệ điều h&agrave;nh: Windows 7 Home Premium. Trọng lượng: 2.9 kg</p>\r\n<p>&nbsp;</p>', NULL, '0000-00-00', 100, NULL, 0, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `fs_product_img`
--

CREATE TABLE `fs_product_img` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `url` varchar(200) NOT NULL,
  `alt` varchar(50) NOT NULL,
  `order` int(11) NOT NULL,
  `active` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fs_product_img`
--

INSERT INTO `fs_product_img` (`id`, `product_id`, `url`, `alt`, `order`, `active`) VALUES
(1, 1, 'Nokia_N81.jpg', 'Nokia N8', 1, 1),
(2, 2, 'N900.jpg', 'Nokia N900', 1, 1),
(3, 4, '6700_gold.jpg', 'Nokia 6700 classic gold', 1, 1),
(4, 5, 'n97.jpg', 'Nokia N97', 1, 1),
(5, 6, 'N97_mini.jpg', 'Nokia N97 mini Navi', 1, 1),
(6, 7, 'nokia_C7.jpg', 'Nokia C7', 1, 1),
(7, 8, 'N86.jpg', 'Nokia N86', 1, 1),
(8, 9, 'E72.jpg', 'Nokia E72 Navi', 1, 1),
(9, 10, 'E72_1.jpg', 'Nokia E72', 1, 1),
(10, 11, 'E72-white.jpg', 'Nokia E72 white', 1, 1),
(11, 12, 'x6_16.jpg', 'Nokia X6 16GB ', 1, 1),
(12, 13, 'x6_16_1.jpg', 'Nokia X6 Navi', 1, 1),
(13, 14, 'X6-8G.jpg', 'Nokia X6 8GB', 1, 1),
(14, 15, 'C6.jpg', 'Nokia C6', 1, 1),
(15, 16, 'E75.jpg', 'Nokia E75', 1, 1),
(16, 17, '5800_nav.jpg', 'Nokia 5800 Navi  ', 1, 1),
(17, 18, 'Nokia-5800.jpg', 'Nokia 5800 XpressMussic 4GB', 1, 1),
(18, 19, 'nokia_e71.jpg', 'Nokia E71', 1, 1),
(19, 20, 'no_e66.jpg', 'Nokia E66', 1, 1),
(20, 21, 'nokia_E5.jpg', 'Nokia E5', 1, 1),
(21, 22, 'nokia_E5_1.jpg', 'Nokia 6700 classic illuvial pink', 1, 1),
(22, 23, '6700_pink.jpg', 'Nokia 6700 classic illuvial pink   ', 1, 1),
(23, 24, 'no_E52.jpg', 'Nokia E52 Navi ', 1, 1),
(24, 25, '6700_cla.jpg', 'Nokia 6700 classic', 1, 1),
(25, 26, 'nokia_c5-03.jpg', 'Nokia C5-03', 1, 1),
(26, 27, 'Nokia_6760.jpg', 'Nokia 6760 slide', 1, 1),
(27, 28, '000000000Nokia_5530pink.jpg', 'Nokia 5530 illuvial pink', 1, 1),
(28, 29, 'Nokia 5530 XpressMusic.jpg', 'Nokia 5530 XpressMusic   ', 1, 1),
(29, 30, '7610_sup.jpg', 'Nokia 7610 supernova ', 1, 1),
(30, 31, 'Nokia_5233.jpg', 'Nokia 5233   ', 1, 1),
(31, 32, 'nokia_x3.jpg', 'Nokia X3  ', 1, 1),
(32, 33, 'nokia_5250_gray.jpg', 'Nokia 5250', 1, 1),
(33, 34, 'no_c3.jpg', 'Nokia C3', 1, 1),
(34, 35, '0Nokia_6303i.jpg', 'Nokia 6303i classic', 1, 1),
(35, 36, '0Nokia_7230.jpg', 'Nokia 7230  ', 1, 1),
(36, 37, 'Nokia_X2.jpg', 'Nokia X2', 1, 1),
(37, 38, 'Nokia-6600fold0.jpg', 'Nokia 6600 fold ', 1, 1),
(38, 39, 'Nokia 5130 XpressMusic.jpg', 'Nokia 5130 XpressMusic', 1, 1),
(39, 40, 'Nokia_X2-01.jpg', 'Nokia X2-01', 1, 1),
(40, 41, 'Nokia 2730 classic.jpg', 'Nokia 2730 classic', 1, 1),
(41, 42, 'Nokia 2700.jpg', 'Nokia 2700', 1, 1),
(42, 43, 'Nokia_2690.jpg', 'Nokia 2690', 1, 1),
(43, 44, 'Nokia_C1-01.jpg', 'Nokia C1-01', 1, 1),
(44, 45, 'Nokia 5030.jpg', 'Nokia 5030', 1, 1),
(45, 46, 'Nokia_C1_00.jpg', 'Nokia C1-00', 1, 1),
(46, 47, 'Nokia_1800.jpg', 'Nokia 1800', 1, 1),
(47, 48, 'Nokia_1616.jpg', 'Nokia 1616', 1, 1),
(48, 49, 'Nokia-1208b.jpg', 'Nokia 1208', 1, 1),
(49, 50, 'Nokia-1280.jpg', 'Nokia 1280', 1, 1),
(50, 51, 'X720_mitole.jpg', 'Motorola XT720 Milestone', 1, 1),
(51, 52, 'milse_tone.jpg', 'Motorola MILESTONE  ', 1, 1),
(52, 53, 'BACKFLIP.jpg', 'Motorola MB300 BACKFLIP   ', 1, 1),
(53, 54, 'motorola_EM300.jpg', 'Motorola EX300  ', 1, 1),
(54, 55, 'motorola-cd920.gif', 'Motorola CD920', 1, 1),
(55, 56, 'motorola-cd930.gif', 'Motorola CD930    ', 1, 1),
(56, 57, 'BACKFLIP_1.jpg', 'Motorola MB300 BACKFLIP   ', 1, 1),
(57, 58, 'motorola-d520.gif', 'Motorola D520 ', 1, 1),
(58, 59, 'motorola_EM300_1.jpg', 'Motorola EX300', 1, 1),
(59, 60, 'motorola-e360.gif', 'Motorola E360', 1, 1),
(60, 61, 'Motorola_WX295.jpg', 'Motorola WX295   ', 1, 1),
(61, 62, 'motorola-e365.gif', 'Motorola E365  ', 1, 1),
(62, 63, 'Moto_WX290.jpg', 'Motorola WX290     * Thiết kế dạng thanh trẻ trung', 1, 1),
(63, 64, 'motorola-e380.gif', 'Motorola E380 ', 1, 1),
(64, 65, 'Motorola_WX260.jpg', 'Motorola WX260   ', 1, 1),
(65, 66, 'motorola-e390.gif', 'Motorola E390', 1, 1),
(66, 67, 'Motorola_WX180.jpg', 'Motorola WX180   ', 1, 1),
(67, 68, 'motorola-m3188.gif', 'Motorola M3188 ', 1, 1),
(68, 69, 'Motorola_WX181.jpg', 'Motorola WX181 ', 1, 1),
(69, 70, 'motorola-m3288.gif', 'Motorola M3288 ', 1, 1),
(70, 71, 'Motorola-V3i-D_G-Gold6.jpg', 'Motorola RAZR V3i D&G Gold ', 1, 1),
(71, 72, 'motorola-m3588.gif', 'Motorola M3588', 1, 1),
(72, 73, '', 'Motorola C350', 1, 1),
(73, 74, '', 'Motorola A6188', 1, 1),
(74, 75, 'motorola-c330.jpg', 'Motorola C330  ', 1, 1),
(75, 76, 'motorola-a760.gif', 'Motorola A760', 1, 1),
(76, 77, 'LG_GS500.jpg', 'LG GS500 Cookie Plus', 1, 1),
(77, 78, 'GD880.jpg', 'LG GD880 Mini', 1, 1),
(78, 79, 'GT350.jpg', 'LG Wink Wifi GT350i ', 1, 1),
(79, 80, 'LG_GD510.jpg', 'LG GD510 Pop', 1, 1),
(80, 81, 'bl40.jpg', 'LG BL40 New Chocolate ', 1, 1),
(81, 82, 'LG-GS290.jpg', 'LG GS290 Cookie Fresh   ', 1, 1),
(82, 83, 'optic_one.jpg', 'LG Optimus One P500 ', 1, 1),
(83, 84, 'LG-GD350.jpg', 'LG GD350', 1, 1),
(84, 85, 'LG-GT540.jpg', 'LG GT540 Optimus', 1, 1),
(85, 86, 'LG_S310.jpg', 'LG S310 ', 1, 1),
(86, 87, 'LG_GU285.jpg', 'LG GU285', 1, 1),
(87, 88, 'GW620.jpg', 'LG GW620', 1, 1),
(88, 89, 'LG_GW300.jpg', 'LG GW300', 1, 1),
(89, 90, '0LG_GX500.jpg', 'LG GX500 ', 1, 1),
(90, 91, 'LG_GW305.jpg', 'LG GW305', 1, 1),
(91, 92, 'LG_GT505.jpg', 'LG GT505', 1, 1),
(92, 93, 'LG_T300.jpg', 'LG Wink Touch T300   ', 1, 1),
(93, 94, 'GM360i.jpg', 'LG GM360i ', 1, 1),
(94, 95, 'lg-600.gif', 'LG LG 600', 1, 1),
(95, 96, 'LG-GD580.jpg', 'LG GD580 Lollipop', 1, 1),
(96, 97, 'LG-KM550E.jpg', 'LG Cookie 3G KM555', 1, 1),
(97, 98, '0LG_GX200.jpg', 'LG GX200', 1, 1),
(98, 99, 'LG_GU230.jpg', 'LG GU230 ', 1, 1),
(99, 100, 'lg-510w.gif', 'LG LG 510w ', 1, 1),
(100, 101, 'lg-500.gif', 'LG LG 500', 1, 1),
(101, 102, 'LG_C100.jpg', 'LG Wink C100', 1, 1),
(102, 103, 'lg-200.gif', 'LG LG 200   ', 1, 1),
(103, 104, 'LG_GS155.jpg', 'LG GS155', 1, 1),
(104, 105, '', 'LG Chocolate Gold KE800   ', 1, 1),
(105, 106, 'LG_GS102.jpg', 'LG GS102', 1, 1),
(106, 107, 'K-Touch_E62.jpg', 'K-Touch E62 ', 1, 1),
(107, 108, 'K-Touch_H677.jpg', 'K-Touch H677 ', 1, 1),
(108, 109, 'ktouch_X90.jpg', 'K-Touch X90', 1, 1),
(109, 110, 'K- Touch Q160.jpg', 'K Touch Q160   ', 1, 1),
(110, 111, 'K-Touch_H999.jpg', 'K-Touch H999', 1, 1),
(111, 112, 'K-tuochB896.jpg', 'K-Touch B896 white   ', 1, 1),
(112, 113, 'K-Touch_H877.jpg', 'K-Touch H877', 1, 1),
(113, 114, 'K-tuochD173red.jpg', 'K-Touch D173 red   ', 1, 1),
(114, 115, 'K-Touch E61.jpg', 'K-Touch E61   ', 1, 1),
(115, 116, 'K-touch_V388.jpg', 'K-Touch V388 ', 1, 1),
(116, 117, 'K- Touch V908.jpg', 'K Touch V908   ', 1, 1),
(117, 118, 'K-touch_H888.jpg', 'K-Touch H888 ', 1, 1),
(118, 119, 'k-Touch_M600.jpg', 'K-Touch M600   ', 1, 1),
(119, 120, 'K-Touch_H899.jpg', 'K-Touch H899 ', 1, 1),
(120, 121, 'K-Touch E606.jpg', 'K-Touch E606   ', 1, 1),
(121, 122, 'K-Touch_M606.jpg', 'K-Touch M606', 1, 1),
(122, 123, 'k-touch_A610.jpg', 'K-Touch A610 ', 1, 1),
(123, 124, 'K- Touch E68.jpg', 'K Touch E68   ', 1, 1),
(124, 125, 'k-touch_H688.jpg', 'K-Touch H688 ', 1, 1),
(125, 126, 'k-touch_H699.jpg', 'K-Touch H699', 1, 1),
(126, 127, 'galaxy_tab.jpg', 'Samsung Galaxy Tab P1000', 1, 1),
(127, 128, 'samsung_s8530.jpg', 'Samsung S8530 Wave II   ', 1, 1),
(128, 129, 'S8500.jpg', 'Samsung S8500 Wave   ', 1, 1),
(129, 130, 'S8500_1.jpg', 'Samsung I5700 Galaxy Spica   ', 1, 1),
(130, 131, 'i5700.jpg', 'Samsung I5700 Galaxy Spica   ', 1, 1),
(131, 132, 'samsung_s7372e.jpg', 'Samsung Wave S7233   ', 1, 1),
(132, 133, 'samsung_i5800.jpg', 'Samsung Galaxy 3 i5801   ', 1, 1),
(133, 134, 'B7330.jpg', 'Samsung B7330 OmniaPRO   ', 1, 1),
(134, 135, 'Samsung-S5560.jpg', 'Samsung S5560   ', 1, 1),
(135, 136, 'samsung_wave575.jpg', 'Samsung Wave S5753   ', 1, 1),
(136, 137, 'Samsung_B5310.jpg', 'Samsung B5310 CorbyPRO   ', 1, 1),
(137, 138, 'Samsung_i5500.jpg', 'Samsung i5503 Corby Smart  ', 1, 1),
(138, 139, 'Samsung B7320 OmniaPRO.jpg', 'Samsung B7320 OmniaPRO', 1, 1),
(139, 140, '0Samsung_S5620.jpg', 'Samsung S5620 Monte ', 1, 1),
(140, 141, 'Samsung_S5233TV.jpg', 'Samsung Star S5233TV   ', 1, 1),
(141, 142, 'Samsung_S5233w.jpg', 'Samsung Star S5233W   ', 1, 1),
(142, 143, 's5350.jpg', 'Samsung S5350 Shark   ', 1, 1),
(143, 144, 'b3410w.jpg', 'Samsung B3410W Ch@t   ', 1, 1),
(144, 145, 's5233.jpg', 'Samsung Star S5233   ', 1, 1),
(145, 146, 'b3410.jpg', 'Samsung B3410 CorbyChat   ', 1, 1),
(146, 147, 's3653.jpg', 'Samsung S3653W Corby   ', 1, 1),
(147, 148, 'S3353.jpg', 'Samsung S3353 Ch@t 335   ', 1, 1),
(148, 149, 'Samsung_S3650.jpg', 'Samsung S3653 Corby   ', 1, 1),
(149, 150, '0Samsung-C3510.jpg', 'Samsung C3510   ', 1, 1),
(150, 151, 'b3210.jpg', 'Samsung B3210 CorbyTXT   ', 1, 1),
(151, 152, 'samsung_chat322.jpg', 'Samsung C3222   ', 1, 1),
(152, 153, 'Samsung S3500.jpg', 'Samsung S3500   ', 1, 1),
(153, 154, '0samsung-s3100.jpg', 'Samsung S3100   ', 1, 1),
(154, 155, 'Samsung S3600.jpg', 'Samsung S3600   ', 1, 1),
(155, 156, 'Samsung_C3200.jpg', 'Samsung C3200 Monte Bar   ', 1, 1),
(156, 157, 'Samsung_C3300.jpg', 'Samsung C3303 Champ   ', 1, 1),
(157, 158, 'samsung_e2530.jpg', 'Samsung E2530   ', 1, 1),
(158, 159, 'Samsung_E2550.jpg', 'Samsung E2550 Monte Slider   ', 1, 1),
(159, 160, 'Samsung E2510.jpg', 'Samsung E2510  ', 1, 1),
(160, 161, 'Samsung C3053.jpg', 'Samsung C3053   ', 1, 1),
(161, 162, 'Samsung E1360s.jpg', 'Samsung E1360s   ', 1, 1),
(162, 163, 'Samsung_E1175T.jpg', 'Samsung E1175T   ', 1, 1),
(163, 164, 'Samsung-U6000.jpg', 'Samsung U600   ', 1, 1),
(164, 165, 'cayon_E590.jpg', 'Cayon E590   ', 1, 1),
(165, 166, 'Cayon_C319.jpg', 'Cayon C319  ', 1, 1),
(166, 167, '0Cayon_U7.jpg', 'Cayon U7 ', 1, 1),
(167, 168, 'Cayon_i7.jpg', 'Cayon i7', 1, 1),
(168, 169, '0Cayon_i6.jpg', 'Cayon i6 ', 1, 1),
(169, 170, 'Cayon_E330.jpg', 'Cayon E330  ', 1, 1),
(170, 171, 'Cayon_E560.jpg', 'Cayon E560  ', 1, 1),
(171, 172, 'Cayon_U6.jpg', 'Cayon U6', 1, 1),
(172, 173, 'Cayon_E550.jpg', 'Cayon E550 ', 1, 1),
(173, 174, 'cayon_C309i.jpg', 'Cayon C309i ', 1, 1),
(174, 175, 'Cayon_C580.jpg', 'Cayon C580', 1, 1),
(175, 176, 'cayon_C505.jpg', 'Cayon C505   ', 1, 1),
(176, 177, 'Cayon_i8.jpg', 'Cayon i8  ', 1, 1),
(177, 178, 'Cayon V850.jpg', 'Cayon V850 ', 1, 1),
(178, 179, 'Cayon-C309.jpg', 'Cayon C309   ', 1, 1),
(179, 180, 'Cayon_U8.jpg', 'Cayon U8  ', 1, 1),
(180, 181, 'Cayon_C318.jpg', 'Cayon C318  ', 1, 1),
(181, 182, 'Cayon E530.jpg', 'Cayon E530   ', 1, 1),
(182, 183, 'sony_x10.jpg', 'Sony Ericsson XPERIA X10', 1, 1),
(183, 184, 'vivaz_pro.jpg', 'Sony Ericsson U8 Vivaz pro', 1, 1),
(184, 185, 'sony_aino.jpg', 'Sony Ericsson Aino U10   ', 1, 1),
(185, 186, 'U1_satio.jpg', 'Sony Ericsson Satio U1 ', 1, 1),
(186, 187, 'sony_x2.jpg', 'Sony Ericsson XPERIA X2', 1, 1),
(187, 188, 'vivaz.jpg', 'Sony Ericsson Vivaz ', 1, 1),
(188, 189, 'x10mini.jpg', 'Sony Ericsson XPERIA X10 mini ', 1, 1),
(189, 190, 'W995.jpg', 'Sony Ericsson W995', 1, 1),
(190, 191, 'Sony_X8.jpg', 'Sony Ericsson XPERIA X8', 1, 1),
(191, 192, 'j20i.jpg', 'Sony Ericsson J20i Hazel  ', 1, 1),
(192, 193, 'J10i2.jpg', 'Sony Ericsson Elm J10i2', 1, 1),
(193, 194, 'W980.jpg', 'Sony Ericsson W980 ', 1, 1),
(194, 195, 'Sony Ericsson T715.jpg', 'Sony Ericsson T715 ', 1, 1),
(195, 196, '0Sony Ericsson W508.jpg', 'Sony Ericsson W508 ', 1, 1),
(196, 197, 'SE_T707.jpg', 'Sony Ericsson T707  ', 1, 1),
(197, 198, 'Sony Ericsson W890i.jpg', 'Sony Ericsson W890i  ', 1, 1),
(198, 199, 'W760.jpg', 'Sony Ericsson W760  ', 1, 1),
(199, 200, 'SE_zylo.jpg', 'Sony Ericsson W20i Zylo  ', 1, 1),
(200, 201, 'SE-W595.jpg', 'Sony Ericsson W595 ', 1, 1),
(201, 202, 'T700.jpg', 'Sony Ericsson T700', 1, 1),
(202, 203, 'Sony Ericsson W395.jpg', 'Sony Ericsson W395  ', 1, 1),
(203, 204, 'SE_Spiro.jpg', 'Sony Ericsson Spiro W100i', 1, 1),
(204, 205, 'w205.jpg', 'Sony Ericsson W205  ', 1, 1),
(205, 206, 'sonyericsson-p800.gif', 'Sony Ericsson P800  ', 1, 1),
(206, 207, 'Wellcom_A88.jpg', 'WellcoM A88', 1, 1),
(207, 208, 'Wellcom_W9229.jpg', 'WellcoM W9229', 1, 1),
(208, 209, 'Wellcom_A66.jpg', 'WellcoM A66', 1, 1),
(209, 210, 'Wellcom_W3311.jpg', 'WellcoM W3311  ', 1, 1),
(210, 211, 'Wellcom_W9119.jpg', 'WellcoM W9119', 1, 1),
(211, 212, 'wellcom_w3330.jpg', 'WellcoM W3330  ', 1, 1),
(212, 213, 'wellcom_w3112.jpg', 'WellcoM W3112', 1, 1),
(213, 214, 'wellcom_w3113.jpg', 'WellcoM W3113', 1, 1),
(214, 215, 'wellcom_w3111.jpg', 'WellcoM W3111  ', 1, 1),
(215, 216, 'wellcom_w3333.jpg', 'WellcoM W3333  ', 1, 1),
(216, 217, 'Wellcom_W3339.jpg', 'WellcoM W3339  ', 1, 1),
(217, 218, 'WellcoM-W538.jpg', 'WellcoM W538  ', 1, 1),
(218, 219, 'HTC_desireZ.jpg', 'HTC Desire Z', 1, 1),
(219, 220, 'HD2.jpg', 'HTC HD2', 1, 1),
(220, 221, 'desire.jpg', 'HTC Desire', 1, 1),
(221, 222, 'legend_s.jpg', 'HTC Legend', 1, 1),
(222, 223, 'magic.jpg', 'HTC Magic ', 1, 1),
(223, 224, 'diamond2.jpg', 'HTC Diamond2  ', 1, 1),
(224, 225, 'HD_mini.jpg', 'HTC HD mini  ', 1, 1),
(225, 226, 'aria.jpg', 'HTC Aria', 1, 1),
(226, 227, 'hero.jpg', 'HTC Hero  ', 1, 1),
(227, 228, 'Cruise.jpg', 'HTC Touch Cruise T4242  ', 1, 1),
(228, 229, 'tattoo.jpg', 'HTC Tattoo  ', 1, 1),
(229, 230, 'snap.jpg', 'HTC Snap', 1, 1),
(230, 231, 'touch_3G.jpg', 'HTC Touch 3G', 1, 1),
(231, 232, 'wilfire.jpg', 'HTC Wildfire  ', 1, 1),
(232, 233, 'HTC Vina.jpg', 'HTC Viva T2223  ', 1, 1),
(233, 234, '0HTC-Smart.jpg', 'HTC Smart  ', 1, 1),
(234, 235, 'HTC_Nexusone.jpg', 'HTC Google Nexus One', 1, 1),
(235, 236, 'm770.jpg', 'Mobell M770', 1, 1),
(236, 237, 'M760.jpg', 'Mobell M760 ', 1, 1),
(237, 238, 'Mobell_M750.jpg', 'Mobell M750  ', 1, 1),
(238, 239, 'Mobell_M660.jpg', 'Mobell M660 ', 1, 1),
(239, 240, 'Mobell_W660.jpg', 'Mobell MW660  ', 1, 1),
(240, 241, 'Mobell_M620.jpg', 'Mobell M620  ', 1, 1),
(241, 242, 'Mobell M720.jpg', 'Mobell M720  ', 1, 1),
(242, 243, 'Mobell_M560.jpg', 'Mobell M560', 1, 1),
(243, 244, 'Mobell_M430.jpg', 'Mobell M430  ', 1, 1),
(244, 245, 'Mobell M610.jpg', 'Mobell M610', 1, 1),
(245, 246, 'mobell_M530.jpg', 'Mobell M530 ', 1, 1),
(246, 247, 'Mobell M520.jpg', 'Mobell M520', 1, 1),
(247, 248, 'Mobell_M375.jpg', 'Mobell M375', 1, 1),
(248, 249, 'Mobell_M370.jpg', 'Mobell M370 ', 1, 1),
(249, 250, 'Mobell_M330.jpg', 'Mobell M330', 1, 1),
(250, 251, '0Mobell_M320.jpg', 'Mobell M320', 1, 1),
(251, 252, 'mobell_m110.jpg', 'Mobell M110', 1, 1),
(252, 253, 'Mobell_M230.jpg', 'Mobell M230', 1, 1),
(253, 254, 'Mobell M220.jpg', 'Mobell M220', 1, 1),
(254, 255, 'Mobell_M270.jpg', 'Mobell M270', 1, 1),
(255, 256, 'M228.jpg', 'Mobell M228', 1, 1),
(256, 257, 'mobell_M238.jpg', 'Mobell M238  ', 1, 1),
(257, 258, 'Mobell_M260.jpg', 'Mobell M260', 1, 1),
(258, 259, 'Mobell_M218.jpg', 'Mobell M218', 1, 1),
(259, 260, 'Mobell M190.jpg', 'Mobell M190', 1, 1),
(260, 261, 'Lenovo_X1m.jpg', 'Lenovo X1m', 1, 1),
(261, 262, 'Lenovo_S700.jpg', 'Lenovo S700', 1, 1),
(262, 263, 'Lenovo_P80.jpg', 'Lenovo P80', 1, 1),
(263, 264, 'lenovo_i350.jpg', 'Lenovo i350', 1, 1),
(264, 265, 'Lenovo_i61.jpg', 'Lenovo i61', 1, 1),
(265, 266, 'lenovo_s520.jpg', 'Lenovo S520', 1, 1),
(266, 267, 'P629.jpg', 'Lenovo P629 ', 1, 1),
(267, 268, 'Lenovo_P50.jpg', 'Lenovo P50', 1, 1),
(268, 269, 'Lenovo_P60.jpg', 'Lenovo P60', 1, 1),
(269, 270, 'lenovo_A312.jpg', 'Lenovo A312', 1, 1),
(270, 271, 'Lenovo_B580.jpg', 'Lenovo P580', 1, 1),
(271, 272, 'Lenovo_i300.jpg', 'Lenovo i300  ', 1, 1),
(272, 273, 'Lenovo_A310.jpg', 'Lenovo A310 ', 1, 1),
(273, 274, 'Lenovo-A332.jpg', 'Lenovo A332', 1, 1),
(274, 275, 'Lenovo_A330.jpg', 'Lenovo A330  ', 1, 1),
(275, 276, 'lenovo_E228.jpg', 'Lenovo E228', 1, 1),
(276, 277, 'Lenovo_E268.jpg', 'Lenovo E268', 1, 1),
(277, 278, '00lenovo_E218.jpg', 'Lenovo E218 ', 1, 1),
(278, 279, 'Lenovo_E156.jpg', 'Lenovo E156 ', 1, 1),
(279, 280, 'Lenovo_A910.jpg', 'Lenovo A910 ', 1, 1),
(280, 281, 'Untitled-1vua0.jpg', 'KONKA M526 ', 1, 1),
(281, 282, 'Untitled-vua.jpg', 'KONKA C676', 1, 1),
(282, 283, 'Untitled-vua4.jpg', 'KONKA D316  ', 1, 1),
(283, 284, 'Untitled-vua3.jpg', 'KONKA D363', 1, 1),
(284, 285, 'Untitled-vua0.jpg', 'KONKA D169 ', 1, 1),
(285, 286, 'Untitled-vua2.jpg', 'KONKA D163', 1, 1),
(286, 287, 'F-Mobile_B900.jpg', 'F-Mobile B900', 1, 1),
(287, 288, 'FPT_F99_3G.jpg', 'FPT F99 3G ', 1, 1),
(288, 289, 'fmobile_f99i.jpg', 'F-Mobile F99i  ', 1, 1),
(289, 290, 'F-mobile_B940.jpg', 'F-Mobile B940', 1, 1),
(290, 291, 'F-Mobile_F99.jpg', 'F-Mobile F99', 1, 1),
(291, 292, 'F-Mobile-B950.jpg', 'F-Mobile B950  ', 1, 1),
(292, 293, 'f-mobile_F88.jpg', 'F-Mobile F88 ', 1, 1),
(293, 294, 'f-mobile_B930.jpg', 'F-Mobile B930', 1, 1),
(294, 295, 'fmobile_C890.jpg', 'F-Mobile C890', 1, 1),
(295, 296, 'Fmobile_S800.jpg', 'F-Mobile S800', 1, 1),
(296, 297, 'F-mobile_S880i.jpg', 'F-Mobile S880i ', 1, 1),
(297, 298, 'fpt_B750.jpg', 'F-Mobile B750 ', 1, 1),
(298, 299, 'F-mobile_S700.jpg', 'F-Mobile S700  ', 1, 1),
(299, 300, 'F-mobile_B850.jpg', 'F-Mobile B850', 1, 1),
(300, 301, 'F-Mobile-B880.jpg', 'F-Mobile B880  ', 1, 1),
(301, 302, 'F-mobile_B650.jpg', 'F-Mobile B650', 1, 1),
(302, 303, 'fmobie_b730.jpg', 'F-Mobile B730', 1, 1),
(303, 304, 'F-Mobie_B720.jpg', 'F-Mobile B720', 1, 1),
(304, 305, 'F-Mobile_B700.jpg', 'F-Mobile B700', 1, 1),
(305, 306, 'F-Mobile_S550.jpg', 'F-Mobile S550', 1, 1),
(306, 307, 'F-mobile_S560.jpg', 'F-Mobile S560', 1, 1),
(307, 308, 'F-Mobile_B510.jpg', 'F-Mobile B510', 1, 1),
(308, 309, 'f-mobile_B530.jpg', 'F-Mobile B530', 1, 1),
(309, 310, 'F-Mobile-S600.jpg', 'F-Mobile S600', 1, 1),
(310, 311, 'F-Mobile_B600.jpg', 'F-Mobile B600', 1, 1),
(311, 312, 'F-Mobile_B800.jpg', 'F-Mobile B800', 1, 1),
(312, 313, 'F-mobile_B350.jpg', 'F-Mobile B350  ', 1, 1),
(313, 314, 'f-mobile_B590.jpg', 'F-Mobile B590', 1, 1),
(314, 315, 'F-Mobile_B250.jpg', 'F-Mobile B250', 1, 1),
(315, 316, 'F-mobile_B330.jpg', 'F-Mobile B330', 1, 1),
(316, 317, 'F-Mobile_B270.jpg', 'F-Mobile B270', 1, 1),
(317, 318, 'F-Mobile_B280.jpg', 'F-Mobile B280 ', 1, 1),
(318, 319, 'fmobile_B400.jpg', 'F-Mobile B400', 1, 1),
(319, 320, 'F-Mobile_B260.jpg', 'F-Mobile B260', 1, 1),
(320, 321, 'fmobile_b200.jpg', 'F-Mobile B200', 1, 1),
(321, 322, 'F-Mobile_B360.jpg', 'F-Mobile B360', 1, 1),
(322, 323, 'acer_ferrari.jpg', 'Acer LiQuid E Smart S100 Ferrari', 1, 1),
(323, 324, 'Acer-Stream.jpg', 'Acer Stream S110', 1, 1),
(324, 325, 'acer_S100.jpg', 'Acer LiQuid E Smart S100 ', 1, 1),
(325, 326, 'E400.jpg', 'Acer beTouch E400 ', 1, 1),
(326, 327, 'Acer-E130_v.jpg', 'Acer beTouch E130 ', 1, 1),
(327, 328, 'e120.jpg', 'Acer Smart E120', 1, 1),
(328, 329, 'Acer_beTouchE110.jpg', 'Acer beTouch E110', 1, 1),
(329, 330, '', 'Acer Liquid Metal', 1, 1),
(330, 331, 'X710.jpg', 'Philips X710  ', 1, 1),
(331, 332, 'X501.jpg', 'Philips X501', 1, 1),
(332, 333, 'Philips 9_9q.jpg', 'Philips 9@9q ', 1, 1),
(333, 334, 'Philips M600.jpg', 'Philips M600', 1, 1),
(334, 335, 'Philips-X100.jpg', 'Philips X100', 1, 1),
(335, 336, 'Philips_X600.jpg', 'Philips Xenium X600 ', 1, 1),
(336, 337, 'mobistar_M690s.jpg', 'Mobistar M690s', 1, 1),
(337, 338, 'Mobistar_89.jpg', 'Mobistar @89', 1, 1),
(338, 339, 'mobistar_F760.jpg', 'Mobistar F760', 1, 1),
(339, 340, 'mobistar_56.jpg', 'Mobistar @56  ', 1, 1),
(340, 341, 'Mobistar_90.jpg', 'Mobistar @90', 1, 1),
(341, 342, 'streak.jpg', 'Dell Streak ', 1, 1),
(342, 343, 'Dell_Aero.jpg', 'Dell Aero', 1, 1),
(343, 344, 'Dell_Flash.jpg', 'Dell Flash', 1, 1),
(344, 345, 'Dell_thunder.jpg', 'Dell Venue', 1, 1),
(345, 346, 'Dell_mini_3i.jpg', 'Dell Mini 3i', 1, 1),
(346, 347, 'dell_pro.jpg', 'Dell Venue Pro', 1, 1),
(347, 348, 'dell_XCD28.jpg', 'Dell XCD28 ', 1, 1),
(348, 349, 'Dell-XCD28.jpg', 'Dell XCD35', 1, 1),
(349, 350, 'Dell_Smoke.jpg', 'Dell Smoke', 1, 1),
(350, 351, 'Etouch_TD200.jpg', 'eTouch TD200', 1, 1),
(351, 352, 'Etouch_MK67.jpg', 'eTouch MK67', 1, 1),
(352, 353, 'E-Touch_MD82.jpg', 'eTouch MD82', 1, 1),
(353, 354, 'Acer-Aspire-4820T-185px-1.jpg', 'Acer Aspire 4820TG 452G50 (219)  ', 1, 1),
(354, 355, '2.png', 'Acer Aspire 4820TG 352G50Mn (038)  ', 1, 1),
(355, 356, 'Acer-Aspire-4820T-185px-1_1.jpg', 'Acer Aspire 4820T 452G50Mn (060)  ', 1, 1),
(356, 357, 'Ac.jpg', 'Acer Aspire 4820TG 372G32Mn (213)  ', 1, 1),
(357, 358, 'Acer-Aspire-4745G-185px.jpg', 'Acer Aspire 4745G 452G64Mn (066)  ', 1, 1),
(358, 359, 'Acer-Aspire-4745G-462G32Mn-057-185px-1.jpg', 'Acer Aspire 4745G 462G32Mn (057)  ', 1, 1),
(359, 360, 'Ac6.jpg', 'Acer Aspire 4820T 372G32Mn (232)  ', 1, 1),
(360, 361, 'acc5.jpg', 'Acer Aspire 4738G 452G50Mn (020)  ', 1, 1),
(361, 362, 'acc1.jpg', 'Acer Aspire 4738G 452G50Mn (017)  ', 1, 1),
(362, 363, 'Ac5.jpg', 'Acer Aspire 4738G 452G50Mn (045)  ', 1, 1),
(363, 364, 'a7.jpg', 'Acer Aspire 4820TG 452G50 (219) ', 1, 1),
(364, 365, 'Acer-Aspire-4820TG-352G50Mn-(038)-m.jpg.png', 'Acer Aspire 4820TG 352G50Mn (038)  ', 1, 1),
(365, 366, 'Acer-Aspire-4820T-185px-1_2.jpg', 'Acer Aspire 4820T 452G50Mn (060)', 1, 1),
(366, 367, 'Acer-Aspire-4820TG-372G32Mn-(213)-m.jpg.png', 'Acer Aspire 4820TG 372G32Mn (213)  ', 1, 1),
(367, 368, 'Acer-Aspire-4745G-452G64Mn-(066)-m.jpg.png', 'Acer Aspire 4745G 452G64Mn (066) ', 1, 1),
(368, 369, 'Acer-Aspire-4745G-462G32Mn-(057)-m.jpg.png', 'Acer Aspire 4745G 462G32Mn (057)  ', 1, 1),
(369, 370, 'Acer-Aspire-4820T-372G32Mn-(232)-m.jpg.png', 'Acer Aspire 4820T 372G32Mn (232)  ', 1, 1),
(370, 371, 'Acer-Aspire-4738G-452G50Mn-(020)-m.jpg.png', 'Acer Aspire 4738G 452G50Mn (020)  ', 1, 1),
(371, 372, 'Acer-Aspire-4738G-452G50Mn-(017)-m.jpg.png', 'Acer Aspire 4738G 452G50Mn (017)  ', 1, 1),
(372, 373, 'Acer-Aspire-4738G-452G50Mn-(045)-m.jpg.png', 'Acer Aspire 4738G 452G50Mn (045)  ', 1, 1),
(373, 374, 'Acer-Aspire-5745G-382G50Mn-(052)-m.jpg.png', 'Acer Aspire 5745G 382G50Mn (052)  ', 1, 1),
(374, 375, 'acer-aspire-4738-120px.jpg', 'Acer Aspire 4738 432G32Mn (035)  ', 1, 1),
(375, 376, 'Acer-Aspire-5742G-382G50Mn-(020)-m.jpg.png', 'Acer Aspire 5742G 382G50Mn (020)  ', 1, 1),
(376, 377, 'Acer-Aspire-5742G-382G50Mn-(040)-m.jpg.png', 'Acer Aspire 5742G 382G50Mn (040)  ', 1, 1),
(377, 378, 'Acer-Aspire-5742G-382G50Mn-(012)-m.jpg.png', 'Acer Aspire 5742G 382G50Mn (012)  ', 1, 1),
(378, 379, 'Acer-Aspire-4741---5452G32Mn-(071)-m.jpg.png', 'Acer Aspire 4741 - 5452G32Mn (071)  ', 1, 1),
(379, 380, 'Acer-Aspire-4745G-372G32Mn-(058)-m.jpg.png', 'Acer Aspire 4745G 372G32Mn (058)  ', 1, 1),
(380, 381, 'Acer-Aspire-4738G-372G50Mn-(032)-m.jpg.png', 'Acer Aspire 4738G 372G50Mn (032)  ', 1, 1),
(381, 382, 'Acer-Aspire-4738G-372G50Mn-(014)-m.jpg.png', 'Acer Aspire 4738G 372G50Mn (014)  ', 1, 1),
(382, 383, 'Acer-Aspire-5745G-372G32Mn-(041)-m.jpg.png', 'Acer Aspire 5745G 372G32Mn (041)  ', 1, 1),
(383, 384, 'Toshiba-Portege-R700-m.jpg.png', 'Toshiba Portege R700  ', 1, 1),
(384, 385, 'Toshiba-Portege-R700-m.jpg.png', 'Toshiba Portege R700 ', 1, 1),
(385, 386, 'Toshiba-Sattelite-L645-1059UBL-PSK0JL-00S001-m.jpg.png', 'Toshiba Sattelite L645 1059UBL PSK0JL 00S001', 1, 1),
(386, 387, 'Toshiba-Satellite-L640-1067U-PSK0JL-00F001-m.jpg.png', 'Toshiba Satellite L640 1067U PSK0JL 00F001  ', 1, 1),
(387, 388, 'poo-L.jpg', 'Toshiba Satellite L640 PSK0JL 001001 ', 1, 1),
(388, 389, '1L310-1-L.gif', 'Toshiba Satellite L310 T4200  ', 1, 1),
(389, 390, 'Toshiba-Satellite-C640-1008U-PSC02L-003001-m.jpg.png', 'Toshiba Satellite C640 1008U PSC02L 003001 ', 1, 1),
(390, 391, 'Toshiba-Satellite-M645-m.jpg.png', 'Toshiba Satellite M645 ', 1, 1),
(391, 392, 'Satellite-M300-N401_La.jpg', 'Toshiba Satellite M300 N401 (004001)  ', 1, 1),
(392, 393, 'Satellite-Pro-M200-E458_La.jpg', 'Toshiba Satellite Pro M200 E458 (01L002)  ', 1, 1),
(393, 394, 'Satellite-M200-E4311_La.jpg', 'Toshiba Satellite M200(E4311)  ', 1, 1),
(394, 395, 'Satellite-M300_La.jpg', 'Toshiba Satellite M300 A401(00C001)  ', 1, 1),
(395, 396, 'Satellite-M200-E436_La.jpg', 'Toshiba Satellite M200 E436 (046004)  ', 1, 1),
(396, 397, 'R500_La.jpg', 'Toshiba PORTEGE R500 E264 (07Y09J)  ', 1, 1),
(397, 398, 'Toshiba-M800-E330_La.jpg', 'Toshiba PORTEGE M800 E330 (02H00V)  ', 1, 1),
(398, 399, 'L300-A511-L.jpg', 'Toshiba Satellite L300 A511 (08502E)  ', 1, 1),
(399, 400, 'L300-5-L.jpg', 'Toshiba Satellite L300 S500 (00M00L)  ', 1, 1),
(400, 401, 'm300-L.jpg', 'Toshiba Satellite M300 P500 (00700L)  ', 1, 1),
(401, 402, 'M300-A406-L.jpg', 'Toshiba Satellite M300 A406 (001001)  ', 1, 1),
(402, 403, 'Toshiba-Qosmio-F60-m.jpg.png', 'Toshiba Qosmio F60  ', 1, 1),
(403, 404, '11B-M100-2011E.gif', 'Toshiba Satellite M100 (T0US00C)  ', 1, 1),
(404, 405, 'Toshiba-Satellite-Pro-S500L.jpg', 'Toshiba Satellite Pro S500  ', 1, 1),
(405, 406, '1TOL300-L.jpg', 'Toshiba Satellite L310 P401 (005001)  ', 1, 1),
(406, 407, 'L310-S402L.jpg', 'Toshiba Satellite L310 S402 (PSME6L 009001)  ', 1, 1),
(407, 408, 'Qosmio-F50-AV530L.jpg', 'Toshiba Qosmio F50 AV530 (02202N)  ', 1, 1),
(408, 409, 'Qosmio-X300L.jpg', 'Toshiba Qosmio X300 G770 (02202N)  ', 1, 1),
(409, 410, 'M300-P401L.jpg', 'Toshiba Satellite M300 P401 (009001)  ', 1, 1),
(410, 411, 'M300-P401L2.jpg', 'Toshiba Satellite M300 S403 (TosaM300 S403 DF 0090', 1, 1),
(411, 412, '1M800_La.jpg', 'Toshiba PORTEGE M800 A360 (033013)  ', 1, 1),
(412, 413, 'PORTEGE-M600-E360_La.jpg', 'Toshiba PORTEGE M600 E360 (02H009) ', 1, 1),
(413, 414, 'PORTEGE-M800-E336_La.jpg', 'Toshiba PORTEGE M800 E336 (02H00V)  ', 1, 1),
(414, 415, 'Asus-G51J-i7-720QM-m.jpg.png', 'Asus G51J i7-720QM  ', 1, 1),
(415, 416, 'Asus-N43JF-VX041-m.jpg.png', 'Asus N43JF VX041  ', 1, 1),
(416, 417, 'Asus-A42JA-VX058-m.jpg.png', 'Asus A42JA VX058 ', 1, 1),
(417, 418, 'Asus-U45JC-WX090-m.jpg.png', 'Asus U45JC WX090 ', 1, 1),
(418, 419, 'Asus-K42JE-VX043-m.jpg.png', 'Asus K42JE VX043  ', 1, 1),
(419, 420, 'Asus-X42JE-VX087-m.jpg.png', 'Asus X42JE VX087 ', 1, 1),
(420, 421, 'Asus-A42JE-VX019-m.jpg.png', 'Asus A42JE VX019  ', 1, 1),
(421, 422, 'Asus-A42JC-VX059-m.jpg.png', 'Asus A42JC VX059  ', 1, 1),
(422, 423, 'Asus-A42JE-VX003-m.jpg.png', 'Asus A42JE VX003  ', 1, 1),
(423, 424, 'Asus-K42JE-VX089-m.jpg.png', 'Asus K42JE VX089  ', 1, 1),
(424, 425, 'Asus-A42F-VX005-m.jpg.png', 'Asus A42F VX005  ', 1, 1),
(425, 426, 'Asus-A42JE-VX042-m.jpg.png', 'Asus A42JE VX042  ', 1, 1),
(426, 427, 'Asus-EeePC-1015PEM-m.jpg.png', 'Asus EeePC 1015PEM  ', 1, 1),
(427, 428, 'AsusZ99L__.jpg', 'Asus Z99L (AsZ99LDF 2330)  ', 1, 1),
(428, 429, '1ASUS-A8S_.jpg', 'Asus A8S (AS555004)  ', 1, 1),
(429, 430, 'Asus-Z99H-La.jpg', 'Asus Z99H T2250', 1, 1),
(430, 431, 'AsusZ99S__.jpg', 'Asus Z99S (AsZ99SDF 7300)  ', 1, 1),
(431, 432, 'Asus F9E.jpg', 'Asus F9E (AS730006)  ', 1, 1),
(432, 433, 'Asus-Z99E-La.jpg', 'Asus Z99E T5550', 1, 1),
(433, 434, 'AsusW7S__.jpg', 'Asus W7S (AS730005)  ', 1, 1),
(434, 435, 'Asus-AS8(T7300)-La.jpg', 'Asus A8S T7300  ', 1, 1),
(435, 436, 'AsusWF5e__.jpg', 'ASUS W5Fe (AS720001) ', 1, 1),
(436, 437, 'AsusS6FM__.jpg', 'Asus S6FM (AS720002)  ', 1, 1),
(437, 438, 'Asus-F9S-La.jpg', 'Asus F9S (AsF9SDF 7300)  ', 1, 1),
(438, 439, 'Asus-U3S-La.jpg', 'Asus U3S (AS730004)  ', 1, 1),
(439, 440, 'Asus-U6S-La.jpg', 'Asus U6S (AS725001)  ', 1, 1),
(440, 441, 'Asus-U1E-La.jpg', 'Asus U1E U7500  ', 1, 1),
(441, 442, 'Asus-VX2S-La.jpg', 'Asus VX2S (AS750003)  ', 1, 1),
(442, 443, '1Asus-X80L_La.jpg', 'Asus X80L T2330  ', 1, 1),
(443, 444, 'Asus-VX2S_La.jpg', 'Asus Lamborghini VX2S (T9300)', 1, 1),
(444, 445, 'Samsung-Q428-i5-460M-m.jpg.png', 'Samsung Q428 i5 460M  ', 1, 1),
(445, 446, 'Samsung-Q428-DS04VN-i3-370M-m.jpg.png', 'Samsung Q428 DS04VN i3 370M  ', 1, 1),
(446, 447, 'Samsung-Q428-i3-350M-m.jpg.png', 'Samsung Q428 i3 350M  ', 1, 1),
(447, 448, 'Samsung-R439-DT08VN-m.jpg.png', 'Samsung R439 DT08VN ', 1, 1),
(448, 449, 'Samsung-R439-DA04VN-m.jpg.png', 'Samsung R439 DA04VN ', 1, 1),
(449, 450, '1Sam2-L.jpg', 'Samsung R439  ', 1, 1),
(450, 451, 'Samsung-RV408-A01VN-m.jpg.png', 'Samsung RV408 A01VN  ', 1, 1),
(451, 452, 'Samsung-N148-DP04VN-m.jpg.png', 'Samsung N148 DP04VN  ', 1, 1),
(452, 453, 'Samsung-N148-DP05VN-m.jpg.png', 'Samsung N148 DP05VN  ', 1, 1),
(453, 454, 'Samsung-N143-DP01VN-m.jpg.png', 'Samsung N143 DP01VN  ', 1, 1),
(454, 455, 'Samsung-SF510-m.jpg.png', 'Samsung SF510-S02DE  ', 1, 1),
(455, 456, 'Samsung-SF510-m2.jpg.png', 'Samsung R470  ', 1, 1),
(456, 457, 'Samsung-R428-(DA02VN)-m.jpg.png', 'Samsung R428 (DA02VN)  ', 1, 1),
(457, 458, 'Samsung-NB30-L.jpg', 'Samsung NB30', 1, 1),
(458, 459, 'N310-13GBKL.jpg', 'Samsung N310 13GBK  ', 1, 1),
(459, 460, 'N310-13GMBL.jpg', 'Samsung N310 13GMB', 1, 1),
(460, 461, 'N310-13GBL.jpg', 'Samsung N310 13GB ', 1, 1),
(461, 462, 'N120-12GWL.jpg', 'Samsung N120 12GW ', 1, 1),
(462, 463, 'N120-12GBKL.jpg', 'Samsung N120 12GBK  ', 1, 1),
(463, 464, 'N120-13GBLL.jpg', 'Samsung N120 13GBL ', 1, 1),
(464, 465, 'N130-13PL.jpg', 'Samsung N130 13P  ', 1, 1),
(465, 466, 'N130-13BL.jpg', 'Samsung N130 13B  ', 1, 1),
(466, 467, 'SamsungR720L.jpg', 'SAMSUNG R720  ', 1, 1),
(467, 468, 'Samsung-NF210-m.jpg.png', 'Samsung NF210  ', 1, 1),
(468, 469, 'tgdd_samsung-p530.jpg', 'Samsung P430  ', 1, 1),
(469, 470, 'Samsung-P430-Review-06-300x203.jpg', 'Samsung P530 Pro  ', 1, 1),
(470, 471, 'Samsung-p580-notebook.jpg', 'Samsung P480 Pro ', 1, 1),
(471, 472, 'Samsung-RF510-m.jpg.png', 'Samsung RF510  ', 1, 1),
(472, 473, 'Samsung-RF710-m.jpg.png', 'Samsung RF710  ', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `fs_question`
--

CREATE TABLE `fs_question` (
  `id` int(11) NOT NULL,
  `content` varchar(1000) NOT NULL,
  `order` int(11) NOT NULL,
  `active` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fs_question`
--

INSERT INTO `fs_question` (`id`, `content`, `order`, `active`) VALUES
(1, 'Bạn đang dùng điện thoại loại nào ?', 0, '0'),
(2, 'Bạn đánh giá website nay như thế nào', 0, '1');

-- --------------------------------------------------------

--
-- Table structure for table `fs_user`
--

CREATE TABLE `fs_user` (
  `id` int(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `address` varchar(500) NOT NULL,
  `dob` date NOT NULL,
  `gender` tinyint(4) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `group_id` int(10) NOT NULL,
  `active` tinyint(4) NOT NULL,
  `code` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fs_user`
--

INSERT INTO `fs_user` (`id`, `password`, `email`, `name`, `mobile`, `address`, `dob`, `gender`, `create_at`, `group_id`, `active`, `code`) VALUES
(100, '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'admin@gmail.com', 'Lê Văn Test', '0901234567', '49 Hoàng Văn Thụ, Phường 2, Quận Phú Nhuận, TP. Hồ Chí Minh', '1994-05-11', 1, '0000-00-00 00:00:00', 0, 0, ''),
(101, '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'user@localhost.com', 'Le van User', '0987654321', '30 Le Duan, Quan 1, TP.HCM', '0000-00-00', 0, '0000-00-00 00:00:00', 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `fs_visit`
--

CREATE TABLE `fs_visit` (
  `id` int(11) NOT NULL,
  `cnt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fs_visit`
--

INSERT INTO `fs_visit` (`id`, `cnt`) VALUES
(1, 15);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fs_admin`
--
ALTER TABLE `fs_admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Email` (`email`);

--
-- Indexes for table `fs_answer`
--
ALTER TABLE `fs_answer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fs_category`
--
ALTER TABLE `fs_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fs_department`
--
ALTER TABLE `fs_department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fs_online`
--
ALTER TABLE `fs_online`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fs_order`
--
ALTER TABLE `fs_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fs_order_detail`
--
ALTER TABLE `fs_order_detail`
  ADD PRIMARY KEY (`order_id`,`product_id`);

--
-- Indexes for table `fs_product`
--
ALTER TABLE `fs_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fs_product_img`
--
ALTER TABLE `fs_product_img`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `fs_question`
--
ALTER TABLE `fs_question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fs_user`
--
ALTER TABLE `fs_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Email` (`email`);

--
-- Indexes for table `fs_visit`
--
ALTER TABLE `fs_visit`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fs_admin`
--
ALTER TABLE `fs_admin`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;
--
-- AUTO_INCREMENT for table `fs_answer`
--
ALTER TABLE `fs_answer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `fs_category`
--
ALTER TABLE `fs_category`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;
--
-- AUTO_INCREMENT for table `fs_department`
--
ALTER TABLE `fs_department`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `fs_order`
--
ALTER TABLE `fs_order`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `fs_product`
--
ALTER TABLE `fs_product`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=489;
--
-- AUTO_INCREMENT for table `fs_product_img`
--
ALTER TABLE `fs_product_img`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=473;
--
-- AUTO_INCREMENT for table `fs_question`
--
ALTER TABLE `fs_question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `fs_user`
--
ALTER TABLE `fs_user`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
