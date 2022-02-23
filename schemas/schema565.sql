DROP DATABASE IF EXISTS "schema565";
CREATE DATABASE "schema565";
USE "schema565";
CREATE TABLE "authitem" (
	"name" VARCHAR,
	"type" INTEGER,
	"description" TEXT,
	"bizrule" TEXT,
	"data" TEXT,
	 PRIMARY KEY ("name")
);

CREATE TABLE "rights" (
	"itemname" VARCHAR,
	"type" INTEGER,
	"weight" INTEGER,
	 PRIMARY KEY ("itemname"),
	 CONSTRAINT "fkeycon_rights_to_authitem" FOREIGN KEY ("itemname") REFERENCES "authitem" ("name")
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
