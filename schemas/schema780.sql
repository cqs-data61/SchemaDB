DROP DATABASE IF EXISTS "schema780";
CREATE DATABASE "schema780";
USE "schema780";
CREATE TABLE "act_co_content_item" (
	"id_" VARCHAR,
	"name_" VARCHAR,
	"mime_type_" VARCHAR,
	"task_id_" VARCHAR,
	"proc_inst_id_" VARCHAR,
	"content_store_id_" VARCHAR,
	"content_store_name_" VARCHAR,
	"field_" VARCHAR,
	"content_available_" BIT,
	"created_" TIMESTAMP,
	"created_by_" VARCHAR,
	"last_modified_" TIMESTAMP,
	"last_modified_by_" VARCHAR,
	"content_size_" BIGINT,
	"tenant_id_" VARCHAR,
	 PRIMARY KEY ("id_")
);

CREATE TABLE "act_co_databasechangelog" (
	"id" VARCHAR,
	"author" VARCHAR,
	"filename" VARCHAR,
	"dateexecuted" DATETIME,
	"orderexecuted" INT,
	"exectype" VARCHAR,
	"md5sum" VARCHAR,
	"description" VARCHAR,
	"comments" VARCHAR,
	"tag" VARCHAR,
	"liquibase" VARCHAR,
	"contexts" VARCHAR,
	"labels" VARCHAR,
	"deployment_id" VARCHAR
);

CREATE TABLE "act_co_databasechangeloglock" (
	"id" INT,
	"locked" BIT,
	"lockgranted" DATETIME,
	"lockedby" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "act_fo_form_instance" (
	"id_" VARCHAR,
	"form_definition_id_" VARCHAR,
	"task_id_" VARCHAR,
	"proc_inst_id_" VARCHAR,
	"proc_def_id_" VARCHAR,
	"submitted_date_" DATETIME,
	"submitted_by_" VARCHAR,
	"form_values_id_" VARCHAR,
	"tenant_id_" VARCHAR,
	 PRIMARY KEY ("id_")
);

CREATE TABLE "act_fo_form_definition" (
	"id_" VARCHAR,
	"name_" VARCHAR,
	"version_" INT,
	"key_" VARCHAR,
	"category_" VARCHAR,
	"deployment_id_" VARCHAR,
	"parent_deployment_id_" VARCHAR,
	"tenant_id_" VARCHAR,
	"resource_name_" VARCHAR,
	"description_" VARCHAR,
	 PRIMARY KEY ("id_")
);

CREATE TABLE "act_fo_form_resource" (
	"id_" VARCHAR,
	"name_" VARCHAR,
	"deployment_id_" VARCHAR,
	"resource_bytes_" LONGBLOB,
	 PRIMARY KEY ("id_")
);

CREATE TABLE "act_fo_form_deployment" (
	"id_" VARCHAR,
	"name_" VARCHAR,
	"category_" VARCHAR,
	"deploy_time_" DATETIME,
	"tenant_id_" VARCHAR,
	"parent_deployment_id_" VARCHAR,
	 PRIMARY KEY ("id_")
);

CREATE TABLE "act_fo_databasechangelog" (
	"id" VARCHAR,
	"author" VARCHAR,
	"filename" VARCHAR,
	"dateexecuted" DATETIME,
	"orderexecuted" INT,
	"exectype" VARCHAR,
	"md5sum" VARCHAR,
	"description" VARCHAR,
	"comments" VARCHAR,
	"tag" VARCHAR,
	"liquibase" VARCHAR,
	"contexts" VARCHAR,
	"labels" VARCHAR,
	"deployment_id" VARCHAR
);

CREATE TABLE "act_fo_databasechangeloglock" (
	"id" INT,
	"locked" BIT,
	"lockgranted" DATETIME,
	"lockedby" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "act_dmn_hi_decision_execution" (
	"id_" VARCHAR,
	"decision_definition_id_" VARCHAR,
	"deployment_id_" VARCHAR,
	"start_time_" DATETIME,
	"end_time_" DATETIME,
	"instance_id_" VARCHAR,
	"execution_id_" VARCHAR,
	"activity_id_" VARCHAR,
	"failed_" BIT,
	"tenant_id_" VARCHAR,
	"execution_json_" LONGTEXT,
	 PRIMARY KEY ("id_")
);

CREATE TABLE "act_dmn_decision_table" (
	"id_" VARCHAR,
	"name_" VARCHAR,
	"version_" INT,
	"key_" VARCHAR,
	"category_" VARCHAR,
	"deployment_id_" VARCHAR,
	"parent_deployment_id_" VARCHAR,
	"tenant_id_" VARCHAR,
	"resource_name_" VARCHAR,
	"description_" VARCHAR,
	 PRIMARY KEY ("id_")
);

CREATE TABLE "act_dmn_deployment_resource" (
	"id_" VARCHAR,
	"name_" VARCHAR,
	"deployment_id_" VARCHAR,
	"resource_bytes_" LONGBLOB,
	 PRIMARY KEY ("id_")
);

CREATE TABLE "act_dmn_deployment" (
	"id_" VARCHAR,
	"name_" VARCHAR,
	"category_" VARCHAR,
	"deploy_time_" DATETIME,
	"tenant_id_" VARCHAR,
	"parent_deployment_id_" VARCHAR,
	 PRIMARY KEY ("id_")
);

CREATE TABLE "act_dmn_databasechangelog" (
	"id" VARCHAR,
	"author" VARCHAR,
	"filename" VARCHAR,
	"dateexecuted" DATETIME,
	"orderexecuted" INT,
	"exectype" VARCHAR,
	"md5sum" VARCHAR,
	"description" VARCHAR,
	"comments" VARCHAR,
	"tag" VARCHAR,
	"liquibase" VARCHAR,
	"contexts" VARCHAR,
	"labels" VARCHAR,
	"deployment_id" VARCHAR
);

CREATE TABLE "act_dmn_databasechangeloglock" (
	"id" INT,
	"locked" BIT,
	"lockgranted" DATETIME,
	"lockedby" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "flw_channel_definition" (
	"id_" VARCHAR,
	"name_" VARCHAR,
	"version_" INT,
	"key_" VARCHAR,
	"category_" VARCHAR,
	"deployment_id_" VARCHAR,
	"create_time_" DATETIME,
	"tenant_id_" VARCHAR,
	"resource_name_" VARCHAR,
	"description_" VARCHAR,
	 PRIMARY KEY ("id_")
);

CREATE TABLE "flw_event_definition" (
	"id_" VARCHAR,
	"name_" VARCHAR,
	"version_" INT,
	"key_" VARCHAR,
	"category_" VARCHAR,
	"deployment_id_" VARCHAR,
	"tenant_id_" VARCHAR,
	"resource_name_" VARCHAR,
	"description_" VARCHAR,
	 PRIMARY KEY ("id_")
);

CREATE TABLE "flw_event_resource" (
	"id_" VARCHAR,
	"name_" VARCHAR,
	"deployment_id_" VARCHAR,
	"resource_bytes_" LONGBLOB,
	 PRIMARY KEY ("id_")
);

CREATE TABLE "flw_event_deployment" (
	"id_" VARCHAR,
	"name_" VARCHAR,
	"category_" VARCHAR,
	"deploy_time_" DATETIME,
	"tenant_id_" VARCHAR,
	"parent_deployment_id_" VARCHAR,
	 PRIMARY KEY ("id_")
);

CREATE TABLE "flw_ev_databasechangelog" (
	"id" VARCHAR,
	"author" VARCHAR,
	"filename" VARCHAR,
	"dateexecuted" DATETIME,
	"orderexecuted" INT,
	"exectype" VARCHAR,
	"md5sum" VARCHAR,
	"description" VARCHAR,
	"comments" VARCHAR,
	"tag" VARCHAR,
	"liquibase" VARCHAR,
	"contexts" VARCHAR,
	"labels" VARCHAR,
	"deployment_id" VARCHAR
);

CREATE TABLE "flw_ev_databasechangeloglock" (
	"id" INT,
	"locked" BIT,
	"lockgranted" DATETIME,
	"lockedby" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "act_cmmn_hi_plan_item_inst" (
	"id_" VARCHAR,
	"rev_" INT,
	"name_" VARCHAR,
	"state_" VARCHAR,
	"case_def_id_" VARCHAR,
	"case_inst_id_" VARCHAR,
	"stage_inst_id_" VARCHAR,
	"is_stage_" BIT,
	"element_id_" VARCHAR,
	"item_definition_id_" VARCHAR,
	"item_definition_type_" VARCHAR,
	"created_time_" DATETIME,
	"last_available_time_" DATETIME,
	"last_enabled_time_" DATETIME,
	"last_disabled_time_" DATETIME,
	"last_started_time_" DATETIME,
	"last_suspended_time_" DATETIME,
	"completed_time_" DATETIME,
	"occurred_time_" DATETIME,
	"terminated_time_" DATETIME,
	"exit_time_" DATETIME,
	"ended_time_" DATETIME,
	"last_updated_time_" DATETIME,
	"start_user_id_" VARCHAR,
	"reference_id_" VARCHAR,
	"reference_type_" VARCHAR,
	"tenant_id_" VARCHAR,
	 PRIMARY KEY ("id_")
);

CREATE TABLE "act_cmmn_hi_mil_inst" (
	"id_" VARCHAR,
	"rev_" INT,
	"name_" VARCHAR,
	"time_stamp_" DATETIME,
	"case_inst_id_" VARCHAR,
	"case_def_id_" VARCHAR,
	"element_id_" VARCHAR,
	 PRIMARY KEY ("id_")
);

CREATE TABLE "act_cmmn_hi_case_inst" (
	"id_" VARCHAR,
	"rev_" INT,
	"business_key_" VARCHAR,
	"name_" VARCHAR,
	"parent_id_" VARCHAR,
	"case_def_id_" VARCHAR,
	"state_" VARCHAR,
	"start_time_" DATETIME,
	"end_time_" DATETIME,
	"start_user_id_" VARCHAR,
	"callback_id_" VARCHAR,
	"callback_type_" VARCHAR,
	"tenant_id_" VARCHAR,
	 PRIMARY KEY ("id_")
);

CREATE TABLE "act_cmmn_ru_mil_inst" (
	"id_" VARCHAR,
	"name_" VARCHAR,
	"time_stamp_" DATETIME,
	"case_inst_id_" VARCHAR,
	"case_def_id_" VARCHAR,
	"element_id_" VARCHAR,
	 PRIMARY KEY ("id_")
);

CREATE TABLE "act_cmmn_ru_sentry_part_inst" (
	"id_" VARCHAR,
	"rev_" INT,
	"case_def_id_" VARCHAR,
	"case_inst_id_" VARCHAR,
	"plan_item_inst_id_" VARCHAR,
	"on_part_id_" VARCHAR,
	"if_part_id_" VARCHAR,
	"time_stamp_" DATETIME,
	 PRIMARY KEY ("id_")
);

CREATE TABLE "act_cmmn_ru_plan_item_inst" (
	"id_" VARCHAR,
	"rev_" INT,
	"case_def_id_" VARCHAR,
	"case_inst_id_" VARCHAR,
	"stage_inst_id_" VARCHAR,
	"is_stage_" BIT,
	"element_id_" VARCHAR,
	"name_" VARCHAR,
	"state_" VARCHAR,
	"start_time_" DATETIME,
	"start_user_id_" VARCHAR,
	"reference_id_" VARCHAR,
	"reference_type_" VARCHAR,
	"tenant_id_" VARCHAR,
	 PRIMARY KEY ("id_")
);

CREATE TABLE "act_cmmn_ru_case_inst" (
	"id_" VARCHAR,
	"rev_" INT,
	"business_key_" VARCHAR,
	"name_" VARCHAR,
	"parent_id_" VARCHAR,
	"case_def_id_" VARCHAR,
	"state_" VARCHAR,
	"start_time_" DATETIME,
	"start_user_id_" VARCHAR,
	"callback_id_" VARCHAR,
	"callback_type_" VARCHAR,
	"tenant_id_" VARCHAR,
	 PRIMARY KEY ("id_")
);

CREATE TABLE "act_cmmn_casedef" (
	"id_" VARCHAR,
	"rev_" INT,
	"name_" VARCHAR,
	"key_" VARCHAR,
	"version_" INT,
	"category_" VARCHAR,
	"deployment_id_" VARCHAR,
	"resource_name_" VARCHAR,
	"description_" VARCHAR,
	"has_graphical_notation_" BIT,
	"tenant_id_" VARCHAR,
	 PRIMARY KEY ("id_")
);

CREATE TABLE "act_cmmn_deployment_resource" (
	"id_" VARCHAR,
	"name_" VARCHAR,
	"deployment_id_" VARCHAR,
	"resource_bytes_" LONGBLOB,
	 PRIMARY KEY ("id_")
);

CREATE TABLE "act_cmmn_deployment" (
	"id_" VARCHAR,
	"name_" VARCHAR,
	"category_" VARCHAR,
	"key_" VARCHAR,
	"deploy_time_" DATETIME,
	"parent_deployment_id_" VARCHAR,
	"tenant_id_" VARCHAR,
	 PRIMARY KEY ("id_")
);

CREATE TABLE "act_cmmn_databasechangelog" (
	"id" VARCHAR,
	"author" VARCHAR,
	"filename" VARCHAR,
	"dateexecuted" DATETIME,
	"orderexecuted" INT,
	"exectype" VARCHAR,
	"md5sum" VARCHAR,
	"description" VARCHAR,
	"comments" VARCHAR,
	"tag" VARCHAR,
	"liquibase" VARCHAR,
	"contexts" VARCHAR,
	"labels" VARCHAR,
	"deployment_id" VARCHAR
);

CREATE TABLE "act_cmmn_databasechangeloglock" (
	"id" INT,
	"locked" BIT,
	"lockgranted" DATETIME,
	"lockedby" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "act_app_appdef" (
	"id_" VARCHAR,
	"rev_" INT,
	"name_" VARCHAR,
	"key_" VARCHAR,
	"version_" INT,
	"category_" VARCHAR,
	"deployment_id_" VARCHAR,
	"resource_name_" VARCHAR,
	"description_" VARCHAR,
	"tenant_id_" VARCHAR,
	 PRIMARY KEY ("id_")
);

CREATE TABLE "act_app_deployment_resource" (
	"id_" VARCHAR,
	"name_" VARCHAR,
	"deployment_id_" VARCHAR,
	"resource_bytes_" LONGBLOB,
	 PRIMARY KEY ("id_")
);

CREATE TABLE "act_app_deployment" (
	"id_" VARCHAR,
	"name_" VARCHAR,
	"category_" VARCHAR,
	"key_" VARCHAR,
	"deploy_time_" DATETIME,
	"tenant_id_" VARCHAR,
	 PRIMARY KEY ("id_")
);

CREATE TABLE "act_app_databasechangelog" (
	"id" VARCHAR,
	"author" VARCHAR,
	"filename" VARCHAR,
	"dateexecuted" DATETIME,
	"orderexecuted" INT,
	"exectype" VARCHAR,
	"md5sum" VARCHAR,
	"description" VARCHAR,
	"comments" VARCHAR,
	"tag" VARCHAR,
	"liquibase" VARCHAR,
	"contexts" VARCHAR,
	"labels" VARCHAR,
	"deployment_id" VARCHAR
);

CREATE TABLE "act_app_databasechangeloglock" (
	"id" INT,
	"locked" BIT,
	"lockgranted" DATETIME,
	"lockedby" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "act_id_priv_mapping" (
	"id_" VARCHAR,
	"priv_id_" VARCHAR,
	"user_id_" VARCHAR,
	"group_id_" VARCHAR
);

CREATE TABLE "act_id_priv" (
	"id_" VARCHAR,
	"name_" VARCHAR
);

CREATE TABLE "act_id_token" (
	"id_" VARCHAR,
	"rev_" INTEGER,
	"token_value_" VARCHAR,
	"token_date_" TIMESTAMP,
	"ip_address_" VARCHAR,
	"user_agent_" VARCHAR,
	"user_id_" VARCHAR,
	"token_data_" VARCHAR
);

CREATE TABLE "act_id_info" (
	"id_" VARCHAR,
	"rev_" INTEGER,
	"user_id_" VARCHAR,
	"type_" VARCHAR,
	"key_" VARCHAR,
	"value_" VARCHAR,
	"password_" LONGBLOB,
	"parent_id_" VARCHAR
);

CREATE TABLE "act_id_user" (
	"id_" VARCHAR,
	"rev_" INTEGER,
	"first_" VARCHAR,
	"last_" VARCHAR,
	"display_name_" VARCHAR,
	"email_" VARCHAR,
	"pwd_" VARCHAR,
	"picture_id_" VARCHAR,
	"tenant_id_" VARCHAR
);

CREATE TABLE "act_id_membership" (
	"user_id_" VARCHAR,
	"group_id_" VARCHAR
);

CREATE TABLE "act_id_group" (
	"id_" VARCHAR,
	"rev_" INTEGER,
	"name_" VARCHAR,
	"type_" VARCHAR
);

CREATE TABLE "act_id_bytearray" (
	"id_" VARCHAR,
	"rev_" INTEGER,
	"name_" VARCHAR,
	"bytes_" LONGBLOB
);

CREATE TABLE "act_id_property" (
	"name_" VARCHAR,
	"value_" VARCHAR,
	"rev_" INTEGER
);

CREATE TABLE "act_hi_attachment" (
	"id_" VARCHAR,
	"rev_" INTEGER,
	"user_id_" VARCHAR,
	"name_" VARCHAR,
	"description_" VARCHAR,
	"type_" VARCHAR,
	"task_id_" VARCHAR,
	"proc_inst_id_" VARCHAR,
	"url_" VARCHAR,
	"content_id_" VARCHAR,
	"time_" DATETIME
);

CREATE TABLE "act_hi_comment" (
	"id_" VARCHAR,
	"type_" VARCHAR,
	"time_" DATETIME,
	"user_id_" VARCHAR,
	"task_id_" VARCHAR,
	"proc_inst_id_" VARCHAR,
	"action_" VARCHAR,
	"message_" VARCHAR,
	"full_msg_" LONGBLOB
);

CREATE TABLE "act_hi_detail" (
	"id_" VARCHAR,
	"type_" VARCHAR,
	"proc_inst_id_" VARCHAR,
	"execution_id_" VARCHAR,
	"task_id_" VARCHAR,
	"act_inst_id_" VARCHAR,
	"name_" VARCHAR,
	"var_type_" VARCHAR,
	"rev_" INTEGER,
	"time_" DATETIME,
	"bytearray_id_" VARCHAR,
	"double_" DOUBLE,
	"long_" BIGINT,
	"text_" VARCHAR,
	"text2_" VARCHAR
);

CREATE TABLE "act_hi_actinst" (
	"id_" VARCHAR,
	"rev_" INTEGER,
	"proc_def_id_" VARCHAR,
	"proc_inst_id_" VARCHAR,
	"execution_id_" VARCHAR,
	"act_id_" VARCHAR,
	"task_id_" VARCHAR,
	"call_proc_inst_id_" VARCHAR,
	"act_name_" VARCHAR,
	"act_type_" VARCHAR,
	"assignee_" VARCHAR,
	"start_time_" DATETIME,
	"end_time_" DATETIME,
	"transaction_order_" INTEGER,
	"duration_" BIGINT,
	"delete_reason_" VARCHAR,
	"tenant_id_" VARCHAR
);

CREATE TABLE "act_hi_procinst" (
	"id_" VARCHAR,
	"rev_" INTEGER,
	"proc_inst_id_" VARCHAR,
	"business_key_" VARCHAR,
	"proc_def_id_" VARCHAR,
	"start_time_" DATETIME,
	"end_time_" DATETIME,
	"duration_" BIGINT,
	"start_user_id_" VARCHAR,
	"start_act_id_" VARCHAR,
	"end_act_id_" VARCHAR,
	"super_process_instance_id_" VARCHAR,
	"delete_reason_" VARCHAR,
	"tenant_id_" VARCHAR,
	"name_" VARCHAR,
	"callback_id_" VARCHAR,
	"callback_type_" VARCHAR,
	"reference_id_" VARCHAR,
	"reference_type_" VARCHAR
);

CREATE TABLE "act_ru_actinst" (
	"id_" VARCHAR,
	"rev_" INTEGER,
	"proc_def_id_" VARCHAR,
	"proc_inst_id_" VARCHAR,
	"execution_id_" VARCHAR,
	"act_id_" VARCHAR,
	"task_id_" VARCHAR,
	"call_proc_inst_id_" VARCHAR,
	"act_name_" VARCHAR,
	"act_type_" VARCHAR,
	"assignee_" VARCHAR,
	"start_time_" DATETIME,
	"end_time_" DATETIME,
	"duration_" BIGINT,
	"transaction_order_" INTEGER,
	"delete_reason_" VARCHAR,
	"tenant_id_" VARCHAR
);

CREATE TABLE "act_procdef_info" (
	"id_" VARCHAR,
	"proc_def_id_" VARCHAR,
	"rev_" INTEGER,
	"info_json_id_" VARCHAR
);

CREATE TABLE "act_evt_log" (
	"log_nr_" BIGINT,
	"type_" VARCHAR,
	"proc_def_id_" VARCHAR,
	"proc_inst_id_" VARCHAR,
	"execution_id_" VARCHAR,
	"task_id_" VARCHAR,
	"time_stamp_" TIMESTAMP,
	"user_id_" VARCHAR,
	"data_" LONGBLOB,
	"lock_owner_" VARCHAR,
	"lock_time_" TIMESTAMP,
	"is_processed_" TINYINT
);

CREATE TABLE "act_re_procdef" (
	"id_" VARCHAR,
	"rev_" INTEGER,
	"category_" VARCHAR,
	"name_" VARCHAR,
	"key_" VARCHAR,
	"version_" INTEGER,
	"deployment_id_" VARCHAR,
	"resource_name_" VARCHAR,
	"dgrm_resource_name_" VARCHAR,
	"description_" VARCHAR,
	"has_start_form_key_" TINYINT,
	"has_graphical_notation_" TINYINT,
	"suspension_state_" INTEGER,
	"tenant_id_" VARCHAR,
	"engine_version_" VARCHAR,
	"derived_from_" VARCHAR,
	"derived_from_root_" VARCHAR,
	"derived_version_" INTEGER
);

CREATE TABLE "act_ru_execution" (
	"id_" VARCHAR,
	"rev_" INTEGER,
	"proc_inst_id_" VARCHAR,
	"business_key_" VARCHAR,
	"parent_id_" VARCHAR,
	"proc_def_id_" VARCHAR,
	"super_exec_" VARCHAR,
	"root_proc_inst_id_" VARCHAR,
	"act_id_" VARCHAR,
	"is_active_" TINYINT,
	"is_concurrent_" TINYINT,
	"is_scope_" TINYINT,
	"is_event_scope_" TINYINT,
	"is_mi_root_" TINYINT,
	"suspension_state_" INTEGER,
	"cached_ent_state_" INTEGER,
	"tenant_id_" VARCHAR,
	"name_" VARCHAR,
	"start_act_id_" VARCHAR,
	"start_time_" DATETIME,
	"start_user_id_" VARCHAR,
	"lock_time_" TIMESTAMP,
	"lock_owner_" VARCHAR,
	"is_count_enabled_" TINYINT,
	"evt_subscr_count_" INTEGER,
	"task_count_" INTEGER,
	"job_count_" INTEGER,
	"timer_job_count_" INTEGER,
	"susp_job_count_" INTEGER,
	"deadletter_job_count_" INTEGER,
	"external_worker_job_count_" INTEGER,
	"var_count_" INTEGER,
	"id_link_count_" INTEGER,
	"callback_id_" VARCHAR,
	"callback_type_" VARCHAR,
	"reference_id_" VARCHAR,
	"reference_type_" VARCHAR,
	"propagated_stage_inst_id_" VARCHAR
);

CREATE TABLE "act_re_model" (
	"id_" VARCHAR,
	"rev_" INTEGER,
	"name_" VARCHAR,
	"key_" VARCHAR,
	"category_" VARCHAR,
	"create_time_" TIMESTAMP,
	"last_update_time_" TIMESTAMP,
	"version_" INTEGER,
	"meta_info_" VARCHAR,
	"deployment_id_" VARCHAR,
	"editor_source_value_id_" VARCHAR,
	"editor_source_extra_value_id_" VARCHAR,
	"tenant_id_" VARCHAR
);

CREATE TABLE "act_re_deployment" (
	"id_" VARCHAR,
	"name_" VARCHAR,
	"category_" VARCHAR,
	"key_" VARCHAR,
	"tenant_id_" VARCHAR,
	"deploy_time_" TIMESTAMP,
	"derived_from_" VARCHAR,
	"derived_from_root_" VARCHAR,
	"parent_deployment_id_" VARCHAR,
	"engine_version_" VARCHAR
);

CREATE TABLE "act_ru_event_subscr" (
	"id_" VARCHAR,
	"rev_" INTEGER,
	"event_type_" VARCHAR,
	"event_name_" VARCHAR,
	"execution_id_" VARCHAR,
	"proc_inst_id_" VARCHAR,
	"activity_id_" VARCHAR,
	"configuration_" VARCHAR,
	"created_" TIMESTAMP,
	"proc_def_id_" VARCHAR,
	"sub_scope_id_" VARCHAR,
	"scope_id_" VARCHAR,
	"scope_definition_id_" VARCHAR,
	"scope_type_" VARCHAR,
	"tenant_id_" VARCHAR
);

CREATE TABLE "act_hi_varinst" (
	"id_" VARCHAR,
	"rev_" INTEGER,
	"proc_inst_id_" VARCHAR,
	"execution_id_" VARCHAR,
	"task_id_" VARCHAR,
	"name_" VARCHAR,
	"var_type_" VARCHAR,
	"scope_id_" VARCHAR,
	"sub_scope_id_" VARCHAR,
	"scope_type_" VARCHAR,
	"bytearray_id_" VARCHAR,
	"double_" DOUBLE,
	"long_" BIGINT,
	"text_" VARCHAR,
	"text2_" VARCHAR,
	"create_time_" DATETIME,
	"last_updated_time_" DATETIME
);

CREATE TABLE "act_ru_variable" (
	"id_" VARCHAR,
	"rev_" INTEGER,
	"type_" VARCHAR,
	"name_" VARCHAR,
	"execution_id_" VARCHAR,
	"proc_inst_id_" VARCHAR,
	"task_id_" VARCHAR,
	"scope_id_" VARCHAR,
	"sub_scope_id_" VARCHAR,
	"scope_type_" VARCHAR,
	"bytearray_id_" VARCHAR,
	"double_" DOUBLE,
	"long_" BIGINT,
	"text_" VARCHAR,
	"text2_" VARCHAR
);

CREATE TABLE "act_hi_tsk_log" (
	"id_" BIGINT,
	"type_" VARCHAR,
	"task_id_" VARCHAR,
	"time_stamp_" TIMESTAMP,
	"user_id_" VARCHAR,
	"data_" VARCHAR,
	"execution_id_" VARCHAR,
	"proc_inst_id_" VARCHAR,
	"proc_def_id_" VARCHAR,
	"scope_id_" VARCHAR,
	"scope_definition_id_" VARCHAR,
	"sub_scope_id_" VARCHAR,
	"scope_type_" VARCHAR,
	"tenant_id_" VARCHAR
);

CREATE TABLE "act_hi_taskinst" (
	"id_" VARCHAR,
	"rev_" INTEGER,
	"proc_def_id_" VARCHAR,
	"task_def_id_" VARCHAR,
	"task_def_key_" VARCHAR,
	"proc_inst_id_" VARCHAR,
	"execution_id_" VARCHAR,
	"scope_id_" VARCHAR,
	"sub_scope_id_" VARCHAR,
	"scope_type_" VARCHAR,
	"scope_definition_id_" VARCHAR,
	"propagated_stage_inst_id_" VARCHAR,
	"name_" VARCHAR,
	"parent_task_id_" VARCHAR,
	"description_" VARCHAR,
	"owner_" VARCHAR,
	"assignee_" VARCHAR,
	"start_time_" DATETIME,
	"claim_time_" DATETIME,
	"end_time_" DATETIME,
	"duration_" BIGINT,
	"delete_reason_" VARCHAR,
	"priority_" INTEGER,
	"due_date_" DATETIME,
	"form_key_" VARCHAR,
	"category_" VARCHAR,
	"tenant_id_" VARCHAR,
	"last_updated_time_" DATETIME
);

CREATE TABLE "act_ru_task" (
	"id_" VARCHAR,
	"rev_" INTEGER,
	"execution_id_" VARCHAR,
	"proc_inst_id_" VARCHAR,
	"proc_def_id_" VARCHAR,
	"task_def_id_" VARCHAR,
	"scope_id_" VARCHAR,
	"sub_scope_id_" VARCHAR,
	"scope_type_" VARCHAR,
	"scope_definition_id_" VARCHAR,
	"propagated_stage_inst_id_" VARCHAR,
	"name_" VARCHAR,
	"parent_task_id_" VARCHAR,
	"description_" VARCHAR,
	"task_def_key_" VARCHAR,
	"owner_" VARCHAR,
	"assignee_" VARCHAR,
	"delegation_" VARCHAR,
	"priority_" INTEGER,
	"create_time_" TIMESTAMP,
	"due_date_" DATETIME,
	"category_" VARCHAR,
	"suspension_state_" INTEGER,
	"tenant_id_" VARCHAR,
	"form_key_" VARCHAR,
	"claim_time_" DATETIME,
	"is_count_enabled_" TINYINT,
	"var_count_" INTEGER,
	"id_link_count_" INTEGER,
	"sub_task_count_" INTEGER
);

CREATE TABLE "flw_ru_batch_part" (
	"id_" VARCHAR,
	"rev_" INTEGER,
	"batch_id_" VARCHAR,
	"type_" VARCHAR,
	"scope_id_" VARCHAR,
	"sub_scope_id_" VARCHAR,
	"scope_type_" VARCHAR,
	"search_key_" VARCHAR,
	"search_key2_" VARCHAR,
	"create_time_" DATETIME,
	"complete_time_" DATETIME,
	"status_" VARCHAR,
	"result_doc_id_" VARCHAR,
	"tenant_id_" VARCHAR
);

CREATE TABLE "flw_ru_batch" (
	"id_" VARCHAR,
	"rev_" INTEGER,
	"type_" VARCHAR,
	"search_key_" VARCHAR,
	"search_key2_" VARCHAR,
	"create_time_" DATETIME,
	"complete_time_" DATETIME,
	"status_" VARCHAR,
	"batch_doc_id_" VARCHAR,
	"tenant_id_" VARCHAR
);

CREATE TABLE "act_ru_external_job" (
	"id_" VARCHAR,
	"rev_" INTEGER,
	"category_" VARCHAR,
	"type_" VARCHAR,
	"lock_exp_time_" TIMESTAMP,
	"lock_owner_" VARCHAR,
	"exclusive_" BOOLEAN,
	"execution_id_" VARCHAR,
	"process_instance_id_" VARCHAR,
	"proc_def_id_" VARCHAR,
	"element_id_" VARCHAR,
	"element_name_" VARCHAR,
	"scope_id_" VARCHAR,
	"sub_scope_id_" VARCHAR,
	"scope_type_" VARCHAR,
	"scope_definition_id_" VARCHAR,
	"correlation_id_" VARCHAR,
	"retries_" INTEGER,
	"exception_stack_id_" VARCHAR,
	"exception_msg_" VARCHAR,
	"duedate_" TIMESTAMP,
	"repeat_" VARCHAR,
	"handler_type_" VARCHAR,
	"handler_cfg_" VARCHAR,
	"custom_values_id_" VARCHAR,
	"create_time_" TIMESTAMP,
	"tenant_id_" VARCHAR
);

CREATE TABLE "act_ru_history_job" (
	"id_" VARCHAR,
	"rev_" INTEGER,
	"lock_exp_time_" TIMESTAMP,
	"lock_owner_" VARCHAR,
	"retries_" INTEGER,
	"exception_stack_id_" VARCHAR,
	"exception_msg_" VARCHAR,
	"handler_type_" VARCHAR,
	"handler_cfg_" VARCHAR,
	"custom_values_id_" VARCHAR,
	"adv_handler_cfg_id_" VARCHAR,
	"create_time_" TIMESTAMP,
	"scope_type_" VARCHAR,
	"tenant_id_" VARCHAR
);

CREATE TABLE "act_ru_deadletter_job" (
	"id_" VARCHAR,
	"rev_" INTEGER,
	"category_" VARCHAR,
	"type_" VARCHAR,
	"exclusive_" BOOLEAN,
	"execution_id_" VARCHAR,
	"process_instance_id_" VARCHAR,
	"proc_def_id_" VARCHAR,
	"element_id_" VARCHAR,
	"element_name_" VARCHAR,
	"scope_id_" VARCHAR,
	"sub_scope_id_" VARCHAR,
	"scope_type_" VARCHAR,
	"scope_definition_id_" VARCHAR,
	"correlation_id_" VARCHAR,
	"exception_stack_id_" VARCHAR,
	"exception_msg_" VARCHAR,
	"duedate_" TIMESTAMP,
	"repeat_" VARCHAR,
	"handler_type_" VARCHAR,
	"handler_cfg_" VARCHAR,
	"custom_values_id_" VARCHAR,
	"create_time_" TIMESTAMP,
	"tenant_id_" VARCHAR
);

CREATE TABLE "act_ru_suspended_job" (
	"id_" VARCHAR,
	"rev_" INTEGER,
	"category_" VARCHAR,
	"type_" VARCHAR,
	"exclusive_" BOOLEAN,
	"execution_id_" VARCHAR,
	"process_instance_id_" VARCHAR,
	"proc_def_id_" VARCHAR,
	"element_id_" VARCHAR,
	"element_name_" VARCHAR,
	"scope_id_" VARCHAR,
	"sub_scope_id_" VARCHAR,
	"scope_type_" VARCHAR,
	"scope_definition_id_" VARCHAR,
	"correlation_id_" VARCHAR,
	"retries_" INTEGER,
	"exception_stack_id_" VARCHAR,
	"exception_msg_" VARCHAR,
	"duedate_" TIMESTAMP,
	"repeat_" VARCHAR,
	"handler_type_" VARCHAR,
	"handler_cfg_" VARCHAR,
	"custom_values_id_" VARCHAR,
	"create_time_" TIMESTAMP,
	"tenant_id_" VARCHAR
);

CREATE TABLE "act_ru_timer_job" (
	"id_" VARCHAR,
	"rev_" INTEGER,
	"category_" VARCHAR,
	"type_" VARCHAR,
	"lock_exp_time_" TIMESTAMP,
	"lock_owner_" VARCHAR,
	"exclusive_" BOOLEAN,
	"execution_id_" VARCHAR,
	"process_instance_id_" VARCHAR,
	"proc_def_id_" VARCHAR,
	"element_id_" VARCHAR,
	"element_name_" VARCHAR,
	"scope_id_" VARCHAR,
	"sub_scope_id_" VARCHAR,
	"scope_type_" VARCHAR,
	"scope_definition_id_" VARCHAR,
	"correlation_id_" VARCHAR,
	"retries_" INTEGER,
	"exception_stack_id_" VARCHAR,
	"exception_msg_" VARCHAR,
	"duedate_" TIMESTAMP,
	"repeat_" VARCHAR,
	"handler_type_" VARCHAR,
	"handler_cfg_" VARCHAR,
	"custom_values_id_" VARCHAR,
	"create_time_" TIMESTAMP,
	"tenant_id_" VARCHAR
);

CREATE TABLE "act_ru_job" (
	"id_" VARCHAR,
	"rev_" INTEGER,
	"category_" VARCHAR,
	"type_" VARCHAR,
	"lock_exp_time_" TIMESTAMP,
	"lock_owner_" VARCHAR,
	"exclusive_" BOOLEAN,
	"execution_id_" VARCHAR,
	"process_instance_id_" VARCHAR,
	"proc_def_id_" VARCHAR,
	"element_id_" VARCHAR,
	"element_name_" VARCHAR,
	"scope_id_" VARCHAR,
	"sub_scope_id_" VARCHAR,
	"scope_type_" VARCHAR,
	"scope_definition_id_" VARCHAR,
	"correlation_id_" VARCHAR,
	"retries_" INTEGER,
	"exception_stack_id_" VARCHAR,
	"exception_msg_" VARCHAR,
	"duedate_" TIMESTAMP,
	"repeat_" VARCHAR,
	"handler_type_" VARCHAR,
	"handler_cfg_" VARCHAR,
	"custom_values_id_" VARCHAR,
	"create_time_" TIMESTAMP,
	"tenant_id_" VARCHAR
);

CREATE TABLE "act_hi_identitylink" (
	"id_" VARCHAR,
	"group_id_" VARCHAR,
	"type_" VARCHAR,
	"user_id_" VARCHAR,
	"task_id_" VARCHAR,
	"create_time_" DATETIME,
	"proc_inst_id_" VARCHAR,
	"scope_id_" VARCHAR,
	"sub_scope_id_" VARCHAR,
	"scope_type_" VARCHAR,
	"scope_definition_id_" VARCHAR
);

CREATE TABLE "act_ru_identitylink" (
	"id_" VARCHAR,
	"rev_" INTEGER,
	"group_id_" VARCHAR,
	"type_" VARCHAR,
	"user_id_" VARCHAR,
	"task_id_" VARCHAR,
	"proc_inst_id_" VARCHAR,
	"proc_def_id_" VARCHAR,
	"scope_id_" VARCHAR,
	"sub_scope_id_" VARCHAR,
	"scope_type_" VARCHAR,
	"scope_definition_id_" VARCHAR
);

CREATE TABLE "act_hi_entitylink" (
	"id_" VARCHAR,
	"link_type_" VARCHAR,
	"create_time_" DATETIME,
	"scope_id_" VARCHAR,
	"sub_scope_id_" VARCHAR,
	"scope_type_" VARCHAR,
	"scope_definition_id_" VARCHAR,
	"parent_element_id_" VARCHAR,
	"ref_scope_id_" VARCHAR,
	"ref_scope_type_" VARCHAR,
	"ref_scope_definition_id_" VARCHAR,
	"root_scope_id_" VARCHAR,
	"root_scope_type_" VARCHAR,
	"hierarchy_type_" VARCHAR
);

CREATE TABLE "act_ru_entitylink" (
	"id_" VARCHAR,
	"rev_" INTEGER,
	"create_time_" DATETIME,
	"link_type_" VARCHAR,
	"scope_id_" VARCHAR,
	"sub_scope_id_" VARCHAR,
	"scope_type_" VARCHAR,
	"scope_definition_id_" VARCHAR,
	"parent_element_id_" VARCHAR,
	"ref_scope_id_" VARCHAR,
	"ref_scope_type_" VARCHAR,
	"ref_scope_definition_id_" VARCHAR,
	"root_scope_id_" VARCHAR,
	"root_scope_type_" VARCHAR,
	"hierarchy_type_" VARCHAR
);

CREATE TABLE "act_ge_bytearray" (
	"id_" VARCHAR,
	"rev_" INTEGER,
	"name_" VARCHAR,
	"deployment_id_" VARCHAR,
	"bytes_" LONGBLOB,
	"generated_" TINYINT
);

CREATE TABLE "act_ge_property" (
	"name_" VARCHAR,
	"value_" VARCHAR,
	"rev_" INTEGER
);
