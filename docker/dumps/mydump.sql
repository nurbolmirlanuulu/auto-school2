-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 10, 2023 at 12:00 PM
-- Server version: 5.7.24
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `autoschoolver2`
--

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `patronymic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`id`, `title`, `description`, `email`, `phone`, `surname`, `name`, `patronymic`, `created_at`, `updated_at`, `status`) VALUES
(2, NULL, NULL, 'warioddl2y@gmail.com', '0554938009', 'BEKEEV', 'IMANKADYR', NULL, '2023-05-08 12:07:41', '2023-05-08 12:10:39', 'accepted'),
(3, 'Грруппа С1', NULL, 'almaz@gmail.com', '+996702160543', 'Токушев', 'Алмаз', 'Токушевич', '2023-06-05 07:12:22', '2023-06-05 07:13:38', 'accepted');

-- --------------------------------------------------------

--
-- Table structure for table `attentions`
--

CREATE TABLE `attentions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `badge` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#727cf5',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attentions`
--

INSERT INTO `attentions` (`id`, `title`, `description`, `badge`, `color`, `created_at`, `updated_at`) VALUES
(7, 'Получите права без лишних хлопот с нашей автошколой!', 'Вы мечтаете о своей собственной машине и свободе передвижения, но не знаете, как получить водительские права? Обратитесь в нашу автошколу! Мы предоставляем качественное обучение вождению от опытных инструкторов, которые помогут вам освоить не только теорию, но и практические навыки вождения на улицах города.\r\n\r\nНаша автошкола предоставляет индивидуальный подход к каждому ученику, а также гибкий график занятий, чтобы вы могли учиться в удобное для вас время. Мы обеспечиваем полную подготовку к экзаменам в ГИБДД и помогаем нашим ученикам получить водительские права без лишних хлопот.\r\n\r\nНе откладывайте свою мечту на потом! Обращайтесь в нашу автошколу и станьте водителем уже сегодня!', 'Водительские права', '#00eb66', '2023-04-30 00:22:27', '2023-04-30 00:23:50'),
(8, 'Автошкола политех', '1123444', '123567', '#727cf5', '2023-06-05 08:23:04', '2023-06-05 08:24:05'),
(10, 'Выходной', 'с 1 по 10 мая', 'Срочно', '#ff0000', '2023-06-07 08:27:37', '2023-06-07 08:27:37');

-- --------------------------------------------------------

--
-- Table structure for table `course_materials`
--

CREATE TABLE `course_materials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `views` int(11) NOT NULL DEFAULT '0',
  `document_id` bigint(20) UNSIGNED DEFAULT NULL,
  `author_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_materials`
--

INSERT INTO `course_materials` (`id`, `title`, `tag_id`, `description`, `created_at`, `updated_at`, `content`, `views`, `document_id`, `author_id`) VALUES
(14, 'wadawd', 9, 'a', '2023-05-28 04:26:28', '2023-06-05 08:25:52', '<p>wadawdawdawd</p>', 5, NULL, 3),
(16, 'test', 9, 'тз', '2023-06-06 17:43:10', '2023-06-06 17:50:57', '<p>adad</p>', 2, NULL, 24),
(17, 'adwa', 9, 'awd', '2023-06-10 11:45:00', '2023-06-10 11:45:05', '<p>edsaqd</p>', 1, NULL, 22);

-- --------------------------------------------------------

--
-- Table structure for table `course_material_documents`
--

CREATE TABLE `course_material_documents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_material_id` bigint(20) UNSIGNED NOT NULL,
  `document_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `drives`
--

CREATE TABLE `drives` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` bigint(20) UNSIGNED DEFAULT NULL,
  `student_id` bigint(20) UNSIGNED DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` bigint(20) UNSIGNED DEFAULT NULL,
  `student_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `grade` int(11) DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grade_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `appearance` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `schedule` json DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `title`, `description`, `created_at`, `updated_at`, `schedule`) VALUES
(3, 'B1-23', 'Группа B1-23', '2023-05-25 10:29:14', '2023-06-07 04:35:11', '[{\"id\": \"3\", \"end\": \"2023-05-17T07:00:00.000Z\", \"url\": \"/dashboard/subjects/show/3/3/Wed May 17 2023 12:00:00 GMT+0600 (Восточный Казахстан)\", \"start\": \"2023-05-17T06:00:00.000Z\", \"title\": \"Физкультура\", \"groupId\": \"3\", \"className\": [\"bg-danger\"]}, {\"id\": \"5\", \"end\": \"2023-06-06T06:00:00.000Z\", \"url\": \"/dashboard/subjects/show/3/5/Tue Jun 06 2023 11:00:00 GMT+0600 (Восточный Казахстан)\", \"start\": \"2023-06-06T05:00:00.000Z\", \"title\": \"Лекция\", \"groupId\": \"3\", \"className\": [\"bg-danger\"]}, {\"id\": \"5\", \"end\": \"2023-06-04T06:00:00.000Z\", \"url\": \"/dashboard/subjects/show/3/5/Sun Jun 04 2023 11:00:00 GMT+0600 (Восточный Казахстан)\", \"start\": \"2023-06-04T05:00:00.000Z\", \"title\": \"Лекция\", \"groupId\": \"3\", \"className\": [\"bg-danger\"]}, {\"id\": \"3\", \"end\": \"2023-06-05T06:00:00.000Z\", \"url\": \"/dashboard/subjects/show/3/3/Mon Jun 05 2023 11:00:00 GMT+0600 (Восточный Казахстан)\", \"start\": \"2023-06-05T05:00:00.000Z\", \"title\": \"Мед помощь\", \"groupId\": \"3\", \"className\": [\"bg-success\"]}, {\"id\": \"4\", \"end\": \"2023-06-07T06:00:00.000Z\", \"url\": \"/dashboard/subjects/show/3/4/Wed Jun 07 2023 11:00:00 GMT+0600 (Восточный Казахстан)\", \"start\": \"2023-06-07T05:00:00.000Z\", \"title\": \"Тестирование\", \"groupId\": \"3\", \"className\": [\"bg-primary\"]}, {\"id\": \"3\", \"end\": \"2023-06-08T20:00:00.000Z\", \"url\": \"/dashboard/subjects/show/3/3/Fri Jun 09 2023 01:00:00 GMT+0600 (Восточный Казахстан)\", \"start\": \"2023-06-08T19:00:00.000Z\", \"title\": \"Мед помощь\", \"groupId\": \"3\", \"className\": [\"bg-danger\"]}]'),
(6, 'BC2-22', 'Группа BС2-23', '2023-05-28 09:06:48', '2023-06-07 04:31:34', '[{\"id\": \"5\", \"end\": \"2023-05-22T07:00:00.000Z\", \"url\": \"/dashboard/subjects/show/6/5/Mon May 22 2023 12:00:00 GMT+0600 (Киргизия)\", \"start\": \"2023-05-22T06:00:00.000Z\", \"title\": \"Физкультура\", \"groupId\": \"6\", \"className\": [\"bg-danger\"]}, {\"id\": \"4\", \"end\": \"2023-06-12T21:00:00.000Z\", \"url\": \"/dashboard/subjects/show/6/4/Tue Jun 13 2023 02:00:00 GMT+0600 (Киргизия)\", \"start\": \"2023-06-12T20:00:00.000Z\", \"title\": \"Математика\", \"groupId\": \"6\", \"className\": [\"bg-dark\"]}, {\"id\": \"5\", \"end\": \"2023-06-12T21:00:00.000Z\", \"url\": \"/dashboard/subjects/show/6/5/Tue Jun 13 2023 02:00:00 GMT+0600 (Киргизия)\", \"start\": \"2023-06-12T20:00:00.000Z\", \"title\": \"Физкультура\", \"groupId\": \"6\", \"className\": [\"bg-danger\"]}, {\"id\": \"5\", \"end\": \"2023-05-09T21:00:00.000Z\", \"url\": \"/dashboard/subjects/show/6/5/Wed May 10 2023 02:00:00 GMT+0600 (Киргизия)\", \"start\": \"2023-05-09T20:00:00.000Z\", \"title\": \"Физкультура\", \"groupId\": \"6\", \"className\": [\"bg-danger\"]}, {\"id\": \"3\", \"end\": \"2023-05-23T00:00:00.000Z\", \"url\": \"/dashboard/subjects/show/6/3/Tue May 23 2023 05:00:00 GMT+0600 (Киргизия)\", \"start\": \"2023-05-22T23:00:00.000Z\", \"title\": \"Криптография\", \"groupId\": \"6\", \"className\": [\"bg-primary\"]}, {\"id\": \"4\", \"end\": \"2023-05-16T07:00:00.000Z\", \"url\": \"/dashboard/subjects/show/6/4/Tue May 16 2023 12:00:00 GMT+0600 (Киргизия)\", \"start\": \"2023-05-16T06:00:00.000Z\", \"title\": \"Математика\", \"groupId\": \"6\", \"className\": [\"bg-danger\"]}, {\"id\": \"4\", \"end\": \"2023-05-01T07:00:00.000Z\", \"url\": \"/dashboard/subjects/show/6/4/Mon May 01 2023 12:00:00 GMT+0600 (Киргизия)\", \"start\": \"2023-05-01T06:00:00.000Z\", \"title\": \"Математика\", \"groupId\": \"6\", \"className\": [\"bg-danger\"]}, {\"id\": \"4\", \"end\": \"2023-05-31T07:00:00.000Z\", \"url\": \"/dashboard/subjects/show/6/4/Wed May 31 2023 12:00:00 GMT+0600 (Киргизия)\", \"start\": \"2023-05-31T06:00:00.000Z\", \"title\": \"Математика\", \"groupId\": \"6\", \"className\": [\"bg-danger\"]}]'),
(7, 'B2-23', '123', '2023-05-30 10:11:17', '2023-06-05 08:29:00', '[{\"id\": \"3\", \"end\": \"2023-06-15T01:00:00.000Z\", \"url\": \"/dashboard/subjects/show/7/3/Thu Jun 15 2023 06:00:00 GMT+0600 (Киргизия)\", \"start\": \"2023-06-15T00:00:00.000Z\", \"title\": \"Криптография\", \"groupId\": \"7\", \"className\": [\"bg-info\"]}, {\"id\": \"5\", \"end\": \"2023-05-30T21:00:00.000Z\", \"url\": \"/dashboard/subjects/show/7/5/Wed May 31 2023 02:00:00 GMT+0600 (Киргизия)\", \"start\": \"2023-05-30T20:00:00.000Z\", \"title\": \"Физкультура\", \"groupId\": \"7\", \"className\": [\"bg-info\"]}, {\"id\": \"5\", \"end\": \"2023-06-01T07:00:00.000Z\", \"url\": \"/dashboard/subjects/show/7/5/Thu Jun 01 2023 12:00:00 GMT+0600 (Киргизия)\", \"start\": \"2023-06-01T06:00:00.000Z\", \"title\": \"Физкультура\", \"groupId\": \"7\", \"className\": [\"bg-dark\"]}]'),
(8, 'Test', 'Test', '2023-06-07 07:04:48', '2023-06-07 07:04:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_04_08_155459_create_permission_tables', 2),
(7, '2023_04_21_155216_create_attentions_table', 3),
(8, '2023_04_29_181723_update_attentions', 4),
(10, '2023_05_05_162238_applications', 6),
(11, '2023_05_08_174302_add_column_to_table', 7),
(16, '2023_05_09_073935_documents', 9),
(20, '2023_05_09_073434_course_materials', 10),
(21, '2023_05_09_073818_tags', 10),
(22, '2023_05_09_074134_course_material_documents', 10),
(23, '2023_05_25_081813_add_content_to_course_materials', 11),
(24, '2023_05_25_082409_add_views_to_course_materials', 12),
(25, '2023_05_25_152818_create_student_groups_table', 13),
(26, '2023_05_25_153148_create_schedules_table', 14),
(27, '2023_05_27_132119_create_teacher_groups_table', 15),
(28, '2023_05_27_172227_add_schedule_to_groups', 16),
(29, '2023_05_30_081259_create_subjects_table', 17),
(30, '2023_05_30_183448_create_grades_table', 18),
(31, '2023_06_03_224639_create_drives_table', 19);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 3),
(2, 'App\\Models\\User', 4),
(3, 'App\\Models\\User', 5),
(3, 'App\\Models\\User', 13),
(1, 'App\\Models\\User', 18),
(2, 'App\\Models\\User', 21),
(3, 'App\\Models\\User', 22),
(3, 'App\\Models\\User', 23),
(2, 'App\\Models\\User', 25);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'view users', 'web', '2023-04-09 11:21:09', '2023-04-09 11:21:09'),
(2, 'edit users', 'web', '2023-04-09 11:21:09', '2023-04-09 11:21:09'),
(3, 'create users', 'web', '2023-04-09 11:21:09', '2023-04-09 11:21:09'),
(4, 'delete users', 'web', '2023-04-09 11:21:09', '2023-04-09 11:21:09'),
(5, 'view roles', 'web', '2023-04-09 11:21:09', '2023-04-09 11:21:09'),
(6, 'edit roles', 'web', '2023-04-09 11:21:09', '2023-04-09 11:21:09'),
(7, 'create roles', 'web', '2023-04-09 11:21:09', '2023-04-09 11:21:09'),
(8, 'delete roles', 'web', '2023-04-09 11:21:09', '2023-04-09 11:21:09'),
(9, 'view schedule', 'web', '2023-04-09 11:21:09', '2023-04-09 11:21:09'),
(10, 'create schedule', 'web', '2023-04-09 11:21:09', '2023-04-09 11:21:09'),
(11, 'edit schedule', 'web', '2023-04-09 11:21:09', '2023-04-09 11:21:09'),
(12, 'delete schedule', 'web', '2023-04-09 11:21:09', '2023-04-09 11:21:09');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `surname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2023-04-09 11:21:09', '2023-04-09 11:21:09'),
(2, 'teacher', 'web', '2023-04-09 11:21:09', '2023-04-09 11:21:09'),
(3, 'student', 'web', '2023-04-09 11:21:09', '2023-04-09 11:21:09');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(1, 2),
(9, 2),
(10, 2),
(11, 2),
(12, 2),
(9, 3),
(11, 3);

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `schedule` json DEFAULT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_groups`
--

CREATE TABLE `student_groups` (
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_groups`
--

INSERT INTO `student_groups` (`student_id`, `group_id`) VALUES
(20, 3),
(5, 3),
(23, 6),
(22, 3);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teacher_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `description`, `teacher_id`, `created_at`, `updated_at`) VALUES
(3, 'Мед помощь', 'Мед помощь', 4, '2023-05-30 10:00:28', '2023-06-05 06:19:45'),
(4, 'Тестирование', 'Пройти тест на компьютере', 4, '2023-05-30 10:00:51', '2023-06-05 06:18:54'),
(5, 'Лекция', 'Лекция', 4, '2023-05-30 10:27:44', '2023-06-05 06:17:57'),
(7, 'test', 'test', 25, '2023-06-07 07:08:09', '2023-06-07 07:08:09');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `title`, `created_at`, `updated_at`) VALUES
(8, 'Video', '2023-05-28 04:26:03', '2023-05-28 04:26:03'),
(9, 'Documents', '2023-05-28 04:26:09', '2023-05-28 04:26:09');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_groups`
--

CREATE TABLE `teacher_groups` (
  `teacher_id` bigint(20) UNSIGNED NOT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teacher_groups`
--

INSERT INTO `teacher_groups` (`teacher_id`, `group_id`) VALUES
(21, 3),
(4, 7),
(4, 3),
(24, 3),
(25, 8);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `surname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `patronymic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `surname`, `name`, `patronymic`, `phone`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Super', 'User', 'Puper', '0222222222', 'sexy@admin.com', '2023-04-08 05:47:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TY5Je1IOhP', '2023-04-08 05:47:05', '2023-04-08 05:47:05'),
(3, 'Admin', 'User', 'Puper', '0222222222', 'admin@gmail.com', '2023-04-09 11:14:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'QMUIzvq4eV3JpqxsgcgeWvLEnImDjJvzXLyhQroyIV0vUdRMlWlSdSbxbjtn', '2023-04-09 11:14:09', '2023-04-09 11:14:09'),
(4, 'Teacher', 'Ainura', 'Djumakarievna', '0224221212', 'teacher@gmail.com', '2023-04-09 11:14:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'pChA5UblTY7l4dhVWuvN0RNus5GJnmA9Yn6USdpdjXUXqYc1UhbUlwiDXnqd', '2023-04-09 11:14:09', '2023-04-09 11:14:09'),
(5, 'Student', 'Joe', 'Warioddly', '0221221312', 'student@gmail.com', '2023-04-09 11:14:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'N69qkzg6LOKZ0kdJ5KMVD3TsRzkAn5t5MYmRAh5Otc3TeFQyOr0FWr8O3gd7', '2023-04-09 11:14:09', '2023-04-09 11:14:09'),
(17, '1231', '231231', '131322', '123123123', 'imo@gmail.com', NULL, '$2y$10$T5oyO9CZ6kjaRsZ5k568Yu6sX8dxnnHrhnuniZ0IYXf.2OzO/R7i6', NULL, '2023-04-09 23:25:52', '2023-04-09 23:25:52'),
(18, 'awd', 'awdawd', 'awdawd', '552123123', 'warioddly@gmail.com', NULL, '$2y$10$M5qrwdLL4gSZy5yUJPcD/e/68/FecgydEFKPXI8CMVwWPWzzLD3dG', NULL, '2023-04-09 23:43:31', '2023-04-09 23:43:31'),
(20, 'Молдоболотова', 'Тунук', 'qweqw', '+996702160543', 'user3@gmail.com', NULL, '$2y$10$YTnvvjHKey8cY7SYnnMJXen3O5QtFTn.i1QwrmXIZiw89JE6l7FaG', NULL, '2023-04-10 01:39:34', '2023-04-10 01:39:34'),
(21, 'Мирлан уулу', 'Нурбол', 'qweqw', '+996702160543', 'teacher3@gmail.com', NULL, '$2y$10$9.ZYcjS3/TsQM4JPs01LjO3P0axojT6Ocn2jRrVtsjLnS4H5XBNPG', NULL, '2023-04-10 01:57:07', '2023-04-10 01:57:07'),
(22, 'Токушев', 'Алмаз', NULL, '+996702160543', 'almaz@gmail.com', NULL, '$2y$10$ryvu0jHbHMHvYEUc.jGsWec2R0G38IhEC8AETaHhKF0KbQskYrTVu', NULL, '2023-06-05 07:13:38', '2023-06-05 07:13:38'),
(23, 'Айдар', 'Нурбеков', NULL, '+996702160543', 'aidar@gmail.com', NULL, '$2y$10$OZPjnxGtbByW7fBdCME4LebobTSuz4Y11JmYDSLtMxw02QfIDBaYS', NULL, '2023-06-05 07:16:46', '2023-06-05 07:16:46'),
(24, 'Мусина', 'Индира', 'Рафиковна', '+996702160543', 'musina@gmail.com', NULL, '$2y$10$83PU1EgeyL2uc7vfCal6x..xOkZLzzV/gu/BqBVcEDKT.kAG04cQy', NULL, '2023-06-06 17:37:24', '2023-06-06 17:37:24'),
(25, 'TestTH', 'TestTH', 'TestTH', '+996702160543', 'testth@gmail.com', NULL, '$2y$10$uRb3KA70RZVMVHjHkaM5RuPO/G2lOkehTh5HnGkWzW53GXbjw5YZ.', NULL, '2023-06-07 07:03:46', '2023-06-07 07:03:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attentions`
--
ALTER TABLE `attentions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_materials`
--
ALTER TABLE `course_materials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_material_documents`
--
ALTER TABLE `course_material_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_material_documents_course_material_id_foreign` (`course_material_id`),
  ADD KEY `course_material_documents_document_id_foreign` (`document_id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drives`
--
ALTER TABLE `drives`
  ADD PRIMARY KEY (`id`),
  ADD KEY `drives_teacher_id_foreign` (`teacher_id`),
  ADD KEY `drives_student_id_foreign` (`student_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `grades_teacher_id_foreign` (`teacher_id`),
  ADD KEY `grades_student_id_foreign` (`student_id`),
  ADD KEY `grades_subject_id_foreign` (`subject_id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schedules_group_id_foreign` (`group_id`);

--
-- Indexes for table `student_groups`
--
ALTER TABLE `student_groups`
  ADD KEY `student_groups_student_id_foreign` (`student_id`),
  ADD KEY `student_groups_group_id_foreign` (`group_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subjects_teacher_id_foreign` (`teacher_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_groups`
--
ALTER TABLE `teacher_groups`
  ADD KEY `teacher_groups_teacher_id_foreign` (`teacher_id`),
  ADD KEY `teacher_groups_group_id_foreign` (`group_id`);

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
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `attentions`
--
ALTER TABLE `attentions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `course_materials`
--
ALTER TABLE `course_materials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `course_material_documents`
--
ALTER TABLE `course_material_documents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `drives`
--
ALTER TABLE `drives`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `course_material_documents`
--
ALTER TABLE `course_material_documents`
  ADD CONSTRAINT `course_material_documents_course_material_id_foreign` FOREIGN KEY (`course_material_id`) REFERENCES `course_materials` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `course_material_documents_document_id_foreign` FOREIGN KEY (`document_id`) REFERENCES `documents` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `drives`
--
ALTER TABLE `drives`
  ADD CONSTRAINT `drives_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `drives_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `grades`
--
ALTER TABLE `grades`
  ADD CONSTRAINT `grades_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `grades_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `grades_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `schedules`
--
ALTER TABLE `schedules`
  ADD CONSTRAINT `schedules_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`);

--
-- Constraints for table `student_groups`
--
ALTER TABLE `student_groups`
  ADD CONSTRAINT `student_groups_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`),
  ADD CONSTRAINT `student_groups_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `subjects`
--
ALTER TABLE `subjects`
  ADD CONSTRAINT `subjects_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `teacher_groups`
--
ALTER TABLE `teacher_groups`
  ADD CONSTRAINT `teacher_groups_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`),
  ADD CONSTRAINT `teacher_groups_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
