-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 11, 2026 at 08:58 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `livenza`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `baner_title` longtext DEFAULT NULL,
  `baner_description` longtext DEFAULT NULL,
  `baner_image` longtext DEFAULT NULL,
  `baner_video` longtext DEFAULT NULL,
  `story_title` longtext DEFAULT NULL,
  `story_description` longtext DEFAULT NULL,
  `story_image` longtext DEFAULT NULL,
  `story_background` longtext DEFAULT NULL,
  `story_video` longtext DEFAULT NULL,
  `mission_title` longtext DEFAULT NULL,
  `mission_description` longtext DEFAULT NULL,
  `mission_image` longtext DEFAULT NULL,
  `mission_background` longtext DEFAULT NULL,
  `mission_video` longtext DEFAULT NULL,
  `vision_title` longtext DEFAULT NULL,
  `vision_description` longtext DEFAULT NULL,
  `vision_image` longtext DEFAULT NULL,
  `vision_background` longtext DEFAULT NULL,
  `vision_video` longtext DEFAULT NULL,
  `values_title` longtext DEFAULT NULL,
  `values_description` longtext DEFAULT NULL,
  `values_image` longtext DEFAULT NULL,
  `values_background` longtext DEFAULT NULL,
  `values_video` longtext DEFAULT NULL,
  `leadership_title` longtext DEFAULT NULL,
  `leadership_description` longtext DEFAULT NULL,
  `leadership_image` longtext DEFAULT NULL,
  `leadership_background` longtext DEFAULT NULL,
  `leadership_video` longtext DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `baner_title`, `baner_description`, `baner_image`, `baner_video`, `story_title`, `story_description`, `story_image`, `story_background`, `story_video`, `mission_title`, `mission_description`, `mission_image`, `mission_background`, `mission_video`, `vision_title`, `vision_description`, `vision_image`, `vision_background`, `vision_video`, `values_title`, `values_description`, `values_image`, `values_background`, `values_video`, `leadership_title`, `leadership_description`, `leadership_image`, `leadership_background`, `leadership_video`, `status`, `created_at`, `updated_at`) VALUES
(1, 'About Us', '<p><span id=\"docs-internal-guid-483a004a-7fff-f165-7f83-4fe715a2ebf1\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\">Uniting clean energy, EV mobility, sustainable manufacturing and industrial retail for multi-sector growth.</span></span></p>', '/uploads/about/692c50dc5a42c_1764511964.jpg', NULL, 'Our Story', '<p><span id=\"docs-internal-guid-07a9947c-7fff-7bc3-8298-202e476ce972\"></span></p><p style=\"list-style-type: decimal; font-size: 11pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre; margin-left: 36pt;\"></p><p style=\"list-style-type: decimal; font-size: 11pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre; margin-left: 36pt;\"><ol></ol></p><p style=\"line-height: 1.38; margin-top: 12pt; margin-bottom: 12pt;\"><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Livenza Group was founded to unify diverse sectors under innovation and sustainability. </span><span style=\"background-color: transparent; font-family: Arial, sans-serif; font-size: 11pt; white-space-collapse: preserve;\">The “river of growth” metaphor, each company contributing to continuous innovation and community impact.</span></p>', '/uploads/about/692c4fb2721fd_1764511666.jpg', NULL, NULL, 'Mission', '<p><span id=\"docs-internal-guid-4c0f9994-7fff-82e2-6109-4d69bfafe6ad\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\"><span id=\"docs-internal-guid-a6b55a91-7fff-a521-2e41-d5ceb7da9e3a\"><span style=\"font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline;\"> “Accelerate sustainable prosperity through practical innovation, empowering businesses, communities, and individuals.”</span></span></span></span></p>', '/uploads/about/692c4fb28283d_1764511666.jpg', NULL, NULL, 'Vision', '<p><span id=\"docs-internal-guid-bb0f09ad-7fff-91f1-3059-f88171411b23\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\"><span id=\"docs-internal-guid-4a608e8a-7fff-e218-a600-7f0179d6db8a\"><span style=\"font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline;\"> “To build a multi-sector platform enabling net-zero living for industries and communities in the country.”</span><span style=\"font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline;\"><br></span></span></span></span></p>', '/uploads/about/692c4fb2932e9_1764511666.jpg', NULL, NULL, 'Values', '<ol><li><span id=\"docs-internal-guid-e7f6d4d0-7fff-d209-80eb-eac501872a1c\"><b><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\">Empowering</span><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\">:</span></b><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\"><b> </b>Enabling employees, partners, and clients to achieve full potential.</span></span></li><li><span id=\"docs-internal-guid-da850d9d-7fff-540c-c2f6-95690975490c\"><b><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\">Trust</span><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\">:</span></b><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\"> Operating with integrity, transparency, and reliability.</span><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\"><br></span></span></li><li><span id=\"docs-internal-guid-71a866ca-7fff-a310-18c5-9eb43218633d\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\"><b>Factual Decision-Making</b> </span><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\"> Data-driven, evidence-based decisions.</span><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\"><br></span></span></li><li><span id=\"docs-internal-guid-c0b72dd5-7fff-e2aa-5427-002c83f2734f\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\"><b>Long-term Thinking:</b></span><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\"> Prioritize sustainable growth over short-term gains.</span></span></li></ol>', '/uploads/about/692c4fb2a39f4_1764511666.jpg', NULL, NULL, 'Leadership', '<p><span id=\"docs-internal-guid-27e27f57-7fff-ebe7-3cf8-51add7be5f9e\"></span></p><div><font face=\"Arial, sans-serif\"><span style=\"font-size: 14.6667px; white-space: pre; font-family: Arial;\">Chief Executive Officer \r\n</span></font><span style=\"font-size: 11pt; font-family: Arial; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\">Sanjid Shahnoor Syontu</span></div><div><span style=\"font-size: 11pt; font-family: Arial; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline;\">01736-490302</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><a href=\"mailto:sanjid@livenzagroup.com\" target=\"_blank\"><span style=\"font-size: 11pt; font-family: Arial; color: rgb(0, 0, 0); background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; text-decoration-line: underline; text-decoration-skip-ink: none; vertical-align: baseline;\">sanjid@livenzagroup.com</span></a></p></span><font face=\"Arial, sans-serif\"><span style=\"font-size: 14.6667px; white-space: pre;\"></span></font></div><p style=\"list-style-type: circle; font-size: 11pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre; margin-left: 36pt;\"><ul></ul></p><p style=\"line-height: 1.38; margin-top: 12pt; margin-bottom: 0pt;\"><span style=\"background-color: transparent; font-family: Arial, sans-serif; font-size: 11pt; text-wrap-mode: wrap;\">“Integrity, operational excellence, and innovative thinking drive our culture.”</span></p>', '/uploads/about/692ffcf7c93b2_1764752631.jpg', NULL, NULL, 1, '2025-11-30 14:00:08', '2025-12-04 21:15:44');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` longtext DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `short_description` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `views` varchar(255) DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `slug`, `image`, `short_description`, `description`, `serial`, `created_by`, `comments`, `views`, `status`, `created_at`, `updated_at`) VALUES
(4, 'Empowering entrepreneu fueling growth knowledge', 'empowering-entrepreneu-fueling-growth-knowledge', '/uploads/blog/692c852e0cf24_1764525358.jpg', NULL, '<div>Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore of magna aliqua. Ut enim ad minim veniam, made of owl the quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea dolor commodo consequat. Duis aute irure and dolor in reprehenderit.</div><div><br></div><div>Use both direct conversations and indirect observations to get visibility into employees challenges and concerns. Use every opportunity to make clear to employees that you support and care them. To facilitate regular conversations between managers and employees, provide.</div><div><div><br></div><div>Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore of magna aliqua. Ut enim ad minim veniam, made of owl the quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea dolor commodo consequat. Duis aute irure and dolor in reprehenderit.</div><div><br></div><div>Use both direct conversations and indirect observations to get visibility into employees challenges and concerns. Use every opportunity to make clear to employees that you support and care them. To facilitate regular conversations between managers and employees, provide.</div></div>', '10', '1', NULL, NULL, 1, '2025-11-30 17:55:58', '2025-11-30 18:02:44'),
(5, 'Empowering entrepreneu fueling growth knowledge', 'empowering-entrepreneu-fueling-growth-knowledge', '/uploads/blog/692c852e0cf24_1764525358.jpg', NULL, '<div>Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore of magna aliqua. Ut enim ad minim veniam, made of owl the quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea dolor commodo consequat. Duis aute irure and dolor in reprehenderit.</div><div><br></div><div>Use both direct conversations and indirect observations to get visibility into employees challenges and concerns. Use every opportunity to make clear to employees that you support and care them. To facilitate regular conversations between managers and employees, provide.</div><div><div><br></div><div>Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore of magna aliqua. Ut enim ad minim veniam, made of owl the quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea dolor commodo consequat. Duis aute irure and dolor in reprehenderit.</div><div><br></div><div>Use both direct conversations and indirect observations to get visibility into employees challenges and concerns. Use every opportunity to make clear to employees that you support and care them. To facilitate regular conversations between managers and employees, provide.</div></div>', '10', '1', NULL, NULL, 1, '2025-11-30 17:55:58', '2025-11-30 18:02:48'),
(6, 'Empowering entrepreneu fueling growth knowledge', 'empowering-entrepreneu-fueling-growth-knowledge', '/uploads/blog/692c852e0cf24_1764525358.jpg', NULL, '<div>Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore of magna aliqua. Ut enim ad minim veniam, made of owl the quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea dolor commodo consequat. Duis aute irure and dolor in reprehenderit.</div><div><br></div><div>Use both direct conversations and indirect observations to get visibility into employees challenges and concerns. Use every opportunity to make clear to employees that you support and care them. To facilitate regular conversations between managers and employees, provide.</div><div><div><br></div><div>Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore of magna aliqua. Ut enim ad minim veniam, made of owl the quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea dolor commodo consequat. Duis aute irure and dolor in reprehenderit.</div><div><br></div><div>Use both direct conversations and indirect observations to get visibility into employees challenges and concerns. Use every opportunity to make clear to employees that you support and care them. To facilitate regular conversations between managers and employees, provide.</div></div>', '10', '1', NULL, NULL, 1, '2025-11-30 17:55:58', '2025-11-30 18:02:53');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `careerpages`
--

CREATE TABLE `careerpages` (
  `id` int(10) UNSIGNED NOT NULL,
  `banner_title` varchar(255) DEFAULT NULL,
  `banner_image` varchar(255) DEFAULT NULL,
  `banner_video` varchar(255) DEFAULT NULL,
  `banner_description` longtext DEFAULT NULL,
  `block_one_title` varchar(255) DEFAULT NULL,
  `block_one_image` varchar(255) DEFAULT NULL,
  `block_one_video` varchar(255) DEFAULT NULL,
  `block_one_description` longtext DEFAULT NULL,
  `block_two_title` varchar(255) DEFAULT NULL,
  `block_two_image` varchar(255) DEFAULT NULL,
  `block_two_video` varchar(255) DEFAULT NULL,
  `block_two_description` longtext DEFAULT NULL,
  `block_three_title` varchar(255) DEFAULT NULL,
  `block_three_image` varchar(255) DEFAULT NULL,
  `block_three_video` varchar(255) DEFAULT NULL,
  `block_three_description` longtext DEFAULT NULL,
  `block_four_title` varchar(255) DEFAULT NULL,
  `block_four_image` varchar(255) DEFAULT NULL,
  `block_four_video` varchar(255) DEFAULT NULL,
  `block_four_description` longtext DEFAULT NULL,
  `block_five_title` varchar(255) DEFAULT NULL,
  `block_five_image` varchar(255) DEFAULT NULL,
  `block_five_video` varchar(255) DEFAULT NULL,
  `block_five_description` longtext DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `careerpages`
--

INSERT INTO `careerpages` (`id`, `banner_title`, `banner_image`, `banner_video`, `banner_description`, `block_one_title`, `block_one_image`, `block_one_video`, `block_one_description`, `block_two_title`, `block_two_image`, `block_two_video`, `block_two_description`, `block_three_title`, `block_three_image`, `block_three_video`, `block_three_description`, `block_four_title`, `block_four_image`, `block_four_video`, `block_four_description`, `block_five_title`, `block_five_image`, `block_five_video`, `block_five_description`, `serial`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Careers', '/uploads/careerpage/692e629b22139_1764647579.png', '/uploads/careerpage/693000028ecdb_1764753410.mp4', '<font face=\"Arial, sans-serif\"><span style=\"font-size: 14.6667px; white-space-collapse: preserve;\">Join a multi-sector ecosystem driving clean energy, EV mobility, sustainable manufacturing, and industrial retail. At Livenza Group, your work has impact, and your career has growth.</span></font>', 'Why Join Us', '/uploads/careerpage/692e629b5b7bc_1764647579.png', '/uploads/careerpage/692fff4602e77_1764753222.mp4', '<ul><li><span id=\"docs-internal-guid-578d29d8-7fff-3e31-c6cd-f3a7b3273f2c\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\">Work across industries shaping the future of energy, mobility, manufacturing, and retail.</span></span></li><li><span id=\"docs-internal-guid-578d29d8-7fff-3e31-c6cd-f3a7b3273f2c\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\"><span id=\"docs-internal-guid-8c61fd41-7fff-8041-3d17-2fa68fb7c7cf\"><span style=\"font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline;\">Collaborate with top professionals, innovators, and partners in a culture that values learning, creativity, and sustainability.</span></span></span></span></li><li><span id=\"docs-internal-guid-578d29d8-7fff-3e31-c6cd-f3a7b3273f2c\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\"><span id=\"docs-internal-guid-8c61fd41-7fff-8041-3d17-2fa68fb7c7cf\"><span style=\"font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline;\"><span id=\"docs-internal-guid-0af1edab-7fff-a4b7-1746-ff17ded9e726\"><span style=\"font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline;\">Enjoy structured career growth paths, skill development, and exposure to multi-sector projects.</span></span><br></span></span></span><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\"><br></span></span></li></ul>', 'Culture & Principles', '/uploads/careerpage/692e629b649f1_1764647579.png', '/uploads/careerpage/692fff47bde26_1764753223.mp4', '<span id=\"docs-internal-guid-41b28f06-7fff-4e85-e849-afe91294f7a8\"><ul><li dir=\"ltr\" style=\"list-style-type: disc; font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space: pre;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-weight: 700; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">Fact-based Communication:</span><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\"> Decisions driven by data, evidence, and measurable outcomes.</span><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\"><br><br></span></p></li><li dir=\"ltr\" style=\"list-style-type: disc; font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space: pre;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-weight: 700; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">Critical Thinking:</span><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\"> Encouraging problem-solving, innovation, and forward-looking ideas.</span><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\"><br><br></span></p></li><li dir=\"ltr\" style=\"list-style-type: disc; font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space: pre;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-weight: 700; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">Integrity:</span><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\"> Ethical behavior and transparency in all interactions.</span><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\"><br><br></span></p></li><li dir=\"ltr\" style=\"list-style-type: disc; font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space: pre;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:12pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-weight: 700; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">Collaboration:</span><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\"> Teamwork across companies and sectors, building collective success.\r\n<span id=\"docs-internal-guid-443cc3cc-7fff-bcf2-c346-77cce088c942\"><span style=\"font-size: 11pt; background-color: transparent; font-weight: 700; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline;\">Sustainability Focus:</span><span style=\"font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline;\"> Committed to environmentally and socially responsible initiatives.</span></span></span></p></li></ul></span>', NULL, '/uploads/careerpage/692e629b6deb7_1764647579.png', '/uploads/careerpage/692fff487e981_1764753224.mp4', '<p><br></p>', NULL, '/uploads/careerpage/692e629b778f9_1764647579.png', NULL, '<p><br></p>', NULL, '/uploads/careerpage/692e629b80a6b_1764647579.png', NULL, '<p><br></p>', '10', 1, '2025-12-01 16:32:16', '2025-12-03 15:19:21');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `sub_title` varchar(255) DEFAULT NULL,
  `button_text` varchar(255) DEFAULT NULL,
  `button_link` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `short_description` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `video` longtext DEFAULT NULL,
  `map` varchar(255) DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `title`, `slug`, `sub_title`, `button_text`, `button_link`, `company_name`, `short_description`, `description`, `image`, `video`, `map`, `serial`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Automotive - EV Mobility', 'automotive-ev-mobility', 'Noor Autos - BYD', NULL, 'https://livenzagroup.com', 'Noor Autos', NULL, '<p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Noor Autos brings the global excellence of </span><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">BYD</span><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">, the world’s largest EV manufacturer, to Bangladesh. </span><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">We offer a premium sales experience, advanced after-sales service, and a fully trained technical team ensuring high-standard EV care.</span></p><h3 dir=\"ltr\" style=\"line-height:1.38;margin-top:14pt;margin-bottom:4pt;\"><span style=\"font-size:13pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Core Solutions</span></h3><ul style=\"margin-top:0;margin-bottom:0;padding-inline-start:48px;\"><li dir=\"ltr\" style=\"list-style-type:disc;font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Electric Cars & SUVs (BYD Seal, Atto 3, sealion 6 etc.)</span></p></li><li dir=\"ltr\" style=\"list-style-type:disc;font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Test Drive & Consultation</span></p></li><li dir=\"ltr\" style=\"list-style-type:disc;font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Genuine BYD Service & Maintenance</span></p></li><li dir=\"ltr\" style=\"list-style-type:disc;font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">EV Charging & Support Solutions</span></p></li><li dir=\"ltr\" style=\"list-style-type:disc;font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Fleet Partnerships for Corporate Clients</span><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"><br><br></span></p></li></ul><p dir=\"ltr\" style=\"margin-top: 12pt; margin-bottom: 0pt; line-height: 1.38;\"><span style=\"font-size: 13pt; font-family: Arial, sans-serif; background-color: transparent; font-weight: 700; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\">Value Proposition</span></p><p dir=\"ltr\" style=\"margin-top: 12pt; margin-bottom: 12pt; line-height: 1.38;\"><span id=\"docs-internal-guid-486d0e3b-7fff-d495-1283-c394d79cb0f1\"></span></p><ul style=\"margin-bottom: 0px; padding-inline-start: 48px;\"><li dir=\"ltr\" aria-level=\"1\" style=\"list-style-type: disc; font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space: pre;\"><p dir=\"ltr\" role=\"presentation\" style=\"margin-top: 12pt; margin-bottom: 0pt; line-height: 1.38;\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">BYD-certified technicians</span></p></li><li dir=\"ltr\" aria-level=\"1\" style=\"list-style-type: disc; font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space: pre;\"><p dir=\"ltr\" role=\"presentation\" style=\"margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">Luxurious showroom & delivery experience</span></p></li><li dir=\"ltr\" aria-level=\"1\" style=\"list-style-type: disc; font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space: pre;\"><p dir=\"ltr\" role=\"presentation\" style=\"margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">Reliable EV servicing & parts availability</span></p></li><li dir=\"ltr\" aria-level=\"1\" style=\"list-style-type: disc; font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space: pre;\"><p dir=\"ltr\" role=\"presentation\" style=\"margin-top: 0pt; margin-bottom: 12pt; line-height: 1.38;\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">Financing and EMI options</span></p></li></ul>', '/uploads/company/692c3f1c6733d_1764507420.jpeg', '/uploads/company/692c3113c28cd_1764503827.mp4', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14594.3973159966!2d90.34308898273865!3d23.8683575!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755c500086e55c3%3A0xb7a0b0bfecb4e437!2sBYD%20(Uttara)!5e0!3m2!1sen!2sbd!4v1764508371347!5m2!1sen!2', '10', 1, '2025-11-29 13:32:02', '2025-12-02 08:55:45'),
(2, 'RMG - Packaging Manufacturing', 'rmg-packaging-manufacturing', 'Expo Accessories Ltd', NULL, 'https://livenzagroup.com', 'Expo Accessories Ltd', NULL, '<p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Expo Accessories Ltd is one of Bangladesh’s top 5 manufacturers of garment accessories and packaging.</span><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"><br></span><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">With eco-friendly operations and modern machinery, we supply high-volume orders with consistent quality and timely delivery.</span></p><h3 dir=\"ltr\" style=\"line-height:1.38;margin-top:14pt;margin-bottom:4pt;\"><span style=\"font-size:13pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Products We Manufacture</span></h3><ul style=\"margin-top:0;margin-bottom:0;padding-inline-start:48px;\"><li dir=\"ltr\" style=\"list-style-type:disc;font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Carton Boxes</span></p></li><li dir=\"ltr\" style=\"list-style-type:disc;font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Poly Bags (Eco & Standard)</span></p></li><li dir=\"ltr\" style=\"list-style-type:disc;font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Labels, Tags & Stickers</span></p></li><li dir=\"ltr\" style=\"list-style-type:disc;font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Elastic, Drawcords & Tapes</span></p></li><li dir=\"ltr\" style=\"list-style-type:disc;font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:12pt;\" role=\"presentation\"><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Specialized RMG Packaging Items</span><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"><br><br></span></p></li></ul><h3 dir=\"ltr\" style=\"line-height:1.38;margin-top:14pt;margin-bottom:4pt;\"><span style=\"font-size:13pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Value Proposition</span></h3><ul style=\"margin-top:0;margin-bottom:0;padding-inline-start:48px;\"><li dir=\"ltr\" style=\"list-style-type:disc;font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Fast weekly output capacity</span></p></li><li dir=\"ltr\" style=\"list-style-type:disc;font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Environment-friendly manufacturing</span></p></li><li dir=\"ltr\" style=\"list-style-type:disc;font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Competitive pricing for global buyers</span></p></li><li dir=\"ltr\" style=\"list-style-type:disc;font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:12pt;\" role=\"presentation\"><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Compliance-ready operations</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:12pt;\" role=\"presentation\"><br></p></li></ul>', '/uploads/company/692c2ee691cc7_1764503270.jpeg', '/uploads/company/692c32639d5be_1764504163.mp4', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3648.128143909228!2d90.38756567516965!3d23.885074283593173!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755c5adf5ba8203%3A0x681e2330dda6a78!2sExpo%20Accessories%20Limited!5e0!3m2!1sen!2sbd!4v17', '20', 2, '2025-11-29 13:32:02', '2026-08-01 08:34:48'),
(3, 'Clean Energy & Industrial Solutions BD', 'clean-energy-industrial-solutions-bd', 'Greenery Energy Solution Ltd', NULL, 'https://livenzagroup.com', 'Greenery Energy Solution Ltd', NULL, '<p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Greenery Energy Solution Ltd is the official distributor of LESSO (solar/ESS) and ZERO (HVAC/VRF) , providing nationwide energy solutions for residential, commercial, and industrial  sectors.</span><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"><br></span><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">We serve a fast-expanding installer and dealer ecosystem, backed by strong technical support, engineering teams, and reliable after-sales service.</span></p><h3 dir=\"ltr\" style=\"line-height:1.38;margin-top:14pt;margin-bottom:4pt;\"><span style=\"font-size:13pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Core Solutions</span></h3><ul style=\"margin-top:0;margin-bottom:0;padding-inline-start:48px;\"><li dir=\"ltr\" style=\"list-style-type:disc;font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Solar Power Systems (Commercial, industrial)</span></p></li><li dir=\"ltr\" style=\"list-style-type:disc;font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Energy Storage Solutions (ESS & Hybrid)</span></p></li><li dir=\"ltr\" style=\"list-style-type:disc;font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Commercial HVAC & VRF Systems (ZERO)</span></p></li><li dir=\"ltr\" style=\"list-style-type:disc;font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Project-based EPC Support</span></p></li><li dir=\"ltr\" style=\"list-style-type:disc;font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:12pt;\" role=\"presentation\"><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Dealer/Installer Technical Training</span><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"><br><br></span></p></li></ul><h3 dir=\"ltr\" style=\"line-height:1.38;margin-top:14pt;margin-bottom:4pt;\"><span style=\"font-size:13pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Value Proposition</span></h3><p><span id=\"docs-internal-guid-69e0b3f1-7fff-5d7c-96c8-3e55dcd9a81f\"></span></p><ul style=\"margin-top:0;margin-bottom:0;padding-inline-start:48px;\"><li dir=\"ltr\" style=\"list-style-type:disc;font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Guaranteed authentic LESSO & ZERO products</span></p></li><li dir=\"ltr\" style=\"list-style-type:disc;font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Strong dealer pricing & margins</span></p></li><li dir=\"ltr\" style=\"list-style-type:disc;font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Nationwide logistics & sales coverage</span></p></li><li dir=\"ltr\" style=\"list-style-type:disc;font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:12pt;\" role=\"presentation\"><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Dedicated engineering helpdesk</span></p></li><li dir=\"ltr\" style=\"list-style-type:disc;font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\" role=\"presentation\"><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Fast warranty & after-sales support</span></p></li></ul>', '/uploads/company/692c2bc8ea62e_1764502472.jpeg', '/uploads/company/692c2c86a49da_1764502662.mp4', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3648.431036385656!2d90.37907597533977!3d23.874329478586017!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755c5003422f655%3A0xde3d4394732dca14!2sCANYON%20TOWER!5e0!3m2!1sen!2sbd!4v1764419918915!5', '30', 1, '2025-11-29 13:32:02', '2025-12-02 08:56:13'),
(4, 'Clean Energy & Industrial Solutions Canada', 'clean-energy-industrial-solutions-canada', 'Greenery Import Export Ltd', NULL, 'https://livenzagroup.com', 'Greenery Import Export Ltd', NULL, '<p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Based in Canada, Greenery Import Export Ltd supplies advanced energy and industrial products to installers, builders, and B2B clients across the region.</span><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"><br></span><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">We specialize in energy-efficient technologies, HVAC systems, and heavy-duty industrial solutions.</span></p><h3 dir=\"ltr\" style=\"line-height:1.38;margin-top:14pt;margin-bottom:4pt;\"><span style=\"font-size:13pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Core Solutions</span></h3><ul style=\"margin-top:0;margin-bottom:0;padding-inline-start:48px;\"><li dir=\"ltr\" style=\"list-style-type:disc;font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">HVAC Systems & Heat Pumps</span></p></li><li dir=\"ltr\" style=\"list-style-type:disc;font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Energy-efficient Industrial Machinery</span></p></li><li dir=\"ltr\" style=\"list-style-type:disc;font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Professional-grade Tools & Components</span></p></li><li dir=\"ltr\" style=\"list-style-type:disc;font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Renewable Energy Hardware Supply</span></p></li><li dir=\"ltr\" style=\"list-style-type:disc;font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:12pt;\" role=\"presentation\"><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">B2B Import–Distribution Operations</span><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"><br><br></span></p></li></ul><h3 dir=\"ltr\" style=\"line-height:1.38;margin-top:14pt;margin-bottom:4pt;\"><span style=\"font-size:13pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Value Proposition</span></h3><p><span id=\"docs-internal-guid-3d11f065-7fff-b15b-62b2-2a00c7a0d7ae\"></span></p><ul style=\"margin-top:0;margin-bottom:0;padding-inline-start:48px;\"><li dir=\"ltr\" style=\"list-style-type:disc;font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Strong supplier network</span></p></li><li dir=\"ltr\" style=\"list-style-type:disc;font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Fast Canada-wide delivery</span></p></li><li dir=\"ltr\" style=\"list-style-type:disc;font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Engineering & product matching support</span></p></li><li dir=\"ltr\" style=\"list-style-type:disc;font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:12pt;\" role=\"presentation\"><span style=\"font-size:11pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">North America–compliant products</span></p></li></ul>', '/uploads/company/692bc6c2ac475_1764476610.jpg', '/uploads/company/692c3b62a837d_1764506466.mp4', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2612.0445201358916!2d-122.7474663234488!3d49.10479468333454!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x5485dbe913c5a39d%3A0x88ad200d5ab203ca!2sGreenery%20Import%20Export%20Ltd!5e0!3m2!1sen!2sb', '40', 1, '2025-11-29 13:32:02', '2025-12-02 08:56:29'),
(5, 'Industrial Retail - Worker-Centric Stores', 'industrial-retail-worker-centric-stores', 'Greenery Mart', NULL, 'https://livenzagroup.com', 'Greenery Mart', NULL, '<p><span style=\"font-size: 14.98px;\"><b>Bangladesh’s premium BYD EV dealership, delivering the next generation of electric mobility.<br></b></span></p><p><span style=\"font-size: 14.98px;\">Noor Autos brings the global excellence of BYD, the world’s largest EV manufacturer, to Bangladesh.</span></p><p></p><p><span style=\"font-size: 14.98px;\"> We offer a premium sales experience, advanced after-sales service, and a fully trained technical team ensuring high-standard EV care.<br></span><span id=\"docs-internal-guid-4f9b9214-7fff-a77c-32e7-59b884682f20\"></span></p><h3 dir=\"ltr\" style=\"line-height:1.38;margin-top:14pt;margin-bottom:4pt;\"><span style=\"font-size:13pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Core Solutions\r\n<span style=\"font-weight:normal;\" id=\"docs-internal-guid-b5efc74f-7fff-f508-0fca-14964b0bf104\"><ul style=\"margin-bottom: 0px; padding-inline-start: 48px;\"><li dir=\"ltr\" style=\"list-style-type: disc; font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: nowrap;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">Electric Cars & SUVs (BYD Seal, Atto 3, sealion 6 etc.)</span></p></li><li dir=\"ltr\" style=\"list-style-type: disc; font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: nowrap;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">Test Drive & Consultation</span></p></li><li dir=\"ltr\" style=\"list-style-type: disc; font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: nowrap;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">Genuine BYD Service & Maintenance</span></p></li><li dir=\"ltr\" style=\"list-style-type: disc; font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: nowrap;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:12pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">EV Charging & Support Solutions</span></p></li><li dir=\"ltr\" style=\"list-style-type: disc; font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: nowrap;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">Fleet Partnerships for Corporate Clients\r\n\r\n</span></p></li></ul></span></span></h3><h3 dir=\"ltr\" style=\"margin-top: 14pt; margin-bottom: 4pt; line-height: 1.38; color: rgb(0, 0, 0);\"><span style=\"font-size: 13pt; font-family: Arial, sans-serif; background-color: transparent; font-weight: 700; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\"><span style=\"font-weight:normal;\" id=\"docs-internal-guid-9b5694a7-7fff-d053-7d93-783d47ed153e\"><span style=\"font-size: 13pt; background-color: transparent; font-weight: 700; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline;\">Value Proposition\r\n<span style=\"font-weight:normal;\" id=\"docs-internal-guid-a6097f8a-7fff-f268-b68f-7cd05d54c2c1\"><ul style=\"margin-bottom: 0px; padding-inline-start: 48px;\"><li dir=\"ltr\" style=\"list-style-type: disc; font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: nowrap;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">BYD-certified technicians</span></p></li><li dir=\"ltr\" style=\"list-style-type: disc; font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: nowrap;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">Luxurious showroom & delivery experience</span></p></li><li dir=\"ltr\" style=\"list-style-type: disc; font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: nowrap;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">Reliable EV servicing & parts availability</span></p></li><li dir=\"ltr\" style=\"list-style-type: disc; font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: nowrap;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:12pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">Financing and EMI options</span></p></li><li dir=\"ltr\" style=\"list-style-type: disc; font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: nowrap;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">Partnership programs for corporate fleets</span></p></li></ul></span></span></span></span></h3>', '/uploads/company/692bc6e947f81_1764476649.jpg', '/uploads/company/692af5d2847d2_1764423122.mp4', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3648.431036385656!2d90.37907597533977!3d23.874329478586017!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755c5003422f655%3A0xde3d4394732dca14!2sCANYON%20TOWER!5e0!3m2!1sen!2sbd!4v1764419918915!5', '50', 1, '2025-11-29 13:32:02', '2025-12-02 08:56:46');
INSERT INTO `companies` (`id`, `title`, `slug`, `sub_title`, `button_text`, `button_link`, `company_name`, `short_description`, `description`, `image`, `video`, `map`, `serial`, `status`, `created_at`, `updated_at`) VALUES
(6, 'Pharmaceutical - Industrial Plastics', 'pharmaceutical-industrial-plastics', 'Novelty Bangladesh Ltd', NULL, 'https://livenzagroup.com', 'Novelty Bangladesh Ltd', NULL, '<p dir=\"ltr\" style=\"margin-top: 12pt; margin-bottom: 12pt; line-height: 1.38;\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\">Novelty Bangladesh Ltd delivers high-purity plastic solutions for pharmaceutical, healthcare, and industrial clients.</span><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\"><br></span><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\">Our products follow international quality benchmarks and serve clients that require guaranteed consistency, hygiene, and mechanical strength.</span></p><h3 dir=\"ltr\" style=\"margin-top: 14pt; margin-bottom: 4pt; line-height: 1.38; color: rgb(0, 0, 0);\"><span style=\"font-size: 13pt; font-family: Arial, sans-serif; background-color: transparent; font-weight: 700; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\">Products We Manufacture</span></h3><ul style=\"margin-bottom: 0px; padding-inline-start: 48px;\"><li dir=\"ltr\" aria-level=\"1\" style=\"list-style-type: disc; font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space: pre;\"><p dir=\"ltr\" role=\"presentation\" style=\"margin-top: 12pt; margin-bottom: 0pt; line-height: 1.38;\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">Pharmaceutical Containers & Jars</span></p></li><li dir=\"ltr\" aria-level=\"1\" style=\"list-style-type: disc; font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space: pre;\"><p dir=\"ltr\" role=\"presentation\" style=\"margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">HDPE/PP Industrial Plastic Products</span></p></li><li dir=\"ltr\" aria-level=\"1\" style=\"list-style-type: disc; font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space: pre;\"><p dir=\"ltr\" role=\"presentation\" style=\"margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">Medical-grade Bottles & Caps</span></p></li><li dir=\"ltr\" aria-level=\"1\" style=\"list-style-type: disc; font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space: pre;\"><p dir=\"ltr\" role=\"presentation\" style=\"margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">Customized Industrial Plastic Components</span></p></li><li dir=\"ltr\" aria-level=\"1\" style=\"list-style-type: disc; font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space: pre;\"><p dir=\"ltr\" role=\"presentation\" style=\"margin-top: 0pt; margin-bottom: 12pt; line-height: 1.38;\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">Injection & Blow Molded Solutions</span><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\"><br><br></span></p></li></ul><h3 dir=\"ltr\" style=\"margin-top: 14pt; margin-bottom: 4pt; line-height: 1.38; color: rgb(0, 0, 0);\"><span style=\"font-size: 13pt; font-family: Arial, sans-serif; background-color: transparent; font-weight: 700; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\">Value Proposition</span></h3><p><span id=\"docs-internal-guid-efaaa487-7fff-4d11-fff2-ccf90c49c82b\"></span></p><ul style=\"margin-bottom: 0px; padding-inline-start: 48px;\"><li dir=\"ltr\" aria-level=\"1\" style=\"list-style-type: disc; font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space: pre;\"><p dir=\"ltr\" role=\"presentation\" style=\"margin-top: 12pt; margin-bottom: 0pt; line-height: 1.38;\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">Pharma-grade quality</span></p></li><li dir=\"ltr\" aria-level=\"1\" style=\"list-style-type: disc; font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space: pre;\"><p dir=\"ltr\" role=\"presentation\" style=\"margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">Custom molding capabilities</span></p></li><li dir=\"ltr\" aria-level=\"1\" style=\"list-style-type: disc; font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space: pre;\"><p dir=\"ltr\" role=\"presentation\" style=\"margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">High-strength industrial products</span></p></li><li dir=\"ltr\" aria-level=\"1\" style=\"list-style-type: disc; font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space: pre;\"><p dir=\"ltr\" role=\"presentation\" style=\"margin-top: 0pt; margin-bottom: 0pt; line-height: 1.38;\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">Precision production with modern machinery</span></p></li><li dir=\"ltr\" aria-level=\"1\" style=\"list-style-type: disc; font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space: pre;\"><p dir=\"ltr\" role=\"presentation\" style=\"margin-top: 0pt; margin-bottom: 12pt; line-height: 1.38;\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">Fast delivery schedules</span><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\"><br></span></p></li></ul>', '/uploads/company/692bc702093cc_1764476674.jpg', '/uploads/company/692af5d2847d2_1764423122.mp4', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3648.431036385656!2d90.37907597533977!3d23.874329478586017!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755c5003422f655%3A0xde3d4394732dca14!2sCANYON%20TOWER!5e0!3m2!1sen!2sbd!4v1764419918915!5', '60', 1, '2025-11-29 13:32:02', '2026-08-05 10:42:26');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `title` varchar(256) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `toll_free` varchar(40) DEFAULT NULL,
  `fax` varchar(256) DEFAULT NULL,
  `email` varchar(256) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `google_map` text DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `is_default` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `title`, `phone`, `toll_free`, `fax`, `email`, `address`, `google_map`, `subject`, `status`, `is_default`, `name`, `message`, `user_id`, `type`, `created_at`, `updated_at`) VALUES
(0, NULL, 'hh', NULL, NULL, 'e@gmail.com', NULL, NULL, 'ghfg', 1, 0, 'hh', 'xcx', NULL, NULL, '2025-11-30 19:54:08', '2025-11-30 19:54:08'),
(0, NULL, '01407698727', NULL, NULL, 'ismailmariner2020@gmail.com', NULL, NULL, 'Application for \"Associate Officer\"(Trainee)-2026', 1, 0, 'Md. Ismail Hossain', 'Dear Hiring Team,\r\nI am writing to apply for the Associate Officer (Trainee) position at Greenery Energy Solution Limited. I have an academic background in Mechanical Engineering and a strong interest in learning and building my career in the renewable energy sector. I am motivated, quick to learn, and eager to contribute through your structured training program.\r\nMy application details have been submitted through the google form. I look forward to your kind consideration.\r\nRegards,\r\nMd. Ismail Hossain\r\nMobile: 01407698727', NULL, NULL, '2026-01-06 09:53:49', '2026-01-06 09:53:49');

-- --------------------------------------------------------

--
-- Table structure for table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20240718142523', '2024-07-30 07:02:41', 6);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `gallery_events`
--

CREATE TABLE `gallery_events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gallery_images`
--

CREATE TABLE `gallery_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_applieds`
--

CREATE TABLE `job_applieds` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `job_id` varchar(255) NOT NULL,
  `job_slug` varchar(255) DEFAULT NULL,
  `cover_later` longtext DEFAULT NULL,
  `qualifications` longtext DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `cv` varchar(255) DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_applieds`
--

INSERT INTO `job_applieds` (`id`, `name`, `email`, `phone`, `job_id`, `job_slug`, `cover_later`, `qualifications`, `address`, `position`, `cv`, `serial`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Arif', 'a@gmail.com', '013022', '4', '', '<p>aesfasdf</p>', NULL, NULL, NULL, '/uploads/careerapply/692fbd712d6cc_1764736369.pdf', NULL, 1, '2025-12-03 04:32:49', '2025-12-03 04:32:49'),
(2, 'Saiful Islam', 'saiful.islam.offi@gmail.com', '01839152002', '2', NULL, 'Dear Sir,\r\nAssalamu alaikum. I am writing to express my keen interest in the position of Laravel Developer at your company. With a strong foundation in Laravel development and a passion for crafting efficient web applications, I am confident in my ability to contribute significantly to your team.\r\n\r\nMy CV is attached with providing further information and I look forward to hearing from you.\r\n\r\nMd. Saiful Islam\r\nCell: 01839152002\r\nEmail: saiful.laravel.dev@gmail.com', NULL, NULL, NULL, '/uploads/careerapply/695bbdb834695_1767620024.pdf', NULL, 1, '2026-01-05 19:33:44', '2026-01-05 19:33:44'),
(3, 'Golam Sarwar Sami', 'samixshady22@gmail.com', '01704755394', '2', NULL, 'I am a Computer Science and Engineering graduate from BRAC University with strong experience in Laravel (PHP), JavaScript, Python, and database management systems. I focus on building clean, scalable, and well-documented web applications following best development practices.\r\n\r\nI received the Best Thesis Award for my research on the economic impact and attack patterns of botnets in Bangladesh, which strengthened my understanding of cybersecurity, secure coding, and system reliability.\r\n\r\nI am hardworking, punctual, and deadline-driven, with fluent English communication skills and a strong sense of professional ethics. I am eager to contribute my skills and dedication as a Laravel Developer at Livenza Group.\r\n\r\nMy latest laravel project\r\nhttps://mednet-gyfn.onrender.com/', NULL, NULL, NULL, '/uploads/careerapply/695bcafc12b04_1767623420.pdf', NULL, 1, '2026-01-05 20:30:20', '2026-01-05 20:30:20'),
(4, 'Al hasibul islam', 'alhasibul54@gmail.com', '01728861454', '2', NULL, 'Apply for the my cv', NULL, NULL, NULL, '/uploads/careerapply/695c7e739f40b_1767669363.pdf', NULL, 1, '2026-01-06 09:16:03', '2026-01-06 09:16:03');

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_circulars`
--

CREATE TABLE `job_circulars` (
  `id` int(10) UNSIGNED NOT NULL,
  `job_title` varchar(255) NOT NULL,
  `job_slug` varchar(255) NOT NULL,
  `start_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `end_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `job_description` longtext DEFAULT NULL,
  `qualifications` longtext DEFAULT NULL,
  `company_info` longtext DEFAULT NULL,
  `developer_note` longtext DEFAULT NULL,
  `pdf` varchar(255) DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_circulars`
--

INSERT INTO `job_circulars` (`id`, `job_title`, `job_slug`, `start_date`, `end_date`, `job_description`, `qualifications`, `company_info`, `developer_note`, `pdf`, `serial`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Laravel Developer', 'laravel-developer', '2025-12-03 18:00:00', '2025-12-19 18:00:00', '<p><strong style=\"margin: 0px; padding: 0px; font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\"> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p>', NULL, NULL, '<ul><li><span style=\"font-weight: 600; margin: 0px; padding: 0px; font-family: \"Open Sans\", Arial, sans-serif; text-align: justify;\">Lorem Ipsum</span><span style=\"font-family: \"Open Sans\", Arial, sans-serif; text-align: justify;\"> is simply dummy text of the printing and typesetting industry. </span></li><li><span style=\"font-family: \"Open Sans\", Arial, sans-serif; text-align: justify;\"><span style=\"font-weight: 600; margin: 0px; padding: 0px;\">Lorem Ipsum</span> is simply dummy text of the printing and typesetting industry. </span></li><li><span style=\"font-family: \"Open Sans\", Arial, sans-serif; text-align: justify;\"><span style=\"font-weight: 600; margin: 0px; padding: 0px;\">Lorem Ipsum</span> is simply dummy text of the printing and typesetting industry. </span></li><li><span style=\"font-family: \"Open Sans\", Arial, sans-serif; text-align: justify;\"><span style=\"font-weight: 600; margin: 0px; padding: 0px;\">Lorem Ipsum</span> is simply dummy text of the printing and typesetting industry. </span></li><li><span style=\"font-family: \"Open Sans\", Arial, sans-serif; text-align: justify;\"><span style=\"font-weight: 600; margin: 0px; padding: 0px;\">Lorem Ipsum</span> is simply dummy text of the printing and typesetting industry. </span></li></ul>', '/uploads/circular/692fa3a5e80f0_1764729765.pdf', '10', 1, '2025-12-03 02:42:45', '2025-12-03 04:58:24'),
(3, 'Area Manager', 'area-manager', '2025-12-02 18:00:00', '2025-12-19 18:00:00', '<p><strong style=\"margin: 0px; padding: 0px; font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\"> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p>', NULL, NULL, '<ul><li><span style=\"font-weight: 600; margin: 0px; padding: 0px; font-family: \"Open Sans\", Arial, sans-serif; text-align: justify;\">Lorem Ipsum</span><span style=\"font-family: \"Open Sans\", Arial, sans-serif; text-align: justify;\"> is simply dummy text of the printing and typesetting industry. </span></li><li><span style=\"font-family: \"Open Sans\", Arial, sans-serif; text-align: justify;\"><span style=\"font-weight: 600; margin: 0px; padding: 0px;\">Lorem Ipsum</span> is simply dummy text of the printing and typesetting industry. </span></li><li><span style=\"font-family: \"Open Sans\", Arial, sans-serif; text-align: justify;\"><span style=\"font-weight: 600; margin: 0px; padding: 0px;\">Lorem Ipsum</span> is simply dummy text of the printing and typesetting industry. </span></li><li><span style=\"font-family: \"Open Sans\", Arial, sans-serif; text-align: justify;\"><span style=\"font-weight: 600; margin: 0px; padding: 0px;\">Lorem Ipsum</span> is simply dummy text of the printing and typesetting industry. </span></li><li><span style=\"font-family: \"Open Sans\", Arial, sans-serif; text-align: justify;\"><span style=\"font-weight: 600; margin: 0px; padding: 0px;\">Lorem Ipsum</span> is simply dummy text of the printing and typesetting industry. </span></li></ul>', '/uploads/circular/692fa3a5e80f0_1764729765.pdf', '10', 1, '2025-12-03 02:42:45', '2025-12-03 04:59:55'),
(4, 'SEO Developer', 'seo-developer', '2025-12-02 18:00:00', '2025-12-19 18:00:00', '<p><strong style=\"margin: 0px; padding: 0px; font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\"> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p>', NULL, NULL, '<ul><li><span style=\"font-weight: 600; margin: 0px; padding: 0px; font-family: \"Open Sans\", Arial, sans-serif; text-align: justify;\">Lorem Ipsum</span><span style=\"font-family: \"Open Sans\", Arial, sans-serif; text-align: justify;\"> is simply dummy text of the printing and typesetting industry. </span></li><li><span style=\"font-family: \"Open Sans\", Arial, sans-serif; text-align: justify;\"><span style=\"font-weight: 600; margin: 0px; padding: 0px;\">Lorem Ipsum</span> is simply dummy text of the printing and typesetting industry. </span></li><li><span style=\"font-family: \"Open Sans\", Arial, sans-serif; text-align: justify;\"><span style=\"font-weight: 600; margin: 0px; padding: 0px;\">Lorem Ipsum</span> is simply dummy text of the printing and typesetting industry. </span></li><li><span style=\"font-family: \"Open Sans\", Arial, sans-serif; text-align: justify;\"><span style=\"font-weight: 600; margin: 0px; padding: 0px;\">Lorem Ipsum</span> is simply dummy text of the printing and typesetting industry. </span></li><li><span style=\"font-family: \"Open Sans\", Arial, sans-serif; text-align: justify;\"><span style=\"font-weight: 600; margin: 0px; padding: 0px;\">Lorem Ipsum</span> is simply dummy text of the printing and typesetting industry. </span></li></ul>', '/uploads/circular/692fa3a5e80f0_1764729765.pdf', '10', 1, '2025-12-03 02:42:45', '2025-12-03 05:00:14'),
(5, 'php delveloper', 'php-delveloper', '2025-12-02 18:00:00', '2025-12-19 18:00:00', '<p><strong style=\"margin: 0px; padding: 0px; font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\"> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p>', NULL, NULL, '<ul><li><span style=\"font-weight: 600; margin: 0px; padding: 0px; font-family: \"Open Sans\", Arial, sans-serif; text-align: justify;\">Lorem Ipsum</span><span style=\"font-family: \"Open Sans\", Arial, sans-serif; text-align: justify;\"> is simply dummy text of the printing and typesetting industry. </span></li><li><span style=\"font-family: \"Open Sans\", Arial, sans-serif; text-align: justify;\"><span style=\"font-weight: 600; margin: 0px; padding: 0px;\">Lorem Ipsum</span> is simply dummy text of the printing and typesetting industry. </span></li><li><span style=\"font-family: \"Open Sans\", Arial, sans-serif; text-align: justify;\"><span style=\"font-weight: 600; margin: 0px; padding: 0px;\">Lorem Ipsum</span> is simply dummy text of the printing and typesetting industry. </span></li><li><span style=\"font-family: \"Open Sans\", Arial, sans-serif; text-align: justify;\"><span style=\"font-weight: 600; margin: 0px; padding: 0px;\">Lorem Ipsum</span> is simply dummy text of the printing and typesetting industry. </span></li><li><span style=\"font-family: \"Open Sans\", Arial, sans-serif; text-align: justify;\"><span style=\"font-weight: 600; margin: 0px; padding: 0px;\">Lorem Ipsum</span> is simply dummy text of the printing and typesetting industry. </span></li></ul>', '/uploads/circular/692fa3a5e80f0_1764729765.pdf', '10', 1, '2025-12-03 02:42:45', '2025-12-03 05:00:05');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(9, '2025_01_16_151135_create_alumnis_table', 1),
(10, '2025_01_16_153839_create_events_table', 1),
(13, '2025_01_21_145134_create_students_table', 1),
(14, '2025_01_21_152700_create_teachers_table', 1),
(23, '0001_01_01_000001_create_cache_table', 2),
(24, '0001_01_01_000002_create_jobs_table', 2),
(25, '2014_10_12_000000_create_users_table', 2),
(26, '2014_10_12_100000_create_password_resets_table', 2),
(27, '2019_12_14_000001_create_personal_access_tokens_table', 2),
(28, '2023_07_07_043328_create_translations_table', 2),
(29, '2023_08_11_053742_create_transactions_table', 2),
(30, '2023_08_14_093605_create_sessions_table', 2),
(31, '2025_01_19_114656_create_gallery_events_table', 2),
(32, '2025_01_19_132236_create_gallery_images_table', 2),
(33, '2025_01_22_133821_create_profiles_table', 2),
(34, '2025_01_23_144233_create_registeredevents_table', 2),
(35, '2025_11_12_234025_create_sliders_table', 2),
(36, '2025_11_27_154547_create_companies_table', 2),
(37, '2025_11_30_071128_create_portfolios_table', 3),
(39, '2025_11_30_090006_create_projects_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(256) NOT NULL,
  `slug` text DEFAULT NULL,
  `publish_date` date NOT NULL,
  `category` varchar(256) DEFAULT NULL,
  `short_description` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `url` text DEFAULT NULL,
  `media` varchar(256) NOT NULL,
  `file` varchar(256) DEFAULT NULL,
  `gallery_images` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `is_featured` int(11) DEFAULT NULL,
  `read_time` varchar(50) DEFAULT NULL,
  `ancestor_id` varchar(40) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `title` varchar(256) NOT NULL,
  `message` text DEFAULT NULL,
  `sender` int(11) DEFAULT NULL,
  `receiver` int(11) DEFAULT NULL,
  `date` date NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `ancestor_id` varchar(40) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `otp`
--

CREATE TABLE `otp` (
  `id` int(11) NOT NULL,
  `email` varchar(256) NOT NULL,
  `otp` varchar(24) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `title`, `image`, `link`, `serial`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Matrix', '/uploads/partner/692c746d6ae29_1764521069.png', 'https://matrixian.com/en/', '9', 1, '2025-11-30 16:44:29', '2025-11-30 16:46:28'),
(2, 'Matrix', '/uploads/partner/692c746d6ae29_1764521069.png', 'https://matrixian.com/en/', '9', 1, '2025-11-30 16:44:29', '2025-11-30 16:46:28'),
(3, 'Matrix', '/uploads/partner/692c746d6ae29_1764521069.png', 'https://matrixian.com/en/', '9', 1, '2025-11-30 16:44:29', '2025-11-30 16:46:28'),
(4, 'Matrix', '/uploads/partner/692c746d6ae29_1764521069.png', 'https://matrixian.com/en/', '9', 1, '2025-11-30 16:44:29', '2025-11-30 16:46:28'),
(5, 'Matrix', '/uploads/partner/692c746d6ae29_1764521069.png', 'https://matrixian.com/en/', '9', 1, '2025-11-30 16:44:29', '2025-11-30 16:46:28'),
(6, 'Matrix', '/uploads/partner/692c746d6ae29_1764521069.png', 'https://matrixian.com/en/', '9', 1, '2025-11-30 16:44:29', '2025-11-30 16:46:28'),
(7, 'Matrix', '/uploads/partner/692c746d6ae29_1764521069.png', 'https://matrixian.com/en/', '9', 1, '2025-11-30 16:44:29', '2025-11-30 16:46:28'),
(8, 'Matrix', '/uploads/partner/692c746d6ae29_1764521069.png', 'https://matrixian.com/en/', '9', 1, '2025-11-30 16:44:29', '2025-11-30 16:46:28'),
(9, 'Matrix', '/uploads/partner/692c746d6ae29_1764521069.png', 'https://matrixian.com/en/', '9', 1, '2025-11-30 16:44:29', '2025-11-30 16:46:28'),
(10, 'Matrix', '/uploads/partner/692c746d6ae29_1764521069.png', 'https://matrixian.com/en/', '9', 1, '2025-11-30 16:44:29', '2025-11-30 16:46:28'),
(11, 'Matrix', '/uploads/partner/692c746d6ae29_1764521069.png', 'https://matrixian.com/en/', '9', 1, '2025-11-30 16:44:29', '2025-11-30 16:46:28'),
(12, 'Matrix', '/uploads/partner/692c746d6ae29_1764521069.png', 'https://matrixian.com/en/', '9', 1, '2025-11-30 16:44:29', '2025-11-30 16:46:28'),
(13, 'Matrix', '/uploads/partner/692c746d6ae29_1764521069.png', 'https://matrixian.com/en/', '9', 1, '2025-11-30 16:44:29', '2025-11-30 16:46:28'),
(14, 'Matrix', '/uploads/partner/692c746d6ae29_1764521069.png', 'https://matrixian.com/en/', '9', 1, '2025-11-30 16:44:29', '2025-11-30 16:46:28'),
(15, 'Matrix', '/uploads/partner/692c746d6ae29_1764521069.png', 'https://matrixian.com/en/', '9', 1, '2025-11-30 16:44:29', '2025-11-30 16:46:28'),
(16, 'Matrix', '/uploads/partner/692c746d6ae29_1764521069.png', 'https://matrixian.com/en/', '9', 1, '2025-11-30 16:44:29', '2025-11-30 16:46:28');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `portfolios`
--

CREATE TABLE `portfolios` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `button_text` varchar(255) DEFAULT NULL,
  `button_link` varchar(255) DEFAULT NULL,
  `short_description` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `slier_for` varchar(255) DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolios`
--

INSERT INTO `portfolios` (`id`, `title`, `slug`, `button_text`, `button_link`, `short_description`, `description`, `image`, `video`, `slier_for`, `serial`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Title name', 'title-name', 'Read more', 'https://www.livenzagroup.com', NULL, NULL, '/uploads/portfolio/692e85117ded1_1764656401.jpg', NULL, '1', '10', 1, '2025-11-30 02:47:25', '2025-12-02 12:20:01'),
(2, 'Title name', 'title-name', 'Read more', NULL, NULL, NULL, '/uploads/portfolio/692e8547b920c_1764656455.jpg', NULL, '1', '20', 1, '2025-11-30 02:47:25', '2025-12-02 12:20:55'),
(3, 'Title name', 'title-name', 'Read more', NULL, NULL, NULL, '/uploads/portfolio/692e85552333d_1764656469.jpg', NULL, '1', '30', 1, '2025-11-30 02:47:25', '2025-12-02 12:21:09'),
(7, 'Title name', 'title-name', 'Read more', 'https://www.livenzagroup.com', NULL, NULL, '/uploads/portfolio/692e867f4af56_1764656767.jpg', NULL, '1', '10', 1, '2025-11-30 02:47:25', '2025-12-02 12:26:07'),
(8, 'Title name', 'title-name', 'Read more', NULL, NULL, NULL, '/uploads/portfolio/692e8691b8b62_1764656785.jpg', NULL, '1', '20', 1, '2025-11-30 02:47:25', '2025-12-02 12:26:25'),
(9, 'Title name', 'title-name', 'Read more', NULL, NULL, NULL, '/uploads/portfolio/692e869ea841a_1764656798.jpg', NULL, '1', '30', 1, '2025-11-30 02:47:25', '2025-12-02 12:26:38');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `sub_title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `button_text` varchar(255) DEFAULT NULL,
  `button_link` varchar(255) DEFAULT NULL,
  `short_description` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `slier_for` varchar(255) DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `title`, `sub_title`, `slug`, `button_text`, `button_link`, `short_description`, `description`, `image`, `video`, `slier_for`, `serial`, `status`, `created_at`, `updated_at`) VALUES
(10, 'Projetct', 'Projetct subtitle', 'projetct', NULL, 'https://livenzagroup.com/', NULL, NULL, '/uploads/project/692e862592277_1764656677.jpg', NULL, '1', '10', 1, '2025-12-02 12:24:37', '2025-12-02 12:24:37'),
(11, 'Projetct', 'Projetct subtitle', 'projetct', NULL, 'https://livenzagroup.com/', NULL, NULL, '/uploads/project/692e86b5b4306_1764656821.jpg', NULL, '1', '10', 1, '2025-12-02 12:24:37', '2025-12-02 12:27:01'),
(12, 'Projetct', 'Projetct subtitle', 'projetct', NULL, 'https://livenzagroup.com/', NULL, NULL, '/uploads/project/692e86c718ea2_1764656839.jpg', NULL, '1', '10', 1, '2025-12-02 12:24:37', '2025-12-02 12:27:19'),
(13, 'Projetct', 'Projetct subtitle', 'projetct', NULL, 'https://livenzagroup.com/', NULL, NULL, '/uploads/project/692e862592277_1764656677.jpg', NULL, '1', '10', 1, '2025-12-02 12:24:37', '2025-12-02 12:24:37'),
(14, 'Projetct', 'Projetct subtitle', 'projetct', NULL, 'https://livenzagroup.com/', NULL, NULL, '/uploads/project/692e86d97ab49_1764656857.jpg', NULL, '1', '10', 1, '2025-12-02 12:24:37', '2025-12-02 12:27:37'),
(15, 'Projetct', 'Projetct subtitle', 'projetct', NULL, 'https://livenzagroup.com/', NULL, NULL, '/uploads/project/692e862592277_1764656677.jpg', NULL, '1', '10', 1, '2025-12-02 12:24:37', '2025-12-02 12:24:37');

-- --------------------------------------------------------

--
-- Table structure for table `registeredevents`
--

CREATE TABLE `registeredevents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `right`
--

CREATE TABLE `right` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `module` varchar(256) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `right`
--

INSERT INTO `right` (`id`, `name`, `module`, `created_at`, `updated_at`) VALUES
(1, 'role.view', 'role', '2023-05-09 22:11:19', '2023-05-09 22:17:58'),
(2, 'role.create', 'role', '2023-05-09 22:11:44', '2023-05-09 22:17:58'),
(3, 'role.edit', 'role', '2023-05-09 22:11:44', '2023-05-09 22:17:58'),
(4, 'role.delete', 'role', '2023-05-09 22:11:44', '2023-05-09 22:17:58'),
(5, 'user.view', 'user', '2023-05-09 22:12:49', '2023-05-09 22:18:12'),
(6, 'user.create', 'user', '2023-05-09 22:12:49', '2023-05-09 22:18:12'),
(7, 'user.edit', 'user', '2023-05-09 22:12:49', '2023-05-09 22:18:12'),
(8, 'user.delete', 'user', '2023-05-09 22:12:49', '2023-05-09 22:18:12'),
(9, 'dashboard.view', 'dashboard', '2023-05-09 22:13:06', '2023-05-09 22:18:25'),
(10, 'dashboard.create', 'dashboard', '2023-05-09 22:13:06', '2023-05-09 22:18:25'),
(11, 'dashboard.edit', 'dashboard', '2023-05-09 22:13:06', '2023-05-09 22:18:25'),
(12, 'dashboard.delete', 'dashboard', '2023-05-09 22:13:06', '2023-05-09 22:18:25'),
(13, 'category.view', 'category', '2023-05-09 22:13:23', '2023-05-09 22:18:35'),
(14, 'category.create', 'category', '2023-05-09 22:13:23', '2023-05-09 22:18:35'),
(15, 'category.edit', 'category', '2023-05-09 22:13:23', '2023-05-09 22:18:35'),
(16, 'category.delete', 'category', '2023-05-09 22:13:23', '2023-05-09 22:18:35'),
(17, 'course.view', 'course', '2023-05-09 22:13:32', '2023-05-09 22:18:44'),
(18, 'course.create', 'course', '2023-05-09 22:13:32', '2023-05-09 22:18:44'),
(19, 'course.edit', 'course', '2023-05-09 22:13:32', '2023-05-09 22:18:44'),
(20, 'course.delete', 'course', '2023-05-09 22:13:32', '2023-05-09 22:18:44'),
(23, 'right.view', 'right', '2023-05-16 06:21:07', '2023-05-16 06:21:07'),
(24, 'right.create', 'right', '2023-05-16 06:21:20', '2023-05-16 06:21:20'),
(25, 'right.edit', 'right', '2023-05-16 06:21:28', '2023-05-16 06:21:28'),
(26, 'right.delete', 'right', '2023-05-16 06:21:36', '2023-05-16 06:21:36'),
(27, 'partner.view', 'partner', '2023-05-17 04:27:42', '2023-05-17 04:27:42'),
(28, 'partner.create', 'partner', '2023-05-17 04:27:53', '2023-05-17 04:27:53'),
(29, 'partner.edit', 'partner', '2023-05-17 04:28:00', '2023-05-17 04:28:00'),
(30, 'partner.delete', 'partner', '2023-05-17 04:28:11', '2023-05-17 04:28:11'),
(31, 'partnerproduct.view', 'partnerproduct', '2023-05-21 01:34:57', '2023-05-21 01:34:57'),
(32, 'partnerproduct.create', 'partnerproduct', '2023-05-21 01:35:15', '2023-05-21 01:35:15'),
(33, 'partnerproduct.edit', 'partnerproduct', '2023-05-21 01:35:24', '2023-05-21 01:35:24'),
(34, 'partnerproduct.delete', 'partnerproduct', '2023-05-21 01:35:35', '2023-05-21 01:35:35'),
(35, 'setting.view', 'setting', '2023-05-21 23:31:21', '2023-05-21 23:31:21'),
(37, 'setting.edit', 'setting', '2023-05-21 23:32:15', '2023-05-21 23:32:15'),
(38, 'setting.general', 'setting', '2023-05-21 23:32:50', '2023-05-21 23:32:50'),
(39, 'setting.static-content', 'setting', '2023-05-21 23:51:51', '2023-05-21 23:51:51'),
(40, 'part.view', 'part', '2023-05-22 05:44:55', '2023-05-22 05:44:55'),
(41, 'part.create', 'part', '2023-05-22 05:45:01', '2023-05-22 05:45:01'),
(42, 'part.edit', 'part', '2023-05-22 05:45:08', '2023-05-22 05:45:08'),
(43, 'part.delete', 'part', '2023-05-22 05:45:15', '2023-05-22 05:45:15'),
(44, 'service.view', 'service', '2023-05-23 06:34:38', '2023-05-23 06:34:38'),
(45, 'service.create', 'service', '2023-05-23 06:34:45', '2023-05-23 06:34:45'),
(46, 'service.edit', 'service', '2023-05-23 06:34:53', '2023-05-23 06:34:53'),
(47, 'service.delete', 'service', '2023-05-23 06:35:00', '2023-05-23 06:35:00'),
(48, 'enroll.view', 'enroll', '2023-05-24 01:57:26', '2023-05-24 01:57:26'),
(49, 'enroll.edit', 'enroll', '2023-05-24 01:57:32', '2023-05-24 01:57:32'),
(50, 'enroll.create', 'enroll', '2023-05-24 01:57:38', '2023-05-24 01:57:38'),
(51, 'enroll.delete', 'enroll', '2023-05-24 01:57:45', '2023-05-24 01:57:45'),
(52, 'inquiry.view', 'inquiry', '2023-05-25 05:16:52', '2023-05-25 05:16:52'),
(53, 'inquiry.edit', 'inquiry', '2023-05-25 05:16:59', '2023-05-25 05:16:59'),
(54, 'inquiry.create', 'inquiry', '2023-05-25 05:17:05', '2023-05-25 05:17:05'),
(55, 'inquiry.delete', 'inquiry', '2023-05-25 05:17:11', '2023-05-25 05:17:11'),
(56, 'service-order.view', 'service-order', '2023-05-28 23:25:54', '2023-05-28 23:25:54'),
(57, 'service-order.edit', 'service-order', '2023-05-28 23:26:05', '2023-05-28 23:26:05'),
(58, 'service-order.create', 'service-order', '2023-05-28 23:26:12', '2023-05-28 23:26:12'),
(59, 'service-order.delete', 'service-order', '2023-05-28 23:26:21', '2023-05-28 23:26:21'),
(60, 'news.view', 'news', '2023-06-06 22:56:51', '2023-06-06 22:56:51'),
(61, 'news.edit', 'news', '2023-06-06 22:56:58', '2023-06-06 22:56:58'),
(62, 'news.create', 'news', '2023-06-06 22:57:05', '2023-06-06 22:57:05'),
(63, 'news.delete', 'news', '2023-06-06 22:57:14', '2023-06-06 22:57:14'),
(64, 'catalogue.view', 'catalogue', '2023-06-07 22:23:17', '2023-06-07 22:23:17'),
(65, 'catalogue.edit', 'catalogue', '2023-06-07 22:23:23', '2023-06-07 22:23:23'),
(66, 'catalogue.create', 'catalogue', '2023-06-07 22:23:32', '2023-06-07 22:23:32'),
(67, 'catalogue.delete', 'catalogue', '2023-06-07 22:23:39', '2023-06-07 22:23:39'),
(68, 'resource.view', 'resource', '2023-06-12 04:35:12', '2023-06-12 04:35:12'),
(69, 'resource.edit', 'resource', '2023-06-12 04:35:19', '2023-06-12 04:35:19'),
(70, 'resource.create', 'resource', '2023-06-12 04:35:26', '2023-06-12 04:35:26'),
(71, 'resource.delete', 'resource', '2023-06-12 04:35:33', '2023-06-12 04:35:33'),
(72, 'contact.view', 'contact', '2023-06-12 22:40:11', '2023-06-12 22:40:11'),
(73, 'contact.edit', 'contact', '2023-06-12 22:40:18', '2023-06-12 22:40:18'),
(74, 'contact.create', 'contact', '2023-06-12 22:40:25', '2023-06-12 22:40:25'),
(75, 'contact.delete', 'contact', '2023-06-12 22:40:44', '2023-06-12 22:40:44'),
(76, 'setting.legal-content', 'setting', '2023-07-03 01:10:19', '2023-07-03 01:10:19'),
(78, 'service-order.status', 'service-order', '2023-07-14 02:13:16', '2023-07-14 02:13:16'),
(79, 'transaction.view', 'transaction', '2023-08-11 07:31:49', '2023-08-11 07:31:49'),
(80, 'transaction.create', 'transaction', '2023-08-11 07:31:55', '2023-08-11 07:32:43'),
(81, 'transaction.edit', 'transaction', '2023-08-11 07:32:12', '2023-08-11 07:32:33'),
(82, 'transaction.delete', 'transaction', '2023-08-11 07:32:22', '2023-08-11 07:32:22'),
(83, 'custom-field.view', 'custom-field', '2023-08-22 01:20:47', '2023-08-22 01:20:47'),
(84, 'custom-field.create', 'custom-field', '2023-08-22 01:20:58', '2023-08-22 01:20:58'),
(85, 'custom-field.edit', 'custom-field', '2023-08-22 01:21:07', '2023-08-22 01:21:07'),
(86, 'custom-field.delete', 'custom-field', '2023-08-22 01:21:15', '2023-08-22 01:21:15'),
(87, 'course.custom-option', 'course', '2023-08-25 04:30:44', '2023-08-25 04:30:44'),
(88, 'part.custom-option', 'part', '2023-09-21 05:34:42', '2023-09-21 05:34:42'),
(89, 'brand.create', 'brand', '2023-10-25 12:06:39', '2023-10-25 12:06:39'),
(90, 'brand.edit', 'brand', '2023-10-25 12:06:49', '2023-10-25 12:06:49'),
(91, 'brand.view', 'brand', '2023-10-25 12:06:58', '2023-10-25 12:06:58'),
(92, 'brand.delete', 'brand', '2023-10-25 12:07:06', '2023-10-25 12:07:06'),
(93, 'activity.create', 'activity', '2023-10-25 12:06:39', '2023-10-25 12:06:39'),
(94, 'activity.edit', 'activity', '2023-10-25 12:06:49', '2023-10-25 12:06:49'),
(95, 'activity.view', 'activity', '2023-10-25 12:06:58', '2023-10-25 12:06:58'),
(96, 'activity.delete', 'activity', '2023-10-25 12:07:06', '2023-10-25 12:07:06'),
(97, 'question.create', 'question', '2024-10-30 23:10:24', '2024-10-30 23:10:24'),
(98, 'question.edit', 'question', '2024-10-30 23:10:32', '2024-10-30 23:10:32'),
(99, 'question.view', 'question', '2024-10-30 23:10:47', '2024-10-30 23:10:47'),
(100, 'question.delete', 'question', '2024-10-30 23:10:55', '2024-10-30 23:10:55'),
(101, 'exam.create', 'exam', '2024-10-31 04:56:03', '2024-10-31 04:56:03'),
(102, 'exam.delete', 'exam', '2024-10-31 04:56:10', '2024-10-31 04:56:10'),
(103, 'exam.edit', 'exam', '2024-10-31 04:56:17', '2024-10-31 04:56:17'),
(104, 'exam.view', 'exam', '2024-10-31 04:56:24', '2024-10-31 04:56:24'),
(105, 'segmentation.view', 'segmentation', '2024-11-27 22:39:01', '2024-11-27 22:39:01'),
(106, 'segmentation.create', 'segmentation', '2024-11-27 22:39:12', '2024-11-27 22:39:12'),
(107, 'segmentation.edit', 'segmentation', '2024-11-27 22:39:18', '2024-11-27 22:39:18'),
(108, 'segmentation.delete', 'segmentation', '2024-11-27 22:39:24', '2024-11-27 22:39:24'),
(109, 'result.view', 'result', '2024-12-02 08:24:51', '2024-12-02 08:24:51'),
(110, 'result.create', 'result', '2024-12-02 08:25:03', '2024-12-02 08:25:03'),
(111, 'result.edit', 'result', '2024-12-02 08:25:10', '2024-12-02 08:25:10'),
(112, 'result.delete', 'result', '2024-12-02 08:25:22', '2024-12-02 08:25:22'),
(113, 'event.view', 'event', '2025-01-17 06:56:15', '2025-01-17 06:56:15'),
(114, 'alumni.view', 'alumni', '2025-01-17 06:56:23', '2025-01-17 06:56:23'),
(115, 'gallery.view', 'gallery', '2025-01-20 04:57:12', '2025-01-20 04:57:12'),
(116, 'student.view', 'student', '2025-02-03 10:49:21', '2025-02-03 10:49:42'),
(117, 'teacher.view', 'teacher', '2025-02-06 05:30:45', '2025-02-06 05:30:45'),
(118, 'class.view', 'class', '2025-02-06 09:40:16', '2025-02-06 09:40:16'),
(119, 'setting.journey-content', 'setting', '2025-02-09 07:29:22', '2025-02-09 07:30:38'),
(120, 'studentvideo.view', 'studentvideo', '2025-02-09 10:35:59', '2025-02-09 10:35:59'),
(121, 'leadinggovernor.view', 'leadinggovernor', '2025-02-09 12:08:20', '2025-02-09 12:08:20'),
(122, 'campusgallery.view', 'campusgallery', '2025-02-10 06:45:35', '2025-02-10 06:45:35'),
(123, 'book.view', 'book', '2025-06-26 14:16:45', '2025-06-26 14:16:45'),
(124, 'theme.view', 'theme', '2025-07-01 09:10:32', '2025-07-01 09:10:32'),
(125, 'theme.create', 'theme', '2025-07-01 09:11:01', '2025-07-01 09:11:01'),
(126, 'theme.edit', 'theme', '2025-07-01 09:11:10', '2025-07-01 09:11:10'),
(127, 'theme.delete', 'theme', '2025-07-01 09:11:26', '2025-07-01 09:11:26'),
(128, 'announcement.view', 'announcement', '2025-07-02 05:52:10', '2025-07-02 05:52:10'),
(129, 'announcement.create', 'announcement', '2025-07-02 05:52:22', '2025-07-02 05:52:22'),
(130, 'announcement.edit', 'announcement', '2025-07-02 05:52:30', '2025-07-02 05:52:30'),
(131, 'announcement.delete', 'announcement', '2025-07-02 05:52:39', '2025-07-02 05:52:39'),
(132, 'list-of-verses.view', 'list-of-verses', '2025-07-08 05:54:43', '2025-07-08 05:56:09'),
(133, 'list-of-verses.create', 'list-of-verses', '2025-07-08 05:54:54', '2025-07-08 05:56:25'),
(134, 'list-of-verses.edit', 'list-of-verses', '2025-07-08 05:56:34', '2025-07-08 05:56:34'),
(135, 'list-of-verses.delete', 'list-of-verses', '2025-07-08 05:56:44', '2025-07-08 05:56:44'),
(136, 'bookmark.view', 'bookmark', '2025-07-09 09:17:17', '2025-07-09 09:17:17'),
(137, 'bookmark.create', 'bookmark', '2025-07-09 09:17:24', '2025-07-09 09:17:24'),
(138, 'bookmark.edit', 'bookmark', '2025-07-09 09:17:33', '2025-07-09 09:17:33'),
(139, 'bookmark.delete', 'bookmark', '2025-07-09 09:17:42', '2025-07-09 09:17:42'),
(140, 'note.view', 'note', '2025-07-10 10:22:06', '2025-07-10 10:22:06'),
(141, 'note.create', 'note', '2025-07-10 10:22:13', '2025-07-10 10:22:13'),
(142, 'note.edit', 'note', '2025-07-10 10:22:21', '2025-07-10 10:22:21'),
(143, 'note.delete', 'note', '2025-07-10 10:22:28', '2025-07-10 10:22:28'),
(144, 'class.create', 'class', '2025-07-14 11:28:05', '2025-07-14 11:28:05'),
(145, 'class.edit', 'class', '2025-07-14 11:28:13', '2025-07-14 11:28:13'),
(146, 'class.delete', 'class', '2025-07-14 11:28:19', '2025-07-14 11:28:19'),
(147, 'tag.view', 'tag', '2025-07-16 09:51:14', '2025-07-16 09:51:14'),
(148, 'tag.delete', 'tag', '2025-07-16 09:51:30', '2025-07-16 09:51:30'),
(149, 'tag.edit', 'tag', '2025-07-16 10:35:43', '2025-07-16 10:35:43'),
(150, 'tag.create', 'tag', '2025-07-20 05:55:55', '2025-07-20 05:55:55'),
(151, 'report.view', 'report', '2025-08-01 09:38:24', '2025-08-01 09:38:24'),
(152, 'report.create', 'report', '2025-08-01 09:38:34', '2025-08-01 09:38:34'),
(153, 'report.edit', 'report', '2025-08-01 09:38:45', '2025-08-01 09:38:45'),
(154, 'report.delete', 'report', '2025-08-01 09:38:52', '2025-08-01 09:38:52'),
(0, 'slider.create', 'slider', '2025-11-13 14:58:17', '2025-11-13 14:58:17'),
(0, 'slider.view', 'slider', '2025-11-13 14:58:31', '2025-11-13 14:58:31'),
(0, 'slider.edit', 'slider', '2025-11-13 14:58:39', '2025-11-13 14:58:39'),
(0, 'slider.delete', 'slider', '2025-11-13 14:58:47', '2025-11-13 14:58:47');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '2023-05-07 11:16:21', '2023-05-07 11:16:21'),
(2, 'Staff', '2025-06-26 14:18:54', '2025-06-26 14:18:54'),
(3, 'Stylist', '2025-08-27 05:18:34', '2025-08-27 05:18:34'),
(4, 'Saloon', '2025-08-27 05:20:17', '2025-08-27 05:20:17'),
(12, 'Customer', '2025-06-26 15:16:26', '2025-06-26 15:16:26');

-- --------------------------------------------------------

--
-- Table structure for table `role_right`
--

CREATE TABLE `role_right` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `right_id` int(11) NOT NULL,
  `permission` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `role_right`
--

INSERT INTO `role_right` (`id`, `role_id`, `right_id`, `permission`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2023-05-09 23:55:04', '2023-05-16 04:15:06'),
(2, 1, 2, 1, '2023-05-09 23:55:04', '2023-05-16 04:15:06'),
(3, 1, 3, 1, '2023-05-09 23:55:04', '2023-05-16 04:15:06'),
(4, 1, 4, 1, '2023-05-09 23:55:04', '2023-05-16 04:15:06'),
(5, 1, 5, 1, '2023-05-09 23:55:04', '2025-11-12 17:12:49'),
(6, 1, 6, 1, '2023-05-09 23:55:04', '2025-11-12 17:12:49'),
(7, 1, 7, 1, '2023-05-09 23:55:04', '2025-11-12 17:12:49'),
(8, 1, 8, 1, '2023-05-09 23:55:04', '2025-11-12 17:12:49'),
(9, 1, 9, 1, '2023-05-09 23:55:04', '2025-07-11 13:43:32'),
(10, 1, 10, 1, '2023-05-09 23:55:04', '2025-07-11 13:43:32'),
(11, 1, 11, 1, '2023-05-09 23:55:04', '2025-07-11 13:43:32'),
(12, 1, 12, 1, '2023-05-09 23:55:04', '2025-07-11 13:43:32'),
(13, 1, 13, 1, '2023-05-09 23:55:04', '2023-05-16 04:15:06'),
(14, 1, 14, 1, '2023-05-09 23:55:04', '2023-05-16 04:15:06'),
(15, 1, 15, 1, '2023-05-09 23:55:04', '2023-05-16 04:15:06'),
(16, 1, 16, 1, '2023-05-09 23:55:04', '2023-05-16 04:15:06'),
(17, 1, 17, 1, '2023-05-09 23:55:04', '2023-05-16 04:15:06'),
(18, 1, 18, 1, '2023-05-09 23:55:04', '2023-05-16 04:15:06'),
(19, 1, 19, 1, '2023-05-09 23:55:04', '2023-05-16 04:15:06'),
(20, 1, 20, 1, '2023-05-09 23:55:04', '2023-05-16 04:15:06'),
(81, 1, 23, 1, '2023-05-16 22:28:46', '2023-05-16 22:28:46'),
(82, 1, 24, 1, '2023-05-16 22:28:46', '2023-05-16 22:28:46'),
(83, 1, 25, 1, '2023-05-16 22:28:46', '2023-05-16 22:28:46'),
(84, 1, 26, 1, '2023-05-16 22:28:46', '2023-05-16 22:28:46'),
(85, 1, 27, 1, '2023-05-17 04:28:22', '2023-05-17 04:28:22'),
(86, 1, 28, 1, '2023-05-17 04:28:22', '2023-05-17 04:28:22'),
(87, 1, 29, 1, '2023-05-17 04:28:22', '2023-05-17 04:28:22'),
(88, 1, 30, 1, '2023-05-17 04:28:22', '2023-05-17 04:28:22'),
(89, 1, 31, 1, '2023-05-21 01:36:08', '2025-01-16 07:13:04'),
(90, 1, 32, 1, '2023-05-21 01:36:08', '2025-01-16 07:13:04'),
(91, 1, 33, 1, '2023-05-21 01:36:08', '2025-01-16 07:13:04'),
(92, 1, 34, 1, '2023-05-21 01:36:08', '2025-01-16 07:13:04'),
(93, 1, 35, 1, '2023-05-21 23:33:20', '2025-07-24 12:10:14'),
(94, 1, 37, 1, '2023-05-21 23:33:20', '2025-07-24 12:14:42'),
(95, 1, 38, 1, '2023-05-21 23:33:20', '2025-08-25 07:24:56'),
(96, 1, 39, 0, '2023-05-21 23:55:53', '2025-08-27 07:16:17'),
(97, 1, 40, 1, '2023-05-22 05:46:42', '2025-01-16 07:13:04'),
(98, 1, 41, 1, '2023-05-22 05:46:42', '2025-01-16 07:13:04'),
(99, 1, 42, 1, '2023-05-22 05:46:42', '2025-01-16 07:13:04'),
(100, 1, 43, 1, '2023-05-22 05:46:42', '2025-01-16 07:13:04'),
(101, 1, 44, 1, '2023-05-23 06:35:38', '2025-01-16 07:13:04'),
(102, 1, 45, 1, '2023-05-23 06:35:38', '2025-01-16 07:13:04'),
(103, 1, 46, 1, '2023-05-23 06:35:38', '2025-01-16 07:13:04'),
(104, 1, 47, 1, '2023-05-23 06:35:38', '2025-01-16 07:13:04'),
(105, 1, 48, 1, '2023-05-24 03:09:45', '2024-10-26 23:37:54'),
(106, 1, 49, 1, '2023-05-24 03:09:45', '2024-10-26 23:37:54'),
(107, 1, 50, 1, '2023-05-24 03:09:45', '2024-10-26 23:37:54'),
(108, 1, 51, 1, '2023-05-24 03:09:45', '2024-10-26 23:37:54'),
(109, 1, 52, 1, '2023-05-25 05:17:22', '2025-01-16 07:13:04'),
(110, 1, 53, 1, '2023-05-25 05:17:22', '2025-01-16 07:13:04'),
(111, 1, 54, 1, '2023-05-25 05:17:22', '2025-01-16 07:13:04'),
(112, 1, 55, 1, '2023-05-25 05:17:22', '2025-01-16 07:13:04'),
(113, 1, 56, 1, '2023-05-28 23:26:35', '2025-01-16 07:13:04'),
(114, 1, 57, 1, '2023-05-28 23:26:35', '2025-01-16 07:13:04'),
(115, 1, 58, 1, '2023-05-28 23:26:35', '2025-01-16 07:13:04'),
(116, 1, 59, 1, '2023-05-28 23:26:35', '2025-01-16 07:13:04'),
(117, 1, 60, 1, '2023-06-06 22:58:55', '2025-07-19 04:27:41'),
(118, 1, 61, 1, '2023-06-06 22:58:55', '2025-07-19 04:27:41'),
(119, 1, 62, 1, '2023-06-06 22:58:55', '2025-07-19 04:27:41'),
(120, 1, 63, 1, '2023-06-06 22:58:55', '2025-07-19 04:27:41'),
(121, 1, 64, 1, '2023-06-07 22:23:52', '2025-01-16 07:13:04'),
(122, 1, 65, 1, '2023-06-07 22:23:52', '2025-01-16 07:13:04'),
(123, 1, 66, 1, '2023-06-07 22:23:52', '2025-01-16 07:13:04'),
(124, 1, 67, 1, '2023-06-07 22:23:52', '2025-01-16 07:13:04'),
(125, 1, 68, 1, '2023-06-12 04:35:48', '2025-01-16 07:13:04'),
(126, 1, 69, 1, '2023-06-12 04:35:48', '2025-01-16 07:13:04'),
(127, 1, 70, 1, '2023-06-12 04:35:48', '2025-01-16 07:13:04'),
(128, 1, 71, 1, '2023-06-12 04:35:48', '2025-01-16 07:13:04'),
(129, 1, 72, 1, '2023-06-12 22:41:07', '2025-01-16 07:13:04'),
(130, 1, 73, 1, '2023-06-12 22:41:07', '2025-01-16 07:13:04'),
(131, 1, 74, 1, '2023-06-12 22:41:07', '2025-01-16 07:13:04'),
(132, 1, 75, 1, '2023-06-12 22:41:07', '2025-01-16 07:13:04'),
(133, 1, 76, 0, '2023-07-03 01:10:38', '2025-08-27 07:16:17'),
(134, 1, 77, 1, '2023-07-07 05:02:26', '2023-07-09 23:25:44'),
(314, 1, 78, 1, '2023-07-14 02:13:57', '2025-01-16 07:13:04'),
(316, 1, 79, 1, '2023-08-11 07:32:54', '2025-01-16 07:13:04'),
(317, 1, 80, 1, '2023-08-11 07:32:54', '2025-01-16 07:13:04'),
(318, 1, 81, 1, '2023-08-11 07:32:54', '2025-01-16 07:13:04'),
(319, 1, 82, 1, '2023-08-11 07:32:54', '2025-01-16 07:13:04'),
(320, 1, 83, 1, '2023-08-22 01:32:09', '2023-08-22 01:32:09'),
(321, 1, 84, 1, '2023-08-22 01:32:09', '2023-08-22 01:32:09'),
(322, 1, 85, 1, '2023-08-22 01:32:09', '2023-08-22 01:32:09'),
(323, 1, 86, 1, '2023-08-22 01:32:09', '2023-08-22 01:32:09'),
(324, 1, 87, 1, '2023-08-25 04:30:58', '2023-08-25 04:30:58'),
(325, 1, 88, 1, '2023-09-21 05:35:01', '2025-01-16 07:13:04'),
(326, 1, 89, 1, '2023-10-25 12:07:33', '2025-01-16 07:13:04'),
(327, 1, 90, 1, '2023-10-25 12:07:33', '2025-01-16 07:13:04'),
(328, 1, 91, 1, '2023-10-25 12:07:33', '2025-01-16 07:13:04'),
(329, 1, 92, 1, '2023-10-25 12:07:33', '2025-01-16 07:13:04'),
(506, 1, 93, 1, '2024-10-27 04:04:18', '2024-10-27 04:04:18'),
(507, 1, 94, 1, '2024-10-27 04:04:18', '2024-10-27 04:04:18'),
(508, 1, 95, 1, '2024-10-27 04:04:18', '2024-10-27 04:04:18'),
(509, 1, 96, 1, '2024-10-27 04:04:18', '2024-10-27 04:04:18'),
(510, 1, 97, 1, '2024-10-30 23:11:15', '2024-10-30 23:11:15'),
(511, 1, 98, 1, '2024-10-30 23:11:15', '2024-10-30 23:11:15'),
(512, 1, 99, 1, '2024-10-30 23:11:15', '2024-10-30 23:11:15'),
(513, 1, 100, 1, '2024-10-30 23:11:15', '2024-10-30 23:11:15'),
(514, 1, 101, 1, '2024-10-31 04:57:25', '2024-10-31 04:57:25'),
(515, 1, 102, 1, '2024-10-31 04:57:25', '2024-10-31 04:57:25'),
(516, 1, 103, 1, '2024-10-31 04:57:25', '2024-10-31 04:57:25'),
(517, 1, 104, 1, '2024-10-31 04:57:25', '2024-10-31 04:57:25'),
(518, 1, 105, 1, '2024-11-27 22:39:55', '2024-11-27 22:39:55'),
(519, 1, 106, 1, '2024-11-27 22:39:55', '2024-11-27 22:39:55'),
(520, 1, 107, 1, '2024-11-27 22:39:55', '2024-11-27 22:39:55'),
(521, 1, 108, 1, '2024-11-27 22:39:55', '2024-11-27 22:39:55'),
(522, 1, 109, 1, '2024-12-02 08:25:45', '2024-12-02 08:25:45'),
(523, 1, 110, 1, '2024-12-02 08:25:45', '2024-12-02 08:25:45'),
(524, 1, 111, 1, '2024-12-02 08:25:45', '2024-12-02 08:25:45'),
(525, 1, 112, 1, '2024-12-02 08:25:45', '2024-12-02 08:25:45'),
(526, 1, 113, 1, '2025-01-17 06:56:35', '2025-01-17 06:56:35'),
(527, 1, 114, 1, '2025-01-17 06:56:35', '2025-01-17 06:56:35'),
(528, 1, 115, 1, '2025-01-20 04:57:31', '2025-01-20 04:57:31'),
(751, 1, 116, 1, '2025-02-03 11:01:14', '2025-02-03 11:01:14'),
(752, 1, 117, 1, '2025-02-06 05:31:07', '2025-02-06 05:31:07'),
(753, 1, 118, 1, '2025-02-06 09:40:48', '2025-07-19 04:27:41'),
(754, 1, 119, 0, '2025-02-09 07:31:00', '2025-08-27 07:16:18'),
(870, 1, 120, 1, '2025-02-09 10:36:21', '2025-02-09 10:36:29'),
(871, 1, 121, 1, '2025-02-09 12:17:20', '2025-02-09 12:17:20'),
(872, 1, 122, 1, '2025-02-10 06:45:48', '2025-02-10 06:45:48'),
(873, 11, 1, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:40'),
(874, 11, 2, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:40'),
(875, 11, 3, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:40'),
(876, 11, 4, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:40'),
(877, 11, 5, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:40'),
(878, 11, 6, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:40'),
(879, 11, 7, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:40'),
(880, 11, 8, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:40'),
(881, 11, 9, 1, '2025-06-26 14:18:54', '2025-06-26 14:18:54'),
(882, 11, 10, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:40'),
(883, 11, 11, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:40'),
(884, 11, 12, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:40'),
(885, 11, 13, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:40'),
(886, 11, 14, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:40'),
(887, 11, 15, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:40'),
(888, 11, 16, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:40'),
(889, 11, 17, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:40'),
(890, 11, 18, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:40'),
(891, 11, 19, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:40'),
(892, 11, 20, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:40'),
(893, 11, 23, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:40'),
(894, 11, 24, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:40'),
(895, 11, 25, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:40'),
(896, 11, 26, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:40'),
(897, 11, 27, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:40'),
(898, 11, 28, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:40'),
(899, 11, 29, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:40'),
(900, 11, 30, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:40'),
(901, 11, 31, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:40'),
(902, 11, 32, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:40'),
(903, 11, 33, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:40'),
(904, 11, 34, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:40'),
(905, 11, 35, 1, '2025-06-26 14:18:54', '2025-07-01 12:10:04'),
(906, 11, 37, 0, '2025-06-26 14:18:54', '2025-07-01 12:10:04'),
(907, 11, 38, 0, '2025-06-26 14:18:54', '2025-07-01 12:10:04'),
(908, 11, 39, 0, '2025-06-26 14:18:54', '2025-07-01 12:10:04'),
(909, 11, 40, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:41'),
(910, 11, 41, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:41'),
(911, 11, 42, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:41'),
(912, 11, 43, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:41'),
(913, 11, 44, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:41'),
(914, 11, 45, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:41'),
(915, 11, 46, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:41'),
(916, 11, 47, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:41'),
(917, 11, 48, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:41'),
(918, 11, 49, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:41'),
(919, 11, 50, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:41'),
(920, 11, 51, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:41'),
(921, 11, 52, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:41'),
(922, 11, 53, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:41'),
(923, 11, 54, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:41'),
(924, 11, 55, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:41'),
(925, 11, 56, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:41'),
(926, 11, 57, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:41'),
(927, 11, 58, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:41'),
(928, 11, 59, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:41'),
(929, 11, 60, 0, '2025-06-26 14:18:54', '2025-07-11 13:54:59'),
(930, 11, 61, 0, '2025-06-26 14:18:54', '2025-07-11 13:54:59'),
(931, 11, 62, 0, '2025-06-26 14:18:54', '2025-07-11 13:54:59'),
(932, 11, 63, 0, '2025-06-26 14:18:54', '2025-07-11 13:54:59'),
(933, 11, 64, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:41'),
(934, 11, 65, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:41'),
(935, 11, 66, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:41'),
(936, 11, 67, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:41'),
(937, 11, 68, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:41'),
(938, 11, 69, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:41'),
(939, 11, 70, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:41'),
(940, 11, 71, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:41'),
(941, 11, 72, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:41'),
(942, 11, 73, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:41'),
(943, 11, 74, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:41'),
(944, 11, 75, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:41'),
(945, 11, 76, 0, '2025-06-26 14:18:54', '2025-07-01 12:10:05'),
(946, 11, 78, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:41'),
(947, 11, 79, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:41'),
(948, 11, 80, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:41'),
(949, 11, 81, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:41'),
(950, 11, 82, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:41'),
(951, 11, 83, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:41'),
(952, 11, 84, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:41'),
(953, 11, 85, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:41'),
(954, 11, 86, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:41'),
(955, 11, 87, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:41'),
(956, 11, 88, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:41'),
(957, 11, 89, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:41'),
(958, 11, 90, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:41'),
(959, 11, 91, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:41'),
(960, 11, 92, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:41'),
(961, 11, 93, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:41'),
(962, 11, 94, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:41'),
(963, 11, 95, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:41'),
(964, 11, 96, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:41'),
(965, 11, 97, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:41'),
(966, 11, 98, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:41'),
(967, 11, 99, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:41'),
(968, 11, 100, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:41'),
(969, 11, 101, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:41'),
(970, 11, 102, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:41'),
(971, 11, 103, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:41'),
(972, 11, 104, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:41'),
(973, 11, 105, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:41'),
(974, 11, 106, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:41'),
(975, 11, 107, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:41'),
(976, 11, 108, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:41'),
(977, 11, 109, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:41'),
(978, 11, 110, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:41'),
(979, 11, 111, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:41'),
(980, 11, 112, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:41'),
(981, 11, 113, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:41'),
(982, 11, 114, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:41'),
(983, 11, 115, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:41'),
(984, 11, 116, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:41'),
(985, 11, 117, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:41'),
(986, 11, 118, 1, '2025-06-26 14:18:54', '2025-07-15 04:12:30'),
(987, 11, 119, 0, '2025-06-26 14:18:54', '2025-07-01 12:10:05'),
(988, 11, 120, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:41'),
(989, 11, 121, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:41'),
(990, 11, 122, 1, '2025-06-26 14:18:54', '2025-06-26 14:21:41'),
(991, 11, 123, 1, '2025-06-26 14:18:54', '2025-06-26 14:18:54'),
(992, 1, 123, 1, '2025-06-26 15:13:58', '2025-07-19 04:27:41'),
(993, 11, 124, 1, '2025-07-01 09:12:12', '2025-07-01 12:11:32'),
(994, 11, 125, 1, '2025-07-01 09:12:12', '2025-07-01 12:11:32'),
(995, 11, 126, 1, '2025-07-01 09:12:12', '2025-07-01 12:11:32'),
(996, 11, 127, 1, '2025-07-01 09:12:13', '2025-07-01 12:11:32'),
(997, 1, 124, 1, '2025-07-01 09:12:55', '2025-07-19 04:27:41'),
(998, 1, 125, 1, '2025-07-01 09:12:55', '2025-07-19 04:27:41'),
(999, 1, 126, 1, '2025-07-01 09:12:55', '2025-07-19 04:27:42'),
(1000, 1, 127, 1, '2025-07-01 09:12:55', '2025-07-19 04:27:42'),
(1001, 1, 128, 1, '2025-07-02 06:05:25', '2025-07-19 04:27:42'),
(1002, 1, 129, 1, '2025-07-02 06:05:25', '2025-07-19 04:27:42'),
(1003, 1, 130, 1, '2025-07-02 06:05:25', '2025-07-19 04:27:42'),
(1004, 1, 131, 1, '2025-07-02 06:05:25', '2025-07-19 04:27:42'),
(1005, 11, 128, 1, '2025-07-08 05:57:17', '2025-07-11 13:54:59'),
(1006, 11, 129, 1, '2025-07-08 05:57:17', '2025-07-11 13:54:59'),
(1007, 11, 130, 1, '2025-07-08 05:57:17', '2025-07-11 13:54:59'),
(1008, 11, 131, 1, '2025-07-08 05:57:17', '2025-07-11 13:54:59'),
(1009, 11, 132, 1, '2025-07-08 05:57:17', '2025-07-08 05:57:17'),
(1010, 11, 133, 1, '2025-07-08 05:57:17', '2025-07-08 05:57:17'),
(1011, 11, 134, 1, '2025-07-08 05:57:17', '2025-07-08 05:57:17'),
(1012, 11, 135, 1, '2025-07-08 05:57:17', '2025-07-08 05:57:17'),
(1013, 1, 132, 1, '2025-07-08 05:58:04', '2025-07-08 05:58:04'),
(1014, 1, 133, 1, '2025-07-08 05:58:04', '2025-07-08 05:58:04'),
(1015, 1, 134, 1, '2025-07-08 05:58:04', '2025-07-08 05:58:04'),
(1016, 1, 135, 1, '2025-07-08 05:58:04', '2025-07-08 05:58:04'),
(1017, 1, 136, 1, '2025-07-09 09:20:57', '2025-07-19 04:27:42'),
(1018, 1, 137, 1, '2025-07-09 09:20:57', '2025-07-19 04:27:42'),
(1019, 1, 138, 1, '2025-07-09 09:20:57', '2025-07-19 04:27:42'),
(1020, 1, 139, 1, '2025-07-09 09:20:57', '2025-07-19 04:27:42'),
(1021, 1, 140, 1, '2025-07-10 10:22:55', '2025-07-11 13:26:03'),
(1022, 1, 141, 1, '2025-07-10 10:22:55', '2025-07-11 13:26:03'),
(1023, 1, 142, 1, '2025-07-10 10:22:55', '2025-07-11 13:26:03'),
(1024, 1, 143, 1, '2025-07-10 10:22:55', '2025-07-11 13:26:03'),
(1025, 11, 136, 1, '2025-07-10 10:23:10', '2025-07-30 08:49:12'),
(1026, 11, 137, 1, '2025-07-10 10:23:10', '2025-07-30 08:49:12'),
(1027, 11, 138, 1, '2025-07-10 10:23:10', '2025-07-30 08:49:12'),
(1028, 11, 139, 1, '2025-07-10 10:23:10', '2025-07-30 08:49:12'),
(1029, 11, 140, 1, '2025-07-10 10:23:10', '2025-07-25 08:37:01'),
(1030, 11, 141, 1, '2025-07-10 10:23:10', '2025-07-25 08:37:01'),
(1031, 11, 142, 1, '2025-07-10 10:23:10', '2025-07-25 08:37:01'),
(1032, 11, 143, 1, '2025-07-10 10:23:10', '2025-07-25 08:37:01'),
(1033, 11, 144, 1, '2025-07-14 11:28:51', '2025-07-14 11:28:51'),
(1034, 11, 145, 1, '2025-07-14 11:28:51', '2025-07-14 11:28:51'),
(1035, 11, 146, 1, '2025-07-14 11:28:51', '2025-07-14 11:28:51'),
(1036, 1, 144, 1, '2025-07-14 11:29:04', '2025-07-19 04:27:42'),
(1037, 1, 145, 1, '2025-07-14 11:29:04', '2025-07-19 04:27:42'),
(1038, 1, 146, 1, '2025-07-14 11:29:04', '2025-07-19 04:27:42'),
(1039, 11, 147, 1, '2025-07-16 09:51:51', '2025-07-16 09:51:51'),
(1040, 11, 148, 1, '2025-07-16 09:51:51', '2025-07-16 09:51:51'),
(1041, 11, 149, 1, '2025-07-16 10:35:56', '2025-07-16 10:35:56'),
(1042, 1, 147, 1, '2025-07-19 04:27:42', '2025-07-19 04:27:42'),
(1043, 1, 148, 1, '2025-07-19 04:27:42', '2025-07-19 04:27:42'),
(1044, 1, 149, 1, '2025-07-19 04:27:42', '2025-07-19 04:27:42'),
(1045, 11, 150, 1, '2025-07-20 05:56:11', '2025-07-20 05:56:11'),
(1046, 1, 150, 1, '2025-07-24 12:10:14', '2025-08-25 07:24:56'),
(1047, 11, 151, 1, '2025-08-01 09:39:12', '2025-08-01 09:39:12'),
(1048, 11, 152, 1, '2025-08-01 09:39:12', '2025-08-01 09:39:12'),
(1049, 11, 153, 1, '2025-08-01 09:39:12', '2025-08-01 09:39:12'),
(1050, 11, 154, 1, '2025-08-01 09:39:12', '2025-08-01 09:39:12'),
(1051, 1, 151, 1, '2025-08-25 07:24:56', '2025-08-25 07:24:56'),
(1052, 1, 152, 1, '2025-08-25 07:24:56', '2025-08-25 07:24:56'),
(1053, 1, 153, 1, '2025-08-25 07:24:56', '2025-08-25 07:24:56'),
(1054, 1, 154, 1, '2025-08-25 07:24:56', '2025-08-25 07:24:56'),
(1055, 1, 0, 1, '2025-11-14 16:54:50', '2025-11-14 16:54:50');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` text NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('SlCI6DL1bkAZHQLEDcyjkBmW2DIS2b68HNMERz4g', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV2JmT0tqS3V0cGkwQjhudVBTZ3JlSHEzNlNrQnJ6U25XU043RkVTMSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jb250YWN0LXVzIjtzOjU6InJvdXRlIjtzOjc6ImNvbnRhY3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1786170056);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) NOT NULL,
  `key` varchar(191) NOT NULL,
  `value` longtext DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT 1,
  `identifier` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `is_active`, `identifier`, `status`, `created_at`, `updated_at`) VALUES
(1, 'application_name', 'Livenza Group', 1, NULL, '1', '2023-05-21 22:34:50', '2025-11-19 01:35:32'),
(2, 'site_logo', 'uploads/settings/1764478312692bcd68c8914.1763516994691d224261fc8.logo.png', 1, NULL, '1', '2023-05-21 22:59:19', '2025-11-30 10:51:52'),
(3, 'site_favicon', 'uploads/settings/1764478312692bcd68c8b1a.1763516994691d224262947.favicon.png', 1, NULL, '1', '2023-05-21 23:09:36', '2025-11-30 10:51:52'),
(4, 'application_phone', '09639272106, +880 1521 747410', 1, NULL, '1', '2023-05-21 23:11:44', '2025-11-19 01:35:32'),
(5, 'application_email', 'info@livenzagroup.com', 1, NULL, '1', '2023-05-21 23:12:29', '2025-11-19 01:35:32'),
(6, 'application_toll_free', 'Livenza Group is a collective entity of sustainability-driven companies united under one ecosystem, dedicated to helping  grow responsibly across multiple sectors.', 1, NULL, '1', '2023-05-21 23:20:49', '2025-11-19 02:09:25'),
(7, 'application_fax', 'Livenza, Livenza group, sustainability, driven, ecosystem', 1, NULL, '1', '2023-05-21 23:20:49', '2025-11-30 14:47:48'),
(8, 'application_address', 'Plot 24 & 26 (Canyon Tower), Sector 12, Sonargaon Janapath Road, Uttara, Dhaka-1230.', 1, NULL, '1', '2023-05-21 23:20:49', '2025-11-19 01:35:32'),
(9, 'about_us', '<p style=\"margin: 0.2em 0px 0.5em; padding: 0px; direction: ltr; text-rendering: optimizelegibility; line-height: 1.4;\"></p><h3 style=\"font-family: Jost, sans-serif;\"><span style=\"line-height: inherit;\"><span style=\"font-weight: bolder;\">Machine Tool Solutions –</span></span></h3><h3><span style=\"font-family: Jost, sans-serif; font-size: 16px; line-height: inherit;\"><span style=\"background-color: var(--bs-card-bg); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); line-height: inherit;\">Global distributor of reliable and competitively priced products such as AutoGrip Manual / Power Chucks, Lang Technik Clean Tec and AR Filtrazioni, Compact Fixtures, 5-axis Clamping Systems, Stamping Technology, Vises for CNC Machining, Makro-Grip Applications, Precision Index Tables, and more machine tool solutions and services. </span><span style=\"background-color: var(--bs-card-bg); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: inherit;\">Contact</span><span style=\"background-color: var(--bs-card-bg); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align); line-height: inherit;\"> Machine Tools Solutions today to learn more about what products we have in stock.</span></span><p style=\"font-family: Jost, sans-serif; font-size: 16px;\"></p><p style=\"margin-right: 0px; margin-bottom: 1.25em; margin-left: 0px; font-size: 16px; padding: 0px; direction: ltr; font-family: Lato, helvetica, arial, sans-serif; line-height: 1.6; text-rendering: optimizelegibility;\"><span style=\"line-height: inherit;\">Machine Tool Solutions Ltd. </span>was established in 1989. For over 35 years, our mission at MTS has been to provide “intelligent workholding for improving productivity” to our customers by delivering high quality, value-minded tools inworkholding andmaterial handling through magnetic systems. Additionally, we provide solutions for non-ferrous materials through innovative fixture and zero-point clamping systems, permanent lifting magnets and Makro-grip profile clamping vices.</p><p style=\"margin-right: 0px; margin-bottom: 1.25em; margin-left: 0px; font-size: 16px; padding: 0px; direction: ltr; font-family: Lato, helvetica, arial, sans-serif; line-height: 1.6; text-rendering: optimizelegibility;\">With powerful and well-crafted components, Machine Tool Solutions Ltd. offers a wide product line to satisfy the needs of various industries including defense, medical, automotive, aerospace and more. Our mission further developed the company into gathering the finest products from world-class manufacturers and producers of effective mechanical and industrial components. We are a distributor of equipment from stamping technology, LANG Technik GmbH, SPD, AR Filtrazioni, Ok-Vise low profile clamps, 5-axis vises and stamping devices from LANG as well as many more.</p><p style=\"margin-right: 0px; margin-bottom: 1.25em; margin-left: 0px; font-size: 16px; padding: 0px; direction: ltr; font-family: Lato, helvetica, arial, sans-serif; line-height: 1.6; text-rendering: optimizelegibility;\">Machine Tool Solutions also provide expert repair, refurbishing and re-certification services, ensuring work safety through proper and thorough consultation of your workholding equipment. Our technical servicescertify your tools work best for you, offering consultations on product efficiency and component manufacturing optimization.</p><p style=\"margin-right: 0px; margin-bottom: 1.25em; margin-left: 0px; font-size: 16px; padding: 0px; direction: ltr; font-family: Lato, helvetica, arial, sans-serif; line-height: 1.6; text-rendering: optimizelegibility;\">We welcome you to be our partner towards continuous success and expanding growth in manufacturing, workholding, automation, and material handling technology. <a rel=\"nofollow\" href=\"https://www.machinetoolsolutions.ca/lang-technovation-technik-gmbh-automation-quick-point-zero-clamping-tower-tombstone-plates-eco-compact-20-canada/\" style=\"color: rgb(10, 77, 104); text-decoration: none; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: inherit;\">Contact</a> Machine Tools Solutions today to learn more about what products we have in stock.</p><p class=\"h-large\" style=\"margin-right: 0px; margin-bottom: 1.25em; margin-left: 0px; padding: 0px; direction: ltr; font-family: Lato, helvetica, arial, sans-serif; font-size: 32px; line-height: 32px; text-rendering: optimizelegibility;\">Social Responsibility</p><p style=\"margin-right: 0px; margin-bottom: 1.25em; margin-left: 0px; font-size: 16px; padding: 0px; direction: ltr; font-family: Lato, helvetica, arial, sans-serif; line-height: 1.6; text-rendering: optimizelegibility;\"></p><p style=\"margin-right: 0px; margin-bottom: 1.25em; margin-left: 0px; font-size: 16px; padding: 0px; direction: ltr; font-family: Lato, helvetica, arial, sans-serif; line-height: 1.6; text-rendering: optimizelegibility;\">Machine Tool Solutions Ltd. cares about the environment and its employees are encouraged to:</p><ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.25em; margin-left: 20px; font-size: 16px; direction: ltr; line-height: 1.6; list-style-position: outside; font-family: Lato, helvetica, arial, sans-serif;\"><li style=\"margin: 0px; padding: 0px; direction: ltr;\">Keep the work environment clean and safe.</li><li style=\"margin: 0px; padding: 0px; direction: ltr;\">Reduce the company’s waste generation by recycling paper and packaging supplies.</li><li style=\"margin: 0px; padding: 0px; direction: ltr;\">Decrease energy and water consumption..</li><li style=\"margin: 0px; padding: 0px; direction: ltr;\">Test</li></ul></h3>', 1, 'about_us', '1', '2023-05-22 01:14:20', '2025-02-17 10:52:43'),
(10, 'about_image_1', 'uploads/settings/1684754453646b501513684about-1.jpg', 1, NULL, NULL, '2023-05-22 05:20:53', '2023-05-22 05:20:53'),
(11, 'about_image_2', 'uploads/settings/1684754453646b501513bc3about-3.jpg', 1, NULL, NULL, '2023-05-22 05:20:53', '2023-05-22 05:20:53'),
(12, 'about_image_3', 'uploads/settings/1684754453646b501513e3dabout-2.jpg', 1, NULL, NULL, '2023-05-22 05:20:53', '2023-05-22 05:20:53'),
(13, 'terms_and_conditions', '<p class=\"MsoNormal\"><b><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">Effective Date:</span></b><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\"> [Insert Date]<o:p></o:p></span></p><p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">&nbsp;</span></p><p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">Please\r\nread these Terms and Conditions (\"Terms\") carefully before using the\r\nwebsite https://machinetoolsolutions.ca/ (\"Website\") operated by\r\nMachine Tool Solutions (\"Company,\" \"we,\" \"us,\" or\r\n\"our\"). These Terms set forth the legally binding agreement between\r\nyou (\"User,\" \"you,\" or \"your\") and Machine Tool\r\nSolutions regarding your use of the Website.<o:p></o:p></span></p><p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">&nbsp;</span></p><p class=\"MsoNormal\"><b><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">Acceptance of Terms<o:p></o:p></span></b></p><p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">By\r\naccessing or using the Website, you acknowledge that you have read, understood,\r\nand agree to be bound by these Terms and any additional terms and conditions\r\nprovided within the Website. If you do not agree to these Terms, you may not\r\nuse the Website.<o:p></o:p></span></p><p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">&nbsp;</span></p><p class=\"MsoNormal\"><b><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">Modifications to the Terms<o:p></o:p></span></b></p><p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">We\r\nreserve the right to modify, update, or replace these Terms at any time,\r\nwithout prior notice. It is your responsibility to review the Terms\r\nperiodically for any changes. Your continued use of the Website after any\r\nmodifications to the Terms constitutes your acceptance of the revised Terms.<o:p></o:p></span></p><p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">&nbsp;</span></p><p class=\"MsoNormal\"><b><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">Website Use<o:p></o:p></span></b></p><p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">a.\r\nEligibility: You must be at least 18 years old to use the Website.<o:p></o:p></span></p><p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">b.\r\nUser Accounts: Some features of the Website may require you to create a user\r\naccount. You are responsible for maintaining the confidentiality of your\r\naccount credentials and for all activities that occur under your account.<o:p></o:p></span></p><p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">c.\r\nProhibited Activities: You agree not to engage in any activity that violates\r\nthese Terms, including but not limited to:<o:p></o:p></span></p><p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">&nbsp;</span></p><p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">Transmitting\r\nany harmful, unlawful, or fraudulent content.<o:p></o:p></span></p><p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">Interfering\r\nwith the Website\'s functionality, security, or integrity.<o:p></o:p></span></p><p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">Attempting\r\nto gain unauthorized access to the Website or other users\' accounts.<o:p></o:p></span></p><p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">Violating\r\nany applicable laws or regulations.<o:p></o:p></span></p><p class=\"MsoNormal\"><b><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">Intellectual Property<o:p></o:p></span></b></p><p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">a.\r\nOwnership: All content, trademarks, logos, and intellectual property rights\r\ndisplayed on the Website are owned by Machine Tool Solutions or its licensors.\r\nYou may not use, reproduce, distribute, or modify any of the content without\r\nour prior written consent.<o:p></o:p></span></p><p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">b.\r\nUser Content: By submitting or uploading any content to the Website, you grant\r\nus a non-exclusive, worldwide, royalty-free license to use, display, reproduce,\r\nand distribute that content for the purpose of operating and improving the\r\nWebsite.<o:p></o:p></span></p><p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">&nbsp;</span></p><p class=\"MsoNormal\"><b><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">Third-Party Websites and Services<o:p></o:p></span></b></p><p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">The\r\nWebsite may contain links to third-party websites or services that are not\r\nowned or controlled by Machine Tool Solutions. We are not responsible for the\r\ncontent or practices of any third-party websites or services. Your use of such\r\nwebsites or services is subject to their respective terms and conditions and\r\nprivacy policies.<o:p></o:p></span></p><p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">&nbsp;</span></p><p class=\"MsoNormal\"><b><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">Limitation of Liability<o:p></o:p></span></b></p><p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">a.\r\nDisclaimer of Warranties: The Website is provided on an \"as is\" and\r\n\"as available\" basis, without any warranties or representations of\r\nany kind, whether express or implied. We do not guarantee the accuracy,\r\ncompleteness, or reliability of any content on the Website.<o:p></o:p></span></p><p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">b.\r\nLimitation of Liability: To the fullest extent permitted by applicable law,\r\nMachine Tool Solutions and its directors, officers, employees, or agents shall\r\nnot be liable for any direct, indirect, incidental, special, consequential, or\r\npunitive damages arising out of or in any way connected with your use of the\r\nWebsite or any content on the Website.<o:p></o:p></span></p><p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">&nbsp;</span></p><p class=\"MsoNormal\"><b><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">Indemnification<o:p></o:p></span></b></p><p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">You\r\nagree to indemnify and hold Machine Tool Solutions, its affiliates, officers,\r\ndirectors, employees, and agents harmless from any claim or demand, including\r\nreasonable attorney\'s fees, made by any third party due to or arising out of\r\nyour use of the Website, your violation of these Terms, or your violation of\r\nany rights of another party.<o:p></o:p></span></p><p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">&nbsp;</span></p><p class=\"MsoNormal\"><b><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">Governing Law and Jurisdiction<o:p></o:p></span></b></p><p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">These\r\nTerms shall be governed by and construed in accordance with the laws of [Insert\r\ngoverning law]. Any disputes arising under or in connection with these Terms\r\nshall be subject to the exclusive jurisdiction of the courts located in [Insert\r\njurisdiction].<o:p></o:p></span></p><p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">&nbsp;</span></p><p class=\"MsoNormal\"><b><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">Severability<o:p></o:p></span></b></p><p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">If\r\nany provision of these Terms is found to be invalid or unenforceable, the\r\nremaining provisions shall continue to be valid and enforceable to the fullest\r\nextent permitted by law.<o:p></o:p></span></p><p class=\"MsoNormal\"><b><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">Entire Agreement<o:p></o:p></span></b></p><p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">These\r\nTerms constitute the entire agreement between you and Machine Tool Solutions\r\nregarding your use of the Website and supersede any prior agreements or\r\nunderstandings, whether oral or written.<o:p></o:p></span></p><p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">&nbsp;</span></p><p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">If\r\nyou have any questions or concerns regarding these Terms, please contact us at\r\n[Insert contact information].<o:p></o:p></span></p><p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">&nbsp;</span></p><p class=\"MsoNormal\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">By\r\nusing the Website, you acknowledge that you have read, understood, and agree to\r\nbe bound by these Terms and Conditions.</span></p><p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size: 12pt; line-height: 107%; background-color: rgb(255, 0, 0);\"><o:p style=\"\"><br></o:p></span></p><p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size: 12pt; line-height: 107%; background-color: rgb(255, 0, 0);\"><o:p><br></o:p></span></p><p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size: 12pt; line-height: 107%; background-color: rgb(255, 0, 0);\"><o:p style=\"\">xsfdsdsfsdfsdfsdfsdfsdfsfsdf</o:p></span></p>', 1, NULL, NULL, '2023-07-03 01:25:51', '2024-01-22 17:18:44'),
(14, 'privacy_policy', '<p class=\"MsoNormal\"><b><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">Effective Date:</span></b><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\"> [Insert Date]<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\"> </span></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">At\r\nMachine Tool Solutions (\"Company,\" \"we,\" \"us,\" or\r\n\"our\"), we are committed to protecting your privacy. This Privacy\r\nPolicy describes how we collect, use, disclose, and store your personal\r\ninformation when you visit or use the website https://machinetoolsolutions.ca/\r\n(\"Website\").<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\"> </span></p>\r\n\r\n<p class=\"MsoNormal\"><b><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">Information We Collect<o:p></o:p></span></b></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">a.\r\nPersonal Information: We may collect personal information that you voluntarily\r\nprovide to us, such as your name, email address, phone number, and any other\r\ninformation you choose to provide.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">b.\r\nAutomatically Collected Information: When you visit our Website, we may\r\nautomatically collect certain information, including your IP address, browser\r\ntype, device information, and browsing activity.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\"> </span></p>\r\n\r\n<p class=\"MsoNormal\"><b><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">Use of Information<o:p></o:p></span></b></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">a.\r\nWe may use the information we collect for the following purposes:<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\"> </span></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">To\r\nprovide and maintain the Website and its features.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">To\r\ncommunicate with you, respond to your inquiries, and provide customer support.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">To\r\npersonalize your experience on the Website and deliver relevant content.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">To\r\nanalyze and improve the Website\'s performance and functionality.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">To\r\ndetect, prevent, and address technical issues or fraudulent activities.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">b.\r\nWe will only use your personal information for the purposes stated in this\r\nPrivacy Policy or as otherwise disclosed to you at the time of collection. We\r\nwill not sell, rent, or lease your personal information to any third parties\r\nwithout your consent.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">Cookies\r\nand Tracking Technologies<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">a.\r\nWe may use cookies and similar tracking technologies to collect and store\r\ninformation about your interactions with the Website. Cookies are small text\r\nfiles that are stored on your device.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">b.\r\nYou have the option to refuse or disable cookies through your browser settings.\r\nHowever, please note that disabling cookies may affect the functionality of the\r\nWebsite.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\"> </span></p>\r\n\r\n<p class=\"MsoNormal\"><b><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">Third-Party Disclosure<o:p></o:p></span></b></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">a.\r\nWe may share your personal information with trusted third-party service\r\nproviders who assist us in operating our Website, conducting our business, or\r\nproviding services to you. These third parties are obligated to keep your\r\ninformation confidential and are prohibited from using your personal\r\ninformation for any other purposes.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">b.\r\nWe may also disclose your personal information if required by law or if we\r\nbelieve that such disclosure is necessary to protect our rights, comply with a\r\njudicial proceeding, court order, or legal process, or to prevent imminent harm\r\nor financial loss.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\"> </span></p>\r\n\r\n<p class=\"MsoNormal\"><b><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">Data Security<o:p></o:p></span></b></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">a.\r\nWe implement appropriate technical and organizational measures to protect your\r\npersonal information from unauthorized access, disclosure, alteration, or\r\ndestruction.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">b.\r\nWhile we strive to protect your personal information, no method of transmission\r\nover the Internet or electronic storage is completely secure. Therefore, we\r\ncannot guarantee its absolute security.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\"> </span></p>\r\n\r\n<p class=\"MsoNormal\"><b><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">Children\'s Privacy<o:p></o:p></span></b></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">Our\r\nWebsite is not directed to individuals under the age of 18. We do not knowingly\r\ncollect personal information from children. If you are a parent or guardian and\r\nbelieve that your child has provided personal information on our Website,\r\nplease contact us, and we will promptly delete the information.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\"> </span></p>\r\n\r\n<p class=\"MsoNormal\"><b><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">Links to Third-Party Websites<o:p></o:p></span></b></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">The\r\nWebsite may contain links to third-party websites. We are not responsible for\r\nthe privacy practices or the content of those websites. We encourage you to\r\nreview the privacy policies of those third-party websites before providing any\r\npersonal information.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\"> </span></p>\r\n\r\n<p class=\"MsoNormal\"><b><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">Your Rights<o:p></o:p></span></b></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">a.\r\nYou have the right to access, correct, update, or delete your personal\r\ninformation that we hold. If you would like to exercise any of these rights,\r\nplease contact us using the information provided at the end of this Privacy\r\nPolicy.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">b.\r\nWe will respond to your request within a reasonable timeframe and in accordance\r\nwith applicable laws.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\"> </span></p>\r\n\r\n<p class=\"MsoNormal\"><b><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">Changes to this Privacy Policy<o:p></o:p></span></b></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">We\r\nmay update this Privacy Policy from time to time. Any changes will be posted on\r\nthis page, and the \"Effective Date\" at the top of this policy will be\r\nupdated. We encourage you to review this Privacy Policy periodically to stay\r\ninformed about how we collect, use, and protect your personal information.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\"> </span></p>\r\n\r\n<p class=\"MsoNormal\"><b><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">Contact Us<o:p></o:p></span></b></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">If\r\nyou have any questions, concerns, or requests regarding this Privacy Policy,\r\nplease contact us at [Insert contact information].<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\"> </span></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">By\r\nusing the Website, you acknowledge that you have read, understood, and agree to\r\nbe bound by this Privacy Policy.<o:p></o:p></span></p>', 1, NULL, NULL, '2023-07-03 01:25:51', '2023-07-28 06:18:15'),
(15, 'return_policy', '<p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\"><span style=\"font-weight: bolder; font-family: Jost, sans-serif;\"><span lang=\"EN-CA\" style=\"font-size: 12pt; line-height: 17.12px;\">Effective Date:</span></span><span lang=\"EN-CA\" style=\"font-family: Jost, sans-serif; font-size: 12pt; line-height: 17.12px;\"> [Insert Date]</span><br></span></p><p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">Thank\r\nyou for shopping at Machine Tool Solutions (\"Company,\"\r\n\"we,\" \"us,\" or \"our\"). We want you to be\r\ncompletely satisfied with your purchase. This Return Policy describes the\r\nguidelines and procedures for returning products purchased from the website https://machinetoolsolutions.ca/\r\n(\"Website\").<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\"> </span></p>\r\n\r\n<p class=\"MsoNormal\"><b><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">Eligibility<o:p></o:p></span></b></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">a.\r\nTo be eligible for a return, the product must be unused, in its original\r\ncondition, and in the original packaging.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">b.\r\nCertain products, such as personalized or customized items, may not be eligible\r\nfor return unless they are defective or damaged upon arrival.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\"> </span></p>\r\n\r\n<p class=\"MsoNormal\"><b><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">Return Process<o:p></o:p></span></b></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">a.\r\nInitiation: To initiate a return, please contact our customer service team\r\nwithin [number of days] days of receiving the product. You can reach us by\r\n[provide contact information].<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">b.\r\nReturn Authorization: Our customer service team will provide you with a Return\r\nAuthorization (RA) number and instructions for returning the product.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">c.\r\nPackaging: Ensure that the product is securely packaged in its original\r\npackaging or a suitable alternative to prevent damage during transit.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">d.\r\nShipping: You are responsible for the shipping costs associated with the\r\nreturn, unless the product is defective or damaged.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">e.\r\nTracking: We recommend using a trackable shipping method and keeping the tracking\r\nnumber for reference.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">f.\r\nInspection and Refund: Once we receive the returned product, our team will\r\ninspect it for eligibility and condition. If the return is approved, we will\r\ninitiate a refund to your original payment method within [number of days] days.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\"> </span></p>\r\n\r\n<p class=\"MsoNormal\"><b><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">Non-Returnable Items<o:p></o:p></span></b></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">The\r\nfollowing items are not eligible for return:<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\"> </span></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">Consumable\r\nproducts or items that cannot be resold due to health and hygiene reasons.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">Products\r\nthat have been used, altered, or damaged after delivery.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">Customized\r\nor personalized items, unless they are defective or damaged upon arrival.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><b><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">Damaged or Defective Products<o:p></o:p></span></b></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">a.\r\nIf the product you received is damaged or defective, please contact our\r\ncustomer service team within [number of days] days of receiving the product.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">b.\r\nWe may request evidence, such as photographs or a detailed description, to\r\nassess the damage or defect.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">c.\r\nOnce the damage or defect is verified, we will provide instructions for\r\nreturning the product, and a replacement or refund will be issued, including\r\nany applicable shipping costs.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\"> </span></p>\r\n\r\n<p class=\"MsoNormal\"><b><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">Refunds<o:p></o:p></span></b></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">a.\r\nRefunds will be issued in the same form of payment used for the original\r\npurchase.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">b.\r\nDepending on your payment provider, it may take additional time for the refund\r\nto be processed and reflected in your account.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">c.\r\nShipping costs, if applicable, are non-refundable unless the return is due to a\r\ndefect or damage.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\"> </span></p>\r\n\r\n<p class=\"MsoNormal\"><b><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">Exchanges<o:p></o:p></span></b></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">We\r\ncurrently do not offer direct exchanges. If you wish to exchange a product,\r\nplease follow the return process and place a new order for the desired item on\r\nour Website.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\"> </span></p>\r\n\r\n<p class=\"MsoNormal\"><b><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">Changes to the Return Policy<o:p></o:p></span></b></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">We\r\nreserve the right to modify, update, or replace this Return Policy at any time,\r\nwithout prior notice. The revised policy will be posted on our Website.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\"> </span></p>\r\n\r\n<p class=\"MsoNormal\"><b><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">Contact Us<o:p></o:p></span></b></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">If\r\nyou have any questions or concerns regarding this Return Policy, please contact\r\nour customer service team using the information provided on our Website.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\"> </span></p>\r\n\r\n<p class=\"MsoNormal\"><span lang=\"EN-CA\" style=\"font-size:12.0pt;line-height:107%\">By\r\nmaking a purchase on our Website, you acknowledge that you have read,\r\nunderstood, and agree to be bound by this Return Policy.<o:p></o:p></span></p>', 1, NULL, NULL, '2023-07-03 01:25:51', '2024-01-22 16:30:08'),
(16, 'facebook_link', NULL, 1, NULL, '1', '2023-07-03 05:45:16', '2025-07-24 12:06:23'),
(17, 'twitter_link', NULL, 1, NULL, '1', '2023-07-03 05:45:16', '2025-07-24 12:06:23'),
(18, 'instagram_link', NULL, 1, NULL, '1', '2023-07-03 05:45:16', '2025-07-24 12:06:23'),
(19, 'linkedin_link', NULL, 1, NULL, '1', '2023-07-03 05:45:16', '2025-07-24 12:06:23'),
(20, 'youtube_link', NULL, 1, NULL, '1', '2023-07-03 05:45:16', '2025-07-24 12:06:23'),
(21, 'question_module_preferances', '{\n  \"modules\": [\n    {\n      \"name\": \"Category\",\n      \"module\": \"App\\\\Models\\\\Category\",\n      \"key\": \"id\",\n      \"value\": \"title\",\n      \"is_required\": \"yes\"\n    }\n  ]\n}', 1, NULL, NULL, '2024-10-31 05:29:13', '2024-10-31 05:29:17'),
(22, 'mission_vision_image', 'uploads/settings/1737103596678a18ecef4d9dalle.png', 1, NULL, NULL, '2025-01-17 08:46:37', '2025-01-17 08:46:37'),
(23, 'mission_vision', '<p><b>Mission</b><br>Our mission is to change the way education meets the future; to foster interdisciplinary, integrated thinking and innovative leadership; to engage fully in the global community; and to facilitate lifelong learning.</p><p><br></p><p><b>Vision</b></p><p>Our mission is to change the way education meets the future; to foster interdisciplinary, integrated thinking and innovative leadership; to engage fully in the global community; and to facilitate lifelong learning.</p><div><br></div>', 1, 'mission_vision', '1', '2025-01-17 08:46:37', '2025-02-17 10:52:43'),
(24, 'principal_message', '<p data-start=\"132\" data-end=\"168\">Dear Students, Parents and Faculty,</p><p data-start=\"170\" data-end=\"508\">It is with great pride and enthusiasm that I welcome you to our school community. At Birkutsha Adarsha School &amp; College, we are committed to fostering an environment of academic excellence, personal growth, and mutual respect. We believe in nurturing every student’s potential, encouraging them to explore, learn, and thrive in all aspects of their education.</p><p data-start=\"510\" data-end=\"844\">Our dedicated team of educators strives to provide an innovative, inclusive, and enriching learning experience that prepares students for success both inside and outside the classroom.</p>', 1, 'principal_message', '1', '2025-02-09 06:03:38', '2025-02-24 10:55:29'),
(25, 'years_history', '<p>The Birkutsha Abinash High School is Institute for the Advancement of Literature, Science and Art filed its state charter in the Texas capital May 19, 1891. The original charter stipulated that the institute charge no tuition and would be for “the instruction and improvement of the white inhabitants of the City of Houston and State of Texas.” The institute was founded with a bequest of $4.6 million from the estate of William Marsh Rice, a merchant who arrived in Texas in 1838 and soon thereafter moved to the newly founded city of Houston. In the 1840s and 1850s, he accumulated his wealth by providing supplies to plantation owners and selling cotton and sugar crops, produced in large part by enslaved labor. Rice, too, owned enslaved people and benefited from their labor. After the Civil War, he took the oath of loyalty to the restored United States and lived thereafter in New Jersey and New York, while keeping a close eye on his many ongoing profitable endeavors in Texas. The childless Rice was murdered September 23, 1900, in New York by his butler and lawyer in an attempt to steal his fortune. After considerable litigation, Rice’s bequest in 1904 was deployed toward the purpose he intended — his namesake institute in the rapidly growing city of Houston. After selecting Edgar Odell Lovett, a mathematician from Princeton University, to serve as the first president, the institute’s trustees sent Lovett on an international trip in search of the best pedagogical practices, ideas and personnel.</p><p><br></p><p>From October 10 to 12, 1912, the Rice Institute celebrated its opening with lectures by eminent guests from around the world. President Lovett proclaimed that he and his colleagues planned “to assign no upper limit to its educational endeavor.” With 77 male and female students and a faculty of about a dozen in its opening year, the institute quickly grew in size and importance, led by Lovett and James Addison Baker Jr., who chaired Rice’s Board of Trustees from 1891 to 1941. By the time Lovett stepped down as president in 1946, the institute was a key part of a booming city of more than half a million residents.</p>', 1, 'years_history', '1', '2025-02-09 06:03:38', '2025-02-17 10:52:43'),
(26, 'title_one_image_1', 'uploads/settings/173976796367b2c09b698a5.program1.png', 1, 'title_one_image_1', '1', '2025-02-09 07:02:22', '2025-02-17 10:52:43'),
(27, 'title_one_image_2', 'uploads/settings/173976796367b2c09b69c3f.program2.png', 1, 'title_one_image_2', '1', '2025-02-09 07:02:23', '2025-02-17 10:52:43'),
(28, 'title_one_image_3', 'uploads/settings/173976796367b2c09b69e14.program3.png', 1, 'title_one_image_3', '1', '2025-02-09 07:02:23', '2025-02-17 10:52:43'),
(29, 'title_one_image_4', 'uploads/settings/173976796367b2c09b69fea.program1.png', 1, 'title_one_image_4', '1', '2025-02-09 07:02:23', '2025-02-17 10:52:43'),
(30, 'title_two_image_1', 'uploads/settings/173976796367b2c09b6a285.english.png', 1, 'title_two_image_1', '1', '2025-02-09 07:02:23', '2025-02-17 10:52:43'),
(31, 'title_two_image_2', 'uploads/settings/173976796367b2c09b6a426.book-fair.png', 1, 'title_two_image_2', '1', '2025-02-09 07:02:23', '2025-02-17 10:52:43'),
(32, 'title_two_image_3', 'uploads/settings/173976796367b2c09b6a5aa.butter.png', 1, 'title_two_image_3', '1', '2025-02-09 07:02:23', '2025-02-17 10:52:43'),
(33, 'title_two_image_4', 'uploads/settings/173976796367b2c09b6a780.book.png', 1, 'title_two_image_4', '1', '2025-02-09 07:02:23', '2025-02-17 10:52:43'),
(34, 'title_one', 'At Birkutsho Abinash High School & College the Emphasis is On You', 1, 'title_one', '1', '2025-02-09 07:02:23', '2025-02-17 10:52:43'),
(35, 'title_one_description', '<p>96% of our students who graduate do so in four years, and 90% are employed or in grad school six months after graduation.</p><div><b>Program of Emphasis</b></div><div>Our programs of emphasis (POEs) allow students to design an education that aligns with their future goals and career interests.</div><div><br></div><div><b>Accelerated 3+1 Dual Degrees</b></div><div>In select programs, you can complete a bachelor’s and a master’s degree in just four years!</div><div><br></div><div><b>Master\'s Programs</b></div><div>Graduate programs are offered with accessibility in mind.</div>', 1, 'title_one_description', '1', '2025-02-09 07:02:23', '2025-02-17 10:52:43'),
(36, 'title_two', 'dsad', 1, 'title_two', '1', '2025-02-09 07:02:23', '2025-02-17 10:52:43'),
(37, 'title_two_description', '<p><b>Life at Birkutsho Abinash High School & College</b></p><p>Join in the traditions and other fun activities that bring our close-knit community together and balance the serious work of study!</p><p><b>Campus Life and Athletics</b></p><p>With over 100 student clubs and organizations, and sports and recreational activities, there is always something to do at Juniata.</p><p><br></p><p><b>Traditions</b></p><p>From our legendary Mountain Day celebration to our intellectual Liberal Arts Symposium, our traditions and unique customs set Juniata apart.</p>', 1, 'title_two_description', '1', '2025-02-09 07:02:23', '2025-02-17 10:52:52'),
(0, 'about_image', 'uploads/settings/1764520280692c7158cba4a.1764512826692c543af3d74.img1.png', 1, NULL, '1', '2025-11-30 22:31:20', '2025-11-30 22:31:20');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `top_title` varchar(255) DEFAULT NULL,
  `bottom_title` varchar(255) DEFAULT NULL,
  `button_text` varchar(255) DEFAULT NULL,
  `button_link` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `company_logo` varchar(255) DEFAULT NULL,
  `short_description` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `youtube_video` varchar(255) DEFAULT NULL,
  `right_title_1` varchar(255) DEFAULT NULL,
  `right_description_1` longtext DEFAULT NULL,
  `right_title_2` varchar(255) DEFAULT NULL,
  `right_description_2` longtext DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `slier_for` varchar(255) DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `top_title`, `bottom_title`, `button_text`, `button_link`, `image`, `company_logo`, `short_description`, `description`, `video`, `youtube_video`, `right_title_1`, `right_description_1`, `right_title_2`, `right_description_2`, `serial`, `slier_for`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Bangladesh’s premium BYD EV dealership, delivering the next generation of electric mobility', NULL, NULL, NULL, 'https://livenzagroup.com', '/uploads/slider/692c12601775d_1764495968.jpg', '/uploads/slider/692c25272383a_1764500775.png', NULL, NULL, '/uploads/slider/692c27d129b58_1764501457.mp4', NULL, NULL, '<p><br><br></p>', NULL, '<br>', '10', '1', 1, '2025-11-29 17:47:49', '2025-11-30 17:17:39'),
(3, 'High-capacity, sustainable RMG packaging & accessories for global apparel brands', NULL, NULL, NULL, NULL, '/uploads/slider/692c347b0f0d0_1764504699.jpeg', '/uploads/slider/692c41a913a5c_1764508073.png', NULL, NULL, '/uploads/slider/692c34dcc2125_1764504796.mp4', NULL, NULL, NULL, NULL, NULL, '20', '2', 1, '2025-11-30 18:05:12', '2025-11-30 19:07:53'),
(4, 'Powering Bangladesh’s sustainable future with solar, ESS, and commercial HVAC technologies', NULL, NULL, NULL, 'https://greeneryes.com/', '/uploads/slider/692c3767b50ee_1764505447.jpeg', '/uploads/slider/692c3a466ed68_1764506182.png', NULL, NULL, '/uploads/slider/692c35e02ac9c_1764505056.mp4', NULL, NULL, NULL, NULL, NULL, '30', '3', 1, '2025-11-30 18:17:37', '2025-11-30 18:36:25'),
(5, 'Your North American partner for clean energy, HVAC, and industrial technology distribution', NULL, NULL, NULL, 'https://www.greenerygo.com/', '/uploads/slider/692c3df182abd_1764507121.png', '/uploads/slider/692c3df210375_1764507122.png', NULL, NULL, '/uploads/slider/692c3df1c36c0_1764507121.mp4', NULL, NULL, NULL, NULL, NULL, '40', '4', 1, '2025-11-30 18:52:02', '2025-11-30 18:52:02'),
(6, 'Precision-engineered pharma packaging & industrial plastics for demanding sectors', NULL, NULL, NULL, NULL, NULL, '/uploads/slider/692cb550512b1_1764537680.png', NULL, NULL, '/uploads/slider/692cb54fd285a_1764537679.mp4', NULL, NULL, NULL, NULL, NULL, '60', '6', 1, '2025-12-01 03:21:20', '2025-12-01 03:21:20');

-- --------------------------------------------------------

--
-- Table structure for table `sustainabilities`
--

CREATE TABLE `sustainabilities` (
  `id` int(10) UNSIGNED NOT NULL,
  `banner_title` varchar(255) DEFAULT NULL,
  `banner_image` varchar(255) DEFAULT NULL,
  `banner_video` varchar(255) DEFAULT NULL,
  `banner_description` longtext DEFAULT NULL,
  `block_one_title` varchar(255) DEFAULT NULL,
  `block_one_image` varchar(255) DEFAULT NULL,
  `block_one_video` varchar(255) DEFAULT NULL,
  `block_one_description` longtext DEFAULT NULL,
  `block_two_title` varchar(255) DEFAULT NULL,
  `block_two_image` varchar(255) DEFAULT NULL,
  `block_two_video` varchar(255) DEFAULT NULL,
  `block_two_description` longtext DEFAULT NULL,
  `block_three_title` varchar(255) DEFAULT NULL,
  `block_three_image` varchar(255) DEFAULT NULL,
  `block_three_video` varchar(255) DEFAULT NULL,
  `block_three_description` longtext DEFAULT NULL,
  `block_four_title` varchar(255) DEFAULT NULL,
  `block_four_image` varchar(255) DEFAULT NULL,
  `block_four_video` varchar(255) DEFAULT NULL,
  `block_four_description` longtext DEFAULT NULL,
  `block_five_title` varchar(255) DEFAULT NULL,
  `block_five_image` varchar(255) DEFAULT NULL,
  `block_five_video` varchar(255) DEFAULT NULL,
  `block_five_description` longtext DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sustainabilities`
--

INSERT INTO `sustainabilities` (`id`, `banner_title`, `banner_image`, `banner_video`, `banner_description`, `block_one_title`, `block_one_image`, `block_one_video`, `block_one_description`, `block_two_title`, `block_two_image`, `block_two_video`, `block_two_description`, `block_three_title`, `block_three_image`, `block_three_video`, `block_three_description`, `block_four_title`, `block_four_image`, `block_four_video`, `block_four_description`, `block_five_title`, `block_five_image`, `block_five_video`, `block_five_description`, `serial`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Sustainability', '/uploads/sustainability/692dee24447c5_1764617764.jpg', NULL, '<font color=\"#1c2539\" face=\"Inter, sans-serif\"><span style=\"font-size: 18px;\">At our core, we blend creativity with strategic thinking to bring bold ideas to life.</span></font>', 'Ongoing Initiatives', '/uploads/sustainability/692dee24928ad_1764617764.jpg', NULL, '<p>At our core, we blend creativity with strategic thinking to bring bold ideas to life. Every project begins with deep research, thoughtful planning, and a passion for innovation. We focus on designing experiences that not only look impressive but also connect emotionally, engage audiences, and strengthen brand presence.</p><p>Beyond creativity, we believe real success comes from measurable outcomes. <span style=\"font-size: 1.07rem;\">Our process is centered around performance, optimization, and data-backed decisions. With a commitment to quality and consistency, we transform vision into real-world results — helping businesses grow, scale, and build lasting value in competitive markets.</span></p>', 'ESG Metrics (light version)', '/uploads/sustainability/692dee24a6cff_1764617764.jpg', NULL, '<p>At our core, we blend creativity with strategic thinking to bring bold ideas to life. Every project begins with deep research, thoughtful planning, and a passion for innovation. We focus on designing experiences that not only look impressive but also connect emotionally, engage audiences, and strengthen brand presence.</p><p>Beyond creativity, we believe real success comes from measurable outcomes. <span style=\"font-size: 1.07rem;\">Our process is centered around performance, optimization, and data-backed decisions. With a commitment to quality and consistency, we transform vision into real-world results — helping businesses grow, scale, and build lasting value in competitive markets.</span></p>', 'Ongoing Initiatives', '/uploads/sustainability/692dee24c641c_1764617764.jpg', NULL, '<p>At our core, we blend creativity with strategic thinking to bring bold ideas to life. Every project begins with deep research, thoughtful planning, and a passion for innovation. We focus on designing experiences that not only look impressive but also connect emotionally, engage audiences, and strengthen brand presence.</p><p>Beyond creativity, we believe real success comes from measurable outcomes. <span style=\"font-size: 1.07rem;\">Our process is centered around performance, optimization, and data-backed decisions. With a commitment to quality and consistency, we transform vision into real-world results — helping businesses grow, scale, and build lasting value in competitive markets.</span></p>', 'Sustainability Reports', '/uploads/sustainability/692dee24d6e60_1764617764.jpg', '/uploads/sustainability/692dee25004e7_1764617765.mp4', '<p>At our core, we blend creativity with strategic thinking to bring bold ideas to life. Every project begins with deep research, thoughtful planning, and a passion for innovation. We focus on designing experiences that not only look impressive but also connect emotionally, engage audiences, and strengthen brand presence.</p><p>Beyond creativity, we believe real success comes from measurable outcomes. <span style=\"font-size: 1.07rem;\">Our process is centered around performance, optimization, and data-backed decisions. With a commitment to quality and consistency, we transform vision into real-world results — helping businesses grow, scale, and build lasting value in competitive markets.</span></p>', NULL, '/uploads/sustainability/692dee24e353d_1764617764.jpg', NULL, '<p><br></p>', '10', 1, '2025-12-01 16:32:16', '2025-12-03 15:22:49');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `title` varchar(256) DEFAULT NULL,
  `tag` text DEFAULT NULL,
  `theme_id` int(11) NOT NULL,
  `class_name` varchar(256) NOT NULL,
  `font_family` varchar(256) DEFAULT NULL,
  `font_color` varchar(256) DEFAULT NULL,
  `font_style` varchar(256) DEFAULT NULL,
  `before_bracket` varchar(256) DEFAULT NULL,
  `after_bracket` varchar(256) DEFAULT NULL,
  `status` int(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `title`, `tag`, `theme_id`, `class_name`, `font_family`, `font_color`, `font_style`, `before_bracket`, `after_bracket`, `status`, `created_at`, `updated_at`) VALUES
(23, NULL, 'p', 111, '', NULL, '#ff0000', NULL, '{', '}', 1, '2025-08-25 07:28:13', '2025-08-25 07:29:01');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `translatable_type` varchar(255) NOT NULL,
  `translatable_id` bigint(20) UNSIGNED NOT NULL,
  `language_code` varchar(255) NOT NULL,
  `field` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` varchar(255) NOT NULL,
  `company_id` varchar(255) DEFAULT NULL,
  `role` tinyint(3) UNSIGNED NOT NULL DEFAULT 12,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `bio` text DEFAULT NULL,
  `gender` enum('male','female','other') DEFAULT NULL,
  `year_of_experience` int(11) DEFAULT NULL,
  `is_verified` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `created_by_id` varchar(255) DEFAULT NULL,
  `created_by_name` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `last_modified_by_id` varchar(255) DEFAULT NULL,
  `last_modified_by_name` varchar(255) DEFAULT NULL,
  `last_modified_date` varchar(255) DEFAULT NULL,
  `ancestor_id` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `company_id`, `role`, `name`, `username`, `first_name`, `last_name`, `email`, `phone`, `password`, `remember_token`, `image_url`, `bio`, `gender`, `year_of_experience`, `is_verified`, `status`, `created_by_id`, `created_by_name`, `created_date`, `last_modified_by_id`, `last_modified_by_name`, `last_modified_date`, `ancestor_id`, `email_verified_at`, `created_at`, `updated_at`) VALUES
('1', NULL, 1, 'admin', 'admin', 'Livenza', NULL, 'info@livenzagroup.com', '01303323065', '$2y$12$kWwoVABbpPsoVKfHMYimTuQKZvSzOSY485oiTn3.dP6r2v3C/K1Dm', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, '2025-08-20 12:24:54', NULL, NULL, NULL, NULL, '2025-08-21 06:24:54', '2025-08-20 06:24:54', '2026-07-25 15:45:32'),
('68aea4a76195a-user-99696243390630978', NULL, 12, 'Test User', '', NULL, NULL, 'test@example.com', NULL, '$2y$12$l8RNH5cPxee5Z71mev0wg.AU9awkqO8aiMUThxOwi0tFOarQILGfS', 'ab9FxaPTY7', NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 06:24:38', '2025-08-27 06:24:39', '2025-08-27 06:24:39'),
('68aee10749881-user-43983250011028727', NULL, 2, 'Arif Hossain', 'arifhossain', NULL, NULL, 'a02052106@gmail.com', NULL, '$2y$12$5FJIKK56yU3025XskwR6Qez.YKRSGAA6sVBKBnqA6IlDU0rf4vGwC', NULL, NULL, NULL, 'male', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 10:42:15', '2025-08-27 10:42:15', '2025-08-27 12:47:56');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` varchar(40) NOT NULL,
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `careerpages`
--
ALTER TABLE `careerpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `gallery_events`
--
ALTER TABLE `gallery_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery_images`
--
ALTER TABLE `gallery_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_applieds`
--
ALTER TABLE `job_applieds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_circulars`
--
ALTER TABLE `job_circulars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otp`
--
ALTER TABLE `otp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `portfolios`
--
ALTER TABLE `portfolios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registeredevents`
--
ALTER TABLE `registeredevents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_right`
--
ALTER TABLE `role_right`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sustainabilities`
--
ALTER TABLE `sustainabilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `careerpages`
--
ALTER TABLE `careerpages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gallery_events`
--
ALTER TABLE `gallery_events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gallery_images`
--
ALTER TABLE `gallery_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_applieds`
--
ALTER TABLE `job_applieds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `job_circulars`
--
ALTER TABLE `job_circulars`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `otp`
--
ALTER TABLE `otp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `portfolios`
--
ALTER TABLE `portfolios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `registeredevents`
--
ALTER TABLE `registeredevents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `role_right`
--
ALTER TABLE `role_right`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1056;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sustainabilities`
--
ALTER TABLE `sustainabilities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
