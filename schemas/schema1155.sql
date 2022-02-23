DROP DATABASE IF EXISTS "schema1155";
CREATE DATABASE "schema1155";
USE "schema1155";
CREATE TABLE "userappointment" (
	"id" SERIAL,
	"user_id" INT,
	"user_id2" INT,
	"schedule_id" INT,
	"reviewed" BOOLEAN,
	 PRIMARY KEY ("id")
);

CREATE TABLE "userschedule" (
	"id" SERIAL,
	"user_id" INT,
	"dates" DATETIME,
	"selected" BOOLEAN,
	 PRIMARY KEY ("id")
);

CREATE TABLE "filters" (
	"id" SERIAL,
	"user_id" INT,
	"min_size" VARCHAR,
	"max_size" VARCHAR,
	"dog_min_age" INT,
	"dog_max_age" INT,
	"dog_genders" VARCHAR,
	"hypo" BOOLEAN,
	"neutered" BOOLEAN,
	"health_issues" BOOLEAN,
	"avoid_breeds" TEXT,
	"favorite_breeds" TEXT,
	"max_dist" INT,
	"genders" VARCHAR,
	"min_age" INT,
	"max_age" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "message" (
	"id" SERIAL,
	"sender_id" INT,
	"body" TEXT,
	"time_stamp" DATETIME,
	"convo_id" INT,
	"opened" BOOLEAN,
	 PRIMARY KEY ("id")
);

CREATE TABLE "convo" (
	"id" SERIAL,
	"user1" INT,
	"user2" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "photolikes" (
	"id" SERIAL,
	"user_id" INT,
	"photo_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "notifications" (
	"id" SERIAL,
	"type" VARCHAR,
	"type_id" INT,
	"time_stamp" DATETIME,
	"sender_id" INT,
	"sender_name" VARCHAR,
	"recipient_id" INT,
	"read" BOOLEAN,
	 PRIMARY KEY ("id")
);

CREATE TABLE "profilelikes" (
	"id" SERIAL,
	"user_id" INT,
	"liked_user_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "photos" (
	"id" SERIAL,
	"user_id" INT,
	"dog_id" INT,
	"url" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "dogs" (
	"id" SERIAL,
	"name" VARCHAR,
	"gender" VARCHAR,
	"bio" TEXT,
	"hypo" BOOLEAN,
	"neutered" BOOLEAN,
	"rating" INT,
	"owner_id" INT,
	"age" INT,
	"size" VARCHAR,
	"breed" VARCHAR,
	"healthy" BOOLEAN,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" SERIAL,
	"name" VARCHAR,
	"bio" TEXT,
	"email" VARCHAR,
	"password" VARCHAR,
	"age" INT,
	"zipcode" VARCHAR,
	"city" VARCHAR,
	"searched_as" VARCHAR,
	 PRIMARY KEY ("id")
);
