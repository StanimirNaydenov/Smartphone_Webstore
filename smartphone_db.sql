-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:8111
-- Време на генериране: 12 март 2025 в 13:12
-- Версия на сървъра: 10.4.27-MariaDB
-- Версия на PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данни: `smartphone_db`
--

-- --------------------------------------------------------

--
-- Структура на таблица `admins`
--

CREATE TABLE `admins` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `admins`
--

INSERT INTO `admins` (`id`, `name`, `password`) VALUES
(1, 'admin', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2');

-- --------------------------------------------------------

--
-- Структура на таблица `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура на таблица `messages`
--

CREATE TABLE `messages` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(1, 0, 'f', 'z@z', '0', 'gg');

-- --------------------------------------------------------

--
-- Структура на таблица `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` date NOT NULL DEFAULT current_timestamp(),
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(6, 1, 'Георги Найденов', '04505434', 'georg70@abv.bg', 'на ръка при доставка', 'flat no. ул. Нещо, Номер 98, Пловдив, Община Пловдив, България - 4000', 'Apple iPhone 16e 256GB White (1689 x 1) - ', 1689, '2025-02-24', 'completed');

-- --------------------------------------------------------

--
-- Структура на таблица `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(10) NOT NULL,
  `image_01` varchar(100) NOT NULL,
  `image_02` varchar(100) NOT NULL,
  `image_03` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `products`
--

INSERT INTO `products` (`id`, `name`, `details`, `price`, `image_01`, `image_02`, `image_03`) VALUES
(1, 'Apple iPhone 16 Pro Max 256GB Desert Titanium', '6.9&#34; LTPO Super Retina XDR OLED 120Hz\r\n8GB RAM / 256GB\r\nБезжично зареждане MagSafe\r\n48MP камера\r\niOS 18', 2894, 'Екранна снимка 2025-02-24 145321.png', 'Екранна снимка 2025-02-24 145331.png', 'Екранна снимка 2025-02-24 145343.png'),
(2, 'Apple iPhone 16e 256GB White', 'Алуминиев дизайн;\r\nCeramic Shield отпред;\r\nСтъклен гръб;\r\nПамет 256GB;\r\nТегло: 167 грама;\r\nSuper Retina XDR дисплей;\r\n6,1-инчов (диагонал); OLED дисплей с цял екран;\r\nРазделителна способност 2532 на 1170 пиксела при 460 ppi;\r\nHDR дисплей;\r\nИстински тон;\r\nШирок цвят (P3);\r\nХаптично докосване;\r\nКонтрастно съотношение 2 000 000:1 (типично);\r\n800 нита максимална яркост (типично); 1200 нита пикова яркост (HDR);\r\nОлеофобно покритие, устойчиво на пръстови отпечатъци;\r\nМащабиране на дисплея;\r\nA18 chip\r\n', 1689, 'iphone_16e.jpg', 'Екранна снимка 2025-02-24 151407.png', 'Екранна снимка 2025-02-24 151424.png'),
(3, 'Apple iPhone 16 128GB Ultramarine', '6.1&#34; Super Retina XDR OLED\r\n8GB RAM / 128GB\r\nБезжично зареждане MagSafe\r\n48MP камера\r\niOS 18', 1849, 'Екранна снимка 2025-02-24 151932.png', 'Екранна снимка 2025-02-24 151948.png', 'Екранна снимка 2025-02-24 152003.png'),
(4, 'Samsung Galaxy S25 Ultra 512GB, Titanium Black', '6.9&#34; Dynamic LTPO AMOLED 2X 120Hz\r\n12GB RAM / 512GB\r\n5000 mAh батерия\r\n200MP камера\r\nAndroid 15', 2999, 's25.png', 'Екранна снимка 2025-02-24 152721.png', 'Екранна снимка 2025-02-24 152727.png'),
(5, 'Samsung Galaxy A55 5G 256GB, Awesome Lilac', '6.6“ Super AMOLED 120Hz\r\n8GB RAM / 256GB\r\n5000mAh батерия\r\n50MP камера\r\nAndroid 14', 715, 'Екранна снимка 2025-02-24 153208.png', 'Екранна снимка 2025-02-24 153214.png', 'Екранна снимка 2025-02-24 153224.png'),
(6, 'Samsung Galaxy Z Fold6, 512GB - Pink', '7.6&#34; Dynamic AMOLED 2X 120Hz\r\n12GB RAM / 512GB\r\n4400mAh батерия\r\n50MP камера\r\nAndroid 14', 3299, 'Екранна снимка 2025-02-24 153343.png', 'Екранна снимка 2025-02-24 153357.png', 'Екранна снимка 2025-02-24 153351.png'),
(7, 'HMD Pulse+ DS 128GB, Midnight Blue', '6.65&#34; IPS LCD с 90Hz\r\n4GB RAM / 128GB\r\n5000 mAh батерия\r\n50MP камера на гърба\r\nAndroid 14', 239, 'Екранна снимка 2025-02-24 153607.png', 'Екранна снимка 2025-02-24 153613.png', 'Екранна снимка 2025-02-24 153619.png'),
(8, 'HMD Pulse Pro DS 128GB, Clacier Creen', '6.65&#34; IPS LCD с 90Hz\r\n6GB RAM / 128GB\r\n5000 mAh батерия\r\n50MP камера на гърба\r\nAndroid 14', 320, 'Екранна снимка 2025-02-24 154147.png', 'Екранна снимка 2025-02-24 154153.png', 'Екранна снимка 2025-02-24 154158.png'),
(9, 'HMD Skyline 256GB, Neon Pink', '6.55” P-OLED 144Hz\r\n12GB RAM / 256GB\r\n4600mAh батерия\r\n108MP камера\r\nAndroid 14', 959, 'Екранна снимка 2025-02-24 154334.png', 'Екранна снимка 2025-02-24 154344.png', 'Екранна снимка 2025-02-24 154349.png'),
(10, 'Huawei nova 12 SE Green', '6.67&#34; OLED 90Hz\r\n8GB RAM / 256GB\r\n4500mAh\r\n108MP камера\r\nEMUI 14', 549, 'Екранна снимка 2025-02-24 155220.png', 'Екранна снимка 2025-02-24 155225.png', 'Екранна снимка 2025-02-24 155238.png'),
(11, 'Huawei nova 12s Black', '6.7&#34; OLED 120Hz\r\n8GB RAM / 256GB\r\n4500 mAh батерия\r\n50MP камера\r\nEMUI 14', 899, 'Екранна снимка 2025-02-24 155351.png', 'Екранна снимка 2025-02-24 155356.png', 'Екранна снимка 2025-02-24 155402.png'),
(12, 'Huawei Pura 70 256GB White', '6.6&#34; OLED 120Hz\r\n12GB RAM / 256GB\r\n4900 mAh батерия\r\n50MP камера\r\nHarmonyOS 4.2', 1529, 'Екранна снимка 2025-02-24 155510.png', 'Екранна снимка 2025-02-24 155524.png', 'Екранна снимка 2025-02-24 155531.png'),
(13, 'Motorola Moto G54 Power Edition 256GB, Pearl Blue', '6.5“ IPS 120Hz\r\n8GB RAM / 256GB\r\n6000mAh батерия\r\n50MP камера\r\nAndroid 13', 359, 'Екранна снимка 2025-02-24 155721.png', 'Екранна снимка 2025-02-24 155725.png', 'Екранна снимка 2025-02-24 155731.png'),
(14, 'Motorola Edge 50 Neo 256GB, PANTONE Poinciana', '6.4&#34; LTPO P-OLED 120Hz\r\n8GB RAM / 256GB\r\n4310mAh батерия\r\n50MP камера\r\nAndroid 14', 799, 'Екранна снимка 2025-02-24 155857.png', 'Екранна снимка 2025-02-24 155847.png', 'Екранна снимка 2025-02-24 155902.png'),
(15, 'Motorola Edge 50 Ultra 1TB, Nordic Wood', '6.7“ P-OLED 144Hz\r\n16GB RAM / 1TB\r\n4500mAh батерия\r\n64MP камера\r\nAndroid 14', 1649, 'Екранна снимка 2025-02-24 160020.png', 'Екранна снимка 2025-02-24 160024.png', 'Екранна снимка 2025-02-24 160029.png'),
(16, 'Xiaomi Redmi A3 128GB, Star Blue', '6.7” IPS LCD 90Hz\r\n4GB RAM / 128GB\r\n5000mAh батерия\r\n8MP камера\r\nAndroid 14', 209, 'Екранна снимка 2025-02-24 160241.png', 'Екранна снимка 2025-02-24 160249.png', 'Екранна снимка 2025-02-24 160253.png'),
(17, 'Xiaomi Redmi Note 14 128GB, Mist Purple', '6.67&#34; AMOLED 120Hz\r\n6GB RAM / 128GB\r\n5500 mAh батерия\r\n108MP камера\r\nAndroid 14', 399, 'Екранна снимка 2025-02-24 160410.png', 'Екранна снимка 2025-02-24 160414.png', 'Екранна снимка 2025-02-24 160418.png'),
(18, 'Xiaomi 14T Pro 512GB, Titan Gray', '6.67&#34; AMOLED 144Hz\r\n12GB RAM / 512GB\r\n5000mAh батерия\r\n50MP камера\r\nXiaomi HyperOS', 1299, 'Екранна снимка 2025-02-24 160536.png', 'Екранна снимка 2025-02-24 160545.png', 'Екранна снимка 2025-02-24 160551.png'),
(19, 'Nothing Phone(1), 256GB, 12GB RAM, 5G, White', 'Размери екран 6.55 inch\r\nТип дисплей	OLED\r\nРезолюция (пиксели)	2400 x 1080\r\nХарактеристики на дисплея	HDR10+\r\n120 Hz\r\nCorning® Gorilla® Glass\r\nВътрешна памет	256 GB\r\nAndroid 12\r\nТип батерия	Li-Po\r\nКапацитет батерия	4500 mAh', 899, 'Екранна снимка 2025-02-24 160941.png', 'Екранна снимка 2025-02-24 160933.png', 'Екранна снимка 2025-02-24 160955.png'),
(20, 'Nothing Phone (2a), 256GB, 12GB RAM, 5G, бял', 'Размери екран	6.7 inch\r\nТип дисплей	AMOLED\r\nРезолюция (пиксели)	1084 x 2412\r\nХарактеристики на дисплея	394 PPI\r\nСкорост на реакция при докосване 240 Hz\r\nAndroid 14\r\nВътрешна памет	256 GB\r\nКапацитет батерия	5000 mAh', 852, 'Екранна снимка 2025-02-24 161314.png', 'Екранна снимка 2025-02-24 161321.png', 'Екранна снимка 2025-02-24 161326.png'),
(21, 'Nothing Phone(2), 256GB, 12GB RAM, 5G, White', 'Размери екран	6.7 inch\r\nТип дисплей	OLED\r\nРезолюция (пиксели)	2412 x 1080\r\nВътрешна памет	256 GB\r\nAndroid 13\r\nКапацитет батерия	4700 mAh', 1530, 'Екранна снимка 2025-02-24 161627.png', 'Екранна снимка 2025-02-24 161631.png', 'Екранна снимка 2025-02-24 161635.png'),
(22, 'SONY XPERIA 10 VI BLUE', 'РАЗМЕР НА ЕКРАНА В INCH	\r\n6.10 &#34;\r\nВГРАДЕНА ПАМЕТ	\r\n128 GB\r\nКАПАЦИТЕТ НА БАТЕРИЯТА	\r\n5000 mAh\r\nЗАДНА КАМЕРА РЕЗОЛЮЦИЯ:	\r\n48+8 MP', 699, 'Екранна снимка 2025-02-24 162016.png', 'Екранна снимка 2025-02-24 162023.png', 'Екранна снимка 2025-02-24 162032.png'),
(23, 'SONY XPERIA 1 VI 5G GREEN', 'РАЗМЕР НА ЕКРАНА В INCH	\r\n6.50 \r\nВГРАДЕНА ПАМЕТ	\r\n256 GB\r\nКАПАЦИТЕТ НА БАТЕРИЯТА	\r\n5000 mAh\r\nЗАДНА КАМЕРА РЕЗОЛЮЦИЯ	\r\n48+12+12 MP', 2299, 'Екранна снимка 2025-02-24 162405.png', 'Екранна снимка 2025-02-24 162411.png', 'Екранна снимка 2025-02-24 162419.png'),
(24, 'Sony Xperia 10 V', 'Dual SIM, 128GB, 6GB RAM, 5G, Black', 759, 'Екранна снимка 2025-02-24 162904.png', 'Екранна снимка 2025-02-24 162909.png', 'Екранна снимка 2025-02-24 162913.png');

-- --------------------------------------------------------

--
-- Структура на таблица `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'Stan04', 'stan0440@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220'),
(2, 'goshkotrosha4kata@gm', 'goshkotrosha4kata@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b'),
(3, 'georgi', 'georgi_naidenov0@abv.bg', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220');

-- --------------------------------------------------------

--
-- Структура на таблица `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Индекси за таблица `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Индекси за таблица `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Индекси за таблица `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Индекси за таблица `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Индекси за таблица `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Индекси за таблица `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Индекси за таблица `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
