DROP DATABASE IF EXISTS "schema874";
CREATE DATABASE "schema874";
USE "schema874";
CREATE TABLE "site_identifiers" (
	"si_site" INT,
	"si_type" VARBINARY,
	"si_key" VARBINARY
);

CREATE TABLE "sites" (
	"site_id" INT,
	"site_global_key" VARBINARY,
	"site_type" VARBINARY,
	"site_group" VARBINARY,
	"site_source" VARBINARY,
	"site_language" VARBINARY,
	"site_protocol" VARBINARY,
	"site_domain" VARCHAR,
	"site_data" BLOB,
	"site_forward" BOOL,
	"site_config" BLOB
);

CREATE TABLE "module_deps" (
	"md_module" VARBINARY,
	"md_skin" VARBINARY,
	"md_deps" MEDIUMBLOB,
	 PRIMARY KEY ("md_module","md_skin")
);

CREATE TABLE "l10n_cache" (
	"lc_lang" VARBINARY,
	"lc_key" VARCHAR,
	"lc_value" MEDIUMBLOB,
	 PRIMARY KEY ("lc_lang","lc_key")
);

CREATE TABLE "valid_tag" (
	"vt_tag" VARCHAR,
	 PRIMARY KEY ("vt_tag")
);

CREATE TABLE "tag_summary" (
	"ts_id" INT,
	"ts_rc_id" INT,
	"ts_log_id" INT,
	"ts_rev_id" INT,
	"ts_tags" BLOB
);

CREATE TABLE "change_tag" (
	"ct_id" INT,
	"ct_rc_id" INT,
	"ct_log_id" INT,
	"ct_rev_id" INT,
	"ct_tag" VARCHAR,
	"ct_params" BLOB
);

CREATE TABLE "updatelog" (
	"ul_key" VARCHAR,
	"ul_value" BLOB,
	 PRIMARY KEY ("ul_key")
);

CREATE TABLE "page_props" (
	"pp_page" INT,
	"pp_propname" VARBINARY,
	"pp_value" BLOB,
	"pp_sortkey" FLOAT
);

CREATE TABLE "protected_titles" (
	"pt_namespace" INT,
	"pt_title" VARCHAR,
	"pt_user" INT,
	"pt_reason" VARBINARY,
	"pt_reason_id" BIGINT,
	"pt_timestamp" BINARY,
	"pt_expiry" VARBINARY,
	"pt_create_perm" VARBINARY
);

CREATE TABLE "page_restrictions" (
	"pr_id" INT,
	"pr_page" INT,
	"pr_type" VARBINARY,
	"pr_level" VARBINARY,
	"pr_cascade" TINYINT,
	"pr_user" INT,
	"pr_expiry" VARBINARY
);

CREATE TABLE "querycachetwo" (
	"qcc_type" VARBINARY,
	"qcc_value" INT,
	"qcc_namespace" INT,
	"qcc_title" VARCHAR,
	"qcc_namespacetwo" INT,
	"qcc_titletwo" VARCHAR
);

CREATE TABLE "redirect" (
	"rd_from" INT,
	"rd_namespace" INT,
	"rd_title" VARCHAR,
	"rd_interwiki" VARCHAR,
	"rd_fragment" VARCHAR,
	 PRIMARY KEY ("rd_from")
);

CREATE TABLE "querycache_info" (
	"qci_type" VARBINARY,
	"qci_timestamp" BINARY,
	 PRIMARY KEY ("qci_type")
);

CREATE TABLE "job" (
	"job_id" INT,
	"job_cmd" VARBINARY,
	"job_namespace" INT,
	"job_title" VARCHAR,
	"job_timestamp" VARBINARY,
	"job_params" BLOB,
	"job_random" INTEGER,
	"job_attempts" INTEGER,
	"job_token" VARBINARY,
	"job_token_timestamp" VARBINARY,
	"job_sha1" VARBINARY
);

CREATE TABLE "log_search" (
	"ls_field" VARBINARY,
	"ls_value" VARCHAR,
	"ls_log_id" INT,
	 PRIMARY KEY ("ls_field","ls_value","ls_log_id")
);

CREATE TABLE "logging" (
	"log_id" INT,
	"log_type" VARBINARY,
	"log_action" VARBINARY,
	"log_timestamp" BINARY,
	"log_user" INT,
	"log_user_text" VARCHAR,
	"log_actor" BIGINT,
	"log_namespace" INT,
	"log_title" VARCHAR,
	"log_page" INT,
	"log_comment" VARBINARY,
	"log_comment_id" BIGINT,
	"log_params" BLOB,
	"log_deleted" TINYINT
);

CREATE TABLE "transcache" (
	"tc_url" VARBINARY,
	"tc_contents" TEXT,
	"tc_time" BINARY,
	 PRIMARY KEY ("tc_url")
);

CREATE TABLE "objectcache" (
	"keyname" VARBINARY,
	"value" MEDIUMBLOB,
	"exptime" DATETIME,
	 PRIMARY KEY ("keyname")
);

CREATE TABLE "querycache" (
	"qc_type" VARBINARY,
	"qc_value" INT,
	"qc_namespace" INT,
	"qc_title" VARCHAR
);

CREATE TABLE "interwiki" (
	"iw_prefix" VARCHAR,
	"iw_url" BLOB,
	"iw_api" BLOB,
	"iw_wikiid" VARCHAR,
	"iw_local" BOOL,
	"iw_trans" TINYINT
);

CREATE TABLE "searchindex" (
	"si_page" INT,
	"si_title" VARCHAR,
	"si_text" MEDIUMTEXT
);

CREATE TABLE "watchlist" (
	"wl_id" INT,
	"wl_user" INT,
	"wl_namespace" INT,
	"wl_title" VARCHAR,
	"wl_notificationtimestamp" VARBINARY
);

CREATE TABLE "recentchanges" (
	"rc_id" INT,
	"rc_timestamp" VARBINARY,
	"rc_user" INT,
	"rc_user_text" VARCHAR,
	"rc_actor" BIGINT,
	"rc_namespace" INT,
	"rc_title" VARCHAR,
	"rc_comment" VARBINARY,
	"rc_comment_id" BIGINT,
	"rc_minor" TINYINT,
	"rc_bot" TINYINT,
	"rc_new" TINYINT,
	"rc_cur_id" INT,
	"rc_this_oldid" INT,
	"rc_last_oldid" INT,
	"rc_type" TINYINT,
	"rc_source" VARCHAR,
	"rc_patrolled" TINYINT,
	"rc_ip" VARBINARY,
	"rc_old_len" INT,
	"rc_new_len" INT,
	"rc_deleted" TINYINT,
	"rc_logid" INT,
	"rc_log_type" VARBINARY,
	"rc_log_action" VARBINARY,
	"rc_params" BLOB
);

CREATE TABLE "uploadstash" (
	"us_id" INT,
	"us_user" INT,
	"us_key" VARCHAR,
	"us_orig_path" VARCHAR,
	"us_path" VARCHAR,
	"us_source_type" VARCHAR,
	"us_timestamp" VARBINARY,
	"us_status" VARCHAR,
	"us_chunk_inx" INT,
	"us_props" BLOB,
	"us_size" INT,
	"us_sha1" VARCHAR,
	"us_mime" VARCHAR,
	"us_media_type" ENUM,
	"us_image_width" INT,
	"us_image_height" INT,
	"us_image_bits" SMALLINT
);

CREATE TABLE "filearchive" (
	"fa_id" INT,
	"fa_name" VARCHAR,
	"fa_archive_name" VARCHAR,
	"fa_storage_group" VARBINARY,
	"fa_storage_key" VARBINARY,
	"fa_deleted_user" INT,
	"fa_deleted_timestamp" BINARY,
	"fa_deleted_reason" VARBINARY,
	"fa_deleted_reason_id" BIGINT,
	"fa_size" INT,
	"fa_width" INT,
	"fa_height" INT,
	"fa_metadata" MEDIUMBLOB,
	"fa_bits" INT,
	"fa_media_type" ENUM,
	"fa_major_mime" ENUM,
	"fa_minor_mime" VARBINARY,
	"fa_description" VARBINARY,
	"fa_description_id" BIGINT,
	"fa_user" INT,
	"fa_user_text" VARCHAR,
	"fa_actor" BIGINT,
	"fa_timestamp" BINARY,
	"fa_deleted" TINYINT,
	"fa_sha1" VARBINARY
);

CREATE TABLE "oldimage" (
	"oi_name" VARCHAR,
	"oi_archive_name" VARCHAR,
	"oi_size" INT,
	"oi_width" INT,
	"oi_height" INT,
	"oi_bits" INT,
	"oi_description" VARBINARY,
	"oi_description_id" BIGINT,
	"oi_user" INT,
	"oi_user_text" VARCHAR,
	"oi_actor" BIGINT,
	"oi_timestamp" BINARY,
	"oi_metadata" MEDIUMBLOB,
	"oi_media_type" ENUM,
	"oi_major_mime" ENUM,
	"oi_minor_mime" VARBINARY,
	"oi_deleted" TINYINT,
	"oi_sha1" VARBINARY
);

CREATE TABLE "image_comment_temp" (
	"imgcomment_name" VARCHAR,
	"imgcomment_description_id" BIGINT,
	 PRIMARY KEY ("imgcomment_name","imgcomment_description_id")
);

CREATE TABLE "image" (
	"img_name" VARCHAR,
	"img_size" INT,
	"img_width" INT,
	"img_height" INT,
	"img_metadata" MEDIUMBLOB,
	"img_bits" INT,
	"img_media_type" ENUM,
	"img_major_mime" ENUM,
	"img_minor_mime" VARBINARY,
	"img_description" VARBINARY,
	"img_description_id" BIGINT,
	"img_user" INT,
	"img_user_text" VARCHAR,
	"img_actor" BIGINT,
	"img_timestamp" VARBINARY,
	"img_sha1" VARBINARY,
	 PRIMARY KEY ("img_name")
);

CREATE TABLE "ipblocks" (
	"ipb_id" INT,
	"ipb_address" TINYBLOB,
	"ipb_user" INT,
	"ipb_by" INT,
	"ipb_by_text" VARCHAR,
	"ipb_by_actor" BIGINT,
	"ipb_reason" VARBINARY,
	"ipb_reason_id" BIGINT,
	"ipb_timestamp" BINARY,
	"ipb_auto" BOOL,
	"ipb_anon_only" BOOL,
	"ipb_create_account" BOOL,
	"ipb_enable_autoblock" BOOL,
	"ipb_expiry" VARBINARY,
	"ipb_range_start" TINYBLOB,
	"ipb_range_end" TINYBLOB,
	"ipb_deleted" BOOL,
	"ipb_block_email" BOOL,
	"ipb_allow_usertalk" BOOL,
	"ipb_parent_block_id" INT
);

CREATE TABLE "site_stats" (
	"ss_row_id" INT,
	"ss_total_edits" BIGINT,
	"ss_good_articles" BIGINT,
	"ss_total_pages" BIGINT,
	"ss_users" BIGINT,
	"ss_active_users" BIGINT,
	"ss_images" BIGINT,
	 PRIMARY KEY ("ss_row_id")
);

CREATE TABLE "iwlinks" (
	"iwl_from" INT,
	"iwl_prefix" VARBINARY,
	"iwl_title" VARCHAR,
	 PRIMARY KEY ("iwl_from","iwl_prefix","iwl_title")
);

CREATE TABLE "langlinks" (
	"ll_from" INT,
	"ll_lang" VARBINARY,
	"ll_title" VARCHAR,
	 PRIMARY KEY ("ll_from","ll_lang")
);

CREATE TABLE "externallinks" (
	"el_id" INT,
	"el_from" INT,
	"el_to" BLOB,
	"el_index" BLOB,
	"el_index_60" VARBINARY
);

CREATE TABLE "category" (
	"cat_id" INT,
	"cat_title" VARCHAR,
	"cat_pages" INT,
	"cat_subcats" INT,
	"cat_files" INT
);

CREATE TABLE "categorylinks" (
	"cl_from" INT,
	"cl_to" VARCHAR,
	"cl_sortkey" VARBINARY,
	"cl_sortkey_prefix" VARCHAR,
	"cl_timestamp" TIMESTAMP,
	"cl_collation" VARBINARY,
	"cl_type" ENUM,
	 PRIMARY KEY ("cl_from","cl_to")
);

CREATE TABLE "imagelinks" (
	"il_from" INT,
	"il_from_namespace" INT,
	"il_to" VARCHAR,
	 PRIMARY KEY ("il_from","il_to")
);

CREATE TABLE "templatelinks" (
	"tl_from" INT,
	"tl_from_namespace" INT,
	"tl_namespace" INT,
	"tl_title" VARCHAR,
	 PRIMARY KEY ("tl_from","tl_namespace","tl_title")
);

CREATE TABLE "pagelinks" (
	"pl_from" INT,
	"pl_from_namespace" INT,
	"pl_namespace" INT,
	"pl_title" VARCHAR,
	 PRIMARY KEY ("pl_from","pl_namespace","pl_title")
);

CREATE TABLE "content_models" (
	"model_id" SMALLINT,
	"model_name" VARBINARY
);

CREATE TABLE "slot_roles" (
	"role_id" SMALLINT,
	"role_name" VARBINARY
);

CREATE TABLE "content" (
	"content_id" BIGINT,
	"content_size" INT,
	"content_sha1" VARBINARY,
	"content_model" SMALLINT,
	"content_address" VARBINARY
);

CREATE TABLE "slots" (
	"slot_revision_id" BIGINT,
	"slot_role_id" SMALLINT,
	"slot_content_id" BIGINT,
	"slot_origin" BIGINT,
	 PRIMARY KEY ("slot_revision_id","slot_role_id")
);

CREATE TABLE "archive" (
	"ar_id" INT,
	"ar_namespace" INT,
	"ar_title" VARCHAR,
	"ar_comment" VARBINARY,
	"ar_comment_id" BIGINT,
	"ar_user" INT,
	"ar_user_text" VARCHAR,
	"ar_actor" BIGINT,
	"ar_timestamp" BINARY,
	"ar_minor_edit" TINYINT,
	"ar_rev_id" INT,
	"ar_text_id" INT,
	"ar_deleted" TINYINT,
	"ar_len" INT,
	"ar_page_id" INT,
	"ar_parent_id" INT,
	"ar_sha1" VARBINARY,
	"ar_content_model" VARBINARY,
	"ar_content_format" VARBINARY
);

CREATE TABLE "comment" (
	"comment_id" BIGINT,
	"comment_hash" INT,
	"comment_text" BLOB,
	"comment_data" BLOB
);

CREATE TABLE "text" (
	"old_id" INT,
	"old_text" MEDIUMBLOB,
	"old_flags" TINYBLOB
);

CREATE TABLE "ip_changes" (
	"ipc_rev_id" INT,
	"ipc_rev_timestamp" BINARY,
	"ipc_hex" VARBINARY
);

CREATE TABLE "revision_actor_temp" (
	"revactor_rev" INT,
	"revactor_actor" BIGINT,
	"revactor_timestamp" BINARY,
	"revactor_page" INT,
	 PRIMARY KEY ("revactor_rev","revactor_actor")
);

CREATE TABLE "revision_comment_temp" (
	"revcomment_rev" INT,
	"revcomment_comment_id" BIGINT,
	 PRIMARY KEY ("revcomment_rev","revcomment_comment_id")
);

CREATE TABLE "revision" (
	"rev_id" INT,
	"rev_page" INT,
	"rev_text_id" INT,
	"rev_comment" VARBINARY,
	"rev_user" INT,
	"rev_user_text" VARCHAR,
	"rev_timestamp" BINARY,
	"rev_minor_edit" TINYINT,
	"rev_deleted" TINYINT,
	"rev_len" INT,
	"rev_parent_id" INT,
	"rev_sha1" VARBINARY,
	"rev_content_model" VARBINARY,
	"rev_content_format" VARBINARY
);

CREATE TABLE "page" (
	"page_id" INT,
	"page_namespace" INT,
	"page_title" VARCHAR,
	"page_restrictions" TINYBLOB,
	"page_is_redirect" TINYINT,
	"page_is_new" TINYINT,
	"page_random" REAL,
	"page_touched" BINARY,
	"page_links_updated" VARBINARY,
	"page_latest" INT,
	"page_len" INT,
	"page_content_model" VARBINARY,
	"page_lang" VARBINARY
);

CREATE TABLE "bot_passwords" (
	"bp_user" INT,
	"bp_app_id" VARBINARY,
	"bp_password" TINYBLOB,
	"bp_token" BINARY,
	"bp_restrictions" BLOB,
	"bp_grants" BLOB,
	 PRIMARY KEY ("bp_user","bp_app_id")
);

CREATE TABLE "user_properties" (
	"up_user" INT,
	"up_property" VARBINARY,
	"up_value" BLOB,
	 PRIMARY KEY ("up_user","up_property")
);

CREATE TABLE "user_newtalk" (
	"user_id" INT,
	"user_ip" VARBINARY,
	"user_last_timestamp" VARBINARY
);

CREATE TABLE "user_former_groups" (
	"ufg_user" INT,
	"ufg_group" VARBINARY,
	 PRIMARY KEY ("ufg_user","ufg_group")
);

CREATE TABLE "user_groups" (
	"ug_user" INT,
	"ug_group" VARBINARY,
	"ug_expiry" VARBINARY,
	 PRIMARY KEY ("ug_user","ug_group")
);

CREATE TABLE "actor" (
	"actor_id" BIGINT,
	"actor_user" INT,
	"actor_name" VARCHAR
);

CREATE TABLE "user" (
	"user_id" INT,
	"user_name" VARCHAR,
	"user_real_name" VARCHAR,
	"user_password" TINYBLOB,
	"user_newpassword" TINYBLOB,
	"user_newpass_time" BINARY,
	"user_email" TINYTEXT,
	"user_touched" BINARY,
	"user_token" BINARY,
	"user_email_authenticated" BINARY,
	"user_email_token" BINARY,
	"user_email_token_expires" BINARY,
	"user_registration" BINARY,
	"user_editcount" INT,
	"user_password_expires" VARBINARY
);
