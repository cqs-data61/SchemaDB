DROP DATABASE IF EXISTS "schema2405";
CREATE DATABASE "schema2405";
USE "schema2405";
CREATE TABLE "white_pg_reserv_ref" (
	"ref_id" INTEGER,
	"class" INTEGER,
	 PRIMARY KEY ("ref_id")
);

CREATE TABLE "white_pg_reserv" (
	"class" INTEGER,
	"case" INTEGER,
	"package" INTEGER,
	"default" INTEGER,
	"new" INTEGER,
	"native" INTEGER,
	"void" INTEGER,
	"public" INTEGER,
	"protected" INTEGER,
	"private" INTEGER,
	"interface" INTEGER,
	"abstract" INTEGER,
	"final" INTEGER,
	"finally" INTEGER,
	"return" INTEGER,
	"double" INTEGER,
	"float" INTEGER,
	"short" INTEGER,
	"type" CHAR,
	"reserv_name" VARCHAR,
	 PRIMARY KEY ("class")
);

CREATE TABLE "white_quoted_ref" (
	"where" INTEGER,
	"order" INTEGER,
	 PRIMARY KEY ("where")
);

CREATE TABLE "white_quoted" (
	"select" INTEGER,
	"from" VARCHAR,
	 PRIMARY KEY ("select")
);

CREATE TABLE "white_stiletto_alias_ref" (
	"ref_id" INTEGER,
	"foo0" VARCHAR,
	"foo_1" VARCHAR,
	"foo2" VARCHAR,
	"foo3" VARCHAR,
	"foo_4" VARCHAR,
	"bar_0" VARCHAR,
	"qux_0" VARCHAR,
	"c21" VARCHAR,
	"c22" VARCHAR,
	"c23" VARCHAR,
	"stiletto_alias_id" INTEGER,
	 PRIMARY KEY ("ref_id")
);

CREATE TABLE "white_stiletto_alias" (
	"stiletto_alias_id" INTEGER,
	"foo" VARCHAR,
	"foo_0" VARCHAR,
	"foo_1" VARCHAR,
	"foo2" VARCHAR,
	"foo_3" VARCHAR,
	"foo4" VARCHAR,
	"bar" VARCHAR,
	"qux" VARCHAR,
	 PRIMARY KEY ("stiletto_alias_id")
);

CREATE TABLE "white_db_comment" (
	"db_comment_code" CHAR,
	"db_comment_name" VARCHAR,
	 PRIMARY KEY ("db_comment_code")
);

CREATE TABLE "white_deprecated_cls_element" (
	"deprecated_cls_element_code" CHAR,
	"deprecated_cls_element_name" VARCHAR,
	 PRIMARY KEY ("deprecated_cls_element_code")
);

CREATE TABLE "white_cls_no_camelizing" (
	"no_camelizing_code" VARCHAR,
	"no_camelizing_name" VARCHAR,
	 PRIMARY KEY ("no_camelizing_code")
);

CREATE TABLE "white_line_sep_comment" (
	"line_sep_comment_code" CHAR,
	"line_sep_comment_name" VARCHAR,
	 PRIMARY KEY ("line_sep_comment_code")
);

CREATE TABLE "white_escaped_number_initial" (
	"number_initial_code" CHAR,
	"number_initial_name" VARCHAR,
	 PRIMARY KEY ("number_initial_code")
);

CREATE TABLE "white_escaped_java_doc" (
	"escaped_java_doc_code" CHAR,
	"escaped_java_doc_name" VARCHAR,
	 PRIMARY KEY ("escaped_java_doc_code")
);

CREATE TABLE "white_escaped_dfprop" (
	"escaped_dfprop_code" CHAR,
	"escaped_dfprop_name" VARCHAR,
	 PRIMARY KEY ("escaped_dfprop_code")
);

CREATE TABLE "white_perrotta_over_trace" (
	"trace_id" BIGINT,
	"previous_product_id" INTEGER,
	"next_product_id" INTEGER,
	"trace_type_code" CHAR,
	 PRIMARY KEY ("trace_id")
);

CREATE TABLE "white_perrotta_over_product_nested" (
	"product_nested_code" CHAR,
	"product_nested_name" VARCHAR,
	 PRIMARY KEY ("product_nested_code")
);

CREATE TABLE "white_perrotta_over_product" (
	"product_id" INTEGER,
	"product_name" VARCHAR,
	"product_nested_code" CHAR,
	 PRIMARY KEY ("product_id")
);

CREATE TABLE "white_perrotta_over_member_macho" (
	"macho_code" CHAR,
	"macho_name" VARCHAR,
	 PRIMARY KEY ("macho_code")
);

CREATE TABLE "white_perrotta_over_member" (
	"member_id" INTEGER,
	"member_name" VARCHAR,
	"product_id" INTEGER,
	"trace_type_code" CHAR,
	"macho_code" CHAR,
	 PRIMARY KEY ("member_id")
);

CREATE TABLE "white_large_text_file" (
	"large_text_file_id" BIGINT,
	"large_text_file_text" TEXT,
	 PRIMARY KEY ("large_text_file_id")
);

CREATE TABLE "white_date_adjustment" (
	"date_adjustment_id" BIGINT,
	"adjusted_date" DATE,
	"adjusted_datetime" DATETIME,
	"adjusted_time" TIME,
	"adjusted_integer" INTEGER,
	"adjusted_named_string_long" BIGINT,
	"adjusted_named_typed_long" BIGINT,
	"adjusted_pinpoint_string_long" BIGINT,
	"adjusted_pinpoint_typed_long" BIGINT,
	"adjusted_plain_long" BIGINT,
	"adjusted_string" VARCHAR,
	 PRIMARY KEY ("date_adjustment_id")
);

CREATE TABLE "white_suppress_def_check" (
	"def_check_id" BIGINT,
	"def_check_name" VARCHAR,
	 PRIMARY KEY ("def_check_id")
);

CREATE TABLE "white_load_data" (
	"load_data_id" BIGINT,
	"load_data_name" VARCHAR,
	 PRIMARY KEY ("load_data_id")
);

CREATE TABLE "white_xls_man" (
	"xls_man_id" BIGINT,
	"string_converted" VARCHAR,
	"timestamp_converted" DATETIME,
	 PRIMARY KEY ("xls_man_id")
);

CREATE TABLE "white_delimiter" (
	"delimiter_id" BIGINT,
	"number_nullable" INTEGER,
	"string_converted" VARCHAR,
	"string_non_converted" VARCHAR,
	"date_default" DATE,
	 PRIMARY KEY ("delimiter_id")
);

CREATE TABLE "white_geared_cipher" (
	"cipher_id" BIGINT,
	"cipher_integer" VARCHAR,
	"cipher_varchar" VARCHAR,
	"cipher_date" VARCHAR,
	"cipher_datetime" VARCHAR,
	 PRIMARY KEY ("cipher_id")
);

CREATE TABLE "white_include_query" (
	"include_query_id" BIGINT,
	"include_query_varchar" VARCHAR,
	"include_query_integer" INTEGER,
	"include_query_date" DATE,
	"include_query_datetime" DATETIME,
	 PRIMARY KEY ("include_query_id")
);

CREATE TABLE "white_point_type_mapping" (
	"point_type_mapping_id" NUMERIC,
	"point_type_mapping_member_name" VARCHAR,
	"point_type_mapping_price_count" INTEGER,
	"point_type_mapping_sale_date" BIGINT,
	"point_type_mapping_wanted_datetime" DATETIME,
	 PRIMARY KEY ("point_type_mapping_id")
);

CREATE TABLE "white_table_except_gen_ref" (
	"gen_ref_id" NUMERIC,
	"gen_ref_name" VARCHAR,
	"gen_only_id" NUMERIC,
	 PRIMARY KEY ("gen_ref_id")
);

CREATE TABLE "white_table_except_gen_only" (
	"gen_only_id" NUMERIC,
	"gen_only_name" VARCHAR,
	"gen_head_id" NUMERIC,
	"nometa_id" NUMERIC,
	 PRIMARY KEY ("gen_only_id")
);

CREATE TABLE "white_table_except_gen_head" (
	"gen_head_id" NUMERIC,
	"gen_head_name" VARCHAR,
	"nometa_id" NUMERIC,
	 PRIMARY KEY ("gen_head_id")
);

CREATE TABLE "white_table_except_nometa" (
	"nometa_id" NUMERIC,
	"nometa_name" VARCHAR,
	 PRIMARY KEY ("nometa_id")
);

CREATE TABLE "white_suppress_join_sq_one_addi" (
	"one_addi_id" INTEGER,
	"one_addi_name" VARCHAR,
	 PRIMARY KEY ("one_addi_id")
);

CREATE TABLE "white_suppress_join_sq_one" (
	"one_id" INTEGER,
	"one_name" VARCHAR,
	"suppress_join_sq_id" INTEGER,
	"one_addi_id" INTEGER,
	 PRIMARY KEY ("one_id")
);

CREATE TABLE "white_suppress_join_sq_many_one_one" (
	"many_one_one_id" INTEGER,
	"many_one_one_name" VARCHAR,
	 PRIMARY KEY ("many_one_one_id")
);

CREATE TABLE "white_suppress_join_sq_many_one" (
	"many_one_id" INTEGER,
	"many_one_name" VARCHAR,
	"many_one_one_id" INTEGER,
	 PRIMARY KEY ("many_one_id")
);

CREATE TABLE "white_suppress_join_sq_many" (
	"many_id" INTEGER,
	"many_name" VARCHAR,
	"suppress_join_sq_id" INTEGER,
	"many_one_id" INTEGER,
	 PRIMARY KEY ("many_id")
);

CREATE TABLE "white_suppress_join_sq" (
	"suppress_join_sq_id" INTEGER,
	"suppress_join_sq_name" VARCHAR,
	 PRIMARY KEY ("suppress_join_sq_id")
);

CREATE TABLE "white_implicit_conv_string" (
	"implicit_conv_string_id" VARCHAR,
	"implicit_conv_integer_id" VARCHAR,
	"implicit_conv_numeric_id" VARCHAR,
	"implicit_conv_name" VARCHAR,
	 PRIMARY KEY ("implicit_conv_string_id")
);

CREATE TABLE "white_implicit_conv_numeric" (
	"implicit_conv_numeric_id" NUMERIC,
	"implicit_conv_integer_id" NUMERIC,
	"implicit_conv_string_id" NUMERIC,
	"implicit_conv_name" VARCHAR,
	 PRIMARY KEY ("implicit_conv_numeric_id")
);

CREATE TABLE "white_implicit_conv_integer" (
	"implicit_conv_integer_id" INTEGER,
	"implicit_conv_numeric_id" INTEGER,
	"implicit_conv_string_id" INTEGER,
	"implicit_conv_name" VARCHAR,
	 PRIMARY KEY ("implicit_conv_integer_id")
);

CREATE TABLE "white_grouping_reference" (
	"grouping_reference_id" BIGINT,
	"grouping_reference_code" CHAR,
	 PRIMARY KEY ("grouping_reference_id")
);

CREATE TABLE "white_binary" (
	"binary_id" BIGINT,
	"binary_data" BINARY,
	"blob_data" BLOB,
	 PRIMARY KEY ("binary_id")
);

CREATE TABLE "white_self_reference_ref_one" (
	"self_reference_id" NUMERIC,
	"self_reference_ref_one_name" VARCHAR,
	 PRIMARY KEY ("self_reference_id")
);

CREATE TABLE "white_self_reference" (
	"self_reference_id" NUMERIC,
	"self_reference_name" VARCHAR,
	"parent_id" NUMERIC,
	 PRIMARY KEY ("self_reference_id")
);

CREATE TABLE "white_myself_check" (
	"myself_check_id" INTEGER,
	"myself_check_name" VARCHAR,
	"myself_id" INTEGER,
	 PRIMARY KEY ("myself_check_id")
);

CREATE TABLE "white_myself" (
	"myself_id" INTEGER,
	"myself_name" VARCHAR,
	 PRIMARY KEY ("myself_id")
);

CREATE TABLE "white_column_except_gen_only" (
	"gen_only_id" NUMERIC,
	"gen_only_name" VARCHAR,
	"this_is_gen_only" VARCHAR,
	 PRIMARY KEY ("gen_only_id")
);

CREATE TABLE "white_column_except" (
	"except_column_id" NUMERIC,
	"column_except_test" INTEGER,
	 PRIMARY KEY ("except_column_id")
);

CREATE TABLE "white_all_in_one_cls_normal_col_ref" (
	"cls_ref_id" INTEGER,
	"foo_code" CHAR,
	"bar_code" CHAR,
	"qux_code" CHAR,
	 PRIMARY KEY ("foo_code","bar_code","qux_code")
);

CREATE TABLE "white_all_in_one_cls_compound_pk_ref" (
	"foo_code" CHAR,
	"bar_code" CHAR,
	"qux_code" CHAR,
	 PRIMARY KEY ("foo_code","bar_code","qux_code")
);

CREATE TABLE "white_all_in_one_cls_element" (
	"cls_category_code" CHAR,
	"cls_element_code" CHAR,
	"cls_element_name" VARCHAR,
	"attribute_exp" TEXT,
	 PRIMARY KEY ("cls_category_code","cls_element_code")
);

CREATE TABLE "white_all_in_one_cls_category" (
	"cls_category_code" CHAR,
	"cls_category_name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("cls_category_code")
);

CREATE TABLE "white_variant_relation_local_pk_referrer" (
	"reversefk_suppressed_id" BIGINT,
	"master_type_code" CHAR,
	 PRIMARY KEY ("reversefk_suppressed_id")
);

CREATE TABLE "white_variant_relation_referrer_ref" (
	"ref_id" BIGINT,
	"referrer_id" BIGINT,
	 PRIMARY KEY ("ref_id")
);

CREATE TABLE "white_variant_relation_referrer" (
	"referrer_id" BIGINT,
	"variant_master_id" BIGINT,
	"master_type_code" CHAR,
	 PRIMARY KEY ("referrer_id")
);

CREATE TABLE "white_variant_relation_master_corge" (
	"master_corge_id" BIGINT,
	"master_corge_name" VARCHAR,
	"corge_type_code" CHAR,
	 PRIMARY KEY ("master_corge_id")
);

CREATE TABLE "white_variant_relation_master_qux" (
	"master_qux_id" BIGINT,
	"master_qux_name" VARCHAR,
	"qux_type_code" CHAR,
	 PRIMARY KEY ("master_qux_id")
);

CREATE TABLE "white_variant_relation_master_bar" (
	"master_bar_id" BIGINT,
	"master_bar_name" VARCHAR,
	 PRIMARY KEY ("master_bar_id")
);

CREATE TABLE "white_variant_relation_master_foo" (
	"master_foo_id" BIGINT,
	"master_foo_name" VARCHAR,
	 PRIMARY KEY ("master_foo_id")
);

CREATE TABLE "white_no_pk_common_column" (
	"no_pk_id" NUMERIC,
	"no_pk_name" VARCHAR,
	"no_pk_integer" INTEGER,
	"register_datetime" DATETIME,
	"register_user" VARCHAR,
	"update_datetime" DATETIME,
	"update_user" VARCHAR
);

CREATE TABLE "white_no_pk" (
	"no_pk_id" NUMERIC,
	"no_pk_name" VARCHAR,
	"no_pk_integer" INTEGER
);

CREATE TABLE "white_uq_classification_flg_part" (
	"uq_cls_id" NUMERIC,
	"uq_cls_name" VARCHAR,
	"uq_cls_flg" INTEGER,
	 PRIMARY KEY ("uq_cls_id")
);

CREATE TABLE "white_uq_classification_flg_bit" (
	"uq_cls_id" NUMERIC,
	"uq_cls_name" VARCHAR,
	"uq_cls_bit_flg" BIT,
	 PRIMARY KEY ("uq_cls_id")
);

CREATE TABLE "white_uq_classification_flg" (
	"uq_cls_id" NUMERIC,
	"uq_cls_flg" INTEGER,
	 PRIMARY KEY ("uq_cls_id")
);

CREATE TABLE "white_uq_classification" (
	"uq_cls_id" NUMERIC,
	"uq_cls_code" CHAR,
	 PRIMARY KEY ("uq_cls_id")
);

CREATE TABLE "white_uq_fk_without_pk_ref" (
	"uq_fk_ref_id" NUMERIC,
	"fk_to_uq_code" CHAR
);

CREATE TABLE "white_uq_fk_without_pk" (
	"uq_fk_code" CHAR,
	"uq_fk_name" VARCHAR
);

CREATE TABLE "white_uq_fk_ref_nest" (
	"uq_fk_ref_nest_id" NUMERIC,
	"compound_uq_first_code" CHAR,
	"compound_uq_second_code" CHAR,
	 PRIMARY KEY ("uq_fk_ref_nest_id")
);

CREATE TABLE "white_uq_fk_ref" (
	"uq_fk_ref_id" NUMERIC,
	"fk_to_pk_id" NUMERIC,
	"fk_to_uq_code" CHAR,
	"compound_uq_first_code" CHAR,
	"compound_uq_second_code" CHAR,
	 PRIMARY KEY ("uq_fk_ref_id")
);

CREATE TABLE "white_uq_fk" (
	"uq_fk_id" NUMERIC,
	"uq_fk_code" CHAR,
	 PRIMARY KEY ("uq_fk_id")
);

CREATE TABLE "white_compound_pk_wrong_order" (
	"first_id" INTEGER,
	"second_id" INTEGER,
	"third_id" INTEGER,
	"wrong_name" VARCHAR,
	 PRIMARY KEY ("second_id","third_id","first_id")
);

CREATE TABLE "white_compound_pk_ref_many" (
	"multiple_first_id" INTEGER,
	"multiple_second_id" INTEGER,
	"ref_many_first_id" INTEGER,
	"ref_many_second_id" INTEGER,
	"ref_many_code" CHAR,
	"ref_many_name" VARCHAR,
	"ref_many_datetime" DATETIME,
	 PRIMARY KEY ("multiple_first_id","multiple_second_id")
);

CREATE TABLE "white_compound_pk_ref_nest" (
	"compound_pk_ref_nest_id" INTEGER,
	"foo_multiple_id" INTEGER,
	"bar_multiple_id" INTEGER,
	"qux_multiple_id" INTEGER,
	"nest_name" VARCHAR,
	 PRIMARY KEY ("compound_pk_ref_nest_id")
);

CREATE TABLE "white_compound_pk_ref" (
	"multiple_first_id" INTEGER,
	"multiple_second_id" INTEGER,
	"ref_first_id" INTEGER,
	"ref_second_id" INTEGER,
	"ref_name" VARCHAR,
	 PRIMARY KEY ("multiple_first_id","multiple_second_id")
);

CREATE TABLE "white_compound_pk" (
	"pk_first_id" INTEGER,
	"pk_second_id" INTEGER,
	"compound_pk_name" VARCHAR,
	"referred_id" INTEGER,
	 PRIMARY KEY ("pk_first_id","pk_second_id")
);

CREATE TABLE "white_compound_referred_primary" (
	"referred_id" INTEGER,
	"referred_name" VARCHAR,
	 PRIMARY KEY ("referred_id")
);

CREATE TABLE "white_compound_referred_normally" (
	"referred_id" INTEGER,
	"referred_name" VARCHAR,
	 PRIMARY KEY ("referred_id")
);

CREATE TABLE "white_implicit_reverse_fk_suppress" (
	"white_implicit_reverse_fk_suppress_id" INTEGER,
	"white_implicit_reverse_fk_id" INTEGER,
	"valid_begin_date" DATE,
	"valid_end_date" DATE,
	 PRIMARY KEY ("white_implicit_reverse_fk_suppress_id")
);

CREATE TABLE "white_implicit_reverse_fk_ref" (
	"white_implicit_reverse_fk_ref_id" INTEGER,
	"white_implicit_reverse_fk_id" INTEGER,
	"valid_begin_date" DATE,
	"valid_end_date" DATE,
	 PRIMARY KEY ("white_implicit_reverse_fk_ref_id")
);

CREATE TABLE "white_implicit_reverse_fk" (
	"white_implicit_reverse_fk_id" INTEGER,
	"white_implicit_reverse_fk_name" VARCHAR,
	 PRIMARY KEY ("white_implicit_reverse_fk_id")
);

CREATE TABLE "white_split_multiple_fk_child" (
	"child_id" BIGINT,
	"base_id" BIGINT,
	"child_name" VARCHAR,
	 PRIMARY KEY ("child_id")
);

CREATE TABLE "white_split_multiple_fk_ref" (
	"first_id" INTEGER,
	"second_code" CHAR,
	"ref_name" VARCHAR,
	 PRIMARY KEY ("first_id","second_code")
);

CREATE TABLE "white_split_multiple_fk_next" (
	"next_id" BIGINT,
	"second_code" CHAR,
	 PRIMARY KEY ("next_id")
);

CREATE TABLE "white_split_multiple_fk_base" (
	"base_id" BIGINT,
	"first_id" INTEGER,
	"next_id" BIGINT,
	"split_name" VARCHAR,
	 PRIMARY KEY ("base_id")
);

CREATE TABLE "white_purchase_referrer" (
	"purchase_referrer_id" BIGINT,
	"purchase_referrer_name" VARCHAR,
	 PRIMARY KEY ("purchase_referrer_id")
);

CREATE TABLE "white_non_unique_many_to_one_to" (
	"to_id" BIGINT,
	"to_name" VARCHAR,
	"non_unique_code" CHAR,
	"begin_date" DATE,
	"end_date" DATE,
	 PRIMARY KEY ("to_id")
);

CREATE TABLE "white_non_unique_many_to_one_from" (
	"from_id" BIGINT,
	"from_name" VARCHAR,
	"non_unique_code" CHAR,
	"begin_date" DATE,
	"end_date" DATE,
	"many_point" INTEGER,
	 PRIMARY KEY ("from_id")
);

CREATE TABLE "white_only_one_to_one_to" (
	"to_id" BIGINT,
	"to_name" VARCHAR,
	"from_id" BIGINT,
	 PRIMARY KEY ("to_id")
);

CREATE TABLE "white_only_one_to_one_from" (
	"from_id" BIGINT,
	"from_name" VARCHAR,
	 PRIMARY KEY ("from_id")
);
