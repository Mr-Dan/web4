-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Дек 03 2020 г., 10:35
-- Версия сервера: 10.1.38-MariaDB
-- Версия PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `woodland`
--

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `order_id` int(255) NOT NULL,
  `order_email` text COLLATE utf8_unicode_ci NOT NULL,
  `order_name` text COLLATE utf8_unicode_ci,
  `order_adress` text COLLATE utf8_unicode_ci,
  `order_total_id` int(255) NOT NULL,
  `order_total_price` int(100) DEFAULT NULL,
  `Time_order` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`order_id`, `order_email`, `order_name`, `order_adress`, `order_total_id`, `order_total_price`, `Time_order`) VALUES
(1, 'lopji368@gmail.com', 'Курко Дан', ' ВОЛГОГРАД 89044241473 lopji368@gmail.com СВЕТЛЫЙ ЯР.  \r\n\r\nПочта РФ\r\n\r\n Предоплата\r\n', 1, 250, '12.02.20,20:02:36'),
(2, 'lopji368@gmail.com', 'Не Дан', ' ВОЛГОГРАД 89044241473 lopji368@gmail.com СВЕТЛЫЙ ЯР \n\nПочта РФ\n\n Предоплата\n', 2, 750, '12.02.20,20:03:02'),
(3, 'lopji368@gmail.com', 'точно не  Дан', ' ВОЛГОГРАД 89044241473 lopji368@gmail.com Волгоград \n\nDHL\n\n Предоплата\n', 3, 250, '12.02.20,20:03:47'),
(4, 'lopji368@gmail.com', 'сейчас точно не  Дан', ' ВОЛГОГРАД 89044241473 lopji368@gmail.com не Волгоград \n\nПочта РФ\n\n Предоплата\n', 4, 250, '12.02.20,20:04:13'),
(5, 'lopji368@gmail.com', 'alert(\'hello\')', ' alert(\'hello\') 89044241473 lopji368@gmail.com СВЕТЛЫЙ ЯР \n\nПочта РФ\n\n Предоплата\n', 5, 250, '12.03.20,09:58:50'),
(6, 'lopji368@gmail.com', 'alert(\'hello\')', ' alert(\'hello\') 89044241473 lopji368@gmail.com СВЕТЛЫЙ ЯР.  \n<br>\nПочта РФ\n<br>\n Предоплата\n', 6, 250, '12.03.20,10:00:19'),
(7, 'lopji368@gmail.com', 'Курко Дан', ' ВОЛГОГРАД 89044241473 lopji368@gmail.com ул незнайки \n\nДоставка\n\n Предоплата\n', 7, 500, '12.03.20,10:12:54'),
(8, 'lopji368@gmail.com', 'Дан', ' ВОЛГОГРАД 89044241473 lopji368@gmail.com МИКРОРАЙОН 1 ДОМ 678 КВАРТИРА 89 \\n\\nДоставка\\n\\n Предоплата\\n', 8, 250, '12.03.20,10:19:10');

-- --------------------------------------------------------

--
-- Структура таблицы `person`
--

CREATE TABLE `person` (
  `Person_id` int(11) NOT NULL,
  `Person_name` longtext COLLATE utf8_unicode_ci,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Person_permission` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `person`
--

INSERT INTO `person` (`Person_id`, `Person_name`, `email`, `password`, `Person_permission`) VALUES
(1, 'Дан', 'lopji368@gmail.com', '3ea52c7d07bd5f1fc82e441acd8e3f44', 'admin'),
(2, 'Волк', 'lupus@gmail.ru', '997f94bccb464e18f4caf01a37cbdd4b', ''),
(3, 'Собака', 'we@gmail.yes', 'fc132f785966110df9491a05a17c0b87', '');

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_email` text COLLATE utf8_unicode_ci NOT NULL,
  `product_time_order` text COLLATE utf8_unicode_ci NOT NULL,
  `ID010` text COLLATE utf8_unicode_ci NOT NULL,
  `ID020` text COLLATE utf8_unicode_ci NOT NULL,
  `ID030` text COLLATE utf8_unicode_ci NOT NULL,
  `ID040` text COLLATE utf8_unicode_ci NOT NULL,
  `ID050` text COLLATE utf8_unicode_ci NOT NULL,
  `ID060` text COLLATE utf8_unicode_ci NOT NULL,
  `ID070` text COLLATE utf8_unicode_ci NOT NULL,
  `ID080` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `total_order`
--

CREATE TABLE `total_order` (
  `total_order_id` int(11) NOT NULL,
  `total_order_email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_order_time` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_order_product` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `total_order`
--

INSERT INTO `total_order` (`total_order_id`, `total_order_email`, `total_order_time`, `total_order_product`) VALUES
(1, 'lopji368@gmail.com', '12.02.20,20:02:36', '   													ID020  													Брус строганный 100x100  													250 руб.  													 													 													1 													  													250 руб.  													 													                                                                                                                                                                                                                                                    '),
(2, 'lopji368@gmail.com', '12.02.20,20:03:02', '   													ID070  													Доска половая 28-100  													250 руб.  													 													 													1 													  													250 руб.  													 													                                                                                                                                                                                                                                                 													ID030  													Доска строганная 25-100  													250 руб.  													 													 													1 													  													250 руб.  													 													                                                                                                                                                                                                                                                       													ID050  													Брусок 10x40   													250 руб.  													 													 													1 													  													250 руб.  													 													                                                                                                                                                                                                                                  '),
(3, 'lopji368@gmail.com', '12.02.20,20:03:47', '   													ID020  													Брус строганный 100x100  													250 руб.  													 													 													1 													  													250 руб.  													 													                                                                                                                                                                                                                                                    '),
(4, 'lopji368@gmail.com', '12.02.20,20:04:13', '   													ID020  													Брус строганный 100x100  													250 руб.  													 													 													1 													  													250 руб.  													 													                                                                                                                                                                                                                                                    '),
(5, 'lopji368@gmail.com', '12.03.20,09:58:50', '   													ID010  													Брус 50x50 м  													250 руб.  													 													 													1 													  													250 руб.  													 													                                                                                                                                                                                                                                '),
(6, 'lopji368@gmail.com', '12.03.20,10:00:19', '   													ID020  													Брус строганный 100x100  													250 руб.  													 													 													1 													  													250 руб.  													 													                                                                                                                                                                                                                                                    '),
(7, 'lopji368@gmail.com', '12.03.20,10:12:54', '   													ID020  													Брус строганный 100x100  													250 руб.  													 													 													1 													  													250 руб.  													 													                                                                                                                                                                                                                                                      													ID010  													Брус 50x50 м  													250 руб.  													 													 													1 													  													250 руб.  													 													                                                                                                                                                                                                                                '),
(8, 'lopji368@gmail.com', '12.03.20,10:19:10', '   													ID020  													Брус строганный 100x100  													250 руб.  													 													 													1 													  													250 руб.  													 													                                                                                                                                                                                                                                                    ');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Индексы таблицы `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`Person_id`),
  ADD UNIQUE KEY `Person_email` (`email`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Индексы таблицы `total_order`
--
ALTER TABLE `total_order`
  ADD PRIMARY KEY (`total_order_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `person`
--
ALTER TABLE `person`
  MODIFY `Person_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `total_order`
--
ALTER TABLE `total_order`
  MODIFY `total_order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
