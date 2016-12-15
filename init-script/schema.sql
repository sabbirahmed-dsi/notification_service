create table dsi_notification (notification_id bigint not null auto_increment, content_json TEXT, is_processed boolean, max_retry_count integer, retry_interval integer, system_id varchar(40), version integer not null, notification_template_id bigint, notification_type_id bigint, primary key (notification_id));

create table dsi_notification_config (notification_config_id bigint not null auto_increment, config_json TEXT, system_id varchar(40), version integer not null, notification_type_id bigint, primary key (notification_config_id));

create table dsi_notification_process (notification_process_id bigint not null auto_increment, retry_count integer, status varchar(40), version integer not null, notification_id bigint, primary key (notification_process_id));

create table dsi_notification_template (notification_template_id bigint not null auto_increment, from_address varchar(40), is_active boolean, system_id varchar(40), template TEXT, template_name TEXT, version integer not null, notification_type_id bigint, primary key (notification_template_id));

create table ref_notification_type (notification_type_id bigint not null auto_increment, description TEXT, is_active boolean, loader varchar(100), name varchar(40), version integer not null, primary key (notification_type_id));
