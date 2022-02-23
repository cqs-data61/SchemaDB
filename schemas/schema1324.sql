DROP DATABASE IF EXISTS "schema1324";
CREATE DATABASE "schema1324";
USE "schema1324";
CREATE TABLE "widgets" (
	"id" INT,
	"widget_id" VARCHAR,
	"sidebar_id" VARCHAR,
	"theme" VARCHAR,
	"position" TINYINT,
	"data" TEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "user_meta" (
	"id" INT,
	"key" VARCHAR,
	"value" VARCHAR,
	"user_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "users" (
	"id" INT,
	"email" VARCHAR,
	"password" VARCHAR,
	"remember_token" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"permissions" TEXT,
	"last_login" TIMESTAMP,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"username" VARCHAR,
	"dob" DATETIME,
	"address" VARCHAR,
	"secondary_address" VARCHAR,
	"job_position" VARCHAR,
	"phone" VARCHAR,
	"secondary_phone" VARCHAR,
	"secondary_email" VARCHAR,
	"gender" TINYINT,
	"website" VARCHAR,
	"skype" VARCHAR,
	"facebook" VARCHAR,
	"twitter" VARCHAR,
	"google_plus" VARCHAR,
	"youtube" VARCHAR,
	"github" VARCHAR,
	"interest" VARCHAR,
	"about" VARCHAR,
	"super_user" TINYINT,
	"manage_supers" TINYINT,
	"completed_profile" TINYINT,
	"avatar_id" INT
);

CREATE TABLE "tags" (
	"id" INT,
	"name" VARCHAR,
	"author_id" INT,
	"author_type" VARCHAR,
	"description" VARCHAR,
	"parent_id" INT,
	"status" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "slugs" (
	"id" INT,
	"key" VARCHAR,
	"reference_id" INT,
	"reference" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"prefix" VARCHAR
);

CREATE TABLE "settings" (
	"id" INT,
	"key" VARCHAR,
	"value" TEXT
);

CREATE TABLE "role_users" (
	"id" INT,
	"user_id" INT,
	"role_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "roles" (
	"id" INT,
	"slug" VARCHAR,
	"name" VARCHAR,
	"permissions" TEXT,
	"description" VARCHAR,
	"is_default" TINYINT,
	"created_by" INT,
	"updated_by" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "revisions" (
	"id" INT,
	"revisionable_type" VARCHAR,
	"revisionable_id" INT,
	"user_id" INT,
	"key" VARCHAR,
	"old_value" TEXT,
	"new_value" TEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "request_logs" (
	"id" INT,
	"status_code" INT,
	"url" VARCHAR,
	"count" INT,
	"user_id" VARCHAR,
	"referrer" TEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "post_tags" (
	"id" INT,
	"tag_id" INT,
	"post_id" INT
);

CREATE TABLE "post_categories" (
	"id" INT,
	"category_id" INT,
	"post_id" INT
);

CREATE TABLE "posts" (
	"id" INT,
	"name" VARCHAR,
	"description" VARCHAR,
	"content" TEXT,
	"status" VARCHAR,
	"author_id" INT,
	"author_type" VARCHAR,
	"is_featured" TINYINT,
	"image" VARCHAR,
	"views" INT,
	"format_type" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "password_resets" (
	"email" VARCHAR,
	"token" VARCHAR,
	"created_at" TIMESTAMP
);

CREATE TABLE "pages" (
	"id" INT,
	"name" VARCHAR,
	"content" LONGTEXT,
	"status" VARCHAR,
	"user_id" INT,
	"image" VARCHAR,
	"template" VARCHAR,
	"parent_id" INT,
	"is_featured" TINYINT,
	"description" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "oauth_refresh_tokens" (
	"id" VARCHAR,
	"access_token_id" VARCHAR,
	"revoked" TINYINT,
	"expires_at" DATETIME
);

CREATE TABLE "oauth_personal_access_clients" (
	"id" INT,
	"client_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "oauth_clients" (
	"id" INT,
	"user_id" INT,
	"name" VARCHAR,
	"secret" VARCHAR,
	"redirect" TEXT,
	"personal_access_client" TINYINT,
	"password_client" TINYINT,
	"revoked" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "oauth_auth_codes" (
	"id" VARCHAR,
	"user_id" INT,
	"client_id" INT,
	"scopes" TEXT,
	"revoked" TINYINT,
	"expires_at" DATETIME
);

CREATE TABLE "oauth_access_tokens" (
	"id" VARCHAR,
	"user_id" INT,
	"client_id" INT,
	"name" VARCHAR,
	"scopes" TEXT,
	"revoked" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"expires_at" DATETIME
);

CREATE TABLE "migrations" (
	"id" INT,
	"migration" VARCHAR,
	"batch" INT
);

CREATE TABLE "meta_boxes" (
	"id" INT,
	"content_id" INT,
	"meta_key" VARCHAR,
	"meta_value" TEXT,
	"reference" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "menu_nodes" (
	"id" INT,
	"menu_id" INT,
	"parent_id" INT,
	"related_id" INT,
	"type" VARCHAR,
	"url" VARCHAR,
	"icon_font" VARCHAR,
	"position" TINYINT,
	"title" VARCHAR,
	"css_class" VARCHAR,
	"target" VARCHAR,
	"has_child" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "menu_locations" (
	"id" INT,
	"menu_id" INT,
	"location" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "menus" (
	"id" INT,
	"name" VARCHAR,
	"slug" VARCHAR,
	"status" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "member_password_resets" (
	"email" VARCHAR,
	"token" VARCHAR,
	"created_at" TIMESTAMP
);

CREATE TABLE "member_activity_logs" (
	"id" INT,
	"action" VARCHAR,
	"user_agent" TEXT,
	"reference_url" VARCHAR,
	"reference_name" VARCHAR,
	"ip_address" VARCHAR,
	"member_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "members" (
	"id" INT,
	"first_name" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	"remember_token" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"dob" DATE,
	"phone" VARCHAR,
	"confirmed_at" DATETIME,
	"last_name" VARCHAR,
	"description" TEXT,
	"gender" VARCHAR,
	"avatar_id" INT,
	"email_verify_token" VARCHAR
);

CREATE TABLE "media_settings" (
	"id" INT,
	"key" VARCHAR,
	"value" TEXT,
	"media_id" INT,
	"user_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "media_folders" (
	"id" INT,
	"user_id" INT,
	"name" VARCHAR,
	"slug" VARCHAR,
	"parent_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP
);

CREATE TABLE "media_files" (
	"id" INT,
	"user_id" INT,
	"name" VARCHAR,
	"folder_id" INT,
	"mime_type" VARCHAR,
	"size" INT,
	"url" VARCHAR,
	"options" TEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP
);

CREATE TABLE "language_meta" (
	"lang_meta_id" INT,
	"lang_meta_content_id" INT,
	"lang_meta_code" TEXT,
	"lang_meta_reference" VARCHAR,
	"lang_meta_origin" VARCHAR
);

CREATE TABLE "languages" (
	"lang_id" INT,
	"lang_name" VARCHAR,
	"lang_locale" VARCHAR,
	"lang_code" VARCHAR,
	"lang_flag" VARCHAR,
	"lang_is_default" TINYINT,
	"lang_order" INT,
	"lang_is_rtl" TINYINT
);

CREATE TABLE "jobs" (
	"id" BIGINT,
	"queue" VARCHAR,
	"payload" LONGTEXT,
	"attempts" TINYINT,
	"reserved_at" INT,
	"available_at" INT,
	"created_at" INT
);

CREATE TABLE "gallery_meta" (
	"id" INT,
	"content_id" INT,
	"images" TEXT,
	"reference" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "galleries" (
	"id" INT,
	"name" VARCHAR,
	"description" TEXT,
	"status" VARCHAR,
	"is_featured" TINYINT,
	"order" TINYINT,
	"image" VARCHAR,
	"user_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "field_items" (
	"id" INT,
	"field_group_id" INT,
	"parent_id" INT,
	"order" INT,
	"title" VARCHAR,
	"slug" VARCHAR,
	"type" VARCHAR,
	"instructions" TEXT,
	"options" TEXT
);

CREATE TABLE "field_groups" (
	"id" INT,
	"title" VARCHAR,
	"rules" TEXT,
	"order" INT,
	"created_by" INT,
	"updated_by" INT,
	"status" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "dashboard_widget_settings" (
	"id" INT,
	"settings" TEXT,
	"user_id" INT,
	"widget_id" INT,
	"order" TINYINT,
	"status" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "dashboard_widgets" (
	"id" INT,
	"name" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "custom_fields" (
	"id" INT,
	"use_for" VARCHAR,
	"use_for_id" INT,
	"field_item_id" INT,
	"type" VARCHAR,
	"slug" VARCHAR,
	"value" TEXT
);

CREATE TABLE "contact_replies" (
	"id" INT,
	"message" TEXT,
	"contact_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "contacts" (
	"id" INT,
	"name" VARCHAR,
	"email" VARCHAR,
	"phone" VARCHAR,
	"address" VARCHAR,
	"content" TEXT,
	"subject" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"status" VARCHAR
);

CREATE TABLE "categories" (
	"id" INT,
	"name" VARCHAR,
	"parent_id" INT,
	"description" TEXT,
	"status" VARCHAR,
	"author_id" INT,
	"author_type" VARCHAR,
	"icon" VARCHAR,
	"is_featured" TINYINT,
	"order" TINYINT,
	"is_default" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "blocks" (
	"id" INT,
	"name" VARCHAR,
	"alias" VARCHAR,
	"description" VARCHAR,
	"content" TEXT,
	"status" VARCHAR,
	"user_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "audit_histories" (
	"id" INT,
	"user_id" INT,
	"module" VARCHAR,
	"request" TEXT,
	"action" VARCHAR,
	"user_agent" TEXT,
	"ip_address" VARCHAR,
	"reference_user" INT,
	"reference_id" INT,
	"reference_name" VARCHAR,
	"type" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "activations" (
	"id" INT,
	"user_id" INT,
	"code" VARCHAR,
	"completed" TINYINT,
	"completed_at" TIMESTAMP,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);
