DROP DATABASE IF EXISTS "schema1508";
CREATE DATABASE "schema1508";
USE "schema1508";
CREATE TABLE "web_menu" (
	"id" BIGINT,
	"user_role" VARCHAR,
	"name" VARCHAR,
	"url" VARCHAR,
	"parent_id" BIGINT,
	"order_seq" INT,
	"reg_date" DATE,
	"modi_date" DATE,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user" (
	"id" BIGINT,
	"username" VARCHAR,
	"company_id" BIGINT,
	"password" VARCHAR,
	"name" VARCHAR,
	"email" VARCHAR,
	"profile_img" VARCHAR,
	"provider" VARCHAR,
	"provider_id" VARCHAR,
	"user_role" VARCHAR,
	"user_state" VARCHAR,
	"retired_date" DATE,
	"reg_date" DATE,
	"modi_date" DATE,
	"modi_password_date" DATE,
	"phone_number" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "staff" (
	"id" BIGINT,
	"staff_role" VARCHAR,
	"reg_date" DATE,
	"modi_date" DATE,
	"associate_id" BIGINT,
	"user_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sale_prop" (
	"id" BIGINT,
	"associate_id" BIGINT,
	"address_detail" VARCHAR,
	"sale_round" INT,
	"reg_date" DATE,
	"modi_date" DATE,
	 PRIMARY KEY ("id")
);

CREATE TABLE "receipt" (
	"id" BIGINT,
	"claim_id" BIGINT,
	"payment" BIGINT,
	"reg_date" DATE,
	"modi_date" DATE,
	"buyer_ip" VARCHAR,
	"user_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "purchase_prop" (
	"id" BIGINT,
	"associate_id" BIGINT,
	"city" VARCHAR,
	"state" VARCHAR,
	"zip_code" VARCHAR,
	"address" VARCHAR,
	"address_detail" VARCHAR,
	"price" BIGINT,
	"purchase_date" DATE,
	"prop_type" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "prop_price" (
	"id" BIGINT,
	"price" BIGINT,
	"reg_date" DATE,
	"modi_date" DATE,
	"reg_ip" VARCHAR,
	"description" VARCHAR,
	"purchase_prop_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "owned_history" (
	"id" BIGINT,
	"reg_date" DATE,
	"modi_date" DATE,
	"owned_state" VARCHAR,
	"user_id" BIGINT,
	"sale_prop_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "login_history" (
	"id" BIGINT,
	"user_id" BIGINT,
	"login_date" DATE,
	"login_ip" VARCHAR,
	"is_login" TINYINT,
	"ip_checked" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "located_pos" (
	"id" BIGINT,
	"purchase_prop_id" BIGINT,
	"x_pos" DOUBLE,
	"y_pos" DOUBLE,
	"z_pos" DOUBLE,
	"order" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "company" (
	"id" BIGINT,
	"ceo_name" VARCHAR,
	"biz_reg_num" VARCHAR,
	"address" VARCHAR,
	"zip_code" VARCHAR,
	"establish_date" DATE,
	 PRIMARY KEY ("id")
);

CREATE TABLE "claim" (
	"id" BIGINT,
	"sale_prop_id" BIGINT,
	"payment" BIGINT,
	"round" INT,
	"reg_date" DATE,
	"modi_date" DATE,
	 PRIMARY KEY ("id")
);

CREATE TABLE "associate" (
	"id" BIGINT,
	"name" VARCHAR,
	"associate_state" VARCHAR,
	"operate_fee_ratio" DOUBLE,
	"end_expect_date" DATE,
	"end_real_date" DATE,
	"city" VARCHAR,
	"state" VARCHAR,
	"address" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "account" (
	"id" BIGINT,
	"user_id" BIGINT,
	"description" VARCHAR,
	"account" VARCHAR,
	"bank_name" VARCHAR,
	"account_state" VARCHAR,
	"use_date" DATE,
	"reg_date" DATE,
	"modi_date" DATE,
	 PRIMARY KEY ("id")
);
