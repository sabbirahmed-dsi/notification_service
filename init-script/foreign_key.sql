alter table dsi_notification add index FKC49D0B5077066FB8 (notification_template_id), add constraint FKC49D0B5077066FB8 foreign key (notification_template_id) references dsi_notification_template (notification_template_id);

alter table dsi_notification add index FKC49D0B50758846B8 (notification_type_id), add constraint FKC49D0B50758846B8 foreign key (notification_type_id) references ref_notification_type (notification_type_id);

alter table dsi_notification_config add index FKB4BE1B11758846B8 (notification_type_id), add constraint FKB4BE1B11758846B8 foreign key (notification_type_id) references ref_notification_type (notification_type_id);

alter table dsi_notification_process add index FK97E18080DDA71461 (notification_id), add constraint FK97E18080DDA71461 foreign key (notification_id) references dsi_notification (notification_id);

alter table dsi_notification_template add index FK5172AC89758846B8 (notification_type_id), add constraint FK5172AC89758846B8 foreign key (notification_type_id) references ref_notification_type (notification_type_id);

