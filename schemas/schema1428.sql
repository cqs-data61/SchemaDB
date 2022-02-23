DROP DATABASE IF EXISTS "schema1428";
CREATE DATABASE "schema1428";
USE "schema1428";
CREATE TABLE "weather_data" (
	"time" BIGINT,
	"variable" CHARACTER VARYING,
	"value" DOUBLE PRECISION,
	 PRIMARY KEY ("time","variable")
);

CREATE TABLE "subsystem_error" (
	"id" BIGINT,
	"time" BIGINT,
	"subsystem" CHARACTER VARYING,
	"mc_time" BIGINT,
	"severity" INTEGER,
	"log" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "station_type" (
	"station_type_name" CHARACTER VARYING,
	"prefix" CHARACTER VARYING,
	"description" CHARACTER VARYING,
	"plot_marker" CHARACTER VARYING,
	 PRIMARY KEY ("station_type_name")
);

CREATE TABLE "geo_location" (
	"station_name" CHARACTER VARYING,
	"station_type_name" CHARACTER VARYING,
	"datum" CHARACTER VARYING,
	"tile" CHARACTER VARYING,
	"northing" DOUBLE PRECISION,
	"easting" DOUBLE PRECISION,
	"elevation" DOUBLE PRECISION,
	"created_gpstime" BIGINT,
	 PRIMARY KEY ("station_name"),
	 CONSTRAINT "geo_location_station_type_name_fkey" FOREIGN KEY ("station_type_name") REFERENCES "station_type" ("station_type_name")
);

CREATE TABLE "snap_status" (
	"time" BIGINT,
	"hostname" CHARACTER VARYING,
	"node" INTEGER,
	"snap_loc_num" INTEGER,
	"serial_number" CHARACTER VARYING,
	"psu_alert" BOOLEAN,
	"pps_count" BIGINT,
	"fpga_temp" DOUBLE PRECISION,
	"uptime_cycles" BIGINT,
	"last_programmed_time" BIGINT,
	 PRIMARY KEY ("time","hostname")
);

CREATE TABLE "rtp_status" (
	"time" BIGINT,
	"status" CHARACTER VARYING,
	"event_min_elapsed" DOUBLE PRECISION,
	"num_processes" INTEGER,
	"restart_hours_elapsed" DOUBLE PRECISION,
	 PRIMARY KEY ("time")
);

CREATE TABLE "rtp_server_status" (
	"hostname" CHARACTER VARYING,
	"mc_time" BIGINT,
	"ip_address" CHARACTER VARYING,
	"mc_system_timediff" DOUBLE PRECISION,
	"num_cores" INTEGER,
	"cpu_load_pct" DOUBLE PRECISION,
	"uptime_days" DOUBLE PRECISION,
	"memory_used_pct" DOUBLE PRECISION,
	"memory_size_gb" DOUBLE PRECISION,
	"disk_space_pct" DOUBLE PRECISION,
	"disk_size_gb" DOUBLE PRECISION,
	"network_bandwidth_mbs" DOUBLE PRECISION,
	 PRIMARY KEY ("hostname","mc_time")
);

CREATE TABLE "roach_temperature" (
	"time" BIGINT,
	"roach" CHARACTER VARYING,
	"ambient_temp" DOUBLE PRECISION,
	"inlet_temp" DOUBLE PRECISION,
	"outlet_temp" DOUBLE PRECISION,
	"fpga_temp" DOUBLE PRECISION,
	"ppc_temp" DOUBLE PRECISION,
	 PRIMARY KEY ("time","roach")
);

CREATE TABLE "parts" (
	"hpn" CHARACTER VARYING,
	"hpn_rev" CHARACTER VARYING,
	"hptype" CHARACTER VARYING,
	"manufacturer_number" CHARACTER VARYING,
	"start_gpstime" BIGINT,
	"stop_gpstime" BIGINT,
	 PRIMARY KEY ("hpn","hpn_rev")
);

CREATE TABLE "connections" (
	"upstream_part" CHARACTER VARYING,
	"up_part_rev" CHARACTER VARYING,
	"downstream_part" CHARACTER VARYING,
	"down_part_rev" CHARACTER VARYING,
	"upstream_output_port" CHARACTER VARYING,
	"downstream_input_port" CHARACTER VARYING,
	"start_gpstime" BIGINT,
	"stop_gpstime" BIGINT,
	 PRIMARY KEY ("upstream_part","up_part_rev","upstream_output_port","downstream_part","down_part_rev","downstream_input_port","start_gpstime"),
	 CONSTRAINT "connections_downstream_part_down_part_rev_fkey" FOREIGN KEY ("downstream_part","down_part_rev") REFERENCES "parts" ("hpn","hpn_rev"),
	 CONSTRAINT "connections_upstream_part_up_part_rev_fkey" FOREIGN KEY ("upstream_part","up_part_rev") REFERENCES "parts" ("hpn","hpn_rev")
);

CREATE TABLE "part_rosetta" (
	"hpn" CHARACTER VARYING,
	"syspn" CHARACTER VARYING,
	"start_gpstime" BIGINT,
	"stop_gpstime" BIGINT,
	 PRIMARY KEY ("syspn","start_gpstime")
);

CREATE TABLE "part_info" (
	"hpn" CHARACTER VARYING,
	"hpn_rev" CHARACTER VARYING,
	"comment" CHARACTER VARYING,
	"reference" CHARACTER VARYING,
	"posting_gpstime" BIGINT,
	 PRIMARY KEY ("hpn","hpn_rev","posting_gpstime")
);

CREATE TABLE "paper_temperatures" (
	"balun_east" DOUBLE PRECISION,
	"cable_east" DOUBLE PRECISION,
	"balun_west" DOUBLE PRECISION,
	"cable_west" DOUBLE PRECISION,
	"rcvr_1a" DOUBLE PRECISION,
	"rcvr_1b" DOUBLE PRECISION,
	"rcvr_2a" DOUBLE PRECISION,
	"rcvr_2b" DOUBLE PRECISION,
	"rcvr_3a" DOUBLE PRECISION,
	"rcvr_3b" DOUBLE PRECISION,
	"rcvr_4a" DOUBLE PRECISION,
	"rcvr_4b" DOUBLE PRECISION,
	"rcvr_5a" DOUBLE PRECISION,
	"rcvr_5b" DOUBLE PRECISION,
	"rcvr_6a" DOUBLE PRECISION,
	"rcvr_6b" DOUBLE PRECISION,
	"rcvr_7a" DOUBLE PRECISION,
	"rcvr_7b" DOUBLE PRECISION,
	"rcvr_8a" DOUBLE PRECISION,
	"rcvr_8b" DOUBLE PRECISION,
	"time" BIGINT,
	 PRIMARY KEY ("time")
);

CREATE TABLE "node_white_rabbit_status" (
	"node_time" BIGINT,
	"node" INTEGER,
	"board_info_str" CHARACTER VARYING,
	"aliases" CHARACTER VARYING,
	"ip" CHARACTER VARYING,
	"mode" CHARACTER VARYING,
	"serial" CHARACTER VARYING,
	"temperature" DOUBLE PRECISION,
	"build_date" BIGINT,
	"gw_date" BIGINT,
	"gw_version" CHARACTER VARYING,
	"gw_id" CHARACTER VARYING,
	"build_hash" CHARACTER VARYING,
	"manufacture_tag" CHARACTER VARYING,
	"manufacture_device" CHARACTER VARYING,
	"manufacture_date" BIGINT,
	"manufacture_partnum" CHARACTER VARYING,
	"manufacture_serial" CHARACTER VARYING,
	"manufacture_vendor" CHARACTER VARYING,
	"port0_ad" INTEGER,
	"port0_link_asymmetry_ps" INTEGER,
	"port0_manual_phase_ps" INTEGER,
	"port0_clock_offset_ps" INTEGER,
	"port0_cable_rt_delay_ps" INTEGER,
	"port0_master_slave_delay_ps" INTEGER,
	"port0_master_rx_phy_delay_ps" INTEGER,
	"port0_slave_rx_phy_delay_ps" INTEGER,
	"port0_master_tx_phy_delay_ps" INTEGER,
	"port0_slave_tx_phy_delay_ps" INTEGER,
	"port0_hd" INTEGER,
	"port0_link" BOOLEAN,
	"port0_lock" BOOLEAN,
	"port0_md" INTEGER,
	"port0_rt_time_ps" INTEGER,
	"port0_nsec" INTEGER,
	"port0_packets_received" INTEGER,
	"port0_phase_setpoint_ps" INTEGER,
	"port0_servo_state" CHARACTER VARYING,
	"port0_sv" INTEGER,
	"port0_sync_source" CHARACTER VARYING,
	"port0_packets_sent" INTEGER,
	"port0_update_counter" INTEGER,
	"port0_time" BIGINT,
	"port1_ad" INTEGER,
	"port1_link_asymmetry_ps" INTEGER,
	"port1_manual_phase_ps" INTEGER,
	"port1_clock_offset_ps" INTEGER,
	"port1_cable_rt_delay_ps" INTEGER,
	"port1_master_slave_delay_ps" INTEGER,
	"port1_master_rx_phy_delay_ps" INTEGER,
	"port1_slave_rx_phy_delay_ps" INTEGER,
	"port1_master_tx_phy_delay_ps" INTEGER,
	"port1_slave_tx_phy_delay_ps" INTEGER,
	"port1_hd" INTEGER,
	"port1_link" BOOLEAN,
	"port1_lock" BOOLEAN,
	"port1_md" INTEGER,
	"port1_rt_time_ps" INTEGER,
	"port1_nsec" INTEGER,
	"port1_packets_received" INTEGER,
	"port1_phase_setpoint_ps" INTEGER,
	"port1_servo_state" CHARACTER VARYING,
	"port1_sv" INTEGER,
	"port1_sync_source" CHARACTER VARYING,
	"port1_packets_sent" INTEGER,
	"port1_update_counter" INTEGER,
	"port1_time" BIGINT,
	 PRIMARY KEY ("node_time","node")
);

CREATE TABLE "node_sensor" (
	"time" BIGINT,
	"node" INTEGER,
	"top_sensor_temp" DOUBLE PRECISION,
	"middle_sensor_temp" DOUBLE PRECISION,
	"bottom_sensor_temp" DOUBLE PRECISION,
	"humidity_sensor_temp" DOUBLE PRECISION,
	"humidity" DOUBLE PRECISION,
	 PRIMARY KEY ("time","node")
);

CREATE TABLE "node_power_status" (
	"time" BIGINT,
	"node" INTEGER,
	"snap_relay_powered" BOOLEAN,
	"snap0_powered" BOOLEAN,
	"snap1_powered" BOOLEAN,
	"snap2_powered" BOOLEAN,
	"snap3_powered" BOOLEAN,
	"fem_powered" BOOLEAN,
	"pam_powered" BOOLEAN,
	 PRIMARY KEY ("time","node")
);

CREATE TABLE "node_power_command" (
	"time" BIGINT,
	"node" INTEGER,
	"part" CHARACTER VARYING,
	"command" CHARACTER VARYING,
	 PRIMARY KEY ("time","node","part")
);

CREATE TABLE "metric_list" (
	"metric" CHARACTER VARYING,
	"desc" CHARACTER VARYING,
	 PRIMARY KEY ("metric")
);

CREATE TABLE "lib_status" (
	"time" BIGINT,
	"num_files" BIGINT,
	"data_volume_gb" DOUBLE PRECISION,
	"free_space_gb" DOUBLE PRECISION,
	"upload_min_elapsed" DOUBLE PRECISION,
	"num_processes" INTEGER,
	"git_version" CHARACTER VARYING,
	"git_hash" CHARACTER VARYING,
	 PRIMARY KEY ("time")
);

CREATE TABLE "lib_server_status" (
	"hostname" CHARACTER VARYING,
	"mc_time" BIGINT,
	"ip_address" CHARACTER VARYING,
	"mc_system_timediff" DOUBLE PRECISION,
	"num_cores" INTEGER,
	"cpu_load_pct" DOUBLE PRECISION,
	"uptime_days" DOUBLE PRECISION,
	"memory_used_pct" DOUBLE PRECISION,
	"memory_size_gb" DOUBLE PRECISION,
	"disk_space_pct" DOUBLE PRECISION,
	"disk_size_gb" DOUBLE PRECISION,
	"network_bandwidth_mbs" DOUBLE PRECISION,
	 PRIMARY KEY ("hostname","mc_time")
);

CREATE TABLE "lib_remote_status" (
	"time" BIGINT,
	"remote_name" CHARACTER VARYING,
	"ping_time" DOUBLE PRECISION,
	"num_file_uploads" INTEGER,
	"bandwidth_mbs" DOUBLE PRECISION,
	 PRIMARY KEY ("time","remote_name","ping_time")
);

CREATE TABLE "lib_raid_status" (
	"time" BIGINT,
	"hostname" CHARACTER VARYING,
	"num_disks" INTEGER,
	"info" TEXT,
	 PRIMARY KEY ("time","hostname")
);

CREATE TABLE "lib_raid_errors" (
	"time" BIGINT,
	"hostname" CHARACTER VARYING,
	"disk" CHARACTER VARYING,
	"log" TEXT,
	"id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "hera_obs" (
	"obsid" BIGINT,
	"lst_start_hr" DOUBLE PRECISION,
	"jd_start" DOUBLE PRECISION,
	"starttime" DOUBLE PRECISION,
	"stoptime" DOUBLE PRECISION,
	 PRIMARY KEY ("obsid")
);

CREATE TABLE "rtp_task_resource_record" (
	"obsid" BIGINT,
	"task_name" TEXT,
	"start_time" BIGINT,
	"stop_time" BIGINT,
	"max_memory" DOUBLE PRECISION,
	"avg_cpu_load" DOUBLE PRECISION,
	 PRIMARY KEY ("obsid","task_name"),
	 CONSTRAINT "rtp_task_resource_record_obsid_fkey" FOREIGN KEY ("obsid") REFERENCES "hera_obs" ("obsid")
);

CREATE TABLE "rtp_task_multiple_track" (
	"obsid_start" BIGINT,
	"task_name" TEXT,
	"obsid" BIGINT,
	 PRIMARY KEY ("obsid_start","task_name","obsid"),
	 CONSTRAINT "rtp_task_multiple_track_obsid_start_fkey" FOREIGN KEY ("obsid_start") REFERENCES "hera_obs" ("obsid"),
	 CONSTRAINT "rtp_task_multiple_track_obsid_fkey" FOREIGN KEY ("obsid") REFERENCES "hera_obs" ("obsid")
);

CREATE TABLE "rtp_task_multiple_resource_record" (
	"obsid_start" BIGINT,
	"task_name" TEXT,
	"start_time" BIGINT,
	"stop_time" BIGINT,
	"max_memory" DOUBLE PRECISION,
	"avg_cpu_load" DOUBLE PRECISION,
	 PRIMARY KEY ("obsid_start","task_name"),
	 CONSTRAINT "rtp_task_multiple_resource_record_obsid_start_fkey" FOREIGN KEY ("obsid_start") REFERENCES "hera_obs" ("obsid")
);

CREATE TABLE "rtp_task_multiple_jobid" (
	"obsid_start" BIGINT,
	"task_name" TEXT,
	"start_time" BIGINT,
	"job_id" BIGINT,
	 PRIMARY KEY ("obsid_start","task_name","start_time"),
	 CONSTRAINT "rtp_task_multiple_jobid_obsid_start_fkey" FOREIGN KEY ("obsid_start") REFERENCES "hera_obs" ("obsid")
);

CREATE TABLE "rtp_task_jobid" (
	"obsid" BIGINT,
	"task_name" TEXT,
	"start_time" BIGINT,
	"job_id" BIGINT,
	 PRIMARY KEY ("obsid","task_name","start_time"),
	 CONSTRAINT "rtp_task_jobid_obsid_fkey" FOREIGN KEY ("obsid") REFERENCES "hera_obs" ("obsid")
);

CREATE TABLE "rtp_process_record" (
	"time" BIGINT,
	"obsid" BIGINT,
	"pipeline_list" TEXT,
	"rtp_git_version" CHARACTER VARYING,
	"rtp_git_hash" CHARACTER VARYING,
	"hera_cal_git_hash" CHARACTER VARYING,
	"hera_cal_git_version" CHARACTER VARYING,
	"hera_qm_git_hash" CHARACTER VARYING,
	"hera_qm_git_version" CHARACTER VARYING,
	"pyuvdata_git_hash" CHARACTER VARYING,
	"pyuvdata_git_version" CHARACTER VARYING,
	 PRIMARY KEY ("time","obsid"),
	 CONSTRAINT "rtp_process_record_obsid_fkey" FOREIGN KEY ("obsid") REFERENCES "hera_obs" ("obsid")
);

CREATE TABLE "rtp_process_event" (
	"time" BIGINT,
	"obsid" BIGINT,
	"event" ENUM,
	 PRIMARY KEY ("time","obsid"),
	 CONSTRAINT "rtp_process_event_obsid_fkey" FOREIGN KEY ("obsid") REFERENCES "hera_obs" ("obsid")
);

CREATE TABLE "rtp_launch_record" (
	"obsid" BIGINT,
	"submitted_time" BIGINT,
	"rtp_attempts" BIGINT,
	"jd" BIGINT,
	"obs_tag" CHARACTER VARYING,
	"filename" CHARACTER VARYING,
	"prefix" CHARACTER VARYING,
	 PRIMARY KEY ("obsid"),
	 CONSTRAINT "rtp_launch_record_obsid_fkey" FOREIGN KEY ("obsid") REFERENCES "hera_obs" ("obsid")
);

CREATE TABLE "lib_files" (
	"filename" CHARACTER VARYING,
	"obsid" BIGINT,
	"time" BIGINT,
	"size_gb" DOUBLE PRECISION,
	 PRIMARY KEY ("filename"),
	 CONSTRAINT "lib_files_obsid_fkey" FOREIGN KEY ("obsid") REFERENCES "hera_obs" ("obsid")
);

CREATE TABLE "array_metrics" (
	"obsid" BIGINT,
	"metric" CHARACTER VARYING,
	"mc_time" BIGINT,
	"val" DOUBLE PRECISION,
	 PRIMARY KEY ("obsid","metric"),
	 CONSTRAINT "array_metrics_metric_fkey" FOREIGN KEY ("metric") REFERENCES "metric_list" ("metric"),
	 CONSTRAINT "array_metrics_obsid_fkey" FOREIGN KEY ("obsid") REFERENCES "hera_obs" ("obsid")
);

CREATE TABLE "ant_metrics" (
	"obsid" BIGINT,
	"ant" INTEGER,
	"pol" CHARACTER VARYING,
	"metric" CHARACTER VARYING,
	"mc_time" BIGINT,
	"val" DOUBLE PRECISION,
	 PRIMARY KEY ("obsid","ant","pol","metric"),
	 CONSTRAINT "ant_metrics_obsid_fkey" FOREIGN KEY ("obsid") REFERENCES "hera_obs" ("obsid"),
	 CONSTRAINT "ant_metrics_metric_fkey" FOREIGN KEY ("metric") REFERENCES "metric_list" ("metric")
);

CREATE TABLE "hera_autos" (
	"time" BIGINT,
	"antenna_number" INTEGER,
	"antenna_feed_pol" CHARACTER VARYING,
	"measurement_type" CHARACTER VARYING,
	"value" DOUBLE PRECISION,
	 PRIMARY KEY ("time","antenna_number","antenna_feed_pol")
);

CREATE TABLE "dubitable" (
	"start_gpstime" BIGINT,
	"stop_gpstime" BIGINT,
	"ant_list" TEXT,
	 PRIMARY KEY ("start_gpstime")
);

CREATE TABLE "daemon_status" (
	"name" CHARACTER VARYING,
	"hostname" CHARACTER VARYING,
	"jd" BIGINT,
	"time" BIGINT,
	"status" CHARACTER VARYING,
	 PRIMARY KEY ("name","hostname","jd")
);

CREATE TABLE "correlator_software_versions" (
	"time" BIGINT,
	"package" CHARACTER VARYING,
	"version" CHARACTER VARYING,
	 PRIMARY KEY ("time","package")
);

CREATE TABLE "correlator_control_state" (
	"time" BIGINT,
	"state_type" CHARACTER VARYING,
	"state" BOOLEAN,
	 PRIMARY KEY ("time","state_type")
);

CREATE TABLE "correlator_control_command" (
	"time" BIGINT,
	"command" CHARACTER VARYING,
	 PRIMARY KEY ("time","command")
);

CREATE TABLE "correlator_take_data_arguments" (
	"time" BIGINT,
	"command" CHARACTER VARYING,
	"starttime_sec" BIGINT,
	"starttime_ms" INTEGER,
	"duration" DOUBLE PRECISION,
	"acclen_spectra" INTEGER,
	"integration_time" DOUBLE PRECISION,
	"tag" CHARACTER VARYING,
	 PRIMARY KEY ("time","command"),
	 CONSTRAINT "correlator_take_data_arguments_time_command_fkey" FOREIGN KEY ("time","command") REFERENCES "correlator_control_command" ("time","command")
);

CREATE TABLE "correlator_config_file" (
	"config_hash" CHARACTER VARYING,
	"filename" CHARACTER VARYING,
	 PRIMARY KEY ("config_hash")
);

CREATE TABLE "snap_config_version" (
	"init_time" BIGINT,
	"version" CHARACTER VARYING,
	"init_args" CHARACTER VARYING,
	"config_hash" CHARACTER VARYING,
	 PRIMARY KEY ("init_time"),
	 CONSTRAINT "snap_config_version_config_hash_fkey" FOREIGN KEY ("config_hash") REFERENCES "correlator_config_file" ("config_hash")
);

CREATE TABLE "correlator_config_status" (
	"time" BIGINT,
	"config_hash" CHARACTER VARYING,
	 PRIMARY KEY ("time"),
	 CONSTRAINT "correlator_config_status_config_hash_fkey" FOREIGN KEY ("config_hash") REFERENCES "correlator_config_file" ("config_hash")
);

CREATE TABLE "correlator_config_phase_switch_index" (
	"config_hash" CHARACTER VARYING,
	"hostname" CHARACTER VARYING,
	"phase_switch_index" INTEGER,
	"antpol_index_position" INTEGER,
	 PRIMARY KEY ("config_hash","hostname","phase_switch_index"),
	 CONSTRAINT "correlator_config_phase_switch_index_config_hash_fkey" FOREIGN KEY ("config_hash") REFERENCES "correlator_config_file" ("config_hash")
);

CREATE TABLE "correlator_config_params" (
	"config_hash" CHARACTER VARYING,
	"parameter" CHARACTER VARYING,
	"value" CHARACTER VARYING,
	 PRIMARY KEY ("config_hash","parameter"),
	 CONSTRAINT "correlator_config_params_config_hash_fkey" FOREIGN KEY ("config_hash") REFERENCES "correlator_config_file" ("config_hash")
);

CREATE TABLE "correlator_config_input_index" (
	"config_hash" CHARACTER VARYING,
	"correlator_index" INTEGER,
	"hostname" CHARACTER VARYING,
	"antenna_index_position" INTEGER,
	 PRIMARY KEY ("config_hash","correlator_index"),
	 CONSTRAINT "correlator_config_input_index_config_hash_fkey" FOREIGN KEY ("config_hash") REFERENCES "correlator_config_file" ("config_hash")
);

CREATE TABLE "correlator_config_command" (
	"time" BIGINT,
	"command" CHARACTER VARYING,
	"config_hash" CHARACTER VARYING,
	 PRIMARY KEY ("time","command"),
	 CONSTRAINT "correlator_config_command_time_command_fkey" FOREIGN KEY ("time","command") REFERENCES "correlator_control_command" ("time","command"),
	 CONSTRAINT "correlator_config_command_config_hash_fkey" FOREIGN KEY ("config_hash") REFERENCES "correlator_config_file" ("config_hash")
);

CREATE TABLE "correlator_config_active_snap" (
	"config_hash" CHARACTER VARYING,
	"hostname" CHARACTER VARYING,
	 PRIMARY KEY ("config_hash","hostname"),
	 CONSTRAINT "correlator_config_active_snap_config_hash_fkey" FOREIGN KEY ("config_hash") REFERENCES "correlator_config_file" ("config_hash")
);

CREATE TABLE "cm_version" (
	"update_time" BIGINT,
	"git_hash" CHARACTER VARYING,
	 PRIMARY KEY ("update_time")
);

CREATE TABLE "autocorrelations" (
	"id" BIGINT,
	"time" TIMESTAMP,
	"antnum" INTEGER,
	"polarization" CHARACTER VARYING,
	"measurement_type" SMALLINT,
	"value" DOUBLE PRECISION,
	 PRIMARY KEY ("id")
);

CREATE TABLE "apriori_antenna" (
	"antenna" TEXT,
	"start_gpstime" BIGINT,
	"stop_gpstime" BIGINT,
	"status" TEXT,
	 PRIMARY KEY ("antenna","start_gpstime")
);

CREATE TABLE "antenna_status" (
	"time" BIGINT,
	"antenna_number" INTEGER,
	"antenna_feed_pol" CHARACTER VARYING,
	"snap_hostname" CHARACTER VARYING,
	"snap_channel_number" INTEGER,
	"adc_mean" DOUBLE PRECISION,
	"adc_rms" DOUBLE PRECISION,
	"adc_power" DOUBLE PRECISION,
	"pam_atten" INTEGER,
	"pam_power" DOUBLE PRECISION,
	"eq_coeffs" CHARACTER VARYING,
	"fem_current" DOUBLE PRECISION,
	"fem_id" CHARACTER VARYING,
	"fem_temp" DOUBLE PRECISION,
	"fem_voltage" DOUBLE PRECISION,
	"histogram" CHARACTER VARYING,
	"histogram_bin_centers" CHARACTER VARYING,
	"pam_current" DOUBLE PRECISION,
	"pam_id" CHARACTER VARYING,
	"pam_voltage" DOUBLE PRECISION,
	"fem_imu_phi" DOUBLE PRECISION,
	"fem_imu_theta" DOUBLE PRECISION,
	"fem_lna_power" BOOLEAN,
	"fem_switch" CHARACTER VARYING,
	"fft_overflow" BOOLEAN,
	 PRIMARY KEY ("time","antenna_number","antenna_feed_pol")
);

CREATE TABLE "alembic_version" (
	"version_num" CHARACTER VARYING,
	 PRIMARY KEY ("version_num")
);
