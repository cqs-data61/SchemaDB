DROP DATABASE IF EXISTS "schema1993";
CREATE DATABASE "schema1993";
USE "schema1993";
CREATE TABLE "users" (
	"user_id" INT,
	"username" VARCHAR,
	"password_hash" VARCHAR,
	"role" VARCHAR,
	 PRIMARY KEY ("user_id")
);

CREATE TABLE "pets" (
	"pet_id" SERIAL,
	"name" VARCHAR,
	"user_id" INT,
	"species" VARCHAR,
	"breed" VARCHAR,
	"weight" INTEGER,
	"birth_year" INTEGER,
	"energetic_relaxed" VARCHAR,
	"shy_friendly" VARCHAR,
	"apathetic_curious" VARCHAR,
	"bio" VARCHAR,
	"pic" VARCHAR,
	 PRIMARY KEY ("pet_id"),
	 CONSTRAINT "fk_user" FOREIGN KEY ("user_id") REFERENCES "users" ("user_id")
);

CREATE TABLE "messages" (
	"message_id" SERIAL,
	"user_id" INT,
	"message" VARCHAR,
	"posted_date" TIMESTAMP,
	"pet_id" INT,
	 PRIMARY KEY ("message_id"),
	 CONSTRAINT "fk_user" FOREIGN KEY ("user_id") REFERENCES "users" ("user_id"),
	 CONSTRAINT "fk_pet" FOREIGN KEY ("pet_id") REFERENCES "pets" ("pet_id")
);

CREATE TABLE "playdates" (
	"playdate_id" SERIAL,
	"pet_id" INT,
	"address" VARCHAR,
	"city" VARCHAR,
	"state" VARCHAR,
	"zip" VARCHAR,
	"date" TIMESTAMP,
	"lat" VARCHAR,
	"lng" VARCHAR,
	"deleted_date" DATE,
	 PRIMARY KEY ("playdate_id"),
	 CONSTRAINT "fk_pet" FOREIGN KEY ("pet_id") REFERENCES "pets" ("pet_id")
);

CREATE TABLE "playdates_pets" (
	"playdate_id" INT,
	"pet_id" INT,
	"is_host" BOOLEAN,
	"deleted_date" DATE,
	 CONSTRAINT "fk_pet" FOREIGN KEY ("pet_id") REFERENCES "pets" ("pet_id"),
	 CONSTRAINT "fk_playdate" FOREIGN KEY ("playdate_id") REFERENCES "playdates" ("playdate_id")
);

CREATE TABLE "accounts" (
	"account_id" SERIAL,
	"user_id" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"email" VARCHAR,
	"phone" VARCHAR,
	"address" VARCHAR,
	"city" VARCHAR,
	"state" VARCHAR,
	"zip" VARCHAR,
	"bio" VARCHAR,
	"pic" VARCHAR,
	"lat" VARCHAR,
	"lng" VARCHAR,
	 PRIMARY KEY ("account_id"),
	 CONSTRAINT "fk_user" FOREIGN KEY ("user_id") REFERENCES "users" ("user_id")
);
