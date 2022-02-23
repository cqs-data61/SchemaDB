DROP DATABASE IF EXISTS "schema1098";
CREATE DATABASE "schema1098";
USE "schema1098";
CREATE TABLE "roles" (
	"role_id" INT,
	"role" VARCHAR,
	 PRIMARY KEY ("role_id")
);

CREATE TABLE "users" (
	"id" INT,
	"firstname" VARCHAR,
	"lastname" VARCHAR,
	"age" INT,
	"country" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	"role_id" INT,
	"is_deleted" TINYINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_users_to_roles" FOREIGN KEY ("role_id") REFERENCES "roles" ("role_id")
);

CREATE TABLE "articles" (
	"id" INT,
	"title" VARCHAR,
	"description" VARCHAR,
	"author_id" INT,
	"is_deleted" TINYINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_articles_to_users" FOREIGN KEY ("author_id") REFERENCES "users" ("id")
);

CREATE TABLE "comments" (
	"id" INT,
	"comment" VARCHAR,
	"article_id" INT,
	"commenter_id" INT,
	"is_deleted" TINYINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_comments_to_users" FOREIGN KEY ("commenter_id") REFERENCES "users" ("id"),
	 CONSTRAINT "fkeycon_comments_to_articles" FOREIGN KEY ("article_id") REFERENCES "articles" ("id")
);
