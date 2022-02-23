DROP DATABASE IF EXISTS "schema1839";
CREATE DATABASE "schema1839";
USE "schema1839";
CREATE TABLE "system_admin" (
	"admin_id" BIGINT,
	"username" VARCHAR,
	"password" VARCHAR,
	 PRIMARY KEY ("admin_id")
);

CREATE TABLE "realname_authen" (
	"user_id" BIGINT,
	"real_name" VARCHAR,
	"id_number" VARCHAR,
	"is_passed" BIT,
	 PRIMARY KEY ("user_id")
);

CREATE TABLE "prepaid_card" (
	"card_id" BIGINT,
	"amount" INT,
	"password" VARCHAR,
	"is_used" BIT,
	 PRIMARY KEY ("card_id")
);

CREATE TABLE "booking_admin" (
	"admin_id" BIGINT,
	"username" VARCHAR,
	"password" VARCHAR,
	 PRIMARY KEY ("admin_id")
);

CREATE TABLE "black_list" (
	"user_id" BIGINT
);
