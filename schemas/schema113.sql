DROP DATABASE IF EXISTS "schema113";
CREATE DATABASE "schema113";
USE "schema113";
CREATE TABLE "user_activities" (
	"user_activity_id" INT,
	"user_id" INT,
	"activity_url" VARCHAR,
	 PRIMARY KEY ("user_activity_id")
);

CREATE TABLE "toy_dinosaurs" (
	"toy_dinosaur_id" INT,
	"toy_id" INT,
	"dinosaur_id" INT,
	 PRIMARY KEY ("toy_dinosaur_id")
);

CREATE TABLE "toys" (
	"toy_id" INT,
	"seller_id" INT,
	"toy_url" VARCHAR,
	"toy_description" VARCHAR,
	"name" VARCHAR,
	 PRIMARY KEY ("toy_id")
);

CREATE TABLE "sellers" (
	"seller_id" INT,
	"name" VARCHAR,
	"seller_base_url" VARCHAR,
	 PRIMARY KEY ("seller_id")
);

CREATE TABLE "video_dinosaurs" (
	"video_dinosaur_id" INT,
	"video_id" INT,
	"dinosaur_id" INT,
	 PRIMARY KEY ("video_dinosaur_id")
);

CREATE TABLE "video_ratings" (
	"video_rating_id" INT,
	"rating_id" INT,
	"video_id" INT,
	 PRIMARY KEY ("video_rating_id")
);

CREATE TABLE "videos" (
	"video_id" INT,
	"name" VARCHAR,
	"video_url" VARCHAR,
	"video_title" VARCHAR,
	"video_length" FLOAT,
	 PRIMARY KEY ("video_id")
);

CREATE TABLE "rating" (
	"rating_id" INT,
	"rating_type_id" INT,
	"rate_value" INT,
	"active" BOOLEAN,
	 PRIMARY KEY ("rating_id")
);

CREATE TABLE "rating_type" (
	"rating_type_id" INT,
	"scale_max" INT,
	"scale_min" INT,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("rating_type_id")
);

CREATE TABLE "users" (
	"user_id" INT,
	"name" VARCHAR,
	"age" INT,
	 PRIMARY KEY ("user_id")
);

CREATE TABLE "dinosaurs" (
	"dinosaur_id" INT,
	"name" VARCHAR,
	"dinosaur_type" VARCHAR,
	"size_height" FLOAT,
	"size_length" FLOAT,
	"size_weight" FLOAT,
	"description" VARCHAR,
	"all_facts_document_id" INT,
	 PRIMARY KEY ("dinosaur_id")
);
