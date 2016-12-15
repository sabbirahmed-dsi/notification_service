INSERT INTO `ref_notification_type` (`notification_type_id`, `description`, `is_active`, `loader`, `name`, `version`)
VALUES (1, NULL, 1, 'com.dsi.notification.handler.EmailNotificationHandler', 'Email', 1), (2, NULL, 1, 'com.dsi.notification.handler.SMSNotificationHandler', 'SMS', 1);

INSERT INTO `dsi_notification_config` (`notification_config_id`, `config_json`, `system_id`, `version`, `notification_type_id`)
VALUES (1, '{"username":"triposocial.info@gmail.com","password":"dynamic4trip","host":"smtp.gmail.com","transport":"smtp","port":"587","auth":"true","ttl":"true"}', '425744ba-6c10-47c0-91cf-5a4c05265b56', 1, 1);


INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`)
VALUES ('1', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{"firstName":"Sabbir","lastName":"Ahmed"}', 'Create Employee Profile', '1', '1');