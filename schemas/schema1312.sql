DROP DATABASE IF EXISTS "schema1312";
CREATE DATABASE "schema1312";
USE "schema1312";
CREATE TABLE "category" (
	"id" INT,
	"name" VARCHAR,
	"create_time" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user" (
	"id" INT,
	"username" VARCHAR,
	"real_name" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	"permission" INT,
	"create_time" DATETIME,
	"last_login_time" DATETIME,
	"is_downloadable" INT,
	"is_uploadable" INT,
	"is_visible" INT,
	"is_deletable" INT,
	"is_updatable" INT,
	"avatar" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "file" (
	"id" BIGINT,
	"name" VARCHAR,
	"suffix" VARCHAR,
	"local_url" VARCHAR,
	"visit_url" VARCHAR,
	"size" BIGINT,
	"create_time" DATETIME,
	"description" VARCHAR,
	"check_times" INT,
	"download_times" INT,
	"tag" VARCHAR,
	"user_id" INT,
	"category_id" INT,
	"is_downloadable" INT,
	"is_uploadable" INT,
	"is_visible" INT,
	"is_deletable" INT,
	"is_updatable" INT,
	"last_modify_time" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_file_user" FOREIGN KEY ("user_id") REFERENCES "user" ("id"),
	 CONSTRAINT "fk_file_category1" FOREIGN KEY ("category_id") REFERENCES "category" ("id")
);

CREATE TABLE "auth" (
	"id" BIGINT,
	"is_uploadable" INT,
	"is_deletable" INT,
	"is_updatable" INT,
	"user_id" INT,
	"file_id" BIGINT,
	"is_visible" INT,
	"is_downloadable" INT,
	"create_time" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_auth_user1" FOREIGN KEY ("user_id") REFERENCES "user" ("id"),
	 CONSTRAINT "fk_auth_file1" FOREIGN KEY ("file_id") REFERENCES "file" ("id")
);

CREATE TABLE "download" (
	"id" BIGINT,
	"create_time" DATETIME,
	"user_id" INT,
	"file_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_download_user1" FOREIGN KEY ("user_id") REFERENCES "user" ("id"),
	 CONSTRAINT "fk_download_file1" FOREIGN KEY ("file_id") REFERENCES "file" ("id")
);
