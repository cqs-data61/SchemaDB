DROP DATABASE IF EXISTS "schema1242";
CREATE DATABASE "schema1242";
USE "schema1242";
CREATE TABLE "recipe" (
	"id" TEXT,
	"created_ts" TEXT,
	"updated_ts" TEXT,
	"name" TEXT,
	"prep_time" INTEGER,
	"cook_time" INTEGER,
	"note" TEXT
);

CREATE TABLE "tag" (
	"id" TEXT,
	"created_ts" TEXT,
	"updated_ts" TEXT,
	"recipe_id" TEXT,
	"text" NOT,
	 CONSTRAINT "fkeycon_tag_to_recipe" FOREIGN KEY ("recipe_id") REFERENCES "recipe" ("id")
);

CREATE TABLE "step" (
	"id" TEXT,
	"created_ts" TEXT,
	"updated_ts" TEXT,
	"recipe_id" TEXT,
	"text" TEXT,
	"sort" INTEGER,
	 CONSTRAINT "fkeycon_step_to_recipe" FOREIGN KEY ("recipe_id") REFERENCES "recipe" ("id")
);

CREATE TABLE "ingredient" (
	"id" TEXT,
	"created_ts" TEXT,
	"updated_ts" TEXT,
	"recipe_id" TEXT,
	"desc" TEXT,
	"sort" INTEGER,
	 CONSTRAINT "fkeycon_ingredient_to_recipe" FOREIGN KEY ("recipe_id") REFERENCES "recipe" ("id")
);

CREATE TABLE "user" (
	"id" TEXT,
	"created_ts" TEXT,
	"updated_ts" TEXT,
	"username" TEXT,
	"password" TEXT,
	"email" TEXT,
	"is_verified" INT
);

CREATE TABLE "user_session" (
	"user_id" TEXT,
	"session_id" TEXT,
	"expires_ts" TEXT,
	 CONSTRAINT "fkeycon_user_session_to_user" FOREIGN KEY ("user_id") REFERENCES "user" ("id")
);
