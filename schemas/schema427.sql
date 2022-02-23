DROP DATABASE IF EXISTS "schema427";
CREATE DATABASE "schema427";
USE "schema427";
CREATE TABLE "channel" (
	"id" BIGINT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "whatsapp" (
	"number" VARCHAR,
	"user_id" VARCHAR,
	"id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk1rhxrwwtwswcw5t3xhbelktuc" FOREIGN KEY ("id") REFERENCES "channel" ("id")
);

CREATE TABLE "webpush" (
	"browser_id" VARCHAR,
	"user_id" VARCHAR,
	"id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkkdg08xrcyjndn3u8h4g9vg9de" FOREIGN KEY ("id") REFERENCES "channel" ("id")
);

CREATE TABLE "subscription" (
	"id" BIGINT,
	"user_id" VARCHAR,
	"channel_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk8n56qx4ms3bxeiscdmtthtg41" FOREIGN KEY ("channel_id") REFERENCES "channel" ("id")
);
