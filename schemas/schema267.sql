DROP DATABASE IF EXISTS "schema267";
CREATE DATABASE "schema267";
USE "schema267";
CREATE TABLE "privilege" (
	"id" TINYINT,
	"name" VARCHAR,
	"last_update" TIMESTAMP,
	"created_date" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "role" (
	"id" TINYINT,
	"name" VARCHAR,
	"last_update" TIMESTAMP,
	"created_date" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "roles_privileges" (
	"role_id" TINYINT,
	"privilege_id" TINYINT,
	 PRIMARY KEY ("role_id","privilege_id"),
	 CONSTRAINT "fk_role_has_privilege_privilege1" FOREIGN KEY ("privilege_id") REFERENCES "privilege" ("id"),
	 CONSTRAINT "fk_role_has_privilege_role1" FOREIGN KEY ("role_id") REFERENCES "role" ("id")
);

CREATE TABLE "country" (
	"id" SMALLINT,
	"name" VARCHAR,
	"description" VARCHAR,
	"last_update" TIMESTAMP,
	"created_date" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "city" (
	"id" SMALLINT,
	"name" VARCHAR,
	"is_capital" TINYINT,
	"description" VARCHAR,
	"last_update" TIMESTAMP,
	"created_date" DATETIME,
	"country_id" SMALLINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_city_country" FOREIGN KEY ("country_id") REFERENCES "country" ("id")
);

CREATE TABLE "address" (
	"id" SMALLINT,
	"address" VARCHAR,
	"address2" VARCHAR,
	"district" VARCHAR,
	"postal_code" VARCHAR,
	"phone" VARCHAR,
	"last_update" TIMESTAMP,
	"created_date" DATETIME,
	"city_id" SMALLINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_address_city" FOREIGN KEY ("city_id") REFERENCES "city" ("id")
);

CREATE TABLE "user" (
	"id" INT,
	"email" VARCHAR,
	"password" VARCHAR,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"dob" DATETIME,
	"sex" TINYINT,
	"picture" BLOB,
	"active" TINYINT,
	"locked" TINYINT,
	"last_update" TIMESTAMP,
	"created_date" DATETIME,
	"address_id" SMALLINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_user_address1" FOREIGN KEY ("address_id") REFERENCES "address" ("id")
);

CREATE TABLE "users_roles" (
	"user_id" INT,
	"role_id" TINYINT,
	"active" TINYINT,
	 PRIMARY KEY ("user_id","role_id"),
	 CONSTRAINT "fk_user_has_role_user1" FOREIGN KEY ("user_id") REFERENCES "user" ("id"),
	 CONSTRAINT "fk_user_has_role_role1" FOREIGN KEY ("role_id") REFERENCES "role" ("id")
);
