DROP DATABASE IF EXISTS "schema304";
CREATE DATABASE "schema304";
USE "schema304";
CREATE TABLE "users" (
	"user_id" INT,
	"username" VARCHAR,
	"password_hash" VARCHAR,
	"role" VARCHAR,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"date_of_birth" DATE,
	"email" VARCHAR,
	"is_subscribed" BOOLEAN,
	"zip_code" VARCHAR,
	 PRIMARY KEY ("user_id")
);

CREATE TABLE "breweries" (
	"brewery_id" SERIAL,
	"name" VARCHAR,
	"address" VARCHAR,
	"city" VARCHAR,
	"zipcode" VARCHAR,
	"phone_number" VARCHAR,
	"days_of_operation" VARCHAR,
	"business_hours" VARCHAR,
	"history_desc" TEXT,
	"atmosphere" VARCHAR,
	"is_family_friendly" BOOLEAN,
	"is_patio" BOOLEAN,
	"is_food" BOOLEAN,
	"is_active" BOOLEAN,
	"website_url" VARCHAR,
	"google_maps_url" VARCHAR,
	"user_id" INTEGER,
	 PRIMARY KEY ("brewery_id"),
	 CONSTRAINT "fk_user_user_id" FOREIGN KEY ("user_id") REFERENCES "users" ("user_id")
);

CREATE TABLE "beer" (
	"beer_id" SERIAL,
	"name" VARCHAR,
	"abv" DECIMAL,
	"ibu" INTEGER,
	"type" VARCHAR,
	"info" TEXT,
	"brewery_id" INTEGER,
	"is_active" BOOLEAN,
	 PRIMARY KEY ("beer_id"),
	 CONSTRAINT "fk_brewery_brewery_id" FOREIGN KEY ("brewery_id") REFERENCES "breweries" ("brewery_id")
);

CREATE TABLE "images" (
	"image_id" SERIAL,
	"url" VARCHAR,
	"description" TEXT,
	"alt_text" TEXT,
	"beer_id" INTEGER,
	"brewery_id" INTEGER,
	 PRIMARY KEY ("image_id"),
	 CONSTRAINT "fk_brewery_brewery_id" FOREIGN KEY ("brewery_id") REFERENCES "breweries" ("brewery_id"),
	 CONSTRAINT "fk_beer_beer_id" FOREIGN KEY ("beer_id") REFERENCES "beer" ("beer_id")
);

CREATE TABLE "reviews" (
	"review_id" SERIAL,
	"beer_id" INTEGER,
	"beer_name" VARCHAR,
	"user_id" INTEGER,
	"subject_title" VARCHAR,
	"review" TEXT,
	"rating" INT,
	"create_date" TIMESTAMP,
	 PRIMARY KEY ("review_id"),
	 CONSTRAINT "fk_user_user_id" FOREIGN KEY ("user_id") REFERENCES "users" ("user_id"),
	 CONSTRAINT "fk_beer_beer_id" FOREIGN KEY ("beer_id") REFERENCES "beer" ("beer_id")
);
