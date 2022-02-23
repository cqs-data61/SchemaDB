DROP DATABASE IF EXISTS "schema1478";
CREATE DATABASE "schema1478";
USE "schema1478";
CREATE TABLE "notify_template" (
	"id" INT,
	"code" VARCHAR,
	"name" VARCHAR,
	"channel" VARCHAR,
	"title" TEXT,
	"content" MEDIUMTEXT,
	"title_en" TEXT,
	"content_en" MEDIUMTEXT,
	"creator" VARCHAR,
	"last_modify_user" VARCHAR,
	"create_time" BIGINT,
	"last_modify_time" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "white_ip_app_rel" (
	"record_id" BIGINT,
	"app_id" BIGINT,
	"creator" VARCHAR,
	"create_time" BIGINT,
	 PRIMARY KEY ("record_id","app_id")
);

CREATE TABLE "analysis_task_static_instance" (
	"id" BIGINT,
	"app_id" BIGINT,
	"task_id" BIGINT,
	"status" INT,
	"result_data" MEDIUMTEXT,
	"result_data_en" MEDIUMTEXT,
	"priority" INT,
	"active" BIT,
	"creator" VARCHAR,
	"last_modify_user" VARCHAR,
	"create_time" BIGINT,
	"last_modify_time" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "analysis_task_instance" (
	"id" BIGINT,
	"app_id" BIGINT,
	"task_id" BIGINT,
	"status" INT,
	"result_data" MEDIUMTEXT,
	"priority" INT,
	"active" BIT,
	"creator" VARCHAR,
	"last_modify_user" VARCHAR,
	"create_time" BIGINT,
	"last_modify_time" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "analysis_task" (
	"id" BIGINT,
	"code" VARCHAR,
	"app_ids" TEXT,
	"result_description_template" TEXT,
	"result_description_template_en" TEXT,
	"result_item_template" TEXT,
	"result_item_template_en" TEXT,
	"priority" INT,
	"active" BIT,
	"period_seconds" BIGINT,
	"creator" VARCHAR,
	"last_modify_user" VARCHAR,
	"create_time" BIGINT,
	"last_modify_time" BIGINT,
	"description" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "index_greeting" (
	"id" BIGINT,
	"start_seconds" INT,
	"end_seconds" INT,
	"content" TEXT,
	"content_en" TEXT,
	"priority" INT,
	"active" BIT,
	"description" TEXT,
	"creator" VARCHAR,
	"last_modify_user" VARCHAR,
	"create_time" BIGINT,
	"last_modify_time" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "dangerous_rule" (
	"id" BIGINT,
	"expression" VARCHAR,
	"script_type" TINYINT,
	"description" TEXT,
	"priority" INT,
	"creator" VARCHAR,
	"last_modify_user" VARCHAR,
	"create_time" BIGINT,
	"last_modify_time" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "global_setting" (
	"key" VARCHAR,
	"value" TEXT,
	"decription" VARCHAR
);

CREATE TABLE "notify_trigger_policy" (
	"id" BIGINT,
	"app_id" BIGINT,
	"resource_id" VARCHAR,
	"resource_type" TINYINT,
	"trigger_user" VARCHAR,
	"trigger_type" TINYINT,
	"execute_status" TINYINT,
	"creator" VARCHAR,
	"row_create_time" DATETIME,
	"row_update_time" DATETIME,
	"last_modify_user" VARCHAR,
	"create_time" BIGINT,
	"last_modify_time" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "notify_role_target_channel" (
	"id" BIGINT,
	"role_target_id" BIGINT,
	"channel" VARCHAR,
	"creator" VARCHAR,
	"row_create_time" DATETIME,
	"row_update_time" DATETIME,
	"last_modify_user" VARCHAR,
	"create_time" BIGINT,
	"last_modify_time" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "notify_policy_role_target" (
	"id" BIGINT,
	"policy_id" BIGINT,
	"role" VARCHAR,
	"enable" BIT,
	"extra_observers" TEXT,
	"creator" VARCHAR,
	"row_update_time" DATETIME,
	"last_modify_user" VARCHAR,
	"create_time" BIGINT,
	"last_modify_time" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "notify_config_status" (
	"app_id" BIGINT,
	"username" VARCHAR,
	"last_modify_time" BIGINT,
	 PRIMARY KEY ("app_id","username")
);

CREATE TABLE "notify_black_user_info" (
	"id" BIGINT,
	"username" VARCHAR,
	"creator" VARCHAR,
	"last_modify_time" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "esb_user_info" (
	"id" BIGINT,
	"username" VARCHAR,
	"logo" TEXT,
	"display_name" VARCHAR,
	"row_update_time" TIMESTAMP,
	"last_modify_time" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "available_esb_channel" (
	"type" VARCHAR,
	"enable" BIT,
	"creator" VARCHAR,
	"last_modify_time" TIMESTAMP,
	 PRIMARY KEY ("type")
);

CREATE TABLE "white_ip_record" (
	"id" BIGINT,
	"remark" TEXT,
	"row_create_time" DATETIME,
	"row_update_time" DATETIME,
	"creator" VARCHAR,
	"last_modify_user" VARCHAR,
	"create_time" BIGINT,
	"last_modify_time" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "white_ip_action_scope" (
	"id" BIGINT,
	"record_id" BIGINT,
	"action_scope_id" BIGINT,
	"row_create_time" DATETIME,
	"row_update_time" DATETIME,
	"creator" VARCHAR,
	"last_modify_user" VARCHAR,
	"create_time" BIGINT,
	"last_modify_time" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "white_ip_ip" (
	"id" BIGINT,
	"record_id" BIGINT,
	"ip" VARCHAR,
	"cloud_area_id" BIGINT,
	"row_create_time" DATETIME,
	"row_update_time" DATETIME,
	"creator" VARCHAR,
	"last_modify_user" VARCHAR,
	"create_time" BIGINT,
	"last_modify_time" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "action_scope" (
	"id" BIGINT,
	"code" VARCHAR,
	"name" VARCHAR,
	"description" TEXT,
	"row_create_time" DATETIME,
	"row_update_time" DATETIME,
	"creator" VARCHAR,
	"last_modify_user" VARCHAR,
	"create_time" BIGINT,
	"last_modify_time" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "account" (
	"id" BIGINT,
	"row_create_time" DATETIME,
	"row_update_time" DATETIME,
	"account" VARCHAR,
	"alias" VARCHAR,
	"category" TINYINT,
	"type" TINYINT,
	"app_id" BIGINT,
	"grantee" LONGTEXT,
	"remark" VARCHAR,
	"os" VARCHAR,
	"password" VARCHAR,
	"db_password" VARCHAR,
	"db_port" INT,
	"db_system_account_id" BIGINT,
	"creator" VARCHAR,
	"create_time" BIGINT,
	"is_deleted" TINYINT,
	"last_modify_user" VARCHAR,
	"last_modify_time" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "application" (
	"app_id" BIGINT,
	"row_create_time" DATETIME,
	"row_update_time" DATETIME,
	"app_name" VARCHAR,
	"maintainers" VARCHAR,
	"bk_supplier_account" VARCHAR,
	"app_type" TINYINT,
	"sub_app_ids" TEXT,
	"timezone" VARCHAR,
	"bk_operate_dept_id" BIGINT,
	"language" VARCHAR,
	 PRIMARY KEY ("app_id")
);

CREATE TABLE "host" (
	"host_id" BIGINT,
	"row_create_time" DATETIME,
	"row_update_time" DATETIME,
	"app_id" BIGINT,
	"ip" VARCHAR,
	"ip_desc" VARCHAR,
	"set_ids" VARCHAR,
	"module_ids" VARCHAR,
	"cloud_area_id" BIGINT,
	"display_ip" VARCHAR,
	"os" VARCHAR,
	"module_type" VARCHAR,
	"is_agent_alive" TINYINT,
	 PRIMARY KEY ("host_id")
);

CREATE TABLE "task_template_variable" (
	"id" BIGINT,
	"row_create_time" DATETIME,
	"row_update_time" DATETIME,
	"template_id" BIGINT,
	"name" VARCHAR,
	"type" TINYINT,
	"default_value" LONGTEXT,
	"description" VARCHAR,
	"is_changeable" TINYINT,
	"is_required" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "task_template_step_script" (
	"id" BIGINT,
	"row_create_time" DATETIME,
	"row_update_time" DATETIME,
	"template_id" BIGINT,
	"step_id" BIGINT,
	"script_type" TINYINT,
	"script_id" CHAR,
	"script_version_id" BIGINT,
	"content" LONGTEXT,
	"language" TINYINT,
	"script_param" VARCHAR,
	"script_timeout" BIGINT,
	"execute_account" BIGINT,
	"destination_host_list" LONGTEXT,
	"is_secure_param" TINYINT,
	"is_latest_version" TINYINT,
	"ignore_error" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "task_template_step_file_list" (
	"id" BIGINT,
	"row_create_time" DATETIME,
	"row_update_time" DATETIME,
	"step_id" BIGINT,
	"file_type" TINYINT,
	"file_location" VARCHAR,
	"file_size" BIGINT,
	"file_hash" CHAR,
	"host" LONGTEXT,
	"host_account" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "task_template_step_file" (
	"id" BIGINT,
	"row_create_time" DATETIME,
	"row_update_time" DATETIME,
	"step_id" BIGINT,
	"destination_file_location" VARCHAR,
	"execute_account" BIGINT,
	"destination_host_list" LONGTEXT,
	"timeout" BIGINT,
	"origin_speed_limit" BIGINT,
	"target_speed_limit" BIGINT,
	"ignore_error" TINYINT,
	"duplicate_handler" TINYINT,
	"not_exist_path_handler" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "task_template_step_approval" (
	"id" BIGINT,
	"row_create_time" DATETIME,
	"row_update_time" DATETIME,
	"step_id" BIGINT,
	"approval_type" TINYINT,
	"approval_user" VARCHAR,
	"approval_message" VARCHAR,
	"notify_channel" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "task_template_step" (
	"id" BIGINT,
	"row_create_time" DATETIME,
	"row_update_time" DATETIME,
	"template_id" BIGINT,
	"type" TINYINT,
	"name" VARCHAR,
	"previous_step_id" BIGINT,
	"next_step_id" BIGINT,
	"is_deleted" TINYINT,
	"script_step_id" BIGINT,
	"file_step_id" BIGINT,
	"approval_step_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "task_template" (
	"id" BIGINT,
	"row_create_time" DATETIME,
	"row_update_time" DATETIME,
	"app_id" BIGINT,
	"name" VARCHAR,
	"description" VARCHAR,
	"creator" VARCHAR,
	"status" TINYINT,
	"is_deleted" TINYINT,
	"create_time" BIGINT,
	"last_modify_user" VARCHAR,
	"last_modify_time" BIGINT,
	"tags" VARCHAR,
	"first_step_id" BIGINT,
	"last_step_id" BIGINT,
	"version" CHAR,
	"is_latest_version" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "task_plan_variable" (
	"id" BIGINT,
	"row_create_time" DATETIME,
	"row_update_time" DATETIME,
	"plan_id" BIGINT,
	"template_variable_id" BIGINT,
	"name" VARCHAR,
	"type" TINYINT,
	"default_value" LONGTEXT,
	"description" VARCHAR,
	"is_changeable" TINYINT,
	"is_required" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "task_plan_step_script" (
	"id" BIGINT,
	"row_create_time" DATETIME,
	"row_update_time" DATETIME,
	"plan_id" BIGINT,
	"step_id" BIGINT,
	"script_type" TINYINT,
	"script_id" CHAR,
	"script_version_id" BIGINT,
	"content" LONGTEXT,
	"language" TINYINT,
	"script_param" VARCHAR,
	"script_timeout" BIGINT,
	"execute_account" BIGINT,
	"destination_host_list" LONGTEXT,
	"is_secure_param" TINYINT,
	"is_latest_version" TINYINT,
	"ignore_error" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "task_plan_step_file_list" (
	"id" BIGINT,
	"row_create_time" DATETIME,
	"row_update_time" DATETIME,
	"step_id" BIGINT,
	"file_type" TINYINT,
	"file_location" VARCHAR,
	"file_size" BIGINT,
	"file_hash" CHAR,
	"host" LONGTEXT,
	"host_account" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "task_plan_step_file" (
	"id" BIGINT,
	"row_create_time" DATETIME,
	"row_update_time" DATETIME,
	"step_id" BIGINT,
	"destination_file_location" VARCHAR,
	"execute_account" BIGINT,
	"destination_host_list" LONGTEXT,
	"timeout" BIGINT,
	"origin_speed_limit" BIGINT,
	"target_speed_limit" BIGINT,
	"ignore_error" TINYINT,
	"duplicate_handler" TINYINT,
	"not_exist_path_handler" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "task_plan_step_approval" (
	"id" BIGINT,
	"row_create_time" DATETIME,
	"row_update_time" DATETIME,
	"step_id" BIGINT,
	"approval_type" TINYINT,
	"approval_user" VARCHAR,
	"approval_message" VARCHAR,
	"notify_channel" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "task_plan_step" (
	"id" BIGINT,
	"row_create_time" DATETIME,
	"row_update_time" DATETIME,
	"plan_id" BIGINT,
	"type" TINYINT,
	"name" VARCHAR,
	"previous_step_id" BIGINT,
	"next_step_id" BIGINT,
	"is_enable" TINYINT,
	"is_deleted" TINYINT,
	"script_step_id" BIGINT,
	"file_step_id" BIGINT,
	"approval_step_id" BIGINT,
	"template_step_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "task_plan" (
	"id" BIGINT,
	"row_create_time" DATETIME,
	"row_update_time" DATETIME,
	"app_id" BIGINT,
	"template_id" BIGINT,
	"name" VARCHAR,
	"creator" VARCHAR,
	"type" TINYINT,
	"is_deleted" TINYINT,
	"create_time" BIGINT,
	"last_modify_user" VARCHAR,
	"last_modify_time" BIGINT,
	"first_step_id" BIGINT,
	"last_step_id" BIGINT,
	"version" CHAR,
	"is_latest_version" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "task_favorite_template" (
	"id" BIGINT,
	"row_create_time" DATETIME,
	"row_update_time" DATETIME,
	"app_id" BIGINT,
	"username" VARCHAR,
	"template_id" BIGINT,
	"is_deleted" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "task_favorite_plan" (
	"id" BIGINT,
	"row_create_time" DATETIME,
	"row_update_time" DATETIME,
	"app_id" BIGINT,
	"username" VARCHAR,
	"plan_id" BIGINT,
	"is_deleted" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "tag" (
	"id" BIGINT,
	"row_create_time" DATETIME,
	"row_update_time" DATETIME,
	"app_id" BIGINT,
	"name" VARCHAR,
	"creator" VARCHAR,
	"last_modify_user" VARCHAR,
	"is_deleted" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "script_version" (
	"id" BIGINT,
	"row_create_time" DATETIME,
	"row_update_time" DATETIME,
	"script_id" VARCHAR,
	"content" LONGTEXT,
	"creator" VARCHAR,
	"create_time" BIGINT,
	"last_modify_user" VARCHAR,
	"last_modify_time" BIGINT,
	"version" VARCHAR,
	"is_deleted" TINYINT,
	"status" TINYINT,
	"version_desc" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "script" (
	"id" VARCHAR,
	"row_create_time" DATETIME,
	"row_update_time" DATETIME,
	"name" VARCHAR,
	"app_id" BIGINT,
	"type" TINYINT,
	"is_public" TINYINT,
	"creator" VARCHAR,
	"create_time" BIGINT,
	"last_modify_user" VARCHAR,
	"last_modify_time" BIGINT,
	"category" TINYINT,
	"description" VARCHAR,
	"is_deleted" TINYINT,
	"tags" VARCHAR,
	 PRIMARY KEY ("id")
);
