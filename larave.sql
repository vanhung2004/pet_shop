-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 20, 2024 lúc 02:05 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `larave`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiet_donhang`
--

CREATE TABLE `chitiet_donhang` (
  `id_ctdonhang` int(10) UNSIGNED NOT NULL,
  `tensp` varchar(100) NOT NULL,
  `soluong` tinyint(4) DEFAULT NULL,
  `giamgia` int(11) DEFAULT NULL,
  `giatien` int(11) DEFAULT NULL,
  `giakhuyenmai` int(11) DEFAULT NULL,
  `id_sanpham` int(11) NOT NULL,
  `id_dathang` int(10) UNSIGNED NOT NULL,
  `id_kh` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitiet_donhang`
--

INSERT INTO `chitiet_donhang` (`id_ctdonhang`, `tensp`, `soluong`, `giamgia`, `giatien`, `giakhuyenmai`, `id_sanpham`, `id_dathang`, `id_kh`) VALUES
(1, 'Thức Ăn Cho Chó Trưởng Thành Giống Lớn – Eminent Adult Large Breed – 500g', 1, 0, 72000, 72000, 1, 1, 1),
(2, 'Thức Ăn Cho Chó Trưởng Thành Giống Lớn – Eminent Adult Large Breed – 500g', 1, 0, 72000, 72000, 1, 2, 1),
(3, 'Chó chihuahua', 1, 0, 20000, 20000, 5, 3, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id_danhmuc` int(11) NOT NULL,
  `ten_danhmuc` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`id_danhmuc`, `ten_danhmuc`) VALUES
(1, 'Sản phẩm cho chó'),
(2, 'Sản phẩm cho mèo'),
(3, 'tất cả sản phẩm'),
(4, 'con giống'),
(5, 'nổi bật'),
(6, 'chó giống'),
(7, 'mèo giống');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dathang`
--

CREATE TABLE `dathang` (
  `id_dathang` int(10) UNSIGNED NOT NULL,
  `ngaydathang` datetime DEFAULT current_timestamp(),
  `ngaygiaohang` datetime DEFAULT current_timestamp(),
  `tongtien` int(11) NOT NULL,
  `phuongthucthanhtoan` varchar(10) NOT NULL,
  `diachigiaohang` varchar(100) DEFAULT NULL,
  `trangthai` varchar(100) DEFAULT NULL,
  `id_kh` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `dathang`
--

INSERT INTO `dathang` (`id_dathang`, `ngaydathang`, `ngaygiaohang`, `tongtien`, `phuongthucthanhtoan`, `diachigiaohang`, `trangthai`, `id_kh`) VALUES
(3, '2024-07-20 11:39:09', NULL, 20000, 'COD', NULL, 'đang xử lý', 2),
(4, '2024-07-20 11:39:17', NULL, 20000, 'VNPAY', NULL, 'đang xử lý', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `id_kh` int(11) NOT NULL,
  `hoten` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `diachi` varchar(255) DEFAULT NULL,
  `sdt` int(11) DEFAULT NULL,
  `id_phanquyen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`id_kh`, `hoten`, `email`, `password`, `diachi`, `sdt`, `id_phanquyen`) VALUES
(2, 'admin', 'admin@gmail.com', '$2y$12$JjPydOKxMwUUQWS2bG5ZJOTO7m0gwYnyF4umA4OMU.NtDzvBoMbim', 'Đống Đa, Hà nội', 379487352, 1),
(3, 'loki', 'loki@gmail.com', '$2y$12$Iy7n9LTecGXHi3Hqn4LOjOiPTvctoODrPHMJlF0stjTieXul7ruf.', '123', 123, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2024_04_21_090007_create_chitiet_donhang_table', 1),
(3, '2024_04_21_090007_create_danhmuc_table', 1),
(4, '2024_04_21_090007_create_dathang_table', 1),
(5, '2024_04_21_090007_create_phanquyen_table', 1),
(6, '2024_04_21_090007_create_sanpham_table', 1),
(7, '2024_04_21_090010_add_foreign_keys_to_sanpham_table', 1),
(8, '2024_04_21_092420_add_foreign_key_to_chitiet_donhang_table', 1),
(9, '2024_04_22_080854_create_khachhang_table', 1),
(10, '2024_04_22_080855_add_foreign_keys_to_khachhang_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phanquyen`
--

CREATE TABLE `phanquyen` (
  `id_phanquyen` int(11) NOT NULL,
  `tenquyen` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `phanquyen`
--

INSERT INTO `phanquyen` (`id_phanquyen`, `tenquyen`) VALUES
(1, 'admin'),
(2, 'user'),
(3, 'staff');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id_sanpham` int(11) NOT NULL,
  `tensp` varchar(100) DEFAULT NULL,
  `anhsp` varchar(255) DEFAULT NULL,
  `giasp` int(11) DEFAULT NULL,
  `mota` text DEFAULT NULL,
  `giamgia` int(11) DEFAULT NULL,
  `giakhuyenmai` int(11) DEFAULT NULL,
  `soluong` int(11) DEFAULT NULL,
  `id_danhmuc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id_sanpham`, `tensp`, `anhsp`, `giasp`, `mota`, `giamgia`, `giakhuyenmai`, `soluong`, `id_danhmuc`) VALUES
(1, 'Thức Ăn Cho Chó Trưởng Thành Giống Lớn – Eminent Adult Large Breed – 500g', 'frontend/upload/Eminent.jpg', 72000, 'abc', 0, 72000, 2, 1),
(2, 'Pate Cho Mèo – Pate Fit4 Cats -Cá Ngừ Và Thanh Cua 160g', 'frontend/upload/dohop.jpg', 20000, NULL, 0, 72000, 5, 2),
(3, 'Chó Bull', 'frontend/upload/Chó-Bully.jpg', 72000, NULL, 0, 72000, 5, 6),
(4, 'Cheems', 'frontend/upload/meme-cheems-1.png', 20000, NULL, 0, 72000, 2, 7),
(5, 'Chó chihuahua', 'frontend/upload/Chó-chi-hua-hua.jpg', 20000, NULL, 0, 20000, 3, 6),
(6, 'Bánh Gặm Cho Chó – Smoked Beefy Dental Bone -14g', 'frontend/upload/dochocho.jpg', 20000, NULL, 0, 20000, 6, 1),
(7, 'Perfect Cat', 'frontend/upload/iyTgHqbbL9aDJT1DemyrVUFKFVTW26JfHKPpG16W.jpg', 2222, 'no', 0, 2222, 2, 7);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitiet_donhang`
--
ALTER TABLE `chitiet_donhang`
  ADD PRIMARY KEY (`id_ctdonhang`),
  ADD KEY `chitiet_donhang_id_dathang_foreign` (`id_dathang`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id_danhmuc`);

--
-- Chỉ mục cho bảng `dathang`
--
ALTER TABLE `dathang`
  ADD PRIMARY KEY (`id_dathang`),
  ADD KEY `dathang_id_dathang_index` (`id_dathang`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`id_kh`),
  ADD KEY `fk_dk` (`id_phanquyen`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `phanquyen`
--
ALTER TABLE `phanquyen`
  ADD PRIMARY KEY (`id_phanquyen`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id_sanpham`),
  ADD KEY `fk_customer` (`id_danhmuc`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chitiet_donhang`
--
ALTER TABLE `chitiet_donhang`
  MODIFY `id_ctdonhang` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id_danhmuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `dathang`
--
ALTER TABLE `dathang`
  MODIFY `id_dathang` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `id_kh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id_sanpham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitiet_donhang`
--
ALTER TABLE `chitiet_donhang`
  ADD CONSTRAINT `chitiet_donhang_id_dathang_foreign` FOREIGN KEY (`id_dathang`) REFERENCES `dathang` (`id_dathang`);

--
-- Các ràng buộc cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD CONSTRAINT `fk_dk` FOREIGN KEY (`id_phanquyen`) REFERENCES `phanquyen` (`id_phanquyen`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `fk_customer` FOREIGN KEY (`id_danhmuc`) REFERENCES `danhmuc` (`id_danhmuc`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
