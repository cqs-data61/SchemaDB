DROP DATABASE IF EXISTS "schema1025";
CREATE DATABASE "schema1025";
USE "schema1025";
CREATE TABLE "t_vo_acl" (
	"vo_name" VARCHAR,
	"principal" VARCHAR,
	 PRIMARY KEY ("vo_name","principal")
);

CREATE TABLE "t_stage_req" (
	"vo_name" VARCHAR,
	"host" VARCHAR,
	"operation" VARCHAR,
	"concurrent_ops" INT,
	 PRIMARY KEY ("vo_name","host","operation")
);

CREATE TABLE "t_server_config" (
	"retry" INT,
	"max_time_queue" INT,
	"sec_per_mb" INT,
	"global_timeout" INT,
	"vo_name" VARCHAR,
	"no_streaming" VARCHAR,
	"show_user_dn" VARCHAR
);

CREATE TABLE "t_se_old" (
	"se_id_info" INT,
	"name" VARCHAR,
	"endpoint" VARCHAR,
	"se_type" VARCHAR,
	"site" VARCHAR,
	"state" VARCHAR,
	"version" VARCHAR,
	"host" VARCHAR,
	"se_transfer_type" VARCHAR,
	"se_transfer_protocol" VARCHAR,
	"se_control_protocol" VARCHAR,
	"gocdb_id" VARCHAR,
	 PRIMARY KEY ("name")
);

CREATE TABLE "t_se" (
	"storage" VARCHAR,
	"site" VARCHAR,
	"metadata" TEXT,
	"ipv6" TINYINT,
	"udt" TINYINT,
	"debug_level" INT,
	"inbound_max_active" INT,
	"inbound_max_throughput" FLOAT,
	"outbound_max_active" INT,
	"outbound_max_throughput" FLOAT,
	 PRIMARY KEY ("storage")
);

CREATE TABLE "t_schema_vers" (
	"major" INT,
	"minor" INT,
	"patch" INT,
	"message" TEXT
);

CREATE TABLE "t_optimizer_evolution" (
	"datetime" TIMESTAMP,
	"source_se" VARCHAR,
	"dest_se" VARCHAR,
	"active" INT,
	"throughput" FLOAT,
	"success" FLOAT,
	"rationale" TEXT,
	"diff" INT,
	"actual_active" INT,
	"queue_size" INT,
	"ema" DOUBLE,
	"filesize_avg" DOUBLE,
	"filesize_stddev" DOUBLE
);

CREATE TABLE "t_optimizer" (
	"source_se" VARCHAR,
	"dest_se" VARCHAR,
	"datetime" TIMESTAMP,
	"ema" DOUBLE,
	"active" INT,
	"nostreams" INT,
	 PRIMARY KEY ("source_se","dest_se")
);

CREATE TABLE "t_optimize_mode" (
	"mode_opt" INT
);

CREATE TABLE "t_optimize_active" (
	"source_se" VARCHAR,
	"dest_se" VARCHAR,
	"active" INT,
	"datetime" TIMESTAMP,
	"ema" DOUBLE,
	"fixed" VARCHAR,
	"min_active" INT,
	"max_active" INT,
	 PRIMARY KEY ("source_se","dest_se")
);

CREATE TABLE "t_optimize_streams" (
	"source_se" VARCHAR,
	"dest_se" VARCHAR,
	"nostreams" INT,
	"datetime" TIMESTAMP,
	"throughput" FLOAT,
	"tested" INT,
	 PRIMARY KEY ("source_se","dest_se","nostreams"),
	 CONSTRAINT "t_optimize_streams_fk" FOREIGN KEY ("source_se","dest_se") REFERENCES "t_optimize_active" ("source_se","dest_se")
);

CREATE TABLE "t_optimize" (
	"auto_number" INT,
	"source_se" VARCHAR,
	"dest_se" VARCHAR,
	"nostreams" INT,
	"active" INT,
	"throughput" FLOAT,
	"datetime" TIMESTAMP,
	"udt" VARCHAR,
	"ipv6" VARCHAR,
	 PRIMARY KEY ("auto_number")
);

CREATE TABLE "t_oauth2_tokens" (
	"client_id" VARCHAR,
	"scope" VARCHAR,
	"access_token" VARCHAR,
	"token_type" VARCHAR,
	"expires" DATETIME,
	"refresh_token" VARCHAR,
	"dlg_id" VARCHAR,
	 PRIMARY KEY ("client_id")
);

CREATE TABLE "t_oauth2_codes" (
	"client_id" VARCHAR,
	"code" VARCHAR,
	"scope" VARCHAR,
	"dlg_id" VARCHAR,
	 PRIMARY KEY ("code")
);

CREATE TABLE "t_oauth2_apps" (
	"client_id" VARCHAR,
	"client_secret" VARCHAR,
	"owner" VARCHAR,
	"name" VARCHAR,
	"description" VARCHAR,
	"website" VARCHAR,
	"redirect_to" VARCHAR,
	 PRIMARY KEY ("client_id")
);

CREATE TABLE "t_link_config_old" (
	"source" VARCHAR,
	"destination" VARCHAR,
	"state" VARCHAR,
	"symbolicname" VARCHAR,
	"nostreams" INT,
	"tcp_buffer_size" INT,
	"urlcopy_tx_to" INT,
	"auto_tuning" VARCHAR,
	 PRIMARY KEY ("source","destination")
);

CREATE TABLE "t_link_config" (
	"source_se" VARCHAR,
	"dest_se" VARCHAR,
	"symbolic_name" VARCHAR,
	"min_active" INT,
	"max_active" INT,
	"optimizer_mode" INT,
	"tcp_buffer_size" INT,
	"nostreams" INT,
	"no_delegation" VARCHAR,
	 PRIMARY KEY ("source_se","dest_se")
);

CREATE TABLE "t_share_config" (
	"source" VARCHAR,
	"destination" VARCHAR,
	"vo" VARCHAR,
	"active" INT,
	 PRIMARY KEY ("source","destination","vo"),
	 CONSTRAINT "t_share_config_fk" FOREIGN KEY ("source","destination") REFERENCES "t_link_config" ("source_se","dest_se")
);

CREATE TABLE "t_job_backup" (
	"job_id" CHAR,
	"job_state" ENUM,
	"job_type" CHAR,
	"cancel_job" CHAR,
	"source_se" VARCHAR,
	"dest_se" VARCHAR,
	"user_dn" VARCHAR,
	"cred_id" CHAR,
	"vo_name" VARCHAR,
	"reason" VARCHAR,
	"submit_time" TIMESTAMP,
	"priority" INT,
	"submit_host" VARCHAR,
	"max_time_in_queue" INT,
	"space_token" VARCHAR,
	"internal_job_params" VARCHAR,
	"overwrite_flag" CHAR,
	"job_finished" TIMESTAMP,
	"source_space_token" VARCHAR,
	"copy_pin_lifetime" INT,
	"checksum_method" CHAR,
	"bring_online" INT,
	"retry" INT,
	"retry_delay" INT,
	"target_qos" VARCHAR,
	"job_metadata" TEXT,
	"archive_timeout" INT
);

CREATE TABLE "t_job" (
	"job_id" CHAR,
	"job_state" ENUM,
	"job_type" CHAR,
	"cancel_job" CHAR,
	"source_se" VARCHAR,
	"dest_se" VARCHAR,
	"user_dn" VARCHAR,
	"cred_id" CHAR,
	"vo_name" VARCHAR,
	"reason" VARCHAR,
	"submit_time" TIMESTAMP,
	"priority" INT,
	"submit_host" VARCHAR,
	"max_time_in_queue" INT,
	"space_token" VARCHAR,
	"internal_job_params" VARCHAR,
	"overwrite_flag" CHAR,
	"job_finished" TIMESTAMP,
	"source_space_token" VARCHAR,
	"copy_pin_lifetime" INT,
	"checksum_method" CHAR,
	"bring_online" INT,
	"retry" INT,
	"retry_delay" INT,
	"target_qos" VARCHAR,
	"job_metadata" TEXT,
	"archive_timeout" INT,
	 PRIMARY KEY ("job_id")
);

CREATE TABLE "t_hosts" (
	"hostname" VARCHAR,
	"beat" TIMESTAMP,
	"drain" INT,
	"service_name" VARCHAR,
	 PRIMARY KEY ("hostname","service_name")
);

CREATE TABLE "t_group_members" (
	"groupname" VARCHAR,
	"member" VARCHAR,
	 PRIMARY KEY ("groupname","member")
);

CREATE TABLE "t_file_backup" (
	"log_file_debug" TINYINT,
	"file_id" BIGINT,
	"file_index" INT,
	"job_id" CHAR,
	"file_state" ENUM,
	"transfer_host" VARCHAR,
	"source_surl" VARCHAR,
	"dest_surl" VARCHAR,
	"source_se" VARCHAR,
	"dest_se" VARCHAR,
	"staging_host" VARCHAR,
	"reason" VARCHAR,
	"current_failures" INT,
	"filesize" BIGINT,
	"checksum" VARCHAR,
	"finish_time" TIMESTAMP,
	"start_time" TIMESTAMP,
	"internal_file_params" VARCHAR,
	"pid" INT,
	"tx_duration" DOUBLE,
	"throughput" FLOAT,
	"retry" INT,
	"user_filesize" BIGINT,
	"file_metadata" TEXT,
	"selection_strategy" CHAR,
	"staging_start" TIMESTAMP,
	"staging_finished" TIMESTAMP,
	"bringonline_token" VARCHAR,
	"retry_timestamp" TIMESTAMP,
	"log_file" VARCHAR,
	"t_log_file_debug" INT,
	"hashed_id" INT,
	"vo_name" VARCHAR,
	"activity" VARCHAR,
	"transferred" BIGINT,
	"priority" INT,
	"dest_surl_uuid" CHAR,
	"archive_start_time" TIMESTAMP,
	"archive_finish_time" TIMESTAMP
);

CREATE TABLE "t_file" (
	"log_file_debug" TINYINT,
	"file_id" BIGINT,
	"file_index" INT,
	"job_id" CHAR,
	"file_state" ENUM,
	"transfer_host" VARCHAR,
	"source_surl" VARCHAR,
	"dest_surl" VARCHAR,
	"source_se" VARCHAR,
	"dest_se" VARCHAR,
	"staging_host" VARCHAR,
	"reason" VARCHAR,
	"current_failures" INT,
	"filesize" BIGINT,
	"checksum" VARCHAR,
	"finish_time" TIMESTAMP,
	"start_time" TIMESTAMP,
	"internal_file_params" VARCHAR,
	"pid" INT,
	"tx_duration" DOUBLE,
	"throughput" FLOAT,
	"retry" INT,
	"user_filesize" BIGINT,
	"file_metadata" TEXT,
	"selection_strategy" CHAR,
	"staging_start" TIMESTAMP,
	"staging_finished" TIMESTAMP,
	"bringonline_token" VARCHAR,
	"retry_timestamp" TIMESTAMP,
	"log_file" VARCHAR,
	"t_log_file_debug" INT,
	"hashed_id" INT,
	"vo_name" VARCHAR,
	"activity" VARCHAR,
	"transferred" BIGINT,
	"priority" INT,
	"dest_surl_uuid" CHAR,
	"archive_start_time" TIMESTAMP,
	"archive_finish_time" TIMESTAMP,
	 PRIMARY KEY ("file_id")
);

CREATE TABLE "t_file_retry_errors" (
	"file_id" BIGINT,
	"attempt" INT,
	"datetime" TIMESTAMP,
	"reason" VARCHAR,
	 PRIMARY KEY ("file_id","attempt"),
	 CONSTRAINT "t_file_retry_errors_ibfk_1" FOREIGN KEY ("file_id") REFERENCES "t_file" ("file_id")
);

CREATE TABLE "t_dm_backup" (
	"file_id" BIGINT,
	"job_id" CHAR,
	"file_state" VARCHAR,
	"dmhost" VARCHAR,
	"source_surl" VARCHAR,
	"dest_surl" VARCHAR,
	"source_se" VARCHAR,
	"dest_se" VARCHAR,
	"error_scope" VARCHAR,
	"error_phase" VARCHAR,
	"reason" VARCHAR,
	"checksum" VARCHAR,
	"finish_time" TIMESTAMP,
	"start_time" TIMESTAMP,
	"internal_file_params" VARCHAR,
	"job_finished" TIMESTAMP,
	"pid" INT,
	"tx_duration" DOUBLE,
	"retry" INT,
	"user_filesize" DOUBLE,
	"file_metadata" VARCHAR,
	"activity" VARCHAR,
	"selection_strategy" VARCHAR,
	"dm_start" TIMESTAMP,
	"dm_finished" TIMESTAMP,
	"dm_token" VARCHAR,
	"retry_timestamp" TIMESTAMP,
	"wait_timestamp" TIMESTAMP,
	"wait_timeout" INT,
	"hashed_id" INT,
	"vo_name" VARCHAR
);

CREATE TABLE "t_dm" (
	"file_id" BIGINT,
	"job_id" CHAR,
	"file_state" VARCHAR,
	"dmhost" VARCHAR,
	"source_surl" VARCHAR,
	"dest_surl" VARCHAR,
	"source_se" VARCHAR,
	"dest_se" VARCHAR,
	"error_scope" VARCHAR,
	"error_phase" VARCHAR,
	"reason" VARCHAR,
	"checksum" VARCHAR,
	"finish_time" TIMESTAMP,
	"start_time" TIMESTAMP,
	"internal_file_params" VARCHAR,
	"job_finished" TIMESTAMP,
	"pid" INT,
	"tx_duration" DOUBLE,
	"retry" INT,
	"user_filesize" DOUBLE,
	"file_metadata" VARCHAR,
	"activity" VARCHAR,
	"selection_strategy" VARCHAR,
	"dm_start" TIMESTAMP,
	"dm_finished" TIMESTAMP,
	"dm_token" VARCHAR,
	"retry_timestamp" TIMESTAMP,
	"wait_timestamp" TIMESTAMP,
	"wait_timeout" INT,
	"hashed_id" INT,
	"vo_name" VARCHAR,
	 PRIMARY KEY ("file_id")
);

CREATE TABLE "t_debug" (
	"source_se" VARCHAR,
	"dest_se" VARCHAR,
	"debug" VARCHAR,
	"debug_level" INT
);

CREATE TABLE "t_credential_cache" (
	"dlg_id" CHAR,
	"dn" VARCHAR,
	"cert_request" LONGTEXT,
	"priv_key" LONGTEXT,
	"voms_attrs" LONGTEXT,
	 PRIMARY KEY ("dlg_id","dn")
);

CREATE TABLE "t_credential" (
	"dlg_id" CHAR,
	"dn" VARCHAR,
	"proxy" LONGTEXT,
	"voms_attrs" LONGTEXT,
	"termination_time" TIMESTAMP,
	 PRIMARY KEY ("dlg_id","dn")
);

CREATE TABLE "t_config_audit" (
	"datetime" TIMESTAMP,
	"dn" VARCHAR,
	"config" VARCHAR,
	"action" VARCHAR
);

CREATE TABLE "t_cloudstorage" (
	"cloudstorage_name" VARCHAR,
	"app_key" VARCHAR,
	"app_secret" VARCHAR,
	"service_api_url" VARCHAR,
	 PRIMARY KEY ("cloudstorage_name")
);

CREATE TABLE "t_cloudstorageuser" (
	"user_dn" VARCHAR,
	"vo_name" VARCHAR,
	"cloudstorage_name" VARCHAR,
	"access_token" VARCHAR,
	"access_token_secret" VARCHAR,
	"request_token" VARCHAR,
	"request_token_secret" VARCHAR,
	 PRIMARY KEY ("user_dn","vo_name","cloudstorage_name"),
	 CONSTRAINT "t_cloudStorageUser_ibfk_1" FOREIGN KEY ("cloudstorage_name") REFERENCES "t_cloudstorage" ("cloudstorage_name")
);

CREATE TABLE "t_bad_ses" (
	"se" VARCHAR,
	"message" VARCHAR,
	"addition_time" TIMESTAMP,
	"admin_dn" VARCHAR,
	"vo" VARCHAR,
	"status" VARCHAR,
	"wait_timeout" INT,
	 PRIMARY KEY ("se")
);

CREATE TABLE "t_bad_dns" (
	"dn" VARCHAR,
	"message" VARCHAR,
	"addition_time" TIMESTAMP,
	"admin_dn" VARCHAR,
	"status" VARCHAR,
	"wait_timeout" INT,
	 PRIMARY KEY ("dn")
);

CREATE TABLE "t_authz_dn" (
	"dn" VARCHAR,
	"operation" VARCHAR,
	 PRIMARY KEY ("dn","operation")
);

CREATE TABLE "t_oauth2_providers" (
	"provider_url" VARCHAR,
	"provider_jwk" VARCHAR,
	 PRIMARY KEY ("provider_url")
);

CREATE TABLE "t_activity_share_config" (
	"vo" VARCHAR,
	"activity_share" VARCHAR,
	"active" VARCHAR,
	 PRIMARY KEY ("vo")
);
