-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 13 2021 г., 03:38
-- Версия сервера: 10.3.22-MariaDB
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `wow_junior_test`
--

-- --------------------------------------------------------

--
-- Структура таблицы `runs`
--

CREATE TABLE `runs` (
  `characterPosition` smallint(6) DEFAULT NULL,
  `rockPosition` smallint(6) DEFAULT NULL,
  `rockSize` smallint(6) DEFAULT NULL,
  `runTime` int(11) DEFAULT NULL,
  `success` tinyint(1) DEFAULT NULL,
  `easyWin` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `runs`
--

INSERT INTO `runs` (`characterPosition`, `rockPosition`, `rockSize`, `runTime`, `success`, `easyWin`) VALUES
(248, 363, 44, 5101, 1, 0),
(700, 815, 80, 5101, 1, 0),
(634, 749, 64, 5101, 1, 0),
(584, 699, 45, 5101, 1, 0),
(216, 331, 79, 5100, 1, 0),
(458, 573, 65, 5101, 1, 0),
(240, 356, 68, 5100, 1, 0),
(758, 874, 67, 5101, 1, 0),
(364, 479, 63, 5102, 1, 0),
(296, 411, 60, 5100, 1, 0),
(678, 793, 51, 5260, 1, 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
