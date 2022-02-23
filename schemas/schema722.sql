DROP DATABASE IF EXISTS "schema722";
CREATE DATABASE "schema722";
USE "schema722";
CREATE TABLE "t_passengers" (
	"station_id" BIGINT,
	"year" SMALLINT,
	"num_i" INT,
	"num_o" INT,
	"num_io" INT,
	"reference_title" VARCHAR,
	"reference_url" TEXT,
	"reference_last_access_date" DATE,
	"remarks" TEXT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("station_id","year")
);

CREATE TABLE "status" (
	"status_id" TINYINT,
	"status_name" VARCHAR,
	 PRIMARY KEY ("status_id")
);

CREATE TABLE "station_group" (
	"station_group_id" INT,
	 PRIMARY KEY ("station_group_id")
);

CREATE TABLE "region" (
	"region_id" INT,
	"region_code" VARCHAR,
	"region_name" VARCHAR,
	 PRIMARY KEY ("region_id")
);

CREATE TABLE "prefecture" (
	"prefecture_id" INT,
	"prefecture_name" VARCHAR,
	"region_id" INT,
	 PRIMARY KEY ("prefecture_id")
);

CREATE TABLE "m_api_station" (
	"station_id" INT,
	"id" INT,
	"station_name" VARCHAR,
	"station_name_kana" VARCHAR,
	"line_id" INT,
	"prefecture_id" INT,
	"address" VARCHAR,
	"status" TINYINT,
	"open_date" DATE,
	"close_date" DATE,
	"sort_no" INT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"uuid_aggr" BIGINT,
	"uuid" BIGINT,
	 PRIMARY KEY ("station_id")
);

CREATE TABLE "line_system" (
	"system_line_id" INT,
	"system_line_name" VARCHAR,
	 PRIMARY KEY ("system_line_id")
);

CREATE TABLE "company_type" (
	"company_type_id" INT,
	"company_type_code" VARCHAR,
	"company_type_name" VARCHAR,
	 PRIMARY KEY ("company_type_id")
);

CREATE TABLE "company" (
	"company_id" INT,
	"company_code" VARCHAR,
	"company_name_alias" VARCHAR,
	"company_name_kana" VARCHAR,
	"company_name" VARCHAR,
	"company_type_id" INT,
	"length" FLOAT,
	"line_num" SMALLINT,
	"station_num" SMALLINT,
	"prefecture_id" INT,
	"status" TINYINT,
	"corporate_color" VARCHAR,
	 PRIMARY KEY ("company_id")
);

CREATE TABLE "station" (
	"station_id" INT,
	"company_id" INT,
	"station_name" VARCHAR,
	"station_name_kana" VARCHAR,
	"station_name_wiki" VARCHAR,
	"prefecture_id" INT,
	"address" VARCHAR,
	"status_id" TINYINT,
	"open_date" DATE,
	"close_date" DATE,
	 PRIMARY KEY ("station_id"),
	 CONSTRAINT "FK_station_prefecture" FOREIGN KEY ("prefecture_id") REFERENCES "prefecture" ("prefecture_id"),
	 CONSTRAINT "FK_station_company" FOREIGN KEY ("company_id") REFERENCES "company" ("company_id")
);

CREATE TABLE "station_group_station" (
	"station_group_id" INT,
	"station_id" INT,
	 CONSTRAINT "FK__station" FOREIGN KEY ("station_id") REFERENCES "station" ("station_id"),
	 CONSTRAINT "FK__station_group" FOREIGN KEY ("station_group_id") REFERENCES "station_group" ("station_group_id")
);

CREATE TABLE "line" (
	"line_id" INT,
	"line_code" VARCHAR,
	"company_id" INT,
	"line_name" VARCHAR,
	"line_name_alias" VARCHAR,
	"line_name_kana" VARCHAR,
	"status_id" TINYINT,
	"station_num" INT,
	"operating_kilo" FLOAT,
	"real_kilo" FLOAT,
	"gauge" INT,
	"open_date" DATE,
	"close_date" DATE,
	 PRIMARY KEY ("line_id"),
	 CONSTRAINT "FK_line_company" FOREIGN KEY ("company_id") REFERENCES "company" ("company_id")
);

CREATE TABLE "line_station" (
	"line_id" INT,
	"station_id" INT,
	 PRIMARY KEY ("line_id","station_id"),
	 CONSTRAINT "FK_line_station_line" FOREIGN KEY ("line_id") REFERENCES "line" ("line_id")
);

CREATE TABLE "line_section" (
	"line_id" INT,
	"section_id" INT,
	"line_section_name" VARCHAR,
	"start_station_id" INT,
	"end_station_id" INT,
	 PRIMARY KEY ("line_id","section_id"),
	 CONSTRAINT "FK_line_section_line" FOREIGN KEY ("line_id") REFERENCES "line" ("line_id")
);

CREATE TABLE "line_section_line_station" (
	"line_id" INT,
	"section_id" INT,
	"sort_no" INT,
	"station_id" INT,
	"op_kilo" FLOAT,
	"op_kilo_between" FLOAT,
	"real_kilo" FLOAT,
	"real_kilo_between" FLOAT,
	 PRIMARY KEY ("line_id","section_id","sort_no"),
	 CONSTRAINT "FK_line_station_line_section" FOREIGN KEY ("line_id","section_id") REFERENCES "line_section" ("line_id","section_id")
);

CREATE TABLE "company_statistics" (
	"company_id" INT,
	"year" YEAR,
	"transport_passengers_teiki_tsukin" INT,
	"transport_passengers_teiki_tsugaku" INT,
	"transport_passengers_teiki_total" INT,
	"transport_passengers_teiki_percent" INT,
	"transport_passengers_teikigai" INT,
	"transport_passengers_teikigai_percent" INT,
	"transport_passengers_sum" INT,
	"transport_revenue_passenger_teiki_tsukin" INT,
	"transport_revenue_passenger_teiki_tsugaku" INT,
	"transport_revenue_passenger_teiki_total" INT,
	"transport_revenue_passenger_teiki_percent" INT,
	"transport_revenue_passenger_teikigai" INT,
	"transport_revenue_passenger_teikigai_percent" INT,
	"transport_revenue_passenger_total" INT,
	"transport_revenue_passenger_baggage" INT,
	"transport_revenue_passenger_total2" INT,
	 PRIMARY KEY ("company_id","year"),
	 CONSTRAINT "FK_company_statistics_company" FOREIGN KEY ("company_id") REFERENCES "company" ("company_id")
);

CREATE TABLE "company_name_hist" (
	"company_name_hist" INT,
	"company_id" INT,
	"company_name" VARCHAR,
	 PRIMARY KEY ("company_name_hist"),
	 CONSTRAINT "FK_company_name_hist_company" FOREIGN KEY ("company_id") REFERENCES "company" ("company_id")
);

CREATE TABLE "company_name_alias" (
	"company_id" INT,
	"company_name" VARCHAR,
	 CONSTRAINT "FK_company_name_alias_company" FOREIGN KEY ("company_id") REFERENCES "company" ("company_id")
);
