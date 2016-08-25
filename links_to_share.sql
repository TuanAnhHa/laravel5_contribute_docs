-- phpMyAdmin SQL Dump
-- version 4.6.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 25, 2016 at 09:35 AM
-- Server version: 5.7.12
-- PHP Version: 5.5.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `voting_lesson`
--

-- --------------------------------------------------------

--
-- Table structure for table `channels`
--

CREATE TABLE `channels` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `channels`
--

INSERT INTO `channels` (`id`, `title`, `slug`, `color`, `created_at`, `updated_at`) VALUES
(1, 'PHP', 'php', 'red', '2016-07-25 17:32:54', '2016-07-25 17:32:54'),
(2, 'Javascript', 'javascript', 'green', '2016-07-25 17:33:45', '2016-07-25 17:33:45'),
(3, 'Ruby', 'ruby', 'pink', '2016-07-25 17:34:16', '2016-07-25 17:34:16'),
(4, 'Python', 'python', 'yellow', '2016-08-02 19:57:09', '2016-08-02 19:57:09');

-- --------------------------------------------------------

--
-- Table structure for table `community_links`
--

CREATE TABLE `community_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `channel_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `community_links`
--

INSERT INTO `community_links` (`id`, `user_id`, `channel_id`, `title`, `link`, `approved`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'Eos quia est voluptatum quo error.', 'http://www.halvorson.com/reprehenderit-temporibus-molestiae-neque-rerum-doloribus-et-quia-consequatur.html', 1, '2016-07-18 19:13:44', '2016-07-31 22:11:11'),
(2, 3, 1, 'Voluptatem officiis ut perspiciatis quis natus et.', 'http://purdy.net/sint-quae-minima-nulla.html', 1, '2016-07-18 19:13:46', '2016-07-27 14:04:53'),
(3, 4, 1, 'Suscipit harum nesciunt porro tempora.', 'http://hills.biz/autem-itaque-in-omnis-harum', 0, '2016-07-18 19:13:48', '2016-07-18 19:13:48'),
(4, 5, 1, 'Tenetur enim reprehenderit aut sed et qui.', 'https://www.bailey.net/voluptatem-qui-vel-neque-expedita-aut', 0, '2016-07-18 19:13:49', '2016-07-18 19:13:49'),
(5, 6, 1, 'Dolores quas id ipsam officia.', 'http://stiedemann.com/', 0, '2016-07-18 19:13:51', '2016-07-18 19:13:51'),
(13, 1, 1, 'VN express', 'http://www.vnexpress.net', 0, '2016-07-24 17:46:37', '2016-07-24 17:46:37'),
(14, 1, 2, 'AngularJs', 'www.angular.com', 0, '2016-07-25 18:10:08', '2016-07-25 18:10:08'),
(15, 1, 3, 'Ruby on Rails', 'www.rubyonrails.org', 0, '2016-07-27 13:18:08', '2016-07-27 13:18:08'),
(16, 1, 2, 'ES 2015', 'https://developer.mozilla.org', 0, '2016-07-27 14:07:51', '2016-07-27 14:07:51'),
(17, 1, 2, 'ES 2015', 'https://developer.org', 0, '2016-07-27 14:08:40', '2016-07-27 14:08:40'),
(19, 2, 1, 'Est molestiae nulla omnis officia voluptas.', 'http://www.blick.net/', 0, '2016-07-29 14:25:22', '2016-07-29 14:25:22'),
(30, 1, 3, 'Ruby on Rails', 'www.rails.org', 1, '2016-07-29 14:51:07', '2016-07-29 14:51:07'),
(31, 1, 3, 'Rails Development', 'http://www.railsforruby.com', 1, '2016-07-29 14:52:34', '2016-07-29 14:52:34'),
(32, 1, 1, 'Wordpress is a killer.', 'www.wordpress.org', 0, '2016-07-29 14:57:31', '2016-07-29 14:57:31'),
(33, 12, 3, 'Rails Development', 'http://www.railsforruby.com/', 1, '2016-07-31 22:03:02', '2016-07-31 22:03:02'),
(34, 12, 4, 'Python - OOP', 'www.python.org', 1, '2016-08-02 19:58:00', '2016-08-02 19:58:00'),
(35, 12, 4, 'Python for beginner', 'www.codeschool.com', 1, '2016-08-10 08:43:19', '2016-08-10 08:43:19'),
(36, 1, 3, 'Ruby on Rails or Zend Framework', 'http://rubyonrails.org/', 1, '2016-08-23 16:19:56', '2016-08-23 16:19:56'),
(37, 1, 1, 'PHP Official Documentation', 'http://php.net/', 1, '2016-08-23 16:39:20', '2016-08-23 16:39:20'),
(38, 1, 2, 'ECMAScript 2015', 'http://es6-features.org/', 1, '2016-08-23 16:41:11', '2016-08-23 16:41:11'),
(39, 1, 1, 'Laravel Official Page', 'https://laravel.com/', 1, '2016-08-23 16:42:22', '2016-08-23 16:42:22'),
(40, 1, 2, 'React Js by Facebook', 'https://facebook.github.io/react/', 1, '2016-08-23 16:43:03', '2016-08-23 16:43:03');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_07_18_203805_create_community_links_table', 1),
('2016_07_18_204440_create_channels_table', 1),
('2016_07_29_162115_create_users_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `trusted` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `trusted`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Jesus Ritchie I', 'user@test.de', '$2y$10$FafKfnaA5qlR7/oADo8Hpu/1aWp7JLYa./AY7RL80iaJ3VToLa/JG', 1, 'RuHo3O2F1dnv4xdDjreIfubp3T8rMbUWW7iAjoiMWtzqcEpa8Ul0xuNCGuNR', '2016-07-29 14:24:35', '2016-08-24 19:45:30'),
(2, 'Jazmyn Frami', 'misty.christiansen@example.org', '$2y$10$sMj5g71Qc42txNbHKJtCveum0QE00e4.0l1RzdanLBC3MrcQyP8Ti', 0, 'uia3dUibmQ', '2016-07-29 14:25:21', '2016-07-29 14:25:21'),
(3, 'Mrs. Catharine Glover V', 'noemy.sawayn@example.org', '$2y$10$OeNJBGz31Hjqv2CG2MRgGOfiF1Bnx2X7p7cqKdl2/VbJe53DsW7Mu', 0, 'uGLdDGWdFv', '2016-07-29 14:25:21', '2016-07-29 14:25:21'),
(4, 'Dorothea Parisian', 'hodkiewicz.giovanna@example.com', '$2y$10$nC27hybsOrUFfJb4scLUfOSWoKcwhhnubJMdODbUJ2oIZdv2vd6XG', 0, 'A0TNmXzBcp', '2016-07-29 14:25:21', '2016-07-29 14:25:21'),
(5, 'Miss Gertrude D\'Amore III', 'caterina34@example.org', '$2y$10$xZKYahLW/ditKyZWwrJMNeD4jdve/8gbuGayBlNVacixyzeqZ98hO', 0, '3v9rSVwIxv', '2016-07-29 14:25:21', '2016-07-29 14:25:21'),
(6, 'Ms. Susana Mayer PhD', 'jennie.armstrong@example.org', '$2y$10$foU17cShmYysDfAa187syOzYGUZAJHClrase6vAJEbg5ZHhefBbGK', 0, 'KALRU7TY6h', '2016-07-29 14:25:21', '2016-07-29 14:25:21'),
(7, 'Amparo Batz', 'upton.watson@example.org', '$2y$10$4K/PJU9lQg7liO1CwREbee4J21XVZbPW9ZYkbsO3ezRDbS5pNEuYy', 0, 'GY0VVV2IR3', '2016-07-29 14:25:21', '2016-07-29 14:25:21'),
(8, 'Dante Farrell', 'lucinda25@example.com', '$2y$10$4gCbGXrSW9rSlh2hdow6TOnkg9Cfevs5QFUP.v5fxHYfbExGEoQaq', 0, 'HvzuAko4nN', '2016-07-29 14:25:21', '2016-07-29 14:25:21'),
(9, 'Gwendolyn Rodriguez', 'mozelle.bergstrom@example.net', '$2y$10$Dmpun4/qeItqyKKxML7ObeY4GrLLqQpWN6RFua38aVATUJ1geIBnq', 0, 'Iq5EH8jFEe', '2016-07-29 14:25:21', '2016-07-29 14:25:21'),
(10, 'Valentine Beer', 'lbins@example.net', '$2y$10$M9OeP/VeaIhnsHRWVHt3b.iZwEupzuEc96ZoUvgCtEJCRTFez9ScW', 0, 'h8lhApcIsa', '2016-07-29 14:25:21', '2016-07-29 14:25:21'),
(11, 'Kelvin Boehm', 'mconsidine@example.net', '$2y$10$DuxSp.Y87T45NtuP01aMN.p5OTYY3XtCQhafOT2pjd4u8YMzMm8iq', 0, 'jmstJb2tg6', '2016-07-29 14:25:22', '2016-07-29 14:25:22'),
(12, 'Tuan Anh Ha', 'anh@kleewald.eu', '$2y$10$1pLYskJfmkc002B3v7SnaeX0KSNdLdUX0sdOjud1OJLF0xDBrnDmG', 1, 'QZdxqn8z7tq2ReW9wq3oOmrAssmprfFpOqAij9CTnv4iL4SKPbNZ50mnbNnh', '2016-07-31 21:26:06', '2016-08-23 16:14:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `channels`
--
ALTER TABLE `channels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `channels_slug_unique` (`slug`);

--
-- Indexes for table `community_links`
--
ALTER TABLE `community_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `community_links_link_unique` (`link`),
  ADD KEY `community_links_user_id_index` (`user_id`),
  ADD KEY `community_links_channel_id_index` (`channel_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `channels`
--
ALTER TABLE `channels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `community_links`
--
ALTER TABLE `community_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
