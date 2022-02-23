DROP DATABASE IF EXISTS "schema1629";
CREATE DATABASE "schema1629";
USE "schema1629";
CREATE TABLE "like" (
	"id" SERIAL,
	"liker_user_id" INTEGER,
	"liked_user_id" INTEGER,
	"like_date" INTEGER,
	"is_liked" BOOLEAN,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" SERIAL,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"profession" VARCHAR,
	"create_date" DATE,
	"last_login" DATE,
	"image_url" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	"confirm_password" VARCHAR,
	 PRIMARY KEY ("id")
);
