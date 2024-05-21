-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-05-2024 a las 01:54:54
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `laravelpr`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_05_21_211523_add_role_to_users_table', 2),
(6, '2016_06_01_000001_create_oauth_auth_codes_table', 3),
(7, '2016_06_01_000002_create_oauth_access_tokens_table', 3),
(8, '2016_06_01_000003_create_oauth_refresh_tokens_table', 3),
(9, '2016_06_01_000004_create_oauth_clients_table', 3),
(10, '2016_06_01_000005_create_oauth_personal_access_clients_table', 3),
(11, '2024_05_21_233834_add_role_to_users_table', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('2a7d9b7a2e6c1f899be21747e525449a4f036663fde7f9953e318efce12c9a4fc65f7354c887a149', 5, 1, 'authToken', '[]', 0, '2024-05-22 04:38:01', '2024-05-22 04:38:01', '2025-05-21 22:38:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'nVUhHuCzS0B7yi4eF1Rg5u7WU9Ppq8qhAQeYiWZ4', NULL, 'http://localhost', 1, 0, 0, '2024-05-22 04:24:59', '2024-05-22 04:24:59'),
(2, NULL, 'Laravel Password Grant Client', 'YtuRKyypwYb2tpWKFvj5zRInOunNW7gkeLGkga5Q', 'users', 'http://localhost', 0, 1, 0, '2024-05-22 04:24:59', '2024-05-22 04:24:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2024-05-22 04:24:59', '2024-05-22 04:24:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'authToken', 'da3b85f167250390f92b525591bfd576cae78b6acee85a7aa8d0e9bfa8934186', '[\"*\"]', NULL, NULL, '2024-05-21 06:50:30', '2024-05-21 06:50:30'),
(2, 'App\\Models\\User', 1, 'authToken', '7a5d3fe8ce4178e26d4ace8b7df663d674de372f75a9cc995db0aa556935b462', '[\"*\"]', '2024-05-21 06:51:39', NULL, '2024-05-21 06:51:38', '2024-05-21 06:51:39'),
(3, 'App\\Models\\User', 1, 'authToken', '5f64fa9d0bcc32f298f47af691b61616354088350b470707d0849ee2e1a3d154', '[\"*\"]', '2024-05-21 06:53:07', NULL, '2024-05-21 06:53:06', '2024-05-21 06:53:07'),
(4, 'App\\Models\\User', 2, 'authToken', 'fb066fd97b95678b2372d114643bb805773d63d8871e2b7f37bc16571132117c', '[\"*\"]', '2024-05-21 07:07:06', NULL, '2024-05-21 07:00:00', '2024-05-21 07:07:06'),
(5, 'App\\Models\\User', 2, 'authToken', 'fb597b476f8e7eb7f4bc4abf7cb0fccb867893a914b6ba8081ceb1422dbef0c4', '[\"*\"]', '2024-05-21 07:07:58', NULL, '2024-05-21 07:07:58', '2024-05-21 07:07:58'),
(6, 'App\\Models\\User', 2, 'authToken', '91c22b11e997924266fff13a9f2364cf0e2b69ac47864084ec514a36725115cb', '[\"*\"]', '2024-05-21 07:15:39', NULL, '2024-05-21 07:11:15', '2024-05-21 07:15:39'),
(7, 'App\\Models\\User', 2, 'authToken', '72a5804dc1f7883e38c0e2b24984425001654d3aeb491fa3ea6679fedee603ad', '[\"*\"]', '2024-05-21 07:16:30', NULL, '2024-05-21 07:16:29', '2024-05-21 07:16:30'),
(8, 'App\\Models\\User', 3, 'authToken', 'a97dc859ba5ded2d1c2b8283149834de22562f4a979dc987c488521dc38a66ea', '[\"*\"]', '2024-05-21 07:17:21', NULL, '2024-05-21 07:17:20', '2024-05-21 07:17:21'),
(9, 'App\\Models\\User', 2, 'authToken', 'b5e0b100dd5300db6d29b486052a61129532044daf58475c4016806345c400eb', '[\"*\"]', '2024-05-21 07:57:51', NULL, '2024-05-21 07:57:50', '2024-05-21 07:57:51'),
(10, 'App\\Models\\User', 2, 'authToken', '49426b8fe6563ac4166fa18b64695fd6683d809aae0fa72aef2b60ea561a0662', '[\"*\"]', '2024-05-21 08:05:52', NULL, '2024-05-21 08:05:51', '2024-05-21 08:05:52'),
(11, 'App\\Models\\User', 2, 'authToken', '083ecf36cc7bc9a4054cfeb3ea60120fd1047feb2ecf0606db1ae9c70a150381', '[\"*\"]', '2024-05-21 08:36:52', NULL, '2024-05-21 08:36:51', '2024-05-21 08:36:52'),
(12, 'App\\Models\\User', 2, 'authToken', '38e41dd292e163eb180c1a501a58cd576cb8f7db544d3eed623d47bccc2567b7', '[\"*\"]', NULL, NULL, '2024-05-21 08:36:51', '2024-05-21 08:36:51'),
(13, 'App\\Models\\User', 2, 'authToken', 'ef30c5317153a6aad7087cc0a83fc1116960457f7f11aaddb476718e7de3cbac', '[\"*\"]', '2024-05-21 08:53:00', NULL, '2024-05-21 08:52:59', '2024-05-21 08:53:00'),
(14, 'App\\Models\\User', 2, 'authToken', '2ebb873086a5b4c584dbb9ed77048416a9668d5fd8388c9bf519e2d20d8ea40b', '[\"*\"]', '2024-05-21 08:59:15', NULL, '2024-05-21 08:59:13', '2024-05-21 08:59:15'),
(15, 'App\\Models\\User', 2, 'authToken', '79fb3e9855a7b2650bccf20d110509ff574d22c898b7e8a1000b30d829a13f92', '[\"*\"]', '2024-05-21 09:01:17', NULL, '2024-05-21 09:01:16', '2024-05-21 09:01:17'),
(16, 'App\\Models\\User', 2, 'authToken', '6079e941c4c67af7bb19aee18961e17c5476f024bd89342cf3d7221c8b521809', '[\"*\"]', '2024-05-21 09:11:38', NULL, '2024-05-21 09:11:37', '2024-05-21 09:11:38'),
(17, 'App\\Models\\User', 2, 'authToken', '437c2b2d0a23041c60722f4d582940d214555cce64b1d87b4eefa653587a1966', '[\"*\"]', '2024-05-21 09:16:22', NULL, '2024-05-21 09:16:21', '2024-05-21 09:16:22'),
(18, 'App\\Models\\User', 2, 'authToken', '941ee3cb5f7ba953a452072646b66d4ba2e2ba5fd5e853878e8bc4536c9cf123', '[\"*\"]', '2024-05-21 09:18:49', NULL, '2024-05-21 09:18:48', '2024-05-21 09:18:49'),
(19, 'App\\Models\\User', 2, 'authToken', '55a7eedf1a6f414a2b17cc9c5660fff3e82f8af6fa2a1463fce196637f5a725f', '[\"*\"]', '2024-05-21 09:47:48', NULL, '2024-05-21 09:47:47', '2024-05-21 09:47:48'),
(20, 'App\\Models\\User', 4, 'authToken', '7e164346b4a6ee715e366159fb02628a5d965c9139d1ab6202169a91b1dd50f4', '[\"*\"]', '2024-05-21 11:13:12', NULL, '2024-05-21 11:13:11', '2024-05-21 11:13:12'),
(21, 'App\\Models\\User', 4, 'authToken', '83f5c7e73dc6ea5546cb718f58eda1125ca1fff9dd84fadc8e228e7b93b47a69', '[\"*\"]', '2024-05-21 12:01:29', NULL, '2024-05-21 11:25:39', '2024-05-21 12:01:29'),
(22, 'App\\Models\\User', 4, 'authToken', 'df33256bcec7e99c4336b09f231633ad1872dd397e9407182259cf4a27d7bd2a', '[\"*\"]', '2024-05-21 12:02:52', NULL, '2024-05-21 12:02:51', '2024-05-21 12:02:52'),
(23, 'App\\Models\\User', 4, 'authToken', '83bccd2ab7f83bb9fa8c2085f97e24d22f61fbfc98c6ab6c24963df690888359', '[\"*\"]', '2024-05-21 22:00:37', NULL, '2024-05-21 22:00:36', '2024-05-21 22:00:37'),
(24, 'App\\Models\\User', 4, 'authToken', '22d94c3afa97ef22230afc93a8a31858826b1e629592c1460819fbc79c3a7fa2', '[\"*\"]', '2024-05-21 22:56:30', NULL, '2024-05-21 22:29:41', '2024-05-21 22:56:30'),
(25, 'App\\Models\\User', 4, 'authToken', 'a5febfeb37fbf26a518ca785a99d0c295397bfbb689ae2b9808681a157dacd45', '[\"*\"]', '2024-05-21 23:04:17', NULL, '2024-05-21 22:56:52', '2024-05-21 23:04:17'),
(26, 'App\\Models\\User', 4, 'authToken', '510e37d108f51e4e4a5e2f6d2593930e90ac8a50e334178a54d7b0a2d9bacc4f', '[\"*\"]', '2024-05-22 03:35:13', NULL, '2024-05-22 01:04:23', '2024-05-22 03:35:13'),
(27, 'App\\Models\\User', 5, 'authToken', 'da3f71adc0ad14e489255b905b44d7a623943d6224df27a6eba63156b9f74d52', '[\"*\"]', '2024-05-22 05:25:58', NULL, '2024-05-22 03:36:19', '2024-05-22 05:25:58'),
(28, 'App\\Models\\User', 5, 'authToken', 'f59a55a594a432aa50708211a6a7b4373cb7643b3a7ef0603ed40f848c3a8d3c', '[\"*\"]', '2024-05-22 05:26:28', NULL, '2024-05-22 05:26:27', '2024-05-22 05:26:28'),
(29, 'App\\Models\\User', 5, 'authToken', '6cfad80ebc7149651dd6647cfe29b067248ab6eee7d414baf0918eb96e0b8182', '[\"*\"]', '2024-05-22 05:32:53', NULL, '2024-05-22 05:26:27', '2024-05-22 05:32:53'),
(30, 'App\\Models\\User', 5, 'authToken', '5763bae254dc5f198a488907577b6d225cc590693af779cdd8f4643f16fab321', '[\"*\"]', '2024-05-22 05:51:36', NULL, '2024-05-22 05:33:24', '2024-05-22 05:51:36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`) VALUES
(1, 'joshua', 'joshuapumas_@hotmail.com', NULL, '$2y$10$DBf.EBn2Nl/bvnQpJUQ1.OsoSW35PpAPmTxKaHgF.9N8PhHIYWrRa', NULL, '2024-05-21 06:19:13', '2024-05-21 06:19:13', 'user'),
(2, 'joshuavazquez', 'joshua.vazquezc@hotmail.com', NULL, '$2y$10$z4mchhOtVY87r/VyUWnFfO.4Tz1zr92CJqzlGW9hABvfFRmEROje6', NULL, '2024-05-21 06:59:43', '2024-05-21 06:59:43', 'user'),
(3, 'ana camacho', 'ana.camacho@hotmail.com', NULL, '$2y$10$dEHs2eLDYah6a/zJVsW59.M4qwaJdrE5XD.afRBpMhgI6udydkxU2', NULL, '2024-05-21 07:17:07', '2024-05-21 07:17:07', 'user'),
(4, 'Prueba', 'prueba@hotmail.com', NULL, '$2y$10$lLquxL35WUYyldoChdpjDuqBUJiL7ryk2mDmLinfcdUt5jI4Puf/W', NULL, '2024-05-21 11:12:32', '2024-05-21 11:12:32', 'user'),
(5, 'Admin', 'admin@hotmail.com', NULL, '$2y$10$0hftnKtP2hgjhrKb3.yXkOYS/S5HU4MDXm3/V.YSmMquKDstJF.nG', NULL, '2024-05-22 03:36:05', '2024-05-22 03:36:05', 'admin');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
