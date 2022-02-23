DROP DATABASE IF EXISTS "schema2163";
CREATE DATABASE "schema2163";
USE "schema2163";
CREATE TABLE "webhooks" (
	"uuid" VARCHAR,
	"project_uuid" VARCHAR,
	"name" VARCHAR,
	"url" VARCHAR,
	"secret" VARCHAR,
	"created_at" BIGINT,
	"updated_at" BIGINT,
	 PRIMARY KEY ("uuid")
);

CREATE TABLE "webhook_deliveries" (
	"uuid" VARCHAR,
	"webhook_uuid" VARCHAR,
	"component_uuid" VARCHAR,
	"ce_task_uuid" VARCHAR,
	"analysis_uuid" VARCHAR,
	"name" VARCHAR,
	"url" VARCHAR,
	"success" BOOLEAN,
	"http_status" INTEGER,
	"duration_ms" BIGINT,
	"payload" CLOB,
	"error_stacktrace" CLOB,
	"created_at" BIGINT,
	 PRIMARY KEY ("uuid")
);

CREATE TABLE "users" (
	"uuid" VARCHAR,
	"login" VARCHAR,
	"name" VARCHAR,
	"email" VARCHAR,
	"crypted_password" VARCHAR,
	"salt" VARCHAR,
	"hash_method" VARCHAR,
	"active" BOOLEAN,
	"scm_accounts" VARCHAR,
	"external_login" VARCHAR,
	"external_identity_provider" VARCHAR,
	"external_id" VARCHAR,
	"is_root" BOOLEAN,
	"user_local" BOOLEAN,
	"onboarded" BOOLEAN,
	"homepage_type" VARCHAR,
	"homepage_parameter" VARCHAR,
	"last_connection_date" BIGINT,
	"created_at" BIGINT,
	"updated_at" BIGINT,
	"reset_password" BOOLEAN,
	"last_sonarlint_connection" BIGINT,
	 PRIMARY KEY ("uuid")
);

CREATE TABLE "user_tokens" (
	"user_uuid" VARCHAR,
	"name" VARCHAR,
	"token_hash" VARCHAR,
	"last_connection_date" BIGINT,
	"created_at" BIGINT,
	"uuid" VARCHAR,
	 PRIMARY KEY ("uuid")
);

CREATE TABLE "user_roles" (
	"role" VARCHAR,
	"component_uuid" VARCHAR,
	"uuid" VARCHAR,
	"user_uuid" VARCHAR,
	 PRIMARY KEY ("uuid")
);

CREATE TABLE "user_properties" (
	"uuid" VARCHAR,
	"user_uuid" VARCHAR,
	"kee" VARCHAR,
	"text_value" VARCHAR,
	"created_at" BIGINT,
	"updated_at" BIGINT,
	 PRIMARY KEY ("uuid")
);

CREATE TABLE "user_dismissed_messages" (
	"uuid" VARCHAR,
	"user_uuid" VARCHAR,
	"project_uuid" VARCHAR,
	"message_type" VARCHAR,
	"created_at" BIGINT,
	 PRIMARY KEY ("uuid")
);

CREATE TABLE "snapshots" (
	"uuid" VARCHAR,
	"component_uuid" VARCHAR,
	"status" VARCHAR,
	"islast" BOOLEAN,
	"version" VARCHAR,
	"purge_status" INTEGER,
	"build_string" VARCHAR,
	"revision" VARCHAR,
	"build_date" BIGINT,
	"period1_mode" VARCHAR,
	"period1_param" VARCHAR,
	"period1_date" BIGINT,
	"created_at" BIGINT,
	 PRIMARY KEY ("uuid")
);

CREATE TABLE "session_tokens" (
	"uuid" VARCHAR,
	"user_uuid" VARCHAR,
	"expiration_date" BIGINT,
	"created_at" BIGINT,
	"updated_at" BIGINT,
	 PRIMARY KEY ("uuid")
);

CREATE TABLE "saml_message_ids" (
	"uuid" VARCHAR,
	"message_id" VARCHAR,
	"expiration_date" BIGINT,
	"created_at" BIGINT,
	 PRIMARY KEY ("uuid")
);

CREATE TABLE "rules_profiles" (
	"name" VARCHAR,
	"language" VARCHAR,
	"is_built_in" BOOLEAN,
	"rules_updated_at" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"uuid" VARCHAR,
	 PRIMARY KEY ("uuid")
);

CREATE TABLE "rules_parameters" (
	"name" VARCHAR,
	"description" VARCHAR,
	"param_type" VARCHAR,
	"default_value" VARCHAR,
	"uuid" VARCHAR,
	"rule_uuid" VARCHAR,
	 PRIMARY KEY ("uuid")
);

CREATE TABLE "rules_metadata" (
	"note_data" CLOB,
	"note_user_uuid" VARCHAR,
	"note_created_at" BIGINT,
	"note_updated_at" BIGINT,
	"remediation_function" VARCHAR,
	"remediation_gap_mult" VARCHAR,
	"remediation_base_effort" VARCHAR,
	"tags" VARCHAR,
	"ad_hoc_name" VARCHAR,
	"ad_hoc_description" CLOB,
	"ad_hoc_severity" VARCHAR,
	"ad_hoc_type" TINYINT,
	"created_at" BIGINT,
	"updated_at" BIGINT,
	"rule_uuid" VARCHAR,
	 PRIMARY KEY ("rule_uuid")
);

CREATE TABLE "rules" (
	"name" VARCHAR,
	"plugin_rule_key" VARCHAR,
	"plugin_key" VARCHAR,
	"plugin_config_key" VARCHAR,
	"plugin_name" VARCHAR,
	"scope" VARCHAR,
	"description" CLOB,
	"priority" INTEGER,
	"status" VARCHAR,
	"language" VARCHAR,
	"def_remediation_function" VARCHAR,
	"def_remediation_gap_mult" VARCHAR,
	"def_remediation_base_effort" VARCHAR,
	"gap_description" VARCHAR,
	"system_tags" VARCHAR,
	"is_template" BOOLEAN,
	"description_format" VARCHAR,
	"rule_type" TINYINT,
	"security_standards" VARCHAR,
	"is_ad_hoc" BOOLEAN,
	"is_external" BOOLEAN,
	"created_at" BIGINT,
	"updated_at" BIGINT,
	"uuid" VARCHAR,
	"template_uuid" VARCHAR,
	 PRIMARY KEY ("uuid")
);

CREATE TABLE "rule_repositories" (
	"kee" VARCHAR,
	"language" VARCHAR,
	"name" VARCHAR,
	"created_at" BIGINT,
	 PRIMARY KEY ("kee")
);

CREATE TABLE "quality_gates" (
	"uuid" VARCHAR,
	"name" VARCHAR,
	"is_built_in" BOOLEAN,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("uuid")
);

CREATE TABLE "quality_gate_conditions" (
	"operator" VARCHAR,
	"value_error" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"uuid" VARCHAR,
	"metric_uuid" VARCHAR,
	"qgate_uuid" VARCHAR,
	 PRIMARY KEY ("uuid")
);

CREATE TABLE "qprofile_edit_users" (
	"uuid" VARCHAR,
	"qprofile_uuid" VARCHAR,
	"created_at" BIGINT,
	"user_uuid" VARCHAR,
	 PRIMARY KEY ("uuid")
);

CREATE TABLE "qprofile_edit_groups" (
	"uuid" VARCHAR,
	"qprofile_uuid" VARCHAR,
	"created_at" BIGINT,
	"group_uuid" VARCHAR,
	 PRIMARY KEY ("uuid")
);

CREATE TABLE "qprofile_changes" (
	"kee" VARCHAR,
	"rules_profile_uuid" VARCHAR,
	"change_type" VARCHAR,
	"user_uuid" VARCHAR,
	"change_data" CLOB,
	"created_at" BIGINT,
	 PRIMARY KEY ("kee")
);

CREATE TABLE "properties" (
	"prop_key" VARCHAR,
	"is_empty" BOOLEAN,
	"text_value" VARCHAR,
	"clob_value" CLOB,
	"created_at" BIGINT,
	"component_uuid" VARCHAR,
	"uuid" VARCHAR,
	"user_uuid" VARCHAR,
	 PRIMARY KEY ("uuid")
);

CREATE TABLE "projects" (
	"uuid" VARCHAR,
	"kee" VARCHAR,
	"qualifier" VARCHAR,
	"name" VARCHAR,
	"description" VARCHAR,
	"private" BOOLEAN,
	"tags" VARCHAR,
	"created_at" BIGINT,
	"updated_at" BIGINT,
	 PRIMARY KEY ("uuid")
);

CREATE TABLE "project_qprofiles" (
	"project_uuid" VARCHAR,
	"profile_key" VARCHAR,
	"uuid" VARCHAR,
	 PRIMARY KEY ("uuid")
);

CREATE TABLE "project_qgates" (
	"project_uuid" VARCHAR,
	"quality_gate_uuid" VARCHAR,
	 PRIMARY KEY ("project_uuid")
);

CREATE TABLE "project_measures" (
	"value" DOUBLE,
	"analysis_uuid" VARCHAR,
	"component_uuid" VARCHAR,
	"text_value" VARCHAR,
	"alert_status" VARCHAR,
	"alert_text" VARCHAR,
	"person_id" INTEGER,
	"variation_value_1" DOUBLE,
	"measure_data" BLOB,
	"uuid" VARCHAR,
	"metric_uuid" VARCHAR,
	 PRIMARY KEY ("uuid")
);

CREATE TABLE "project_mappings" (
	"uuid" VARCHAR,
	"key_type" VARCHAR,
	"kee" VARCHAR,
	"project_uuid" VARCHAR,
	"created_at" BIGINT,
	 PRIMARY KEY ("uuid")
);

CREATE TABLE "project_links" (
	"uuid" VARCHAR,
	"project_uuid" VARCHAR,
	"link_type" VARCHAR,
	"name" VARCHAR,
	"href" VARCHAR,
	"created_at" BIGINT,
	"updated_at" BIGINT,
	 PRIMARY KEY ("uuid")
);

CREATE TABLE "project_branches" (
	"uuid" VARCHAR,
	"project_uuid" VARCHAR,
	"kee" VARCHAR,
	"branch_type" VARCHAR,
	"merge_branch_uuid" VARCHAR,
	"pull_request_binary" BLOB,
	"manual_baseline_analysis_uuid" VARCHAR,
	"created_at" BIGINT,
	"updated_at" BIGINT,
	"exclude_from_purge" BOOLEAN,
	"need_issue_sync" BOOLEAN,
	 PRIMARY KEY ("uuid")
);

CREATE TABLE "project_alm_settings" (
	"uuid" VARCHAR,
	"alm_setting_uuid" VARCHAR,
	"project_uuid" VARCHAR,
	"alm_repo" VARCHAR,
	"alm_slug" VARCHAR,
	"updated_at" BIGINT,
	"created_at" BIGINT,
	"summary_comment_enabled" BOOLEAN,
	"monorepo" BOOLEAN,
	 PRIMARY KEY ("uuid")
);

CREATE TABLE "plugins" (
	"uuid" VARCHAR,
	"kee" VARCHAR,
	"base_plugin_key" VARCHAR,
	"file_hash" VARCHAR,
	"created_at" BIGINT,
	"updated_at" BIGINT,
	"type" VARCHAR,
	 PRIMARY KEY ("uuid")
);

CREATE TABLE "permission_templates" (
	"name" VARCHAR,
	"description" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"key_pattern" VARCHAR,
	"uuid" VARCHAR,
	 PRIMARY KEY ("uuid")
);

CREATE TABLE "perm_tpl_characteristics" (
	"permission_key" VARCHAR,
	"with_project_creator" BOOLEAN,
	"created_at" BIGINT,
	"updated_at" BIGINT,
	"uuid" VARCHAR,
	"template_uuid" VARCHAR,
	 PRIMARY KEY ("uuid")
);

CREATE TABLE "perm_templates_users" (
	"permission_reference" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"uuid" VARCHAR,
	"template_uuid" VARCHAR,
	"user_uuid" VARCHAR,
	 PRIMARY KEY ("uuid")
);

CREATE TABLE "perm_templates_groups" (
	"permission_reference" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"uuid" VARCHAR,
	"template_uuid" VARCHAR,
	"group_uuid" VARCHAR,
	 PRIMARY KEY ("uuid")
);

CREATE TABLE "org_qprofiles" (
	"uuid" VARCHAR,
	"rules_profile_uuid" VARCHAR,
	"parent_uuid" VARCHAR,
	"last_used" BIGINT,
	"user_updated_at" BIGINT,
	"created_at" BIGINT,
	"updated_at" BIGINT,
	 PRIMARY KEY ("uuid")
);

CREATE TABLE "notifications" (
	"data" BLOB,
	"uuid" VARCHAR,
	"created_at" BIGINT,
	 PRIMARY KEY ("uuid")
);

CREATE TABLE "new_code_periods" (
	"uuid" VARCHAR,
	"project_uuid" VARCHAR,
	"branch_uuid" VARCHAR,
	"type" VARCHAR,
	"value" VARCHAR,
	"updated_at" BIGINT,
	"created_at" BIGINT,
	 PRIMARY KEY ("uuid")
);

CREATE TABLE "metrics" (
	"name" VARCHAR,
	"description" VARCHAR,
	"direction" INTEGER,
	"domain" VARCHAR,
	"short_name" VARCHAR,
	"qualitative" BOOLEAN,
	"val_type" VARCHAR,
	"user_managed" BOOLEAN,
	"enabled" BOOLEAN,
	"worst_value" DOUBLE,
	"best_value" DOUBLE,
	"optimized_best_value" BOOLEAN,
	"hidden" BOOLEAN,
	"delete_historical_data" BOOLEAN,
	"decimal_scale" INTEGER,
	"uuid" VARCHAR,
	 PRIMARY KEY ("uuid")
);

CREATE TABLE "manual_measures" (
	"value" DOUBLE,
	"text_value" VARCHAR,
	"user_uuid" VARCHAR,
	"description" VARCHAR,
	"created_at" BIGINT,
	"updated_at" BIGINT,
	"component_uuid" VARCHAR,
	"uuid" VARCHAR,
	"metric_uuid" VARCHAR,
	 PRIMARY KEY ("uuid")
);

CREATE TABLE "live_measures" (
	"uuid" VARCHAR,
	"project_uuid" VARCHAR,
	"component_uuid" VARCHAR,
	"metric_uuid" VARCHAR,
	"value" DOUBLE,
	"text_value" VARCHAR,
	"variation" DOUBLE,
	"measure_data" BLOB,
	"update_marker" VARCHAR,
	"created_at" BIGINT,
	"updated_at" BIGINT,
	 PRIMARY KEY ("uuid")
);

CREATE TABLE "issues" (
	"kee" VARCHAR,
	"rule_uuid" VARCHAR,
	"severity" VARCHAR,
	"manual_severity" BOOLEAN,
	"message" VARCHAR,
	"line" INTEGER,
	"gap" DOUBLE,
	"status" VARCHAR,
	"resolution" VARCHAR,
	"checksum" VARCHAR,
	"reporter" VARCHAR,
	"assignee" VARCHAR,
	"author_login" VARCHAR,
	"action_plan_key" VARCHAR,
	"issue_attributes" VARCHAR,
	"effort" INTEGER,
	"created_at" BIGINT,
	"updated_at" BIGINT,
	"issue_creation_date" BIGINT,
	"issue_update_date" BIGINT,
	"issue_close_date" BIGINT,
	"tags" VARCHAR,
	"component_uuid" VARCHAR,
	"project_uuid" VARCHAR,
	"locations" BLOB,
	"issue_type" TINYINT,
	"from_hotspot" BOOLEAN,
	 PRIMARY KEY ("kee")
);

CREATE TABLE "issue_changes" (
	"uuid" VARCHAR,
	"kee" VARCHAR,
	"issue_key" VARCHAR,
	"user_login" VARCHAR,
	"change_type" VARCHAR,
	"change_data" CLOB,
	"created_at" BIGINT,
	"updated_at" BIGINT,
	"issue_change_creation_date" BIGINT,
	"project_uuid" VARCHAR,
	 PRIMARY KEY ("uuid")
);

CREATE TABLE "internal_properties" (
	"kee" VARCHAR,
	"is_empty" BOOLEAN,
	"text_value" VARCHAR,
	"clob_value" CLOB,
	"created_at" BIGINT,
	 PRIMARY KEY ("kee")
);

CREATE TABLE "internal_component_props" (
	"uuid" VARCHAR,
	"component_uuid" VARCHAR,
	"kee" VARCHAR,
	"value" VARCHAR,
	"updated_at" BIGINT,
	"created_at" BIGINT,
	 PRIMARY KEY ("uuid")
);

CREATE TABLE "groups_users" (
	"group_uuid" VARCHAR,
	"user_uuid" VARCHAR
);

CREATE TABLE "groups" (
	"name" VARCHAR,
	"description" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"uuid" VARCHAR,
	 PRIMARY KEY ("uuid")
);

CREATE TABLE "group_roles" (
	"role" VARCHAR,
	"component_uuid" VARCHAR,
	"uuid" VARCHAR,
	"group_uuid" VARCHAR,
	 PRIMARY KEY ("uuid")
);

CREATE TABLE "file_sources" (
	"project_uuid" VARCHAR,
	"file_uuid" VARCHAR,
	"line_hashes" CLOB,
	"line_hashes_version" INTEGER,
	"data_hash" VARCHAR,
	"src_hash" VARCHAR,
	"revision" VARCHAR,
	"line_count" INTEGER,
	"binary_data" BLOB,
	"created_at" BIGINT,
	"updated_at" BIGINT,
	"uuid" VARCHAR,
	 PRIMARY KEY ("uuid")
);

CREATE TABLE "events" (
	"uuid" VARCHAR,
	"analysis_uuid" VARCHAR,
	"name" VARCHAR,
	"category" VARCHAR,
	"description" VARCHAR,
	"event_data" VARCHAR,
	"event_date" BIGINT,
	"created_at" BIGINT,
	"component_uuid" VARCHAR,
	 PRIMARY KEY ("uuid")
);

CREATE TABLE "event_component_changes" (
	"uuid" VARCHAR,
	"event_uuid" VARCHAR,
	"event_component_uuid" VARCHAR,
	"event_analysis_uuid" VARCHAR,
	"change_category" VARCHAR,
	"component_uuid" VARCHAR,
	"component_key" VARCHAR,
	"component_name" VARCHAR,
	"component_branch_key" VARCHAR,
	"created_at" BIGINT,
	 PRIMARY KEY ("uuid")
);

CREATE TABLE "es_queue" (
	"uuid" VARCHAR,
	"doc_type" VARCHAR,
	"doc_id" VARCHAR,
	"doc_id_type" VARCHAR,
	"doc_routing" VARCHAR,
	"created_at" BIGINT,
	 PRIMARY KEY ("uuid")
);

CREATE TABLE "duplications_index" (
	"analysis_uuid" VARCHAR,
	"component_uuid" VARCHAR,
	"hash" VARCHAR,
	"index_in_file" INTEGER,
	"start_line" INTEGER,
	"end_line" INTEGER,
	"uuid" VARCHAR,
	 PRIMARY KEY ("uuid")
);

CREATE TABLE "deprecated_rule_keys" (
	"uuid" VARCHAR,
	"old_repository_key" VARCHAR,
	"old_rule_key" VARCHAR,
	"created_at" BIGINT,
	"rule_uuid" VARCHAR,
	 PRIMARY KEY ("uuid")
);

CREATE TABLE "default_qprofiles" (
	"language" VARCHAR,
	"qprofile_uuid" VARCHAR,
	"created_at" BIGINT,
	"updated_at" BIGINT,
	 PRIMARY KEY ("language")
);

CREATE TABLE "components" (
	"uuid" VARCHAR,
	"kee" VARCHAR,
	"deprecated_kee" VARCHAR,
	"name" VARCHAR,
	"long_name" VARCHAR,
	"description" VARCHAR,
	"enabled" BOOLEAN,
	"scope" VARCHAR,
	"qualifier" VARCHAR,
	"private" BOOLEAN,
	"root_uuid" VARCHAR,
	"language" VARCHAR,
	"copy_component_uuid" VARCHAR,
	"path" VARCHAR,
	"uuid_path" VARCHAR,
	"project_uuid" VARCHAR,
	"module_uuid" VARCHAR,
	"module_uuid_path" VARCHAR,
	"main_branch_project_uuid" VARCHAR,
	"b_changed" BOOLEAN,
	"b_name" VARCHAR,
	"b_long_name" VARCHAR,
	"b_description" VARCHAR,
	"b_enabled" BOOLEAN,
	"b_qualifier" VARCHAR,
	"b_language" VARCHAR,
	"b_copy_component_uuid" VARCHAR,
	"b_path" VARCHAR,
	"b_uuid_path" VARCHAR,
	"b_module_uuid" VARCHAR,
	"b_module_uuid_path" VARCHAR,
	"created_at" TIMESTAMP
);

CREATE TABLE "ce_task_message" (
	"uuid" VARCHAR,
	"task_uuid" VARCHAR,
	"message" VARCHAR,
	"created_at" BIGINT,
	"message_type" VARCHAR,
	 PRIMARY KEY ("uuid")
);

CREATE TABLE "ce_task_input" (
	"task_uuid" VARCHAR,
	"input_data" BLOB,
	"created_at" BIGINT,
	"updated_at" BIGINT,
	 PRIMARY KEY ("task_uuid")
);

CREATE TABLE "ce_task_characteristics" (
	"uuid" VARCHAR,
	"task_uuid" VARCHAR,
	"kee" VARCHAR,
	"text_value" VARCHAR,
	 PRIMARY KEY ("uuid")
);

CREATE TABLE "ce_scanner_context" (
	"task_uuid" VARCHAR,
	"context_data" BLOB,
	"created_at" BIGINT,
	"updated_at" BIGINT,
	 PRIMARY KEY ("task_uuid")
);

CREATE TABLE "ce_queue" (
	"uuid" VARCHAR,
	"task_type" VARCHAR,
	"main_component_uuid" VARCHAR,
	"component_uuid" VARCHAR,
	"status" VARCHAR,
	"submitter_uuid" VARCHAR,
	"started_at" BIGINT,
	"worker_uuid" VARCHAR,
	"execution_count" INTEGER,
	"created_at" BIGINT,
	"updated_at" BIGINT,
	 PRIMARY KEY ("uuid")
);

CREATE TABLE "ce_activity" (
	"uuid" VARCHAR,
	"task_type" VARCHAR,
	"main_component_uuid" VARCHAR,
	"component_uuid" VARCHAR,
	"status" VARCHAR,
	"main_is_last" BOOLEAN,
	"main_is_last_key" VARCHAR,
	"is_last" BOOLEAN,
	"is_last_key" VARCHAR,
	"submitter_uuid" VARCHAR,
	"submitted_at" BIGINT,
	"started_at" BIGINT,
	"executed_at" BIGINT,
	"execution_count" INTEGER,
	"execution_time_ms" BIGINT,
	"analysis_uuid" VARCHAR,
	"error_message" VARCHAR,
	"error_stacktrace" CLOB,
	"error_type" VARCHAR,
	"worker_uuid" VARCHAR,
	"created_at" BIGINT,
	"updated_at" BIGINT,
	 PRIMARY KEY ("uuid")
);

CREATE TABLE "app_projects" (
	"uuid" VARCHAR,
	"application_uuid" VARCHAR,
	"project_uuid" VARCHAR,
	"created_at" BIGINT,
	 PRIMARY KEY ("uuid")
);

CREATE TABLE "app_branch_project_branch" (
	"uuid" VARCHAR,
	"application_uuid" VARCHAR,
	"application_branch_uuid" VARCHAR,
	"project_uuid" VARCHAR,
	"project_branch_uuid" VARCHAR,
	"created_at" BIGINT,
	 PRIMARY KEY ("uuid")
);

CREATE TABLE "analysis_properties" (
	"uuid" VARCHAR,
	"analysis_uuid" VARCHAR,
	"kee" VARCHAR,
	"text_value" VARCHAR,
	"clob_value" CLOB,
	"is_empty" BOOLEAN,
	"created_at" BIGINT,
	 PRIMARY KEY ("uuid")
);

CREATE TABLE "alm_settings" (
	"uuid" VARCHAR,
	"alm_id" VARCHAR,
	"kee" VARCHAR,
	"url" VARCHAR,
	"app_id" VARCHAR,
	"private_key" VARCHAR,
	"pat" VARCHAR,
	"updated_at" BIGINT,
	"created_at" BIGINT,
	"client_id" VARCHAR,
	"client_secret" VARCHAR,
	 PRIMARY KEY ("uuid")
);

CREATE TABLE "alm_pats" (
	"uuid" VARCHAR,
	"pat" VARCHAR,
	"user_uuid" VARCHAR,
	"alm_setting_uuid" VARCHAR,
	"updated_at" BIGINT,
	"created_at" BIGINT,
	 PRIMARY KEY ("uuid")
);

CREATE TABLE "active_rules" (
	"failure_level" INTEGER,
	"inheritance" VARCHAR,
	"created_at" BIGINT,
	"updated_at" BIGINT,
	"uuid" VARCHAR,
	"profile_uuid" VARCHAR,
	"rule_uuid" VARCHAR,
	 PRIMARY KEY ("uuid")
);

CREATE TABLE "active_rule_parameters" (
	"value" VARCHAR,
	"rules_parameter_key" VARCHAR,
	"uuid" VARCHAR,
	"active_rule_uuid" VARCHAR,
	"rules_parameter_uuid" VARCHAR,
	 PRIMARY KEY ("uuid")
);

CREATE TABLE "schema_migrations" (
	"version" VARCHAR
);
