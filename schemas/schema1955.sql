DROP DATABASE IF EXISTS "schema1955";
CREATE DATABASE "schema1955";
USE "schema1955";
CREATE TABLE "supplier" (
	"nif" INTEGER,
	"s_name" VARCHAR,
	 PRIMARY KEY ("nif")
);

CREATE TABLE "category" (
	"name" VARCHAR,
	 PRIMARY KEY ("name")
);

CREATE TABLE "supercategory" (
	"name" VARCHAR,
	 PRIMARY KEY ("name"),
	 CONSTRAINT "fkeycon_supercategory_to_category" FOREIGN KEY ("name") REFERENCES "category" ("name")
);

CREATE TABLE "consists_of" (
	"name_super" VARCHAR,
	"name_descendant" VARCHAR,
	 CONSTRAINT "fkeycon_consists_of_to_supercategory" FOREIGN KEY ("name_super") REFERENCES "supercategory" ("name"),
	 CONSTRAINT "fkeycon_consists_of_to_category" FOREIGN KEY ("name_descendant") REFERENCES "category" ("name")
);

CREATE TABLE "simplecategory" (
	"name" VARCHAR,
	 PRIMARY KEY ("name"),
	 CONSTRAINT "fkeycon_simplecategory_to_category" FOREIGN KEY ("name") REFERENCES "category" ("name")
);

CREATE TABLE "product" (
	"ean" NUMERIC,
	"descr" VARCHAR,
	"name" VARCHAR,
	 PRIMARY KEY ("ean"),
	 CONSTRAINT "fkeycon_product_to_category" FOREIGN KEY ("name") REFERENCES "category" ("name")
);

CREATE TABLE "supplies_sec" (
	"nif" INTEGER,
	"ean" NUMERIC,
	 PRIMARY KEY ("nif","ean"),
	 CONSTRAINT "fkeycon_supplies_sec_to_product" FOREIGN KEY ("ean") REFERENCES "product" ("ean"),
	 CONSTRAINT "fkeycon_supplies_sec_to_supplier" FOREIGN KEY ("nif") REFERENCES "supplier" ("nif")
);

CREATE TABLE "supplies_prim" (
	"nif" INTEGER,
	"ean" NUMERIC,
	"dia" DATE,
	 PRIMARY KEY ("dia","nif","ean"),
	 CONSTRAINT "fkeycon_supplies_prim_to_supplier" FOREIGN KEY ("nif") REFERENCES "supplier" ("nif"),
	 CONSTRAINT "fkeycon_supplies_prim_to_product" FOREIGN KEY ("ean") REFERENCES "product" ("ean")
);

CREATE TABLE "supermarket" (
	"nif" INTEGER,
	"s_name" VARCHAR,
	"addr" VARCHAR,
	 PRIMARY KEY ("nif")
);

CREATE TABLE "corridor" (
	"nr" INTEGER,
	"width" INTEGER,
	"nif" INTEGER,
	 PRIMARY KEY ("nr","nif"),
	 CONSTRAINT "fkeycon_corridor_to_supermarket" FOREIGN KEY ("nif") REFERENCES "supermarket" ("nif")
);

CREATE TABLE "shelf" (
	"side" VARCHAR,
	"height" VARCHAR,
	"nr" INTEGER,
	"nif" INTEGER,
	 PRIMARY KEY ("nr","nif","side","height"),
	 CONSTRAINT "fkeycon_shelf_to_corridor" FOREIGN KEY ("nr","nif") REFERENCES "corridor" ("nr","nif")
);

CREATE TABLE "displayed_in" (
	"name" VARCHAR,
	"side" VARCHAR,
	"height" VARCHAR,
	"nr" INTEGER,
	"nif" INTEGER,
	 PRIMARY KEY ("name","side","height","nr","nif"),
	 CONSTRAINT "fkeycon_displayed_in_to_shelf" FOREIGN KEY ("side","height","nr","nif") REFERENCES "shelf" ("side","height","nr","nif"),
	 CONSTRAINT "fkeycon_displayed_in_to_category" FOREIGN KEY ("name") REFERENCES "category" ("name")
);

CREATE TABLE "planogram" (
	"facings" INTEGER,
	"units" INTEGER,
	"loc" INTEGER,
	"nr" INTEGER,
	"side" VARCHAR,
	"height" VARCHAR,
	"nif" INTEGER,
	"ean" NUMERIC,
	 PRIMARY KEY ("ean","side","height","nr","nif"),
	 CONSTRAINT "fkeycon_planogram_to_shelf" FOREIGN KEY ("nr","nif","side","height") REFERENCES "shelf" ("nr","nif","side","height"),
	 CONSTRAINT "fkeycon_planogram_to_product" FOREIGN KEY ("ean") REFERENCES "product" ("ean")
);

CREATE TABLE "replenishevent" (
	"unitsrep" NUMERIC,
	"instant" DATE,
	"side" VARCHAR,
	"height" VARCHAR,
	"nr" INTEGER,
	"nif" INTEGER,
	"ean" NUMERIC,
	 PRIMARY KEY ("ean","side","height","nr","nif","instant"),
	 CONSTRAINT "fkeycon_replenishevent_to_planogram" FOREIGN KEY ("ean","side","height","nr","nif") REFERENCES "planogram" ("ean","side","height","nr","nif")
);
