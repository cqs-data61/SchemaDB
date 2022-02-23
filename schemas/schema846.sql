DROP DATABASE IF EXISTS "schema846";
CREATE DATABASE "schema846";
USE "schema846";
CREATE TABLE "trips" (
	"route_id" TEXT,
	"service_id" TEXT,
	"trip_id" TEXT,
	"trip_headsign" TEXT,
	"trip_short_name" TEXT,
	"direction_id" SMALLINT,
	"block_id" TEXT,
	"shape_id" TEXT,
	"wheelchair_accessible" TEXT,
	"bikes_allowed" TEXT,
	 PRIMARY KEY ("trip_id")
);

CREATE TABLE "transfers" (
	"from_stop_id" TEXT,
	"to_stop_id" TEXT,
	"transfer_type" TEXT,
	"min_transfer_time" TEXT
);

CREATE TABLE "stops" (
	"stop_id" TEXT,
	"stop_code" TEXT,
	"stop_name" TEXT,
	"stop_desc" TEXT,
	"stop_lat" DOUBLE PRECISION,
	"stop_lon" DOUBLE PRECISION,
	"zone_id" TEXT,
	"stop_url" TEXT,
	"location_type" TEXT,
	"parent_station" TEXT,
	"stop_timezone" TEXT,
	"wheelchair_boarding" TEXT,
	"level_id" TEXT,
	"platform_code" TEXT,
	 PRIMARY KEY ("stop_id")
);

CREATE TABLE "stop_times" (
	"trip_id" TEXT,
	"arrival_time" TEXT,
	"departure_time" TEXT,
	"stop_id" TEXT,
	"stop_sequence" INTEGER,
	"stop_headsign" TEXT,
	"pickup_type" TEXT,
	"drop_off_type" TEXT,
	"continuous_pickup" TEXT,
	"continuous_drop_off" TEXT,
	"shape_dist_traveled" REAL,
	"timepoint" TEXT
);

CREATE TABLE "shapes" (
	"shape_id" TEXT,
	"shape_pt_lat" DOUBLE PRECISION,
	"shape_pt_lon" DOUBLE PRECISION,
	"shape_pt_sequence" INTEGER,
	"shape_dist_traveled" REAL
);

CREATE TABLE "routes" (
	"route_id" TEXT,
	"agency_id" TEXT,
	"route_short_name" TEXT,
	"route_long_name" TEXT,
	"route_desc" TEXT,
	"route_type" SMALLINT,
	"route_url" TEXT,
	"route_color" TEXT,
	"route_text_color" TEXT,
	"route_sort_order" INTEGER,
	"continuous_pickup" TEXT,
	"continuous_drop_off" TEXT,
	 PRIMARY KEY ("route_id")
);

CREATE TABLE "pathways" (
	"pathway_id" TEXT,
	"from_stop_id" TEXT,
	"to_stop_id" TEXT,
	"pathway_mode" SMALLINT,
	"is_bidirectional" SMALLINT,
	"length" REAL,
	"traversal_time" INTEGER,
	"stair_count" INTEGER,
	"max_slope" REAL,
	"min_width" REAL,
	"signposted_as" TEXT,
	"reversed_signposted_as" TEXT,
	 PRIMARY KEY ("pathway_id")
);

CREATE TABLE "frequencies" (
	"trip_id" TEXT,
	"start_time" TEXT,
	"end_time" TEXT,
	"headway_secs" INTEGER,
	"exact_times" TEXT
);

CREATE TABLE "calendar_dates" (
	"service_id" TEXT,
	"date" TEXT,
	"exception_type" INTEGER,
	 PRIMARY KEY ("date")
);

CREATE TABLE "calendar" (
	"service_id" TEXT,
	"monday" SMALLINT,
	"tuesday" SMALLINT,
	"wednesday" SMALLINT,
	"thursday" SMALLINT,
	"friday" SMALLINT,
	"saturday" SMALLINT,
	"sunday" SMALLINT,
	"start_date" TEXT,
	"end_date" TEXT,
	 PRIMARY KEY ("service_id")
);

CREATE TABLE "agency" (
	"agency_id" TEXT,
	"agency_name" TEXT,
	"agency_url" TEXT,
	"agency_timezone" TEXT,
	"agency_lang" TEXT,
	"agency_phone" TEXT,
	"agency_fare_url" TEXT,
	"agency_email" TEXT,
	 PRIMARY KEY ("agency_id")
);
