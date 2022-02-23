DROP DATABASE IF EXISTS "schema2170";
CREATE DATABASE "schema2170";
USE "schema2170";
CREATE TABLE "give" (
	"id" SERIAL,
	"user_id" INTEGER,
	"product_type" TEXT,
	"quantity" INTEGER,
	"is_used" BOOLEAN,
	"product_pic" TEXT,
	"created_at" TIMESTAMP,
	"points_quantity" INTEGER,
	"redeemed_quantity" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" SERIAL,
	"username" TEXT,
	"password" TEXT,
	"first_name" TEXT,
	"last_name" TEXT,
	"email" TEXT,
	"age" INTEGER,
	"zip_code" INTEGER,
	"profile_pic" TEXT,
	"upload_pic" BYTEA,
	"is_admin" BOOLEAN,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);
