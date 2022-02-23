DROP DATABASE IF EXISTS "schema744";
CREATE DATABASE "schema744";
USE "schema744";
CREATE TABLE "types" (
	"id" INT,
	"name" VARCHAR,
	"icon" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "hashtags" (
	"id" INT,
	"hashtag" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" INT,
	"email" VARCHAR,
	"login" VARCHAR,
	"password" VARCHAR,
	"avatar" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "messages" (
	"id" INT,
	"create_time" DATETIME,
	"content" TEXT,
	"author" INT,
	"receiver" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_messages_to_users" FOREIGN KEY ("receiver") REFERENCES "users" ("id")
);

CREATE TABLE "subscriptions" (
	"author" INT,
	"subscriber" INT,
	 PRIMARY KEY ("author","subscriber"),
	 CONSTRAINT "fkeycon_subscriptions_to_users" FOREIGN KEY ("subscriber") REFERENCES "users" ("id")
);

CREATE TABLE "posts" (
	"id" INT,
	"created_at" DATETIME,
	"title" VARCHAR,
	"content" TEXT,
	"author" VARCHAR,
	"image" VARCHAR,
	"video_link" VARCHAR,
	"website_link" VARCHAR,
	"views" INT,
	"user_id" INT,
	"type_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_posts_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id"),
	 CONSTRAINT "fkeycon_posts_to_types" FOREIGN KEY ("type_id") REFERENCES "types" ("id")
);

CREATE TABLE "posts_hashtags" (
	"post_id" INT,
	"hashtag_id" INT,
	 PRIMARY KEY ("post_id","hashtag_id"),
	 CONSTRAINT "fkeycon_posts_hashtags_to_hashtags" FOREIGN KEY ("hashtag_id") REFERENCES "hashtags" ("id"),
	 CONSTRAINT "fkeycon_posts_hashtags_to_posts" FOREIGN KEY ("post_id") REFERENCES "posts" ("id")
);

CREATE TABLE "likes" (
	"user_id" INT,
	"post_id" INT,
	 PRIMARY KEY ("user_id","post_id"),
	 CONSTRAINT "fkeycon_likes_to_posts" FOREIGN KEY ("post_id") REFERENCES "posts" ("id"),
	 CONSTRAINT "fkeycon_likes_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);

CREATE TABLE "comments" (
	"id" INT,
	"created_at" DATETIME,
	"content" TEXT,
	"user_id" INT,
	"post_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_comments_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id"),
	 CONSTRAINT "fkeycon_comments_to_posts" FOREIGN KEY ("post_id") REFERENCES "posts" ("id")
);
