DROP DATABASE IF EXISTS "schema1337";
CREATE DATABASE "schema1337";
USE "schema1337";
CREATE TABLE "wordcheck_events" (
	"check_id" INT,
	"projectid" VARCHAR,
	"timestamp" INT,
	"image" VARCHAR,
	"round_id" CHAR,
	"username" VARCHAR,
	"suggestions" TEXT,
	"corrections" TEXT,
	 PRIMARY KEY ("check_id")
);

CREATE TABLE "usersettings" (
	"username" VARCHAR,
	"setting" VARCHAR,
	"value" VARCHAR
);

CREATE TABLE "users" (
	"id" VARCHAR,
	"real_name" VARCHAR,
	"username" VARCHAR,
	"email" VARCHAR,
	"date_created" INT,
	"last_login" INT,
	"t_last_activity" INT,
	"email_updates" TINYINT,
	"referrer" VARCHAR,
	"referrer_details" VARCHAR,
	"http_referrer" VARCHAR,
	"u_neigh" TINYINT,
	"u_align" TINYINT,
	"i_prefs" TINYINT,
	"i_theme" VARCHAR,
	"i_pmdefault" SMALLINT,
	"u_id" INT,
	"u_profile" INT,
	"u_intlang" VARCHAR,
	"u_privacy" TINYINT,
	"api_key" VARCHAR,
	 PRIMARY KEY ("username")
);

CREATE TABLE "user_teams" (
	"id" INT,
	"teamname" VARCHAR,
	"team_info" TEXT,
	"webpage" VARCHAR,
	"createdby" VARCHAR,
	"owner" INT,
	"created" INT,
	"member_count" INT,
	"avatar" VARCHAR,
	"icon" VARCHAR,
	"topic_id" INT,
	"latestuser" MEDIUMINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user_teams_membership" (
	"u_id" INT,
	"t_id" INT,
	 PRIMARY KEY ("u_id","t_id"),
	 CONSTRAINT "fkeycon_user_teams_membership_to_user_teams" FOREIGN KEY ("t_id") REFERENCES "user_teams" ("id")
);

CREATE TABLE "user_project_info" (
	"username" VARCHAR,
	"projectid" VARCHAR,
	"t_latest_home_visit" INT,
	"t_latest_page_event" INT,
	"iste_round_available" TINYINT,
	"iste_round_complete" TINYINT,
	"iste_pp_enter" TINYINT,
	"iste_sr_available" TINYINT,
	"iste_sr_complete" TINYINT,
	"iste_ppv_enter" TINYINT,
	"iste_posted" TINYINT,
	"iste_sr_reported" TINYINT,
	 PRIMARY KEY ("username","projectid")
);

CREATE TABLE "user_profiles" (
	"id" INT,
	"u_ref" INT,
	"profilename" VARCHAR,
	"i_res" TINYINT,
	"i_type" TINYINT,
	"i_layout" TINYINT,
	"i_toolbar" TINYINT,
	"i_statusbar" TINYINT,
	"i_newwin" TINYINT,
	"v_fnts" TINYINT,
	"v_fntf" TINYINT,
	"v_fntf_other" VARCHAR,
	"v_zoom" SMALLINT,
	"v_tframe" TINYINT,
	"v_tlines" TINYINT,
	"v_tchars" TINYINT,
	"v_tscroll" TINYINT,
	"v_twrap" TINYINT,
	"h_fnts" TINYINT,
	"h_fntf" TINYINT,
	"h_fntf_other" VARCHAR,
	"h_zoom" SMALLINT,
	"h_tframe" TINYINT,
	"h_tlines" TINYINT,
	"h_tchars" TINYINT,
	"h_tscroll" TINYINT,
	"h_twrap" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user_filters" (
	"username" VARCHAR,
	"filtertype" VARCHAR,
	"value" TEXT,
	 PRIMARY KEY ("username","filtertype")
);

CREATE TABLE "user_active_log" (
	"year" SMALLINT,
	"month" TINYINT,
	"day" TINYINT,
	"hour" SMALLINT,
	"time_stamp" INT,
	"l_hour" MEDIUMINT,
	"l_day" MEDIUMINT,
	"l_week" MEDIUMINT,
	"l_4wks" MEDIUMINT,
	"a_hour" MEDIUMINT,
	"a_day" MEDIUMINT,
	"a_week" MEDIUMINT,
	"a_4wks" MEDIUMINT,
	"comments" VARCHAR
);

CREATE TABLE "themes" (
	"theme_id" INT,
	"name" VARCHAR,
	"unixname" VARCHAR,
	"created_by" VARCHAR
);

CREATE TABLE "tasks_votes" (
	"id" INT,
	"task_id" MEDIUMINT,
	"u_id" INT,
	"vote_os" TINYINT,
	"vote_browser" TINYINT
);

CREATE TABLE "tasks_related_tasks" (
	"task_id_1" MEDIUMINT,
	"task_id_2" MEDIUMINT,
	 PRIMARY KEY ("task_id_1","task_id_2")
);

CREATE TABLE "tasks_comments" (
	"task_id" MEDIUMINT,
	"u_id" MEDIUMINT,
	"comment_date" INT,
	"comment" MEDIUMTEXT,
	 PRIMARY KEY ("task_id","u_id","comment_date")
);

CREATE TABLE "tasks" (
	"task_id" MEDIUMINT,
	"task_summary" VARCHAR,
	"task_type" TINYINT,
	"task_category" TINYINT,
	"task_status" TINYINT,
	"task_assignee" MEDIUMINT,
	"task_severity" TINYINT,
	"task_priority" TINYINT,
	"task_os" TINYINT,
	"task_browser" TINYINT,
	"task_version" TINYINT,
	"task_details" MEDIUMTEXT,
	"date_opened" INT,
	"opened_by" MEDIUMINT,
	"date_closed" INT,
	"closed_by" MEDIUMINT,
	"closed_reason" TINYINT,
	"date_edited" INT,
	"edited_by" MEDIUMINT,
	"percent_complete" TINYINT,
	"related_postings" MEDIUMTEXT,
	 PRIMARY KEY ("task_id")
);

CREATE TABLE "special_days" (
	"spec_code" VARCHAR,
	"display_name" VARCHAR,
	"enable" TINYINT,
	"comment" VARCHAR,
	"color" VARCHAR,
	"open_day" TINYINT,
	"open_month" TINYINT,
	"close_day" TINYINT,
	"close_month" TINYINT,
	"date_changes" VARCHAR,
	"info_url" VARCHAR,
	"image_url" VARCHAR,
	"symbol" VARCHAR
);

CREATE TABLE "smoothread" (
	"projectid" VARCHAR,
	"user" VARCHAR,
	"committed" TINYINT,
	 PRIMARY KEY ("projectid","user")
);

CREATE TABLE "site_tally_goals" (
	"date" DATE,
	"tally_name" CHAR,
	"goal" INT,
	 PRIMARY KEY ("date","tally_name")
);

CREATE TABLE "sessions" (
	"sid" VARCHAR,
	"expiration" INT,
	"value" TEXT,
	 PRIMARY KEY ("sid")
);

CREATE TABLE "rules" (
	"id" INT,
	"document" VARCHAR,
	"langcode" VARCHAR,
	"anchor" VARCHAR,
	"subject" VARCHAR,
	"rule" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "quiz_passes" (
	"username" VARCHAR,
	"date" INT,
	"quiz_page" VARCHAR,
	"result" VARCHAR
);

CREATE TABLE "queue_defns" (
	"round_id" CHAR,
	"ordering" MEDIUMINT,
	"enabled" TINYINT,
	"name" VARCHAR,
	"project_selector" TEXT,
	"release_criterion" TEXT,
	"comment" TEXT
);

CREATE TABLE "projects" (
	"nameofwork" VARCHAR,
	"authorsname" VARCHAR,
	"language" VARCHAR,
	"username" VARCHAR,
	"comments" TEXT,
	"comment_format" VARCHAR,
	"projectid" VARCHAR,
	"special_code" VARCHAR,
	"checkedoutby" VARCHAR,
	"correctedby" VARCHAR,
	"modifieddate" INT,
	"t_last_edit" INT,
	"t_last_change_comments" INT,
	"t_last_page_done" INT,
	"scannercredit" TINYTEXT,
	"state" VARCHAR,
	"postednum" MEDIUMINT,
	"clearance" TEXT,
	"year" VARCHAR,
	"topic_id" INT,
	"updated" TINYINT,
	"int_level" INT,
	"genre" VARCHAR,
	"difficulty" VARCHAR,
	"archived" TINYINT,
	"postproofer" VARCHAR,
	"postcomments" TEXT,
	"n_pages" SMALLINT,
	"n_available_pages" SMALLINT,
	"ppverifier" VARCHAR,
	"image_source" VARCHAR,
	"image_preparer" VARCHAR,
	"text_preparer" VARCHAR,
	"extra_credits" TINYTEXT,
	"smoothread_deadline" INT,
	"deletion_reason" TINYTEXT,
	"custom_chars" VARCHAR,
	 PRIMARY KEY ("projectid")
);

CREATE TABLE "project_state_stats" (
	"date" DATE,
	"state" VARCHAR,
	"num_projects" INT,
	"num_pages" INT,
	"comments" VARCHAR
);

CREATE TABLE "project_holds" (
	"projectid" VARCHAR,
	"state" VARCHAR,
	"notify_time" INT,
	 PRIMARY KEY ("projectid","state")
);

CREATE TABLE "project_events" (
	"event_id" INT,
	"timestamp" INT,
	"projectid" VARCHAR,
	"who" VARCHAR,
	"event_type" VARCHAR,
	"details1" VARCHAR,
	"details2" VARCHAR,
	"details3" VARCHAR,
	 PRIMARY KEY ("event_id")
);

CREATE TABLE "pg_books" (
	"etext_number" INT,
	"formats" VARCHAR,
	 PRIMARY KEY ("etext_number")
);

CREATE TABLE "past_tallies" (
	"timestamp" INT,
	"holder_type" CHAR,
	"holder_id" INT,
	"tally_name" CHAR,
	"tally_delta" INT,
	"tally_value" INT,
	 PRIMARY KEY ("tally_name","holder_type","holder_id","timestamp")
);

CREATE TABLE "page_events" (
	"event_id" INT,
	"timestamp" INT,
	"projectid" VARCHAR,
	"image" VARCHAR,
	"event_type" VARCHAR,
	"username" VARCHAR,
	"round_id" CHAR,
	 PRIMARY KEY ("event_id")
);

CREATE TABLE "non_activated_users" (
	"id" VARCHAR,
	"real_name" VARCHAR,
	"username" VARCHAR,
	"email" VARCHAR,
	"date_created" INT,
	"email_updates" TINYINT,
	"referrer" VARCHAR,
	"referrer_details" VARCHAR,
	"http_referrer" VARCHAR,
	"u_intlang" VARCHAR,
	"user_password" VARCHAR,
	 PRIMARY KEY ("username")
);

CREATE TABLE "news_pages" (
	"news_page_id" VARCHAR,
	"t_last_change" INT,
	 PRIMARY KEY ("news_page_id")
);

CREATE TABLE "news_items" (
	"id" INT,
	"date_posted" INT,
	"news_page_id" VARCHAR,
	"status" VARCHAR,
	"ordering" SMALLINT,
	"content" TEXT,
	"locale" VARCHAR,
	"header" VARCHAR,
	"item_type" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "marc_records" (
	"projectid" VARCHAR,
	"original_array" TEXT,
	"updated_array" TEXT,
	 PRIMARY KEY ("projectid")
);

CREATE TABLE "job_logs" (
	"filename" VARCHAR,
	"tracetime" INT,
	"event" VARCHAR,
	"comments" VARCHAR
);

CREATE TABLE "image_sources" (
	"code_name" VARCHAR,
	"display_name" VARCHAR,
	"full_name" VARCHAR,
	"info_page_visibility" TINYINT,
	"is_active" TINYINT,
	"url" VARCHAR,
	"credit" VARCHAR,
	"ok_keep_images" TINYINT,
	"ok_show_images" TINYINT,
	"public_comment" VARCHAR,
	"internal_comment" TEXT
);

CREATE TABLE "charsuites" (
	"name" VARCHAR,
	"enabled" TINYINT,
	 PRIMARY KEY ("name")
);

CREATE TABLE "project_charsuites" (
	"projectid" VARCHAR,
	"charsuite_name" VARCHAR,
	 PRIMARY KEY ("projectid","charsuite_name"),
	 CONSTRAINT "charsuite_fk" FOREIGN KEY ("charsuite_name") REFERENCES "charsuites" ("name")
);

CREATE TABLE "current_tallies" (
	"tally_name" CHAR,
	"holder_type" CHAR,
	"holder_id" INT,
	"tally_value" INT,
	 PRIMARY KEY ("tally_name","holder_type","holder_id")
);

CREATE TABLE "biographies" (
	"bio_id" INT,
	"author_id" INT,
	"bio" TEXT,
	"last_modified" TIMESTAMP,
	"bio_format" VARCHAR,
	 PRIMARY KEY ("bio_id")
);

CREATE TABLE "best_tally_rank" (
	"tally_name" CHAR,
	"holder_type" CHAR,
	"holder_id" INT,
	"best_rank" INT,
	"best_rank_timestamp" INT,
	 PRIMARY KEY ("tally_name","holder_type","holder_id")
);

CREATE TABLE "authors" (
	"author_id" MEDIUMINT,
	"other_names" VARCHAR,
	"last_name" VARCHAR,
	"byear" MEDIUMINT,
	"bmonth" TINYINT,
	"bday" TINYINT,
	"bcomments" VARCHAR,
	"dyear" MEDIUMINT,
	"dmonth" TINYINT,
	"dday" TINYINT,
	"dcomments" VARCHAR,
	"enabled" TINYTEXT,
	"last_modified" TIMESTAMP,
	 PRIMARY KEY ("author_id")
);

CREATE TABLE "access_log" (
	"timestamp" INT,
	"subject_username" VARCHAR,
	"modifier_username" VARCHAR,
	"action" VARCHAR,
	"activity" VARCHAR
);
