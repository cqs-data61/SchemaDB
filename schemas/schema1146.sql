DROP DATABASE IF EXISTS "schema1146";
CREATE DATABASE "schema1146";
USE "schema1146";
CREATE TABLE "users" (
	"id" TEXT,
	"name" TEXT,
	"email" TEXT,
	"password" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "rides" (
	"id" INTEGER,
	"starting_point" TEXT,
	"destination" TEXT,
	"depart_time" TEXT,
	"eta" TEXT,
	"seats" INTEGER,
	"vehicle" TEXT,
	"driver" TEXT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_rides_to_users" FOREIGN KEY ("driver") REFERENCES "users" ("id")
);

CREATE TABLE "requests" (
	"id" INTEGER,
	"ride_id" INTEGER,
	"user_id" TEXT,
	"destination" TEXT,
	"req_status" TEXT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_requests_to_rides" FOREIGN KEY ("ride_id") REFERENCES "rides" ("id"),
	 CONSTRAINT "fkeycon_requests_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);
