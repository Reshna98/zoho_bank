-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 23, 2023 at 04:35 PM
-- Server version: 5.7.42-cll-lve
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `infoxtec_zohodb`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
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
(25, 'Can add add item', 7, 'add_additem'),
(26, 'Can change add item', 7, 'change_additem'),
(27, 'Can delete add item', 7, 'delete_additem'),
(28, 'Can view add item', 7, 'view_additem'),
(29, 'Can add customer', 8, 'add_customer'),
(30, 'Can change customer', 8, 'change_customer'),
(31, 'Can delete customer', 8, 'delete_customer'),
(32, 'Can view customer', 8, 'view_customer'),
(33, 'Can add invoice', 9, 'add_invoice'),
(34, 'Can change invoice', 9, 'change_invoice'),
(35, 'Can delete invoice', 9, 'delete_invoice'),
(36, 'Can view invoice', 9, 'view_invoice'),
(37, 'Can add payment_terms', 10, 'add_payment_terms'),
(38, 'Can change payment_terms', 10, 'change_payment_terms'),
(39, 'Can delete payment_terms', 10, 'delete_payment_terms'),
(40, 'Can view payment_terms', 10, 'view_payment_terms'),
(41, 'Can add purchase', 11, 'add_purchase'),
(42, 'Can change purchase', 11, 'change_purchase'),
(43, 'Can delete purchase', 11, 'delete_purchase'),
(44, 'Can view purchase', 11, 'view_purchase'),
(45, 'Can add retainer invoice', 12, 'add_retainerinvoice'),
(46, 'Can change retainer invoice', 12, 'change_retainerinvoice'),
(47, 'Can delete retainer invoice', 12, 'delete_retainerinvoice'),
(48, 'Can view retainer invoice', 12, 'view_retainerinvoice'),
(49, 'Can add sales', 13, 'add_sales'),
(50, 'Can change sales', 13, 'change_sales'),
(51, 'Can delete sales', 13, 'delete_sales'),
(52, 'Can view sales', 13, 'view_sales'),
(53, 'Can add unit', 14, 'add_unit'),
(54, 'Can change unit', 14, 'change_unit'),
(55, 'Can delete unit', 14, 'delete_unit'),
(56, 'Can view unit', 14, 'view_unit'),
(57, 'Can add vendor_table', 15, 'add_vendor_table'),
(58, 'Can change vendor_table', 15, 'change_vendor_table'),
(59, 'Can delete vendor_table', 15, 'delete_vendor_table'),
(60, 'Can view vendor_table', 15, 'view_vendor_table'),
(61, 'Can add retaineritems', 16, 'add_retaineritems'),
(62, 'Can change retaineritems', 16, 'change_retaineritems'),
(63, 'Can delete retaineritems', 16, 'delete_retaineritems'),
(64, 'Can view retaineritems', 16, 'view_retaineritems'),
(65, 'Can add mail_table', 17, 'add_mail_table'),
(66, 'Can change mail_table', 17, 'change_mail_table'),
(67, 'Can delete mail_table', 17, 'delete_mail_table'),
(68, 'Can view mail_table', 17, 'view_mail_table'),
(69, 'Can add invoice_item', 18, 'add_invoice_item'),
(70, 'Can change invoice_item', 18, 'change_invoice_item'),
(71, 'Can delete invoice_item', 18, 'delete_invoice_item'),
(72, 'Can view invoice_item', 18, 'view_invoice_item'),
(73, 'Can add history', 19, 'add_history'),
(74, 'Can change history', 19, 'change_history'),
(75, 'Can delete history', 19, 'delete_history'),
(76, 'Can view history', 19, 'view_history'),
(77, 'Can add estimates', 20, 'add_estimates'),
(78, 'Can change estimates', 20, 'change_estimates'),
(79, 'Can delete estimates', 20, 'delete_estimates'),
(80, 'Can view estimates', 20, 'view_estimates'),
(81, 'Can add estimate items', 21, 'add_estimateitems'),
(82, 'Can change estimate items', 21, 'change_estimateitems'),
(83, 'Can delete estimate items', 21, 'delete_estimateitems'),
(84, 'Can view estimate items', 21, 'view_estimateitems'),
(85, 'Can add doc_upload_table', 22, 'add_doc_upload_table'),
(86, 'Can change doc_upload_table', 22, 'change_doc_upload_table'),
(87, 'Can delete doc_upload_table', 22, 'delete_doc_upload_table'),
(88, 'Can view doc_upload_table', 22, 'view_doc_upload_table'),
(89, 'Can add company_details', 23, 'add_company_details'),
(90, 'Can change company_details', 23, 'change_company_details'),
(91, 'Can delete company_details', 23, 'delete_company_details'),
(92, 'Can view company_details', 23, 'view_company_details'),
(93, 'Can add comments_table', 24, 'add_comments_table'),
(94, 'Can change comments_table', 24, 'change_comments_table'),
(95, 'Can delete comments_table', 24, 'delete_comments_table'),
(96, 'Can view comments_table', 24, 'view_comments_table'),
(97, 'Can add payment', 25, 'add_payment'),
(98, 'Can change payment', 25, 'change_payment'),
(99, 'Can delete payment', 25, 'delete_payment'),
(100, 'Can view payment', 25, 'view_payment'),
(101, 'Can add pricelist', 26, 'add_pricelist'),
(102, 'Can change pricelist', 26, 'change_pricelist'),
(103, 'Can delete pricelist', 26, 'delete_pricelist'),
(104, 'Can view pricelist', 26, 'view_pricelist'),
(105, 'Can add sample_table', 27, 'add_sample_table'),
(106, 'Can change sample_table', 27, 'change_sample_table'),
(107, 'Can delete sample_table', 27, 'delete_sample_table'),
(108, 'Can view sample_table', 27, 'view_sample_table'),
(109, 'Can add remarks_table', 28, 'add_remarks_table'),
(110, 'Can change remarks_table', 28, 'change_remarks_table'),
(111, 'Can delete remarks_table', 28, 'delete_remarks_table'),
(112, 'Can view remarks_table', 28, 'view_remarks_table'),
(113, 'Can add contact_person_table', 29, 'add_contact_person_table'),
(114, 'Can change contact_person_table', 29, 'change_contact_person_table'),
(115, 'Can delete contact_person_table', 29, 'delete_contact_person_table'),
(116, 'Can view contact_person_table', 29, 'view_contact_person_table'),
(117, 'Can add banking', 30, 'add_banking'),
(118, 'Can change banking', 30, 'change_banking'),
(119, 'Can delete banking', 30, 'delete_banking'),
(120, 'Can view banking', 30, 'view_banking'),
(121, 'Can add bank', 31, 'add_bank'),
(122, 'Can change bank', 31, 'change_bank'),
(123, 'Can delete bank', 31, 'delete_bank'),
(124, 'Can view bank', 31, 'view_bank'),
(125, 'Can add account', 32, 'add_account'),
(126, 'Can change account', 32, 'change_account'),
(127, 'Can delete account', 32, 'delete_account'),
(128, 'Can view account', 32, 'view_account'),
(129, 'Can add expense', 33, 'add_expense'),
(130, 'Can change expense', 33, 'change_expense'),
(131, 'Can delete expense', 33, 'delete_expense'),
(132, 'Can view expense', 33, 'view_expense'),
(133, 'Can add sales_item', 34, 'add_sales_item'),
(134, 'Can change sales_item', 34, 'change_sales_item'),
(135, 'Can delete sales_item', 34, 'delete_sales_item'),
(136, 'Can view sales_item', 34, 'view_sales_item'),
(137, 'Can add sales order', 35, 'add_salesorder'),
(138, 'Can change sales order', 35, 'change_salesorder'),
(139, 'Can delete sales order', 35, 'delete_salesorder'),
(140, 'Can view sales order', 35, 'view_salesorder'),
(141, 'Can add delivery chellan', 36, 'add_deliverychellan'),
(142, 'Can change delivery chellan', 36, 'change_deliverychellan'),
(143, 'Can delete delivery chellan', 36, 'delete_deliverychellan'),
(144, 'Can view delivery chellan', 36, 'view_deliverychellan'),
(145, 'Can add challan items', 37, 'add_challanitems'),
(146, 'Can change challan items', 37, 'change_challanitems'),
(147, 'Can delete challan items', 37, 'delete_challanitems'),
(148, 'Can view challan items', 37, 'view_challanitems');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$QI9AHjLecXtTqhuXd0c93J$IvNKfSI9HSMSbYhpYlgBxsX0NoL9vxJWxqTonrRQ3UU=', '2023-06-13 08:03:47.065210', 0, 'namedummy171@gmail.com', 'Name1', 'Name', 'namedummy171@gmail.com', 0, 1, '2023-05-09 14:00:18.483566'),
(2, 'pbkdf2_sha256$260000$j0ZrA7SDyYFgsIsC8jaVfC$g+ixhvobBCl8kzl8v160vz01JnnxtejhUEGSbcNWwEc=', '2023-05-24 14:39:37.711811', 0, 'alen123', 'Alen', 'Antony', 'alenantony32@gmail.com', 0, 1, '2023-05-09 15:17:30.201127'),
(3, 'pbkdf2_sha256$260000$ZJroD3A5JsSxF8824pqsfV$Sp0I1THI0GWpWYXfalYAz/Q0/Y99uEMW2+lSv4RyJnE=', '2023-05-25 10:37:59.863434', 0, 'aq', 'Ashiq', 'Mohd', 'aq@gmail.com', 0, 1, '2023-05-10 04:39:27.008209'),
(4, 'pbkdf2_sha256$260000$4fg3xn5Ot9vZdfcmqkFoMY$sSWz8jHZoSxtvui+TWHHSq9miwT0rlHAapgvOiVw3X0=', '2023-06-20 06:47:09.114722', 0, 'user@gmail.com', 'User', 'Fyjthdf', 'user@gmail.com', 0, 1, '2023-05-10 10:53:33.912606'),
(5, 'pbkdf2_sha256$260000$iWTaxKmbx0UlBinBkuOu1p$aIYanflOE5lUXDKAAqi+ceofAvSIQxiXlnhX9tDEW+M=', NULL, 0, 'ABB', 'ABB', 'Company', 'abb123@gmail.com', 0, 1, '2023-05-11 08:49:16.917105'),
(6, 'pbkdf2_sha256$260000$6WklSdWyAeBe6sP1sal82h$Djq5clMjnGL0Dr+EHZFgUxJXoUEwgEKEq/dpZpmC8Bo=', NULL, 0, 'HARITHA', 'HARITHA', 'COMPANY', 'haritha123@gmail.com', 0, 1, '2023-05-11 09:45:43.880607'),
(7, 'pbkdf2_sha256$260000$vYszvkWXxLfCWfTPa3Atl4$keevQF3mbw2ACIJhIE7lbAehm2rp9XB7OCXNMKWPv1c=', '2023-05-11 11:20:48.628062', 0, 'saiju', 'Saiju', 'Sunny', 'saijusunny1301@gmail.com', 0, 1, '2023-05-11 11:20:37.925158'),
(8, 'pbkdf2_sha256$260000$fOhipLYNM37RtOXdT4B4F5$VKQhzc0z/FInOplVOzDNeYnWLOvCUf2YqMKIpvNvG9Y=', NULL, 0, 'clown', 'Saiju', 'Sunny', 'saijusunny1301@gmail.com', 0, 1, '2023-05-11 11:37:20.264888'),
(9, 'pbkdf2_sha256$260000$HmdL4J4xriYI6TL4DfKxmt$d9kg37fZTKmkR4iypiTuJaEv34KfBSmMoURSpl94EpM=', NULL, 0, 'saibu', 'Saibu', 'Sunny', 'saijuinfox@gmail.com', 0, 1, '2023-05-11 11:39:17.139422'),
(10, 'pbkdf2_sha256$260000$anNn16xCWDZUaosENgqJG5$pWVYfdX5NAj5HJM2xMsUtmy5trM8HOha/y/FW+cX/vI=', '2023-05-11 11:41:47.492472', 0, 'saiees', 'Lissy', 'Sunny', 'saijuinfozign@gmail.com', 0, 1, '2023-05-11 11:41:34.355713'),
(11, 'pbkdf2_sha256$260000$bMGM613wlkulxl1kw3awoP$NtOtZPLABDYy1Ms7eUE2/I64RvOBAb0c+x7lDHhlgoY=', '2023-05-11 11:46:36.799074', 0, 'raman', 'Saiju', 'Sunny', 'saiju@gmail.com', 0, 1, '2023-05-11 11:46:24.790232'),
(12, 'pbkdf2_sha256$260000$zs2fUMXTcxKo4AUf3YBwZU$EnEo9rNWSqfF83rVsFxOUXBmLvjrdASRpo4+lE3Crcg=', '2023-05-11 11:49:49.523220', 0, 'SJS', 'SJS', 'COMPANY', 'hsharitha24@gmail,com', 0, 1, '2023-05-11 11:49:27.379520'),
(13, 'pbkdf2_sha256$260000$Spam5fB1SGVmYqCq2m9BYi$oD7TMRK5m2F6wS1X6bP2PpiIYCFcxZ0W4TrCTmd8cIk=', '2023-05-12 05:46:40.162936', 0, 'Primestar', 'Primestar', 'Allmart', 'primestar@gmail.com', 0, 1, '2023-05-12 05:46:14.110410'),
(14, 'pbkdf2_sha256$260000$eSXeChdey27C7zIRNEu58I$9S+c/fs+gWoGPQwJtCKLHBMYFE/9c0xXzS9wjaBN5UE=', '2023-06-23 07:21:48.376284', 0, 'aambro', 'Aambro', 'Pvt Ltd', 'aambro99@gmail.com', 0, 1, '2023-05-15 04:44:52.044985'),
(15, 'pbkdf2_sha256$260000$qJY8t9XKj6Wd20aBjTAZLF$NZjLIhJxqB/gqz6KCVv4VlXh2WTdu9iX8RzJc3NeEvY=', '2023-05-17 07:17:11.992441', 0, 'a', 'A', 'A', 'ashiqva@gmail.com', 0, 1, '2023-05-15 06:02:47.968750'),
(16, 'pbkdf2_sha256$260000$NjUDFWDbK0TbyURZg38tvp$xtlR/j1f6LASwtQJyQO3RPcDjqfWTWAGMwyAE1spjfY=', '2023-06-23 06:06:35.438944', 0, 'radha', 'Radha', 'Devi', 'radha@gmail.com', 0, 1, '2023-05-17 09:44:21.968169'),
(17, 'pbkdf2_sha256$260000$FSk8eaFqHiZxC7ZSsGvixK$2ErIT5LX8tlcl11gjQvAASvy98NogACyHK9HgxadTLs=', '2023-05-24 04:12:52.647127', 0, 'minu', 'Shahabas', 'Tb', 'minu27theparambil@gmail.com', 0, 1, '2023-05-18 07:04:17.735103'),
(18, 'pbkdf2_sha256$260000$jALLxMFqpWOCP8JdnPy4ml$TAgZznRkEAwT4syBOYbci+gmyb1L7StEdq58+Hw1/Fk=', '2023-06-22 09:51:15.632217', 0, 'JISHNU', 'JISHNU', 'PRASAD', 'jishnupb098@gmail.com', 0, 1, '2023-05-24 07:48:58.457679'),
(19, 'pbkdf2_sha256$260000$xK8v9nwPiixtfownoUA2Hu$sxZ49WQ4j6Wery7h3o4TV+RO7ZEJ5Vjpg9oiUz5Qx7s=', '2023-05-25 09:28:16.300538', 0, 'niithya', 'Nithya', 'N', 'test@mail.com', 0, 1, '2023-05-24 11:22:30.346185'),
(20, 'pbkdf2_sha256$260000$0BVJuTONKPiYvCTHoUGbxW$pOT7PcbCGYAYzSP7x9vW/uKjfMiKTl+1movTm6YPDgA=', '2023-05-24 11:40:10.839189', 0, 'prime star', 'Prime Star', 'Private Limited', 'primestar123@gmail.com', 0, 1, '2023-05-24 11:37:52.382371'),
(21, 'pbkdf2_sha256$260000$Oq0tWjPPrLgloOy1TaOos6$FLlyZON2nY8gsy+eB7uz0QQ0vlbzo/YM2cwe17xr8h4=', '2023-05-26 06:57:34.784689', 0, 'Anazash', 'Muhammed', 'Anas', 'anazash88@gmail.com', 0, 1, '2023-05-26 04:32:48.219224'),
(22, 'pbkdf2_sha256$260000$6GDoWgM3U1Z0uARWy7Ry5Y$7nZTuztxOmExRIml3UjFkgw7k7waAAJWA3/RYLttygw=', '2023-06-07 06:39:33.152533', 0, 'test', 'Renu', 'D', 'test@mail.com', 0, 1, '2023-06-06 11:54:18.200918');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(32, 'zohoapp', 'account'),
(7, 'zohoapp', 'additem'),
(31, 'zohoapp', 'bank'),
(30, 'zohoapp', 'banking'),
(37, 'zohoapp', 'challanitems'),
(24, 'zohoapp', 'comments_table'),
(23, 'zohoapp', 'company_details'),
(29, 'zohoapp', 'contact_person_table'),
(8, 'zohoapp', 'customer'),
(36, 'zohoapp', 'deliverychellan'),
(22, 'zohoapp', 'doc_upload_table'),
(21, 'zohoapp', 'estimateitems'),
(20, 'zohoapp', 'estimates'),
(33, 'zohoapp', 'expense'),
(19, 'zohoapp', 'history'),
(9, 'zohoapp', 'invoice'),
(18, 'zohoapp', 'invoice_item'),
(17, 'zohoapp', 'mail_table'),
(25, 'zohoapp', 'payment'),
(10, 'zohoapp', 'payment_terms'),
(26, 'zohoapp', 'pricelist'),
(11, 'zohoapp', 'purchase'),
(28, 'zohoapp', 'remarks_table'),
(12, 'zohoapp', 'retainerinvoice'),
(16, 'zohoapp', 'retaineritems'),
(13, 'zohoapp', 'sales'),
(35, 'zohoapp', 'salesorder'),
(34, 'zohoapp', 'sales_item'),
(27, 'zohoapp', 'sample_table'),
(14, 'zohoapp', 'unit'),
(15, 'zohoapp', 'vendor_table');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-05-09 13:17:20.790110'),
(2, 'auth', '0001_initial', '2023-05-09 13:17:23.032727'),
(3, 'admin', '0001_initial', '2023-05-09 13:17:23.663797'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-05-09 13:17:23.676735'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-05-09 13:17:23.683451'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-05-09 13:17:23.747109'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-05-09 13:17:23.755551'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-05-09 13:17:23.763702'),
(9, 'auth', '0004_alter_user_username_opts', '2023-05-09 13:17:23.770043'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-05-09 13:17:23.783146'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-05-09 13:17:23.784827'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-05-09 13:17:23.791302'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-05-09 13:17:23.799437'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-05-09 13:17:23.808714'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-05-09 13:17:23.817131'),
(16, 'auth', '0011_update_proxy_permissions', '2023-05-09 13:17:23.824091'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-05-09 13:17:23.831998'),
(18, 'sessions', '0001_initial', '2023-05-09 13:17:24.124306'),
(19, 'zohoapp', '0001_initial', '2023-05-09 13:17:45.804904'),
(20, 'zohoapp', '0002_auto_20230509_1332', '2023-05-09 13:32:40.574312'),
(21, 'zohoapp', '0003_alter_invoice_terms', '2023-05-11 12:47:57.488050'),
(22, 'zohoapp', '0004_auto_20230517_1019', '2023-05-17 10:19:42.647803'),
(23, 'zohoapp', '0005_pricelist_sample_table', '2023-05-17 11:04:47.143202'),
(24, 'zohoapp', '0006_auto_20230518_0635', '2023-05-18 06:36:12.849505'),
(25, 'zohoapp', '0007_alter_sample_table_cust_rate', '2023-05-23 07:01:13.736396'),
(26, 'zohoapp', '0008_bank_banking', '2023-05-25 09:20:23.587100'),
(27, 'zohoapp', '0009_account_expense', '2023-05-25 18:02:35.212238'),
(28, 'zohoapp', '0010_sales_item_salesorder', '2023-05-31 06:44:39.777884'),
(29, 'zohoapp', '0011_challanitems_deliverychellan', '2023-06-05 09:59:59.149054');

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
('2et5e6roed7ziu163v209monxip6g03g', '.eJxVjL0OgjAURt-lsyFt6a-jiaNxcm7ubW9TIlACsmh8dzFh0PV853wvFmB9lLAuNIcusSNr2eGXIcQ7jd_hWUuFaWp20pwH6PrrfNusEQa61ET9abf_LgosZeuN17pNXENWZLM3SmIrjIBoHHcye6etwYxCU8IEglsVnY5IlNEZBZK9P3BGORU:1pyWyk:ObnjnwLvkuYjJwh1Ktj3ZbLyTJuQALUeO3A0sb4Tfeo', '2023-05-29 12:07:02.946101'),
('8h4cmon3ipvqm3wxtn9ik593lov4b2hi', '.eJxVjDEPgjAQRv9LZ0N6VeDO0cTRODk316OXEoESkEXjfxcTBl3f9973Mp6XR_LLHCffNuZoAM3uFwaWexy-yzOnzONYbKQ499x21-m2WgP38ZKb2J02--8i8ZzW3lUaDrUSEaqCcKCSUbQEhwRq91BCZaUSCWBrJ9YiNiSxdhGcDUjm_QGkgTi4:1q5oE9:N7fXiXfxNdk0YTxy3-kW9zeKfVDtocNrD7nHGAiUfQU', '2023-06-18 13:57:01.858381'),
('93otm673wyq3g63d06oymrc72ktj87a6', '.eJxVjL0OgjAURt-lsyFtL_TH0YTRODk3l95rSgRKQBaN725NGHQ93znfSwTcHilsKy-hJ3EUWhx-WYfxztN3eOaUcZ6rnVTtiP1wWa7FmnDkcyYeTrv9d5FwTaX3bAHJIUhw0Xe1MdRIB0ai8gqUtEY3xmvJviOSpDzH2hYPrCJzYyfeH1c1N_Q:1pwP5z:7cp3s9eEwB6cphhHLIP3K-CTMGA6ZkCcSoJ-x5zAW5Q', '2023-05-23 15:17:43.042643'),
('9i627g9uouerqbpmgxkfosil2odnmh7i', '.eJxVjD0PwiAURf8Ls2l8QPlwNOlonJzJAx6hsS1NaxeN_11MOuh4zz33vpjD7ZHdttLi-shODNjhl3kMd5q-xbPkgvPc7KTpRuyH63Kr1oQjXUqk4bzbfxcZ11z3Aq3UAY0ilDYGrzABkOf8aHzg2EajSdSkW281pCQEJeAUA4ACMpK9P5LJOSs:1q8yzR:mC-nCOt9nKg1BOoZDLnk4_J0OHNhlfNcj_aNm3k-y8g', '2023-06-27 08:02:57.852084'),
('ahxp7o8fdiow0g621ujjov6ihqvlat0d', '.eJxVjD0PwiAURf8Ls2l8QPlwNOlonJzJAx6hsS1NaxeN_11MOuh4zz33vpjD7ZHdttLi-shODNjhl3kMd5q-xbPkgvPc7KTpRuyH63Kr1oQjXUqk4bzbfxcZ11z3Aq3UAY0ilDYGrzABkOf8aHzg2EajSdSkW281pCQEJeAUA4ACMpK9P5LJOSs:1q8z0I:natFsu-Yxgq3uqm47VWa7H5dYMsjnHTnj0o-aNwbSAY', '2023-06-27 08:03:50.060138'),
('bkl3fv6t1x0baeld5cpu5cqon05ouzvb', '.eJxVjDEPgjAQRv9LZ0NoOejhaOJonJzJXXtNiUAJyKLxv1sTBl3f9973Uh1tj9htqyxd79VR6UYdfiGTu8v0XZ4pJprnYifFeaR-uC63bE00yiV5GU67_XcRaY2596IFjfV1IGCGBtsSBG1bOmZXeQxUBqo0MiA1YCtkh2DRGAo15Uq9P73oOao:1pzvG8:NcJz6mRQY5nFUW7SHc_uVR6RtNHxO6x5VG2Cebhnjt0', '2023-06-02 08:14:44.600716'),
('cwxr8ywmmssff7oi9k9hg1qkj45cf7p7', '.eJxVjL0OgjAURt-lsyFt6a-jiaNxcm7ubW9TIlACsmh8dzFh0PV853wvFmB9lLAuNIcusSNr2eGXIcQ7jd_hWUuFaWp20pwH6PrrfNusEQa61ET9abf_LgosZeuN17pNXENWZLM3SmIrjIBoHHcye6etwYxCU8IEglsVnY5IlNEZBZK9P3BGORU:1q28M3:krI-Y6Rgpd6N5AqNNmPZ37RFMWW63K2If_3gAE-VKMg', '2023-06-08 10:37:59.864784'),
('d1wij88aepgiss0fnqaohkechcu70r0c', '.eJxVjDEPgjAQRv9LZ0Na6HmtowmjcXImV3qXEoESkEXjfxcTBl3f9973Ug2tj9SsC89NF9VJGasOvzBQe-fxuzxzyjRNxU6KeqCuv863zRpp4EuO3J93--8i0ZK2vgVTOh08WUEroA1SEASWEHXpKwOiyWGFXssROXoIJB4dRwIThVm9P6NpOa8:1q28qu:pC52qem1t4kj0uColJWXM3HTRTJLAQO7PvY6OsjL-Iw', '2023-06-08 11:09:52.052545'),
('debjmiyiyznx3dy0dmffm0eazgapxfxa', '.eJxVjDEPgjAQRv9LZ0Na6HmtowmjcXImV3qXEoESkEXjfxcTBl3f9973Ug2tj9SsC89NF9VJGasOvzBQe-fxuzxzyjRNxU6KeqCuv863zRpp4EuO3J93--8i0ZK2vgVTOh08WUEroA1SEASWEHXpKwOiyWGFXssROXoIJB4dRwIThVm9P6NpOa8:1q2Dws:L5Tj7D6zTj4cOr4z9XOJBnFqb9XbmcT3OvMJkHzZLlE', '2023-06-08 16:36:22.183310'),
('dero96ibov3w3e1flo5s8u3hr0xoffa7', '.eJxVjDEPgjAQRv9LZ0N6R4-CowmjcXJurr2aEoESkEXjfxcTBl3f9973Uo7XR3LrEmfXiToqIHX4hZ7DPY7f5ZlT5mkqdlK0A3f9Zb5u1shDPGeJ_Wm3_y4SL2nrS8GA2FRiKqEbcqOBAhGVFoJBNgh1AzX5MghFEzRqYO2j9RYEtIh6fwB_OjhY:1pzBPL:MRs3s3ZrSDzArXmywWvfFGFBbZXibmRIY9C1q3h83N8', '2023-05-31 07:17:11.996554'),
('et9xvidifi3yxhywkl6tgjdy9u21joca', '.eJxVjMEOwiAQRP-Fs2koywp6NPFoPHkmCyyhsS1Nay8a_11MetA5vnkzL-FofWS3Ljy7LoqjUErsfqGncOfx2zxLLjRNzUaa80Bdf51v1Rpp4EuJ3J82--8i05LrXmPUIaDkBCmiTcGwBt8aQCmjT3ZfIwMS-xYosg0KjLUHrVApIATx_gCyEjjZ:1q6mpR:6wcc9-KjGI31OAYETpc37spabwqIQoU0AnA_N3GhSbI', '2023-06-21 06:39:33.158792'),
('fyo0jpv319ndg9qx6gsss56qnche9aj1', '.eJxVjDEPgjAQRv9LZ0N6VeDO0cTRODk316OXEoESkEXjfxcTBl3f9973Mp6XR_LLHCffNuZoAM3uFwaWexy-yzOnzONYbKQ499x21-m2WgP38ZKb2J02--8i8ZzW3lUaDrUSEaqCcKCSUbQEhwRq91BCZaUSCWBrJ9YiNiSxdhGcDUjm_QGkgTi4:1q4Frw:xoK5HUSnIl0A3mipTVwwfd2TTmLrwMAgZ0HBJ0_m6t8', '2023-06-14 07:03:40.293301'),
('h05qqbikzpogy4ezua2hhv6lmwzpii2k', '.eJxVjD0PwiAURf8Ls2l8QPlwNOlonJzJAx6hsS1NaxeN_11MOuh4zz33vpjD7ZHdttLi-shODNjhl3kMd5q-xbPkgvPc7KTpRuyH63Kr1oQjXUqk4bzbfxcZ11z3Aq3UAY0ilDYGrzABkOf8aHzg2EajSdSkW281pCQEJeAUA4ACMpK9P5LJOSs:1q28Fm:VSnJ1lcXBLEjGVES-3izRPSuoVRoqEIO7RFjhJsyUT4', '2023-06-08 10:31:30.152291'),
('iakpq5m4aytpia9uxoil2nyczblu63xz', '.eJxVjDEPgjAQRv9LZ0NoOejhaOJonJzJXXtNiUAJyKLxv1sTBl3f9973Uh1tj9htqyxd79VR6UYdfiGTu8v0XZ4pJprnYifFeaR-uC63bE00yiV5GU67_XcRaY2596IFjfV1IGCGBtsSBG1bOmZXeQxUBqo0MiA1YCtkh2DRGAo15Uq9P73oOao:1qCZwJ:e43TlspU_kYI7M7IRReTYXSWgNkTRdSzCa6dYiStAA8', '2023-07-07 06:06:35.441385'),
('iobwas28g1hj7x5v7mtpttguz9yfhohw', '.eJxVjDEPgjAQRv9LZ0Na6HmtowmjcXImV3qXEoESkEXjfxcTBl3f9973Ug2tj9SsC89NF9VJGasOvzBQe-fxuzxzyjRNxU6KeqCuv863zRpp4EuO3J93--8i0ZK2vgVTOh08WUEroA1SEASWEHXpKwOiyWGFXssROXoIJB4dRwIThVm9P6NpOa8:1qCb76:wyLq7O0KUoF04f8aBd6oUbCMeM7qo3_OlBO6BzBUIM4', '2023-07-07 07:21:48.377971'),
('ky3lj69ns7j9t8ynjyzikbb211szwulg', '.eJxVjL0OgjAURt-lsyGl9OfiaOJonJyb29vblAiUgCwa311MGHQ93znfS3hcH9mvC8--i-IotDj8soB05_E7PEsuOE3VTqrzgF1_nW-bNeLAlxK5P-3230XGJW-9cspAG7RRYFkiJuDYajaNjtxQpDo5yWCDc2RljUgKZQBIYBNH0o14fwCB4jl1:1qBV8v:C5ShQMAhQ5c5dMS6xx0fSnvZ_JXvYmKO0wD1izAQLyQ', '2023-07-04 06:47:09.116851'),
('mc8bcey2xn7ua15g6ao4no45yqa4w15z', '.eJxVjL0OgjAURt-lsyFt6a-jiaNxcm7ubW9TIlACsmh8dzFh0PV853wvFmB9lLAuNIcusSNr2eGXIcQ7jd_hWUuFaWp20pwH6PrrfNusEQa61ET9abf_LgosZeuN17pNXENWZLM3SmIrjIBoHHcye6etwYxCU8IEglsVnY5IlNEZBZK9P3BGORU:1pyWyj:GgYWNKbi4Au6c7aCPvfQMoLy_lVFp-2exGoKUle2gxc', '2023-05-29 12:07:01.935025'),
('mliu9469i6in6x94uywvd06f3ryunv9p', '.eJxVjL0OgjAURt-lsyFtL_TH0YTRODk3l95rSgRKQBaN725NGHQ93znfSwTcHilsKy-hJ3EUWhx-WYfxztN3eOaUcZ6rnVTtiP1wWa7FmnDkcyYeTrv9d5FwTaX3bAHJIUhw0Xe1MdRIB0ai8gqUtEY3xmvJviOSpDzH2hYPrCJzYyfeH1c1N_Q:1pzc0l:2ljSqfrMM2kVZuZa8gfE4ga4J4oOP-lA_H2UxrdgNug', '2023-06-01 11:41:35.953938'),
('p0eorvuunwyg2a1s7by1gov1edrjog1o', '.eJxVjL0OgjAURt-lsyGl9OfiaOJonJyb29vblAiUgCwa311MGHQ93znfS3hcH9mvC8--i-IotDj8soB05_E7PEsuOE3VTqrzgF1_nW-bNeLAlxK5P-3230XGJW-9cspAG7RRYFkiJuDYajaNjtxQpDo5yWCDc2RljUgKZQBIYBNH0o14fwCB4jl1:1q4JTj:GhpAs-SrFzsolCL0J7L1gKxtxxbN_-489iuEcvAD7Vo', '2023-06-14 10:54:55.665128'),
('rosazlurmd5xqacvuaywnns18fy67pnz', '.eJxVjD0PwiAURf8Ls2l8QPlwNOlonJzJAx6hsS1NaxeN_11MOuh4zz33vpjD7ZHdttLi-shODNjhl3kMd5q-xbPkgvPc7KTpRuyH63Kr1oQjXUqk4bzbfxcZ11z3Aq3UAY0ilDYGrzABkOf8aHzg2EajSdSkW281pCQEJeAUA4ACMpK9P5LJOSs:1pwiRD:Yu0X8ZwFR7hku1FWiA-IbEC_ihx_WYbYL8M2xSxLTEc', '2023-05-24 11:56:55.280003'),
('stnr5hep32rhpzeb4j7cbe47obrlija5', '.eJxVjDEPgjAQRv9LZ0PKceVSRxNH4-Tc9NprSgRKQBaN_11MGHR933vfSzm_PrJbF5ldF9VRQa0Ov5B9uMv4XZ4lFz9N1U6q8-C7_jrfNmv0g1xKlP60238X2S9565nIRgGhpk0aEyEBGcAGLVsykTRqjoCtCUBaMDQkgesEqCFYAVbvD4CcOFA:1q2P8H:LSLUzSTBhzcXnthsqLLwl49Ne7poJENSH2Hb2nGdc8M', '2023-06-09 04:32:53.287529'),
('wiy00g99dv595u86fd16lcffu4f7i4ri', '.eJxVjDEPgjAQRv9LZ0N6VeDO0cTRODk316OXEoESkEXjfxcTBl3f9973Mp6XR_LLHCffNuZoAM3uFwaWexy-yzOnzONYbKQ499x21-m2WgP38ZKb2J02--8i8ZzW3lUaDrUSEaqCcKCSUbQEhwRq91BCZaUSCWBrJ9YiNiSxdhGcDUjm_QGkgTi4:1qCGyB:YAClzraCRhHG5HEXhiB4LWHPs8kx2LcrQNlVH2h1ies', '2023-07-06 09:51:15.633894'),
('wppikcj6x72tsk4v0odfqh8q6bcbf44e', '.eJxVjDEPgjAQRv9LZ0PKceVSRxNH4-Tc9NprSgRKQBaN_11MGHR933vfSzm_PrJbF5ldF9VRQa0Ov5B9uMv4XZ4lFz9N1U6q8-C7_jrfNmv0g1xKlP60238X2S9565nIRgGhpk0aEyEBGcAGLVsykTRqjoCtCUBaMDQkgesEqCFYAVbvD4CcOFA:1q2ROI:Mo2jFj-DbyX0yYgxM_ugkw0kBfwqUBqE3H4iQ7WjBUw', '2023-06-09 06:57:34.788570'),
('xac5t2jjav6dig0ry08zw2ee0xcyo7el', '.eJxVjL0OgjAURt-lsyGl9OfiaOJonJyb29vblAiUgCwa311MGHQ93znfS3hcH9mvC8--i-IotDj8soB05_E7PEsuOE3VTqrzgF1_nW-bNeLAlxK5P-3230XGJW-9cspAG7RRYFkiJuDYajaNjtxQpDo5yWCDc2RljUgKZQBIYBNH0o14fwCB4jl1:1q28tT:jTF2RE74Jzt36wYDjcVFOg8yo5sqTXsj_2CrB4IQWD8', '2023-06-08 11:12:31.568876'),
('zw7qdf87ix8lq22269enmw5idjgkegpf', '.eJxVjL0OgjAURt-lsyGlf7d1NHE0Ts7NbW-bEoESkEXju4sJg67nO-d7MY_ro_h1SbPviB1ZC-zwCwPGexq_y7OWitPU7KQ5D9j11_m2WSMO6VIp9afd_rsouJStdwYigLVGE1dIWjg0AtCaxAGFAsNtcJayzUFzHlvJDUmJSoeQXdLA3h-A7Thm:1q1fro:NONie_ncDNT_6TBDTiCo8dMW6EYFST3R2IiNsrvrwdo', '2023-06-07 04:12:52.649062');

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_account`
--

CREATE TABLE `zohoapp_account` (
  `id` bigint(20) NOT NULL,
  `accountType` varchar(255) NOT NULL,
  `accountName` varchar(255) NOT NULL,
  `accountCode` varchar(255) NOT NULL,
  `description` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zohoapp_account`
--

INSERT INTO `zohoapp_account` (`id`, `accountType`, `accountName`, `accountCode`, `description`) VALUES
(1, 'marketing', 'sales ac', '859658', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_additem`
--

CREATE TABLE `zohoapp_additem` (
  `id` bigint(20) NOT NULL,
  `type` longtext NOT NULL,
  `Name` longtext NOT NULL,
  `date` datetime(6) NOT NULL,
  `s_desc` longtext NOT NULL,
  `p_desc` longtext NOT NULL,
  `creat` varchar(255) NOT NULL,
  `s_price` varchar(255) NOT NULL,
  `p_price` longtext NOT NULL,
  `satus` longtext NOT NULL,
  `interstate` varchar(255) NOT NULL,
  `intrastate` varchar(255) NOT NULL,
  `purchase_id` bigint(20) NOT NULL,
  `sales_id` bigint(20) NOT NULL,
  `unit_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zohoapp_additem`
--

INSERT INTO `zohoapp_additem` (`id`, `type`, `Name`, `date`, `s_desc`, `p_desc`, `creat`, `s_price`, `p_price`, `satus`, `interstate`, `intrastate`, `purchase_id`, `sales_id`, `unit_id`, `user_id`) VALUES
(1, 'Goods', 'item1', '2023-05-10 05:06:55.500873', 'egafweg', 'gergdfg', 'Created bynamedummy171@gmail.com', '1200', '1300', 'active', 'IGST18[18%]', 'GST12[12%]', 1, 1, 1, 1),
(7, 'Goods', 'santhoor', '2023-05-15 10:16:14.955073', 'bhjdkslk', 'ghJDN', 'Created byaambro', '1000', '950', 'active', 'none', 'none', 1, 2, 1, 14),
(8, 'Goods', 'pepsi', '2023-05-17 10:29:44.130387', 'hcggshkcdjkl', 'ghygachn', 'Created byaambro', '900', '800', 'active', 'none', 'none', 1, 2, 2, 14),
(9, 'Goods', 'cheap', '2023-05-22 07:03:25.851375', 'vgjsxnk.', 'tfysgjajb', 'Created byaambro', '950', '900', 'active', 'IGST0[0%]', 'GST5[5%]', 8, 6, 4, 14),
(10, 'Goods', 'gas', '2023-06-05 11:27:30.921828', 'vhbjjb', 'vjjklk', 'Created byaambro', '1200', '1000', 'active', 'none', 'none', 4, 6, 5, 14),
(11, 'Goods', 'Pen', '2023-06-08 14:51:58.555583', 'dfgfd', 'dfgfdg', 'Created bynamedummy171@gmail.com', '100', '100', 'active', 'IGST0[0%]', 'GST0[0%]', 2, 2, 1, 1),
(12, 'Goods', 'Perfume', '2023-06-09 10:04:52.140772', 'tddgj', 'gjhuhug', 'Created byaambro', '700', '500', 'active', 'IGST5[5%]', 'GST5[5%]', 6, 6, 1, 14),
(13, 'Goods', 'Mirror', '2023-06-09 10:05:50.309484', 'tddgj', 'gjhuhug', 'Created byaambro', '1200', '1000', 'active', 'IGST5[5%]', 'GST5[5%]', 6, 6, 3, 14),
(14, 'Goods', 'Fancy items', '2023-06-12 12:36:15.607216', 'fghkl', 'fygjhbjkvvc', 'Created byaambro', '1000', '900', 'active', 'IGST5[5%]', 'GST5[5%]', 10, 8, 3, 14),
(15, 'Goods', 'rgg', '2023-06-20 06:48:53.415796', 'gedr', 'srhzehr', 'Created byuser@gmail.com', '1200', '1300', 'active', 'IGST5[5%]', 'GST12[12%]', 1, 1, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_bank`
--

CREATE TABLE `zohoapp_bank` (
  `id` bigint(20) NOT NULL,
  `acc_type` varchar(220) DEFAULT NULL,
  `bank_name` varchar(220) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zohoapp_bank`
--

INSERT INTO `zohoapp_bank` (`id`, `acc_type`, `bank_name`, `user_id`) VALUES
(1, 'bank', 'vijaya', 1),
(2, 'bank', 'fdgfd', 1);

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_banking`
--

CREATE TABLE `zohoapp_banking` (
  `id` bigint(20) NOT NULL,
  `name` varchar(220) DEFAULT NULL,
  `alias` varchar(220) DEFAULT NULL,
  `acc_type` varchar(220) DEFAULT NULL,
  `ac_holder` varchar(220) DEFAULT NULL,
  `ac_no` varchar(220) DEFAULT NULL,
  `ifsc` varchar(220) DEFAULT NULL,
  `swift_code` varchar(220) DEFAULT NULL,
  `bnk_name` varchar(220) DEFAULT NULL,
  `bnk_branch` varchar(220) DEFAULT NULL,
  `chq_book` varchar(220) DEFAULT NULL,
  `chq_print` varchar(220) DEFAULT NULL,
  `chq_config` varchar(220) DEFAULT NULL,
  `mail_name` varchar(220) DEFAULT NULL,
  `mail_addr` longtext,
  `mail_country` varchar(220) DEFAULT NULL,
  `mail_state` varchar(220) DEFAULT NULL,
  `mail_pin` varchar(220) DEFAULT NULL,
  `bd_bnk_det` longtext,
  `bd_pan_no` varchar(220) DEFAULT NULL,
  `bd_reg_typ` varchar(220) DEFAULT NULL,
  `bd_gst_no` varchar(220) DEFAULT NULL,
  `bd_gst_det` varchar(220) DEFAULT NULL,
  `opening_bal` int(11) DEFAULT NULL,
  `opening_blnc_type` varchar(220) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zohoapp_banking`
--

INSERT INTO `zohoapp_banking` (`id`, `name`, `alias`, `acc_type`, `ac_holder`, `ac_no`, `ifsc`, `swift_code`, `bnk_name`, `bnk_branch`, `chq_book`, `chq_print`, `chq_config`, `mail_name`, `mail_addr`, `mail_country`, `mail_state`, `mail_pin`, `bd_bnk_det`, `bd_pan_no`, `bd_reg_typ`, `bd_gst_no`, `bd_gst_det`, `opening_bal`, `opening_blnc_type`, `user_id`) VALUES
(2, 'ATHL', 'ATHL', 'Bank', 'Nithya', 'FBI007645176', 'FBIO0122', '', 'FEDERAL BANK LTD', 'Kalluvathukkal', 'No', 'No', 'No', '', '', '', '', '', '', '', 'Regular', '', 'No', 0, 'Cr', 14),
(3, 'cb gyugy', '', NULL, 'Harijith', 'SBI6479G8674', 'SBI689000', '', 'STATE BANK OF INDIA', '', 'Yes', 'No', 'No', 'harijith', 'hari Bhavan', 'India', 'Kerala', '691508', '', '', 'Regular', '', 'No', 100000, 'Cr', 14),
(4, 'hj', 'jkkjs', 'Credit Card', 'Sreejith', 'HDFC56778U89', 'HDFC54T7Y', '', 'HDFC BANK LTD', 'PARIPPALLY', 'No', 'No', 'No', '', '', '', '', '', '', '', 'Regular', '', 'No', 50000, 'Cr', 14),
(5, '', '', NULL, '', '', '', '', 'not applicable', '', 'No', 'No', 'No', '', '', '', '', '', '', '', 'Regular', '', 'No', 0, 'Cr', 14),
(6, 'cc', 'cc', 'Credit Card', 'Hari', '2345678990976', 'SBI067EG', '', 'STATE BANK OF INDIA', 'Kollam', 'Yes', 'No', 'No', '', '', 'India', '', '', '', '', 'Unregistered', '', 'No', 70000, 'Cr', 14),
(7, 'Saiju Sunny', 'Saiju', 'Bank', 'ac holder', '1111111111', 'ifsc', 'sw code', 'UNITED BANK OF INDIA', 'branch name', 'No', 'No', 'No', 'Saiju Sunny', 'Thumpunkal (H)', 'IN', 'Ladakh', '682312', 'sadasda', 'sdsadsadsadsa', 'Regular', 'fdggdf', 'No', 2000, 'Cr', 1),
(8, 'ty', 'hv', 'Bank', 'amal', '346578973455', 'HDFC556', '', 'BANK OF INDIA', 'Kollam', 'No', 'No', 'No', '', '', 'IN', 'Kerala', '', '', '', 'Regular', '', 'No', 0, 'Cr', 14);

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_challanitems`
--

CREATE TABLE `zohoapp_challanitems` (
  `id` bigint(20) NOT NULL,
  `item_name` varchar(100) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `rate` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `tax_percentage` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `chellan_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zohoapp_challanitems`
--

INSERT INTO `zohoapp_challanitems` (`id`, `item_name`, `quantity`, `rate`, `discount`, `tax_percentage`, `amount`, `chellan_id`) VALUES
(8, 'item1', 1, 1300, 0, 18, 1300, 4),
(10, 'cheap', 5, 900, 0, 5, 4500, 6),
(13, 'santhoor', 6, 950, 500, 12, 5200, 7),
(19, 'Pen', 1, 100, 0, 18, 100, 5),
(20, 'Pen', 0, 100, 0, 0, 0, 5),
(21, 'Pen', 1, 100, 0, 18, 100, 9),
(24, 'Fancy items', 4, 900, 0, 5, 3600, 11),
(25, 'cheap', 2, 900, 0, 0, 1800, 11),
(26, 'Fancy items', 8, 1000, 1000, 0, 7000, 12),
(27, 'Mirror', 2, 1000, 0, 0, 2000, 10),
(28, 'Fancy items', 1, 1000, 0, 0, 1000, 10),
(29, 'item1', 1, 100, 0, 18, 100, 13),
(30, 'item1', 1, 100, 0, 18, 100, 14),
(31, 'Fancy items', 3, 1000, 0, 18, 3000, 15);

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_comments_table`
--

CREATE TABLE `zohoapp_comments_table` (
  `id` bigint(20) NOT NULL,
  `comment` longtext NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `vendor_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zohoapp_comments_table`
--

INSERT INTO `zohoapp_comments_table` (`id`, `comment`, `user_id`, `vendor_id`) VALUES
(1, 'dddddddddddddddddddddddddddd', 16, 2),
(2, ' ggggggggggg', 16, 2),
(7, ' ygj ugglkh g', 14, 9),
(8, ' hfvgj gigubh u', 14, 5);

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_company_details`
--

CREATE TABLE `zohoapp_company_details` (
  `id` bigint(20) NOT NULL,
  `contact_number` varchar(100) DEFAULT NULL,
  `company_name` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `pincode` int(11) DEFAULT NULL,
  `company_email` varchar(255) DEFAULT NULL,
  `business_name` varchar(255) DEFAULT NULL,
  `company_type` varchar(255) DEFAULT NULL,
  `industry_type` varchar(255) DEFAULT NULL,
  `profile_pic` varchar(100) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zohoapp_company_details`
--

INSERT INTO `zohoapp_company_details` (`id`, `contact_number`, `company_name`, `address`, `city`, `state`, `pincode`, `company_email`, `business_name`, `company_type`, `industry_type`, `profile_pic`, `user_id`) VALUES
(1, '65342114', 'Altos Tech', NULL, 'None', 'Kerala', 682312, 'None', 'None', 'None', NULL, 'image/patient/avatar-12_Gp0k8Pp_lowoTMI.png', 1),
(2, '7902801967', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 2),
(3, '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 3),
(4, '56768654', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 4),
(5, '2575702784', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 5),
(6, '99985634572', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 6),
(7, '+918281808492', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 7),
(8, '+918281808492', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 8),
(9, '8848937577', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 9),
(10, '9544833774', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 10),
(11, '+918281808492', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 11),
(12, '9995798365', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 12),
(13, '7356144326', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 13),
(14, '7345672098', 'Aambro Pvt Ltd.', NULL, 'Trivandrum', 'Kerala', 691578, 'aambro99@gmail.com', 'aambro', 'industrial', NULL, 'image/patient/Screenshot_1021.png', 14),
(15, '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 15),
(16, '9961665433', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 16),
(17, '9526860373', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 17),
(18, '8590481445', 'Altos tech', NULL, 'Kochi', 'Kerala', 6733077, 'altos@gmail.com', 'Altos', 'I T', NULL, '', 18),
(19, '12345', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 19),
(20, '7856432567', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 20),
(21, '9048289199', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 21),
(22, '2342342345', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 22);

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_contact_person_table`
--

CREATE TABLE `zohoapp_contact_person_table` (
  `id` bigint(20) NOT NULL,
  `salutation` varchar(25) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `work_phone` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `skype_number` varchar(50) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `department` varchar(50) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `vendor_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zohoapp_contact_person_table`
--

INSERT INTO `zohoapp_contact_person_table` (`id`, `salutation`, `first_name`, `last_name`, `email`, `work_phone`, `mobile`, `skype_number`, `designation`, `department`, `user_id`, `vendor_id`) VALUES
(17, 'Mr', '', '', '', '', '', '', '', '', 21, 8),
(18, 'Mr', '', '', '', '', '', '', '', '', 14, 9),
(26, 'Mr', '', '', '', '2275155', '9961665433', '', '', '', 16, 11),
(27, 'Mr', '', '', '', '2275155', '9605361879', '', '', '', 16, 11),
(33, 'Mr', '', '', '', '', '', '', '', '', 14, 14),
(37, 'Mr', 'nithin', 'vijay', 'a@gmail.com', '2275155', '9605361879', '9605361879', 'gm', 'sales ', 16, 2),
(38, 'Mr', 'dddd', 'dddd', 'a@gmail.com', '2275155', '9605361879', '9605361879', 'gm', 'sales', 16, 2),
(39, 'Mr', '', '', '', '', '', '', '', '', 14, 16),
(40, 'Mr', '', '', '', '', '', '', '', '', 14, 5);

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_customer`
--

CREATE TABLE `zohoapp_customer` (
  `id` bigint(20) NOT NULL,
  `customerName` varchar(100) DEFAULT NULL,
  `customerType` varchar(100) DEFAULT NULL,
  `companyName` varchar(100) DEFAULT NULL,
  `customerEmail` varchar(100) DEFAULT NULL,
  `customerWorkPhone` varchar(100) DEFAULT NULL,
  `customerMobile` varchar(100) DEFAULT NULL,
  `skype` varchar(100) DEFAULT NULL,
  `designation` varchar(100) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `GSTTreatment` varchar(100) DEFAULT NULL,
  `placeofsupply` varchar(100) DEFAULT NULL,
  `Taxpreference` varchar(100) DEFAULT NULL,
  `currency` varchar(100) DEFAULT NULL,
  `OpeningBalance` int(11) DEFAULT NULL,
  `PaymentTerms` varchar(100) DEFAULT NULL,
  `PriceList` varchar(100) DEFAULT NULL,
  `PortalLanguage` varchar(100) DEFAULT NULL,
  `Facebook` varchar(100) DEFAULT NULL,
  `Twitter` varchar(100) DEFAULT NULL,
  `Attention` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `Address1` varchar(100) DEFAULT NULL,
  `Address2` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `zipcode` varchar(100) DEFAULT NULL,
  `phone1` varchar(100) DEFAULT NULL,
  `fax` varchar(100) DEFAULT NULL,
  `CPsalutation` varchar(100) DEFAULT NULL,
  `Firstname` varchar(100) DEFAULT NULL,
  `Lastname` varchar(100) DEFAULT NULL,
  `CPemail` varchar(100) DEFAULT NULL,
  `CPphone` varchar(100) DEFAULT NULL,
  `CPmobile` varchar(100) DEFAULT NULL,
  `CPskype` varchar(100) DEFAULT NULL,
  `CPdesignation` varchar(100) DEFAULT NULL,
  `CPdepartment` varchar(100) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zohoapp_customer`
--

INSERT INTO `zohoapp_customer` (`id`, `customerName`, `customerType`, `companyName`, `customerEmail`, `customerWorkPhone`, `customerMobile`, `skype`, `designation`, `department`, `website`, `GSTTreatment`, `placeofsupply`, `Taxpreference`, `currency`, `OpeningBalance`, `PaymentTerms`, `PriceList`, `PortalLanguage`, `Facebook`, `Twitter`, `Attention`, `country`, `Address1`, `Address2`, `city`, `state`, `zipcode`, `phone1`, `fax`, `CPsalutation`, `Firstname`, `Lastname`, `CPemail`, `CPphone`, `CPmobile`, `CPskype`, `CPdesignation`, `CPdepartment`, `user_id`) VALUES
(1, 'name12', NULL, 'dfvgbhnjm', 'namedummy171@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'kerala', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'india', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(2, 'name12', NULL, 'dfvgbhnjm', 'namedummy171@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'kerala', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'kerala', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4),
(3, 'customer1', NULL, 'PKT trading', 'muhammedashiqva@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kerala', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kerala', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3),
(4, 'rr', NULL, 'erfe', 'muhammedashiqva@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kerala', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kerala', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3),
(5, 'Boost', NULL, 'techon trading', 'muhaswalih123@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kerala', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kerala', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3),
(6, 'customer 12', NULL, 'dfvgbhnjm', '123@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'karnataka', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'karnataka', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4),
(7, 'customer 33', NULL, 'dfvgbhnjm', 'qwe@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'karnataka', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'karnataka', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4),
(8, 'customer44', NULL, 'dfvgbhnjm', 'qwe@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'kerala', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'kerala', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4),
(9, 'customer kerala', NULL, 'dfvgbhnjm', '123@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'kerala', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'kerala', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4),
(10, 'customer thamilnadu', NULL, 'dfvgbhnjm', 'ghjk@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'thamilnadu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'thamilnadu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4),
(11, 'abc', NULL, 'dfvgbhnjm', '123@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'gdg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4),
(12, 'xyz', NULL, '', '123@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4),
(13, 'nadhu', NULL, 'aambro', 'nadhu@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'kerala', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'kerala', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13),
(14, 'Shyn', NULL, 'nscompany', 'shyn@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'kerala', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'kerala', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13),
(15, 'Neethu', NULL, 'neethu ', 'neethukvkl@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'kerala', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'kerala', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14),
(16, 'kerala customer', NULL, 'dfvgbhnjm', '123@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'kerala', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'kerala', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4),
(17, 'cust none', NULL, '', '123@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4),
(18, 'Mr.nadhu jay', 'Individual', 'Alto', NULL, NULL, NULL, NULL, NULL, NULL, 'www.nadhu.com', 'Registered Business-Composition Business that is registered under the Composition scheme\r\n          ', 'volvo', 'Taxable', 'value', 10000, '3', 'select', 'ENGLISH', '', '', '', 'value', ' ', '    ', '', '', '', '', '', 'Mr.', '', '', '', '', '', '', '', '', 14),
(19, 'aq', NULL, 'techon trading', 'muhammedashiqva@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kerala', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kerala', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3),
(20, 'ddd', NULL, 'PKT trading', 'muhammedashiqva@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'None', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3),
(21, 'Roja', NULL, 'Sreekrishna company', 'roja123@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Tamilnadu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'tamilnadu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14),
(22, 'Mr.Govind  Raj', 'Business', 'Gokulz', NULL, NULL, NULL, NULL, NULL, NULL, 'www.gokul.in', 'Unregistered Business-not Registered under GST', 'volvo', 'Taxable', 'value', 20000, NULL, 'select', 'ENGLISH', '', '', '', 'value', ' ', '    ', '', '', '', '', '', 'Mr.', '', '', '', '', '', '', '', '', 14),
(23, 'Saiju Sunny', 'Business', '', 'saijusunny1301@gmail.com', NULL, '+918281808492', NULL, NULL, NULL, '', 'value', 'Kerala', 'Taxable', 'Indian Rupee', 0, '', 'select', 'select', '', '', '', 'India', ' ', '    ', '', '', '', '', '', 'Mr.', '', '', '', '', '', '', '', '', 1),
(24, 'Mr.Saiju fdgfd', 'Business', '', 'saijusunny1301@gmail.com', NULL, '', NULL, NULL, NULL, '', 'value', 'Bihar', 'Taxable', 'Indian Rupee', 0, '', 'select', 'select', '', '', '', 'India', ' ', '    ', '', '', '', '', '', 'Mr.', '', '', '', '', '', '', '', '', 1),
(25, 'Mr.llll lll', 'Business', 'fdgfdg', '', NULL, '', NULL, NULL, NULL, '', 'value', 'Andhra Predhesh', 'Taxable', 'Indian Rupee', 0, '', 'select', 'select', '', '', '', 'India', ' ', '    ', '', '', '', '', '', 'Mr.', '', '', '', '', '', '', '', '', 1),
(26, 'Mr.Nayana Babu', 'Business', 'NB Motors', 'nayana123@gmail.com', NULL, '9997654323', NULL, NULL, NULL, 'www.nayana.in', 'Consumer- A customer who is a regular Consumer', 'Kerala', 'Taxable', 'Indian Rupee', 0, '', 'select', 'ENGLISH', '', '', '', 'India', ' ', '    ', '', '', '', '', '', 'Mr.', '', '', '', '', '', '', '', '', 14),
(27, 'Mr.Krishna Nair', 'Business', 'Kera Factor', 'krishna99@gmail.com', NULL, '9995798356', NULL, NULL, NULL, 'www.krish.in', 'Registered Business-Regular Business that is registered under GST', 'Kerala', 'Taxable', 'Indian Rupee', 20000, '', 'select', 'select', '', '', '', 'India', ' ', '    ', '', '', '', '', '', 'Mr.', '', '', '', '', '', '', '', '', 14),
(28, 'Mr.Shani Alex', 'Business', 'alexa', 'alexa@gmail.com', NULL, '9997543224', NULL, NULL, NULL, 'www.alexa.in', 'Unregistered Business-not Registered under GST', 'Tamil Nadu', 'Taxable', 'Indian Rupee', 50000, '', 'select', 'select', '', '', '', 'India', ' ', '    ', '', '', '', '', '', 'Mr.', '', '', '', '', '', '', '', '', 14),
(29, '', 'Business', '', '', NULL, '', NULL, NULL, NULL, '', 'value', '', 'Taxable', 'Indian Rupee', 0, '', 'select', 'select', '', '', '', 'India', ' ', '    ', '', '', '', '', '', 'Mr.', '', '', '', '', '', '', '', '', 18),
(30, 'Mr.customer 100', 'Business', 'ato', NULL, NULL, NULL, NULL, NULL, NULL, '', 'Registered Business-Regular Business that is registered under GST', 'volvo', NULL, 'value', 233, '1', 'select', 'select', '', '', '', 'value', ' ', '    ', '', '', '', '', '', 'Mr.', '', '', '', '', '', '', '', '', 18),
(31, 'Mr.Rajeev Raj', 'Business', 'Rajeev Products', NULL, NULL, NULL, NULL, NULL, NULL, 'www.rajeev.in', 'Consumer- A customer who is a regular Consumer', '[KA]-Karnataka', 'Taxable', 'value', 90000, '1', 'select', 'ENGLISH', '', '', '', 'value', ' ', '    ', '', '', '', '', '', 'Mr.', '', '', '', '', '', '', '', '', 14);

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_deliverychellan`
--

CREATE TABLE `zohoapp_deliverychellan` (
  `id` bigint(20) NOT NULL,
  `customer_name` varchar(100) DEFAULT NULL,
  `customer_mailid` varchar(100) DEFAULT NULL,
  `chellan_no` varchar(100) DEFAULT NULL,
  `reference` varchar(100) DEFAULT NULL,
  `chellan_date` date DEFAULT NULL,
  `chellan_type` varchar(100) DEFAULT NULL,
  `sub_total` double DEFAULT NULL,
  `igst` double DEFAULT NULL,
  `sgst` double DEFAULT NULL,
  `cgst` double DEFAULT NULL,
  `tax_amount` double DEFAULT NULL,
  `shipping_charge` double DEFAULT NULL,
  `adjustment` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `customer_notes` varchar(250) DEFAULT NULL,
  `terms_conditions` varchar(250) DEFAULT NULL,
  `attachment` varchar(100) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zohoapp_deliverychellan`
--

INSERT INTO `zohoapp_deliverychellan` (`id`, `customer_name`, `customer_mailid`, `chellan_no`, `reference`, `chellan_date`, `chellan_type`, `sub_total`, `igst`, `sgst`, `cgst`, `tax_amount`, `shipping_charge`, `adjustment`, `total`, `status`, `customer_notes`, `terms_conditions`, `attachment`, `user_id`) VALUES
(4, 'Mr.Saiju fdgfd', 'saijusunny1301@gmail.com', '1', '100', '2023-06-08', 'Challan type', 1300, 234, 0, 0, 234, 0, 0, 1534, 'Draft', '', '', '', 1),
(5, 'Saiju Sunny', 'saijusunny1301@gmail.com', '2', '100', '2023-06-09', 'Job Work', 100, 18, 0, 0, 18, 0, 0, 118, 'Draft', '', '', '', 1),
(6, 'Roja', 'roja123@gmail.com', '1', '1', '2023-06-01', 'Job Work', 4500, 225, 0, 0, 225, 1000, 0, 5725, 'Draft', 'sregh', 'fdfhkj yfgym', 'image/Screenshot_43_yctvvrc.png', 14),
(7, 'Mr.Nayana Babu', 'nayana123@gmail.com', '3', '3', '2023-06-08', 'Challan type', 5200, 0, 392, 392, 624, 0, 0, 5824, 'Draft', 'hgfhgv', 'vgbhbj nmmj', '', 14),
(9, 'Saiju Sunny', 'saijusunny1301@gmail.com', '3', '', '2023-06-09', 'Challan type', 100, 0, 9, 9, 18, 0, 0, 118, 'Draft', '', '', '', 1),
(10, 'Mr.Krishna Nair', 'krishna99@gmail.com', '5', '5', '2023-06-12', 'Challan type', 3000, 0, 0, 0, 0, 0, 0, 3000, 'Draft', '', '', '', 14),
(11, 'Mr.Shani Alex', 'alexa@gmail.com', '8', '8', '2023-06-12', 'Others', 5400, 180, 0, 0, 180, 0, 0, 5580, 'Draft', 'dgujlklkm fyuijlkl;', 'fkgjhlkjl guuhi guigkhuhj gguhk', 'image/Screenshot_43_yZfVGxR.png', 14),
(12, 'Neethu', 'neethukvkl@gmail.com', '8', '8', '2023-06-10', 'Others', 7000, 0, 0, 0, 0, 0, 0, 7000, 'Sent', '', '', '', 14),
(13, 'Saiju Sunny', 'saijusunny1301@gmail.com', '4', '555', '2023-06-12', 'Job Work', 100, 0, 9, 9, 18, 0, 0, 118, 'Sent', '', '', '', 1),
(14, 'Mr.Saiju fdgfd', 'saijusunny1301@gmail.com', '5', '10001', '2023-06-13', 'Challan type', 100, 18, 0, 0, 18, 0, 0, 118, 'Send', '', '', '', 1),
(15, 'Mr.Shani Alex', 'alexa@gmail.com', '9', '9', '2023-06-13', 'Others', 3000, 540, 0, 0, 540, 0, 0, 3540, 'Send', '', '', '', 14);

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_doc_upload_table`
--

CREATE TABLE `zohoapp_doc_upload_table` (
  `id` bigint(20) NOT NULL,
  `title` longtext NOT NULL,
  `document` varchar(100) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `vendor_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_estimateitems`
--

CREATE TABLE `zohoapp_estimateitems` (
  `id` bigint(20) NOT NULL,
  `item_name` varchar(100) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `rate` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `tax_percentage` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `estimate_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zohoapp_estimateitems`
--

INSERT INTO `zohoapp_estimateitems` (`id`, `item_name`, `quantity`, `rate`, `discount`, `tax_percentage`, `amount`, `estimate_id`) VALUES
(3, 'item1', 11, 1200, 100, 12, 13100, 1),
(4, 'item2', 13, 560, 150, 12, 7130, 1),
(5, 'item1', 14, 1300, 100, 12, 18100, 2),
(6, 'item2', 15, 550, 150, 12, 8100, 2),
(8, 'Select Items', 0, 0, 0, 0, 0, 4),
(10, 'item11', 1280, 1240, 0, 0, 1587200, 6),
(11, 'item11', 8, 1240, 120, 5, 9800, 5),
(12, 'item11', 10, 1240, 120, 5, 12280, 7),
(13, 'item11', 8, 1240, 120, 5, 9800, 8),
(18, 'item6', 12, 5467, 120, 18, 65484, 11),
(19, 'tyjy', 17, 550, 110, 28, 9240, 11),
(20, 'Select Items', 0, 0, 0, 0, 0, 12),
(21, 'pepsi', 16, 800, 0, 0, 12800, 13),
(24, 'santhoor', 5, 950, 0, 5, 4750, 14),
(25, 'santhoor', 2, 950, 0, 5, 1900, 9),
(26, 'pepsi', 2, 800, 0, 0, 1600, 9),
(27, 'pepsi', 3, 800, 0, 5, 2400, 15),
(28, 'santhoor', 1, 950, 0, 0, 950, 15);

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_estimates`
--

CREATE TABLE `zohoapp_estimates` (
  `id` bigint(20) NOT NULL,
  `customer_name` varchar(100) DEFAULT NULL,
  `estimate_no` varchar(100) DEFAULT NULL,
  `reference` varchar(100) DEFAULT NULL,
  `estimate_date` date DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `sub_total` double DEFAULT NULL,
  `igst` double DEFAULT NULL,
  `sgst` double DEFAULT NULL,
  `cgst` double DEFAULT NULL,
  `tax_amount` double DEFAULT NULL,
  `shipping_charge` double DEFAULT NULL,
  `adjustment` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `customer_notes` varchar(250) DEFAULT NULL,
  `terms_conditions` varchar(250) DEFAULT NULL,
  `attachment` varchar(100) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zohoapp_estimates`
--

INSERT INTO `zohoapp_estimates` (`id`, `customer_name`, `estimate_no`, `reference`, `estimate_date`, `expiry_date`, `sub_total`, `igst`, `sgst`, `cgst`, `tax_amount`, `shipping_charge`, `adjustment`, `total`, `status`, `customer_notes`, `terms_conditions`, `attachment`, `user_id`) VALUES
(1, 'name12', '1', '2334354', '2023-05-26', '2023-06-11', 20230, 2458, 0, 0, 2458, 100, 200, 22988, 'Draft', 'uyjtyf', 'yfbf', 'image/estimate__2_nR2MTCJ.pdf', 1),
(2, 'name12', '2', '66453', '2023-05-10', '2023-06-03', 26200, 3174, 0, 0, 3174, 120, 100, 29594, 'Draft', 'dfsegdrty', 'ythrgefa', 'image/estimate__3.pdf', 1),
(4, 'Select Customer', '4', '', '2023-05-10', '2023-05-10', 0, 0, 0, 0, 0, 0, 0, 0, 'Draft', '', '', '', 1),
(5, 'name12', '4', '345345', '2023-05-11', '2023-05-12', 9800, 496, 0, 0, 496, 213, 121, 10630, 'Draft', '', '', 'image/estimate__4_VkaznYT.pdf', 4),
(6, 'name12', '10', '12', '2023-05-01', '2023-05-30', 1587200, 0, 0, 0, 0, 0, 0, 0, 'Sent', '', '', '', 4),
(7, 'customer 12', '6', '534534', '2023-05-11', '2023-05-20', 12280, 620, 0, 0, 620, 455, 111, 13466, 'Draft', 'wdfserhtjy', 'dfhdh', 'image/estimate__4_7IEzuib.pdf', 4),
(8, 'customer 33', '7', '23432', '2023-05-15', '2023-05-15', 9800, 496, 0, 0, 496, 234, 432, 10962, 'Draft', 'dd', 'fgdfg', 'image/estimate__5.pdf', 4),
(9, 'Mr.nadhu jay', '13', '13', '2023-05-15', '2023-05-15', 3500, 95, 0, 0, 95, 0, 0, 3595, 'Draft', '', '', '', 14),
(11, 'customer 33', '9', '243', '2023-05-17', '2023-05-17', 74724, 8856.54, 0, 0, 14426, 12, 121, 89150, 'Draft', '', '', 'image/estimate__3_A2ZzStn.pdf', 4),
(12, 'Select Customer', '10', '', '2023-05-17', '2023-05-17', 0, 0, 0, 0, 0, 0, 0, 0, 'Sent', '', '', '', 1),
(13, 'Roja', '11', '11', '2023-05-01', '2023-05-20', 12800, 0, 0, 0, 0, 0, 0, 12800, 'Draft', '', '', '', 14),
(14, 'Neethu', '9', '9', '2023-05-05', '2023-05-19', 4750, 237.5, 0, 0, 237.5, 0, 0, 4987.5, 'Draft', '', '', '', 14),
(15, 'Roja', '6', '7', '2023-05-08', '2023-05-16', 3350, 120, 0, 0, 120, 0, 0, 3470, 'Draft', '', '', '', 14);

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_expense`
--

CREATE TABLE `zohoapp_expense` (
  `id` bigint(20) NOT NULL,
  `profile_name` varchar(255) NOT NULL,
  `repeat_every` varchar(50) NOT NULL,
  `start_date` date NOT NULL,
  `ends_on` date NOT NULL,
  `expense_account` varchar(255) NOT NULL,
  `expense_type` varchar(50) NOT NULL,
  `goods_label` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `currency` varchar(10) NOT NULL,
  `paidthrough` varchar(50) NOT NULL,
  `gst` varchar(255) NOT NULL,
  `destination` varchar(255) NOT NULL,
  `tax` varchar(255) NOT NULL,
  `notes` varchar(255) NOT NULL,
  `customername` varchar(255) NOT NULL,
  `vendor_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zohoapp_expense`
--

INSERT INTO `zohoapp_expense` (`id`, `profile_name`, `repeat_every`, `start_date`, `ends_on`, `expense_account`, `expense_type`, `goods_label`, `amount`, `currency`, `paidthrough`, `gst`, `destination`, `tax`, `notes`, `customername`, `vendor_id`) VALUES
(2, 'sanjay m', '6 Months', '2023-05-15', '2023-05-11', 'sales ac', 'services ', '', 10000.00, '', 'NET 45', 'Unregistered Business-not Registered under GST', '[DL]-	Delhi', '12%', 'test', 'Mr.nadhu jay', 8),
(5, 'guhu', 'Month', '2023-05-01', '2023-05-31', 'sales ac', 'services', '', 7000.00, 'INR', 'Due on Receipt', 'Unregistered Business-not Registered under GST', '[KL]-Kerala', '8%', 'ghihlik', 'nadhu', 5);

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_history`
--

CREATE TABLE `zohoapp_history` (
  `id` bigint(20) NOT NULL,
  `date` datetime(6) NOT NULL,
  `message` varchar(255) NOT NULL,
  `p_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_invoice`
--

CREATE TABLE `zohoapp_invoice` (
  `id` bigint(20) NOT NULL,
  `invoice_no` longtext NOT NULL,
  `terms_id` bigint(20) NOT NULL,
  `order_no` int(11) NOT NULL,
  `inv_date` date NOT NULL,
  `due_date` date NOT NULL,
  `igst` longtext NOT NULL,
  `cgst` longtext NOT NULL,
  `sgst` longtext NOT NULL,
  `t_tax` double NOT NULL,
  `subtotal` double NOT NULL,
  `grandtotal` double NOT NULL,
  `cxnote` longtext NOT NULL,
  `file` varchar(100) NOT NULL,
  `terms_condition` longtext NOT NULL,
  `status` longtext NOT NULL,
  `customer_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zohoapp_invoice`
--

INSERT INTO `zohoapp_invoice` (`id`, `invoice_no`, `terms_id`, `order_no`, `inv_date`, `due_date`, `igst`, `cgst`, `sgst`, `t_tax`, `subtotal`, `grandtotal`, `cxnote`, `file`, `terms_condition`, `status`, `customer_id`) VALUES
(1, 'INV-00045', 1, 45, '2023-05-15', '2023-05-30', '887.76', '0.00', '0.00', 869.76, 0, 869.76, 'djgkjvhjkklkjv', '/static/images/alt.jpg', '', 'Save As Draft', 14),
(5, 'INV-00041', 1, 41, '2023-05-01', '2023-05-30', '2257.20', '0.00', '0.00', 2252.2, 1680, 3932.2, 'Being paid', '/static/images/alt.jpg', '', 'Save As Draft', 18),
(6, 'INV-00049', 1, 49, '2023-05-01', '2023-05-15', '1066.56', '0.00', '0.00', 1066.56, 8888, 9954.56, '', '/static/images/alt.jpg', '', 'Save As Draft', 21),
(8, 'INV-00018', 1, 18, '2023-05-01', '2023-05-15', '0.00', '0.00', '0.00', 0, 5000, 5000, '', '/static/images/alt.jpg', '', 'Save As Draft', 18);

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_invoice_item`
--

CREATE TABLE `zohoapp_invoice_item` (
  `id` bigint(20) NOT NULL,
  `product` longtext NOT NULL,
  `quantity` int(11) NOT NULL,
  `hsn` longtext NOT NULL,
  `tax` int(11) NOT NULL,
  `total` double NOT NULL,
  `desc` longtext NOT NULL,
  `rate` longtext NOT NULL,
  `inv_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zohoapp_invoice_item`
--

INSERT INTO `zohoapp_invoice_item` (`id`, `product`, `quantity`, `hsn`, `tax`, `total`, `desc`, `rate`, `inv_id`) VALUES
(12, 'item4', 2, '564367', 12, 8888, 'rgegre', '4444', 6),
(14, 'santhoor', 5, '654675', 0, 5000, 'bhjdkslk', '1000', 8),
(15, 'item2', 3, '123434', 5, 1680, 'defgrthyjuki', '560', 5);

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_mail_table`
--

CREATE TABLE `zohoapp_mail_table` (
  `id` bigint(20) NOT NULL,
  `mail_from` longtext NOT NULL,
  `mail_to` longtext NOT NULL,
  `subject` longtext NOT NULL,
  `content` longtext NOT NULL,
  `mail_date` datetime(6) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `vendor_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zohoapp_mail_table`
--

INSERT INTO `zohoapp_mail_table` (`id`, `mail_from`, `mail_to`, `subject`, `content`, `mail_date`, `user_id`, `vendor_id`) VALUES
(1, 'altostechnologies6@gmail.com', 'nikhilaajayan76@gmail.com', 'dddddddddddddddd', 'ddddddddddddddddddddddddd', '2023-05-18 06:48:39.379302', 16, 2);

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_payment`
--

CREATE TABLE `zohoapp_payment` (
  `id` bigint(20) NOT NULL,
  `term` longtext NOT NULL,
  `days` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zohoapp_payment`
--

INSERT INTO `zohoapp_payment` (`id`, `term`, `days`) VALUES
(1, 'net 15', '15'),
(2, 'due end of month', '60'),
(3, 'net 30', '30');

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_payment_terms`
--

CREATE TABLE `zohoapp_payment_terms` (
  `id` bigint(20) NOT NULL,
  `Terms` varchar(100) DEFAULT NULL,
  `Days` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zohoapp_payment_terms`
--

INSERT INTO `zohoapp_payment_terms` (`id`, `Terms`, `Days`) VALUES
(1, 'net 15', 15),
(2, 'due end of month', 60),
(3, 'net 30', 30),
(4, 'net12', 12);

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_pricelist`
--

CREATE TABLE `zohoapp_pricelist` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `types` varchar(255) NOT NULL,
  `tax` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `mark` varchar(255) NOT NULL,
  `percentage` int(11) NOT NULL,
  `roundoff` varchar(255) NOT NULL,
  `currency` varchar(255) NOT NULL,
  `status` longtext NOT NULL,
  `itemtable_id` bigint(20) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zohoapp_pricelist`
--

INSERT INTO `zohoapp_pricelist` (`id`, `name`, `types`, `tax`, `description`, `mark`, `percentage`, `roundoff`, `currency`, `status`, `itemtable_id`, `user_id`) VALUES
(6, 'pricebook1', 'sales', 'enter', 'guyukj', 'Markdown', 20, 'Never Mind', 'INR', 'active', NULL, 14),
(32, 'intel', 'purchase', 'enter', 'ghk', 'Markup', 0, 'Never Mind', 'INR', 'active', NULL, 17),
(33, 'pricebook16', 'sales', 'Markup or Markdown the item rates by a percentage', 'fgghk gui', 'Markup', 49, 'Never Mind', 'INR', 'active', NULL, 14),
(35, 'pricelist1', 'sales', 'Markup or Markdown the item rates by a percentage', 'nil', 'Markup', 15, 'Nearest Whole Number', 'INR', 'active', NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_purchase`
--

CREATE TABLE `zohoapp_purchase` (
  `id` bigint(20) NOT NULL,
  `Account_type` longtext NOT NULL,
  `Account_name` longtext NOT NULL,
  `Acount_code` longtext NOT NULL,
  `Account_desc` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zohoapp_purchase`
--

INSERT INTO `zohoapp_purchase` (`id`, `Account_type`, `Account_name`, `Acount_code`, `Account_desc`) VALUES
(1, 'purchase', 'purchase1', 'purch123', 'hfhgjg'),
(2, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(3, 'EXPENCES', 'Debit Charge', '', 'Debited Exp'),
(4, 'EXPENCES', 'Labour Charge', '', 'Labour Exp'),
(5, 'EXPENCES', 'Raw Meterials', '', 'Raw Meterials Exp'),
(6, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(7, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(8, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(9, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(10, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(11, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(12, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(13, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(14, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(15, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(16, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(17, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(18, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(19, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(20, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(21, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(22, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(23, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(24, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(25, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(26, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(27, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(28, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(29, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(30, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(31, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(32, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(33, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(34, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(35, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(36, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(37, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(38, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(39, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(40, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(41, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(42, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(43, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(44, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(45, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(46, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(47, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(48, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(49, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(50, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(51, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(52, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(53, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(54, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(55, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(56, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(57, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(58, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(59, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(60, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(61, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(62, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(63, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(64, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(65, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(66, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(67, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(68, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(69, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(70, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(71, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(72, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(73, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(74, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(75, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(76, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(77, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(78, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(79, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(80, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(81, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(82, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(83, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(84, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(85, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(86, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(87, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(88, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(89, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(90, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(91, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(92, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(93, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(94, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(95, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(96, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(97, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(98, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(99, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(100, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(101, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(102, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(103, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(104, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(105, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(106, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(107, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(108, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(109, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(110, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(111, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(112, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(113, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(114, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(115, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(116, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(117, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(118, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(119, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(120, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(121, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(122, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(123, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(124, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(125, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(126, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(127, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(128, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(129, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(130, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(131, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(132, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(133, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(134, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(135, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(136, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(137, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(138, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(139, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(140, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(141, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(142, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(143, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(144, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(145, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(146, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(147, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(148, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(149, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(150, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(151, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(152, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(153, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(154, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(155, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(156, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(157, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(158, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(159, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(160, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(161, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(162, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(163, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(164, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(165, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(166, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(167, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(168, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(169, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(170, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(171, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(172, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(173, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(174, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(175, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(176, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(177, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(178, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(179, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(180, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(181, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(182, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(183, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(184, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(185, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(186, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(187, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(188, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(189, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(190, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(191, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(192, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(193, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(194, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(195, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(196, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(197, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(198, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(199, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(200, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(201, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(202, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(203, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(204, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(205, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(206, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(207, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(208, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(209, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(210, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(211, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(212, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(213, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(214, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(215, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(216, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(217, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(218, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(219, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(220, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(221, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(222, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(223, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(224, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(225, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(226, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(227, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(228, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(229, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(230, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(231, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(232, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(233, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(234, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(235, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp');

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_remarks_table`
--

CREATE TABLE `zohoapp_remarks_table` (
  `id` bigint(20) NOT NULL,
  `remarks` varchar(500) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `vendor_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zohoapp_remarks_table`
--

INSERT INTO `zohoapp_remarks_table` (`id`, `remarks`, `user_id`, `vendor_id`) VALUES
(1, 'sssssssssssssssssssssssssssss', 16, 2),
(4, '', 14, 5),
(7, '', 21, 8),
(8, '', 14, 9),
(11, '', 16, 11),
(14, '', 14, 14),
(16, '', 14, 16);

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_retainerinvoice`
--

CREATE TABLE `zohoapp_retainerinvoice` (
  `id` bigint(20) NOT NULL,
  `retainer_invoice_number` varchar(255) NOT NULL,
  `refrences` varchar(255) NOT NULL,
  `retainer_invoice_date` date NOT NULL,
  `total_amount` varchar(100) NOT NULL,
  `customer_notes` longtext NOT NULL,
  `terms_and_conditions` longtext NOT NULL,
  `is_draft` tinyint(1) NOT NULL,
  `is_sent` tinyint(1) NOT NULL,
  `customer_name_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_retaineritems`
--

CREATE TABLE `zohoapp_retaineritems` (
  `id` bigint(20) NOT NULL,
  `description` longtext NOT NULL,
  `amount` varchar(100) NOT NULL,
  `retainer_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_sales`
--

CREATE TABLE `zohoapp_sales` (
  `id` bigint(20) NOT NULL,
  `Account_type` longtext NOT NULL,
  `Account_name` longtext NOT NULL,
  `Acount_code` longtext NOT NULL,
  `Account_desc` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zohoapp_sales`
--

INSERT INTO `zohoapp_sales` (`id`, `Account_type`, `Account_name`, `Acount_code`, `Account_desc`) VALUES
(1, 'purchase', 'purchase1', 'purch123', 'hfhgjg'),
(2, 'sales', 'sales1', 'sl1223', ''),
(3, 'INCOME', 'General Income', '', 'salesincome'),
(4, 'INCOME', 'Intrest Income', '', 'salesincome'),
(5, 'INCOME', 'Late fee Income', '', 'salesincome'),
(6, 'INCOME', 'Discount Income', '', 'salesincome'),
(7, 'INCOME', 'Other Charges', '', 'salesincome'),
(8, 'INCOME', 'Shipping Charge', '', 'salesincome');

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_salesorder`
--

CREATE TABLE `zohoapp_salesorder` (
  `id` bigint(20) NOT NULL,
  `sales_no` varchar(255) DEFAULT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `sales_date` date DEFAULT NULL,
  `ship_date` date DEFAULT NULL,
  `d_method` longtext,
  `s_person` longtext,
  `igst` longtext,
  `cgst` longtext,
  `sgst` longtext,
  `t_tax` double DEFAULT NULL,
  `subtotal` double DEFAULT NULL,
  `grandtotal` double DEFAULT NULL,
  `cxnote` longtext,
  `file` varchar(100) DEFAULT NULL,
  `terms_condition` longtext,
  `status` longtext,
  `customer_id` bigint(20) DEFAULT NULL,
  `terms_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zohoapp_salesorder`
--

INSERT INTO `zohoapp_salesorder` (`id`, `sales_no`, `reference`, `sales_date`, `ship_date`, `d_method`, `s_person`, `igst`, `cgst`, `sgst`, `t_tax`, `subtotal`, `grandtotal`, `cxnote`, `file`, `terms_condition`, `status`, `customer_id`, `terms_id`) VALUES
(2, 'SO-002', '2', '2023-05-01', '2023-05-31', 'undefined', '', '1629.90', '0.00', '0.00', 1629.9, 32498, 34127.9, 'cghgjkjbygu  huggjbjk ', '/static/images/alt.jpg', 'vhklm ugghiin', 'Save and Send', 18, 3),
(3, 'SO-003', '3', '2023-05-01', '2023-05-15', 'undefined', '', '648.00', '0.00', '0.00', 648, 3600, 4248, 'gujkgb gugh ', '/static/images/alt.jpg', 'iguuh yfudtuiij ugg', 'Save and Send', 15, 1),
(4, 'SO-006', '06', '2023-06-01', '2023-06-25', NULL, NULL, '1758.00', '0.00', '0.00', 300, 6300, 6600, 'jjhbvbnnb', '/static/images/alt.jpg', 'hjjk,', 'Save As Draft', 15, 3);

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_sales_item`
--

CREATE TABLE `zohoapp_sales_item` (
  `id` bigint(20) NOT NULL,
  `product` longtext,
  `quantity` int(11) DEFAULT NULL,
  `hsn` longtext,
  `tax` int(11) DEFAULT NULL,
  `total` double DEFAULT NULL,
  `desc` longtext,
  `rate` longtext,
  `sale_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zohoapp_sales_item`
--

INSERT INTO `zohoapp_sales_item` (`id`, `product`, `quantity`, `hsn`, `tax`, `total`, `desc`, `rate`, `sale_id`) VALUES
(3, 'pepsi', 4, NULL, 18, 3600, NULL, '900', 3),
(6, 'santhoor', 6, NULL, 5, 6300, NULL, '1000', 4),
(10, 'item6', 6, NULL, 5, 32498, NULL, '5433', 2);

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_sample_table`
--

CREATE TABLE `zohoapp_sample_table` (
  `id` bigint(20) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `cust_rate` double NOT NULL,
  `pl_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zohoapp_sample_table`
--

INSERT INTO `zohoapp_sample_table` (`id`, `item_name`, `price`, `cust_rate`, `pl_id`) VALUES
(290, 'item1', 1300, 1300, 32),
(291, 'item6', 5467, 1300, 32),
(292, 'santhoor', 950, 0, 32),
(293, 'pepsi', 800, 0, 32),
(294, 'cheap', 900, 0, 32),
(295, 'item1', 1300, 1500, 6),
(296, 'item6', 5467, 2500, 6),
(297, 'santhoor', 950, 1000, 6),
(298, 'pepsi', 800, 1000, 6),
(299, 'cheap', 900, 1500, 6),
(315, 'item1', 1300, 1400, 33),
(316, 'item6', 5467, 5000, 33),
(317, 'santhoor', 950, 1000, 33),
(318, 'pepsi', 800, 800, 33),
(319, 'cheap', 900, 1000, 33),
(335, 'item1', 1300, 500, 35),
(336, 'item6', 5467, 500, 35),
(337, 'santhoor', 950, 450, 35),
(338, 'pepsi', 800, 520, 35),
(339, 'cheap', 900, 750, 35);

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_unit`
--

CREATE TABLE `zohoapp_unit` (
  `id` bigint(20) NOT NULL,
  `unit` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zohoapp_unit`
--

INSERT INTO `zohoapp_unit` (`id`, `unit`) VALUES
(1, 'box'),
(2, 'Nos'),
(3, 'Nos'),
(4, 'UNIT'),
(5, 'LITRE');

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_vendor_table`
--

CREATE TABLE `zohoapp_vendor_table` (
  `id` bigint(20) NOT NULL,
  `salutation` varchar(25) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `company_name` varchar(150) NOT NULL,
  `vendor_display_name` varchar(150) NOT NULL,
  `vendor_email` varchar(250) NOT NULL,
  `vendor_wphone` varchar(50) NOT NULL,
  `vendor_mphone` varchar(50) NOT NULL,
  `skype_number` varchar(50) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `department` varchar(50) NOT NULL,
  `website` varchar(250) NOT NULL,
  `gst_treatment` varchar(100) NOT NULL,
  `gst_number` varchar(50) DEFAULT NULL,
  `pan_number` varchar(50) DEFAULT NULL,
  `source_supply` varchar(100) NOT NULL,
  `currency` varchar(50) NOT NULL,
  `opening_bal` varchar(100) NOT NULL,
  `payment_terms` varchar(100) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `baddress` varchar(300) NOT NULL,
  `battention` varchar(100) NOT NULL,
  `bcity` varchar(100) NOT NULL,
  `bcountry` varchar(100) NOT NULL,
  `bfax` varchar(100) NOT NULL,
  `bphone` varchar(100) NOT NULL,
  `bstate` varchar(100) NOT NULL,
  `bzip` varchar(100) NOT NULL,
  `saddress` varchar(300) NOT NULL,
  `sattention` varchar(100) NOT NULL,
  `scity` varchar(100) NOT NULL,
  `scountry` varchar(100) NOT NULL,
  `sfax` varchar(100) NOT NULL,
  `sphone` varchar(100) NOT NULL,
  `sstate` varchar(100) NOT NULL,
  `szip` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zohoapp_vendor_table`
--

INSERT INTO `zohoapp_vendor_table` (`id`, `salutation`, `first_name`, `last_name`, `company_name`, `vendor_display_name`, `vendor_email`, `vendor_wphone`, `vendor_mphone`, `skype_number`, `designation`, `department`, `website`, `gst_treatment`, `gst_number`, `pan_number`, `source_supply`, `currency`, `opening_bal`, `payment_terms`, `user_id`, `baddress`, `battention`, `bcity`, `bcountry`, `bfax`, `bphone`, `bstate`, `bzip`, `saddress`, `sattention`, `scity`, `scountry`, `sfax`, `sphone`, `sstate`, `szip`) VALUES
(2, 'Mrs', 'Radhika', 'pilai', 'nihara', 'Mrs Radhika pilai', 'nikhilaajayan76@gmail.com', '2275155', '9961665433', '', '', '', 'www.nnn.com', 'Registered Business-Regular Business that is registered under GST', '22AAAAA0000A1Z9', 'ABCDE1234D', '[KL]-Kerala', 'Indian Rupee', '50000', 'Due on Receipt', 16, 'dssssssssssss', '', 'dddddddddddd', 'India', '2275155', '9961665433', 'dddddddddddddddd', '3242', 'wwwwwwwwwwww', '', 'hdhede', 'India', '2275155', '9961665433', 'ewehjhe', '213123'),
(5, 'Mr', 'Nandu ', 'Jay', 'jaymotors', 'Mr Nandu Jay', 'nadu123@gmail.com', '7654345', '7643256434', '', '', '', 'www.jay.in', 'Unregistered Business-not Registered under GST', 'null', 'AFDRT4327A', '[KL]-Kerala', 'Indian Rupee', '32220', 'Due on Receipt', 14, '', '', '', 'India', '', '', '', '', '', '', '', 'India', '', '', '', ''),
(8, 'Mr', 'anas', 'ash', 'None', 'Mr anas ash', 'anazash88@gmail.com', '09048289199', '08589011404', '', '', '', 'www', 'Unregistered Business-not Registered under GST', 'null', 'EHHPA0222S', '[KA]-Karnataka', 'Indian Rupee', '5000', 'NET 60', 21, '', '', '', 'India', '', '', '', '', '', '', '', 'India', '', '', '', ''),
(9, 'Mr', 'syam', 'Lakshmi', 'Shyla Stores', 'Mr syam Lakshmi', 'syamlakshmi@gmail.com', '2575702', '9995798453', '', '', '', 'www.shyla.in', 'Registered Business-Regular Business that is registered under GST', '32AAPCK6755G1Z1', 'AFDRT4327G', '[KL]-Kerala', 'Indian Rupee', '200000', 'NET 45', 14, '', '', '', 'India', '', '', '', '', '', '', '', 'India', '', '', '', ''),
(11, 'Mr', 'nikki', 'Vijay', 'nihara', '', 'mk@gmail.com', '3333333', '9961665433', '', '', '', 'www.gg.com', 'Registered Business-Regular Business that is registered under GST', '22AAAAA0000A1Z9', 'ABCDE1234D', '[JK]-Jammu And Kashmir', 'Indian Rupee', '30000', 'Due on Receipt', 16, '', '', '', 'India', '2275155', '2222222222', '', '', '', '', '', 'India', '2275155', '9961665433', '', ''),
(14, 'Mr', 'Shiju', 'Raju', 'Zomato', 'Mr Shiju Raju', 'shijiu45@gmail.com', '2575702', '9995798754', '', '', '', 'www.shiju.in', 'Unregistered Business-not Registered under GST', 'null', 'AFDRT4327H', '[KL]-Kerala', 'Indian Rupee', '300000', 'Due on Receipt', 14, 'infopark kochi', 'Infopark kochi', 'ernakulam', 'India', '', '9995678965', 'kerala', '', 'infopark kochi', 'Infopark kochi', 'ernakulam', 'India', '', '9995678965', 'kerala', ''),
(16, 'Mr', 'Lilly', 'Saleem', 'lillies Production', 'Mr Lilly Saleem', 'lilly123@gmail.com', '2575207', '9995798365', '', '', '', 'www.lilly.in', 'Unregistered Business-not Registered under GST', 'null', 'AFDRT4327U', '[KL]-Kerala', 'Indian Rupee', '70000', 'Due on Receipt', 14, '', '', '', 'India', '', '', '', '', '', '', '', 'India', '', '', '', '');

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
-- Indexes for table `zohoapp_account`
--
ALTER TABLE `zohoapp_account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zohoapp_additem`
--
ALTER TABLE `zohoapp_additem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_additem_purchase_id_d23b162b_fk_zohoapp_purchase_id` (`purchase_id`),
  ADD KEY `zohoapp_additem_sales_id_03cb7295_fk_zohoapp_sales_id` (`sales_id`),
  ADD KEY `zohoapp_additem_unit_id_a111ed1a_fk_zohoapp_unit_id` (`unit_id`),
  ADD KEY `zohoapp_additem_user_id_a82f8ea4_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `zohoapp_bank`
--
ALTER TABLE `zohoapp_bank`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_bank_user_id_643a32f6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `zohoapp_banking`
--
ALTER TABLE `zohoapp_banking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_banking_user_id_56334a28_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `zohoapp_challanitems`
--
ALTER TABLE `zohoapp_challanitems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_challanitems_chellan_id_95bdd2cc_fk_zohoapp_d` (`chellan_id`);

--
-- Indexes for table `zohoapp_comments_table`
--
ALTER TABLE `zohoapp_comments_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_comments_table_user_id_cbf604ef_fk_auth_user_id` (`user_id`),
  ADD KEY `zohoapp_comments_tab_vendor_id_8fb574eb_fk_zohoapp_v` (`vendor_id`);

--
-- Indexes for table `zohoapp_company_details`
--
ALTER TABLE `zohoapp_company_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_company_details_user_id_baa7d11b_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `zohoapp_contact_person_table`
--
ALTER TABLE `zohoapp_contact_person_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_contact_person_table_user_id_d80576bb_fk_auth_user_id` (`user_id`),
  ADD KEY `zohoapp_contact_pers_vendor_id_0d8205e2_fk_zohoapp_v` (`vendor_id`);

--
-- Indexes for table `zohoapp_customer`
--
ALTER TABLE `zohoapp_customer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_customer_user_id_3f99e967_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `zohoapp_deliverychellan`
--
ALTER TABLE `zohoapp_deliverychellan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_deliverychellan_user_id_4ab9c41a_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `zohoapp_doc_upload_table`
--
ALTER TABLE `zohoapp_doc_upload_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_doc_upload_table_user_id_4885edd6_fk_auth_user_id` (`user_id`),
  ADD KEY `zohoapp_doc_upload_t_vendor_id_68db74c3_fk_zohoapp_v` (`vendor_id`);

--
-- Indexes for table `zohoapp_estimateitems`
--
ALTER TABLE `zohoapp_estimateitems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_estimateitem_estimate_id_a425c6aa_fk_zohoapp_e` (`estimate_id`);

--
-- Indexes for table `zohoapp_estimates`
--
ALTER TABLE `zohoapp_estimates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_estimates_user_id_cd8e0786_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `zohoapp_expense`
--
ALTER TABLE `zohoapp_expense`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_expense_vendor_id_81726754_fk_zohoapp_vendor_table_id` (`vendor_id`);

--
-- Indexes for table `zohoapp_history`
--
ALTER TABLE `zohoapp_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_history_p_id_aa17fcf0_fk_zohoapp_additem_id` (`p_id`),
  ADD KEY `zohoapp_history_user_id_c771876f_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `zohoapp_invoice`
--
ALTER TABLE `zohoapp_invoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_invoice_customer_id_e73368cf_fk_zohoapp_customer_id` (`customer_id`),
  ADD KEY `zohoapp_invoice_terms_id_7456cbf6` (`terms_id`);

--
-- Indexes for table `zohoapp_invoice_item`
--
ALTER TABLE `zohoapp_invoice_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_invoice_item_inv_id_a602a8f7_fk_zohoapp_invoice_id` (`inv_id`);

--
-- Indexes for table `zohoapp_mail_table`
--
ALTER TABLE `zohoapp_mail_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_mail_table_user_id_3511a19d_fk_auth_user_id` (`user_id`),
  ADD KEY `zohoapp_mail_table_vendor_id_57eec60d_fk_zohoapp_vendor_table_id` (`vendor_id`);

--
-- Indexes for table `zohoapp_payment`
--
ALTER TABLE `zohoapp_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zohoapp_payment_terms`
--
ALTER TABLE `zohoapp_payment_terms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zohoapp_pricelist`
--
ALTER TABLE `zohoapp_pricelist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_pricelist_itemtable_id_dd9439ee_fk_zohoapp_additem_id` (`itemtable_id`),
  ADD KEY `zohoapp_pricelist_user_id_5565b21a_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `zohoapp_purchase`
--
ALTER TABLE `zohoapp_purchase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zohoapp_remarks_table`
--
ALTER TABLE `zohoapp_remarks_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_remarks_table_user_id_e800b444_fk_auth_user_id` (`user_id`),
  ADD KEY `zohoapp_remarks_tabl_vendor_id_4ed58d2b_fk_zohoapp_v` (`vendor_id`);

--
-- Indexes for table `zohoapp_retainerinvoice`
--
ALTER TABLE `zohoapp_retainerinvoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_retainerinvo_customer_name_id_92fe88c3_fk_zohoapp_c` (`customer_name_id`);

--
-- Indexes for table `zohoapp_retaineritems`
--
ALTER TABLE `zohoapp_retaineritems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_retaineritem_retainer_id_4edf9019_fk_zohoapp_r` (`retainer_id`);

--
-- Indexes for table `zohoapp_sales`
--
ALTER TABLE `zohoapp_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zohoapp_salesorder`
--
ALTER TABLE `zohoapp_salesorder`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_salesorder_customer_id_52d5dc9a_fk_zohoapp_customer_id` (`customer_id`),
  ADD KEY `zohoapp_salesorder_terms_id_d1a5d4b7_fk_zohoapp_payment_terms_id` (`terms_id`);

--
-- Indexes for table `zohoapp_sales_item`
--
ALTER TABLE `zohoapp_sales_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_sales_item_sale_id_cfc317c8_fk_zohoapp_salesorder_id` (`sale_id`);

--
-- Indexes for table `zohoapp_sample_table`
--
ALTER TABLE `zohoapp_sample_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_sample_table_pl_id_bd6b31ee_fk_zohoapp_pricelist_id` (`pl_id`);

--
-- Indexes for table `zohoapp_unit`
--
ALTER TABLE `zohoapp_unit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zohoapp_vendor_table`
--
ALTER TABLE `zohoapp_vendor_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_vendor_table_user_id_1e8037b0_fk_auth_user_id` (`user_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `zohoapp_account`
--
ALTER TABLE `zohoapp_account`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `zohoapp_additem`
--
ALTER TABLE `zohoapp_additem`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `zohoapp_bank`
--
ALTER TABLE `zohoapp_bank`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `zohoapp_banking`
--
ALTER TABLE `zohoapp_banking`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `zohoapp_challanitems`
--
ALTER TABLE `zohoapp_challanitems`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `zohoapp_comments_table`
--
ALTER TABLE `zohoapp_comments_table`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `zohoapp_company_details`
--
ALTER TABLE `zohoapp_company_details`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `zohoapp_contact_person_table`
--
ALTER TABLE `zohoapp_contact_person_table`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `zohoapp_customer`
--
ALTER TABLE `zohoapp_customer`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `zohoapp_deliverychellan`
--
ALTER TABLE `zohoapp_deliverychellan`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `zohoapp_doc_upload_table`
--
ALTER TABLE `zohoapp_doc_upload_table`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zohoapp_estimateitems`
--
ALTER TABLE `zohoapp_estimateitems`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `zohoapp_estimates`
--
ALTER TABLE `zohoapp_estimates`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `zohoapp_expense`
--
ALTER TABLE `zohoapp_expense`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `zohoapp_history`
--
ALTER TABLE `zohoapp_history`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zohoapp_invoice`
--
ALTER TABLE `zohoapp_invoice`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `zohoapp_invoice_item`
--
ALTER TABLE `zohoapp_invoice_item`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `zohoapp_mail_table`
--
ALTER TABLE `zohoapp_mail_table`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `zohoapp_payment`
--
ALTER TABLE `zohoapp_payment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `zohoapp_payment_terms`
--
ALTER TABLE `zohoapp_payment_terms`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `zohoapp_pricelist`
--
ALTER TABLE `zohoapp_pricelist`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `zohoapp_purchase`
--
ALTER TABLE `zohoapp_purchase`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=236;

--
-- AUTO_INCREMENT for table `zohoapp_remarks_table`
--
ALTER TABLE `zohoapp_remarks_table`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `zohoapp_retainerinvoice`
--
ALTER TABLE `zohoapp_retainerinvoice`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zohoapp_retaineritems`
--
ALTER TABLE `zohoapp_retaineritems`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zohoapp_sales`
--
ALTER TABLE `zohoapp_sales`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `zohoapp_salesorder`
--
ALTER TABLE `zohoapp_salesorder`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `zohoapp_sales_item`
--
ALTER TABLE `zohoapp_sales_item`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `zohoapp_sample_table`
--
ALTER TABLE `zohoapp_sample_table`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=340;

--
-- AUTO_INCREMENT for table `zohoapp_unit`
--
ALTER TABLE `zohoapp_unit`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `zohoapp_vendor_table`
--
ALTER TABLE `zohoapp_vendor_table`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

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

--
-- Constraints for table `zohoapp_additem`
--
ALTER TABLE `zohoapp_additem`
  ADD CONSTRAINT `zohoapp_additem_purchase_id_d23b162b_fk_zohoapp_purchase_id` FOREIGN KEY (`purchase_id`) REFERENCES `zohoapp_purchase` (`id`),
  ADD CONSTRAINT `zohoapp_additem_sales_id_03cb7295_fk_zohoapp_sales_id` FOREIGN KEY (`sales_id`) REFERENCES `zohoapp_sales` (`id`),
  ADD CONSTRAINT `zohoapp_additem_unit_id_a111ed1a_fk_zohoapp_unit_id` FOREIGN KEY (`unit_id`) REFERENCES `zohoapp_unit` (`id`),
  ADD CONSTRAINT `zohoapp_additem_user_id_a82f8ea4_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `zohoapp_bank`
--
ALTER TABLE `zohoapp_bank`
  ADD CONSTRAINT `zohoapp_bank_user_id_643a32f6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `zohoapp_banking`
--
ALTER TABLE `zohoapp_banking`
  ADD CONSTRAINT `zohoapp_banking_user_id_56334a28_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `zohoapp_challanitems`
--
ALTER TABLE `zohoapp_challanitems`
  ADD CONSTRAINT `zohoapp_challanitems_chellan_id_95bdd2cc_fk_zohoapp_d` FOREIGN KEY (`chellan_id`) REFERENCES `zohoapp_deliverychellan` (`id`);

--
-- Constraints for table `zohoapp_comments_table`
--
ALTER TABLE `zohoapp_comments_table`
  ADD CONSTRAINT `zohoapp_comments_tab_vendor_id_8fb574eb_fk_zohoapp_v` FOREIGN KEY (`vendor_id`) REFERENCES `zohoapp_vendor_table` (`id`),
  ADD CONSTRAINT `zohoapp_comments_table_user_id_cbf604ef_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `zohoapp_company_details`
--
ALTER TABLE `zohoapp_company_details`
  ADD CONSTRAINT `zohoapp_company_details_user_id_baa7d11b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `zohoapp_contact_person_table`
--
ALTER TABLE `zohoapp_contact_person_table`
  ADD CONSTRAINT `zohoapp_contact_pers_vendor_id_0d8205e2_fk_zohoapp_v` FOREIGN KEY (`vendor_id`) REFERENCES `zohoapp_vendor_table` (`id`),
  ADD CONSTRAINT `zohoapp_contact_person_table_user_id_d80576bb_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `zohoapp_customer`
--
ALTER TABLE `zohoapp_customer`
  ADD CONSTRAINT `zohoapp_customer_user_id_3f99e967_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `zohoapp_deliverychellan`
--
ALTER TABLE `zohoapp_deliverychellan`
  ADD CONSTRAINT `zohoapp_deliverychellan_user_id_4ab9c41a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `zohoapp_doc_upload_table`
--
ALTER TABLE `zohoapp_doc_upload_table`
  ADD CONSTRAINT `zohoapp_doc_upload_t_vendor_id_68db74c3_fk_zohoapp_v` FOREIGN KEY (`vendor_id`) REFERENCES `zohoapp_vendor_table` (`id`),
  ADD CONSTRAINT `zohoapp_doc_upload_table_user_id_4885edd6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `zohoapp_estimateitems`
--
ALTER TABLE `zohoapp_estimateitems`
  ADD CONSTRAINT `zohoapp_estimateitem_estimate_id_a425c6aa_fk_zohoapp_e` FOREIGN KEY (`estimate_id`) REFERENCES `zohoapp_estimates` (`id`);

--
-- Constraints for table `zohoapp_estimates`
--
ALTER TABLE `zohoapp_estimates`
  ADD CONSTRAINT `zohoapp_estimates_user_id_cd8e0786_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `zohoapp_expense`
--
ALTER TABLE `zohoapp_expense`
  ADD CONSTRAINT `zohoapp_expense_vendor_id_81726754_fk_zohoapp_vendor_table_id` FOREIGN KEY (`vendor_id`) REFERENCES `zohoapp_vendor_table` (`id`);

--
-- Constraints for table `zohoapp_history`
--
ALTER TABLE `zohoapp_history`
  ADD CONSTRAINT `zohoapp_history_p_id_aa17fcf0_fk_zohoapp_additem_id` FOREIGN KEY (`p_id`) REFERENCES `zohoapp_additem` (`id`),
  ADD CONSTRAINT `zohoapp_history_user_id_c771876f_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `zohoapp_invoice`
--
ALTER TABLE `zohoapp_invoice`
  ADD CONSTRAINT `zohoapp_invoice_customer_id_e73368cf_fk_zohoapp_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `zohoapp_customer` (`id`),
  ADD CONSTRAINT `zohoapp_invoice_terms_id_7456cbf6_fk_zohoapp_payment_terms_id` FOREIGN KEY (`terms_id`) REFERENCES `zohoapp_payment_terms` (`id`);

--
-- Constraints for table `zohoapp_invoice_item`
--
ALTER TABLE `zohoapp_invoice_item`
  ADD CONSTRAINT `zohoapp_invoice_item_inv_id_a602a8f7_fk_zohoapp_invoice_id` FOREIGN KEY (`inv_id`) REFERENCES `zohoapp_invoice` (`id`);

--
-- Constraints for table `zohoapp_mail_table`
--
ALTER TABLE `zohoapp_mail_table`
  ADD CONSTRAINT `zohoapp_mail_table_user_id_3511a19d_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `zohoapp_mail_table_vendor_id_57eec60d_fk_zohoapp_vendor_table_id` FOREIGN KEY (`vendor_id`) REFERENCES `zohoapp_vendor_table` (`id`);

--
-- Constraints for table `zohoapp_pricelist`
--
ALTER TABLE `zohoapp_pricelist`
  ADD CONSTRAINT `zohoapp_pricelist_itemtable_id_dd9439ee_fk_zohoapp_additem_id` FOREIGN KEY (`itemtable_id`) REFERENCES `zohoapp_additem` (`id`),
  ADD CONSTRAINT `zohoapp_pricelist_user_id_5565b21a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `zohoapp_remarks_table`
--
ALTER TABLE `zohoapp_remarks_table`
  ADD CONSTRAINT `zohoapp_remarks_tabl_vendor_id_4ed58d2b_fk_zohoapp_v` FOREIGN KEY (`vendor_id`) REFERENCES `zohoapp_vendor_table` (`id`),
  ADD CONSTRAINT `zohoapp_remarks_table_user_id_e800b444_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `zohoapp_retainerinvoice`
--
ALTER TABLE `zohoapp_retainerinvoice`
  ADD CONSTRAINT `zohoapp_retainerinvo_customer_name_id_92fe88c3_fk_zohoapp_c` FOREIGN KEY (`customer_name_id`) REFERENCES `zohoapp_customer` (`id`);

--
-- Constraints for table `zohoapp_retaineritems`
--
ALTER TABLE `zohoapp_retaineritems`
  ADD CONSTRAINT `zohoapp_retaineritem_retainer_id_4edf9019_fk_zohoapp_r` FOREIGN KEY (`retainer_id`) REFERENCES `zohoapp_retainerinvoice` (`id`);

--
-- Constraints for table `zohoapp_salesorder`
--
ALTER TABLE `zohoapp_salesorder`
  ADD CONSTRAINT `zohoapp_salesorder_customer_id_52d5dc9a_fk_zohoapp_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `zohoapp_customer` (`id`),
  ADD CONSTRAINT `zohoapp_salesorder_terms_id_d1a5d4b7_fk_zohoapp_payment_terms_id` FOREIGN KEY (`terms_id`) REFERENCES `zohoapp_payment_terms` (`id`);

--
-- Constraints for table `zohoapp_sales_item`
--
ALTER TABLE `zohoapp_sales_item`
  ADD CONSTRAINT `zohoapp_sales_item_sale_id_cfc317c8_fk_zohoapp_salesorder_id` FOREIGN KEY (`sale_id`) REFERENCES `zohoapp_salesorder` (`id`);

--
-- Constraints for table `zohoapp_sample_table`
--
ALTER TABLE `zohoapp_sample_table`
  ADD CONSTRAINT `zohoapp_sample_table_pl_id_bd6b31ee_fk_zohoapp_pricelist_id` FOREIGN KEY (`pl_id`) REFERENCES `zohoapp_pricelist` (`id`);

--
-- Constraints for table `zohoapp_vendor_table`
--
ALTER TABLE `zohoapp_vendor_table`
  ADD CONSTRAINT `zohoapp_vendor_table_user_id_1e8037b0_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
