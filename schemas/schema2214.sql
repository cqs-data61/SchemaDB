DROP DATABASE IF EXISTS "schema2214";
CREATE DATABASE "schema2214";
USE "schema2214";
CREATE TABLE "role" (
	"ro_id" INT,
	"ro_name" VARCHAR,
	 PRIMARY KEY ("ro_id")
);

CREATE TABLE "user" (
	"us_id" INT,
	"us_name" VARCHAR,
	"us_password" VARCHAR,
	 PRIMARY KEY ("us_id")
);

CREATE TABLE "user_role" (
	"ur_id" INT,
	"ur_us_id" INT,
	"ur_ro_id" INT,
	 PRIMARY KEY ("ur_id"),
	 CONSTRAINT "fk_us_id" FOREIGN KEY ("ur_us_id") REFERENCES "user" ("us_id"),
	 CONSTRAINT "fk_ro_id" FOREIGN KEY ("ur_ro_id") REFERENCES "role" ("ro_id")
);

CREATE TABLE "menu_item" (
	"me_id" INT,
	"me_name" VARCHAR,
	"me_price" DECIMAL,
	"me_active" TINYINT,
	"me_date_of_launch" DATE,
	"me_category" VARCHAR,
	"me_free_delivery" TINYINT,
	"me_image_link" VARCHAR,
	 PRIMARY KEY ("me_id")
);

CREATE TABLE "cart" (
	"ct_id" INT,
	"ct_us_id" INT,
	"ct_pr_id" INT,
	 PRIMARY KEY ("ct_id"),
	 CONSTRAINT "ct_pr_fk" FOREIGN KEY ("ct_pr_id") REFERENCES "menu_item" ("me_id"),
	 CONSTRAINT "ct_us_fk" FOREIGN KEY ("ct_us_id") REFERENCES "user" ("us_id")
);
