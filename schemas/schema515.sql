DROP DATABASE IF EXISTS "schema515";
CREATE DATABASE "schema515";
USE "schema515";
CREATE TABLE "item" (
	"itemid" INTEGER,
	"identifier" VARCHAR,
	"description" VARCHAR,
	"itemtype" INTEGER,
	"field1" VARCHAR,
	"field2" VARCHAR,
	"created_date" DATE,
	"updated_date" DATE,
	 PRIMARY KEY ("itemid")
);

CREATE TABLE "itemrel" (
	"itemrelid" INTEGER,
	"itemid_parent" INTEGER,
	"itemid_child" INTEGER,
	"field1" VARCHAR,
	"field2" VARCHAR,
	 PRIMARY KEY ("itemrelid"),
	 CONSTRAINT "fkeycon_itemrel_to_item" FOREIGN KEY ("itemid_child") REFERENCES "item" ("itemid")
);

CREATE TABLE "attr" (
	"attrid" INTEGER,
	"identifier" VARCHAR,
	"attrtypeid" INTEGER,
	"field1" VARCHAR,
	"field2" VARCHAR,
	"created_date" DATE,
	"updated_date" DATE,
	 PRIMARY KEY ("attrid")
);

CREATE TABLE "itemattrmapping" (
	"itemattrmappingid" INTEGER,
	"itemid" INTEGER,
	"attrid" INTEGER,
	"attrvalue" VARCHAR,
	"field1" VARCHAR,
	"field2" VARCHAR,
	"created_date" DATE,
	"updated_date" DATE,
	 PRIMARY KEY ("itemattrmappingid"),
	 CONSTRAINT "fkeycon_itemattrmapping_to_attr" FOREIGN KEY ("attrid") REFERENCES "attr" ("attrid"),
	 CONSTRAINT "fkeycon_itemattrmapping_to_item" FOREIGN KEY ("itemid") REFERENCES "item" ("itemid")
);
