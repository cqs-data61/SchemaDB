DROP DATABASE IF EXISTS "schema2471";
CREATE DATABASE "schema2471";
USE "schema2471";
CREATE TABLE "school" (
	"id" INTEGER,
	"name" TEXT,
	"address" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "person" (
	"id" INTEGER,
	"name" TEXT,
	"age" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "diary" (
	"id" INTEGER,
	"pid" INTEGER,
	"text" TEXT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_diary_to_person" FOREIGN KEY ("pid") REFERENCES "person" ("id")
);

CREATE TABLE "hobby" (
	"pid" INTEGER,
	"hobby" TEXT,
	 CONSTRAINT "fkeycon_hobby_to_person" FOREIGN KEY ("pid") REFERENCES "person" ("id")
);
