DROP DATABASE IF EXISTS "schema507";
CREATE DATABASE "schema507";
USE "schema507";
CREATE TABLE "sso" (
	"id" INT,
	"application_type" VARCHAR,
	"partner_id" INT,
	"domain" VARCHAR,
	"status" TINYINT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"custom_data" TEXT,
	"redirect_url" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "conf_maps" (
	"id" INTEGER,
	"map_name" VARCHAR,
	"host_name" VARCHAR,
	"status" INTEGER,
	"version" INTEGER,
	"created_at" DATETIME,
	"remarks" TEXT,
	"content" MEDIUMTEXT,
	"custom_data" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "work_group" (
	"id" INT,
	"created_at" DATETIME,
	"created_by" VARCHAR,
	"updated_at" DATETIME,
	"updated_by" VARCHAR,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "widget_log" (
	"id" INT,
	"kshow_id" VARCHAR,
	"entry_id" VARCHAR,
	"kmedia_type" INT,
	"widget_type" VARCHAR,
	"referer" VARCHAR,
	"views" INT,
	"ip1" INT,
	"ip1_count" INT,
	"ip2" INT,
	"ip2_count" INT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"plays" INT,
	"partner_id" INT,
	"subp_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "widget" (
	"id" VARCHAR,
	"int_id" BIGINT,
	"source_widget_id" VARCHAR,
	"root_widget_id" VARCHAR,
	"partner_id" INT,
	"subp_id" INT,
	"kshow_id" VARCHAR,
	"entry_id" VARCHAR,
	"ui_conf_id" INT,
	"custom_data" VARCHAR,
	"security_type" SMALLINT,
	"security_policy" SMALLINT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"partner_data" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "virus_scan_profile" (
	"id" INT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"partner_id" INT,
	"name" VARCHAR,
	"status" INT,
	"engine_type" INT,
	"entry_filter" TEXT,
	"action_if_infected" INT,
	"custom_data" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "vendor_catalog_item" (
	"id" INT,
	"name" VARCHAR,
	"system_name" VARCHAR,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"status" TINYINT,
	"vendor_partner_id" INT,
	"service_type" TINYINT,
	"service_feature" TINYINT,
	"turn_around_time" INT,
	"source_language" VARCHAR,
	"target_language" VARCHAR,
	"output_format" VARCHAR,
	"custom_data" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user_role" (
	"id" INT,
	"str_id" VARCHAR,
	"name" VARCHAR,
	"system_name" VARCHAR,
	"description" TEXT,
	"partner_id" INT,
	"status" INT,
	"permission_names" TEXT,
	"tags" TEXT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"custom_data" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user_login_data" (
	"id" INT,
	"login_email" VARCHAR,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"sha1_password" VARCHAR,
	"salt" VARCHAR,
	"config_partner_id" INT,
	"login_blocked_until" DATETIME,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"custom_data" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user_entry" (
	"id" INT,
	"entry_id" VARCHAR,
	"kuser_id" INT,
	"partner_id" INT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"status" INT,
	"type" INT,
	"extended_status" INT,
	"privacy_context" VARCHAR,
	"custom_data" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "upload_token" (
	"id" VARCHAR,
	"int_id" INT,
	"partner_id" INT,
	"kuser_id" INT,
	"status" INT,
	"file_name" VARCHAR,
	"file_size" BIGINT,
	"uploaded_file_size" BIGINT,
	"upload_temp_path" VARCHAR,
	"user_ip" VARCHAR,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"dc" INT,
	"object_type" VARCHAR,
	"object_id" VARCHAR,
	"custom_data" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "ui_conf" (
	"id" INT,
	"obj_type" SMALLINT,
	"partner_id" INT,
	"subp_id" INT,
	"conf_file_path" VARCHAR,
	"name" VARCHAR,
	"width" VARCHAR,
	"height" VARCHAR,
	"html_params" VARCHAR,
	"swf_url" VARCHAR,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"conf_vars" VARCHAR,
	"use_cdn" TINYINT,
	"tags" TEXT,
	"custom_data" TEXT,
	"status" INT,
	"description" VARCHAR,
	"display_in_search" TINYINT,
	"creation_mode" TINYINT,
	"version" VARCHAR,
	"html5_url" VARCHAR,
	"partner_tags" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "track_entry" (
	"id" BIGINT,
	"track_event_type_id" SMALLINT,
	"ps_version" VARCHAR,
	"context" VARCHAR,
	"partner_id" INT,
	"entry_id" VARCHAR,
	"host_name" VARCHAR,
	"uid" VARCHAR,
	"track_event_status_id" SMALLINT,
	"changed_properties" VARCHAR,
	"param_1_str" VARCHAR,
	"param_2_str" VARCHAR,
	"param_3_str" VARCHAR,
	"ks" VARCHAR,
	"description" VARCHAR,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"user_ip" VARCHAR,
	"custom_data" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "tmp" (
	"id" INT,
	"kshow_id" INT,
	"kuser_id" INT,
	"name" VARCHAR,
	"type" SMALLINT,
	"media_type" SMALLINT,
	"data" VARCHAR,
	"thumbnail" VARCHAR,
	"views" INT,
	"votes" INT,
	"comments" INT,
	"favorites" INT,
	"total_rank" INT,
	"rank" INT,
	"tags" TEXT,
	"anonymous" TINYINT,
	"status" INT,
	"source" SMALLINT,
	"source_id" INT,
	"source_link" VARCHAR,
	"license_type" SMALLINT,
	"credit" VARCHAR,
	"length_in_msecs" INT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"partner_id" INT,
	"display_in_search" TINYINT
);

CREATE TABLE "temp_updated_kusers_storage_usage" (
	"kuser_id" INT,
	"storage_kb" INT
);

CREATE TABLE "temp_server_node_status" (
	"host_name" VARCHAR,
	"dc" INT,
	"cpu" INT,
	"streams" INT,
	"updated_at" DATETIME,
	 PRIMARY KEY ("host_name`(255")
);

CREATE TABLE "temp_entry_update" (
	"id" VARCHAR,
	"views" DECIMAL,
	"plays" DECIMAL
);

CREATE TABLE "tagword_count" (
	"tag" VARCHAR,
	"tag_count" INT,
	 PRIMARY KEY ("tag")
);

CREATE TABLE "tag" (
	"id" BIGINT,
	"tag" VARCHAR,
	"partner_id" INT,
	"object_type" INT,
	"instance_count" INT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"privacy_context" VARCHAR,
	"custom_data" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "system_user" (
	"id" INT,
	"email" VARCHAR,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"sha1_password" VARCHAR,
	"salt" VARCHAR,
	"created_by" INT,
	"status" TINYINT,
	"is_primary" TINYINT,
	"status_updated_at" DATETIME,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"deleted_at" DATETIME,
	"role" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "syndication_feed" (
	"id" VARCHAR,
	"int_id" INT,
	"partner_id" INT,
	"playlist_id" VARCHAR,
	"name" VARCHAR,
	"status" TINYINT,
	"type" TINYINT,
	"landing_page" VARCHAR,
	"flavor_param_id" INT,
	"player_uiconf_id" INT,
	"allow_embed" INT,
	"adult_content" VARCHAR,
	"transcode_existing_content" INT,
	"add_to_default_conversion_profile" INT,
	"categories" VARCHAR,
	"feed_description" VARCHAR,
	"language" VARCHAR,
	"feed_landing_page" VARCHAR,
	"owner_name" VARCHAR,
	"owner_email" VARCHAR,
	"feed_image_url" VARCHAR,
	"feed_author" VARCHAR,
	"created_at" DATETIME,
	"custom_data" TEXT,
	"display_in_search" TINYINT,
	"privacy_context" VARCHAR,
	"enforce_entitlement" TINYINT,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "storage_profile" (
	"id" INT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"partner_id" INT,
	"name" VARCHAR,
	"system_name" VARCHAR,
	"desciption" VARCHAR,
	"status" INT,
	"protocol" INT,
	"storage_url" VARCHAR,
	"storage_base_dir" VARCHAR,
	"storage_username" VARCHAR,
	"storage_password" VARCHAR,
	"storage_ftp_passive_mode" INT,
	"delivery_http_base_url" VARCHAR,
	"delivery_rmp_base_url" VARCHAR,
	"delivery_iis_base_url" VARCHAR,
	"min_file_size" INT,
	"max_file_size" INT,
	"flavor_params_ids" TEXT,
	"max_concurrent_connections" INT,
	"custom_data" TEXT,
	"path_manager_class" VARCHAR,
	"url_manager_class" VARCHAR,
	"delivery_priority" INT,
	"delivery_status" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "short_link" (
	"id" VARCHAR,
	"int_id" INT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"expires_at" DATETIME,
	"partner_id" INT,
	"kuser_id" INT,
	"name" VARCHAR,
	"system_name" VARCHAR,
	"full_url" TEXT,
	"status" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "vendor_integration" (
	"id" INT,
	"account_id" VARCHAR,
	"partner_id" INT,
	"vendor_type" SMALLINT,
	"custom_data" TEXT,
	"status" TINYINT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "server_node" (
	"id" INT,
	"dc" INT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"heartbeat_time" DATETIME,
	"partner_id" INT,
	"name" VARCHAR,
	"system_name" VARCHAR,
	"description" VARCHAR,
	"status" INT,
	"type" INT,
	"tags" TEXT,
	"host_name" VARCHAR,
	"playback_host_name" VARCHAR,
	"parent_id" VARCHAR,
	"environment" VARCHAR,
	"custom_data" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "scheduler_worker" (
	"id" INT,
	"created_at" DATETIME,
	"created_by" VARCHAR,
	"updated_at" DATETIME,
	"updated_by" VARCHAR,
	"scheduler_id" INT,
	"scheduler_configured_id" INT,
	"configured_id" INT,
	"type" SMALLINT,
	"name" VARCHAR,
	"description" VARCHAR,
	"statuses" VARCHAR,
	"last_status" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "scheduler_status" (
	"id" BIGINT,
	"created_at" DATETIME,
	"created_by" VARCHAR,
	"updated_at" DATETIME,
	"updated_by" VARCHAR,
	"scheduler_id" INT,
	"scheduler_configured_id" INT,
	"worker_id" INT,
	"worker_configured_id" INT,
	"worker_type" SMALLINT,
	"type" SMALLINT,
	"value" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "scheduler_config" (
	"id" INT,
	"created_at" DATETIME,
	"created_by" VARCHAR,
	"updated_at" DATETIME,
	"updated_by" VARCHAR,
	"command_id" INT,
	"command_status" TINYINT,
	"scheduler_id" INT,
	"scheduler_configured_id" INT,
	"scheduler_name" VARCHAR,
	"worker_id" INT,
	"worker_configured_id" INT,
	"worker_name" VARCHAR,
	"variable" VARCHAR,
	"variable_part" VARCHAR,
	"value" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "scheduler" (
	"id" INT,
	"created_at" DATETIME,
	"created_by" VARCHAR,
	"updated_at" DATETIME,
	"updated_by" VARCHAR,
	"configured_id" INT,
	"name" VARCHAR,
	"description" VARCHAR,
	"statuses" VARCHAR,
	"last_status" DATETIME,
	"host" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "scheduled_task_profile" (
	"id" INT,
	"partner_id" INT,
	"name" VARCHAR,
	"system_name" VARCHAR,
	"description" VARCHAR,
	"status" INT,
	"object_filter_engine_type" INT,
	"object_filter" TEXT,
	"object_filter_api_type" VARCHAR,
	"object_tasks" TEXT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"last_execution_started_at" DATETIME,
	"max_total_count_allowed" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "schedule_resource" (
	"id" INT,
	"parent_id" INT,
	"partner_id" INT,
	"name" VARCHAR,
	"system_name" VARCHAR,
	"description" TEXT,
	"tags" TEXT,
	"type" INT,
	"status" INT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"custom_data" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "schedule_event_resource" (
	"id" INT,
	"event_id" INT,
	"resource_id" INT,
	"partner_id" INT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"custom_data" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "schedule_event" (
	"id" INT,
	"parent_id" INT,
	"partner_id" INT,
	"summary" VARCHAR,
	"description" TEXT,
	"type" INT,
	"status" INT,
	"original_start_date" DATETIME,
	"start_date" DATETIME,
	"end_date" DATETIME,
	"reference_id" VARCHAR,
	"classification_type" INT,
	"geo_lat" FLOAT,
	"geo_long" FLOAT,
	"location" VARCHAR,
	"organizer" VARCHAR,
	"owner_kuser_id" INT,
	"priority" INT,
	"sequence" INT,
	"recurrence_type" INT,
	"duration" INT,
	"contact" VARCHAR,
	"comment" TEXT,
	"tags" TEXT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"custom_data" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "roughcut_entry" (
	"id" INT,
	"roughcut_id" VARCHAR,
	"roughcut_version" INT,
	"roughcut_kshow_id" VARCHAR,
	"entry_id" VARCHAR,
	"partner_id" INT,
	"op_type" SMALLINT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "response_profile" (
	"id" BIGINT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"partner_id" INT,
	"status" INT,
	"name" VARCHAR,
	"system_name" VARCHAR,
	"type" INT,
	"custom_data" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "report" (
	"id" INT,
	"partner_id" INT,
	"name" VARCHAR,
	"system_name" VARCHAR,
	"description" VARCHAR,
	"query" TEXT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"deleted_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "reach_profile" (
	"id" INT,
	"name" VARCHAR,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"partner_id" INT,
	"type" TINYINT,
	"status" TINYINT,
	"used_credit" DOUBLE,
	"rules" TEXT,
	"dictionary" TEXT,
	"custom_data" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "puser_role" (
	"id" INT,
	"kshow_id" VARCHAR,
	"partner_id" INT,
	"puser_id" VARCHAR,
	"role" INT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"subp_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "puser_kuser" (
	"id" INT,
	"partner_id" INT,
	"puser_id" VARCHAR,
	"kuser_id" INT,
	"puser_name" VARCHAR,
	"custom_data" VARCHAR,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"context" VARCHAR,
	"subp_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "priority_group" (
	"id" INT,
	"created_at" DATETIME,
	"created_by" VARCHAR,
	"updated_at" DATETIME,
	"updated_by" VARCHAR,
	"name" VARCHAR,
	"description" VARCHAR,
	"priority" TINYINT,
	"bulk_priority" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "permission_to_permission_item" (
	"id" INT,
	"permission_id" INT,
	"permission_item_id" INT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "permission_item" (
	"id" INT,
	"type" VARCHAR,
	"partner_id" INT,
	"param_1" VARCHAR,
	"param_2" VARCHAR,
	"param_3" VARCHAR,
	"param_4" VARCHAR,
	"param_5" VARCHAR,
	"tags" TEXT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"custom_data" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "permission" (
	"id" INT,
	"type" INT,
	"name" VARCHAR,
	"friendly_name" VARCHAR,
	"description" TEXT,
	"partner_id" INT,
	"status" INT,
	"depends_on_permission_names" TEXT,
	"tags" TEXT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"custom_data" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "partnership" (
	"id" INT,
	"partnership_order" INT,
	"image_path" VARCHAR,
	"href" VARCHAR,
	"text" VARCHAR,
	"alt" VARCHAR,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"partnership_date" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "partner_transactions" (
	"id" INT,
	"partner_id" INT,
	"created_at" DATETIME,
	"amount" FLOAT,
	"currency" VARCHAR,
	"transaction_id" VARCHAR,
	"timestamp" DATETIME,
	"correlation_id" VARCHAR,
	"ack" VARCHAR,
	"transaction_data" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "partner_stats" (
	"partner_id" INT,
	"views" INT,
	"plays" INT,
	"videos" INT,
	"audios" INT,
	"images" INT,
	"entries" INT,
	"users_1" INT,
	"users_2" INT,
	"rc_1" INT,
	"rc_2" INT,
	"kshows_1" INT,
	"kshows_2" INT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"custom_data" TEXT,
	"widgets" INT,
	 PRIMARY KEY ("partner_id")
);

CREATE TABLE "partner_load" (
	"partner_id" INT,
	"job_type" INT,
	"job_sub_type" INT,
	"partner_load" INT,
	"weighted_partner_load" INT,
	"custom_data" TEXT,
	"dc" INT,
	"quota" INT,
	 PRIMARY KEY ("partner_id","job_type","job_sub_type","dc")
);

CREATE TABLE "partner_catalog_item" (
	"id" INT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"status" TINYINT,
	"partner_id" INT,
	"catalog_item_id" INT,
	"custom_data" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "partner_activity" (
	"id" INT,
	"partner_id" INT,
	"activity_date" DATE,
	"activity" INT,
	"sub_activity" INT,
	"amount" BIGINT,
	"amount1" BIGINT,
	"amount2" BIGINT,
	"amount3" INT,
	"amount4" INT,
	"amount5" INT,
	"amount6" INT,
	"amount7" INT,
	"amount8" INT,
	"amount9" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "partner" (
	"id" INT,
	"partner_name" VARCHAR,
	"url1" VARCHAR,
	"url2" VARCHAR,
	"secret" VARCHAR,
	"admin_secret" VARCHAR,
	"max_number_of_hits_per_day" INT,
	"appear_in_search" INT,
	"debug_level" INT,
	"invalid_login_count" INT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"partner_alias" VARCHAR,
	"anonymous_kuser_id" INT,
	"ks_max_expiry_in_seconds" INT,
	"create_user_on_demand" TINYINT,
	"prefix" VARCHAR,
	"admin_name" VARCHAR,
	"admin_email" VARCHAR,
	"description" VARCHAR,
	"commercial_use" TINYINT,
	"moderate_content" TINYINT,
	"notify" TINYINT,
	"custom_data" TEXT,
	"service_config_id" VARCHAR,
	"status" TINYINT,
	"content_categories" VARCHAR,
	"type" TINYINT,
	"phone" VARCHAR,
	"describe_yourself" VARCHAR,
	"adult_content" TINYINT,
	"partner_package" TINYINT,
	"usage_percent" INT,
	"storage_usage" INT,
	"eighty_percent_warning" INT,
	"usage_limit_warning" INT,
	"monitor_usage" INT,
	"priority_group_id" INT,
	"work_group_id" INT,
	"partner_group_type" SMALLINT,
	"partner_parent_id" INT,
	"kmc_version" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "notification" (
	"id" INT,
	"partner_id" INT,
	"puser_id" VARCHAR,
	"type" SMALLINT,
	"object_id" VARCHAR,
	"status" INT,
	"notification_data" VARCHAR,
	"number_of_attempts" SMALLINT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"notification_result" VARCHAR,
	"object_type" SMALLINT,
	"scheduler_id" INT,
	"worker_id" INT,
	"batch_index" INT,
	"processor_name" VARCHAR,
	"processor_location" VARCHAR,
	"processor_expiration" DATETIME,
	"execution_attempts" TINYINT,
	"lock_version" INT,
	"dc" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "moderation_flag" (
	"id" INT,
	"partner_id" INT,
	"kuser_id" INT,
	"object_type" SMALLINT,
	"flagged_entry_id" VARCHAR,
	"flagged_kuser_id" INT,
	"status" INT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"comments" VARCHAR,
	"flag_type" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "moderation" (
	"id" INT,
	"partner_id" INT,
	"subp_id" INT,
	"object_id" VARCHAR,
	"object_type" SMALLINT,
	"kuser_id" INT,
	"puser_id" VARCHAR,
	"status" INT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"comments" VARCHAR,
	"group_id" VARCHAR,
	"report_code" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "metadata_profile_field" (
	"id" INT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"metadata_profile_id" INT,
	"metadata_profile_version" INT,
	"partner_id" INT,
	"label" VARCHAR,
	"key" VARCHAR,
	"type" VARCHAR,
	"xpath" VARCHAR,
	"status" TINYINT,
	"related_metadata_profile_id" INT,
	"search_index" INT,
	"custom_data" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "metadata_profile" (
	"id" INT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"version" INT,
	"file_sync_version" INT,
	"views_version" INT,
	"partner_id" INT,
	"name" VARCHAR,
	"system_name" VARCHAR,
	"description" VARCHAR,
	"status" TINYINT,
	"object_type" INT,
	"create_mode" INT,
	"custom_data" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "metadata" (
	"id" INT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"version" INT,
	"metadata_profile_id" INT,
	"metadata_profile_version" INT,
	"partner_id" INT,
	"object_id" VARCHAR,
	"object_type" INT,
	"status" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "media_server" (
	"id" INT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"hostname" VARCHAR,
	"dc" INT,
	"custom_data" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "media_info" (
	"id" BIGINT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"flavor_asset_id" VARCHAR,
	"file_size" INT,
	"container_format" VARCHAR,
	"container_id" VARCHAR,
	"container_profile" VARCHAR,
	"container_duration" INT,
	"container_bit_rate" INT,
	"video_format" VARCHAR,
	"video_codec_id" VARCHAR,
	"video_duration" INT,
	"video_bit_rate" INT,
	"video_bit_rate_mode" TINYINT,
	"video_width" INT,
	"video_height" INT,
	"video_frame_rate" FLOAT,
	"video_dar" FLOAT,
	"video_rotation" INT,
	"audio_format" VARCHAR,
	"audio_codec_id" VARCHAR,
	"audio_duration" INT,
	"audio_bit_rate" INT,
	"audio_bit_rate_mode" TINYINT,
	"audio_channels" TINYINT,
	"audio_sampling_rate" INT,
	"audio_resolution" INT,
	"writing_lib" VARCHAR,
	"custom_data" TEXT,
	"raw_data" TEXT,
	"multi_stream_info" VARCHAR,
	"flavor_asset_version" VARCHAR,
	"scan_type" INT,
	"multi_stream" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "mail_job" (
	"id" INT,
	"mail_type" SMALLINT,
	"mail_priority" SMALLINT,
	"recipient_name" VARCHAR,
	"recipient_email" VARCHAR,
	"recipient_id" INT,
	"from_name" VARCHAR,
	"from_email" VARCHAR,
	"body_params" VARCHAR,
	"subject_params" VARCHAR,
	"template_path" VARCHAR,
	"culture" TINYINT,
	"status" TINYINT,
	"created_at" DATETIME,
	"campaign_id" INT,
	"min_send_date" DATETIME,
	"scheduler_id" INT,
	"worker_id" INT,
	"batch_index" INT,
	"processor_name" VARCHAR,
	"processor_location" VARCHAR,
	"processor_expiration" DATETIME,
	"execution_attempts" TINYINT,
	"lock_version" INT,
	"partner_id" INT,
	"updated_at" DATETIME,
	"dc" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "live_channel_segment" (
	"id" BIGINT,
	"partner_id" INT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"name" VARCHAR,
	"description" TEXT,
	"tags" TEXT,
	"type" INT,
	"status" INT,
	"channel_id" VARCHAR,
	"entry_id" VARCHAR,
	"trigger_type" INT,
	"trigger_segment_id" BIGINT,
	"start_time" FLOAT,
	"duration" FLOAT,
	"custom_data" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "kwidget_log" (
	"id" INT,
	"widget_id" VARCHAR,
	"source_widget_id" VARCHAR,
	"root_widget_id" VARCHAR,
	"kshow_id" VARCHAR,
	"entry_id" VARCHAR,
	"ui_conf_id" INT,
	"referer" VARCHAR,
	"views" INT,
	"ip1" INT,
	"ip1_count" INT,
	"ip2" INT,
	"ip2_count" INT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"plays" INT,
	"partner_id" INT,
	"subp_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "kvote" (
	"id" INT,
	"kshow_id" VARCHAR,
	"entry_id" VARCHAR,
	"kuser_id" INT,
	"puser_id" VARCHAR,
	"rank" INT,
	"created_at" DATETIME,
	"status" INT,
	"partner_id" INT,
	"kvote_type" INT,
	"custom_data" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "kuser_to_user_role" (
	"id" INT,
	"kuser_id" INT,
	"user_role_id" INT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "kuser_kgroup" (
	"id" BIGINT,
	"kuser_id" INT,
	"puser_id" VARCHAR,
	"kgroup_id" INT,
	"pgroup_id" VARCHAR,
	"status" TINYINT,
	"partner_id" INT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"custom_data" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "kuser" (
	"id" INT,
	"login_data_id" INT,
	"is_admin" TINYINT,
	"screen_name" VARCHAR,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"full_name" VARCHAR,
	"email" VARCHAR,
	"sha1_password" VARCHAR,
	"salt" VARCHAR,
	"date_of_birth" DATE,
	"country" VARCHAR,
	"state" VARCHAR,
	"city" VARCHAR,
	"zip" VARCHAR,
	"url_list" VARCHAR,
	"picture" VARCHAR,
	"icon" TINYINT,
	"about_me" VARCHAR,
	"tags" TEXT,
	"tagline" VARCHAR,
	"network_highschool" VARCHAR,
	"network_college" VARCHAR,
	"network_other" VARCHAR,
	"mobile_num" VARCHAR,
	"mature_content" TINYINT,
	"gender" TINYINT,
	"registration_ip" INT,
	"registration_cookie" VARCHAR,
	"im_list" VARCHAR,
	"views" INT,
	"fans" INT,
	"entries" INT,
	"produced_kshows" INT,
	"status" INT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"partner_id" INT,
	"display_in_search" TINYINT,
	"partner_data" VARCHAR,
	"storage_size" INT,
	"puser_id" VARCHAR,
	"admin_tags" TEXT,
	"indexed_partner_data_int" INT,
	"indexed_partner_data_string" VARCHAR,
	"custom_data" TEXT,
	"type" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "kshow_kuser" (
	"kshow_id" VARCHAR,
	"kuser_id" INT,
	"subscription_type" INT,
	"alert_type" INT,
	"id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "kshow" (
	"id" VARCHAR,
	"producer_id" INT,
	"episode_id" VARCHAR,
	"name" VARCHAR,
	"subdomain" VARCHAR,
	"description" TEXT,
	"status" INT,
	"type" INT,
	"media_type" INT,
	"format_type" INT,
	"language" INT,
	"start_date" DATE,
	"end_date" DATE,
	"skin" TEXT,
	"thumbnail" VARCHAR,
	"show_entry_id" VARCHAR,
	"intro_id" VARCHAR,
	"views" INT,
	"votes" INT,
	"comments" INT,
	"favorites" INT,
	"rank" INT,
	"entries" INT,
	"contributors" INT,
	"subscribers" INT,
	"number_of_updates" INT,
	"tags" TEXT,
	"custom_data" TEXT,
	"indexed_custom_data_1" INT,
	"indexed_custom_data_2" INT,
	"indexed_custom_data_3" VARCHAR,
	"reoccurence" INT,
	"license_type" INT,
	"length_in_msecs" INT,
	"view_permissions" INT,
	"view_password" VARCHAR,
	"contrib_permissions" INT,
	"contrib_password" VARCHAR,
	"edit_permissions" INT,
	"edit_password" VARCHAR,
	"salt" VARCHAR,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"partner_id" INT,
	"display_in_search" TINYINT,
	"subp_id" INT,
	"permissions" VARCHAR,
	"group_id" VARCHAR,
	"plays" INT,
	"partner_data" VARCHAR,
	"int_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "keyword" (
	"word" VARCHAR,
	"entity_id" INT,
	"entity_type" INT,
	"entity_columns" VARCHAR,
	 PRIMARY KEY ("word")
);

CREATE TABLE "kce_installation_error" (
	"id" INT,
	"partner_id" INT,
	"browser" VARCHAR,
	"server_ip" VARCHAR,
	"server_os" VARCHAR,
	"php_version" VARCHAR,
	"ce_admin_email" VARCHAR,
	"type" VARCHAR,
	"description" VARCHAR,
	"data" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "invalid_session" (
	"id" BIGINT,
	"ks" VARCHAR,
	"ks_valid_until" DATETIME,
	"created_at" DATETIME,
	"actions_limit" INT,
	"type" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "generic_distribution_provider_action" (
	"id" INT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"partner_id" INT,
	"generic_distribution_provider_id" INT,
	"action" TINYINT,
	"status" TINYINT,
	"results_parser" TINYINT,
	"protocol" INT,
	"server_address" VARCHAR,
	"remote_path" VARCHAR,
	"remote_username" VARCHAR,
	"remote_password" VARCHAR,
	"editable_fields" VARCHAR,
	"mandatory_fields" VARCHAR,
	"custom_data" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "generic_distribution_provider" (
	"id" INT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"partner_id" INT,
	"is_default" TINYINT,
	"status" TINYINT,
	"name" VARCHAR,
	"optional_flavor_params_ids" VARCHAR,
	"required_flavor_params_ids" VARCHAR,
	"optional_thumb_dimensions" VARCHAR,
	"required_thumb_dimensions" VARCHAR,
	"editable_fields" VARCHAR,
	"mandatory_fields" VARCHAR,
	"custom_data" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "flickr_token" (
	"kalt_token" VARCHAR,
	"frob" VARCHAR,
	"token" VARCHAR,
	"nsid" VARCHAR,
	"response" VARCHAR,
	"is_valid" INT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("kalt_token")
);

CREATE TABLE "flavor_params_output" (
	"id" BIGINT,
	"flavor_params_id" INT,
	"flavor_params_version" INT,
	"partner_id" INT,
	"entry_id" VARCHAR,
	"flavor_asset_id" VARCHAR,
	"flavor_asset_version" VARCHAR,
	"name" VARCHAR,
	"tags" TEXT,
	"description" VARCHAR,
	"ready_behavior" TINYINT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"deleted_at" DATETIME,
	"is_default" TINYINT,
	"format" VARCHAR,
	"video_codec" VARCHAR,
	"video_bitrate" INT,
	"audio_codec" VARCHAR,
	"audio_bitrate" INT,
	"audio_channels" TINYINT,
	"audio_sample_rate" INT,
	"audio_resolution" INT,
	"width" INT,
	"height" INT,
	"frame_rate" FLOAT,
	"gop_size" INT,
	"two_pass" INT,
	"conversion_engines" TEXT,
	"conversion_engines_extra_params" TEXT,
	"custom_data" TEXT,
	"command_lines" TEXT,
	"file_ext" VARCHAR,
	"deinterlice" INT,
	"rotate" INT,
	"operators" TEXT,
	"engine_version" SMALLINT,
	"type" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "flavor_params_conversion_profile" (
	"conversion_profile_id" INT,
	"flavor_params_id" INT,
	"system_name" VARCHAR,
	"origin" TINYINT,
	"ready_behavior" TINYINT,
	"force_none_complied" INT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"id" INT,
	"priority" TINYINT,
	"custom_data" TEXT,
	"delete_policy" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "flavor_params" (
	"id" INT,
	"version" INT,
	"partner_id" INT,
	"name" VARCHAR,
	"system_name" VARCHAR,
	"tags" TEXT,
	"description" VARCHAR,
	"ready_behavior" TINYINT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"deleted_at" DATETIME,
	"is_default" TINYINT,
	"format" VARCHAR,
	"video_codec" VARCHAR,
	"video_bitrate" INT,
	"audio_codec" VARCHAR,
	"audio_bitrate" INT,
	"audio_channels" TINYINT,
	"audio_sample_rate" INT,
	"audio_resolution" INT,
	"width" INT,
	"height" INT,
	"frame_rate" FLOAT,
	"gop_size" INT,
	"two_pass" INT,
	"conversion_engines" VARCHAR,
	"conversion_engines_extra_params" VARCHAR,
	"custom_data" TEXT,
	"view_order" INT,
	"bypass_by_extension" VARCHAR,
	"creation_mode" SMALLINT,
	"deinterlice" INT,
	"rotate" INT,
	"operators" TEXT,
	"engine_version" SMALLINT,
	"type" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "flavor_asset" (
	"id" VARCHAR,
	"int_id" BIGINT,
	"partner_id" INT,
	"tags" TEXT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"deleted_at" DATETIME,
	"entry_id" VARCHAR,
	"flavor_params_id" INT,
	"status" TINYINT,
	"version" VARCHAR,
	"description" VARCHAR,
	"width" INT,
	"height" INT,
	"bitrate" INT,
	"frame_rate" FLOAT,
	"size" INT,
	"is_original" INT,
	"file_ext" VARCHAR,
	"container_format" VARCHAR,
	"video_codec_id" VARCHAR,
	"type" INT,
	"custom_data" TEXT,
	 PRIMARY KEY ("int_id")
);

CREATE TABLE "flag" (
	"id" INT,
	"kuser_id" INT,
	"subject_type" INT,
	"subject_id" INT,
	"flag_type" INT,
	"other" VARCHAR,
	"comment" VARCHAR,
	"created_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "file_sync" (
	"id" BIGINT,
	"partner_id" INT,
	"object_type" INT,
	"object_id" VARCHAR,
	"version" INT,
	"object_sub_type" TINYINT,
	"dc" INT,
	"original" TINYINT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"ready_at" DATETIME,
	"sync_time" INT,
	"status" TINYINT,
	"file_type" TINYINT,
	"linked_id" BIGINT,
	"link_count" INT,
	"file_root" VARCHAR,
	"file_path" VARCHAR,
	"file_size" BIGINT,
	"custom_data" TEXT,
	"deleted_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "file_asset" (
	"id" BIGINT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"version" INT,
	"partner_id" INT,
	"object_id" VARCHAR,
	"object_type" INT,
	"status" INT,
	"name" VARCHAR,
	"system_name" VARCHAR,
	"file_ext" VARCHAR,
	"size" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "favorite" (
	"kuser_id" INT,
	"subject_type" INT,
	"subject_id" INT,
	"privacy" INT,
	"id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "event_notification_template" (
	"id" INT,
	"partner_id" INT,
	"name" VARCHAR,
	"system_name" VARCHAR,
	"description" VARCHAR,
	"type" INT,
	"status" INT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"custom_data" TEXT,
	"event_type" INT,
	"object_type" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "entry_vendor_task" (
	"id" INT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"queue_time" DATETIME,
	"finish_time" DATETIME,
	"partner_id" INT,
	"vendor_partner_id" INT,
	"entry_id" VARCHAR,
	"status" TINYINT,
	"price" FLOAT,
	"catalog_item_id" INT,
	"reach_profile_id" INT,
	"kuser_id" INT,
	"version" INT,
	"context" VARCHAR,
	"custom_data" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "entry_server_node" (
	"id" INT,
	"entry_id" VARCHAR,
	"server_node_id" INT,
	"partner_id" INT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"status" INT,
	"server_type" INT,
	"custom_data" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "entry_distribution" (
	"id" INT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"submitted_at" DATETIME,
	"entry_id" VARCHAR,
	"partner_id" INT,
	"distribution_profile_id" INT,
	"status" TINYINT,
	"dirty_status" TINYINT,
	"thumb_asset_ids" TEXT,
	"flavor_asset_ids" TEXT,
	"asset_ids" TEXT,
	"sunrise" DATETIME,
	"sunset" DATETIME,
	"remote_id" VARCHAR,
	"plays" INT,
	"views" INT,
	"validation_errors" TEXT,
	"error_type" INT,
	"error_number" INT,
	"error_description" VARCHAR,
	"last_report" DATETIME,
	"custom_data" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "entry" (
	"id" VARCHAR,
	"kshow_id" VARCHAR,
	"kuser_id" INT,
	"name" VARCHAR,
	"type" SMALLINT,
	"media_type" SMALLINT,
	"data" VARCHAR,
	"thumbnail" VARCHAR,
	"views" INT,
	"votes" INT,
	"comments" INT,
	"favorites" INT,
	"total_rank" INT,
	"rank" INT,
	"tags" TEXT,
	"anonymous" TINYINT,
	"status" INT,
	"source" SMALLINT,
	"source_id" VARCHAR,
	"source_link" VARCHAR,
	"license_type" SMALLINT,
	"credit" VARCHAR,
	"length_in_msecs" INT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"partner_id" INT,
	"display_in_search" TINYINT,
	"subp_id" INT,
	"custom_data" TEXT,
	"screen_name" VARCHAR,
	"site_url" VARCHAR,
	"permissions" INT,
	"group_id" VARCHAR,
	"plays" INT,
	"partner_data" VARCHAR,
	"int_id" BIGINT,
	"indexed_custom_data_1" INT,
	"description" TEXT,
	"media_date" DATETIME,
	"admin_tags" TEXT,
	"moderation_status" INT,
	"moderation_count" INT,
	"modified_at" DATETIME,
	"puser_id" VARCHAR,
	"access_control_id" INT,
	"conversion_profile_id" INT,
	"categories" VARCHAR,
	"categories_ids" VARCHAR,
	"flavor_params_ids" VARCHAR,
	"start_date" DATETIME,
	"end_date" DATETIME,
	"available_from" DATETIME,
	"last_played_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "email_ingestion_profile" (
	"id" INT,
	"name" VARCHAR,
	"description" TEXT,
	"email_address" VARCHAR,
	"mailbox_id" VARCHAR,
	"partner_id" INT,
	"conversion_profile_2_id" INT,
	"moderation_status" TINYINT,
	"custom_data" TEXT,
	"status" TINYINT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "edge_server" (
	"id" INT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"partner_id" INT,
	"name" VARCHAR,
	"system_name" VARCHAR,
	"description" VARCHAR,
	"status" INT,
	"type" INT,
	"tags" TEXT,
	"host_name" VARCHAR,
	"playback_host_name" VARCHAR,
	"parent_id" INT,
	"custom_data" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "dynamic_enum" (
	"id" INT,
	"enum_name" VARCHAR,
	"value_name" VARCHAR,
	"plugin_name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "drop_folder_file" (
	"id" INT,
	"partner_id" INT,
	"drop_folder_id" INT,
	"file_name" VARCHAR,
	"type" INT,
	"status" INT,
	"file_size" BIGINT,
	"file_size_last_set_at" DATETIME,
	"error_code" INT,
	"error_description" TEXT,
	"parsed_slug" VARCHAR,
	"parsed_flavor" VARCHAR,
	"lead_drop_folder_file_id" INT,
	"deleted_drop_folder_file_id" INT,
	"md5_file_name" VARCHAR,
	"entry_id" VARCHAR,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"upload_start_detected_at" DATETIME,
	"upload_end_detected_at" DATETIME,
	"import_started_at" DATETIME,
	"import_ended_at" DATETIME,
	"custom_data" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "drop_folder" (
	"id" INT,
	"partner_id" INT,
	"name" VARCHAR,
	"description" TEXT,
	"type" INT,
	"status" INT,
	"dc" INT,
	"path" TEXT,
	"conversion_profile_id" INT,
	"file_delete_policy" INT,
	"file_handler_type" INT,
	"file_name_patterns" TEXT,
	"file_handler_config" TEXT,
	"tags" TEXT,
	"error_code" INT,
	"error_description" TEXT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"custom_data" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "drm_profile" (
	"id" INT,
	"partner_id" INT,
	"name" TEXT,
	"description" TEXT,
	"provider" INT,
	"status" INT,
	"license_server_url" TEXT,
	"default_policy" TEXT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"custom_data" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "drm_policy" (
	"id" INT,
	"partner_id" INT,
	"name" TEXT,
	"system_name" VARCHAR,
	"description" TEXT,
	"provider" INT,
	"status" INT,
	"scenario" INT,
	"license_type" INT,
	"license_expiration_policy" INT,
	"duration" INT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"custom_data" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "drm_key" (
	"id" INT,
	"partner_id" INT,
	"provider" INT,
	"object_id" VARCHAR,
	"object_type" TINYINT,
	"drm_key" VARCHAR,
	"parent_id" INT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "drm_device" (
	"id" INT,
	"partner_id" INT,
	"device_id" VARCHAR,
	"provider" INT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"custom_data" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "distribution_profile" (
	"id" INT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"partner_id" INT,
	"provider_type" INT,
	"name" VARCHAR,
	"system_name" VARCHAR,
	"status" TINYINT,
	"submit_enabled" TINYINT,
	"update_enabled" TINYINT,
	"delete_enabled" TINYINT,
	"report_enabled" TINYINT,
	"auto_create_flavors" VARCHAR,
	"auto_create_thumb" VARCHAR,
	"optional_flavor_params_ids" TEXT,
	"required_flavor_params_ids" TEXT,
	"optional_thumb_dimensions" VARCHAR,
	"required_thumb_dimensions" VARCHAR,
	"report_interval" INT,
	"custom_data" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "delivery_profile" (
	"id" BIGINT,
	"partner_id" INT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"name" VARCHAR,
	"type" INT,
	"system_name" VARCHAR,
	"description" TEXT,
	"url" VARCHAR,
	"host_name" VARCHAR,
	"recognizer" TEXT,
	"tokenizer" TEXT,
	"status" INT,
	"media_protocols" VARCHAR,
	"streamer_type" VARCHAR,
	"is_default" TINYINT,
	"parent_id" BIGINT,
	"custom_data" TEXT,
	"priority" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cue_point" (
	"int_id" INT,
	"id" VARCHAR,
	"parent_id" VARCHAR,
	"entry_id" VARCHAR,
	"partner_id" INT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"name" VARCHAR,
	"system_name" VARCHAR,
	"text" TEXT,
	"tags" VARCHAR,
	"start_time" INT,
	"end_time" INT,
	"status" INT,
	"type" INT,
	"sub_type" INT,
	"kuser_id" INT,
	"custom_data" TEXT,
	"partner_data" TEXT,
	"partner_sort_value" INT,
	"thumb_offset" INT,
	"depth" INT,
	"children_count" INT,
	"direct_children_count" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "conversion_profile_2" (
	"id" INT,
	"partner_id" INT,
	"name" VARCHAR,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"deleted_at" DATETIME,
	"description" VARCHAR,
	"system_name" VARCHAR,
	"tags" TEXT,
	"status" INT,
	"type" INT,
	"default_entry_id" VARCHAR,
	"crop_left" INT,
	"crop_top" INT,
	"crop_width" INT,
	"crop_height" INT,
	"clip_start" INT,
	"clip_duration" INT,
	"input_tags_map" VARCHAR,
	"creation_mode" SMALLINT,
	"custom_data" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "conversion_profile" (
	"id" INT,
	"partner_id" INT,
	"enabled" TINYINT,
	"name" VARCHAR,
	"profile_type" VARCHAR,
	"commercial_transcoder" TINYINT,
	"width" INT,
	"height" INT,
	"aspect_ratio" VARCHAR,
	"bypass_flv" TINYINT,
	"use_with_bulk" TINYINT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"profile_type_suffix" VARCHAR,
	"bypass_by_extension" VARCHAR,
	"conversion_profile_2_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "conversion_params" (
	"id" INT,
	"partner_id" INT,
	"enabled" TINYINT,
	"name" VARCHAR,
	"profile_type" VARCHAR,
	"profile_type_index" INT,
	"width" INT,
	"height" INT,
	"aspect_ratio" VARCHAR,
	"gop_size" INT,
	"bitrate" INT,
	"qscale" INT,
	"file_suffix" VARCHAR,
	"custom_data" VARCHAR,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "conversion" (
	"id" INT,
	"entry_id" VARCHAR,
	"in_file_name" VARCHAR,
	"in_file_ext" VARCHAR,
	"in_file_size" INT,
	"source" INT,
	"status" INT,
	"conversion_params" VARCHAR,
	"out_file_name" VARCHAR,
	"out_file_size" INT,
	"out_file_name_2" VARCHAR,
	"out_file_size_2" INT,
	"conversion_time" INT,
	"total_process_time" INT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "control_panel_command" (
	"id" INT,
	"created_at" DATETIME,
	"created_by" VARCHAR,
	"updated_at" DATETIME,
	"updated_by" VARCHAR,
	"created_by_id" INT,
	"scheduler_id" INT,
	"scheduler_configured_id" INT,
	"worker_id" INT,
	"worker_configured_id" INT,
	"worker_name" VARCHAR,
	"batch_index" INT,
	"type" SMALLINT,
	"target_type" SMALLINT,
	"status" SMALLINT,
	"cause" VARCHAR,
	"description" VARCHAR,
	"error_description" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "comment" (
	"id" INT,
	"kuser_id" INT,
	"comment_type" INT,
	"subject_id" INT,
	"base_date" DATE,
	"reply_to" INT,
	"comment" VARCHAR,
	"created_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "category_kuser" (
	"id" INT,
	"category_id" INT,
	"kuser_id" INT,
	"puser_id" VARCHAR,
	"partner_id" INT,
	"permission_level" TINYINT,
	"status" TINYINT,
	"inherit_from_category" INT,
	"update_method" INT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"custom_data" TEXT,
	"category_full_ids" TEXT,
	"screen_name" VARCHAR,
	"permission_names" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "category_entry" (
	"id" BIGINT,
	"partner_id" INT,
	"entry_id" VARCHAR,
	"category_id" INT,
	"created_at" DATETIME,
	"custom_data" TEXT,
	"updated_at" DATETIME,
	"category_full_ids" TEXT,
	"status" INT,
	"privacy_context" VARCHAR,
	"creator_kuser_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "category" (
	"id" INT,
	"parent_id" INT,
	"depth" TINYINT,
	"partner_id" INT,
	"name" TEXT,
	"full_name" TEXT,
	"entries_count" INT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"deleted_at" DATETIME,
	"status" INT,
	"direct_entries_count" INT,
	"members_count" INT,
	"pending_members_count" INT,
	"description" TEXT,
	"tags" TEXT,
	"display_in_search" TINYINT,
	"privacy" TINYINT,
	"inheritance_type" TINYINT,
	"user_join_policy" TINYINT,
	"default_permission_level" TINYINT,
	"kuser_id" INT,
	"puser_id" VARCHAR,
	"reference_id" VARCHAR,
	"contribution_policy" TINYINT,
	"custom_data" TEXT,
	"privacy_context" VARCHAR,
	"privacy_contexts" VARCHAR,
	"inherited_parent_id" INT,
	"full_ids" TEXT,
	"direct_sub_categories_count" INT,
	"moderation" TINYINT,
	"pending_entries_count" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "caption_asset_item" (
	"id" BIGINT,
	"created_at" DATETIME,
	"partner_id" INT,
	"entry_id" VARCHAR,
	"caption_asset_id" VARCHAR,
	"content" VARCHAR,
	"start_time" INT,
	"end_time" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "business_process_server" (
	"id" INT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"partner_id" INT,
	"name" VARCHAR,
	"system_name" VARCHAR,
	"description" VARCHAR,
	"status" TINYINT,
	"type" INT,
	"custom_data" TEXT,
	"dc" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "business_process_case" (
	"id" INT,
	"partner_id" INT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"case_id" VARCHAR,
	"process_id" VARCHAR,
	"template_id" INT,
	"server_id" INT,
	"object_id" VARCHAR,
	"object_type" INT,
	"custom_data" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bulk_upload_result" (
	"id" INT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"bulk_upload_job_id" BIGINT,
	"line_index" INT,
	"partner_id" INT,
	"object_id" VARCHAR,
	"object_type" INT,
	"action" INT,
	"entry_status" INT,
	"row_data" VARCHAR,
	"title" VARCHAR,
	"description" VARCHAR,
	"tags" VARCHAR,
	"url" VARCHAR,
	"content_type" VARCHAR,
	"conversion_profile_id" INT,
	"access_control_profile_id" INT,
	"category" VARCHAR,
	"schedule_start_date" DATETIME,
	"schedule_end_date" DATETIME,
	"thumbnail_url" VARCHAR,
	"thumbnail_saved" INT,
	"partner_data" VARCHAR,
	"error_description" TEXT,
	"plugins_data" VARCHAR,
	"custom_data" TEXT,
	"status" INT,
	"object_status" INT,
	"object_error_description" VARCHAR,
	"error_code" INT,
	"error_type" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "blocked_email" (
	"email" VARCHAR,
	 PRIMARY KEY ("email")
);

CREATE TABLE "batch_job_sep" (
	"id" BIGINT,
	"entry_id" VARCHAR,
	"object_type" INT,
	"object_id" VARCHAR,
	"partner_id" INT,
	"parent_job_id" BIGINT,
	"bulk_job_id" BIGINT,
	"root_job_id" BIGINT,
	"dc" INT,
	"job_type" INT,
	"job_sub_type" INT,
	"priority" TINYINT,
	"status" INT,
	"message" VARCHAR,
	"data" TEXT,
	"description" VARCHAR,
	"err_type" INT,
	"err_number" INT,
	"created_at" DATETIME,
	"queue_time" DATETIME,
	"updated_at" DATETIME,
	"finish_time" DATETIME,
	"last_scheduler_id" INT,
	"last_worker_id" INT,
	"execution_status" INT,
	"batch_job_lock_id" BIGINT,
	"history" TEXT,
	"lock_info" TEXT,
	"custom_data" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "batch_job_log" (
	"id" BIGINT,
	"job_id" BIGINT,
	"job_type" SMALLINT,
	"job_sub_type" SMALLINT,
	"data" TEXT,
	"file_size" INT,
	"duplication_key" VARCHAR,
	"status" INT,
	"log_status" INT,
	"abort" TINYINT,
	"check_again_timeout" INT,
	"progress" TINYINT,
	"message" VARCHAR,
	"description" VARCHAR,
	"updates_count" SMALLINT,
	"created_at" DATETIME,
	"created_by" VARCHAR,
	"updated_at" DATETIME,
	"updated_by" VARCHAR,
	"deleted_at" DATETIME,
	"priority" TINYINT,
	"work_group_id" INT,
	"queue_time" DATETIME,
	"finish_time" DATETIME,
	"entry_id" VARCHAR,
	"partner_id" INT,
	"subp_id" INT,
	"scheduler_id" INT,
	"worker_id" INT,
	"batch_index" INT,
	"last_scheduler_id" INT,
	"last_worker_id" INT,
	"last_worker_remote" TINYINT,
	"processor_expiration" DATETIME,
	"execution_attempts" TINYINT,
	"lock_version" INT,
	"twin_job_id" BIGINT,
	"bulk_job_id" BIGINT,
	"root_job_id" BIGINT,
	"parent_job_id" BIGINT,
	"dc" INT,
	"err_type" INT,
	"err_number" INT,
	"on_stress_divert_to" INT,
	"param_1" INT,
	"param_2" VARCHAR,
	"param_3" VARCHAR,
	"param_4" INT,
	"param_5" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "batch_job_lock_suspend" (
	"id" BIGINT,
	"entry_id" VARCHAR,
	"object_type" INT,
	"object_id" VARCHAR,
	"partner_id" INT,
	"dc" INT,
	"job_type" INT,
	"job_sub_type" INT,
	"created_at" DATETIME,
	"priority" TINYINT,
	"urgency" TINYINT,
	"estimated_effort" BIGINT,
	"status" INT,
	"version" INT,
	"execution_attempts" TINYINT,
	"scheduler_id" INT,
	"worker_id" INT,
	"batch_index" INT,
	"expiration" DATETIME,
	"start_at" DATETIME,
	"batch_job_id" BIGINT,
	"custom_data" TEXT,
	"batch_version" INT,
	"root_job_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "batch_job_lock" (
	"id" BIGINT,
	"entry_id" VARCHAR,
	"object_type" INT,
	"object_id" VARCHAR,
	"partner_id" INT,
	"dc" INT,
	"job_type" INT,
	"job_sub_type" INT,
	"created_at" DATETIME,
	"priority" TINYINT,
	"urgency" TINYINT,
	"estimated_effort" BIGINT,
	"status" INT,
	"version" INT,
	"execution_attempts" TINYINT,
	"scheduler_id" INT,
	"worker_id" INT,
	"batch_index" INT,
	"expiration" DATETIME,
	"start_at" DATETIME,
	"batch_job_id" BIGINT,
	"custom_data" TEXT,
	"batch_version" INT,
	"root_job_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "audit_trail_data" (
	"id" INT,
	"audit_trail_id" INT,
	"created_at" DATETIME,
	"object_type" VARCHAR,
	"object_id" VARCHAR,
	"partner_id" INT,
	"action" VARCHAR,
	"descriptor" VARCHAR,
	"old_value" VARCHAR,
	"new_value" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "audit_trail_config" (
	"id" INT,
	"partner_id" INT,
	"object_type" VARCHAR,
	"descriptors" VARCHAR,
	"actions" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "audit_trail" (
	"id" INT,
	"created_at" DATETIME,
	"parsed_at" DATETIME,
	"status" TINYINT,
	"object_type" VARCHAR,
	"object_id" VARCHAR,
	"related_object_id" VARCHAR,
	"related_object_type" VARCHAR,
	"entry_id" VARCHAR,
	"master_partner_id" INT,
	"partner_id" INT,
	"request_id" VARCHAR,
	"kuser_id" INT,
	"action" VARCHAR,
	"data" TEXT,
	"ks" VARCHAR,
	"context" TINYINT,
	"entry_point" VARCHAR,
	"server_name" VARCHAR,
	"ip_address" VARCHAR,
	"user_agent" VARCHAR,
	"client_tag" VARCHAR,
	"description" VARCHAR,
	"error_description" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "app_token" (
	"id" VARCHAR,
	"int_id" INT,
	"partner_id" INT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"deleted_at" DATETIME,
	"status" INT,
	"expiry" INT,
	"session_type" INT,
	"session_user_id" VARCHAR,
	"session_duration" INT,
	"session_privileges" TEXT,
	"token" TEXT,
	"custom_data" TEXT,
	"kuser_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "api_server" (
	"id" INT,
	"hostname" VARCHAR,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"custom_data" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "access_control" (
	"id" INT,
	"partner_id" INT,
	"name" VARCHAR,
	"system_name" VARCHAR,
	"description" VARCHAR,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"deleted_at" DATETIME,
	"site_restrict_type" TINYINT,
	"site_restrict_list" TEXT,
	"country_restrict_type" TINYINT,
	"country_restrict_list" TEXT,
	"ks_restrict_privilege" VARCHAR,
	"prv_restrict_privilege" VARCHAR,
	"prv_restrict_length" INT,
	"kdir_restrict_type" TINYINT,
	"custom_data" TEXT,
	"rules" MEDIUMTEXT,
	 PRIMARY KEY ("id")
);
