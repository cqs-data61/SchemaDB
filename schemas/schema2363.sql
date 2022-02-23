DROP DATABASE IF EXISTS "schema2363";
CREATE DATABASE "schema2363";
USE "schema2363";
CREATE TABLE "users" (
	"iduser" INTEGER,
	"idfoto" INTEGER,
	"stringfoto" BLOB,
	 PRIMARY KEY ("iduser","idfoto")
);
