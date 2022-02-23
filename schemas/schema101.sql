DROP DATABASE IF EXISTS "schema101";
CREATE DATABASE "schema101";
USE "schema101";
CREATE TABLE "tool_settings" (
	"id" INTEGER,
	"key" CHARACTER VARYING,
	"value" TEXT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "json_cache" (
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"id" INTEGER,
	"key" CHARACTER VARYING,
	"json" LONGTEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "university_depts" (
	"id" INTEGER,
	"dept_code" VARCHAR,
	"dept_name" VARCHAR,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "topics" (
	"id" INTEGER,
	"topic" VARCHAR,
	"created_at" DATETIME,
	"deleted_at" DATETIME,
	"available_in_notes" BOOLEAN,
	"available_in_appointments" BOOLEAN,
	 PRIMARY KEY ("id")
);

CREATE TABLE "notes" (
	"id" INTEGER,
	"author_uid" VARCHAR,
	"author_name" VARCHAR,
	"author_role" VARCHAR,
	"author_dept_codes" VARCHAR,
	"sid" VARCHAR,
	"subject" VARCHAR,
	"body" TEXT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"deleted_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "note_attachments" (
	"id" INTEGER,
	"note_id" INTEGER,
	"path_to_attachment" CHARACTER VARYING,
	"uploaded_by_uid" CHARACTER VARYING,
	"created_at" DATETIME,
	"deleted_at" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "note_attachments_note_id_fkey" FOREIGN KEY ("note_id") REFERENCES "notes" ("id")
);

CREATE TABLE "manually_added_advisees" (
	"sid" CHARACTER VARYING,
	"created_at" DATETIME,
	 PRIMARY KEY ("sid")
);

CREATE TABLE "authorized_users" (
	"can_access_advising_data" BOOLEAN,
	"can_access_canvas_data" BOOLEAN,
	"created_at" DATETIME,
	"created_by" CHARACTER VARYING,
	"degree_progress_permission" ENUM,
	"deleted_at" DATETIME,
	"id" INTEGER,
	"in_demo_mode" BOOLEAN,
	"is_admin" BOOLEAN,
	"is_blocked" BOOLEAN,
	"search_history" CHARACTER VARYING,
	"uid" CHARACTER VARYING,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "note_topics" (
	"id" INTEGER,
	"note_id" INTEGER,
	"topic" VARCHAR,
	"author_uid" VARCHAR,
	"deleted_at" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "note_topics_author_uid_fkey" FOREIGN KEY ("author_uid") REFERENCES "authorized_users" ("uid"),
	 CONSTRAINT "note_topics_note_id_fkey" FOREIGN KEY ("note_id") REFERENCES "notes" ("id")
);

CREATE TABLE "note_templates" (
	"id" INTEGER,
	"creator_id" INTEGER,
	"title" VARCHAR,
	"subject" VARCHAR,
	"body" TEXT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"deleted_at" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "note_templates_creator_id_fkey" FOREIGN KEY ("creator_id") REFERENCES "authorized_users" ("id")
);

CREATE TABLE "note_template_topics" (
	"id" INTEGER,
	"note_template_id" INTEGER,
	"topic" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "note_template_topics_note_template_id_fkey" FOREIGN KEY ("note_template_id") REFERENCES "note_templates" ("id")
);

CREATE TABLE "note_template_attachments" (
	"id" INTEGER,
	"note_template_id" INTEGER,
	"path_to_attachment" CHARACTER VARYING,
	"uploaded_by_uid" CHARACTER VARYING,
	"created_at" DATETIME,
	"deleted_at" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "note_template_attachments_note_template_id_fkey" FOREIGN KEY ("note_template_id") REFERENCES "note_templates" ("id")
);

CREATE TABLE "notes_read" (
	"note_id" CHARACTER VARYING,
	"viewer_id" INTEGER,
	"created_at" DATETIME,
	 PRIMARY KEY ("viewer_id","note_id"),
	 CONSTRAINT "notes_read_viewer_id_fkey" FOREIGN KEY ("viewer_id") REFERENCES "authorized_users" ("id")
);

CREATE TABLE "university_dept_members" (
	"university_dept_id" INTEGER,
	"authorized_user_id" INTEGER,
	"role" ENUM,
	"automate_membership" BOOLEAN,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("university_dept_id","authorized_user_id"),
	 CONSTRAINT "university_dept_members_university_dept_id_fkey" FOREIGN KEY ("university_dept_id") REFERENCES "university_depts" ("id"),
	 CONSTRAINT "university_dept_members_authorized_user_id_fkey" FOREIGN KEY ("authorized_user_id") REFERENCES "authorized_users" ("id")
);

CREATE TABLE "user_logins" (
	"id" INTEGER,
	"uid" CHARACTER VARYING,
	"created_at" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "user_logins_uid_fkey" FOREIGN KEY ("uid") REFERENCES "authorized_users" ("uid")
);

CREATE TABLE "student_groups" (
	"id" INTEGER,
	"owner_id" INTEGER,
	"name" VARCHAR,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "student_groups_owner_id_fkey" FOREIGN KEY ("owner_id") REFERENCES "authorized_users" ("id")
);

CREATE TABLE "student_group_members" (
	"student_group_id" INTEGER,
	"sid" VARCHAR,
	 PRIMARY KEY ("student_group_id","sid"),
	 CONSTRAINT "student_group_members_student_group_id_fkey" FOREIGN KEY ("student_group_id") REFERENCES "student_groups" ("id")
);

CREATE TABLE "schedulers" (
	"authorized_user_id" INTEGER,
	"dept_code" CHARACTER VARYING,
	"drop_in" BOOLEAN,
	"same_day" BOOLEAN,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("authorized_user_id","dept_code"),
	 CONSTRAINT "schedulers_authorized_user_id_fkey" FOREIGN KEY ("authorized_user_id") REFERENCES "authorized_users" ("id")
);

CREATE TABLE "same_day_advisors" (
	"authorized_user_id" INTEGER,
	"dept_code" CHARACTER VARYING,
	"is_available" BOOLEAN,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("authorized_user_id","dept_code"),
	 CONSTRAINT "same_day_advisors_authorized_user_id_fkey" FOREIGN KEY ("authorized_user_id") REFERENCES "authorized_users" ("id")
);

CREATE TABLE "drop_in_advisors" (
	"authorized_user_id" INTEGER,
	"dept_code" CHARACTER VARYING,
	"is_available" BOOLEAN,
	"status" CHARACTER VARYING,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("authorized_user_id","dept_code"),
	 CONSTRAINT "drop_in_advisors_authorized_user_id_fkey" FOREIGN KEY ("authorized_user_id") REFERENCES "authorized_users" ("id")
);

CREATE TABLE "cohort_filters" (
	"id" INTEGER,
	"owner_id" INTEGER,
	"domain" ENUM,
	"name" CHARACTER VARYING,
	"filter_criteria" LONGTEXT,
	"sids" VARCHAR,
	"student_count" INTEGER,
	"alert_count" INTEGER,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "cohort_filters_owner_id_fkey" FOREIGN KEY ("owner_id") REFERENCES "authorized_users" ("id")
);

CREATE TABLE "cohort_filter_events" (
	"id" INTEGER,
	"cohort_filter_id" INTEGER,
	"sid" CHARACTER VARYING,
	"event_type" ENUM,
	"created_at" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "cohort_filter_events_cohort_filter_id_fkey" FOREIGN KEY ("cohort_filter_id") REFERENCES "cohort_filters" ("id")
);

CREATE TABLE "appointments_read" (
	"appointment_id" VARCHAR,
	"viewer_id" INTEGER,
	"created_at" DATETIME,
	 PRIMARY KEY ("viewer_id","appointment_id"),
	 CONSTRAINT "appointments_read_viewer_id_fkey" FOREIGN KEY ("viewer_id") REFERENCES "authorized_users" ("id")
);

CREATE TABLE "appointments" (
	"id" INTEGER,
	"advisor_uid" CHARACTER VARYING,
	"advisor_name" CHARACTER VARYING,
	"advisor_role" CHARACTER VARYING,
	"advisor_dept_codes" CHARACTER VARYING,
	"student_sid" CHARACTER VARYING,
	"details" TEXT,
	"appointment_type" ENUM,
	"dept_code" CHARACTER VARYING,
	"status" ENUM,
	"scheduled_time" DATETIME,
	"student_contact_info" CHARACTER VARYING,
	"student_contact_type" ENUM,
	"created_at" DATETIME,
	"created_by" INTEGER,
	"updated_at" DATETIME,
	"updated_by" INTEGER,
	"deleted_at" DATETIME,
	"deleted_by" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "appointments_updated_by_fkey" FOREIGN KEY ("updated_by") REFERENCES "authorized_users" ("id"),
	 CONSTRAINT "appointments_created_by_fkey" FOREIGN KEY ("created_by") REFERENCES "authorized_users" ("id"),
	 CONSTRAINT "appointments_deleted_by_fkey" FOREIGN KEY ("deleted_by") REFERENCES "authorized_users" ("id")
);

CREATE TABLE "appointment_events" (
	"id" INTEGER,
	"appointment_id" INTEGER,
	"user_id" INTEGER,
	"advisor_id" INTEGER,
	"event_type" ENUM,
	"cancel_reason" VARCHAR,
	"cancel_reason_explained" VARCHAR,
	"created_at" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "appointment_events_advisor_id_fkey" FOREIGN KEY ("advisor_id") REFERENCES "authorized_users" ("id"),
	 CONSTRAINT "appointment_events_appointment_id_fkey" FOREIGN KEY ("appointment_id") REFERENCES "appointments" ("id"),
	 CONSTRAINT "appointment_events_user_id_updated_by_fkey" FOREIGN KEY ("user_id") REFERENCES "authorized_users" ("id")
);

CREATE TABLE "appointment_topics" (
	"id" INTEGER,
	"appointment_id" INTEGER,
	"topic" VARCHAR,
	"deleted_at" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "appointment_topics_appointment_id_fkey" FOREIGN KEY ("appointment_id") REFERENCES "appointments" ("id")
);

CREATE TABLE "appointment_availability" (
	"id" INTEGER,
	"authorized_user_id" INTEGER,
	"dept_code" VARCHAR,
	"weekday" ENUM,
	"date_override" DATE,
	"start_time" TIME,
	"end_time" TIME,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "appointment_availability_authorized_user_id_fkey" FOREIGN KEY ("authorized_user_id") REFERENCES "authorized_users" ("id")
);

CREATE TABLE "degree_progress_templates" (
	"id" INTEGER,
	"degree_name" CHARACTER VARYING,
	"advisor_dept_codes" CHARACTER VARYING,
	"student_sid" CHARACTER VARYING,
	"created_at" DATETIME,
	"created_by" INTEGER,
	"updated_at" DATETIME,
	"updated_by" INTEGER,
	"deleted_at" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "degree_progress_templates_created_by_fkey" FOREIGN KEY ("created_by") REFERENCES "authorized_users" ("id"),
	 CONSTRAINT "degree_progress_templates_updated_by_fkey" FOREIGN KEY ("updated_by") REFERENCES "authorized_users" ("id")
);

CREATE TABLE "degree_progress_unit_requirements" (
	"id" INTEGER,
	"template_id" INTEGER,
	"name" CHARACTER VARYING,
	"min_units" INTEGER,
	"created_at" DATETIME,
	"created_by" INTEGER,
	"updated_at" DATETIME,
	"updated_by" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "degree_progress_unit_requirements_created_by_fkey" FOREIGN KEY ("created_by") REFERENCES "authorized_users" ("id"),
	 CONSTRAINT "degree_progress_unit_requirements_updated_by_fkey" FOREIGN KEY ("updated_by") REFERENCES "authorized_users" ("id"),
	 CONSTRAINT "degree_progress_unit_requirements_template_id_fkey" FOREIGN KEY ("template_id") REFERENCES "degree_progress_templates" ("id")
);

CREATE TABLE "degree_progress_categories" (
	"id" INTEGER,
	"parent_category_id" INTEGER,
	"category_type" ENUM,
	"course_units" INT4RANGE,
	"description" TEXT,
	"name" CHARACTER VARYING,
	"position" INTEGER,
	"template_id" INTEGER,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "degree_progress_categories_template_id_fkey" FOREIGN KEY ("template_id") REFERENCES "degree_progress_templates" ("id"),
	 CONSTRAINT "degree_progress_categories_parent_category_id_fkey" FOREIGN KEY ("parent_category_id") REFERENCES "degree_progress_categories" ("id")
);

CREATE TABLE "degree_progress_courses" (
	"section_id" INTEGER,
	"sid" VARCHAR,
	"term_id" INTEGER,
	"category_id" INTEGER,
	"grade" VARCHAR,
	"display_name" CHARACTER VARYING,
	"note" TEXT,
	"units" INTEGER,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("section_id","sid","term_id"),
	 CONSTRAINT "degree_progress_courses_category_id_fkey" FOREIGN KEY ("category_id") REFERENCES "degree_progress_categories" ("id")
);

CREATE TABLE "degree_progress_course_unit_requirements" (
	"category_id" INTEGER,
	"unit_requirement_id" INTEGER,
	 PRIMARY KEY ("category_id","unit_requirement_id"),
	 CONSTRAINT "degree_progress_course_unit_reqts_category_id_fkey" FOREIGN KEY ("category_id") REFERENCES "degree_progress_categories" ("id"),
	 CONSTRAINT "degree_progress_course_unit_reqts_unit_requirement_id_fkey" FOREIGN KEY ("unit_requirement_id") REFERENCES "degree_progress_unit_requirements" ("id")
);

CREATE TABLE "alerts" (
	"id" INTEGER,
	"sid" CHARACTER VARYING,
	"alert_type" CHARACTER VARYING,
	"key" CHARACTER VARYING,
	"message" TEXT,
	"deleted_at" DATETIME,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "alert_views" (
	"alert_id" INTEGER,
	"viewer_id" INTEGER,
	"created_at" DATETIME,
	"dismissed_at" DATETIME,
	 PRIMARY KEY ("alert_id","viewer_id"),
	 CONSTRAINT "alert_views_viewer_id_fkey" FOREIGN KEY ("viewer_id") REFERENCES "authorized_users" ("id"),
	 CONSTRAINT "alert_views_alert_id_fkey" FOREIGN KEY ("alert_id") REFERENCES "alerts" ("id")
);
