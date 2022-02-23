DROP DATABASE IF EXISTS "schema1864";
CREATE DATABASE "schema1864";
USE "schema1864";
CREATE TABLE "users" (
	"id" CHAR,
	"login" VARCHAR,
	"admin" TINYINT,
	"approved" TINYINT,
	"password_hash" VARCHAR,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"shared" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "traveltypes" (
	"id" CHAR,
	"name" VARCHAR,
	"description" TEXT,
	"def" TINYINT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "schema_migration" (
	"version" VARCHAR
);

CREATE TABLE "outtaketypes" (
	"id" CHAR,
	"name" VARCHAR,
	"description" TEXT,
	"def" TINYINT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "outtakes" (
	"id" CHAR,
	"date" DATETIME,
	"outtaketype_id" CHAR,
	"location" VARCHAR,
	"note" TEXT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "logentries" (
	"id" CHAR,
	"user_id" CHAR,
	"description" TEXT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "intakes" (
	"id" CHAR,
	"date" DATETIME,
	"general" TEXT,
	"wounds" TEXT,
	"parasites" TEXT,
	"remarks" TEXT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "drugs" (
	"id" CHAR,
	"name" VARCHAR,
	"description" TEXT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "discoverers" (
	"id" CHAR,
	"firstname" VARCHAR,
	"lastname" VARCHAR,
	"address" VARCHAR,
	"city" VARCHAR,
	"country" VARCHAR,
	"email" VARCHAR,
	"phone" VARCHAR,
	"note" TEXT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "discoveries" (
	"id" CHAR,
	"location" VARCHAR,
	"date" DATETIME,
	"reason" TEXT,
	"note" TEXT,
	"discoverer_id" CHAR,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "discoveries_ibfk_1" FOREIGN KEY ("discoverer_id") REFERENCES "discoverers" ("id")
);

CREATE TABLE "caretypes" (
	"id" CHAR,
	"name" VARCHAR,
	"description" TEXT,
	"def" TINYINT,
	"warning" TINYINT,
	"reset_warning" TINYINT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "animaltypes" (
	"id" CHAR,
	"name" VARCHAR,
	"description" TEXT,
	"def" TINYINT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"has_ring" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "dosages" (
	"id" CHAR,
	"animaltype_id" CHAR,
	"drug_id" CHAR,
	"enabled" TINYINT,
	"description" TEXT,
	"dosage_per_grams" FLOAT,
	"dosage_per_grams_unit" TEXT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "dosages_ibfk_1" FOREIGN KEY ("animaltype_id") REFERENCES "animaltypes" ("id")
);

CREATE TABLE "animals" (
	"id" INT,
	"species" VARCHAR,
	"ring" VARCHAR,
	"cage" VARCHAR,
	"animalage_id" CHAR,
	"animaltype_id" CHAR,
	"discovery_id" CHAR,
	"intake_id" CHAR,
	"outtake_id" CHAR,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"feeding" VARCHAR,
	"gender" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "veterinaryvisits" (
	"id" CHAR,
	"date" DATETIME,
	"user_id" CHAR,
	"animal_id" INT,
	"veterinary" TEXT,
	"diagnostic" TEXT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "veterinaryvisits_ibfk_2" FOREIGN KEY ("animal_id") REFERENCES "animals" ("id"),
	 CONSTRAINT "veterinaryvisits_ibfk_1" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);

CREATE TABLE "treatments" (
	"id" CHAR,
	"date" DATETIME,
	"animal_id" INT,
	"drug" VARCHAR,
	"dosage" VARCHAR,
	"remarks" TEXT,
	"timebitmap" INT,
	"timedonebitmap" INT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "treatments_animals_id_fk" FOREIGN KEY ("animal_id") REFERENCES "animals" ("id")
);

CREATE TABLE "travels" (
	"id" CHAR,
	"date" DATETIME,
	"animal_id" INT,
	"user_id" CHAR,
	"traveltype_id" CHAR,
	"type_details" VARCHAR,
	"distance" INT,
	"details" TEXT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "travels_ibfk_1" FOREIGN KEY ("animal_id") REFERENCES "animals" ("id")
);

CREATE TABLE "cares" (
	"id" CHAR,
	"date" DATETIME,
	"type_id" CHAR,
	"animal_id" INT,
	"weight" VARCHAR,
	"note" TEXT,
	"clean" TINYINT,
	"in_warning" TINYINT,
	"link_to_id" CHAR,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "cares_ibfk_3" FOREIGN KEY ("link_to_id") REFERENCES "cares" ("id"),
	 CONSTRAINT "cares_ibfk_2" FOREIGN KEY ("animal_id") REFERENCES "animals" ("id")
);

CREATE TABLE "animalages" (
	"id" CHAR,
	"name" VARCHAR,
	"description" TEXT,
	"def" TINYINT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);
