DROP DATABASE IF EXISTS "schema369";
CREATE DATABASE "schema369";
USE "schema369";
CREATE TABLE "osp_master" (
	"uid" TEXT,
	"oclass" REAL,
	"first_level" BOOLEAN,
	 PRIMARY KEY ("uid")
);

CREATE TABLE "cuds_city___address" (
	"postalcode" INTEGER,
	"name" TEXT,
	"number" INTEGER,
	"uid" TEXT,
	 PRIMARY KEY ("uid"),
	 CONSTRAINT "fkeycon_cuds_city___address_to_osp_master" FOREIGN KEY ("uid") REFERENCES "osp_master" ("uid")
);

CREATE TABLE "cuds_city___building" (
	"name" TEXT,
	"uid" TEXT,
	 PRIMARY KEY ("uid"),
	 CONSTRAINT "fkeycon_cuds_city___building_to_osp_master" FOREIGN KEY ("uid") REFERENCES "osp_master" ("uid")
);

CREATE TABLE "cuds_city___street" (
	"name" TEXT,
	"coordinates___0" INTEGER,
	"coordinates___1" INTEGER,
	"uid" TEXT,
	 PRIMARY KEY ("uid"),
	 CONSTRAINT "fkeycon_cuds_city___street_to_osp_master" FOREIGN KEY ("uid") REFERENCES "osp_master" ("uid")
);

CREATE TABLE "cuds_city___neighborhood" (
	"name" TEXT,
	"coordinates___0" INTEGER,
	"coordinates___1" INTEGER,
	"uid" TEXT,
	 PRIMARY KEY ("uid"),
	 CONSTRAINT "fkeycon_cuds_city___neighborhood_to_osp_master" FOREIGN KEY ("uid") REFERENCES "osp_master" ("uid")
);

CREATE TABLE "cuds_city___citizen" (
	"age" INTEGER,
	"name" TEXT,
	"uid" TEXT,
	 PRIMARY KEY ("uid"),
	 CONSTRAINT "fkeycon_cuds_city___citizen_to_osp_master" FOREIGN KEY ("uid") REFERENCES "osp_master" ("uid")
);

CREATE TABLE "cuds_city___city" (
	"coordinates___0" INTEGER,
	"coordinates___1" INTEGER,
	"name" TEXT,
	"uid" TEXT,
	 PRIMARY KEY ("uid"),
	 CONSTRAINT "fkeycon_cuds_city___city_to_osp_master" FOREIGN KEY ("uid") REFERENCES "osp_master" ("uid")
);

CREATE TABLE "osp_relationships" (
	"origin" TEXT,
	"target" TEXT,
	"name" REAL,
	"target_oclass" REAL,
	 PRIMARY KEY ("origin","target","name"),
	 CONSTRAINT "fkeycon_osp_relationships_to_osp_master" FOREIGN KEY ("target") REFERENCES "osp_master" ("uid")
);
