DROP DATABASE IF EXISTS "schema2246";
CREATE DATABASE "schema2246";
USE "schema2246";
CREATE TABLE "history" (
	"id" BINARY,
	"environment_id" BINARY,
	"endpoint_id" BINARY,
	"object_type" ENUM,
	"host_id" BINARY,
	"service_id" BINARY,
	"notification_history_id" BINARY,
	"state_history_id" BINARY,
	"downtime_history_id" BINARY,
	"comment_history_id" BINARY,
	"flapping_history_id" BINARY,
	"acknowledgement_history_id" BINARY,
	"event_type" ENUM,
	"event_time" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "acknowledgement_history" (
	"id" BINARY,
	"environment_id" BINARY,
	"endpoint_id" BINARY,
	"object_type" ENUM,
	"host_id" BINARY,
	"service_id" BINARY,
	"set_time" BIGINT,
	"clear_time" BIGINT,
	"author" VARCHAR,
	"cleared_by" VARCHAR,
	"comment" TEXT,
	"expire_time" BIGINT,
	"is_sticky" ENUM,
	"is_persistent" ENUM,
	 PRIMARY KEY ("id")
);

CREATE TABLE "flapping_history" (
	"id" BINARY,
	"environment_id" BINARY,
	"endpoint_id" BINARY,
	"object_type" ENUM,
	"host_id" BINARY,
	"service_id" BINARY,
	"start_time" BIGINT,
	"end_time" BIGINT,
	"percent_state_change_start" FLOAT,
	"percent_state_change_end" FLOAT,
	"flapping_threshold_low" FLOAT,
	"flapping_threshold_high" FLOAT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "comment_history" (
	"comment_id" BINARY,
	"environment_id" BINARY,
	"endpoint_id" BINARY,
	"object_type" ENUM,
	"host_id" BINARY,
	"service_id" BINARY,
	"entry_time" BIGINT,
	"author" VARCHAR,
	"removed_by" VARCHAR,
	"comment" TEXT,
	"entry_type" ENUM,
	"is_persistent" ENUM,
	"is_sticky" ENUM,
	"expire_time" BIGINT,
	"remove_time" BIGINT,
	"has_been_removed" ENUM,
	 PRIMARY KEY ("comment_id")
);

CREATE TABLE "downtime_history" (
	"downtime_id" BINARY,
	"environment_id" BINARY,
	"endpoint_id" BINARY,
	"triggered_by_id" BINARY,
	"object_type" ENUM,
	"host_id" BINARY,
	"service_id" BINARY,
	"entry_time" BIGINT,
	"author" VARCHAR,
	"cancelled_by" VARCHAR,
	"comment" TEXT,
	"is_flexible" ENUM,
	"flexible_duration" BIGINT,
	"scheduled_start_time" BIGINT,
	"scheduled_end_time" BIGINT,
	"start_time" BIGINT,
	"end_time" BIGINT,
	"has_been_cancelled" ENUM,
	"trigger_time" BIGINT,
	"cancel_time" BIGINT,
	 PRIMARY KEY ("downtime_id")
);

CREATE TABLE "state_history" (
	"id" BINARY,
	"environment_id" BINARY,
	"endpoint_id" BINARY,
	"object_type" ENUM,
	"host_id" BINARY,
	"service_id" BINARY,
	"event_time" BIGINT,
	"state_type" ENUM,
	"soft_state" TINYINT,
	"hard_state" TINYINT,
	"previous_soft_state" TINYINT,
	"previous_hard_state" TINYINT,
	"attempt" TINYINT,
	"output" TEXT,
	"long_output" TEXT,
	"max_check_attempts" INT,
	"check_source" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user_notification_history" (
	"id" BINARY,
	"environment_id" BINARY,
	"notification_history_id" BINARY,
	"user_id" BINARY,
	 PRIMARY KEY ("id")
);

CREATE TABLE "notification_history" (
	"id" BINARY,
	"environment_id" BINARY,
	"endpoint_id" BINARY,
	"object_type" ENUM,
	"host_id" BINARY,
	"service_id" BINARY,
	"notification_id" BINARY,
	"type" ENUM,
	"send_time" BIGINT,
	"state" TINYINT,
	"previous_hard_state" TINYINT,
	"author" TEXT,
	"text" TEXT,
	"users_notified" SMALLINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zone" (
	"id" BINARY,
	"environment_id" BINARY,
	"name_checksum" BINARY,
	"properties_checksum" BINARY,
	"name" VARCHAR,
	"name_ci" VARCHAR,
	"is_global" ENUM,
	"parent_id" BINARY,
	"depth" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "usergroup_customvar" (
	"id" BINARY,
	"environment_id" BINARY,
	"usergroup_id" BINARY,
	"customvar_id" BINARY,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user_customvar" (
	"id" BINARY,
	"environment_id" BINARY,
	"user_id" BINARY,
	"customvar_id" BINARY,
	 PRIMARY KEY ("id")
);

CREATE TABLE "usergroup_member" (
	"id" BINARY,
	"environment_id" BINARY,
	"user_id" BINARY,
	"usergroup_id" BINARY,
	 PRIMARY KEY ("id")
);

CREATE TABLE "usergroup" (
	"id" BINARY,
	"environment_id" BINARY,
	"name_checksum" BINARY,
	"properties_checksum" BINARY,
	"name" VARCHAR,
	"name_ci" VARCHAR,
	"display_name" VARCHAR,
	"zone_id" BINARY,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user" (
	"id" BINARY,
	"environment_id" BINARY,
	"name_checksum" BINARY,
	"properties_checksum" BINARY,
	"name" VARCHAR,
	"name_ci" VARCHAR,
	"display_name" VARCHAR,
	"email" VARCHAR,
	"pager" VARCHAR,
	"notifications_enabled" ENUM,
	"timeperiod_id" BINARY,
	"states" TINYINT,
	"types" SMALLINT,
	"zone_id" BINARY,
	 PRIMARY KEY ("id")
);

CREATE TABLE "customvar_flat" (
	"id" BINARY,
	"environment_id" BINARY,
	"customvar_id" BINARY,
	"flatname_checksum" BINARY,
	"flatname" VARCHAR,
	"flatvalue" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "customvar" (
	"id" BINARY,
	"environment_id" BINARY,
	"name_checksum" BINARY,
	"name" VARCHAR,
	"value" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "timeperiod_customvar" (
	"id" BINARY,
	"environment_id" BINARY,
	"timeperiod_id" BINARY,
	"customvar_id" BINARY,
	 PRIMARY KEY ("id")
);

CREATE TABLE "timeperiod_override_exclude" (
	"id" BINARY,
	"environment_id" BINARY,
	"timeperiod_id" BINARY,
	"override_id" BINARY,
	 PRIMARY KEY ("id")
);

CREATE TABLE "timeperiod_override_include" (
	"id" BINARY,
	"environment_id" BINARY,
	"timeperiod_id" BINARY,
	"override_id" BINARY,
	 PRIMARY KEY ("id")
);

CREATE TABLE "timeperiod_range" (
	"id" BINARY,
	"environment_id" BINARY,
	"timeperiod_id" BINARY,
	"range_key" VARCHAR,
	"range_value" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "timeperiod" (
	"id" BINARY,
	"environment_id" BINARY,
	"name_checksum" BINARY,
	"properties_checksum" BINARY,
	"name" VARCHAR,
	"name_ci" VARCHAR,
	"display_name" VARCHAR,
	"prefer_includes" ENUM,
	"zone_id" BINARY,
	 PRIMARY KEY ("id")
);

CREATE TABLE "notes_url" (
	"id" BINARY,
	"environment_id" BINARY,
	"notes_url" TEXT,
	 PRIMARY KEY ("environment_id","id")
);

CREATE TABLE "action_url" (
	"id" BINARY,
	"environment_id" BINARY,
	"action_url" TEXT,
	 PRIMARY KEY ("environment_id","id")
);

CREATE TABLE "icon_image" (
	"id" BINARY,
	"environment_id" BINARY,
	"icon_image" TEXT,
	 PRIMARY KEY ("environment_id","id")
);

CREATE TABLE "notification_customvar" (
	"id" BINARY,
	"environment_id" BINARY,
	"notification_id" BINARY,
	"customvar_id" BINARY,
	 PRIMARY KEY ("id")
);

CREATE TABLE "notification_recipient" (
	"id" BINARY,
	"environment_id" BINARY,
	"notification_id" BINARY,
	"user_id" BINARY,
	"usergroup_id" BINARY,
	 PRIMARY KEY ("id")
);

CREATE TABLE "notification_usergroup" (
	"id" BINARY,
	"environment_id" BINARY,
	"notification_id" BINARY,
	"usergroup_id" BINARY,
	 PRIMARY KEY ("id")
);

CREATE TABLE "notification_user" (
	"id" BINARY,
	"environment_id" BINARY,
	"notification_id" BINARY,
	"user_id" BINARY,
	 PRIMARY KEY ("id")
);

CREATE TABLE "notification" (
	"id" BINARY,
	"environment_id" BINARY,
	"name_checksum" BINARY,
	"properties_checksum" BINARY,
	"name" VARCHAR,
	"name_ci" VARCHAR,
	"host_id" BINARY,
	"service_id" BINARY,
	"command_id" BINARY,
	"times_begin" INT,
	"times_end" INT,
	"notification_interval" INT,
	"timeperiod_id" BINARY,
	"states" TINYINT,
	"types" SMALLINT,
	"zone_id" BINARY,
	 PRIMARY KEY ("id")
);

CREATE TABLE "downtime" (
	"id" BINARY,
	"environment_id" BINARY,
	"triggered_by_id" BINARY,
	"object_type" ENUM,
	"host_id" BINARY,
	"service_id" BINARY,
	"name_checksum" BINARY,
	"properties_checksum" BINARY,
	"name" VARCHAR,
	"author" VARCHAR,
	"comment" TEXT,
	"entry_time" BIGINT,
	"scheduled_start_time" BIGINT,
	"scheduled_end_time" BIGINT,
	"flexible_duration" BIGINT,
	"is_flexible" ENUM,
	"is_in_effect" ENUM,
	"start_time" BIGINT,
	"end_time" BIGINT,
	"zone_id" BINARY,
	 PRIMARY KEY ("id")
);

CREATE TABLE "comment" (
	"id" BINARY,
	"environment_id" BINARY,
	"object_type" ENUM,
	"host_id" BINARY,
	"service_id" BINARY,
	"name_checksum" BINARY,
	"properties_checksum" BINARY,
	"name" VARCHAR,
	"author" VARCHAR,
	"text" TEXT,
	"entry_type" ENUM,
	"entry_time" BIGINT,
	"is_persistent" ENUM,
	"is_sticky" ENUM,
	"expire_time" BIGINT,
	"zone_id" BINARY,
	 PRIMARY KEY ("id")
);

CREATE TABLE "notificationcommand_customvar" (
	"id" BINARY,
	"environment_id" BINARY,
	"command_id" BINARY,
	"customvar_id" BINARY,
	 PRIMARY KEY ("id")
);

CREATE TABLE "notificationcommand_envvar" (
	"id" BINARY,
	"environment_id" BINARY,
	"command_id" BINARY,
	"envvar_key" VARCHAR,
	"properties_checksum" BINARY,
	"envvar_value" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "notificationcommand_argument" (
	"id" BINARY,
	"environment_id" BINARY,
	"command_id" BINARY,
	"argument_key" VARCHAR,
	"properties_checksum" BINARY,
	"argument_value" TEXT,
	"argument_order" SMALLINT,
	"description" TEXT,
	"argument_key_override" VARCHAR,
	"repeat_key" ENUM,
	"required" ENUM,
	"set_if" VARCHAR,
	"skip_key" ENUM,
	 PRIMARY KEY ("id")
);

CREATE TABLE "notificationcommand" (
	"id" BINARY,
	"environment_id" BINARY,
	"zone_id" BINARY,
	"name_checksum" BINARY,
	"properties_checksum" BINARY,
	"name" VARCHAR,
	"name_ci" VARCHAR,
	"command" TEXT,
	"timeout" SMALLINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "eventcommand_customvar" (
	"id" BINARY,
	"environment_id" BINARY,
	"command_id" BINARY,
	"customvar_id" BINARY,
	 PRIMARY KEY ("id")
);

CREATE TABLE "eventcommand_envvar" (
	"id" BINARY,
	"environment_id" BINARY,
	"command_id" BINARY,
	"envvar_key" VARCHAR,
	"properties_checksum" BINARY,
	"envvar_value" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "eventcommand_argument" (
	"id" BINARY,
	"environment_id" BINARY,
	"command_id" BINARY,
	"argument_key" VARCHAR,
	"properties_checksum" BINARY,
	"argument_value" TEXT,
	"argument_order" SMALLINT,
	"description" TEXT,
	"argument_key_override" VARCHAR,
	"repeat_key" ENUM,
	"required" ENUM,
	"set_if" VARCHAR,
	"skip_key" ENUM,
	 PRIMARY KEY ("id")
);

CREATE TABLE "eventcommand" (
	"id" BINARY,
	"environment_id" BINARY,
	"zone_id" BINARY,
	"name_checksum" BINARY,
	"properties_checksum" BINARY,
	"name" VARCHAR,
	"name_ci" VARCHAR,
	"command" TEXT,
	"timeout" SMALLINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "checkcommand_customvar" (
	"id" BINARY,
	"environment_id" BINARY,
	"command_id" BINARY,
	"customvar_id" BINARY,
	 PRIMARY KEY ("id")
);

CREATE TABLE "checkcommand_envvar" (
	"id" BINARY,
	"environment_id" BINARY,
	"command_id" BINARY,
	"envvar_key" VARCHAR,
	"properties_checksum" BINARY,
	"envvar_value" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "checkcommand_argument" (
	"id" BINARY,
	"environment_id" BINARY,
	"command_id" BINARY,
	"argument_key" VARCHAR,
	"properties_checksum" BINARY,
	"argument_value" TEXT,
	"argument_order" SMALLINT,
	"description" TEXT,
	"argument_key_override" VARCHAR,
	"repeat_key" ENUM,
	"required" ENUM,
	"set_if" VARCHAR,
	"skip_key" ENUM,
	 PRIMARY KEY ("id")
);

CREATE TABLE "checkcommand" (
	"id" BINARY,
	"environment_id" BINARY,
	"zone_id" BINARY,
	"name_checksum" BINARY,
	"properties_checksum" BINARY,
	"name" VARCHAR,
	"name_ci" VARCHAR,
	"command" TEXT,
	"timeout" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "icingadb_schema" (
	"id" INT,
	"version" SMALLINT,
	"timestamp" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "icingadb_instance" (
	"id" BINARY,
	"environment_id" BINARY,
	"endpoint_id" BINARY,
	"heartbeat" BIGINT,
	"responsible" ENUM,
	"icinga2_version" VARCHAR,
	"icinga2_start_time" BIGINT,
	"icinga2_notifications_enabled" ENUM,
	"icinga2_active_service_checks_enabled" ENUM,
	"icinga2_active_host_checks_enabled" ENUM,
	"icinga2_event_handlers_enabled" ENUM,
	"icinga2_flap_detection_enabled" ENUM,
	"icinga2_performance_data_enabled" ENUM,
	 PRIMARY KEY ("id")
);

CREATE TABLE "environment" (
	"id" BINARY,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "endpoint" (
	"id" BINARY,
	"environment_id" BINARY,
	"name_checksum" BINARY,
	"properties_checksum" BINARY,
	"name" VARCHAR,
	"name_ci" VARCHAR,
	"zone_id" BINARY,
	 PRIMARY KEY ("id")
);

CREATE TABLE "service_state" (
	"service_id" BINARY,
	"environment_id" BINARY,
	"state_type" ENUM,
	"soft_state" TINYINT,
	"hard_state" TINYINT,
	"previous_hard_state" TINYINT,
	"attempt" TINYINT,
	"severity" SMALLINT,
	"output" TEXT,
	"long_output" TEXT,
	"performance_data" TEXT,
	"check_commandline" TEXT,
	"is_problem" ENUM,
	"is_handled" ENUM,
	"is_reachable" ENUM,
	"is_flapping" ENUM,
	"is_overdue" ENUM,
	"is_acknowledged" ENUM,
	"acknowledgement_comment_id" BINARY,
	"in_downtime" ENUM,
	"execution_time" INT,
	"latency" INT,
	"timeout" INT,
	"check_source" TEXT,
	"last_update" BIGINT,
	"last_state_change" BIGINT,
	"next_check" BIGINT,
	"next_update" BIGINT,
	 PRIMARY KEY ("service_id")
);

CREATE TABLE "servicegroup_customvar" (
	"id" BINARY,
	"environment_id" BINARY,
	"servicegroup_id" BINARY,
	"customvar_id" BINARY,
	 PRIMARY KEY ("id")
);

CREATE TABLE "service_customvar" (
	"id" BINARY,
	"environment_id" BINARY,
	"service_id" BINARY,
	"customvar_id" BINARY,
	 PRIMARY KEY ("id")
);

CREATE TABLE "servicegroup_member" (
	"id" BINARY,
	"environment_id" BINARY,
	"service_id" BINARY,
	"servicegroup_id" BINARY,
	 PRIMARY KEY ("id")
);

CREATE TABLE "servicegroup" (
	"id" BINARY,
	"environment_id" BINARY,
	"name_checksum" BINARY,
	"properties_checksum" BINARY,
	"name" VARCHAR,
	"name_ci" VARCHAR,
	"display_name" VARCHAR,
	"zone_id" BINARY,
	 PRIMARY KEY ("id")
);

CREATE TABLE "service" (
	"id" BINARY,
	"environment_id" BINARY,
	"name_checksum" BINARY,
	"properties_checksum" BINARY,
	"host_id" BINARY,
	"name" VARCHAR,
	"name_ci" VARCHAR,
	"display_name" VARCHAR,
	"checkcommand" VARCHAR,
	"checkcommand_id" BINARY,
	"max_check_attempts" INT,
	"check_timeperiod" VARCHAR,
	"check_timeperiod_id" BINARY,
	"check_timeout" INT,
	"check_interval" INT,
	"check_retry_interval" INT,
	"active_checks_enabled" ENUM,
	"passive_checks_enabled" ENUM,
	"event_handler_enabled" ENUM,
	"notifications_enabled" ENUM,
	"flapping_enabled" ENUM,
	"flapping_threshold_low" FLOAT,
	"flapping_threshold_high" FLOAT,
	"perfdata_enabled" ENUM,
	"eventcommand" VARCHAR,
	"eventcommand_id" BINARY,
	"is_volatile" ENUM,
	"action_url_id" BINARY,
	"notes_url_id" BINARY,
	"notes" TEXT,
	"icon_image_id" BINARY,
	"icon_image_alt" VARCHAR,
	"zone" VARCHAR,
	"zone_id" BINARY,
	"command_endpoint" VARCHAR,
	"command_endpoint_id" BINARY,
	 PRIMARY KEY ("id")
);

CREATE TABLE "host_state" (
	"host_id" BINARY,
	"environment_id" BINARY,
	"state_type" ENUM,
	"soft_state" TINYINT,
	"hard_state" TINYINT,
	"previous_hard_state" TINYINT,
	"attempt" TINYINT,
	"severity" SMALLINT,
	"output" TEXT,
	"long_output" TEXT,
	"performance_data" TEXT,
	"check_commandline" TEXT,
	"is_problem" ENUM,
	"is_handled" ENUM,
	"is_reachable" ENUM,
	"is_flapping" ENUM,
	"is_overdue" ENUM,
	"is_acknowledged" ENUM,
	"acknowledgement_comment_id" BINARY,
	"in_downtime" ENUM,
	"execution_time" INT,
	"latency" INT,
	"timeout" INT,
	"check_source" TEXT,
	"last_update" BIGINT,
	"last_state_change" BIGINT,
	"next_check" BIGINT,
	"next_update" BIGINT,
	 PRIMARY KEY ("host_id")
);

CREATE TABLE "hostgroup_customvar" (
	"id" BINARY,
	"environment_id" BINARY,
	"hostgroup_id" BINARY,
	"customvar_id" BINARY,
	 PRIMARY KEY ("id")
);

CREATE TABLE "host_customvar" (
	"id" BINARY,
	"environment_id" BINARY,
	"host_id" BINARY,
	"customvar_id" BINARY,
	 PRIMARY KEY ("id")
);

CREATE TABLE "hostgroup_member" (
	"id" BINARY,
	"environment_id" BINARY,
	"host_id" BINARY,
	"hostgroup_id" BINARY,
	 PRIMARY KEY ("id")
);

CREATE TABLE "hostgroup" (
	"id" BINARY,
	"environment_id" BINARY,
	"name_checksum" BINARY,
	"properties_checksum" BINARY,
	"name" VARCHAR,
	"name_ci" VARCHAR,
	"display_name" VARCHAR,
	"zone_id" BINARY,
	 PRIMARY KEY ("id")
);

CREATE TABLE "host" (
	"id" BINARY,
	"environment_id" BINARY,
	"name_checksum" BINARY,
	"properties_checksum" BINARY,
	"name" VARCHAR,
	"name_ci" VARCHAR,
	"display_name" VARCHAR,
	"address" VARCHAR,
	"address6" VARCHAR,
	"address_bin" BINARY,
	"address6_bin" BINARY,
	"checkcommand" VARCHAR,
	"checkcommand_id" BINARY,
	"max_check_attempts" INT,
	"check_timeperiod" VARCHAR,
	"check_timeperiod_id" BINARY,
	"check_timeout" INT,
	"check_interval" INT,
	"check_retry_interval" INT,
	"active_checks_enabled" ENUM,
	"passive_checks_enabled" ENUM,
	"event_handler_enabled" ENUM,
	"notifications_enabled" ENUM,
	"flapping_enabled" ENUM,
	"flapping_threshold_low" FLOAT,
	"flapping_threshold_high" FLOAT,
	"perfdata_enabled" ENUM,
	"eventcommand" VARCHAR,
	"eventcommand_id" BINARY,
	"is_volatile" ENUM,
	"action_url_id" BINARY,
	"notes_url_id" BINARY,
	"notes" TEXT,
	"icon_image_id" BINARY,
	"icon_image_alt" VARCHAR,
	"zone" VARCHAR,
	"zone_id" BINARY,
	"command_endpoint" VARCHAR,
	"command_endpoint_id" BINARY,
	 PRIMARY KEY ("id")
);
