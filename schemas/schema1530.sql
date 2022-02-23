DROP DATABASE IF EXISTS "schema1530";
CREATE DATABASE "schema1530";
USE "schema1530";
CREATE TABLE "users" (
	"id" VARCHAR,
	"created_at" DATETIME,
	"flags" BIGINT,
	"password_hash" VARCHAR,
	"username" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "messages" (
	"id" VARCHAR,
	"created_at" DATETIME,
	"expire_at" DATETIME,
	"is_transient" BOOLEAN,
	"text" VARCHAR,
	"title" VARCHAR,
	"user_id" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "message_user_id_fk" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);

CREATE TABLE "files" (
	"content_type" VARCHAR,
	"file_name" VARCHAR,
	"message_id" VARCHAR,
	"set_at" DATETIME,
	 PRIMARY KEY ("set_at","message_id"),
	 CONSTRAINT "files_message_id_fk" FOREIGN KEY ("message_id") REFERENCES "messages" ("id")
);

CREATE TABLE "message_links" (
	"access" SMALLINT,
	"expires_at" DATETIME,
	"message_id" VARCHAR,
	"resource" VARCHAR,
	"token" CHAR,
	 PRIMARY KEY ("token"),
	 CONSTRAINT "message_link_fk" FOREIGN KEY ("message_id") REFERENCES "messages" ("id")
);

CREATE TABLE "devices" (
	"id" BIGINT,
	"is_required_viewer" BOOLEAN,
	"name" VARCHAR,
	"user_id" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "device_user_id_fk" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);

CREATE TABLE "views" (
	"created_at" DATETIME,
	"device_id" BIGINT,
	"message_id" VARCHAR,
	 PRIMARY KEY ("device_id","message_id"),
	 CONSTRAINT "views_message_id_fk" FOREIGN KEY ("message_id") REFERENCES "messages" ("id"),
	 CONSTRAINT "views_device_id_fk" FOREIGN KEY ("device_id") REFERENCES "devices" ("id")
);
