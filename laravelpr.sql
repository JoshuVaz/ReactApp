-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-05-2024 a las 08:42:48
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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

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
(22, 'App\\Models\\User', 4, 'authToken', 'df33256bcec7e99c4336b09f231633ad1872dd397e9407182259cf4a27d7bd2a', '[\"*\"]', '2024-05-21 12:02:52', NULL, '2024-05-21 12:02:51', '2024-05-21 12:02:52');

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'joshua', 'joshuapumas_@hotmail.com', NULL, '$2y$10$DBf.EBn2Nl/bvnQpJUQ1.OsoSW35PpAPmTxKaHgF.9N8PhHIYWrRa', NULL, '2024-05-21 06:19:13', '2024-05-21 06:19:13'),
(2, 'joshuavazquez', 'joshua.vazquezc@hotmail.com', NULL, '$2y$10$z4mchhOtVY87r/VyUWnFfO.4Tz1zr92CJqzlGW9hABvfFRmEROje6', NULL, '2024-05-21 06:59:43', '2024-05-21 06:59:43'),
(3, 'ana camacho', 'ana.camacho@hotmail.com', NULL, '$2y$10$dEHs2eLDYah6a/zJVsW59.M4qwaJdrE5XD.afRBpMhgI6udydkxU2', NULL, '2024-05-21 07:17:07', '2024-05-21 07:17:07'),
(4, 'Prueba', 'prueba@hotmail.com', NULL, '$2y$10$lLquxL35WUYyldoChdpjDuqBUJiL7ryk2mDmLinfcdUt5jI4Puf/W', NULL, '2024-05-21 11:12:32', '2024-05-21 11:12:32');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
