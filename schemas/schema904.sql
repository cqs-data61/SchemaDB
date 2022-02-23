DROP DATABASE IF EXISTS "schema904";
CREATE DATABASE "schema904";
USE "schema904";
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
