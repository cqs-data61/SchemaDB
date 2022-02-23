DROP DATABASE IF EXISTS "schema1664";
CREATE DATABASE "schema1664";
USE "schema1664";
CREATE TABLE "mascots" (
	"mascot_id" SERIAL,
	"name" VARCHAR,
	"price" INT,
	 PRIMARY KEY ("mascot_id")
);

CREATE TABLE "items" (
	"item_id" SERIAL,
	"item_type" VARCHAR,
	"item_style" VARCHAR,
	"item_color" VARCHAR,
	"item_price" INT,
	"description" VARCHAR,
	 PRIMARY KEY ("item_id")
);

CREATE TABLE "users" (
	"user_id" INT,
	"username" VARCHAR,
	"password_hash" VARCHAR,
	"role" VARCHAR,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"email" VARCHAR,
	"active" BOOLEAN,
	 PRIMARY KEY ("user_id")
);

CREATE TABLE "children" (
	"child_user_id" INT,
	"steps" INT,
	"playtime_balance" INT,
	"carrot_balance" INT,
	"activity_minutes" INT,
	"mascot_id" INT,
	 PRIMARY KEY ("child_user_id"),
	 CONSTRAINT "fkeycon_children_to_users" FOREIGN KEY ("child_user_id") REFERENCES "users" ("user_id"),
	 CONSTRAINT "fkeycon_children_to_mascots" FOREIGN KEY ("mascot_id") REFERENCES "mascots" ("mascot_id")
);

CREATE TABLE "purchases" (
	"purchase_id" SERIAL,
	"item_id" INT,
	"mascot_id" INT,
	"child_user_id" INT,
	"purchase_date" DATE,
	"payment_amount" INT,
	 PRIMARY KEY ("purchase_id"),
	 CONSTRAINT "fkeycon_purchases_to_children" FOREIGN KEY ("child_user_id") REFERENCES "children" ("child_user_id"),
	 CONSTRAINT "fkeycon_purchases_to_items" FOREIGN KEY ("item_id") REFERENCES "items" ("item_id")
);

CREATE TABLE "closets" (
	"closet_id" SERIAL,
	"child_user_id" INT,
	"item_id" INT,
	"mascot_id" INT,
	"equipped" BOOLEAN,
	 PRIMARY KEY ("closet_id","child_user_id","mascot_id"),
	 CONSTRAINT "fkeycon_closets_to_children" FOREIGN KEY ("child_user_id") REFERENCES "children" ("child_user_id"),
	 CONSTRAINT "fkeycon_closets_to_items" FOREIGN KEY ("item_id") REFERENCES "items" ("item_id")
);

CREATE TABLE "parent_child" (
	"parent_user_id" INT,
	"child_user_id" INT,
	 PRIMARY KEY ("parent_user_id","child_user_id"),
	 CONSTRAINT "fkeycon_parent_child_to_users" FOREIGN KEY ("parent_user_id") REFERENCES "users" ("user_id"),
	 CONSTRAINT "fkeycon_parent_child_to_children" FOREIGN KEY ("child_user_id") REFERENCES "children" ("child_user_id")
);
