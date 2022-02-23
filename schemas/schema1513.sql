DROP DATABASE IF EXISTS "schema1513";
CREATE DATABASE "schema1513";
USE "schema1513";
CREATE TABLE "rewards" (
	"reward_id" INT,
	"reward_id" INT,
	"reward_title" VARCHAR,
	"reward_year" INT,
	 PRIMARY KEY ("reward_id")
);

CREATE TABLE "books" (
	"book_id" INT,
	"book_genre" VARCHAR,
	"book_isbn" VARCHAR,
	"book_title" VARCHAR,
	 PRIMARY KEY ("book_id")
);

CREATE TABLE "authors" (
	"author_id" INT,
	"author_id" INT,
	"author_birth_date" DATETIME,
	"author_first_name" VARCHAR,
	"author_last_name" VARCHAR,
	"author_sex" VARCHAR,
	 PRIMARY KEY ("author_id")
);

CREATE TABLE "authors_rewards" (
	"author_author_id" INT,
	"rewards_reward_id" INT,
	 CONSTRAINT "authors" FOREIGN KEY ("author_author_id") REFERENCES "authors" ("author_id"),
	 CONSTRAINT "rewards" FOREIGN KEY ("rewards_reward_id") REFERENCES "rewards" ("reward_id")
);

CREATE TABLE "author_book" (
	"author_fk" INT,
	"book_fk" INT,
	 PRIMARY KEY ("author_fk","book_fk"),
	 CONSTRAINT "fkeycon_author_book_to_books" FOREIGN KEY ("book_fk") REFERENCES "books" ("book_id"),
	 CONSTRAINT "fkeycon_author_book_to_authors" FOREIGN KEY ("author_fk") REFERENCES "authors" ("author_id")
);
