DROP DATABASE IF EXISTS "schema2276";
CREATE DATABASE "schema2276";
USE "schema2276";
CREATE TABLE "project_client_po" (
	"id" BIGINT,
	"project_id" BIGINT,
	"batch_id" INT,
	"kind" INT,
	"remark" VARCHAR,
	"status" INT,
	"create_id" INT,
	"created_at" TIMESTAMP,
	"updated_id" INT,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "project_other_task_message_reply_d" (
	"id" BIGINT,
	"message_id" BIGINT,
	"reply_id" INT,
	"status" INT,
	"message" VARCHAR,
	"create_id" INT,
	"created_at" TIMESTAMP,
	"updated_id" INT,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "project_other_task_message_d" (
	"id" BIGINT,
	"task_id" BIGINT,
	"parent_id" INT,
	"status" INT,
	"message" VARCHAR,
	"create_id" INT,
	"created_at" TIMESTAMP,
	"updated_id" INT,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "project_other_task_d" (
	"id" BIGINT,
	"stage_id" BIGINT,
	"title" VARCHAR,
	"priority" INT,
	"due_date" VARCHAR,
	"due_time" VARCHAR,
	"assignee" VARCHAR,
	"collaborator" VARCHAR,
	"status" INT,
	"type" VARCHAR,
	"detail" VARCHAR,
	"create_id" INT,
	"created_at" TIMESTAMP,
	"updated_id" INT,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "project_other_task_message_reply_a" (
	"id" BIGINT,
	"message_id" BIGINT,
	"reply_id" INT,
	"status" INT,
	"message" VARCHAR,
	"create_id" INT,
	"created_at" TIMESTAMP,
	"updated_id" INT,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "project_other_task_message_a" (
	"id" BIGINT,
	"task_id" BIGINT,
	"parent_id" INT,
	"status" INT,
	"message" VARCHAR,
	"create_id" INT,
	"created_at" TIMESTAMP,
	"updated_id" INT,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "project_other_task_a" (
	"id" BIGINT,
	"stage_id" BIGINT,
	"title" VARCHAR,
	"priority" INT,
	"due_date" VARCHAR,
	"due_time" VARCHAR,
	"assignee" VARCHAR,
	"collaborator" VARCHAR,
	"status" INT,
	"type" VARCHAR,
	"detail" VARCHAR,
	"create_id" INT,
	"created_at" TIMESTAMP,
	"updated_id" INT,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "password_reset" (
	"id" BIGINT,
	"email" VARCHAR,
	"token" VARCHAR,
	"status" INT,
	"create_id" INT,
	"created_at" TIMESTAMP,
	"updated_id" INT,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "template_library" (
	"id" BIGINT,
	"title_id" BIGINT,
	"salary" VARCHAR,
	"kpi" VARCHAR,
	"status" INT,
	"create_id" INT,
	"created_at" TIMESTAMP,
	"updated_id" INT,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "performance_review_detail" (
	"id" BIGINT,
	"review_id" BIGINT,
	"review_type" INT,
	"review_question_id" BIGINT,
	"score" INT,
	"option" VARCHAR,
	"status" INT,
	"create_id" INT,
	"created_at" TIMESTAMP,
	"updated_id" INT,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "performance_review" (
	"id" BIGINT,
	"template_id" BIGINT,
	"user_id" BIGINT,
	"review_month" VARCHAR,
	"status" INT,
	"create_id" INT,
	"created_at" TIMESTAMP,
	"updated_id" INT,
	"updated_at" TIMESTAMP,
	"user_complete_at" TIMESTAMP,
	"manager_complete_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "performance_template_detail" (
	"id" BIGINT,
	"template_id" BIGINT,
	"type" INT,
	"order" INT,
	"category" VARCHAR,
	"criterion" VARCHAR,
	"status" INT,
	"create_id" INT,
	"created_at" TIMESTAMP,
	"updated_id" INT,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "performance_template" (
	"id" BIGINT,
	"title_id" BIGINT,
	"version" VARCHAR,
	"status" INT,
	"create_id" INT,
	"created_at" TIMESTAMP,
	"updated_id" INT,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "project_approve" (
	"id" BIGINT,
	"project_id" BIGINT,
	"batch_id" INT,
	"final_approve" INT,
	"remark" VARCHAR,
	"status" INT,
	"create_id" INT,
	"created_at" TIMESTAMP,
	"updated_id" INT,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "petty_history" (
	"id" BIGINT,
	"petty_id" BIGINT,
	"actor" VARCHAR,
	"action" VARCHAR,
	"reason" VARCHAR,
	"status" INT,
	"created_at" TIMESTAMP,
	"updated_id" INT,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "petty_list" (
	"id" BIGINT,
	"petty_id" BIGINT,
	"sn" INT,
	"payee" VARCHAR,
	"particulars" VARCHAR,
	"price" DECIMAL,
	"qty" INT,
	"status" INT,
	"created_at" TIMESTAMP,
	"updated_id" INT,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "apply_for_petty" (
	"id" BIGINT,
	"uid" BIGINT,
	"request_no" VARCHAR,
	"date_requested" VARCHAR,
	"request_type" VARCHAR,
	"project_name" VARCHAR,
	"payable_to" BIGINT,
	"payable_other" VARCHAR,
	"remark" VARCHAR,
	"approval_id" BIGINT,
	"approval_at" TIMESTAMP,
	"reject_reason" VARCHAR,
	"reject_at" TIMESTAMP,
	"re_approval_id" BIGINT,
	"re_approval_at" TIMESTAMP,
	"re_reject_reason" VARCHAR,
	"re_reject_at" TIMESTAMP,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"status" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "expense_flow" (
	"id" BIGINT,
	"uid" BIGINT,
	"apartment_id" BIGINT,
	"flow" BIGINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"status" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "project_key_person" (
	"id" BIGINT,
	"project_id" BIGINT,
	"status" INT,
	"type" VARCHAR,
	"name" VARCHAR,
	"number" VARCHAR,
	"create_id" INT,
	"created_at" TIMESTAMP,
	"updated_id" INT,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "project_party_contactor" (
	"id" BIGINT,
	"project_id" BIGINT,
	"status" INT,
	"type" VARCHAR,
	"name" VARCHAR,
	"number" VARCHAR,
	"create_id" INT,
	"created_at" TIMESTAMP,
	"updated_id" INT,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "project_quotation" (
	"id" BIGINT,
	"project_id" BIGINT,
	"remark" VARCHAR,
	"pic_url" VARCHAR,
	"doc_url" VARCHAR,
	"status" INT,
	"create_id" INT,
	"created_at" TIMESTAMP,
	"updated_id" INT,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "work_calendar_meetings" (
	"id" BIGINT,
	"subject" VARCHAR,
	"message" VARCHAR,
	"attendee" VARCHAR,
	"start_time" TIMESTAMP,
	"end_time" TIMESTAMP,
	"is_enabled" BOOL,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	"created_by" VARCHAR,
	"updated_by" VARCHAR,
	"deleted_by" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "work_calendar_messages" (
	"id" BIGINT,
	"message" VARCHAR,
	"is_enabled" BOOL,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	"created_by" VARCHAR,
	"updated_by" VARCHAR,
	"deleted_by" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "work_calendar_details" (
	"id" BIGINT,
	"location" VARCHAR,
	"appoint_time" TIMESTAMP,
	"end_time" TIMESTAMP,
	"agenda" VARCHAR,
	"is_enabled" BOOL,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	"created_by" VARCHAR,
	"updated_by" VARCHAR,
	"deleted_by" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "work_calendar_main" (
	"id" BIGINT,
	"title" VARCHAR,
	"start_time" TIMESTAMP,
	"end_time" TIMESTAMP,
	"color" VARCHAR,
	"text_color" VARCHAR,
	"project" VARCHAR,
	"sales_executive" VARCHAR,
	"project_in_charge" VARCHAR,
	"installer_needed" VARCHAR,
	"installer_needed_location" VARCHAR,
	"things_to_bring" VARCHAR,
	"things_to_bring_location" VARCHAR,
	"products_to_bring" VARCHAR,
	"products_to_bring_files" VARCHAR,
	"service" VARCHAR,
	"driver" VARCHAR,
	"back_up_driver" VARCHAR,
	"photoshoot_request" BOOL,
	"notes" VARCHAR,
	"is_enabled" BOOL,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	"created_by" VARCHAR,
	"updated_by" VARCHAR,
	"deleted_by" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "project_other_task_message_reply_r" (
	"id" BIGINT,
	"message_id" BIGINT,
	"status" INT,
	"message" VARCHAR,
	"create_id" INT,
	"created_at" TIMESTAMP,
	"updated_id" INT,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "project_other_task_message_r" (
	"id" BIGINT,
	"task_id" BIGINT,
	"status" INT,
	"message" VARCHAR,
	"create_id" INT,
	"created_at" TIMESTAMP,
	"updated_id" INT,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "project_other_task_r" (
	"id" BIGINT,
	"stage_id" BIGINT,
	"title" VARCHAR,
	"priority" INT,
	"due_date" VARCHAR,
	"assignee" VARCHAR,
	"collaborator" VARCHAR,
	"status" INT,
	"type" VARCHAR,
	"detail" VARCHAR,
	"create_id" INT,
	"created_at" TIMESTAMP,
	"updated_id" INT,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "project_other_task_message_reply" (
	"id" BIGINT,
	"message_id" BIGINT,
	"status" INT,
	"message" VARCHAR,
	"create_id" INT,
	"created_at" TIMESTAMP,
	"updated_id" INT,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "project_other_task_message" (
	"id" BIGINT,
	"task_id" BIGINT,
	"status" INT,
	"message" VARCHAR,
	"create_id" INT,
	"created_at" TIMESTAMP,
	"updated_id" INT,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "project_other_task" (
	"id" BIGINT,
	"stage_id" BIGINT,
	"title" VARCHAR,
	"priority" INT,
	"due_date" VARCHAR,
	"assignee" VARCHAR,
	"collaborator" VARCHAR,
	"status" INT,
	"type" VARCHAR,
	"detail" VARCHAR,
	"create_id" INT,
	"created_at" TIMESTAMP,
	"updated_id" INT,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "project_stage_client_task_comment" (
	"id" BIGINT,
	"task_id" BIGINT,
	"status" INT,
	"type" VARCHAR,
	"message" VARCHAR,
	"create_id" INT,
	"created_at" TIMESTAMP,
	"updated_id" INT,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "project_stage_client_task" (
	"id" BIGINT,
	"stage_id" BIGINT,
	"status" INT,
	"type" VARCHAR,
	"message" VARCHAR,
	"create_id" INT,
	"created_at" TIMESTAMP,
	"updated_id" INT,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "project_stage_client" (
	"id" BIGINT,
	"stage_id" BIGINT,
	"status" INT,
	"type" VARCHAR,
	"message" VARCHAR,
	"option" INT,
	"create_id" INT,
	"created_at" TIMESTAMP,
	"updated_id" INT,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "project_edit_stage" (
	"id" BIGINT,
	"stage_id" BIGINT,
	"status" INT,
	"reason" VARCHAR,
	"create_id" INT,
	"created_at" TIMESTAMP,
	"updated_id" INT,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "gcp_storage_file" (
	"id" BIGINT,
	"batch_id" BIGINT,
	"batch_type" VARCHAR,
	"bucketname" VARCHAR,
	"filename" VARCHAR,
	"gcp_name" VARCHAR,
	"gcp_msg" VARCHAR,
	"create_id" INT,
	"created_at" TIMESTAMP,
	"status" INT,
	"updated_id" INT,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "project_action_detail" (
	"id" BIGINT,
	"project_id" BIGINT,
	"detail_type" VARCHAR,
	"detail_desc" VARCHAR,
	"status" INT,
	"create_id" INT,
	"created_at" TIMESTAMP,
	"updated_id" INT,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "project_est_prob" (
	"id" BIGINT,
	"project_id" BIGINT,
	"prob" INT,
	"status" INT,
	"comment" VARCHAR,
	"create_id" INT,
	"created_at" TIMESTAMP,
	"updated_id" INT,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "project_action_comment" (
	"id" BIGINT,
	"project_id" BIGINT,
	"status" INT,
	"comment" VARCHAR,
	"picname1" VARCHAR,
	"picname2" VARCHAR,
	"create_id" INT,
	"created_at" TIMESTAMP,
	"updated_id" INT,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "project_edit_info" (
	"id" BIGINT,
	"project_id" BIGINT,
	"status" INT,
	"reason" VARCHAR,
	"create_id" INT,
	"created_at" TIMESTAMP,
	"updated_id" INT,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "price_record" (
	"id" BIGINT,
	"account" INT,
	"category" VARCHAR,
	"sub_category" VARCHAR,
	"related_account" VARCHAR,
	"details" VARCHAR,
	"pic_url" VARCHAR,
	"payee" VARCHAR,
	"paid_date" TIMESTAMP,
	"cash_in" BIGINT,
	"cash_out" BIGINT,
	"remarks" VARCHAR,
	"is_locked" BOOL,
	"is_enabled" BOOL,
	"is_marked" BOOL,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	"created_by" VARCHAR,
	"updated_by" VARCHAR,
	"deleted_by" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "project_statuses" (
	"id" BIGINT,
	"project_id" BIGINT,
	"status" INT,
	"reason" VARCHAR,
	"create_id" INT,
	"created_at" TIMESTAMP,
	"updated_id" INT,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "project_stages" (
	"id" BIGINT,
	"project_id" BIGINT,
	"sequence" BIGINT,
	"stage_id" BIGINT,
	"stages_status_id" BIGINT,
	"status" INT,
	"create_id" INT,
	"created_at" TIMESTAMP,
	"updated_id" INT,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "project_proof" (
	"id" BIGINT,
	"project_id" BIGINT,
	"remark" VARCHAR,
	"pic_url" VARCHAR,
	"doc_url" VARCHAR,
	"status" INT,
	"create_id" INT,
	"created_at" TIMESTAMP,
	"updated_id" INT,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "project_detail" (
	"id" BIGINT,
	"project_id" BIGINT,
	"type_id" BIGINT,
	"description" VARCHAR,
	"pic_url" VARCHAR,
	"doc_url" VARCHAR,
	"status" INT,
	"create_id" INT,
	"created_at" TIMESTAMP,
	"updated_id" INT,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "project_probability" (
	"id" BIGINT,
	"project_id" BIGINT,
	"probability" INT,
	"reason" VARCHAR,
	"status" INT,
	"create_id" INT,
	"created_at" TIMESTAMP,
	"updated_id" INT,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "project_comments" (
	"id" BIGINT,
	"project_id" BIGINT,
	"comment" VARCHAR,
	"status" INT,
	"create_id" INT,
	"created_at" TIMESTAMP,
	"updated_id" INT,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "project_main" (
	"id" BIGINT,
	"catagory_id" BIGINT,
	"client_type_id" BIGINT,
	"priority_id" BIGINT,
	"project_status_id" BIGINT,
	"stage_id" BIGINT,
	"project_name" VARCHAR,
	"status" INT,
	"estimate_close_prob" INT,
	"create_id" INT,
	"created_at" TIMESTAMP,
	"updated_id" INT,
	"updated_at" TIMESTAMP,
	"period_start" VARCHAR,
	"period_end" VARCHAR,
	"close_reason" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "project_stage" (
	"id" BIGINT,
	"stage" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"status" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "project_status" (
	"id" BIGINT,
	"project_status" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"status" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "project_priority" (
	"id" BIGINT,
	"priority" VARCHAR,
	"class_name" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"status" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "project_client_type" (
	"id" BIGINT,
	"client_type" VARCHAR,
	"class_name" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"status" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "project_category" (
	"id" BIGINT,
	"category" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"status" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "mail_log" (
	"id" BIGINT,
	"approve" VARCHAR,
	"content" VARCHAR,
	"login_time" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "leave_flow" (
	"id" BIGINT,
	"uid" BIGINT,
	"apartment_id" BIGINT,
	"flow" BIGINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"status" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "leave" (
	"id" BIGINT,
	"uid" BIGINT,
	"apply_id" BIGINT,
	"apply_date" VARCHAR,
	"apply_period" VARCHAR,
	"leave_type" VARCHAR,
	"duration" DECIMAL,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"status" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "holiday" (
	"id" BIGINT,
	"holiday" VARCHAR,
	"from_date" VARCHAR,
	"year" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "apply_for_leave" (
	"id" BIGINT,
	"uid" BIGINT,
	"start_date" VARCHAR,
	"start_time" VARCHAR,
	"end_date" VARCHAR,
	"end_time" VARCHAR,
	"leave_type" VARCHAR,
	"leave" DECIMAL,
	"pic_url" VARCHAR,
	"reason" VARCHAR,
	"approval_id" BIGINT,
	"approval_at" TIMESTAMP,
	"reject_reason" VARCHAR,
	"reject_at" TIMESTAMP,
	"re_approval_id" BIGINT,
	"re_approval_at" TIMESTAMP,
	"re_reject_reason" VARCHAR,
	"re_reject_at" TIMESTAMP,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"status" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user_title" (
	"id" BIGINT,
	"department_id" BIGINT,
	"title" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"status" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user_department" (
	"id" BIGINT,
	"department" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"status" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "on_duty" (
	"id" BIGINT,
	"uid" BIGINT,
	"duty_date" VARCHAR,
	"duty_type" VARCHAR,
	"location" VARCHAR,
	"remark" VARCHAR,
	"duty_time" VARCHAR,
	"explain" VARCHAR,
	"pic_url" VARCHAR,
	"pic_time" VARCHAR,
	"pic_lat" DECIMAL,
	"pic_lng" DECIMAL,
	"pic_server_time" VARCHAR,
	"pic_server_lat" DECIMAL,
	"pic_server_lng" DECIMAL,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"status" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "login_history" (
	"id" BIGINT,
	"uid" BIGINT,
	"status" VARCHAR,
	"ip" VARCHAR,
	"login_time" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user" (
	"id" BIGINT,
	"username" VARCHAR,
	"email" VARCHAR,
	"email_verified_at" TIMESTAMP,
	"password" VARCHAR,
	"remember_token" VARCHAR,
	"apartment_id" INT,
	"title_id" INT,
	"pic_url" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"status" INT,
	"is_admin" VARCHAR,
	 PRIMARY KEY ("id")
);
