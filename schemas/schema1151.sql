DROP DATABASE IF EXISTS "schema1151";
CREATE DATABASE "schema1151";
USE "schema1151";
CREATE TABLE "items" (
	"id" SERIAL,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "collaborators" (
	"id" SERIAL,
	"full_name" VARCHAR,
	"cpf" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "collaborator_items" (
	"id" SERIAL,
	"collaborator_id" INT,
	"item_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_collaborator_items_to_collaborators" FOREIGN KEY ("collaborator_id") REFERENCES "collaborators" ("id"),
	 CONSTRAINT "fkeycon_collaborator_items_to_items" FOREIGN KEY ("item_id") REFERENCES "items" ("id")
);
