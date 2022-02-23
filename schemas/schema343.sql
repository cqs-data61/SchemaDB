DROP DATABASE IF EXISTS "schema343";
CREATE DATABASE "schema343";
USE "schema343";
CREATE TABLE "bug" (
	"id_bug" INTEGER,
	"title" TEXT,
	"information" TEXT,
	"bug_date" DATE,
	"corrected" INTEGER,
	 PRIMARY KEY ("id_bug")
);

CREATE TABLE "version" (
	"id_version" INTEGER,
	"name" TEXT,
	"release_date" DATE,
	 PRIMARY KEY ("id_version")
);

CREATE TABLE "category" (
	"id_category" INTEGER,
	"name" TEXT,
	 PRIMARY KEY ("id_category")
);

CREATE TABLE "permission" (
	"id_permission" INTEGER,
	"name" TEXT,
	 PRIMARY KEY ("id_permission")
);

CREATE TABLE "tray" (
	"id_tray" INTEGER,
	"name" TEXT,
	"id_version" INTEGER,
	"information" TEXT,
	"ip" TEXT,
	"online" INTEGER,
	"actif" INTEGER,
	"on_use" INTEGER,
	"timestamp" DATETIME,
	 PRIMARY KEY ("id_tray")
);

CREATE TABLE "person" (
	"id_person" INTEGER,
	"name" TEXT,
	"birthdate" DATE,
	"gender" INTEGER,
	"weight" REAL,
	"actif" INTEGER,
	 PRIMARY KEY ("id_person")
);

CREATE TABLE "menu" (
	"id_menu" INTEGER,
	"name" TEXT,
	"information" TEXT,
	"id_person" INTEGER,
	"actif" INTEGER,
	 PRIMARY KEY ("id_menu"),
	 CONSTRAINT "fkeycon_menu_to_person" FOREIGN KEY ("id_person") REFERENCES "person" ("id_person")
);

CREATE TABLE "meal" (
	"id_meal" INTEGER,
	"id_user" INTEGER,
	"id_menu" INTEGER,
	"id_tray" INTEGER,
	"id_candidate" INTEGER,
	"start" DATETIME,
	"end" DATETIME,
	"information" TEXT,
	"actif" INTEGER,
	 PRIMARY KEY ("id_meal"),
	 CONSTRAINT "fkeycon_meal_to_person" FOREIGN KEY ("id_candidate") REFERENCES "person" ("id_person"),
	 CONSTRAINT "fkeycon_meal_to_tray" FOREIGN KEY ("id_tray") REFERENCES "tray" ("id_tray"),
	 CONSTRAINT "fkeycon_meal_to_menu" FOREIGN KEY ("id_menu") REFERENCES "menu" ("id_menu")
);

CREATE TABLE "food" (
	"id_food" INTEGER,
	"name" TEXT,
	"id_category" INTEGER,
	"information" TEXT,
	"id_person" INTEGER,
	 PRIMARY KEY ("id_food"),
	 CONSTRAINT "fkeycon_food_to_person" FOREIGN KEY ("id_person") REFERENCES "person" ("id_person"),
	 CONSTRAINT "fkeycon_food_to_food" FOREIGN KEY ("id_category") REFERENCES "food" ("id_category")
);

CREATE TABLE "composed" (
	"id_menu" INTEGER,
	"id_food" INTEGER,
	"quantity" INTEGER,
	 CONSTRAINT "fkeycon_composed_to_menu" FOREIGN KEY ("id_menu") REFERENCES "menu" ("id_menu"),
	 CONSTRAINT "fkeycon_composed_to_food" FOREIGN KEY ("id_food") REFERENCES "food" ("id_food")
);

CREATE TABLE "user" (
	"id_user" INTEGER,
	"id_person" INTEGER,
	"mail" TEXT,
	"password" TEXT,
	"id_permission" INTEGER,
	"filename" TEXT,
	"actif" INTEGER,
	 PRIMARY KEY ("id_user"),
	 CONSTRAINT "fkeycon_user_to_person" FOREIGN KEY ("id_person") REFERENCES "person" ("id_person")
);
