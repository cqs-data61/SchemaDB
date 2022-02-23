DROP DATABASE IF EXISTS "schema975";
CREATE DATABASE "schema975";
USE "schema975";
CREATE TABLE "users" (
	"id" INT,
	"userid" VARCHAR,
	"userpw" VARCHAR,
	"email" VARCHAR,
	"grade" TINYINT,
	"createdat" DATETIME,
	"api" ENUM,
	"api_id" VARCHAR,
	"api_token" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sessions" (
	"session_id" VARCHAR,
	"expires" INT,
	"data" MEDIUMTEXT,
	 PRIMARY KEY ("session_id")
);

CREATE TABLE "seq-users" (
	"id" INT,
	"userid" VARCHAR,
	"userpw" VARCHAR,
	"username" VARCHAR,
	"email" VARCHAR,
	"createdat" DATETIME,
	"updatedat" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "books" (
	"id" INT,
	"bookname" VARCHAR,
	"writer" VARCHAR,
	"content" TEXT,
	"createdat" DATETIME,
	"uid" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "files" (
	"id" INT,
	"bookid" INT,
	"oriname" VARCHAR,
	"savename" VARCHAR,
	"createdat" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK_files_books" FOREIGN KEY ("bookid") REFERENCES "books" ("id")
);

CREATE TABLE "boards" (
	"id" INT,
	"title" VARCHAR,
	"writer" VARCHAR,
	"content" TEXT,
	"createdat" DATETIME,
	"updatedat" DATETIME,
	"userid" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "api" (
	"id" INT,
	"domain" VARCHAR,
	"appkey" VARCHAR,
	"createdat" DATETIME,
	"userid" VARCHAR,
	 PRIMARY KEY ("id")
);
