DROP DATABASE IF EXISTS "schema145";
CREATE DATABASE "schema145";
USE "schema145";
CREATE TABLE "status" (
	"id" INT,
	"status" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "roles" (
	"id" INT,
	"role" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"display_name" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	"region" VARCHAR,
	"currently_in" VARCHAR,
	"birth_date" DATE,
	"language" VARCHAR,
	"gender" VARCHAR,
	"profile_image" VARCHAR,
	"is_completed" BOOLEAN,
	"role_id" INT,
	"is_deleted" TINYINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_users_to_roles" FOREIGN KEY ("role_id") REFERENCES "roles" ("id")
);

CREATE TABLE "friend_list" (
	"id" INT,
	"user_id" INT,
	"friend_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_friend_list_to_users" FOREIGN KEY ("friend_id") REFERENCES "users" ("id")
);

CREATE TABLE "travel_plans" (
	"id" INT,
	"user_id" INT,
	"title" VARCHAR,
	"start_date" DATE,
	"finish_date" DATE,
	"countries" VARCHAR,
	"activities" VARCHAR,
	"requirements" VARCHAR,
	"details" VARCHAR,
	"images" VARCHAR,
	"estimated_budget" VARCHAR,
	"status_id" INT,
	"creation_time" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_travel_plans_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id"),
	 CONSTRAINT "fkeycon_travel_plans_to_status" FOREIGN KEY ("status_id") REFERENCES "status" ("id")
);

CREATE TABLE "plan_members" (
	"id" INT,
	"user_id" INT,
	"plan_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_plan_members_to_travel_plans" FOREIGN KEY ("plan_id") REFERENCES "travel_plans" ("id"),
	 CONSTRAINT "fkeycon_plan_members_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);

CREATE TABLE "travel_plans_comments" (
	"id" INT,
	"user_id" INT,
	"travel_plans_id" INT,
	"content" VARCHAR,
	"is_deleted" TINYINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_travel_plans_comments_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id"),
	 CONSTRAINT "fkeycon_travel_plans_comments_to_travel_plans" FOREIGN KEY ("travel_plans_id") REFERENCES "travel_plans" ("id")
);

CREATE TABLE "activities" (
	"id" INT,
	"title" VARCHAR,
	"start_date" DATE,
	"finish_date" DATE,
	"location" VARCHAR,
	"details" VARCHAR,
	"requirements" VARCHAR,
	"activities" VARCHAR,
	"images" VARCHAR,
	"estimated_budget" INT,
	"status_id" INT,
	"user_id" INT,
	"creation_time" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_activities_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id"),
	 CONSTRAINT "fkeycon_activities_to_status" FOREIGN KEY ("status_id") REFERENCES "status" ("id")
);

CREATE TABLE "activity_members" (
	"id" INT,
	"user_id" INT,
	"activity_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_activity_members_to_activities" FOREIGN KEY ("activity_id") REFERENCES "activities" ("id"),
	 CONSTRAINT "fkeycon_activity_members_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);

CREATE TABLE "activity_comments" (
	"id" INT,
	"user_id" INT,
	"activity_id" INT,
	"content" VARCHAR,
	"is_deleted" TINYINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_activity_comments_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id"),
	 CONSTRAINT "fkeycon_activity_comments_to_activities" FOREIGN KEY ("activity_id") REFERENCES "activities" ("id")
);

CREATE TABLE "preferences" (
	"id" INT,
	"location" VARCHAR,
	"start_date" DATE,
	"finish_date" DATE,
	"activities" VARCHAR,
	"similar_age" BOOL,
	"same_gender" BOOL,
	"user_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_preferences_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);
