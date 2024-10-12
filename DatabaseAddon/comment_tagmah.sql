CREATE TABLE IF NOT EXISTS `tag_machine_enabled_post_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `facebook_rx_fb_user_info_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `page_info_table_id` int(11) NOT NULL,
  `page_id` varchar(255) NOT NULL,
  `page_name` varchar(255) NOT NULL,
  `page_profile` text NOT NULL,
  `post_id` varchar(255) NOT NULL,
  `post_description` longtext NOT NULL,
  `post_created_at` datetime NOT NULL,
  `last_updated_at` datetime NOT NULL,
  `commenter_count` int(11) NOT NULL,
  `comment_count` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `facebook_rx_fb_user_info_id` (`facebook_rx_fb_user_info_id`),
  KEY `user_id` (`user_id`),
  KEY `page_info_table_id` (`page_info_table_id`),
  KEY `post_id` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE IF NOT EXISTS `tag_machine_commenter_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_machine_enabled_post_list_id` int(11) NOT NULL,
  `facebook_rx_fb_user_info_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `page_info_table_id` int(11) NOT NULL,
  `page_id` varchar(255) NOT NULL,
  `page_name` varchar(255) NOT NULL,
  `post_id` varchar(255) NOT NULL,
  `last_comment_id` varchar(255) NOT NULL,
  `last_comment_time` datetime NOT NULL,
  `commenter_fb_id` varchar(255) NOT NULL,
  `commenter_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tag_machine_enabled_post_list_id` (`tag_machine_enabled_post_list_id`),
  KEY `facebook_rx_fb_user_info_id` (`facebook_rx_fb_user_info_id`),
  KEY `user_id` (`user_id`),
  KEY `page_info_table_id` (`page_info_table_id`),
  KEY `post_id` (`post_id`),
  KEY `commenter_fb_id` (`commenter_fb_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE IF NOT EXISTS `tag_machine_comment_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_machine_enabled_post_list_id` int(11) NOT NULL,
  `facebook_rx_fb_user_info_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `page_info_table_id` int(11) NOT NULL,
  `page_id` varchar(255) NOT NULL,
  `page_name` varchar(255) NOT NULL,
  `post_id` varchar(255) NOT NULL,
  `comment_id` varchar(255) NOT NULL,
  `comment_text` longtext NOT NULL,
  `commenter_fb_id` varchar(255) NOT NULL,
  `commenter_name` varchar(255) NOT NULL,
  `comment_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tag_machine_enabled_post_list_id` (`tag_machine_enabled_post_list_id`),
  KEY `facebook_rx_fb_user_info_id` (`facebook_rx_fb_user_info_id`),
  KEY `user_id` (`user_id`),
  KEY `page_info_table_id` (`page_info_table_id`),
  KEY `post_id` (`post_id`),
  KEY `comment_id` (`comment_id`),
  KEY `commenter_fb_id` (`commenter_fb_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE IF NOT EXISTS `tag_machine_bulk_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `facebook_rx_fb_user_info_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `tag_machine_enabled_post_list_id` int(11) NOT NULL,
  `campaign_name` varchar(255) NOT NULL,
  `tag_database` longtext NOT NULL,
  `tag_exclude` longtext NOT NULL,
  `tag_content` longtext NOT NULL,
  `uploaded_image_video` varchar(255) NOT NULL,
  `schedule_type` enum('now','later') NOT NULL,
  `schedule_time` datetime NOT NULL,
  `time_zone` varchar(255) NOT NULL,
  `posting_status` enum('0','1','2') NOT NULL COMMENT '0 = pending, 1= processing, 2=completed',
  `campaign_created` datetime NOT NULL,
  `last_updated_at` datetime NOT NULL,
  `commenter_count` int(11) NOT NULL,
  `successfully_sent` int(11) NOT NULL,
  `last_try_error_count` int(11) NOT NULL,
  `error_message` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `facebook_rx_fb_user_info_id` (`facebook_rx_fb_user_info_id`),
  KEY `user_id` (`user_id`),
  KEY `tag_machine_enabled_post_list_id` (`tag_machine_enabled_post_list_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE IF NOT EXISTS `tag_machine_bulk_reply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `facebook_rx_fb_user_info_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `tag_machine_enabled_post_list_id` int(11) NOT NULL,
  `page_info_table_id` int(11) NOT NULL,
  `page_id` varchar(255) NOT NULL,
  `page_name` varchar(255) NOT NULL,
  `page_profile` text NOT NULL,
  `post_id` varchar(255) NOT NULL,
  `campaign_name` varchar(255) NOT NULL,
  `reply_content` longtext NOT NULL,
  `uploaded_image_video` varchar(255) NOT NULL,
  `reply_multiple` enum('0','1') NOT NULL,
  `report` longtext NOT NULL,
  `schedule_type` enum('now','later') NOT NULL,
  `schedule_time` datetime NOT NULL,
  `time_zone` varchar(255) NOT NULL,
  `posting_status` enum('0','1','2') NOT NULL COMMENT '0 = pending, 1= processing, 2=completed',
  `campaign_created` datetime NOT NULL,
  `last_updated_at` datetime NOT NULL,
  `total_reply` int(11) NOT NULL,
  `successfully_sent` int(11) NOT NULL,
  `last_try_error_count` int(11) NOT NULL,
  `error_message` text NOT NULL,
  `delay_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `facebook_rx_fb_user_info_id` (`facebook_rx_fb_user_info_id`),
  KEY `user_id` (`user_id`),
  KEY `tag_machine_enabled_post_list_id` (`tag_machine_enabled_post_list_id`),
  KEY `page_info_table_id` (`page_info_table_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE IF NOT EXISTS `tag_machine_bulk_reply_send` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `campaign_id` int(11) NOT NULL,
  `commenter_name` varchar(255) NOT NULL,
  `commenter_fb_id` varchar(255) NOT NULL,
  `comment_id` varchar(255) NOT NULL,
  `comment_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `campaign_id` (`campaign_id`),
  KEY `commenter_fb_id` (`commenter_fb_id`),
  KEY `comment_id` (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
