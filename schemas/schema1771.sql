DROP DATABASE IF EXISTS "schema1771";
CREATE DATABASE "schema1771";
USE "schema1771";
CREATE TABLE "users" (
	"username" VARCHAR,
	"fullname" VARCHAR,
	"email" VARCHAR,
	"filename" VARCHAR,
	"password" VARCHAR,
	"created" DATETIME,
	 PRIMARY KEY ("username")
);

CREATE TABLE "following" (
	"username1" VARCHAR,
	"username2" VARCHAR,
	"created" DATETIME,
	 PRIMARY KEY ("username1","username2"),
	 CONSTRAINT "fkeycon_following_to_users" FOREIGN KEY ("username2") REFERENCES "users" ("username")
);

CREATE TABLE "posts" (
	"postid" INT,
	"filename" VARCHAR,
	"owner" VARCHAR,
	"created" DATETIME,
	 PRIMARY KEY ("postid"),
	 CONSTRAINT "fkeycon_posts_to_users" FOREIGN KEY ("owner") REFERENCES "users" ("username")
);

CREATE TABLE "likes" (
	"owner" VARCHAR,
	"postid" INT,
	"created" DATETIME,
	 PRIMARY KEY ("owner","postid"),
	 CONSTRAINT "fkeycon_likes_to_posts" FOREIGN KEY ("postid") REFERENCES "posts" ("postid"),
	 CONSTRAINT "fkeycon_likes_to_users" FOREIGN KEY ("owner") REFERENCES "users" ("username")
);

CREATE TABLE "comments" (
	"commentid" INT,
	"owner" VARCHAR,
	"postid" INT,
	"text" TEXT,
	"created" DATETIME,
	 PRIMARY KEY ("commentid"),
	 CONSTRAINT "fkeycon_comments_to_users" FOREIGN KEY ("owner") REFERENCES "users" ("username"),
	 CONSTRAINT "fkeycon_comments_to_posts" FOREIGN KEY ("postid") REFERENCES "posts" ("postid")
);
