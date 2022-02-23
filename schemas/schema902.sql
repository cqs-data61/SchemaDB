DROP DATABASE IF EXISTS "schema902";
CREATE DATABASE "schema902";
USE "schema902";
CREATE TABLE "user_memo" (
	"user_id" CHAR,
	"memo_item" CHAR,
	"write_date" DATE,
	 PRIMARY KEY ("user_id")
);

CREATE TABLE "user_info" (
	"user_id" CHAR,
	"user_password" CHAR
);
