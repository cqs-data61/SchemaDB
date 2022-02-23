DROP DATABASE IF EXISTS "schema633";
CREATE DATABASE "schema633";
USE "schema633";
CREATE TABLE "advert_comments" (
	"id" BIGINT,
	"advert_id" BIGINT,
	"user_id" BIGINT,
	"parent_comment_id" BIGINT,
	"text_comment" VARCHAR,
	"created_date" DATE,
	"created_time" TIME
);

CREATE TABLE "advert_payments_for_top" (
	"id" BIGINT,
	"paid_for_date" DATE,
	"advert_id" BIGINT,
	"verify_code" VARCHAR
);

CREATE TABLE "adverts" (
	"id" BIGINT,
	"title" VARCHAR,
	"price" DECIMAL,
	"body" TEXT,
	"category_id" BIGINT,
	"advert_status" VARCHAR,
	"open_date" DATE,
	"open_time" TIME,
	"close_date" DATE,
	"close_time" TIME,
	"seller_id" BIGINT,
	"is_paid" BOOLEAN,
	"buyer_id" BIGINT
);

CREATE TABLE "advert_categories" (
	"id" BIGINT,
	"name" VARCHAR,
	"description" VARCHAR
);

CREATE TABLE "chats_of_users" (
	"user_id" BIGINT,
	"chat_id" BIGINT
);

CREATE TABLE "chat_messages" (
	"id" BIGINT,
	"user_id" BIGINT,
	"chat_id" BIGINT,
	"text_msg" VARCHAR,
	"created_date" DATE,
	"created_time" TIME
);

CREATE TABLE "chats" (
	"id" BIGINT,
	"first_user_id" BIGINT,
	"second_user_id" BIGINT
);

CREATE TABLE "user_auths" (
	"user_id" BIGINT,
	"login" VARCHAR,
	"pass" VARCHAR
);

CREATE TABLE "users" (
	"id" BIGINT,
	"email" VARCHAR,
	"phone_number" VARCHAR,
	"first_name" VARCHAR,
	"surname" VARCHAR,
	"birth" DATE,
	"age" SMALLINT,
	"sex" CHAR,
	"rating" BIGINT,
	"user_status" VARCHAR,
	"role_id" BIGINT,
	"created_date" DATE,
	"created_time" TIME
);

CREATE TABLE "user_roles" (
	"id" BIGINT,
	"role_name" VARCHAR
);
