DROP DATABASE IF EXISTS "schema1301";
CREATE DATABASE "schema1301";
USE "schema1301";
CREATE TABLE "job_record" (
	"id" INT,
	"warehouse_id" BIGINT,
	"robot_job_id" VARCHAR,
	"status" VARCHAR,
	"start_point" VARCHAR,
	"end_point" VARCHAR,
	"job_type" INT,
	"remarks" VARCHAR,
	"load_type" INT,
	"load_equipment_id" BIGINT,
	"unload_equipment_id" BIGINT,
	"code" VARCHAR,
	"create_time" DATETIME,
	"update_time" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "config" (
	"id" INT,
	"name" VARCHAR,
	"describe" VARCHAR,
	"value" VARCHAR,
	"create_time" DATETIME,
	"is_valid" INT,
	 PRIMARY KEY ("id")
);
