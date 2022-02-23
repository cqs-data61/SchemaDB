DROP DATABASE IF EXISTS "schema1733";
CREATE DATABASE "schema1733";
USE "schema1733";
CREATE TABLE "topic" (
	"id" BIGINT,
	"experiment_id" BIGINT,
	"type" TINYINT,
	"content" VARCHAR,
	"img_url" VARCHAR,
	"score" TINYINT,
	"reference_version" VARCHAR,
	"gmt_create" DATETIME,
	"gmt_modified" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sign_in" (
	"id" BIGINT,
	"student_id" BIGINT,
	"sign_in" DATETIME,
	"sign_out" DATETIME,
	"gmt_create" DATETIME,
	"gmt_modified" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "static_memory" (
	"id" BIGINT,
	"student_no" VARCHAR,
	"address" VARCHAR,
	"data" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user" (
	"id" BIGINT,
	"user_name" VARCHAR,
	"password" VARCHAR,
	"real_name" VARCHAR,
	"gender" TINYINT,
	"role" TINYINT,
	"email" VARCHAR,
	"email_verify" TINYINT,
	"mobile" VARCHAR,
	"mobile_verify" TINYINT,
	"signature" VARCHAR,
	"gmt_create" DATETIME,
	"gmt_modified" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "test_result" (
	"id" BIGINT,
	"student_id" BIGINT,
	"experiment_id" BIGINT,
	"score" INT,
	"gmt_create" DATETIME,
	"gmt_modified" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "test_result_student_id" FOREIGN KEY ("student_id") REFERENCES "user" ("id")
);

CREATE TABLE "topic_answer" (
	"id" BIGINT,
	"topic_id" BIGINT,
	"test_result_id" BIGINT,
	"answer" VARCHAR,
	"score" INT,
	"comment" VARCHAR,
	"gmt_create" DATETIME,
	"gmt_modified" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "topic_answer_test_result_id" FOREIGN KEY ("test_result_id") REFERENCES "test_result" ("id"),
	 CONSTRAINT "topic_answer_topic_id" FOREIGN KEY ("topic_id") REFERENCES "topic" ("id")
);
