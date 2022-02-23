DROP DATABASE IF EXISTS "schema1573";
CREATE DATABASE "schema1573";
USE "schema1573";
CREATE TABLE "edinet_list_view" (
	"submit_date" DATE,
	"count_all" INT,
	"count_target" INT,
	"count_scraped" INT,
	"count_analyzed" INT,
	"cant_scraped_code" VARCHAR,
	"not_analyzed_code" VARCHAR,
	"count_not_scraped" INT,
	"count_not_target" INT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("submit_date")
);

CREATE TABLE "corporate_view" (
	"code" CHAR,
	"name" VARCHAR,
	"submit_date" DATE,
	"latest_corporate_value" FLOAT,
	"average_corporate_value" FLOAT,
	"standard_deviation" FLOAT,
	"coefficient_of_variation" FLOAT,
	"average_stock_price" FLOAT,
	"import_date" DATE,
	"latest_stock_price" FLOAT,
	"discount_value" FLOAT,
	"discount_rate" FLOAT,
	"count_year" INT,
	"forecast_stock" FLOAT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("code")
);

CREATE TABLE "minkabu" (
	"id" INT,
	"company_code" CHAR,
	"target_date" DATE,
	"stock_price" FLOAT,
	"goals_stock" FLOAT,
	"theoretical_stock" FLOAT,
	"individual_investors_stock" FLOAT,
	"securities_analyst_stock" FLOAT,
	"created_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "stock_price" (
	"id" INT,
	"company_code" CHAR,
	"target_date" DATE,
	"stock_price" FLOAT,
	"opening_price" FLOAT,
	"high_price" FLOAT,
	"low_price" FLOAT,
	"volume" INT,
	"per" VARCHAR,
	"pbr" VARCHAR,
	"roe" VARCHAR,
	"number_of_shares" VARCHAR,
	"market_capitalization" VARCHAR,
	"dividend_yield" VARCHAR,
	"shareholder_benefit" VARCHAR,
	"source_of" CHAR,
	"created_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "analysis_result" (
	"id" INT,
	"company_code" CHAR,
	"document_period" DATE,
	"corporate_value" FLOAT,
	"document_type_code" CHAR,
	"submit_date" DATE,
	"document_id" CHAR,
	"created_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "financial_statement" (
	"id" INT,
	"company_code" CHAR,
	"edinet_code" CHAR,
	"financial_statement_id" VARCHAR,
	"subject_id" VARCHAR,
	"period_start" DATE,
	"period_end" DATE,
	"value" BIGINT,
	"document_type_code" CHAR,
	"submit_date" DATE,
	"document_id" CHAR,
	"created_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "document" (
	"id" INT,
	"document_id" CHAR,
	"document_type_code" CHAR,
	"edinet_code" CHAR,
	"document_period" DATE,
	"submit_date" DATE,
	"downloaded" CHAR,
	"decoded" CHAR,
	"scraped_number_of_shares" CHAR,
	"number_of_shares_document_path" VARCHAR,
	"scraped_bs" CHAR,
	"bs_document_path" VARCHAR,
	"scraped_pl" CHAR,
	"pl_document_path" VARCHAR,
	"scraped_cf" CHAR,
	"cf_document_path" VARCHAR,
	"removed" CHAR,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "edinet_document" (
	"id" INT,
	"doc_id" CHAR,
	"edinet_code" CHAR,
	"sec_code" CHAR,
	"jcn" CHAR,
	"filer_name" VARCHAR,
	"fund_code" CHAR,
	"ordinance_code" CHAR,
	"form_code" CHAR,
	"doc_type_code" CHAR,
	"period_start" CHAR,
	"period_end" CHAR,
	"submit_date_time" CHAR,
	"doc_description" VARCHAR,
	"issuer_edinet_code" CHAR,
	"subject_edinet_code" CHAR,
	"subsidiary_edinet_code" VARCHAR,
	"current_report_reason" VARCHAR,
	"parent_doc_id" CHAR,
	"ope_date_time" CHAR,
	"withdrawal_status" CHAR,
	"doc_info_edit_status" CHAR,
	"disclosure_status" CHAR,
	"xbrl_flag" CHAR,
	"pdf_flag" CHAR,
	"attach_doc_flag" CHAR,
	"english_doc_flag" CHAR,
	"created_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "pl_subject" (
	"id" INT,
	"outline_subject_id" VARCHAR,
	"detail_subject_id" VARCHAR,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bs_subject" (
	"id" INT,
	"outline_subject_id" VARCHAR,
	"detail_subject_id" VARCHAR,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "scraping_keyword" (
	"id" INT,
	"financial_statement_id" VARCHAR,
	"keyword" VARCHAR,
	"remarks" VARCHAR,
	"created_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "company" (
	"code" CHAR,
	"company_name" VARCHAR,
	"industry_id" INT,
	"edinet_code" CHAR,
	"list_categories" CHAR,
	"consolidated" CHAR,
	"capital_stock" INT,
	"settlement_date" VARCHAR,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("edinet_code")
);

CREATE TABLE "industry" (
	"id" INT,
	"name" VARCHAR,
	"created_at" DATETIME,
	 PRIMARY KEY ("id")
);
