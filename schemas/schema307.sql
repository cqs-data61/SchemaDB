DROP DATABASE IF EXISTS "schema307";
CREATE DATABASE "schema307";
USE "schema307";
CREATE TABLE "user_info" (
	"user_id" INT,
	"open_id" VARCHAR,
	"name" VARCHAR,
	"gender" INT,
	"avatar" VARCHAR,
	"locate_auth" TINYINT,
	 PRIMARY KEY ("user_id")
);

CREATE TABLE "notice" (
	"notice_id" INT,
	"sender_id" INT,
	"user_id" INT,
	"content" VARCHAR,
	"is_unread" TINYINT,
	"comment_id" INT,
	 PRIMARY KEY ("notice_id")
);

CREATE TABLE "mark" (
	"user_id" INT,
	"arch_id" INT,
	"score" INT,
	 PRIMARY KEY ("user_id","arch_id")
);

CREATE TABLE "like_info" (
	"user_id" INT,
	"comment_id" INT,
	 PRIMARY KEY ("user_id","comment_id")
);

CREATE TABLE "comment" (
	"comment_id" INT,
	"arch_id" INT,
	"user_id" INT,
	"father_id" INT,
	"content" VARCHAR,
	"like_num" INT,
	"create_t" DATETIME,
	"picture" VARCHAR,
	 PRIMARY KEY ("comment_id")
);

CREATE TABLE "arch_picture" (
	"arch_id" INT,
	"picture" VARCHAR
);

CREATE TABLE "arch" (
	"arch_id" INT,
	"name" VARCHAR,
	"latitude" VARCHAR,
	"longitude" VARCHAR,
	"des" VARCHAR,
	 PRIMARY KEY ("arch_id")
);
