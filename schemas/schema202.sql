DROP DATABASE IF EXISTS "schema202";
CREATE DATABASE "schema202";
USE "schema202";
CREATE TABLE "dataset_configuration" (
	"config_id" INT,
	"file_name" VARCHAR,
	"user_name" VARCHAR,
	"created_time" DATETIME,
	"file_type" VARCHAR,
	"configuration_json" LONGTEXT,
	"configuration_details" BLOB,
	 PRIMARY KEY ("config_id")
);

CREATE TABLE "activity_log" (
	"log_id" INT,
	"triggered_user_name" VARCHAR,
	"activity_date" DATETIME,
	"generated_file_name" VARCHAR,
	"processed_record_count" DECIMAL,
	"processed_usage" DECIMAL,
	 PRIMARY KEY ("log_id")
);

CREATE TABLE "user_roles" (
	"user_access_id" INT,
	"user_name" VARCHAR,
	"role_name" VARCHAR,
	"role_desc" VARCHAR,
	"role_type" VARCHAR,
	"group_users" VARCHAR,
	"usage_type" VARCHAR,
	"start_date" DATETIME,
	"end_date" DATETIME,
	"record_count_limit" DECIMAL,
	"usage_limit" DECIMAL,
	"days_limit" DECIMAL,
	 PRIMARY KEY ("user_access_id")
);

CREATE TABLE "users" (
	"user_id" INT,
	"user_name" VARCHAR,
	"user_desc" VARCHAR,
	"created_by" VARCHAR,
	"created_time" DATETIME,
	"updated_by" VARCHAR,
	"updated_time" DATETIME,
	"user_password" VARCHAR,
	 PRIMARY KEY ("user_id")
);

CREATE TABLE "personal_info" (
	"srno" INT,
	"firstname" VARCHAR,
	"lastname" VARCHAR,
	"emailaddress" VARCHAR,
	 PRIMARY KEY ("srno")
);

CREATE TABLE "location_info" (
	"srno" VARCHAR,
	"zipcode" VARCHAR,
	"city" VARCHAR,
	"state" VARCHAR,
	"country" VARCHAR,
	"locationtext" VARCHAR,
	"location" VARCHAR,
	 PRIMARY KEY ("srno")
);
