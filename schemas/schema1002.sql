DROP DATABASE IF EXISTS "schema1002";
CREATE DATABASE "schema1002";
USE "schema1002";
CREATE TABLE "t_basic2" (
	"id" INT,
	"name" VARCHAR,
	"age" INT,
	"magic" INT
);

CREATE TABLE "hope" (
	"partition_id" INT,
	"id" INT,
	"int_col1" INT,
	"int_col2" INT,
	"str_col1" VARCHAR,
	"str_col2" VARCHAR,
	"str_col3" VARCHAR,
	 PRIMARY KEY ("partition_id","id")
);

CREATE TABLE "stress" (
	"id" INT,
	"i0" INT,
	"l0" BIGINT,
	"f0" FLOAT,
	"d0" DOUBLE,
	"i1" INT,
	"l1" BIGINT,
	"f1" FLOAT,
	"d1" DOUBLE,
	"i2" INT,
	"l2" BIGINT,
	"f2" FLOAT,
	"d2" DOUBLE,
	"i3" INT,
	"l3" BIGINT,
	"f3" FLOAT,
	"d3" DOUBLE,
	"i4" INT,
	"l4" BIGINT,
	"f4" FLOAT,
	"d4" DOUBLE,
	"i5" INT,
	"l5" BIGINT,
	"f5" FLOAT,
	"d5" DOUBLE,
	"i6" INT,
	"l6" BIGINT,
	"f6" FLOAT,
	"d6" DOUBLE,
	"i7" INT,
	"l7" BIGINT,
	"f7" FLOAT,
	"d7" DOUBLE,
	"i8" INT,
	"l8" BIGINT,
	"f8" FLOAT,
	"d8" DOUBLE,
	"i9" INT,
	"l9" BIGINT,
	"f9" FLOAT,
	"d9" DOUBLE,
	"i10" INT,
	"l10" BIGINT,
	"f10" FLOAT,
	"d10" DOUBLE,
	"i11" INT,
	"l11" BIGINT,
	"f11" FLOAT,
	"d11" DOUBLE,
	"i12" INT,
	"l12" BIGINT,
	"f12" FLOAT,
	"d12" DOUBLE,
	"i13" INT,
	"l13" BIGINT,
	"f13" FLOAT,
	"d13" DOUBLE,
	"i14" INT,
	"l14" BIGINT,
	"f14" FLOAT,
	"d14" DOUBLE,
	"i15" INT,
	"l15" BIGINT,
	"f15" FLOAT,
	"d15" DOUBLE,
	"i16" INT,
	"l16" BIGINT,
	"f16" FLOAT,
	"d16" DOUBLE,
	"i17" INT,
	"l17" BIGINT,
	"f17" FLOAT,
	"d17" DOUBLE,
	"i18" INT,
	"l18" BIGINT,
	"f18" FLOAT,
	"d18" DOUBLE,
	"i19" INT,
	"l19" BIGINT,
	"f19" FLOAT,
	"d19" DOUBLE,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cassandra_byte_array" (
	"id" BINARY,
	"c1" BINARY,
	"c2" BINARY,
	"c3" BINARY,
	"c4" BINARY,
	"c5" BINARY,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cassandra_string" (
	"id" VARCHAR,
	"c1" VARCHAR,
	"c2" VARCHAR,
	"c3" VARCHAR,
	"c4" VARCHAR,
	"c5" VARCHAR
);

CREATE TABLE "longintstringix" (
	"id" INT,
	"longix" BIGINT,
	"stringix" VARCHAR,
	"intix" INT,
	"stringvalue" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "autopktinyint" (
	"id" TINYINT,
	"val" TINYINT
);

CREATE TABLE "autopksmallint" (
	"id" SMALLINT,
	"val" SMALLINT
);

CREATE TABLE "autopkint" (
	"id" INT,
	"val" INT
);

CREATE TABLE "autopkmediumint" (
	"id" MEDIUMINT,
	"val" MEDIUMINT
);

CREATE TABLE "autopkbigint" (
	"id" BIGINT,
	"val" BIGINT
);

CREATE TABLE "datetimetypes" (
	"id" INT,
	"datetime_null_hash" DATETIME,
	"datetime_null_btree" DATETIME,
	"datetime_null_both" DATETIME,
	"datetime_null_none" DATETIME,
	"datetime_not_null_hash" DATETIME,
	"datetime_not_null_btree" DATETIME,
	"datetime_not_null_both" DATETIME,
	"datetime_not_null_none" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "datetypes" (
	"id" INT,
	"date_null_hash" DATE,
	"date_null_btree" DATE,
	"date_null_both" DATE,
	"date_null_none" DATE,
	"date_not_null_hash" DATE,
	"date_not_null_btree" DATE,
	"date_not_null_both" DATE,
	"date_not_null_none" DATE,
	 PRIMARY KEY ("id")
);

CREATE TABLE "timetypes" (
	"id" INT,
	"time_null_hash" TIME,
	"time_null_btree" TIME,
	"time_null_both" TIME,
	"time_null_none" TIME,
	"time_not_null_hash" TIME,
	"time_not_null_btree" TIME,
	"time_not_null_both" TIME,
	"time_not_null_none" TIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "yeartypes" (
	"id" INT,
	"year_null_hash" YEAR,
	"year_null_btree" YEAR,
	"year_null_both" YEAR,
	"year_null_none" YEAR,
	"year_not_null_hash" YEAR,
	"year_not_null_btree" YEAR,
	"year_not_null_both" YEAR,
	"year_not_null_none" YEAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "stringtype" (
	"id" INT,
	"string_null_hash" VARCHAR,
	"string_null_btree" VARCHAR,
	"string_null_both" VARCHAR,
	"string_null_none" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "timestamp2types" (
	"id" INT,
	"timestampx" TIMESTAMP,
	"timestamp0" TIMESTAMP,
	"timestamp1" TIMESTAMP,
	"timestamp2" TIMESTAMP,
	"timestamp3" TIMESTAMP,
	"timestamp4" TIMESTAMP,
	"timestamp5" TIMESTAMP,
	"timestamp6" TIMESTAMP
);

CREATE TABLE "timestamptypes" (
	"id" INT,
	"timestamp_not_null_hash" TIMESTAMP,
	"timestamp_not_null_btree" TIMESTAMP,
	"timestamp_not_null_both" TIMESTAMP,
	"timestamp_not_null_none" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "mediumunsignedtypes" (
	"id" INT,
	"medium_unsigned_null_hash" MEDIUMINT,
	"medium_unsigned_null_btree" MEDIUMINT,
	"medium_unsigned_null_both" MEDIUMINT,
	"medium_unsigned_null_none" MEDIUMINT,
	"medium_unsigned_not_null_hash" MEDIUMINT,
	"medium_unsigned_not_null_btree" MEDIUMINT,
	"medium_unsigned_not_null_both" MEDIUMINT,
	"medium_unsigned_not_null_none" MEDIUMINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "mediumintegertypes" (
	"id" INT,
	"medium_null_hash" MEDIUMINT,
	"medium_null_btree" MEDIUMINT,
	"medium_null_both" MEDIUMINT,
	"medium_null_none" MEDIUMINT,
	"medium_not_null_hash" MEDIUMINT,
	"medium_not_null_btree" MEDIUMINT,
	"medium_not_null_both" MEDIUMINT,
	"medium_not_null_none" MEDIUMINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bigintegertypes" (
	"id" INT,
	"decimal_null_hash" DECIMAL,
	"decimal_null_btree" DECIMAL,
	"decimal_null_both" DECIMAL,
	"decimal_null_none" DECIMAL,
	 PRIMARY KEY ("id")
);

CREATE TABLE "decimaltypes" (
	"id" INT,
	"decimal_null_hash" DECIMAL,
	"decimal_null_btree" DECIMAL,
	"decimal_null_both" DECIMAL,
	"decimal_null_none" DECIMAL,
	 PRIMARY KEY ("id")
);

CREATE TABLE "allprimitives" (
	"id" INT,
	"int_not_null_hash" INT,
	"int_not_null_btree" INT,
	"int_not_null_both" INT,
	"int_not_null_none" INT,
	"int_null_hash" INT,
	"int_null_btree" INT,
	"int_null_both" INT,
	"int_null_none" INT,
	"byte_not_null_hash" TINYINT,
	"byte_not_null_btree" TINYINT,
	"byte_not_null_both" TINYINT,
	"byte_not_null_none" TINYINT,
	"byte_null_hash" TINYINT,
	"byte_null_btree" TINYINT,
	"byte_null_both" TINYINT,
	"byte_null_none" TINYINT,
	"short_not_null_hash" SMALLINT,
	"short_not_null_btree" SMALLINT,
	"short_not_null_both" SMALLINT,
	"short_not_null_none" SMALLINT,
	"short_null_hash" SMALLINT,
	"short_null_btree" SMALLINT,
	"short_null_both" SMALLINT,
	"short_null_none" SMALLINT,
	"long_not_null_hash" BIGINT,
	"long_not_null_btree" BIGINT,
	"long_not_null_both" BIGINT,
	"long_not_null_none" BIGINT,
	"long_null_hash" BIGINT,
	"long_null_btree" BIGINT,
	"long_null_both" BIGINT,
	"long_null_none" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bytepk" (
	"id" TINYINT,
	"byte_null_none" TINYINT,
	"byte_null_btree" TINYINT,
	"byte_null_hash" TINYINT,
	"byte_null_both" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "shortpk" (
	"id" SMALLINT,
	"short_null_none" SMALLINT,
	"short_null_btree" SMALLINT,
	"short_null_hash" SMALLINT,
	"short_null_both" SMALLINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "nullvalues" (
	"id" INT,
	"int_not_null_default_null_value_default" INT,
	"int_not_null_default_null_value_exception" INT,
	"int_not_null_default_null_value_none" INT,
	"int_not_null_no_default_null_value_default" INT,
	"int_not_null_no_default_null_value_exception" INT,
	"int_not_null_no_default_null_value_none" INT,
	"int_null_default_null_value_default" INT,
	"int_null_default_null_value_exception" INT,
	"int_null_default_null_value_none" INT,
	"int_null_no_default_null_value_default" INT,
	"int_null_no_default_null_value_exception" INT,
	"int_null_no_default_null_value_none" INT,
	"long_not_null_default_null_value_default" BIGINT,
	"long_not_null_default_null_value_exception" BIGINT,
	"long_not_null_default_null_value_none" BIGINT,
	"long_not_null_no_default_null_value_default" BIGINT,
	"long_not_null_no_default_null_value_exception" BIGINT,
	"long_not_null_no_default_null_value_none" BIGINT,
	"long_null_default_null_value_default" BIGINT,
	"long_null_default_null_value_exception" BIGINT,
	"long_null_default_null_value_none" BIGINT,
	"long_null_no_default_null_value_default" BIGINT,
	"long_null_no_default_null_value_exception" BIGINT,
	"long_null_no_default_null_value_none" BIGINT,
	"short_not_null_default_null_value_default" SMALLINT,
	"short_not_null_default_null_value_exception" SMALLINT,
	"short_not_null_default_null_value_none" SMALLINT,
	"short_not_null_no_default_null_value_default" SMALLINT,
	"short_not_null_no_default_null_value_exception" SMALLINT,
	"short_not_null_no_default_null_value_none" SMALLINT,
	"short_null_default_null_value_default" SMALLINT,
	"short_null_default_null_value_exception" SMALLINT,
	"short_null_default_null_value_none" SMALLINT,
	"short_null_no_default_null_value_default" SMALLINT,
	"short_null_no_default_null_value_exception" SMALLINT,
	"short_null_no_default_null_value_none" SMALLINT,
	"byte_not_null_default_null_value_default" TINYINT,
	"byte_not_null_default_null_value_exception" TINYINT,
	"byte_not_null_default_null_value_none" TINYINT,
	"byte_not_null_no_default_null_value_default" TINYINT,
	"byte_not_null_no_default_null_value_exception" TINYINT,
	"byte_not_null_no_default_null_value_none" TINYINT,
	"byte_null_default_null_value_default" TINYINT,
	"byte_null_default_null_value_exception" TINYINT,
	"byte_null_default_null_value_none" TINYINT,
	"byte_null_no_default_null_value_default" TINYINT,
	"byte_null_no_default_null_value_exception" TINYINT,
	"byte_null_no_default_null_value_none" TINYINT,
	"string_not_null_default_null_value_default" VARCHAR,
	"string_not_null_default_null_value_exception" VARCHAR,
	"string_not_null_default_null_value_none" VARCHAR,
	"string_not_null_no_default_null_value_default" VARCHAR,
	"string_not_null_no_default_null_value_exception" VARCHAR,
	"string_not_null_no_default_null_value_none" VARCHAR,
	"string_null_default_null_value_default" VARCHAR,
	"string_null_default_null_value_exception" VARCHAR,
	"string_null_default_null_value_none" VARCHAR,
	"string_null_no_default_null_value_default" VARCHAR,
	"string_null_no_default_null_value_exception" VARCHAR,
	"string_null_no_default_null_value_none" VARCHAR,
	"float_not_null_default_null_value_default" FLOAT,
	"float_not_null_default_null_value_exception" FLOAT,
	"float_not_null_default_null_value_none" FLOAT,
	"float_not_null_no_default_null_value_default" FLOAT,
	"float_not_null_no_default_null_value_exception" FLOAT,
	"float_not_null_no_default_null_value_none" FLOAT,
	"float_null_default_null_value_default" FLOAT,
	"float_null_default_null_value_exception" FLOAT,
	"float_null_default_null_value_none" FLOAT,
	"float_null_no_default_null_value_default" FLOAT,
	"float_null_no_default_null_value_exception" FLOAT,
	"float_null_no_default_null_value_none" FLOAT,
	"double_not_null_default_null_value_default" DOUBLE,
	"double_not_null_default_null_value_exception" DOUBLE,
	"double_not_null_default_null_value_none" DOUBLE,
	"double_not_null_no_default_null_value_default" DOUBLE,
	"double_not_null_no_default_null_value_exception" DOUBLE,
	"double_not_null_no_default_null_value_none" DOUBLE,
	"double_null_default_null_value_default" DOUBLE,
	"double_null_default_null_value_exception" DOUBLE,
	"double_null_default_null_value_none" DOUBLE,
	"double_null_no_default_null_value_default" DOUBLE,
	"double_null_no_default_null_value_exception" DOUBLE,
	"double_null_no_default_null_value_none" DOUBLE,
	 PRIMARY KEY ("id")
);

CREATE TABLE "dn2id" (
	"eid" BIGINT,
	"object_classes" VARCHAR,
	"x_object_classes" VARCHAR,
	"a0" VARCHAR,
	"a1" VARCHAR,
	"a2" VARCHAR,
	"a3" VARCHAR,
	"a4" VARCHAR,
	"a5" VARCHAR,
	"a6" VARCHAR,
	"a7" VARCHAR,
	"a8" VARCHAR,
	"a9" VARCHAR,
	"a10" VARCHAR,
	"a11" VARCHAR,
	"a12" VARCHAR,
	"a13" VARCHAR,
	"a14" VARCHAR,
	"a15" VARCHAR,
	 PRIMARY KEY ("a0","a1","a2","a3","a4","a5","a6","a7","a8","a9","a10","a11","a12","a13","a14","a15")
);

CREATE TABLE "t_basic" (
	"id" INT,
	"name" VARCHAR,
	"age" INT,
	"magic" INT
);

CREATE TABLE "floattypes" (
	"id" INT,
	"float_null_hash" FLOAT,
	"float_null_btree" FLOAT,
	"float_null_both" FLOAT,
	"float_null_none" FLOAT,
	"float_not_null_hash" FLOAT,
	"float_not_null_btree" FLOAT,
	"float_not_null_both" FLOAT,
	"float_not_null_none" FLOAT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "stringtypes" (
	"id" INT,
	"string_null_hash" VARCHAR,
	"string_null_btree" VARCHAR,
	"string_null_both" VARCHAR,
	"string_null_none" VARCHAR,
	"string_not_null_hash" VARCHAR,
	"string_not_null_btree" VARCHAR,
	"string_not_null_both" VARCHAR,
	"string_not_null_none" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "localetypes" (
	"id" INT,
	"locale_null_hash" VARCHAR,
	"locale_null_btree" VARCHAR,
	"locale_null_both" VARCHAR,
	"locale_null_none" VARCHAR,
	"locale_not_null_hash" VARCHAR,
	"locale_not_null_btree" VARCHAR,
	"locale_not_null_both" VARCHAR,
	"locale_not_null_none" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "doubletypes" (
	"id" INT,
	"double_null_hash" DOUBLE,
	"double_null_btree" DOUBLE,
	"double_null_both" DOUBLE,
	"double_null_none" DOUBLE,
	"double_not_null_hash" DOUBLE,
	"double_not_null_btree" DOUBLE,
	"double_not_null_both" DOUBLE,
	"double_not_null_none" DOUBLE,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bytestype" (
	"id" INT,
	"bytes_null_hash" VARBINARY,
	"bytes_null_btree" VARBINARY,
	"bytes_null_both" VARBINARY,
	"bytes_null_none" VARBINARY,
	 PRIMARY KEY ("id")
);

CREATE TABLE "blobtypes" (
	"id" INT,
	"id_null_none" INT,
	"id_null_hash" INT,
	"blobbytes" BLOB,
	 PRIMARY KEY ("id")
);

CREATE TABLE "b0" (
	"id" INT,
	"cint" INT,
	"clong" BIGINT,
	"cfloat" FLOAT,
	"cdouble" DOUBLE,
	"a_id" INT,
	"cstring" VARCHAR,
	"cvarchar_ascii" VARCHAR,
	"ctext_ascii" TEXT,
	"cvarchar_ucs2" VARCHAR,
	"ctext_ucs2" TEXT,
	"bytes" VARBINARY,
	 PRIMARY KEY ("id")
);

CREATE TABLE "a" (
	"id" INT,
	"cint" INT,
	"clong" BIGINT,
	"cfloat" FLOAT,
	"cdouble" DOUBLE,
	"cstring" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "longintstringfk" (
	"longpk" BIGINT,
	"intpk" INT,
	"stringpk" VARCHAR,
	"longfk" BIGINT,
	"intfk" INT,
	"stringfk" VARCHAR,
	"stringvalue" VARCHAR,
	 PRIMARY KEY ("longpk","intpk","stringpk")
);

CREATE TABLE "longlongstringfk" (
	"longpk1" BIGINT,
	"longpk2" BIGINT,
	"stringpk" VARCHAR,
	"longfk1" BIGINT,
	"longfk2" BIGINT,
	"stringfk" VARCHAR,
	"stringvalue" VARCHAR,
	 PRIMARY KEY ("longpk1","longpk2","stringpk")
);

CREATE TABLE "hashonlylongintstringpk" (
	"longpk" BIGINT,
	"intpk" INT,
	"stringpk" VARCHAR,
	"stringvalue" VARCHAR,
	 PRIMARY KEY ("longpk","intpk","stringpk")
);

CREATE TABLE "longintstringpk" (
	"longpk" BIGINT,
	"intpk" INT,
	"stringpk" VARCHAR,
	"stringvalue" VARCHAR,
	 PRIMARY KEY ("longpk","intpk","stringpk")
);

CREATE TABLE "charsetsjis" (
	"id" INT,
	"smallcolumn" VARCHAR,
	"mediumcolumn" VARCHAR,
	"largecolumn" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "charsetswedishutf8" (
	"id" INT,
	"swedishcolumn" CHAR,
	"utfcolumn" CHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "charsetutf8" (
	"id" INT,
	"smallcolumn" VARCHAR,
	"mediumcolumn" VARCHAR,
	"largecolumn" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "charsetbig5" (
	"id" INT,
	"smallcolumn" VARCHAR,
	"mediumcolumn" VARCHAR,
	"largecolumn" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "charsetlatin1" (
	"id" INT,
	"smallcolumn" VARCHAR,
	"mediumcolumn" VARCHAR,
	"largecolumn" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "longvarbinarypk" (
	"id" VARBINARY,
	"number" INT,
	"name" VARCHAR
);

CREATE TABLE "varbinarypk" (
	"id" VARBINARY,
	"number" INT,
	"name" VARCHAR
);

CREATE TABLE "binarypk" (
	"id" BINARY,
	"number" INT,
	"name" VARCHAR
);

CREATE TABLE "varbinarytypes" (
	"id" INT,
	"binary1" VARBINARY,
	"binary2" VARBINARY,
	"binary4" VARBINARY,
	"binary8" VARBINARY,
	"binary16" VARBINARY,
	"binary32" VARBINARY,
	"binary64" VARBINARY,
	"binary128" VARBINARY,
	"binary256" VARBINARY,
	"binary512" VARBINARY,
	"binary1024" VARBINARY,
	"binary2048" VARBINARY,
	 PRIMARY KEY ("id")
);

CREATE TABLE "binarytypes" (
	"id" INT,
	"binary1" BINARY,
	"binary2" BINARY,
	"binary4" BINARY,
	"binary8" BINARY,
	"binary16" BINARY,
	"binary32" BINARY,
	"binary64" BINARY,
	"binary128" BINARY,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bittypes" (
	"id" INT,
	"bit1" BIT,
	"bit2" BIT,
	"bit4" BIT,
	"bit8" BIT,
	"bit16" BIT,
	"bit32" BIT,
	"bit64" BIT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "longlongstringpk" (
	"longpk1" BIGINT,
	"longpk2" BIGINT,
	"stringpk" VARCHAR,
	"stringvalue" VARCHAR,
	 PRIMARY KEY ("longpk1","longpk2","stringpk")
);

CREATE TABLE "subscriber" (
	"imsi" VARCHAR,
	"guti" VARCHAR,
	"mme_s1ap_id" INT,
	"enb_s1ap_id" INT,
	"mme_teid" INT,
	"sgw_teid" VARCHAR,
	"pgw_teid" VARCHAR,
	"imei" VARCHAR,
	"msisdn" VARCHAR,
	"ecm_state" CHAR,
	"emm_state" CHAR,
	"eps_cgi" VARCHAR,
	"global_enb_id" VARCHAR,
	"bearer_id" CHAR,
	"sgw_ip_addr" VARCHAR,
	 PRIMARY KEY ("imsi")
);

CREATE TABLE "hashpk" (
	"id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "twopk" (
	"id" INT,
	"name" VARCHAR
);

CREATE TABLE "conversation_summary" (
	"source_user_id" BIGINT,
	"destination_user_id" BIGINT,
	"last_message_user_id" BIGINT,
	"text_summary" VARCHAR,
	"query_history_id" BIGINT,
	"answerer_id" BIGINT,
	"viewed" BIT,
	"updated_at" BIGINT,
	 PRIMARY KEY ("source_user_id","destination_user_id","query_history_id")
);
