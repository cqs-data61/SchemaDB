DROP DATABASE IF EXISTS "schema2206";
CREATE DATABASE "schema2206";
USE "schema2206";
CREATE TABLE "event" (
	"eventid" SERIAL,
	"event" TEXT,
	 PRIMARY KEY ("eventid")
);

CREATE TABLE "weapon" (
	"weaponid" SERIAL,
	"weapon" TEXT,
	 PRIMARY KEY ("weaponid")
);

CREATE TABLE "player_stats" (
	"logid" INT,
	"steamid64" BIGINT,
	"nameid" INT,
	"teamid" INT,
	"kills" INT,
	"assists" INT,
	"deaths" INT,
	"dmg" INT,
	"dt" INT,
	"wins" INT,
	"losses" INT,
	"ties" INT,
	"primary_classid" INT,
	 PRIMARY KEY ("steamid64","logid")
);

CREATE TABLE "chat" (
	"logid" INT,
	"steamid64" BIGINT,
	"seq" INT,
	"msg" TEXT,
	 PRIMARY KEY ("logid","seq"),
	 CONSTRAINT "fkeycon_chat_to_player_stats" FOREIGN KEY ("logid","steamid64") REFERENCES "player_stats" ("logid","steamid64")
);

CREATE TABLE "event_stats" (
	"logid" INT,
	"steamid64" BIGINT,
	"eventid" INT,
	"demoman" INT,
	"engineer" INT,
	"heavyweapons" INT,
	"medic" INT,
	"pyro" INT,
	"scout" INT,
	"sniper" INT,
	"soldier" INT,
	"spy" INT,
	 PRIMARY KEY ("steamid64","logid","eventid"),
	 CONSTRAINT "fkeycon_event_stats_to_player_stats" FOREIGN KEY ("logid","steamid64") REFERENCES "player_stats" ("logid","steamid64")
);

CREATE TABLE "class_stats" (
	"logid" INT,
	"steamid64" BIGINT,
	"classid" INT,
	"kills" INT,
	"assists" INT,
	"deaths" INT,
	"dmg" INT,
	"duration" INT,
	 PRIMARY KEY ("steamid64","logid","classid"),
	 CONSTRAINT "fkeycon_class_stats_to_player_stats" FOREIGN KEY ("logid","steamid64") REFERENCES "player_stats" ("logid","steamid64")
);

CREATE TABLE "weapon_stats" (
	"logid" INT,
	"steamid64" BIGINT,
	"classid" INT,
	"weaponid" INT,
	"kills" INT,
	"dmg" INT,
	"avg_dmg" REAL,
	"shots" INT,
	"hits" INT,
	 PRIMARY KEY ("steamid64","logid","classid","weaponid"),
	 CONSTRAINT "fkeycon_weapon_stats_to_class_stats" FOREIGN KEY ("logid","steamid64","classid") REFERENCES "class_stats" ("logid","steamid64","classid")
);

CREATE TABLE "heal_stats" (
	"logid" INT,
	"healer" BIGINT,
	"healee" BIGINT,
	"healing" INT,
	 PRIMARY KEY ("logid","healer","healee"),
	 CONSTRAINT "fkeycon_heal_stats_to_player_stats" FOREIGN KEY ("logid","healee") REFERENCES "player_stats" ("logid","steamid64")
);

CREATE TABLE "medic_stats" (
	"logid" INT,
	"steamid64" BIGINT,
	"ubers" INT,
	"medigun_ubers" INT,
	"kritz_ubers" INT,
	"other_ubers" INT,
	"drops" INT,
	"advantages_lost" INT,
	"biggest_advantage_lost" INT,
	"avg_time_before_healing" REAL,
	"avg_time_before_using" REAL,
	"avg_time_to_build" REAL,
	"avg_uber_duration" REAL,
	"deaths_after_uber" INT,
	"deaths_before_uber" INT,
	 PRIMARY KEY ("steamid64","logid"),
	 CONSTRAINT "fkeycon_medic_stats_to_player_stats" FOREIGN KEY ("logid","steamid64") REFERENCES "player_stats" ("logid","steamid64")
);

CREATE TABLE "player_stats_extra" (
	"logid" INT,
	"steamid64" BIGINT,
	"suicides" INT,
	"dmg_real" INT,
	"dt_real" INT,
	"hr" INT,
	"lks" INT,
	"airshots" INT,
	"medkits" INT,
	"medkits_hp" INT,
	"backstabs" INT,
	"headshots" INT,
	"headshots_hit" INT,
	"sentries" INT,
	"healing" INT,
	"cpc" INT,
	"ic" INT,
	 PRIMARY KEY ("steamid64","logid"),
	 CONSTRAINT "fkeycon_player_stats_extra_to_player_stats" FOREIGN KEY ("logid","steamid64") REFERENCES "player_stats" ("logid","steamid64")
);

CREATE TABLE "class" (
	"classid" SERIAL,
	"class" TEXT,
	 PRIMARY KEY ("classid")
);

CREATE TABLE "player" (
	"steamid64" BIGINT,
	"nameid" INT,
	"avatarhash" TEXT,
	"last_active" BIGINT,
	 PRIMARY KEY ("steamid64")
);

CREATE TABLE "name" (
	"nameid" SERIAL,
	"name" TEXT,
	 PRIMARY KEY ("nameid")
);

CREATE TABLE "round" (
	"logid" INT,
	"seq" INT,
	"duration" INT,
	"winner" INT,
	 PRIMARY KEY ("logid","seq")
);

CREATE TABLE "round_extra" (
	"logid" INT,
	"seq" INT,
	"time" BIGINT,
	"firstcap" INT,
	"red_score" INT,
	"blue_score" INT,
	"red_kills" INT,
	"blue_kills" INT,
	"red_dmg" INT,
	"blue_dmg" INT,
	"red_ubers" INT,
	"blue_ubers" INT,
	 PRIMARY KEY ("logid","seq"),
	 CONSTRAINT "fkeycon_round_extra_to_round" FOREIGN KEY ("logid","seq") REFERENCES "round" ("logid","seq")
);

CREATE TABLE "team" (
	"teamid" SERIAL,
	"team" TEXT,
	 PRIMARY KEY ("teamid")
);

CREATE TABLE "log_json" (
	"logid" INTEGER,
	"data" BYTEA,
	 PRIMARY KEY ("logid")
);

CREATE TABLE "log" (
	"logid" INTEGER,
	"time" BIGINT,
	"duration" INT,
	"title" TEXT,
	"mapid" INT,
	"red_score" INT,
	"blue_score" INT,
	"formatid" INT,
	"duplicate_of" INT,
	 PRIMARY KEY ("logid")
);

CREATE TABLE "map" (
	"mapid" SERIAL,
	"map" TEXT,
	 PRIMARY KEY ("mapid")
);

CREATE TABLE "format" (
	"formatid" SERIAL,
	"format" TEXT,
	"players" INT,
	 PRIMARY KEY ("formatid")
);
