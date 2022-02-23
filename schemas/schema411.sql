DROP DATABASE IF EXISTS "schema411";
CREATE DATABASE "schema411";
USE "schema411";
CREATE TABLE "users" (
	"id" INTEGER,
	"createdat" TIMESTAMP,
	"updatedat" TIMESTAMP,
	"username" VARCHAR,
	"email" VARCHAR,
	"passwordhash" VARCHAR
);

CREATE TABLE "posts" (
	"id" INTEGER,
	"createdat" TIMESTAMP,
	"updatedat" TIMESTAMP,
	"title" VARCHAR,
	"body" TEXT,
	"description" TEXT,
	"published" BOOLEAN,
	"authorid" INTEGER,
	 CONSTRAINT "fkeycon_posts_to_users" FOREIGN KEY ("authorid") REFERENCES "users" ("id")
);

CREATE TABLE "post_likes" (
	"id" INTEGER,
	"authorid" INTEGER,
	"postid" INTEGER,
	 CONSTRAINT "fkeycon_post_likes_to_posts" FOREIGN KEY ("postid") REFERENCES "posts" ("id"),
	 CONSTRAINT "fkeycon_post_likes_to_users" FOREIGN KEY ("authorid") REFERENCES "users" ("id")
);

CREATE TABLE "comments" (
	"id" INTEGER,
	"body" TEXT,
	"createdat" TIMESTAMP,
	"updatedat" TIMESTAMP,
	"authorid" INTEGER,
	"postid" INTEGER,
	 CONSTRAINT "fkeycon_comments_to_users" FOREIGN KEY ("authorid") REFERENCES "users" ("id"),
	 CONSTRAINT "fkeycon_comments_to_posts" FOREIGN KEY ("postid") REFERENCES "posts" ("id")
);

CREATE TABLE "comment_likes" (
	"id" INTEGER,
	"authorid" INTEGER,
	"commentid" INTEGER,
	 CONSTRAINT "fkeycon_comment_likes_to_users" FOREIGN KEY ("authorid") REFERENCES "users" ("id"),
	 CONSTRAINT "fkeycon_comment_likes_to_comments" FOREIGN KEY ("commentid") REFERENCES "comments" ("id")
);
