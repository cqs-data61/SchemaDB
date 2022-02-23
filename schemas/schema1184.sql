DROP DATABASE IF EXISTS "schema1184";
CREATE DATABASE "schema1184";
USE "schema1184";
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
