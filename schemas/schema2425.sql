DROP DATABASE IF EXISTS "schema2425";
CREATE DATABASE "schema2425";
USE "schema2425";
CREATE TABLE "user" (
	"id" INTEGER,
	"username" TEXT,
	"password" TEXT,
	"lastname" TEXT,
	"firstname" TEXT,
	"email" TEXT,
	"profession" INTEGER,
	"rang" INTEGER,
	"specialite" INTEGER,
	"institut" INTEGER,
	"specialiteprepa" INTEGER,
	"bac" INTEGER,
	"mentionbac" INTEGER,
	"connaissance" INTEGER,
	"emplacement" INTEGER,
	"influencefamille" BOOLEAN,
	"proche" INTEGER,
	"facteur" INTEGER,
	"jeuxcoll" INTEGER,
	"sport" INTEGER,
	"arts" INTEGER,
	"voyage" INTEGER,
	"vieassociative" INTEGER,
	"technologie" INTEGER,
	"pc" INTEGER,
	"culture" INTEGER,
	"vision" INTEGER,
	"residence" INTEGER,
	"conditon" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "post" (
	"id" INTEGER,
	"author_id" INTEGER,
	"created" TIMESTAMP,
	"title" TEXT,
	"body" TEXT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_post_to_user" FOREIGN KEY ("author_id") REFERENCES "user" ("id")
);
