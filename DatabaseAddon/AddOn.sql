-- Create add_on
INSERT INTO `add_ons` (`id`, `add_on_name`, `unique_name`, `version`, `installed_at`, `update_at`, `purchase_code`, `module_folder_name`, `project_id`) VALUES (29, 'Messenger Bot Enhancers', 'messenger_bot_enhancers', '2.0.3', NULL, NULL, '', 'messenger_bot_enhancers', 30);

-- Create modules
INSERT INTO `modules` (`id`, `module_name`, `add_ons_id`, `extra_text`, `limit_enabled`, `bulk_limit_enabled`, `deleted`) VALUES (211, 'Messenger Bot - Enhancers : Broadcast : Subscriber Bulk Message Send', 29, 'month', '1', '1', '0');
INSERT INTO `modules` (`id`, `module_name`, `add_ons_id`, `extra_text`, `limit_enabled`, `bulk_limit_enabled`, `deleted`) VALUES (213, 'Messenger Bot - Enhancers : Engagement : Checkbox Plugin', 29, '', '1', '0', '0');
INSERT INTO `modules` (`id`, `module_name`, `add_ons_id`, `extra_text`, `limit_enabled`, `bulk_limit_enabled`, `deleted`) VALUES (214, 'Messenger Bot - Enhancers : Engagement : Send to Messenger', 29, '', '1', '0', '0');
INSERT INTO `modules` (`id`, `module_name`, `add_ons_id`, `extra_text`, `limit_enabled`, `bulk_limit_enabled`, `deleted`) VALUES (215, 'Messenger Bot - Enhancers : Engagement : m.me Links', 29, '', '1', '0', '0');
INSERT INTO `modules` (`id`, `module_name`, `add_ons_id`, `extra_text`, `limit_enabled`, `bulk_limit_enabled`, `deleted`) VALUES (217, 'Messenger Bot - Enhancers : Engagement : Customer Chat Plugin', 29, '', '1', '0', '0');
INSERT INTO `modules` (`id`, `module_name`, `add_ons_id`, `extra_text`, `limit_enabled`, `bulk_limit_enabled`, `deleted`) VALUES (218, 'Messenger Bot - Enhancers : Sequence Messaging : Message Send', 29, '', '1', '0', '0');
INSERT INTO `modules` (`id`, `module_name`, `add_ons_id`, `extra_text`, `limit_enabled`, `bulk_limit_enabled`, `deleted`) VALUES (219, 'Messenger Bot - Enhancers : Sequence Messaging Campaign', 29, '', '1', '0', '0');
