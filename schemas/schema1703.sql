DROP DATABASE IF EXISTS "schema1703";
CREATE DATABASE "schema1703";
USE "schema1703";
CREATE TABLE "sales_likes" (
	"username" VARCHAR,
	"sales_id" INTEGER,
	 PRIMARY KEY ("username","sales_id")
);

CREATE TABLE "services_likes" (
	"count" INTEGER,
	"username" VARCHAR,
	"services_id" INTEGER,
	 PRIMARY KEY ("username","services_id")
);

CREATE TABLE "sales_comments" (
	"id" SERIAL,
	"posted_by" VARCHAR,
	"sales_id" INTEGER,
	"comment_text" TEXT,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "services_comments" (
	"id" SERIAL,
	"posted_by" VARCHAR,
	"services_id" INTEGER,
	"comment_text" TEXT,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sales" (
	"id" SERIAL,
	"item_name" VARCHAR,
	"item_info" TEXT,
	"price" INTEGER,
	"posted_by" VARCHAR,
	"liked_by" VARCHAR,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "services" (
	"id" SERIAL,
	"title" TEXT,
	"pay" INTEGER,
	"service_info" TEXT,
	"posted_by" VARCHAR,
	"liked_by" VARCHAR,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"username" VARCHAR,
	"password" TEXT,
	"first_name" TEXT,
	"last_name" TEXT,
	"phone" TEXT,
	"email" TEXT,
	"is_admin" BOOLEAN,
	 PRIMARY KEY ("username")
);
