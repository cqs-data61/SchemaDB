DROP DATABASE IF EXISTS "schema700";
CREATE DATABASE "schema700";
USE "schema700";
CREATE TABLE "dhcp" (
	"mac" TEXT,
	"ip" TEXT,
	"vlan" TEXT,
	"interface" TEXT,
	"switch" TEXT,
	"active" INTEGER,
	 PRIMARY KEY ("mac")
);

CREATE TABLE "switches" (
	"hostname" TEXT,
	"location" TEXT,
	 PRIMARY KEY ("hostname")
);
