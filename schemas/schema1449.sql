DROP DATABASE IF EXISTS "schema1449";
CREATE DATABASE "schema1449";
USE "schema1449";
CREATE TABLE "inlineregistrations" (
	"id" BIGSERIAL,
	"uuid" CITEXT,
	"first_name" CITEXT,
	"last_name" CITEXT,
	"legal_first_name" CITEXT,
	"legal_last_name" CITEXT,
	"name_is_legal_name" BOOLEAN,
	"preferred_pronoun" TEXT,
	"zip" TEXT,
	"country" TEXT,
	"phone_number" TEXT,
	"email" TEXT,
	"birth_date" DATE,
	"emergency_contact_fullname" TEXT,
	"emergency_contact_phone" TEXT,
	"parent_fullname" TEXT,
	"parent_phone" TEXT,
	"parent_is_emergency_contact" BOOLEAN,
	"confirmation_code" TEXT,
	"membership_type" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "staff_positions" (
	"id" INT,
	"position" VARCHAR
);

CREATE TABLE "staff" (
	"id" SERIAL,
	"age_category_at_con" VARCHAR,
	"badge_image_file_type" VARCHAR,
	"badge_print_count" INTEGER,
	"badge_printed" BOOLEAN,
	"birth_date" DATE,
	"checked_in" BOOLEAN,
	"checked_in_at" DATETIME,
	"deleted" BOOLEAN,
	"department" VARCHAR,
	"department_color_code" VARCHAR,
	"first_name" VARCHAR,
	"has_badge_image" BOOLEAN,
	"last_modified_ms" BIGINT,
	"last_name" VARCHAR,
	"legal_first_name" VARCHAR,
	"legal_last_name" VARCHAR,
	"preferred_pronoun" VARCHAR,
	"shirt_size" VARCHAR,
	"suppress_printing_department" BOOLEAN,
	"uuid" VARCHAR,
	"information_verified" BOOLEAN,
	"picture_saved" BOOLEAN,
	"signature_saved" BOOLEAN,
	 PRIMARY KEY ("id")
);

CREATE TABLE "guests" (
	"id" SERIAL,
	"online_id" TEXT,
	"first_name" TEXT,
	"last_name" TEXT,
	"preferred_pronoun" TEXT,
	"legal_first_name" TEXT,
	"legal_last_name" TEXT,
	"age_category_at_con" TEXT,
	"fan_name" TEXT,
	"birth_date" DATE,
	"has_badge_image" BOOLEAN,
	"badge_image_file_type" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "loginsessions" (
	"start" DATETIME,
	"users_id" INTEGER
);

CREATE TABLE "attendeehistory" (
	"id" SERIAL,
	"message" CITEXT,
	"timestamp" DATETIME,
	"user_id" INTEGER,
	"attendee_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "attendees" (
	"id" SERIAL,
	"badge_id" INTEGER,
	"badge_number" VARCHAR,
	"badge_pre_printed" BOOLEAN,
	"badge_printed" BOOLEAN,
	"birth_date" DATE,
	"check_in_time" DATETIME,
	"checked_in" BOOLEAN,
	"comped_badge" BOOLEAN,
	"country" VARCHAR,
	"email" VARCHAR,
	"emergency_contact_full_name" VARCHAR,
	"emergency_contact_phone" VARCHAR,
	"fan_name" CITEXT,
	"first_name" CITEXT,
	"last_name" CITEXT,
	"legal_first_name" CITEXT,
	"legal_last_name" CITEXT,
	"membership_revoked" BOOLEAN,
	"name_is_legal_name" BOOLEAN,
	"preferred_pronoun" VARCHAR,
	"paid" BOOLEAN,
	"paid_amount" NUMERIC,
	"parent_form_received" BOOLEAN,
	"parent_full_name" VARCHAR,
	"parent_is_emergency_contact" BOOLEAN,
	"parent_phone" VARCHAR,
	"phone_number" VARCHAR,
	"pre_registered" BOOLEAN,
	"zip" VARCHAR,
	"order_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "orderhandoffs" (
	"order_id" INTEGER,
	"user_id" INTEGER,
	"timestamp" DATETIME,
	"stage" TEXT
);

CREATE TABLE "payments" (
	"id" SERIAL,
	"amount" NUMERIC,
	"auth_number" VARCHAR,
	"payment_location" VARCHAR,
	"payment_taken_at" DATETIME,
	"payment_taken_by" INTEGER,
	"payment_type" INTEGER,
	"till_session_id" INTEGER,
	"order_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "orders" (
	"id" SERIAL,
	"notes" VARCHAR,
	"order_id" VARCHAR,
	"order_taken_by_user" INTEGER,
	"paid" BOOLEAN,
	 PRIMARY KEY ("id")
);

CREATE TABLE "ageranges" (
	"id" SERIAL,
	"cost" NUMERIC,
	"max_age" INTEGER,
	"min_age" INTEGER,
	"name" VARCHAR,
	"stripe_color" VARCHAR,
	"stripe_text" VARCHAR,
	"badge_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "badges" (
	"id" SERIAL,
	"badge_type" INTEGER,
	"badge_type_background_color" VARCHAR,
	"badge_type_text" VARCHAR,
	"name" VARCHAR,
	"required_right" VARCHAR,
	"visible" BOOLEAN,
	"warning_message" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "tillsessions" (
	"id" SERIAL,
	"end_time" DATETIME,
	"open" BOOLEAN,
	"start_time" DATETIME,
	"user_id" INTEGER,
	"till_name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "blacklist" (
	"id" SERIAL,
	"first_name" CITEXT,
	"last_name" CITEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" SERIAL,
	"online_id" CITEXT,
	"account_non_expired" BOOLEAN,
	"account_non_locked" BOOLEAN,
	"force_password_change" BOOLEAN,
	"enabled" BOOLEAN,
	"first_name" CITEXT,
	"last_badge_number_created" INTEGER,
	"last_name" CITEXT,
	"password" VARCHAR,
	"username" VARCHAR,
	"role_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "roles_rights" (
	"role_id" INTEGER,
	"rights_id" INTEGER,
	 PRIMARY KEY ("role_id","rights_id")
);

CREATE TABLE "roles" (
	"id" SERIAL,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "rights" (
	"id" SERIAL,
	"description" VARCHAR,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "settings" (
	"name" VARCHAR,
	"value" VARCHAR,
	 PRIMARY KEY ("name")
);
