DROP DATABASE IF EXISTS "schema185";
CREATE DATABASE "schema185";
USE "schema185";
CREATE TABLE "user_topics" (
	"user_id" VARCHAR,
	"topic_id" BIGINT,
	 PRIMARY KEY ("user_id","topic_id")
);

CREATE TABLE "topics" (
	"id" BIGSERIAL,
	"topic" VARCHAR,
	"created_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "tags" (
	"id" BIGSERIAL,
	"tag" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "community" (
	"id" BIGSERIAL,
	"language" VARCHAR,
	"title" VARCHAR,
	"thumbnail_url" VARCHAR,
	"metadata" LONGTEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "tokens" (
	"token" VARCHAR,
	"created_at" DATETIME,
	"expired_at" DATETIME,
	"invalidated_at" DATETIME,
	 PRIMARY KEY ("token")
);

CREATE TABLE "users" (
	"id" VARCHAR,
	"username" VARCHAR,
	"email" VARCHAR,
	"hashed_password" VARCHAR,
	"password_changed_at" DATETIME,
	"registered_at" DATETIME,
	"native_language" VARCHAR,
	"role" VARCHAR,
	"access_token" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_users_to_tokens" FOREIGN KEY ("access_token") REFERENCES "tokens" ("token")
);

CREATE TABLE "study_lists" (
	"id" BIGSERIAL,
	"user_id" VARCHAR,
	"creation_time" DATETIME,
	"title" VARCHAR,
	"description" VARCHAR,
	"public" BOOLEAN,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_study_lists_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);

CREATE TABLE "user_follows" (
	"follower_user_id" VARCHAR,
	"followed_user_id" VARCHAR,
	"updated_at" DATETIME,
	 PRIMARY KEY ("follower_user_id","followed_user_id"),
	 CONSTRAINT "fkeycon_user_follows_to_users" FOREIGN KEY ("followed_user_id") REFERENCES "users" ("id")
);

CREATE TABLE "user_is_followed" (
	"followed_user_id" VARCHAR,
	"follower_user_id" VARCHAR,
	"updated_at" DATETIME,
	 PRIMARY KEY ("followed_user_id","follower_user_id"),
	 CONSTRAINT "fkeycon_user_is_followed_to_users" FOREIGN KEY ("follower_user_id") REFERENCES "users" ("id")
);

CREATE TABLE "community_users" (
	"community_id" BIGSERIAL,
	"user_id" VARCHAR,
	 PRIMARY KEY ("community_id","user_id"),
	 CONSTRAINT "fkeycon_community_users_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id"),
	 CONSTRAINT "fkeycon_community_users_to_community" FOREIGN KEY ("community_id") REFERENCES "community" ("id")
);

CREATE TABLE "learning" (
	"user_id" VARCHAR,
	"language" VARCHAR,
	"proficiency" VARCHAR,
	 PRIMARY KEY ("user_id","language"),
	 CONSTRAINT "fkeycon_learning_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);

CREATE TABLE "resources" (
	"id" BIGSERIAL,
	"url" VARCHAR,
	"language" VARCHAR,
	"difficulty" VARCHAR,
	"media_type" VARCHAR,
	"category" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "study_list_resource" (
	"study_list_id" BIGINT,
	"resource_id" BIGINT,
	"time_added" DATETIME,
	 PRIMARY KEY ("study_list_id","resource_id"),
	 CONSTRAINT "fkeycon_study_list_resource_to_study_lists" FOREIGN KEY ("study_list_id") REFERENCES "study_lists" ("id"),
	 CONSTRAINT "fkeycon_study_list_resource_to_resources" FOREIGN KEY ("resource_id") REFERENCES "resources" ("id")
);

CREATE TABLE "user_post" (
	"id" VARCHAR,
	"user_id" VARCHAR,
	"resource_id" BIGINT,
	"post_time" DATETIME,
	"post_title" VARCHAR,
	"post_description" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_user_post_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id"),
	 CONSTRAINT "fkeycon_user_post_to_resources" FOREIGN KEY ("resource_id") REFERENCES "resources" ("id")
);

CREATE TABLE "post_discussions" (
	"id" BIGSERIAL,
	"creator_id" VARCHAR,
	"post_id" VARCHAR,
	"creation_time" DATETIME,
	"title" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_post_discussions_to_user_post" FOREIGN KEY ("post_id") REFERENCES "user_post" ("id"),
	 CONSTRAINT "fkeycon_post_discussions_to_users" FOREIGN KEY ("creator_id") REFERENCES "users" ("id")
);

CREATE TABLE "discussion_comments" (
	"id" BIGSERIAL,
	"discussion_id" BIGINT,
	"parent_comment_id" BIGINT,
	"user_id" VARCHAR,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"content" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_discussion_comments_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id"),
	 CONSTRAINT "fkeycon_discussion_comments_to_post_discussions" FOREIGN KEY ("discussion_id") REFERENCES "post_discussions" ("id")
);

CREATE TABLE "comments_likes" (
	"comment_id" BIGINT,
	"user_id" VARCHAR,
	 PRIMARY KEY ("comment_id","user_id"),
	 CONSTRAINT "fkeycon_comments_likes_to_discussion_comments" FOREIGN KEY ("comment_id") REFERENCES "discussion_comments" ("id"),
	 CONSTRAINT "fkeycon_comments_likes_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);

CREATE TABLE "likes" (
	"user_id" VARCHAR,
	"post_id" VARCHAR,
	 PRIMARY KEY ("user_id","post_id"),
	 CONSTRAINT "fkeycon_likes_to_user_post" FOREIGN KEY ("post_id") REFERENCES "user_post" ("id"),
	 CONSTRAINT "fkeycon_likes_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);

CREATE TABLE "votes" (
	"user_id" VARCHAR,
	"post_id" VARCHAR,
	"difficulty" VARCHAR,
	 PRIMARY KEY ("user_id","post_id"),
	 CONSTRAINT "fkeycon_votes_to_user_post" FOREIGN KEY ("post_id") REFERENCES "user_post" ("id"),
	 CONSTRAINT "fkeycon_votes_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);

CREATE TABLE "post_topics" (
	"post_id" VARCHAR,
	"topic_id" BIGINT,
	 PRIMARY KEY ("post_id","topic_id"),
	 CONSTRAINT "fkeycon_post_topics_to_topics" FOREIGN KEY ("topic_id") REFERENCES "topics" ("id"),
	 CONSTRAINT "fkeycon_post_topics_to_user_post" FOREIGN KEY ("post_id") REFERENCES "user_post" ("id")
);

CREATE TABLE "post_tags" (
	"tag_id" BIGINT,
	"post_id" VARCHAR,
	 PRIMARY KEY ("tag_id","post_id"),
	 CONSTRAINT "fkeycon_post_tags_to_user_post" FOREIGN KEY ("post_id") REFERENCES "user_post" ("id"),
	 CONSTRAINT "fkeycon_post_tags_to_tags" FOREIGN KEY ("tag_id") REFERENCES "tags" ("id")
);
