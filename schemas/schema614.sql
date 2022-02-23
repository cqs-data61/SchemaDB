DROP DATABASE IF EXISTS "schema614";
CREATE DATABASE "schema614";
USE "schema614";
CREATE TABLE "projects" (
	"project_id" SERIAL,
	"project_name" VARCHAR,
	"project_desc" VARCHAR,
	"project_img" VARCHAR,
	"end_date" VARCHAR,
	"shared" BOOLEAN,
	 PRIMARY KEY ("project_id")
);

CREATE TABLE "users" (
	"user_id" SERIAL,
	"username" VARCHAR,
	"password_hash" VARCHAR,
	"role" VARCHAR,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"email" VARCHAR,
	"avatar" VARCHAR,
	"manager_id" INT,
	"manager_first_name" VARCHAR,
	"manager_last_name" VARCHAR,
	"is_manager" BOOLEAN,
	 PRIMARY KEY ("user_id")
);

CREATE TABLE "timesheet" (
	"time_id" SERIAL,
	"project_id" INT,
	"user_id" INT,
	"time_desc" VARCHAR,
	"beginning_time" TIMESTAMP,
	"ending_time" TIMESTAMP,
	 PRIMARY KEY ("time_id"),
	 CONSTRAINT "fk_project_id" FOREIGN KEY ("project_id") REFERENCES "projects" ("project_id"),
	 CONSTRAINT "fk_user_id" FOREIGN KEY ("user_id") REFERENCES "users" ("user_id")
);

CREATE TABLE "user_project" (
	"project_id" INT,
	"user_id" INT,
	 PRIMARY KEY ("project_id","user_id"),
	 CONSTRAINT "fk_user_id2" FOREIGN KEY ("user_id") REFERENCES "users" ("user_id"),
	 CONSTRAINT "fk_project_id2" FOREIGN KEY ("project_id") REFERENCES "projects" ("project_id")
);
