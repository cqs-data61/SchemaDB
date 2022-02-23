DROP DATABASE IF EXISTS "schema435";
CREATE DATABASE "schema435";
USE "schema435";
CREATE TABLE "userroles" (
	"id" INTEGER,
	"name" VARCHAR,
	"canedit" VARCHAR,
	"canadd" INT,
	"candelete" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user" (
	"id" INTEGER,
	"username" VARCHAR,
	"password" VARCHAR,
	"roleid" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_user_to_userroles" FOREIGN KEY ("roleid") REFERENCES "userroles" ("id")
);

CREATE TABLE "meal" (
	"id" INTEGER,
	"name" VARCHAR,
	"onmenu" INTEGER,
	"price" REAL,
	"updatedate" TIMESTAMP,
	"updateuser" INTEGER,
	"code" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_meal_to_user" FOREIGN KEY ("updateuser") REFERENCES "user" ("id")
);
