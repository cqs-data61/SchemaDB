DROP DATABASE IF EXISTS "schema1578";
CREATE DATABASE "schema1578";
USE "schema1578";
CREATE TABLE "food" (
	"id" INTEGER,
	"name" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "manager" (
	"email" TEXT,
	"password" TEXT,
	"name" TEXT,
	 PRIMARY KEY ("email")
);

CREATE TABLE "restaurant" (
	"name" TEXT,
	"manager_email" TEXT,
	"region" TEXT,
	"address" TEXT,
	"serving_regions" TEXT,
	"work_hours" TEXT,
	"delivery_time" REAL,
	"delivery_fee" REAL,
	 PRIMARY KEY ("name"),
	 CONSTRAINT "fkeycon_restaurant_to_manager" FOREIGN KEY ("manager_email") REFERENCES "manager" ("email")
);

CREATE TABLE "restaurant_food" (
	"restaurant_name" TEXT,
	"food_id" INTEGER,
	"count" INTEGER,
	"copen_type" TEXT,
	"price" REAL,
	"disabled" INTEGER,
	 PRIMARY KEY ("restaurant_name","food_id"),
	 CONSTRAINT "fkeycon_restaurant_food_to_restaurant" FOREIGN KEY ("restaurant_name") REFERENCES "restaurant" ("name"),
	 CONSTRAINT "fkeycon_restaurant_food_to_food" FOREIGN KEY ("food_id") REFERENCES "food" ("id")
);

CREATE TABLE "user" (
	"phone_number" TEXT,
	"password" TEXT,
	"name" TEXT,
	"region" TEXT,
	"address" TEXT,
	"credit" REAL,
	 PRIMARY KEY ("phone_number")
);

CREATE TABLE "f_order" (
	"id" INTEGER,
	"user_phone" TEXT,
	"restaurant_name" TEXT,
	"food_id" INTEGER,
	"count" INTEGER,
	"status" TEXT,
	"date" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_f_order_to_food" FOREIGN KEY ("food_id") REFERENCES "food" ("id"),
	 CONSTRAINT "fkeycon_f_order_to_user" FOREIGN KEY ("user_phone") REFERENCES "user" ("phone_number"),
	 CONSTRAINT "fkeycon_f_order_to_restaurant" FOREIGN KEY ("restaurant_name") REFERENCES "restaurant" ("name")
);

CREATE TABLE "comment" (
	"order_id" INTEGER,
	"score" INTEGER,
	"content" TEXT,
	"manager_reply" TEXT,
	 PRIMARY KEY ("order_id"),
	 CONSTRAINT "fkeycon_comment_to_f_order" FOREIGN KEY ("order_id") REFERENCES "f_order" ("id")
);
