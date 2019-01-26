-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 27, 2019 at 12:33 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dotabet`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts_follower`
--

CREATE TABLE `accounts_follower` (
  `id` int(11) NOT NULL,
  `date` datetime(6) NOT NULL,
  `follower_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_notification`
--

CREATE TABLE `accounts_notification` (
  `id` int(11) NOT NULL,
  `text` longtext NOT NULL,
  `is_seen` tinyint(1) NOT NULL,
  `date` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_profile`
--

CREATE TABLE `accounts_profile` (
  `id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `coin` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accounts_profile`
--

INSERT INTO `accounts_profile` (`id`, `image`, `coin`, `user_id`) VALUES
(1, 'default.jpg', 100, 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add ban', 1, 'add_ban'),
(2, 'Can change ban', 1, 'change_ban'),
(3, 'Can delete ban', 1, 'delete_ban'),
(4, 'Can view ban', 1, 'view_ban'),
(5, 'Can add bet', 2, 'add_bet'),
(6, 'Can change bet', 2, 'change_bet'),
(7, 'Can delete bet', 2, 'delete_bet'),
(8, 'Can view bet', 2, 'view_bet'),
(9, 'Can add hero', 3, 'add_hero'),
(10, 'Can change hero', 3, 'change_hero'),
(11, 'Can delete hero', 3, 'delete_hero'),
(12, 'Can view hero', 3, 'view_hero'),
(13, 'Can add item', 4, 'add_item'),
(14, 'Can change item', 4, 'change_item'),
(15, 'Can delete item', 4, 'delete_item'),
(16, 'Can view item', 4, 'view_item'),
(17, 'Can add item_ inventory', 5, 'add_item_inventory'),
(18, 'Can change item_ inventory', 5, 'change_item_inventory'),
(19, 'Can delete item_ inventory', 5, 'delete_item_inventory'),
(20, 'Can view item_ inventory', 5, 'view_item_inventory'),
(21, 'Can add match', 6, 'add_match'),
(22, 'Can change match', 6, 'change_match'),
(23, 'Can delete match', 6, 'delete_match'),
(24, 'Can view match', 6, 'view_match'),
(25, 'Can add pick', 7, 'add_pick'),
(26, 'Can change pick', 7, 'change_pick'),
(27, 'Can delete pick', 7, 'delete_pick'),
(28, 'Can view pick', 7, 'view_pick'),
(29, 'Can add player', 8, 'add_player'),
(30, 'Can change player', 8, 'change_player'),
(31, 'Can delete player', 8, 'delete_player'),
(32, 'Can view player', 8, 'view_player'),
(33, 'Can add settings', 9, 'add_settings'),
(34, 'Can change settings', 9, 'change_settings'),
(35, 'Can delete settings', 9, 'delete_settings'),
(36, 'Can view settings', 9, 'view_settings'),
(37, 'Can add stats', 10, 'add_stats'),
(38, 'Can change stats', 10, 'change_stats'),
(39, 'Can delete stats', 10, 'delete_stats'),
(40, 'Can view stats', 10, 'view_stats'),
(41, 'Can add team', 11, 'add_team'),
(42, 'Can change team', 11, 'change_team'),
(43, 'Can delete team', 11, 'delete_team'),
(44, 'Can view team', 11, 'view_team'),
(45, 'Can add follower', 12, 'add_follower'),
(46, 'Can change follower', 12, 'change_follower'),
(47, 'Can delete follower', 12, 'delete_follower'),
(48, 'Can view follower', 12, 'view_follower'),
(49, 'Can add notification', 13, 'add_notification'),
(50, 'Can change notification', 13, 'change_notification'),
(51, 'Can delete notification', 13, 'delete_notification'),
(52, 'Can view notification', 13, 'view_notification'),
(53, 'Can add profile', 14, 'add_profile'),
(54, 'Can change profile', 14, 'change_profile'),
(55, 'Can delete profile', 14, 'delete_profile'),
(56, 'Can view profile', 14, 'view_profile'),
(57, 'Can add completed task', 15, 'add_completedtask'),
(58, 'Can change completed task', 15, 'change_completedtask'),
(59, 'Can delete completed task', 15, 'delete_completedtask'),
(60, 'Can view completed task', 15, 'view_completedtask'),
(61, 'Can add task', 16, 'add_task'),
(62, 'Can change task', 16, 'change_task'),
(63, 'Can delete task', 16, 'delete_task'),
(64, 'Can view task', 16, 'view_task'),
(65, 'Can add log entry', 17, 'add_logentry'),
(66, 'Can change log entry', 17, 'change_logentry'),
(67, 'Can delete log entry', 17, 'delete_logentry'),
(68, 'Can view log entry', 17, 'view_logentry'),
(69, 'Can add permission', 18, 'add_permission'),
(70, 'Can change permission', 18, 'change_permission'),
(71, 'Can delete permission', 18, 'delete_permission'),
(72, 'Can view permission', 18, 'view_permission'),
(73, 'Can add group', 19, 'add_group'),
(74, 'Can change group', 19, 'change_group'),
(75, 'Can delete group', 19, 'delete_group'),
(76, 'Can view group', 19, 'view_group'),
(77, 'Can add user', 20, 'add_user'),
(78, 'Can change user', 20, 'change_user'),
(79, 'Can delete user', 20, 'delete_user'),
(80, 'Can view user', 20, 'view_user'),
(81, 'Can add content type', 21, 'add_contenttype'),
(82, 'Can change content type', 21, 'change_contenttype'),
(83, 'Can delete content type', 21, 'delete_contenttype'),
(84, 'Can view content type', 21, 'view_contenttype'),
(85, 'Can add session', 22, 'add_session'),
(86, 'Can change session', 22, 'change_session'),
(87, 'Can delete session', 22, 'delete_session'),
(88, 'Can view session', 22, 'view_session');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$120000$ad4z04Y4b1zX$BAVYSc5nRkhqYtJmVJItv7N6mr2JM8TfIhQChtuKzU0=', '2019-01-26 23:11:08.560538', 1, 'admin', '', '', 'admin@admin.com', 1, 1, '2019-01-26 23:07:50.105715');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `background_task`
--

CREATE TABLE `background_task` (
  `id` int(11) NOT NULL,
  `task_name` varchar(190) NOT NULL,
  `task_params` longtext NOT NULL,
  `task_hash` varchar(40) NOT NULL,
  `verbose_name` varchar(255) DEFAULT NULL,
  `priority` int(11) NOT NULL,
  `run_at` datetime(6) NOT NULL,
  `repeat` bigint(20) NOT NULL,
  `repeat_until` datetime(6) DEFAULT NULL,
  `queue` varchar(190) DEFAULT NULL,
  `attempts` int(11) NOT NULL,
  `failed_at` datetime(6) DEFAULT NULL,
  `last_error` longtext NOT NULL,
  `locked_by` varchar(64) DEFAULT NULL,
  `locked_at` datetime(6) DEFAULT NULL,
  `creator_object_id` int(10) UNSIGNED DEFAULT NULL,
  `creator_content_type_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `background_task`
--

INSERT INTO `background_task` (`id`, `task_name`, `task_params`, `task_hash`, `verbose_name`, `priority`, `run_at`, `repeat`, `repeat_until`, `queue`, `attempts`, `failed_at`, `last_error`, `locked_by`, `locked_at`, `creator_object_id`, `creator_content_type_id`) VALUES
(68, 'background.views.paycheck', '[[], {}]', 'cb8c4c13683a92d6e3fa9dd302fd8a1d363ba6b2', NULL, 0, '2019-01-26 23:31:55.903703', 300, NULL, NULL, 0, NULL, '', NULL, NULL, NULL, NULL),
(70, 'background.views.paycheck', '[[], {}]', 'cb8c4c13683a92d6e3fa9dd302fd8a1d363ba6b2', NULL, 0, '2019-01-26 23:31:57.764608', 300, NULL, NULL, 0, NULL, '', NULL, NULL, NULL, NULL),
(71, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-26 23:27:55.818728', 30, NULL, NULL, 0, NULL, '', '3307', '2019-01-26 23:27:56.063038', NULL, NULL),
(72, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-26 23:27:57.667177', 30, NULL, NULL, 0, NULL, '', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `background_task_completedtask`
--

CREATE TABLE `background_task_completedtask` (
  `id` int(11) NOT NULL,
  `task_name` varchar(190) NOT NULL,
  `task_params` longtext NOT NULL,
  `task_hash` varchar(40) NOT NULL,
  `verbose_name` varchar(255) DEFAULT NULL,
  `priority` int(11) NOT NULL,
  `run_at` datetime(6) NOT NULL,
  `repeat` bigint(20) NOT NULL,
  `repeat_until` datetime(6) DEFAULT NULL,
  `queue` varchar(190) DEFAULT NULL,
  `attempts` int(11) NOT NULL,
  `failed_at` datetime(6) DEFAULT NULL,
  `last_error` longtext NOT NULL,
  `locked_by` varchar(64) DEFAULT NULL,
  `locked_at` datetime(6) DEFAULT NULL,
  `creator_object_id` int(10) UNSIGNED DEFAULT NULL,
  `creator_content_type_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `background_task_completedtask`
--

INSERT INTO `background_task_completedtask` (`id`, `task_name`, `task_params`, `task_hash`, `verbose_name`, `priority`, `run_at`, `repeat`, `repeat_until`, `queue`, `attempts`, `failed_at`, `last_error`, `locked_by`, `locked_at`, `creator_object_id`, `creator_content_type_id`) VALUES
(4, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-26 23:17:23.563536', 30, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:16:57.913523', NULL, NULL),
(5, 'background.views.paycheck', '[[], {}]', 'cb8c4c13683a92d6e3fa9dd302fd8a1d363ba6b2', NULL, 0, '2019-01-26 23:17:24.328032', 300, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:17:24.120064', NULL, NULL),
(6, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-26 23:17:52.398305', 30, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:17:24.980830', NULL, NULL),
(7, 'background.views.paycheck', '[[], {}]', 'cb8c4c13683a92d6e3fa9dd302fd8a1d363ba6b2', NULL, 0, '2019-01-26 23:17:54.249676', 300, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:17:54.057249', NULL, NULL),
(8, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-26 23:18:19.813348', 30, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:17:54.968252', NULL, NULL),
(9, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-26 23:18:45.127119', 30, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:18:20.336184', NULL, NULL),
(10, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-26 23:19:12.918582', 30, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:18:46.256683', NULL, NULL),
(11, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-26 23:19:39.404259', 30, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:19:13.320670', NULL, NULL),
(12, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-26 23:19:51.493938', 30, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:19:41.129082', NULL, NULL),
(13, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-26 23:20:07.329124', 30, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:19:57.124376', NULL, NULL),
(14, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-26 23:20:18.560067', 30, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:20:08.082810', NULL, NULL),
(15, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-26 23:20:40.231156', 30, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:20:29.485421', NULL, NULL),
(16, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-26 23:20:51.529491', 30, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:20:40.566197', NULL, NULL),
(17, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-26 23:21:07.899314', 30, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:20:57.143771', NULL, NULL),
(18, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-26 23:21:19.581154', 30, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:21:08.472037', NULL, NULL),
(19, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-26 23:21:41.217380', 30, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:21:30.349262', NULL, NULL),
(20, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-26 23:21:51.315584', 30, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:21:41.465240', NULL, NULL),
(21, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-26 23:22:10.423175', 30, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:21:56.965016', NULL, NULL),
(22, 'background.views.paycheck', '[[], {}]', 'cb8c4c13683a92d6e3fa9dd302fd8a1d363ba6b2', NULL, 0, '2019-01-26 23:22:11.221081', 300, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:22:11.024748', NULL, NULL),
(23, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-26 23:22:22.383683', 30, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:22:11.480729', NULL, NULL),
(24, 'background.views.paycheck', '[[], {}]', 'cb8c4c13683a92d6e3fa9dd302fd8a1d363ba6b2', NULL, 0, '2019-01-26 23:22:23.569472', 300, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:22:23.117918', NULL, NULL),
(25, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-26 23:22:40.168232', 30, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:22:29.338876', NULL, NULL),
(26, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-26 23:22:51.821631', 30, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:22:40.583522', NULL, NULL),
(27, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-26 23:23:08.229977', 30, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:22:57.421741', NULL, NULL),
(28, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-26 23:23:19.025710', 30, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:23:08.824559', NULL, NULL),
(29, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-26 23:23:40.363790', 30, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:23:29.494166', NULL, NULL),
(30, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-26 23:23:51.705988', 30, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:23:41.198561', NULL, NULL),
(31, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-26 23:24:08.371297', 30, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:23:57.288169', NULL, NULL),
(32, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-26 23:24:20.554077', 30, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:24:08.939129', NULL, NULL),
(33, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-26 23:24:36.710697', 30, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:24:26.272244', NULL, NULL),
(34, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-26 23:24:50.211540', 30, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:24:37.207024', NULL, NULL),
(35, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-26 23:25:11.405722', 30, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:25:00.670929', NULL, NULL),
(36, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-26 23:25:23.720851', 30, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:25:11.702042', NULL, NULL),
(37, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-26 23:25:39.754194', 30, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:25:29.547182', NULL, NULL),
(38, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-26 23:25:52.404196', 30, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:25:40.494332', NULL, NULL),
(39, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-26 23:26:07.927596', 30, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:25:57.953266', NULL, NULL),
(40, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-26 23:26:19.566842', 30, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:26:08.622632', NULL, NULL),
(41, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-26 23:26:40.928132', 30, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:26:29.884394', NULL, NULL),
(42, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-26 23:26:51.935075', 30, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:26:41.491248', NULL, NULL),
(43, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-26 23:27:08.756091', 30, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:26:58.177321', NULL, NULL),
(44, 'background.views.paycheck', '[[], {}]', 'cb8c4c13683a92d6e3fa9dd302fd8a1d363ba6b2', NULL, 0, '2019-01-26 23:27:09.210046', 300, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:27:09.031451', NULL, NULL),
(45, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-26 23:27:21.094558', 30, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:27:09.799045', NULL, NULL),
(46, 'background.views.paycheck', '[[], {}]', 'cb8c4c13683a92d6e3fa9dd302fd8a1d363ba6b2', NULL, 0, '2019-01-26 23:27:22.036738', 300, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:27:21.835043', NULL, NULL),
(47, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-26 23:27:39.012121', 30, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:27:27.562036', NULL, NULL),
(48, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-26 23:27:50.436574', 30, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:27:39.727508', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2019-01-26 23:11:19.688920', '1', 'background.views.paycheck - 2019-01-26 23:08:18.487114+00:00', 3, '', 15, 1),
(2, '2019-01-26 23:11:27.257942', '7', 'background.views.paycheck', 3, '', 16, 1),
(3, '2019-01-26 23:11:27.542592', '6', 'background.views.api', 3, '', 16, 1),
(4, '2019-01-26 23:11:27.753387', '5', 'background.views.paycheck', 3, '', 16, 1),
(5, '2019-01-26 23:11:27.831027', '4', 'background.views.paycheck', 3, '', 16, 1),
(6, '2019-01-26 23:11:27.908628', '3', 'background.views.api', 3, '', 16, 1),
(7, '2019-01-26 23:11:28.262816', '1', 'background.views.api', 3, '', 16, 1),
(8, '2019-01-26 23:14:25.371471', '2', 'background.views.paycheck - 2019-01-26 23:11:57.005251+00:00', 3, '', 15, 1),
(9, '2019-01-26 23:14:32.041396', '14', 'background.views.paycheck', 3, '', 16, 1),
(10, '2019-01-26 23:14:32.309819', '13', 'background.views.api', 3, '', 16, 1),
(11, '2019-01-26 23:14:32.674668', '12', 'background.views.paycheck', 3, '', 16, 1),
(12, '2019-01-26 23:14:32.763281', '11', 'background.views.paycheck', 3, '', 16, 1),
(13, '2019-01-26 23:14:32.852598', '10', 'background.views.api', 3, '', 16, 1),
(14, '2019-01-26 23:14:32.941239', '8', 'background.views.api', 3, '', 16, 1),
(15, '2019-01-26 23:15:53.530997', '0', 'Team object (0)', 1, '[{\"added\": {}}]', 11, 1),
(16, '2019-01-26 23:16:09.435812', '0', 'Player object (0)', 1, '[{\"added\": {}}]', 8, 1),
(17, '2019-01-26 23:16:32.674334', '3', 'background.views.paycheck - 2019-01-26 23:15:01.195767+00:00', 3, '', 15, 1),
(18, '2019-01-26 23:16:38.910593', '23', 'background.views.paycheck', 3, '', 16, 1),
(19, '2019-01-26 23:16:39.164033', '22', 'background.views.api', 3, '', 16, 1),
(20, '2019-01-26 23:16:39.241605', '21', 'background.views.paycheck', 3, '', 16, 1),
(21, '2019-01-26 23:16:39.608141', '20', 'background.views.api', 3, '', 16, 1),
(22, '2019-01-26 23:16:39.685552', '19', 'background.views.paycheck', 3, '', 16, 1),
(23, '2019-01-26 23:16:39.763259', '18', 'background.views.paycheck', 3, '', 16, 1),
(24, '2019-01-26 23:16:39.841220', '17', 'background.views.api', 3, '', 16, 1),
(25, '2019-01-26 23:16:39.985106', '15', 'background.views.api', 3, '', 16, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(12, 'accounts', 'follower'),
(13, 'accounts', 'notification'),
(14, 'accounts', 'profile'),
(17, 'admin', 'logentry'),
(19, 'auth', 'group'),
(18, 'auth', 'permission'),
(20, 'auth', 'user'),
(15, 'background_task', 'completedtask'),
(16, 'background_task', 'task'),
(21, 'contenttypes', 'contenttype'),
(1, 'matches', 'ban'),
(2, 'matches', 'bet'),
(3, 'matches', 'hero'),
(4, 'matches', 'item'),
(5, 'matches', 'item_inventory'),
(6, 'matches', 'match'),
(7, 'matches', 'pick'),
(8, 'matches', 'player'),
(9, 'matches', 'settings'),
(10, 'matches', 'stats'),
(11, 'matches', 'team'),
(22, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2019-01-26 23:04:36.210740'),
(2, 'auth', '0001_initial', '2019-01-26 23:04:58.073672'),
(3, 'accounts', '0001_initial', '2019-01-26 23:05:09.619693'),
(4, 'admin', '0001_initial', '2019-01-26 23:05:14.113968'),
(5, 'admin', '0002_logentry_remove_auto_add', '2019-01-26 23:05:14.216507'),
(6, 'admin', '0003_logentry_add_action_flag_choices', '2019-01-26 23:05:14.474947'),
(7, 'contenttypes', '0002_remove_content_type_name', '2019-01-26 23:05:17.176668'),
(8, 'auth', '0002_alter_permission_name_max_length', '2019-01-26 23:05:20.102801'),
(9, 'auth', '0003_alter_user_email_max_length', '2019-01-26 23:05:22.154907'),
(10, 'auth', '0004_alter_user_username_opts', '2019-01-26 23:05:22.286930'),
(11, 'auth', '0005_alter_user_last_login_null', '2019-01-26 23:05:23.675176'),
(12, 'auth', '0006_require_contenttypes_0002', '2019-01-26 23:05:23.764125'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2019-01-26 23:05:23.858974'),
(14, 'auth', '0008_alter_user_username_max_length', '2019-01-26 23:05:26.049126'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2019-01-26 23:05:27.878610'),
(16, 'background_task', '0001_initial', '2019-01-26 23:05:43.639802'),
(17, 'background_task', '0002_auto_20170927_1109', '2019-01-26 23:05:59.709708'),
(18, 'matches', '0001_initial', '2019-01-26 23:06:52.222059'),
(19, 'sessions', '0001_initial', '2019-01-26 23:06:53.554132');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('r6wf507k3dgfxqqmn1a8gl7cp6yxjquy', 'ZTE2NDJlN2ZlNWU2NTZmMDIxNzE0NzVjMzMzMzZjMmMzYWU2NzU5Yzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmNTA2MTQ5ODUzYjhlYTQyOTU1ZWRmNDFhMjc1ZTkxMzliNjUyNzllIn0=', '2019-02-09 23:11:08.740615');

-- --------------------------------------------------------

--
-- Table structure for table `matches_ban`
--

CREATE TABLE `matches_ban` (
  `id` int(11) NOT NULL,
  `side` int(11) NOT NULL,
  `slot` int(11) NOT NULL,
  `hero_id` int(11) NOT NULL,
  `match_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `matches_ban`
--

INSERT INTO `matches_ban` (`id`, `side`, `slot`, `hero_id`, `match_id`) VALUES
(1, 0, 0, 2, 4364833202),
(2, 0, 1, 99, 4364833202),
(3, 0, 2, 121, 4364833202),
(4, 0, 3, 12, 4364833202),
(5, 0, 4, 95, 4364833202),
(6, 0, 5, 35, 4364833202),
(7, 1, 0, 82, 4364833202),
(8, 1, 1, 101, 4364833202),
(9, 1, 2, 114, 4364833202),
(10, 1, 3, 92, 4364833202),
(11, 1, 4, 28, 4364833202),
(12, 1, 5, 76, 4364833202),
(13, 0, 0, 100, 4364846246),
(14, 0, 1, 96, 4364846246),
(15, 0, 2, 38, 4364846246),
(16, 0, 3, 55, 4364846246),
(17, 0, 4, 59, 4364846246),
(18, 0, 5, 23, 4364846246),
(19, 1, 0, 103, 4364846246),
(20, 1, 1, 84, 4364846246),
(21, 1, 2, 92, 4364846246),
(22, 1, 3, 73, 4364846246),
(23, 1, 4, 69, 4364846246),
(24, 1, 5, 74, 4364846246);

-- --------------------------------------------------------

--
-- Table structure for table `matches_bet`
--

CREATE TABLE `matches_bet` (
  `id` int(11) NOT NULL,
  `result` int(11) NOT NULL,
  `coin` int(11) NOT NULL,
  `is_payed` tinyint(1) NOT NULL,
  `date` datetime(6) NOT NULL,
  `match_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `matches_hero`
--

CREATE TABLE `matches_hero` (
  `hero_id` int(11) NOT NULL,
  `hero_name` varchar(100) NOT NULL,
  `url_full_portrait` varchar(200) NOT NULL,
  `url_small_portrait` varchar(200) NOT NULL,
  `url_large_portrait` varchar(200) NOT NULL,
  `url_vertical_portrait` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `matches_hero`
--

INSERT INTO `matches_hero` (`hero_id`, `hero_name`, `url_full_portrait`, `url_small_portrait`, `url_large_portrait`, `url_vertical_portrait`) VALUES
(0, 'Null', 'null', 'null', 'null', 'null'),
(1, 'Anti-Mage', 'http://cdn.dota2.com/apps/dota2/images/heroes/antimage_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/antimage_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/antimage_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/antimage_vert.jpg'),
(2, 'Axe', 'http://cdn.dota2.com/apps/dota2/images/heroes/axe_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/axe_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/axe_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/axe_vert.jpg'),
(3, 'Bane', 'http://cdn.dota2.com/apps/dota2/images/heroes/bane_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/bane_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/bane_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/bane_vert.jpg'),
(4, 'Bloodseeker', 'http://cdn.dota2.com/apps/dota2/images/heroes/bloodseeker_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/bloodseeker_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/bloodseeker_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/bloodseeker_vert.jpg'),
(5, 'Crystal Maiden', 'http://cdn.dota2.com/apps/dota2/images/heroes/crystal_maiden_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/crystal_maiden_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/crystal_maiden_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/crystal_maiden_vert.jpg'),
(6, 'Drow Ranger', 'http://cdn.dota2.com/apps/dota2/images/heroes/drow_ranger_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/drow_ranger_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/drow_ranger_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/drow_ranger_vert.jpg'),
(7, 'Earthshaker', 'http://cdn.dota2.com/apps/dota2/images/heroes/earthshaker_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/earthshaker_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/earthshaker_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/earthshaker_vert.jpg'),
(8, 'Juggernaut', 'http://cdn.dota2.com/apps/dota2/images/heroes/juggernaut_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/juggernaut_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/juggernaut_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/juggernaut_vert.jpg'),
(9, 'Mirana', 'http://cdn.dota2.com/apps/dota2/images/heroes/mirana_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/mirana_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/mirana_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/mirana_vert.jpg'),
(10, 'Morphling', 'http://cdn.dota2.com/apps/dota2/images/heroes/morphling_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/morphling_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/morphling_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/morphling_vert.jpg'),
(11, 'Shadow Fiend', 'http://cdn.dota2.com/apps/dota2/images/heroes/nevermore_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/nevermore_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/nevermore_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/nevermore_vert.jpg'),
(12, 'Phantom Lancer', 'http://cdn.dota2.com/apps/dota2/images/heroes/phantom_lancer_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/phantom_lancer_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/phantom_lancer_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/phantom_lancer_vert.jpg'),
(13, 'Puck', 'http://cdn.dota2.com/apps/dota2/images/heroes/puck_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/puck_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/puck_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/puck_vert.jpg'),
(14, 'Pudge', 'http://cdn.dota2.com/apps/dota2/images/heroes/pudge_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/pudge_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/pudge_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/pudge_vert.jpg'),
(15, 'Razor', 'http://cdn.dota2.com/apps/dota2/images/heroes/razor_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/razor_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/razor_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/razor_vert.jpg'),
(16, 'Sand King', 'http://cdn.dota2.com/apps/dota2/images/heroes/sand_king_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/sand_king_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/sand_king_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/sand_king_vert.jpg'),
(17, 'Storm Spirit', 'http://cdn.dota2.com/apps/dota2/images/heroes/storm_spirit_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/storm_spirit_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/storm_spirit_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/storm_spirit_vert.jpg'),
(18, 'Sven', 'http://cdn.dota2.com/apps/dota2/images/heroes/sven_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/sven_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/sven_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/sven_vert.jpg'),
(19, 'Tiny', 'http://cdn.dota2.com/apps/dota2/images/heroes/tiny_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/tiny_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/tiny_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/tiny_vert.jpg'),
(20, 'Vengeful Spirit', 'http://cdn.dota2.com/apps/dota2/images/heroes/vengefulspirit_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/vengefulspirit_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/vengefulspirit_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/vengefulspirit_vert.jpg'),
(21, 'Windranger', 'http://cdn.dota2.com/apps/dota2/images/heroes/windrunner_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/windrunner_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/windrunner_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/windrunner_vert.jpg'),
(22, 'Zeus', 'http://cdn.dota2.com/apps/dota2/images/heroes/zuus_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/zuus_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/zuus_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/zuus_vert.jpg'),
(23, 'Kunkka', 'http://cdn.dota2.com/apps/dota2/images/heroes/kunkka_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/kunkka_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/kunkka_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/kunkka_vert.jpg'),
(25, 'Lina', 'http://cdn.dota2.com/apps/dota2/images/heroes/lina_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/lina_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/lina_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/lina_vert.jpg'),
(26, 'Lion', 'http://cdn.dota2.com/apps/dota2/images/heroes/lion_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/lion_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/lion_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/lion_vert.jpg'),
(27, 'Shadow Shaman', 'http://cdn.dota2.com/apps/dota2/images/heroes/shadow_shaman_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/shadow_shaman_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/shadow_shaman_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/shadow_shaman_vert.jpg'),
(28, 'Slardar', 'http://cdn.dota2.com/apps/dota2/images/heroes/slardar_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/slardar_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/slardar_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/slardar_vert.jpg'),
(29, 'Tidehunter', 'http://cdn.dota2.com/apps/dota2/images/heroes/tidehunter_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/tidehunter_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/tidehunter_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/tidehunter_vert.jpg'),
(30, 'Witch Doctor', 'http://cdn.dota2.com/apps/dota2/images/heroes/witch_doctor_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/witch_doctor_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/witch_doctor_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/witch_doctor_vert.jpg'),
(31, 'Lich', 'http://cdn.dota2.com/apps/dota2/images/heroes/lich_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/lich_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/lich_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/lich_vert.jpg'),
(32, 'Riki', 'http://cdn.dota2.com/apps/dota2/images/heroes/riki_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/riki_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/riki_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/riki_vert.jpg'),
(33, 'Enigma', 'http://cdn.dota2.com/apps/dota2/images/heroes/enigma_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/enigma_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/enigma_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/enigma_vert.jpg'),
(34, 'Tinker', 'http://cdn.dota2.com/apps/dota2/images/heroes/tinker_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/tinker_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/tinker_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/tinker_vert.jpg'),
(35, 'Sniper', 'http://cdn.dota2.com/apps/dota2/images/heroes/sniper_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/sniper_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/sniper_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/sniper_vert.jpg'),
(36, 'Necrophos', 'http://cdn.dota2.com/apps/dota2/images/heroes/necrolyte_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/necrolyte_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/necrolyte_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/necrolyte_vert.jpg'),
(37, 'Warlock', 'http://cdn.dota2.com/apps/dota2/images/heroes/warlock_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/warlock_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/warlock_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/warlock_vert.jpg'),
(38, 'Beastmaster', 'http://cdn.dota2.com/apps/dota2/images/heroes/beastmaster_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/beastmaster_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/beastmaster_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/beastmaster_vert.jpg'),
(39, 'Queen of Pain', 'http://cdn.dota2.com/apps/dota2/images/heroes/queenofpain_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/queenofpain_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/queenofpain_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/queenofpain_vert.jpg'),
(40, 'Venomancer', 'http://cdn.dota2.com/apps/dota2/images/heroes/venomancer_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/venomancer_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/venomancer_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/venomancer_vert.jpg'),
(41, 'Faceless Void', 'http://cdn.dota2.com/apps/dota2/images/heroes/faceless_void_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/faceless_void_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/faceless_void_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/faceless_void_vert.jpg'),
(42, 'Wraith King', 'http://cdn.dota2.com/apps/dota2/images/heroes/skeleton_king_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/skeleton_king_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/skeleton_king_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/skeleton_king_vert.jpg'),
(43, 'Death Prophet', 'http://cdn.dota2.com/apps/dota2/images/heroes/death_prophet_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/death_prophet_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/death_prophet_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/death_prophet_vert.jpg'),
(44, 'Phantom Assassin', 'http://cdn.dota2.com/apps/dota2/images/heroes/phantom_assassin_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/phantom_assassin_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/phantom_assassin_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/phantom_assassin_vert.jpg'),
(45, 'Pugna', 'http://cdn.dota2.com/apps/dota2/images/heroes/pugna_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/pugna_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/pugna_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/pugna_vert.jpg'),
(46, 'Templar Assassin', 'http://cdn.dota2.com/apps/dota2/images/heroes/templar_assassin_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/templar_assassin_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/templar_assassin_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/templar_assassin_vert.jpg'),
(47, 'Viper', 'http://cdn.dota2.com/apps/dota2/images/heroes/viper_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/viper_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/viper_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/viper_vert.jpg'),
(48, 'Luna', 'http://cdn.dota2.com/apps/dota2/images/heroes/luna_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/luna_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/luna_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/luna_vert.jpg'),
(49, 'Dragon Knight', 'http://cdn.dota2.com/apps/dota2/images/heroes/dragon_knight_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/dragon_knight_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/dragon_knight_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/dragon_knight_vert.jpg'),
(50, 'Dazzle', 'http://cdn.dota2.com/apps/dota2/images/heroes/dazzle_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/dazzle_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/dazzle_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/dazzle_vert.jpg'),
(51, 'Clockwerk', 'http://cdn.dota2.com/apps/dota2/images/heroes/rattletrap_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/rattletrap_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/rattletrap_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/rattletrap_vert.jpg'),
(52, 'Leshrac', 'http://cdn.dota2.com/apps/dota2/images/heroes/leshrac_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/leshrac_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/leshrac_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/leshrac_vert.jpg'),
(53, 'Nature\'s Prophet', 'http://cdn.dota2.com/apps/dota2/images/heroes/furion_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/furion_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/furion_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/furion_vert.jpg'),
(54, 'Lifestealer', 'http://cdn.dota2.com/apps/dota2/images/heroes/life_stealer_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/life_stealer_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/life_stealer_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/life_stealer_vert.jpg'),
(55, 'Dark Seer', 'http://cdn.dota2.com/apps/dota2/images/heroes/dark_seer_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/dark_seer_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/dark_seer_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/dark_seer_vert.jpg'),
(56, 'Clinkz', 'http://cdn.dota2.com/apps/dota2/images/heroes/clinkz_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/clinkz_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/clinkz_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/clinkz_vert.jpg'),
(57, 'Omniknight', 'http://cdn.dota2.com/apps/dota2/images/heroes/omniknight_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/omniknight_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/omniknight_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/omniknight_vert.jpg'),
(58, 'Enchantress', 'http://cdn.dota2.com/apps/dota2/images/heroes/enchantress_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/enchantress_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/enchantress_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/enchantress_vert.jpg'),
(59, 'Huskar', 'http://cdn.dota2.com/apps/dota2/images/heroes/huskar_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/huskar_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/huskar_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/huskar_vert.jpg'),
(60, 'Night Stalker', 'http://cdn.dota2.com/apps/dota2/images/heroes/night_stalker_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/night_stalker_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/night_stalker_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/night_stalker_vert.jpg'),
(61, 'Broodmother', 'http://cdn.dota2.com/apps/dota2/images/heroes/broodmother_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/broodmother_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/broodmother_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/broodmother_vert.jpg'),
(62, 'Bounty Hunter', 'http://cdn.dota2.com/apps/dota2/images/heroes/bounty_hunter_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/bounty_hunter_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/bounty_hunter_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/bounty_hunter_vert.jpg'),
(63, 'Weaver', 'http://cdn.dota2.com/apps/dota2/images/heroes/weaver_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/weaver_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/weaver_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/weaver_vert.jpg'),
(64, 'Jakiro', 'http://cdn.dota2.com/apps/dota2/images/heroes/jakiro_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/jakiro_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/jakiro_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/jakiro_vert.jpg'),
(65, 'Batrider', 'http://cdn.dota2.com/apps/dota2/images/heroes/batrider_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/batrider_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/batrider_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/batrider_vert.jpg'),
(66, 'Chen', 'http://cdn.dota2.com/apps/dota2/images/heroes/chen_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/chen_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/chen_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/chen_vert.jpg'),
(67, 'Spectre', 'http://cdn.dota2.com/apps/dota2/images/heroes/spectre_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/spectre_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/spectre_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/spectre_vert.jpg'),
(68, 'Ancient Apparition', 'http://cdn.dota2.com/apps/dota2/images/heroes/ancient_apparition_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/ancient_apparition_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/ancient_apparition_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/ancient_apparition_vert.jpg'),
(69, 'Doom', 'http://cdn.dota2.com/apps/dota2/images/heroes/doom_bringer_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/doom_bringer_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/doom_bringer_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/doom_bringer_vert.jpg'),
(70, 'Ursa', 'http://cdn.dota2.com/apps/dota2/images/heroes/ursa_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/ursa_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/ursa_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/ursa_vert.jpg'),
(71, 'Spirit Breaker', 'http://cdn.dota2.com/apps/dota2/images/heroes/spirit_breaker_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/spirit_breaker_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/spirit_breaker_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/spirit_breaker_vert.jpg'),
(72, 'Gyrocopter', 'http://cdn.dota2.com/apps/dota2/images/heroes/gyrocopter_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/gyrocopter_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/gyrocopter_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/gyrocopter_vert.jpg'),
(73, 'Alchemist', 'http://cdn.dota2.com/apps/dota2/images/heroes/alchemist_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/alchemist_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/alchemist_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/alchemist_vert.jpg'),
(74, 'Invoker', 'http://cdn.dota2.com/apps/dota2/images/heroes/invoker_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/invoker_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/invoker_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/invoker_vert.jpg'),
(75, 'Silencer', 'http://cdn.dota2.com/apps/dota2/images/heroes/silencer_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/silencer_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/silencer_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/silencer_vert.jpg'),
(76, 'Outworld Devourer', 'http://cdn.dota2.com/apps/dota2/images/heroes/obsidian_destroyer_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/obsidian_destroyer_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/obsidian_destroyer_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/obsidian_destroyer_vert.jpg'),
(77, 'Lycan', 'http://cdn.dota2.com/apps/dota2/images/heroes/lycan_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/lycan_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/lycan_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/lycan_vert.jpg'),
(78, 'Brewmaster', 'http://cdn.dota2.com/apps/dota2/images/heroes/brewmaster_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/brewmaster_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/brewmaster_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/brewmaster_vert.jpg'),
(79, 'Shadow Demon', 'http://cdn.dota2.com/apps/dota2/images/heroes/shadow_demon_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/shadow_demon_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/shadow_demon_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/shadow_demon_vert.jpg'),
(80, 'Lone Druid', 'http://cdn.dota2.com/apps/dota2/images/heroes/lone_druid_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/lone_druid_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/lone_druid_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/lone_druid_vert.jpg'),
(81, 'Chaos Knight', 'http://cdn.dota2.com/apps/dota2/images/heroes/chaos_knight_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/chaos_knight_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/chaos_knight_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/chaos_knight_vert.jpg'),
(82, 'Meepo', 'http://cdn.dota2.com/apps/dota2/images/heroes/meepo_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/meepo_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/meepo_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/meepo_vert.jpg'),
(83, 'Treant Protector', 'http://cdn.dota2.com/apps/dota2/images/heroes/treant_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/treant_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/treant_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/treant_vert.jpg'),
(84, 'Ogre Magi', 'http://cdn.dota2.com/apps/dota2/images/heroes/ogre_magi_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/ogre_magi_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/ogre_magi_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/ogre_magi_vert.jpg'),
(85, 'Undying', 'http://cdn.dota2.com/apps/dota2/images/heroes/undying_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/undying_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/undying_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/undying_vert.jpg'),
(86, 'Rubick', 'http://cdn.dota2.com/apps/dota2/images/heroes/rubick_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/rubick_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/rubick_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/rubick_vert.jpg'),
(87, 'Disruptor', 'http://cdn.dota2.com/apps/dota2/images/heroes/disruptor_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/disruptor_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/disruptor_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/disruptor_vert.jpg'),
(88, 'Nyx Assassin', 'http://cdn.dota2.com/apps/dota2/images/heroes/nyx_assassin_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/nyx_assassin_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/nyx_assassin_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/nyx_assassin_vert.jpg'),
(89, 'Naga Siren', 'http://cdn.dota2.com/apps/dota2/images/heroes/naga_siren_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/naga_siren_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/naga_siren_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/naga_siren_vert.jpg'),
(90, 'Keeper of the Light', 'http://cdn.dota2.com/apps/dota2/images/heroes/keeper_of_the_light_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/keeper_of_the_light_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/keeper_of_the_light_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/keeper_of_the_light_vert.jpg'),
(91, 'Io', 'http://cdn.dota2.com/apps/dota2/images/heroes/wisp_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/wisp_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/wisp_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/wisp_vert.jpg'),
(92, 'Visage', 'http://cdn.dota2.com/apps/dota2/images/heroes/visage_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/visage_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/visage_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/visage_vert.jpg'),
(93, 'Slark', 'http://cdn.dota2.com/apps/dota2/images/heroes/slark_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/slark_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/slark_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/slark_vert.jpg'),
(94, 'Medusa', 'http://cdn.dota2.com/apps/dota2/images/heroes/medusa_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/medusa_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/medusa_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/medusa_vert.jpg'),
(95, 'Troll Warlord', 'http://cdn.dota2.com/apps/dota2/images/heroes/troll_warlord_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/troll_warlord_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/troll_warlord_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/troll_warlord_vert.jpg'),
(96, 'Centaur Warrunner', 'http://cdn.dota2.com/apps/dota2/images/heroes/centaur_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/centaur_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/centaur_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/centaur_vert.jpg'),
(97, 'Magnus', 'http://cdn.dota2.com/apps/dota2/images/heroes/magnataur_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/magnataur_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/magnataur_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/magnataur_vert.jpg'),
(98, 'Timbersaw', 'http://cdn.dota2.com/apps/dota2/images/heroes/shredder_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/shredder_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/shredder_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/shredder_vert.jpg'),
(99, 'Bristleback', 'http://cdn.dota2.com/apps/dota2/images/heroes/bristleback_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/bristleback_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/bristleback_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/bristleback_vert.jpg'),
(100, 'Tusk', 'http://cdn.dota2.com/apps/dota2/images/heroes/tusk_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/tusk_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/tusk_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/tusk_vert.jpg'),
(101, 'Skywrath Mage', 'http://cdn.dota2.com/apps/dota2/images/heroes/skywrath_mage_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/skywrath_mage_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/skywrath_mage_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/skywrath_mage_vert.jpg'),
(102, 'Abaddon', 'http://cdn.dota2.com/apps/dota2/images/heroes/abaddon_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/abaddon_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/abaddon_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/abaddon_vert.jpg'),
(103, 'Elder Titan', 'http://cdn.dota2.com/apps/dota2/images/heroes/elder_titan_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/elder_titan_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/elder_titan_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/elder_titan_vert.jpg'),
(104, 'Legion Commander', 'http://cdn.dota2.com/apps/dota2/images/heroes/legion_commander_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/legion_commander_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/legion_commander_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/legion_commander_vert.jpg'),
(105, 'Techies', 'http://cdn.dota2.com/apps/dota2/images/heroes/techies_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/techies_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/techies_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/techies_vert.jpg'),
(106, 'Ember Spirit', 'http://cdn.dota2.com/apps/dota2/images/heroes/ember_spirit_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/ember_spirit_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/ember_spirit_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/ember_spirit_vert.jpg'),
(107, 'Earth Spirit', 'http://cdn.dota2.com/apps/dota2/images/heroes/earth_spirit_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/earth_spirit_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/earth_spirit_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/earth_spirit_vert.jpg'),
(108, 'Underlord', 'http://cdn.dota2.com/apps/dota2/images/heroes/abyssal_underlord_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/abyssal_underlord_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/abyssal_underlord_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/abyssal_underlord_vert.jpg'),
(109, 'Terrorblade', 'http://cdn.dota2.com/apps/dota2/images/heroes/terrorblade_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/terrorblade_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/terrorblade_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/terrorblade_vert.jpg'),
(110, 'Phoenix', 'http://cdn.dota2.com/apps/dota2/images/heroes/phoenix_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/phoenix_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/phoenix_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/phoenix_vert.jpg'),
(111, 'Oracle', 'http://cdn.dota2.com/apps/dota2/images/heroes/oracle_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/oracle_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/oracle_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/oracle_vert.jpg'),
(112, 'Winter Wyvern', 'http://cdn.dota2.com/apps/dota2/images/heroes/winter_wyvern_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/winter_wyvern_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/winter_wyvern_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/winter_wyvern_vert.jpg'),
(113, 'Arc Warden', 'http://cdn.dota2.com/apps/dota2/images/heroes/arc_warden_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/arc_warden_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/arc_warden_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/arc_warden_vert.jpg'),
(114, 'Monkey King', 'http://cdn.dota2.com/apps/dota2/images/heroes/monkey_king_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/monkey_king_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/monkey_king_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/monkey_king_vert.jpg'),
(119, 'Dark Willow', 'http://cdn.dota2.com/apps/dota2/images/heroes/dark_willow_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/dark_willow_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/dark_willow_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/dark_willow_vert.jpg'),
(120, 'Pangolier', 'http://cdn.dota2.com/apps/dota2/images/heroes/pangolier_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/pangolier_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/pangolier_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/pangolier_vert.jpg'),
(121, 'Grimstroke', 'http://cdn.dota2.com/apps/dota2/images/heroes/grimstroke_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/grimstroke_sb.png', 'null', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `matches_item`
--

CREATE TABLE `matches_item` (
  `item_id` int(11) NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `url_image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `matches_item`
--

INSERT INTO `matches_item` (`item_id`, `item_name`, `url_image`) VALUES
(0, 'Null', 'null'),
(1, 'Blink Dagger', 'http://cdn.dota2.com/apps/dota2/images/items/blink_lg.png'),
(2, 'Blades of Attack', 'http://cdn.dota2.com/apps/dota2/images/items/blades_of_attack_lg.png'),
(3, 'Broadsword', 'http://cdn.dota2.com/apps/dota2/images/items/broadsword_lg.png'),
(4, 'Chainmail', 'http://cdn.dota2.com/apps/dota2/images/items/chainmail_lg.png'),
(5, 'Claymore', 'http://cdn.dota2.com/apps/dota2/images/items/claymore_lg.png'),
(6, 'Helm of Iron Will', 'http://cdn.dota2.com/apps/dota2/images/items/helm_of_iron_will_lg.png'),
(7, 'Javelin', 'http://cdn.dota2.com/apps/dota2/images/items/javelin_lg.png'),
(8, 'Mithril Hammer', 'http://cdn.dota2.com/apps/dota2/images/items/mithril_hammer_lg.png'),
(9, 'Platemail', 'http://cdn.dota2.com/apps/dota2/images/items/platemail_lg.png'),
(10, 'Quarterstaff', 'http://cdn.dota2.com/apps/dota2/images/items/quarterstaff_lg.png'),
(11, 'Quelling Blade', 'http://cdn.dota2.com/apps/dota2/images/items/quelling_blade_lg.png'),
(12, 'Ring of Protection', 'http://cdn.dota2.com/apps/dota2/images/items/ring_of_protection_lg.png'),
(13, 'Gauntlets of Strength', 'http://cdn.dota2.com/apps/dota2/images/items/gauntlets_lg.png'),
(14, 'Slippers of Agility', 'http://cdn.dota2.com/apps/dota2/images/items/slippers_lg.png'),
(15, 'Mantle of Intelligence', 'http://cdn.dota2.com/apps/dota2/images/items/mantle_lg.png'),
(16, 'Iron Branch', 'http://cdn.dota2.com/apps/dota2/images/items/branches_lg.png'),
(17, 'Belt of Strength', 'http://cdn.dota2.com/apps/dota2/images/items/belt_of_strength_lg.png'),
(18, 'Band of Elvenskin', 'http://cdn.dota2.com/apps/dota2/images/items/boots_of_elves_lg.png'),
(19, 'Robe of the Magi', 'http://cdn.dota2.com/apps/dota2/images/items/robe_lg.png'),
(20, 'Circlet', 'http://cdn.dota2.com/apps/dota2/images/items/circlet_lg.png'),
(21, 'Ogre Axe', 'http://cdn.dota2.com/apps/dota2/images/items/ogre_axe_lg.png'),
(22, 'Blade of Alacrity', 'http://cdn.dota2.com/apps/dota2/images/items/blade_of_alacrity_lg.png'),
(23, 'Staff of Wizardry', 'http://cdn.dota2.com/apps/dota2/images/items/staff_of_wizardry_lg.png'),
(24, 'Ultimate Orb', 'http://cdn.dota2.com/apps/dota2/images/items/ultimate_orb_lg.png'),
(25, 'Gloves of Haste', 'http://cdn.dota2.com/apps/dota2/images/items/gloves_lg.png'),
(26, 'Morbid Mask', 'http://cdn.dota2.com/apps/dota2/images/items/lifesteal_lg.png'),
(27, 'Ring of Regen', 'http://cdn.dota2.com/apps/dota2/images/items/ring_of_regen_lg.png'),
(28, 'Sage\'s Mask', 'http://cdn.dota2.com/apps/dota2/images/items/sobi_mask_lg.png'),
(29, 'Boots of Speed', 'http://cdn.dota2.com/apps/dota2/images/items/boots_lg.png'),
(30, 'Gem of True Sight', 'http://cdn.dota2.com/apps/dota2/images/items/gem_lg.png'),
(31, 'Cloak', 'http://cdn.dota2.com/apps/dota2/images/items/cloak_lg.png'),
(32, 'Talisman of Evasion', 'http://cdn.dota2.com/apps/dota2/images/items/talisman_of_evasion_lg.png'),
(33, 'Cheese', 'http://cdn.dota2.com/apps/dota2/images/items/cheese_lg.png'),
(34, 'Magic Stick', 'http://cdn.dota2.com/apps/dota2/images/items/magic_stick_lg.png'),
(35, 'Recipe: Magic Wand', 'http://cdn.dota2.com/apps/dota2/images/items/recipe_lg.png\r\n'),
(36, 'Magic Wand', 'http://cdn.dota2.com/apps/dota2/images/items/magic_wand_lg.png'),
(37, 'Ghost Scepter', 'http://cdn.dota2.com/apps/dota2/images/items/ghost_lg.png'),
(38, 'Clarity', 'http://cdn.dota2.com/apps/dota2/images/items/clarity_lg.png'),
(39, 'Healing Salve', 'http://cdn.dota2.com/apps/dota2/images/items/flask_lg.png'),
(40, 'Dust of Appearance', 'http://cdn.dota2.com/apps/dota2/images/items/dust_lg.png'),
(41, 'Bottle', 'http://cdn.dota2.com/apps/dota2/images/items/bottle_lg.png'),
(42, 'Observer Ward', 'http://cdn.dota2.com/apps/dota2/images/items/ward_observer_lg.png'),
(43, 'Sentry Ward', 'http://cdn.dota2.com/apps/dota2/images/items/ward_sentry_lg.png'),
(44, 'Tango', 'http://cdn.dota2.com/apps/dota2/images/items/tango_lg.png'),
(45, 'Animal Courier', 'http://cdn.dota2.com/apps/dota2/images/items/courier_lg.png'),
(46, 'Town Portal Scroll', 'http://cdn.dota2.com/apps/dota2/images/items/tpscroll_lg.png'),
(47, 'Recipe: Boots of Travel', 'http://cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(48, 'Boots of Travel', 'http://cdn.dota2.com/apps/dota2/images/items/travel_boots_lg.png'),
(49, 'Recipe: Phase Boots', 'http://cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(50, 'Phase Boots', 'http://cdn.dota2.com/apps/dota2/images/items/phase_boots_lg.png'),
(51, 'Demon Edge', 'http://cdn.dota2.com/apps/dota2/images/items/demon_edge_lg.png'),
(52, 'Eaglesong', 'http://cdn.dota2.com/apps/dota2/images/items/eagle_lg.png'),
(53, 'Reaver', 'http://cdn.dota2.com/apps/dota2/images/items/reaver_lg.png'),
(54, 'Sacred Relic', 'http://cdn.dota2.com/apps/dota2/images/items/relic_lg.png'),
(55, 'Hyperstone', 'http://cdn.dota2.com/apps/dota2/images/items/hyperstone_lg.png'),
(56, 'Ring of Health', 'http://cdn.dota2.com/apps/dota2/images/items/ring_of_health_lg.png'),
(57, 'Void Stone', 'http://cdn.dota2.com/apps/dota2/images/items/void_stone_lg.png'),
(58, 'Mystic Staff', 'http://cdn.dota2.com/apps/dota2/images/items/mystic_staff_lg.png'),
(59, 'Energy Booster', 'http://cdn.dota2.com/apps/dota2/images/items/energy_booster_lg.png'),
(60, 'Point Booster', 'http://cdn.dota2.com/apps/dota2/images/items/point_booster_lg.png'),
(61, 'Vitality Booster', 'http://cdn.dota2.com/apps/dota2/images/items/vitality_booster_lg.png'),
(62, 'Recipe: Power Treads', 'http://cdn.dota2.com/apps/dota2/images/items/recipe_power_treads_lg.png'),
(63, 'Power Treads', 'http://cdn.dota2.com/apps/dota2/images/items/power_treads_lg.png'),
(64, 'Recipe: Hand of Midas', 'http://cdn.dota2.com/apps/dota2/images/items/recipe_hand_of_midas_lg.png'),
(65, 'Hand of Midas', 'http://cdn.dota2.com/apps/dota2/images/items/hand_of_midas_lg.png'),
(66, 'Recipe: Oblivion Staff', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(67, 'Oblivion Staff', 'http://cdn.dota2.com/apps/dota2/images/items/oblivion_staff_lg.png'),
(68, 'Recipe: Perseverance', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(69, 'Perseverance', 'http://cdn.dota2.com/apps/dota2/images/items/pers_lg.png'),
(70, 'Recipe: Poor Man\'s Shield', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(71, 'Poor Man\'s Shield', 'http://cdn.dota2.com/apps/dota2/images/items/poor_mans_shield_lg.png'),
(72, 'Recipe: Bracer', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(73, 'Bracer', 'http://cdn.dota2.com/apps/dota2/images/items/bracer_lg.png'),
(74, 'Recipe: Wraith Band', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png\r\n'),
(75, 'Wraith Band', 'http://cdn.dota2.com/apps/dota2/images/items/wraith_band_lg.png'),
(76, 'Recipe: Null Talisman', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(77, 'Null Talisman', 'http://cdn.dota2.com/apps/dota2/images/items/null_talisman_lg.png'),
(78, 'Recipe: Mekansm', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(79, 'Mekansm', 'http://cdn.dota2.com/apps/dota2/images/items/mekansm_lg.png'),
(80, 'Recipe: Vladmir\'s Offering', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(81, 'Vladmir\'s Offering', 'http://cdn.dota2.com/apps/dota2/images/items/vladmir_lg.png'),
(85, 'Recipe: Buckler', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(86, 'Buckler', 'http://cdn.dota2.com/apps/dota2/images/items/buckler_lg.png'),
(87, 'Recipe: Ring of Basilius', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(88, 'Ring of Basilius', 'http://cdn.dota2.com/apps/dota2/images/items/ring_of_basilius_lg.png'),
(89, 'Recipe: Pipe of Insight', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(90, 'Pipe of Insight', 'http://cdn.dota2.com/apps/dota2/images/items/pipe_lg.png'),
(91, 'Recipe: Urn of Shadows', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(92, 'Urn of Shadows', 'http://cdn.dota2.com/apps/dota2/images/items/urn_of_shadows_lg.png'),
(93, 'Recipe: Headdress', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(94, 'Headdress', 'http://cdn.dota2.com/apps/dota2/images/items/headdress_lg.png'),
(95, 'Recipe: Scythe of Vyse', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(96, 'Scythe of Vyse', 'http://cdn.dota2.com/apps/dota2/images/items/sheepstick_lg.png'),
(97, 'Recipe: Orchid Malevolence', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(98, 'Orchid Malevolence', 'http://cdn.dota2.com/apps/dota2/images/items/orchid_lg.png'),
(99, 'Recipe: Eul\'s Scepter of Divinity', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(100, 'Eul\'s Scepter of Divinity', 'http://cdn.dota2.com/apps/dota2/images/items/cyclone_lg.png'),
(101, 'Recipe: Force Staff', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(102, 'Force Staff', 'http://cdn.dota2.com/apps/dota2/images/items/force_staff_lg.png'),
(103, 'Recipe: Dagon', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(104, 'Dagon', 'http://cdn.dota2.com/apps/dota2/images/items/dagon_lg.png'),
(105, 'Recipe: Necronomicon', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(106, 'Necronomicon', 'http://cdn.dota2.com/apps/dota2/images/items/necronomicon_lg.png'),
(107, 'Recipe: Aghanim\'s Scepter', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(108, 'Aghanim\'s Scepter', 'http://cdn.dota2.com/apps/dota2/images/items/ultimate_scepter_lg.png'),
(109, 'Recipe: Refresher Orb', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(110, 'Refresher Orb', 'http://cdn.dota2.com/apps/dota2/images/items/refresher_lg.png'),
(111, 'Recipe: Assault Cuirass', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(112, 'Assault Cuirass', 'http://cdn.dota2.com/apps/dota2/images/items/assault_lg.png'),
(113, 'Recipe: Heart of Tarrasque', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(114, 'Heart of Tarrasque', 'http://cdn.dota2.com/apps/dota2/images/items/heart_lg.png'),
(115, 'Recipe: Black King Bar', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(116, 'Black King Bar', 'http://cdn.dota2.com/apps/dota2/images/items/black_king_bar_lg.png'),
(117, 'Aegis of the Immortal', 'http://cdn.dota2.com/apps/dota2/images/items/aegis_lg.png'),
(118, 'Recipe: Shiva\'s Guard', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(119, 'Shiva\'s Guard', 'http://cdn.dota2.com/apps/dota2/images/items/shivas_guard_lg.png'),
(120, 'Recipe: Bloodstone', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(121, 'Bloodstone', 'http://cdn.dota2.com/apps/dota2/images/items/bloodstone_lg.png'),
(122, 'Recipe: Linken\'s Sphere', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(123, 'Linken\'s Sphere', 'http://cdn.dota2.com/apps/dota2/images/items/sphere_lg.png'),
(124, 'Recipe: Vanguard', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(125, 'Vanguard', 'http://cdn.dota2.com/apps/dota2/images/items/vanguard_lg.png'),
(126, 'Recipe: Blade Mail', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(127, 'Blade Mail', 'http://cdn.dota2.com/apps/dota2/images/items/blade_mail_lg.png'),
(128, 'Recipe: Soul Booster', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(129, 'Soul Booster', 'http://cdn.dota2.com/apps/dota2/images/items/soul_booster_lg.png'),
(130, 'Recipe: Hood of Defiance', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(131, 'Hood of Defiance', 'http://cdn.dota2.com/apps/dota2/images/items/hood_of_defiance_lg.png'),
(132, 'Recipe: Divine Rapier', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(133, 'Divine Rapier', 'http://cdn.dota2.com/apps/dota2/images/items/rapier_lg.png'),
(134, 'Recipe: Monkey King Bar', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(135, 'Monkey King Bar', 'http://cdn.dota2.com/apps/dota2/images/items/monkey_king_bar_lg.png'),
(136, 'Recipe: Radiance', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(137, 'Radiance', 'http://cdn.dota2.com/apps/dota2/images/items/radiance_lg.png'),
(138, 'Recipe: Butterfly', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(139, 'Butterfly', 'http://cdn.dota2.com/apps/dota2/images/items/butterfly_lg.png'),
(140, 'Recipe: Daedalus', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(141, 'Daedalus', 'http://cdn.dota2.com/apps/dota2/images/items/greater_crit_lg.png'),
(142, 'Recipe: Skull Basher', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(143, 'Skull Basher', 'http://cdn.dota2.com/apps/dota2/images/items/basher_lg.png'),
(144, 'Recipe: Battle Fury', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(145, 'Battle Fury', 'http://cdn.dota2.com/apps/dota2/images/items/bfury_lg.png'),
(146, 'Recipe: Manta Style', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(147, 'Manta Style', 'http://cdn.dota2.com/apps/dota2/images/items/manta_lg.png'),
(148, 'Recipe: Crystalys', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(149, 'Crystalys', 'http://cdn.dota2.com/apps/dota2/images/items/lesser_crit_lg.png'),
(150, 'Recipe: Armlet of Mordiggian', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(151, 'Armlet of Mordiggian', 'http://cdn.dota2.com/apps/dota2/images/items/armlet_lg.png'),
(152, 'Shadow Blade', 'http://cdn.dota2.com/apps/dota2/images/items/invis_sword_lg.png'),
(153, 'Recipe: Sange and Yasha', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(154, 'Sange and Yasha', 'http://cdn.dota2.com/apps/dota2/images/items/sange_and_yasha_lg.png'),
(155, 'Recipe: Satanic', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(156, 'Satanic', 'http://cdn.dota2.com/apps/dota2/images/items/satanic_lg.png'),
(157, 'Recipe: Mjollnir', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(158, 'Mjollnir', 'http://cdn.dota2.com/apps/dota2/images/items/mjollnir_lg.png'),
(159, 'Recipe: Eye of Skadi', 'http://cdn.dota2.com/apps/dota2/images/items/recipe_skadi_lg.png'),
(160, 'Eye of Skadi', 'http://cdn.dota2.com/apps/dota2/images/items/skadi_lg.png'),
(161, 'Recipe: Sange', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(162, 'Sange', 'http://cdn.dota2.com/apps/dota2/images/items/sange_lg.png'),
(163, 'Recipe: Helm of the Dominator', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(164, 'Helm of the Dominator', 'http://cdn.dota2.com/apps/dota2/images/items/helm_of_the_dominator_lg.png'),
(165, 'Recipe: Maelstrom', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(166, 'Maelstrom', 'http://cdn.dota2.com/apps/dota2/images/items/maelstrom_lg.png'),
(167, 'Recipe: Desolator', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(168, 'Desolator', 'http://cdn.dota2.com/apps/dota2/images/items/desolator_lg.png'),
(169, 'Recipe: Yasha', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(170, 'Yasha', 'http://cdn.dota2.com/apps/dota2/images/items/yasha_lg.png'),
(171, 'Recipe: Mask of Madness', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(172, 'Mask of Madness', 'http://cdn.dota2.com/apps/dota2/images/items/mask_of_madness_lg.png'),
(173, 'Recipe: Diffusal Blade', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(174, 'Diffusal Blade', 'http://cdn.dota2.com/apps/dota2/images/items/diffusal_blade_lg.png'),
(175, 'Recipe: Ethereal Blade', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(176, 'Ethereal Blade', 'http://cdn.dota2.com/apps/dota2/images/items/ethereal_blade_lg.png'),
(177, 'Recipe: Soul Ring', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(178, 'Soul Ring', 'http://cdn.dota2.com/apps/dota2/images/items/soul_ring_lg.png'),
(179, 'Recipe: Arcane Boots', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(180, 'Arcane Boots', 'http://cdn.dota2.com/apps/dota2/images/items/arcane_boots_lg.png'),
(181, 'Orb of Venom', 'http://cdn.dota2.com/apps/dota2/images/items/orb_of_venom_lg.png'),
(182, 'Stout Shield', 'http://cdn.dota2.com/apps/dota2/images/items/stout_shield_lg.png'),
(183, 'Recipe: Shadow Blade', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(184, 'Recipe: Drum of Endurance', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(185, 'Drum of Endurance', 'http://cdn.dota2.com/apps/dota2/images/items/ancient_janggo_lg.png'),
(186, 'Recipe: Medallion of Courage', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(187, 'Medallion of Courage', 'http://cdn.dota2.com/apps/dota2/images/items/medallion_of_courage_lg.png'),
(188, 'Smoke of Deceit', 'http://cdn.dota2.com/apps/dota2/images/items/smoke_of_deceit_lg.png'),
(189, 'Recipe: Veil of Discord', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(190, 'Veil of Discord', 'http://cdn.dota2.com/apps/dota2/images/items/veil_of_discord_lg.png'),
(191, 'Recipe: Necronomicon', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(192, 'Recipe: Necronomicon', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(193, 'Necronomicon', 'http://cdn.dota2.com/apps/dota2/images/items/necronomicon_2_lg.png'),
(194, 'Necronomicon', 'http://cdn.dota2.com/apps/dota2/images/items/necronomicon_3_lg.png'),
(197, 'Recipe: Dagon', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(198, 'Recipe: Dagon', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(199, 'Recipe: Dagon', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(200, 'Recipe: Dagon', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(201, 'Dagon', 'http://cdn.dota2.com/apps/dota2/images/items/dagon_2_lg.png'),
(202, 'Dagon', 'http://cdn.dota2.com/apps/dota2/images/items/dagon_3_lg.png'),
(203, 'Dagon', 'http://cdn.dota2.com/apps/dota2/images/items/dagon_4_lg.png'),
(204, 'Dagon', 'http://cdn.dota2.com/apps/dota2/images/items/dagon_5_lg.png'),
(205, 'Recipe: Rod of Atos', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(206, 'Rod of Atos', 'http://cdn.dota2.com/apps/dota2/images/items/rod_of_atos_lg.png'),
(207, 'Recipe: Abyssal Blade', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(208, 'Abyssal Blade', 'http://cdn.dota2.com/apps/dota2/images/items/abyssal_blade_lg.png'),
(209, 'Recipe: Heaven\'s Halberd', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(210, 'Heaven\'s Halberd', 'http://cdn.dota2.com/apps/dota2/images/items/heavens_halberd_lg.png'),
(211, 'Recipe: Ring of Aquila', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(212, 'Ring of Aquila', 'http://cdn.dota2.com/apps/dota2/images/items/ring_of_aquila_lg.png'),
(213, 'Recipe: Tranquil Boots', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(214, 'Tranquil Boots', 'http://cdn.dota2.com/apps/dota2/images/items/tranquil_boots_lg.png'),
(215, 'Shadow Amulet', 'http://cdn.dota2.com/apps/dota2/images/items/shadow_amulet_lg.png'),
(216, 'Enchanted Mango', 'http://cdn.dota2.com/apps/dota2/images/items/enchanted_mango_lg.png'),
(217, 'Recipe: Observer and Sentry Wards', 'http://cdn.dota2.com/apps/dota2/images/items/recipe_ward_dispenser_lg.png'),
(218, 'Observer and Sentry Wards', 'http://cdn.dota2.com/apps/dota2/images/items/ward_dispenser_lg.png'),
(219, 'Recipe: Boots of Travel', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(220, 'Boots of Travel', 'http://cdn.dota2.com/apps/dota2/images/items/travel_boots_2_lg.png'),
(221, 'Recipe: Lotus Orb', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(222, 'Recipe: Meteor Hammer', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(223, 'Meteor Hammer', 'http://cdn.dota2.com/apps/dota2/images/items/meteor_hammer_lg.png'),
(224, 'Recipe: Nullifier', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(225, 'Nullifier', 'http://cdn.dota2.com/apps/dota2/images/items/nullifier_lg.png'),
(226, 'Lotus Orb', 'http://cdn.dota2.com/apps/dota2/images/items/lotus_orb_lg.png'),
(227, 'Recipe: Solar Crest', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(228, 'Recipe: Octarine Core', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(229, 'Solar Crest', 'http://cdn.dota2.com/apps/dota2/images/items/solar_crest_lg.png'),
(230, 'Recipe: Guardian Greaves', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(231, 'Guardian Greaves', 'http://cdn.dota2.com/apps/dota2/images/items/guardian_greaves_lg.png'),
(232, 'Aether Lens', 'http://cdn.dota2.com/apps/dota2/images/items/aether_lens_lg.png'),
(233, 'Recipe: Aether Lens', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(234, 'Recipe: Dragon Lance', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(235, 'Octarine Core', 'http://cdn.dota2.com/apps/dota2/images/items/octarine_core_lg.png'),
(236, 'Dragon Lance', 'http://cdn.dota2.com/apps/dota2/images/items/dragon_lance_lg.png'),
(237, 'Faerie Fire', 'http://cdn.dota2.com/apps/dota2/images/items/faerie_fire_lg.png'),
(238, 'Iron Talon Recipe', 'http://cdn.dota2.com/apps/dota2/images/items/recipe_iron_talon_lg.png'),
(239, 'Iron Talon', 'http://cdn.dota2.com/apps/dota2/images/items/iron_talon_lg.png'),
(240, 'Blight Stone', 'http://cdn.dota2.com/apps/dota2/images/items/blight_stone_lg.png'),
(241, 'Tango (Shared)', 'http://cdn.dota2.com/apps/dota2/images/items/tango_single_lg.png'),
(242, 'Crimson Guard', 'http://cdn.dota2.com/apps/dota2/images/items/crimson_guard_lg.png'),
(243, 'Recipe: Crimson Guard', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(244, 'Wind Lace', 'http://cdn.dota2.com/apps/dota2/images/items/wind_lace_lg.png'),
(245, 'Recipe: Bloodthorn', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(246, 'Recipe: Moon Shard', 'http://cdn.dota2.com/apps/dota2/images/items/recipe_moon_shard_lg.png'),
(247, 'Moon Shard', 'http://cdn.dota2.com/apps/dota2/images/items/moon_shard_lg.png'),
(248, 'Recipe: Silver Edge', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(249, 'Silver Edge', 'http://cdn.dota2.com/apps/dota2/images/items/silver_edge_lg.png'),
(250, 'Bloodthorn', 'http://cdn.dota2.com/apps/dota2/images/items/bloodthorn_lg.png'),
(251, 'Recipe: Echo Sabre', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(252, 'Echo Sabre', 'http://cdn.dota2.com/apps/dota2/images/items/echo_sabre_lg.png'),
(253, 'Recipe: Glimmer Cape', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(254, 'Glimmer Cape', 'http://cdn.dota2.com/apps/dota2/images/items/glimmer_cape_lg.png'),
(255, 'Recipe: Aeon Disk', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(256, 'Aeon Disk', 'http://cdn.dota2.com/apps/dota2/images/items/combo_breaker_lg.png'),
(257, 'Tome of Knowledge', 'http://cdn.dota2.com/apps/dota2/images/items/tome_of_knowledge_lg.png'),
(258, 'Recipe: Kaya', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(259, 'Kaya', 'http://cdn.dota2.com/apps/dota2/images/items/trident_lg.png'),
(260, 'Refresher Shard', 'http://cdn.dota2.com/apps/dota2/images/items/refresher_shard_lg.png'),
(261, 'Crown', 'http://cdn.dota2.com/apps/dota2/images/items/crown_lg.png'),
(262, 'Recipe: Hurricane Pike', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(263, 'Hurricane Pike', 'http://cdn.dota2.com/apps/dota2/images/items/hurricane_pike_lg.png'),
(265, 'Infused Raindrops', 'http://cdn.dota2.com/apps/dota2/images/items/infused_raindrop_lg.png'),
(266, 'Recipe: Spirit Vessel', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(267, 'Spirit Vessel', 'http://cdn.dota2.com/apps/dota2/images/items/spirit_vessel_lg.png'),
(268, 'Recipe: Holy Locket', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(269, 'Holy Locket', 'http://cdn.dota2.com/apps/dota2/images/items/holy_locket_lg.png'),
(272, 'Recipe: Kaya and Sange', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(273, 'Kaya and Sange', 'http://cdn.dota2.com/apps/dota2/images/items/kaya_and_sange_lg.png'),
(274, 'Recipe: Yasha and Kaya', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(275, 'DOTA_Tooltip_Ability_item_trident', 'null'),
(276, 'DOTA_Tooltip_Ability_item_combo_breaker', 'null'),
(277, 'Yasha and Kaya', 'http://cdn.dota2.com/apps/dota2/images/items/yasha_and_kaya_lg.png'),
(279, 'Ring of Tarrasque', 'http://cdn.dota2.com/apps/dota2/images/items/ring_of_tarrasque_lg.png'),
(1021, 'River Vial: Chrome', 'http://cdn.dota2.com/apps/dota2/images/items/river_painter_lg.png'),
(1022, 'River Vial: Dry', 'http://cdn.dota2.com/apps/dota2/images/items/river_painter2_lg.png'),
(1023, 'River Vial: Slime', 'http://cdn.dota2.com/apps/dota2/images/items/river_painter3_lg.png'),
(1024, 'River Vial: Oil', 'http://cdn.dota2.com/apps/dota2/images/items/river_painter4_lg.png'),
(1025, 'River Vial: Electrified', 'http://cdn.dota2.com/apps/dota2/images/items/river_painter5_lg.png'),
(1026, 'River Vial: Potion', 'http://cdn.dota2.com/apps/dota2/images/items/river_painter6_lg.png'),
(1027, 'River Vial: Blood', 'http://cdn.dota2.com/apps/dota2/images/items/river_painter7_lg.png'),
(1028, 'Tombstone', 'null'),
(1029, 'Super Blink Dagger', 'null'),
(1030, 'Pocket Tower', 'null'),
(1032, 'Pocket Roshan', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `matches_item_inventory`
--

CREATE TABLE `matches_item_inventory` (
  `id` int(11) NOT NULL,
  `slot` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `match_id` bigint(20) NOT NULL,
  `player_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `matches_item_inventory`
--

INSERT INTO `matches_item_inventory` (`id`, `slot`, `item_id`, `match_id`, `player_id`) VALUES
(1, 0, 0, 4364887521, 0),
(2, 1, 180, 4364887521, 0),
(3, 2, 77, 4364887521, 0),
(4, 3, 6, 4364887521, 0),
(5, 4, 0, 4364887521, 0),
(6, 5, 0, 4364887521, 0),
(7, 0, 81, 4364846246, 163580946),
(8, 1, 147, 4364846246, 163580946),
(9, 2, 75, 4364846246, 163580946),
(10, 3, 75, 4364846246, 163580946),
(11, 4, 63, 4364846246, 163580946),
(12, 5, 123, 4364846246, 163580946),
(13, 0, 63, 4364846246, 179625075),
(14, 1, 1, 4364846246, 179625075),
(15, 2, 168, 4364846246, 179625075),
(16, 3, 75, 4364846246, 179625075),
(17, 4, 236, 4364846246, 179625075),
(18, 5, 75, 4364846246, 179625075),
(19, 0, 1, 4364846246, 129105279),
(20, 1, 36, 4364846246, 129105279),
(21, 2, 102, 4364846246, 129105279),
(22, 3, 86, 4364846246, 129105279),
(23, 4, 180, 4364846246, 129105279),
(24, 5, 182, 4364846246, 129105279),
(25, 0, 36, 4364846246, 119984038),
(26, 1, 92, 4364846246, 119984038),
(27, 2, 29, 4364846246, 119984038),
(28, 3, 188, 4364846246, 119984038),
(29, 4, 232, 4364846246, 119984038),
(30, 5, 244, 4364846246, 119984038),
(31, 0, 254, 4364846246, 75678907),
(32, 1, 244, 4364846246, 75678907),
(33, 2, 34, 4364846246, 75678907),
(34, 3, 218, 4364846246, 75678907),
(35, 4, 29, 4364846246, 75678907),
(36, 5, 188, 4364846246, 75678907),
(37, 0, 36, 4364846246, 47150177),
(38, 1, 265, 4364846246, 47150177),
(39, 2, 42, 4364846246, 47150177),
(40, 3, 244, 4364846246, 47150177),
(41, 4, 73, 4364846246, 47150177),
(42, 5, 29, 4364846246, 47150177),
(43, 0, 63, 4364846246, 122534469),
(44, 1, 92, 4364846246, 122534469),
(45, 2, 40, 4364846246, 122534469),
(46, 3, 244, 4364846246, 122534469),
(47, 4, 182, 4364846246, 122534469),
(48, 5, 181, 4364846246, 122534469),
(49, 0, 182, 4364846246, 116307658),
(50, 1, 50, 4364846246, 116307658),
(51, 2, 40, 4364846246, 116307658),
(52, 3, 41, 4364846246, 116307658),
(53, 4, 252, 4364846246, 116307658),
(54, 5, 1, 4364846246, 116307658),
(55, 0, 50, 4364846246, 38131454),
(56, 1, 145, 4364846246, 38131454),
(57, 2, 182, 4364846246, 38131454),
(58, 3, 75, 4364846246, 38131454),
(59, 4, 170, 4364846246, 38131454),
(60, 5, 75, 4364846246, 38131454),
(61, 0, 77, 4364846246, 156173917),
(62, 1, 1, 4364846246, 156173917),
(63, 2, 63, 4364846246, 156173917),
(64, 3, 108, 4364846246, 156173917),
(65, 4, 7, 4364846246, 156173917),
(66, 5, 77, 4364846246, 156173917);

-- --------------------------------------------------------

--
-- Table structure for table `matches_match`
--

CREATE TABLE `matches_match` (
  `match_id` bigint(20) NOT NULL,
  `spectator` int(11) NOT NULL,
  `series_type` int(11) NOT NULL,
  `r_wins` int(11) NOT NULL,
  `d_wins` int(11) NOT NULL,
  `duration` int(11) NOT NULL,
  `roshan_respawn_timer` int(11) NOT NULL,
  `r_score` int(11) NOT NULL,
  `d_score` int(11) NOT NULL,
  `r_tower_state` int(11) NOT NULL,
  `d_tower_state` int(11) NOT NULL,
  `r_barracks_state` int(11) NOT NULL,
  `d_barracks_state` int(11) NOT NULL,
  `is_over` int(11) NOT NULL,
  `winner` int(11) NOT NULL,
  `date` datetime(6) NOT NULL,
  `d_team_id` int(11) NOT NULL,
  `r_team_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `matches_match`
--

INSERT INTO `matches_match` (`match_id`, `spectator`, `series_type`, `r_wins`, `d_wins`, `duration`, `roshan_respawn_timer`, `r_score`, `d_score`, `r_tower_state`, `d_tower_state`, `r_barracks_state`, `d_barracks_state`, `is_over`, `winner`, `date`, `d_team_id`, `r_team_id`) VALUES
(4364833202, 1, 0, 0, 0, 1851, 0, 27, 34, 1982, 1920, 63, 48, 0, 0, '2019-01-26 23:11:51.891194', 6709757, 6712646),
(4364846246, 16, 1, 1, 0, 1556, 0, 25, 26, 1831, 1920, 63, 48, 0, 0, '2019-01-26 23:19:13.879685', 6325327, 5057280),
(4364887521, 0, 0, 0, 0, 787, 0, 5, 3, 2047, 2047, 63, 63, 0, 0, '2019-01-26 23:27:56.551418', 4997618, 4997576);

-- --------------------------------------------------------

--
-- Table structure for table `matches_pick`
--

CREATE TABLE `matches_pick` (
  `id` int(11) NOT NULL,
  `side` int(11) NOT NULL,
  `slot` int(11) NOT NULL,
  `hero_id` int(11) NOT NULL,
  `match_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `matches_pick`
--

INSERT INTO `matches_pick` (`id`, `side`, `slot`, `hero_id`, `match_id`) VALUES
(1, 1, 0, 2, 4364833202),
(2, 1, 1, 99, 4364833202),
(3, 1, 2, 121, 4364833202),
(4, 1, 3, 12, 4364833202),
(5, 1, 4, 95, 4364833202),
(6, 1, 5, 35, 4364833202),
(7, 1, 0, 100, 4364846246),
(8, 1, 1, 96, 4364846246),
(9, 1, 2, 38, 4364846246),
(10, 1, 3, 55, 4364846246),
(11, 1, 4, 59, 4364846246),
(12, 1, 5, 23, 4364846246);

-- --------------------------------------------------------

--
-- Table structure for table `matches_player`
--

CREATE TABLE `matches_player` (
  `player_id` bigint(20) NOT NULL,
  `player_name` varchar(100) NOT NULL,
  `team_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `matches_player`
--

INSERT INTO `matches_player` (`player_id`, `player_name`, `team_id`) VALUES
(0, 'NULL', 0),
(38131454, 'bakugo', 6325327),
(47150177, 'maxemoe', 6325327),
(75678907, 'est! est!! est!!!', 5057280),
(105428201, 'twitch.tv/motinhacsgo', 6712646),
(116307658, 'merman', 6325327),
(119984038, 'turtl3n3ck', 5057280),
(122534469, 'HydroSK', 6325327),
(129105279, 'UIC.SammY-', 5057280),
(133355515, 'Clint Eastwood ?', 6712646),
(136642011, '???????? ?5?????????', 6709757),
(155272593, 'wintercherry', 6709757),
(156173917, 'Grand Mistress Meo', 6325327),
(163580946, '\'Pk ?', 5057280),
(179625075, 'Cancer_17 ????????douyu5744646', 5057280),
(185822577, '--TaTaS--', 6709757),
(231520863, 'flipgodd', 6712646),
(295037923, '???????', 6709757),
(401223431, '-1 level', 6712646),
(920019185, 'NECKFACE', 6712646),
(932573670, 'mister Prus', 6709757);

-- --------------------------------------------------------

--
-- Table structure for table `matches_settings`
--

CREATE TABLE `matches_settings` (
  `id` int(11) NOT NULL,
  `num_of_objects_per_page` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `matches_stats`
--

CREATE TABLE `matches_stats` (
  `id` int(11) NOT NULL,
  `kills` int(11) NOT NULL,
  `death` int(11) NOT NULL,
  `assits` int(11) NOT NULL,
  `last_hits` int(11) NOT NULL,
  `denies` int(11) NOT NULL,
  `gold` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `gpm` int(11) NOT NULL,
  `xpm` int(11) NOT NULL,
  `ultimate_cooldown` int(11) NOT NULL,
  `respawn_timer` int(11) NOT NULL,
  `pos_x` double NOT NULL,
  `pos_y` double NOT NULL,
  `net_worth` int(11) NOT NULL,
  `side` int(11) NOT NULL,
  `hero_id_id` int(11) NOT NULL,
  `match_id` bigint(20) NOT NULL,
  `player_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `matches_stats`
--

INSERT INTO `matches_stats` (`id`, `kills`, `death`, `assits`, `last_hits`, `denies`, `gold`, `level`, `gpm`, `xpm`, `ultimate_cooldown`, `respawn_timer`, `pos_x`, `pos_y`, `net_worth`, `side`, `hero_id_id`, `match_id`, `player_id`) VALUES
(1, 0, 3, 0, 16, 1, 100, 5, 168, 162, 0, 0, 6524.60205078125, 4105.22216796875, 2090, 1, 98, 4364887521, 0),
(2, 5, 4, 11, 257, 12, 1650, 20, 649, 681, 4, 0, -2330.83642578125, 1885.19177246094, 16035, 0, 1, 4364846246, 163580946),
(3, 5, 3, 6, 197, 23, 1387, 19, 582, 605, 0, 0, -1586.14721679688, -454.75634765625, 14147, 0, 46, 4364846246, 179625075),
(4, 5, 2, 12, 105, 16, 1760, 15, 442, 427, 49, 0, -2901.50854492188, 2579.34912109375, 10610, 0, 97, 4364846246, 129105279),
(5, 4, 7, 14, 43, 7, 2543, 13, 332, 315, 0, 0, -3063.94458007812, 1699.71044921875, 7098, 0, 121, 4364846246, 119984038),
(6, 6, 10, 9, 13, 2, 1638, 14, 320, 356, 4, 0, 188.495483398438, -2404.32153320312, 5243, 0, 31, 4364846246, 75678907),
(7, 4, 8, 12, 13, 0, 1370, 11, 235, 237, 0, 0, 2509.76586914062, 992.836059570312, 3695, 1, 26, 4364846246, 47150177),
(8, 2, 8, 15, 9, 0, 738, 10, 210, 217, 14, 0, 3418.28637695312, 1104.4423828125, 4048, 1, 71, 4364846246, 122534469),
(9, 5, 4, 11, 55, 6, 690, 14, 344, 377, 0, 0, 3433.82153320312, 3105.22143554688, 8220, 1, 19, 4364846246, 116307658),
(10, 4, 3, 4, 147, 11, 608, 16, 417, 483, 23, 0, 1677.37084960938, 937.941040039062, 9938, 1, 8, 4364846246, 38131454),
(11, 11, 2, 5, 125, 11, 264, 15, 444, 408, 0, 0, 3431.25268554688, 1595.45959472656, 10384, 1, 21, 4364846246, 156173917);

-- --------------------------------------------------------

--
-- Table structure for table `matches_team`
--

CREATE TABLE `matches_team` (
  `team_id` int(11) NOT NULL,
  `team_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `matches_team`
--

INSERT INTO `matches_team` (`team_id`, `team_name`) VALUES
(0, 'NULL'),
(4997576, 'Default bots'),
(4997618, 'PubSimulator'),
(5057280, 'Dota at UIC'),
(6325327, 'UT Austin Longhorns'),
(6709757, 'KaKvSSSR'),
(6712646, 'NoHat');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts_follower`
--
ALTER TABLE `accounts_follower`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accounts_follower_follower_id_19eba97d_fk_auth_user_id` (`follower_id`),
  ADD KEY `accounts_follower_user_id_9916d53d_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `accounts_notification`
--
ALTER TABLE `accounts_notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accounts_notification_user_id_30e6cfc5_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `accounts_profile`
--
ALTER TABLE `accounts_profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `background_task`
--
ALTER TABLE `background_task`
  ADD PRIMARY KEY (`id`),
  ADD KEY `background_task_creator_content_type_61cc9af3_fk_django_co` (`creator_content_type_id`),
  ADD KEY `background_task_task_name_4562d56a` (`task_name`),
  ADD KEY `background_task_task_hash_d8f233bd` (`task_hash`),
  ADD KEY `background_task_priority_88bdbce9` (`priority`),
  ADD KEY `background_task_run_at_7baca3aa` (`run_at`),
  ADD KEY `background_task_queue_1d5f3a40` (`queue`),
  ADD KEY `background_task_attempts_a9ade23d` (`attempts`),
  ADD KEY `background_task_failed_at_b81bba14` (`failed_at`),
  ADD KEY `background_task_locked_by_db7779e3` (`locked_by`),
  ADD KEY `background_task_locked_at_0fb0f225` (`locked_at`);

--
-- Indexes for table `background_task_completedtask`
--
ALTER TABLE `background_task_completedtask`
  ADD PRIMARY KEY (`id`),
  ADD KEY `background_task_comp_creator_content_type_21d6a741_fk_django_co` (`creator_content_type_id`),
  ADD KEY `background_task_completedtask_task_name_388dabc2` (`task_name`),
  ADD KEY `background_task_completedtask_task_hash_91187576` (`task_hash`),
  ADD KEY `background_task_completedtask_priority_9080692e` (`priority`),
  ADD KEY `background_task_completedtask_run_at_77c80f34` (`run_at`),
  ADD KEY `background_task_completedtask_queue_61fb0415` (`queue`),
  ADD KEY `background_task_completedtask_attempts_772a6783` (`attempts`),
  ADD KEY `background_task_completedtask_failed_at_3de56618` (`failed_at`),
  ADD KEY `background_task_completedtask_locked_by_edc8a213` (`locked_by`),
  ADD KEY `background_task_completedtask_locked_at_29c62708` (`locked_at`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `matches_ban`
--
ALTER TABLE `matches_ban`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `matches_ban_match_id_hero_id_8865498e_uniq` (`match_id`,`hero_id`),
  ADD KEY `matches_ban_hero_id_db827c80_fk_matches_hero_hero_id` (`hero_id`);

--
-- Indexes for table `matches_bet`
--
ALTER TABLE `matches_bet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `matches_bet_match_id_fe44477e_fk_matches_match_match_id` (`match_id`),
  ADD KEY `matches_bet_user_id_64be7fef_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `matches_hero`
--
ALTER TABLE `matches_hero`
  ADD PRIMARY KEY (`hero_id`);

--
-- Indexes for table `matches_item`
--
ALTER TABLE `matches_item`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `matches_item_inventory`
--
ALTER TABLE `matches_item_inventory`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `matches_item_inventory_match_id_player_id_slot_c6b33ba7_uniq` (`match_id`,`player_id`,`slot`),
  ADD KEY `matches_item_inventory_item_id_54fb8a53_fk_matches_item_item_id` (`item_id`),
  ADD KEY `matches_item_invento_player_id_7e64cc1d_fk_matches_p` (`player_id`);

--
-- Indexes for table `matches_match`
--
ALTER TABLE `matches_match`
  ADD PRIMARY KEY (`match_id`),
  ADD KEY `matches_match_d_team_id_c175be32_fk_matches_team_team_id` (`d_team_id`),
  ADD KEY `matches_match_r_team_id_6bafb78f_fk_matches_team_team_id` (`r_team_id`);

--
-- Indexes for table `matches_pick`
--
ALTER TABLE `matches_pick`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `matches_pick_match_id_hero_id_cd1d1d48_uniq` (`match_id`,`hero_id`),
  ADD KEY `matches_pick_hero_id_b2228f14_fk_matches_hero_hero_id` (`hero_id`);

--
-- Indexes for table `matches_player`
--
ALTER TABLE `matches_player`
  ADD PRIMARY KEY (`player_id`),
  ADD KEY `matches_player_team_id_177e01b8_fk_matches_team_team_id` (`team_id`);

--
-- Indexes for table `matches_settings`
--
ALTER TABLE `matches_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `matches_stats`
--
ALTER TABLE `matches_stats`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `matches_stats_match_id_player_id_92fd3f09_uniq` (`match_id`,`player_id`),
  ADD KEY `matches_stats_hero_id_id_88beb8be_fk_matches_hero_hero_id` (`hero_id_id`),
  ADD KEY `matches_stats_player_id_e78fe325_fk_matches_player_player_id` (`player_id`);

--
-- Indexes for table `matches_team`
--
ALTER TABLE `matches_team`
  ADD PRIMARY KEY (`team_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts_follower`
--
ALTER TABLE `accounts_follower`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `accounts_notification`
--
ALTER TABLE `accounts_notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `accounts_profile`
--
ALTER TABLE `accounts_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `background_task`
--
ALTER TABLE `background_task`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `background_task_completedtask`
--
ALTER TABLE `background_task_completedtask`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `matches_ban`
--
ALTER TABLE `matches_ban`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `matches_bet`
--
ALTER TABLE `matches_bet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `matches_item_inventory`
--
ALTER TABLE `matches_item_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `matches_pick`
--
ALTER TABLE `matches_pick`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `matches_settings`
--
ALTER TABLE `matches_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `matches_stats`
--
ALTER TABLE `matches_stats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounts_follower`
--
ALTER TABLE `accounts_follower`
  ADD CONSTRAINT `accounts_follower_follower_id_19eba97d_fk_auth_user_id` FOREIGN KEY (`follower_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `accounts_follower_user_id_9916d53d_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `accounts_notification`
--
ALTER TABLE `accounts_notification`
  ADD CONSTRAINT `accounts_notification_user_id_30e6cfc5_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `accounts_profile`
--
ALTER TABLE `accounts_profile`
  ADD CONSTRAINT `accounts_profile_user_id_49a85d32_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `background_task`
--
ALTER TABLE `background_task`
  ADD CONSTRAINT `background_task_creator_content_type_61cc9af3_fk_django_co` FOREIGN KEY (`creator_content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `background_task_completedtask`
--
ALTER TABLE `background_task_completedtask`
  ADD CONSTRAINT `background_task_comp_creator_content_type_21d6a741_fk_django_co` FOREIGN KEY (`creator_content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `matches_ban`
--
ALTER TABLE `matches_ban`
  ADD CONSTRAINT `matches_ban_hero_id_db827c80_fk_matches_hero_hero_id` FOREIGN KEY (`hero_id`) REFERENCES `matches_hero` (`hero_id`),
  ADD CONSTRAINT `matches_ban_match_id_e6500e0e_fk_matches_match_match_id` FOREIGN KEY (`match_id`) REFERENCES `matches_match` (`match_id`);

--
-- Constraints for table `matches_bet`
--
ALTER TABLE `matches_bet`
  ADD CONSTRAINT `matches_bet_match_id_fe44477e_fk_matches_match_match_id` FOREIGN KEY (`match_id`) REFERENCES `matches_match` (`match_id`),
  ADD CONSTRAINT `matches_bet_user_id_64be7fef_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `matches_item_inventory`
--
ALTER TABLE `matches_item_inventory`
  ADD CONSTRAINT `matches_item_invento_match_id_742073ba_fk_matches_m` FOREIGN KEY (`match_id`) REFERENCES `matches_match` (`match_id`),
  ADD CONSTRAINT `matches_item_invento_player_id_7e64cc1d_fk_matches_p` FOREIGN KEY (`player_id`) REFERENCES `matches_player` (`player_id`),
  ADD CONSTRAINT `matches_item_inventory_item_id_54fb8a53_fk_matches_item_item_id` FOREIGN KEY (`item_id`) REFERENCES `matches_item` (`item_id`);

--
-- Constraints for table `matches_match`
--
ALTER TABLE `matches_match`
  ADD CONSTRAINT `matches_match_d_team_id_c175be32_fk_matches_team_team_id` FOREIGN KEY (`d_team_id`) REFERENCES `matches_team` (`team_id`),
  ADD CONSTRAINT `matches_match_r_team_id_6bafb78f_fk_matches_team_team_id` FOREIGN KEY (`r_team_id`) REFERENCES `matches_team` (`team_id`);

--
-- Constraints for table `matches_pick`
--
ALTER TABLE `matches_pick`
  ADD CONSTRAINT `matches_pick_hero_id_b2228f14_fk_matches_hero_hero_id` FOREIGN KEY (`hero_id`) REFERENCES `matches_hero` (`hero_id`),
  ADD CONSTRAINT `matches_pick_match_id_84e6dea1_fk_matches_match_match_id` FOREIGN KEY (`match_id`) REFERENCES `matches_match` (`match_id`);

--
-- Constraints for table `matches_player`
--
ALTER TABLE `matches_player`
  ADD CONSTRAINT `matches_player_team_id_177e01b8_fk_matches_team_team_id` FOREIGN KEY (`team_id`) REFERENCES `matches_team` (`team_id`);

--
-- Constraints for table `matches_stats`
--
ALTER TABLE `matches_stats`
  ADD CONSTRAINT `matches_stats_hero_id_id_88beb8be_fk_matches_hero_hero_id` FOREIGN KEY (`hero_id_id`) REFERENCES `matches_hero` (`hero_id`),
  ADD CONSTRAINT `matches_stats_match_id_df7395f1_fk_matches_match_match_id` FOREIGN KEY (`match_id`) REFERENCES `matches_match` (`match_id`),
  ADD CONSTRAINT `matches_stats_player_id_e78fe325_fk_matches_player_player_id` FOREIGN KEY (`player_id`) REFERENCES `matches_player` (`player_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
