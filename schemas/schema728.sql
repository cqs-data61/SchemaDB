DROP DATABASE IF EXISTS "schema728";
CREATE DATABASE "schema728";
USE "schema728";
CREATE TABLE "device" (
	"id" INTEGER,
	"tagglobal" TEXT,
	"name" TEXT,
	"device_type" TEXT,
	"description" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "property" (
	"id" INTEGER,
	"name" TEXT,
	"value" TEXT,
	"description" TEXT,
	"device_id" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_property_to_device" FOREIGN KEY ("device_id") REFERENCES "device" ("id")
);

CREATE TABLE "device_to_device" (
	"id_device_father" INTEGER,
	"id_device_son" INTEGER,
	 PRIMARY KEY ("id_device_father","id_device_son"),
	 CONSTRAINT "fkeycon_device_to_device_to_device" FOREIGN KEY ("id_device_son") REFERENCES "device" ("id")
);

CREATE TABLE "user" (
	"id" INTEGER,
	"username" TEXT,
	"password" TEXT,
	 PRIMARY KEY ("id")
);
