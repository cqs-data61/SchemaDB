DROP DATABASE IF EXISTS "schema370";
CREATE DATABASE "schema370";
USE "schema370";
CREATE TABLE "users" (
	"name" TEXT,
	"password_hash" TEXT,
	 PRIMARY KEY ("name")
);

CREATE TABLE "user_tokens" (
	"token" TEXT,
	"username" TEXT,
	 PRIMARY KEY ("token"),
	 CONSTRAINT "fkeycon_user_tokens_to_users" FOREIGN KEY ("username") REFERENCES "users" ("name")
);
