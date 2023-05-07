-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2023 at 07:21 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `auth_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `uuid`, `name`, `price`, `userId`, `createdAt`, `updatedAt`) VALUES
(3, 'a5f3b781-7091-4de3-b0a4-78b46d76bb6a', 'Product 3', 444, 3, '2023-05-06 18:06:06', '2023-05-06 18:06:06'),
(4, '96a0cae5-d3b4-4a5e-ae6e-8a15f4a2ea97', 'Product 4', 512, 1, '2023-05-06 18:06:31', '2023-05-06 18:06:31'),
(5, '8e1ebb48-8414-4779-866d-2eea8bafac30', 'Product 5', 322, 1, '2023-05-06 18:06:36', '2023-05-06 18:06:36'),
(7, '40b5b8cd-6aee-45ee-9f45-a097ee2b5523', 'verga', 123, 1, '2023-05-06 21:15:59', '2023-05-06 21:15:59'),
(8, '7c565eeb-4b4c-4439-bf0a-80917675cb1d', 'status', 555, 1, '2023-05-06 21:16:29', '2023-05-06 21:23:27');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `sid` varchar(36) NOT NULL,
  `expires` datetime DEFAULT NULL,
  `data` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`) VALUES
('4q8wjAmO9bkFiWSVWaj4ATbK70IwQm7x', '2023-05-07 21:06:18', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-05-06 21:06:18', '2023-05-06 21:06:18'),
('69jvJHty5TMJTBYgVctdOV_4nzZp0Nf3', '2023-05-07 21:06:11', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-05-06 21:06:11', '2023-05-06 21:06:11'),
('6vMRvoCbw02xYn0QqsR1CNDRmLCM9OB5', '2023-05-07 21:40:31', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-05-06 21:40:31', '2023-05-06 21:40:31'),
('8ChwK9ca58LsDbIGDsOlRjGtfriG7Xzp', '2023-05-07 21:23:27', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-05-06 21:23:27', '2023-05-06 21:23:27'),
('ai8kAa1gxlOWr3lnVCn6aN8Qx_8hdh7w', '2023-05-07 20:55:29', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-05-06 20:55:29', '2023-05-06 20:55:29'),
('asRj3K89ud-fHd4wsfwXknOYD-1-T3a7', '2023-05-07 20:55:32', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-05-06 20:55:32', '2023-05-06 20:55:32'),
('b7Qzkgbsldjpr8BblJQGlufwcRe5CCae', '2023-05-07 20:44:52', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-05-06 20:44:52', '2023-05-06 20:44:52'),
('BCG5-stMHxTsVoWmiQcL_iTAiuxiAm-i', '2023-05-07 20:20:08', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-05-06 20:20:08', '2023-05-06 20:20:08'),
('BGKkIzacxGpNNWATedLY6kTg4jOoQzQf', '2023-05-07 21:11:08', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-05-06 21:11:08', '2023-05-06 21:11:08'),
('c1OBEtEb2H4vtey0MpYs2NIDjModUfp_', '2023-05-07 20:35:37', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-05-06 20:35:37', '2023-05-06 20:35:37'),
('D1FM9znH881ClYq6upsrWM_0lU8M52kO', '2023-05-07 21:15:50', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-05-06 21:15:50', '2023-05-06 21:15:50'),
('DIaJTXmu20yc1_OCBVhRFTRYS4aTi8t8', '2023-05-07 20:35:56', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-05-06 20:35:56', '2023-05-06 20:35:56'),
('EIu9zwJdg-xoJVoy8McBCGciIi2fQW6v', '2023-05-07 20:22:03', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-05-06 20:22:03', '2023-05-06 20:22:03'),
('eMaHyxaZnMyeRzrfNPxYdyllSIHshmF-', '2023-05-07 20:42:13', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-05-06 20:42:13', '2023-05-06 20:42:13'),
('ewR2CAYMnnjeErc5bnrJRksI2q4po-yb', '2023-05-07 20:48:36', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-05-06 20:48:36', '2023-05-06 20:48:36'),
('FcUFSsV6X4LNcfHTQFttZWNhcnwn52O6', '2023-05-07 21:06:07', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-05-06 21:06:07', '2023-05-06 21:06:07'),
('G1Jjavm2TIkbeta0OgfLogaeCUltGGzA', '2023-05-07 20:19:45', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-05-06 20:19:45', '2023-05-06 20:19:45'),
('GO-p5fIPb_3_ZPFy0MDnd4LbzgrlkvMX', '2023-05-07 20:47:38', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-05-06 20:47:38', '2023-05-06 20:47:38'),
('gvFPI5cpIo8jhfaXONU3947HOIX0h3-A', '2023-05-07 21:45:16', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-05-06 21:45:16', '2023-05-06 21:45:16'),
('gZwZXkXL3i3TG6iFe7xeZVUeOjNkuvxZ', '2023-05-07 21:15:59', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-05-06 21:15:59', '2023-05-06 21:15:59'),
('HdHj9a0kJvMLHsR13r-WojV6HtGfcygN', '2023-05-07 20:57:02', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-05-06 20:57:02', '2023-05-06 20:57:02'),
('HKnSGy91-wwIV4GRcCwfECjpXcKKufdA', '2023-05-07 20:42:56', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-05-06 20:42:56', '2023-05-06 20:42:56'),
('HtJgtW7V2LW-ZKcl_-IyjGCVFZ0S8RqM', '2023-05-07 21:06:14', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-05-06 21:06:14', '2023-05-06 21:06:14'),
('htPjwwQ0Gcq0iUS4duhnZNFL_rrGAGwy', '2023-05-07 21:45:40', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"9105ccfe-466d-42db-812c-bdf534aadddc\"}', '2023-05-06 21:06:18', '2023-05-06 21:45:40'),
('IaCABNrNOML8I3CDxjjFm9Fqu5bIgPDp', '2023-05-07 18:33:10', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"cb44a454-fe46-426f-a883-119c703ceff2\"}', '2023-05-06 18:33:07', '2023-05-06 18:33:10'),
('ihN8C0W_Fy2V_GZKvwqRNT9dAoeJ_gU8', '2023-05-07 20:23:18', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-05-06 20:23:18', '2023-05-06 20:23:18'),
('I_0I6XJTKHrqPOSMn8kwi7FAsIXpLo_r', '2023-05-07 20:35:43', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-05-06 20:35:43', '2023-05-06 20:35:43'),
('j2-g7gzZE0BNqtojXLlb7a0btU20Fru5', '2023-05-07 21:44:21', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-05-06 21:44:21', '2023-05-06 21:44:21'),
('jaqhCcc-O3KC_YHUekWUchs_mGG7xiOc', '2023-05-07 21:15:40', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-05-06 21:15:40', '2023-05-06 21:15:40'),
('JG4LNL1TwUgm7TEwQRwCXa7c4B2EKAFa', '2023-05-07 20:45:38', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-05-06 20:45:38', '2023-05-06 20:45:38'),
('jYIOCe10pNr_fQq_EGfrQeWs5VZg6A9k', '2023-05-07 21:35:08', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-05-06 21:35:08', '2023-05-06 21:35:08'),
('KCN2ItffBHJ0dNH6tHTo5SEuKpAz9eE7', '2023-05-07 20:55:38', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-05-06 20:55:38', '2023-05-06 20:55:38'),
('KTgayTBp2P60sYvi5q9x5xk65dpu4N2g', '2023-05-07 20:57:08', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-05-06 20:57:08', '2023-05-06 20:57:08'),
('LemFfXY8Rst3J3uw6yDQqgz0bpn8-940', '2023-05-07 20:38:58', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-05-06 20:38:58', '2023-05-06 20:38:58'),
('MYVtKChk1qki4QoxuuJCvaM2p-2CFAr3', '2023-05-07 20:35:15', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-05-06 20:35:15', '2023-05-06 20:35:15'),
('o0Q2OuaTopWVs1M3oXbPSBtZQCFzAmMD', '2023-05-07 21:39:13', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-05-06 21:39:13', '2023-05-06 21:39:13'),
('OyfDRpnCph83TrnHyp06PbvQjWrqZVHP', '2023-05-07 20:21:49', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-05-06 20:21:49', '2023-05-06 20:21:49'),
('Pt-otVvmMJRYBKCB1fJtr1jm1WzyFDe8', '2023-05-07 20:57:11', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-05-06 20:57:11', '2023-05-06 20:57:11'),
('qcu9cUH6xPIc8vaC68H6YXeLXvbvB1ey', '2023-05-07 20:40:06', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-05-06 20:40:06', '2023-05-06 20:40:06'),
('R3gb0ABTbiG8eNzssgJj80JPcTf61GNk', '2023-05-07 21:12:03', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-05-06 21:12:03', '2023-05-06 21:12:03'),
('R9uGrO5o2LSErd5Gn_O2CtrwPtlDd0Ip', '2023-05-07 20:23:30', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-05-06 20:23:30', '2023-05-06 20:23:30'),
('RAbuWRpcmvr6AZyYtTYsJTMUsAFUBN-Y', '2023-05-07 20:21:10', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-05-06 20:21:10', '2023-05-06 20:21:10'),
('SI56sicB9VgqEYAm2Miyinuub9FXLFdY', '2023-05-07 20:41:08', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-05-06 20:41:08', '2023-05-06 20:41:08'),
('SXZ08OL5e5TAPm1z0gFRLvnW2rhySLwX', '2023-05-07 21:16:29', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-05-06 21:16:29', '2023-05-06 21:16:29'),
('v3TnszmQLpcSt4tKiUZ2Aa0_9SKKup2w', '2023-05-07 20:57:15', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-05-06 20:57:15', '2023-05-06 20:57:15'),
('w-5j2v_XZ7y9cIcT1i8IF4f6-ScYGCZG', '2023-05-07 20:42:20', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-05-06 20:42:20', '2023-05-06 20:42:20'),
('w132EAeevmuyFKy736bB1sRqgxWQPS2s', '2023-05-07 20:48:40', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-05-06 20:48:40', '2023-05-06 20:48:40'),
('WRFK-J7JWszS0TOjB9rKFF5KMfEQK8ZX', '2023-05-07 21:40:15', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-05-06 21:40:15', '2023-05-06 21:40:15'),
('WtLSi_bmfbe53Wd5z9PBCHJAd17voO9R', '2023-05-07 21:39:28', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-05-06 21:39:28', '2023-05-06 21:39:28'),
('x090n93oX1nlexygGJJHdOmFl8drf0f2', '2023-05-07 20:20:00', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-05-06 20:20:00', '2023-05-06 20:20:00'),
('XHOLXV4QJTelYI0KfIoAfi-IJEuKFCWo', '2023-05-07 20:19:55', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-05-06 20:19:55', '2023-05-06 20:19:55'),
('xpKK9LZKIwO4e29oHxpkcsetm4RPsfRB', '2023-05-07 20:44:59', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-05-06 20:44:59', '2023-05-06 20:44:59'),
('Z2LpipXJLHYTgdtrV3mXRMhcM_rz0v32', '2023-05-07 21:45:10', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-05-06 21:45:10', '2023-05-06 21:45:10'),
('zQhYyOfoJUkhi1n8ahlCwy33NEHr0Pn_', '2023-05-07 21:39:20', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-05-06 21:39:20', '2023-05-06 21:39:20'),
('ZUE_CUDxAFb16AOHXuKKDPJ3qbdlfSvO', '2023-05-07 20:43:50', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-05-06 20:43:50', '2023-05-06 20:43:50');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `uuid`, `name`, `email`, `password`, `role`, `createdAt`, `updatedAt`) VALUES
(1, '9105ccfe-466d-42db-812c-bdf534aadddc', 'Verga', 'admin@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$EZsbO55qLIfcMHcSByX9vQ$3zeP9JObelfwOUbmCv6YoHxOW2eoVpKRXlP9KvESlus', 'admin', '2023-05-06 16:39:19', '2023-05-06 16:39:19'),
(3, 'cb44a454-fe46-426f-a883-119c703ceff2', 'John Doe', 'john@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$KHe/H/yuX16nvh1pwnLp9w$x8i7cseUIpc2VQnvNs8yWR4fpSW2wNo23KyxArWDtAQ', 'user', '2023-05-06 16:49:20', '2023-05-06 16:49:20'),
(5, '8057e944-afd9-418d-b4e0-ea03901e1c25', 'admin2', 'admin2@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$oJB7bpNYxqdC8yp3o1IOOw$LC39zHVpKGhAie3ajV3iXCJZKt4TFBEx+e53/ugf3dI', 'user', '2023-05-06 21:40:31', '2023-05-06 21:45:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
