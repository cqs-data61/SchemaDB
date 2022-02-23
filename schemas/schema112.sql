DROP DATABASE IF EXISTS "schema112";
CREATE DATABASE "schema112";
USE "schema112";
CREATE TABLE "menu_item" (
	"me_id" INT,
	"me_name" VARCHAR,
	"me_price" DECIMAL,
	"me_active" VARCHAR,
	"me_date_of_launch" DATE,
	"me_category" VARCHAR,
	"me_free_delivery" VARCHAR,
	 PRIMARY KEY ("me_id")
);

CREATE TABLE "user" (
	"us_id" INT,
	"us_name" VARCHAR,
	 PRIMARY KEY ("us_id")
);

CREATE TABLE "cart" (
	"ct_id" INT,
	"ct_us_id" INT,
	"ct_pr_id" INT,
	 PRIMARY KEY ("ct_id"),
	 CONSTRAINT "ct_pr_fk" FOREIGN KEY ("ct_pr_id") REFERENCES "menu_item" ("me_id"),
	 CONSTRAINT "ct_us_fk" FOREIGN KEY ("ct_us_id") REFERENCES "user" ("us_id")
);
