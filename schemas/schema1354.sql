DROP DATABASE IF EXISTS "schema1354";
CREATE DATABASE "schema1354";
USE "schema1354";
CREATE TABLE "business" (
	"id" SERIAL,
	"user_id" INTEGER,
	"name" VARCHAR,
	"description" TEXT,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "location" (
	"id" SERIAL,
	"business_id" INTEGER,
	"address" VARCHAR,
	"city" VARCHAR,
	"state" VARCHAR,
	"postcode" VARCHAR,
	"avatar" TEXT,
	"images" LONGTEXT,
	"phone_numbers" LONGTEXT,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_location_to_business" FOREIGN KEY ("business_id") REFERENCES "business" ("id")
);

CREATE TABLE "menu" (
	"id" SERIAL,
	"business_id" INTEGER,
	"title" VARCHAR,
	"description" TEXT,
	"created_at" TIMESTAMP,
	"published" BOOLEAN,
	 PRIMARY KEY ("id")
);

CREATE TABLE "page" (
	"id" SERIAL,
	"active_menu" INTEGER,
	"title" VARCHAR,
	"price" INTEGER,
	"published" BOOLEAN,
	"description" TEXT,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_page_to_menu" FOREIGN KEY ("active_menu") REFERENCES "menu" ("id")
);

CREATE TABLE "menu_section" (
	"id" SERIAL,
	"menu_id" INTEGER,
	"title" VARCHAR,
	"description" TEXT,
	"metadata" LONGTEXT,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_menu_section_to_menu" FOREIGN KEY ("menu_id") REFERENCES "menu" ("id")
);

CREATE TABLE "menu_item" (
	"id" SERIAL,
	"menu_section_id" INTEGER,
	"title" VARCHAR,
	"description" TEXT,
	"price" INTEGER,
	"metadata" LONGTEXT,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_menu_item_to_menu_section" FOREIGN KEY ("menu_section_id") REFERENCES "menu_section" ("id")
);

CREATE TABLE "menu_item_option" (
	"id" SERIAL,
	"menu_item_id" INTEGER,
	"title" VARCHAR,
	"price" INTEGER,
	"description" TEXT,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_menu_item_option_to_menu_item" FOREIGN KEY ("menu_item_id") REFERENCES "menu_item" ("id")
);
