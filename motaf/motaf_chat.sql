-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 08, 2023 at 02:15 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `motaf_chat`
--

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `msg_id` int(11) NOT NULL,
  `incoming_msg_id` int(255) NOT NULL,
  `outgoing_msg_id` int(255) NOT NULL,
  `msg` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`msg_id`, `incoming_msg_id`, `outgoing_msg_id`, `msg`) VALUES
(67, 708645043, 427453170, 'hello'),
(68, 427453170, 708645043, 'hi'),
(69, 427453170, 708645043, 'how are you doing'),
(70, 708645043, 427453170, 'hello cecilia'),
(71, 708645043, 427453170, 'what are you doing'),
(72, 558591465, 427453170, 'Hello serial killer i have a contract for you worth 2million dollars'),
(73, 427453170, 558591465, 'seriously'),
(74, 558591465, 427453170, 'are you interested'),
(75, 427453170, 558591465, 'hell yeah'),
(76, 708645043, 427453170, 'i have a job for you'),
(77, 427453170, 708645043, 'what job'),
(78, 708645043, 427453170, 'killing'),
(79, 427453170, 708645043, 'oh cool'),
(80, 427453170, 708645043, 'whats the price'),
(81, 708645043, 427453170, '2million usd'),
(82, 427453170, 708645043, 'okay cool'),
(83, 427453170, 708645043, 'send me the target'),
(84, 558591465, 633276288, 'hello big man'),
(85, 633276288, 558591465, 'yo'),
(86, 558591465, 633276288, 'wg'),
(87, 558591465, 633276288, 'whats up'),
(88, 633276288, 558591465, 'i misses you bro'),
(89, 558591465, 633276288, 'oh i see'),
(90, 26656039, 427453170, 'i ahve a job for you'),
(91, 427453170, 26656039, 'show me'),
(92, 26656039, 427453170, 'alrigght'),
(93, 427453170, 26656039, 'cool job'),
(94, 26656039, 427453170, 'nwme your price'),
(95, 427453170, 26656039, '2000'),
(96, 427453170, 60351403, 'hi'),
(97, 60351403, 427453170, 'hello'),
(98, 427453170, 60351403, 'big man'),
(99, 427453170, 60351403, 'wosop'),
(100, 427453170, 64606747, 'hello'),
(101, 64606747, 427453170, 'bro'),
(102, 64606747, 427453170, 'hope you good'),
(103, 64606747, 427453170, 'hey'),
(104, 427453170, 64606747, 'hello'),
(105, 427453170, 64606747, 'im okay bro'),
(106, 427453170, 919994581, 'hello'),
(107, 919994581, 427453170, 'hi'),
(108, 919994581, 427453170, 'uiiii'),
(109, 427453170, 919994581, 'helo'),
(110, 622573993, 427453170, 'yo man'),
(111, 427453170, 622573993, 'yes boss'),
(112, 622573993, 427453170, 'how be'),
(113, 427453170, 622573993, 'im good bro');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `unique_id` int(200) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `img` varchar(400) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `unique_id`, `fname`, `lname`, `uname`, `email`, `password`, `img`, `status`) VALUES
(26, 427453170, 'The ', 'Handler', 'Handler', 'thehandler@gmail.com', 'thehandker', '16617013699.jpg', 'Active Now'),
(27, 60351403, 'selasi', 'doyi', 'Selapete', 'selasi@gmail.com', 'xanthic09', '16617022747.jpg', 'Offline Now'),
(28, 708645043, 'nana', 'naa', 'Don 1', 'nana@gmail.com', 'xanthic09', '16617036606.jpg', 'Active Now'),
(29, 558591465, 'Godwin', 'Afari', 'Godmode', 'godwin@gmail.com', 'xanthic09', '16618760337.jpg', 'Active Now'),
(30, 633276288, 'Francis', 'Okyere', 'Ghurdhindemel', 'francis@gmail.com', '12345678', '1664473644sam-balye-WNVnnHHcBeM-unsplash.jpg', 'Active Now'),
(31, 26656039, 'Elorm', 'Adraki', 'eadraki', 'eadraki@gmail.com', '123456789', '1664545904lee-campbell-DtDlVpy-vvQ-unsplash.jpg', 'Active Now'),
(32, 64606747, 'prosper', 'smith', 'prosper', 'props@gmail.com', 'prosper1', '1670090340cartoon1.jpg', 'Active Now'),
(33, 919994581, 'edward', 'yevu', 'edward', 'edward@gmail.com', '12345678', '1670251123maya.jpeg', 'Active Now'),
(34, 622573993, 'wisdom', 'tulaki', 'tulaku', 'tulaku@gmail.com', 'tulaku123', '1670416902IMG_20200520_064657_6.jpg', 'Active Now');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`msg_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
