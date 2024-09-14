
CREATE TABLE `woocommerce_drip_campaign` (
  `id` int(11) NOT NULL,
  `campaign_name` varchar(250) NOT NULL,
  `page_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message_content` text NOT NULL,
  `message_content_hourly` text NOT NULL,
  `created_at` datetime NOT NULL,
  `last_sent_at` datetime NOT NULL,
  `drip_type` enum('default','messenger_bot_engagement_checkbox','messenger_bot_engagement_send_to_msg','messenger_bot_engagement_mme','messenger_bot_engagement_messenger_codes','messenger_bot_engagement_2way_chat_plugin','custom') NOT NULL DEFAULT 'default',
  `campaign_type` enum('messenger','email','sms') NOT NULL DEFAULT 'messenger',
  `engagement_table_id` int(11) NOT NULL,
  `between_start` varchar(50) NOT NULL DEFAULT '00:00',
  `between_end` varchar(50) NOT NULL DEFAULT '23:59',
  `timezone` varchar(250) NOT NULL,
  `message_tag` varchar(255) NOT NULL,
  `total_unsubscribed` int(11) NOT NULL,
  `last_unsubscribed_at` datetime NOT NULL,
  `external_sequence_sms_api_id` varchar(50) NOT NULL,
  `external_sequence_email_api_id` varchar(50) NOT NULL,
  `media_type` enum('fb','ig') NOT NULL DEFAULT 'fb',
  `visual_flow_campaign_id` int(11) NOT NULL,
  `visual_flow_sequence_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------
--------------

--
-- Table structure for table `woocommerce_drip_campaign_webhook_call`
--

CREATE TABLE `woocommerce_drip_campaign_webhook_call` (
  `user_id` int(11) NOT NULL,
  `page_table_id` int(11) NOT NULL,
  `wc_user_id` int(11) NOT NULL,
  `cart_url` text NOT NULL,
  `checkout_url` text NOT NULL,
  `wc_session_unique_id` varchar(255) NOT NULL,
  `woocommerce_drip_campaign_id` int(11) NOT NULL,
  `wc_first_name` varchar(255) NOT NULL,
  `wc_last_name` varchar(255) NOT NULL,
  `wc_email` varchar(255) NOT NULL,
  `wc_mobile` varchar(255) NOT NULL,
  `check_box_unique_id` varchar(255) NOT NULL,
  `action_type` varchar(255) NOT NULL,
  `cart_info` longtext NOT NULL,
  `checkout_info` longtext NOT NULL,
  `confirmation_response` longtext NOT NULL,
  `initial_date` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `wc_first_name_bill` varchar(255) NOT NULL,
  `wc_last_name_bill` varchar(255) NOT NULL,
  `wc_email_bill` varchar(255) NOT NULL,
  `wc_mobile_bill` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;




CREATE TABLE `wordpress_config` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `app_name` varchar(255) NOT NULL,
  `client_id` varchar(255) NOT NULL,
  `client_secret` varchar(255) NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '0',
  `deleted` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;


-- --------------------------------------------------------

--
-- Table structure for table `wordpress_users_info`
--

CREATE TABLE `wordpress_users_info` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `blog_id` varchar(200) NOT NULL,
  `blog_url` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `icon` text NOT NULL,
  `posts` int(11) NOT NULL,
  `access_token` varchar(255) NOT NULL,
  `categories` varchar(255) NOT NULL,
  `last_update_time` datetime NOT NULL,
  `deleted` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;




CREATE TABLE `ultrapost_auto_reply` (
  `id` int(11) NOT NULL,
  `ultrapost_campaign_name` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `reply_type` varchar(200) NOT NULL,
  `auto_like_comment` enum('no','yes') NOT NULL,
  `multiple_reply` enum('no','yes') NOT NULL,
  `comment_reply_enabled` enum('no','yes') NOT NULL,
  `nofilter_word_found_text` longtext NOT NULL,
  `auto_reply_text` longtext NOT NULL,
  `hide_comment_after_comment_reply` enum('no','yes') NOT NULL,
  `is_delete_offensive` enum('hide','delete') NOT NULL,
  `offensive_words` longtext NOT NULL,
  `private_message_offensive_words` longtext NOT NULL,
  `page_ids` varchar(255) NOT NULL,
  `structured_message` enum('no','yes') NOT NULL DEFAULT 'no',
  `trigger_matching_type` enum('exact','string') NOT NULL DEFAULT 'exact' COMMENT 'exact keyword or string match',
  `page_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;