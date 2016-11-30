-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2016 at 11:51 PM
-- Server version: 5.7.11
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `achieve`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_assignment`
--

CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) NOT NULL,
  `user_id` varchar(64) NOT NULL,
  `created_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_assignment`
--

INSERT INTO `auth_assignment` (`item_name`, `user_id`, `created_at`) VALUES
('admin', '2', 1473301696),
('admin', '5', 1474950706),
('superadmin', '1', 1473051082),
('test', '72', 1477616563),
('user', '100', 1477913014),
('user', '101', 1477913028),
('user', '102', 1477913086),
('user', '103', 1477913147),
('user', '104', 1477913807),
('user', '105', 1477913939),
('user', '106', 1477913954),
('user', '107', 1477913992),
('user', '108', 1477917283),
('user', '109', 1477917346),
('user', '110', 1477917424),
('user', '111', 1477917449),
('user', '112', 1478090650),
('user', '113', 1478090705),
('user', '114', 1478090765),
('user', '115', 1478832148),
('user', '4', 1474950661),
('user', '40', 1477461015),
('user', '5', 1474950389),
('user', '6', 1475551249),
('user', '77', 1477616865),
('user', '78', 1477616966),
('user', '79', 1477622324),
('user', '80', 1477622441),
('user', '82', 1477638760),
('user', '83', 1477639030),
('user', '84', 1477639086),
('user', '85', 1477639384),
('user', '86', 1477639406),
('user', '87', 1477639435),
('user', '88', 1477639510),
('user', '89', 1477639884),
('user', '90', 1477640077),
('user', '91', 1477640169),
('user', '92', 1477640448),
('user', '93', 1477640666),
('user', '94', 1477640710),
('user', '95', 1477640866),
('user', '96', 1477640927),
('user', '97', 1477655153),
('user', '98', 1477872091),
('user', '99', 1477872108);

-- --------------------------------------------------------

--
-- Table structure for table `auth_item`
--

CREATE TABLE `auth_item` (
  `name` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `description` text,
  `rule_name` varchar(64) DEFAULT NULL,
  `data` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_item`
--

INSERT INTO `auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`) VALUES
('/*', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/admin/*', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/admin/assignment/*', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/admin/assignment/assign', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/admin/assignment/index', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/admin/assignment/revoke', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/admin/assignment/view', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/admin/default/*', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/admin/default/index', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/admin/menu/*', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/admin/menu/create', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/admin/menu/delete', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/admin/menu/index', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/admin/menu/update', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/admin/menu/view', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/admin/permission/*', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/admin/permission/assign', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/admin/permission/create', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/admin/permission/delete', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/admin/permission/index', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/admin/permission/remove', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/admin/permission/update', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/admin/permission/view', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/admin/role/*', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/admin/role/assign', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/admin/role/create', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/admin/role/delete', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/admin/role/index', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/admin/role/remove', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/admin/role/update', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/admin/role/view', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/admin/route/*', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/admin/route/assign', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/admin/route/create', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/admin/route/index', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/admin/route/refresh', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/admin/route/remove', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/admin/rule/*', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/admin/rule/create', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/admin/rule/delete', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/admin/rule/index', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/admin/rule/update', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/admin/rule/view', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/admin/user/*', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/admin/user/activate', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/admin/user/change-password', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/admin/user/delete', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/admin/user/index', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/admin/user/login', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/admin/user/logout', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/admin/user/request-password-reset', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/admin/user/reset-password', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/admin/user/signup', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/admin/user/view', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/budget/*', 2, NULL, NULL, NULL, 1478832384, 1478832384),
('/budget/calc-debt-total', 2, NULL, NULL, NULL, 1478832384, 1478832384),
('/budget/calc-expense-total', 2, NULL, NULL, NULL, 1478832384, 1478832384),
('/budget/calc-income-total', 2, NULL, NULL, NULL, 1478832384, 1478832384),
('/budget/create-list', 2, NULL, NULL, NULL, 1478832384, 1478832384),
('/budget/debt', 2, NULL, NULL, NULL, 1478832384, 1478832384),
('/budget/get-data-row', 2, NULL, NULL, NULL, 1478832384, 1478832384),
('/budget/get-income-data-row', 2, NULL, NULL, NULL, 1478832384, 1478832384),
('/budget/income', 2, NULL, NULL, NULL, 1478832384, 1478832384),
('/budget/index', 2, NULL, NULL, NULL, 1478832384, 1478832384),
('/budget/message', 2, NULL, NULL, NULL, 1478832384, 1478832384),
('/budget/remove-data-row', 2, NULL, NULL, NULL, 1478832384, 1478832384),
('/budget/remove-income-data-row', 2, NULL, NULL, NULL, 1478832384, 1478832384),
('/budget/summary', 2, NULL, NULL, NULL, 1478832384, 1478832384),
('/concerns/*', 2, NULL, NULL, NULL, 1473129019, 1473129019),
('/concerns/create', 2, NULL, NULL, NULL, 1473129018, 1473129018),
('/concerns/delete', 2, NULL, NULL, NULL, 1473129019, 1473129019),
('/concerns/index', 2, NULL, NULL, NULL, 1473129018, 1473129018),
('/concerns/update', 2, NULL, NULL, NULL, 1473129019, 1473129019),
('/concerns/view', 2, NULL, NULL, NULL, 1473129018, 1473129018),
('/core-values-data/*', 2, NULL, NULL, NULL, 1473129019, 1473129019),
('/core-values-data/create', 2, NULL, NULL, NULL, 1473129019, 1473129019),
('/core-values-data/delete', 2, NULL, NULL, NULL, 1473129019, 1473129019),
('/core-values-data/index', 2, NULL, NULL, NULL, 1473129019, 1473129019),
('/core-values-data/update', 2, NULL, NULL, NULL, 1473129019, 1473129019),
('/core-values-data/view', 2, NULL, NULL, NULL, 1473129019, 1473129019),
('/core-values-top/*', 2, NULL, NULL, NULL, 1473298735, 1473298735),
('/core-values-top/create', 2, NULL, NULL, NULL, 1473298735, 1473298735),
('/core-values-top/delete', 2, NULL, NULL, NULL, 1473298735, 1473298735),
('/core-values-top/index', 2, NULL, NULL, NULL, 1473298735, 1473298735),
('/core-values-top/update', 2, NULL, NULL, NULL, 1473298735, 1473298735),
('/core-values-top/view', 2, NULL, NULL, NULL, 1473298735, 1473298735),
('/core-values/*', 2, NULL, NULL, NULL, 1473129019, 1473129019),
('/core-values/create', 2, NULL, NULL, NULL, 1473129019, 1473129019),
('/core-values/delete', 2, NULL, NULL, NULL, 1473129019, 1473129019),
('/core-values/index', 2, NULL, NULL, NULL, 1473129019, 1473129019),
('/core-values/update', 2, NULL, NULL, NULL, 1473129019, 1473129019),
('/core-values/validate', 2, NULL, NULL, NULL, 1474941798, 1474941798),
('/core-values/view', 2, NULL, NULL, NULL, 1473129019, 1473129019),
('/debts/*', 2, NULL, NULL, NULL, 1478832384, 1478832384),
('/debts/create-debts', 2, NULL, NULL, NULL, 1478832384, 1478832384),
('/debts/get-data-row', 2, NULL, NULL, NULL, 1478832384, 1478832384),
('/debts/index', 2, NULL, NULL, NULL, 1478832384, 1478832384),
('/debts/remove-data-row', 2, NULL, NULL, NULL, 1478832384, 1478832384),
('/debug/*', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/debug/default/*', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/debug/default/db-explain', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/debug/default/download-mail', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/debug/default/index', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/debug/default/toolbar', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/debug/default/view', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/expense-categories/*', 2, NULL, NULL, NULL, 1473129019, 1473129019),
('/expense-categories/create', 2, NULL, NULL, NULL, 1473129019, 1473129019),
('/expense-categories/delete', 2, NULL, NULL, NULL, 1473129019, 1473129019),
('/expense-categories/index', 2, NULL, NULL, NULL, 1473129019, 1473129019),
('/expense-categories/update', 2, NULL, NULL, NULL, 1473129019, 1473129019),
('/expense-categories/view', 2, NULL, NULL, NULL, 1473129019, 1473129019),
('/expense-data/*', 2, NULL, NULL, NULL, 1473129019, 1473129019),
('/expense-data/create', 2, NULL, NULL, NULL, 1473129019, 1473129019),
('/expense-data/delete', 2, NULL, NULL, NULL, 1473129019, 1473129019),
('/expense-data/index', 2, NULL, NULL, NULL, 1473129019, 1473129019),
('/expense-data/update', 2, NULL, NULL, NULL, 1473129019, 1473129019),
('/expense-data/view', 2, NULL, NULL, NULL, 1473129019, 1473129019),
('/expense-headings/*', 2, NULL, NULL, NULL, 1475633638, 1475633638),
('/expense-headings/create', 2, NULL, NULL, NULL, 1475633638, 1475633638),
('/expense-headings/delete', 2, NULL, NULL, NULL, 1475633638, 1475633638),
('/expense-headings/index', 2, NULL, NULL, NULL, 1475633638, 1475633638),
('/expense-headings/update', 2, NULL, NULL, NULL, 1475633638, 1475633638),
('/expense-headings/view', 2, NULL, NULL, NULL, 1475633638, 1475633638),
('/expense-master/*', 2, NULL, NULL, NULL, 1473129019, 1473129019),
('/expense-master/create', 2, NULL, NULL, NULL, 1473129019, 1473129019),
('/expense-master/delete', 2, NULL, NULL, NULL, 1473129019, 1473129019),
('/expense-master/index', 2, NULL, NULL, NULL, 1473129019, 1473129019),
('/expense-master/update', 2, NULL, NULL, NULL, 1473129019, 1473129019),
('/expense-master/view', 2, NULL, NULL, NULL, 1473129019, 1473129019),
('/fe-concerns/*', 2, NULL, NULL, NULL, 1475024165, 1475024165),
('/fe-concerns/create', 2, NULL, NULL, NULL, 1475024165, 1475024165),
('/fe-concerns/delete', 2, NULL, NULL, NULL, 1475024165, 1475024165),
('/fe-concerns/index', 2, NULL, NULL, NULL, 1475024165, 1475024165),
('/fe-concerns/update', 2, NULL, NULL, NULL, 1475024165, 1475024165),
('/fe-concerns/view', 2, NULL, NULL, NULL, 1475024165, 1475024165),
('/fe-core-values-data/*', 2, NULL, NULL, NULL, 1475024166, 1475024166),
('/fe-core-values-data/create', 2, NULL, NULL, NULL, 1475024165, 1475024165),
('/fe-core-values-data/delete', 2, NULL, NULL, NULL, 1475024166, 1475024166),
('/fe-core-values-data/index', 2, NULL, NULL, NULL, 1475024165, 1475024165),
('/fe-core-values-data/update', 2, NULL, NULL, NULL, 1475024165, 1475024165),
('/fe-core-values-data/view', 2, NULL, NULL, NULL, 1475024165, 1475024165),
('/fe-core-values-top/*', 2, NULL, NULL, NULL, 1475024166, 1475024166),
('/fe-core-values-top/create', 2, NULL, NULL, NULL, 1475024166, 1475024166),
('/fe-core-values-top/delete', 2, NULL, NULL, NULL, 1475024166, 1475024166),
('/fe-core-values-top/index', 2, NULL, NULL, NULL, 1475024166, 1475024166),
('/fe-core-values-top/update', 2, NULL, NULL, NULL, 1475024166, 1475024166),
('/fe-core-values-top/view', 2, NULL, NULL, NULL, 1475024166, 1475024166),
('/fe-core-values/*', 2, NULL, NULL, NULL, 1475024165, 1475024165),
('/fe-core-values/corevalueoptions', 2, NULL, NULL, NULL, 1475024165, 1475024165),
('/fe-core-values/create', 2, NULL, NULL, NULL, 1475024165, 1475024165),
('/fe-core-values/delete', 2, NULL, NULL, NULL, 1475024165, 1475024165),
('/fe-core-values/index', 2, NULL, NULL, NULL, 1475024165, 1475024165),
('/fe-core-values/update', 2, NULL, NULL, NULL, 1475024165, 1475024165),
('/fe-core-values/view', 2, NULL, NULL, NULL, 1475024165, 1475024165),
('/fe-expense-categories/*', 2, NULL, NULL, NULL, 1475024166, 1475024166),
('/fe-expense-categories/create', 2, NULL, NULL, NULL, 1475024166, 1475024166),
('/fe-expense-categories/delete', 2, NULL, NULL, NULL, 1475024166, 1475024166),
('/fe-expense-categories/index', 2, NULL, NULL, NULL, 1475024166, 1475024166),
('/fe-expense-categories/update', 2, NULL, NULL, NULL, 1475024166, 1475024166),
('/fe-expense-categories/view', 2, NULL, NULL, NULL, 1475024166, 1475024166),
('/fe-expense-data/*', 2, NULL, NULL, NULL, 1475024166, 1475024166),
('/fe-expense-data/create', 2, NULL, NULL, NULL, 1475024166, 1475024166),
('/fe-expense-data/delete', 2, NULL, NULL, NULL, 1475024166, 1475024166),
('/fe-expense-data/index', 2, NULL, NULL, NULL, 1475024166, 1475024166),
('/fe-expense-data/update', 2, NULL, NULL, NULL, 1475024166, 1475024166),
('/fe-expense-data/view', 2, NULL, NULL, NULL, 1475024166, 1475024166),
('/fe-expense-master/*', 2, NULL, NULL, NULL, 1475024166, 1475024166),
('/fe-expense-master/create', 2, NULL, NULL, NULL, 1475024166, 1475024166),
('/fe-expense-master/delete', 2, NULL, NULL, NULL, 1475024166, 1475024166),
('/fe-expense-master/index', 2, NULL, NULL, NULL, 1475024166, 1475024166),
('/fe-expense-master/update', 2, NULL, NULL, NULL, 1475024166, 1475024166),
('/fe-expense-master/view', 2, NULL, NULL, NULL, 1475024166, 1475024166),
('/fe-perfect-day/*', 2, NULL, NULL, NULL, 1475024166, 1475024166),
('/fe-perfect-day/create', 2, NULL, NULL, NULL, 1475024166, 1475024166),
('/fe-perfect-day/delete', 2, NULL, NULL, NULL, 1475024166, 1475024166),
('/fe-perfect-day/index', 2, NULL, NULL, NULL, 1475024166, 1475024166),
('/fe-perfect-day/update', 2, NULL, NULL, NULL, 1475024166, 1475024166),
('/fe-perfect-day/view', 2, NULL, NULL, NULL, 1475024166, 1475024166),
('/fe-steps-master/*', 2, NULL, NULL, NULL, 1475024166, 1475024166),
('/fe-steps-master/create', 2, NULL, NULL, NULL, 1475024166, 1475024166),
('/fe-steps-master/delete', 2, NULL, NULL, NULL, 1475024166, 1475024166),
('/fe-steps-master/index', 2, NULL, NULL, NULL, 1475024166, 1475024166),
('/fe-steps-master/update', 2, NULL, NULL, NULL, 1475024166, 1475024166),
('/fe-steps-master/view', 2, NULL, NULL, NULL, 1475024166, 1475024166),
('/fe-steps-master/view2', 2, NULL, NULL, NULL, 1475024166, 1475024166),
('/fe-user-progress/*', 2, NULL, NULL, NULL, 1475024166, 1475024166),
('/fe-user-progress/create', 2, NULL, NULL, NULL, 1475024166, 1475024166),
('/fe-user-progress/delete', 2, NULL, NULL, NULL, 1475024166, 1475024166),
('/fe-user-progress/in-model2', 2, NULL, NULL, NULL, 1475477188, 1475477188),
('/fe-user-progress/index', 2, NULL, NULL, NULL, 1475024166, 1475024166),
('/fe-user-progress/next', 2, NULL, NULL, NULL, 1475024166, 1475024166),
('/fe-user-progress/update', 2, NULL, NULL, NULL, 1475024166, 1475024166),
('/fe-user-progress/view', 2, NULL, NULL, NULL, 1475024166, 1475024166),
('/fe-wants/*', 2, NULL, NULL, NULL, 1475024166, 1475024166),
('/fe-wants/create', 2, NULL, NULL, NULL, 1475024166, 1475024166),
('/fe-wants/delete', 2, NULL, NULL, NULL, 1475024166, 1475024166),
('/fe-wants/index', 2, NULL, NULL, NULL, 1475024166, 1475024166),
('/fe-wants/update', 2, NULL, NULL, NULL, 1475024166, 1475024166),
('/fe-wants/view', 2, NULL, NULL, NULL, 1475024166, 1475024166),
('/ffe-core-values/*', 2, NULL, NULL, NULL, 1475024165, 1475024165),
('/ffe-core-values/create', 2, NULL, NULL, NULL, 1475024165, 1475024165),
('/ffe-core-values/delete', 2, NULL, NULL, NULL, 1475024165, 1475024165),
('/ffe-core-values/index', 2, NULL, NULL, NULL, 1475024165, 1475024165),
('/ffe-core-values/update', 2, NULL, NULL, NULL, 1475024165, 1475024165),
('/ffe-core-values/view', 2, NULL, NULL, NULL, 1475024165, 1475024165),
('/gii/*', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/gii/default/*', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/gii/default/action', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/gii/default/diff', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/gii/default/index', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/gii/default/preview', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/gii/default/view', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/income/*', 2, NULL, NULL, NULL, 1478832384, 1478832384),
('/income/create-income', 2, NULL, NULL, NULL, 1478832384, 1478832384),
('/income/get-data-row', 2, NULL, NULL, NULL, 1478832384, 1478832384),
('/income/index', 2, NULL, NULL, NULL, 1478832384, 1478832384),
('/income/remove-data-row', 2, NULL, NULL, NULL, 1478832384, 1478832384),
('/payments/*', 2, NULL, NULL, NULL, 1478832384, 1478832384),
('/payments/create', 2, NULL, NULL, NULL, 1478832384, 1478832384),
('/payments/delete', 2, NULL, NULL, NULL, 1478832384, 1478832384),
('/payments/index', 2, NULL, NULL, NULL, 1478832384, 1478832384),
('/payments/sorry', 2, NULL, NULL, NULL, 1478832384, 1478832384),
('/payments/thankyou', 2, NULL, NULL, NULL, 1478832384, 1478832384),
('/payments/update', 2, NULL, NULL, NULL, 1478832384, 1478832384),
('/payments/view', 2, NULL, NULL, NULL, 1478832384, 1478832384),
('/perfect-day/*', 2, NULL, NULL, NULL, 1473129019, 1473129019),
('/perfect-day/create', 2, NULL, NULL, NULL, 1473129019, 1473129019),
('/perfect-day/delete', 2, NULL, NULL, NULL, 1473129019, 1473129019),
('/perfect-day/index', 2, NULL, NULL, NULL, 1473129019, 1473129019),
('/perfect-day/update', 2, NULL, NULL, NULL, 1473129019, 1473129019),
('/perfect-day/view', 2, NULL, NULL, NULL, 1473129019, 1473129019),
('/redactor/*', 2, NULL, NULL, NULL, 1474859403, 1474859403),
('/site/*', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/site/about', 2, NULL, NULL, NULL, 1475024166, 1475024166),
('/site/budget', 2, NULL, NULL, NULL, 1475477186, 1475477186),
('/site/captcha', 2, NULL, NULL, NULL, 1475024166, 1475024166),
('/site/contact', 2, NULL, NULL, NULL, 1475024166, 1475024166),
('/site/disclaimer', 2, NULL, NULL, NULL, 1475024166, 1475024166),
('/site/error', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/site/expected', 2, NULL, NULL, NULL, 1475024166, 1475024166),
('/site/index', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/site/instruction', 2, NULL, NULL, NULL, 1475024166, 1475024166),
('/site/login', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/site/logout', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/site/request-password-reset', 2, NULL, NULL, NULL, 1475024166, 1475024166),
('/site/reset-password', 2, NULL, NULL, NULL, 1475024166, 1475024166),
('/site/signup', 2, NULL, NULL, NULL, 1475024166, 1475024166),
('/site/started', 2, NULL, NULL, NULL, 1475024166, 1475024166),
('/steps-master/*', 2, NULL, NULL, NULL, 1474512086, 1474512086),
('/steps-master/config', 2, NULL, NULL, NULL, 1474950475, 1474950475),
('/steps-master/create', 2, NULL, NULL, NULL, 1474512086, 1474512086),
('/steps-master/delete', 2, NULL, NULL, NULL, 1474512086, 1474512086),
('/steps-master/index', 2, NULL, NULL, NULL, 1474512086, 1474512086),
('/steps-master/update', 2, NULL, NULL, NULL, 1474512086, 1474512086),
('/steps-master/upload', 2, NULL, NULL, NULL, 1474950475, 1474950475),
('/steps-master/view', 2, NULL, NULL, NULL, 1474512086, 1474512086),
('/user-progress/*', 2, NULL, NULL, NULL, 1474512086, 1474512086),
('/user-progress/create', 2, NULL, NULL, NULL, 1474512086, 1474512086),
('/user-progress/delete', 2, NULL, NULL, NULL, 1474512086, 1474512086),
('/user-progress/index', 2, NULL, NULL, NULL, 1474512086, 1474512086),
('/user-progress/update', 2, NULL, NULL, NULL, 1474512086, 1474512086),
('/user-progress/view', 2, NULL, NULL, NULL, 1474512086, 1474512086),
('/user/*', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/user/admin/*', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/user/admin/assignments', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/user/admin/block', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/user/admin/brokers', 2, NULL, NULL, NULL, 1478832384, 1478832384),
('/user/admin/confirm', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/user/admin/create', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/user/admin/delete', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/user/admin/index', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/user/admin/info', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/user/admin/update', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/user/admin/update-profile', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/user/profile/*', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/user/profile/index', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/user/profile/show', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/user/recovery/*', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/user/recovery/request', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/user/recovery/reset', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/user/registration/*', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/user/registration/confirm', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/user/registration/connect', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/user/registration/register', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/user/registration/resend', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/user/security/*', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/user/security/auth', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/user/security/login', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/user/security/logout', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/user/settings/*', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/user/settings/account', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/user/settings/confirm', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/user/settings/delete', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/user/settings/disconnect', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/user/settings/networks', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/user/settings/profile', 2, NULL, NULL, NULL, 1473051015, 1473051015),
('/wants/*', 2, NULL, NULL, NULL, 1473129019, 1473129019),
('/wants/create', 2, NULL, NULL, NULL, 1473129019, 1473129019),
('/wants/delete', 2, NULL, NULL, NULL, 1473129019, 1473129019),
('/wants/index', 2, NULL, NULL, NULL, 1473129019, 1473129019),
('admin', 1, 'admin', NULL, NULL, 1473298778, 1473298778),
('superadmin', 1, 'superadmin', NULL, NULL, 1473050971, 1473050986),
('test', 1, NULL, NULL, NULL, 1477616563, 1477616563),
('Topest ', 2, NULL, NULL, NULL, 1474941777, 1474941777),
('user', 1, NULL, NULL, NULL, 1474859419, 1474859419);

-- --------------------------------------------------------

--
-- Table structure for table `auth_item_child`
--

CREATE TABLE `auth_item_child` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_item_child`
--

INSERT INTO `auth_item_child` (`parent`, `child`) VALUES
('admin', '/*'),
('superadmin', '/*'),
('Topest ', '/*'),
('admin', '/admin/*'),
('superadmin', '/admin/*'),
('Topest ', '/admin/*'),
('admin', '/admin/assignment/*'),
('superadmin', '/admin/assignment/*'),
('Topest ', '/admin/assignment/*'),
('admin', '/admin/assignment/assign'),
('superadmin', '/admin/assignment/assign'),
('Topest ', '/admin/assignment/assign'),
('admin', '/admin/assignment/index'),
('superadmin', '/admin/assignment/index'),
('Topest ', '/admin/assignment/index'),
('admin', '/admin/assignment/revoke'),
('superadmin', '/admin/assignment/revoke'),
('Topest ', '/admin/assignment/revoke'),
('admin', '/admin/assignment/view'),
('superadmin', '/admin/assignment/view'),
('Topest ', '/admin/assignment/view'),
('admin', '/admin/default/*'),
('superadmin', '/admin/default/*'),
('Topest ', '/admin/default/*'),
('admin', '/admin/default/index'),
('superadmin', '/admin/default/index'),
('Topest ', '/admin/default/index'),
('admin', '/admin/menu/*'),
('superadmin', '/admin/menu/*'),
('Topest ', '/admin/menu/*'),
('admin', '/admin/menu/create'),
('superadmin', '/admin/menu/create'),
('Topest ', '/admin/menu/create'),
('admin', '/admin/menu/delete'),
('superadmin', '/admin/menu/delete'),
('Topest ', '/admin/menu/delete'),
('admin', '/admin/menu/index'),
('superadmin', '/admin/menu/index'),
('Topest ', '/admin/menu/index'),
('admin', '/admin/menu/update'),
('superadmin', '/admin/menu/update'),
('Topest ', '/admin/menu/update'),
('admin', '/admin/menu/view'),
('superadmin', '/admin/menu/view'),
('Topest ', '/admin/menu/view'),
('admin', '/admin/permission/*'),
('superadmin', '/admin/permission/*'),
('Topest ', '/admin/permission/*'),
('admin', '/admin/permission/assign'),
('superadmin', '/admin/permission/assign'),
('Topest ', '/admin/permission/assign'),
('admin', '/admin/permission/create'),
('superadmin', '/admin/permission/create'),
('Topest ', '/admin/permission/create'),
('admin', '/admin/permission/delete'),
('superadmin', '/admin/permission/delete'),
('Topest ', '/admin/permission/delete'),
('admin', '/admin/permission/index'),
('superadmin', '/admin/permission/index'),
('Topest ', '/admin/permission/index'),
('admin', '/admin/permission/remove'),
('superadmin', '/admin/permission/remove'),
('Topest ', '/admin/permission/remove'),
('admin', '/admin/permission/update'),
('superadmin', '/admin/permission/update'),
('Topest ', '/admin/permission/update'),
('admin', '/admin/permission/view'),
('superadmin', '/admin/permission/view'),
('Topest ', '/admin/permission/view'),
('admin', '/admin/role/*'),
('superadmin', '/admin/role/*'),
('Topest ', '/admin/role/*'),
('admin', '/admin/role/assign'),
('superadmin', '/admin/role/assign'),
('Topest ', '/admin/role/assign'),
('admin', '/admin/role/create'),
('superadmin', '/admin/role/create'),
('Topest ', '/admin/role/create'),
('admin', '/admin/role/delete'),
('superadmin', '/admin/role/delete'),
('Topest ', '/admin/role/delete'),
('admin', '/admin/role/index'),
('superadmin', '/admin/role/index'),
('Topest ', '/admin/role/index'),
('admin', '/admin/role/remove'),
('superadmin', '/admin/role/remove'),
('Topest ', '/admin/role/remove'),
('admin', '/admin/role/update'),
('superadmin', '/admin/role/update'),
('Topest ', '/admin/role/update'),
('admin', '/admin/role/view'),
('superadmin', '/admin/role/view'),
('Topest ', '/admin/role/view'),
('admin', '/admin/route/*'),
('superadmin', '/admin/route/*'),
('Topest ', '/admin/route/*'),
('admin', '/admin/route/assign'),
('superadmin', '/admin/route/assign'),
('Topest ', '/admin/route/assign'),
('admin', '/admin/route/create'),
('superadmin', '/admin/route/create'),
('Topest ', '/admin/route/create'),
('admin', '/admin/route/index'),
('superadmin', '/admin/route/index'),
('Topest ', '/admin/route/index'),
('admin', '/admin/route/refresh'),
('superadmin', '/admin/route/refresh'),
('Topest ', '/admin/route/refresh'),
('admin', '/admin/route/remove'),
('superadmin', '/admin/route/remove'),
('Topest ', '/admin/route/remove'),
('admin', '/admin/rule/*'),
('superadmin', '/admin/rule/*'),
('Topest ', '/admin/rule/*'),
('admin', '/admin/rule/create'),
('superadmin', '/admin/rule/create'),
('Topest ', '/admin/rule/create'),
('admin', '/admin/rule/delete'),
('superadmin', '/admin/rule/delete'),
('Topest ', '/admin/rule/delete'),
('admin', '/admin/rule/index'),
('superadmin', '/admin/rule/index'),
('Topest ', '/admin/rule/index'),
('admin', '/admin/rule/update'),
('superadmin', '/admin/rule/update'),
('Topest ', '/admin/rule/update'),
('admin', '/admin/rule/view'),
('superadmin', '/admin/rule/view'),
('Topest ', '/admin/rule/view'),
('admin', '/admin/user/*'),
('superadmin', '/admin/user/*'),
('Topest ', '/admin/user/*'),
('admin', '/admin/user/activate'),
('superadmin', '/admin/user/activate'),
('Topest ', '/admin/user/activate'),
('admin', '/admin/user/change-password'),
('superadmin', '/admin/user/change-password'),
('Topest ', '/admin/user/change-password'),
('admin', '/admin/user/delete'),
('superadmin', '/admin/user/delete'),
('Topest ', '/admin/user/delete'),
('admin', '/admin/user/index'),
('superadmin', '/admin/user/index'),
('Topest ', '/admin/user/index'),
('admin', '/admin/user/login'),
('superadmin', '/admin/user/login'),
('Topest ', '/admin/user/login'),
('admin', '/admin/user/logout'),
('superadmin', '/admin/user/logout'),
('Topest ', '/admin/user/logout'),
('admin', '/admin/user/request-password-reset'),
('superadmin', '/admin/user/request-password-reset'),
('Topest ', '/admin/user/request-password-reset'),
('admin', '/admin/user/reset-password'),
('superadmin', '/admin/user/reset-password'),
('Topest ', '/admin/user/reset-password'),
('admin', '/admin/user/signup'),
('superadmin', '/admin/user/signup'),
('Topest ', '/admin/user/signup'),
('admin', '/admin/user/view'),
('superadmin', '/admin/user/view'),
('Topest ', '/admin/user/view'),
('admin', '/debug/*'),
('superadmin', '/debug/*'),
('Topest ', '/debug/*'),
('admin', '/debug/default/*'),
('superadmin', '/debug/default/*'),
('Topest ', '/debug/default/*'),
('admin', '/debug/default/db-explain'),
('superadmin', '/debug/default/db-explain'),
('Topest ', '/debug/default/db-explain'),
('admin', '/debug/default/download-mail'),
('superadmin', '/debug/default/download-mail'),
('Topest ', '/debug/default/download-mail'),
('admin', '/debug/default/index'),
('superadmin', '/debug/default/index'),
('Topest ', '/debug/default/index'),
('admin', '/debug/default/toolbar'),
('superadmin', '/debug/default/toolbar'),
('Topest ', '/debug/default/toolbar'),
('admin', '/debug/default/view'),
('superadmin', '/debug/default/view'),
('Topest ', '/debug/default/view'),
('admin', '/gii/*'),
('superadmin', '/gii/*'),
('Topest ', '/gii/*'),
('admin', '/gii/default/*'),
('superadmin', '/gii/default/*'),
('Topest ', '/gii/default/*'),
('admin', '/gii/default/action'),
('superadmin', '/gii/default/action'),
('Topest ', '/gii/default/action'),
('admin', '/gii/default/diff'),
('superadmin', '/gii/default/diff'),
('Topest ', '/gii/default/diff'),
('admin', '/gii/default/index'),
('superadmin', '/gii/default/index'),
('Topest ', '/gii/default/index'),
('admin', '/gii/default/preview'),
('superadmin', '/gii/default/preview'),
('Topest ', '/gii/default/preview'),
('admin', '/gii/default/view'),
('superadmin', '/gii/default/view'),
('Topest ', '/gii/default/view'),
('admin', '/site/*'),
('superadmin', '/site/*'),
('Topest ', '/site/*'),
('user', '/site/*'),
('admin', '/site/error'),
('superadmin', '/site/error'),
('Topest ', '/site/error'),
('user', '/site/error'),
('admin', '/site/index'),
('superadmin', '/site/index'),
('Topest ', '/site/index'),
('user', '/site/index'),
('admin', '/site/login'),
('superadmin', '/site/login'),
('Topest ', '/site/login'),
('user', '/site/login'),
('admin', '/site/logout'),
('superadmin', '/site/logout'),
('Topest ', '/site/logout'),
('user', '/site/logout'),
('admin', '/user/*'),
('superadmin', '/user/*'),
('Topest ', '/user/*'),
('admin', '/user/admin/*'),
('superadmin', '/user/admin/*'),
('Topest ', '/user/admin/*'),
('admin', '/user/admin/assignments'),
('superadmin', '/user/admin/assignments'),
('Topest ', '/user/admin/assignments'),
('admin', '/user/admin/block'),
('superadmin', '/user/admin/block'),
('Topest ', '/user/admin/block'),
('admin', '/user/admin/confirm'),
('superadmin', '/user/admin/confirm'),
('Topest ', '/user/admin/confirm'),
('admin', '/user/admin/create'),
('superadmin', '/user/admin/create'),
('Topest ', '/user/admin/create'),
('admin', '/user/admin/delete'),
('superadmin', '/user/admin/delete'),
('Topest ', '/user/admin/delete'),
('admin', '/user/admin/index'),
('superadmin', '/user/admin/index'),
('Topest ', '/user/admin/index'),
('admin', '/user/admin/info'),
('superadmin', '/user/admin/info'),
('Topest ', '/user/admin/info'),
('admin', '/user/admin/update'),
('superadmin', '/user/admin/update'),
('Topest ', '/user/admin/update'),
('admin', '/user/admin/update-profile'),
('superadmin', '/user/admin/update-profile'),
('Topest ', '/user/admin/update-profile'),
('admin', '/user/profile/*'),
('superadmin', '/user/profile/*'),
('Topest ', '/user/profile/*'),
('admin', '/user/profile/index'),
('superadmin', '/user/profile/index'),
('Topest ', '/user/profile/index'),
('admin', '/user/profile/show'),
('superadmin', '/user/profile/show'),
('Topest ', '/user/profile/show'),
('admin', '/user/recovery/*'),
('superadmin', '/user/recovery/*'),
('Topest ', '/user/recovery/*'),
('admin', '/user/recovery/request'),
('superadmin', '/user/recovery/request'),
('Topest ', '/user/recovery/request'),
('admin', '/user/recovery/reset'),
('superadmin', '/user/recovery/reset'),
('Topest ', '/user/recovery/reset'),
('admin', '/user/registration/*'),
('superadmin', '/user/registration/*'),
('Topest ', '/user/registration/*'),
('admin', '/user/registration/confirm'),
('superadmin', '/user/registration/confirm'),
('Topest ', '/user/registration/confirm'),
('admin', '/user/registration/connect'),
('superadmin', '/user/registration/connect'),
('Topest ', '/user/registration/connect'),
('admin', '/user/registration/register'),
('superadmin', '/user/registration/register'),
('Topest ', '/user/registration/register'),
('admin', '/user/registration/resend'),
('superadmin', '/user/registration/resend'),
('Topest ', '/user/registration/resend'),
('admin', '/user/security/*'),
('superadmin', '/user/security/*'),
('Topest ', '/user/security/*'),
('admin', '/user/security/auth'),
('superadmin', '/user/security/auth'),
('Topest ', '/user/security/auth'),
('admin', '/user/security/login'),
('superadmin', '/user/security/login'),
('Topest ', '/user/security/login'),
('admin', '/user/security/logout'),
('superadmin', '/user/security/logout'),
('Topest ', '/user/security/logout'),
('admin', '/user/settings/*'),
('superadmin', '/user/settings/*'),
('Topest ', '/user/settings/*'),
('admin', '/user/settings/account'),
('superadmin', '/user/settings/account'),
('Topest ', '/user/settings/account'),
('admin', '/user/settings/confirm'),
('superadmin', '/user/settings/confirm'),
('Topest ', '/user/settings/confirm'),
('admin', '/user/settings/delete'),
('superadmin', '/user/settings/delete'),
('Topest ', '/user/settings/delete'),
('admin', '/user/settings/disconnect'),
('superadmin', '/user/settings/disconnect'),
('Topest ', '/user/settings/disconnect'),
('admin', '/user/settings/networks'),
('superadmin', '/user/settings/networks'),
('Topest ', '/user/settings/networks'),
('admin', '/user/settings/profile'),
('superadmin', '/user/settings/profile'),
('Topest ', '/user/settings/profile'),
('superadmin', 'Topest '),
('admin', 'user'),
('superadmin', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `auth_rule`
--

CREATE TABLE `auth_rule` (
  `name` varchar(64) NOT NULL,
  `data` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `data` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name`, `parent`, `route`, `order`, `data`) VALUES
(1, 'Users Management', 4, '/user/admin/index', NULL, NULL),
(2, 'Permissions', 4, '/admin/assignment/index', NULL, NULL),
(4, 'System', NULL, NULL, 3, 0x7b2269636f6e223a2022676c79706869636f6e20676c79706869636f6e2d7468222c202276697369626c65223a20747275657d),
(5, 'User Data', NULL, NULL, 1, 0x7b2269636f6e223a202266612066612d75736572222c202276697369626c65223a20747275657d),
(6, 'Settings', NULL, NULL, 2, 0x7b2269636f6e223a2022676c79706869636f6e20676c79706869636f6e2d636f67222c202276697369626c65223a20747275657d);

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1473042026),
('m140209_132017_init', 1473042044),
('m140403_174025_create_account_table', 1473042044),
('m140504_113157_update_tables', 1473042045),
('m140504_130429_create_token_table', 1473042045),
('m140830_171933_fix_ip_field', 1473042045),
('m140830_172703_change_account_table_name', 1473042045),
('m141222_110026_update_ip_field', 1473042045),
('m141222_135246_alter_username_length', 1473042046),
('m150614_103145_update_social_account_table', 1473042047),
('m150623_212711_fix_username_notnull', 1473042047),
('m151218_234654_add_timezone_to_profile', 1473042047),
('m140602_111327_create_menu_table', 1473048097),
('m160312_050000_create_user', 1473048097);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `customer_uniq_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `customer_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `transaction_subject` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `txn_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `pending_reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `residence_country` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `mc_currency` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_gross` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `protection_eligibility` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `verify_sign` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `test_ipn` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `payer_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `handling_amount` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_number` int(11) DEFAULT NULL,
  `payer_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `receiver_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantity` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `txn_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `payer_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `tax` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `notify_version` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `charset` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `mc_gross` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `auth` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_return_link` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `business` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `payer_business_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `receiver_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `web_accept` varchar(255) DEFAULT NULL,
  `account_unique_code` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `user_id` int(11) NOT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `public_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gravatar_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gravatar_id` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8_unicode_ci,
  `timezone` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postcode` int(11) DEFAULT NULL,
  `address_line1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `suburb` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `broker_id` int(11) DEFAULT NULL,
  `pay_amount` decimal(7,2) DEFAULT NULL,
  `is_broker` tinyint(1) NOT NULL DEFAULT '0',
  `company_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pay_success` tinyint(1) DEFAULT '0',
  `customer_uniq_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`user_id`, `firstname`, `public_email`, `lastname`, `mobile`, `gravatar_email`, `gravatar_id`, `location`, `website`, `bio`, `timezone`, `postcode`, `address_line1`, `suburb`, `state`, `broker_id`, `pay_amount`, `is_broker`, `company_name`, `pay_success`, `customer_uniq_id`, `customer_key`) VALUES
(1, 'huang', 'cougar999@gmail.com', 'huang', '123123', 'cougar999@gmail.com', 'e50ae92be450e004cf63482fdd7c61f9', 'AU', 'http://sss.com', '', 'Australia/Melbourne', 3777, '8ss', 'smss', 'vicss', 0, NULL, 0, NULL, 0, NULL, NULL),
(2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, NULL, NULL),
(3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, NULL, NULL),
(6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `social_account`
--

CREATE TABLE `social_account` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `client_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `code` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `token`
--

CREATE TABLE `token` (
  `user_id` int(11) NOT NULL,
  `code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL,
  `type` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `token`
--

INSERT INTO `token` (`user_id`, `code`, `created_at`, `type`) VALUES
(1, '9LjFpL98nCIeswW-ME5IWiHPWV2Y00rE', 1473042277, 0),
(2, 'mrdQz2HcdZ-IdqNvYlYmraSvCE9paiWu', 1473301497, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `confirmed_at` int(11) DEFAULT NULL,
  `unconfirmed_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blocked_at` int(11) DEFAULT NULL,
  `registration_ip` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password_hash`, `auth_key`, `confirmed_at`, `unconfirmed_email`, `blocked_at`, `registration_ip`, `created_at`, `updated_at`, `flags`) VALUES
(1, 'admin', 'admin@admin.com', '$2y$10$ZyUww68SBL6zOnHEl4daquRp0VXx3B.WxxnYvYpBkSUHuGlSARGga', 'yxO5v9An-COjlDVJv9T7OAPa5ai71ZOS', 1467865647, NULL, NULL, '::1', 1473042277, 1477912646, 0),
(2, 'subadmin', 'sss@sss.com', '$2y$10$yiEmb8eDFUk8dQkkhe8A9.NyEl3wMAO.sCZyFLgupH/tiDujp.VOS', 'M7fjSTby2yhilXQMI6GudlmhRE81hQoN', 1473301530, NULL, NULL, '::1', 1473301497, 1473301497, 0),
(3, 'sunshine', 'exx@exxx.com', '$2y$10$Hev5Dn5fpRtzcUIh21245eIczrNY2ysBMhXMgiOfNPcGBXotNfe.a', 'nAhshANs8Z68cMi7X3hYnRd2Xm0CsDoi', 1473301656, NULL, NULL, '::1', 1473301656, 1473301656, 0),
(6, 'test', 'test@fyz.com', '$2y$10$eVbgvznIwawqKlssYyv2juL1Fd0IClwdCfdDOqd1rb1XLlFY0Po/C', 'OljeyqHufWaFFkZsFXygnAXc4YM6LQZ9', 1475551182, NULL, NULL, '::1', 1475551182, 1475551182, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD PRIMARY KEY (`item_name`,`user_id`);

--
-- Indexes for table `auth_item`
--
ALTER TABLE `auth_item`
  ADD PRIMARY KEY (`name`),
  ADD KEY `rule_name` (`rule_name`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD PRIMARY KEY (`parent`,`child`),
  ADD KEY `child` (`child`);

--
-- Indexes for table `auth_rule`
--
ALTER TABLE `auth_rule`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent` (`parent`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `account_unique` (`customer_uniq_id`,`customer_key`),
  ADD UNIQUE KEY `account_unique_code` (`txn_type`),
  ADD KEY `fk_user_account` (`user_id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `social_account`
--
ALTER TABLE `social_account`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `account_unique` (`provider`,`client_id`),
  ADD UNIQUE KEY `account_unique_code` (`code`),
  ADD KEY `fk_user_account` (`user_id`);

--
-- Indexes for table `token`
--
ALTER TABLE `token`
  ADD UNIQUE KEY `token_unique` (`user_id`,`code`,`type`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_unique_email` (`email`),
  ADD UNIQUE KEY `user_unique_username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `social_account`
--
ALTER TABLE `social_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `auth_item`
--
ALTER TABLE `auth_item`
  ADD CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `menu` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `profile`
--
ALTER TABLE `profile`
  ADD CONSTRAINT `fk_user_profile` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `social_account`
--
ALTER TABLE `social_account`
  ADD CONSTRAINT `fk_user_account` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `token`
--
ALTER TABLE `token`
  ADD CONSTRAINT `fk_user_token` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
