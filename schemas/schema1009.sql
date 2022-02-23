DROP DATABASE IF EXISTS "schema1009";
CREATE DATABASE "schema1009";
USE "schema1009";
CREATE TABLE "users" (
	"id" CHAR,
	"username" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"token" VARCHAR,
	"token_expires" DATETIME,
	"api_token" VARCHAR,
	"activation_date" DATETIME,
	"secret" VARCHAR,
	"secret_verified" TINYINT,
	"tos_date" DATETIME,
	"active" TINYINT,
	"is_superuser" TINYINT,
	"role" VARCHAR,
	"created" DATETIME,
	"modified" DATETIME,
	"additional_data" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "topics" (
	"id" INT,
	"name" VARCHAR,
	"slug" VARCHAR,
	"description" TEXT,
	"image_path" VARCHAR,
	"color" VARCHAR,
	"featured" VARCHAR,
	"created" DATETIME,
	"user_id" CHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "tags" (
	"id" INT,
	"name" VARCHAR,
	"slug" VARCHAR,
	"description" TEXT,
	"created" DATETIME,
	"createdby" CHAR,
	"modified" DATETIME,
	"modifiedby" CHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "steps" (
	"id" INT,
	"name" VARCHAR,
	"slug" VARCHAR,
	"description" TEXT,
	"image_path" VARCHAR,
	"featured" INT,
	"created" DATETIME,
	"createdby" CHAR,
	"modified" DATETIME,
	"modifiedby" CHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "statuses" (
	"id" INT,
	"name" VARCHAR,
	"slug" VARCHAR,
	"description" TEXT,
	"created" DATETIME,
	"createdby" CHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "social_accounts" (
	"id" CHAR,
	"user_id" CHAR,
	"provider" VARCHAR,
	"username" VARCHAR,
	"reference" VARCHAR,
	"avatar" VARCHAR,
	"description" TEXT,
	"link" VARCHAR,
	"token" TEXT,
	"token_secret" TEXT,
	"token_expires" DATETIME,
	"active" TINYINT,
	"data" TEXT,
	"created" DATETIME,
	"modified" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sessions" (
	"id" CHAR,
	"created" DATETIME,
	"modified" DATETIME,
	"data" BLOB,
	"expires" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "roles" (
	"id" INT,
	"name" VARCHAR,
	"slug" VARCHAR,
	"description" TEXT,
	"image_path" VARCHAR,
	"color" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "ministries" (
	"id" INT,
	"name" VARCHAR,
	"slug" VARCHAR,
	"elm_learner_group" VARCHAR,
	"description" TEXT,
	"hyperlink" VARCHAR,
	"image_path" VARCHAR,
	"color" VARCHAR,
	"featured" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "pathways" (
	"id" INT,
	"name" VARCHAR,
	"color" VARCHAR,
	"description" TEXT,
	"objective" TEXT,
	"file_path" VARCHAR,
	"image_path" VARCHAR,
	"featured" INT,
	"topic_id" INT,
	"ministry_id" INT,
	"created" DATETIME,
	"createdby" CHAR,
	"modified" DATETIME,
	"modifiedby" CHAR,
	"status_id" INT,
	"slug" VARCHAR,
	"estimated_time" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "pathway_ministry_ibfk_1" FOREIGN KEY ("ministry_id") REFERENCES "ministries" ("id")
);

CREATE TABLE "pathways_users" (
	"id" INT,
	"user_id" CHAR,
	"pathway_id" INT,
	"status_id" INT,
	"date_start" DATETIME,
	"date_complete" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "pathways_users_ibfk_2" FOREIGN KEY ("pathway_id") REFERENCES "pathways" ("id")
);

CREATE TABLE "pathways_steps" (
	"id" INT,
	"step_id" INT,
	"pathway_id" INT,
	"sortorder" INT,
	"date_start" DATETIME,
	"date_complete" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "pathways_steps_ibfk_2" FOREIGN KEY ("pathway_id") REFERENCES "pathways" ("id")
);

CREATE TABLE "competencies" (
	"id" INT,
	"name" VARCHAR,
	"slug" VARCHAR,
	"description" TEXT,
	"image_path" VARCHAR,
	"color" VARCHAR,
	"featured" VARCHAR,
	"created" DATETIME,
	"createdby" CHAR,
	"modified" DATETIME,
	"modifiedby" CHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "competencies_users" (
	"id" INT,
	"competency_id" INT,
	"user_id" CHAR,
	"priority" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "competencies_users_ibfk_2" FOREIGN KEY ("competency_id") REFERENCES "competencies" ("id")
);

CREATE TABLE "competencies_pathways" (
	"id" INT,
	"competency_id" INT,
	"pathway_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "competencies_pathways_ibfk_2" FOREIGN KEY ("competency_id") REFERENCES "competencies" ("id")
);

CREATE TABLE "categories" (
	"id" INT,
	"name" VARCHAR,
	"slug" VARCHAR,
	"description" TEXT,
	"image_path" VARCHAR,
	"color" VARCHAR,
	"featured" VARCHAR,
	"created" DATETIME,
	"createdby" CHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "categories_topics" (
	"id" INT,
	"category_id" INT,
	"topic_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "categories_topics_ibfk_1" FOREIGN KEY ("category_id") REFERENCES "categories" ("id")
);

CREATE TABLE "cake_d_c_users_phinxlog" (
	"version" BIGINT,
	"migration_name" VARCHAR,
	"start_time" TIMESTAMP,
	"end_time" TIMESTAMP,
	"breakpoint" TINYINT,
	 PRIMARY KEY ("version")
);

CREATE TABLE "activity_types" (
	"id" INT,
	"name" VARCHAR,
	"slug" VARCHAR,
	"description" TEXT,
	"color" VARCHAR,
	"delivery_method" VARCHAR,
	"image_path" VARCHAR,
	"featured" INT,
	"created" DATETIME,
	"createdby" CHAR,
	"modified" DATETIME,
	"modifiedby" CHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "activities" (
	"id" INT,
	"name" VARCHAR,
	"hyperlink" VARCHAR,
	"description" TEXT,
	"licensing" TEXT,
	"moderator_notes" TEXT,
	"isbn" VARCHAR,
	"status_id" INT,
	"meta_title" VARCHAR,
	"meta_description" TEXT,
	"featured" INT,
	"moderation_flag" INT,
	"file_path" VARCHAR,
	"image_path" VARCHAR,
	"hours" INT,
	"recommended" INT,
	"ministry_id" INT,
	"approvedby_id" CHAR,
	"created" DATETIME,
	"createdby_id" CHAR,
	"modified" DATETIME,
	"modifiedby_id" CHAR,
	"activity_types_id" INT,
	"estimated_time" VARCHAR,
	"slug" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "reports" (
	"id" INT,
	"activity_id" INT,
	"user_id" CHAR,
	"issue" TEXT,
	"curator_id" CHAR,
	"response" TEXT,
	"created" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "report_ibfk_2" FOREIGN KEY ("activity_id") REFERENCES "activities" ("id")
);

CREATE TABLE "activities_users" (
	"id" INT,
	"activity_id" INT,
	"user_id" CHAR,
	"created" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "users_activities_ibfk_2" FOREIGN KEY ("activity_id") REFERENCES "activities" ("id")
);

CREATE TABLE "activities_tags" (
	"id" INT,
	"activity_id" INT,
	"tag_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "tags_activities_ibfk_1" FOREIGN KEY ("activity_id") REFERENCES "activities" ("id")
);

CREATE TABLE "activities_steps" (
	"id" INT,
	"activity_id" INT,
	"step_id" INT,
	"required" INT,
	"steporder" INT,
	"stepcontext" TEXT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "activities_steps_ibfk_1" FOREIGN KEY ("activity_id") REFERENCES "activities" ("id")
);

CREATE TABLE "activities_competencies" (
	"id" INT,
	"activity_id" INT,
	"competency_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "competencies_activities_ibfk_1" FOREIGN KEY ("activity_id") REFERENCES "activities" ("id")
);
