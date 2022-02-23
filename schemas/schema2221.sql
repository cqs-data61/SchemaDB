DROP DATABASE IF EXISTS "schema2221";
CREATE DATABASE "schema2221";
USE "schema2221";
CREATE TABLE "authitem" (
	"name" VARCHAR,
	"type" INTEGER,
	"description" TEXT,
	"bizrule" TEXT,
	"data" TEXT,
	 PRIMARY KEY ("name")
);

CREATE TABLE "authassignment" (
	"itemname" VARCHAR,
	"userid" VARCHAR,
	"bizrule" TEXT,
	"data" TEXT,
	 PRIMARY KEY ("itemname","userid"),
	 CONSTRAINT "fkeycon_authassignment_to_authitem" FOREIGN KEY ("itemname") REFERENCES "authitem" ("name")
);

CREATE TABLE "authitemchild" (
	"parent" VARCHAR,
	"child" VARCHAR,
	 PRIMARY KEY ("parent","child"),
	 CONSTRAINT "fkeycon_authitemchild_to_authitem" FOREIGN KEY ("child") REFERENCES "authitem" ("name")
);
