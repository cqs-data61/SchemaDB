DROP DATABASE IF EXISTS "schema1997";
CREATE DATABASE "schema1997";
USE "schema1997";
CREATE TABLE "asylumseekers" (
	"index" INT,
	"host_country" CHAR,
	"origin" CHAR,
	"year" INTEGER,
	"month" CHAR,
	"value" INT,
	 PRIMARY KEY ("index")
);
