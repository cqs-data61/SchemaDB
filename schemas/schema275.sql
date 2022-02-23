DROP DATABASE IF EXISTS "schema275";
CREATE DATABASE "schema275";
USE "schema275";
CREATE TABLE "categories" (
	"id" INT,
	"name" VARCHAR,
	"icon" VARCHAR
);

CREATE TABLE "cities" (
	"id" INT,
	"city" VARCHAR,
	"latitude" FLOAT,
	"longitude" FLOAT
);

CREATE TABLE "users" (
	"id" INT,
	"email" VARCHAR,
	"name" VARCHAR,
	"password" VARCHAR,
	"dt_add" DATETIME,
	"city_id" INT,
	 CONSTRAINT "fkeycon_users_to_cities" FOREIGN KEY ("city_id") REFERENCES "cities" ("id")
);

CREATE TABLE "messages" (
	"id" INT,
	"author_id" INT,
	"text" VARCHAR,
	 CONSTRAINT "fkeycon_messages_to_users" FOREIGN KEY ("author_id") REFERENCES "users" ("id")
);

CREATE TABLE "users_categories" (
	"id" INT,
	"user_id" INT,
	"category_id" INT,
	 CONSTRAINT "fkeycon_users_categories_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id"),
	 CONSTRAINT "fkeycon_users_categories_to_categories" FOREIGN KEY ("category_id") REFERENCES "categories" ("id")
);

CREATE TABLE "job_photos" (
	"id" INT,
	"user_id" INT,
	"photo" VARCHAR,
	 CONSTRAINT "fkeycon_job_photos_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);

CREATE TABLE "opinions" (
	"id" INT,
	"dt_add" DATETIME,
	"rate" INT,
	"description" TEXT,
	"author_id" INT,
	 CONSTRAINT "fkeycon_opinions_to_users" FOREIGN KEY ("author_id") REFERENCES "users" ("id")
);

CREATE TABLE "profiles" (
	"id" INT,
	"address" VARCHAR,
	"bd" DATETIME,
	"about" TEXT,
	"phone" VARCHAR,
	"skype" VARCHAR,
	"user_id" INT,
	"telegram" VARCHAR,
	"notify_of_messages" BOOLEAN,
	"notify_of_actions" BOOLEAN,
	"notify_of_responses" BOOLEAN,
	"show_contacts" BOOLEAN,
	"show_profile" BOOLEAN,
	 CONSTRAINT "fkeycon_profiles_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);

CREATE TABLE "tasks" (
	"id" INT,
	"dt_add" DATETIME,
	"description" TEXT,
	"expire" DATETIME,
	"name" VARCHAR,
	"address" VARCHAR,
	"budget" INT,
	"lat" FLOAT,
	"long" FLOAT,
	"category_id" INT,
	"city_id" INT,
	"user_id" INT,
	 CONSTRAINT "fkeycon_tasks_to_cities" FOREIGN KEY ("city_id") REFERENCES "cities" ("id"),
	 CONSTRAINT "fkeycon_tasks_to_categories" FOREIGN KEY ("category_id") REFERENCES "categories" ("id"),
	 CONSTRAINT "fkeycon_tasks_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);

CREATE TABLE "files" (
	"id" INT,
	"task_id" INT,
	"path" VARCHAR,
	 CONSTRAINT "fkeycon_files_to_tasks" FOREIGN KEY ("task_id") REFERENCES "tasks" ("id")
);

CREATE TABLE "replies" (
	"id" INT,
	"dt_add" DATETIME,
	"rate" INT,
	"description" TEXT,
	"author_id" INT,
	"task_id" INT,
	 CONSTRAINT "fkeycon_replies_to_users" FOREIGN KEY ("author_id") REFERENCES "users" ("id"),
	 CONSTRAINT "fkeycon_replies_to_tasks" FOREIGN KEY ("task_id") REFERENCES "tasks" ("id")
);
