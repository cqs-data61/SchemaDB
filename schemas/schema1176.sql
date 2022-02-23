DROP DATABASE IF EXISTS "schema1176";
CREATE DATABASE "schema1176";
USE "schema1176";
CREATE TABLE "tbl_moa_cd_bas" (
	"itg_cd_group_id" VARCHAR,
	"itg_cd_group_nm" VARCHAR,
	"cd_id" VARCHAR,
	"cd_nm" VARCHAR,
	"rfrn_val1" VARCHAR,
	"rfrn_val2" VARCHAR
);

CREATE TABLE "tbl_moa_user_bas" (
	"cust_idfy_seq" INT,
	"user_id" VARCHAR,
	"user_pwd" VARCHAR,
	"user_tel_no" VARCHAR,
	"user_nm" VARCHAR,
	"upld_cascnt" INT,
	"team_div_cd" VARCHAR,
	"emp_pos_div_cd" VARCHAR,
	 PRIMARY KEY ("cust_idfy_seq")
);

CREATE TABLE "tbl_moa_bas" (
	"file_seq" INT,
	"cust_idfy_seq" INT,
	"sroc_file_path_nm" VARCHAR,
	"lang_cd" VARCHAR,
	"sys_div_cd" VARCHAR,
	"cycl_date_type_cd" VARCHAR,
	"dow_nm" VARCHAR,
	"data_exe_time" VARCHAR,
	"rpy_reslt_cd" VARCHAR,
	"trobl_svc_type_cd" VARCHAR,
	"input_val" VARCHAR,
	"trt_step_nm" VARCHAR,
	"conn_evn_div_cd" VARCHAR,
	"atten_mtr_sbst" VARCHAR,
	"atc_file_manual_yn" VARCHAR,
	"atc_file_upld_path_nm" VARCHAR,
	"otput_sbst" VARCHAR,
	"etc_sbst" VARCHAR,
	"exe_sbst" VARCHAR,
	"ntcart_title_nm" VARCHAR,
	"tkcgr_nm" VARCHAR,
	"ruser_nm" VARCHAR,
	"first_reg_date" DATE,
	"chg_date" DATE,
	"fns_date" DATE,
	 PRIMARY KEY ("file_seq"),
	 CONSTRAINT "fkeycon_tbl_moa_bas_to_tbl_moa_user_bas" FOREIGN KEY ("cust_idfy_seq") REFERENCES "tbl_moa_user_bas" ("cust_idfy_seq")
);

CREATE TABLE "tbl_moa_execution_txn" (
	"exe_seq" INT,
	"file_seq" INT,
	"cust_idfy_seq" INT,
	"exe_emp_nm" VARCHAR,
	"exe_date" DATETIME,
	"err_yn" VARCHAR,
	"err_msg_sbst" VARCHAR,
	 PRIMARY KEY ("exe_seq"),
	 CONSTRAINT "fkeycon_tbl_moa_execution_txn_to_tbl_moa_bas" FOREIGN KEY ("cust_idfy_seq") REFERENCES "tbl_moa_bas" ("cust_idfy_seq")
);

CREATE TABLE "tbl_moa_hst" (
	"sttus_chg_hst_seq" INT,
	"file_seq" INT,
	"cust_idfy_seq" INT,
	"sroc_file_path_nm" VARCHAR,
	"lang_cd" VARCHAR,
	"sys_div_cd" VARCHAR,
	"cycl_date_type_cd" VARCHAR,
	"dow_nm" VARCHAR,
	"data_exe_time" VARCHAR,
	"rpy_reslt_cd" VARCHAR,
	"trobl_svc_type_cd" VARCHAR,
	"input_val" VARCHAR,
	"trt_step_nm" VARCHAR,
	"conn_evn_div_cd" VARCHAR,
	"atten_mtr_sbst" VARCHAR,
	"atc_file_manual_yn" VARCHAR,
	"atc_file_upld_path_nm" VARCHAR,
	"otput_sbst" VARCHAR,
	"etc_sbst" VARCHAR,
	"exe_sbst" VARCHAR,
	"ntcart_title_nm" VARCHAR,
	"tkcgr_nm" VARCHAR,
	"ruser_nm" VARCHAR,
	"st_date" DATE,
	"fns_date" DATE,
	"last_hst_yn" VARCHAR,
	"file_upd_yn" VARCHAR,
	"sttus_div_cd" VARCHAR,
	 PRIMARY KEY ("sttus_chg_hst_seq"),
	 CONSTRAINT "fkeycon_tbl_moa_hst_to_tbl_moa_bas" FOREIGN KEY ("cust_idfy_seq") REFERENCES "tbl_moa_bas" ("cust_idfy_seq")
);
