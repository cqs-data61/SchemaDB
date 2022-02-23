DROP DATABASE IF EXISTS "schema118";
CREATE DATABASE "schema118";
USE "schema118";
CREATE TABLE "orders" (
	"id" SERIAL,
	"customer_id" INTEGER,
	"executor_id" INTEGER,
	"order_name" VARCHAR,
	"category" VARCHAR,
	"budget" BIGINT,
	"deadline" BIGINT,
	"description" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "specializes" (
	"id" SERIAL,
	"specialize_name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" SERIAL,
	"email" VARCHAR,
	"password" BYTEA,
	"login" VARCHAR,
	"name_surname" VARCHAR,
	"about" VARCHAR,
	"executor" BOOLEAN,
	"img" VARCHAR,
	"rating" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "order_responses" (
	"id" SERIAL,
	"order_id" INTEGER,
	"user_id" INTEGER,
	"rate" INTEGER,
	"user_login" VARCHAR,
	"user_img" VARCHAR,
	"time" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_order_responses_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id"),
	 CONSTRAINT "fkeycon_order_responses_to_orders" FOREIGN KEY ("order_id") REFERENCES "orders" ("id")
);

CREATE TABLE "user_reviews" (
	"id" SERIAL,
	"user_id" INTEGER,
	"order_id" INTEGER,
	"description" VARCHAR,
	"executor" BOOLEAN,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_user_reviews_to_orders" FOREIGN KEY ("order_id") REFERENCES "orders" ("id"),
	 CONSTRAINT "fkeycon_user_reviews_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);

CREATE TABLE "vacancy" (
	"id" SERIAL,
	"user_id" INTEGER,
	"category" VARCHAR,
	"vacancy_name" VARCHAR,
	"description" VARCHAR,
	"salary" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_vacancy_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);

CREATE TABLE "vacancy_responses" (
	"id" SERIAL,
	"vacancy_id" INTEGER,
	"user_id" INTEGER,
	"rate" INTEGER,
	"user_login" VARCHAR,
	"user_img" VARCHAR,
	"time" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_vacancy_responses_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id"),
	 CONSTRAINT "fkeycon_vacancy_responses_to_vacancy" FOREIGN KEY ("vacancy_id") REFERENCES "vacancy" ("id")
);

CREATE TABLE "user_specializes" (
	"user_id" INTEGER,
	"specialize_id" INTEGER,
	 CONSTRAINT "fkeycon_user_specializes_to_specializes" FOREIGN KEY ("specialize_id") REFERENCES "specializes" ("id"),
	 CONSTRAINT "fkeycon_user_specializes_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);
