DROP DATABASE IF EXISTS "schema1493";
CREATE DATABASE "schema1493";
USE "schema1493";
CREATE TABLE "title_basics" (
	"tconst" VARCHAR,
	"titletype" VARCHAR,
	"primarytitle" VARCHAR,
	"originaltitle" VARCHAR,
	"isadult" BOOLEAN,
	"startyear" INTEGER,
	"endyear" INTEGER,
	"runtimeminutes" INTEGER,
	"genres" VARCHAR,
	 PRIMARY KEY ("primarytitle")
);

CREATE TABLE "title_crew" (
	"tconst" VARCHAR,
	"directors" VARCHAR,
	"writers" VARCHAR,
	 PRIMARY KEY ("tconst"),
	 CONSTRAINT "fkeycon_title_crew_to_title_basics" FOREIGN KEY ("tconst") REFERENCES "title_basics" ("tconst")
);

CREATE TABLE "title_ratings" (
	"tconst" VARCHAR,
	"averagerating" DOUBLE PRECISION,
	"numvotes" INTEGER,
	 PRIMARY KEY ("tconst"),
	 CONSTRAINT "fkeycon_title_ratings_to_title_basics" FOREIGN KEY ("tconst") REFERENCES "title_basics" ("tconst")
);

CREATE TABLE "name_basics" (
	"nconst" VARCHAR,
	"primaryname" VARCHAR,
	"birthyear" INTEGER,
	"deathyear" INTEGER,
	"primaryprofession" VARCHAR,
	"knownfortitles" VARCHAR,
	 PRIMARY KEY ("primaryprofession")
);

CREATE TABLE "title_principals" (
	"tconst" VARCHAR,
	"ordering" INTEGER,
	"nconst" VARCHAR,
	"category" VARCHAR,
	"job" VARCHAR,
	"characters" VARCHAR,
	 PRIMARY KEY ("tconst","ordering","nconst"),
	 CONSTRAINT "fkeycon_title_principals_to_name_basics" FOREIGN KEY ("nconst") REFERENCES "name_basics" ("nconst"),
	 CONSTRAINT "fkeycon_title_principals_to_title_basics" FOREIGN KEY ("tconst") REFERENCES "title_basics" ("tconst")
);
