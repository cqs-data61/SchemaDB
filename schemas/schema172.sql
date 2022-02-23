DROP DATABASE IF EXISTS "schema172";
CREATE DATABASE "schema172";
USE "schema172";
CREATE TABLE "users_interests" (
	"id" SERIAL,
	"user_id" INTEGER,
	"interest_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "interests" (
	"id" SERIAL,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "messages" (
	"id" SERIAL,
	"sender_id" INTEGER,
	"receiver_id" INTEGER,
	"message" TEXT,
	"sentdate" TIMESTAMP,
	"room_id" INTEGER,
	"applicant_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "rooms" (
	"id" SERIAL,
	"user_id" INTEGER,
	"title" VARCHAR,
	"description" TEXT,
	"latitude" DECIMAL,
	"longitude" DECIMAL,
	"room_size" INTEGER,
	"start_date" DATE,
	"end_date" DATE,
	"price" INTEGER,
	"is_pet_friendly" BOOLEAN,
	"has_heating" BOOLEAN,
	"has_parking" BOOLEAN,
	"has_private_bath" BOOLEAN,
	"active" BOOLEAN,
	"city_id" INTEGER,
	"address" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" SERIAL,
	"firstname" VARCHAR,
	"lastname" VARCHAR,
	"is_owner" BOOLEAN,
	"level" INTEGER,
	"address" VARCHAR,
	"city_id" INTEGER,
	"description" TEXT,
	"email" VARCHAR,
	"password" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cities" (
	"id" SERIAL,
	"name" VARCHAR,
	"latitude" DECIMAL,
	"longitude" DECIMAL,
	"description" TEXT,
	"image" TEXT,
	 PRIMARY KEY ("id")
);
