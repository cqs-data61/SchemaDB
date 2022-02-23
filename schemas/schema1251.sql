DROP DATABASE IF EXISTS "schema1251";
CREATE DATABASE "schema1251";
USE "schema1251";
CREATE TABLE "notification_messages" (
	"id" SERIAL,
	"text" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "trashes_threshold" (
	"id" SERIAL,
	"max_occupation" FLOAT,
	"color" VARCHAR,
	"id_trash" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "profiles" (
	"id" SERIAL,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "type_trash" (
	"id" SERIAL,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "trash_status" (
	"id" SERIAL,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zones" (
	"id" SERIAL,
	"name" VARCHAR,
	"description" VARCHAR,
	"longitude" NUMERIC,
	"latitude" NUMERIC,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" SERIAL,
	"email" VARCHAR,
	"name" VARCHAR,
	"login" VARCHAR,
	"password" VARCHAR,
	"blocked" BOOLEAN,
	"dt_register" TIMESTAMP,
	"id_zone" INTEGER,
	"must_change_pwd" BOOLEAN,
	"id_profile" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_zone_user" FOREIGN KEY ("id_zone") REFERENCES "zones" ("id"),
	 CONSTRAINT "fk_users_profiles" FOREIGN KEY ("id_profile") REFERENCES "profiles" ("id")
);

CREATE TABLE "notification_tokens" (
	"id" SERIAL,
	"token" VARCHAR,
	"id_user" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_notification_tokens_users_notifications" FOREIGN KEY ("id_user") REFERENCES "users" ("id")
);

CREATE TABLE "users_notifications" (
	"id" SERIAL,
	"id_user" INTEGER,
	"disabled_until" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_users_notifications" FOREIGN KEY ("id_user") REFERENCES "users" ("id")
);

CREATE TABLE "notification_history" (
	"id" SERIAL,
	"id_users_notifications" INTEGER,
	"id_notification_messages" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_notification_messages" FOREIGN KEY ("id_notification_messages") REFERENCES "notification_messages" ("id"),
	 CONSTRAINT "fk_notification_history" FOREIGN KEY ("id_users_notifications") REFERENCES "users_notifications" ("id")
);

CREATE TABLE "buildings" (
	"id" SERIAL,
	"name" VARCHAR,
	"longitude" NUMERIC,
	"latitude" NUMERIC,
	"id_zone" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_buildings_zones" FOREIGN KEY ("id_zone") REFERENCES "zones" ("id")
);

CREATE TABLE "trashes" (
	"id" SERIAL,
	"brand" VARCHAR,
	"description" VARCHAR,
	"capacity" FLOAT,
	"occupation" FLOAT,
	"id_status" INTEGER,
	"id_type" INTEGER,
	"id_building" INTEGER,
	"id_zone" INTEGER,
	"local_description" VARCHAR,
	"longitude" NUMERIC,
	"latitude" NUMERIC,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_zones_trashes" FOREIGN KEY ("id_zone") REFERENCES "zones" ("id"),
	 CONSTRAINT "fk_trash_status" FOREIGN KEY ("id_status") REFERENCES "trash_status" ("id"),
	 CONSTRAINT "fk_type_liv" FOREIGN KEY ("id_type") REFERENCES "type_trash" ("id"),
	 CONSTRAINT "fk_trashes_buildings" FOREIGN KEY ("id_building") REFERENCES "buildings" ("id")
);

CREATE TABLE "types_events" (
	"id" SERIAL,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "events" (
	"id" SERIAL,
	"description" VARCHAR,
	"creation_date" TIMESTAMP,
	"problem_status" VARCHAR,
	"id_type_events" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_type_events" FOREIGN KEY ("id_type_events") REFERENCES "types_events" ("id")
);

CREATE TABLE "trashes_events" (
	"id" SERIAL,
	"id_event" INTEGER,
	"id_trash" INTEGER,
	"id_user" INTEGER,
	"occupation" FLOAT,
	"others" VARCHAR,
	"date" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_trashes_events_users" FOREIGN KEY ("id_user") REFERENCES "users" ("id"),
	 CONSTRAINT "fk_trashes_events_events" FOREIGN KEY ("id_event") REFERENCES "events" ("id"),
	 CONSTRAINT "fk_trashes_events_trash" FOREIGN KEY ("id_trash") REFERENCES "trashes" ("id")
);
