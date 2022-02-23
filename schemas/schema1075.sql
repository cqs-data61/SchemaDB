DROP DATABASE IF EXISTS "schema1075";
CREATE DATABASE "schema1075";
USE "schema1075";
CREATE TABLE "specializations" (
	"id" INT,
	"name" VARCHAR,
	"icon" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cities" (
	"id" INT,
	"name" VARCHAR,
	"latitude" DECIMAL,
	"longitude" DECIMAL,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" INT,
	"city_id" INT,
	"signing_up_date" TIMESTAMP,
	"role" VARCHAR,
	"name" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	"avatar" VARCHAR,
	"birthday" DATE,
	"description" VARCHAR,
	"phone" VARCHAR,
	"skype" VARCHAR,
	"telegram" VARCHAR,
	"favorite_count" INT,
	"failure_count" INT,
	"address" VARCHAR,
	"last_activity" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_users_to_cities" FOREIGN KEY ("city_id") REFERENCES "cities" ("id")
);

CREATE TABLE "user_specialization" (
	"user_id" INT,
	"specialization_id" INT,
	 PRIMARY KEY ("user_id","specialization_id"),
	 CONSTRAINT "fkeycon_user_specialization_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id"),
	 CONSTRAINT "fkeycon_user_specialization_to_specializations" FOREIGN KEY ("specialization_id") REFERENCES "specializations" ("id")
);

CREATE TABLE "tasks" (
	"id" INT,
	"customer_id" INT,
	"executant_id" INT,
	"city_id" INT,
	"specialization_id" INT,
	"posting_date" TIMESTAMP,
	"status" VARCHAR,
	"name" VARCHAR,
	"description" VARCHAR,
	"latitude" DECIMAL,
	"longitude" DECIMAL,
	"payment" VARCHAR,
	"deadline_date" TIMESTAMP,
	"address" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_tasks_to_specializations" FOREIGN KEY ("specialization_id") REFERENCES "specializations" ("id"),
	 CONSTRAINT "fkeycon_tasks_to_cities" FOREIGN KEY ("city_id") REFERENCES "cities" ("id"),
	 CONSTRAINT "fkeycon_tasks_to_users" FOREIGN KEY ("executant_id") REFERENCES "users" ("id")
);

CREATE TABLE "reviews" (
	"id" INT,
	"adding_date" TIMESTAMP,
	"task_id" INT,
	"customer_id" INT,
	"executant_id" INT,
	"completion" ENUM,
	"comment" VARCHAR,
	"rate" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_reviews_to_users" FOREIGN KEY ("executant_id") REFERENCES "users" ("id"),
	 CONSTRAINT "fkeycon_reviews_to_tasks" FOREIGN KEY ("task_id") REFERENCES "tasks" ("id")
);

CREATE TABLE "chat_messages" (
	"id" INT,
	"user_id" INT,
	"task_id" INT,
	"message" VARCHAR,
	"date_time" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_chat_messages_to_tasks" FOREIGN KEY ("task_id") REFERENCES "tasks" ("id"),
	 CONSTRAINT "fkeycon_chat_messages_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);

CREATE TABLE "responses" (
	"id" INT,
	"user_id" INT,
	"task_id" INT,
	"payment" INT,
	"comment" VARCHAR,
	"date_time" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_responses_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id"),
	 CONSTRAINT "fkeycon_responses_to_tasks" FOREIGN KEY ("task_id") REFERENCES "tasks" ("id")
);

CREATE TABLE "notifications_history" (
	"id" INT,
	"recipient_id" INT,
	"task_id" INT,
	"event_type" ENUM,
	"is_shown" BOOLEAN,
	"date_time" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_notifications_history_to_users" FOREIGN KEY ("recipient_id") REFERENCES "users" ("id"),
	 CONSTRAINT "fkeycon_notifications_history_to_tasks" FOREIGN KEY ("task_id") REFERENCES "tasks" ("id")
);

CREATE TABLE "task_helpful_files" (
	"task_id" INT,
	"helpful_file" VARCHAR,
	 CONSTRAINT "fkeycon_task_helpful_files_to_tasks" FOREIGN KEY ("task_id") REFERENCES "tasks" ("id")
);

CREATE TABLE "users_optional_settings" (
	"user_id" INT,
	"is_hidden_contacts" BOOLEAN,
	"is_hidden_account" BOOLEAN,
	"is_subscribed_messages" BOOLEAN,
	"is_subscribed_actions" BOOLEAN,
	"is_subscribed_reviews" BOOLEAN,
	 PRIMARY KEY ("user_id"),
	 CONSTRAINT "fkeycon_users_optional_settings_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);

CREATE TABLE "users_accomplished_tasks_photos" (
	"user_id" INT,
	"accomplished_task_photo" VARCHAR,
	 CONSTRAINT "fkeycon_users_accomplished_tasks_photos_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);
