DROP DATABASE IF EXISTS "schema1153";
CREATE DATABASE "schema1153";
USE "schema1153";
CREATE TABLE "users" (
	"id" VARCHAR,
	"chat_id" VARCHAR,
	"phone_number" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "memory" (
	"user_id" VARCHAR,
	"field_name" VARCHAR,
	"field_value" TEXT,
	 CONSTRAINT "fkeycon_memory_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);

CREATE TABLE "states" (
	"user_id" VARCHAR,
	"state" VARCHAR,
	"previous_state" VARCHAR,
	"skill_id" VARCHAR,
	"memory_field" VARCHAR,
	 PRIMARY KEY ("user_id"),
	 CONSTRAINT "fkeycon_states_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);
