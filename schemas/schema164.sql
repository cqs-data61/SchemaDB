DROP DATABASE IF EXISTS "schema164";
CREATE DATABASE "schema164";
USE "schema164";
CREATE TABLE "lineitem" (
	"l_orderkey" DECIMAL,
	"l_partkey" DECIMAL,
	"l_suppkey" DECIMAL,
	"l_linenumber" DECIMAL,
	"l_quantity" DECIMAL,
	"l_extendedprice" DECIMAL,
	"l_discount" DECIMAL,
	"l_tax" DECIMAL,
	"l_returnflag" CHAR,
	"l_linestatus" CHAR,
	"l_shipdate" DATE,
	"l_commitdate" DATE,
	"l_receiptdate" DATE,
	"l_shipinstruct" CHAR,
	"l_shipmode" CHAR,
	"l_comment" VARCHAR
);

CREATE TABLE "orders" (
	"o_orderkey" DECIMAL,
	"o_custkey" DECIMAL,
	"o_orderstatus" CHAR,
	"o_totalprice" DECIMAL,
	"o_orderdate" DATE,
	"o_orderpriority" CHAR,
	"o_clerk" CHAR,
	"o_shippriority" DECIMAL,
	"o_comment" VARCHAR
);

CREATE TABLE "customer" (
	"c_custkey" DECIMAL,
	"c_name" VARCHAR,
	"c_address" VARCHAR,
	"c_nationkey" DECIMAL,
	"c_phone" CHAR,
	"c_acctbal" DECIMAL,
	"c_mktsegment" CHAR,
	"c_comment" VARCHAR
);

CREATE TABLE "partsupp" (
	"ps_partkey" DECIMAL,
	"ps_suppkey" DECIMAL,
	"ps_availqty" DECIMAL,
	"ps_supplycost" DECIMAL,
	"ps_comment" VARCHAR
);

CREATE TABLE "supplier" (
	"s_suppkey" DECIMAL,
	"s_name" CHAR,
	"s_address" VARCHAR,
	"s_nationkey" DECIMAL,
	"s_phone" CHAR,
	"s_acctbal" DECIMAL,
	"s_comment" VARCHAR
);

CREATE TABLE "part" (
	"p_partkey" DECIMAL,
	"p_name" VARCHAR,
	"p_mfgr" CHAR,
	"p_brand" CHAR,
	"p_type" VARCHAR,
	"p_size" DECIMAL,
	"p_container" CHAR,
	"p_retailprice" DECIMAL,
	"p_comment" VARCHAR
);

CREATE TABLE "nation" (
	"n_nationkey" DECIMAL,
	"n_name" CHAR,
	"n_regionkey" DECIMAL,
	"n_comment" VARCHAR
);

CREATE TABLE "region" (
	"r_regionkey" DECIMAL,
	"r_name" CHAR,
	"r_comment" VARCHAR
);
