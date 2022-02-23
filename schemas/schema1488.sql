DROP DATABASE IF EXISTS "schema1488";
CREATE DATABASE "schema1488";
USE "schema1488";
CREATE TABLE "revinfo" (
	"rev" BIGINT,
	"revtstmp" BIGINT,
	 PRIMARY KEY ("rev")
);

CREATE TABLE "audit_log_person" (
	"uuid" VARCHAR,
	"rev" BIGINT,
	"revtype" TINYINT,
	"name" VARCHAR,
	"surname" VARCHAR,
	 PRIMARY KEY ("uuid","rev"),
	 CONSTRAINT "FK5ttow0dayp04270fwjcw79dqn" FOREIGN KEY ("rev") REFERENCES "revinfo" ("rev")
);

CREATE TABLE "person" (
	"uuid" VARCHAR,
	"name" VARCHAR,
	"surname" VARCHAR,
	 PRIMARY KEY ("uuid")
);
