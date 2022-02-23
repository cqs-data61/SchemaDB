DROP DATABASE IF EXISTS "schema181";
CREATE DATABASE "schema181";
USE "schema181";
CREATE TABLE "user" (
	"user_num" INT,
	"user_id" VARCHAR,
	"password" VARCHAR,
	"reg_date" TIMESTAMP,
	 PRIMARY KEY ("user_num")
);

CREATE TABLE "register_queue" (
	"ccid" VARCHAR,
	"version" VARCHAR,
	"category1" VARCHAR,
	"category2" VARCHAR,
	"owner_id" VARCHAR,
	"owner_reg_date" TIMESTAMP,
	"job_proc" VARCHAR,
	"job_proc_status" VARCHAR,
	"job_download_start" TIMESTAMP,
	"job_download_end" TIMESTAMP,
	"job_index_start" TIMESTAMP,
	"job_index_end" TIMESTAMP,
	"job_progress" TEXT,
	"reg_date" TIMESTAMP,
	 PRIMARY KEY ("ccid","version")
);

CREATE TABLE "metadata_hist" (
	"meta_hist_id" INT,
	"meta_seq" INT,
	"metadata" TEXT,
	"update_date" TIMESTAMP,
	 PRIMARY KEY ("meta_hist_id")
);

CREATE TABLE "log_search" (
	"log_search_id" INT,
	"client_ip" VARCHAR,
	"client_agent" VARCHAR,
	"search_keyword" VARCHAR,
	"search_api" VARCHAR,
	"result_count" INT,
	"search_date" TIMESTAMP,
	 PRIMARY KEY ("log_search_id")
);

CREATE TABLE "log_register" (
	"log_reg_id" INT,
	"ccid" VARCHAR,
	"version" VARCHAR,
	"category1" VARCHAR,
	"category2" VARCHAR,
	"job_proc" VARCHAR,
	"job_proc_status" VARCHAR,
	"job_assign_date" TIMESTAMP,
	"job_finish_date" TIMESTAMP,
	"job_progress" TEXT,
	"reg_date" TIMESTAMP,
	 PRIMARY KEY ("log_reg_id")
);

CREATE TABLE "ccontent" (
	"ccid" VARCHAR,
	"version" VARCHAR,
	"owner_id" VARCHAR,
	"owner_reg_date" TIMESTAMP,
	"status" VARCHAR,
	"reg_date" TIMESTAMP,
	 PRIMARY KEY ("ccid","version")
);

CREATE TABLE "metadata_file" (
	"meta_file_seq" INT,
	"ccid" VARCHAR,
	"version" VARCHAR,
	"meta_path" VARCHAR,
	"meta_type" VARCHAR,
	"meta_size" BIGINT,
	"meta_class" VARCHAR,
	"file_status" VARCHAR,
	 PRIMARY KEY ("meta_file_seq"),
	 CONSTRAINT "metadata_file_ibfk_1" FOREIGN KEY ("ccid","version") REFERENCES "ccontent" ("ccid","version")
);

CREATE TABLE "metadata" (
	"meta_seq" INT,
	"ccid" VARCHAR,
	"version" VARCHAR,
	"meta_path" VARCHAR,
	"metadata_original" TEXT,
	"metadata_service" TEXT,
	"meta_type" VARCHAR,
	"meta_class" VARCHAR,
	"title" VARCHAR,
	"content_type" VARCHAR,
	"last_modify" TIMESTAMP,
	 PRIMARY KEY ("meta_seq"),
	 CONSTRAINT "metadata_ibfk_1" FOREIGN KEY ("ccid","version") REFERENCES "ccontent" ("ccid","version")
);

CREATE TABLE "ccontent_file" (
	"content_file_seq" INT,
	"ccid" VARCHAR,
	"version" VARCHAR,
	"content_path" VARCHAR,
	"content_type" VARCHAR,
	"content_size" BIGINT,
	"content_class" VARCHAR,
	 PRIMARY KEY ("content_file_seq"),
	 CONSTRAINT "cfiles_fk_1" FOREIGN KEY ("ccid","version") REFERENCES "ccontent" ("ccid","version")
);
