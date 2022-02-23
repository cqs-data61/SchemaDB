DROP DATABASE IF EXISTS "schema1533";
CREATE DATABASE "schema1533";
USE "schema1533";
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
