-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2024 at 06:51 AM
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
-- Database: `citizen participation system`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `suggestion_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment_text` text NOT NULL,
  `comment_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `suggestion_id`, `user_id`, `comment_text`, `comment_date`) VALUES
(1, 2, 2, 'Isco\r\n', '2024-11-23 09:37:28'),
(2, 2, 2, 'Isco\r\n', '2024-11-23 09:52:34'),
(3, -2, 3, 'dfkznvkvfx', '2024-11-23 09:58:24'),
(4, 2, -4, 'nidja', '2024-11-23 11:01:15'),
(5, 23456, 34567, 'tyghjk', '2024-12-14 12:45:39'),
(6, 123, 234, 'Asd', '2024-12-15 13:43:40');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `suggestion_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `submission_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `upvotes` int(11) DEFAULT 0,
  `downvotes` int(11) DEFAULT 0,
  `status` enum('open','closed','under review') DEFAULT 'open'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`suggestion_id`, `user_id`, `title`, `description`, `submission_date`, `upvotes`, `downvotes`, `status`) VALUES
(1, 4, 'qerty', 'vbnm,', '2024-11-23 09:31:36', 0, 0, 'open'),
(2, 2, 'Isco', 'QWERTYU', '2024-11-23 16:44:31', 0, 0, 'open'),
(3, 2, 'Isco', 'QWERTYU', '2024-11-23 16:44:42', 0, 0, 'open');

-- --------------------------------------------------------

--
-- Table structure for table `feedback_suggestions`
--

CREATE TABLE `feedback_suggestions` (
  `suggestion_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `submission_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `upvotes` int(11) DEFAULT 0,
  `downvotes` int(11) DEFAULT 0,
  `status` enum('open','closed','under review') DEFAULT 'open'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `notification_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `notification_message` text NOT NULL,
  `sent_date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`notification_id`, `user_id`, `notification_message`, `sent_date`) VALUES
(1, 23456, 'dfdff\r\n', '2024-12-14 14:49:49'),
(2, 23456, 'dfdff\r\n', '2024-12-14 14:49:52'),
(3, 324567, 'drtfyguh', '2024-12-14 14:51:11'),
(4, 90, 'poiugy', '2024-12-16 23:15:45');

-- --------------------------------------------------------

--
-- Table structure for table `polls`
--

CREATE TABLE `polls` (
  `poll_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `creation_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `closing_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `polls`
--

INSERT INTO `polls` (`poll_id`, `title`, `description`, `creation_date`, `closing_date`, `created_by`) VALUES
(1, 'Ronaldo', 'm  mz', '2024-11-22 16:12:08', '2024-11-21 22:00:00', NULL),
(9, 'kmslz', 'rdtfgyu', '2024-11-23 09:57:08', '2024-11-22 22:00:00', 3);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `project_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `status` enum('in progress','completed','delayed') NOT NULL DEFAULT 'in progress',
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`project_id`, `title`, `description`, `start_date`, `end_date`, `status`, `created_by`) VALUES
(1, 'rctyvb', 'ewdcfscx', '2024-11-23', '2024-11-23', 'completed', 4),
(2, 'rctyvb', 'ewdcfscx', '2024-11-23', '2024-11-23', 'completed', 4),
(3, 'PROJECT PAT', 'HURT AND HEAL', '2024-11-24', '2024-11-24', 'completed', 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `public_issues`
--

CREATE TABLE `public_issues` (
  `issue_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `issue_title` varchar(255) NOT NULL,
  `issue_description` text NOT NULL,
  `report_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` enum('open','resolved','under investigation') NOT NULL DEFAULT 'open'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `public_issues`
--

INSERT INTO `public_issues` (`issue_id`, `user_id`, `issue_title`, `issue_description`, `report_date`, `status`) VALUES
(1, -6, 'Benzema', 'qwerty', '2024-11-23 09:48:42', 'open');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `session_id` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `townhallmeetings`
--

CREATE TABLE `townhallmeetings` (
  `meeting_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `meeting_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `description` text NOT NULL,
  `location_url` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `townhallmeetings`
--

INSERT INTO `townhallmeetings` (`meeting_id`, `title`, `meeting_date`, `description`, `location_url`, `created_by`) VALUES
(1, 'isco', '2024-11-22 22:00:00', 'dfkjcoref', 'http://localhost:3000/Public/', -2),
(2, 'mnmnmn', '2024-11-22 22:00:00', 'qwerty', 'http://localhost:3000/Public/', 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password_hash` text NOT NULL,
  `role` text NOT NULL,
  `registration_date` int(11) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `first_name`, `last_name`, `email`, `password_hash`, `role`, `registration_date`) VALUES
(3, 'lewa', 'sicho', 'wer@gmail.com', '$2y$10$UYwFIsmv5cdAEzTzzj1jnOeC9D5BBUEJgzD7aGb3yJMpRo9HJ0s9i', 'CTF', 2024),
(5, 'lewa', 'sicho', 'isco@gmail.com', '$2y$10$m2GZ4GOuP2EkSf1yuKi2BuV/cmJF2imsFkzy42lhaWGcXnRVP5xOK', 'Admin', 2147483647),
(10, 'Madder', 'Zulu', 'Madder@gmail.com', '$2y$10$roZZgBgaABvtD6OIFYuJp.G3EzN7FN4SdZ6GyCEuL8l4jJvD2k3..', 'admin', 2147483647),
(11, 'Sia', 'Confetti', 'sia@gmail.com', '$2y$10$LHlUqXEO5RNoBRPl43/e0eW7AMJRd7oAz59MyKJxrbexiBP4GcsGC', 'admin', 2147483647),
(12, 'chansa', 'mubanga', 'chansa@gmail.com', '$2y$10$hH7N3DGC4oJ6JeUEVdmrE.aJprTBLsDJA2qvawPWmzug/gYjdJCG6', 'admin', 2147483647),
(13, 'Madder', 'sicho', 'ssk@jdjdj', '$2y$10$dn3GyeHgLvBL02wXn1j8HupyCiwT.jvS1qzPWcf9B44iD3u7clXQO', 'admin', 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_role_assignment`
--

CREATE TABLE `user_role_assignment` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `vote_id` int(11) NOT NULL,
  `poll_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `vote_option` enum('Yes','No','Abstain') NOT NULL,
  `vote_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`suggestion_id`);

--
-- Indexes for table `feedback_suggestions`
--
ALTER TABLE `feedback_suggestions`
  ADD PRIMARY KEY (`suggestion_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`notification_id`);

--
-- Indexes for table `polls`
--
ALTER TABLE `polls`
  ADD PRIMARY KEY (`poll_id`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`project_id`);

--
-- Indexes for table `public_issues`
--
ALTER TABLE `public_issues`
  ADD PRIMARY KEY (`issue_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`session_id`);

--
-- Indexes for table `townhallmeetings`
--
ALTER TABLE `townhallmeetings`
  ADD PRIMARY KEY (`meeting_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`role_id`),
  ADD UNIQUE KEY `role_name` (`role_name`);

--
-- Indexes for table `user_role_assignment`
--
ALTER TABLE `user_role_assignment`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`vote_id`),
  ADD KEY `poll_id` (`poll_id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `suggestion_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `feedback_suggestions`
--
ALTER TABLE `feedback_suggestions`
  MODIFY `suggestion_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `polls`
--
ALTER TABLE `polls`
  MODIFY `poll_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `project_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `public_issues`
--
ALTER TABLE `public_issues`
  MODIFY `issue_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `townhallmeetings`
--
ALTER TABLE `townhallmeetings`
  MODIFY `meeting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `vote_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `feedback_suggestions`
--
ALTER TABLE `feedback_suggestions`
  ADD CONSTRAINT `feedback_suggestions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `polls`
--
ALTER TABLE `polls`
  ADD CONSTRAINT `polls_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`) ON DELETE SET NULL;

--
-- Constraints for table `user_role_assignment`
--
ALTER TABLE `user_role_assignment`
  ADD CONSTRAINT `user_role_assignment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_role_assignment_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `user_roles` (`role_id`) ON DELETE CASCADE;

--
-- Constraints for table `votes`
--
ALTER TABLE `votes`
  ADD CONSTRAINT `votes_ibfk_1` FOREIGN KEY (`poll_id`) REFERENCES `polls` (`poll_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `votes_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
