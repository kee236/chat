-- Create add_on
INSERT INTO `add_ons` (`id`, `add_on_name`, `unique_name`, `version`, `installed_at`, `update_at`, `purchase_code`, `module_folder_name`, `project_id`) VALUES (36, 'Simple support desk', 'SimplesupportDesk', '1.0', NULL, NULL, '', 'SimplesupportDesk', 0);

-- There is no module for this add_on.

-- Create table for support tickets
CREATE TABLE IF NOT EXISTS `fb_simple_support_desk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `support_category` int(11) NOT NULL,
  `ticket_title` text NOT NULL,
  `ticket_text` longtext NOT NULL,
  `ticket_open_time` datetime NOT NULL,
  `ticket_status` enum('1','2','3') NOT NULL COMMENT '1=Open,2=Closed,3=Resolved',
  `display` enum('0','1') NOT NULL DEFAULT '1',
  `last_action_at` datetime NOT NULL,
  `last_replied_by` int(11) NOT NULL,
  `last_replied_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Create table for support ticket replies
CREATE TABLE IF NOT EXISTS `fb_support_desk_reply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reply_id` int(11) NOT NULL COMMENT 'ticket_id',
  `user_id` int(11) NOT NULL,
  `ticket_reply_text` longtext NOT NULL,
  `ticket_reply_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `reply_id` (`reply_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Create table for support categories
CREATE TABLE IF NOT EXISTS `fb_support_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) NOT NULL,
  `deleted` enum('0','1') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
