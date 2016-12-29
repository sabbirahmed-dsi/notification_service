INSERT INTO `ref_notification_type` (`notification_type_id`, `description`, `is_active`, `loader`, `name`, `version`)
VALUES (1, NULL, 1, 'com.dsi.notification.handler.EmailNotificationHandler', 'Email', 1), (2, NULL, 1, 'com.dsi.notification.handler.SMSNotificationHandler', 'SMS', 1);

INSERT INTO `dsi_notification_config` (`notification_config_id`, `config_json`, `system_id`, `version`, `notification_type_id`)
VALUES (1, '{"username":"triposocial.info@gmail.com","password":"dynamic4trip","host":"smtp.gmail.com","transport":"smtp","port":"587","auth":"true","ttl":"true"}', '425744ba-6c10-47c0-91cf-5a4c05265b56', 1, 1);


-------------------------------- Employee ---------------------------------

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`)
VALUES ('1', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', 'Subject:\n"+"\n"+"Reset Your Password\n"+"\n"+"Body:\n"+"\n"+
            "Dear  ${EmployeeFirstName} ${EmployeeLastName},\n"+
            "You requested a new password for your account. You can reset your password by clicking the link below:\n"+
            "[Link]\n"+
            "\n"+
            "If you did not request for a new password, please ignore this mail.\n"+
            " \n"+
            "Sincerely,\n"+
            "${TenantName}', 'Forgot Employee Profile', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('2', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', 'Subject:
"+
            "\\n"+
            "Your Password Has Been Reset\\n"+
            "\\n"+
            "Body:\\n"+
            "\\n"+
            "Dear  ${EmployeeFirstName} ${EmployeeLastName},\\n"+
            "Your password has been reset to ${NewPassword}\\n"+
            "\\n"+
            "We recommend that you change your password after you login.\\n"+
            " \\n"+
            "Sincerely,\\n"+
            "${TenantName}', 'Password Reset Confirmation', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('3', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', 'Subject:
"+
            "\\n"+
            "Your Password Has Been changed\\n"+
            "\\n"+
            "Body:\\n"+
            "\\n"+
            "Dear  ${EmployeeFirstName} ${EmployeeLastName},\\n"+
            "\\n"+
            "Your password has been successfully changed.\\n"+
            "\\n"+
            " \\n"+
            "Sincerely,\\n"+
            "${TenantName}', 'Password change Confirmation', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('4', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', 'Subject:
" +
                    "\\n" +
                    "Employee Registration Confirmation\\n" +
                    "\\n" +
                    "Body:\\n" +
                    "\\n" +
                    "Dear ${EmployeeFirstName} ${EmployeeLastName},\\n" +
                    "\\n" +
                    "Welcome to ${TenantName}. You have been successfully registered as an employee of ${TenantName}. You can access all your information in the following link: \\n" +
                    "[link]\\n" +
                    "\\n" +
                    "The following is your login credential:\\n" +
                    "Username: ${UserName}\\n" +
                    "Password: ${Password}\\n" +
                    "\\n" +
                    "Your initital password has been system generated. We recommend that you change it after you login the first time.\\n" +
                    "\\n" +
                    "\\n" +
                    "See you soon!\\n" +
                    "${TenantName}', 'Create Employee Profile', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('5', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', 'Subject:
" +
                    "\\n" +
                    "Updated Employee Profile\\n" +
                    "\\n" +
                    "Body:\\n" +
                    "\\n" +
                    "Dear ${EmployeeFirstName} ${EmployeeLastName},\\n" +
                    "\\n" +
                    "Your employee profile has been successfully updated. Please view the changes made and contact HR for more information. You can access all your information in the following link: \\n" +
                    "[Link]\\n" +
                    "\\n" +
                    "\\n" +
                    "Regards,\\n" +
                    "${TenantName}', 'Update Employee Profile', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('6', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', 'Subject:
" +
                    "\\n" +
                    "Inactive Employee Profile\\n" +
                    "\\n" +
                    "Body:\\n" +
                    "\\n" +
                    "Dear${EmployeeFirstName} ${EmployeeLastName},\\n" +
                    "\\n" +
                    "Due to being inactive as an employee of ${TenantName}, your profile has been updated as Inactive Employee Profile. You can acces all your information in the following link: \\n" +
                    "[Link]\\n" +
                    "\\n" +
                    "\\n" +
                    "Regards,\\n" +
                    "${TenantName}', 'Inactive Employee Profile', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('7', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', 'Subject:
" +
                        "\\n" +
                        "Inactive Employee Profile In Your Team\\n" +
                        "\\n" +
                        "Body:\\n" +
                        "\\n" +
                        "Dear ${LeadFirstName}${LeadLastName},\\n" +
                        "\\n" +
                        "As ${EmployeeFirstName} ${EmployeeLastName}, in your team, is being inactive as an employee of ${TenantName}, the profile has been updated as Inactive Employee Profile. \\n" +
                        "\\n" +
                        "\\n" +
                        "Regards,\\n" +
                        "${TenantName}', 'Inactive Employee Profile', '1', '1');


----------------------------------------- Client ----------------------------------

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('8', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', 'Dear ${ManagerFirstName}${ManagerLastName}/${HRFirstName}${HRLastName},
"+
        "\\n"+
        "${ClientName} client has been successfully created for the ${ProjectName} project.\\n"+
        "\\n"+
        "Regards\\n"+
        "${TenantName}', 'Create Client', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('9', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', 'Dear ${ManagerFirstName}${ManagerLastName}/${HRFirstName}${HRLastName},
"+
        "\\n"+
        "${ClientName} client has been successfully updated for the ${ProjectName} project.\\n"+
        "\\n"+
        "Regards\\n"+
        "${TenantName}', 'Update Client', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('10', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', 'Dear ${ManagerFirstName}${ManagerLastName}/${HRFirstName}${HRLastName},
"+
        "\\n"+
        "${ClientName} client has been successfully deleted for the ${ProjectName} project.\\n"+
        "\\n"+
        "Regards\\n"+
        "${TenantName}', 'Client Delete', '1', '1');


----------------------------------- Team ----------------------------------------

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('11', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', 'Dear ${ManagerFirstName}${ManagerLastName}/${HRFirstName}${HRLastName},
" +
                    "\\n" +
                    "${TeamName} has been successfully created under ${LeadFirstName} ${LeadLastName} team lead.\\n" +
                    "\\n" +
                    "Regards,\\n" +
                    "${TenantName}', 'Create Team', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('12', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', 'Dear ${ManagerFirstName}${ManagerLastName}/${HRFirstName}${HRLastName},
" +
                    "\\n" +
                    "${TeamName} has been successfully updated under ${LeadFirstName} ${LeadLastName} team lead.\\n" +
                    "\\n" +
                    "Regards,\\n" +
                    "${TenantName}', 'Update Team', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('13', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', 'Dear ${ManagerFirstName}${ManagerLastName}/${HRFirstName}${HRLastName},
" +
                    "\\n" +
                    "${TeamName} has been successfully deleted under ${LeadFirstName} ${LeadLastName} team lead.\\n" +
                    "\\n" +
                    "Regards,\\n" +
                    "${TenantName}', 'Delete Team', '1', '1');



