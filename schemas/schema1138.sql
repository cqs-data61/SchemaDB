DROP DATABASE IF EXISTS "schema1138";
CREATE DATABASE "schema1138";
USE "schema1138";
CREATE TABLE "shop" (
	"id" INTEGER,
	"name" TEXT,
	"address" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "agents" (
	"id" INTEGER,
	"name" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bill" (
	"id" INTEGER,
	"createdon" TEXT,
	"dueon" TEXT,
	"amount" REAL,
	"shopid" INTEGER,
	"agentid" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_bill_to_shop" FOREIGN KEY ("shopid") REFERENCES "shop" ("id"),
	 CONSTRAINT "fkeycon_bill_to_agents" FOREIGN KEY ("agentid") REFERENCES "agents" ("id")
);

CREATE TABLE "bill_payment" (
	"id" INTEGER,
	"dueon" TEXT,
	"paidon" TEXT,
	"paidamount" REAL,
	"billid" INTEGER,
	"ispaid" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_bill_payment_to_bill" FOREIGN KEY ("billid") REFERENCES "bill" ("id")
);
