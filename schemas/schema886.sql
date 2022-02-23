DROP DATABASE IF EXISTS "schema886";
CREATE DATABASE "schema886";
USE "schema886";
CREATE TABLE "favorites" (
	"fv_id" INT,
	"fv_us_id" INT,
	"fv_mv_id" INT,
	 PRIMARY KEY ("fv_id")
);

CREATE TABLE "movie" (
	"mv_id" INTEGER,
	"mv_title" VARCHAR,
	"mv_box_office" DOUBLE,
	"mv_active" BOOLEAN,
	"mv_date_of_launch" DATE,
	"mv_genre" VARCHAR,
	"mv_has_teaser" BOOLEAN,
	"mv_url" VARCHAR,
	 PRIMARY KEY ("mv_id")
);

CREATE TABLE "user_role" (
	"ur_id" INT,
	"ur_us_id" INT,
	"ur_ro_id" INT,
	 PRIMARY KEY ("ur_id")
);

CREATE TABLE "role" (
	"ro_id" INTEGER,
	"ro_name" VARCHAR,
	 PRIMARY KEY ("ro_id")
);

CREATE TABLE "user" (
	"us_id" INTEGER,
	"us_username" VARCHAR,
	"us_firstname" VARCHAR,
	"us_lastname" VARCHAR,
	"us_password" VARCHAR,
	 PRIMARY KEY ("us_id")
);
