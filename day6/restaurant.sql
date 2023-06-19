-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 19, 2023 lúc 06:16 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `restaurant`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_categories`
--

CREATE TABLE `tbl_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status_id` int(11) DEFAULT 5 COMMENT '5.active | 6.block',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_categories`
--

INSERT INTO `tbl_categories` (`id`, `name`, `description`, `image`, `status_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Lẩu', NULL, NULL, 5, '2023-06-19 16:04:06', '2023-06-19 16:04:06', NULL),
(2, 'Nướng', NULL, NULL, 5, '2023-06-19 16:04:06', '2023-06-19 16:04:06', NULL),
(3, 'Buffet', NULL, NULL, 5, '2023-06-19 16:04:06', '2023-06-19 16:04:06', NULL),
(4, 'Hải sản', NULL, NULL, 5, '2023-06-19 16:04:06', '2023-06-19 16:04:06', NULL),
(5, 'Quán nhậu', NULL, NULL, 5, '2023-06-19 16:04:06', '2023-06-19 16:04:06', NULL),
(6, 'Món Nhật', NULL, NULL, 5, '2023-06-19 16:04:06', '2023-06-19 16:04:06', NULL),
(7, 'Món Hàn', NULL, NULL, 5, '2023-06-19 16:04:06', '2023-06-19 16:04:06', NULL),
(8, 'Món chay', NULL, NULL, 5, '2023-06-19 16:04:06', '2023-06-19 16:04:06', NULL),
(9, 'Món Thái', NULL, NULL, 5, '2023-06-19 16:04:06', '2023-06-19 16:04:06', NULL),
(10, 'Món Trung', NULL, NULL, 5, '2023-06-19 16:04:06', '2023-06-19 16:04:06', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_chats`
--

CREATE TABLE `tbl_chats` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `content` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_chats`
--

INSERT INTO `tbl_chats` (`id`, `admin_id`, `user_id`, `content`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 10, 1, 'tôi có thể đặt bàn như nào', NULL, '2023-06-19 16:04:07', '2023-06-19 16:04:07', NULL),
(2, 10, 4, 'tôi có thể đăng bài như nào', NULL, '2023-06-19 16:04:07', '2023-06-19 16:04:07', NULL),
(3, 10, 1, NULL, NULL, '2023-06-19 16:04:07', '2023-06-19 16:04:07', NULL),
(4, 10, 5, NULL, NULL, '2023-06-19 16:04:07', '2023-06-19 16:04:07', NULL),
(5, 10, 2, 'tôi không thể đặt đc bàn', NULL, '2023-06-19 16:04:07', '2023-06-19 16:04:07', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_postdetails`
--

CREATE TABLE `tbl_postdetails` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_postdetails`
--

INSERT INTO `tbl_postdetails` (`id`, `post_id`, `product_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 3, '2023-06-19 16:04:07', '2023-06-19 16:04:07', NULL),
(2, 1, 4, '2023-06-19 16:04:07', '2023-06-19 16:04:07', NULL),
(3, 2, 2, '2023-06-19 16:04:07', '2023-06-19 16:04:07', NULL),
(4, 4, 6, '2023-06-19 16:04:07', '2023-06-19 16:04:07', NULL),
(5, 5, 7, '2023-06-19 16:04:07', '2023-06-19 16:04:07', NULL),
(6, 6, 5, '2023-06-19 16:04:07', '2023-06-19 16:04:07', NULL),
(7, 2, 1, '2023-06-19 16:04:07', '2023-06-19 16:04:07', NULL),
(8, 3, 1, '2023-06-19 16:04:07', '2023-06-19 16:04:07', NULL),
(9, 3, 2, '2023-06-19 16:04:07', '2023-06-19 16:04:07', NULL),
(10, 4, 1, '2023-06-19 16:04:07', '2023-06-19 16:04:07', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_posts`
--

CREATE TABLE `tbl_posts` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `restaurant_id` int(11) NOT NULL,
  `status_id` int(11) DEFAULT 9 COMMENT '9.active | 10.block',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_posts`
--

INSERT INTO `tbl_posts` (`id`, `name`, `description`, `content`, `image`, `category_id`, `restaurant_id`, `status_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Shabu Buffet', 'Giờ đón khách : 09h00-14h30 & 17h00-23h00', '- Quý khách vui lòng đặt chỗ trước ít nhất 30 phút để được phục vụ tốt nhất- Bàn đặt của Quý khách được giữ tối đa 30 Phút- Nhà hàng nhận từ 2 khách trở lên', NULL, 3, 4, 9, '2023-06-19 16:04:06', '2023-06-19 16:04:06', NULL),
(2, 'Nhắng Nướng', 'Giờ đón khách : 10h30-13h30 & 17h00-22h00', '- Quý khách vui lòng đặt chỗ trước ít nhất 30 phút để được phục vụ tốt nhất- Bàn đặt của Quý khách được giữ tối đa 30 Phút- Nhà hàng nhận từ 2 khách trở lên', NULL, 2, 5, 9, '2023-06-19 16:04:06', '2023-06-19 16:04:06', NULL),
(3, 'Lẩu Phan', '11h00-14h00 & 18h00-23h00', '- Quý khách vui lòng đặt chỗ trước ít nhất 30 phút để được phục vụ tốt nhất- Bàn đặt của Quý khách được giữ tối đa 30 Phút- Nhà hàng nhận từ 2 khách trở lên', NULL, 1, 6, 9, '2023-06-19 16:04:06', '2023-06-19 16:04:06', NULL),
(4, 'Hải Sản Biển Đông', 'Giờ đón khách : 09h00-14h30 & 17h00-23h00', '- Quý khách vui lòng đặt chỗ trước ít nhất 30 phút để được phục vụ tốt nhất- Bàn đặt của Quý khách được giữ tối đa 30 Phút- Nhà hàng nhận từ 2 khách trở lên', NULL, 4, 7, 9, '2023-06-19 16:04:06', '2023-06-19 16:04:06', NULL),
(5, 'Ẩm Thực Tây Bắc', 'Giờ đón khách : 09h00-14h30 & 17h00-23h00', '- Quý khách vui lòng đặt chỗ trước ít nhất 30 phút để được phục vụ tốt nhất- Bàn đặt của Quý khách được giữ tối đa 30 Phút- Nhà hàng nhận từ 2 khách trở lên', NULL, 5, 8, 9, '2023-06-19 16:04:06', '2023-06-19 16:04:06', NULL),
(6, 'iSushi', 'Giờ đón khách : 09h00-14h30 & 17h00-23h00', '- Quý khách vui lòng đặt chỗ trước ít nhất 30 phút để được phục vụ tốt nhất- Bàn đặt của Quý khách được giữ tối đa 30 Phút- Nhà hàng nhận từ 2 khách trở lên', NULL, 7, 9, 9, '2023-06-19 16:04:06', '2023-06-19 16:04:06', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_products`
--

CREATE TABLE `tbl_products` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `price` float NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status_id` int(11) DEFAULT 7 COMMENT '7.active | 8.block',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_products`
--

INSERT INTO `tbl_products` (`id`, `name`, `description`, `price`, `image`, `status_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Set lẩu', NULL, 299000, NULL, 7, '2023-06-19 16:04:06', '2023-06-19 16:04:06', NULL),
(2, 'Set nướng', NULL, 299000, NULL, 7, '2023-06-19 16:04:06', '2023-06-19 16:04:06', NULL),
(3, 'Buffet lẩu', NULL, 189000, NULL, 7, '2023-06-19 16:04:06', '2023-06-19 16:04:06', NULL),
(4, 'Buffet nướng', NULL, 189000, NULL, 7, '2023-06-19 16:04:06', '2023-06-19 16:04:06', NULL),
(5, 'Set Shushi', NULL, 500000, NULL, 7, '2023-06-19 16:04:06', '2023-06-19 16:04:06', NULL),
(6, 'Combo Tôm Hùm', NULL, 4999000, NULL, 7, '2023-06-19 16:04:06', '2023-06-19 16:04:06', NULL),
(7, 'Gà đồi', NULL, 600000, NULL, 7, '2023-06-19 16:04:06', '2023-06-19 16:04:06', NULL),
(8, 'Buffet chay', NULL, 289000, NULL, 7, '2023-06-19 16:04:06', '2023-06-19 16:04:06', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_ratings`
--

CREATE TABLE `tbl_ratings` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `restaurant_id` int(11) NOT NULL,
  `star` int(11) NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `status_id` int(11) DEFAULT 3 COMMENT '3.active | 4.block',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_ratings`
--

INSERT INTO `tbl_ratings` (`id`, `customer_id`, `restaurant_id`, `star`, `note`, `status_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 4, 5, 'Đồ ăn ngon dịch vụ tốt', 3, '2023-06-19 16:04:06', '2023-06-19 16:04:06', NULL),
(2, 2, 5, 4, 'Đồ ăn ngon dịch vụ tốt', 3, '2023-06-19 16:04:06', '2023-06-19 16:04:06', NULL),
(3, 3, 6, 3, 'dịch vụ tốt', 3, '2023-06-19 16:04:06', '2023-06-19 16:04:06', NULL),
(4, 1, 7, 5, 'Đồ ăn ngon', 3, '2023-06-19 16:04:06', '2023-06-19 16:04:06', NULL),
(5, 2, 8, 5, 'Đồ ăn ngon dịch vụ tốt', 3, '2023-06-19 16:04:06', '2023-06-19 16:04:06', NULL),
(6, 1, 9, 5, 'Đồ ăn ngon dịch vụ tốt', 3, '2023-06-19 16:04:06', '2023-06-19 16:04:06', NULL),
(7, 1, 6, 3, 'đồ ăn tạm', 3, '2023-06-19 16:04:06', '2023-06-19 16:04:06', NULL),
(8, 2, 4, 5, 'Đồ ăn ngon dịch vụ tốt', 3, '2023-06-19 16:04:06', '2023-06-19 16:04:06', NULL),
(9, 3, 6, 5, 'Đồ ăn ngon dịch vụ tốt', 3, '2023-06-19 16:04:06', '2023-06-19 16:04:06', NULL),
(10, 2, 8, 5, 'Đồ ăn ngon dịch vụ tốt', 3, '2023-06-19 16:04:06', '2023-06-19 16:04:06', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_reservations`
--

CREATE TABLE `tbl_reservations` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `restaurant_id` int(11) NOT NULL,
  `numberOfPerson` int(11) NOT NULL,
  `scheduledTime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `note` varchar(255) DEFAULT NULL,
  `status_id` int(11) DEFAULT 11 COMMENT '11.active | 12.done | 13.cancel',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_reservations`
--

INSERT INTO `tbl_reservations` (`id`, `customer_id`, `restaurant_id`, `numberOfPerson`, `scheduledTime`, `note`, `status_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 4, 3, '2023-06-20 15:43:12', NULL, 11, '2023-06-19 16:04:07', '2023-06-19 16:04:07', NULL),
(2, 2, 4, 3, '2023-06-19 15:43:12', NULL, 11, '2023-06-19 16:04:07', '2023-06-19 16:04:07', NULL),
(3, 1, 5, 4, '2023-06-17 15:43:12', NULL, 11, '2023-06-19 16:04:07', '2023-06-19 16:04:07', NULL),
(4, 3, 6, 2, '2023-06-10 15:43:12', NULL, 11, '2023-06-19 16:04:07', '2023-06-19 16:04:07', NULL),
(5, 1, 7, 4, '2023-06-22 15:43:12', NULL, 11, '2023-06-19 16:04:07', '2023-06-19 16:04:07', NULL),
(6, 2, 8, 3, '2023-06-12 15:43:12', NULL, 11, '2023-06-19 16:04:07', '2023-06-19 16:04:07', NULL),
(7, 2, 9, 2, '2023-06-13 15:43:12', NULL, 11, '2023-06-19 16:04:07', '2023-06-19 16:04:07', NULL),
(8, 3, 4, 3, '2023-06-20 15:43:12', NULL, 11, '2023-06-19 16:04:07', '2023-06-19 16:04:07', NULL),
(9, 3, 8, 4, '2023-06-11 15:43:12', NULL, 11, '2023-06-19 16:04:07', '2023-06-19 16:04:07', NULL),
(10, 3, 9, 3, '2023-06-22 15:43:12', NULL, 11, '2023-06-19 16:04:07', '2023-06-19 16:04:07', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_roles`
--

CREATE TABLE `tbl_roles` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `keyword` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_roles`
--

INSERT INTO `tbl_roles` (`id`, `name`, `keyword`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'khách hàng', 'KH', '2023-06-19 16:04:06', '2023-06-19 16:04:06', NULL),
(2, 'nhà hàng', 'NH', '2023-06-19 16:04:06', '2023-06-19 16:04:06', NULL),
(3, 'quản trị viên', 'QTV', '2023-06-19 16:04:06', '2023-06-19 16:04:06', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_status`
--

CREATE TABLE `tbl_status` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `keyword` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_status`
--

INSERT INTO `tbl_status` (`id`, `name`, `keyword`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'active', 'user', '2023-06-19 16:04:06', '2023-06-19 16:04:06', NULL),
(2, 'block', 'user', '2023-06-19 16:04:06', '2023-06-19 16:04:06', NULL),
(3, 'active', 'rating', '2023-06-19 16:04:06', '2023-06-19 16:04:06', NULL),
(4, 'block', 'rating', '2023-06-19 16:04:06', '2023-06-19 16:04:06', NULL),
(5, 'active', 'category', '2023-06-19 16:04:06', '2023-06-19 16:04:06', NULL),
(6, 'block', 'category', '2023-06-19 16:04:06', '2023-06-19 16:04:06', NULL),
(7, 'active', 'product', '2023-06-19 16:04:06', '2023-06-19 16:04:06', NULL),
(8, 'block', 'product', '2023-06-19 16:04:06', '2023-06-19 16:04:06', NULL),
(9, 'active', 'post', '2023-06-19 16:04:06', '2023-06-19 16:04:06', NULL),
(10, 'block', 'post', '2023-06-19 16:04:06', '2023-06-19 16:04:06', NULL),
(11, 'active', 'reservation', '2023-06-19 16:04:06', '2023-06-19 16:04:06', NULL),
(12, 'done', 'reservation', '2023-06-19 16:04:06', '2023-06-19 16:04:06', NULL),
(13, 'cancel', 'reservation', '2023-06-19 16:04:06', '2023-06-19 16:04:06', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role_id` int(11) NOT NULL COMMENT '1.khach hang | 2.nha hang | 3. quan tri vien',
  `pass` varchar(50) NOT NULL,
  `phone` char(12) NOT NULL,
  `gender` int(11) NOT NULL COMMENT '0.nu | 1.nam | 2.khac',
  `birthDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `cccd` char(12) NOT NULL,
  `address` varchar(255) NOT NULL,
  `status_id` int(11) DEFAULT 1 COMMENT '1.active | 2.block',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `name`, `email`, `role_id`, `pass`, `phone`, `gender`, `birthDate`, `cccd`, `address`, `status_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Phùng Văn Phú', 'phu@gmail.com', 1, '12345', '0123456789', 1, '2023-06-19 16:04:06', '098765432123', 'Ha Noi', 1, '2023-06-19 16:04:06', '2023-06-19 16:04:06', NULL),
(2, 'Ngô Gia Khánh', 'khanh@gmail.com', 1, '12345', '0123456789', 1, '2023-06-19 16:04:06', '088765432123', 'Ha Noi', 1, '2023-06-19 16:04:06', '2023-06-19 16:04:06', NULL),
(3, 'Nguyễn Duy Hiếu', 'hieu@gmail.com', 1, '12345', '0123456789', 1, '2023-06-19 16:04:06', '078765432123', 'Ha Noi', 1, '2023-06-19 16:04:06', '2023-06-19 16:04:06', NULL),
(4, 'Trần Thị Linh', 'linh@gmail.com', 2, '12345', '0123456789', 0, '2023-06-19 16:04:06', '068765432123', 'Ham Nghi', 1, '2023-06-19 16:04:06', '2023-06-19 16:04:06', NULL),
(5, 'Trần Chí Công', 'cong@gmail.com', 2, '12345', '0123456789', 1, '2023-06-19 16:04:06', '058765432123', 'To Huu', 1, '2023-06-19 16:04:06', '2023-06-19 16:04:06', NULL),
(6, 'Phùng Tuấn Anh', 'tanh@gmail.com', 2, '12345', '0123456789', 1, '2023-06-19 16:04:06', '048765432123', 'Nguyen Dinh Chieu', 1, '2023-06-19 16:04:06', '2023-06-19 16:04:06', NULL),
(7, 'Vũ Tuấn Hải', 'hai@gmail.com', 2, '12345', '0123456789', 1, '2023-06-19 16:04:06', '038765432123', 'Pham Ngoc Thach', 1, '2023-06-19 16:04:06', '2023-06-19 16:04:06', NULL),
(8, 'Nguyễn Thị Liên', 'lien@gmail.com', 2, '12345', '0123456789', 1, '2023-06-19 16:04:06', '028765432123', 'Trang Tien', 1, '2023-06-19 16:04:06', '2023-06-19 16:04:06', NULL),
(9, 'Nguyễn Huy Bình', 'binh@gmail.com', 2, '12345', '0123456789', 1, '2023-06-19 16:04:06', '018765432123', 'Thai Ha', 1, '2023-06-19 16:04:06', '2023-06-19 16:04:06', NULL),
(10, 'Phan Quang Trường', 'truong@gmail.com', 3, '12345', '0123456789', 1, '2023-06-19 16:04:06', '098725432123', 'Ha Noi', 1, '2023-06-19 16:04:06', '2023-06-19 16:04:06', NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_categories`
--
ALTER TABLE `tbl_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_category_status` (`status_id`);

--
-- Chỉ mục cho bảng `tbl_chats`
--
ALTER TABLE `tbl_chats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_chat_admin` (`admin_id`),
  ADD KEY `fk_chat_user` (`user_id`);

--
-- Chỉ mục cho bảng `tbl_postdetails`
--
ALTER TABLE `tbl_postdetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_postDetail_post` (`post_id`),
  ADD KEY `fk_product_post` (`product_id`);

--
-- Chỉ mục cho bảng `tbl_posts`
--
ALTER TABLE `tbl_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_post_category` (`category_id`),
  ADD KEY `fk_post_restaurant` (`restaurant_id`),
  ADD KEY `fk_post_status` (`status_id`);

--
-- Chỉ mục cho bảng `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_product_status` (`status_id`);

--
-- Chỉ mục cho bảng `tbl_ratings`
--
ALTER TABLE `tbl_ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_rating_customer` (`customer_id`),
  ADD KEY `fk_rating_restaurant` (`restaurant_id`),
  ADD KEY `fk_rating_status` (`status_id`);

--
-- Chỉ mục cho bảng `tbl_reservations`
--
ALTER TABLE `tbl_reservations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_reservation_customer` (`customer_id`),
  ADD KEY `fk_reservation_restaurant` (`restaurant_id`),
  ADD KEY `fk_reservation_status` (`status_id`);

--
-- Chỉ mục cho bảng `tbl_roles`
--
ALTER TABLE `tbl_roles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_status`
--
ALTER TABLE `tbl_status`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `cccd` (`cccd`),
  ADD KEY `fk_user_role` (`role_id`),
  ADD KEY `fk_user_status` (`status_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_categories`
--
ALTER TABLE `tbl_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `tbl_chats`
--
ALTER TABLE `tbl_chats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_postdetails`
--
ALTER TABLE `tbl_postdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `tbl_posts`
--
ALTER TABLE `tbl_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tbl_ratings`
--
ALTER TABLE `tbl_ratings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `tbl_reservations`
--
ALTER TABLE `tbl_reservations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `tbl_roles`
--
ALTER TABLE `tbl_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tbl_status`
--
ALTER TABLE `tbl_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tbl_categories`
--
ALTER TABLE `tbl_categories`
  ADD CONSTRAINT `fk_category_status` FOREIGN KEY (`status_id`) REFERENCES `tbl_status` (`id`);

--
-- Các ràng buộc cho bảng `tbl_chats`
--
ALTER TABLE `tbl_chats`
  ADD CONSTRAINT `fk_chat_admin` FOREIGN KEY (`admin_id`) REFERENCES `tbl_users` (`id`),
  ADD CONSTRAINT `fk_chat_user` FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`id`);

--
-- Các ràng buộc cho bảng `tbl_postdetails`
--
ALTER TABLE `tbl_postdetails`
  ADD CONSTRAINT `fk_postDetail_post` FOREIGN KEY (`post_id`) REFERENCES `tbl_posts` (`id`),
  ADD CONSTRAINT `fk_product_post` FOREIGN KEY (`product_id`) REFERENCES `tbl_products` (`id`);

--
-- Các ràng buộc cho bảng `tbl_posts`
--
ALTER TABLE `tbl_posts`
  ADD CONSTRAINT `fk_post_category` FOREIGN KEY (`category_id`) REFERENCES `tbl_categories` (`id`),
  ADD CONSTRAINT `fk_post_restaurant` FOREIGN KEY (`restaurant_id`) REFERENCES `tbl_users` (`id`),
  ADD CONSTRAINT `fk_post_status` FOREIGN KEY (`status_id`) REFERENCES `tbl_status` (`id`);

--
-- Các ràng buộc cho bảng `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD CONSTRAINT `fk_product_status` FOREIGN KEY (`status_id`) REFERENCES `tbl_status` (`id`);

--
-- Các ràng buộc cho bảng `tbl_ratings`
--
ALTER TABLE `tbl_ratings`
  ADD CONSTRAINT `fk_rating_customer` FOREIGN KEY (`customer_id`) REFERENCES `tbl_users` (`id`),
  ADD CONSTRAINT `fk_rating_restaurant` FOREIGN KEY (`restaurant_id`) REFERENCES `tbl_users` (`id`),
  ADD CONSTRAINT `fk_rating_status` FOREIGN KEY (`status_id`) REFERENCES `tbl_status` (`id`);

--
-- Các ràng buộc cho bảng `tbl_reservations`
--
ALTER TABLE `tbl_reservations`
  ADD CONSTRAINT `fk_reservation_customer` FOREIGN KEY (`customer_id`) REFERENCES `tbl_users` (`id`),
  ADD CONSTRAINT `fk_reservation_restaurant` FOREIGN KEY (`restaurant_id`) REFERENCES `tbl_users` (`id`),
  ADD CONSTRAINT `fk_reservation_status` FOREIGN KEY (`status_id`) REFERENCES `tbl_status` (`id`);

--
-- Các ràng buộc cho bảng `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD CONSTRAINT `fk_user_role` FOREIGN KEY (`role_id`) REFERENCES `tbl_roles` (`id`),
  ADD CONSTRAINT `fk_user_status` FOREIGN KEY (`status_id`) REFERENCES `tbl_status` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
