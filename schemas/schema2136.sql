DROP DATABASE IF EXISTS "schema2136";
CREATE DATABASE "schema2136";
USE "schema2136";
CREATE TABLE "presentation" (
	"theme" VARCHAR,
	"presentdate" DATETIME,
	"daynumber" INT,
	"presentername" VARCHAR,
	"facultynumber" INT,
	"groupnumber" INT,
	"place" VARCHAR,
	 PRIMARY KEY ("theme")
);

CREATE TABLE "user" (
	"username" VARCHAR,
	"password" VARCHAR,
	"email" VARCHAR,
	 PRIMARY KEY ("username")
);

CREATE TABLE "preference" (
	"preferenceid" INT,
	"username" VARCHAR,
	"presentationtheme" VARCHAR,
	"preferencetype" ENUM,
	 PRIMARY KEY ("preferenceid"),
	 CONSTRAINT "preference_fk_user" FOREIGN KEY ("username") REFERENCES "user" ("username"),
	 CONSTRAINT "preference_fk_presentation" FOREIGN KEY ("presentationtheme") REFERENCES "presentation" ("theme")
);
