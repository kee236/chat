INSERT INTO add_ons (add_on_name, unique_name, version, installed_at, update_at, purchase_code, module_folder_name, project_id) 
VALUES ('Messenger Bot Connectivity', 'messenger_bot_connectivity', '2.5.7', NOW(), NOW(), '', 'messenger_bot_connectivity', 31);

-- เพิ่ม Modules ลงในตาราง `modules`
INSERT INTO modules (module_name, bulk_limit_enabled, limit_enabled, extra_text, add_ons_id) 
VALUES 
('Messenger Bot - Connectivity : JSON API', '0', '1', '', LAST_INSERT_ID()),
('Messenger Bot - Connectivity : Webview Builder', '0', '1', '', LAST_INSERT_ID());


INSERT INTO `modules` (`module_name`, `bulk_limit_enabled`, `limit_enabled`, `extra_text`, `add_ons_id`) 
VALUES 
('User Input Flow Campaign', '0', '1', 'month', LAST_INSERT_ID());


INSERT INTO `add_ons` 
(`add_on_name`, `unique_name`, `version`, `installed_at`, `update_at`, `purchase_code`, `module_folder_name`, `project_id`) 
VALUES 
('User Input & Custom Fields', 'custom_field_manager', '2.0.1', NOW(), NOW(), '', 'custom_field_manager', 49);


INSERT INTO modules (module_name, bulk_limit_enabled, limit_enabled, extra_text, add_ons_id) 

VALUES 

('Messenger Bot - Connectivity : JSON API', '0', '1', '', LAST_INSERT_ID()),

('Messenger Bot - Connectivity : Webview Builder', '0', '1', '', LAST_INSERT_ID());

