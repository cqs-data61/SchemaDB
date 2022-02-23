DROP DATABASE IF EXISTS "schema2079";
CREATE DATABASE "schema2079";
USE "schema2079";
CREATE TABLE "agent" (
	"id" VARCHAR,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "customers" (
	"id" VARCHAR,
	"email" VARCHAR,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "ticket" (
	"id" VARCHAR,
	"assigned_to_user" BIT,
	"created_by_user" BIT,
	"description" LONGTEXT,
	"priority" INT,
	"status" VARCHAR,
	"title" VARCHAR,
	"type" VARCHAR,
	"agent_id" VARCHAR,
	"customer_id" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_on" TIMESTAMP,
	"ticket_assigned_time" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK61vgc7a8crcmpp9m5y12tnlgb" FOREIGN KEY ("agent_id") REFERENCES "agent" ("id"),
	 CONSTRAINT "FKipbwbmk54e3e8ep4yexvp9n5x" FOREIGN KEY ("customer_id") REFERENCES "customers" ("id")
);

CREATE TABLE "response" (
	"id" VARCHAR,
	"response" LONGTEXT,
	"agent_id" VARCHAR,
	"customer_id" VARCHAR,
	"ticket_id" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK9q6137epp37m2qcjan7amx6es" FOREIGN KEY ("agent_id") REFERENCES "agent" ("id"),
	 CONSTRAINT "FK9opb9u01oi5ih2kyfrhv5rtk9" FOREIGN KEY ("ticket_id") REFERENCES "ticket" ("id"),
	 CONSTRAINT "FKqofv83ktekj1cmboflpv1c2rr" FOREIGN KEY ("customer_id") REFERENCES "customers" ("id")
);
