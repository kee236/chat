  `user_id` int(11) NOT NULL,
  `domain_name` varchar(191) NOT NULL,
  `user_key` varchar(191) NOT NULL,
  `authentication_key` varchar(191) NOT NULL,
  `blog_category` text DEFAULT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `deleted` enum('0','1') NOT NULL DEFAULT '0',
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `error_message` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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