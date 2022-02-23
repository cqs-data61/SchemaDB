DROP DATABASE IF EXISTS "schema204";
CREATE DATABASE "schema204";
USE "schema204";
CREATE TABLE "users" (
	"seq" BIGINT,
	"email" VARCHAR,
	"passwd" VARCHAR,
	"login_count" INT,
	"last_login_at" DATETIME,
	"create_at" DATETIME,
	 PRIMARY KEY ("seq")
);

CREATE TABLE "connections" (
	"seq" BIGINT,
	"user_seq" BIGINT,
	"target_seq" BIGINT,
	"granted_at" DATETIME,
	"create_at" DATETIME,
	 PRIMARY KEY ("seq"),
	 CONSTRAINT "fk_connection_to_user2" FOREIGN KEY ("target_seq") REFERENCES "users" ("seq"),
	 CONSTRAINT "fk_connection_to_user" FOREIGN KEY ("user_seq") REFERENCES "users" ("seq")
);

CREATE TABLE "posts" (
	"seq" BIGINT,
	"user_seq" BIGINT,
	"contents" VARCHAR,
	"like_count" INT,
	"comment_count" INT,
	"create_at" DATETIME,
	 PRIMARY KEY ("seq"),
	 CONSTRAINT "fk_post_to_user" FOREIGN KEY ("user_seq") REFERENCES "users" ("seq")
);

CREATE TABLE "comments" (
	"seq" BIGINT,
	"user_seq" BIGINT,
	"post_seq" BIGINT,
	"contents" VARCHAR,
	"create_at" DATETIME,
	 PRIMARY KEY ("seq"),
	 CONSTRAINT "fk_comment_to_post" FOREIGN KEY ("post_seq") REFERENCES "posts" ("seq"),
	 CONSTRAINT "fk_comment_to_user" FOREIGN KEY ("user_seq") REFERENCES "users" ("seq")
);
