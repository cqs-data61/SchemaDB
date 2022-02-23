DROP DATABASE IF EXISTS "schema818";
CREATE DATABASE "schema818";
USE "schema818";
CREATE TABLE "subcategories" (
	"id" BIGINT,
	"subcategory_name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "categories" (
	"id" BIGINT,
	"category_name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "areas" (
	"id" BIGINT,
	"area_name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "flashcards" (
	"id" BIGINT,
	"front" VARCHAR,
	"back" VARCHAR,
	"area_id" BIGINT,
	"category_id" BIGINT,
	"subcategory_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_flashcards_category" FOREIGN KEY ("category_id") REFERENCES "categories" ("id"),
	 CONSTRAINT "fk_flashcards_subcategory" FOREIGN KEY ("subcategory_id") REFERENCES "subcategories" ("id"),
	 CONSTRAINT "fk_flashcards_area" FOREIGN KEY ("area_id") REFERENCES "areas" ("id")
);

CREATE TABLE "flashcard_views" (
	"id" BIGINT,
	"flashcard_id" BIGINT,
	"view_timestamp" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_flashcard_views_flashcard" FOREIGN KEY ("flashcard_id") REFERENCES "flashcards" ("id")
);

CREATE TABLE "area_category_subcategory" (
	"area_id" BIGINT,
	"category_id" BIGINT,
	"subcategory_id" BIGINT,
	 CONSTRAINT "fk_area_category_subcategory_category" FOREIGN KEY ("category_id") REFERENCES "categories" ("id"),
	 CONSTRAINT "fk_area_category_subcategory_subcategory" FOREIGN KEY ("subcategory_id") REFERENCES "subcategories" ("id"),
	 CONSTRAINT "fk_area_category_subcategory_area" FOREIGN KEY ("area_id") REFERENCES "areas" ("id")
);
