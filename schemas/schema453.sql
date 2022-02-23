DROP DATABASE IF EXISTS "schema453";
CREATE DATABASE "schema453";
USE "schema453";
CREATE TABLE "cocktail_list" (
	"cockliserno" INT,
	"cocklichaname" VARCHAR,
	"cockliengname" VARCHAR,
	"cockliclass" INT,
	"cocklibase" INT,
	"cockliupdatetime" DATETIME,
	"cocklicreatetime" DATETIME,
	 PRIMARY KEY ("cockliserno")
);

CREATE TABLE "cocktail_photo" (
	"ctpserno" INT,
	"cockliserno" INT,
	"ctpismainpic" BOOLEAN,
	"ctpphone" VARCHAR,
	"ctpupdatetime" DATETIME,
	"ctpcreatetime" DATETIME,
	 PRIMARY KEY ("ctpserno"),
	 CONSTRAINT "fkeycon_cocktail_photo_to_cocktail_list" FOREIGN KEY ("cockliserno") REFERENCES "cocktail_list" ("cockliserno")
);

CREATE TABLE "cocktail_recipe" (
	"recserno" INT,
	"cockliserno" INT,
	"recmaterial" VARCHAR,
	"recdecoration" VARCHAR,
	"recmethod" INT,
	"reccup" INT,
	"recsteps" TEXT,
	"recabv" FLOAT,
	"recupdatetime" DATETIME,
	"reccreatetime" DATETIME,
	 PRIMARY KEY ("recserno"),
	 CONSTRAINT "fkeycon_cocktail_recipe_to_cocktail_list" FOREIGN KEY ("cockliserno") REFERENCES "cocktail_list" ("cockliserno")
);
