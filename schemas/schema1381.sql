DROP DATABASE IF EXISTS "schema1381";
CREATE DATABASE "schema1381";
USE "schema1381";
CREATE TABLE "user" (
	"_iduser" INT,
	"name" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	"age" INT,
	"gender" VARCHAR,
	 PRIMARY KEY ("_iduser")
);

CREATE TABLE "post" (
	"_idpost" INT,
	"userid" INT,
	"title" VARCHAR,
	"description" VARCHAR,
	"likes" INT,
	"report" INT,
	"video_url" VARCHAR,
	"archive" INT,
	 PRIMARY KEY ("_idpost"),
	 CONSTRAINT "fkeycon_post_to_user" FOREIGN KEY ("userid") REFERENCES "user" ("_iduser")
);

CREATE TABLE "comments" (
	"_idcomment" INT,
	"userid" INT,
	"postid" INT,
	"comment" VARCHAR,
	"date" DATETIME,
	 PRIMARY KEY ("_idcomment"),
	 CONSTRAINT "fkeycon_comments_to_user" FOREIGN KEY ("userid") REFERENCES "user" ("_iduser"),
	 CONSTRAINT "fkeycon_comments_to_post" FOREIGN KEY ("postid") REFERENCES "post" ("_idpost")
);

CREATE TABLE "favorite" (
	"_idfavorite" INT,
	"userid" INT,
	"postid" INT,
	 PRIMARY KEY ("_idfavorite"),
	 CONSTRAINT "fkeycon_favorite_to_post" FOREIGN KEY ("postid") REFERENCES "post" ("_idpost"),
	 CONSTRAINT "fkeycon_favorite_to_user" FOREIGN KEY ("userid") REFERENCES "user" ("_iduser")
);
