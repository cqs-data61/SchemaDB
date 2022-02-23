DROP DATABASE IF EXISTS "schema1717";
CREATE DATABASE "schema1717";
USE "schema1717";
CREATE TABLE "customer" (
	"custid" INTEGER,
	"custmode" CHAR,
	 PRIMARY KEY ("custid")
);

CREATE TABLE "physical_entity" (
	"custid" INTEGER,
	"pe_name_full" VARCHAR,
	"pe_name_first" VARCHAR,
	"pe_name_middle" VARCHAR,
	"pe_name_last" VARCHAR,
	"pe_num_pay" VARCHAR,
	"pe_num_soc" VARCHAR,
	 PRIMARY KEY ("custid"),
	 CONSTRAINT "pe_fk1" FOREIGN KEY ("custid") REFERENCES "customer" ("custid")
);

CREATE TABLE "legal_entity" (
	"custid" INTEGER,
	"le_name" VARCHAR,
	"le_num_reg" VARCHAR,
	"le_num_pay" VARCHAR,
	 PRIMARY KEY ("custid"),
	 CONSTRAINT "le_fk1" FOREIGN KEY ("custid") REFERENCES "customer" ("custid")
);
