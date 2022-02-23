DROP DATABASE IF EXISTS "schema63";
CREATE DATABASE "schema63";
USE "schema63";
CREATE TABLE "secret_pages" (
	"page_id" INT,
	"page_uri" CHAR,
	"page_title" CHAR,
	"page_thumbnail" CHAR,
	"is_draft" BOOLEAN
);

CREATE TABLE "pages" (
	"page_id" INT,
	"page_uri" CHAR,
	"page_title" CHAR,
	"page_thumbnail" CHAR,
	"is_draft" BOOLEAN
);

CREATE TABLE "users" (
	"username" CHAR,
	"password" CHAR
);
