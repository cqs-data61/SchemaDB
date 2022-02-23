DROP DATABASE IF EXISTS "schema1592";
CREATE DATABASE "schema1592";
USE "schema1592";
CREATE TABLE "zipcodes" (
	"zipcode" MEDIUMINT,
	"city" TINYTEXT,
	"state" VARCHAR,
	"areacode" SMALLINT,
	 PRIMARY KEY ("zipcode")
);

CREATE TABLE "xml_feeds" (
	"xml_feed_id" INT,
	"name" VARCHAR,
	"description" VARCHAR,
	"website" VARCHAR,
	"post_url" VARCHAR,
	"success_string" VARCHAR,
	"xml_template_name" VARCHAR,
	 PRIMARY KEY ("xml_feed_id")
);

CREATE TABLE "xml_feed_submits" (
	"feed_id" INT,
	"feed_site" VARCHAR,
	"feed_url" VARCHAR,
	"date_last_post" DATE,
	 PRIMARY KEY ("feed_id")
);

CREATE TABLE "word_verification" (
	"word_verification_id" INT,
	"word" VARCHAR,
	 PRIMARY KEY ("word_verification_id")
);

CREATE TABLE "user_login" (
	"user_login_id" INT,
	"user_id" INT,
	"site_id" INT,
	"ip" VARCHAR,
	"user_agent" VARCHAR,
	"date" DATETIME,
	"successful" INT,
	"host" VARCHAR,
	"date_refreshed" DATETIME,
	 PRIMARY KEY ("user_login_id")
);

CREATE TABLE "user" (
	"user_id" INT,
	"site_id" INT,
	"user_name" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	"access_level" INT,
	"can_change_password" INT,
	"is_test_user" INT,
	"last_name" VARCHAR,
	"first_name" VARCHAR,
	"is_demo" INT,
	"categories" VARCHAR,
	"session_cookie" VARCHAR,
	"pipeline_entries_per_page" INT,
	"column_preferences" LONGTEXT,
	"force_logout" INT,
	"title" VARCHAR,
	"phone_work" VARCHAR,
	"phone_cell" VARCHAR,
	"phone_other" VARCHAR,
	"address" TEXT,
	"notes" TEXT,
	"company" VARCHAR,
	"city" VARCHAR,
	"state" VARCHAR,
	"zip_code" VARCHAR,
	"country" VARCHAR,
	"can_see_eeo_info" INT,
	 PRIMARY KEY ("user_id")
);

CREATE TABLE "tag" (
	"tag_id" INT,
	"tag_parent_id" INT,
	"title" VARCHAR,
	"description" VARCHAR,
	"site_id" INT,
	"date_created" TIMESTAMP,
	 PRIMARY KEY ("tag_id")
);

CREATE TABLE "system" (
	"system_id" INT,
	"uid" INT,
	"available_version" INT,
	"date_version_checked" DATETIME,
	"available_version_description" TEXT,
	"disable_version_check" INT,
	 PRIMARY KEY ("system_id")
);

CREATE TABLE "sph_counter" (
	"counter_id" INT,
	"max_doc_id" INT,
	 PRIMARY KEY ("counter_id")
);

CREATE TABLE "site" (
	"site_id" INT,
	"name" VARCHAR,
	"is_demo" INT,
	"user_licenses" INT,
	"entered_by" INT,
	"date_created" DATETIME,
	"unix_name" VARCHAR,
	"company_id" INT,
	"is_free" INT,
	"account_active" INT,
	"account_deleted" INT,
	"reason_disabled" TEXT,
	"time_zone" INT,
	"time_format_24" INT,
	"date_format_ddmmyy" INT,
	"is_hr_mode" INT,
	"file_size_kb" INT,
	"page_views" BIGINT,
	"page_view_days" INT,
	"last_viewed_day" DATE,
	"first_time_setup" TINYINT,
	"localization_configured" INT,
	"agreed_to_license" INT,
	"limit_warning" TINYINT,
	 PRIMARY KEY ("site_id")
);

CREATE TABLE "settings" (
	"settings_id" INT,
	"setting" VARCHAR,
	"value" VARCHAR,
	"site_id" INT,
	"settings_type" INT,
	 PRIMARY KEY ("settings_id")
);

CREATE TABLE "saved_search" (
	"search_id" INT,
	"data_item_text" TEXT,
	"url" TEXT,
	"is_custom" INT,
	"data_item_type" INT,
	"user_id" INT,
	"site_id" INT,
	"date_created" DATETIME,
	 PRIMARY KEY ("search_id")
);

CREATE TABLE "saved_list_entry" (
	"saved_list_entry_id" INT,
	"saved_list_id" INT,
	"data_item_type" INT,
	"data_item_id" INT,
	"site_id" INT,
	"date_created" DATETIME,
	 PRIMARY KEY ("saved_list_entry_id")
);

CREATE TABLE "saved_list" (
	"saved_list_id" INT,
	"description" VARCHAR,
	"data_item_type" INT,
	"site_id" INT,
	"is_dynamic" INT,
	"datagrid_instance" VARCHAR,
	"parameters" TEXT,
	"created_by" INT,
	"number_entries" INT,
	"date_created" DATETIME,
	"date_modified" DATETIME,
	 PRIMARY KEY ("saved_list_id")
);

CREATE TABLE "queue" (
	"queue_id" INT,
	"site_id" INT,
	"task" VARCHAR,
	"args" TEXT,
	"priority" TINYINT,
	"date_created" DATETIME,
	"date_timeout" DATETIME,
	"date_completed" DATETIME,
	"locked" TINYINT,
	"error" TINYINT,
	"response" VARCHAR,
	 PRIMARY KEY ("queue_id")
);

CREATE TABLE "mru" (
	"mru_id" INT,
	"user_id" INT,
	"site_id" INT,
	"data_item_type" INT,
	"data_item_text" VARCHAR,
	"url" VARCHAR,
	"date_created" DATETIME,
	 PRIMARY KEY ("mru_id")
);

CREATE TABLE "module_schema" (
	"module_schema_id" INT,
	"name" VARCHAR,
	"version" INT,
	 PRIMARY KEY ("module_schema_id")
);

CREATE TABLE "joborder" (
	"joborder_id" INT,
	"recruiter" INT,
	"contact_id" INT,
	"company_id" INT,
	"entered_by" INT,
	"owner" INT,
	"site_id" INT,
	"client_job_id" VARCHAR,
	"title" VARCHAR,
	"description" TEXT,
	"notes" TEXT,
	"type" VARCHAR,
	"duration" VARCHAR,
	"rate_max" VARCHAR,
	"salary" VARCHAR,
	"status" VARCHAR,
	"is_hot" INT,
	"openings" INT,
	"city" VARCHAR,
	"state" VARCHAR,
	"start_date" DATETIME,
	"date_created" DATETIME,
	"date_modified" DATETIME,
	"public" INT,
	"company_department_id" INT,
	"is_admin_hidden" INT,
	"openings_available" INT,
	"questionnaire_id" INT,
	"import_id" INT,
	 PRIMARY KEY ("joborder_id")
);

CREATE TABLE "installtest" (
	"id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "import" (
	"import_id" INT,
	"module_name" VARCHAR,
	"reverted" INT,
	"site_id" INT,
	"import_errors" TEXT,
	"added_lines" INT,
	"date_created" DATETIME,
	 PRIMARY KEY ("import_id")
);

CREATE TABLE "http_log_types" (
	"log_type_id" INT,
	"name" VARCHAR,
	"description" VARCHAR,
	"default_log_type" TINYINT,
	 PRIMARY KEY ("log_type_id")
);

CREATE TABLE "http_log" (
	"log_id" INT,
	"site_id" INT,
	"remote_addr" CHAR,
	"http_user_agent" VARCHAR,
	"script_filename" VARCHAR,
	"request_method" VARCHAR,
	"query_string" VARCHAR,
	"request_uri" VARCHAR,
	"script_name" VARCHAR,
	"log_type" INT,
	"date" DATETIME,
	 PRIMARY KEY ("log_id")
);

CREATE TABLE "history" (
	"history_id" INT,
	"data_item_type" INT,
	"data_item_id" INT,
	"the_field" VARCHAR,
	"previous_value" TEXT,
	"new_value" TEXT,
	"description" VARCHAR,
	"set_date" DATETIME,
	"entered_by" INT,
	"site_id" INT,
	 PRIMARY KEY ("history_id")
);

CREATE TABLE "feedback" (
	"feedback_id" INT,
	"user_id" INT,
	"site_id" INT,
	"date_created" DATETIME,
	"subject" VARCHAR,
	"reply_to_address" VARCHAR,
	"reply_to_name" VARCHAR,
	"feedback" TEXT,
	"archived" INT,
	 PRIMARY KEY ("feedback_id")
);

CREATE TABLE "extra_field_settings" (
	"extra_field_settings_id" INT,
	"field_name" VARCHAR,
	"import_id" INT,
	"site_id" INT,
	"date_created" DATETIME,
	"data_item_type" INT,
	"extra_field_type" INT,
	"extra_field_options" TEXT,
	"position" INT,
	 PRIMARY KEY ("extra_field_settings_id")
);

CREATE TABLE "extra_field" (
	"extra_field_id" INT,
	"data_item_id" INT,
	"field_name" VARCHAR,
	"value" TEXT,
	"import_id" INT,
	"site_id" INT,
	"data_item_type" INT,
	 PRIMARY KEY ("extra_field_id")
);

CREATE TABLE "extension_statistics" (
	"extension_statistics_id" INT,
	"extension" VARCHAR,
	"action" VARCHAR,
	"user" VARCHAR,
	"date" DATE,
	 PRIMARY KEY ("extension_statistics_id")
);

CREATE TABLE "email_template" (
	"email_template_id" INT,
	"text" TEXT,
	"allow_substitution" INT,
	"site_id" INT,
	"tag" VARCHAR,
	"title" VARCHAR,
	"possible_variables" TEXT,
	"disabled" INT,
	 PRIMARY KEY ("email_template_id")
);

CREATE TABLE "email_history" (
	"email_history_id" INT,
	"from_address" VARCHAR,
	"recipients" TEXT,
	"text" TEXT,
	"user_id" INT,
	"site_id" INT,
	"date" DATETIME,
	 PRIMARY KEY ("email_history_id")
);

CREATE TABLE "eeo_veteran_type" (
	"eeo_veteran_type_id" INT,
	"type" VARCHAR,
	 PRIMARY KEY ("eeo_veteran_type_id")
);

CREATE TABLE "eeo_ethnic_type" (
	"eeo_ethnic_type_id" INT,
	"type" VARCHAR,
	 PRIMARY KEY ("eeo_ethnic_type_id")
);

CREATE TABLE "data_item_type" (
	"data_item_type_id" INT,
	"short_description" VARCHAR,
	 PRIMARY KEY ("data_item_type_id")
);

CREATE TABLE "contact" (
	"contact_id" INT,
	"company_id" INT,
	"site_id" INT,
	"last_name" VARCHAR,
	"first_name" VARCHAR,
	"title" VARCHAR,
	"email1" VARCHAR,
	"email2" VARCHAR,
	"phone_work" VARCHAR,
	"phone_cell" VARCHAR,
	"phone_other" VARCHAR,
	"address" TEXT,
	"city" VARCHAR,
	"state" VARCHAR,
	"zip" VARCHAR,
	"is_hot" INT,
	"notes" TEXT,
	"entered_by" INT,
	"owner" INT,
	"date_created" DATETIME,
	"date_modified" DATETIME,
	"left_company" INT,
	"import_id" INT,
	"company_department_id" INT,
	"reports_to" INT,
	 PRIMARY KEY ("contact_id")
);

CREATE TABLE "company_department" (
	"company_department_id" INT,
	"name" VARCHAR,
	"company_id" INT,
	"site_id" INT,
	"date_created" DATETIME,
	"created_by" INT,
	 PRIMARY KEY ("company_department_id")
);

CREATE TABLE "company" (
	"company_id" INT,
	"site_id" INT,
	"billing_contact" INT,
	"name" VARCHAR,
	"address" TEXT,
	"city" VARCHAR,
	"state" VARCHAR,
	"zip" VARCHAR,
	"phone1" VARCHAR,
	"phone2" VARCHAR,
	"url" VARCHAR,
	"key_technologies" TEXT,
	"notes" TEXT,
	"entered_by" INT,
	"owner" INT,
	"date_created" DATETIME,
	"date_modified" DATETIME,
	"is_hot" INT,
	"fax_number" VARCHAR,
	"import_id" INT,
	"default_company" INT,
	 PRIMARY KEY ("company_id")
);

CREATE TABLE "career_portal_template_site" (
	"career_portal_template_id" INT,
	"career_portal_name" VARCHAR,
	"site_id" INT,
	"setting" VARCHAR,
	"value" TEXT,
	 PRIMARY KEY ("career_portal_template_id")
);

CREATE TABLE "career_portal_template" (
	"career_portal_template_id" INT,
	"career_portal_name" VARCHAR,
	"setting" VARCHAR,
	"value" TEXT,
	 PRIMARY KEY ("career_portal_template_id")
);

CREATE TABLE "career_portal_questionnaire_question" (
	"career_portal_questionnaire_question_id" INT,
	"career_portal_questionnaire_id" INT,
	"text" VARCHAR,
	"minimum_length" INT,
	"maximum_length" INT,
	"required" TINYINT,
	"position" INT,
	"site_id" INT,
	"type" INT,
	 PRIMARY KEY ("career_portal_questionnaire_question_id")
);

CREATE TABLE "career_portal_questionnaire_history" (
	"career_portal_questionnaire_history_id" INT,
	"site_id" INT,
	"candidate_id" INT,
	"question" VARCHAR,
	"answer" VARCHAR,
	"questionnaire_title" VARCHAR,
	"questionnaire_description" VARCHAR,
	"date" DATETIME,
	 PRIMARY KEY ("career_portal_questionnaire_history_id")
);

CREATE TABLE "career_portal_questionnaire_answer" (
	"career_portal_questionnaire_answer_id" INT,
	"career_portal_questionnaire_question_id" INT,
	"career_portal_questionnaire_id" INT,
	"text" VARCHAR,
	"action_source" VARCHAR,
	"action_notes" TEXT,
	"action_is_hot" TINYINT,
	"action_is_active" TINYINT,
	"action_can_relocate" TINYINT,
	"action_key_skills" VARCHAR,
	"position" INT,
	"site_id" INT,
	 PRIMARY KEY ("career_portal_questionnaire_answer_id")
);

CREATE TABLE "career_portal_questionnaire" (
	"career_portal_questionnaire_id" INT,
	"title" VARCHAR,
	"site_id" INT,
	"description" VARCHAR,
	"is_active" TINYINT,
	 PRIMARY KEY ("career_portal_questionnaire_id")
);

CREATE TABLE "candidate_tag" (
	"id" INT,
	"site_id" INT,
	"candidate_id" INT,
	"tag_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "candidate_source" (
	"source_id" INT,
	"name" VARCHAR,
	"site_id" INT,
	"date_created" DATETIME,
	 PRIMARY KEY ("source_id")
);

CREATE TABLE "candidate_jobordrer_status_type" (
	"candidate_status_type_id" INT,
	"short_description" VARCHAR,
	"can_be_scheduled" INT,
	 PRIMARY KEY ("candidate_status_type_id")
);

CREATE TABLE "candidate_joborder_status_history" (
	"candidate_joborder_status_history_id" INT,
	"candidate_id" INT,
	"joborder_id" INT,
	"date" DATETIME,
	"status_from" INT,
	"status_to" INT,
	"site_id" INT,
	 PRIMARY KEY ("candidate_joborder_status_history_id")
);

CREATE TABLE "candidate_joborder_status" (
	"candidate_joborder_status_id" INT,
	"short_description" VARCHAR,
	"can_be_scheduled" INT,
	"triggers_email" INT,
	"is_enabled" INT,
	 PRIMARY KEY ("candidate_joborder_status_id")
);

CREATE TABLE "candidate_joborder" (
	"candidate_joborder_id" INT,
	"candidate_id" INT,
	"joborder_id" INT,
	"site_id" INT,
	"status" INT,
	"date_submitted" DATETIME,
	"date_created" DATETIME,
	"date_modified" DATETIME,
	"rating_value" INT,
	"added_by" INT,
	 PRIMARY KEY ("candidate_joborder_id")
);

CREATE TABLE "candidate_duplicates" (
	"old_candidate_id" INT,
	"new_candidate_id" INT,
	"site_id" INT,
	 PRIMARY KEY ("old_candidate_id","new_candidate_id")
);

CREATE TABLE "candidate" (
	"candidate_id" INT,
	"site_id" INT,
	"last_name" VARCHAR,
	"first_name" VARCHAR,
	"middle_name" VARCHAR,
	"phone_home" VARCHAR,
	"phone_cell" VARCHAR,
	"phone_work" VARCHAR,
	"address" TEXT,
	"city" VARCHAR,
	"state" VARCHAR,
	"zip" VARCHAR,
	"source" VARCHAR,
	"date_available" DATETIME,
	"can_relocate" INT,
	"notes" TEXT,
	"key_skills" TEXT,
	"current_employer" VARCHAR,
	"entered_by" INT,
	"owner" INT,
	"date_created" DATETIME,
	"date_modified" DATETIME,
	"email1" VARCHAR,
	"email2" VARCHAR,
	"web_site" VARCHAR,
	"import_id" INT,
	"is_hot" INT,
	"eeo_ethnic_type_id" INT,
	"eeo_veteran_type_id" INT,
	"eeo_disability_status" VARCHAR,
	"eeo_gender" VARCHAR,
	"desired_pay" VARCHAR,
	"current_pay" VARCHAR,
	"is_active" INT,
	"is_admin_hidden" INT,
	"best_time_to_call" VARCHAR,
	 PRIMARY KEY ("candidate_id")
);

CREATE TABLE "calendar_event_type" (
	"calendar_event_type_id" INT,
	"short_description" VARCHAR,
	"icon_image" VARCHAR,
	 PRIMARY KEY ("calendar_event_type_id")
);

CREATE TABLE "calendar_event" (
	"calendar_event_id" INT,
	"type" INT,
	"date" DATETIME,
	"title" TEXT,
	"all_day" INT,
	"data_item_id" INT,
	"data_item_type" INT,
	"entered_by" INT,
	"date_created" DATETIME,
	"date_modified" DATETIME,
	"site_id" INT,
	"joborder_id" INT,
	"description" TEXT,
	"duration" INT,
	"reminder_enabled" INT,
	"reminder_email" TEXT,
	"reminder_time" INT,
	"public" INT,
	 PRIMARY KEY ("calendar_event_id")
);

CREATE TABLE "attachment" (
	"attachment_id" INT,
	"data_item_id" INT,
	"data_item_type" INT,
	"site_id" INT,
	"title" VARCHAR,
	"original_filename" VARCHAR,
	"stored_filename" VARCHAR,
	"content_type" VARCHAR,
	"resume" INT,
	"text" TEXT,
	"date_created" DATETIME,
	"date_modified" DATETIME,
	"profile_image" INT,
	"directory_name" VARCHAR,
	"md5_sum" VARCHAR,
	"file_size_kb" INT,
	"md5_sum_text" VARCHAR,
	 PRIMARY KEY ("attachment_id")
);

CREATE TABLE "activity_type" (
	"activity_type_id" INT,
	"short_description" VARCHAR,
	 PRIMARY KEY ("activity_type_id")
);

CREATE TABLE "activity" (
	"activity_id" INT,
	"data_item_id" INT,
	"data_item_type" INT,
	"joborder_id" INT,
	"site_id" INT,
	"entered_by" INT,
	"date_created" DATETIME,
	"type" INT,
	"notes" TEXT,
	"date_modified" DATETIME,
	 PRIMARY KEY ("activity_id")
);

CREATE TABLE "access_level" (
	"access_level_id" INT,
	"short_description" VARCHAR,
	"long_description" TEXT,
	 PRIMARY KEY ("access_level_id")
);
