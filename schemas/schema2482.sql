DROP DATABASE IF EXISTS "schema2482";
CREATE DATABASE "schema2482";
USE "schema2482";
CREATE TABLE "orderitems" (
	"id" SERIAL,
	"product_id" INT,
	"name" TEXT,
	"quantity" INT,
	"price" DECIMAL,
	"user_id" INT,
	"paid" BOOLEAN,
	 PRIMARY KEY ("id")
);

CREATE TABLE "ordernumber" (
	"id" SERIAL,
	"user_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" SERIAL,
	"login_id" INTEGER,
	"firstname" TEXT,
	"lastname" TEXT,
	"address" TEXT,
	"city" TEXT,
	"state" TEXT,
	"zipcode" INT,
	"email" TEXT,
	"password" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "logins" (
	"id" SERIAL,
	"username" TEXT,
	"password" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "products" (
	"id" SERIAL,
	"name" TEXT,
	"price" DECIMAL,
	"image_url" TEXT,
	 PRIMARY KEY ("id")
);
