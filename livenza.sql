-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Nov 30, 2025 at 02:04 AM
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
-- Database: `laravel12`
--

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
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `sub_title` varchar(255) DEFAULT NULL,
  `button_text` varchar(255) DEFAULT NULL,
  `button_link` varchar(255) DEFAULT NULL,
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

INSERT INTO `companies` (`id`, `title`, `slug`, `sub_title`, `button_text`, `button_link`, `short_description`, `description`, `image`, `video`, `map`, `serial`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Automotive - EV Mobility', 'automotive-ev-mobility-first', 'Noor Autos , Official BYD Dealership', NULL, 'https://livenzagroup.com', NULL, '<p><span style=\"font-size: 14.98px;\"><b>Bangladesh’s premium BYD EV dealership, delivering the next generation of electric mobility.<br></b></span></p><p><span style=\"font-size: 14.98px;\">Noor Autos brings the global excellence of BYD, the world’s largest EV manufacturer, to Bangladesh.</span></p><p></p><p><span style=\"font-size: 14.98px;\"> We offer a premium sales experience, advanced after-sales service, and a fully trained technical team ensuring high-standard EV care.<br></span><span id=\"docs-internal-guid-4f9b9214-7fff-a77c-32e7-59b884682f20\"></span></p><h3 dir=\"ltr\" style=\"line-height:1.38;margin-top:14pt;margin-bottom:4pt;\"><span style=\"font-size:13pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Core Solutions\r\n<span style=\"font-weight:normal;\" id=\"docs-internal-guid-b5efc74f-7fff-f508-0fca-14964b0bf104\"><ul style=\"margin-bottom: 0px; padding-inline-start: 48px;\"><li dir=\"ltr\" style=\"list-style-type: disc; font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: nowrap;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">Electric Cars & SUVs (BYD Seal, Atto 3, sealion 6 etc.)</span></p></li><li dir=\"ltr\" style=\"list-style-type: disc; font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: nowrap;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">Test Drive & Consultation</span></p></li><li dir=\"ltr\" style=\"list-style-type: disc; font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: nowrap;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">Genuine BYD Service & Maintenance</span></p></li><li dir=\"ltr\" style=\"list-style-type: disc; font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: nowrap;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:12pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">EV Charging & Support Solutions</span></p></li><li dir=\"ltr\" style=\"list-style-type: disc; font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: nowrap;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">Fleet Partnerships for Corporate Clients\r\n\r\n</span></p></li></ul></span></span></h3><h3 dir=\"ltr\" style=\"margin-top: 14pt; margin-bottom: 4pt; line-height: 1.38; color: rgb(0, 0, 0);\"><span style=\"font-size: 13pt; font-family: Arial, sans-serif; background-color: transparent; font-weight: 700; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\"><span style=\"font-weight:normal;\" id=\"docs-internal-guid-9b5694a7-7fff-d053-7d93-783d47ed153e\"><span style=\"font-size: 13pt; background-color: transparent; font-weight: 700; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline;\">Value Proposition\r\n<span style=\"font-weight:normal;\" id=\"docs-internal-guid-a6097f8a-7fff-f268-b68f-7cd05d54c2c1\"><ul style=\"margin-bottom: 0px; padding-inline-start: 48px;\"><li dir=\"ltr\" style=\"list-style-type: disc; font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: nowrap;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">BYD-certified technicians</span></p></li><li dir=\"ltr\" style=\"list-style-type: disc; font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: nowrap;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">Luxurious showroom & delivery experience</span></p></li><li dir=\"ltr\" style=\"list-style-type: disc; font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: nowrap;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">Reliable EV servicing & parts availability</span></p></li><li dir=\"ltr\" style=\"list-style-type: disc; font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: nowrap;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:12pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">Financing and EMI options</span></p></li><li dir=\"ltr\" style=\"list-style-type: disc; font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: nowrap;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">Partnership programs for corporate fleets</span></p></li></ul></span></span></span></span></h3>', '/uploads/company/692afac92043d_1764424393.jpg', '/uploads/company/692af5d2847d2_1764423122.mp4', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3648.431036385656!2d90.37907597533977!3d23.874329478586017!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755c5003422f655%3A0xde3d4394732dca14!2sCANYON%20TOWER!5e0!3m2!1sen!2sbd!4v1764419918915!5', '10', 1, '2025-11-29 13:32:02', '2025-11-29 17:52:17'),
(2, 'Automotive - EV Mobility', 'automotive-ev-mobility', 'Noor Autos , Official BYD Dealership', NULL, 'https://livenzagroup.com', NULL, '<p><span style=\"font-size: 14.98px;\"><b>Bangladesh’s premium BYD EV dealership, delivering the next generation of electric mobility.<br></b></span></p><p><span style=\"font-size: 14.98px;\">Noor Autos brings the global excellence of BYD, the world’s largest EV manufacturer, to Bangladesh.</span></p><p></p><p><span style=\"font-size: 14.98px;\"> We offer a premium sales experience, advanced after-sales service, and a fully trained technical team ensuring high-standard EV care.<br></span><span id=\"docs-internal-guid-4f9b9214-7fff-a77c-32e7-59b884682f20\"></span></p><h3 dir=\"ltr\" style=\"line-height:1.38;margin-top:14pt;margin-bottom:4pt;\"><span style=\"font-size:13pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Core Solutions\r\n<span style=\"font-weight:normal;\" id=\"docs-internal-guid-b5efc74f-7fff-f508-0fca-14964b0bf104\"><ul style=\"margin-bottom: 0px; padding-inline-start: 48px;\"><li dir=\"ltr\" style=\"list-style-type: disc; font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: nowrap;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">Electric Cars & SUVs (BYD Seal, Atto 3, sealion 6 etc.)</span></p></li><li dir=\"ltr\" style=\"list-style-type: disc; font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: nowrap;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">Test Drive & Consultation</span></p></li><li dir=\"ltr\" style=\"list-style-type: disc; font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: nowrap;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">Genuine BYD Service & Maintenance</span></p></li><li dir=\"ltr\" style=\"list-style-type: disc; font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: nowrap;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:12pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">EV Charging & Support Solutions</span></p></li><li dir=\"ltr\" style=\"list-style-type: disc; font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: nowrap;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">Fleet Partnerships for Corporate Clients\r\n\r\n</span></p></li></ul></span></span></h3><h3 dir=\"ltr\" style=\"margin-top: 14pt; margin-bottom: 4pt; line-height: 1.38; color: rgb(0, 0, 0);\"><span style=\"font-size: 13pt; font-family: Arial, sans-serif; background-color: transparent; font-weight: 700; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\"><span style=\"font-weight:normal;\" id=\"docs-internal-guid-9b5694a7-7fff-d053-7d93-783d47ed153e\"><span style=\"font-size: 13pt; background-color: transparent; font-weight: 700; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline;\">Value Proposition\r\n<span style=\"font-weight:normal;\" id=\"docs-internal-guid-a6097f8a-7fff-f268-b68f-7cd05d54c2c1\"><ul style=\"margin-bottom: 0px; padding-inline-start: 48px;\"><li dir=\"ltr\" style=\"list-style-type: disc; font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: nowrap;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">BYD-certified technicians</span></p></li><li dir=\"ltr\" style=\"list-style-type: disc; font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: nowrap;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">Luxurious showroom & delivery experience</span></p></li><li dir=\"ltr\" style=\"list-style-type: disc; font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: nowrap;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">Reliable EV servicing & parts availability</span></p></li><li dir=\"ltr\" style=\"list-style-type: disc; font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: nowrap;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:12pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">Financing and EMI options</span></p></li><li dir=\"ltr\" style=\"list-style-type: disc; font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: nowrap;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">Partnership programs for corporate fleets</span></p></li></ul></span></span></span></span></h3>', '/uploads/company/692af8c59ae71_1764423877.jpg', '/uploads/company/692af5d2847d2_1764423122.mp4', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3648.431036385656!2d90.37907597533977!3d23.874329478586017!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755c5003422f655%3A0xde3d4394732dca14!2sCANYON%20TOWER!5e0!3m2!1sen!2sbd!4v1764419918915!5', '20', 1, '2025-11-29 13:32:02', '2025-11-29 17:39:51'),
(3, 'Automotive - EV Mobility', 'a', 'Noor Autos , Official BYD Dealership', NULL, 'https://livenzagroup.com', NULL, '<p><span style=\"font-size: 14.98px;\"><b>Bangladesh’s premium BYD EV dealership, delivering the next generation of electric mobility.<br></b></span></p><p><span style=\"font-size: 14.98px;\">Noor Autos brings the global excellence of BYD, the world’s largest EV manufacturer, to Bangladesh.</span></p><p></p><p><span style=\"font-size: 14.98px;\"> We offer a premium sales experience, advanced after-sales service, and a fully trained technical team ensuring high-standard EV care.<br></span><span id=\"docs-internal-guid-4f9b9214-7fff-a77c-32e7-59b884682f20\"></span></p><h3 dir=\"ltr\" style=\"line-height:1.38;margin-top:14pt;margin-bottom:4pt;\"><span style=\"font-size:13pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Core Solutions\r\n<span style=\"font-weight:normal;\" id=\"docs-internal-guid-b5efc74f-7fff-f508-0fca-14964b0bf104\"><ul style=\"margin-bottom: 0px; padding-inline-start: 48px;\"><li dir=\"ltr\" style=\"list-style-type: disc; font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: nowrap;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">Electric Cars & SUVs (BYD Seal, Atto 3, sealion 6 etc.)</span></p></li><li dir=\"ltr\" style=\"list-style-type: disc; font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: nowrap;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">Test Drive & Consultation</span></p></li><li dir=\"ltr\" style=\"list-style-type: disc; font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: nowrap;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">Genuine BYD Service & Maintenance</span></p></li><li dir=\"ltr\" style=\"list-style-type: disc; font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: nowrap;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:12pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">EV Charging & Support Solutions</span></p></li><li dir=\"ltr\" style=\"list-style-type: disc; font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: nowrap;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">Fleet Partnerships for Corporate Clients\r\n\r\n</span></p></li></ul></span></span></h3><h3 dir=\"ltr\" style=\"margin-top: 14pt; margin-bottom: 4pt; line-height: 1.38; color: rgb(0, 0, 0);\"><span style=\"font-size: 13pt; font-family: Arial, sans-serif; background-color: transparent; font-weight: 700; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\"><span style=\"font-weight:normal;\" id=\"docs-internal-guid-9b5694a7-7fff-d053-7d93-783d47ed153e\"><span style=\"font-size: 13pt; background-color: transparent; font-weight: 700; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline;\">Value Proposition\r\n<span style=\"font-weight:normal;\" id=\"docs-internal-guid-a6097f8a-7fff-f268-b68f-7cd05d54c2c1\"><ul style=\"margin-bottom: 0px; padding-inline-start: 48px;\"><li dir=\"ltr\" style=\"list-style-type: disc; font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: nowrap;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">BYD-certified technicians</span></p></li><li dir=\"ltr\" style=\"list-style-type: disc; font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: nowrap;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">Luxurious showroom & delivery experience</span></p></li><li dir=\"ltr\" style=\"list-style-type: disc; font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: nowrap;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">Reliable EV servicing & parts availability</span></p></li><li dir=\"ltr\" style=\"list-style-type: disc; font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: nowrap;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:12pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">Financing and EMI options</span></p></li><li dir=\"ltr\" style=\"list-style-type: disc; font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: nowrap;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">Partnership programs for corporate fleets</span></p></li></ul></span></span></span></span></h3>', '/uploads/company/692afb9335858_1764424595.jpg', '/uploads/company/692af5d2847d2_1764423122.mp4', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3648.431036385656!2d90.37907597533977!3d23.874329478586017!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755c5003422f655%3A0xde3d4394732dca14!2sCANYON%20TOWER!5e0!3m2!1sen!2sbd!4v1764419918915!5', '30', 1, '2025-11-29 13:32:02', '2025-11-29 18:20:39'),
(4, 'Automotive - EV Mobility', 'b', 'Noor Autos , Official BYD Dealership', NULL, 'https://livenzagroup.com', NULL, '<p><span style=\"font-size: 14.98px;\"><b>Bangladesh’s premium BYD EV dealership, delivering the next generation of electric mobility.<br></b></span></p><p><span style=\"font-size: 14.98px;\">Noor Autos brings the global excellence of BYD, the world’s largest EV manufacturer, to Bangladesh.</span></p><p></p><p><span style=\"font-size: 14.98px;\"> We offer a premium sales experience, advanced after-sales service, and a fully trained technical team ensuring high-standard EV care.<br></span><span id=\"docs-internal-guid-4f9b9214-7fff-a77c-32e7-59b884682f20\"></span></p><h3 dir=\"ltr\" style=\"line-height:1.38;margin-top:14pt;margin-bottom:4pt;\"><span style=\"font-size:13pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Core Solutions\r\n<span style=\"font-weight:normal;\" id=\"docs-internal-guid-b5efc74f-7fff-f508-0fca-14964b0bf104\"><ul style=\"margin-bottom: 0px; padding-inline-start: 48px;\"><li dir=\"ltr\" style=\"list-style-type: disc; font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: nowrap;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">Electric Cars & SUVs (BYD Seal, Atto 3, sealion 6 etc.)</span></p></li><li dir=\"ltr\" style=\"list-style-type: disc; font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: nowrap;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">Test Drive & Consultation</span></p></li><li dir=\"ltr\" style=\"list-style-type: disc; font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: nowrap;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">Genuine BYD Service & Maintenance</span></p></li><li dir=\"ltr\" style=\"list-style-type: disc; font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: nowrap;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:12pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">EV Charging & Support Solutions</span></p></li><li dir=\"ltr\" style=\"list-style-type: disc; font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: nowrap;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">Fleet Partnerships for Corporate Clients\r\n\r\n</span></p></li></ul></span></span></h3><h3 dir=\"ltr\" style=\"margin-top: 14pt; margin-bottom: 4pt; line-height: 1.38; color: rgb(0, 0, 0);\"><span style=\"font-size: 13pt; font-family: Arial, sans-serif; background-color: transparent; font-weight: 700; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\"><span style=\"font-weight:normal;\" id=\"docs-internal-guid-9b5694a7-7fff-d053-7d93-783d47ed153e\"><span style=\"font-size: 13pt; background-color: transparent; font-weight: 700; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline;\">Value Proposition\r\n<span style=\"font-weight:normal;\" id=\"docs-internal-guid-a6097f8a-7fff-f268-b68f-7cd05d54c2c1\"><ul style=\"margin-bottom: 0px; padding-inline-start: 48px;\"><li dir=\"ltr\" style=\"list-style-type: disc; font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: nowrap;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">BYD-certified technicians</span></p></li><li dir=\"ltr\" style=\"list-style-type: disc; font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: nowrap;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">Luxurious showroom & delivery experience</span></p></li><li dir=\"ltr\" style=\"list-style-type: disc; font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: nowrap;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">Reliable EV servicing & parts availability</span></p></li><li dir=\"ltr\" style=\"list-style-type: disc; font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: nowrap;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:12pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">Financing and EMI options</span></p></li><li dir=\"ltr\" style=\"list-style-type: disc; font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: nowrap;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">Partnership programs for corporate fleets</span></p></li></ul></span></span></span></span></h3>', '/uploads/company/692af91368038_1764423955.jpg', '/uploads/company/692af5d2847d2_1764423122.mp4', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3648.431036385656!2d90.37907597533977!3d23.874329478586017!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755c5003422f655%3A0xde3d4394732dca14!2sCANYON%20TOWER!5e0!3m2!1sen!2sbd!4v1764419918915!5', '40', 1, '2025-11-29 13:32:02', '2025-11-29 18:20:42');
INSERT INTO `companies` (`id`, `title`, `slug`, `sub_title`, `button_text`, `button_link`, `short_description`, `description`, `image`, `video`, `map`, `serial`, `status`, `created_at`, `updated_at`) VALUES
(5, 'Automotive - EV Mobility', 'c', 'Noor Autos , Official BYD Dealership', NULL, 'https://livenzagroup.com', NULL, '<p><span style=\"font-size: 14.98px;\"><b>Bangladesh’s premium BYD EV dealership, delivering the next generation of electric mobility.<br></b></span></p><p><span style=\"font-size: 14.98px;\">Noor Autos brings the global excellence of BYD, the world’s largest EV manufacturer, to Bangladesh.</span></p><p></p><p><span style=\"font-size: 14.98px;\"> We offer a premium sales experience, advanced after-sales service, and a fully trained technical team ensuring high-standard EV care.<br></span><span id=\"docs-internal-guid-4f9b9214-7fff-a77c-32e7-59b884682f20\"></span></p><h3 dir=\"ltr\" style=\"line-height:1.38;margin-top:14pt;margin-bottom:4pt;\"><span style=\"font-size:13pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Core Solutions\r\n<span style=\"font-weight:normal;\" id=\"docs-internal-guid-b5efc74f-7fff-f508-0fca-14964b0bf104\"><ul style=\"margin-bottom: 0px; padding-inline-start: 48px;\"><li dir=\"ltr\" style=\"list-style-type: disc; font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: nowrap;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">Electric Cars & SUVs (BYD Seal, Atto 3, sealion 6 etc.)</span></p></li><li dir=\"ltr\" style=\"list-style-type: disc; font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: nowrap;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">Test Drive & Consultation</span></p></li><li dir=\"ltr\" style=\"list-style-type: disc; font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: nowrap;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">Genuine BYD Service & Maintenance</span></p></li><li dir=\"ltr\" style=\"list-style-type: disc; font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: nowrap;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:12pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">EV Charging & Support Solutions</span></p></li><li dir=\"ltr\" style=\"list-style-type: disc; font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: nowrap;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">Fleet Partnerships for Corporate Clients\r\n\r\n</span></p></li></ul></span></span></h3><h3 dir=\"ltr\" style=\"margin-top: 14pt; margin-bottom: 4pt; line-height: 1.38; color: rgb(0, 0, 0);\"><span style=\"font-size: 13pt; font-family: Arial, sans-serif; background-color: transparent; font-weight: 700; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\"><span style=\"font-weight:normal;\" id=\"docs-internal-guid-9b5694a7-7fff-d053-7d93-783d47ed153e\"><span style=\"font-size: 13pt; background-color: transparent; font-weight: 700; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline;\">Value Proposition\r\n<span style=\"font-weight:normal;\" id=\"docs-internal-guid-a6097f8a-7fff-f268-b68f-7cd05d54c2c1\"><ul style=\"margin-bottom: 0px; padding-inline-start: 48px;\"><li dir=\"ltr\" style=\"list-style-type: disc; font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: nowrap;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">BYD-certified technicians</span></p></li><li dir=\"ltr\" style=\"list-style-type: disc; font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: nowrap;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">Luxurious showroom & delivery experience</span></p></li><li dir=\"ltr\" style=\"list-style-type: disc; font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: nowrap;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">Reliable EV servicing & parts availability</span></p></li><li dir=\"ltr\" style=\"list-style-type: disc; font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: nowrap;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:12pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">Financing and EMI options</span></p></li><li dir=\"ltr\" style=\"list-style-type: disc; font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: nowrap;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">Partnership programs for corporate fleets</span></p></li></ul></span></span></span></span></h3>', '/uploads/company/692afae31ab17_1764424419.jpg', '/uploads/company/692af5d2847d2_1764423122.mp4', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3648.431036385656!2d90.37907597533977!3d23.874329478586017!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755c5003422f655%3A0xde3d4394732dca14!2sCANYON%20TOWER!5e0!3m2!1sen!2sbd!4v1764419918915!5', '50', 1, '2025-11-29 13:32:02', '2025-11-29 18:20:48'),
(6, 'Automotive - EV Mobility', 'd', 'Noor Autos , Official BYD Dealership', NULL, 'https://livenzagroup.com', NULL, '<p><span style=\"font-size: 14.98px;\"><b>Bangladesh’s premium BYD EV dealership, delivering the next generation of electric mobility.<br></b></span></p><p><span style=\"font-size: 14.98px;\">Noor Autos brings the global excellence of BYD, the world’s largest EV manufacturer, to Bangladesh.</span></p><p></p><p><span style=\"font-size: 14.98px;\"> We offer a premium sales experience, advanced after-sales service, and a fully trained technical team ensuring high-standard EV care.<br></span><span id=\"docs-internal-guid-4f9b9214-7fff-a77c-32e7-59b884682f20\"></span></p><h3 dir=\"ltr\" style=\"line-height:1.38;margin-top:14pt;margin-bottom:4pt;\"><span style=\"font-size:13pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Core Solutions\r\n<span style=\"font-weight:normal;\" id=\"docs-internal-guid-b5efc74f-7fff-f508-0fca-14964b0bf104\"><ul style=\"margin-bottom: 0px; padding-inline-start: 48px;\"><li dir=\"ltr\" style=\"list-style-type: disc; font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: nowrap;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">Electric Cars & SUVs (BYD Seal, Atto 3, sealion 6 etc.)</span></p></li><li dir=\"ltr\" style=\"list-style-type: disc; font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: nowrap;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">Test Drive & Consultation</span></p></li><li dir=\"ltr\" style=\"list-style-type: disc; font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: nowrap;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">Genuine BYD Service & Maintenance</span></p></li><li dir=\"ltr\" style=\"list-style-type: disc; font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: nowrap;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:12pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">EV Charging & Support Solutions</span></p></li><li dir=\"ltr\" style=\"list-style-type: disc; font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: nowrap;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">Fleet Partnerships for Corporate Clients\r\n\r\n</span></p></li></ul></span></span></h3><h3 dir=\"ltr\" style=\"margin-top: 14pt; margin-bottom: 4pt; line-height: 1.38; color: rgb(0, 0, 0);\"><span style=\"font-size: 13pt; font-family: Arial, sans-serif; background-color: transparent; font-weight: 700; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\"><span style=\"font-weight:normal;\" id=\"docs-internal-guid-9b5694a7-7fff-d053-7d93-783d47ed153e\"><span style=\"font-size: 13pt; background-color: transparent; font-weight: 700; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline;\">Value Proposition\r\n<span style=\"font-weight:normal;\" id=\"docs-internal-guid-a6097f8a-7fff-f268-b68f-7cd05d54c2c1\"><ul style=\"margin-bottom: 0px; padding-inline-start: 48px;\"><li dir=\"ltr\" style=\"list-style-type: disc; font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: nowrap;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">BYD-certified technicians</span></p></li><li dir=\"ltr\" style=\"list-style-type: disc; font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: nowrap;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">Luxurious showroom & delivery experience</span></p></li><li dir=\"ltr\" style=\"list-style-type: disc; font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: nowrap;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">Reliable EV servicing & parts availability</span></p></li><li dir=\"ltr\" style=\"list-style-type: disc; font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: nowrap;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:12pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">Financing and EMI options</span></p></li><li dir=\"ltr\" style=\"list-style-type: disc; font-size: 11pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: nowrap;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size: 11pt; font-family: Arial, sans-serif; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; text-wrap-mode: wrap;\">Partnership programs for corporate fleets</span></p></li></ul></span></span></span></span></h3>', '/uploads/company/692afaf14553b_1764424433.jpg', '/uploads/company/692af5d2847d2_1764423122.mp4', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3648.431036385656!2d90.37907597533977!3d23.874329478586017!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755c5003422f655%3A0xde3d4394732dca14!2sCANYON%20TOWER!5e0!3m2!1sen!2sbd!4v1764419918915!5', '60', 1, '2025-11-29 13:32:02', '2025-11-29 18:20:52');

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
(36, '2025_11_27_154547_create_companies_table', 2);

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
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
('DxTAhPs2wDSyYjbsLHwcxrnJxWXmFaqHG2FjnMCK', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiSDZiMDRudDBDdWNBbmJ2M3V6WnJxbE81S2NrVDRldmtHRnpnRTQ4SiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9jb21wYW55IjtzOjU6InJvdXRlIjtzOjEzOiJjb21wYW55LmluZGV4Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO3M6MToiMSI7czoxNDoiYWRtaW5fbGFuZ3VhZ2UiO3M6MjoiZW4iO30=', 1764424963),
('I9OvCa3L2WLfjOkFY1h0vnOmjO95RdtMvKrtDEu0', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiMEhtaGZhQWNqemt1Y0NaTmRWOVZIeUxjVHZVU2xHTVg0aGI5VnZ2VyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jb21wYW55L2F1dG9tb3RpdmUtZXYtbW9iaWxpdHktZmlyc3QiO3M6NToicm91dGUiO3M6MTQ6InNpbmdsZS5jb21wYW55Ijt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO3M6MToiMSI7czoxNDoiYWRtaW5fbGFuZ3VhZ2UiO3M6MjoiZW4iO30=', 1764441451),
('lJCDQP2S3jMHb3blMMRgINjZgfFQ5GQdMEQPCUng', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiZHdqNUs0ZERKVm1LVHRieGFHZm5kOXU2UE16Q1oyb01EMWp1bFFnayI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NTg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jb21wYW55L2F1dG9tb3RpdmUtZXYtbW9iaWxpdHktZmlyc3QiO3M6NToicm91dGUiO3M6MTQ6InNpbmdsZS5jb21wYW55Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO3M6MToiMSI7czoxNDoiYWRtaW5fbGFuZ3VhZ2UiO3M6MjoiZW4iO30=', 1764464526);

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
(2, 'site_logo', 'uploads/settings/1764235737692819d97c636.alhaj-logo.png', 1, NULL, '1', '2023-05-21 22:59:19', '2025-11-27 09:28:57'),
(3, 'site_favicon', 'uploads/settings/1764235737692819d97ce49.alhaj-logo-wh-bg-removebg-preview.png', 1, NULL, '1', '2023-05-21 23:09:36', '2025-11-27 09:28:57'),
(4, 'application_phone', '09639272106, +880 1521 747410', 1, NULL, '1', '2023-05-21 23:11:44', '2025-11-19 01:35:32'),
(5, 'application_email', 'info@livenzagroup.com', 1, NULL, '1', '2023-05-21 23:12:29', '2025-11-19 01:35:32'),
(6, 'application_toll_free', 'Livenza Group is a collective entity of sustainability-driven companies united under one ecosystem, dedicated to helping  grow responsibly across multiple sectors.', 1, NULL, '1', '2023-05-21 23:20:49', '2025-11-19 02:09:25'),
(7, 'application_fax', 'Livenza, group, sustainability, driven, ecosystem', 1, NULL, '1', '2023-05-21 23:20:49', '2025-11-19 02:09:25'),
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
(37, 'title_two_description', '<p><b>Life at Birkutsho Abinash High School & College</b></p><p>Join in the traditions and other fun activities that bring our close-knit community together and balance the serious work of study!</p><p><b>Campus Life and Athletics</b></p><p>With over 100 student clubs and organizations, and sports and recreational activities, there is always something to do at Juniata.</p><p><br></p><p><b>Traditions</b></p><p>From our legendary Mountain Day celebration to our intellectual Liberal Arts Symposium, our traditions and unique customs set Juniata apart.</p>', 1, 'title_two_description', '1', '2025-02-09 07:02:23', '2025-02-17 10:52:52');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `top_title` varchar(255) DEFAULT NULL,
  `bottom_title` varchar(255) DEFAULT NULL,
  `button_text` varchar(255) DEFAULT NULL,
  `button_link` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
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

INSERT INTO `sliders` (`id`, `title`, `top_title`, `bottom_title`, `button_text`, `button_link`, `image`, `short_description`, `description`, `video`, `youtube_video`, `right_title_1`, `right_description_1`, `right_title_2`, `right_description_2`, `serial`, `slier_for`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Hotels', NULL, NULL, NULL, 'https://livenzagroup.com', '/uploads/slider/692b31c4ca162_1764438468.jpg', NULL, '<p><span style=\"color: rgb(255, 255, 255); font-family: Montserrat, sans-serif; font-size: 15px; font-weight: 600;\">Trump Hotels is a brand of five-star luxury hotels and resorts</span><br style=\"box-sizing: inherit; background: transparent; border: 0px; font-size: 15px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; height: 0px; color: rgb(255, 255, 255); font-family: Montserrat, sans-serif; font-weight: 600;\"><span style=\"color: rgb(255, 255, 255); font-family: Montserrat, sans-serif; font-size: 15px; font-weight: 600;\">with a mission of providing extraordinary customer experiences</span><br style=\"box-sizing: inherit; background: transparent; border: 0px; font-size: 15px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; height: 0px; color: rgb(255, 255, 255); font-family: Montserrat, sans-serif; font-weight: 600;\"><span style=\"color: rgb(255, 255, 255); font-family: Montserrat, sans-serif; font-size: 15px; font-weight: 600;\">and luxury accommodations.Our exceptionally designed hotels</span><br style=\"box-sizing: inherit; background: transparent; border: 0px; font-size: 15px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; height: 0px; color: rgb(255, 255, 255); font-family: Montserrat, sans-serif; font-weight: 600;\"><span style=\"color: rgb(255, 255, 255); font-family: Montserrat, sans-serif; font-size: 15px; font-weight: 600;\">in iconic locations put guests at the heart of each destination.</span></p>', '/uploads/slider/692b31c510efe_1764438469.mp4', NULL, 'North America', '<p><a href=\"https://www.trump.com/hotels/albemarle-estate-charlottesville-virginia/\" target=\"_blank\">Charlottesville, Virginia</a><br><a href=\"https://www.trump.com/hotels/albemarle-estate-charlottesville-virginia/\" target=\"_blank\" style=\"font-family: \" public=\"\" sans\",=\"\" sans-serif;=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" font-weight:=\"\" 400;\"=\"\">Charlottesville, Virginia</a><br><a href=\"https://www.trump.com/hotels/albemarle-estate-charlottesville-virginia/\" target=\"_blank\" style=\"font-family: \" public=\"\" sans\",=\"\" sans-serif;=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" font-weight:=\"\" 400;\"=\"\">Charlottesville, Virginia</a></p>', 'Europe & Asia', '<p><a href=\"https://www.trump.com/hotels/albemarle-estate-charlottesville-virginia/\" target=\"_blank\" style=\"font-family: \" public=\"\" sans\",=\"\" sans-serif;=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" font-weight:=\"\" 400;\"=\"\">Charlottesville, Virginia</a><br><a href=\"https://www.trump.com/hotels/albemarle-estate-charlottesville-virginia/\" target=\"_blank\" style=\"font-family: \" public=\"\" sans\",=\"\" sans-serif;=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" font-weight:=\"\" 400;\"=\"\">Charlottesville, Virginia</a><br><a href=\"https://www.trump.com/hotels/albemarle-estate-charlottesville-virginia/\" target=\"_blank\" style=\"font-family: \" public=\"\" sans\",=\"\" sans-serif;=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" font-weight:=\"\" 400;\"=\"\">Charlottesville, Virginia</a></p>', '10', '3', 1, '2025-11-29 17:47:49', '2025-11-30 00:36:28'),
(2, 'Real State', NULL, NULL, NULL, 'https://livenzagroup.com', '/uploads/slider/692b322ce346e_1764438572.jpg', NULL, '<p><span style=\"color: rgb(255, 255, 255); font-family: Montserrat, sans-serif; font-size: 15px; font-weight: 600;\">Trump Hotels is a brand of five-star luxury hotels and resorts</span><br style=\"box-sizing: inherit; background: transparent; border: 0px; font-size: 15px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; height: 0px; color: rgb(255, 255, 255); font-family: Montserrat, sans-serif; font-weight: 600;\"><span style=\"color: rgb(255, 255, 255); font-family: Montserrat, sans-serif; font-size: 15px; font-weight: 600;\">with a mission of providing extraordinary customer experiences</span><br style=\"box-sizing: inherit; background: transparent; border: 0px; font-size: 15px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; height: 0px; color: rgb(255, 255, 255); font-family: Montserrat, sans-serif; font-weight: 600;\"><span style=\"color: rgb(255, 255, 255); font-family: Montserrat, sans-serif; font-size: 15px; font-weight: 600;\">and luxury accommodations.Our exceptionally designed hotels</span><br style=\"box-sizing: inherit; background: transparent; border: 0px; font-size: 15px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; height: 0px; color: rgb(255, 255, 255); font-family: Montserrat, sans-serif; font-weight: 600;\"><span style=\"color: rgb(255, 255, 255); font-family: Montserrat, sans-serif; font-size: 15px; font-weight: 600;\">in iconic locations put guests at the heart of each destination.</span></p>', '/uploads/slider/692b31c510efe_1764438469.mp4', NULL, 'North America', '<p><a href=\"https://www.trump.com/hotels/albemarle-estate-charlottesville-virginia/\" target=\"_blank\">Charlottesville, Virginia</a><br><a href=\"https://www.trump.com/hotels/albemarle-estate-charlottesville-virginia/\" target=\"_blank\" style=\"font-family: \"Public Sans\", sans-serif; background-color: rgb(255, 255, 255); font-weight: 400;\">Charlottesville, Virginia</a><br><a href=\"https://www.trump.com/hotels/albemarle-estate-charlottesville-virginia/\" target=\"_blank\" style=\"font-family: \"Public Sans\", sans-serif; background-color: rgb(255, 255, 255); font-weight: 400;\">Charlottesville, Virginia</a><br><a href=\"https://www.trump.com/hotels/albemarle-estate-charlottesville-virginia/\" target=\"_blank\" style=\"font-family: \"Public Sans\", sans-serif; background-color: rgb(255, 255, 255); font-weight: 400;\">Charlottesville, Virginia</a></p>', 'Europe & Asia', '<p><a href=\"https://www.trump.com/hotels/albemarle-estate-charlottesville-virginia/\" target=\"_blank\" style=\"font-family: \"Public Sans\", sans-serif; background-color: rgb(255, 255, 255); font-weight: 400;\">Charlottesville, Virginia</a><br><a href=\"https://www.trump.com/hotels/albemarle-estate-charlottesville-virginia/\" target=\"_blank\" style=\"font-family: \"Public Sans\", sans-serif; background-color: rgb(255, 255, 255); font-weight: 400;\">Charlottesville, Virginia</a><br><a href=\"https://www.trump.com/hotels/albemarle-estate-charlottesville-virginia/\" target=\"_blank\" style=\"font-family: \"Public Sans\", sans-serif; background-color: rgb(255, 255, 255); font-weight: 400;\">Charlottesville, Virginia</a><br><a href=\"https://www.trump.com/hotels/albemarle-estate-charlottesville-virginia/\" target=\"_blank\" style=\"font-family: \"Public Sans\", sans-serif; background-color: rgb(255, 255, 255); font-weight: 400;\">Charlottesville, Virginia</a></p>', '20', '5', 1, '2025-11-29 17:47:49', '2025-11-29 18:30:35');

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

INSERT INTO `users` (`id`, `company_id`, `role`, `name`, `username`, `email`, `phone`, `password`, `remember_token`, `image_url`, `bio`, `gender`, `year_of_experience`, `is_verified`, `status`, `created_by_id`, `created_by_name`, `created_date`, `last_modified_by_id`, `last_modified_by_name`, `last_modified_date`, `ancestor_id`, `email_verified_at`, `created_at`, `updated_at`) VALUES
('1', NULL, 1, 'admin', 'admin', 'admin@gmail.com', '01303323065', '$2y$12$kWwoVABbpPsoVKfHMYimTuQKZvSzOSY485oiTn3.dP6r2v3C/K1Dm', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, '2025-08-20 12:24:54', NULL, NULL, NULL, NULL, '2025-08-21 06:24:54', '2025-08-20 06:24:54', '2025-08-27 06:30:25'),
('68aea4a76195a-user-99696243390630978', NULL, 12, 'Test User', '', 'test@example.com', NULL, '$2y$12$l8RNH5cPxee5Z71mev0wg.AU9awkqO8aiMUThxOwi0tFOarQILGfS', 'ab9FxaPTY7', NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 06:24:38', '2025-08-27 06:24:39', '2025-08-27 06:24:39'),
('68aee10749881-user-43983250011028727', NULL, 2, 'Arif Hossain', 'arifhossain', 'a02052106@gmail.com', NULL, '$2y$12$5FJIKK56yU3025XskwR6Qez.YKRSGAA6sVBKBnqA6IlDU0rf4vGwC', NULL, NULL, NULL, 'male', NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-08-27 10:42:15', '2025-08-27 10:42:15', '2025-08-27 12:47:56');

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
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
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
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `otp`
--
ALTER TABLE `otp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
