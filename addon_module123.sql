-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 12, 2024 at 07:25 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `your_database_name`
--
CREATE DATABASE IF NOT EXISTS `your_database_name` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `your_database_name`;

-- --------------------------------------------------------

--
-- Table structure for table `add_ons`
--

CREATE TABLE `add_ons` (
  `id` int(11) NOT NULL,
  `add_on_name` varchar(255) NOT NULL,
  `unique_name` varchar(255) NOT NULL,
  `version` varchar(255) NOT NULL,
  `installed_at` datetime NOT NULL,
  `update_at` datetime NOT NULL,
  `purchase_code` varchar(100) NOT NULL,
  `module_folder_name` varchar(255) NOT NULL,
  `project_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `add_ons`
--

INSERT INTO `add_ons` (`id`, `add_on_name`, `unique_name`, `version`, `installed_at`, `update_at`, `purchase_code`, `module_folder_name`, `project_id`) VALUES
(1, 'Facebook Poster', 'ultrapost', '1.0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'ultrapost', 19),
(2, 'Visual Flow Builder', 'visual_flow_builder', '1.6.9', '2022-01-19 12:00:00', '2022-01-19 12:00:00', '', 'visual_flow_builder', 59),
(3, 'Instagram Bot & Private Reply', 'instagram_bot', '1.0', '2022-01-19 12:00:00', '2022-01-19 12:00:00', '', 'instagram_bot', 62),
(4, 'Whatsapp Order Send', 'whatsapp_order_send', '1.1', '2021-07-27 01:19:13', '0000-00-00 00:00:00', 'r0306292628833360ff42', 'whatsapp_order_send', 58),
(5, 'E-commerce Related Products', 'ecommerce_related_products', '1.0', '2021-07-27 01:23:04', '0000-00-00 00:00:00', 'r03062123194079260ff4', 'ecommerce_related_products', 61),
(6, 'Affiliate Manager', 'affiliate_system', '1.1', '2021-03-22 19:54:10', '0000-00-00 00:00:00', 'r0306211058160156058d', 'affiliate_system', 57),
(7, 'E-commerce Product Price Variation', 'ecommerce_product_price_variation', '1.0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'ecommerce_product_price_variation', 45),
(8, 'Flowbuilder Insignt', 'message_sent_stat', '1.0', '2021-07-27 01:23:04', '0000-00-00 00:00:00', 'r03062123194079260ff4', 'message_sent_stat', 64),
(9, 'Ecommerce Product Rating & Comment', 'secommerce_review_comment', '1.0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'ecommerce_review_comment', 48),
(10, 'API Documentation', 'api_documentation', '2.0', '2021-07-27 01:23:04', '0000-00-00 00:00:00', 'r03062123194079260ff4', 'api', 46),
(11, 'Blog', 'blog', '1.0', '2021-07-27 01:23:04', '0000-00-00 00:00:00', '', 'blog', 0),
(12, 'Comment Automation : Auto Reply Posts', 'comment_automation_auto_reply_posts', '1.0', '2023-08-30 14:22:00', '2023-08-30 14:22:00', '', 'comment_automation_auto_reply_posts', 1),
(13, 'Conversation Promo Broadcast Send', 'conversation_promo_broadcast_send', '1.0', '2023-08-30 14:22:00', '2023-08-30 14:22:00', '', 'conversation_promo_broadcast_send', 1),
(14, 'Email Broadcast - Email Send', 'email_broadcast_email_send', '1.0', '2023-08-30 14:22:00', '2023-08-30 14:22:00', '', 'email_broadcast_email_send', 1),
(15, 'Facebook Accounts', 'facebook_accounts', '1.0', '2023-08-30 14:22:00', '2023-08-30 14:22:00', '', 'facebook_accounts', 1),
(16, 'Facebook Pages', 'facebook_pages', '1.0', '2023-08-30 14:22:00', '2023-08-30 14:22:00', '', 'facebook_pages', 1),
(17, 'Facebook Pages - Subscribers/Page', 'facebook_pages_subscribers_page', '1.0', '2023-08-30 14:22:00', '2023-08-30 14:22:00', '', 'facebook_pages_subscribers_page', 1),
(18, 'Facebook Posting :  Text/Image/Link/Video Post', 'facebook_posting_text_image_link_video_post', '1.0', '2023-08-30 14:22:00', '2023-08-30 14:22:00', '', 'facebook_posting_text_image_link_video_post', 1),
(19, 'Facebook Posting : Carousel/Slider Post', 'facebook_posting_carousel_slider_post', '1.0', '20208-30 14:22:00', '', 'facebook_posting_carousel_slider_post', 1),
(20, 'Facebook Posting : CTA Post', 'facebook_posting_cta_post', '1.0', '2023-08-30 14:22:00', '2023-08-30 14:22:00', '', 'facebook_posting_cta_post', 1),
(21, 'Comment Automation : Auto Comment Campaign', 'comment_automation_auto_comment_campaign', '1.0', '2023-08-30 14:22:00', '2023-08-30 14:22:00', '', 'comment_automation_auto_comment_campaign', 1),
(22, 'Menu Manager', 'menu_menager', '1.0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'menu_menager', 0),
(24, 'Flowbuilder Conditional', 'flowbuilder_condition', '1.0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'flowbuilder_condition', 63),
(25, 'Google My Business Made Easy', 'gmb', '1.0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'gmb', 55),
(26, 'Hidden Interest Explorer', 'hidden_interest_explorer', '1.7', '2024-08-31 10:02:43', '2024-08-31 10:02:43', '', 'hidden_interest_explorer', 1013),
(27, 'Messenger Bot Connectivity', 'messenger_bot_connectivity', '2.5.7', '2024-08-31 16:53:38', '2024-08-31 16:53:38', '', 'messenger_bot_connectivity', 31),
(28, 'User Input & Custom Fields', 'custom_field_manager', '2.0.1', '2024-08-31 16:58:05', '2024-08-31 16:58:05', '', 'custom_field_manager', 49),
(29, 'Messenger Bot Enhancers', 'messenger_bot_enhancers', '2.0.3', '2024-08-31 16:59:24', '2024-08-31 16:59:24', '', 'messenger_bot_enhancers', 30),
(30, ' NVX Task Manager', 'n_task', '1.2.1', '2024-08-31 16:53:38', '2024-08-31 16:53:38', '', 'n_task', 1101),
(31, 'SMS & Email Sequence', 'sms_email_sequence', '2.0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'sms_email_sequence', 40),
(32, 'E-commerce Digital Product', 'ecommerce_digital_product', '1.0', '2024-09-01 02:13:57', '2024-09-01 02:13:57', '', 'ecommerce_digital_product', 60),
(33, 'Comment Reply Enhancers', 'comment_reply_enhancers', '2.0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'comment_reply_enhancers', 29),
(34, 'VidCasterLive', 'vidcasterlive', '1.0', '2024-09-01 02:13:57', '2024-09-01 02:13:57', '', 'vidcasterlive', 41),
(35, 'WooCommerce Abandoned Cart Recovery ', 'woocommerce_abandoned_cart', '1.0.3', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'woocommerce_abandoned_cart', 33),
(36, 'Simple support desk', 'simplesupportDesk', '2.0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'simplesupportDesk', 0),
(37, 'WooCommerce Integration', 'woocommerce_integration', '2.0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'woocommerce_integration', 50),
(38, 'Comboposter', 'comboposter', '1.0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'comboposter', 19);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` int(11) NOT NULL,
  `module_name` varchar(250) DEFAULT NULL,
  `add_ons_id` int(11) NOT NULL,
  `extra_text` varchar(50) NOT NULL DEFAULT 'month',
  `limit_enabled` enum('0','1') NOT NULL DEFAULT '1',
  `bulk_limit_enabled` enum('0','1') NOT NULL DEFAULT '0',
  `deleted` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `module_name`, `add_ons_id`, `extra_text`, `limit_enabled`, `bulk_limit_enabled`, `deleted`) VALUES
(1, 'Comment Automation : Auto Reply Posts', 12, 'month', '1', '0', '0'),
(2, 'Conversation Promo Broadcast Send', 13, 'month', '1', '1', '0'),
(3, 'Facebook Accounts', 15, '', '1', '0', '0'),
(4, 'Facebook Pages', 16, '', '1', '0', '0'),
(5, 'Facebook Pages - Subscribers/Page', 17, '', '1', '0', '0'),
(6, 'Facebook Posting :  Text/Image/Link/Video Post', 18, 'month', '1', '0', '0'),
(7, 'Facebook Posting : Carousel/Slider Post', 19, 'month', '1', '0', '0'),
(8, 'Facebook Posting : CTA Post', 20, 'month', '1', '0', '0'),
(9, 'Comment Automation : Auto Comment Campaign', 21, '', '1', '0', '0'),
(10, 'Flowbuilder Conditional Reply', 24, '', '0', '0', '0'),
(11, 'Google My Business: Account Import', 25, '0', '0', '', ''),
(12, 'Google My Business: Post To Locations', 25, '0', '0', '', ''),
(13, 'Google My Business: Media Upload To Locations', 25, '0', '0', '', ''),
(14, 'Google My Business: RSS Auto Posting', 25, '0', '0', '', ''),
(15, 'Hidden Interest Explorer', 26, '', '1', '0', ''),
(16, 'Messenger Bot Connectivity : JSON API', 27, '', '1', '0', '0'),
(17, 'Messenger Bot - Connectivity : Webview Builder', 27, '', '1', '0', '0'),
(18, 'User Input Flow Campaign', 28, 'month', '1', '0', '0'),
(19, 'WooCommerce Integration', 37, '0', '1', '0', '0'),
(20, 'Google My Business: Answer To Questions', 25, '0', '', '', ''),
(21, 'Google My Business: Reply To Reviews', 25, '0', '', '', ''),
(22, 'Messenger Bot - Enhancers : Broadcast : Subscriber Bulk Message Send', 29, '1', '0', '', ''),
(23, 'Messenger Bot - Enhancers : Engagement : Checkbox Plugin', 29, '0', '0', '', ''),
(24, 'Messenger Bot - Enhancers : Engagement : Send to Messenger', 29, '0', '0', '', ''),
(25, 'Messenger Bot - Enhancers : Engagement : m.me Links', 29, '0', '0', '', ''),
(26, 'Messenger Bot - Enhancers : Engagement : Customer Chat Plugin', 29, '0', '0', '', ''),
(27, 'Messenger Bot - Enhancers : Sequence Messaging : Message Send', 29, '0', '0', '', ''),
(28, 'Messenger Bot - Enhancers : Sequence Messaging Campaign', 29, '0', '0', '', ''),
(29, 'Whatsapp Send Order', 4, '', '0', '0', '0'),
(30, 'Visual flow builder access', 2, '', '0', '0', '0'),
(31, 'E-commerce Digital Product', 32, '0', '0', '', ''),
(32, 'E-commerce Related Products', 5, '', '1', '0', '0'),
(33, 'Instagram Bot', 3, 'month', '1', '0', '0'),
(34, 'Flowbuilder Conditional Reply', 24, '0', '0', '0', '0'),
(35, 'Flowbuilder Insignt', 8, '0', '0', '0', ''),
(36, 'Comment Reply Enhancers : Comment Hide/Delete and Reply with multimedia content', 33, '', '1', '0', '0'),
(37, 'Comment Reply Enhancers : Comment & Bulk Tag Campaign', 33, 'month', '1', '0', '0'),
(38, 'Comment Reply Enhancers : Bulk Comment Reply Campaign', 33, 'month', '1', '0', '0'),
(39, 'Comment Reply Enhancers : Full Page Auto Reply', 33, '', '1', '0', '0'),
(40, 'Comment Reply Enhancers : Full Page Auto Like/Share', 33, '', '1', '0', '0'),
(41, 'Facebook Live Streaming - Campaigns', 34, 'month', '1', '0', '0'),
(42, 'Facebook Live Streaming - Crossposting/Auto Share/Comment', 34, '', '1', '0', '0'),
(43, 'Subscriber Manager : Background Lead Scan', 0, '', '0', '0', '0'),
(44, 'Inbox Conversation Manager', 0, '', '0', '0', '0'),
(45, 'Social Poster - Account Import : Youtube', 0, '', '1', '0', '0'),
(46, 'Social Poster - Account Import : Pinterest', 0, '', '1', '0', '0'),
(47, 'Social Poster - Account Import : Twitter', 0, '', '1', '0', '0'),
(48, 'Social Poster - Account Import :  Linkedin', 0, '', '1', '0', '0'),
(49, 'Social Poster - Account Import : Reddit', 0, '', '1', '0', '0'),
(50, 'Social Poster - Account Import : Blogger', 0, '', '1', '0', '0'),
(51, 'Social Poster - Account Import :  WordPress', 0, '', '1', '0', '0'),
(52, 'Social Poster - Account Import :  WordPress (Self hosted) ', 0, '', '1', '0', '0'),
(53, 'Social Poster - Text Post', 0, 'month', '1', '1', '0'),
(54, 'Social Poster - Image Post', 0, 'month', '1', '1', '0'),
(55, 'Social Poster - Video Post', 0, 'month', '1', '1', '0'),
(56, 'Social Poster - Link Post', 0, 'month', '1', '1', '0'),
(57, 'Social Poster - HTML Post', 0, 'month', '1', '1', '0'),
(58, 'Social Poster - Access', 0, '', '0', '0', '0'),
(59, 'Messenger Bot - Persistent Menu', 0, '', '0', '0', '0'),
(60, 'Messenger Bot - Persistent Menu : Copyright Enabled', 0, '', '0', '0', '0'),
(61, 'Messenger Bot', 0, '', '0', '0', '0'),
(62, 'RSS Auto Posting', 0, '', '1', '0', '0'),
(63, 'Messenger Bot : Export, Import & Tree View', 0, '', '1', '', '0'),
(64, 'Email Broadcast - Email Send', 14, 'month', '1', '0', '0'),
(65, 'SMS Broadcast - SMS Send', 0, 'month', '1', '0', '0'),
(66, 'Messenger Bot - Email Auto Responder', 0, '', '1', '0', '0'),
(67, 'WooCommerce Abandoned Cart Recovery', 35, '', '1', '0', '0'),
(68, 'Utility Search Tools', 0, 'month', '1', '0', '0'),
(69, 'Messenger E-commerce', 0, '', '1', '0', '0'),
(70, 'One Time Notification Send', 0, 'month', '1', '0', '0'),
(71, 'Social Poster - Account Import :  Medium', 0, '', '1', '0', '0'),
(72, 'Instagram Auto Comment Reply Enable Post', 0, 'month', '1', '0', '0'),
(73, 'E-commerce Product Price Variation', 7, '0', '0', '0', '0'),
(74, 'To Do List / Kanban', 30, '', '0', '0', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_ons`
--
ALTER TABLE `add_ons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_ons`
--
ALTER TABLE `add_ons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3011;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


