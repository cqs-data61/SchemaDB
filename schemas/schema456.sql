DROP DATABASE IF EXISTS "schema456";
CREATE DATABASE "schema456";
USE "schema456";
CREATE TABLE "mc_webforms" (
	"id" INT,
	"name" VARCHAR,
	"duplicates" ENUM,
	"list_id" INT,
	"custom_field_ids" VARCHAR,
	"attributes" LONGTEXT,
	"app_id" INT,
	"user_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "mc_users" (
	"id" INT,
	"name" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	"remember_token" VARCHAR,
	"api_token" VARCHAR,
	"api" ENUM,
	"language" VARCHAR,
	"address" VARCHAR,
	"country_code" VARCHAR,
	"phone" VARCHAR,
	"time_zone" VARCHAR,
	"role_id" INT,
	"package_id" INT,
	"parent_id" INT,
	"app_id" INT,
	"is_client" TINYINT,
	"attributes" LONGTEXT,
	"active" ENUM,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "mc_trigger_schedules" (
	"id" BIGINT,
	"trigger_id" BIGINT,
	"contact_id" INT,
	"send_datetime" TIMESTAMP,
	"broadcast_id" INT,
	"sending_server_id" INT,
	"action" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "mc_trigger_logs" (
	"id" BIGINT,
	"trigger_id" BIGINT,
	"created_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "mc_triggers" (
	"id" BIGINT,
	"name" VARCHAR,
	"based_on" VARCHAR,
	"action" VARCHAR,
	"sending_server_ids" TEXT,
	"active" ENUM,
	"attributes" LONGTEXT,
	"in_progress" TINYINT,
	"execution_datetime" TIMESTAMP,
	"app_id" INT,
	"user_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "mc_templates" (
	"id" INT,
	"name" VARCHAR,
	"content" LONGTEXT,
	"type" TINYINT,
	"app_id" INT,
	"user_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "mc_suppressions" (
	"id" INT,
	"email" VARCHAR,
	"group_id" INT,
	"list_id" INT,
	"app_id" INT,
	"user_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "mc_spintags" (
	"id" INT,
	"name" VARCHAR,
	"tag" VARCHAR,
	"values" TEXT,
	"app_id" INT,
	"user_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "mc_settings" (
	"id" INT,
	"app_name" VARCHAR,
	"app_url" VARCHAR,
	"license_key" VARCHAR,
	"server_ip" VARCHAR,
	"current_version" VARCHAR,
	"time_zone" VARCHAR,
	"tracking" ENUM,
	"from_email" VARCHAR,
	"sending_type" ENUM,
	"sending_attributes" LONGTEXT,
	"attributes" LONGTEXT,
	"general_settings" LONGTEXT,
	"mail_headers" LONGTEXT,
	"pmta" LONGTEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "mc_sending_servers" (
	"id" INT,
	"group_id" INT,
	"name" VARCHAR,
	"type" ENUM,
	"status" ENUM,
	"notification" TEXT,
	"from_name" VARCHAR,
	"from_email" VARCHAR,
	"reply_email" VARCHAR,
	"tracking_domain" VARCHAR,
	"bounce_id" INT,
	"sending_attributes" LONGTEXT,
	"speed_attributes" LONGTEXT,
	"total_sent" INT,
	"hourly_sent" INT,
	"hourly_sent_next_timestamp" TIMESTAMP,
	"daily_sent" INT,
	"daily_sent_next_timestamp" TIMESTAMP,
	"app_id" INT,
	"user_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"pmta" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "mc_sending_domains" (
	"id" INT,
	"domain" VARCHAR,
	"protocol" ENUM,
	"active" ENUM,
	"signing" ENUM,
	"public_key" TEXT,
	"private_key" TEXT,
	"verified_domain" TINYINT,
	"verified_key" TINYINT,
	"verified_spf" TINYINT,
	"verified_dmarc" TINYINT,
	"verified_tracking" TINYINT,
	"tracking" VARCHAR,
	"dkim" VARCHAR,
	"dmarc" VARCHAR,
	"verification_type" ENUM,
	"spf_value" VARCHAR,
	"app_id" INT,
	"user_id" INT,
	"pmta" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "mc_segments" (
	"id" INT,
	"name" VARCHAR,
	"type" ENUM,
	"attributes" LONGTEXT,
	"is_running" TINYINT,
	"action" ENUM,
	"total" INT,
	"processed" INT,
	"list_id_action" INT,
	"app_id" INT,
	"user_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "mc_schedule_drip_stat_log_opens" (
	"id" INT,
	"schedule_drip_stat_log_id" INT,
	"ip" VARCHAR,
	"country" VARCHAR,
	"country_code" CHAR,
	"city" VARCHAR,
	"zipcode" VARCHAR,
	"user_agent" VARCHAR,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "mc_schedule_drip_stat_log_clicks" (
	"id" INT,
	"schedule_drip_stat_log_id" INT,
	"link" TEXT,
	"ip" VARCHAR,
	"country" VARCHAR,
	"country_code" CHAR,
	"city" VARCHAR,
	"zipcode" VARCHAR,
	"user_agent" VARCHAR,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "mc_schedule_drip_stat_logs" (
	"id" INT,
	"schedule_drip_stat_id" INT,
	"drip_id" INT,
	"drip_name" VARCHAR,
	"message_id" VARCHAR,
	"email" VARCHAR,
	"list" VARCHAR,
	"broadcast" VARCHAR,
	"sending_server" VARCHAR,
	"status" ENUM,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "mc_schedule_drip_stats" (
	"id" INT,
	"schedule_drip_id" INT,
	"schedule_by" VARCHAR,
	"schedule_drip_name" VARCHAR,
	"drip_group_name" VARCHAR,
	"app_id" INT,
	"user_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "mc_schedule_drips" (
	"id" INT,
	"name" VARCHAR,
	"drip_group_id" INT,
	"list_ids" VARCHAR,
	"sending_server_id" INT,
	"send_to_existing" ENUM,
	"status" ENUM,
	"in_progress" TINYINT,
	"trigger_id" BIGINT,
	"app_id" INT,
	"user_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "mc_schedule_campaign_stat_log_spams" (
	"id" INT,
	"schedule_campaign_stat_log_id" INT,
	"section" ENUM,
	"email" VARCHAR,
	"detail" LONGTEXT,
	"app_id" INT,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "mc_schedule_campaign_stat_log_opens" (
	"id" INT,
	"schedule_campaign_stat_log_id" INT,
	"ip" VARCHAR,
	"country" VARCHAR,
	"country_code" CHAR,
	"city" VARCHAR,
	"zipcode" VARCHAR,
	"user_agent" VARCHAR,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "mc_schedule_campaign_stat_log_clicks" (
	"id" INT,
	"schedule_campaign_stat_log_id" INT,
	"link" TEXT,
	"ip" VARCHAR,
	"country" VARCHAR,
	"country_code" CHAR,
	"city" VARCHAR,
	"zipcode" VARCHAR,
	"user_agent" VARCHAR,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "mc_schedule_campaign_stat_log_bounces" (
	"id" INT,
	"schedule_campaign_stat_log_id" INT,
	"section" ENUM,
	"email" VARCHAR,
	"type" ENUM,
	"code" VARCHAR,
	"detail" LONGTEXT,
	"app_id" INT,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "mc_schedule_campaign_stat_logs" (
	"id" INT,
	"schedule_campaign_stat_id" INT,
	"message_id" VARCHAR,
	"email" VARCHAR,
	"list" VARCHAR,
	"broadcast" VARCHAR,
	"sending_server" VARCHAR,
	"status" ENUM,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "mc_schedule_campaign_stats" (
	"id" INT,
	"schedule_campaign_id" INT,
	"schedule_campaign_name" VARCHAR,
	"schedule_by" VARCHAR,
	"threads" TINYINT,
	"total" INT,
	"scheduled" INT,
	"sent" INT,
	"scheduled_detail" LONGTEXT,
	"sending_speed" LONGTEXT,
	"start_datetime" TIMESTAMP,
	"end_datetime" TIMESTAMP,
	"app_id" INT,
	"user_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "mc_schedule_campaigns" (
	"id" INT,
	"name" VARCHAR,
	"broadcast_id" INT,
	"list_ids" TEXT,
	"sending_server_ids" TEXT,
	"send" ENUM,
	"send_datetime" TIMESTAMP,
	"sending_speed" LONGTEXT,
	"threads" TINYINT,
	"thread_no" TINYINT,
	"total_threads" INT,
	"total" INT,
	"scheduled" INT,
	"sent" INT,
	"scheduled_detail" LONGTEXT,
	"status" ENUM,
	"app_id" INT,
	"user_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "mc_role_has_permissions" (
	"permission_id" INT,
	"role_id" INT,
	 PRIMARY KEY ("permission_id","role_id")
);

CREATE TABLE "mc_roles" (
	"id" INT,
	"name" VARCHAR,
	"guard_name" VARCHAR,
	"app_id" INT,
	"user_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "mc_permissions" (
	"id" INT,
	"name" VARCHAR,
	"guard_name" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "mc_password_resets" (
	"email" VARCHAR,
	"token" VARCHAR,
	"created_at" TIMESTAMP
);

CREATE TABLE "mc_pages" (
	"id" INT,
	"name" VARCHAR,
	"slug" VARCHAR,
	"type" ENUM,
	"email_subject" TEXT,
	"content_html" LONGTEXT,
	"app_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "mc_packages" (
	"id" INT,
	"name" VARCHAR,
	"description" MEDIUMTEXT,
	"attributes" LONGTEXT,
	"app_id" INT,
	"user_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "mc_notifications" (
	"id" INT,
	"name" VARCHAR,
	"type" ENUM,
	"is_read" TINYINT,
	"attributes" LONGTEXT,
	"app_id" INT,
	"user_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "mc_model_has_roles" (
	"role_id" INT,
	"model_type" VARCHAR,
	"model_id" BIGINT,
	 PRIMARY KEY ("role_id","model_id","model_type")
);

CREATE TABLE "mc_model_has_permissions" (
	"permission_id" INT,
	"model_type" VARCHAR,
	"model_id" BIGINT,
	 PRIMARY KEY ("permission_id","model_id","model_type")
);

CREATE TABLE "mc_migrations" (
	"id" INT,
	"migration" VARCHAR,
	"batch" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "mc_lists" (
	"id" INT,
	"name" VARCHAR,
	"group_id" INT,
	"sending_server_id" INT,
	"double_optin" ENUM,
	"welcome_email" ENUM,
	"unsub_email" ENUM,
	"notification" ENUM,
	"notification_attributes" LONGTEXT,
	"attributes" LONGTEXT,
	"app_id" INT,
	"user_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "mc_jobs" (
	"id" BIGINT,
	"queue" VARCHAR,
	"payload" LONGTEXT,
	"attempts" TINYINT,
	"reserved_at" INT,
	"available_at" INT,
	"created_at" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "mc_imports" (
	"id" INT,
	"type" ENUM,
	"file" VARCHAR,
	"attributes" LONGTEXT,
	"total" INT,
	"processed" INT,
	"duplicates" INT,
	"invalids" INT,
	"suppressed" INT,
	"bounced" INT,
	"user_id" INT,
	"app_id" INT,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "mc_groups" (
	"id" INT,
	"name" VARCHAR,
	"type_id" SMALLINT,
	"app_id" INT,
	"user_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "mc_file_offsets" (
	"id" INT,
	"file" TEXT,
	"offset" INT,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "mc_fbls" (
	"id" INT,
	"email" VARCHAR,
	"active" ENUM,
	"method" ENUM,
	"host" VARCHAR,
	"username" VARCHAR,
	"password" VARCHAR,
	"port" SMALLINT,
	"encryption" ENUM,
	"validate_cert" ENUM,
	"delete_after_processing" ENUM,
	"app_id" INT,
	"user_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "mc_failed_jobs" (
	"id" BIGINT,
	"connection" TEXT,
	"queue" TEXT,
	"payload" LONGTEXT,
	"exception" LONGTEXT,
	"failed_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "mc_email_verifiers" (
	"id" INT,
	"name" VARCHAR,
	"attributes" LONGTEXT,
	"total_verified" INT,
	"type" VARCHAR,
	"active" ENUM,
	"app_id" INT,
	"user_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "mc_drips" (
	"id" INT,
	"name" VARCHAR,
	"group_id" INT,
	"broadcast_id" INT,
	"active" ENUM,
	"send" ENUM,
	"after_minutes" INT,
	"send_attributes" LONGTEXT,
	"send_datetime" TIMESTAMP,
	"app_id" INT,
	"user_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "mc_custom_field_list" (
	"list_id" INT,
	"custom_field_id" INT
);

CREATE TABLE "mc_custom_field_contact" (
	"contact_id" INT,
	"custom_field_id" INT,
	"data" TEXT
);

CREATE TABLE "mc_custom_fields" (
	"id" INT,
	"name" VARCHAR,
	"tag" VARCHAR,
	"required" ENUM,
	"type" ENUM,
	"values" TEXT,
	"app_id" INT,
	"user_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "mc_countries" (
	"id" INT,
	"code" VARCHAR,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "mc_contacts" (
	"id" INT,
	"list_id" INT,
	"email" VARCHAR,
	"active" ENUM,
	"confirmed" ENUM,
	"unsubscribed" ENUM,
	"format" ENUM,
	"verified" ENUM,
	"source" ENUM,
	"app_id" INT,
	"user_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "mc_client_settings" (
	"id" INT,
	"mail_headers" LONGTEXT,
	"app_id" INT,
	"user_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "mc_broadcasts" (
	"id" INT,
	"name" VARCHAR,
	"group_id" INT,
	"email_subject" VARCHAR,
	"content_html" LONGTEXT,
	"content_text" LONGTEXT,
	"app_id" INT,
	"user_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "mc_bounces" (
	"id" INT,
	"email" VARCHAR,
	"active" ENUM,
	"method" ENUM,
	"host" VARCHAR,
	"username" VARCHAR,
	"password" VARCHAR,
	"port" SMALLINT,
	"encryption" ENUM,
	"validate_cert" ENUM,
	"delete_after_processing" ENUM,
	"app_id" INT,
	"user_id" INT,
	"pmta" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "mc_blacklisteds" (
	"id" INT,
	"name" VARCHAR,
	"ip_domain" ENUM,
	"detail" LONGTEXT,
	"counts" INT,
	"app_id" INT,
	"user_id" INT,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "mc_auto_followup_stat_log_opens" (
	"id" INT,
	"auto_followup_stat_log_id" INT,
	"ip" VARCHAR,
	"country" VARCHAR,
	"country_code" CHAR,
	"city" VARCHAR,
	"zipcode" VARCHAR,
	"user_agent" VARCHAR,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "mc_auto_followup_stat_log_clicks" (
	"id" INT,
	"auto_followup_stat_log_id" INT,
	"link" TEXT,
	"ip" VARCHAR,
	"country" VARCHAR,
	"country_code" CHAR,
	"city" VARCHAR,
	"zipcode" VARCHAR,
	"user_agent" VARCHAR,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "mc_auto_followup_stat_logs" (
	"id" INT,
	"auto_followup_stat_id" INT,
	"message_id" VARCHAR,
	"email" VARCHAR,
	"list" VARCHAR,
	"broadcast" VARCHAR,
	"sending_server" VARCHAR,
	"status" ENUM,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "mc_auto_followup_stats" (
	"id" INT,
	"auto_followup_id" INT,
	"auto_followup_name" VARCHAR,
	"schedule_by" VARCHAR,
	"app_id" INT,
	"user_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "mc_auto_followups" (
	"id" INT,
	"name" VARCHAR,
	"segment_id" INT,
	"broadcast_id" INT,
	"sending_server_id" INT,
	"active" ENUM,
	"app_id" INT,
	"user_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "mc_activity_logs" (
	"id" INT,
	"log_name" VARCHAR,
	"description" TEXT,
	"subject_id" INT,
	"subject_type" VARCHAR,
	"causer_id" INT,
	"causer_type" VARCHAR,
	"properties" TEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);
