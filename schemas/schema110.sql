DROP DATABASE IF EXISTS "schema110";
CREATE DATABASE "schema110";
USE "schema110";
CREATE TABLE "tsigkeys" (
	"id" INT,
	"name" VARCHAR,
	"algorithm" VARCHAR,
	"secret" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cryptokeys" (
	"id" INT,
	"domain_id" INT,
	"flags" INT,
	"active" BOOL,
	"published" BOOL,
	"content" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "domainmetadata" (
	"id" INT,
	"domain_id" INT,
	"kind" VARCHAR,
	"content" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "comments" (
	"id" INT,
	"domain_id" INT,
	"name" VARCHAR,
	"type" VARCHAR,
	"modified_at" INT,
	"account" VARCHAR,
	"comment" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "supermasters" (
	"ip" VARCHAR,
	"nameserver" VARCHAR,
	"account" VARCHAR,
	 PRIMARY KEY ("ip","nameserver")
);

CREATE TABLE "records" (
	"id" BIGINT,
	"domain_id" INT,
	"name" VARCHAR,
	"type" VARCHAR,
	"content" VARCHAR,
	"ttl" INT,
	"prio" INT,
	"disabled" TINYINT,
	"ordername" VARCHAR,
	"auth" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "domains" (
	"id" INT,
	"name" VARCHAR,
	"master" VARCHAR,
	"last_check" INT,
	"type" VARCHAR,
	"notified_serial" INT,
	"account" VARCHAR,
	 PRIMARY KEY ("id")
);
