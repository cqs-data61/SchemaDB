DROP DATABASE IF EXISTS "schema2014";
CREATE DATABASE "schema2014";
USE "schema2014";
CREATE TABLE "usrs" (
	"id" INT8,
	"activation_code" VARCHAR,
	"email" VARCHAR,
	"is_active" BOOLEAN,
	"password" VARCHAR,
	"username" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user_role" (
	"user_id" INT8,
	"roles" VARCHAR,
	 CONSTRAINT "user_role_user_fk" FOREIGN KEY ("user_id") REFERENCES "usrs" ("id")
);

CREATE TABLE "messages" (
	"id" INT8,
	"filename" VARCHAR,
	"tag" VARCHAR,
	"text" VARCHAR,
	"user_id" INT8,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "message_user_fk" FOREIGN KEY ("user_id") REFERENCES "usrs" ("id")
);
