-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 30, 2020 at 02:17 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `task`
--

-- --------------------------------------------------------

--
-- Table structure for table `exchange_tables`
--

CREATE TABLE `exchange_tables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `exchange` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rate` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `exchange_tables`
--

INSERT INTO `exchange_tables` (`id`, `exchange`, `code`, `rate`, `date`, `created_at`, `updated_at`) VALUES
(145, 'Palladium', 'XPD', '3897.284', '22.09.2020', NULL, NULL),
(146, 'Platin', 'XPT', '1521.313', '22.09.2020', NULL, NULL),
(147, 'Gümüş', 'XAG', '42.0847', '22.09.2020', NULL, NULL),
(148, 'Qızıl', 'XAU', '3256.7495', '22.09.2020', NULL, NULL),
(149, '1 ABŞ dolları', 'USD', '1.7', '22.09.2020', NULL, NULL),
(150, '1 Avro', 'EUR', '2.0006', '22.09.2020', NULL, NULL),
(151, '1 Avstraliya dolları', 'AUD', '1.2274', '22.09.2020', NULL, NULL),
(152, '1 Argentina pesosu', 'ARS', '0.0225', '22.09.2020', NULL, NULL),
(153, '1 Belarus rublu', 'BYN', '0.6564', '22.09.2020', NULL, NULL),
(154, '1 Braziliya realı', 'BRL', '0.314', '22.09.2020', NULL, NULL),
(155, '1 BƏƏ dirhəmi', 'AED', '0.4628', '22.09.2020', NULL, NULL),
(156, '1 Cənubi Afrika randı', 'ZAR', '0.1013', '22.09.2020', NULL, NULL),
(157, '100 Cənubi Koreya vonu', 'KRW', '0.1461', '22.09.2020', NULL, NULL),
(158, '1 Çexiya kronu', 'CZK', '0.0737', '22.09.2020', NULL, NULL),
(159, '100 Çili pesosu', 'CLP', '0.2198', '22.09.2020', NULL, NULL),
(160, '1 Çin yuanı', 'CNY', '0.2505', '22.09.2020', NULL, NULL),
(161, '1 Danimarka kronu', 'DKK', '0.2689', '22.09.2020', NULL, NULL),
(162, '1 Gürcüstan larisi', 'GEL', '0.5267', '22.09.2020', NULL, NULL),
(163, '1 Honq Konq dolları', 'HKD', '0.2194', '22.09.2020', NULL, NULL),
(164, '1 Hindistan rupisi', 'INR', '0.0232', '22.09.2020', NULL, NULL),
(165, '1 İngiltərə funt sterlinqi', 'GBP', '2.1796', '22.09.2020', NULL, NULL),
(166, '100 İndoneziya rupiası', 'IDR', '0.0115', '22.09.2020', NULL, NULL),
(167, '100 İran rialı', 'IRR', '0.004', '22.09.2020', NULL, NULL),
(168, '1 İsveç kronu', 'SEK', '0.1921', '22.09.2020', NULL, NULL),
(169, '1 İsveçrə frankı', 'CHF', '1.859', '22.09.2020', NULL, NULL),
(170, '1 İsrail şekeli', 'ILS', '0.4921', '22.09.2020', NULL, NULL),
(171, '1 Kanada dolları', 'CAD', '1.2776', '22.09.2020', NULL, NULL),
(172, '1 Küveyt dinarı', 'KWD', '5.5588', '22.09.2020', NULL, NULL),
(173, '1 Qazaxıstan tengəsi', 'KZT', '0.004', '22.09.2020', NULL, NULL),
(174, '1 Qırğızıstan somu', 'KGS', '0.0215', '22.09.2020', NULL, NULL),
(175, '100 Livan funtu', 'LBP', '0.1123', '22.09.2020', NULL, NULL),
(176, '1 Malayziya rinqqiti', 'MYR', '0.4109', '22.09.2020', NULL, NULL),
(177, '1 Meksika pesosu', 'MXN', '0.0796', '22.09.2020', NULL, NULL),
(178, '1 Moldova leyi', 'MDL', '0.1023', '22.09.2020', NULL, NULL),
(179, '1 Misir funtu', 'EGP', '0.108', '22.09.2020', NULL, NULL),
(180, '1 Norveç kronu', 'NOK', '0.1829', '22.09.2020', NULL, NULL),
(181, '100 Özbəkistan somu', 'UZS', '0.0165', '22.09.2020', NULL, NULL),
(182, '1 Polşa zlotısı', 'PLN', '0.4449', '22.09.2020', NULL, NULL),
(183, '1 Rusiya rublu', 'RUB', '0.0223', '22.09.2020', NULL, NULL),
(184, '1 Sinqapur dolları', 'SGD', '1.2478', '22.09.2020', NULL, NULL),
(185, '1 Səudiyyə Ərəbistanı rialı', 'SAR', '0.4532', '22.09.2020', NULL, NULL),
(186, '1 SDR (BVF-nin xüsusi borcalma hüquqları)', 'SDR', '2.4026', '22.09.2020', NULL, NULL),
(187, '1 Türkiyə lirəsi', 'TRY', '0.2228', '22.09.2020', NULL, NULL),
(188, '1 Tayvan dolları', 'TWD', '0.0586', '22.09.2020', NULL, NULL),
(189, '1 Tacikistan somonisi', 'TJS', '0.1646', '22.09.2020', NULL, NULL),
(190, '1 Türkmənistan manatı', 'TMT', '0.4857', '22.09.2020', NULL, NULL),
(191, '1 Ukrayna qrivnası', 'UAH', '0.0602', '22.09.2020', NULL, NULL),
(192, '100 Yaponiya yeni', 'JPY', '1.6262', '22.09.2020', NULL, NULL),
(193, 'Palladium', 'XPD', '4047.768', '16.09.2020', NULL, NULL),
(194, 'Platin', 'XPT', '1657.602', '16.09.2020', NULL, NULL),
(195, 'Gümüş', 'XAG', '46.3701', '16.09.2020', NULL, NULL),
(196, 'Qızıl', 'XAU', '3331.4645', '16.09.2020', NULL, NULL),
(197, '1 ABŞ dolları', 'USD', '1.7', '16.09.2020', NULL, NULL),
(198, '1 Avro', 'EUR', '2.0141', '16.09.2020', NULL, NULL),
(199, '1 Avstraliya dolları', 'AUD', '1.2439', '16.09.2020', NULL, NULL),
(200, '1 Argentina pesosu', 'ARS', '0.0226', '16.09.2020', NULL, NULL),
(201, '1 Belarus rublu', 'BYN', '0.6576', '16.09.2020', NULL, NULL),
(202, '1 Braziliya realı', 'BRL', '0.3221', '16.09.2020', NULL, NULL),
(203, '1 BƏƏ dirhəmi', 'AED', '0.4628', '16.09.2020', NULL, NULL),
(204, '1 Cənubi Afrika randı', 'ZAR', '0.1036', '16.09.2020', NULL, NULL),
(205, '100 Cənubi Koreya vonu', 'KRW', '0.1445', '16.09.2020', NULL, NULL),
(206, '1 Çexiya kronu', 'CZK', '0.0753', '16.09.2020', NULL, NULL),
(207, '100 Çili pesosu', 'CLP', '0.2232', '16.09.2020', NULL, NULL),
(208, '1 Çin yuanı', 'CNY', '0.251', '16.09.2020', NULL, NULL),
(209, '1 Danimarka kronu', 'DKK', '0.2707', '16.09.2020', NULL, NULL),
(210, '1 Gürcüstan larisi', 'GEL', '0.538', '16.09.2020', NULL, NULL),
(211, '1 Honq Konq dolları', 'HKD', '0.2194', '16.09.2020', NULL, NULL),
(212, '1 Hindistan rupisi', 'INR', '0.0231', '16.09.2020', NULL, NULL),
(213, '1 İngiltərə funt sterlinqi', 'GBP', '2.1924', '16.09.2020', NULL, NULL),
(214, '100 İndoneziya rupiası', 'IDR', '0.0115', '16.09.2020', NULL, NULL),
(215, '100 İran rialı', 'IRR', '0.004', '16.09.2020', NULL, NULL),
(216, '1 İsveç kronu', 'SEK', '0.1935', '16.09.2020', NULL, NULL),
(217, '1 İsveçrə frankı', 'CHF', '1.8723', '16.09.2020', NULL, NULL),
(218, '1 İsrail şekeli', 'ILS', '0.4961', '16.09.2020', NULL, NULL),
(219, '1 Kanada dolları', 'CAD', '1.2905', '16.09.2020', NULL, NULL),
(220, '1 Küveyt dinarı', 'KWD', '5.5628', '16.09.2020', NULL, NULL),
(221, '1 Qazaxıstan tengəsi', 'KZT', '0.004', '16.09.2020', NULL, NULL),
(222, '1 Qırğızıstan somu', 'KGS', '0.0215', '16.09.2020', NULL, NULL),
(223, '100 Livan funtu', 'LBP', '0.1121', '16.09.2020', NULL, NULL),
(224, '1 Malayziya rinqqiti', 'MYR', '0.4113', '16.09.2020', NULL, NULL),
(225, '1 Meksika pesosu', 'MXN', '0.0805', '16.09.2020', NULL, NULL),
(226, '1 Moldova leyi', 'MDL', '0.1023', '16.09.2020', NULL, NULL),
(227, '1 Misir funtu', 'EGP', '0.108', '16.09.2020', NULL, NULL),
(228, '1 Norveç kronu', 'NOK', '0.1886', '16.09.2020', NULL, NULL),
(229, '100 Özbəkistan somu', 'UZS', '0.0166', '16.09.2020', NULL, NULL),
(230, '1 Polşa zlotısı', 'PLN', '0.4521', '16.09.2020', NULL, NULL),
(231, '1 Rusiya rublu', 'RUB', '0.0226', '16.09.2020', NULL, NULL),
(232, '1 Sinqapur dolları', 'SGD', '1.2499', '16.09.2020', NULL, NULL),
(233, '1 Səudiyyə Ərəbistanı rialı', 'SAR', '0.4532', '16.09.2020', NULL, NULL),
(234, '1 SDR (BVF-nin xüsusi borcalma hüquqları)', 'SDR', '2.4083', '16.09.2020', NULL, NULL),
(235, '1 Türkiyə lirəsi', 'TRY', '0.227', '16.09.2020', NULL, NULL),
(236, '1 Tayvan dolları', 'TWD', '0.0583', '16.09.2020', NULL, NULL),
(237, '1 Tacikistan somonisi', 'TJS', '0.1646', '16.09.2020', NULL, NULL),
(238, '1 Türkmənistan manatı', 'TMT', '0.4857', '16.09.2020', NULL, NULL),
(239, '1 Ukrayna qrivnası', 'UAH', '0.0607', '16.09.2020', NULL, NULL),
(240, '100 Yaponiya yeni', 'JPY', '1.6145', '16.09.2020', NULL, NULL),
(241, 'Palladium', 'XPD', '3773.8215', '23.09.2020', NULL, NULL),
(242, 'Platin', 'XPT', '1469.497', '23.09.2020', NULL, NULL),
(243, 'Gümüş', 'XAG', '39.9877', '23.09.2020', NULL, NULL),
(244, 'Qızıl', 'XAU', '3208.427', '23.09.2020', NULL, NULL),
(245, '1 ABŞ dolları', 'USD', '1.7', '23.09.2020', NULL, NULL),
(246, '1 Avro', 'EUR', '1.9854', '23.09.2020', NULL, NULL),
(247, '1 Avstraliya dolları', 'AUD', '1.2113', '23.09.2020', NULL, NULL),
(248, '1 Argentina pesosu', 'ARS', '0.0225', '23.09.2020', NULL, NULL),
(249, '1 Belarus rublu', 'BYN', '0.658', '23.09.2020', NULL, NULL),
(250, '1 Braziliya realı', 'BRL', '0.3107', '23.09.2020', NULL, NULL),
(251, '1 BƏƏ dirhəmi', 'AED', '0.4628', '23.09.2020', NULL, NULL),
(252, '1 Cənubi Afrika randı', 'ZAR', '0.1009', '23.09.2020', NULL, NULL),
(253, '100 Cənubi Koreya vonu', 'KRW', '0.1459', '23.09.2020', NULL, NULL),
(254, '1 Çexiya kronu', 'CZK', '0.0737', '23.09.2020', NULL, NULL),
(255, '100 Çili pesosu', 'CLP', '0.219', '23.09.2020', NULL, NULL),
(256, '1 Çin yuanı', 'CNY', '0.2502', '23.09.2020', NULL, NULL),
(257, '1 Danimarka kronu', 'DKK', '0.2668', '23.09.2020', NULL, NULL),
(258, '1 Gürcüstan larisi', 'GEL', '0.5226', '23.09.2020', NULL, NULL),
(259, '1 Honq Konq dolları', 'HKD', '0.2194', '23.09.2020', NULL, NULL),
(260, '1 Hindistan rupisi', 'INR', '0.0231', '23.09.2020', NULL, NULL),
(261, '1 İngiltərə funt sterlinqi', 'GBP', '2.162', '23.09.2020', NULL, NULL),
(262, '100 İndoneziya rupiası', 'IDR', '0.0115', '23.09.2020', NULL, NULL),
(263, '100 İran rialı', 'IRR', '0.004', '23.09.2020', NULL, NULL),
(264, '1 İsveç kronu', 'SEK', '0.1901', '23.09.2020', NULL, NULL),
(265, '1 İsveçrə frankı', 'CHF', '1.8451', '23.09.2020', NULL, NULL),
(266, '1 İsrail şekeli', 'ILS', '0.4949', '23.09.2020', NULL, NULL),
(267, '1 Kanada dolları', 'CAD', '1.2754', '23.09.2020', NULL, NULL),
(268, '1 Küveyt dinarı', 'KWD', '5.5517', '23.09.2020', NULL, NULL),
(269, '1 Qazaxıstan tengəsi', 'KZT', '0.004', '23.09.2020', NULL, NULL),
(270, '1 Qırğızıstan somu', 'KGS', '0.0215', '23.09.2020', NULL, NULL),
(271, '100 Livan funtu', 'LBP', '0.112', '23.09.2020', NULL, NULL),
(272, '1 Malayziya rinqqiti', 'MYR', '0.4085', '23.09.2020', NULL, NULL),
(273, '1 Meksika pesosu', 'MXN', '0.0781', '23.09.2020', NULL, NULL),
(274, '1 Moldova leyi', 'MDL', '0.1018', '23.09.2020', NULL, NULL),
(275, '1 Misir funtu', 'EGP', '0.1078', '23.09.2020', NULL, NULL),
(276, '1 Norveç kronu', 'NOK', '0.1811', '23.09.2020', NULL, NULL),
(277, '100 Özbəkistan somu', 'UZS', '0.0166', '23.09.2020', NULL, NULL),
(278, '1 Polşa zlotısı', 'PLN', '0.4427', '23.09.2020', NULL, NULL),
(279, '1 Rusiya rublu', 'RUB', '0.0223', '23.09.2020', NULL, NULL),
(280, '1 Sinqapur dolları', 'SGD', '1.2438', '23.09.2020', NULL, NULL),
(281, '1 Səudiyyə Ərəbistanı rialı', 'SAR', '0.4532', '23.09.2020', NULL, NULL),
(282, '1 SDR (BVF-nin xüsusi borcalma hüquqları)', 'SDR', '2.4002', '23.09.2020', NULL, NULL),
(283, '1 Türkiyə lirəsi', 'TRY', '0.2218', '23.09.2020', NULL, NULL),
(284, '1 Tayvan dolları', 'TWD', '0.0584', '23.09.2020', NULL, NULL),
(285, '1 Tacikistan somonisi', 'TJS', '0.1646', '23.09.2020', NULL, NULL),
(286, '1 Türkmənistan manatı', 'TMT', '0.4857', '23.09.2020', NULL, NULL),
(287, '1 Ukrayna qrivnası', 'UAH', '0.0601', '23.09.2020', NULL, NULL),
(288, '100 Yaponiya yeni', 'JPY', '1.618', '23.09.2020', NULL, NULL),
(289, 'Palladium', 'XPD', '3983.865', '20.09.2020', NULL, NULL),
(290, 'Platin', 'XPT', '1603.253', '20.09.2020', NULL, NULL),
(291, 'Gümüş', 'XAG', '46.0226', '20.09.2020', NULL, NULL),
(292, 'Qızıl', 'XAU', '3318.4085', '20.09.2020', NULL, NULL),
(293, '1 ABŞ dolları', 'USD', '1.7', '20.09.2020', NULL, NULL),
(294, '1 Avro', 'EUR', '2.0142', '20.09.2020', NULL, NULL),
(295, '1 Avstraliya dolları', 'AUD', '1.2438', '20.09.2020', NULL, NULL),
(296, '1 Argentina pesosu', 'ARS', '0.0226', '20.09.2020', NULL, NULL),
(297, '1 Belarus rublu', 'BYN', '0.6605', '20.09.2020', NULL, NULL),
(298, '1 Braziliya realı', 'BRL', '0.3245', '20.09.2020', NULL, NULL),
(299, '1 BƏƏ dirhəmi', 'AED', '0.4628', '20.09.2020', NULL, NULL),
(300, '1 Cənubi Afrika randı', 'ZAR', '0.105', '20.09.2020', NULL, NULL),
(301, '100 Cənubi Koreya vonu', 'KRW', '0.1464', '20.09.2020', NULL, NULL),
(302, '1 Çexiya kronu', 'CZK', '0.0754', '20.09.2020', NULL, NULL),
(303, '100 Çili pesosu', 'CLP', '0.2227', '20.09.2020', NULL, NULL),
(304, '1 Çin yuanı', 'CNY', '0.2516', '20.09.2020', NULL, NULL),
(305, '1 Danimarka kronu', 'DKK', '0.2707', '20.09.2020', NULL, NULL),
(306, '1 Gürcüstan larisi', 'GEL', '0.5296', '20.09.2020', NULL, NULL),
(307, '1 Honq Konq dolları', 'HKD', '0.2194', '20.09.2020', NULL, NULL),
(308, '1 Hindistan rupisi', 'INR', '0.0232', '20.09.2020', NULL, NULL),
(309, '1 İngiltərə funt sterlinqi', 'GBP', '2.2029', '20.09.2020', NULL, NULL),
(310, '100 İndoneziya rupiası', 'IDR', '0.0115', '20.09.2020', NULL, NULL),
(311, '100 İran rialı', 'IRR', '0.004', '20.09.2020', NULL, NULL),
(312, '1 İsveç kronu', 'SEK', '0.1937', '20.09.2020', NULL, NULL),
(313, '1 İsveçrə frankı', 'CHF', '1.8713', '20.09.2020', NULL, NULL),
(314, '1 İsrail şekeli', 'ILS', '0.4963', '20.09.2020', NULL, NULL),
(315, '1 Kanada dolları', 'CAD', '1.2917', '20.09.2020', NULL, NULL),
(316, '1 Küveyt dinarı', 'KWD', '5.5605', '20.09.2020', NULL, NULL),
(317, '1 Qazaxıstan tengəsi', 'KZT', '0.004', '20.09.2020', NULL, NULL),
(318, '1 Qırğızıstan somu', 'KGS', '0.0219', '20.09.2020', NULL, NULL),
(319, '100 Livan funtu', 'LBP', '0.1127', '20.09.2020', NULL, NULL),
(320, '1 Malayziya rinqqiti', 'MYR', '0.4116', '20.09.2020', NULL, NULL),
(321, '1 Meksika pesosu', 'MXN', '0.0813', '20.09.2020', NULL, NULL),
(322, '1 Moldova leyi', 'MDL', '0.0991', '20.09.2020', NULL, NULL),
(323, '1 Misir funtu', 'EGP', '0.1082', '20.09.2020', NULL, NULL),
(324, '1 Norveç kronu', 'NOK', '0.1879', '20.09.2020', NULL, NULL),
(325, '100 Özbəkistan somu', 'UZS', '0.0166', '20.09.2020', NULL, NULL),
(326, '1 Polşa zlotısı', 'PLN', '0.452', '20.09.2020', NULL, NULL),
(327, '1 Rusiya rublu', 'RUB', '0.0227', '20.09.2020', NULL, NULL),
(328, '1 Sinqapur dolları', 'SGD', '1.2534', '20.09.2020', NULL, NULL),
(329, '1 Səudiyyə Ərəbistanı rialı', 'SAR', '0.4532', '20.09.2020', NULL, NULL),
(330, '1 SDR (BVF-nin xüsusi borcalma hüquqları)', 'SDR', '2.4038', '20.09.2020', NULL, NULL),
(331, '1 Türkiyə lirəsi', 'TRY', '0.2251', '20.09.2020', NULL, NULL),
(332, '1 Tayvan dolları', 'TWD', '0.0585', '20.09.2020', NULL, NULL),
(333, '1 Tacikistan somonisi', 'TJS', '0.1646', '20.09.2020', NULL, NULL),
(334, '1 Türkmənistan manatı', 'TMT', '0.4857', '20.09.2020', NULL, NULL),
(335, '1 Ukrayna qrivnası', 'UAH', '0.0604', '20.09.2020', NULL, NULL),
(336, '100 Yaponiya yeni', 'JPY', '1.6219', '20.09.2020', NULL, NULL),
(337, 'Palladium', 'XPD', '4063.357', '21.09.2020', NULL, NULL),
(338, 'Platin', 'XPT', '1597.813', '21.09.2020', NULL, NULL),
(339, 'Gümüş', 'XAG', '45.6101', '21.09.2020', NULL, NULL),
(340, 'Qızıl', 'XAU', '3320.746', '21.09.2020', NULL, NULL),
(341, '1 ABŞ dolları', 'USD', '1.7', '21.09.2020', NULL, NULL),
(342, '1 Avro', 'EUR', '2.0173', '21.09.2020', NULL, NULL),
(343, '1 Avstraliya dolları', 'AUD', '1.2444', '21.09.2020', NULL, NULL),
(344, '1 Argentina pesosu', 'ARS', '0.0226', '21.09.2020', NULL, NULL),
(345, '1 Belarus rublu', 'BYN', '0.662', '21.09.2020', NULL, NULL),
(346, '1 Braziliya realı', 'BRL', '0.3154', '21.09.2020', NULL, NULL),
(347, '1 BƏƏ dirhəmi', 'AED', '0.4628', '21.09.2020', NULL, NULL),
(348, '1 Cənubi Afrika randı', 'ZAR', '0.1044', '21.09.2020', NULL, NULL),
(349, '100 Cənubi Koreya vonu', 'KRW', '0.1467', '21.09.2020', NULL, NULL),
(350, '1 Çexiya kronu', 'CZK', '0.0754', '21.09.2020', NULL, NULL),
(351, '100 Çili pesosu', 'CLP', '0.2227', '21.09.2020', NULL, NULL),
(352, '1 Çin yuanı', 'CNY', '0.2515', '21.09.2020', NULL, NULL),
(353, '1 Danimarka kronu', 'DKK', '0.2711', '21.09.2020', NULL, NULL),
(354, '1 Gürcüstan larisi', 'GEL', '0.5278', '21.09.2020', NULL, NULL),
(355, '1 Honq Konq dolları', 'HKD', '0.2194', '21.09.2020', NULL, NULL),
(356, '1 Hindistan rupisi', 'INR', '0.0232', '21.09.2020', NULL, NULL),
(357, '1 İngiltərə funt sterlinqi', 'GBP', '2.2026', '21.09.2020', NULL, NULL),
(358, '100 İndoneziya rupiası', 'IDR', '0.0116', '21.09.2020', NULL, NULL),
(359, '100 İran rialı', 'IRR', '0.004', '21.09.2020', NULL, NULL),
(360, '1 İsveç kronu', 'SEK', '0.1945', '21.09.2020', NULL, NULL),
(361, '1 İsveçrə frankı', 'CHF', '1.8684', '21.09.2020', NULL, NULL),
(362, '1 İsrail şekeli', 'ILS', '0.4969', '21.09.2020', NULL, NULL),
(363, '1 Kanada dolları', 'CAD', '1.29', '21.09.2020', NULL, NULL),
(364, '1 Küveyt dinarı', 'KWD', '5.5646', '21.09.2020', NULL, NULL),
(365, '1 Qazaxıstan tengəsi', 'KZT', '0.004', '21.09.2020', NULL, NULL),
(366, '1 Qırğızıstan somu', 'KGS', '0.0215', '21.09.2020', NULL, NULL),
(367, '100 Livan funtu', 'LBP', '0.1125', '21.09.2020', NULL, NULL),
(368, '1 Malayziya rinqqiti', 'MYR', '0.4135', '21.09.2020', NULL, NULL),
(369, '1 Meksika pesosu', 'MXN', '0.0807', '21.09.2020', NULL, NULL),
(370, '1 Moldova leyi', 'MDL', '0.1022', '21.09.2020', NULL, NULL),
(371, '1 Misir funtu', 'EGP', '0.1079', '21.09.2020', NULL, NULL),
(372, '1 Norveç kronu', 'NOK', '0.1874', '21.09.2020', NULL, NULL),
(373, '100 Özbəkistan somu', 'UZS', '0.0165', '21.09.2020', NULL, NULL),
(374, '1 Polşa zlotısı', 'PLN', '0.4524', '21.09.2020', NULL, NULL),
(375, '1 Rusiya rublu', 'RUB', '0.0225', '21.09.2020', NULL, NULL),
(376, '1 Sinqapur dolları', 'SGD', '1.2548', '21.09.2020', NULL, NULL),
(377, '1 Səudiyyə Ərəbistanı rialı', 'SAR', '0.4532', '21.09.2020', NULL, NULL),
(378, '1 SDR (BVF-nin xüsusi borcalma hüquqları)', 'SDR', '2.4083', '21.09.2020', NULL, NULL),
(379, '1 Türkiyə lirəsi', 'TRY', '0.2246', '21.09.2020', NULL, NULL),
(380, '1 Tayvan dolları', 'TWD', '0.059', '21.09.2020', NULL, NULL),
(381, '1 Tacikistan somonisi', 'TJS', '0.1646', '21.09.2020', NULL, NULL),
(382, '1 Türkmənistan manatı', 'TMT', '0.4857', '21.09.2020', NULL, NULL),
(383, '1 Ukrayna qrivnası', 'UAH', '0.0604', '21.09.2020', NULL, NULL),
(384, '100 Yaponiya yeni', 'JPY', '1.6298', '21.09.2020', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `exchange_tables`
--
ALTER TABLE `exchange_tables`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `exchange_tables`
--
ALTER TABLE `exchange_tables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=385;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
