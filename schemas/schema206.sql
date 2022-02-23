DROP DATABASE IF EXISTS "schema206";
CREATE DATABASE "schema206";
USE "schema206";
CREATE TABLE "venue_type" (
	"venue_type_id" SMALLINT,
	"venue_type_code" VARCHAR,
	 PRIMARY KEY ("venue_type_id")
);

CREATE TABLE "exchange" (
	"exchange_id" INTEGER,
	"venue_type_id" SMALLINT,
	"exchange_code" VARCHAR,
	"exchange_name" VARCHAR,
	"exchange_calendar" VARCHAR,
	"exchange_tz" VARCHAR,
	 PRIMARY KEY ("exchange_id"),
	 CONSTRAINT "venue_type_fk" FOREIGN KEY ("venue_type_id") REFERENCES "venue_type" ("venue_type_id")
);

CREATE TABLE "exchange_account" (
	"exchange_account_id" INTEGER,
	"exchange_id" INTEGER,
	"exchange_account_num" VARCHAR,
	 PRIMARY KEY ("exchange_account_id"),
	 CONSTRAINT "exchange_fk" FOREIGN KEY ("exchange_id") REFERENCES "exchange" ("exchange_id")
);

CREATE TABLE "mark_type" (
	"mark_type_id" SMALLINT,
	"mark_type_code" VARCHAR,
	 PRIMARY KEY ("mark_type_id")
);

CREATE TABLE "exchange_transfer_method" (
	"exchange_transfer_method_id" SMALLINT,
	"exchange_transfer_method_code" VARCHAR,
	 PRIMARY KEY ("exchange_transfer_method_id")
);

CREATE TABLE "exchange_transfer_type" (
	"exchange_transfer_type_id" SMALLINT,
	"exchange_transfer_type_code" VARCHAR,
	 PRIMARY KEY ("exchange_transfer_type_id")
);

CREATE TABLE "currency" (
	"currency_id" INTEGER,
	"currency_code" VARCHAR,
	 PRIMARY KEY ("currency_id")
);

CREATE TABLE "exchange_transfer" (
	"exchange_transfer_id" INTEGER,
	"exchange_id" INTEGER,
	"exchange_transfer_method_id" SMALLINT,
	"exchange_transfer_type_id" SMALLINT,
	"currency_id" INTEGER,
	"quantity" DECIMAL,
	"transfer_ref" VARCHAR,
	"cost_basis" DECIMAL,
	"transfer_time" TIMESTAMP,
	 PRIMARY KEY ("exchange_transfer_id"),
	 CONSTRAINT "exchange_fk" FOREIGN KEY ("exchange_id") REFERENCES "exchange" ("exchange_id"),
	 CONSTRAINT "exchange_transfer_type_fk" FOREIGN KEY ("exchange_transfer_type_id") REFERENCES "exchange_transfer_type" ("exchange_transfer_type_id"),
	 CONSTRAINT "exchange_transfer_method_fk" FOREIGN KEY ("exchange_transfer_method_id") REFERENCES "exchange_transfer_method" ("exchange_transfer_method_id"),
	 CONSTRAINT "currency_fk" FOREIGN KEY ("currency_id") REFERENCES "currency" ("currency_id")
);

CREATE TABLE "destination_type" (
	"destination_type_id" INTEGER,
	"destination_type_code" VARCHAR,
	 PRIMARY KEY ("destination_type_id")
);

CREATE TABLE "destination" (
	"destination_id" INTEGER,
	"destination_type_id" INTEGER,
	 PRIMARY KEY ("destination_id"),
	 CONSTRAINT "destination_type_fk" FOREIGN KEY ("destination_type_id") REFERENCES "destination_type" ("destination_type_id")
);

CREATE TABLE "exchange_destination" (
	"exchange_destination_id" INTEGER,
	"exchange_id" INTEGER,
	"destination_id" INTEGER,
	 PRIMARY KEY ("exchange_destination_id"),
	 CONSTRAINT "exchange_fk" FOREIGN KEY ("exchange_id") REFERENCES "exchange" ("exchange_id"),
	 CONSTRAINT "destination_fk" FOREIGN KEY ("destination_id") REFERENCES "destination" ("destination_id")
);

CREATE TABLE "instrument_type" (
	"instrument_type_id" INTEGER,
	"instrument_type_code" VARCHAR,
	 PRIMARY KEY ("instrument_type_id")
);

CREATE TABLE "instrument" (
	"instrument_id" INTEGER,
	"instrument_type_id" INTEGER,
	"instrument_code" VARCHAR,
	 PRIMARY KEY ("instrument_id"),
	 CONSTRAINT "instrument_type_fk" FOREIGN KEY ("instrument_type_id") REFERENCES "instrument_type" ("instrument_type_id")
);

CREATE TABLE "equity" (
	"equity_id" INTEGER,
	"instrument_id" INTEGER,
	"primary_exchange_id" INTEGER,
	 PRIMARY KEY ("equity_id"),
	 CONSTRAINT "primary_exchange_fk" FOREIGN KEY ("primary_exchange_id") REFERENCES "exchange" ("exchange_id"),
	 CONSTRAINT "instrument_fk" FOREIGN KEY ("instrument_id") REFERENCES "instrument" ("instrument_id")
);

CREATE TABLE "future_contract" (
	"future_contract_id" INTEGER,
	"instrument_id" INTEGER,
	"underlier_instrument_id" INTEGER,
	"contract_size" INTEGER,
	"expiry" TIMESTAMP,
	 PRIMARY KEY ("future_contract_id"),
	 CONSTRAINT "instrument_fk" FOREIGN KEY ("instrument_id") REFERENCES "instrument" ("instrument_id"),
	 CONSTRAINT "underier_instrument_fk" FOREIGN KEY ("underlier_instrument_id") REFERENCES "instrument" ("instrument_id")
);

CREATE TABLE "instrument_mark" (
	"mark_id" INTEGER,
	"instrument_id" INTEGER,
	"mark_type_id" SMALLINT,
	"mark" DECIMAL,
	"mark_time" TIMESTAMP,
	 PRIMARY KEY ("mark_id"),
	 CONSTRAINT "mark_type_fk" FOREIGN KEY ("mark_type_id") REFERENCES "mark_type" ("mark_type_id"),
	 CONSTRAINT "instrument_fk" FOREIGN KEY ("instrument_id") REFERENCES "instrument" ("instrument_id")
);

CREATE TABLE "exchange_instrument" (
	"exchange_instrument_id" INTEGER,
	"exchange_id" INTEGER,
	"instrument_id" INTEGER,
	"exchange_instrument_code" VARCHAR,
	 PRIMARY KEY ("exchange_instrument_id"),
	 CONSTRAINT "exchange_fk" FOREIGN KEY ("exchange_id") REFERENCES "exchange" ("exchange_id"),
	 CONSTRAINT "instrument_fk" FOREIGN KEY ("instrument_id") REFERENCES "instrument" ("instrument_id")
);

CREATE TABLE "cash_instrument" (
	"cash_instrument_id" INTEGER,
	"currency_id" INTEGER,
	"instrument_id" INTEGER,
	 PRIMARY KEY ("cash_instrument_id"),
	 CONSTRAINT "instrument_fk" FOREIGN KEY ("instrument_id") REFERENCES "instrument" ("instrument_id"),
	 CONSTRAINT "currency_fk" FOREIGN KEY ("currency_id") REFERENCES "currency" ("currency_id")
);

CREATE TABLE "currency_pair" (
	"currency_pair_id" INTEGER,
	"base_currency_id" INTEGER,
	"quote_currency_id" INTEGER,
	"instrument_id" INTEGER,
	 PRIMARY KEY ("currency_pair_id"),
	 CONSTRAINT "quote_currency_fk" FOREIGN KEY ("quote_currency_id") REFERENCES "currency" ("currency_id"),
	 CONSTRAINT "base_currency_fk" FOREIGN KEY ("base_currency_id") REFERENCES "currency" ("currency_id"),
	 CONSTRAINT "instrument_fk" FOREIGN KEY ("instrument_id") REFERENCES "instrument" ("instrument_id")
);

CREATE TABLE "portfolio" (
	"portfolio_id" INTEGER,
	"portfolio_name" VARCHAR,
	 PRIMARY KEY ("portfolio_id")
);

CREATE TABLE "trading_account" (
	"trading_account_id" INTEGER,
	"portfolio_id" INTEGER,
	"trading_account_name" VARCHAR,
	 PRIMARY KEY ("trading_account_id"),
	 CONSTRAINT "portfolio_fk" FOREIGN KEY ("portfolio_id") REFERENCES "portfolio" ("portfolio_id")
);

CREATE TABLE "position" (
	"position_id" INTEGER,
	"instrument_id" INTEGER,
	"trading_account_id" INTEGER,
	"position_date" DATE,
	"quantity" DECIMAL,
	"update_time" TIMESTAMP,
	 PRIMARY KEY ("position_id"),
	 CONSTRAINT "instrument_fk" FOREIGN KEY ("instrument_id") REFERENCES "instrument" ("instrument_id"),
	 CONSTRAINT "trading_account_fk" FOREIGN KEY ("trading_account_id") REFERENCES "trading_account" ("trading_account_id")
);

CREATE TABLE "side" (
	"side_id" SMALLINT,
	"side_code" VARCHAR,
	 PRIMARY KEY ("side_id")
);

CREATE TABLE "exchange_trade" (
	"exchange_trade_id" BIGINT,
	"exchange_id" INTEGER,
	"instrument_id" INTEGER,
	"side_id" SMALLINT,
	"trade_id" BIGINT,
	"trade_price" DECIMAL,
	"quantity" DECIMAL,
	"is_auction_fill" BOOL,
	"trade_time" TIMESTAMP,
	 PRIMARY KEY ("exchange_trade_id"),
	 CONSTRAINT "exchange_fk" FOREIGN KEY ("exchange_id") REFERENCES "exchange" ("exchange_id"),
	 CONSTRAINT "side_fk" FOREIGN KEY ("side_id") REFERENCES "side" ("side_id"),
	 CONSTRAINT "instrument_fk" FOREIGN KEY ("instrument_id") REFERENCES "instrument" ("instrument_id")
);

CREATE TABLE "order_type" (
	"order_type_id" INTEGER,
	"order_type_code" VARCHAR,
	 PRIMARY KEY ("order_type_id")
);

CREATE TABLE "time_in_force" (
	"time_in_force_id" INTEGER,
	"time_in_force_code" VARCHAR,
	 PRIMARY KEY ("time_in_force_id")
);

CREATE TABLE "exchange_order" (
	"exchange_order_id" INTEGER,
	"exchange_id" INTEGER,
	"exchange_instrument_id" INTEGER,
	"order_type_id" INTEGER,
	"exchange_account_id" INTEGER,
	"side_id" SMALLINT,
	"time_in_force_id" INTEGER,
	"exchange_order_uuid" VARCHAR,
	"price" DECIMAL,
	"quantity" DECIMAL,
	"create_time" TIMESTAMP,
	 PRIMARY KEY ("exchange_order_id"),
	 CONSTRAINT "exchange_fk" FOREIGN KEY ("exchange_id") REFERENCES "exchange" ("exchange_id"),
	 CONSTRAINT "side_fk" FOREIGN KEY ("side_id") REFERENCES "side" ("side_id"),
	 CONSTRAINT "exchange_account_fk" FOREIGN KEY ("exchange_account_id") REFERENCES "exchange_account" ("exchange_account_id"),
	 CONSTRAINT "order_type_fk" FOREIGN KEY ("order_type_id") REFERENCES "order_type" ("order_type_id"),
	 CONSTRAINT "time_in_force_fk" FOREIGN KEY ("time_in_force_id") REFERENCES "time_in_force" ("time_in_force_id"),
	 CONSTRAINT "exchange_instrument_fk" FOREIGN KEY ("exchange_instrument_id") REFERENCES "exchange_instrument" ("exchange_instrument_id")
);

CREATE TABLE "exchange_fill" (
	"exchange_fill_id" INTEGER,
	"exchange_order_id" INTEGER,
	"fill_price" DECIMAL,
	"quantity" DECIMAL,
	"fees" DECIMAL,
	"trade_id" BIGINT,
	"create_time" TIMESTAMP,
	 PRIMARY KEY ("exchange_fill_id"),
	 CONSTRAINT "exchange_order_fk" FOREIGN KEY ("exchange_order_id") REFERENCES "exchange_order" ("exchange_order_id")
);

CREATE TABLE "order" (
	"order_id" INTEGER,
	"order_type_id" INTEGER,
	"instrument_id" INTEGER,
	"side_id" SMALLINT,
	"trading_account_id" INTEGER,
	"time_in_force_id" INTEGER,
	"destination_id" INTEGER,
	"parent_order_id" INTEGER,
	"order_uuid" VARCHAR,
	"cl_ord_id" VARCHAR,
	"price" DECIMAL,
	"quantity" DECIMAL,
	"create_time" TIMESTAMP,
	 PRIMARY KEY ("order_id"),
	 CONSTRAINT "side_fk" FOREIGN KEY ("side_id") REFERENCES "side" ("side_id"),
	 CONSTRAINT "trading_account_fk" FOREIGN KEY ("trading_account_id") REFERENCES "trading_account" ("trading_account_id"),
	 CONSTRAINT "order_type_fk" FOREIGN KEY ("order_type_id") REFERENCES "order_type" ("order_type_id"),
	 CONSTRAINT "destination_fk" FOREIGN KEY ("destination_id") REFERENCES "destination" ("destination_id"),
	 CONSTRAINT "instrument_fk" FOREIGN KEY ("instrument_id") REFERENCES "instrument" ("instrument_id"),
	 CONSTRAINT "time_in_force_fk" FOREIGN KEY ("time_in_force_id") REFERENCES "time_in_force" ("time_in_force_id"),
	 CONSTRAINT "parent_order_fk" FOREIGN KEY ("parent_order_id") REFERENCES "order" ("order_id")
);

CREATE TABLE "fill" (
	"fill_id" INTEGER,
	"order_id" INTEGER,
	"exec_id" VARCHAR,
	"fill_price" DECIMAL,
	"quantity" DECIMAL,
	"create_time" TIMESTAMP,
	 PRIMARY KEY ("fill_id"),
	 CONSTRAINT "order_fk" FOREIGN KEY ("order_id") REFERENCES "order" ("order_id")
);

CREATE TABLE "position_fill" (
	"position_id" INTEGER,
	"fill_id" INTEGER,
	 CONSTRAINT "position_fk" FOREIGN KEY ("position_id") REFERENCES "position" ("position_id"),
	 CONSTRAINT "fill_fk" FOREIGN KEY ("fill_id") REFERENCES "fill" ("fill_id")
);
