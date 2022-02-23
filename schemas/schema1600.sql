DROP DATABASE IF EXISTS "schema1600";
CREATE DATABASE "schema1600";
USE "schema1600";
CREATE TABLE "certificate" (
	"certificate_id" INT,
	"certificate_name" VARCHAR,
	"description" VARCHAR,
	"price" DECIMAL,
	"duration" INT,
	"create_date" TIMESTAMP,
	"last_update_date" TIMESTAMP,
	 PRIMARY KEY ("certificate_id")
);

CREATE TABLE "tag" (
	"id_tag" INT,
	"name_tag" VARCHAR,
	 PRIMARY KEY ("id_tag")
);

CREATE TABLE "certificate_tag" (
	"certificate_id" INT,
	"id_tag" INT,
	 PRIMARY KEY ("certificate_id","id_tag"),
	 CONSTRAINT "fkeycon_certificate_tag_to_tag" FOREIGN KEY ("id_tag") REFERENCES "tag" ("id_tag"),
	 CONSTRAINT "fkeycon_certificate_tag_to_certificate" FOREIGN KEY ("certificate_id") REFERENCES "certificate" ("certificate_id")
);
