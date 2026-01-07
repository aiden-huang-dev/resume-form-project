-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1:3306
-- 產生時間： 2025-11-27 12:00:37
-- 伺服器版本： 8.4.7
-- PHP 版本： 8.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `resume_db`
--

-- --------------------------------------------------------

--
-- 資料表結構 `user_info`
--

DROP TABLE IF EXISTS `user_info`;
CREATE TABLE IF NOT EXISTS `user_info` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主鍵（AI 自動遞增）',
  `id_number` varchar(20) COLLATE utf8mb4_general_ci NOT NULL COMMENT '身分證',
  `birth_place` varchar(50) COLLATE utf8mb4_general_ci NOT NULL COMMENT '出生地',
  `birthday` varchar(20) COLLATE utf8mb4_general_ci NOT NULL COMMENT '生日',
  `blood_type` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '血型',
  `contact_zip` int NOT NULL COMMENT '通訊郵遞區號',
  `contact_addr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '通訊地址',
  `home_zip` int NOT NULL COMMENT '戶籍郵遞區號',
  `home_addr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '戶籍地址',
  `phone_home` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '家裡電話',
  `phone_mobile` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '個人手機',
  `email` varchar(100) COLLATE utf8mb4_general_ci NOT NULL COMMENT 'email',
  `military_status` varchar(6) COLLATE utf8mb4_general_ci NOT NULL COMMENT '服役狀況',
  `talent` text COLLATE utf8mb4_general_ci NOT NULL COMMENT '特殊才能',
  `interest` text COLLATE utf8mb4_general_ci NOT NULL COMMENT '休閒興趣',
  `self_past` varchar(255) COLLATE utf8mb4_general_ci NOT NULL COMMENT '一句話形容過去自己',
  `self_now` varchar(255) COLLATE utf8mb4_general_ci NOT NULL COMMENT '一句話形容現在自己',
  `self_future` varchar(255) COLLATE utf8mb4_general_ci NOT NULL COMMENT '一句話形容未來自己',
  `self_adj` varchar(255) COLLATE utf8mb4_general_ci NOT NULL COMMENT '一個形容詞描述自己',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `user_info`
--


