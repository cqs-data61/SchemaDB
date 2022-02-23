DROP DATABASE IF EXISTS "schema497";
CREATE DATABASE "schema497";
USE "schema497";
CREATE TABLE "sessions" (
	"id" BIGSERIAL,
	"creation_date" DATETIME,
	"expire_date" DATETIME,
	"user_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" BIGSERIAL,
	"first_name" TEXT,
	"surname" TEXT,
	"email" TEXT,
	"user_name" TEXT,
	"password" TEXT,
	"hotel_id" BIGINT,
	"user_role" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "hotels" (
	"id" BIGSERIAL,
	"api_token" TEXT,
	"hotel_name" TEXT,
	"hotel_desc" TEXT,
	"city" TEXT,
	"country" TEXT,
	"preview_picture_url" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "offers_rooms" (
	"offer_id" BIGINT,
	"room_id" BIGINT
);

CREATE TABLE "rooms" (
	"id" BIGSERIAL,
	"room_number" TEXT,
	"hotel_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "offers" (
	"id" BIGSERIAL,
	"hotel_id" BIGINT,
	"is_active" BOOL,
	"offer_title" TEXT,
	"cost_per_child" DECIMAL,
	"cost_per_adult" DECIMAL,
	"max_guests" INTEGER,
	"description" TEXT,
	"offer_preview_picture_url" TEXT,
	 PRIMARY KEY ("id")
);
