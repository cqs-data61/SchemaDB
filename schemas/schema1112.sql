DROP DATABASE IF EXISTS "schema1112";
CREATE DATABASE "schema1112";
USE "schema1112";
CREATE TABLE "tags" (
	"id" INT,
	"category_id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "tag_category" (
	"id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "audio" (
	"id" INT,
	"name" VARCHAR,
	"description" TEXT,
	"audio_date" DATE,
	"upload_date" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "transcripts" (
	"id" INT,
	"audio_id" INT,
	"text" TEXT,
	"revision_comment" TEXT,
	"is_latest" BOOL,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_audio_id" FOREIGN KEY ("audio_id") REFERENCES "audio" ("id")
);

CREATE TABLE "audio_tag" (
	"audio_id" INT,
	"tag_id" INT,
	 CONSTRAINT "fk_audio_tag_audio_id" FOREIGN KEY ("audio_id") REFERENCES "audio" ("id"),
	 CONSTRAINT "fk_audio_tag_tag_id" FOREIGN KEY ("tag_id") REFERENCES "tags" ("id")
);

CREATE TABLE "users" (
	"id" INT,
	"name" VARCHAR,
	"email" VARCHAR,
	"password_hash" VARCHAR,
	"user_type" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user_edit_request" (
	"id" INT,
	"user_id" INT,
	"transcript_id" INT,
	"text" TEXT,
	"edit_comment" TEXT,
	"request_approved" BOOL,
	"create_time" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_user_edit_request_transcript_id" FOREIGN KEY ("transcript_id") REFERENCES "transcripts" ("id"),
	 CONSTRAINT "fk_user_edit_request_user_id" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);

CREATE TABLE "audit_logs" (
	"id" INT,
	"user_id" INT,
	"type" VARCHAR,
	"data" LONGTEXT,
	"create_time" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_audit_logs_user_id" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);
