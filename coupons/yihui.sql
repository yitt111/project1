-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2025-06-04 08:14:39
-- 伺服器版本： 10.4.32-MariaDB
-- PHP 版本： 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `my_db`
--

-- --------------------------------------------------------

--
-- 資料表結構 `msgs`
--

CREATE TABLE `msgs` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `content` text NOT NULL,
  `img` varchar(50) DEFAULT NULL,
  `createTime` datetime NOT NULL DEFAULT current_timestamp(),
  `update_at` datetime DEFAULT NULL,
  `end_at` datetime DEFAULT NULL,
  `is_valid` tinyint(4) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `msgs`
--

INSERT INTO `msgs` (`id`, `name`, `category_id`, `content`, `img`, `createTime`, `update_at`, `end_at`, `is_valid`) VALUES
(1, 'BEN', 1, '第一則貼文哈哈', '1748491005.png', '2025-05-23 16:08:50', '2025-05-29 11:56:45', NULL, 1),
(2, 'Mary', 2, '我想吃牛肉河粉', NULL, '2025-05-23 16:11:25', '2025-05-28 10:59:27', NULL, 0),
(3, 'BEN', 1, '第一則貼文哈哈', NULL, '2025-05-23 16:14:21', '2025-05-28 10:22:09', NULL, 1),
(4, 'ANN', 1, '挖', NULL, '2025-05-23 16:23:51', '2025-05-28 10:32:22', NULL, 1),
(5, 'KEN', NULL, '買給怡卉十億豪宅', NULL, '2025-05-23 16:24:40', NULL, NULL, 1),
(6, '', NULL, '', NULL, '2025-05-26 09:01:13', NULL, '2025-05-27 11:15:07', 1),
(7, 'HUI', 2, '今天午餐有雞排', NULL, '2025-05-26 09:12:18', '2025-05-28 11:04:00', NULL, 1),
(8, 'HUI', 2, '禮拜五要吃明水然樂\r\n', NULL, '2025-05-26 09:17:58', '2025-05-28 10:31:56', NULL, 1),
(9, '大陸奸商', 2, '買給怡卉LADY M蛋糕\r\n', NULL, '2025-05-26 09:24:42', '2025-05-28 11:05:01', NULL, 1),
(12, 'CC', 1, '挖屋', NULL, '2025-05-26 10:28:28', '2025-05-28 10:30:45', NULL, 1),
(14, 'Hui', NULL, '成功導頁', NULL, '2025-05-26 14:09:24', NULL, NULL, 1),
(15, 'Hui', 1, '加sleep', NULL, '2025-05-26 14:10:42', '2025-05-28 10:28:50', NULL, 1),
(16, 'HUI', 1, '使用JS做增加成功後的轉跳', NULL, '2025-05-26 14:16:33', '2025-05-28 10:33:08', NULL, 1),
(17, 'Ben', 1, '開始檢查欄位', NULL, '2025-05-26 16:18:41', '2025-05-28 10:32:48', NULL, 1),
(18, 'Ken', 1, '用最簡單ㄉ語句撰寫檢查位置', NULL, '2025-05-26 16:18:41', '2025-05-28 11:04:18', NULL, 1),
(19, 'KEN', 1, '500水電費', '1748827359.jpg', '2025-05-26 16:24:42', '2025-06-02 09:22:39', NULL, 1),
(20, 'Ben', 1, '恭喜得到iPhone17一支', NULL, '2025-05-27 09:32:26', '2025-05-28 10:28:58', NULL, 1),
(23, 'Ben', 4, '我獨很好看', NULL, '2025-05-28 09:35:32', '2025-05-28 10:30:05', NULL, 1),
(24, 'BENN', 4, '全知讀者好看', NULL, '2025-05-28 09:35:32', '2025-05-28 10:29:57', NULL, 1),
(25, 'BEN', 3, '金獨子讚', NULL, '2025-05-28 09:37:06', '2025-05-28 10:29:51', NULL, 1),
(26, 'HUI', 1, '頭好痛', NULL, '2025-05-28 09:37:06', '2025-05-28 10:29:46', NULL, 1),
(27, 'May', 2, '我想吃鹹酥雞', NULL, '2025-05-28 09:54:50', '2025-05-28 10:29:37', NULL, 1),
(28, 'HEN', 2, '火鍋', NULL, '2025-05-28 14:58:10', NULL, NULL, 1),
(29, 'HUI', 2, '烤鴨', '1748488995.jpg', '2025-05-29 11:23:15', NULL, NULL, 1),
(30, 'Hui', 1, 'bear', '1748489028.jpg', '2025-05-29 11:23:48', NULL, NULL, 1),
(31, 'KEN', 2, '吃飯', '1748489029.jpg', '2025-05-29 11:23:48', NULL, NULL, 1),
(32, 'AAA', 1, '沒圖', NULL, '2025-05-29 11:29:42', NULL, NULL, 1),
(33, 'BBB', 3, 'U圖', '1748489383.jpg', '2025-05-29 11:29:42', NULL, NULL, 1);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `msgs`
--
ALTER TABLE `msgs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `msgs`
--
ALTER TABLE `msgs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `msgs`
--
ALTER TABLE `msgs`
  ADD CONSTRAINT `msgs_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
