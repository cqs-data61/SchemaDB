DROP DATABASE IF EXISTS "schema952";
CREATE DATABASE "schema952";
USE "schema952";
CREATE TABLE "users" (
	"id" INTEGER,
	"first_name" CHARACTER VARYING,
	"last_name" CHARACTER VARYING,
	"email" CHARACTER VARYING,
	"password" CHARACTER VARYING,
	"access_level" INTEGER,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "schema_migration" (
	"version" CHARACTER VARYING
);

CREATE TABLE "rooms" (
	"id" INTEGER,
	"room_name" CHARACTER VARYING,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "reservations" (
	"id" INTEGER,
	"first_name" CHARACTER VARYING,
	"last_name" CHARACTER VARYING,
	"email" CHARACTER VARYING,
	"phone" CHARACTER VARYING,
	"start_date" DATE,
	"end_date" DATE,
	"room_id" INTEGER,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"processed" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "reservations_rooms_id_fk" FOREIGN KEY ("room_id") REFERENCES "rooms" ("id")
);

CREATE TABLE "restrictions" (
	"id" INTEGER,
	"restriction_name" CHARACTER VARYING,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "room_restrictions" (
	"id" INTEGER,
	"start_date" DATE,
	"end_date" DATE,
	"room_id" INTEGER,
	"reservation_id" INTEGER,
	"restriction_id" INTEGER,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "room_restrictions_reservations_id_fk" FOREIGN KEY ("reservation_id") REFERENCES "reservations" ("id"),
	 CONSTRAINT "room_restrictions_restrictions_id_fk" FOREIGN KEY ("restriction_id") REFERENCES "restrictions" ("id"),
	 CONSTRAINT "room_restrictions_rooms_id_fk" FOREIGN KEY ("room_id") REFERENCES "rooms" ("id")
);
