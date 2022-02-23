DROP DATABASE IF EXISTS "schema1930";
CREATE DATABASE "schema1930";
USE "schema1930";
CREATE TABLE "users" (
	"id" INT,
	"username" VARCHAR,
	"password" VARCHAR,
	"email" VARCHAR,
	"refresh_token" VARCHAR,
	"status" VARCHAR,
	"about_me" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "posts" (
	"id" INT,
	"user_id" INT,
	"name" VARCHAR,
	"deadline" VARCHAR,
	"schedule" VARCHAR,
	"summary" VARCHAR,
	"qualification" VARCHAR,
	"size" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "posts_user_id" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);

CREATE TABLE "work" (
	"id" INT,
	"user_id" INT,
	"role" VARCHAR,
	"technology" VARCHAR,
	"years" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "work_user_id" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);

CREATE TABLE "link" (
	"id" INT,
	"user_id" INT,
	"name" VARCHAR,
	"link" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "link_user_id" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);

CREATE TABLE "education" (
	"id" INT,
	"user_id" INT,
	"degree" VARCHAR,
	"major" VARCHAR,
	"graduated" BIT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "education_user_id" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);

CREATE TABLE "sns_info" (
	"user_id" INT,
	"sns_id" VARCHAR,
	"sns_type" VARCHAR,
	 PRIMARY KEY ("sns_id","sns_type"),
	 CONSTRAINT "user_id" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);
