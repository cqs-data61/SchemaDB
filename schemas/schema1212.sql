DROP DATABASE IF EXISTS "schema1212";
CREATE DATABASE "schema1212";
USE "schema1212";
CREATE TABLE "herowebextension" (
	"imageurl" VARCHAR,
	"iconurl" VARCHAR,
	"portraiturl" VARCHAR,
	"detailsurl" VARCHAR,
	"id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "trainingstate" (
	"error" DOUBLE PRECISION,
	"iteration" INTEGER,
	"validerror" DOUBLE PRECISION,
	"percent" DOUBLE PRECISION,
	"validpercent" DOUBLE PRECISION,
	"id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "trainingmeta" (
	"name" VARCHAR,
	"clusterpath" VARCHAR,
	"alias" VARCHAR,
	"description" VARCHAR,
	"id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "statisticheroesmin" (
	"winrate" DOUBLE PRECISION,
	"killpersec" DOUBLE PRECISION,
	"assistpersec" DOUBLE PRECISION,
	"deathpersec" DOUBLE PRECISION,
	"dps" DOUBLE PRECISION,
	"hps" DOUBLE PRECISION,
	"sdps" DOUBLE PRECISION,
	"damagetakenpersec" DOUBLE PRECISION,
	"exppersec" DOUBLE PRECISION,
	"camptakenpersec" DOUBLE PRECISION,
	"sec" DOUBLE PRECISION,
	"replayid" INTEGER,
	"heroid" INTEGER,
	"id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "statisticheroesmax" (
	"winrate" DOUBLE PRECISION,
	"killpersec" DOUBLE PRECISION,
	"assistpersec" DOUBLE PRECISION,
	"deathpersec" DOUBLE PRECISION,
	"dps" DOUBLE PRECISION,
	"hps" DOUBLE PRECISION,
	"sdps" DOUBLE PRECISION,
	"damagetakenpersec" DOUBLE PRECISION,
	"exppersec" DOUBLE PRECISION,
	"camptakenpersec" DOUBLE PRECISION,
	"sec" DOUBLE PRECISION,
	"replayid" INTEGER,
	"heroid" INTEGER,
	"id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "statisticheroesavg" (
	"count" INTEGER,
	"assassinrating" DOUBLE PRECISION,
	"warriorrating" DOUBLE PRECISION,
	"supportrating" DOUBLE PRECISION,
	"specialistrating" DOUBLE PRECISION,
	"winrate" DOUBLE PRECISION,
	"killpersec" DOUBLE PRECISION,
	"assistpersec" DOUBLE PRECISION,
	"deathpersec" DOUBLE PRECISION,
	"dps" DOUBLE PRECISION,
	"hps" DOUBLE PRECISION,
	"sdps" DOUBLE PRECISION,
	"damagetakenpersec" DOUBLE PRECISION,
	"exppersec" DOUBLE PRECISION,
	"camptakenpersec" DOUBLE PRECISION,
	"sec" DOUBLE PRECISION,
	"replayid" INTEGER,
	"heroid" INTEGER,
	"id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "resourcetype" (
	"id" BIGINT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "map" (
	"id" BIGINT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "herosubgroup" (
	"id" BIGINT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "herogroup" (
	"id" BIGINT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "hero" (
	"id" BIGINT,
	"name" VARCHAR,
	"_group" INTEGER,
	"subgroup" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_hero_to_herogroup" FOREIGN KEY ("_group") REFERENCES "herogroup" ("id"),
	 CONSTRAINT "fkeycon_hero_to_herosubgroup" FOREIGN KEY ("subgroup") REFERENCES "herosubgroup" ("id")
);

CREATE TABLE "statisticheroes" (
	"id" BIGINT,
	"id_min" INTEGER,
	"id_max" INTEGER,
	"id_avg" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_statisticheroes_to_hero" FOREIGN KEY ("id") REFERENCES "hero" ("id"),
	 CONSTRAINT "fkeycon_statisticheroes_to_statisticheroesmax" FOREIGN KEY ("id_max") REFERENCES "statisticheroesmax" ("id"),
	 CONSTRAINT "fkeycon_statisticheroes_to_statisticheroesmin" FOREIGN KEY ("id_min") REFERENCES "statisticheroesmin" ("id"),
	 CONSTRAINT "fkeycon_statisticheroes_to_statisticheroesavg" FOREIGN KEY ("id_avg") REFERENCES "statisticheroesavg" ("id")
);

CREATE TABLE "statistic" (
	"id" INTEGER,
	"matches" INTEGER,
	"wins" INTEGER,
	"map_id" INTEGER,
	"hero_id" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_statistic_to_hero" FOREIGN KEY ("hero_id") REFERENCES "hero" ("id"),
	 CONSTRAINT "fkeycon_statistic_to_map" FOREIGN KEY ("map_id") REFERENCES "map" ("id")
);

CREATE TABLE "matchuptable" (
	"id" INTEGER,
	"win_with" DOUBLE PRECISION,
	"win_against" DOUBLE PRECISION,
	"hero_id1" INTEGER,
	"hero_id2" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_matchuptable_to_hero" FOREIGN KEY ("hero_id2") REFERENCES "hero" ("id")
);

CREATE TABLE "gaussian" (
	"cluster" INTEGER,
	"probability" INTEGER,
	"loglikelihoods" DOUBLE PRECISION,
	"id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "heroclusters" (
	"id" BIGINT,
	"subgroupcluster" INTEGER,
	"cluster" INTEGER,
	"gaussian" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_heroclusters_to_gaussian" FOREIGN KEY ("gaussian") REFERENCES "gaussian" ("id"),
	 CONSTRAINT "fkeycon_heroclusters_to_herosubgroup" FOREIGN KEY ("subgroupcluster") REFERENCES "herosubgroup" ("id"),
	 CONSTRAINT "fkeycon_heroclusters_to_hero" FOREIGN KEY ("id") REFERENCES "hero" ("id")
);

CREATE TABLE "gaussianprobabilities" (
	"id" BIGINT,
	"gaussian_id" INTEGER,
	"value" DOUBLE PRECISION,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_gaussianprobabilities_to_gaussian" FOREIGN KEY ("gaussian_id") REFERENCES "gaussian" ("id")
);

CREATE TABLE "gamemode" (
	"id" BIGINT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "franchise" (
	"id" BIGINT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "difficulty" (
	"id" BIGINT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "herodetails" (
	"date" DATE,
	"price" INTEGER,
	"franchise" INTEGER,
	"info" VARCHAR,
	"lore" VARCHAR,
	"difficulty" INTEGER,
	"melee" BOOLEAN,
	"health" INTEGER,
	"healthregen" DOUBLE PRECISION,
	"resource" INTEGER,
	"resourcetype" INTEGER,
	"spellarmor" INTEGER,
	"physicalarmor" INTEGER,
	"attackspeed" DOUBLE PRECISION,
	"attackrange" DOUBLE PRECISION,
	"attackdamage" INTEGER,
	"imageurl" VARCHAR,
	"iconurl" VARCHAR,
	"detailsurl" VARCHAR,
	"id" BIGINT,
	"title" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_herodetails_to_resourcetype" FOREIGN KEY ("resourcetype") REFERENCES "resourcetype" ("id"),
	 CONSTRAINT "fkeycon_herodetails_to_franchise" FOREIGN KEY ("franchise") REFERENCES "franchise" ("id"),
	 CONSTRAINT "fkeycon_herodetails_to_difficulty" FOREIGN KEY ("difficulty") REFERENCES "difficulty" ("id"),
	 CONSTRAINT "fkeycon_herodetails_to_hero" FOREIGN KEY ("id") REFERENCES "hero" ("id")
);

CREATE TABLE "dataset" (
	"filename" VARCHAR,
	"date" DATE,
	"id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "network" (
	"dataset_id" BIGINT,
	"state_id" BIGINT,
	"meta_id" BIGINT,
	"data" LONGTEXT,
	"isbest" BOOLEAN,
	"id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_network_to_trainingmeta" FOREIGN KEY ("meta_id") REFERENCES "trainingmeta" ("id"),
	 CONSTRAINT "fkeycon_network_to_trainingstate" FOREIGN KEY ("state_id") REFERENCES "trainingstate" ("id"),
	 CONSTRAINT "fkeycon_network_to_dataset" FOREIGN KEY ("dataset_id") REFERENCES "dataset" ("id")
);
