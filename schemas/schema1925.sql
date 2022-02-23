DROP DATABASE IF EXISTS "schema1925";
CREATE DATABASE "schema1925";
USE "schema1925";
CREATE TABLE "messages" (
	"sender" BIGINT,
	"ticket_id" BIGINT,
	"message_text" VARCHAR,
	"message_id" BIGINT,
	"channel_id" BIGINT,
	"forwarded" BIGINT,
	"deleted" BOOLEAN,
	 PRIMARY KEY ("message_id")
);

CREATE TABLE "forwarded" (
	"sendto_message_id" BIGINT,
	"sendto_channel_id" BIGINT,
	 PRIMARY KEY ("sendto_message_id")
);

CREATE TABLE "tickets" (
	"id" SERIAL,
	"requester" BIGINT,
	"ticket_channel_id" BIGINT,
	"is_open" BOOLEAN,
	 PRIMARY KEY ("id")
);
