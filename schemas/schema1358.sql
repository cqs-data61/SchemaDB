DROP DATABASE IF EXISTS "schema1358";
CREATE DATABASE "schema1358";
USE "schema1358";
CREATE TABLE "comtn_progrm_list" (
	"progrm_file_nm" VARCHAR,
	"progrm_stre_path" VARCHAR,
	"progrm_korean_nm" VARCHAR,
	"progrm_dc" VARCHAR,
	"url" VARCHAR
);

CREATE TABLE "comtn_login_log" (
	"log_id" CHAR,
	"conect_id" VARCHAR,
	"conect_ip" VARCHAR,
	"conect_mthd" CHAR,
	"error_occrrnc_at" CHAR,
	"error_code" CHAR,
	"creat_dt" DATETIME
);

CREATE TABLE "comtc_zip" (
	"zip" VARCHAR,
	"sn" NUMERIC,
	"ctprvn_nm" VARCHAR,
	"signgu_nm" VARCHAR,
	"emd_nm" VARCHAR,
	"li_buld_nm" VARCHAR,
	"lnbr_dong_ho" VARCHAR,
	"frst_regist_pnttm" DATETIME,
	"frst_register_id" VARCHAR,
	"last_updt_pnttm" DATETIME,
	"last_updusr_id" VARCHAR
);

CREATE TABLE "comtr_dnm_adrzip" (
	"rdmn_code" VARCHAR,
	"sn" NUMERIC,
	"ctprvn_nm" VARCHAR,
	"signgu_nm" VARCHAR,
	"rdmn" VARCHAR,
	"bdnbr_mnnm" VARCHAR,
	"bdnbr_slno" VARCHAR,
	"buld_nm" VARCHAR,
	"detail_buld_nm" VARCHAR,
	"zip" VARCHAR,
	"frst_regist_pnttm" DATETIME,
	"frst_register_id" VARCHAR,
	"last_updt_pnttm" DATETIME,
	"last_updusr_id" VARCHAR
);

CREATE TABLE "comtc_cmmn_code_detail" (
	"code_id" VARCHAR,
	"code" VARCHAR,
	"code_nm" VARCHAR,
	"code_dc" VARCHAR,
	"use_at" CHAR,
	"frst_regist_pnttm" DATETIME,
	"frst_register_id" VARCHAR,
	"last_updt_pnttm" DATETIME,
	"last_updusr_id" VARCHAR
);

CREATE TABLE "comtc_cmmn_code" (
	"code_id" VARCHAR,
	"code_id_nm" VARCHAR,
	"code_id_dc" VARCHAR,
	"use_at" CHAR,
	"cl_code" CHAR,
	"frst_regist_pnttm" DATETIME,
	"frst_register_id" VARCHAR,
	"last_updt_pnttm" DATETIME,
	"last_updusr_id" VARCHAR
);

CREATE TABLE "comtc_cmmn_cl_code" (
	"cl_code" CHAR,
	"cl_code_nm" VARCHAR,
	"cl_code_dc" VARCHAR,
	"use_at" CHAR,
	"frst_regist_pnttm" DATETIME,
	"frst_register_id" VARCHAR,
	"last_updt_pnttm" DATETIME,
	"last_updusr_id" VARCHAR
);

CREATE TABLE "comtn_role_info" (
	"role_code" VARCHAR,
	"role_nm" VARCHAR,
	"role_pttrn" VARCHAR,
	"role_dc" VARCHAR,
	"role_ty" VARCHAR,
	"role_sort" VARCHAR,
	"role_creat_de" CHAR
);

CREATE TABLE "comtn_roles_hierarchy" (
	"parnts_role" VARCHAR,
	"chldrn_role" VARCHAR
);

CREATE TABLE "comtn_author_info" (
	"author_code" VARCHAR,
	"author_nm" VARCHAR,
	"author_dc" VARCHAR,
	"author_creat_de" DATETIME
);

CREATE TABLE "comtn_author_role_relate" (
	"author_code" VARCHAR,
	"role_code" VARCHAR,
	"creat_dt" DATETIME
);

CREATE TABLE "comtn_file_detail" (
	"atch_file_id" CHAR,
	"file_sn" NUMERIC,
	"file_stre_cours" VARCHAR,
	"stre_file_nm" VARCHAR,
	"orignl_file_nm" VARCHAR,
	"file_extsn" VARCHAR,
	"file_cn" MEDIUMTEXT,
	"file_size" NUMERIC
);

CREATE TABLE "comtn_file" (
	"atch_file_id" CHAR,
	"creat_dt" DATETIME,
	"use_at" CHAR
);

CREATE TABLE "comtn_word_dicary_info" (
	"word_id" CHAR,
	"word_nm" VARCHAR,
	"eng_nm" VARCHAR,
	"word_dc" VARCHAR,
	"synonm" VARCHAR,
	"frst_regist_pnttm" DATETIME,
	"frst_register_id" VARCHAR,
	"last_updt_pnttm" DATETIME,
	"last_updusr_id" VARCHAR
);

CREATE TABLE "comtn_stplat_info" (
	"use_stplat_id" CHAR,
	"use_stplat_nm" VARCHAR,
	"use_stplat_cn" MEDIUMTEXT,
	"info_provd_agre_cn" MEDIUMTEXT,
	"frst_regist_pnttm" DATETIME,
	"frst_register_id" VARCHAR,
	"last_updt_pnttm" DATETIME,
	"last_updusr_id" VARCHAR
);

CREATE TABLE "comtn_qa_info" (
	"qa_id" CHAR,
	"qestn_sj" VARCHAR,
	"qestn_cn" VARCHAR,
	"writng_de" CHAR,
	"rdcnt" NUMERIC,
	"email_adres" VARCHAR,
	"frst_regist_pnttm" DATETIME,
	"frst_register_id" VARCHAR,
	"last_updt_pnttm" DATETIME,
	"last_updusr_id" VARCHAR,
	"qna_process_sttus_code" CHAR,
	"wrter_nm" VARCHAR,
	"answer_cn" VARCHAR,
	"writng_password" VARCHAR,
	"answer_de" CHAR,
	"email_answer_at" CHAR,
	"area_no" VARCHAR,
	"middle_telno" VARCHAR,
	"end_telno" VARCHAR
);

CREATE TABLE "comtn_faq_info" (
	"faq_id" CHAR,
	"qestn_sj" VARCHAR,
	"qestn_cn" VARCHAR,
	"answer_cn" VARCHAR,
	"rdcnt" NUMERIC,
	"frst_regist_pnttm" DATETIME,
	"frst_register_id" VARCHAR,
	"last_updt_pnttm" DATETIME,
	"last_updusr_id" VARCHAR,
	"atch_file_id" CHAR,
	"qna_process_sttus_code" CHAR
);

CREATE TABLE "comtn_orgnzt_info" (
	"orgnzt_id" CHAR,
	"orgnzt_nm" VARCHAR,
	"orgnzt_dc" VARCHAR
);

CREATE TABLE "comth_emplyr_info_change_dtls" (
	"emplyr_id" VARCHAR,
	"change_de" CHAR,
	"orgnzt_id" CHAR,
	"empl_no" VARCHAR,
	"sexdstn_code" CHAR,
	"brthdy" CHAR,
	"fxnum" VARCHAR,
	"house_adres" VARCHAR,
	"house_end_telno" VARCHAR,
	"area_no" VARCHAR,
	"detail_adres" VARCHAR,
	"zip" VARCHAR,
	"offm_telno" VARCHAR,
	"mbtlnum" VARCHAR,
	"email_adres" VARCHAR,
	"house_middle_telno" VARCHAR,
	"pstinst_code" CHAR,
	"emplyr_sttus_code" CHAR,
	"esntl_id" CHAR
);

CREATE TABLE "comtn_emplyr_info" (
	"emplyr_id" VARCHAR,
	"orgnzt_id" CHAR,
	"user_nm" VARCHAR,
	"password" VARCHAR,
	"empl_no" VARCHAR,
	"ihidnum" VARCHAR,
	"sexdstn_code" CHAR,
	"brthdy" CHAR,
	"fxnum" VARCHAR,
	"house_adres" VARCHAR,
	"password_hint" VARCHAR,
	"password_cnsr" VARCHAR,
	"house_end_telno" VARCHAR,
	"area_no" VARCHAR,
	"detail_adres" VARCHAR,
	"zip" VARCHAR,
	"offm_telno" VARCHAR,
	"mbtlnum" VARCHAR,
	"email_adres" VARCHAR,
	"ofcps_nm" VARCHAR,
	"house_middle_telno" VARCHAR,
	"pstinst_code" CHAR,
	"emplyr_sttus_code" CHAR,
	"esntl_id" CHAR,
	"crtfc_dn_value" VARCHAR,
	"sbscrb_de" DATETIME
);

CREATE TABLE "comtn_emplyr_scrty_estbs" (
	"scrty_dtrmn_trget_id" VARCHAR,
	"mber_ty_code" CHAR,
	"author_code" VARCHAR
);

CREATE TABLE "comtn_menu_info" (
	"menu_nm" VARCHAR,
	"progrm_file_nm" VARCHAR,
	"menu_no" NUMERIC,
	"upper_menu_no" NUMERIC,
	"menu_ordr" NUMERIC,
	"menu_dc" VARCHAR,
	"relate_image_path" VARCHAR,
	"relate_image_nm" VARCHAR
);

CREATE TABLE "comtn_login_policy" (
	"emplyr_id" VARCHAR,
	"ip_info" VARCHAR,
	"dplct_perm_at" CHAR,
	"lmtt_at" CHAR,
	"frst_register_id" VARCHAR,
	"frst_regist_pnttm" DATETIME,
	"last_updusr_id" VARCHAR,
	"last_updt_pnttm" DATETIME
);

CREATE TABLE "comtn_entrprs_mber" (
	"entrprs_mber_id" VARCHAR,
	"entrprs_se_code" CHAR,
	"bizrno" VARCHAR,
	"jurirno" VARCHAR,
	"cmpny_nm" VARCHAR,
	"cxfc" VARCHAR,
	"zip" VARCHAR,
	"adres" VARCHAR,
	"entrprs_middle_telno" VARCHAR,
	"fxnum" VARCHAR,
	"induty_code" CHAR,
	"applcnt_nm" VARCHAR,
	"applcnt_ihidnum" VARCHAR,
	"sbscrb_de" DATETIME,
	"entrprs_mber_sttus" VARCHAR,
	"entrprs_mber_password" VARCHAR,
	"entrprs_mber_password_hint" VARCHAR,
	"entrprs_mber_password_cnsr" VARCHAR,
	"detail_adres" VARCHAR,
	"entrprs_end_telno" VARCHAR,
	"area_no" VARCHAR,
	"applcnt_email_adres" VARCHAR,
	"esntl_id" CHAR
);

CREATE TABLE "comtn_rest_de" (
	"restde_no" NUMERIC,
	"restde" CHAR,
	"restde_nm" VARCHAR,
	"restde_dc" VARCHAR,
	"restde_se_code" VARCHAR,
	"frst_regist_pnttm" DATETIME,
	"frst_register_id" VARCHAR,
	"last_updt_pnttm" DATETIME,
	"last_updusr_id" VARCHAR
);

CREATE TABLE "comtn_bbs_use" (
	"bbs_id" CHAR,
	"trget_id" CHAR,
	"use_at" CHAR,
	"regist_se_code" CHAR,
	"frst_regist_pnttm" DATETIME,
	"frst_register_id" VARCHAR,
	"last_updt_pnttm" DATETIME,
	"last_updusr_id" VARCHAR
);

CREATE TABLE "comtn_bbsmaster_optn" (
	"bbs_id" CHAR,
	"answer_at" CHAR,
	"stsfdg_at" CHAR,
	"frst_regist_pnttm" DATETIME,
	"last_updt_pnttm" DATETIME,
	"frst_register_id" VARCHAR,
	"last_updusr_id" VARCHAR
);

CREATE TABLE "comtn_comment" (
	"ntt_id" NUMERIC,
	"bbs_id" CHAR,
	"answer_no" NUMERIC,
	"wrter_id" VARCHAR,
	"wrter_nm" VARCHAR,
	"answer" VARCHAR,
	"use_at" CHAR,
	"frst_regist_pnttm" DATETIME,
	"frst_register_id" VARCHAR,
	"last_updt_pnttm" DATETIME,
	"last_updusr_id" VARCHAR,
	"password" VARCHAR
);

CREATE TABLE "comtn_bbs" (
	"ntt_id" NUMERIC,
	"bbs_id" CHAR,
	"ntt_no" NUMERIC,
	"ntt_sj" VARCHAR,
	"ntt_cn" MEDIUMTEXT,
	"answer_at" CHAR,
	"parntsctt_no" NUMERIC,
	"answer_lc" NUMERIC,
	"sort_ordr" NUMERIC,
	"rdcnt" NUMERIC,
	"use_at" CHAR,
	"ntce_bgnde" CHAR,
	"ntce_endde" CHAR,
	"ntcr_id" VARCHAR,
	"ntcr_nm" VARCHAR,
	"password" VARCHAR,
	"atch_file_id" CHAR,
	"frst_regist_pnttm" DATETIME,
	"frst_register_id" VARCHAR,
	"last_updt_pnttm" DATETIME,
	"last_updusr_id" VARCHAR
);

CREATE TABLE "comtn_bbsmaster" (
	"bbs_id" CHAR,
	"bbs_nm" VARCHAR,
	"bbs_intrcn" VARCHAR,
	"bbs_ty_code" CHAR,
	"bbs_attrb_code" CHAR,
	"reply_posbl_at" CHAR,
	"file_atch_posbl_at" CHAR,
	"atch_posbl_file_number" NUMERIC,
	"atch_posbl_file_size" NUMERIC,
	"use_at" CHAR,
	"tmplat_id" CHAR,
	"frst_register_id" VARCHAR,
	"frst_regist_pnttm" DATETIME,
	"last_updusr_id" VARCHAR,
	"last_updt_pnttm" DATETIME
);

CREATE TABLE "comte_cop_seq" (
	"table_name" VARCHAR,
	"next_id" NUMERIC
);
