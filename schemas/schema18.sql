DROP DATABASE IF EXISTS "schema18";
CREATE DATABASE "schema18";
USE "schema18";
CREATE TABLE "user_role" (
	"user_id" BIGINT,
	"role_id" INT,
	 PRIMARY KEY ("user_id","role_id")
);

CREATE TABLE "user" (
	"id_user" BIGINT,
	"email" VARCHAR,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"password" VARCHAR,
	"username" VARCHAR,
	 PRIMARY KEY ("id_user")
);

CREATE TABLE "role" (
	"role_id" INT,
	"role" VARCHAR,
	 PRIMARY KEY ("role_id")
);

CREATE TABLE "reservation" (
	"id_reservation" BIGINT,
	"check_in" DATE,
	"check_out" DATE,
	"guests" INT,
	"room_type" VARCHAR,
	"username" VARCHAR,
	 PRIMARY KEY ("id_reservation")
);

CREATE TABLE "message" (
	"id_message" BIGINT,
	"content" VARCHAR,
	"email" VARCHAR,
	"name" VARCHAR,
	"phone" VARCHAR,
	"subject" VARCHAR,
	"username" VARCHAR,
	 PRIMARY KEY ("id_message")
);
