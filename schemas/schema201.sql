DROP DATABASE IF EXISTS "schema201";
CREATE DATABASE "schema201";
USE "schema201";
CREATE TABLE "runtime_stats" (
	"rs_id" BIGINT,
	"create_time" BIGINT,
	"weight" BIGINT,
	"payload" BLOB,
	 PRIMARY KEY ("rs_id")
);

CREATE TABLE "repl_txn_map" (
	"rtm_repl_policy" VARCHAR,
	"rtm_src_txn_id" BIGINT,
	"rtm_target_txn_id" BIGINT,
	 PRIMARY KEY ("rtm_repl_policy","rtm_src_txn_id")
);

CREATE TABLE "materialization_rebuild_locks" (
	"mrl_txn_id" BIGINT,
	"mrl_db_name" VARCHAR,
	"mrl_tbl_name" VARCHAR,
	"mrl_last_heartbeat" BIGINT,
	 PRIMARY KEY ("mrl_txn_id")
);

CREATE TABLE "min_history_level" (
	"mhl_txnid" BIGINT,
	"mhl_min_open_txnid" BIGINT,
	 PRIMARY KEY ("mhl_txnid")
);

CREATE TABLE "next_write_id" (
	"nwi_database" VARCHAR,
	"nwi_table" VARCHAR,
	"nwi_next" BIGINT
);

CREATE TABLE "txn_to_write_id" (
	"t2w_txnid" BIGINT,
	"t2w_database" VARCHAR,
	"t2w_table" VARCHAR,
	"t2w_writeid" BIGINT
);

CREATE TABLE "write_set" (
	"ws_database" VARCHAR,
	"ws_table" VARCHAR,
	"ws_partition" VARCHAR,
	"ws_txnid" BIGINT,
	"ws_commit_id" BIGINT,
	"ws_operation_type" CHAR
);

CREATE TABLE "aux_table" (
	"mt_key1" VARCHAR,
	"mt_key2" BIGINT,
	"mt_comment" VARCHAR,
	 PRIMARY KEY ("mt_key1","mt_key2")
);

CREATE TABLE "next_compaction_queue_id" (
	"ncq_next" BIGINT
);

CREATE TABLE "completed_compactions" (
	"cc_id" BIGINT,
	"cc_database" VARCHAR,
	"cc_table" VARCHAR,
	"cc_partition" VARCHAR,
	"cc_state" CHAR,
	"cc_type" CHAR,
	"cc_tblproperties" VARCHAR,
	"cc_worker_id" VARCHAR,
	"cc_start" BIGINT,
	"cc_end" BIGINT,
	"cc_run_as" VARCHAR,
	"cc_highest_write_id" BIGINT,
	"cc_meta_info" VARBINARY,
	"cc_hadoop_job_id" VARCHAR,
	 PRIMARY KEY ("cc_id")
);

CREATE TABLE "compaction_queue" (
	"cq_id" BIGINT,
	"cq_database" VARCHAR,
	"cq_table" VARCHAR,
	"cq_partition" VARCHAR,
	"cq_state" CHAR,
	"cq_type" CHAR,
	"cq_tblproperties" VARCHAR,
	"cq_worker_id" VARCHAR,
	"cq_start" BIGINT,
	"cq_run_as" VARCHAR,
	"cq_highest_write_id" BIGINT,
	"cq_meta_info" VARBINARY,
	"cq_hadoop_job_id" VARCHAR,
	 PRIMARY KEY ("cq_id")
);

CREATE TABLE "next_lock_id" (
	"nl_next" BIGINT
);

CREATE TABLE "hive_locks" (
	"hl_lock_ext_id" BIGINT,
	"hl_lock_int_id" BIGINT,
	"hl_txnid" BIGINT,
	"hl_db" VARCHAR,
	"hl_table" VARCHAR,
	"hl_partition" VARCHAR,
	"hl_lock_state" CHAR,
	"hl_lock_type" CHAR,
	"hl_last_heartbeat" BIGINT,
	"hl_acquired_at" BIGINT,
	"hl_user" VARCHAR,
	"hl_host" VARCHAR,
	"hl_heartbeat_count" INT,
	"hl_agent_info" VARCHAR,
	"hl_blockedby_ext_id" BIGINT,
	"hl_blockedby_int_id" BIGINT,
	 PRIMARY KEY ("hl_lock_ext_id","hl_lock_int_id")
);

CREATE TABLE "next_txn_id" (
	"ntxn_next" BIGINT
);

CREATE TABLE "completed_txn_components" (
	"ctc_txnid" BIGINT,
	"ctc_database" VARCHAR,
	"ctc_table" VARCHAR,
	"ctc_partition" VARCHAR,
	"ctc_timestamp" TIMESTAMP,
	"ctc_writeid" BIGINT,
	"ctc_update_delete" CHAR
);

CREATE TABLE "txns" (
	"txn_id" BIGINT,
	"txn_state" CHAR,
	"txn_started" BIGINT,
	"txn_last_heartbeat" BIGINT,
	"txn_user" VARCHAR,
	"txn_host" VARCHAR,
	"txn_agent_info" VARCHAR,
	"txn_meta_info" VARCHAR,
	"txn_heartbeat_count" INT,
	"txn_type" INT,
	 PRIMARY KEY ("txn_id")
);

CREATE TABLE "txn_components" (
	"tc_txnid" BIGINT,
	"tc_database" VARCHAR,
	"tc_table" VARCHAR,
	"tc_partition" VARCHAR,
	"tc_operation_type" CHAR,
	"tc_writeid" BIGINT,
	 CONSTRAINT "fkeycon_txn_components_to_txns" FOREIGN KEY ("tc_txnid") REFERENCES "txns" ("txn_id")
);

CREATE TABLE "wm_resourceplan" (
	"rp_id" BIGINT,
	"name" VARCHAR,
	"query_parallelism" INT,
	"status" VARCHAR,
	"default_pool_id" BIGINT,
	 PRIMARY KEY ("rp_id")
);

CREATE TABLE "wm_trigger" (
	"trigger_id" BIGINT,
	"rp_id" BIGINT,
	"name" VARCHAR,
	"trigger_expression" VARCHAR,
	"action_expression" VARCHAR,
	"is_in_unmanaged" BIT,
	 PRIMARY KEY ("trigger_id"),
	 CONSTRAINT "WM_TRIGGER_FK1" FOREIGN KEY ("rp_id") REFERENCES "wm_resourceplan" ("rp_id")
);

CREATE TABLE "wm_pool" (
	"pool_id" BIGINT,
	"rp_id" BIGINT,
	"path" VARCHAR,
	"alloc_fraction" DOUBLE,
	"query_parallelism" INT,
	"scheduling_policy" VARCHAR,
	 PRIMARY KEY ("pool_id"),
	 CONSTRAINT "WM_POOL_FK1" FOREIGN KEY ("rp_id") REFERENCES "wm_resourceplan" ("rp_id")
);

CREATE TABLE "wm_mapping" (
	"mapping_id" BIGINT,
	"rp_id" BIGINT,
	"entity_type" VARCHAR,
	"entity_name" VARCHAR,
	"pool_id" BIGINT,
	"ordering" INT,
	 PRIMARY KEY ("mapping_id"),
	 CONSTRAINT "WM_MAPPING_FK1" FOREIGN KEY ("rp_id") REFERENCES "wm_resourceplan" ("rp_id"),
	 CONSTRAINT "WM_MAPPING_FK2" FOREIGN KEY ("pool_id") REFERENCES "wm_pool" ("pool_id")
);

CREATE TABLE "wm_pool_to_trigger" (
	"pool_id" BIGINT,
	"trigger_id" BIGINT,
	 PRIMARY KEY ("pool_id","trigger_id"),
	 CONSTRAINT "WM_POOL_TO_TRIGGER_FK2" FOREIGN KEY ("trigger_id") REFERENCES "wm_trigger" ("trigger_id"),
	 CONSTRAINT "WM_POOL_TO_TRIGGER_FK1" FOREIGN KEY ("pool_id") REFERENCES "wm_pool" ("pool_id")
);

CREATE TABLE "metastore_db_properties" (
	"property_key" VARCHAR,
	"property_value" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("property_key")
);

CREATE TABLE "key_constraints" (
	"child_cd_id" BIGINT,
	"child_integer_idx" INT,
	"child_tbl_id" BIGINT,
	"parent_cd_id" BIGINT,
	"parent_integer_idx" INT,
	"parent_tbl_id" BIGINT,
	"position" BIGINT,
	"constraint_name" VARCHAR,
	"constraint_type" SMALLINT,
	"update_rule" SMALLINT,
	"delete_rule" SMALLINT,
	"enable_validate_rely" SMALLINT,
	"default_value" VARCHAR,
	 PRIMARY KEY ("constraint_name","position")
);

CREATE TABLE "notification_sequence" (
	"nni_id" BIGINT,
	"next_event_id" BIGINT,
	 PRIMARY KEY ("nni_id")
);

CREATE TABLE "notification_log" (
	"nl_id" BIGINT,
	"event_id" BIGINT,
	"event_time" INT,
	"event_type" VARCHAR,
	"cat_name" VARCHAR,
	"db_name" VARCHAR,
	"tbl_name" VARCHAR,
	"message" LONGTEXT,
	"message_format" VARCHAR,
	 PRIMARY KEY ("nl_id")
);

CREATE TABLE "version" (
	"ver_id" BIGINT,
	"schema_version" VARCHAR,
	"version_comment" VARCHAR,
	 PRIMARY KEY ("ver_id")
);

CREATE TABLE "delegation_tokens" (
	"token_ident" VARCHAR,
	"token" VARCHAR,
	 PRIMARY KEY ("token_ident")
);

CREATE TABLE "master_keys" (
	"key_id" INTEGER,
	"master_key" VARCHAR,
	 PRIMARY KEY ("key_id")
);

CREATE TABLE "types" (
	"types_id" BIGINT,
	"type_name" VARCHAR,
	"type1" VARCHAR,
	"type2" VARCHAR,
	 PRIMARY KEY ("types_id")
);

CREATE TABLE "type_fields" (
	"type_name" BIGINT,
	"comment" VARCHAR,
	"field_name" VARCHAR,
	"field_type" VARCHAR,
	"integer_idx" INT,
	 PRIMARY KEY ("type_name","field_name"),
	 CONSTRAINT "TYPE_FIELDS_FK1" FOREIGN KEY ("type_name") REFERENCES "types" ("types_id")
);

CREATE TABLE "mv_creation_metadata" (
	"mv_creation_metadata_id" BIGINT,
	"cat_name" VARCHAR,
	"db_name" VARCHAR,
	"tbl_name" VARCHAR,
	"txn_list" TEXT,
	"materialization_time" BIGINT,
	 PRIMARY KEY ("mv_creation_metadata_id")
);

CREATE TABLE "table_params" (
	"tbl_id" BIGINT,
	"param_key" VARCHAR,
	"param_value" MEDIUMTEXT,
	 PRIMARY KEY ("tbl_id","param_key")
);

CREATE TABLE "skewed_string_list" (
	"string_list_id" BIGINT,
	 PRIMARY KEY ("string_list_id")
);

CREATE TABLE "skewed_string_list_values" (
	"string_list_id" BIGINT,
	"string_list_value" VARCHAR,
	"integer_idx" INT,
	 PRIMARY KEY ("string_list_id","integer_idx"),
	 CONSTRAINT "SKEWED_STRING_LIST_VALUES_FK1" FOREIGN KEY ("string_list_id") REFERENCES "skewed_string_list" ("string_list_id")
);

CREATE TABLE "serdes" (
	"serde_id" BIGINT,
	"name" VARCHAR,
	"slib" VARCHAR,
	"description" VARCHAR,
	"serializer_class" VARCHAR,
	"deserializer_class" VARCHAR,
	"serde_type" INTEGER,
	 PRIMARY KEY ("serde_id")
);

CREATE TABLE "serde_params" (
	"serde_id" BIGINT,
	"param_key" VARCHAR,
	"param_value" MEDIUMTEXT,
	 PRIMARY KEY ("serde_id","param_key"),
	 CONSTRAINT "SERDE_PARAMS_FK1" FOREIGN KEY ("serde_id") REFERENCES "serdes" ("serde_id")
);

CREATE TABLE "sequence_table" (
	"sequence_name" VARCHAR,
	"next_val" BIGINT,
	 PRIMARY KEY ("sequence_name")
);

CREATE TABLE "roles" (
	"role_id" BIGINT,
	"create_time" INT,
	"owner_name" VARCHAR,
	"role_name" VARCHAR,
	 PRIMARY KEY ("role_id")
);

CREATE TABLE "role_map" (
	"role_grant_id" BIGINT,
	"add_time" INT,
	"grant_option" SMALLINT,
	"grantor" VARCHAR,
	"grantor_type" VARCHAR,
	"principal_name" VARCHAR,
	"principal_type" VARCHAR,
	"role_id" BIGINT,
	 PRIMARY KEY ("role_grant_id"),
	 CONSTRAINT "ROLE_MAP_FK1" FOREIGN KEY ("role_id") REFERENCES "roles" ("role_id")
);

CREATE TABLE "partition_keys" (
	"tbl_id" BIGINT,
	"pkey_comment" VARCHAR,
	"pkey_name" VARCHAR,
	"pkey_type" VARCHAR,
	"integer_idx" INT,
	 PRIMARY KEY ("tbl_id","pkey_name")
);

CREATE TABLE "partition_events" (
	"part_name_id" BIGINT,
	"cat_name" VARCHAR,
	"db_name" VARCHAR,
	"event_time" BIGINT,
	"event_type" INT,
	"partition_name" VARCHAR,
	"tbl_name" VARCHAR,
	 PRIMARY KEY ("part_name_id")
);

CREATE TABLE "partitions" (
	"part_id" BIGINT,
	"create_time" INT,
	"last_access_time" INT,
	"part_name" VARCHAR,
	"sd_id" BIGINT,
	"tbl_id" BIGINT,
	 PRIMARY KEY ("part_id")
);

CREATE TABLE "part_col_stats" (
	"cs_id" BIGINT,
	"cat_name" VARCHAR,
	"db_name" VARCHAR,
	"table_name" VARCHAR,
	"partition_name" VARCHAR,
	"column_name" VARCHAR,
	"column_type" VARCHAR,
	"part_id" BIGINT,
	"long_low_value" BIGINT,
	"long_high_value" BIGINT,
	"double_high_value" DOUBLE,
	"double_low_value" DOUBLE,
	"big_decimal_low_value" VARCHAR,
	"big_decimal_high_value" VARCHAR,
	"num_nulls" BIGINT,
	"num_distincts" BIGINT,
	"bit_vector" BLOB,
	"avg_col_len" DOUBLE,
	"max_col_len" BIGINT,
	"num_trues" BIGINT,
	"num_falses" BIGINT,
	"last_analyzed" BIGINT,
	 PRIMARY KEY ("cs_id"),
	 CONSTRAINT "PART_COL_STATS_FK" FOREIGN KEY ("part_id") REFERENCES "partitions" ("part_id")
);

CREATE TABLE "part_privs" (
	"part_grant_id" BIGINT,
	"create_time" INT,
	"grant_option" SMALLINT,
	"grantor" VARCHAR,
	"grantor_type" VARCHAR,
	"part_id" BIGINT,
	"principal_name" VARCHAR,
	"principal_type" VARCHAR,
	"part_priv" VARCHAR,
	"authorizer" VARCHAR,
	 PRIMARY KEY ("part_grant_id"),
	 CONSTRAINT "PART_PRIVS_FK1" FOREIGN KEY ("part_id") REFERENCES "partitions" ("part_id")
);

CREATE TABLE "part_col_privs" (
	"part_column_grant_id" BIGINT,
	"column_name" VARCHAR,
	"create_time" INT,
	"grant_option" SMALLINT,
	"grantor" VARCHAR,
	"grantor_type" VARCHAR,
	"part_id" BIGINT,
	"principal_name" VARCHAR,
	"principal_type" VARCHAR,
	"part_col_priv" VARCHAR,
	"authorizer" VARCHAR,
	 PRIMARY KEY ("part_column_grant_id"),
	 CONSTRAINT "PART_COL_PRIVS_FK1" FOREIGN KEY ("part_id") REFERENCES "partitions" ("part_id")
);

CREATE TABLE "partition_params" (
	"part_id" BIGINT,
	"param_key" VARCHAR,
	"param_value" VARCHAR,
	 PRIMARY KEY ("part_id","param_key"),
	 CONSTRAINT "PARTITION_PARAMS_FK1" FOREIGN KEY ("part_id") REFERENCES "partitions" ("part_id")
);

CREATE TABLE "partition_key_vals" (
	"part_id" BIGINT,
	"part_key_val" VARCHAR,
	"integer_idx" INT,
	 PRIMARY KEY ("part_id","integer_idx"),
	 CONSTRAINT "PARTITION_KEY_VALS_FK1" FOREIGN KEY ("part_id") REFERENCES "partitions" ("part_id")
);

CREATE TABLE "nucleus_tables" (
	"class_name" VARCHAR,
	"table_name" VARCHAR,
	"type" VARCHAR,
	"owner" VARCHAR,
	"version" VARCHAR,
	"interface_name" VARCHAR,
	 PRIMARY KEY ("class_name")
);

CREATE TABLE "idxs" (
	"index_id" BIGINT,
	"create_time" INT,
	"deferred_rebuild" BIT,
	"index_handler_class" VARCHAR,
	"index_name" VARCHAR,
	"index_tbl_id" BIGINT,
	"last_access_time" INT,
	"orig_tbl_id" BIGINT,
	"sd_id" BIGINT,
	 PRIMARY KEY ("index_id")
);

CREATE TABLE "index_params" (
	"index_id" BIGINT,
	"param_key" VARCHAR,
	"param_value" VARCHAR,
	 PRIMARY KEY ("index_id","param_key"),
	 CONSTRAINT "INDEX_PARAMS_FK1" FOREIGN KEY ("index_id") REFERENCES "idxs" ("index_id")
);

CREATE TABLE "global_privs" (
	"user_grant_id" BIGINT,
	"create_time" INT,
	"grant_option" SMALLINT,
	"grantor" VARCHAR,
	"grantor_type" VARCHAR,
	"principal_name" VARCHAR,
	"principal_type" VARCHAR,
	"user_priv" VARCHAR,
	"authorizer" VARCHAR,
	 PRIMARY KEY ("user_grant_id")
);

CREATE TABLE "ctlgs" (
	"ctlg_id" BIGINT,
	"name" VARCHAR,
	"desc" VARCHAR,
	"location_uri" VARCHAR,
	 PRIMARY KEY ("ctlg_id")
);

CREATE TABLE "dbs" (
	"db_id" BIGINT,
	"desc" VARCHAR,
	"db_location_uri" VARCHAR,
	"name" VARCHAR,
	"owner_name" VARCHAR,
	"owner_type" VARCHAR,
	"ctlg_name" VARCHAR,
	 PRIMARY KEY ("db_id"),
	 CONSTRAINT "CTLG_FK1" FOREIGN KEY ("ctlg_name") REFERENCES "ctlgs" ("name")
);

CREATE TABLE "i_schema" (
	"schema_id" BIGINT,
	"schema_type" INTEGER,
	"name" VARCHAR,
	"db_id" BIGINT,
	"compatibility" INTEGER,
	"validation_level" INTEGER,
	"can_evolve" BIT,
	"schema_group" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("schema_id"),
	 CONSTRAINT "fkeycon_i_schema_to_dbs" FOREIGN KEY ("db_id") REFERENCES "dbs" ("db_id")
);

CREATE TABLE "funcs" (
	"func_id" BIGINT,
	"class_name" VARCHAR,
	"create_time" INT,
	"db_id" BIGINT,
	"func_name" VARCHAR,
	"func_type" INT,
	"owner_name" VARCHAR,
	"owner_type" VARCHAR,
	 PRIMARY KEY ("func_id"),
	 CONSTRAINT "FUNCS_FK1" FOREIGN KEY ("db_id") REFERENCES "dbs" ("db_id")
);

CREATE TABLE "func_ru" (
	"func_id" BIGINT,
	"resource_type" INT,
	"resource_uri" VARCHAR,
	"integer_idx" INT,
	 PRIMARY KEY ("func_id","integer_idx"),
	 CONSTRAINT "FUNC_RU_FK1" FOREIGN KEY ("func_id") REFERENCES "funcs" ("func_id")
);

CREATE TABLE "db_privs" (
	"db_grant_id" BIGINT,
	"create_time" INT,
	"db_id" BIGINT,
	"grant_option" SMALLINT,
	"grantor" VARCHAR,
	"grantor_type" VARCHAR,
	"principal_name" VARCHAR,
	"principal_type" VARCHAR,
	"db_priv" VARCHAR,
	"authorizer" VARCHAR,
	 PRIMARY KEY ("db_grant_id"),
	 CONSTRAINT "DB_PRIVS_FK1" FOREIGN KEY ("db_id") REFERENCES "dbs" ("db_id")
);

CREATE TABLE "database_params" (
	"db_id" BIGINT,
	"param_key" VARCHAR,
	"param_value" VARCHAR,
	 PRIMARY KEY ("db_id","param_key")
);

CREATE TABLE "cds" (
	"cd_id" BIGINT,
	 PRIMARY KEY ("cd_id")
);

CREATE TABLE "schema_version" (
	"schema_version_id" BIGINT,
	"schema_id" BIGINT,
	"version" INTEGER,
	"created_at" BIGINT,
	"cd_id" BIGINT,
	"state" INTEGER,
	"description" VARCHAR,
	"schema_text" MEDIUMTEXT,
	"fingerprint" VARCHAR,
	"schema_version_name" VARCHAR,
	"serde_id" BIGINT,
	 PRIMARY KEY ("schema_version_id"),
	 CONSTRAINT "fkeycon_schema_version_to_serdes" FOREIGN KEY ("serde_id") REFERENCES "serdes" ("serde_id"),
	 CONSTRAINT "fkeycon_schema_version_to_i_schema" FOREIGN KEY ("schema_id") REFERENCES "i_schema" ("schema_id"),
	 CONSTRAINT "fkeycon_schema_version_to_cds" FOREIGN KEY ("cd_id") REFERENCES "cds" ("cd_id")
);

CREATE TABLE "sds" (
	"sd_id" BIGINT,
	"cd_id" BIGINT,
	"input_format" VARCHAR,
	"is_compressed" BIT,
	"is_storedassubdirectories" BIT,
	"location" VARCHAR,
	"num_buckets" INT,
	"output_format" VARCHAR,
	"serde_id" BIGINT,
	 PRIMARY KEY ("sd_id"),
	 CONSTRAINT "SDS_FK2" FOREIGN KEY ("cd_id") REFERENCES "cds" ("cd_id")
);

CREATE TABLE "tbls" (
	"tbl_id" BIGINT,
	"create_time" INT,
	"db_id" BIGINT,
	"last_access_time" INT,
	"owner" VARCHAR,
	"owner_type" VARCHAR,
	"retention" INT,
	"sd_id" BIGINT,
	"tbl_name" VARCHAR,
	"tbl_type" VARCHAR,
	"view_expanded_text" MEDIUMTEXT,
	"view_original_text" MEDIUMTEXT,
	"is_rewrite_enabled" BIT,
	 PRIMARY KEY ("tbl_id"),
	 CONSTRAINT "TBLS_FK2" FOREIGN KEY ("db_id") REFERENCES "dbs" ("db_id"),
	 CONSTRAINT "TBLS_FK1" FOREIGN KEY ("sd_id") REFERENCES "sds" ("sd_id")
);

CREATE TABLE "tab_col_stats" (
	"cs_id" BIGINT,
	"cat_name" VARCHAR,
	"db_name" VARCHAR,
	"table_name" VARCHAR,
	"column_name" VARCHAR,
	"column_type" VARCHAR,
	"tbl_id" BIGINT,
	"long_low_value" BIGINT,
	"long_high_value" BIGINT,
	"double_high_value" DOUBLE,
	"double_low_value" DOUBLE,
	"big_decimal_low_value" VARCHAR,
	"big_decimal_high_value" VARCHAR,
	"num_nulls" BIGINT,
	"num_distincts" BIGINT,
	"bit_vector" BLOB,
	"avg_col_len" DOUBLE,
	"max_col_len" BIGINT,
	"num_trues" BIGINT,
	"num_falses" BIGINT,
	"last_analyzed" BIGINT,
	 PRIMARY KEY ("cs_id"),
	 CONSTRAINT "TAB_COL_STATS_FK" FOREIGN KEY ("tbl_id") REFERENCES "tbls" ("tbl_id")
);

CREATE TABLE "tbl_privs" (
	"tbl_grant_id" BIGINT,
	"create_time" INT,
	"grant_option" SMALLINT,
	"grantor" VARCHAR,
	"grantor_type" VARCHAR,
	"principal_name" VARCHAR,
	"principal_type" VARCHAR,
	"tbl_priv" VARCHAR,
	"tbl_id" BIGINT,
	"authorizer" VARCHAR,
	 PRIMARY KEY ("tbl_grant_id"),
	 CONSTRAINT "TBL_PRIVS_FK1" FOREIGN KEY ("tbl_id") REFERENCES "tbls" ("tbl_id")
);

CREATE TABLE "tbl_col_privs" (
	"tbl_column_grant_id" BIGINT,
	"column_name" VARCHAR,
	"create_time" INT,
	"grant_option" SMALLINT,
	"grantor" VARCHAR,
	"grantor_type" VARCHAR,
	"principal_name" VARCHAR,
	"principal_type" VARCHAR,
	"tbl_col_priv" VARCHAR,
	"tbl_id" BIGINT,
	"authorizer" VARCHAR,
	 PRIMARY KEY ("tbl_column_grant_id"),
	 CONSTRAINT "TBL_COL_PRIVS_FK1" FOREIGN KEY ("tbl_id") REFERENCES "tbls" ("tbl_id")
);

CREATE TABLE "mv_tables_used" (
	"mv_creation_metadata_id" BIGINT,
	"tbl_id" BIGINT,
	 CONSTRAINT "MV_TABLES_USED_FK1" FOREIGN KEY ("mv_creation_metadata_id") REFERENCES "mv_creation_metadata" ("mv_creation_metadata_id"),
	 CONSTRAINT "MV_TABLES_USED_FK2" FOREIGN KEY ("tbl_id") REFERENCES "tbls" ("tbl_id")
);

CREATE TABLE "sort_cols" (
	"sd_id" BIGINT,
	"column_name" VARCHAR,
	"order" INT,
	"integer_idx" INT,
	 PRIMARY KEY ("sd_id","integer_idx"),
	 CONSTRAINT "SORT_COLS_FK1" FOREIGN KEY ("sd_id") REFERENCES "sds" ("sd_id")
);

CREATE TABLE "skewed_values" (
	"sd_id_oid" BIGINT,
	"string_list_id_eid" BIGINT,
	"integer_idx" INT,
	 PRIMARY KEY ("sd_id_oid","integer_idx"),
	 CONSTRAINT "SKEWED_VALUES_FK1" FOREIGN KEY ("sd_id_oid") REFERENCES "sds" ("sd_id"),
	 CONSTRAINT "SKEWED_VALUES_FK2" FOREIGN KEY ("string_list_id_eid") REFERENCES "skewed_string_list" ("string_list_id")
);

CREATE TABLE "skewed_col_value_loc_map" (
	"sd_id" BIGINT,
	"string_list_id_kid" BIGINT,
	"location" VARCHAR,
	 PRIMARY KEY ("sd_id","string_list_id_kid"),
	 CONSTRAINT "SKEWED_COL_VALUE_LOC_MAP_FK1" FOREIGN KEY ("sd_id") REFERENCES "sds" ("sd_id")
);

CREATE TABLE "skewed_col_names" (
	"sd_id" BIGINT,
	"skewed_col_name" VARCHAR,
	"integer_idx" INT,
	 PRIMARY KEY ("sd_id","integer_idx"),
	 CONSTRAINT "SKEWED_COL_NAMES_FK1" FOREIGN KEY ("sd_id") REFERENCES "sds" ("sd_id")
);

CREATE TABLE "sd_params" (
	"sd_id" BIGINT,
	"param_key" VARCHAR,
	"param_value" MEDIUMTEXT,
	 PRIMARY KEY ("sd_id","param_key"),
	 CONSTRAINT "SD_PARAMS_FK1" FOREIGN KEY ("sd_id") REFERENCES "sds" ("sd_id")
);

CREATE TABLE "columns_v2" (
	"cd_id" BIGINT,
	"comment" VARCHAR,
	"column_name" VARCHAR,
	"type_name" MEDIUMTEXT,
	"integer_idx" INT,
	 PRIMARY KEY ("cd_id","column_name"),
	 CONSTRAINT "COLUMNS_V2_FK1" FOREIGN KEY ("cd_id") REFERENCES "cds" ("cd_id")
);

CREATE TABLE "bucketing_cols" (
	"sd_id" BIGINT,
	"bucket_col_name" VARCHAR,
	"integer_idx" INT,
	 PRIMARY KEY ("sd_id","integer_idx")
);
