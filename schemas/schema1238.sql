DROP DATABASE IF EXISTS "schema1238";
CREATE DATABASE "schema1238";
USE "schema1238";
CREATE TABLE "user_file" (
	"id" INT,
	"dir_id" INT,
	"user_id" INT,
	"file_name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user_dir" (
	"id" INT,
	"user_id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user_copy" (
	"id" INT,
	"name" VARCHAR,
	"age" INT,
	"education" VARCHAR,
	"phone_num" VARCHAR,
	"sex" CHAR,
	"department" VARCHAR,
	"modify_counter" INT,
	"create_date" DATETIME,
	"create_by" VARCHAR,
	"update_date" DATETIME,
	"update_by" DATETIME,
	"remark" VARCHAR,
	"is_deleted" CHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user" (
	"id" INT,
	"name" VARCHAR,
	"age" INT,
	"education" VARCHAR,
	"phone_num" VARCHAR,
	"sex" CHAR,
	"department" VARCHAR,
	"modify_counter" INT,
	"create_date" DATETIME,
	"create_by" VARCHAR,
	"update_date" DATETIME,
	"update_by" VARCHAR,
	"remark" VARCHAR,
	"is_deleted" CHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sex" (
	"sex" CHAR,
	"sort" INT,
	 PRIMARY KEY ("sex")
);

CREATE TABLE "office" (
	"id" VARCHAR,
	"code" VARCHAR,
	"name" VARCHAR,
	"parent_id" VARCHAR,
	"path" VARCHAR,
	"level" INT,
	"modify_counter" INT,
	"create_date" DATETIME,
	"create_by" VARCHAR,
	"update_date" DATETIME,
	"update_by" DATETIME,
	"remark" VARCHAR,
	"is_deleted" CHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "ftp_file" (
	"id" INT,
	"name" VARCHAR,
	"dir_id" INT,
	"user_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "ftp_dir" (
	"id" INT,
	"user_id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "file_content" (
	"id" INT,
	"content" VARCHAR,
	"suffix" VARCHAR,
	"file_id" INT,
	"dir_id" INT,
	"user_id" INT,
	 PRIMARY KEY ("id")
);
