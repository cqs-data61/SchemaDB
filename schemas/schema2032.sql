DROP DATABASE IF EXISTS "schema2032";
CREATE DATABASE "schema2032";
USE "schema2032";
CREATE TABLE "groupclient" (
	"id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "clients" (
	"id" INT,
	"name" VARCHAR,
	"lastname" VARCHAR,
	"email" VARCHAR,
	"observations" LONGTEXT,
	"groupclient_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK_C82E74BCEAE29D" FOREIGN KEY ("groupclient_id") REFERENCES "groupclient" ("id")
);
