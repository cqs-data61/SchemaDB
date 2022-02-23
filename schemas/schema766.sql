DROP DATABASE IF EXISTS "schema766";
CREATE DATABASE "schema766";
USE "schema766";
CREATE TABLE "alphaventage_jobs" (
	"job_id" INT,
	"ticker" VARCHAR,
	"data_month" VARCHAR,
	"data_year" VARCHAR,
	"attempts" TINYINT,
	"created_date" DATETIME,
	"last_updated" DATETIME,
	"deleted" BOOLEAN,
	 PRIMARY KEY ("job_id")
);

CREATE TABLE "general_config" (
	"last_portfolio_positions_update" DATETIME,
	"should_reset" BOOLEAN,
	"last_updated" DATETIME
);

CREATE TABLE "strategies" (
	"strategy_id" INT,
	"name" VARCHAR,
	"version" VARCHAR,
	"type" VARCHAR,
	"created_date" DATETIME,
	"last_updated" DATETIME,
	 PRIMARY KEY ("strategy_id")
);

CREATE TABLE "lists" (
	"list_id" INT,
	"title" VARCHAR,
	"description" VARCHAR,
	"created_date" DATETIME,
	"last_updated" DATETIME,
	 PRIMARY KEY ("list_id")
);

CREATE TABLE "backtest_schedules" (
	"backtest_schedule_id" INT,
	"list_id" INT,
	"strategy_id" INT,
	"from_date" DATETIME,
	"to_date" DATETIME,
	"timeframe" VARCHAR,
	"frecuency" VARCHAR,
	"created_date" DATETIME,
	"last_updated" DATETIME,
	 PRIMARY KEY ("backtest_schedule_id"),
	 CONSTRAINT "fkeycon_backtest_schedules_to_lists" FOREIGN KEY ("list_id") REFERENCES "lists" ("list_id"),
	 CONSTRAINT "fkeycon_backtest_schedules_to_strategies" FOREIGN KEY ("strategy_id") REFERENCES "strategies" ("strategy_id")
);

CREATE TABLE "stocks" (
	"stock_id" INT,
	"ticker" VARCHAR,
	"company" VARCHAR,
	"exchanger" VARCHAR,
	"description" VARCHAR,
	"created_date" DATETIME,
	"last_updated" DATETIME,
	 PRIMARY KEY ("stock_id")
);

CREATE TABLE "backtest_reports" (
	"backtest_report_id" INT,
	"stock_id" INT,
	"backtest_schedule_id" INT,
	"strategy_id" INT,
	"from_date" DATETIME,
	"to_date" DATETIME,
	"main_timeframe" VARCHAR,
	"tag" VARCHAR,
	"created_date" DATETIME,
	"last_updated" DATETIME,
	 PRIMARY KEY ("backtest_report_id"),
	 CONSTRAINT "fkeycon_backtest_reports_to_strategies" FOREIGN KEY ("strategy_id") REFERENCES "strategies" ("strategy_id"),
	 CONSTRAINT "fkeycon_backtest_reports_to_backtest_schedules" FOREIGN KEY ("backtest_schedule_id") REFERENCES "backtest_schedules" ("backtest_schedule_id"),
	 CONSTRAINT "fkeycon_backtest_reports_to_stocks" FOREIGN KEY ("stock_id") REFERENCES "stocks" ("stock_id")
);

CREATE TABLE "report_meta" (
	"report_meta_id" INT,
	"backtest_report_id" INT,
	"meta_key" VARCHAR,
	"meta_value" VARCHAR,
	"created_date" DATETIME,
	"last_updated" DATETIME,
	 PRIMARY KEY ("report_meta_id"),
	 CONSTRAINT "fkeycon_report_meta_to_backtest_reports" FOREIGN KEY ("backtest_report_id") REFERENCES "backtest_reports" ("backtest_report_id")
);

CREATE TABLE "stock_prices" (
	"stock_price_id" INT,
	"stock_id" INT,
	"time_price" DATETIME,
	"open_price" DECIMAL,
	"high_price" DECIMAL,
	"low_price" DECIMAL,
	"close_price" DECIMAL,
	"volume" INT,
	"timeframe" VARCHAR,
	"created_date" DATETIME,
	"last_updated" DATETIME,
	 PRIMARY KEY ("stock_price_id"),
	 CONSTRAINT "fkeycon_stock_prices_to_stocks" FOREIGN KEY ("stock_id") REFERENCES "stocks" ("stock_id")
);

CREATE TABLE "stock_list" (
	"stock_id" INT,
	"list_id" INT,
	"created_date" DATETIME,
	"last_updated" DATETIME,
	 CONSTRAINT "fkeycon_stock_list_to_stocks" FOREIGN KEY ("stock_id") REFERENCES "stocks" ("stock_id"),
	 CONSTRAINT "fkeycon_stock_list_to_lists" FOREIGN KEY ("list_id") REFERENCES "lists" ("list_id")
);

CREATE TABLE "indicators" (
	"indicator_id" INT,
	"stock_id" INT,
	"indicator_key" VARCHAR,
	"indicator_value" VARCHAR,
	"main_timeframe" VARCHAR,
	"date_time" DATETIME,
	"created_date" DATETIME,
	"last_updated" DATETIME,
	 PRIMARY KEY ("indicator_id"),
	 CONSTRAINT "fkeycon_indicators_to_stocks" FOREIGN KEY ("stock_id") REFERENCES "stocks" ("stock_id")
);

CREATE TABLE "etoro_stocks" (
	"etoro_stock_id" INT,
	"stock_id" INT,
	"ticker" VARCHAR,
	"company" VARCHAR,
	"exchanger" VARCHAR,
	"url" VARCHAR,
	"is_manual_tp" BOOLEAN,
	"created_date" DATETIME,
	"last_updated" DATETIME,
	 PRIMARY KEY ("etoro_stock_id"),
	 CONSTRAINT "fkeycon_etoro_stocks_to_stocks" FOREIGN KEY ("stock_id") REFERENCES "stocks" ("stock_id")
);
