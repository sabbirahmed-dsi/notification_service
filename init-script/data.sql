INSERT INTO `ref_notification_type` (`notification_type_id`, `description`, `is_active`, `loader`, `name`, `version`)
VALUES (1, NULL, 1, 'com.dsi.notification.handler.EmailNotificationHandler', 'Email', 1), (2, NULL, 1, 'com.dsi.notification.handler.SMSNotificationHandler', 'SMS', 1);

INSERT INTO `dsi_notification_config` (`notification_config_id`, `config_json`, `system_id`, `version`, `notification_type_id`)
VALUES (1, '{"username":"triposocial.info@gmail.com","password":"dynamic4trip","host":"smtp.gmail.com","transport":"smtp","port":"587","auth":"true","ttl":"true"}', '425744ba-6c10-47c0-91cf-5a4c05265b56', 1, 1);


-------------------------------- Notification Template ---------------------------------


----------- Employee ------------
INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('1', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
  "subject": "Employee Registration Confirmation",
  "body": "Dear Employee, \\n\\nWelcome to {TenantName}! You have been successfully registered as an employee of {TenantName}. You can access all your information in the following link: \\n{Link}\\nThe following is your login credential:\\nUsername: {UserName}\\nPassword: {Password}\\nYour initital password has been system generated. We recommend that you change it after you login the first time.\\n\\nSee you soon!\\n{TenantName}"
}', 'Employee Registration Confirmation', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('2', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
"subject":"Employee Registration Confirmation"
"body":"Dear Manager/HR,\\n\\n{EmployeeFirstName} {EmployeeLastName} has successfully registered as an employee of {TenantName}. \\n\\nRegards,\\n{TenantName}"
}', 'Employee Registration Confirmation', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('3', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
"subject":"Updated Employee Profile"
"body":"Dear Employee,\\n\\nYour profile has been successfully updated. Please view the changes made and contact HR for more information. You can also view your information in the following link:\\n{Link} \\n\\nRegards,\\n{TenantName}"
}', 'Update Employee Profile', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('4', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
"subject":"Updated Employee Profile"
"body":"Dear Manager/ HR,\\n\\nThe employee profile of {EmployeeFirstName}{EmployeeLastName} has been successfully updated. Please view the changes made. \\n\\nRegards,\\n{TenantName}"
}', 'Update Employee Profile', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('5', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
"subject":"Inactive Employee Profile"
"body":"Dear Employee,\\n\\nDue to being inactive as an employee of {TenantName}, your profile has been updated as Inactive Employee Profile. Please contact the HR for more information.\\n\\nRegards,\\n{TenantName}"
}', 'Inactive Employee', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('6', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
"subject":"Inactive Employee Profile Updated"
"body":"Dear HR/ Manager,\\n\\nAs {EmployeeFirstName} {EmployeeLastName} has been inactive as an employee of {TenantName} his/her profile has been updated as Inactive Employee Profile. \\n\\nRegards,\\n{TenantName}"
}', 'Inactive Employee', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('7', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
"subject":"Inactive Employee Profile In Your Team"
"body":"Dear Team Lead,\\n\\nAs {EmployeeFirstName} {EmployeeLastName} in your team has been inactive as an employee of {TenantName} his/her profile has been updated as Inactive Employee Profile. \\n\\nRegards,\\n{TenantName}"
}', 'Inactive Employee', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('8', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
"subject":"Reset Your Password"
"body":"Dear  Employee,\\n\\You requested a new password for your account. You can reset your password by clicking the link below:
{Link}\\n\\nIf you did not request for a new password, please ignore this mail.\\n\\nRegards,\\n{TenantName}"
}', 'Forgot Employee Profile', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('9', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
"subject":"Your Password Has Been Reset"
"body":"Dear  Employee,\\n\\nYour password has been reset to {New Password}\\n You can view all your information in the following link:\\n{Link}\\n\\nRegards,\\n{TenantName}"
}', 'Password Reset Confirmation', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('10', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
"subject":"Password Change Confirmation"
"body":"Dear  Employee,\\n\\nYour password has been successfully changed.\\n\\nRegards,\\n{TenantlName}"
}', 'Password change Confirmation', '1', '1');


---------- Team -----------
INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('11', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
  "subject": "New Team Confirmation",
  "body": "Dear Manager/HR,\\n\\n{TeamName} has been successfully created with {LeadFirstName} {LeadLastName} as team lead.\\n\\nRegards,\\n{TenantName}"
}', 'Create Team', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('12', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
  "subject": "New Team Confirmation",
  "body": "Dear Team Lead,\\n\\nYou have been successfully assigned as the Team Lead of the new team called {TeamName}. For any enquiry, please contact HR.\\n\\nRegards,\\n{TenantName}"
}', 'Create Team', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('13', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
  "subject": "Updated Team Confirmation",
  "body": "Dear Manager/HR,\\n\\n{TeamName} has been successfully updated with {LeadFirstName} {LeadLastName} as the Team Lead.\\n\\nRegards,\\n{TenantName}"
}', 'Update Team', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('14', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
  "subject": "Updated Team Confirmation",
  "body": "Dear Team Lead,\\n\\nYour {TeamName} team has been successfully updated.For any enquiry, please contact HR.\\n\\nRegards,\\n{TenantName}"
}', 'Update Team', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('15', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
  "subject": "Deleted Team Confirmation",
  "body": "Dear Manager/HR,\\n\\n{TeamName} has been successfully deleted with {LeadFirstName} {LeadLastName} as the Team Lead.\\n\\nRegards,\\n{TenantName}"
}', 'Delete Team', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('16', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
  "subject": "Deleted Team Confirmation",
  "body": "Dear Team Lead,\\n\\nYour {TeamName} team has been deleted. For any enquiry, please contact HR.\\n\\nRegards,\\n{TenantName}"
}', 'Delete Team', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('17', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
  "subject": "Assigned Team Member Confirmation",
  "body": "Dear Manager/HR,\\n\\n{EmployeeFirstName} {EmployeeLastName} has been assigned as a team member in the {TeamName} team, with {LeadFirstName} {LeadLastName} as team lead.\\n\\nRegards,\\n{TenantName}"
}', 'Team Member Assign', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('18', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
  "subject": "Assigned Team Member Confirmation",
  "body": "Dear Team Lead,\\n\\n{EmployeeFirstName} {EmployeeLastName} has been assigned as a team member in your {TeamName} team. Please take the necessary steps to notify the significant people who need to be notified.\\n\\nRegards,\\n{TenantName}"
}', 'Team Member Assign', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('19', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
  "subject": "Assigned Team Member Confirmation",
  "body": "Dear Client,\\n\\n{EmployeeFirstName} {EmployeeLastName} has been assigned as a team member in the {TeamName} team, with {LeadFirstName}{LeadLastName} as team lead.\\n\\nRegards,\\n{TenantName}"
}', 'Team Member Assign', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('20', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
  "subject": "Assigned Team Member Confirmation",
  "body": "Dear Employee,\\n\\nYou have been assigned as a team member in the {TeamName} team, with {LeadFirstName}{LeadLastName} as Team Lead.\\n\\nRegards,\\n{TenantName}"
}', 'Team Member Assign', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('21', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
  "subject": "Unassigned Team Member Confirmation",
  "body": "Dear Manager/HR,\\n\\n{EmployeeFirstName} {EmployeeLastName} has been unassigned from {TeamName} team, with {LeadFirstName}{LeadLastName} as Team Lead.\\n\\nSincerely,\\n{TenantName}"
}', 'Team Member Unassigned', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('22', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
  "subject": "Unassigned Team Member Confirmation",
  "body": "Dear Team Lead,\\n\\n{EmployeeFirstName} {EmployeeLastName} has been unassigned from your {TeamName} team. Please take the necessary steps to notify significant people involved.\\n\\nSincerely,\\n{TenantName}"
}', 'Team Member Unassigned', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('23', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
  "subject": "Unassigned Team Member Confirmation",
  "body": "Dear Client,\\n\\n{EmployeeFirstName} {EmployeeLastName} has been unassigned from {TeamName} team, with {LeadFirstName}{LeadLastName} as team lead.\\n\\nSincerely,\\n{TenantName}"
}', 'Team Member Unassigned', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('24', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
  "subject": "Unassigned Team Member Confirmation",
  "body": "Dear Employee,\\n\\nYou have been unassigned from {TeamName} team, with {LeadFirstName} {LeadLastName} as team lead.\\n\\nSincerely,\\n{TenantName}"
}', 'Team Member Unassigned', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('25', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
  "subject": "Assigned Team to Project Confirmation",
  "body": "Dear Manager/HR,\\n\\n{TeamName} team, of {MemberCount} team members,  has been successfully assigned to {ProjectName} project - {ProjectDescription}, with {LeadFirstName} {LeadLastName} as team lead.\\n\\nRegards,\\n{TenantName}"
}', 'Assign Team to Project', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('26', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
  "subject": "Assigned Team to Project Confirmation",
  "body": "Dear Client,\\n\\n{TeamName} team. of {MemberCount} team member, has been successfully assigned to your {ProjectName} project - {ProjectDescription}, with {LeadFirstName} ${LeadLastName} as team lead.\\n\\nRegards,\\n{TenantName}"
}', 'Assign Team to Project', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('27', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
  "subject": "Assigned Team to Project Confirmation",
  "body": "Dear Employee,\\n\\nYour {TeamName} team. of {MemberCount} team member, has been successfully assigned to {ProjectName} project - {ProjectDescription}, with {LeadFirstName} {LeadLastName} as team lead.\\n\\nRegards,\\n{TenantName}"
}', 'Assign Team to Project', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('28', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
  "subject": "Unassigned Team from Project Confirmation",
  "body": "Dear Manager/HR,\\n\\n{TeamName} team. of {MemberCount} team member, has been unassigned from {ProjectName} project - {ProjectDescription}, with {LeadFirstName} {LeadLastName} as team lead.\\n\\nRegards,\\n{TenantName}"
}', 'Unassign Team from Project', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('29', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
  "subject": "Unassigned Team from Project Confirmation",
  "body": "Dear Client,\\n\\n{TeamName} team of {MemberCount} team member, has been unassigned from your {ProjectName} project - {ProjectDescription}, with {LeadFirstName} {LeadLastName} as team lead.\\n\\nRegards,\\n{TenantName}"
}', 'Unassign Team from Project', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('30', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
  "subject": "Unassigned Team from Project Confirmation",
  "body": "Dear Employee,\\n\\nYour {TeamName} team. of {MemberCount} team member, has been unassigned from {ProjectName} project - {ProjectDescription}, with {LeadFirstName} {LeadLastName} as team lead.\\n\\nRegards,\\n{TenantName}"
}', 'Unassign Team from Project', '1', '1');


--------- Project -----------
INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('31', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
  "subject": "New Project Confirmation",
  "body": "Dear Manager/HR,\\n\\n{ProjectName} project has been successfully created, with {TeamName}.\\n\\nRegards,\\n{TenantName}"
}', 'Create project', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('32', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
  "subject": "Updated Project Confirmation",
  "body": "Dear Manager/HR,\\n\\n{ProjectName} project has been successfully updated, with {TeamName} as team.\\n\\nRegards,\\n{TenantName}"
}', 'Update project', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('33', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
  "subject": "Deleted Project Confirmation",
  "body": "Dear Manager/HR,\\n\\n{ProjectName} project has been successfully deleted.\\n\\nRegards,\\nTenantName}"
}', 'Delete project', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('34', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
  "subject": "Assign Client to Project Confirmation",
  "body": "Dear Manager/HR,\\n\\n{ClientName} client has been successfully assigned to {ProjectName} project - {ProjectDescription}.\\n\\nRegards,\\n{TenantName}"
}', 'Assign Client to Project', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('35', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
  "subject": "Assign Client to Project Confirmation",
  "body": "Dear Client,\\n\\nYou have been successfully assigned to {ProjectName} project - {ProjectDescription}.\\n\\nRegards,\\n{TenantName}"
}', 'Assign Client to Project', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('36', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
  "subject": "Assign Client to Project Confirmation",
  "body": "Dear  Employee,\\n\\n{ClientName} client has been successfully assigned to your {ProjectName} project -  {ProjectDescription}.\\n\\nRegards,\\n{TenantName}"
}', 'Assign Client to Project', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('37', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
  "subject": "Unassign Client to Project Confirmation",
  "body": "Dear Manager/HR,\\n\\n{ClientName} client has been successfully unassigned from {ProjectName} project - {ProjectDescription}.\\n\\nRegards,\\n{TenantName}"
}', 'Unassign Client from Project', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('38', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
  "subject": "Unassign Client to Project Confirmation",
  "body": "Dear Employee,\\n\\n{ClientName} client has been successfully unassigned from  {ProjectName} project - {ProjectDescription}.\\n\\nRegards,\\n{TenantName}"
}', 'Unassign Client from Project', '1', '1');


--------- Client -----------
INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('39', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
"subject":"New Client Confirmation"
"body":"Dear Manager/HR,\\n\\n{ClientName} client has been successfully created for the {ProjectName} project.\\n\\nRegards\\n{TenantName}"
}
', 'Create Client', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('40', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
"subject":"Updated Client Confirmation"
"body":"Dear Manager/HR", \\n\\n{ClientName} client has been successfully updated for the {ProjectName} project.\\n\\nRegards\\n{TenantName}"
}', 'Update Client', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('41', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
"subject":"Deleted Client Confirmation"
"body":"Dear Manager/HR,\\n\\n{ClientName} client has been successfully deleted from the {ProjectName} project.\\n\\nRegards\\n{TenantName}"
}', 'Delete Client', '1', '1');


----------- Leave Request -------------
INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('42', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
"subject":"Leave Application"
"body":"Dear Manager/HR,\\n\\n{EmployeeFirstName} {EmployeeLastName} has applied for leave request for the following dates:
{LeaveStartDate} - {LeaveEndDate}\\n\\nRegards\\n{TenantName}"
}', 'Apply for Leave Application', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('43', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
"subject":"Leave Application"
"Body":"Dear Team Lead,\\n\\n{EmployeeFirstName} {EmployeeLastName} has applied for leave request for the following dates: \\n{LeaveStartDate} - {LeaveEndDate}\\n\\nPlease take the necessary steps to review and adjudicate the application.\\n\\nRegards\\n{TenantName}"
}', 'Apply for Leave Application', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('44', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
"subject":"Leave Application Updated"
"body":"Dear Manager/HR,\\n\\nThe leave application of {EmployeeFirstName} {EmployeeLastName}, for {LeaveStartDate} - {LeaveEndDate}, has been updated. \\n\\nRegards\\n{TenantName}"
}', 'Edit Leave Application (Before Aprroval)', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('45', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
"subject":"Leave Application Updated"
"body":"Dear Team Lead,\\n\\nThe leave application of {EmployeeFirstName} {EmployeeLastName}, for {LeaveStartDate} - {LeaveEndDate}, has been updated.\\n\\nRegards\\n{TenantName}"
}', 'Edit Leave Application (Before Aprroval)', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('46', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
"subject":"Leave Application Cancelled"
"body":"Dear Manager/HR,\\n\\nThe leave application of {EmployeeFirstName} {EmployeeLastName} for {LeaveStartDate} - {LeaveEndDate}, has been cancelled. \\n\\nRegards \\n{TenantName}"
}', 'Cancel Leave Application (Personal)', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('47', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
"subject":"Leave Application Cancelled"
"body":"Dear Lead,\\n\\nThe leave application of {EmployeeFirstName} {EmployeeLastName} for {LeaveStartDate} - {LeaveEndDate}, has been cancelled. \\n\\nRegards \\n{TenantName}"
}', 'Cancel Leave Application (Personal)', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('48', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
"subject":"Approved Leave Cancelled"
"body":"Dear Manager/HR,\\n\\nThe approved leave application of {EmployeeFirstName} {EmployeeLastName} for {ApprovedStartDate} - {ApprovedEndDate}, has been cancelled and notified. \\n\\nRegards \\n{TenantName}"
}', 'Cancel Leave Application (from approved status)', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('49', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
"subject":"Approved Leave Cancelled"
"body":"Dear Lead,\\n\\nThe approved leave application of {EmployeeFirstName} {EmployeeLastName} for {ApprovedStartDate} - {ApprovedEndDate}, has been cancelled and notified. \\nRegards \\n{TenantName}"
}', 'Cancel Leave Application (from approved status)', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('50', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
"subject":"Approved Leave Cancelled"
"body":"Dear Employee,\n\nThe approved leave of your fellow teammate {EmployeeFirstName} {EmployeeLastName}, for {ApprovedStartDate} - {ApprovedEndDate}, has been cancelled. \n\nRegards \n{TenantlName}"
}', 'Cancel Leave Application (from approved status)', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('51', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
"subject":"Approved Leave Cancelled"
"body":"Dear Client,\\n\\nThe approved leave application of {EmployeeFirstName} {EmployeeLastName} for {ApprovedStartDate} - {ApprovedEndDate}, has been cancelled.\\n\\nRegards \\n{TenantName}"
}', 'Cancel Leave Application (from approved status)', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('52', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
"subject":"Leave Application Approved"
"Body":"Dear Manager/HR,\\n\\nThe leave application of {EmployeeFirstName} {EmployeeLastName}, has been approved for the following dates:\\n{ApprovedStartDate} - {ApprovedEndDate}\\n\\nRegards \\n{TenantName}"
}', 'Approve Leave Application', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('53', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
"subject":"Leave Application Approved"
"Body":"Dear Lead,\n\nThe leave application of {EmployeeFirstName} {EmployeeLastName}, for the following dates:\n{ApprovedStartDate} - {ApprovedEndDate} has been approved.\nRegards,\n{TenantName}"
}', 'Approve Leave Application', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('54', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
"subject":"Leave Application Approved"
"Body":"Dear Employee,\\n\\nYour leave application has been approved for the following dates:
{ApprovedStartDate} - {ApprovedEndDate}\\n\\nRegards \\n{TenantName}"
}', 'Approve Leave Application', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('55', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
"subject":"Leave Notification"
"Body":"Dear Client,\\n\\n{EmployeeFirstName} {EmployeeLastName} will be on leave, for the following dates:
{ApprovedStartDate} - {ApprovedEndDate}\\n\\nRegards\\n{TenantName}"
}', 'Approve Leave Application', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('56', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
"subject":"Leave Application Denied"
"body":"Dear Manager/HR,\\n\\nThe leave application of {EmployeeFirstName} {EmployeeLastName} for {LeaveStartDate} - {LeaveEndDate}, has been denied. \\n\\nRegards\\n{TenantName}"
}', 'Deny Leave Application', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('57', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
"subject":"Leave Application Denied"
"body":"Dear Employee,\\n\\nYour leave application, for {LeaveStartDate} - {LeaveEndDate}, has been denied.
For any enquiry, please contact HR/Team Lead.\\n\\nRegards\\n{TenantName}"
}', 'Deny Leave Application', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('58', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
"subject":"Special Leave Application"
"body":"Dear Manager/HR,\\n\\nThe leave application for {EmployeeFirstName} {EmployeeLastName} has been applied due to {Reason}, for the following dates: \\n{LeaveStartDate} - {LeaveEndDate}\\n\\nRegards\\n{TenantName}"
}', 'Apply For Special Leave Application', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('59', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
"subject":"Leave Application"
"body":"Dear Lead,\\n\\nThe leave application for {EmployeeFirstName} {EmployeeLastName} has been applied due to {Reason}, for the following dates: \\n{LeaveStartDate} - {LeaveEndDate}\\n\\nPlease take the necessary steps to review and adjudicate the application.\\n\\nRegards
\\n{TenantName}"
}', 'Apply For Special Leave Application', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('60', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
"subject":"Leave Application"
"body":"Dear Employee,\\n\\nYour {Reason} leave application has been applied, for the following dates: {LeaveStartDate} - {LeaveEndDate}\\n\\nRegards\\n{TenantName}"
}', 'Apply For Special Leave Application', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('61', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
"subject":"Leave Application Updated"
"body":"Dear Manager/HR,\\n\\nThe {Reason} leave application of {EmployeeFirstName} {EmployeeLastName}, for {LeaveStartDate} - {LeaveEndDate}, has been updated.\\n\\nRegards\\n{TenantName}"
}', 'Edit Special Leave Application', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('62', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
"subject":"Leave Application Updated"
"body":"Dear Lead,\\n\\nThe {Reason} leave application of {EmployeeFirstName} {EmployeeLastName}, for {LeaveStartDate} - {LeaveEndDate}, has been updated.\\n\\nRegards\\n{TenantName}"
}', 'Edit Special Leave Application', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('63', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
"subject":"Leave Application Updated"
"body":"Dear Employee,\\n\\nYour {Reason} leave application, for {LeaveStartDate} - {LeaveEndDate}, has been updated.\\n\\nRegards\\n{TenantName}"
}', 'Edit Special Leave Application', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('64', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
"subject":"Leave Application Cancelled"
"body":"Dear Manager/HR,\\n\\nThe {Reason} leave application of {EmployeeFirstName} {EmployeeLastName} for {LeaveStartDate} - {LeaveEndDate}, has been cancelled. \\n\\nRegards \\n{TenantName}"}', 'Cancellation of Special Leave Application (Before Approval)', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('65', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
"subject":"Leave Application Cancelled"
"body":"Dear Lead,\\n\\nThe {Reason} leave application of {EmployeeFirstName} {EmployeeLastName} for {LeaveStartDate} - {LeaveEndDate}, has been cancelled. \\n\\nRegards \\n{TenantName}"
}', 'Cancellation of Special Leave Application (Before Approval)', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('66', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
"subject":"Leave Application Cancelled"
"body":"Dear Employee,\\n\\nYour {Reason} leave application for {LeaveStartDate} - {LeaveEndDate}, has been successfully cancelled and notified.  \\n\\nRegards \\n{TenantName}"
}', 'Cancellation of Special Leave Application (Before Approval)', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('67', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
"subject":"Approved Leave Cancelled"
"body":"Dear Mnager,\\n\\nThe approved {Reason} leave application of {EmployeeFirstName} {EmployeeLastName} for {ApprovedStartDate} - {ApprovedEndDate}, has been cancelled and notified. \\n\\nRegards \\n{TenantName}"
}', 'Cancellation of Special Leave Application (After Approval)', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('68', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
"subject":"Approved Leave Cancelled"
"body":"Dear Lead,\\n\\nThe approved {Reason} leave application of {EmployeeFirstName} {EmployeeLastName} for {ApprovedStartDate} - {ApprovedEndDate}, has been cancelled and notified. \\n\\nRegards \\n{TenantName}"
}', 'Cancellation of Special Leave Application (After Approval)', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('69', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
"subject":"Leave Cancelled"
"body":"Dear Client,\\n\\nThe {Reason} leave of {EmployeeFirstName} {EmployeeLastName}, for the {ApprovedStartDate} - {ApprovedEndDate}, has been cancelled.\\n\\nRegards \\n{TenantName}"
}', 'Cancellation of Special Leave Application (After Approval)', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('70', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
"subject":"Approved Leave Cancelled"
"body":"Dear Employee,\\n\\nYour approved {Reason} leave application for {ApprovedStartDate} - {ApprovedEndDate}, has been successfully cancelled and notified. \\n\\nRegards \\n{TenantName}"
}', 'Cancellation of Special Leave Application (After Approval)', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('71', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
"subject":"Leave Application Approved"
"body":"Dear Manager/HR,\\n\\nThe {Reason} leave application of {EmployeeFirstName} {EmployeeLastName}, has been approved for the following dates:\\n{ApprovedStartDate} - {ApprovedEndDate}\\n\\nRegards \\n{TenantName}"}', 'Approval of Special Leave Application', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('72', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
"subject":"Leave Application Approved"
"body":"Dear Lead,\\n\\nYou have approved the {Reason} leave application of {EmployeeFirstName} {EmployeeLastName}, for the following dates:\\n{ApprovedStartDate} - {ApprovedEndDate}\\n\\nRegards \\n{TenantName}"
}', 'Approval of Special Leave Application', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('73', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
"subject":"Leave Notification"
"body":"Dear Employee",\\n\\n{EmployeeFirstName} {EmployeeLastName} will be on {Reason} leave, for the following dates:
{ApprovedStartDate} - {ApprovedEndDate}\\n\\nRegards \\n{TenantName}"
}', 'Approval of Special Leave Application', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('74', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
"subject":"Leave Notification"
"body":"Dear Client,\\n\\n{EmployeeFirstName} {EmployeeLastName} will be on {Reason} leave, for the following dates:
{ApprovedStartDate} - {ApprovedEndDate}\\n\\nRegards \\n{TenantName}"
}', 'Approval of Special Leave Application', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('75', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
"subject":"Leave Application Approved"
"body":"Dear Employee,\\n\\nYour {Reason} leave application has been approved, for the following dates:
{ApprovedStartDate} - {ApprovedEndDate}\\n\\nRegards \\n{TenantlName}"
}', 'Approval of Special Leave Application', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('76', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
"subject":"Leave Application Denied"
"body":"Dear Manager/HR,The {Reason} leave application of {EmployeeFirstName} {EmployeeLastName} for {LeaveStartDate} - {LeaveEndDate}, has been denied. \\n\\nRegards\\n{TenantName}"
}', 'Deny Special leave application (HR/Admin)', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('77', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
"subject":"Leave Application Denied"
"body":"Dear Employee",\\n\\nYour {Reason} leave application, for {LeaveStartDate} - {LeaveEndDate}, has been denied.
For any enquiry, please contact HR.\\n\\nRegards\\n{TenantName}"
}', 'Deny Special leave application (HR/Admin)', '1', '1');


------------ Attendance --------------
INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('78', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
"subject":"Attendance CSV Uploaded"
"body":"Dear Manager/HR",\\n\\nThe attendance CSV draft for {AttendanceDate} has been successfully uploaded.\\n\\nRegards\\n{TenantName}"
}', 'CSV file uploaded', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('79', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
"subject":"Attendance CSV Draft Updated"
"body":"Dear Manager/HR,\\n\\nThe attendance CSV draft for {AttendanceDate} has been successfully updated. This attendance CSV draft will expire after 5 days.\\n\\nRegards\\n{TenantName}"
}', 'Save/Update Draft', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('80', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
"subject":"Attendance CSV File Deleted"
"body":"Dear Manager/HR,\\n\\nThe attendance CSV draft for {AttendanceDate} has been successfully deleted.\\n\\nRegards\\n{TenantName}"
}', 'Delete Attendance', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('81', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
"subject":"Attendance CSV Submitted"
"body":"Dear Manager/HR,\\n\\nThe attendance CSV for {AttendanceDate} has been successfully submitted.\\n\\nRegards\\n{TenantName}"
}', 'Final Submission of Attendance Data', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('82', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
"subject":"Unnotified Leave"
"body":"Dear Manager/HR/Team Lead,\\n\\n{EmployeeFirstName} {EmployeeLastName} took an unnotified leave for the following date: \\n{AttendanceDate}\\n\\nRegards\\n{TenantName}"
}', 'Unnotified Attendance', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('83', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
  "subject": "Unnotified Leave",
  "body": "Dear Manager/HR/Team Lead,\\n\\nYou took an unnotified leave for the following date: \\n{AttendanceDate}\\n\\nRegards\\n{TenantName}"
}', 'Unnotified Attendance', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('84', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
"subject":"Post Leave Application"
"body":"Dear Team Lead/Manager/HR,\n\n{EmployeeFirstName} {EmployeeLastName} is yet to submit the Post Leave Application for the ''Unnotified'' leave dated on {AttendanceDate}.Please take the necessary steps required.\n\nRegards\n{TenantName}"
}', 'Notify employee about post leave application', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('85', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
"subject":"Post Leave Application"
"body":"Dear Employee,\\n\\nPlease apply post leave application for the ''Unnotified'' leave dated on {AttendnaceDate}, within the next 5 days, for clarification.\\nIf you have already applied for a post leave application, please ignore this mail.\\n\\nRegards\\n{TenantName}"
}
', 'Notify employee about post leave application', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('86', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
"subject":"Leave Cancelled"
"body":"Dear Manager/HR/Team Lead,\\n\\nThe approved leave application of {EmployeeFirstName} {EmployeeLastName} for {ApprovedStartDate} -{ApprovedEndDate}, has been cancelled due to the presence of the employee on {AttendanceDate}.\\n\\nRegards\\n{TenantName}"
}
', 'Approved Leave(Employee present)', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('87', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
"subject":"Approved Leave Cancelled"
"body":"Dear Employee,\\n\\nYour approved leave, for {ApprovedStartDate} - {ApprovedEndDate}, has been cancelled due to your presence on {AttendanceDate}.\\n\\nRegards \\n{TenantName}"
}', 'Approved Leave(Employee present)', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('88', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
"subject":"Approved Leave Cancelled"
"body":"Dear Client,\\n\\nThe approved leave application of {EmployeeFirstName} {EmployeeLastName} for {ApprovedStartDate} - {ApprovedEndDate}, has been cancelled due to the presence of the employee on {AttendanceDate}.\\n\\nRegards \\n{TenantName}"
}', 'Approved Leave(Employee present)', '1', '1');


---------- Work From Home -----------
INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('89', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
"subject":"Work from Home Applictaion"
"body":"Dear Manager/HR,\\n\\n{EmployeeFirstName} {EmployeeLastName} has applied for ''Work From Home'' request on {WorkFromHomeDate}.\\n\\nRegards\\n{TenantName}"
}', 'Apply Work From Home Application', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('90', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
"subject":"Work from Home Application"
"body":"Dear Team Lead,\\n\\n{EmployeeFirstName} {EmployeeLastName} has applied for ''Work From Home'' request on {WorkFromHomeDate}.\\n\\nPlease take the necessary steps to review and adjudicate the application.\\n\\nRegards\\n{TenantName}"
}', 'Apply Work From Home Application', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('91', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
"subject":"Work From Home Application Updated"
"body":"Dear Manager,\\n\\nThe work from home application of {EmployeeFirstName} {EmployeeLastName}, for {WorkFromHomeDate}, has been updated.\\n\\nRegards\\n{TenantName}"
}', 'Edit Work From Home Application (Before Aprroval)', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('92', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
"subject":"Work From Home Application Updated"
"body":"Dear Team Lead,\\n\\nThe work from home application of {EmployeeFirstName} {EmployeeLastName}, for {WorkFromHomeDate}, has been updated.\\n\\nRegards\\n{TenantName}"
}', 'Edit Work From Home Application (Before Aprroval)', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('93', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
"subject":"Work From Home Application Cancelled"
"body":"Dear Manager/HR,\\n\\nThe work from home application of {EmployeeFirstName} {EmployeeLastName} for {WorkFromHomeDate}, has been cancelled. \\n\\nRegards \\n{TenantName}"
}', 'Cancel Work From Home Application (Personal)', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('94', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
"subject":"Work From Home Application Cancelled"
"body":"Dear Team Lead,\\n\\nThe work from home application of {EmployeeFirstName} {EmployeeLastName} for {WorkFromHomeDate}, has been cancelled. \\n\\nRegards \\n{TenantName}"
}', 'Cancel Work From Home Application (Personal)', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('95', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
"subject":"Approved Work From Home Cancelled"
"body":"Dear HR/Manager,\\n\\nThe approved work from home application of {EmployeeFirstName} {EmployeeLastName} for {WorkFromHomeDate}, has been cancelled and notified. \\n\\nRegards \\n{TenantName}"
}', 'Cancel Work From Home Application (from approved status)', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('96', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
"subject":"Approved Work From Home Cancelled"
"body":"Dear Team Lead,\\n\\nThe approved work from home application of {EmployeeFirstName} {EmployeeLastName} for {WorkFromHomeDate}, has been cancelled and notified. \\n\\nRegards \\n{TenantName}"
}', 'Cancel Work From Home Application (from approved status)', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('97', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
"subject":"Work From Home Application Approved"
"body":"Dear Manager/HR,\\n\\nThe work from home application of {EmployeeFirstName} {EmployeeLastName}, has been approved for {WorkFromHomeDate}.\\n\\nRegards \\n{TenantName}"
}', 'Approve Work From Home Application', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('98', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
"subject":"Work From Home Application Approved"
"body":"Dear Team Lead,\n\nThe Work from Home'' application of {EmployeeFirstName} {EmployeeLastName}, for {WorkFromHomeDate} has been approved.\n\nRegards \n{TenantName}"
}', 'Approve Work From Home Application', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('99', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
"subject":"Work From Home Application Approved"
"body":"Dear Employee,\\n\\nYour work from home application has been approved for {WorkFromHomeDate}.\\n\\nRegards \\n{TenantName}"
}', 'Approve Work From Home Application', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('100', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
"subject":"Work From Home Application Denied"
"body":"Dear Manager/HR,\\n\\nThe work from home application of {EmployeeFirstName} {EmployeeLastName} for {WorkFromHomeDate}, has been denied. \\n\\nRegards\\n{TenantName}"
}', 'Deny Work From Home Application', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('101', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
"subject":"Work From Home Application Denied"
"body":"Dear Team Lead,\\n\\nThe work from home application of {EmployeeFirstName} {EmployeeLastName} for {WorkFromHomeDate}, has been denied. \\n\\nRegards\\n{TenantName}"
}', 'Deny Work From Home Application', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('102', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
"subject":"Work From Home Application Approved"
"body":"Dear Employee,\\n\\nYour work from home application has been denied for {WorkFromHomeDate}.\\nRegards \\n{TenantName}"
}', 'Deny Work From Home Application', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('103', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
"subject":"Work From Home Cancelled"
"body":"Dear Manager/HR/Team Lead,\\n\\nThe approved work from home application of {EmployeeFirstName} {EmployeeLastName} for {WorkFromHomeDate}, has been cancelled due to the presence of the employee on {AttendanceDate}.\\n\\nRegards\\n{TenantName}"
}
', 'Approved Work From Home (Employee Present)', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('104', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
"subject":"Work From Home Cancelled"
"body":"Dear Employee,\\n\\nYour approved leave, for {WorkFromHomeDate}, has been cancelled due to your presence on {AttendanceDate}.\\n\\nRegards \\n{TenantName}"
}', 'Approved Work From Home (Employee Present)', '1', '1');


---------- Holiday -----------
INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('105', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
  "subject": "{HolidayName} Holiday Notification",
  "body": "Dear Manager/HR/Employee/Client,\\n\\nThis is to notify that the office will remain closed from {HolidayStartDate} - {HolidayEndDate} due to {HolidayName}.\\nThe office will resume it''s regular operation on {OpenDate}.\\n\\nRegards\\n{TenantName}"
}', 'Selected Holidays Publish', '1', '1');


--------- Auto Notify --------------
INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('106', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
"subject":"Expiration Date of Attendance CSV"
"body":"Dear Manager/HR,\\n\\nThe following attendance CSV draft will expire on {AttendanceExpiryDate}. \\n-{AttendanceCSVName}\\n\\nPlease take the necessary steps to submit the attendance CSV draft before expiry.\\n\\nRegards\\n{TenantName}"
}', 'Notification of possible expired data', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('107', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
  "subject": "Holiday Reminder For Up-Coming Week",
  "body": "Dear Manager/HR/Employee/Client,\\n\\nThis is to remind that the office will remain closed on the following date(s):\\n\\n{HolidayDetail}\\n\\nRegards\\n{TenantName}"
}', 'Auto Notify next weeks holidays', '1', '1');

INSERT INTO `service_notification`.`dsi_notification_template` (`notification_template_id`, `from_address`, `is_active`, `system_id`, `template`, `template_name`, `version`, `notification_type_id`) VALUES ('108', NULL, '1', '425744ba-6c10-47c0-91cf-5a4c05265b56', '{
  "subject": "Holiday Reminder",
  "body": "Dear Manager/HR/Employee/Client,\\n\\nThis is to remind that the office will remain closed tomorrow, {HolidayStartDate} - {HolidayEndDate} due to {HolidayName}.\\nThe office will resume it''s regular operation on {OpenDate}.\\n\\nRegards\\n{TenantName}"
}', 'Auto Notify tomorrow''s holiday', '1', '1');


