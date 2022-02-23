DROP DATABASE IF EXISTS "schema2509";
CREATE DATABASE "schema2509";
USE "schema2509";
CREATE TABLE "businesses" (
	"gstin" CHAR,
	"user_id" INTEGER,
	"state" CHAR,
	 PRIMARY KEY ("gstin")
);

CREATE TABLE "localised_messages" (
	"lang" CHAR,
	"description" CHAR,
	"message" TEXT
);

CREATE TABLE "languages" (
	"state" CHAR,
	"lang" CHAR,
	 PRIMARY KEY ("state")
);

CREATE TABLE "received_posts" (
	"id" INTEGER,
	"ip_address" CHAR,
	"recwhen" DATETIME,
	"user_id" INTEGER,
	"month" TINYINT
);

CREATE TABLE "received_emails" (
	"id" INTEGER,
	"email" CHAR,
	"recwhen" DATETIME,
	"body" TEXT,
	"user_id" INTEGER,
	"month" TINYINT
);

CREATE TABLE "received_texts" (
	"id" INTEGER,
	"phone" CHAR,
	"recwhen" DATETIME,
	"body" TEXT,
	"user_id" INTEGER,
	"month" TINYINT
);

CREATE TABLE "response_lines" (
	"response_line_id" INTEGER,
	"user_id" INTEGER,
	"month" TINYINT,
	"year" SMALLINT,
	"hsn_code" CHAR,
	"sales" INTEGER,
	"purchase" INTEGER,
	"trade_margin" INTEGER
);

CREATE TABLE "responses" (
	"user_id" INTEGER,
	"month" TINYINT,
	"year" SMALLINT,
	"turnover" INTEGER
);

CREATE TABLE "users" (
	"id" INTEGER,
	"realname" CHAR,
	"phone" CHAR,
	"email" CHAR,
	"password" CHAR,
	"role_id" INTEGER
);

CREATE TABLE "roles" (
	"id" INTEGER,
	"name" CHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "config" (
	"cfgkey" CHAR,
	"cfgval" CHAR,
	 PRIMARY KEY ("cfgkey")
);
