-- Create add_on
INSERT INTO `add_ons` (`id`, `add_on_name`, `unique_name`, `version`, `installed_at`, `update_at`, `purchase_code`, `module_folder_name`, `project_id`) VALUES (25, 'Google My Business Made Easy', 'gmb', '1.0', NULL, NULL, '', 'gmb', 55);

-- Create modules
INSERT INTO `modules` (`id`, `module_name`, `add_ons_id`, `extra_text`, `limit_enabled`, `bulk_limit_enabled`, `deleted`) VALUES (300, 'Google My Business: Account Import', 25, '', '1', '0', '0');
INSERT INTO `modules` (`id`, `module_name`, `add_ons_id`, `extra_text`, `limit_enabled`, `bulk_limit_enabled`, `deleted`) VALUES (301, 'Google My Business: Answer To Questions', 25, '', '0', '0', '0');
INSERT INTO `modules` (`id`, `module_name`, `add_ons_id`, `extra_text`, `limit_enabled`, `bulk_limit_enabled`, `deleted`) VALUES (302, 'Google My Business: Reply To Reviews', 25, '', '0', '0', '0');
INSERT INTO `modules` (`id`, `module_name`, `add_ons_id`, `extra_text`, `limit_enabled`, `bulk_limit_enabled`, `deleted`) VALUES (303, 'Google My Business: Post To Locations', 25, 'month', '1', '1', '0');
INSERT INTO `modules` (`id`, `module_name`, `add_ons_id`, `extra_text`, `limit_enabled`, `bulk_limit_enabled`, `deleted`) VALUES (304, 'Google My Business: Media Upload To Locations', 25, 'month', '1', '1', '0');
INSERT INTO `modules` (`id`, `module_name`, `add_ons_id`, `extra_text`, `limit_enabled`, `bulk_limit_enabled`, `deleted`) VALUES (305, 'Google My Business: RSS Auto Posting', 25, 'month', '1', '0', '0');

-- Create table for google user accounts
CREATE TABLE IF NOT EXISTS `google_user_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `google_account_id` varchar(250) NOT NULL,
  `account_display_name` text NOT NULL,
  `email` varchar(250) NOT NULL,
  `profile_photo` text NOT NULL,
  `refresh_token` text NOT NULL,
  `access_token` text NOT NULL,
  `access_token_expire_time` varchar(250) NOT NULL,
  `last_updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Create table for google business locations
CREATE TABLE IF NOT EXISTS `google_business_locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_account_id` int(11) NOT NULL,
  `location_id` text NOT NULL,
  `location_display_name` text NOT NULL,
  `location_name` text NOT NULL,
  `map_url` text NOT NULL,
  `new_review_url` text NOT NULL,
  `primary_category` text NOT NULL,
  `additional_categories` text NOT NULL,
  `address` text NOT NULL,
  `latitude` varchar(250) NOT NULL,
  `longitude` varchar(250) NOT NULL,
  `primary_phone` varchar(250) NOT NULL,
  `additional_phones` text NOT NULL,
  `website` text NOT NULL,
  `profile_photo` text NOT NULL,
  `cover_photo` text NOT NULL,
  `last_updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Create table for google review reply settings
CREATE TABLE IF NOT EXISTS `google_review_reply_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `five_star` longtext NOT NULL,
  `four_star` longtext NOT NULL,
  `three_star` longtext NOT NULL,
  `two_star` longtext NOT NULL,
  `one_star` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Create table for google rss feed posting
CREATE TABLE IF NOT EXISTS `google_rss_feed_posting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `feed_name` varchar(255) NOT NULL,
  `feed_url` text NOT NULL,
  `posting_message` text NOT NULL,
  `default_media_url` text NOT NULL,
  `posting_timezone` varchar(255) NOT NULL,
  `posting_start_time` varchar(50) NOT NULL,
  `posting_end_time` varchar(50) NOT NULL,
  `location_ids` text NOT NULL,
  `location_names` text NOT NULL,
  `last_updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
