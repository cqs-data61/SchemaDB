DROP DATABASE IF EXISTS "schema2346";
CREATE DATABASE "schema2346";
USE "schema2346";
CREATE TABLE "books" (
	"id" BIGSERIAL,
	"title" TEXT,
	"description" TEXT,
	"cover" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "agents" (
	"id" BIGSERIAL,
	"name" TEXT,
	"email" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "authors" (
	"id" BIGSERIAL,
	"name" TEXT,
	"website" TEXT,
	"agent_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_authors_to_agents" FOREIGN KEY ("agent_id") REFERENCES "agents" ("id")
);

CREATE TABLE "book_authors" (
	"id" BIGSERIAL,
	"book_id" BIGINT,
	"author_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_book_authors_to_books" FOREIGN KEY ("book_id") REFERENCES "books" ("id"),
	 CONSTRAINT "fkeycon_book_authors_to_authors" FOREIGN KEY ("author_id") REFERENCES "authors" ("id")
);
