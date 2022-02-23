DROP DATABASE IF EXISTS "schema1375";
CREATE DATABASE "schema1375";
USE "schema1375";
CREATE TABLE "pma__export_templates" (
	"id" INT,
	"username" VARCHAR,
	"export_type" VARCHAR,
	"template_name" VARCHAR,
	"template_data" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "pma__designer_settings" (
	"username" VARCHAR,
	"settings_data" TEXT,
	 PRIMARY KEY ("username")
);

CREATE TABLE "pma__central_columns" (
	"db_name" VARCHAR,
	"col_name" VARCHAR,
	"col_type" VARCHAR,
	"col_length" TEXT,
	"col_collation" VARCHAR,
	"col_isnull" BOOLEAN,
	"col_extra" VARCHAR,
	"col_default" TEXT,
	 PRIMARY KEY ("db_name","col_name")
);

CREATE TABLE "pma__savedsearches" (
	"id" INT,
	"username" VARCHAR,
	"db_name" VARCHAR,
	"search_name" VARCHAR,
	"search_data" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "pma__navigationhiding" (
	"username" VARCHAR,
	"item_name" VARCHAR,
	"item_type" VARCHAR,
	"db_name" VARCHAR,
	"table_name" VARCHAR,
	 PRIMARY KEY ("username","item_name","item_type","db_name","table_name")
);

CREATE TABLE "pma__usergroups" (
	"usergroup" VARCHAR,
	"tab" VARCHAR,
	"allowed" ENUM,
	 PRIMARY KEY ("usergroup","tab","allowed")
);

CREATE TABLE "pma__users" (
	"username" VARCHAR,
	"usergroup" VARCHAR,
	 PRIMARY KEY ("username","usergroup")
);

CREATE TABLE "pma__userconfig" (
	"username" VARCHAR,
	"timevalue" TIMESTAMP,
	"config_data" TEXT,
	 PRIMARY KEY ("username")
);

CREATE TABLE "pma__tracking" (
	"db_name" VARCHAR,
	"table_name" VARCHAR,
	"version" INT,
	"date_created" DATETIME,
	"date_updated" DATETIME,
	"schema_snapshot" TEXT,
	"schema_sql" TEXT,
	"data_sql" LONGTEXT,
	"tracking" ENUM,
	"tracking_active" INT,
	 PRIMARY KEY ("db_name","table_name","version")
);

CREATE TABLE "pma__table_info" (
	"db_name" VARCHAR,
	"table_name" VARCHAR,
	"display_field" VARCHAR,
	 PRIMARY KEY ("db_name","table_name")
);

CREATE TABLE "pma__table_coords" (
	"db_name" VARCHAR,
	"table_name" VARCHAR,
	"pdf_page_number" INT,
	"x" FLOAT,
	"y" FLOAT,
	 PRIMARY KEY ("db_name","table_name","pdf_page_number")
);

CREATE TABLE "pma__relation" (
	"master_db" VARCHAR,
	"master_table" VARCHAR,
	"master_field" VARCHAR,
	"foreign_db" VARCHAR,
	"foreign_table" VARCHAR,
	"foreign_field" VARCHAR,
	 PRIMARY KEY ("master_db","master_table","master_field")
);

CREATE TABLE "pma__table_uiprefs" (
	"username" VARCHAR,
	"db_name" VARCHAR,
	"table_name" VARCHAR,
	"prefs" TEXT,
	"last_update" TIMESTAMP,
	 PRIMARY KEY ("username","db_name","table_name")
);

CREATE TABLE "pma__favorite" (
	"username" VARCHAR,
	"tables" TEXT,
	 PRIMARY KEY ("username")
);

CREATE TABLE "pma__recent" (
	"username" VARCHAR,
	"tables" TEXT,
	 PRIMARY KEY ("username")
);

CREATE TABLE "pma__pdf_pages" (
	"db_name" VARCHAR,
	"page_nr" INT,
	"page_descr" VARCHAR,
	 PRIMARY KEY ("page_nr")
);

CREATE TABLE "pma__history" (
	"id" BIGINT,
	"username" VARCHAR,
	"db" VARCHAR,
	"table" VARCHAR,
	"timevalue" TIMESTAMP,
	"sqlquery" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "pma__column_info" (
	"id" INT,
	"db_name" VARCHAR,
	"table_name" VARCHAR,
	"column_name" VARCHAR,
	"comment" VARCHAR,
	"mimetype" VARCHAR,
	"transformation" VARCHAR,
	"transformation_options" VARCHAR,
	"input_transformation" VARCHAR,
	"input_transformation_options" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "pma__bookmark" (
	"id" INT,
	"dbase" VARCHAR,
	"user" VARCHAR,
	"label" VARCHAR,
	"query" TEXT,
	 PRIMARY KEY ("id")
);
