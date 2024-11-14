-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2024 at 04:20 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kasir`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `activity` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `user_id`, `activity`, `description`, `timestamp`) VALUES
(21, NULL, 'Login', 'User Has Log in.', '2024-11-13 10:10:47'),
(22, 2, 'View', 'User view Dashboard.', '2024-11-13 10:15:25'),
(23, 2, 'View', 'User view Setting.', '2024-11-13 10:15:28'),
(24, 2, 'View', 'User view Activity Log.', '2024-11-13 10:15:29'),
(25, 2, 'View', 'User view Dashboard.', '2024-11-13 10:15:32'),
(26, 2, 'View', 'User view Dashboard.', '2024-11-13 10:15:44'),
(27, 2, 'View', 'User view Dashboard.', '2024-11-13 10:17:33'),
(28, 2, 'View', 'User view Dashboard.', '2024-11-13 10:17:58'),
(29, 2, 'View', 'User view Dashboard.', '2024-11-13 10:17:59'),
(30, 2, 'View', 'User view Dashboard.', '2024-11-13 10:17:59'),
(31, 2, 'View', 'User view Dashboard.', '2024-11-13 10:18:22'),
(32, 2, 'View', 'User view Dashboard.', '2024-11-13 10:18:22'),
(33, 2, 'View', 'User view Setting.', '2024-11-13 10:18:42'),
(34, 2, 'View', 'User view Dashboard.', '2024-11-13 10:18:43'),
(35, 2, 'View', 'User view Dashboard.', '2024-11-13 10:19:56'),
(36, NULL, 'Login', 'User Has Log in.', '2024-11-13 17:52:22'),
(37, 2, 'View', 'User view Dashboard.', '2024-11-13 17:52:22'),
(38, 2, 'View', 'User view Dashboard.', '2024-11-13 18:05:16'),
(39, 2, 'View', 'User view Dashboard.', '2024-11-13 18:41:20'),
(40, 2, 'View', 'User view Dashboard.', '2024-11-13 18:45:14'),
(41, 2, 'View', 'User view Dashboard.', '2024-11-13 18:46:04'),
(42, 2, 'View', 'User view Dashboard.', '2024-11-13 18:46:32'),
(43, 2, 'View', 'User view Order.', '2024-11-13 18:52:16'),
(44, 2, 'View', 'User view Order.', '2024-11-13 18:54:34'),
(45, 2, 'View', 'User view Order.', '2024-11-13 18:54:40'),
(46, 2, 'View', 'User view Order.', '2024-11-13 18:54:50'),
(47, 2, 'View', 'User view Order.', '2024-11-13 18:54:54'),
(48, 2, 'View', 'User view Order.', '2024-11-13 18:55:34'),
(49, 2, 'View', 'User view Order.', '2024-11-13 18:55:42'),
(50, 2, 'View', 'User view Order.', '2024-11-13 18:57:21'),
(51, 2, 'View', 'User view Order.', '2024-11-13 18:58:49'),
(52, 2, 'View', 'User view Order.', '2024-11-13 18:59:54'),
(53, 2, 'View', 'User view Order.', '2024-11-13 19:00:21'),
(54, 2, 'View', 'User view Order.', '2024-11-13 19:02:38'),
(55, 2, 'View', 'User view Order.', '2024-11-13 19:03:06'),
(56, 2, 'View', 'User view Order.', '2024-11-13 19:03:21'),
(57, 2, 'View', 'User view Activity Log.', '2024-11-13 19:03:40'),
(58, 2, 'View', 'User view Order.', '2024-11-13 19:03:50'),
(59, 2, 'View', 'User view Order.', '2024-11-13 19:04:23'),
(60, 2, 'View', 'User view Order.', '2024-11-13 19:05:12'),
(61, 2, 'View', 'User view Order.', '2024-11-13 19:05:16'),
(62, 2, 'View', 'User view Order.', '2024-11-13 19:05:21'),
(63, 2, 'View', 'User view Order.', '2024-11-13 19:05:25'),
(64, 2, 'View', 'User view Order.', '2024-11-13 19:05:28'),
(65, 2, 'View', 'User view Setting.', '2024-11-13 19:05:29'),
(66, 2, 'View', 'User view Activity Log.', '2024-11-13 19:05:29'),
(67, 2, 'View', 'User view Order.', '2024-11-13 19:05:36'),
(68, 2, 'View', 'User view Order.', '2024-11-13 19:05:36'),
(69, 2, 'View', 'User view Order.', '2024-11-13 19:06:18'),
(70, 2, 'View', 'User view Order.', '2024-11-13 19:06:32'),
(71, 2, 'View', 'User view Order.', '2024-11-13 19:06:49'),
(72, 2, 'View', 'User view Order.', '2024-11-13 19:07:59'),
(73, 2, 'View', 'User view Order.', '2024-11-13 19:09:56'),
(74, 2, 'View', 'User view Order.', '2024-11-13 19:10:12'),
(75, 2, 'View', 'User view Order.', '2024-11-13 19:11:29'),
(76, 2, 'View', 'User view Order.', '2024-11-13 19:11:49'),
(77, 2, 'View', 'User view Order.', '2024-11-13 19:12:20'),
(78, 2, 'View', 'User view Order.', '2024-11-13 19:12:57'),
(79, 2, 'View', 'User view Order.', '2024-11-13 19:13:05'),
(80, 2, 'View', 'User view Order.', '2024-11-13 19:13:22'),
(81, 2, 'View', 'User view Order.', '2024-11-13 19:13:47'),
(82, 2, 'View', 'User view Order.', '2024-11-13 19:14:05'),
(83, 2, 'View', 'User view Order.', '2024-11-13 19:14:11'),
(84, 2, 'View', 'User view Order.', '2024-11-13 19:14:22'),
(85, 2, 'View', 'User view Order.', '2024-11-13 19:15:17'),
(86, 2, 'View', 'User view Order.', '2024-11-13 19:16:37'),
(87, 2, 'View', 'User view Order.', '2024-11-13 19:19:59'),
(88, 2, 'View', 'User view Order.', '2024-11-13 19:20:04'),
(89, 2, 'View', 'User view Order.', '2024-11-13 19:21:37'),
(90, 2, 'Add', 'User memesan produk.', '2024-11-13 19:31:01'),
(91, 2, 'View', 'User view Order.', '2024-11-13 19:31:02'),
(92, 2, 'Add', 'User memesan produk.', '2024-11-13 19:31:36'),
(93, 2, 'View', 'User view Order.', '2024-11-13 19:31:36'),
(94, 2, 'Add', 'User memesan produk.', '2024-11-13 19:33:16'),
(95, 2, 'View', 'User view Order.', '2024-11-13 19:33:16'),
(96, 2, 'Add', 'User memesan produk.', '2024-11-13 19:34:54'),
(97, 2, 'View', 'User view Order.', '2024-11-13 19:34:54'),
(98, 2, 'Add', 'User memesan produk.', '2024-11-13 19:36:30'),
(99, 2, 'View', 'User view Order.', '2024-11-13 19:36:30'),
(100, 2, 'View', 'User view Order.', '2024-11-13 19:38:19'),
(101, 2, 'Add', 'User memesan produk.', '2024-11-13 19:38:25'),
(102, 2, 'View', 'User view Order.', '2024-11-13 19:38:25'),
(103, 2, 'Add', 'User memesan produk.', '2024-11-13 19:39:32'),
(104, 2, 'View', 'User view Order.', '2024-11-13 19:39:32'),
(105, 2, 'View', 'User view Order.', '2024-11-13 19:52:04'),
(106, 2, 'Add', 'User memesan produk.', '2024-11-13 19:52:19'),
(107, 2, 'View', 'User view Order.', '2024-11-13 19:52:19'),
(108, 2, 'Add', 'User memesan produk.', '2024-11-13 19:53:18'),
(109, 2, 'View', 'User view Order.', '2024-11-13 19:53:18'),
(110, 2, 'View', 'User view Order.', '2024-11-13 19:56:54'),
(111, 2, 'View', 'User view Order.', '2024-11-13 19:58:42'),
(112, 2, 'View', 'User view Order.', '2024-11-13 19:59:22'),
(113, 2, 'View', 'User view Order.', '2024-11-13 19:59:35'),
(114, 2, 'View', 'User view Order.', '2024-11-13 20:06:47'),
(115, 2, 'View', 'User view History.', '2024-11-13 20:13:20'),
(116, 2, 'View', 'User view History.', '2024-11-13 20:13:30'),
(117, 2, 'View', 'User view History.', '2024-11-13 20:14:13'),
(118, 2, 'View', 'User view History.', '2024-11-13 20:14:32'),
(119, 2, 'View', 'User view History.', '2024-11-13 20:15:27'),
(120, 2, 'View', 'User view History.', '2024-11-13 20:16:19'),
(121, 2, 'View', 'User view History.', '2024-11-13 20:18:34'),
(122, 2, 'View', 'User view History.', '2024-11-13 20:19:15'),
(123, 2, 'View', 'User view History.', '2024-11-13 20:19:31'),
(124, 2, 'View', 'User view History.', '2024-11-13 20:19:36'),
(125, 2, 'View', 'User view History.', '2024-11-13 20:19:47'),
(126, 2, 'View', 'User view History.', '2024-11-13 20:19:52'),
(127, 2, 'View', 'User view History.', '2024-11-13 20:21:13'),
(128, 2, 'View', 'User view History.', '2024-11-13 20:21:48'),
(129, 2, 'View', 'User view History.', '2024-11-13 20:22:27'),
(130, 2, 'View', 'User view History.', '2024-11-13 20:22:40'),
(131, 2, 'View', 'User view History.', '2024-11-13 20:23:07'),
(132, 2, 'View', 'User view History.', '2024-11-13 20:23:46'),
(133, 2, 'View', 'User view History.', '2024-11-13 20:24:28'),
(134, 2, 'View', 'User view History.', '2024-11-13 20:26:08'),
(135, 2, 'View', 'User view History.', '2024-11-13 20:27:01'),
(136, 2, 'View', 'User view History.', '2024-11-13 20:27:11'),
(137, 2, 'View', 'User view History.', '2024-11-13 20:27:56'),
(138, 2, 'View', 'User view History.', '2024-11-13 20:28:43'),
(139, 2, 'View', 'User view History.', '2024-11-13 20:28:44'),
(140, 2, 'View', 'User view History.', '2024-11-13 20:28:44'),
(141, 2, 'View', 'User view History.', '2024-11-13 20:29:02'),
(142, 2, 'View', 'User view History.', '2024-11-13 20:29:24'),
(143, 2, 'View', 'User view History.', '2024-11-13 20:29:51'),
(144, 2, 'View', 'User view History.', '2024-11-13 20:30:33'),
(145, 2, 'View', 'User view History.', '2024-11-13 20:30:46'),
(146, 2, 'View', 'User view History.', '2024-11-13 20:31:04'),
(147, 2, 'View', 'User view History.', '2024-11-13 20:31:12'),
(148, 2, 'View', 'User view History.', '2024-11-13 20:31:51'),
(149, 2, 'View', 'User view History.', '2024-11-13 20:32:00'),
(150, 2, 'View', 'User view History.', '2024-11-13 20:35:23'),
(151, 2, 'View', 'User view History.', '2024-11-13 20:42:26'),
(152, 2, 'View', 'User view History.', '2024-11-13 20:43:17'),
(153, 2, 'View', 'User view History.', '2024-11-13 20:43:50'),
(154, 2, 'View', 'User view History.', '2024-11-13 20:44:13'),
(155, 2, 'View', 'User view History.', '2024-11-13 20:44:36'),
(156, 2, 'View', 'User view History.', '2024-11-13 20:44:49'),
(157, 2, 'View', 'User view History.', '2024-11-13 20:45:18'),
(158, 2, 'View', 'User view History.', '2024-11-13 20:49:16'),
(159, 2, 'View', 'User view History.', '2024-11-13 20:51:33'),
(160, 2, 'View', 'User view History.', '2024-11-13 20:52:10'),
(161, 2, 'View', 'User view History.', '2024-11-13 20:52:19'),
(162, 2, 'View', 'User view History.', '2024-11-13 20:52:26'),
(163, 2, 'View', 'User view History.', '2024-11-13 20:52:27'),
(164, 2, 'View', 'User view History.', '2024-11-13 20:54:40'),
(165, 2, 'View', 'User view History.', '2024-11-13 20:56:17'),
(166, 2, 'View', 'User view History.', '2024-11-13 20:56:56'),
(167, 2, 'View', 'User view Order.', '2024-11-13 20:57:04'),
(168, 2, 'View', 'User view History.', '2024-11-13 20:57:07'),
(169, 2, 'View', 'User view History.', '2024-11-13 20:57:12'),
(170, 2, 'View', 'User view History.', '2024-11-13 20:57:52'),
(171, 2, 'View', 'User view History.', '2024-11-13 21:00:37'),
(172, 2, 'View', 'User view Siswa Menu.', '2024-11-13 21:00:38'),
(173, 2, 'View', 'User view Siswa Menu.', '2024-11-13 21:00:39'),
(174, 2, 'View', 'User view Add User.', '2024-11-13 21:00:40'),
(175, 2, 'Add', 'User add user.', '2024-11-13 21:00:44'),
(176, 2, 'View', 'User view Add User.', '2024-11-13 21:00:44'),
(177, 2, 'View', 'User view Siswa Menu.', '2024-11-13 21:00:45'),
(178, 2, 'View', 'User view Siswa Menu.', '2024-11-13 21:00:46'),
(179, 2, 'View', 'User view Siswa Menu.', '2024-11-13 21:00:46'),
(180, 2, 'View', 'User view Siswa Menu.', '2024-11-13 21:00:47'),
(181, 2, 'View', 'User view Siswa Menu.', '2024-11-13 21:00:48'),
(182, 2, 'View', 'User view Siswa Menu.', '2024-11-13 21:00:48'),
(183, 2, 'View', 'User view Order.', '2024-11-13 21:00:56'),
(184, 2, 'View', 'User view History.', '2024-11-13 21:00:58'),
(185, 2, 'View', 'User view Order.', '2024-11-13 21:01:00'),
(186, 2, 'View', 'User view Siswa Menu.', '2024-11-13 21:01:01'),
(187, 2, 'View', 'User view Siswa Menu.', '2024-11-13 21:01:35'),
(188, 2, 'View', 'User view Add User.', '2024-11-13 21:01:35'),
(189, 2, 'View', 'User view Siswa Menu.', '2024-11-13 21:01:36'),
(190, 2, 'View', 'User view Siswa Menu.', '2024-11-13 21:02:20'),
(191, 2, 'View', 'User view Siswa Menu.', '2024-11-13 21:02:21'),
(192, 2, 'View', 'User view Siswa Menu.', '2024-11-13 21:02:21'),
(193, 2, 'View', 'User view Siswa Menu.', '2024-11-13 21:02:22'),
(194, 2, 'View', 'User view Siswa Menu.', '2024-11-13 21:02:34'),
(195, 2, 'View', 'User view Siswa Menu.', '2024-11-13 21:03:10'),
(196, 2, 'View', 'User view Siswa Menu.', '2024-11-13 21:03:11'),
(197, 2, 'View', 'User view Siswa Menu.', '2024-11-13 21:03:12'),
(198, 2, 'View', 'User view Siswa Menu.', '2024-11-13 21:03:12'),
(199, 2, 'View', 'User view Siswa Menu.', '2024-11-13 21:03:13'),
(200, 2, 'View', 'User view Siswa Menu.', '2024-11-13 21:03:24'),
(201, 2, 'View', 'User view Siswa Menu.', '2024-11-13 21:03:26'),
(202, 2, 'View', 'User view Siswa Menu.', '2024-11-13 21:03:26'),
(203, 2, 'View', 'User view Siswa Menu.', '2024-11-13 21:03:31'),
(204, 2, 'View', 'User view Order.', '2024-11-13 21:03:31'),
(205, 2, 'View', 'User view Siswa Menu.', '2024-11-13 21:03:32'),
(206, 2, 'View', 'User view Siswa Menu.', '2024-11-13 21:03:39'),
(207, 2, 'View', 'User view Siswa Menu.', '2024-11-13 21:05:01'),
(208, 2, 'View', 'User view Siswa Menu.', '2024-11-13 21:05:30'),
(209, 2, 'View', 'User view Siswa Menu.', '2024-11-13 21:05:46'),
(210, 2, 'View', 'User view Siswa Menu.', '2024-11-13 21:06:06'),
(211, 2, 'View', 'User view Siswa Menu.', '2024-11-13 21:07:08'),
(212, 2, 'View', 'User view Siswa Menu.', '2024-11-13 21:07:20'),
(213, 2, 'View', 'User view Siswa Menu.', '2024-11-13 21:07:30'),
(214, 2, 'View', 'User view Siswa Menu.', '2024-11-13 21:07:35'),
(215, 2, 'View', 'User view Siswa Menu.', '2024-11-13 21:07:56'),
(216, 2, 'View', 'User view Siswa Menu.', '2024-11-13 21:08:46'),
(217, 2, 'View', 'User view Siswa Menu.', '2024-11-13 21:09:27'),
(218, 2, 'View', 'User view Customer Menu.', '2024-11-13 21:13:54'),
(219, 2, 'View', 'User view Customer Menu.', '2024-11-13 21:13:57'),
(220, 2, 'View', 'User view Customer Menu.', '2024-11-13 21:14:39'),
(221, 2, 'View', 'User view Customer Menu.', '2024-11-13 21:14:40'),
(222, 2, 'View', 'User view Customer Menu.', '2024-11-13 21:15:20'),
(223, 2, 'View', 'User view Customer Menu.', '2024-11-13 21:15:21'),
(224, 2, 'View', 'User view EditCustomer Menu.', '2024-11-13 21:16:09'),
(225, 2, 'View', 'User view EditCustomer Menu.', '2024-11-13 21:16:25'),
(226, 2, 'View', 'User view EditCustomer Menu.', '2024-11-13 21:17:14'),
(227, 2, 'View', 'User view EditCustomer Menu.', '2024-11-13 21:17:14'),
(228, 2, 'View', 'User view EditCustomer Menu.', '2024-11-13 21:17:15'),
(229, 2, 'View', 'User view EditCustomer Menu.', '2024-11-13 21:19:38'),
(230, 2, 'View', 'User view EditCustomer Menu.', '2024-11-13 21:19:38'),
(231, 2, 'View', 'User view EditCustomer Menu.', '2024-11-13 21:19:53'),
(232, 2, 'View', 'User view EditCustomer Menu.', '2024-11-13 21:19:57'),
(233, 2, 'View', 'User view EditCustomer Menu.', '2024-11-13 21:20:05'),
(234, 2, 'View', 'User view EditCustomer Menu.', '2024-11-13 21:20:58'),
(235, 2, 'View', 'User view EditCustomer Menu.', '2024-11-13 21:20:58'),
(236, 2, 'View', 'User view EditCustomer Menu.', '2024-11-13 21:20:59'),
(237, 2, 'View', 'User view EditCustomer Menu.', '2024-11-13 21:21:15'),
(238, 2, 'View', 'User view EditCustomer Menu.', '2024-11-13 21:23:26'),
(239, 2, 'View', 'User view EditCustomer Menu.', '2024-11-13 21:23:32'),
(240, 2, 'Add', 'User edited customer.', '2024-11-13 21:24:54'),
(241, 2, 'View', 'User view Customer Menu.', '2024-11-13 21:24:54'),
(242, 2, 'View', 'User view Order.', '2024-11-13 21:24:58'),
(243, 2, 'View', 'User view Customer Menu.', '2024-11-13 21:24:58'),
(244, 2, 'View', 'User view Dashboard.', '2024-11-13 21:24:59'),
(245, 2, 'View', 'User view Order.', '2024-11-13 21:24:59'),
(246, 2, 'View', 'User view Customer Menu.', '2024-11-13 21:25:00'),
(247, 2, 'View', 'User view Dashboard.', '2024-11-13 21:25:00'),
(248, 2, 'View', 'User view Order.', '2024-11-13 21:25:01'),
(249, 2, 'View', 'User view Customer Menu.', '2024-11-13 21:25:01'),
(250, 2, 'View', 'User view Dashboard.', '2024-11-13 21:25:02'),
(251, 2, 'View', 'User view Customer Menu.', '2024-11-13 21:25:03'),
(252, 2, 'View', 'User view Customer Menu.', '2024-11-13 21:25:03'),
(253, 2, 'View', 'User view Order.', '2024-11-13 21:25:03'),
(254, 2, 'View', 'User view Dashboard.', '2024-11-13 21:25:04'),
(255, 2, 'View', 'User view Dashboard.', '2024-11-13 21:25:14'),
(256, 2, 'View', 'User view Dashboard.', '2024-11-13 21:25:52'),
(257, 2, 'View', 'User view Dashboard.', '2024-11-13 21:26:37'),
(258, 2, 'View', 'User view Dashboard.', '2024-11-13 21:26:42'),
(259, 2, 'View', 'User view Dashboard.', '2024-11-13 21:27:36'),
(260, 2, 'View', 'User view Dashboard.', '2024-11-13 21:28:13'),
(261, 2, 'View', 'User view Dashboard.', '2024-11-13 21:28:25'),
(262, 2, 'View', 'User view Dashboard.', '2024-11-13 21:28:26'),
(263, 2, 'View', 'User view Dashboard.', '2024-11-13 21:28:26'),
(264, 2, 'View', 'User view Order.', '2024-11-13 21:28:26'),
(265, 2, 'View', 'User view Dashboard.', '2024-11-13 21:28:27'),
(266, 2, 'View', 'User view Dashboard.', '2024-11-13 21:29:08'),
(267, 2, 'View', 'User view Customer Menu.', '2024-11-13 21:29:35'),
(268, 2, 'View', 'User view Customer Menu.', '2024-11-13 21:30:30'),
(269, 2, 'View', 'User view Customer Menu.', '2024-11-13 21:30:31'),
(270, 2, 'View', 'User view Customer Menu.', '2024-11-13 21:30:32'),
(271, 2, 'View', 'User view Customer Menu.', '2024-11-13 21:30:33'),
(272, 2, 'View', 'User view Customer Menu.', '2024-11-13 21:30:33'),
(273, 2, 'View', 'User view Customer Menu.', '2024-11-13 21:30:40'),
(274, 2, 'View', 'User view Customer Menu.', '2024-11-13 21:30:48'),
(275, 2, 'View', 'User view Customer Menu.', '2024-11-13 21:31:45'),
(276, 2, 'View', 'User view Customer Menu.', '2024-11-13 21:32:26'),
(277, 2, 'View', 'User view Customer Menu.', '2024-11-13 21:33:03'),
(278, 2, 'View', 'User view produk Menu.', '2024-11-13 21:34:15'),
(279, 2, 'View', 'User view EditProduk Menu.', '2024-11-13 21:34:17'),
(280, 2, 'View', 'User view EditProduk Menu.', '2024-11-13 21:34:18'),
(281, 2, 'View', 'User view Order.', '2024-11-13 21:34:37'),
(282, 2, 'View', 'User view produk Menu.', '2024-11-13 21:34:43'),
(283, 2, 'View', 'User view EditProduk Menu.', '2024-11-13 21:34:45'),
(284, 2, 'Updated', 'User edited customer.', '2024-11-13 21:36:14'),
(285, 2, 'View', 'User view Customer Menu.', '2024-11-13 21:36:14'),
(286, 2, 'View', 'User view produk Menu.', '2024-11-13 21:36:17'),
(287, 2, 'View', 'User view Customer Menu.', '2024-11-13 21:36:18'),
(288, 2, 'View', 'User view EditCustomer Menu.', '2024-11-13 21:36:21'),
(289, 2, 'View', 'User view produk Menu.', '2024-11-13 21:36:36'),
(290, 2, 'View', 'User view EditProduk Menu.', '2024-11-13 21:36:38'),
(291, 2, 'Updated', 'User edited customer.', '2024-11-13 21:36:40'),
(292, 2, 'View', 'User view Customer Menu.', '2024-11-13 21:36:40'),
(293, 2, 'View', 'User view produk Menu.', '2024-11-13 21:36:41'),
(294, 2, 'View', 'User view produk Menu.', '2024-11-13 21:36:54'),
(295, 2, 'View', 'User view EditProduk Menu.', '2024-11-13 21:36:56'),
(296, 2, 'Updated', 'User edited produk.', '2024-11-13 21:36:58'),
(297, 2, 'View', 'User view Customer Menu.', '2024-11-13 21:36:58'),
(298, 2, 'View', 'User view produk Menu.', '2024-11-13 21:37:00'),
(299, 2, 'View', 'User view produk Menu.', '2024-11-13 21:37:00'),
(300, 2, 'View', 'User view EditProduk Menu.', '2024-11-13 21:37:07'),
(301, 2, 'Updated', 'User edited produk.', '2024-11-13 21:37:09'),
(302, 2, 'View', 'User view produk Menu.', '2024-11-13 21:37:09'),
(303, 2, 'View', 'User view EditProduk Menu.', '2024-11-13 21:37:24'),
(304, 2, 'Updated', 'User edited produk.', '2024-11-13 21:37:26'),
(305, 2, 'View', 'User view produk Menu.', '2024-11-13 21:37:26'),
(306, 2, 'View', 'User view Customer Menu.', '2024-11-13 21:49:34'),
(307, 2, 'View', 'User view Order.', '2024-11-13 21:49:35'),
(308, 2, 'View', 'User view produk Menu.', '2024-11-13 21:49:35'),
(309, 2, 'View', 'User view produk Menu.', '2024-11-13 21:50:27'),
(310, 2, 'View', 'User view produk Menu.', '2024-11-13 21:50:36'),
(311, 2, 'View', 'User view produk Menu.', '2024-11-13 21:51:33'),
(312, 2, 'View', 'User view Add User.', '2024-11-13 21:51:34'),
(313, 2, 'View', 'User view produk Menu.', '2024-11-13 21:51:41'),
(314, 2, 'View', 'User view Add User.', '2024-11-13 21:51:41'),
(315, 2, 'View', 'User view produk Menu.', '2024-11-13 21:52:20'),
(316, 2, 'View', 'User view Add product.', '2024-11-13 21:52:20'),
(317, 2, 'View', 'User view Add product.', '2024-11-13 21:53:12'),
(318, 2, 'View', 'User view Customer Menu.', '2024-11-13 21:53:15'),
(319, 2, 'View', 'User view produk Menu.', '2024-11-13 21:53:15'),
(320, 2, 'View', 'User view Add product.', '2024-11-13 21:53:17'),
(321, 2, 'View', 'User view Add product.', '2024-11-13 21:54:15'),
(322, 2, 'Add', 'User Add produk.', '2024-11-13 21:54:27'),
(323, 2, 'View', 'User view produk Menu.', '2024-11-13 21:54:27'),
(324, 2, 'View', 'User view Dashboard.', '2024-11-13 21:56:21'),
(325, 2, 'Logout', 'User Has Logout.', '2024-11-13 21:56:22'),
(326, NULL, 'Login', 'User Has Log in.', '2024-11-13 21:57:36'),
(327, 2, 'View', 'User view Dashboard.', '2024-11-13 21:57:36'),
(328, 2, 'View', 'User view Dashboard.', '2024-11-13 21:57:37'),
(329, 2, 'View', 'User view Order.', '2024-11-13 21:57:38'),
(330, 2, 'View', 'User view Customer Menu.', '2024-11-13 21:57:38'),
(331, 2, 'View', 'User view produk Menu.', '2024-11-13 21:57:38'),
(332, 2, 'View', 'User view Admin Menu.', '2024-11-13 21:57:39'),
(333, 2, 'View', 'User view Setting.', '2024-11-13 21:57:39'),
(334, 2, 'View', 'User view Activity Log.', '2024-11-13 21:57:40'),
(335, 2, 'View', 'User view Setting.', '2024-11-13 21:57:41'),
(336, 2, 'Updated', 'User Has Updated The Logo', '2024-11-13 21:57:49'),
(337, 2, 'View', 'User view Setting.', '2024-11-13 21:57:51'),
(338, 2, 'Updated', 'User Has Updated The Logo', '2024-11-13 21:58:29'),
(339, 2, 'View', 'User view Setting.', '2024-11-13 21:58:29'),
(340, 2, 'View', 'User view Dashboard.', '2024-11-13 21:58:30'),
(341, 2, 'View', 'User view Setting.', '2024-11-13 21:58:31'),
(342, 2, 'View', 'User view Activity Log.', '2024-11-13 21:58:32'),
(343, 2, 'View', 'User view Admin Menu.', '2024-11-13 21:58:34'),
(344, 2, 'View', 'User view PEtugas Menu.', '2024-11-13 21:58:36'),
(345, 2, 'View', 'User view produk Menu.', '2024-11-13 21:58:38'),
(346, 2, 'View', 'User view Customer Menu.', '2024-11-13 21:58:42'),
(347, 2, 'View', 'User view Order.', '2024-11-13 21:58:42'),
(348, 2, 'View', 'User view Dashboard.', '2024-11-13 21:58:43'),
(349, 2, 'Logout', 'User Has Logout.', '2024-11-13 21:58:47'),
(350, NULL, 'Login', 'User Has Log in.', '2024-11-13 21:58:52'),
(351, 1, 'View', 'User view Dashboard.', '2024-11-13 21:58:52'),
(352, 1, 'View', 'User view Dashboard.', '2024-11-13 21:58:54'),
(353, 1, 'View', 'User view Dashboard.', '2024-11-13 21:58:58'),
(354, 1, 'View', 'User view Dashboard.', '2024-11-13 21:59:11'),
(355, 1, 'View', 'User view Dashboard.', '2024-11-13 21:59:13'),
(356, 1, 'View', 'User view Dashboard.', '2024-11-13 21:59:25'),
(357, 1, 'View', 'User view Dashboard.', '2024-11-13 21:59:28'),
(358, 1, 'View', 'User view Dashboard.', '2024-11-13 21:59:38'),
(359, 1, 'View', 'User view Order.', '2024-11-13 21:59:39'),
(360, 1, 'View', 'User view Order.', '2024-11-13 21:59:41'),
(361, 1, 'View', 'User view Order.', '2024-11-13 22:00:15'),
(362, 1, 'View', 'User view Order.', '2024-11-13 22:00:15'),
(363, 1, 'View', 'User view Order.', '2024-11-13 22:00:17'),
(364, 1, 'View', 'User view Order.', '2024-11-13 22:00:24'),
(365, 1, 'View', 'User view History.', '2024-11-13 22:00:25'),
(366, 1, 'View', 'User view Order.', '2024-11-13 22:00:26'),
(367, 1, 'View', 'User view History.', '2024-11-13 22:00:27'),
(368, 1, 'View', 'User view Order.', '2024-11-13 22:00:27'),
(369, 1, 'View', 'User view History.', '2024-11-13 22:00:28'),
(370, 1, 'View', 'User view Order.', '2024-11-13 22:00:28'),
(371, 1, 'View', 'User view History.', '2024-11-13 22:00:29'),
(372, 1, 'View', 'User view Customer Menu.', '2024-11-13 22:00:30'),
(373, 1, 'View', 'User view EditCustomer Menu.', '2024-11-13 22:00:32'),
(374, 1, 'View', 'User view EditCustomer Menu.', '2024-11-13 22:00:34'),
(375, 1, 'Updated', 'User edited customer.', '2024-11-13 22:00:54'),
(376, 1, 'View', 'User view Customer Menu.', '2024-11-13 22:00:54'),
(377, 1, 'View', 'User view produk Menu.', '2024-11-13 22:00:55'),
(378, 1, 'View', 'User view Add product.', '2024-11-13 22:00:56'),
(379, 1, 'Add', 'User Add produk.', '2024-11-13 22:01:02'),
(380, 1, 'View', 'User view produk Menu.', '2024-11-13 22:01:02'),
(381, 1, 'View', 'User view EditProduk Menu.', '2024-11-13 22:01:03'),
(382, 1, 'View', 'User view produk Menu.', '2024-11-13 22:01:06'),
(383, 1, 'View', 'User view EditProduk Menu.', '2024-11-13 22:01:09'),
(384, 1, 'View', 'User view produk Menu.', '2024-11-13 22:01:10'),
(385, 1, 'View', 'User view EditProduk Menu.', '2024-11-13 22:01:11'),
(386, 1, 'View', 'User view produk Menu.', '2024-11-13 22:01:12'),
(387, 1, 'View', 'User view produk Menu.', '2024-11-13 22:01:28'),
(388, 1, 'View', 'User view EditProduk Menu.', '2024-11-13 22:01:29'),
(389, 1, 'View', 'User view produk Menu.', '2024-11-13 22:01:31'),
(390, 1, 'View', 'User view EditProduk Menu.', '2024-11-13 22:01:33'),
(391, 1, 'View', 'User view produk Menu.', '2024-11-13 22:01:34'),
(392, 1, 'View', 'User view produk Menu.', '2024-11-13 22:01:41'),
(393, 1, 'View', 'User view produk Menu.', '2024-11-13 22:01:41'),
(394, 1, 'View', 'User view Customer Menu.', '2024-11-13 22:01:42'),
(395, 1, 'View', 'User view EditCustomer Menu.', '2024-11-13 22:01:43'),
(396, 1, 'View', 'User view Customer Menu.', '2024-11-13 22:01:45'),
(397, 1, 'View', 'User view EditCustomer Menu.', '2024-11-13 22:01:47'),
(398, 1, 'View', 'User view produk Menu.', '2024-11-13 22:01:48'),
(399, 1, 'View', 'User view EditProduk Menu.', '2024-11-13 22:01:50'),
(400, 1, 'View', 'User view produk Menu.', '2024-11-13 22:01:51'),
(401, 1, 'View', 'User view EditProduk Menu.', '2024-11-13 22:01:52'),
(402, 1, 'View', 'User view produk Menu.', '2024-11-13 22:01:53'),
(403, 1, 'View', 'User view Customer Menu.', '2024-11-13 22:01:54'),
(404, 1, 'View', 'User view Customer Menu.', '2024-11-13 22:02:30'),
(405, 1, 'View', 'User view EditCustomer Menu.', '2024-11-13 22:02:31'),
(406, 1, 'View', 'User view Customer Menu.', '2024-11-13 22:02:33'),
(407, 1, 'View', 'User view Order.', '2024-11-13 22:02:33'),
(408, 1, 'View', 'User view History.', '2024-11-13 22:02:35'),
(409, 1, 'View', 'User view Customer Menu.', '2024-11-13 22:02:36'),
(410, 1, 'View', 'User view EditCustomer Menu.', '2024-11-13 22:02:37'),
(411, 1, 'View', 'User view Customer Menu.', '2024-11-13 22:02:38'),
(412, 1, 'View', 'User view EditCustomer Menu.', '2024-11-13 22:03:23'),
(413, 1, 'View', 'User view EditCustomer Menu.', '2024-11-13 22:03:24'),
(414, 1, 'View', 'User view EditCustomer Menu.', '2024-11-13 22:03:25'),
(415, 1, 'View', 'User view EditCustomer Menu.', '2024-11-13 22:04:19'),
(416, 1, 'View', 'User view EditCustomer Menu.', '2024-11-13 22:04:19'),
(417, 1, 'View', 'User view EditCustomer Menu.', '2024-11-13 22:04:49'),
(418, 1, 'Updated', 'User edited customer.', '2024-11-13 22:04:53'),
(419, 1, 'View', 'User view Customer Menu.', '2024-11-13 22:04:53'),
(420, 1, 'View', 'User view Customer Menu.', '2024-11-13 22:04:55'),
(421, 1, 'View', 'User view EditCustomer Menu.', '2024-11-13 22:04:56'),
(422, 1, 'Updated', 'User edited customer.', '2024-11-13 22:05:00'),
(423, 1, 'View', 'User view Customer Menu.', '2024-11-13 22:05:00'),
(424, 1, 'View', 'User view EditCustomer Menu.', '2024-11-13 22:05:02'),
(425, 1, 'View', 'User view Customer Menu.', '2024-11-13 22:05:04'),
(426, 1, 'View', 'User view Customer Menu.', '2024-11-13 22:05:05'),
(427, 1, 'View', 'User view Customer Menu.', '2024-11-13 22:05:05'),
(428, 1, 'View', 'User view EditCustomer Menu.', '2024-11-13 22:05:06'),
(429, 1, 'View', 'User view EditCustomer Menu.', '2024-11-13 22:05:07'),
(430, 1, 'View', 'User view EditCustomer Menu.', '2024-11-13 22:05:07'),
(431, 1, 'View', 'User view EditCustomer Menu.', '2024-11-13 22:05:07'),
(432, 1, 'View', 'User view EditCustomer Menu.', '2024-11-13 22:05:08'),
(433, 1, 'View', 'User view EditCustomer Menu.', '2024-11-13 22:05:16'),
(434, 1, 'View', 'User view EditCustomer Menu.', '2024-11-13 22:06:07'),
(435, 1, 'View', 'User view EditCustomer Menu.', '2024-11-13 22:06:08'),
(436, 1, 'View', 'User view EditCustomer Menu.', '2024-11-13 22:06:08'),
(437, 1, 'View', 'User view EditCustomer Menu.', '2024-11-13 22:06:08'),
(438, 1, 'View', 'User view EditCustomer Menu.', '2024-11-13 22:06:59'),
(439, 1, 'View', 'User view EditCustomer Menu.', '2024-11-13 22:07:00'),
(440, 1, 'View', 'User view EditCustomer Menu.', '2024-11-13 22:07:00'),
(441, 1, 'View', 'User view Customer Menu.', '2024-11-13 22:07:04'),
(442, 1, 'View', 'User view EditCustomer Menu.', '2024-11-13 22:07:05'),
(443, 1, 'View', 'User view Customer Menu.', '2024-11-13 22:07:07'),
(444, 1, 'View', 'User view EditCustomer Menu.', '2024-11-13 22:07:07'),
(445, 1, 'View', 'User view EditCustomer Menu.', '2024-11-13 22:07:14'),
(446, 1, 'View', 'User view EditCustomer Menu.', '2024-11-13 22:07:36'),
(447, 1, 'View', 'User view EditCustomer Menu.', '2024-11-13 22:07:36'),
(448, 1, 'View', 'User view EditCustomer Menu.', '2024-11-13 22:07:37'),
(449, 1, 'View', 'User view EditCustomer Menu.', '2024-11-13 22:07:45'),
(450, 1, 'View', 'User view EditCustomer Menu.', '2024-11-13 22:07:56'),
(451, 1, 'View', 'User view EditCustomer Menu.', '2024-11-13 22:08:25'),
(452, 1, 'View', 'User view EditCustomer Menu.', '2024-11-13 22:08:34'),
(453, 1, 'View', 'User view EditCustomer Menu.', '2024-11-13 22:08:34'),
(454, 1, 'View', 'User view Customer Menu.', '2024-11-13 22:09:00'),
(455, 1, 'View', 'User view EditCustomer Menu.', '2024-11-13 22:09:03'),
(456, 1, 'View', 'User view EditCustomer Menu.', '2024-11-13 22:09:19'),
(457, 1, 'Updated', 'User edited customer.', '2024-11-13 22:09:23'),
(458, 1, 'View', 'User view Customer Menu.', '2024-11-13 22:09:23'),
(459, 1, 'View', 'User view EditCustomer Menu.', '2024-11-13 22:09:24'),
(460, 1, 'Updated', 'User edited customer.', '2024-11-13 22:09:27'),
(461, 1, 'View', 'User view Customer Menu.', '2024-11-13 22:09:27'),
(462, 1, 'View', 'User view Customer Menu.', '2024-11-13 22:09:59'),
(463, 1, 'View', 'User view EditCustomer Menu.', '2024-11-13 22:10:00'),
(464, 1, 'Updated', 'User edited customer.', '2024-11-13 22:10:03'),
(465, 1, 'View', 'User view Customer Menu.', '2024-11-13 22:10:03'),
(466, 1, 'View', 'User view EditCustomer Menu.', '2024-11-13 22:10:04'),
(467, 1, 'View', 'User view EditCustomer Menu.', '2024-11-13 22:10:30'),
(468, 1, 'Updated', 'User edited customer.', '2024-11-13 22:10:32'),
(469, 1, 'View', 'User view Customer Menu.', '2024-11-13 22:10:32'),
(470, 1, 'View', 'User view EditCustomer Menu.', '2024-11-13 22:10:33'),
(471, 1, 'Updated', 'User edited customer.', '2024-11-13 22:10:35'),
(472, 1, 'View', 'User view Customer Menu.', '2024-11-13 22:10:35'),
(473, 1, 'View', 'User view Customer Menu.', '2024-11-13 22:10:45'),
(474, 1, 'View', 'User view EditCustomer Menu.', '2024-11-13 22:10:46'),
(475, 1, 'View', 'User view EditCustomer Menu.', '2024-11-13 22:10:47'),
(476, 1, 'View', 'User view EditCustomer Menu.', '2024-11-13 22:10:47'),
(477, 1, 'Updated', 'User edited customer.', '2024-11-13 22:11:01'),
(478, 1, 'View', 'User view Customer Menu.', '2024-11-13 22:11:01'),
(479, 1, 'View', 'User view EditCustomer Menu.', '2024-11-13 22:11:03'),
(480, 1, 'Updated', 'User edited customer.', '2024-11-13 22:11:06'),
(481, 1, 'View', 'User view Customer Menu.', '2024-11-13 22:11:06'),
(482, 1, 'View', 'User view produk Menu.', '2024-11-13 22:11:08'),
(483, 1, 'View', 'User view EditProduk Menu.', '2024-11-13 22:11:09'),
(484, 1, 'Updated', 'User edited produk.', '2024-11-13 22:11:21'),
(485, 1, 'View', 'User view produk Menu.', '2024-11-13 22:11:21'),
(486, 1, 'View', 'User view EditProduk Menu.', '2024-11-13 22:11:25'),
(487, 1, 'View', 'User view produk Menu.', '2024-11-13 22:11:26'),
(488, 1, 'Logout', 'User Has Logout.', '2024-11-13 22:11:31'),
(489, NULL, 'Login', 'User Has Log in.', '2024-11-13 22:12:24'),
(490, 2, 'View', 'User view Dashboard.', '2024-11-13 22:12:24'),
(491, 2, 'View', 'User view Order.', '2024-11-13 22:12:50'),
(492, 2, 'View', 'User view Customer Menu.', '2024-11-13 22:13:00'),
(493, 2, 'View', 'User view Customer Menu.', '2024-11-13 22:13:02'),
(494, 2, 'View', 'User view Order.', '2024-11-13 22:13:03'),
(495, 2, 'View', 'User view Order.', '2024-11-13 22:13:03'),
(496, 2, 'View', 'User view Customer Menu.', '2024-11-13 22:13:06'),
(497, 2, 'View', 'User view Order.', '2024-11-13 22:13:07'),
(498, 2, 'Add', 'User memesan produk.', '2024-11-13 22:13:23'),
(499, 2, 'View', 'User view Order.', '2024-11-13 22:13:23'),
(500, 2, 'View', 'User view History.', '2024-11-13 22:13:27'),
(501, 2, 'View', 'User view Customer Menu.', '2024-11-13 22:13:30'),
(502, 2, 'View', 'User view Order.', '2024-11-13 22:13:37'),
(503, 2, 'View', 'User view History.', '2024-11-13 22:13:37'),
(504, 2, 'View', 'User view Customer Menu.', '2024-11-13 22:13:46'),
(505, 2, 'View', 'User view EditCustomer Menu.', '2024-11-13 22:13:50'),
(506, 2, 'Updated', 'User edited customer.', '2024-11-13 22:13:58'),
(507, 2, 'View', 'User view Customer Menu.', '2024-11-13 22:13:58'),
(508, 2, 'View', 'User view produk Menu.', '2024-11-13 22:14:01'),
(509, 2, 'View', 'User view Add product.', '2024-11-13 22:14:03'),
(510, 2, 'Add', 'User Add produk.', '2024-11-13 22:14:17'),
(511, 2, 'View', 'User view produk Menu.', '2024-11-13 22:14:17'),
(512, 2, 'View', 'User view EditProduk Menu.', '2024-11-13 22:14:20'),
(513, 2, 'Updated', 'User edited produk.', '2024-11-13 22:14:27'),
(514, 2, 'View', 'User view produk Menu.', '2024-11-13 22:14:27'),
(515, 2, 'View', 'User view Admin Menu.', '2024-11-13 22:14:36'),
(516, 2, 'View', 'User view PEtugas Menu.', '2024-11-13 22:14:40'),
(517, 2, 'View', 'User view Admin Menu.', '2024-11-13 22:14:40'),
(518, 2, 'View', 'User view PEtugas Menu.', '2024-11-13 22:14:41'),
(519, 2, 'View', 'User view Admin Menu.', '2024-11-13 22:14:41'),
(520, 2, 'View', 'User view PEtugas Menu.', '2024-11-13 22:14:41'),
(521, 2, 'View', 'User view Admin Menu.', '2024-11-13 22:14:42'),
(522, 2, 'View', 'User view PEtugas Menu.', '2024-11-13 22:14:43'),
(523, 2, 'View', 'User view Admin Menu.', '2024-11-13 22:14:43'),
(524, 2, 'View', 'User view PEtugas Menu.', '2024-11-13 22:14:44'),
(525, 2, 'View', 'User view Admin Menu.', '2024-11-13 22:14:45'),
(526, 2, 'View', 'User view PEtugas Menu.', '2024-11-13 22:14:45'),
(527, 2, 'View', 'User view Add User.', '2024-11-13 22:14:47'),
(528, 2, 'Add', 'User add user.', '2024-11-13 22:14:56'),
(529, 2, 'View', 'User view Add User.', '2024-11-13 22:14:56'),
(530, 2, 'View', 'User view Admin Menu.', '2024-11-13 22:14:57'),
(531, 2, 'View', 'User view PEtugas Menu.', '2024-11-13 22:14:59'),
(532, 2, 'View', 'User view Admin Menu.', '2024-11-13 22:15:00'),
(533, 2, 'View', 'User view Setting.', '2024-11-13 22:15:01'),
(534, 2, 'View', 'User view Admin Menu.', '2024-11-13 22:15:14'),
(535, 2, 'View', 'User view Setting.', '2024-11-13 22:15:26'),
(536, 2, 'View', 'User view Admin Menu.', '2024-11-13 22:15:27'),
(537, 2, 'View', 'User view Setting.', '2024-11-13 22:15:30'),
(538, 2, 'Updated', 'User Has Updated The Logo', '2024-11-13 22:15:53'),
(539, 2, 'View', 'User view Setting.', '2024-11-13 22:15:53'),
(540, 2, 'View', 'User view Activity Log.', '2024-11-13 22:15:58'),
(541, 2, 'Logout', 'User Has Logout.', '2024-11-13 22:16:27');

-- --------------------------------------------------------

--
-- Table structure for table `detail`
--

CREATE TABLE `detail` (
  `id_detail` int(11) NOT NULL,
  `penjualan` int(11) DEFAULT NULL,
  `produk` int(11) DEFAULT NULL,
  `jumlahProduk` int(11) DEFAULT NULL,
  `subtotal` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detail`
--

INSERT INTO `detail` (`id_detail`, `penjualan`, `produk`, `jumlahProduk`, `subtotal`) VALUES
(1, 1, 1, 10, 1000.00),
(3, 2, 2, 1, 10000.00),
(4, 3, 2, 2, 20000.00),
(5, 4, 1, 2, 20000.00),
(6, 5, 1, 11, 110000.00),
(9, 8, 1, 2, 0.00),
(10, 10, 1, 3, 30000.00),
(11, 11, 2, 2, 20000.00);

--
-- Triggers `detail`
--
DELIMITER $$
CREATE TRIGGER `aa` AFTER INSERT ON `detail` FOR EACH ROW UPDATE produk SET stok=stok-NEW.jumlahProduk
WHERE id_produk=NEW.produk
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `aad` AFTER DELETE ON `detail` FOR EACH ROW UPDATE produk SET stok=stok+OLD.jumlahProduk
WHERE id_produk=OLD.produk
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `logo`
--

CREATE TABLE `logo` (
  `id_logo` int(11) NOT NULL,
  `nama_Logo` varchar(255) DEFAULT NULL,
  `logos` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `logo`
--

INSERT INTO `logo` (`id_logo`, `nama_Logo`, `logos`, `icon`) VALUES
(1, 'Aplikasi Kasir', 'Marc.jpeg', 'Marcuse.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `TLP` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama`, `alamat`, `TLP`) VALUES
(1, 'borera', '10000.00', '42'),
(2, 'petugas', 'Botania 2', '082169116807'),
(3, 'Budhi Jayanto1', 'Botania 2', '082169116807'),
(4, 'renold', 'komplek asam Banget', '421');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penjualan` int(11) NOT NULL,
  `tgl` date DEFAULT NULL,
  `pelanggan` int(11) DEFAULT NULL,
  `total_harga` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`id_penjualan`, `tgl`, `pelanggan`, `total_harga`) VALUES
(1, '2024-11-13', 1, 1000.00),
(2, '2024-11-13', 2, 10000.00),
(3, '2024-11-13', 2, 20000.00),
(4, '2024-11-13', 2, 20000.00),
(5, '2024-11-13', 2, 110000.00),
(6, '2024-11-13', 2, 20000.00),
(7, '2024-11-13', 1, 110000.00),
(8, '2024-11-13', 2, 20000.00),
(10, '2024-11-13', 3, 30000.00),
(11, '2024-11-13', 4, 20000.00);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `namas` varchar(255) DEFAULT NULL,
  `harga` decimal(10,2) DEFAULT NULL,
  `stok` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `namas`, `harga`, `stok`) VALUES
(1, 'bores', 10000.00, 42),
(2, 'paku', 10000.00, 45),
(3, 'baut', 10000.00, 100),
(4, 'HP', 99999999.99, 111),
(5, 'telepon1', 100000.00, 100);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `real` varchar(255) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  `password` varchar(11) DEFAULT NULL,
  `Level` enum('admin','petugas') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `real`, `user`, `password`, `Level`) VALUES
(1, 'petugas', 'petugas', 'petugas', 'petugas'),
(2, 'admin', 'admin', 'admin', 'admin'),
(3, 'petugas', '1', 'afb91ef692f', 'petugas'),
(4, 'Budhi Jayanto', 'admin1', '21232f297a5', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `detail`
--
ALTER TABLE `detail`
  ADD PRIMARY KEY (`id_detail`);

--
-- Indexes for table `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`id_logo`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_penjualan`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=542;

--
-- AUTO_INCREMENT for table `detail`
--
ALTER TABLE `detail`
  MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `logo`
--
ALTER TABLE `logo`
  MODIFY `id_logo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_penjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
