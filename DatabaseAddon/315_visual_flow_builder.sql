//315_visual_flow_builder


-- Create add_on
INSERT INTO `add_ons` (`id`, `add_on_name`, `unique_name`, `version`, `installed_at`, `update_at`, `purchase_code`, `module_folder_name`, `project_id`) VALUES (2, 'Visual Flow Builder', 'visual_flow_builder', '1.6.9', NULL, NULL, '', 'visual_flow_builder', 59);

-- Create module
INSERT INTO `modules` (`id`, `module_name`, `add_ons_id`, `extra_text`, `limit_enabled`, `bulk_limit_enabled`, `deleted`) VALUES (315, 'Visual flow builder access', 2, '', '0', '0', '0');

-- Create table for visual flow builder campaigns
CREATE TABLE IF NOT EXISTS `visual_flow_builder_campaign` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `unique_id` varchar(50) NOT NULL,
  `reference_name` text NOT NULL,
  `media_type` enum('fb','ig') NOT NULL DEFAULT 'fb',
  `json_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
