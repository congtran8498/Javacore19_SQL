-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 20, 2023 lúc 04:55 PM
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
-- Cơ sở dữ liệu: `hethongtechmaster`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_attendance`
--

CREATE TABLE `tbl_attendance` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `status_id` int(11) DEFAULT 12 COMMENT '12.absent | 13. onlab | 14.online',
  `lesson_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_attendance`
--

INSERT INTO `tbl_attendance` (`id`, `student_id`, `status_id`, `lesson_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 13, 1, '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL),
(2, 2, 14, 1, '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL),
(3, 3, 13, 1, '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL),
(4, 4, 13, 1, '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL),
(5, 5, 14, 1, '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL),
(6, 1, 13, 2, '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL),
(7, 2, 14, 2, '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL),
(8, 3, 13, 2, '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL),
(9, 4, 13, 2, '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL),
(10, 5, 13, 2, '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_classes`
--

CREATE TABLE `tbl_classes` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `teacher_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `status_id` int(11) DEFAULT 5 COMMENT '5.active | 6. done | 7.cancel',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_classes`
--

INSERT INTO `tbl_classes` (`id`, `name`, `img`, `content`, `teacher_id`, `course_id`, `admin_id`, `status_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Java-web căn bản', NULL, NULL, 9, 1, 11, 5, '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL),
(2, 'Java-java core', NULL, NULL, 10, 1, 11, 5, '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL),
(3, 'PHP- web căn bản', NULL, NULL, 9, 2, 11, 5, '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL),
(4, 'Java-database', NULL, NULL, 9, 1, 11, 5, '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL),
(5, 'Java-structure algorithm', NULL, NULL, 10, 1, 11, 5, '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_courses`
--

CREATE TABLE `tbl_courses` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `content` text DEFAULT NULL,
  `admin_id` int(11) NOT NULL,
  `status_id` int(11) DEFAULT 3 COMMENT '3.active | 4. block',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_courses`
--

INSERT INTO `tbl_courses` (`id`, `name`, `content`, `admin_id`, `status_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Fullstack Java Spring Boot', NULL, 11, 3, '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL),
(2, 'Fullstack PHP Laravel', NULL, 11, 3, '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL),
(3, 'Bootcamp Web Front End', NULL, 11, 3, '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL),
(4, 'React Native', NULL, 11, 3, '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL),
(5, 'DevOps', NULL, 11, 3, '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_lessons`
--

CREATE TABLE `tbl_lessons` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `content` text DEFAULT NULL,
  `class_id` int(11) NOT NULL,
  `status_id` int(11) DEFAULT 8 COMMENT '8.active | 9. block',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_lessons`
--

INSERT INTO `tbl_lessons` (`id`, `name`, `content`, `class_id`, `status_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Buổi 1: MySQL: Giới thiệu & cài đặt môi trường', NULL, 4, 8, '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL),
(2, 'Buổi 2: Tạo database và tạo bảng', NULL, 4, 8, '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL),
(3, 'Buổi 1: Mảng và Chuỗi | Array & String', NULL, 5, 8, '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL),
(4, 'Buổi 2: Giới thiệu', NULL, 5, 8, '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL),
(5, 'Buổi 3: Sắp xếp - Sorting (Part 1)', NULL, 5, 8, '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_points`
--

CREATE TABLE `tbl_points` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `point` char(12) DEFAULT 'chưa chấm',
  `student_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `status_id` int(11) DEFAULT 15 COMMENT '15.not yet | 16. collecting | 17.submitted',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_points`
--

INSERT INTO `tbl_points` (`id`, `name`, `content`, `point`, `student_id`, `class_id`, `status_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Tạo database và tạo bảng', '', '8', 1, 4, 15, '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL),
(2, 'Thay đổi dữ liệu với INSERT/DELETE/UPDATE', '', '9', 1, 4, 15, '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL),
(3, 'TQuan hệ giữa các bảng', '', '8', 1, 4, 15, '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL),
(4, 'Tạo database và tạo bảng', '', '7', 2, 4, 15, '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL),
(5, 'Thay đổi dữ liệu với INSERT/DELETE/UPDATE', '', '9', 2, 4, 15, '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL),
(6, 'TQuan hệ giữa các bảng', '', '8', 2, 4, 15, '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL),
(7, 'Tạo database và tạo bảng', '', '6', 3, 4, 15, '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL),
(8, 'Thay đổi dữ liệu với INSERT/DELETE/UPDATE', '', '8', 3, 4, 15, '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL),
(9, 'TQuan hệ giữa các bảng', '', '8', 3, 4, 15, '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL),
(10, 'Tạo database và tạo bảng', '', '8', 4, 4, 15, '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_ratings`
--

CREATE TABLE `tbl_ratings` (
  `id` int(11) NOT NULL,
  `star` int(11) NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `student_id` int(11) NOT NULL,
  `lesson_id` int(11) NOT NULL,
  `status_id` int(11) DEFAULT 18 COMMENT '18.active | 19. block',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_ratings`
--

INSERT INTO `tbl_ratings` (`id`, `star`, `note`, `student_id`, `lesson_id`, `status_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 5, 'Hấp dẫn', 1, 1, 18, '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL),
(2, 4, 'Dễ hiểu', 1, 2, 18, '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL),
(3, 3, 'bình thường', 2, 1, 18, '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL),
(4, 4, 'dễ hiểu', 2, 2, 18, '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL),
(5, 5, 'Hấp dẫn', 3, 1, 18, '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL),
(6, 4, 'Hấp dẫn', 3, 2, 18, '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL),
(7, 4, 'bình thường', 3, 4, 18, '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL),
(8, 5, 'Hấp dẫn', 4, 1, 18, '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL),
(9, 4, 'Hấp dẫn', 4, 2, 18, '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL),
(10, 4, 'dễ hiểu', 4, 3, 18, '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL);

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
(1, 'student', 'ST', '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL),
(2, 'Teacher', 'TC', '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL),
(3, 'admin', 'AD', '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL);

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
(1, 'active', 'user', '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL),
(2, 'block', 'user', '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL),
(3, 'active', 'course', '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL),
(4, 'block', 'course', '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL),
(5, 'active', 'class', '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL),
(6, 'done', 'class', '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL),
(7, 'cancel', 'class', '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL),
(8, 'active', 'lesson', '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL),
(9, 'block', 'lesson', '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL),
(10, 'active', 'student', '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL),
(11, 'block', 'student', '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL),
(12, 'absent', 'attendance', '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL),
(13, 'onlab', 'attendance', '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL),
(14, 'online', 'attendance', '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL),
(15, 'not yet', 'point', '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL),
(16, 'collecting', 'point', '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL),
(17, 'submitted', 'point', '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL),
(18, 'active', 'rating', '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL),
(19, 'block', 'rating', '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_students`
--

CREATE TABLE `tbl_students` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `status_id` int(11) DEFAULT 10 COMMENT '10.active | 11. block',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_students`
--

INSERT INTO `tbl_students` (`id`, `user_id`, `class_id`, `admin_id`, `status_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 4, 11, 10, '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL),
(2, 2, 4, 11, 10, '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL),
(3, 3, 4, 11, 10, '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL),
(4, 4, 4, 11, 10, '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL),
(5, 4, 5, 11, 10, '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL),
(6, 4, 5, 11, 10, '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL),
(7, 5, 5, 11, 10, '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL),
(8, 6, 5, 11, 10, '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL),
(9, 7, 5, 11, 10, '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL),
(10, 8, 5, 11, 10, '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `phone` char(12) NOT NULL,
  `role_id` int(11) NOT NULL COMMENT '1.student | 2.teacher | 3.admin',
  `status_id` int(11) DEFAULT 1 COMMENT '1.active | 2. block',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `name`, `email`, `pass`, `phone`, `role_id`, `status_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Nguyễn Huy Bình', 'binh@gmail.com', '12345', '0123456789', 1, 1, '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL),
(2, 'Ngô Gia Khánh', 'khanh@gmail.com', '12345', '0123456789', 1, 1, '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL),
(3, 'Nguyễn Anh Tuấn', 'atuan@gmail.com', '12345', '0123456789', 1, 1, '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL),
(4, 'Nguyễn Duy Hiếu', 'hieu@gmail.com', '12345', '0123456789', 1, 1, '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL),
(5, 'Vũ Tuấn Hải', 'hai@gmail.com', '12345', '0123456789', 1, 1, '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL),
(6, 'Phan Quang Trường', 'truong@gmail.com', '12345', '0123456789', 1, 1, '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL),
(7, 'Phùng Văn Phú', 'phu@gmail.com', '12345', '0123456789', 1, 1, '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL),
(8, 'Trần Chí Công', 'cong@gmail.com', '12345', '0123456789', 1, 1, '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL),
(9, 'Nguyễn Duy anh', 'danh@gmail.com', '12345', '0123456789', 2, 1, '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL),
(10, 'Phùng Tuấn Anh', 'tanh@gmail.com', '12345', '0123456789', 2, 1, '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL),
(11, 'Lương Hoàng Long', 'long@gmail.com', '12345', '0123456789', 3, 1, '2023-06-20 14:54:19', '2023-06-20 14:54:19', NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_attendance`
--
ALTER TABLE `tbl_attendance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_attendance_student` (`student_id`),
  ADD KEY `fk_attendance_status` (`status_id`),
  ADD KEY `fk_attendance_lesson` (`lesson_id`);

--
-- Chỉ mục cho bảng `tbl_classes`
--
ALTER TABLE `tbl_classes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_class_teacher` (`teacher_id`),
  ADD KEY `fk_class_admin` (`admin_id`),
  ADD KEY `fk_class_course` (`course_id`),
  ADD KEY `fk_class_status` (`status_id`);

--
-- Chỉ mục cho bảng `tbl_courses`
--
ALTER TABLE `tbl_courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_course_admin` (`admin_id`),
  ADD KEY `fk_course_status` (`status_id`);

--
-- Chỉ mục cho bảng `tbl_lessons`
--
ALTER TABLE `tbl_lessons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_lesson_status` (`status_id`);

--
-- Chỉ mục cho bảng `tbl_points`
--
ALTER TABLE `tbl_points`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_point_student` (`student_id`),
  ADD KEY `fk_point_class` (`class_id`),
  ADD KEY `fk_point_status` (`status_id`);

--
-- Chỉ mục cho bảng `tbl_ratings`
--
ALTER TABLE `tbl_ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_rating_student` (`student_id`),
  ADD KEY `fk_rating_lesson` (`lesson_id`),
  ADD KEY `fk_rating_status` (`status_id`);

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
-- Chỉ mục cho bảng `tbl_students`
--
ALTER TABLE `tbl_students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_studen_user` (`user_id`),
  ADD KEY `fk_studen_admin` (`admin_id`),
  ADD KEY `fk_studen_class` (`class_id`),
  ADD KEY `fk_studen_status` (`status_id`);

--
-- Chỉ mục cho bảng `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `fk_user_role` (`role_id`),
  ADD KEY `fk_user_status` (`status_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_attendance`
--
ALTER TABLE `tbl_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `tbl_classes`
--
ALTER TABLE `tbl_classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_courses`
--
ALTER TABLE `tbl_courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_lessons`
--
ALTER TABLE `tbl_lessons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_points`
--
ALTER TABLE `tbl_points`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `tbl_ratings`
--
ALTER TABLE `tbl_ratings`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `tbl_students`
--
ALTER TABLE `tbl_students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tbl_attendance`
--
ALTER TABLE `tbl_attendance`
  ADD CONSTRAINT `fk_attendance_lesson` FOREIGN KEY (`lesson_id`) REFERENCES `tbl_lessons` (`id`),
  ADD CONSTRAINT `fk_attendance_status` FOREIGN KEY (`status_id`) REFERENCES `tbl_status` (`id`),
  ADD CONSTRAINT `fk_attendance_student` FOREIGN KEY (`student_id`) REFERENCES `tbl_students` (`id`);

--
-- Các ràng buộc cho bảng `tbl_classes`
--
ALTER TABLE `tbl_classes`
  ADD CONSTRAINT `fk_class_admin` FOREIGN KEY (`admin_id`) REFERENCES `tbl_users` (`id`),
  ADD CONSTRAINT `fk_class_course` FOREIGN KEY (`course_id`) REFERENCES `tbl_courses` (`id`),
  ADD CONSTRAINT `fk_class_status` FOREIGN KEY (`status_id`) REFERENCES `tbl_status` (`id`),
  ADD CONSTRAINT `fk_class_teacher` FOREIGN KEY (`teacher_id`) REFERENCES `tbl_users` (`id`);

--
-- Các ràng buộc cho bảng `tbl_courses`
--
ALTER TABLE `tbl_courses`
  ADD CONSTRAINT `fk_course_admin` FOREIGN KEY (`admin_id`) REFERENCES `tbl_users` (`id`),
  ADD CONSTRAINT `fk_course_status` FOREIGN KEY (`status_id`) REFERENCES `tbl_status` (`id`);

--
-- Các ràng buộc cho bảng `tbl_lessons`
--
ALTER TABLE `tbl_lessons`
  ADD CONSTRAINT `fk_lesson_status` FOREIGN KEY (`status_id`) REFERENCES `tbl_status` (`id`);

--
-- Các ràng buộc cho bảng `tbl_points`
--
ALTER TABLE `tbl_points`
  ADD CONSTRAINT `fk_point_class` FOREIGN KEY (`class_id`) REFERENCES `tbl_classes` (`id`),
  ADD CONSTRAINT `fk_point_status` FOREIGN KEY (`status_id`) REFERENCES `tbl_status` (`id`),
  ADD CONSTRAINT `fk_point_student` FOREIGN KEY (`student_id`) REFERENCES `tbl_students` (`id`);

--
-- Các ràng buộc cho bảng `tbl_ratings`
--
ALTER TABLE `tbl_ratings`
  ADD CONSTRAINT `fk_rating_lesson` FOREIGN KEY (`lesson_id`) REFERENCES `tbl_lessons` (`id`),
  ADD CONSTRAINT `fk_rating_status` FOREIGN KEY (`status_id`) REFERENCES `tbl_status` (`id`),
  ADD CONSTRAINT `fk_rating_student` FOREIGN KEY (`student_id`) REFERENCES `tbl_students` (`id`);

--
-- Các ràng buộc cho bảng `tbl_students`
--
ALTER TABLE `tbl_students`
  ADD CONSTRAINT `fk_studen_admin` FOREIGN KEY (`admin_id`) REFERENCES `tbl_users` (`id`),
  ADD CONSTRAINT `fk_studen_class` FOREIGN KEY (`class_id`) REFERENCES `tbl_classes` (`id`),
  ADD CONSTRAINT `fk_studen_status` FOREIGN KEY (`status_id`) REFERENCES `tbl_status` (`id`),
  ADD CONSTRAINT `fk_studen_user` FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`id`);

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
