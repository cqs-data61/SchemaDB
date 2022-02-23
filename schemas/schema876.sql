DROP DATABASE IF EXISTS "schema876";
CREATE DATABASE "schema876";
USE "schema876";
CREATE TABLE "user_grow_space" (
	"user_id" INTEGER,
	"grow_space_id" INTEGER
);

CREATE TABLE "user" (
	"id" INTEGER,
	"age" VARCHAR,
	"email" VARCHAR,
	"name" VARCHAR,
	"password" VARCHAR,
	"progress" VARCHAR,
	"level_id" INTEGER
);

CREATE TABLE "review_criteria_review" (
	"review_criteria_id" INTEGER,
	"review_id" INTEGER
);

CREATE TABLE "review_criteria_criteria" (
	"review_criteria_id" INTEGER,
	"criteria_id" INTEGER
);

CREATE TABLE "review_criteria" (
	"id" INTEGER,
	"faktor" INTEGER
);

CREATE TABLE "review" (
	"id" INTEGER,
	"comment" VARCHAR,
	"text" VARCHAR,
	"grow_space_id" INTEGER,
	"user_id" INTEGER
);

CREATE TABLE "plants_in_gs_plants" (
	"plants_in_gs_id" INTEGER,
	"plants_id" INTEGER
);

CREATE TABLE "plants_in_gs_grow_space" (
	"plants_in_gs_id" INTEGER,
	"grow_space_id" INTEGER
);

CREATE TABLE "plants_in_gs" (
	"id" INTEGER
);

CREATE TABLE "plants" (
	"id" INTEGER,
	"blossom_colour" VARCHAR,
	"blossoming_time" VARCHAR,
	"botanical_name" VARCHAR,
	"care_text" TEXT,
	"common_name" VARCHAR,
	"description_text" TEXT,
	"growth_characteristics" VARCHAR,
	"light" VARCHAR,
	"nativty" VARCHAR,
	"nectar_pollen" VARCHAR,
	"nutrient_requirements" VARCHAR,
	"ornamental_value" VARCHAR,
	"ph_value" VARCHAR,
	"plant_category" VARCHAR,
	"poisonous" VARCHAR,
	"soil" VARCHAR,
	"soil_moisture" VARCHAR,
	"url" VARCHAR,
	"utility_value" VARCHAR
);

CREATE TABLE "mensch" (
	"id" INTEGER,
	"person_alter" INTEGER,
	"geburtstag" DATE,
	"geschlecht" VARCHAR,
	"groesse" DOUBLE
);

CREATE TABLE "mark_grow_space" (
	"mark_id" INTEGER,
	"grow_space_id" INTEGER
);

CREATE TABLE "mark" (
	"id" INTEGER
);

CREATE TABLE "level" (
	"id" INTEGER,
	"comment" VARCHAR,
	"level" INTEGER,
	"progress_tier" VARCHAR,
	"progress_tierequirement" VARCHAR,
	"reviews" VARCHAR
);

CREATE TABLE "grow_space" (
	"id" INTEGER,
	"average_rating" DOUBLE,
	"category" VARCHAR,
	"description" VARCHAR,
	"goal" VARCHAR,
	"location" VARCHAR,
	"name" VARCHAR,
	"picture" VARCHAR,
	"size" DOUBLE
);

CREATE TABLE "expert_user" (
	"expert_id" INTEGER,
	"user_id" INTEGER
);

CREATE TABLE "expert" (
	"id" INTEGER
);

CREATE TABLE "criteria" (
	"id" INTEGER,
	"explanation" VARCHAR,
	"name" VARCHAR,
	"scale" VARCHAR,
	"scope" VARCHAR
);
