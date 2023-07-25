-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2023 at 07:44 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `complaint_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add complaintboxregister', 7, 'add_complaintboxregister'),
(26, 'Can change complaintboxregister', 7, 'change_complaintboxregister'),
(27, 'Can delete complaintboxregister', 7, 'delete_complaintboxregister'),
(28, 'Can view complaintboxregister', 7, 'view_complaintboxregister'),
(29, 'Can add complaintboxfaculty', 8, 'add_complaintboxfaculty'),
(30, 'Can change complaintboxfaculty', 8, 'change_complaintboxfaculty'),
(31, 'Can delete complaintboxfaculty', 8, 'delete_complaintboxfaculty'),
(32, 'Can view complaintboxfaculty', 8, 'view_complaintboxfaculty'),
(33, 'Can add complaintboxcomplaint', 9, 'add_complaintboxcomplaint'),
(34, 'Can change complaintboxcomplaint', 9, 'change_complaintboxcomplaint'),
(35, 'Can delete complaintboxcomplaint', 9, 'delete_complaintboxcomplaint'),
(36, 'Can view complaintboxcomplaint', 9, 'view_complaintboxcomplaint');

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
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(9, 'pro1', 'complaintboxcomplaint'),
(8, 'pro1', 'complaintboxfaculty'),
(7, 'pro1', 'complaintboxregister'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-06-11 11:35:23.039960'),
(2, 'auth', '0001_initial', '2023-06-11 11:35:26.774147'),
(3, 'admin', '0001_initial', '2023-06-11 11:35:28.090141'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-06-11 11:35:28.144642'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-06-11 11:35:28.232659'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-06-11 11:35:28.651948'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-06-11 11:35:29.019782'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-06-11 11:35:29.200340'),
(9, 'auth', '0004_alter_user_username_opts', '2023-06-11 11:35:29.301849'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-06-11 11:35:29.670182'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-06-11 11:35:29.701497'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-06-11 11:35:29.829339'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-06-11 11:35:30.090117'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-06-11 11:35:30.247943'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-06-11 11:35:30.497211'),
(16, 'auth', '0011_update_proxy_permissions', '2023-06-11 11:35:30.572691'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-06-11 11:35:30.732708'),
(18, 'sessions', '0001_initial', '2023-06-11 11:35:30.962700');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('92lg0twkf0iu40783r8x30nu1smyo34f', 'e30:1qADRR:Uk-v5AOLrZXqvNgXysL4SoQqkzmMEd7IJnEBnEMedtc', '2023-06-30 17:40:57.017988');

-- --------------------------------------------------------

--
-- Table structure for table `pro1_adminack`
--

CREATE TABLE `pro1_adminack` (
  `id` int(12) NOT NULL,
  `ackto` int(12) NOT NULL,
  `date` varchar(200) NOT NULL,
  `designation` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `ackmesg` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pro1_adminack`
--

INSERT INTO `pro1_adminack` (`id`, `ackto`, `date`, `designation`, `name`, `email`, `ackmesg`) VALUES
(1, 1, '2023-06-15', '', 'soya', 'soya@gmail.com', 'helpp');

-- --------------------------------------------------------

--
-- Table structure for table `pro1_complaintboxacknow`
--

CREATE TABLE `pro1_complaintboxacknow` (
  `id` int(12) NOT NULL,
  `fuid` int(12) NOT NULL,
  `replyto` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `date` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `acknowmsg` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pro1_complaintboxacknow`
--

INSERT INTO `pro1_complaintboxacknow` (`id`, `fuid`, `replyto`, `name`, `date`, `email`, `acknowmsg`) VALUES
(1, 1, 'soya', 'soya', '2023-06-15', 'soya@gmail.com', 'it will ready soon');

-- --------------------------------------------------------

--
-- Table structure for table `pro1_complaintboxcompliant`
--

CREATE TABLE `pro1_complaintboxcompliant` (
  `id` int(12) NOT NULL,
  `userid` int(12) NOT NULL,
  `complaintto` varchar(200) NOT NULL,
  `date` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `complaintmsg` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pro1_complaintboxcompliant`
--

INSERT INTO `pro1_complaintboxcompliant` (`id`, `userid`, `complaintto`, `date`, `name`, `email`, `complaintmsg`, `status`) VALUES
(1, 1, '1', '2023-05-31', 'soya', 'soya@gmail.com', 'xwaxwsx', 'viewed'),
(2, 1, '1', '2023-06-19', 'soya', 'soya@gmail.com', 'sdfsdfds', 'viewed'),
(3, 1, '1', '2023-06-06', 'soya', 'soya@gmail.com', 'not good', 'viewed'),
(4, 2, '1', '2023-06-15', 'Tom', 'tom@gmail.com', 'what happend', 'viewed');

-- --------------------------------------------------------

--
-- Table structure for table `pro1_complaintboxfaculty`
--

CREATE TABLE `pro1_complaintboxfaculty` (
  `id` int(12) NOT NULL,
  `designation` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pro1_complaintboxfaculty`
--

INSERT INTO `pro1_complaintboxfaculty` (`id`, `designation`, `name`, `email`, `password`) VALUES
(1, 'Department Head', 'Sai Ram', 'sai@gmail.com', 'SAI'),
(2, 'Professor', 'Christy Mathew', 'christy@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `pro1_complaintboxregister`
--

CREATE TABLE `pro1_complaintboxregister` (
  `id` int(12) NOT NULL,
  `image` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pro1_complaintboxregister`
--

INSERT INTO `pro1_complaintboxregister` (`id`, `image`, `name`, `email`, `phone`, `password`) VALUES
(1, 'FB_IMG_15841084137715025.jpg', 'soya', 'soya@gmail.com', '09434526173', 'soya'),
(2, 'Screenshot_20191020-105549-1-1.jpg', 'Tom', 'tom@gmail.com', '876543212', 'tom');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `pro1_adminack`
--
ALTER TABLE `pro1_adminack`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pro1_complaintboxacknow`
--
ALTER TABLE `pro1_complaintboxacknow`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pro1_complaintboxcompliant`
--
ALTER TABLE `pro1_complaintboxcompliant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pro1_complaintboxfaculty`
--
ALTER TABLE `pro1_complaintboxfaculty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pro1_complaintboxregister`
--
ALTER TABLE `pro1_complaintboxregister`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `pro1_adminack`
--
ALTER TABLE `pro1_adminack`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pro1_complaintboxacknow`
--
ALTER TABLE `pro1_complaintboxacknow`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pro1_complaintboxcompliant`
--
ALTER TABLE `pro1_complaintboxcompliant`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pro1_complaintboxfaculty`
--
ALTER TABLE `pro1_complaintboxfaculty`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pro1_complaintboxregister`
--
ALTER TABLE `pro1_complaintboxregister`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

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
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
