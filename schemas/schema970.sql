DROP DATABASE IF EXISTS "schema970";
CREATE DATABASE "schema970";
USE "schema970";
CREATE TABLE "survey_answers" (
	"survey_answer_id" INT,
	"time_of_day" VARCHAR,
	"workout_location" VARCHAR,
	"number_of_people" VARCHAR,
	"max_price" VARCHAR,
	"max_distance" VARCHAR,
	 PRIMARY KEY ("survey_answer_id")
);

CREATE TABLE "activities" (
	"activity_id" INT,
	"survey_answer_id" INT,
	"activity" VARCHAR,
	 PRIMARY KEY ("activity_id"),
	 CONSTRAINT "Activity_to_Survey_Answer" FOREIGN KEY ("survey_answer_id") REFERENCES "survey_answers" ("survey_answer_id")
);

CREATE TABLE "days_of_week" (
	"day_of_week_id" INT,
	"survey_answer_id" INT,
	"day_of_week" VARCHAR,
	 PRIMARY KEY ("day_of_week_id"),
	 CONSTRAINT "Day_of_Week_to_Survey_Answer" FOREIGN KEY ("survey_answer_id") REFERENCES "survey_answers" ("survey_answer_id")
);
