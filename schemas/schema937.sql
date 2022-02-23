DROP DATABASE IF EXISTS "schema937";
CREATE DATABASE "schema937";
USE "schema937";
CREATE TABLE "gift_certificates" (
	"id" BIGINT,
	"name" VARCHAR,
	"description" VARCHAR,
	"duration" SMALLINT,
	"create_date" DATETIME,
	"last_update_date" DATETIME,
	"price" DECIMAL
);

CREATE TABLE "tags" (
	"id" BIGINT,
	"name" VARCHAR
);

CREATE TABLE "tags_gift_certificates" (
	"id" BIGINT,
	"tag_id" BIGINT,
	"gift_certificate_id" BIGINT,
	 CONSTRAINT "fkeycon_tags_gift_certificates_to_gift_certificates" FOREIGN KEY ("gift_certificate_id") REFERENCES "gift_certificates" ("id"),
	 CONSTRAINT "fkeycon_tags_gift_certificates_to_tags" FOREIGN KEY ("tag_id") REFERENCES "tags" ("id")
);
