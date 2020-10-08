-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Окт 08 2020 г., 09:26
-- Версия сервера: 10.1.31-MariaDB
-- Версия PHP: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `mysmallbase`
--

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8_estonian_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_estonian_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_estonian_ci NOT NULL,
  `status` varchar(20) COLLATE utf8_estonian_ci NOT NULL,
  `registration_date` date NOT NULL,
  `pass` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `status`, `registration_date`, `pass`) VALUES
(1, 'admin', 'admin@newsportal.ee', '$2y$12$pxB2ofiiNZkxObmbBvBOyegwCjHCVFYhapjiSsdYXUaJ9Z1IH6pQW', 'admin', '2019-11-05', '123456'),
(2, 'anonim', 'user@newsportal.ee', '$2y$10$dYK1sCogKL/zZBef.V/gBeynL5mdt0QxZlwvEUBkS0jkdXYRMPHRa', 'user', '2019-11-05', '111111'),
(3, 'qwerty', 'qwerty@newsportal.ee', '$2y$10$xSTRVLypjldv9dp9xbG1VOFEUxxFoW5FHzwwRNtPStX70UYl2v0/y', 'user', '2020-02-19', 'qwerty'),
(4, 'admin1', 'admin1@mail.ru', '$2y$10$4PU/LNKmzO3PJZteRUHPXOkrkoHwSn0yXoBD.yARXS0HFlLI21Dmm', 'admin', '2020-09-17', 'admin1'),
(5, 'testReg', 'testReg@mail.ru', '$2y$10$VHjC/noeuIsQNB3KPTWZnOtIuMzUG9bdJh6TqcmssMb.eSJKYB/.O', 'user', '2020-10-08', '123456');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
