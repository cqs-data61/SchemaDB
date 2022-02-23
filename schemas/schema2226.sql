DROP DATABASE IF EXISTS "schema2226";
CREATE DATABASE "schema2226";
USE "schema2226";
CREATE TABLE "category" (
	"id" INTEGER,
	"slug" VARCHAR,
	"title" VARCHAR,
	"sort_order" SMALLINT,
	"is_active" BOOLEAN,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"icon_url" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "week_day" (
	"id" SMALLINT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "restaurant_type" (
	"id" SMALLINT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "restaurant" (
	"id" INTEGER,
	"type" SMALLINT,
	"slug" VARCHAR,
	"title" VARCHAR,
	"address" VARCHAR,
	"rating" SMALLINT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"is_active" BOOLEAN,
	"average_receipt" NUMERIC,
	"aliases" TEXT,
	"images" TEXT,
	"location" GEOMETRY,
	"short_title" VARCHAR,
	"banner_url" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "restaurant_type_fk" FOREIGN KEY ("type") REFERENCES "restaurant_type" ("id")
);

CREATE TABLE "restaurant_menu" (
	"id" INTEGER,
	"restaurant_id" INTEGER,
	"slug" VARCHAR,
	"title" VARCHAR,
	"sort_order" SMALLINT,
	"is_active" BOOLEAN,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "restaurant_menu_restaurantid_fk" FOREIGN KEY ("restaurant_id") REFERENCES "restaurant" ("id")
);

CREATE TABLE "menu_group" (
	"id" INTEGER,
	"menu_id" INTEGER,
	"slug" VARCHAR,
	"title" VARCHAR,
	"sort_order" SMALLINT,
	"is_active" BOOLEAN,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"icon_url" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "menu_group_menuid_fk" FOREIGN KEY ("menu_id") REFERENCES "restaurant_menu" ("id")
);

CREATE TABLE "menu_item" (
	"id" INTEGER,
	"group_id" INTEGER,
	"slug" VARCHAR,
	"title" VARCHAR,
	"calories" INTEGER,
	"sort_order" INTEGER,
	"cooking_time" SMALLINT,
	"price" NUMERIC,
	"is_active" BOOLEAN,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"banner_url" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "menu_item_groupid_fk" FOREIGN KEY ("group_id") REFERENCES "menu_group" ("id")
);

CREATE TABLE "restaurant_category" (
	"id" INTEGER,
	"category_id" INTEGER,
	"restaurant_id" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "restaurant_category_restaurantid_fk" FOREIGN KEY ("restaurant_id") REFERENCES "restaurant" ("id"),
	 CONSTRAINT "restaurant_category_categoryid_fk" FOREIGN KEY ("category_id") REFERENCES "category" ("id")
);

CREATE TABLE "restaurant_schedule" (
	"id" INTEGER,
	"restaurant_id" INTEGER,
	"end_week_day" SMALLINT,
	"start_week_day" SMALLINT,
	"end_at_hour" SMALLINT,
	"start_at_hour" SMALLINT,
	"end_at_minute" SMALLINT,
	"start_at_minute" SMALLINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "restaurant_schedule_start_week_day_fk" FOREIGN KEY ("start_week_day") REFERENCES "week_day" ("id"),
	 CONSTRAINT "restaurant_schedule_restaurantid_fk" FOREIGN KEY ("restaurant_id") REFERENCES "restaurant" ("id"),
	 CONSTRAINT "restaurant_schedule_end_week_day_fk" FOREIGN KEY ("end_week_day") REFERENCES "week_day" ("id")
);
