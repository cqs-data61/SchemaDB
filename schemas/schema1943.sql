DROP DATABASE IF EXISTS "schema1943";
CREATE DATABASE "schema1943";
USE "schema1943";
CREATE TABLE "visitors" (
	"id" BIGINT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"email" VARCHAR,
	"phone" VARCHAR,
	"gender" TINYINT,
	"address" VARCHAR,
	"national_identification_no" VARCHAR,
	"is_pre_register" TINYINT,
	"status" TINYINT,
	"creator_type" VARCHAR,
	"creator_id" BIGINT,
	"editor_type" VARCHAR,
	"editor_id" BIGINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "visiting_details" (
	"id" BIGINT,
	"reg_no" VARCHAR,
	"purpose" VARCHAR,
	"company_name" VARCHAR,
	"company_employee_id" VARCHAR,
	"checkin_at" DATETIME,
	"checkout_at" DATETIME,
	"status" TINYINT,
	"user_id" BIGINT,
	"employee_id" BIGINT,
	"visitor_id" BIGINT,
	"creator_type" VARCHAR,
	"creator_id" BIGINT,
	"editor_type" VARCHAR,
	"editor_id" BIGINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" BIGINT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"email" VARCHAR,
	"username" VARCHAR,
	"email_verified_at" TIMESTAMP,
	"password" VARCHAR,
	"phone" VARCHAR,
	"address" LONGTEXT,
	"last_login_at" TIMESTAMP,
	"remember_token" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "settings" (
	"id" BIGINT,
	"key" VARCHAR,
	"value" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "role_has_permissions" (
	"permission_id" BIGINT,
	"role_id" BIGINT,
	 PRIMARY KEY ("permission_id","role_id")
);

CREATE TABLE "roles" (
	"id" BIGINT,
	"name" VARCHAR,
	"guard_name" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "pre_registers" (
	"id" INT,
	"expected_date" DATE,
	"expected_time" TIME,
	"employee_id" BIGINT,
	"visitor_id" INT,
	"comment" VARCHAR,
	"creator_type" VARCHAR,
	"creator_id" BIGINT,
	"editor_type" VARCHAR,
	"editor_id" BIGINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "permissions" (
	"id" BIGINT,
	"name" VARCHAR,
	"guard_name" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "password_resets" (
	"email" VARCHAR,
	"token" VARCHAR,
	"created_at" TIMESTAMP
);

CREATE TABLE "notifications" (
	"id" CHAR,
	"type" VARCHAR,
	"notifiable_type" VARCHAR,
	"notifiable_id" BIGINT,
	"data" TEXT,
	"read_at" TIMESTAMP,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "model_has_roles" (
	"role_id" BIGINT,
	"model_type" VARCHAR,
	"model_id" BIGINT,
	 PRIMARY KEY ("role_id","model_id","model_type")
);

CREATE TABLE "model_has_permissions" (
	"permission_id" BIGINT,
	"model_type" VARCHAR,
	"model_id" BIGINT,
	 PRIMARY KEY ("permission_id","model_id","model_type")
);

CREATE TABLE "migrations" (
	"id" INT,
	"migration" VARCHAR,
	"batch" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "media" (
	"id" BIGINT,
	"model_type" VARCHAR,
	"model_id" BIGINT,
	"collection_name" VARCHAR,
	"name" VARCHAR,
	"file_name" VARCHAR,
	"mime_type" VARCHAR,
	"disk" VARCHAR,
	"size" BIGINT,
	"manipulations" LONGTEXT,
	"custom_properties" LONGTEXT,
	"responsive_images" LONGTEXT,
	"order_column" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "jobs" (
	"id" BIGINT,
	"queue" VARCHAR,
	"payload" LONGTEXT,
	"attempts" TINYINT,
	"reserved_at" INT,
	"available_at" INT,
	"created_at" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "invitations" (
	"id" BIGINT,
	"name" VARCHAR,
	"email" VARCHAR,
	"booking_id" BIGINT,
	"visitor_id" BIGINT,
	"status" TINYINT,
	"checkin_at" DATETIME,
	"checkout_at" DATETIME,
	"iuid" VARCHAR,
	"activation_token" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "failed_jobs" (
	"id" BIGINT,
	"connection" TEXT,
	"queue" TEXT,
	"payload" LONGTEXT,
	"exception" LONGTEXT,
	"failed_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "employees" (
	"id" BIGINT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"phone" VARCHAR,
	"nickname" VARCHAR,
	"display_name" VARCHAR,
	"gender" TINYINT,
	"official_identification_number" VARCHAR,
	"date_of_joining" DATE,
	"status" TINYINT,
	"user_id" BIGINT,
	"department_id" BIGINT,
	"designation_id" BIGINT,
	"about" LONGTEXT,
	"creator_type" VARCHAR,
	"creator_id" BIGINT,
	"editor_type" VARCHAR,
	"editor_id" BIGINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "designations" (
	"id" BIGINT,
	"name" VARCHAR,
	"status" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "departments" (
	"id" BIGINT,
	"name" VARCHAR,
	"status" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bookings" (
	"id" BIGINT,
	"reg_no" VARCHAR,
	"purpose" LONGTEXT,
	"status" TINYINT,
	"is_pre_register" TINYINT,
	"is_group_enabled" TINYINT,
	"invitation_people_count" INT,
	"accept_invitation_count" INT,
	"attendee_count" INT,
	"start_at" DATETIME,
	"end_at" DATETIME,
	"user_id" BIGINT,
	"employee_id" BIGINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "backend_menus" (
	"id" BIGINT,
	"name" VARCHAR,
	"link" VARCHAR,
	"icon" VARCHAR,
	"status" TINYINT,
	"parent_id" INT,
	"priority" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "attendances" (
	"id" BIGINT,
	"date" DATE,
	"checkin_time" VARCHAR,
	"checkout_time" VARCHAR,
	"status" TINYINT,
	"employee_id" BIGINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);
