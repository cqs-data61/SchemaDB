DROP DATABASE IF EXISTS "schema268";
CREATE DATABASE "schema268";
USE "schema268";
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
