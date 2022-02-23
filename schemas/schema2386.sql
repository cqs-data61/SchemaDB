DROP DATABASE IF EXISTS "schema2386";
CREATE DATABASE "schema2386";
USE "schema2386";
CREATE TABLE "kunde" (
	"tlf" VARCHAR,
	"fornavn" VARCHAR,
	"etternavn" VARCHAR,
	"kredittkort" INT,
	 PRIMARY KEY ("tlf")
);

CREATE TABLE "utleiekontor" (
	"nummer" SERIAL,
	"gateadresse" VARCHAR,
	"postnummer" INTEGER,
	"poststed" VARCHAR,
	"tlf" INT,
	 PRIMARY KEY ("nummer")
);

CREATE TABLE "bil" (
	"regnummer" VARCHAR,
	"merke" VARCHAR,
	"modell" VARCHAR,
	"farge" VARCHAR,
	"ledig" BOOLEAN,
	"utleiegruppe" CHAR,
	"kilometerstand" INTEGER,
	"utleiekontor" INTEGER,
	 PRIMARY KEY ("regnummer"),
	 CONSTRAINT "fkeycon_bil_to_utleiekontor" FOREIGN KEY ("utleiekontor") REFERENCES "utleiekontor" ("nummer")
);

CREATE TABLE "utleie" (
	"utleieid" SERIAL,
	"tidutleie" VARCHAR,
	"antalldager" INTEGER,
	"pris" INTEGER,
	"kmutleie" INTEGER,
	"kmretur" INTEGER,
	"bil" VARCHAR,
	"hentested" INTEGER,
	"retursted" INTEGER,
	"kunde" VARCHAR,
	 PRIMARY KEY ("utleieid"),
	 CONSTRAINT "fkeycon_utleie_to_kunde" FOREIGN KEY ("kunde") REFERENCES "kunde" ("tlf"),
	 CONSTRAINT "fkeycon_utleie_to_bil" FOREIGN KEY ("bil") REFERENCES "bil" ("regnummer"),
	 CONSTRAINT "fkeycon_utleie_to_utleiekontor" FOREIGN KEY ("retursted") REFERENCES "utleiekontor" ("nummer")
);
