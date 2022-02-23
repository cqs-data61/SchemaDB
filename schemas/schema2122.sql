DROP DATABASE IF EXISTS "schema2122";
CREATE DATABASE "schema2122";
USE "schema2122";
CREATE TABLE "rpt_timestep_critelem" (
	"id" INT4,
	"result_id" VARCHAR,
	"text" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "rpt_subcathrunoff_sum" (
	"id" INT4,
	"result_id" VARCHAR,
	"subc_id" VARCHAR,
	"tot_precip" NUMERIC,
	"tot_runon" NUMERIC,
	"tot_evap" NUMERIC,
	"tot_infil" NUMERIC,
	"tot_runoff" NUMERIC,
	"tot_runofl" NUMERIC,
	"peak_runof" NUMERIC,
	"runoff_coe" NUMERIC,
	"vxmax" NUMERIC,
	"vymax" NUMERIC,
	"depth" NUMERIC,
	"vel" NUMERIC,
	"vhmax" NUMERIC,
	 PRIMARY KEY ("id")
);

CREATE TABLE "rpt_subcatchwashoff_sum" (
	"id" INT4,
	"result_id" VARCHAR,
	"subc_id" VARCHAR,
	"poll_id" VARCHAR,
	"value" NUMERIC,
	 PRIMARY KEY ("result_id","subc_id","poll_id")
);

CREATE TABLE "rpt_storagevol_sum" (
	"id" INT4,
	"result_id" VARCHAR,
	"node_id" VARCHAR,
	"aver_vol" NUMERIC,
	"avg_full" NUMERIC,
	"ei_loss" NUMERIC,
	"max_vol" NUMERIC,
	"max_full" NUMERIC,
	"time_days" VARCHAR,
	"time_hour" VARCHAR,
	"max_out" NUMERIC,
	 PRIMARY KEY ("id")
);

CREATE TABLE "rpt_runoff_quant" (
	"id" INT4,
	"result_id" VARCHAR,
	"initsw_co" NUMERIC,
	"total_prec" NUMERIC,
	"evap_loss" NUMERIC,
	"infil_loss" NUMERIC,
	"surf_runof" NUMERIC,
	"snow_re" NUMERIC,
	"finalsw_co" NUMERIC,
	"finals_sto" NUMERIC,
	"cont_error" NUMERIC,
	"initlid_sto" NUMERIC,
	 PRIMARY KEY ("id")
);

CREATE TABLE "rpt_runoff_qual" (
	"id" INT4,
	"result_id" VARCHAR,
	"poll_id" VARCHAR,
	"init_buil" NUMERIC,
	"surf_buil" NUMERIC,
	"wet_dep" NUMERIC,
	"sweep_re" NUMERIC,
	"infil_loss" NUMERIC,
	"bmp_re" NUMERIC,
	"surf_runof" NUMERIC,
	"rem_buil" NUMERIC,
	"cont_error" NUMERIC,
	 PRIMARY KEY ("id")
);

CREATE TABLE "rpt_routing_timestep" (
	"id" INT4,
	"result_id" VARCHAR,
	"text" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "rpt_cat_result" (
	"id" INT4,
	"result_id" VARCHAR,
	"flow_units" VARCHAR,
	"rain_runof" VARCHAR,
	"snowmelt" VARCHAR,
	"groundw" VARCHAR,
	"flow_rout" VARCHAR,
	"pond_all" VARCHAR,
	"water_q" VARCHAR,
	"infil_m" VARCHAR,
	"flowrout_m" VARCHAR,
	"start_date" VARCHAR,
	"end_date" VARCHAR,
	"dry_days" NUMERIC,
	"rep_tstep" VARCHAR,
	"wet_tstep" VARCHAR,
	"dry_tstep" VARCHAR,
	"rout_tstep" VARCHAR,
	"var_time_step" VARCHAR,
	"max_trials" NUMERIC,
	"head_tolerance" VARCHAR,
	"exec_date" TIMESTAMP,
	 PRIMARY KEY ("result_id")
);

CREATE TABLE "rpt_rainfall_dep" (
	"id" INT4,
	"result_id" VARCHAR,
	"sewer_rain" NUMERIC,
	"rdiip_prod" NUMERIC,
	"rdiir_rat" NUMERIC,
	 PRIMARY KEY ("id")
);

CREATE TABLE "rpt_qualrouting_cont" (
	"id" INT4,
	"result_id" VARCHAR,
	"poll_id" VARCHAR,
	"dryw_inf" NUMERIC,
	"wetw_inf" NUMERIC,
	"ground_inf" NUMERIC,
	"rdii_inf" NUMERIC,
	"ext_inf" NUMERIC,
	"int_inf" NUMERIC,
	"ext_out" NUMERIC,
	"mass_reac" NUMERIC,
	"initst_mas" NUMERIC,
	"finst_mas" NUMERIC,
	"cont_error" NUMERIC,
	 PRIMARY KEY ("id")
);

CREATE TABLE "rpt_pumping_sum" (
	"id" INT4,
	"result_id" VARCHAR,
	"arc_id" VARCHAR,
	"percent" NUMERIC,
	"num_startup" INT4,
	"min_flow" NUMERIC,
	"avg_flow" NUMERIC,
	"max_flow" NUMERIC,
	"vol_ltr" NUMERIC,
	"powus_kwh" NUMERIC,
	"timoff_min" NUMERIC,
	"timoff_max" NUMERIC,
	 PRIMARY KEY ("id")
);

CREATE TABLE "rpt_outfallload_sum" (
	"id" INT4,
	"result_id" VARCHAR,
	"poll_id" VARCHAR,
	"node_id" VARCHAR,
	"value" NUMERIC,
	 PRIMARY KEY ("id")
);

CREATE TABLE "rpt_outfallflow_sum" (
	"id" INT4,
	"result_id" VARCHAR,
	"node_id" VARCHAR,
	"flow_freq" NUMERIC,
	"avg_flow" NUMERIC,
	"max_flow" NUMERIC,
	"total_vol" NUMERIC,
	 PRIMARY KEY ("id")
);

CREATE TABLE "rpt_nodesurcharge_sum" (
	"id" INT4,
	"result_id" VARCHAR,
	"node_id" VARCHAR,
	"swnod_type" VARCHAR,
	"hour_surch" NUMERIC,
	"max_height" NUMERIC,
	"min_depth" NUMERIC,
	 PRIMARY KEY ("id")
);

CREATE TABLE "rpt_nodeinflow_sum" (
	"id" INT4,
	"result_id" VARCHAR,
	"node_id" VARCHAR,
	"swnod_type" VARCHAR,
	"max_latinf" NUMERIC,
	"max_totinf" NUMERIC,
	"time_days" VARCHAR,
	"time_hour" VARCHAR,
	"latinf_vol" NUMERIC,
	"totinf_vol" NUMERIC,
	"flow_balance_error" NUMERIC,
	"other_info" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "rpt_nodeflooding_sum" (
	"id" INT4,
	"result_id" VARCHAR,
	"node_id" VARCHAR,
	"hour_flood" NUMERIC,
	"max_rate" NUMERIC,
	"time_days" VARCHAR,
	"time_hour" VARCHAR,
	"tot_flood" NUMERIC,
	"max_ponded" NUMERIC,
	 PRIMARY KEY ("id")
);

CREATE TABLE "rpt_nodedepth_sum" (
	"id" INT4,
	"result_id" VARCHAR,
	"node_id" VARCHAR,
	"swnod_type" VARCHAR,
	"aver_depth" NUMERIC,
	"max_depth" NUMERIC,
	"max_hgl" NUMERIC,
	"time_days" VARCHAR,
	"time_hour" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "rpt_lidperformance_sum" (
	"id" INT4,
	"result_id" VARCHAR,
	"subc_id" VARCHAR,
	"lidco_id" VARCHAR,
	"tot_inflow" NUMERIC,
	"evap_loss" NUMERIC,
	"infil_loss" NUMERIC,
	"surf_outf" NUMERIC,
	"drain_outf" NUMERIC,
	"init_stor" NUMERIC,
	"final_stor" NUMERIC,
	"per_error" NUMERIC,
	 PRIMARY KEY ("id")
);

CREATE TABLE "rpt_instability_index" (
	"id" INT4,
	"result_id" VARCHAR,
	"text" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "rpt_high_flowinest_ind" (
	"id" INT4,
	"result_id" VARCHAR,
	"text" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "rpt_high_conterrors" (
	"id" INT4,
	"result_id" VARCHAR,
	"text" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "rpt_groundwater_cont" (
	"id" INT4,
	"result_id" VARCHAR,
	"init_stor" NUMERIC,
	"infilt" NUMERIC,
	"upzone_et" NUMERIC,
	"lowzone_et" NUMERIC,
	"deep_perc" NUMERIC,
	"groundw_fl" NUMERIC,
	"final_stor" NUMERIC,
	"cont_error" NUMERIC,
	 PRIMARY KEY ("id")
);

CREATE TABLE "rpt_flowrouting_cont" (
	"id" INT4,
	"result_id" VARCHAR,
	"dryw_inf" NUMERIC,
	"wetw_inf" NUMERIC,
	"ground_inf" NUMERIC,
	"rdii_inf" NUMERIC,
	"ext_inf" NUMERIC,
	"ext_out" NUMERIC,
	"int_out" NUMERIC,
	"stor_loss" NUMERIC,
	"initst_vol" NUMERIC,
	"finst_vol" NUMERIC,
	"cont_error" NUMERIC,
	"evap_losses" NUMERIC,
	"seepage_losses" NUMERIC,
	 PRIMARY KEY ("result_id")
);

CREATE TABLE "rpt_flowclass_sum" (
	"id" INT4,
	"result_id" VARCHAR,
	"arc_id" VARCHAR,
	"length" NUMERIC,
	"dry" NUMERIC,
	"up_dry" NUMERIC,
	"down_dry" NUMERIC,
	"sub_crit" NUMERIC,
	"sub_crit_1" NUMERIC,
	"up_crit" NUMERIC,
	"down_crit" NUMERIC,
	"froud_numb" NUMERIC,
	"flow_chang" NUMERIC,
	 PRIMARY KEY ("id")
);

CREATE TABLE "rpt_critical_elements" (
	"id" INT4,
	"result_id" VARCHAR,
	"text" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "rpt_continuity_errors" (
	"id" INT4,
	"result_id" VARCHAR,
	"text" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "rpt_condsurcharge_sum" (
	"id" INT4,
	"result_id" VARCHAR,
	"arc_id" VARCHAR,
	"both_ends" NUMERIC,
	"upstream" NUMERIC,
	"dnstream" NUMERIC,
	"hour_nflow" NUMERIC,
	"hour_limit" NUMERIC,
	 PRIMARY KEY ("id")
);

CREATE TABLE "rpt_arcpolload_sum" (
	"id" INT4,
	"result_id" VARCHAR,
	"arc_id" VARCHAR,
	"poll_id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "rpt_arcflow_sum" (
	"id" INT4,
	"result_id" VARCHAR,
	"arc_id" VARCHAR,
	"arc_type" VARCHAR,
	"max_flow" NUMERIC,
	"time_days" VARCHAR,
	"time_hour" VARCHAR,
	"max_veloc" NUMERIC,
	"mfull_flow" NUMERIC,
	"mfull_dept" NUMERIC,
	"max_shear" NUMERIC,
	"max_hr" NUMERIC,
	"max_slope" NUMERIC,
	"day_max" VARCHAR,
	"time_max" VARCHAR,
	"min_shear" NUMERIC,
	"day_min" VARCHAR,
	"time_min" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "rpt_inp_arc" (
	"id" SERIAL,
	"result_id" VARCHAR,
	"arc_id" VARCHAR,
	"flw_code" VARCHAR,
	"node_1" VARCHAR,
	"node_2" VARCHAR,
	"elevmax1" NUMERIC,
	"elevmax2" NUMERIC,
	"arc_type" VARCHAR,
	"arccat_id" VARCHAR,
	"epa_type" VARCHAR,
	"sector_id" INTEGER,
	"state" VARCHAR,
	"state_type" VARCHAR,
	"annotation" CHARACTER VARYING,
	"length" NUMERIC,
	"n" NUMERIC,
	"the_geom" PUBLIC.GEOMETRY,
	"expl_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "rpt_inp_node" (
	"id" SERIAL,
	"result_id" VARCHAR,
	"node_id" VARCHAR,
	"flw_code" VARCHAR,
	"top_elev" NUMERIC,
	"ymax" NUMERIC,
	"elev" NUMERIC,
	"node_type" VARCHAR,
	"nodecat_id" VARCHAR,
	"epa_type" VARCHAR,
	"sector_id" INTEGER,
	"state" VARCHAR,
	"state_type" VARCHAR,
	"annotation" CHARACTER VARYING,
	"y0" NUMERIC,
	"ysur" NUMERIC,
	"apond" NUMERIC,
	"the_geom" PUBLIC.GEOMETRY,
	"expl_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "inp_flwreg_weir" (
	"id" SERIAL,
	"node_id" VARCHAR,
	"to_arc" VARCHAR,
	"flwreg_id" VARCHAR,
	"flwreg_length" FLOAT,
	"weir_type" VARCHAR,
	"offset" NUMERIC,
	"cd" NUMERIC,
	"ec" NUMERIC,
	"cd2" NUMERIC,
	"flap" VARCHAR,
	"geom1" NUMERIC,
	"geom2" NUMERIC,
	"geom3" NUMERIC,
	"geom4" NUMERIC,
	"surcharge" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "inp_flwreg_pump" (
	"id" SERIAL,
	"node_id" VARCHAR,
	"to_arc" VARCHAR,
	"flwreg_id" VARCHAR,
	"flwreg_length" FLOAT,
	"curve_id" VARCHAR,
	"status" VARCHAR,
	"startup" NUMERIC,
	"shutoff" NUMERIC,
	 PRIMARY KEY ("id")
);

CREATE TABLE "inp_flwreg_outlet" (
	"id" SERIAL,
	"node_id" VARCHAR,
	"to_arc" VARCHAR,
	"flwreg_id" VARCHAR,
	"flwreg_length" FLOAT,
	"outlet_type" VARCHAR,
	"offset" NUMERIC,
	"curve_id" VARCHAR,
	"cd1" NUMERIC,
	"cd2" NUMERIC,
	"flap" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "inp_flwreg_orifice" (
	"id" SERIAL,
	"node_id" VARCHAR,
	"to_arc" VARCHAR,
	"flwreg_id" VARCHAR,
	"flwreg_length" FLOAT,
	"ori_type" VARCHAR,
	"offset" NUMERIC,
	"cd" NUMERIC,
	"orate" NUMERIC,
	"flap" VARCHAR,
	"shape" VARCHAR,
	"geom1" NUMERIC,
	"geom2" NUMERIC,
	"geom3" NUMERIC,
	"geom4" NUMERIC,
	 PRIMARY KEY ("id")
);

CREATE TABLE "inp_flwreg_type" (
	"id" CHARACTER VARYING,
	"table_id" CHARACTER VARYING,
	 PRIMARY KEY ("id")
);

CREATE TABLE "inp_value_yesno" (
	"id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "inp_value_weirs" (
	"id" VARCHAR,
	"shape" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "inp_value_washoff" (
	"id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "inp_value_treatment" (
	"id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "inp_value_timserid" (
	"id" VARCHAR,
	"descript" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "inp_value_status" (
	"id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "inp_value_routeto" (
	"id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "inp_value_raingage" (
	"id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "inp_value_pollutants" (
	"id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "inp_value_orifice" (
	"id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "inp_value_options_nfl" (
	"id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "inp_value_options_lo" (
	"id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "inp_value_options_in" (
	"id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "inp_value_options_id" (
	"id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "inp_value_options_fu" (
	"id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "inp_value_options_fr" (
	"id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "inp_value_options_fme" (
	"id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "inp_value_mapunits" (
	"id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "inp_value_lidcontrol" (
	"id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "inp_value_inflows" (
	"id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "inp_value_files_type" (
	"id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "inp_value_files_actio" (
	"id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "inp_value_curve" (
	"id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "inp_value_catarc" (
	"id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "inp_value_buildup" (
	"id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "inp_value_allnone" (
	"id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "inp_typevalue_windsp" (
	"id" VARCHAR,
	"descript" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "inp_typevalue_timeseries" (
	"id" VARCHAR,
	"descript" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "inp_typevalue_temp" (
	"id" VARCHAR,
	"descript" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "inp_typevalue_storage" (
	"id" VARCHAR,
	"descript" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "inp_typevalue_raingage" (
	"id" VARCHAR,
	"descript" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "inp_typevalue_pattern" (
	"id" VARCHAR,
	"descript" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "inp_typevalue_outlet" (
	"id" VARCHAR,
	"descript" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "inp_typevalue_outfall" (
	"id" VARCHAR,
	"descript" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "inp_typevalue_orifice" (
	"id" VARCHAR,
	"descript" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "inp_typevalue_evap" (
	"id" VARCHAR,
	"descript" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "inp_typevalue_divider" (
	"id" VARCHAR,
	"descript" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "inp_windspeed" (
	"wind_type" VARCHAR,
	"value_1" NUMERIC,
	"value_2" NUMERIC,
	"value_3" NUMERIC,
	"value_4" NUMERIC,
	"value_5" NUMERIC,
	"value_6" NUMERIC,
	"value_7" NUMERIC,
	"value_8" NUMERIC,
	"value_9" NUMERIC,
	"value_10" NUMERIC,
	"value_11" NUMERIC,
	"value_12" NUMERIC,
	"fname" VARCHAR,
	 PRIMARY KEY ("wind_type")
);

CREATE TABLE "inp_weir" (
	"arc_id" VARCHAR,
	"node_id" VARCHAR,
	"weir_type" VARCHAR,
	"offset" NUMERIC,
	"cd" NUMERIC,
	"ec" NUMERIC,
	"cd2" NUMERIC,
	"flap" VARCHAR,
	"to_arc" VARCHAR,
	"geom1" NUMERIC,
	"geom2" NUMERIC,
	"geom3" NUMERIC,
	"geom4" NUMERIC,
	"surcharge" VARCHAR,
	 PRIMARY KEY ("arc_id")
);

CREATE TABLE "inp_washoff_land_x_pol" (
	"landus_id" VARCHAR,
	"poll_id" VARCHAR,
	"funcw_type" VARCHAR,
	"c1" NUMERIC,
	"c2" NUMERIC,
	"sweepeffic" NUMERIC,
	"bmpeffic" NUMERIC,
	 PRIMARY KEY ("landus_id","poll_id")
);

CREATE TABLE "inp_virtual" (
	"arc_id" VARCHAR,
	"fusion_node" VARCHAR,
	"add_length" BOOLEAN,
	 PRIMARY KEY ("arc_id")
);

CREATE TABLE "inp_treatment_node_x_pol" (
	"node_id" VARCHAR,
	"poll_id" VARCHAR,
	"function" VARCHAR,
	 PRIMARY KEY ("node_id")
);

CREATE TABLE "inp_transects" (
	"id" INT4,
	"tsect_id" VARCHAR,
	"text" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "inp_transects_id" (
	"id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "inp_timser_id" (
	"id" VARCHAR,
	"timser_type" VARCHAR,
	"times_type" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "inp_timeseries" (
	"id" INT4,
	"timser_id" VARCHAR,
	"date" VARCHAR,
	"hour" VARCHAR,
	"time" VARCHAR,
	"value" NUMERIC,
	"fname" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "inp_temperature" (
	"temp_type" VARCHAR,
	"timser_id" VARCHAR,
	"fname" VARCHAR,
	"start" VARCHAR,
	 PRIMARY KEY ("temp_type")
);

CREATE TABLE "inp_storage" (
	"node_id" VARCHAR,
	"storage_type" VARCHAR,
	"curve_id" VARCHAR,
	"a1" NUMERIC,
	"a2" NUMERIC,
	"a0" NUMERIC,
	"fevap" NUMERIC,
	"sh" NUMERIC,
	"hc" NUMERIC,
	"imd" NUMERIC,
	"y0" NUMERIC,
	"ysur" NUMERIC,
	"apond" NUMERIC,
	 PRIMARY KEY ("node_id")
);

CREATE TABLE "inp_snowpack" (
	"snow_id" VARCHAR,
	"cmin_1" NUMERIC,
	"cmax_1" NUMERIC,
	"tbase_1" NUMERIC,
	"fwf_1" NUMERIC,
	"sd0_1" NUMERIC,
	"fw0_1" NUMERIC,
	"snn0_1" NUMERIC,
	"cmin_2" NUMERIC,
	"cmax_2" NUMERIC,
	"tbase_2" NUMERIC,
	"fwf_2" NUMERIC,
	"sd0_2" NUMERIC,
	"fw0_2" NUMERIC,
	"sd100_1" NUMERIC,
	"cmin_3" NUMERIC,
	"cmax_3" NUMERIC,
	"tbase_3" NUMERIC,
	"fwf_3" NUMERIC,
	"sd0_3" NUMERIC,
	"fw0_3" NUMERIC,
	"sd100_2" NUMERIC,
	"sdplow" NUMERIC,
	"fout" NUMERIC,
	"fimp" NUMERIC,
	"fperv" NUMERIC,
	"fimelt" NUMERIC,
	"fsub" NUMERIC,
	"subc_id" VARCHAR,
	 PRIMARY KEY ("snow_id")
);

CREATE TABLE "inp_snowmelt" (
	"stemp" NUMERIC,
	"atiwt" NUMERIC,
	"rnm" NUMERIC,
	"elev" NUMERIC,
	"lat" NUMERIC,
	"dtlong" NUMERIC,
	"i_f0" NUMERIC,
	"i_f1" NUMERIC,
	"i_f2" NUMERIC,
	"i_f3" NUMERIC,
	"i_f4" NUMERIC,
	"i_f5" NUMERIC,
	"i_f6" NUMERIC,
	"i_f7" NUMERIC,
	"i_f8" NUMERIC,
	"i_f9" NUMERIC,
	"p_f0" NUMERIC,
	"p_f1" NUMERIC,
	"p_f2" NUMERIC,
	"p_f3" NUMERIC,
	"p_f4" NUMERIC,
	"p_f5" NUMERIC,
	"p_f6" NUMERIC,
	"p_f7" NUMERIC,
	"p_f8" NUMERIC,
	"p_f9" NUMERIC,
	 PRIMARY KEY ("stemp")
);

CREATE TABLE "inp_report" (
	"input" VARCHAR,
	"continuity" VARCHAR,
	"flowstats" VARCHAR,
	"controls" VARCHAR,
	"subcatchments" VARCHAR,
	"nodes" VARCHAR,
	"links" VARCHAR,
	 PRIMARY KEY ("input")
);

CREATE TABLE "inp_rdii" (
	"node_id" VARCHAR,
	"hydro_id" VARCHAR,
	"sewerarea" NUMERIC,
	 PRIMARY KEY ("node_id")
);

CREATE TABLE "inp_pump" (
	"arc_id" VARCHAR,
	"node_id" VARCHAR,
	"curve_id" VARCHAR,
	"to_arc" VARCHAR,
	"status" VARCHAR,
	"startup" NUMERIC,
	"shutoff" NUMERIC,
	 PRIMARY KEY ("arc_id")
);

CREATE TABLE "inp_project_id" (
	"title" VARCHAR,
	"author" VARCHAR,
	"date" VARCHAR,
	 PRIMARY KEY ("title")
);

CREATE TABLE "inp_pollutant" (
	"poll_id" VARCHAR,
	"units_type" VARCHAR,
	"crain" NUMERIC,
	"cgw" NUMERIC,
	"cii" NUMERIC,
	"kd" NUMERIC,
	"sflag" VARCHAR,
	"copoll_id" VARCHAR,
	"cofract" NUMERIC,
	"cdwf" NUMERIC,
	 PRIMARY KEY ("poll_id")
);

CREATE TABLE "inp_pattern" (
	"pattern_id" VARCHAR,
	"pattern_type" VARCHAR,
	"factor_1" NUMERIC,
	"factor_2" NUMERIC,
	"factor_3" NUMERIC,
	"factor_4" NUMERIC,
	"factor_5" NUMERIC,
	"factor_6" NUMERIC,
	"factor_7" NUMERIC,
	"factor_8" NUMERIC,
	"factor_9" NUMERIC,
	"factor_10" NUMERIC,
	"factor_11" NUMERIC,
	"factor_12" NUMERIC,
	"factor_13" NUMERIC,
	"factor_14" NUMERIC,
	"factor_15" NUMERIC,
	"factor_16" NUMERIC,
	"factor_17" NUMERIC,
	"factor_18" NUMERIC,
	"factor_19" NUMERIC,
	"factor_20" NUMERIC,
	"factor_21" NUMERIC,
	"factor_22" NUMERIC,
	"factor_23" NUMERIC,
	"factor_24" NUMERIC,
	 PRIMARY KEY ("pattern_id")
);

CREATE TABLE "inp_outlet" (
	"arc_id" VARCHAR,
	"node_id" VARCHAR,
	"outlet_type" VARCHAR,
	"offset" NUMERIC,
	"curve_id" VARCHAR,
	"cd1" NUMERIC,
	"cd2" NUMERIC,
	"flap" VARCHAR,
	 PRIMARY KEY ("arc_id")
);

CREATE TABLE "inp_outfall" (
	"node_id" VARCHAR,
	"outfall_type" VARCHAR,
	"stage" NUMERIC,
	"curve_id" VARCHAR,
	"timser_id" VARCHAR,
	"gate" VARCHAR,
	 PRIMARY KEY ("node_id")
);

CREATE TABLE "inp_orifice" (
	"arc_id" VARCHAR,
	"node_id" VARCHAR,
	"ori_type" VARCHAR,
	"offset" NUMERIC,
	"cd" NUMERIC,
	"orate" NUMERIC,
	"flap" VARCHAR,
	"shape" VARCHAR,
	"to_arc" VARCHAR,
	"geom1" NUMERIC,
	"geom2" NUMERIC,
	"geom3" NUMERIC,
	"geom4" NUMERIC,
	 PRIMARY KEY ("arc_id")
);

CREATE TABLE "inp_options" (
	"id" INTEGER,
	"flow_units" VARCHAR,
	"flow_routing" VARCHAR,
	"link_offsets" VARCHAR,
	"force_main_equation" VARCHAR,
	"ignore_rainfall" VARCHAR,
	"ignore_snowmelt" VARCHAR,
	"ignore_groundwater" VARCHAR,
	"ignore_routing" VARCHAR,
	"ignore_quality" VARCHAR,
	"skip_steady_state" VARCHAR,
	"start_date" VARCHAR,
	"start_time" VARCHAR,
	"end_date" VARCHAR,
	"end_time" VARCHAR,
	"report_start_date" VARCHAR,
	"report_start_time" VARCHAR,
	"sweep_start" VARCHAR,
	"sweep_end" VARCHAR,
	"dry_days" NUMERIC,
	"report_step" VARCHAR,
	"wet_step" VARCHAR,
	"dry_step" VARCHAR,
	"routing_step" VARCHAR,
	"lengthening_step" NUMERIC,
	"variable_step" NUMERIC,
	"inertial_damping" VARCHAR,
	"normal_flow_limited" VARCHAR,
	"min_surfarea" NUMERIC,
	"min_slope" NUMERIC,
	"allow_ponding" VARCHAR,
	"tempdir" VARCHAR,
	"max_trials" INT4,
	"head_tolerance" NUMERIC,
	"sys_flow_tol" INT4,
	"lat_flow_tol" INT4,
	"rtc_period_id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "inp_mapunits" (
	"type_units" VARCHAR,
	"map_type" VARCHAR
);

CREATE TABLE "inp_mapdim" (
	"type_dim" VARCHAR,
	"x1" NUMERIC,
	"y1" NUMERIC,
	"x2" NUMERIC,
	"y2" NUMERIC
);

CREATE TABLE "inp_loadings_pol_x_subc" (
	"poll_id" VARCHAR,
	"subc_id" VARCHAR,
	"ibuildup" NUMERIC,
	 PRIMARY KEY ("poll_id","subc_id")
);

CREATE TABLE "inp_lidusage_subc_x_lidco" (
	"subc_id" VARCHAR,
	"lidco_id" VARCHAR,
	"number" VARCHAR,
	"area" NUMERIC,
	"width" NUMERIC,
	"initsat" NUMERIC,
	"fromimp" NUMERIC,
	"toperv" VARCHAR,
	"rptfile" VARCHAR,
	 PRIMARY KEY ("subc_id","lidco_id")
);

CREATE TABLE "inp_lid_control" (
	"id" INT4,
	"lidco_id" VARCHAR,
	"lidco_type" VARCHAR,
	"value_2" NUMERIC,
	"value_3" NUMERIC,
	"value_4" NUMERIC,
	"value_5" NUMERIC,
	"value_6" NUMERIC,
	"value_7" NUMERIC,
	"value_8" NUMERIC,
	 PRIMARY KEY ("id")
);

CREATE TABLE "inp_landuses" (
	"landus_id" VARCHAR,
	"sweepint" NUMERIC,
	"availab" NUMERIC,
	"lastsweep" NUMERIC,
	 PRIMARY KEY ("landus_id")
);

CREATE TABLE "inp_label" (
	"label" VARCHAR,
	"xcoord" NUMERIC,
	"ycoord" NUMERIC,
	"anchor" VARCHAR,
	"font" VARCHAR,
	"size" NUMERIC,
	"bold" VARCHAR,
	"italic" VARCHAR,
	 PRIMARY KEY ("label")
);

CREATE TABLE "inp_junction" (
	"node_id" VARCHAR,
	"y0" NUMERIC,
	"ysur" NUMERIC,
	"apond" NUMERIC,
	 PRIMARY KEY ("node_id")
);

CREATE TABLE "inp_inflows_pol_x_node" (
	"poll_id" VARCHAR,
	"node_id" VARCHAR,
	"timser_id" VARCHAR,
	"form_type" VARCHAR,
	"mfactor" NUMERIC,
	"sfactor" NUMERIC,
	"base" NUMERIC,
	"pattern_id" VARCHAR,
	 PRIMARY KEY ("poll_id","node_id")
);

CREATE TABLE "inp_inflows" (
	"id" INT4,
	"node_id" VARCHAR,
	"timser_id" VARCHAR,
	"sfactor" NUMERIC,
	"base" NUMERIC,
	"pattern_id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "inp_hydrograph" (
	"id" INT4,
	"text" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "inp_groundwater" (
	"subc_id" VARCHAR,
	"aquif_id" VARCHAR,
	"node_id" VARCHAR,
	"surfel" NUMERIC,
	"a1" NUMERIC,
	"b1" NUMERIC,
	"a2" NUMERIC,
	"b2" NUMERIC,
	"a3" NUMERIC,
	"tw" NUMERIC,
	"h" NUMERIC,
	"fl_eq_lat" VARCHAR,
	"fl_eq_deep" VARCHAR,
	 PRIMARY KEY ("subc_id","aquif_id")
);

CREATE TABLE "inp_files" (
	"id" INT4,
	"actio_type" VARCHAR,
	"file_type" VARCHAR,
	"fname" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "inp_evaporation" (
	"evap_type" VARCHAR,
	"evap" NUMERIC,
	"timser_id" VARCHAR,
	"value_1" NUMERIC,
	"value_2" NUMERIC,
	"value_3" NUMERIC,
	"value_4" NUMERIC,
	"value_5" NUMERIC,
	"value_6" NUMERIC,
	"value_7" NUMERIC,
	"value_8" NUMERIC,
	"value_9" NUMERIC,
	"value_10" NUMERIC,
	"value_11" NUMERIC,
	"value_12" NUMERIC,
	"pan_1" NUMERIC,
	"pan_2" NUMERIC,
	"pan_3" NUMERIC,
	"pan_4" NUMERIC,
	"pan_5" NUMERIC,
	"pan_6" NUMERIC,
	"pan_7" NUMERIC,
	"pan_8" NUMERIC,
	"pan_9" NUMERIC,
	"pan_10" NUMERIC,
	"pan_11" NUMERIC,
	"pan_12" NUMERIC,
	"recovery" VARCHAR,
	"dry_only" VARCHAR,
	 PRIMARY KEY ("evap_type")
);

CREATE TABLE "inp_dwf_pol_x_node" (
	"poll_id" VARCHAR,
	"node_id" VARCHAR,
	"value" NUMERIC,
	"pat1" VARCHAR,
	"pat2" VARCHAR,
	"pat3" VARCHAR,
	"pat4" VARCHAR,
	 PRIMARY KEY ("poll_id","node_id")
);

CREATE TABLE "inp_dwf" (
	"id" INT4,
	"node_id" VARCHAR,
	"value" NUMERIC,
	"pat1" VARCHAR,
	"pat2" VARCHAR,
	"pat3" VARCHAR,
	"pat4" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "inp_divider" (
	"node_id" VARCHAR,
	"divider_type" VARCHAR,
	"arc_id" VARCHAR,
	"curve_id" VARCHAR,
	"qmin" NUMERIC,
	"ht" NUMERIC,
	"cd" NUMERIC,
	"y0" NUMERIC,
	"ysur" NUMERIC,
	"apond" NUMERIC,
	 PRIMARY KEY ("node_id")
);

CREATE TABLE "inp_curve_id" (
	"id" VARCHAR,
	"curve_type" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "inp_curve" (
	"id" INT4,
	"curve_id" VARCHAR,
	"x_value" NUMERIC,
	"y_value" NUMERIC,
	 PRIMARY KEY ("id")
);

CREATE TABLE "inp_coverage_land_x_subc" (
	"subc_id" VARCHAR,
	"landus_id" VARCHAR,
	"percent" NUMERIC,
	 PRIMARY KEY ("subc_id","landus_id")
);

CREATE TABLE "inp_controls_x_arc" (
	"id" SERIAL,
	"arc_id" VARCHAR,
	"text" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "inp_controls_x_node" (
	"id" SERIAL,
	"node_id" VARCHAR,
	"text" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "inp_conduit" (
	"arc_id" VARCHAR,
	"barrels" VARCHAR,
	"culvert" VARCHAR,
	"kentry" NUMERIC,
	"kexit" NUMERIC,
	"kavg" NUMERIC,
	"flap" VARCHAR,
	"q0" NUMERIC,
	"qmax" NUMERIC,
	"seepage" NUMERIC,
	"custom_n" NUMERIC,
	 PRIMARY KEY ("arc_id")
);

CREATE TABLE "inp_buildup_land_x_pol" (
	"landus_id" VARCHAR,
	"poll_id" VARCHAR,
	"funcb_type" VARCHAR,
	"c1" NUMERIC,
	"c2" NUMERIC,
	"c3" NUMERIC,
	"perunit" VARCHAR,
	 PRIMARY KEY ("landus_id","poll_id")
);

CREATE TABLE "inp_backdrop" (
	"id" INT4,
	"text" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "inp_aquifer" (
	"aquif_id" VARCHAR,
	"por" NUMERIC,
	"wp" NUMERIC,
	"fc" NUMERIC,
	"k" NUMERIC,
	"ks" NUMERIC,
	"ps" NUMERIC,
	"uef" NUMERIC,
	"led" NUMERIC,
	"gwr" NUMERIC,
	"be" NUMERIC,
	"wte" NUMERIC,
	"umc" NUMERIC,
	"pattern_id" VARCHAR,
	 PRIMARY KEY ("aquif_id")
);

CREATE TABLE "inp_adjustments" (
	"id" VARCHAR,
	"adj_type" VARCHAR,
	"value_1" NUMERIC,
	"value_2" NUMERIC,
	"value_3" NUMERIC,
	"value_4" NUMERIC,
	"value_5" NUMERIC,
	"value_6" NUMERIC,
	"value_7" NUMERIC,
	"value_8" NUMERIC,
	"value_9" NUMERIC,
	"value_10" NUMERIC,
	"value_11" NUMERIC,
	"value_12" NUMERIC,
	 PRIMARY KEY ("id")
);

CREATE TABLE "inp_selector_hydrology" (
	"id" SERIAL,
	"hydrology_id" INTEGER,
	"cur_user" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cat_hydrology" (
	"hydrology_id" SERIAL,
	"name" VARCHAR,
	"infiltration" VARCHAR,
	"text" VARCHAR,
	 PRIMARY KEY ("hydrology_id")
);

CREATE TABLE "subcatchment" (
	"subc_id" VARCHAR,
	"node_id" VARCHAR,
	"rg_id" VARCHAR,
	"area" NUMERIC,
	"imperv" NUMERIC,
	"width" NUMERIC,
	"slope" NUMERIC,
	"clength" NUMERIC,
	"snow_id" VARCHAR,
	"nimp" NUMERIC,
	"nperv" NUMERIC,
	"simp" NUMERIC,
	"sperv" NUMERIC,
	"zero" NUMERIC,
	"routeto" VARCHAR,
	"rted" NUMERIC,
	"maxrate" NUMERIC,
	"minrate" NUMERIC,
	"decay" NUMERIC,
	"drytime" NUMERIC,
	"maxinfil" NUMERIC,
	"suction" NUMERIC,
	"conduct" NUMERIC,
	"initdef" NUMERIC,
	"curveno" NUMERIC,
	"conduct_2" NUMERIC,
	"drytime_2" NUMERIC,
	"sector_id" INTEGER,
	"hydrology_id" INTEGER,
	"the_geom" PUBLIC.GEOMETRY,
	 PRIMARY KEY ("subc_id")
);

CREATE TABLE "raingage" (
	"rg_id" VARCHAR,
	"form_type" VARCHAR,
	"intvl" VARCHAR,
	"scf" NUMERIC,
	"rgage_type" VARCHAR,
	"timser_id" VARCHAR,
	"fname" VARCHAR,
	"sta" VARCHAR,
	"units" VARCHAR,
	"expl_id" INTEGER,
	"the_geom" PUBLIC.GEOMETRY,
	 PRIMARY KEY ("rg_id")
);
