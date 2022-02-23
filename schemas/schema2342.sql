DROP DATABASE IF EXISTS "schema2342";
CREATE DATABASE "schema2342";
USE "schema2342";
CREATE TABLE "animal_event_given_away" (
	"id" SERIAL,
	"former_owner_id" INTEGER,
	"reason" TEXT,
	"animal_id" INTEGER,
	"date_time" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "animal_event_found" (
	"id" SERIAL,
	"street" VARCHAR,
	"house_no" VARCHAR,
	"municipality_id" INTEGER,
	"date_time" TIMESTAMP,
	"animal_id" INTEGER,
	"comments" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "animal_event_medical_record" (
	"id" SERIAL,
	"animal" INTEGER,
	"type" ENUM,
	"expenses" NUMERIC,
	"date_time" TIMESTAMP,
	"comments" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "animal_event_general" (
	"id" SERIAL,
	"animal" INTEGER,
	"type" ENUM,
	"expenses" NUMERIC,
	"date_time" TIMESTAMP,
	"comments" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "event_translation" (
	"event" ENUM,
	"language" VARCHAR,
	"translation" VARCHAR,
	 PRIMARY KEY ("event","language")
);

CREATE TABLE "animal_gallery" (
	"id" SERIAL,
	"animal_id" INTEGER,
	"url" VARCHAR,
	"mod_time" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "former_animal_owner" (
	"id" SERIAL,
	"name" VARCHAR,
	"surname" VARCHAR,
	"phone" VARCHAR,
	"mod_time" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "status_translation" (
	"status" VARCHAR,
	"language" VARCHAR,
	"translation" VARCHAR,
	 PRIMARY KEY ("status","language")
);

CREATE TABLE "animal_favorite" (
	"user_id" VARCHAR,
	"animal_id" INTEGER,
	"mod_time" TIMESTAMP,
	 PRIMARY KEY ("user_id","animal_id")
);

CREATE TABLE "animal_microchip" (
	"animal_id" INTEGER,
	"microchip_id" VARCHAR,
	"chip_company_code" ENUM,
	"install_date" DATE,
	"install_place" ENUM,
	"status" ENUM,
	"mod_time" TIMESTAMP,
	 PRIMARY KEY ("animal_id","microchip_id")
);

CREATE TABLE "install_place_translation" (
	"install_place" ENUM,
	"language" VARCHAR,
	"translation" VARCHAR,
	 PRIMARY KEY ("install_place","language")
);

CREATE TABLE "chip_company_translation" (
	"chip_company_code" ENUM,
	"language" VARCHAR,
	"translation" VARCHAR,
	 PRIMARY KEY ("chip_company_code","language")
);

CREATE TABLE "animal_registration" (
	"animal_id" INTEGER,
	"registration_no" VARCHAR,
	"registration_date" DATE,
	"status" ENUM,
	"mod_time" TIMESTAMP,
	 PRIMARY KEY ("animal_id")
);

CREATE TABLE "animal_details" (
	"animal_id" INTEGER,
	"breed_id" INTEGER,
	"gender_id" ENUM,
	"color_id" INTEGER,
	"birth_date" DATE,
	"weight" NUMERIC,
	"allergy" VARCHAR,
	"food" VARCHAR,
	"animal_behavior" VARCHAR,
	"mod_time" TIMESTAMP,
	 PRIMARY KEY ("animal_id")
);

CREATE TABLE "animal" (
	"id" SERIAL,
	"name" VARCHAR,
	"organization" INTEGER,
	"status" ENUM,
	"image_url" VARCHAR,
	"comments" TEXT,
	"mod_time" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "color_pattern" (
	"code" INTEGER,
	"species" ENUM,
	 PRIMARY KEY ("code","species")
);

CREATE TABLE "color_pattern_translation" (
	"color_pattern" INTEGER,
	"species" ENUM,
	"language" VARCHAR,
	"translation" VARCHAR,
	 PRIMARY KEY ("color_pattern","species","language"),
	 CONSTRAINT "fkeycon_color_pattern_translation_to_color_pattern" FOREIGN KEY ("color_pattern","species") REFERENCES "color_pattern" ("code","species")
);

CREATE TABLE "color_translation" (
	"color" INTEGER,
	"language" VARCHAR,
	"translation" VARCHAR,
	 PRIMARY KEY ("color","language")
);

CREATE TABLE "color" (
	"code" INTEGER,
	"species" ENUM,
	 PRIMARY KEY ("code")
);

CREATE TABLE "disease_translation" (
	"disease" INTEGER,
	"language" VARCHAR,
	"translation" VARCHAR,
	 PRIMARY KEY ("disease","language")
);

CREATE TABLE "disease" (
	"code" INTEGER,
	"species" ENUM,
	 PRIMARY KEY ("code")
);

CREATE TABLE "gender_translation" (
	"gender" ENUM,
	"language" VARCHAR,
	"translation" VARCHAR,
	 PRIMARY KEY ("gender","language")
);

CREATE TABLE "breed_translation" (
	"breed" INTEGER,
	"language" VARCHAR,
	"translation" VARCHAR,
	 PRIMARY KEY ("breed","language")
);

CREATE TABLE "breed" (
	"id" INTEGER,
	"abbreviation" VARCHAR,
	"species" ENUM,
	 PRIMARY KEY ("id")
);

CREATE TABLE "breed_category_translation" (
	"breed_category" INTEGER,
	"language" VARCHAR,
	"translation" VARCHAR,
	 PRIMARY KEY ("breed_category","language")
);

CREATE TABLE "breed_category" (
	"id" INTEGER,
	"species" ENUM,
	 PRIMARY KEY ("id")
);

CREATE TABLE "species_translation" (
	"species" ENUM,
	"language" VARCHAR,
	"translation" VARCHAR,
	 PRIMARY KEY ("species","language")
);

CREATE TABLE "app_user_roles" (
	"user_id" VARCHAR,
	"organization_id" INTEGER,
	"role_type" ENUM,
	 PRIMARY KEY ("user_id","organization_id")
);

CREATE TABLE "app_user" (
	"id" VARCHAR,
	"username" VARCHAR,
	"name" VARCHAR,
	"surname" VARCHAR,
	"email" VARCHAR,
	"mod_time" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "municipality" (
	"id" SERIAL,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "organization_task" (
	"id" SERIAL,
	"title" VARCHAR,
	"description" VARCHAR,
	"organization_id" INTEGER,
	"is_done" BOOLEAN,
	"mod_time" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "organization" (
	"id" SERIAL,
	"name" VARCHAR,
	"country" VARCHAR,
	"city" VARCHAR,
	"street_address" VARCHAR,
	"phone" VARCHAR,
	"company_code" VARCHAR,
	"mod_time" TIMESTAMP,
	 PRIMARY KEY ("id")
);
