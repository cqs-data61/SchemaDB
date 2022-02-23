DROP DATABASE IF EXISTS "schema2526";
CREATE DATABASE "schema2526";
USE "schema2526";
CREATE TABLE "province" (
	"codp" VARCHAR,
	"name" VARCHAR,
	 PRIMARY KEY ("codp")
);

CREATE TABLE "orrder" (
	"numorder" INT,
	"user" VARCHAR,
	"date" DATETIME,
	 PRIMARY KEY ("numorder")
);

CREATE TABLE "locality" (
	"codm" VARCHAR,
	"town" VARCHAR,
	"province" VARCHAR,
	 PRIMARY KEY ("codm","province")
);

CREATE TABLE "uuser" (
	"email" VARCHAR,
	"name" VARCHAR,
	"surnames" VARCHAR,
	"dni" VARCHAR,
	"telephone" VARCHAR,
	"street" VARCHAR,
	"street2" VARCHAR,
	"postcode" VARCHAR,
	"town" VARCHAR,
	"province" VARCHAR,
	"birthday" DATE,
	 PRIMARY KEY ("email"),
	 CONSTRAINT "fk_user_locality" FOREIGN KEY ("town","province") REFERENCES "locality" ("codm","province")
);

CREATE TABLE "deliveryaddress" (
	"email" VARCHAR,
	"street" VARCHAR,
	"street2" VARCHAR,
	"postcode" VARCHAR,
	"town" VARCHAR,
	"province" VARCHAR,
	 PRIMARY KEY ("email")
);

CREATE TABLE "brand" (
	"brand" VARCHAR,
	"company" VARCHAR,
	"logo" BLOB,
	 PRIMARY KEY ("brand")
);

CREATE TABLE "article" (
	"cod" VARCHAR,
	"name" VARCHAR,
	"rrp" DECIMAL,
	"brand" VARCHAR,
	"image" BLOB,
	"urlimage" VARCHAR,
	"specifications" TEXT,
	 PRIMARY KEY ("cod")
);

CREATE TABLE "tv" (
	"cod" VARCHAR,
	"panel" VARCHAR,
	"screen" SMALLINT,
	"resolution" VARCHAR,
	"hdreadyfullhd" VARCHAR,
	"dtt" TINYINT,
	 PRIMARY KEY ("cod"),
	 CONSTRAINT "fktv2article" FOREIGN KEY ("cod") REFERENCES "article" ("cod")
);

CREATE TABLE "stock" (
	"article" VARCHAR,
	"available" INT,
	"delivery" ENUM,
	 PRIMARY KEY ("article"),
	 CONSTRAINT "fk_stock2article" FOREIGN KEY ("article") REFERENCES "article" ("cod")
);

CREATE TABLE "pack" (
	"cod" VARCHAR,
	 PRIMARY KEY ("cod"),
	 CONSTRAINT "fkpack2article" FOREIGN KEY ("cod") REFERENCES "article" ("cod")
);

CREATE TABLE "part_of" (
	"pack" VARCHAR,
	"article" VARCHAR,
	 PRIMARY KEY ("pack","article"),
	 CONSTRAINT "fkapack" FOREIGN KEY ("pack") REFERENCES "pack" ("cod"),
	 CONSTRAINT "fkaarticle" FOREIGN KEY ("article") REFERENCES "article" ("cod")
);

CREATE TABLE "mmemory" (
	"cod" VARCHAR,
	"type" VARCHAR,
	 PRIMARY KEY ("cod"),
	 CONSTRAINT "fkmemory2article" FOREIGN KEY ("cod") REFERENCES "article" ("cod")
);

CREATE TABLE "linorder" (
	"numorder" INT,
	"line" INT,
	"article" VARCHAR,
	"price" DECIMAL,
	"amount" INT,
	 PRIMARY KEY ("line","numorder"),
	 CONSTRAINT "fk_LINPED_article" FOREIGN KEY ("article") REFERENCES "article" ("cod")
);

CREATE TABLE "lens" (
	"cod" VARCHAR,
	"type" VARCHAR,
	"frame" VARCHAR,
	"focal" VARCHAR,
	"aperture" VARCHAR,
	"specials" VARCHAR,
	 PRIMARY KEY ("cod"),
	 CONSTRAINT "fk_lens2article" FOREIGN KEY ("cod") REFERENCES "article" ("cod")
);

CREATE TABLE "camera" (
	"cod" VARCHAR,
	"resolution" VARCHAR,
	"sensor" VARCHAR,
	"type" VARCHAR,
	"factor" VARCHAR,
	"lens" VARCHAR,
	"screen" VARCHAR,
	"zoom" VARCHAR,
	 PRIMARY KEY ("cod"),
	 CONSTRAINT "fkcamera2article" FOREIGN KEY ("cod") REFERENCES "article" ("cod")
);

CREATE TABLE "basket" (
	"article" VARCHAR,
	"user" VARCHAR,
	"date" DATETIME,
	 PRIMARY KEY ("article","user"),
	 CONSTRAINT "fk_basket_article" FOREIGN KEY ("article") REFERENCES "article" ("cod")
);
