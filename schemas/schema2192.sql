DROP DATABASE IF EXISTS "schema2192";
CREATE DATABASE "schema2192";
USE "schema2192";
CREATE TABLE "user_profile" (
	"id" INT,
	"about" TEXT,
	"birth_date" DATE,
	"phone" VARCHAR,
	"skype" VARCHAR,
	"telegramm" VARCHAR,
	"avatar" VARCHAR,
	"views" INT,
	"address" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user_notifications" (
	"id" INT,
	"user_id" INT,
	"new_message" TINYINT,
	"new_respond" TINYINT,
	"task_actions" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user_favorites" (
	"id" INT,
	"user_id" INT,
	"favorite_user_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "task_responses" (
	"id" INT,
	"task_id" INT,
	"performer_user_id" INT,
	"amount" DECIMAL,
	"comment" TEXT,
	"rate" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "task_chats" (
	"id" INT,
	"task_id" INT,
	"user_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"message" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cities" (
	"id" INT,
	"name" VARCHAR,
	"lattitude" FLOAT,
	"longtitude" FLOAT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" INT,
	"city_id" INT,
	"profile_id" INT,
	"name" VARCHAR,
	"gender" ENUM,
	"password" VARCHAR,
	"email" VARCHAR,
	"is_profile_public" TINYINT,
	"is_contact_public" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"last_logined_at" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_users_city" FOREIGN KEY ("city_id") REFERENCES "cities" ("id"),
	 CONSTRAINT "fk_users_profile" FOREIGN KEY ("profile_id") REFERENCES "user_profile" ("id")
);

CREATE TABLE "user_role" (
	"id" INT,
	"user_id" INT,
	"code" TINYINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_user_role_users_id" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);

CREATE TABLE "categories" (
	"id" INT,
	"name" VARCHAR,
	"icon" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user_categories" (
	"id" INT,
	"user_id" INT,
	"category_id" INT,
	 PRIMARY KEY ("id","user_id","category_id"),
	 CONSTRAINT "fk_user_categories_category" FOREIGN KEY ("category_id") REFERENCES "categories" ("id")
);

CREATE TABLE "tasks" (
	"id" INT,
	"user_id" INT,
	"performer_user_id" INT,
	"category_id" INT,
	"title" VARCHAR,
	"description" TEXT,
	"additional_info" TEXT,
	"address" TEXT,
	"status" ENUM,
	"budget" DECIMAL,
	"expire" DATE,
	"latitude" DECIMAL,
	"longitude" DECIMAL,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_tasks_categories" FOREIGN KEY ("category_id") REFERENCES "categories" ("id")
);

CREATE TABLE "user_reviews" (
	"id" INT,
	"user_id" INT,
	"related_task_id" INT,
	"rate" TINYINT,
	"comment" TEXT,
	"created_at" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_user_reviews_user" FOREIGN KEY ("user_id") REFERENCES "users" ("id"),
	 CONSTRAINT "fk_user_reviews_tasks" FOREIGN KEY ("related_task_id") REFERENCES "tasks" ("id")
);

CREATE TABLE "user_attachments" (
	"id" INT,
	"user_id" INT,
	"task_id" INT,
	"display_name" VARCHAR,
	"file_name" TEXT,
	"file_path" TEXT,
	"file_meta" LONGTEXT,
	"thumb_path" TEXT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_user_attachments_tasks" FOREIGN KEY ("task_id") REFERENCES "tasks" ("id")
);
