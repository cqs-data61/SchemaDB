DROP DATABASE IF EXISTS "schema1166";
CREATE DATABASE "schema1166";
USE "schema1166";
CREATE TABLE "card_type" (
	"id" SERIAL,
	"description" TEXT,
	"image_name" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "person" (
	"id" SERIAL,
	"username" TEXT,
	"password" TEXT,
	"registration_date" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "auth_role" (
	"person_id" INTEGER,
	"user_role" TEXT,
	 PRIMARY KEY ("person_id","user_role"),
	 CONSTRAINT "fk_person_id" FOREIGN KEY ("person_id") REFERENCES "person" ("id")
);

CREATE TABLE "question_group" (
	"id" SERIAL,
	"group_name" TEXT,
	"person_id" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_person_id" FOREIGN KEY ("person_id") REFERENCES "person" ("id")
);

CREATE TABLE "question" (
	"id" SERIAL,
	"question_text" TEXT,
	"question_group_id" INTEGER,
	"finalized" BOOLEAN,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_question_group_id" FOREIGN KEY ("question_group_id") REFERENCES "question_group" ("id")
);

CREATE TABLE "card" (
	"id" SERIAL,
	"order_number" INTEGER,
	"vertical_status_name" TEXT,
	"question_id" INTEGER,
	"card_type_id" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_card_type_id" FOREIGN KEY ("card_type_id") REFERENCES "card_type" ("id"),
	 CONSTRAINT "fk_question_id" FOREIGN KEY ("question_id") REFERENCES "question" ("id")
);

CREATE TABLE "empty_card" (
	"id" SERIAL,
	"card_id" INTEGER,
	"vertical_status_name" TEXT,
	"card_type_id" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_card_type_id" FOREIGN KEY ("card_type_id") REFERENCES "card_type" ("id"),
	 CONSTRAINT "fk_card_id" FOREIGN KEY ("card_id") REFERENCES "card" ("id")
);
