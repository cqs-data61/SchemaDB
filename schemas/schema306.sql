DROP DATABASE IF EXISTS "schema306";
CREATE DATABASE "schema306";
USE "schema306";
CREATE TABLE "users" (
	"id" VARCHAR,
	"username" VARCHAR,
	"password" VARCHAR,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"email" VARCHAR,
	"birth_date" DATE,
	"department" VARCHAR,
	"is_deleted" BOOLEAN,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "chats" (
	"id" VARCHAR,
	"name" VARCHAR,
	"description" TEXT,
	"creator_id" VARCHAR,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "creator_fk" FOREIGN KEY ("creator_id") REFERENCES "users" ("id")
);

CREATE TABLE "messages" (
	"id" VARCHAR,
	"text" TEXT,
	"author_id" VARCHAR,
	"chat_id" VARCHAR,
	"created_at" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "chat_fk" FOREIGN KEY ("chat_id") REFERENCES "chats" ("id"),
	 CONSTRAINT "author_fk" FOREIGN KEY ("author_id") REFERENCES "users" ("id")
);

CREATE TABLE "users_chats" (
	"user_id" VARCHAR,
	"chat_id" VARCHAR,
	 PRIMARY KEY ("user_id","chat_id"),
	 CONSTRAINT "user_fk" FOREIGN KEY ("user_id") REFERENCES "users" ("id"),
	 CONSTRAINT "chat_fk" FOREIGN KEY ("chat_id") REFERENCES "chats" ("id")
);
