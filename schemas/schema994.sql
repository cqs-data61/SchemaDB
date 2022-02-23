DROP DATABASE IF EXISTS "schema994";
CREATE DATABASE "schema994";
USE "schema994";
CREATE TABLE "resource_status_reasons" (
	"resource_status_reason_id" SMALLINT,
	"status_id" TINYINT,
	"description" VARCHAR,
	 PRIMARY KEY ("resource_status_reason_id")
);

CREATE TABLE "resource_types" (
	"resource_type_id" MEDIUMINT,
	"resource_type_name" VARCHAR,
	"resource_type_description" TEXT,
	 PRIMARY KEY ("resource_type_id")
);

CREATE TABLE "resource_groups" (
	"resource_group_id" MEDIUMINT,
	"resource_group_name" VARCHAR,
	"parent_id" MEDIUMINT,
	 PRIMARY KEY ("resource_group_id"),
	 CONSTRAINT "fkeycon_resource_groups_to_resource_groups" FOREIGN KEY ("parent_id") REFERENCES "resource_groups" ("resource_group_id")
);

CREATE TABLE "custom_attribute_values" (
	"custom_attribute_value_id" MEDIUMINT,
	"custom_attribute_id" MEDIUMINT,
	"attribute_value" TEXT,
	"entity_id" MEDIUMINT,
	"attribute_category" TINYINT,
	 PRIMARY KEY ("custom_attribute_value_id")
);

CREATE TABLE "custom_attributes" (
	"custom_attribute_id" MEDIUMINT,
	"display_label" VARCHAR,
	"display_type" TINYINT,
	"attribute_category" TINYINT,
	"validation_regex" VARCHAR,
	"is_required" TINYINT,
	"possible_values" TEXT,
	"sort_order" TINYINT,
	 PRIMARY KEY ("custom_attribute_id")
);

CREATE TABLE "dbversion" (
	"version_number" DOUBLE,
	"version_date" TIMESTAMP
);

CREATE TABLE "accessories" (
	"accessory_id" SMALLINT,
	"accessory_name" VARCHAR,
	"accessory_quantity" TINYINT,
	"legacyid" CHAR,
	 PRIMARY KEY ("accessory_id")
);

CREATE TABLE "blackout_series" (
	"blackout_series_id" INT,
	"date_created" DATETIME,
	"last_modified" DATETIME,
	"title" VARCHAR,
	"description" TEXT,
	"owner_id" MEDIUMINT,
	"resource_id" MEDIUMINT,
	"legacyid" CHAR,
	 PRIMARY KEY ("blackout_series_id")
);

CREATE TABLE "blackout_instances" (
	"blackout_instance_id" INT,
	"start_date" DATETIME,
	"end_date" DATETIME,
	"blackout_series_id" INT,
	 PRIMARY KEY ("blackout_instance_id"),
	 CONSTRAINT "fkeycon_blackout_instances_to_blackout_series" FOREIGN KEY ("blackout_series_id") REFERENCES "blackout_series" ("blackout_series_id")
);

CREATE TABLE "reservation_statuses" (
	"status_id" TINYINT,
	"label" VARCHAR,
	 PRIMARY KEY ("status_id")
);

CREATE TABLE "reservation_types" (
	"type_id" TINYINT,
	"label" VARCHAR,
	 PRIMARY KEY ("type_id")
);

CREATE TABLE "user_statuses" (
	"status_id" TINYINT,
	"description" VARCHAR,
	 PRIMARY KEY ("status_id")
);

CREATE TABLE "users" (
	"user_id" MEDIUMINT,
	"fname" VARCHAR,
	"lname" VARCHAR,
	"username" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	"salt" VARCHAR,
	"organization" VARCHAR,
	"position" VARCHAR,
	"phone" VARCHAR,
	"timezone" VARCHAR,
	"language" VARCHAR,
	"homepageid" TINYINT,
	"date_created" DATETIME,
	"last_modified" TIMESTAMP,
	"lastlogin" DATETIME,
	"status_id" TINYINT,
	"legacyid" CHAR,
	"legacypassword" VARCHAR,
	 PRIMARY KEY ("user_id"),
	 CONSTRAINT "fkeycon_users_to_user_statuses" FOREIGN KEY ("status_id") REFERENCES "user_statuses" ("status_id")
);

CREATE TABLE "user_preferences" (
	"user_preferences_id" INT,
	"user_id" MEDIUMINT,
	"name" VARCHAR,
	"value" VARCHAR,
	 PRIMARY KEY ("user_preferences_id"),
	 CONSTRAINT "fkeycon_user_preferences_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("user_id")
);

CREATE TABLE "reminders" (
	"reminder_id" INT,
	"user_id" MEDIUMINT,
	"address" TEXT,
	"message" TEXT,
	"sendtime" DATETIME,
	"refnumber" TEXT,
	 PRIMARY KEY ("reminder_id"),
	 CONSTRAINT "fkeycon_reminders_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("user_id")
);

CREATE TABLE "user_session" (
	"user_session_id" MEDIUMINT,
	"user_id" MEDIUMINT,
	"last_modified" DATETIME,
	"session_token" VARCHAR,
	"user_session_value" TEXT,
	 PRIMARY KEY ("user_session_id"),
	 CONSTRAINT "fkeycon_user_session_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("user_id")
);

CREATE TABLE "saved_reports" (
	"saved_report_id" MEDIUMINT,
	"report_name" VARCHAR,
	"user_id" MEDIUMINT,
	"date_created" DATETIME,
	"report_details" VARCHAR,
	 PRIMARY KEY ("saved_report_id"),
	 CONSTRAINT "fkeycon_saved_reports_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("user_id")
);

CREATE TABLE "account_activation" (
	"account_activation_id" MEDIUMINT,
	"user_id" MEDIUMINT,
	"activation_code" VARCHAR,
	"date_created" DATETIME,
	 PRIMARY KEY ("account_activation_id"),
	 CONSTRAINT "fkeycon_account_activation_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("user_id")
);

CREATE TABLE "user_email_preferences" (
	"user_id" MEDIUMINT,
	"event_category" VARCHAR,
	"event_type" VARCHAR,
	 PRIMARY KEY ("user_id","event_category","event_type"),
	 CONSTRAINT "fkeycon_user_email_preferences_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("user_id")
);

CREATE TABLE "reservation_series" (
	"series_id" INT,
	"date_created" DATETIME,
	"last_modified" DATETIME,
	"title" VARCHAR,
	"description" TEXT,
	"allow_participation" TINYINT,
	"allow_anon_participation" TINYINT,
	"type_id" TINYINT,
	"status_id" TINYINT,
	"repeat_type" VARCHAR,
	"repeat_options" VARCHAR,
	"owner_id" MEDIUMINT,
	"legacyid" CHAR,
	 PRIMARY KEY ("series_id"),
	 CONSTRAINT "reservations_status" FOREIGN KEY ("status_id") REFERENCES "reservation_statuses" ("status_id"),
	 CONSTRAINT "reservations_owner" FOREIGN KEY ("owner_id") REFERENCES "users" ("user_id"),
	 CONSTRAINT "reservations_type" FOREIGN KEY ("type_id") REFERENCES "reservation_types" ("type_id")
);

CREATE TABLE "reservation_reminders" (
	"reminder_id" INT,
	"series_id" INT,
	"minutes_prior" INT,
	"reminder_type" TINYINT,
	 PRIMARY KEY ("reminder_id"),
	 CONSTRAINT "fkeycon_reservation_reminders_to_reservation_series" FOREIGN KEY ("series_id") REFERENCES "reservation_series" ("series_id")
);

CREATE TABLE "reservation_files" (
	"file_id" INT,
	"series_id" INT,
	"file_name" VARCHAR,
	"file_type" VARCHAR,
	"file_size" VARCHAR,
	"file_extension" VARCHAR,
	 PRIMARY KEY ("file_id"),
	 CONSTRAINT "fkeycon_reservation_files_to_reservation_series" FOREIGN KEY ("series_id") REFERENCES "reservation_series" ("series_id")
);

CREATE TABLE "reservation_accessories" (
	"series_id" INT,
	"accessory_id" SMALLINT,
	"quantity" TINYINT,
	 PRIMARY KEY ("series_id","accessory_id"),
	 CONSTRAINT "fkeycon_reservation_accessories_to_reservation_series" FOREIGN KEY ("series_id") REFERENCES "reservation_series" ("series_id"),
	 CONSTRAINT "fkeycon_reservation_accessories_to_accessories" FOREIGN KEY ("accessory_id") REFERENCES "accessories" ("accessory_id")
);

CREATE TABLE "reservation_instances" (
	"reservation_instance_id" INT,
	"start_date" DATETIME,
	"end_date" DATETIME,
	"reference_number" VARCHAR,
	"series_id" INT,
	 PRIMARY KEY ("reservation_instance_id"),
	 CONSTRAINT "reservations_series" FOREIGN KEY ("series_id") REFERENCES "reservation_series" ("series_id")
);

CREATE TABLE "reservation_users" (
	"reservation_instance_id" INT,
	"user_id" MEDIUMINT,
	"reservation_user_level" TINYINT,
	 PRIMARY KEY ("reservation_instance_id","user_id"),
	 CONSTRAINT "fkeycon_reservation_users_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("user_id"),
	 CONSTRAINT "fkeycon_reservation_users_to_reservation_instances" FOREIGN KEY ("reservation_instance_id") REFERENCES "reservation_instances" ("reservation_instance_id")
);

CREATE TABLE "roles" (
	"role_id" TINYINT,
	"name" VARCHAR,
	"role_level" TINYINT,
	 PRIMARY KEY ("role_id")
);

CREATE TABLE "groups" (
	"group_id" SMALLINT,
	"name" VARCHAR,
	"admin_group_id" SMALLINT,
	"legacyid" CHAR,
	 PRIMARY KEY ("group_id"),
	 CONSTRAINT "fkeycon_groups_to_groups" FOREIGN KEY ("admin_group_id") REFERENCES "groups" ("group_id")
);

CREATE TABLE "user_groups" (
	"user_id" MEDIUMINT,
	"group_id" SMALLINT,
	 PRIMARY KEY ("group_id","user_id"),
	 CONSTRAINT "fkeycon_user_groups_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("user_id"),
	 CONSTRAINT "fkeycon_user_groups_to_groups" FOREIGN KEY ("group_id") REFERENCES "groups" ("group_id")
);

CREATE TABLE "group_roles" (
	"group_id" SMALLINT,
	"role_id" TINYINT,
	 PRIMARY KEY ("group_id","role_id"),
	 CONSTRAINT "fkeycon_group_roles_to_groups" FOREIGN KEY ("group_id") REFERENCES "groups" ("group_id"),
	 CONSTRAINT "fkeycon_group_roles_to_roles" FOREIGN KEY ("role_id") REFERENCES "roles" ("role_id")
);

CREATE TABLE "layouts" (
	"layout_id" MEDIUMINT,
	"timezone" VARCHAR,
	 PRIMARY KEY ("layout_id")
);

CREATE TABLE "schedules" (
	"schedule_id" SMALLINT,
	"name" VARCHAR,
	"isdefault" TINYINT,
	"weekdaystart" TINYINT,
	"daysvisible" TINYINT,
	"layout_id" MEDIUMINT,
	"legacyid" CHAR,
	 PRIMARY KEY ("schedule_id"),
	 CONSTRAINT "fkeycon_schedules_to_layouts" FOREIGN KEY ("layout_id") REFERENCES "layouts" ("layout_id")
);

CREATE TABLE "resources" (
	"resource_id" SMALLINT,
	"name" VARCHAR,
	"location" VARCHAR,
	"contact_info" VARCHAR,
	"description" TEXT,
	"notes" TEXT,
	"isactive" TINYINT,
	"min_duration" INT,
	"min_increment" INT,
	"max_duration" INT,
	"unit_cost" DEC,
	"autoassign" TINYINT,
	"requires_approval" TINYINT,
	"allow_multiday_reservations" TINYINT,
	"max_participants" MEDIUMINT,
	"min_notice_time" INT,
	"max_notice_time" INT,
	"image_name" VARCHAR,
	"schedule_id" SMALLINT,
	"legacyid" CHAR,
	 PRIMARY KEY ("resource_id"),
	 CONSTRAINT "fkeycon_resources_to_schedules" FOREIGN KEY ("schedule_id") REFERENCES "schedules" ("schedule_id")
);

CREATE TABLE "blackout_series_resources" (
	"blackout_series_id" INT,
	"resource_id" SMALLINT,
	 PRIMARY KEY ("blackout_series_id","resource_id"),
	 CONSTRAINT "fkeycon_blackout_series_resources_to_resources" FOREIGN KEY ("resource_id") REFERENCES "resources" ("resource_id"),
	 CONSTRAINT "fkeycon_blackout_series_resources_to_blackout_series" FOREIGN KEY ("blackout_series_id") REFERENCES "blackout_series" ("blackout_series_id")
);

CREATE TABLE "resource_group_assignment" (
	"resource_group_id" MEDIUMINT,
	"resource_id" SMALLINT,
	 PRIMARY KEY ("resource_group_id","resource_id"),
	 CONSTRAINT "fkeycon_resource_group_assignment_to_resource_groups" FOREIGN KEY ("resource_group_id") REFERENCES "resource_groups" ("resource_group_id"),
	 CONSTRAINT "fkeycon_resource_group_assignment_to_resources" FOREIGN KEY ("resource_id") REFERENCES "resources" ("resource_id")
);

CREATE TABLE "quotas" (
	"quota_id" MEDIUMINT,
	"quota_limit" DECIMAL,
	"unit" VARCHAR,
	"duration" VARCHAR,
	"resource_id" SMALLINT,
	"group_id" SMALLINT,
	"schedule_id" SMALLINT,
	 PRIMARY KEY ("quota_id"),
	 CONSTRAINT "fkeycon_quotas_to_groups" FOREIGN KEY ("group_id") REFERENCES "groups" ("group_id"),
	 CONSTRAINT "fkeycon_quotas_to_schedules" FOREIGN KEY ("schedule_id") REFERENCES "schedules" ("schedule_id"),
	 CONSTRAINT "fkeycon_quotas_to_resources" FOREIGN KEY ("resource_id") REFERENCES "resources" ("resource_id")
);

CREATE TABLE "reservation_resources" (
	"series_id" INT,
	"resource_id" SMALLINT,
	"resource_level_id" TINYINT,
	 PRIMARY KEY ("series_id","resource_id"),
	 CONSTRAINT "fkeycon_reservation_resources_to_resources" FOREIGN KEY ("resource_id") REFERENCES "resources" ("resource_id"),
	 CONSTRAINT "fkeycon_reservation_resources_to_reservation_series" FOREIGN KEY ("series_id") REFERENCES "reservation_series" ("series_id")
);

CREATE TABLE "group_resource_permissions" (
	"group_id" SMALLINT,
	"resource_id" SMALLINT,
	 PRIMARY KEY ("group_id","resource_id"),
	 CONSTRAINT "fkeycon_group_resource_permissions_to_groups" FOREIGN KEY ("group_id") REFERENCES "groups" ("group_id"),
	 CONSTRAINT "fkeycon_group_resource_permissions_to_resources" FOREIGN KEY ("resource_id") REFERENCES "resources" ("resource_id")
);

CREATE TABLE "user_resource_permissions" (
	"user_id" MEDIUMINT,
	"resource_id" SMALLINT,
	"permission_id" TINYINT,
	 PRIMARY KEY ("user_id","resource_id"),
	 CONSTRAINT "fkeycon_user_resource_permissions_to_resources" FOREIGN KEY ("resource_id") REFERENCES "resources" ("resource_id"),
	 CONSTRAINT "fkeycon_user_resource_permissions_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("user_id")
);

CREATE TABLE "time_blocks" (
	"block_id" MEDIUMINT,
	"label" VARCHAR,
	"end_label" VARCHAR,
	"availability_code" TINYINT,
	"layout_id" MEDIUMINT,
	"start_time" TIME,
	"end_time" TIME,
	 PRIMARY KEY ("block_id"),
	 CONSTRAINT "fkeycon_time_blocks_to_layouts" FOREIGN KEY ("layout_id") REFERENCES "layouts" ("layout_id")
);

CREATE TABLE "announcements" (
	"announcementid" MEDIUMINT,
	"announcement_text" TEXT,
	"priority" MEDIUMINT,
	"start_date" DATETIME,
	"end_date" DATETIME,
	 PRIMARY KEY ("announcementid")
);
