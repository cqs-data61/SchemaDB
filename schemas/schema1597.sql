DROP DATABASE IF EXISTS "schema1597";
CREATE DATABASE "schema1597";
USE "schema1597";
CREATE TABLE "accounts" (
	"id" INT,
	"email" VARCHAR,
	"account_status" VARCHAR
);

CREATE TABLE "developers" (
	"id" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"account_id" INT,
	 CONSTRAINT "fkeycon_developers_to_accounts" FOREIGN KEY ("account_id") REFERENCES "accounts" ("id")
);

CREATE TABLE "skills" (
	"id" INT,
	"name" VARCHAR
);

CREATE TABLE "developer_skills" (
	"developer_id" INT,
	"skill_id" INT,
	 PRIMARY KEY ("developer_id","skill_id"),
	 CONSTRAINT "fkeycon_developer_skills_to_skills" FOREIGN KEY ("skill_id") REFERENCES "skills" ("id"),
	 CONSTRAINT "fkeycon_developer_skills_to_developers" FOREIGN KEY ("developer_id") REFERENCES "developers" ("id")
);
