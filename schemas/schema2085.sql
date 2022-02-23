DROP DATABASE IF EXISTS "schema2085";
CREATE DATABASE "schema2085";
USE "schema2085";
CREATE TABLE "language" (
	"id" INT,
	"code" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "status_localization" (
	"id" INT,
	"name" VARCHAR,
	"status_id" INT,
	"language_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_service_localization_status_language1" FOREIGN KEY ("language_id") REFERENCES "language" ("id")
);

CREATE TABLE "status" (
	"id" INT,
	"name" ENUM,
	"status_localization_status_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_status_status_localization_status" FOREIGN KEY ("status_localization_status_id") REFERENCES "status_localization" ("id")
);

CREATE TABLE "invoice" (
	"id" INT,
	"name" VARCHAR,
	"ammount" DECIMAL,
	 PRIMARY KEY ("id")
);

CREATE TABLE "role" (
	"name" ENUM,
	"id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "account" (
	"id" INT,
	"login" VARCHAR,
	"password" VARCHAR,
	"create_time" TIMESTAMP,
	"role_id" INT,
	"invoice_id" INT,
	"email" VARCHAR,
	"deleted" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_account_invoice1" FOREIGN KEY ("invoice_id") REFERENCES "invoice" ("id"),
	 CONSTRAINT "fk_account_role" FOREIGN KEY ("role_id") REFERENCES "role" ("id")
);

CREATE TABLE "repair_request" (
	"id" INT,
	"cost" DECIMAL,
	"date" DATETIME,
	"status_id" INT,
	"master_id" INT,
	"account_id" INT,
	"description" VARCHAR,
	"service_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_repair_request_status" FOREIGN KEY ("status_id") REFERENCES "status" ("id"),
	 CONSTRAINT "fk_repair_request_master" FOREIGN KEY ("master_id") REFERENCES "account" ("id"),
	 CONSTRAINT "fk_repair_request_account" FOREIGN KEY ("account_id") REFERENCES "account" ("id")
);

CREATE TABLE "review" (
	"id" INT,
	"comment" VARCHAR,
	"repair_request_id" INT,
	"date" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_review_repair_request" FOREIGN KEY ("repair_request_id") REFERENCES "repair_request" ("id")
);
