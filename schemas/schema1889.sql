DROP DATABASE IF EXISTS "schema1889";
CREATE DATABASE "schema1889";
USE "schema1889";
CREATE TABLE "candidate_infos" (
	"hash_val" VARCHAR,
	"hash_alg" VARCHAR,
	"name" VARCHAR,
	"version" VARCHAR,
	"package_type" VARCHAR,
	"source" VARCHAR,
	"location" VARCHAR,
	"requirements_cached" TINYINT,
	 PRIMARY KEY ("hash_val")
);

CREATE TABLE "requirement_infos" (
	"id" INTEGER,
	"candidate_hash" VARCHAR,
	"name" VARCHAR,
	"specifier" VARCHAR,
	"extras" VARCHAR,
	"marker" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_requirement_infos_to_candidate_infos" FOREIGN KEY ("candidate_hash") REFERENCES "candidate_infos" ("hash_val")
);
