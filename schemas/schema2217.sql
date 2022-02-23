DROP DATABASE IF EXISTS "schema2217";
CREATE DATABASE "schema2217";
USE "schema2217";
CREATE TABLE "syncable_changes" (
	"change_identifier" INTEGER,
	"table_name" TEXT,
	"row_identifier" INTEGER,
	"change_type" INTEGER,
	 PRIMARY KEY ("change_identifier")
);

CREATE TABLE "streams" (
	"database_identifier" INTEGER,
	"stream_id" BLOB,
	"seq" INTEGER,
	"client_seq" INTEGER,
	"version" INT,
	 PRIMARY KEY ("database_identifier")
);

CREATE TABLE "stream_members" (
	"stream_database_identifier" INTEGER,
	"member_id" STRING,
	 PRIMARY KEY ("stream_database_identifier","member_id")
);

CREATE TABLE "schema_migrations" (
	"version" INTEGER
);

CREATE TABLE "message_recipient_status" (
	"database_identifier" INTEGER,
	"message_database_identifier" INTEGER,
	"user_id" STRING,
	"status" INTEGER,
	"seq" INTEGER,
	 PRIMARY KEY ("database_identifier")
);

CREATE TABLE "message_parts" (
	"database_identifier" INTEGER,
	"message_database_identifier" INTEGER,
	"mime_type" STRING,
	"content" BLOB,
	"url" STRING,
	 PRIMARY KEY ("database_identifier")
);

CREATE TABLE "message_index" (
	"conversation_database_identifier" INTEGER,
	"message_database_identifier" INTEGER
);

CREATE TABLE "keyed_values" (
	"database_identifier" INTEGER,
	"object_type" STRING,
	"object_id" INTEGER,
	"key_type" INTEGER,
	"key" STRING,
	"value" BLOB,
	"deleted_at" DATETIME,
	"seq" INTEGER,
	 PRIMARY KEY ("object_type","object_id","key")
);

CREATE TABLE "events" (
	"database_identifier" INTEGER,
	"type" INTEGER,
	"creator_id" STRING,
	"seq" INTEGER,
	"timestamp" INTEGER,
	"preceding_seq" INTEGER,
	"client_seq" INTEGER,
	"subtype" INTEGER,
	"external_content_id" BLOB,
	"member_id" STRING,
	"target_seq" INTEGER,
	"stream_database_identifier" INTEGER,
	"version" INT,
	 PRIMARY KEY ("stream_database_identifier","seq")
);

CREATE TABLE "unprocessed_events" (
	"database_identifier" INTEGER,
	"event_database_identifier" INTEGER,
	"created_at" DATETIME,
	 PRIMARY KEY ("database_identifier"),
	 CONSTRAINT "fkeycon_unprocessed_events_to_events" FOREIGN KEY ("event_database_identifier") REFERENCES "events" ("database_identifier")
);

CREATE TABLE "event_metadata" (
	"event_database_identifier" INTEGER,
	"key" TEXT,
	"value" BLOB,
	 PRIMARY KEY ("event_database_identifier","key")
);

CREATE TABLE "event_content_parts" (
	"event_content_part_id" INTEGER,
	"event_database_identifier" INTEGER,
	"type" TEXT,
	"value" BLOB,
	 PRIMARY KEY ("event_content_part_id","event_database_identifier")
);

CREATE TABLE "conversations" (
	"database_identifier" INTEGER,
	"stream_database_identifier" INTEGER,
	"deleted_at" DATETIME,
	 PRIMARY KEY ("database_identifier")
);

CREATE TABLE "messages" (
	"database_identifier" INTEGER,
	"deleted_at" DATETIME,
	"user_id" STRING,
	"seq" INTEGER,
	"conversation_database_identifier" INTEGER,
	"event_database_identifier" INTEGER,
	"version" INT,
	 PRIMARY KEY ("conversation_database_identifier","seq"),
	 CONSTRAINT "fkeycon_messages_to_conversations" FOREIGN KEY ("conversation_database_identifier") REFERENCES "conversations" ("database_identifier"),
	 CONSTRAINT "fkeycon_messages_to_events" FOREIGN KEY ("event_database_identifier") REFERENCES "events" ("database_identifier")
);

CREATE TABLE "conversation_participants" (
	"database_identifier" INTEGER,
	"conversation_database_identifier" INTEGER,
	"stream_member_database_identifier" INTEGER,
	"member_id" STRING,
	"created_at" DATETIME,
	"deleted_at" DATETIME,
	"seq" INTEGER,
	"event_database_identifier" INTEGER,
	 PRIMARY KEY ("conversation_database_identifier","member_id")
);
