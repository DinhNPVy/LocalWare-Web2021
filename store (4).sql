-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 14, 2021 lúc 06:41 AM
-- Phiên bản máy phục vụ: 10.4.18-MariaDB
-- Phiên bản PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `store`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `adminId` int(11) NOT NULL,
  `adminName` varchar(255) NOT NULL,
  `adminEmail` varchar(150) NOT NULL,
  `adminUser` varchar(255) NOT NULL,
  `adminPass` varchar(255) NOT NULL,
  `level` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `adminName`, `adminEmail`, `adminUser`, `adminPass`, `level`) VALUES
(0, 'Vy', 'phuongvy012456@gmail.com', 'vyvy000', 'e10adc3949ba59abbe56e057f20f883e', 0),
(1, 'DinhVy', 'phuongvy012456@gmail.com', 'dinhvy789', '21b95a0f90138767b0fd324e6be3457b', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brandId` int(11) NOT NULL,
  `brandName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_brand`
--

INSERT INTO `tbl_brand` (`brandId`, `brandName`) VALUES
(1, 'DELL'),
(2, 'SAMSUNG'),
(3, 'Xiaomi'),
(5, 'OPPO'),
(6, 'Lenovo'),
(7, 'Iphone'),
(9, 'SONY'),
(10, 'Canon'),
(11, 'Nakzen'),
(12, 'Nokia');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cartId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `sId` varchar(255) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(200) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category`
--

CREATE TABLE `tbl_category` (
  `catId` int(11) NOT NULL,
  `catName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_category`
--

INSERT INTO `tbl_category` (`catId`, `catName`) VALUES
(2, 'Laptop'),
(3, 'Clock'),
(7, 'Phone');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_compare`
--

CREATE TABLE `tbl_compare` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_customer`
--

INSERT INTO `tbl_customer` (`id`, `name`, `address`, `phone`, `email`, `password`) VALUES
(2, 'Vy', 'Tòa Nhà VeroHomes, 7A/5/44 Thành Thái, P.14, Q.10, TP.HCM', '0827900045', 'phuongvy012468@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(3, 'Lê Thị An Bình', 'Tòa Nhà VeroHomes, 7A/5/44 Thành Thái, P.14, Q.10, TP.HCM', '0957549381', 'lethianbinh2001@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(4, 'Trung', 'Tòa Nhà VeroHomes, 7A/5/56 Thành Thái, P.14, Q.10, TP.HCM', '0827900045', 'phuongvy012469@gmail.com', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `date_order` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `productId`, `productName`, `customer_id`, `quantity`, `price`, `image`, `status`, `date_order`) VALUES
(25, 24, 'Điện thoại iPhone 12 Pro 256GB', 2, 1, 33990000, '94eff32b93.jpg', 1, '2021-05-20 15:20:39'),
(26, 9, 'Lenovo - ceneral due core', 2, 1, 16690000, '4c8d42e0b1.jpg', 2, '2021-05-20 16:05:11'),
(27, 24, 'Điện thoại iPhone 12 Pro 256GB', 2, 1, 33990000, '94eff32b93.jpg', 2, '2021-05-28 03:38:52'),
(28, 39, 'Điện thoại OPPO Reno4 Pro ', 2, 1, 10490000, '1ed8c91280.jpg', 0, '2021-06-11 04:49:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

CREATE TABLE `tbl_product` (
  `productId` int(11) NOT NULL,
  `productName` tinytext NOT NULL,
  `catId` int(11) NOT NULL,
  `brandId` int(11) NOT NULL,
  `product_desc` text NOT NULL,
  `type` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`productId`, `productName`, `catId`, `brandId`, `product_desc`, `type`, `price`, `image`) VALUES
(12, 'Đồng hồ Nữ Nakzen SL9287LBK-7', 3, 11, '<p>- Đến từ thương hiệu&nbsp;<a title=\"Đồng hồ Nakzen ch&iacute;nh h&atilde;ng, gi&aacute; rẻ, b&aacute;n tại Thế Giới Di Động\" href=\"https://www.thegioididong.com/dong-ho-deo-tay-nakzen\" target=\"_blank\">đồng hồ Nakzen</a>&nbsp;c&oacute; tiếng của Nhật Bản</p>\r\n<p>-&nbsp;<a title=\"Đồng hồ ch&iacute;nh h&atilde;ng, gi&aacute; rẻ, b&aacute;n tại Thế Giới Di Động\" href=\"https://www.thegioididong.com/dong-ho-deo-tay\" target=\"_blank\">Đồng hồ</a>&nbsp;sở hữu đường k&iacute;nh mặt 33 mm c&ugrave;ng độ rộng d&acirc;y 16 mm</p>\r\n<p>- Khung viền th&eacute;p kh&ocirc;ng gỉ&nbsp;chắc chắn, chống ăn m&ograve;n, chịu được mọi thời tiết khắc nghiệt. D&acirc;y da&nbsp;nhẹ nh&agrave;ng, năng động, cho bạn thoải m&aacute;i khi đeo</p>\r\n<p>- Hệ số chống nước 30m gi&uacute;p&nbsp;<a title=\"Đồng hồ nữ ch&iacute;nh h&atilde;ng, gi&aacute; rẻ, b&aacute;n tại Thế Giới Di Động\" href=\"https://www.thegioididong.com/dong-ho-deo-tay-nu\" target=\"_blank\">đồng hồ nữ</a>&nbsp;n&agrave;y an to&agrave;n khi rửa tay v&agrave; đi mưa nhỏ, kh&ocirc;ng n&ecirc;n đeo khi tắm rửa</p>', 1, 990000, 'b00d344275.jpg'),
(13, 'Đồng hồ Nữ Nakzen SL4118LBN-7NR', 3, 11, '<div class=\"article__content short\">\r\n<p>- L&agrave; một sản phẩm c&oacute; chất lượng đến từ thương hiệu&nbsp;<a title=\"Đồng hồ Nakzen ch&iacute;nh h&atilde;ng, gi&aacute; rẻ, b&aacute;n tại Thế Giới Di Động\" href=\"https://www.thegioididong.com/dong-ho-deo-tay-nakzen\" target=\"_blank\">đồng hồ Nakzen</a>&nbsp;- Nhật Bản</p>\r\n<p>- Sở hữu đường k&iacute;nh mặt 30 mm c&ugrave;ng độ rộng d&acirc;y 15 mm</p>\r\n<p>-&nbsp;<a title=\"Đồng hồ ch&iacute;nh h&atilde;ng, gi&aacute; rẻ, b&aacute;n tại Thế Giới Di Động\" href=\"https://www.thegioididong.com/dong-ho-deo-tay\" target=\"_blank\">Đồng hồ</a>&nbsp;c&oacute;&nbsp;khung viền th&eacute;p kh&ocirc;ng gỉ cứng c&aacute;p, chống ăn m&ograve;n, bảo vệ tốt c&aacute;c chi tiết b&ecirc;n trong. D&acirc;y da bền bỉ,&nbsp;trọng lượng nhẹ, cho cảm gi&aacute;c &ecirc;m tay khi đeo</p>\r\n<p>- Thoải m&aacute;i đeo&nbsp;<a title=\"Đồng hồ nữ ch&iacute;nh h&atilde;ng, gi&aacute; rẻ, b&aacute;n tại Thế Giới Di Động\" href=\"https://www.thegioididong.com/dong-ho-deo-tay-nu\" target=\"_blank\">đồng hồ nữ</a>&nbsp;khi đi mưa nhỏ, rửa tay nhờ&nbsp;c&oacute; hệ số chống nước 3 ATM, kh&ocirc;ng n&ecirc;n mang đồng hồ khi tắm rửa</p>\r\n<div>&nbsp;</div>\r\n</div>', 1, 1090000, '9a8b254f57.jpg'),
(14, 'Đồng hồ Nữ Nakzen SL4118LBK-1', 3, 11, '<p>- L&agrave; m&oacute;n phụ kiện thời trang thanh lịch đến từ thương hiệu&nbsp;<a title=\"Đồng hồ Nakzen ch&iacute;nh h&atilde;ng, gi&aacute; rẻ, b&aacute;n tại Thế Giới Di Động\" href=\"https://www.thegioididong.com/dong-ho-deo-tay-nakzen\" target=\"_blank\">đồng hồ Nakzen</a>&nbsp;của Nhật Bản</p>\r\n<p>-&nbsp;<a title=\"Đồng hồ ch&iacute;nh h&atilde;ng, gi&aacute; rẻ, b&aacute;n tại Thế Giới Di Động\" href=\"https://www.thegioididong.com/dong-ho-deo-tay\" target=\"_blank\">Đồng hồ</a>&nbsp;gọn nhẹ với&nbsp;đường k&iacute;nh mặt 30 mm c&ugrave;ng độ rộng d&acirc;y 15 mm</p>\r\n<p>- Khung viền th&eacute;p kh&ocirc;ng gỉ c&oacute; độ bền cao, kh&oacute; m&oacute;p m&eacute;o trước những va đập th&ocirc;ng thường. D&acirc;y da mềm mại v&agrave; &ecirc;m tay, kh&ocirc;ng g&acirc;y kh&oacute; chịu khi đeo cả ng&agrave;y</p>\r\n<p>- Người d&ugrave;ng thoải m&aacute;i đeo&nbsp;<a title=\"Đồng hồ nữ ch&iacute;nh h&atilde;ng, gi&aacute; rẻ, b&aacute;n tại Thế Giới Di Động\" href=\"https://www.thegioididong.com/dong-ho-deo-tay-nu\" target=\"_blank\">đồng hồ nữ</a>&nbsp;n&agrave;y khi rửa tay v&agrave; đi mưa nhỏ với hệ số chống nước 3 ATM, kh&ocirc;ng n&ecirc;n mang khi đi tắm</p>', 1, 1090000, '31583f3294.jpg'),
(15, 'Đồng hồ Nam Nakzen SL4118GBN-7NR', 3, 11, '<p>- Đến từ h&atilde;ng&nbsp;<a title=\"Đồng hồ Nakzen ch&iacute;nh h&atilde;ng, gi&aacute; rẻ, b&aacute;n tại Thế Giới Di Động\" href=\"https://www.thegioididong.com/dong-ho-deo-tay-nakzen\" target=\"_blank\">đồng hồ Nakzen</a>&nbsp;của Nhật Bản</p>\r\n<p>-&nbsp;<a title=\"Đồng hồ ch&iacute;nh h&atilde;ng, gi&aacute; rẻ, b&aacute;n tại Thế Giới Di Động\" href=\"https://www.thegioididong.com/dong-ho-deo-tay\" target=\"_blank\">Đồng hồ</a>&nbsp;sở hữu đường k&iacute;nh mặt 40 mm c&ugrave;ng độ rộng d&acirc;y 20 mm</p>\r\n<p>-&nbsp;Khung viền th&eacute;p kh&ocirc;ng gỉ bền chắc, chống ăn m&ograve;n, an to&agrave;n khi bị rơi rớt ở độ cao vừa phải. D&acirc;y da nhẹ nh&agrave;ng, &ocirc;m tay tốt, &ecirc;m dịu cổ tay khi đeo</p>\r\n<p>-&nbsp;<a title=\"Đồng hồ nam ch&iacute;nh h&atilde;ng, gi&aacute; rẻ, b&aacute;n tại Thế Giới Di Động\" href=\"https://www.thegioididong.com/dong-ho-deo-tay-nam\" target=\"_blank\">Đồng hồ nam</a>&nbsp;an to&agrave;n&nbsp;khi rửa tay v&agrave; đi mưa nhỏ nhờ c&oacute; hệ số chống nước 3 ATM, kh&ocirc;ng n&ecirc;n đeo khi tắm, bơi lội</p>', 1, 1090000, '734a7ac01d.jpg'),
(16, 'Đồng hồ Nữ Nakzen SL4118LBN-7 ', 3, 11, '<p>- Mang thiết kế nữ t&iacute;nh đến từ thương hiệu&nbsp;<a title=\"Đồng hồ Nakzen ch&iacute;nh h&atilde;ng, gi&aacute; rẻ, b&aacute;n tại Thế Giới Di Động\" href=\"https://www.thegioididong.com/dong-ho-deo-tay-nakzen\" target=\"_blank\">đồng hồ Nakzen</a>&nbsp;- Nhật Bản</p>\r\n<p>- Sở hữu đường k&iacute;nh mặt 30 mm c&ugrave;ng độ rộng d&acirc;y 15 mm</p>\r\n<p>-&nbsp;<a title=\"Đồng hồ ch&iacute;nh h&atilde;ng, gi&aacute; rẻ, b&aacute;n tại Thế Giới Di Động\" href=\"https://www.thegioididong.com/dong-ho-deo-tay\" target=\"_blank\">Đồng hồ</a>&nbsp;c&oacute;&nbsp;khung viền th&eacute;p kh&ocirc;ng gỉ cứng c&aacute;p, chịu lực tốt, dễ lau ch&ugrave;i khi b&aacute;m bụi bẩn. D&acirc;y da &ecirc;m nhẹ, thiết kế &ocirc;m tay tốt cho bạn thoải m&aacute;i suốt ng&agrave;y d&agrave;i</p>\r\n<p>- Nhờ c&oacute; hệ số chống nước 3 ATM m&agrave;&nbsp;<a title=\"Đồng hồ nữ ch&iacute;nh h&atilde;ng, gi&aacute; rẻ, b&aacute;n tại Thế Giới Di Động\" href=\"https://www.thegioididong.com/dong-ho-deo-tay-nu\" target=\"_blank\">đồng hồ nữ</a>&nbsp;n&agrave;y an to&agrave;n khi rửa tay v&agrave; đi mưa nhỏ, kh&ocirc;ng n&ecirc;n đeo khi tắm, bơi lội</p>', 1, 1090000, '857cbe6280.jpg'),
(17, 'Đồng hồ Nữ Nakzen SS4109L-7NR ', 3, 11, '<p>- Đến từ thương hiệu&nbsp;<a title=\"Đồng hồ Nakzen ch&iacute;nh h&atilde;ng, gi&aacute; rẻ, b&aacute;n tại Thế Giới Di Động\" href=\"https://www.thegioididong.com/dong-ho-deo-tay-nakzen\" target=\"_blank\">đồng hồ Nakzen</a>&nbsp;của Nhật Bản - uy t&iacute;n v&agrave; nổi tiếng về chất lượng</p>\r\n<p>- Chiếc&nbsp;<a title=\"Đồng hồ nữ ch&iacute;nh h&atilde;ng, gi&aacute; rẻ, b&aacute;n tại Thế Giới Di Động\" type=\"xem th&ecirc;m đồng hồ nam\" href=\"https://www.thegioididong.com/dong-ho-deo-tay-nu\" target=\"_blank\">đồng hồ nữ</a>&nbsp;n&agrave;y&nbsp;c&oacute; đường k&iacute;nh mặt 29 mm, độ rộng d&acirc;y 16 mm, ph&ugrave; hợp với cổ tay c&oacute; chu vi khoảng 13 - 13.5 cm</p>\r\n<p>- D&acirc;y&nbsp;<a title=\"Đồng hồ ch&iacute;nh h&atilde;ng, gi&aacute; rẻ, b&aacute;n tại Thế Giới Di Động\" type=\"xem th&ecirc;m đồng hồ nam\" href=\"https://www.thegioididong.com/dong-ho-deo-tay\" target=\"_blank\">đồng hồ</a>&nbsp;v&agrave; khung viền l&agrave;m bằng th&eacute;p chống gỉ, bền bỉ với thời gian, chống ăn m&ograve;n, chịu được mọi thời tiết khắc nghiệt</p>\r\n<p>- Chỉ số chống nước 3 ATM: bạn thoải m&aacute;i đeo đồng hồ&nbsp;khi đi mưa, rửa tay, kh&ocirc;ng mang khi tắm rửa, bơi lội hay lặn</p>\r\n<p>- &Ocirc; lịch ng&agrave;y ở vị tr&iacute; 3 giờ c&ugrave;ng kim dạ quang hiện đại gi&uacute;p bạn xem ng&agrave;y giờ trong điều kiện thiếu &aacute;nh s&aacute;ng</p>', 1, 1980000, 'a0c3cd5620.jpg'),
(18, 'Đồng hồ Nữ Nakzen SS4102LD-7N3 ', 3, 11, '<p>- Thương hiệu&nbsp;<a title=\"Đồng hồ Nakzen ch&iacute;nh h&atilde;ng, gi&aacute; rẻ, b&aacute;n tại Thế Giới Di Động\" href=\"https://www.thegioididong.com/dong-ho-deo-tay-nakzen\" target=\"_blank\">đồng hồ Nakzen</a>&nbsp;uy t&iacute;n v&agrave; chất lượng của Nhật Bản.</p>\r\n<p>-&nbsp;<a title=\"Đồng hồ ch&iacute;nh h&atilde;ng, gi&aacute; rẻ, b&aacute;n tại Thế Giới Di Động\" type=\"xem th&ecirc;m đồng hồ nam\" href=\"https://www.thegioididong.com/dong-ho-deo-tay\" target=\"_blank\">Đồng hồ</a>&nbsp;c&oacute; đường k&iacute;nh mặt 30 mm, độ rộng d&acirc;y 14 mm, ph&ugrave; hợp với cổ tay c&oacute; chu vi khoảng 13 - 14 cm.</p>\r\n<p>- Mẫu&nbsp;<a title=\"Đồng hồ nữ ch&iacute;nh h&atilde;ng, gi&aacute; rẻ, b&aacute;n tại Thế Giới Di Động\" type=\"xem th&ecirc;m đồng hồ nam\" href=\"https://www.thegioididong.com/dong-ho-deo-tay-nu\" target=\"_blank\">đồng hồ nữ</a>&nbsp;n&agrave;y sở hữu d&acirc;y&nbsp;v&agrave; khung viền l&agrave;m bằng th&eacute;p chống gỉ, bền bỉ, chống ăn m&ograve;n, chống oxi h&oacute;a hiệu quả.</p>\r\n<p>- Chống nước 3 ATM: bạn y&ecirc;n t&acirc;m đeo đồng hồ&nbsp;khi đi mưa, rửa tay, kh&ocirc;ng mang khi tắm rửa, bơi lội hay lặn.</p>\r\n<p>- &Ocirc; lịch thứ, lịch ng&agrave;y ở vị tr&iacute; 3 giờ gi&uacute;p bạn l&agrave;m chủ thời gian của m&igrave;nh.</p>', 1, 1980000, 'c86b2b9660.jpg'),
(19, 'Đồng hồ Nam Nakzen SS4099GD-7N3', 3, 11, '<p>- Thương hiệu&nbsp;<a title=\"Đồng hồ Nakzen ch&iacute;nh h&atilde;ng, gi&aacute; rẻ, b&aacute;n tại Thế Giới Di Động\" href=\"https://www.thegioididong.com/dong-ho-deo-tay-nakzen\" target=\"_blank\">đồng hồ Nakzen</a>&nbsp;nổi tiếng đến từ Nhật Bản, uy t&iacute;n v&agrave; chất lượng h&agrave;ng đầu thế giới.</p>\r\n<p>- Đường k&iacute;nh mặt 40 mm, độ rộng d&acirc;y 21 mm.&nbsp;Mẫu&nbsp;<a title=\"Đồng hồ nam ch&iacute;nh h&atilde;ng, gi&aacute; rẻ, b&aacute;n tại Thế Giới Di Động\" type=\"xem th&ecirc;m đồng hồ nam\" href=\"https://www.thegioididong.com/dong-ho-deo-tay-nam\" target=\"_blank\">đồng hồ nam</a>&nbsp;n&agrave;y&nbsp;ph&ugrave; hợp với những người c&oacute; k&iacute;ch thước cổ tay trung b&igrave;nh (chu vi khoảng từ 17 - 19 cm).</p>\r\n<p>- D&acirc;y v&agrave; khung viền được l&agrave;m bằng th&eacute;p chống oxi h&oacute;a, giữ cho&nbsp;<a title=\"Đồng hồ ch&iacute;nh h&atilde;ng, gi&aacute; rẻ, b&aacute;n tại Thế Giới Di Động\" type=\"xem th&ecirc;m đồng hồ nam\" href=\"https://www.thegioididong.com/dong-ho-deo-tay\" target=\"_blank\">đồng hồ</a>&nbsp;lu&ocirc;n s&aacute;ng b&oacute;ng, tạo cảm gi&aacute;c sang trọng v&agrave; đẳng cấp.</p>\r\n<p>- Chống nước 3 ATM: An to&agrave;n khi đeo rửa tay hay đi dưới trời mưa nhỏ,&nbsp;kh&ocirc;ng đeo khi tắm rửa, bơi lội.</p>\r\n<p>- Lịch thứ, ng&agrave;y trang bị tr&ecirc;n đồng hồ gi&uacute;p bạn dễ d&agrave;ng nắm bắt thời gian. Kim dạ quang hỗ trợ xem giờ trong b&oacute;ng tối.</p>', 1, 1980000, '1cffba7fc0.jpg'),
(20, 'Đồng hồ Nữ Nakzen SS8012LD-7N3 ', 3, 11, '<p>- Đến từ thương hiệu&nbsp;<a title=\"Đồng hồ Nakzen ch&iacute;nh h&atilde;ng, gi&aacute; rẻ, b&aacute;n tại Thế Giới Di Động\" href=\"https://www.thegioididong.com/dong-ho-deo-tay-nakzen\" target=\"_blank\">đồng hồ Nakzen</a>&nbsp;uy t&iacute;n v&agrave; chất lượng của Nhật Bản</p>\r\n<p>-&nbsp;Mẫu&nbsp;<a title=\"Đồng hồ nữ ch&iacute;nh h&atilde;ng, gi&aacute; rẻ, b&aacute;n tại Thế Giới Di Động\" type=\"xem th&ecirc;m đồng hồ nam\" href=\"https://www.thegioididong.com/dong-ho-deo-tay-nu\" target=\"_blank\">đồng hồ nữ</a>&nbsp;n&agrave;y&nbsp;c&oacute; đường k&iacute;nh mặt 32 mm, độ rộng d&acirc;y 16 mm, ph&ugrave; hợp với cổ tay c&oacute; chu vi khoảng 14 - 15 cm</p>\r\n<p>- D&acirc;y&nbsp;v&agrave; khung viền l&agrave;m bằng th&eacute;p chống gỉ bền chắc, chống ăn m&ograve;n, cho đồng hồ lu&ocirc;n s&aacute;ng b&oacute;ng, sang trọng</p>\r\n<p>- Chỉ số chống nước 3 ATM: bạn y&ecirc;n t&acirc;m đeo&nbsp;<a title=\"Đồng hồ ch&iacute;nh h&atilde;ng, gi&aacute; rẻ, b&aacute;n tại Thế Giới Di Động\" type=\"xem th&ecirc;m đồng hồ nam\" href=\"https://www.thegioididong.com/dong-ho-deo-tay\" target=\"_blank\">đồng hồ</a>&nbsp;khi đi mưa, rửa tay, kh&ocirc;ng mang khi tắm rửa, bơi lội hay lặn</p>\r\n<p>- Đồng hồ c&oacute; lịch ng&agrave;y hữu dụng gi&uacute;p bạn l&agrave;m chủ hơn trong c&ocirc;ng việc</p>', 1, 1980000, '897c5f0bf8.jpg'),
(21, 'Điện thoại iPhone 12 64GB', 7, 7, '<h3>Trong những th&aacute;ng cuối năm 2020&nbsp;<a title=\"Tham khảo sản phẩm ch&iacute;nh h&atilde;ng của Apple tại Thế Giới Di Động\" href=\"https://www.thegioididong.com/apple\" target=\"_blank\">Apple</a>&nbsp;đ&atilde; ch&iacute;nh thức giới thiệu đến người d&ugrave;ng cũng như iFan thế hệ iPhone&nbsp;12&nbsp;series&nbsp;mới với h&agrave;ng loạt t&iacute;nh năng bức ph&aacute;, thiết kế được lột x&aacute;c ho&agrave;n to&agrave;n, hiệu năng đầy mạnh mẽ v&agrave; một trong số đ&oacute; ch&iacute;nh l&agrave;&nbsp;<a title=\"Tham khảo điện thoại iPhone 12 ch&iacute;nh h&atilde;ng tại Thế Giới Di Động\" href=\"https://www.thegioididong.com/dtdd/iphone-12\" target=\"_blank\">iPhone 12 64GB</a>.</h3>\r\n<h3>Hiệu năng vượt xa mọi giới hạn</h3>\r\n<p>Apple đ&atilde; trang bị con chip mới nhất của h&atilde;ng (t&iacute;nh đến 11/2020) cho iPhone 12 đ&oacute; l&agrave;&nbsp;<a title=\"T&igrave;m hiểu chip A14 Bionic l&agrave; g&igrave;?\" href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-ve-chip-apple-a14-bionic-tren-iphone-12-va-ipad-1290695\" target=\"_blank\">A14 Bionic</a>, được sản xuất tr&ecirc;n tiến tr&igrave;nh 5 nm với hiệu suất ổn định hơn so với chip A13 được trang bị tr&ecirc;n phi&ecirc;n bản tiền nhiệm&nbsp;<a title=\"Tham khảo điện thoại iPhone 11 ch&iacute;nh h&atilde;ng tại Thế Giới Di Động\" href=\"https://www.thegioididong.com/dtdd/iphone-11\" target=\"_blank\">iPhone 11</a>.</p>', 1, 23490000, '9f4fe4aa48.jpg'),
(22, 'Điện thoại iPhone 12 Pro Max 128GB ', 7, 7, '<h3><a title=\"Tham khảo điện thoại iPhone 12 Pro Max 128GB ch&iacute;nh h&atilde;ng tại Thế Giới Di Động\" href=\"https://www.thegioididong.com/dtdd/iphone-12-pro-max\" target=\"_blank\">iPhone 12 Pro Max 128 GB</a>&nbsp;một si&ecirc;u phẩm&nbsp;<a title=\"Tham khảo điện thoại smartphone ch&iacute;nh h&atilde;ng tại Thế Giới Di Động\" href=\"https://www.thegioididong.com/dtdd\" target=\"_blank\">smartphone</a>&nbsp;đến từ&nbsp;<a title=\"Tham khảo sản phẩm ch&iacute;nh h&atilde;ng của Apple tại Thế Giới Di Động\" href=\"https://www.thegioididong.com/apple\" target=\"_blank\">Apple</a>. M&aacute;y c&oacute; một hiệu năng ho&agrave;n to&agrave;n mạnh mẽ đ&aacute;p ứng tốt nhiều nhu cầu đến từ người d&ugrave;ng v&agrave; mang trong m&igrave;nh một thiết kế đầy vu&ocirc;ng vức, sang trọng.</h3>\r\n<h3>Thay đổi thiết kế mới sau 6 năm</h3>\r\n<p>Theo chu kỳ cứ mỗi 3 năm th&igrave; iPhone lại thay đổi thiết kế v&agrave; 2020 l&agrave; năm đ&aacute;nh dấu cột mốc quan trong n&agrave;y, v&igrave; thế rất c&oacute; thể đ&acirc;y l&agrave; thời điểm c&aacute;c mẫu&nbsp;<a title=\"Tham khảo c&aacute;c mẫu điện thoại iPhone 12 ch&iacute;nh h&atilde;ng, gi&aacute; tốt tại Thegioididong.com\" type=\"Tham khảo c&aacute;c mẫu điện thoại iPhone 12 ch&iacute;nh h&atilde;ng, gi&aacute; tốt tại Thegioididong.com\" href=\"https://www.thegioididong.com/dtdd/iphone-12\" target=\"_blank\">iPhone 12</a>&nbsp;sẽ c&oacute; một sự thay đổi mạnh mẽ về thiết kế.</p>\r\n<p>iPhone 12 Pro Max sở hữu diện mạo mới mới với khung viền được v&aacute;t thẳng v&agrave; mạnh mẽ như tr&ecirc;n&nbsp;<a title=\"Tham khảo gi&aacute; m&aacute;y t&iacute;nh bảng Apple iPad Pro 12.9 inch Wifi 128GB (2020)\" type=\"Tham khảo gi&aacute; m&aacute;y t&iacute;nh bảng Apple iPad Pro 12.9 inch Wifi 128GB (2020)\" href=\"https://www.thegioididong.com/may-tinh-bang/ipad-pro-12-9-inch-wifi-128gb-2020\" target=\"_blank\">iPad Pro 2020</a>, chấm dứt hơn 6 năm với kiểu thiết kế bo cong tr&ecirc;n&nbsp;<a title=\"Tham khảo gi&aacute; điện thoại iPhone 6 ch&iacute;nh h&atilde;ng tại Thegioididong.com\" type=\"Tham khảo gi&aacute; điện thoại iPhone 6 ch&iacute;nh h&atilde;ng tại Thegioididong.com\" href=\"https://www.thegioididong.com/dtdd/iphone-6-32gb-gold\" target=\"_blank\">iPhone 6</a>&nbsp;được ra mắt lần đầu ti&ecirc;n v&agrave;o năm 2014.</p>', 1, 30990000, '8ef23dc09c.jpg'),
(23, 'Điện thoại iPhone 12 Pro Max 512GB', 7, 7, '<h3><a title=\"Tham khảo điện thoại iPhone 12 Pro Max 512GB ch&iacute;nh h&atilde;ng tại Thế Giới Di Động\" href=\"https://www.thegioididong.com/dtdd/iphone-12-pro-max-512gb\" target=\"_blank\">iPhone 12 Pro Max 512GB</a>&nbsp;- đẳng cấp từ t&ecirc;n gọi đến từng chi tiết. Ngay từ khi chỉ l&agrave; tin đồn th&igrave; chiếc&nbsp;<a title=\"Tham khảo điện thoại ch&iacute;nh h&atilde;ng tại Thế Giới Di Động\" href=\"https://www.thegioididong.com/dtdd\" target=\"_blank\">smartphone</a>&nbsp;n&agrave;y đ&atilde; l&agrave;m đứng ngồi kh&ocirc;ng y&ecirc;n bao &ldquo;fan cứng&rdquo; nh&agrave;&nbsp;<a title=\"Tham khảo mẫu sản phẩm Apple ch&iacute;nh h&atilde;ng tại Thế Giới Di Động\" href=\"https://www.thegioididong.com/apple\" target=\"_blank\">Apple</a>, với những n&acirc;ng cấp v&ocirc; c&ugrave;ng nổi bật hứa hẹn sẽ mang đến những trải nghiệm tốt nhất về mọi mặt m&agrave; chưa một chiếc&nbsp;<a title=\"Tham khảo điện thoại iPhone ch&iacute;nh h&atilde;ng tại Thế Giới Di Động\" href=\"https://www.thegioididong.com/dtdd-apple-iphone\" target=\"_blank\">iPhone</a>&nbsp;tiền nhiệm n&agrave;o c&oacute; được.</h3>\r\n<h3>Thu h&uacute;t từ c&aacute;i nh&igrave;n đầu ti&ecirc;n</h3>\r\n<p>Quay trở lại đầy ho&agrave;i niệm với thiết kế phẳng, vu&ocirc;ng vức tương tự&nbsp;<a title=\"Tham khảo th&ocirc;ng tin iPhone 4 tại thegioididong.com\" href=\"https://www.thegioididong.com/dtdd/iphone-4-8gb\" target=\"_blank\">iPhone 4</a>&nbsp;nhưng kh&ocirc;ng hề cho cảm gi&aacute;c lỗi thời m&agrave; ho&agrave;n to&agrave;n sang trọng với thiết kế tinh tế v&agrave; được cấu tạo từ những vật liệu cao cấp hơn.</p>', 1, 41490000, '17b625bdac.jpg'),
(24, 'Điện thoại iPhone 12 Pro 256GB', 7, 7, '<h3><a title=\"Tham khảo gi&aacute; điện thoại iPhone 12 Pro 256 GB ch&iacute;nh h&atilde;ng VN/A gi&aacute; tốt tại Thegioididong.com\" type=\"Tham khảo gi&aacute; điện thoại iPhone 12 Pro 256 GB ch&iacute;nh h&atilde;ng VN/A gi&aacute; tốt tại Thegioididong.com\" href=\"https://www.thegioididong.com/dtdd/iphone-12-pro-256gb\" target=\"_blank\">iPhone 12 Pro 256 GB</a>&nbsp;đ&atilde; ch&iacute;nh thức được ra mắt với sự thay đổi lớn về thiết kế b&ecirc;n ngo&agrave;i chứa đựng một hiệu năng cực khủng b&ecirc;n trong, k&egrave;m theo đ&oacute; l&agrave; một loạt c&aacute;c c&ocirc;ng nghệ ấn tượng về camera, kết nối 5G lần đầu được xuất hiện.</h3>\r\n<h3>Giống iPhone 5 nhưng ph&oacute;ng to với m&agrave;n h&igrave;nh tr&agrave;n viền</h3>\r\n<p>Kh&ocirc;ng nằm ngo&agrave;i dự đo&aacute;n, iPhone 12 Pro quay lại thiết kế dạng hộp với phần khung viền vu&ocirc;ng vức, mạnh mẽ đ&atilde; từng xuất hiện tr&ecirc;n iPhone 5, đồng thời kết th&uacute;c kỷ nguy&ecirc;n &ldquo;bo cong&rdquo; từ thế hệ iPhone 6.</p>', 1, 33990000, '94eff32b93.jpg'),
(25, 'Laptop Lenovo IdeaPad 5 14ITL05 i5 1135G7/16GB/512GB/Win10 (82FE00KRVN)', 2, 6, '<div class=\"article__content short\">\r\n<div class=\"article__content short\">\r\n<h3>Lenovo IdeaPad 5 14ITL05 i5 (82FE00KRVN) thuộc d&ograve;ng<a title=\"Xem th&ecirc;m một số mẫu laptop Học tập - văn ph&ograve;ng đang được b&aacute;n tại Thegioididong.com\" href=\"https://www.thegioididong.com/laptop?g=hoc-tap-van-phong\" target=\"_blank\">&nbsp;laptop học tập - văn ph&ograve;ng</a>&nbsp;với cấu h&igrave;nh mạnh mẽ g&oacute;i gọn trong lớp vỏ mỏng nhẹ, đ&acirc;y sẽ l&agrave; sự lựa chọn tuyệt vời d&agrave;nh cho học sinh, sinh vi&ecirc;n v&agrave; nh&acirc;n vi&ecirc;n văn ph&ograve;ng với nhu cầu sử dụng phổ th&ocirc;ng.</h3>\r\n<h3>Hiệu năng ổn định, tốc độ xử l&yacute; nhanh ch&oacute;ng</h3>\r\n<p>Lenovo trang bị cho chiếc m&aacute;y n&agrave;y bộ vi xử l&yacute;<strong><a title=\"Xem th&ecirc;m một số laptop CPU Core i5 đang được b&aacute;n tại Thegioididong.com\" href=\"https://www.thegioididong.com/laptop?g=core-i5\" target=\"_blank\">&nbsp;Intel Core i5</a>&nbsp;</strong><strong>1135G7​&nbsp;</strong>nhờ đ&oacute; m&aacute;y c&oacute; thể chạy mượt c&aacute;c ứng dụng văn ph&ograve;ng v&agrave;o đồ họa căn bản như: Word, Excel, Photoshop, AI,... với 4 nh&acirc;n 8 luồng cho xung nhịp tối đa l&agrave;&nbsp;<strong>4.2 GHz</strong>&nbsp;nhờ Turbo Boost.&nbsp;</p>\r\n<p><span>Đi c&ugrave;ng với&nbsp;</span><a title=\"Xem th&ecirc;m laptop trang bị CPU thế hệ 11 đang b&aacute;n tại thegioididong.com\" href=\"https://www.thegioididong.com/laptop-cpu-intel-gen-11\" target=\"_blank\">CPU thế thế thứ 11</a><strong>&nbsp;</strong><span>l&agrave; card đồ họa t&iacute;ch hợp</span><a title=\"T&igrave;m hiểu về card đồ họa t&iacute;ch hợp Intel Iris Xe Graphics\" href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-ve-card-do-hoa-tich-hop-intel-iris-xe-graphics-1305192\" target=\"_blank\">&nbsp;Intel Iris Xe Graphics&nbsp;</a><span>mang đến chất lượng h&igrave;nh ảnh cao hơn, tăng hiệu suất khi chơi game hay l&agrave;m đồ họa m&agrave; vẫn ti&ecirc;u thụ tối ưu nguồn năng lượng gi&uacute;p chiếc m&aacute;y của bạn hoạt động trong thời gian kh&aacute; d&agrave;i.</span></p>\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>', 1, 19490000, 'ce6b76e3d9.jpg'),
(26, 'Laptop Lenovo ThinkBook 15 G2 ITL i5 1135G7/8GB/512GB/Win10 (20VE006YVN)', 2, 6, '<h3><a title=\"Laptop Lenovo ThinkBook 15 G2 ITL i5 (20VE006YVN)\" href=\"https://www.thegioididong.com/laptop/lenovo-thinkbook-15-g2-itl-i5-20ve006yvn\" target=\"_blank\">Laptop Lenovo ThinkBook 15 G2 ITL i5 (20VE006YVN)</a>&nbsp;l&agrave; chiếc laptop thuộc d&ograve;ng laptop doanh nh&acirc;n sở hữu thiết kế sang trọng, độ bền chuẩn qu&acirc;n đội kết hợp với hiệu năng mạnh mẽ, l&agrave; lựa chọn l&yacute; tưởng cho giới doanh nh&acirc;n, văn ph&ograve;ng, người l&agrave;m c&ocirc;ng việc s&aacute;ng tạo nội dung.</h3>\r\n<h3>hiết kế kim loại cao cấp sang trọng</h3>\r\n<p>Với chất liệu vỏ ho&agrave;n to&agrave;n từ kim loại &iacute;t bị b&aacute;m bụi b&aacute;m dấu v&acirc;n tay, đường n&eacute;t của laptop được l&agrave;m vu&ocirc;ng vắn tạo cảm gi&aacute;c khỏe khoắn, thiết kế của&nbsp;<a title=\"Xem th&ecirc;m một số mẫu laptop Lenovo ThinkBook đang được b&aacute;n tại Thegioididong.com\" href=\"https://www.thegioididong.com/laptop-lenovo?g=lenovo-thinkbook\" target=\"_blank\">Lenovo ThinkBook</a>&nbsp;15 mang đến cảm gi&aacute;c cực k&igrave; đẳng cấp v&agrave; thời trang, tạo phong c&aacute;ch ri&ecirc;ng cho bạn.</p>\r\n<p><span>Chiếc&nbsp;</span><a title=\"Xem th&ecirc;m một số laptop đang được b&aacute;n tại Thegioididong.com\" href=\"https://www.thegioididong.com/laptop\" target=\"_blank\">laptop</a><span>&nbsp;n&agrave;y chỉ c&oacute; khối lượng khoảng&nbsp;</span><strong>1.7 kg</strong><span>&nbsp;v&agrave; d&agrave;y&nbsp;</span><strong>18.9 mm</strong><span>&nbsp;sẽ gi&uacute;p bạn dễ d&agrave;ng di chuyển m&aacute;y khi cần đem theo b&ecirc;n m&igrave;nh.&nbsp;</span></p>', 1, 17190000, '037a7e0f97.jpg'),
(27, 'Laptop Lenovo ThinkBook 15IIL i3 1005G1/4GB/512GB/Win10 (20SM00D9VN)', 2, 6, '<h3><a title=\"Laptop Lenovo ThinkBook 15IIL i3 (20SM00D9VN)\" href=\"https://www.thegioididong.com/laptop/lenovo-thinkbook-15iil-i3-20sm00d9vn\" target=\"_blank\">Laptop Lenovo ThinkBook 15IIL i3 (20SM00D9VN)</a>&nbsp;sở hữu thiết kế từ kim loại to&aacute;t l&ecirc;n vẻ sang trọng, sắc sảo, cấu h&igrave;nh l&iacute; tưởng cho học tập, tr&igrave;nh duyệt web khi trang bị bộ vi xử l&yacute; Intel thế hệ thứ 10 mới v&agrave; ổ cứng SSD cực nhanh.</h3>\r\n<h3>Thiết kế mỏng nhẹ, bền bỉ</h3>\r\n<p>Thiết kế của Laptop&nbsp;<a title=\"Xem th&ecirc;m c&aacute;c sản phẩm Lenovo ThinkBook đang b&aacute;n tại Thegioididong.com\" href=\"https://www.thegioididong.com/laptop-lenovo?g=lenovo-thinkbook\" target=\"_blank\">Lenovo ThinkBook</a>&nbsp;15 IML hướng đến sự tối giản v&agrave; hiện đại. M&aacute;y c&oacute; nắp lưng bằng kim loại v&agrave; th&acirc;n m&aacute;y được l&agrave;m từ nhựa ABS cao cấp, vừa mang lại vẻ sang trọng, vừa bền bỉ. M&aacute;y c&oacute; độ d&agrave;y chỉ&nbsp;<strong>18.9 mm</strong>, trọng lượng chỉ&nbsp;<strong>1.8 kg</strong>, kh&aacute; mỏng nhẹ đối với laptop c&ugrave;ng ph&acirc;n kh&uacute;c, dễ d&agrave;ng cho v&agrave;o balo hay t&uacute;i x&aacute;ch, sẵn s&agrave;ng c&ugrave;ng bạn &ldquo;l&ecirc;n đường&rdquo;.</p>', 0, 12900000, '56c79cff2b.jpg'),
(32, 'Laptop Dell Inspiron 7501 i7 10750H/8GB/512GB/4GB GTX1650Ti/Win10 (X3MRY1) ', 2, 1, '<h2><a title=\"Dell Inspiron 7501 i7 (X3MRY1)\" href=\"https://www.thegioididong.com/laptop/dell-inspiron-7501-i7-x3mry1\" target=\"_blank\">Dell Inspiron 7501 i7 (X3MRY1)</a>&nbsp;sẽ gi&uacute;p bạn khơi dậy niềm đam m&ecirc; v&agrave; l&agrave;m việc cực kỳ hiệu quả cho c&aacute;c game thủ hay d&acirc;n thiết kế đồ họa với mẫu m&atilde; thanh lịch, m&agrave;n h&igrave;nh sắc n&eacute;t v&agrave; bộ xử l&yacute; mạnh mẽ Intel Core i7 thế hệ thứ 10.</h2>\r\n<h3>Cấu h&igrave;nh mạnh mẽ, đ&aacute;p ứng ho&agrave;n hảo trong c&ocirc;ng việc</h3>\r\n<p>Với sức mạnh từ bộ vi xử l&yacute;&nbsp;<a title=\"T&igrave;m hiểu th&ecirc;m c&aacute;c laptop sử dụng Intel thế hệ thứ 10 đang kinh doanh tại Thegioididong.com\" href=\"https://www.thegioididong.com/laptop-cpu-intel-gen-10\" target=\"_blank\">Intel thế hệ thứ 10</a>, con chip&nbsp;<strong>Intel Core i7 - 10750H&nbsp;</strong>thuộc d&ograve;ng&nbsp;<strong>Comet Lake&nbsp;</strong>với&nbsp;<strong>6 nh&acirc;n</strong>,&nbsp;<strong>12 luồng</strong>, gi&uacute;p tăng tốc về hiệu năng, lượng khung h&igrave;nh tr&ecirc;n gi&acirc;y, tốc độ xuất video,... B&ecirc;n cạnh đ&oacute;, CPU c&ograve;n được cung cấp xung nhịp cơ bản&nbsp;<strong>2.6 GHz</strong>&nbsp;v&agrave; xung nhịp tối đa l&ecirc;n tới&nbsp;<strong>5.0 GHz</strong>. Tuy mạnh mẽ nhưng bộ vi xử l&yacute; n&agrave;y tiết kiệm điện đ&aacute;ng kể cho laptop,&nbsp;cực k&igrave; th&iacute;ch hợp với nhu cầu chinh chiến c&aacute;c tựa game li&ecirc;n tục hay c&aacute;c t&aacute;c vụ đồ họa.</p>\r\n<p>Điểm cộng của chiếc laptop n&agrave;y l&agrave;&nbsp;<a title=\"Xem th&ecirc;m c&aacute;c sản phẩm laptop Card đồ họa rời đang b&aacute;n tại Thegioididong.com\" href=\"https://www.thegioididong.com/laptop-card-do-hoa-roi\" target=\"_blank\">card m&agrave;n h&igrave;nh rời</a>&nbsp;<strong>NVIDIA GeForce GTX 1650Ti 4GB</strong>&nbsp;sử dụng vi kiến tr&uacute;c Touring mang đến hiệu suất xử l&yacute; đồ họa tối ưu, tăng trải nghiệm chơi game, gi&uacute;p bạn chiến đủ c&aacute;c tựa game online v&agrave; offline với mức đồ họa từ thấp đến trung b&igrave;nh.&nbsp;Bạn c&ograve;n c&oacute; thể tha hồ s&aacute;ng tạo, chỉnh sửa ảnh, bi&ecirc;n tập video hay chơi game tr&ecirc;n mẫu laptop n&agrave;y.</p>', 1, 28990000, 'd24312f092.jpg'),
(35, 'Điện thoại OPPO A93', 7, 5, '<h3><a title=\"Tham khảo điện thoại OPPO ch&iacute;nh h&atilde;ng tại Thegioididong.com\" href=\"https://www.thegioididong.com/dtdd-oppo\" target=\"_blank\">OPPO</a>&nbsp;đ&atilde; tung ra&nbsp;<a title=\"Tham khảo điện thoại OPPO A93 ch&iacute;nh h&atilde;ng tại Thegioididong.com\" href=\"https://www.thegioididong.com/dtdd/oppo-a93\" target=\"_blank\">OPPO A93</a>&nbsp;d&ograve;ng sản&nbsp;phẩm thuộc ph&acirc;n kh&uacute;c&nbsp;<a title=\"Tham khảo điện thoại tầm trung ch&iacute;nh h&atilde;ng tại Thegioididong.com\" href=\"https://www.thegioididong.com/dtdd?p=tu-4-7-trieu\" target=\"_blank\">điện thoại tầm trung</a>&nbsp;được xem l&agrave; tiếp nối từ&nbsp;<a title=\"Tham khảo điện thoại OPPO A92 ch&iacute;nh h&atilde;ng tại Thegioididong.com\" href=\"https://www.thegioididong.com/dtdd/oppo-a92\" target=\"_blank\">OPPO A92</a>&nbsp;với nhiều điểm được n&acirc;ng cấp như hiệu năng, hệ thống camera c&ugrave;ng khả năng sạc nhanh 18 W.</h3>\r\n<h3>Hiệu năng vượt trội c&ugrave;ng với Helio P95</h3>\r\n<p>OPPO A93 được trang bị chipset MediaTek Helio P95 tốc độ CPU đạt 2.2 GHz với sức mạnh như thế n&agrave;y th&igrave; A93 sẽ kh&ocirc;ng l&agrave;m bạn thất vọng khi c&oacute; thể hoạt động tốt với nhiều ứng dụng nặng hay thao t&aacute;c cuộn trang đều diễn ra trơn tru cảm gi&aacute;c như kh&ocirc;ng c&oacute; độ trễ.</p>', 1, 5990000, '16e0c09d50.jpg'),
(36, 'Điện thoại Xiaomi Redmi Note 10 5G 8GB', 7, 3, '<h3><a title=\"Tham khảo gi&aacute; điện thoại Redmi Note 10 5G ch&iacute;nh h&atilde;ng tại Thegioididong.com\" type=\"Tham khảo gi&aacute; điện thoại Redmi Note 10 5G ch&iacute;nh h&atilde;ng tại Thegioididong.com\" href=\"https://www.thegioididong.com/dtdd/xiaomi-redmi-note-10-5g\" rel=\"noopener\" target=\"_blank\">Redmi Note 10 5G</a>&nbsp;một trong những mẫu&nbsp;<a title=\"Tham khảo gi&aacute; điện thoại, smartphone ch&iacute;nh h&atilde;ng đang kinh doanh tại Thegioididong.com\" type=\"Tham khảo gi&aacute; điện thoại, smartphone ch&iacute;nh h&atilde;ng đang kinh doanh tại Thegioididong.com\" href=\"https://www.thegioididong.com/dtdd\" rel=\"noopener\" target=\"_blank\">điện thoại</a>&nbsp;thuộc series&nbsp;<a title=\"Tham khảo gi&aacute; điện thoại Xiaomi Redmi Note 10 (4GB/64GB) ch&iacute;nh h&atilde;ng, si&ecirc;u khuyến m&atilde;i tại Thegioididong.com\" type=\"Tham khảo gi&aacute; điện thoại Xiaomi Redmi Note 10 (4GB/64GB) ch&iacute;nh h&atilde;ng, si&ecirc;u khuyến m&atilde;i tại Thegioididong.com\" href=\"https://www.thegioididong.com/dtdd/xiaomi-redmi-note-10\" rel=\"noopener\" target=\"_blank\">Redmi Note 10</a>&nbsp;của&nbsp;<a title=\"Tham khảo to&agrave;n bộ điện thoại, smartphone Xiaomi ch&iacute;nh h&atilde;ng mới nhất đang kinh doanh tại Thegioididong.com\" type=\"Tham khảo to&agrave;n bộ điện thoại, smartphone Xiaomi ch&iacute;nh h&atilde;ng mới nhất đang kinh doanh tại Thegioididong.com\" href=\"https://www.thegioididong.com/dtdd-xiaomi\" rel=\"noopener\" target=\"_blank\">Xiaomi</a>, kh&ocirc;ng chỉ sở hữu hiệu năng mạnh mẽ đ&aacute;p ứng tốt nhu cầu&nbsp;<a title=\"Tham khảo c&aacute;c mẫu điện thoại c&oacute; cấu h&igrave;nh cao, chơi game cực đ&atilde; tại Thegioididong.com\" type=\"Tham khảo c&aacute;c mẫu điện thoại c&oacute; cấu h&igrave;nh cao, chơi game cực đ&atilde; tại Thegioididong.com\" href=\"https://www.thegioididong.com/dtdd-choi-game\" rel=\"noopener\" target=\"_blank\">chơi game</a>, đ&acirc;y c&ograve;n l&agrave; chiếc điện thoại c&oacute; hỗ trợ mạng 5G cho tốc độ kết nối nhanh ch&oacute;ng.</h3>\r\n<h3>Cấu h&igrave;nh mạnh tối ưu cho nhu cầu chơi game</h3>\r\n<p>Redmi Note 10 5G trang bị vi xử l&yacute; 8 nh&acirc;n Dimensity 700 của MediaTek sản xuất tr&ecirc;n tiến tr&igrave;nh 7 nm ti&ecirc;n tiến, hứa hẹn hiệu năng mạnh mẽ cho mọi t&aacute;c vụ h&agrave;ng ng&agrave;y nhanh ch&oacute;ng hơn.</p>', 1, 5690000, '9c2b9cf152.jpg'),
(37, 'Điện thoại OPPO Reno5  ', 7, 5, '<h3><a title=\"Tham khảo gi&aacute; điện thoại OPPO Reno5 ch&iacute;nh h&atilde;ng tại Thegioididong.com\" type=\"Tham khảo gi&aacute; điện thoại OPPO Reno5 ch&iacute;nh h&atilde;ng tại Thegioididong.com\" href=\"https://www.thegioididong.com/dtdd/oppo-reno5\" target=\"_blank\">OPPO Reno5</a>&nbsp;l&agrave; sự kết hợp đầy ấn tượng giữa hiệu năng v&agrave; thiết kế, mang đến cho người d&ugrave;ng một chiếc&nbsp;<a title=\"Tham khảo c&aacute;c mẫu điện thoại, smartphone ch&iacute;nh h&atilde;ng, đang kinh doanh tại Thegioididong.com\" type=\"Tham khảo c&aacute;c mẫu điện thoại, smartphone ch&iacute;nh h&atilde;ng, đang kinh doanh tại Thegioididong.com\" href=\"https://www.thegioididong.com/dtdd\" target=\"_blank\">điện thoại</a>&nbsp;t&iacute;ch hợp nhiều c&ocirc;ng nghệ camera, sạc pin h&agrave;ng đầu của OPPO trong một mức gi&aacute; tầm trung.</h3>\r\n<h3>Thiết kế đẹp đậm chất OPPO Reno Series</h3>\r\n<p>C&oacute; thể n&oacute;i OPPO Reno5 l&agrave; mẫu điện thoại ph&ocirc; diễn được đỉnh cao thiết kế v&agrave; c&ocirc;ng nghệ chế t&aacute;c của&nbsp;<a title=\"Tham khảo c&aacute;c smartphone OPPO ch&iacute;nh h&atilde;ng tại Thegioididong.com\" href=\"https://www.thegioididong.com/dtdd-oppo\" target=\"_blank\">OPPO</a>&nbsp;khi bề mặt lưng được phủ lớp Reno Glow với ng&agrave;n tinh thể ph&aacute;t s&aacute;ng si&ecirc;u nhỏ tạo n&ecirc;n hiệu ứng chuyển sắc v&ocirc; c&ugrave;ng h&uacute;t mắt.</p>', 1, 8690000, '5c0821a3c1.jpg'),
(38, 'OPPO Reno5 MARVEL', 7, 5, '<p>Cộng nghệ sạc si&ecirc;u nhanh 50w:</p>\r\n<p>Sở hữ c&ocirc;ng nghệ sạc c&ocirc;ng suất 50w,&nbsp;OPPO Reno5 MARVEL sạc 5 ph&uacute;t, bạn c&oacute; thể xem phim l&ecirc;n đến 3 giờ.</p>\r\n<p>Sạc bảo vệ 5 lớp, hệ thống l&agrave;m m&aacute;t đa chiều.</p>', 1, 9690000, 'b98532ff3c.jpg'),
(39, 'Điện thoại OPPO Reno4 Pro ', 7, 5, '<h3><a title=\"Tham khảo gi&aacute; điện thoại smartphone OPPO ch&iacute;nh h&atilde;ng\" type=\"Tham khảo gi&aacute; điện thoại smartphone OPPO ch&iacute;nh h&atilde;ng\" href=\"https://www.thegioididong.com/dtdd-oppo\" target=\"_blank\">OPPO</a>&nbsp;ch&iacute;nh thức tr&igrave;nh l&agrave;ng chiếc&nbsp;<a title=\"Tham khảo gi&aacute; điện thoại smartphone ch&iacute;nh h&atilde;ng\" type=\"Tham khảo gi&aacute; điện thoại smartphone ch&iacute;nh h&atilde;ng\" href=\"https://www.thegioididong.com/dtdd\" target=\"_blank\">smartphone</a>&nbsp;c&oacute; t&ecirc;n&nbsp;<a title=\"Tham khảo gi&aacute; điện thoại OPPO Reno4 Pro ch&iacute;nh h&atilde;ng\" href=\"https://www.thegioididong.com/dtdd/oppo-reno4-pro\" target=\"_blank\">OPPO Reno4 Pro</a>. M&aacute;y trang bị cấu h&igrave;nh v&ocirc; c&ugrave;ng cao cấp với vi xử l&yacute; chip Snapdragon 720G, bộ 4 camera đến 48 MP ấn tượng, c&ugrave;ng c&ocirc;ng nghệ sạc si&ecirc;u nhanh 65 W nhưng được b&aacute;n với mức gi&aacute; v&ocirc; ưu đ&atilde;i, dễ tiếp cận.</h3>', 1, 10490000, '1ed8c91280.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_review`
--

CREATE TABLE `tbl_review` (
  `review_id` int(11) NOT NULL,
  `reviewName` varchar(255) NOT NULL,
  `review` text NOT NULL,
  `product_id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `sliderId` int(11) NOT NULL,
  `sliderName` varchar(255) NOT NULL,
  `slider_image` varchar(255) NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_slider`
--

INSERT INTO `tbl_slider` (`sliderId`, `sliderName`, `slider_image`, `type`) VALUES
(2, 'Slider2', '308062b6a1.jpg', 1),
(3, 'Slider3', 'ccbcca3ecb.jpg', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_wishlist`
--

CREATE TABLE `tbl_wishlist` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_wishlist`
--

INSERT INTO `tbl_wishlist` (`id`, `customer_id`, `productId`, `productName`, `price`, `image`) VALUES
(2, 2, 23, 'Điện thoại iPhone 12 Pro Max 512GB', 41490000, '17b625bdac.jpg'),
(4, 2, 37, 'Điện thoại OPPO Reno5  ', 8690000, '5c0821a3c1.jpg');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Chỉ mục cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brandId`);

--
-- Chỉ mục cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cartId`);

--
-- Chỉ mục cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`catId`);

--
-- Chỉ mục cho bảng `tbl_compare`
--
ALTER TABLE `tbl_compare`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`productId`);

--
-- Chỉ mục cho bảng `tbl_review`
--
ALTER TABLE `tbl_review`
  ADD PRIMARY KEY (`review_id`);

--
-- Chỉ mục cho bảng `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`sliderId`);

--
-- Chỉ mục cho bảng `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brandId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cartId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `catId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tbl_compare`
--
ALTER TABLE `tbl_compare`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT cho bảng `tbl_review`
--
ALTER TABLE `tbl_review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `sliderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
