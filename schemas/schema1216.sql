DROP DATABASE IF EXISTS "schema1216";
CREATE DATABASE "schema1216";
USE "schema1216";
CREATE TABLE "userlayouts" (
	"id" INT,
	"user_id" INT,
	"layout_name" VARCHAR,
	"layout" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "notificationssent" (
	"rule_id" SMALLINT,
	"time" INT
);

CREATE TABLE "notificationschedules" (
	"id" MEDIUMINT,
	"day" VARCHAR,
	"s_hr" TINYINT,
	"s_min" TINYINT,
	"e_hr" TINYINT,
	"e_min" TINYINT,
	"cameras" VARCHAR,
	"users" VARCHAR,
	"nlimit" MEDIUMINT,
	"disabled" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "webhooks" (
	"id" SMALLINT,
	"label" VARCHAR,
	"url" VARCHAR,
	"events" VARCHAR,
	"cameras" VARCHAR,
	"status" TINYINT,
	"last_update" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "ipptzcommandpresets" (
	"id" INT,
	"name" VARCHAR,
	"driver" VARCHAR,
	"mright" VARCHAR,
	"mleft" VARCHAR,
	"up" VARCHAR,
	"down" VARCHAR,
	"up_right" VARCHAR,
	"up_left" VARCHAR,
	"down_right" VARCHAR,
	"down_left" VARCHAR,
	"wide" VARCHAR,
	"tight" VARCHAR,
	"focus_in" VARCHAR,
	"focus_out" VARCHAR,
	"preset_save" VARCHAR,
	"preset_go" VARCHAR,
	"stop" VARCHAR,
	"stop_zoom" VARCHAR,
	"needs_stop" TINYINT,
	"http_auth" TINYINT,
	"custom" TINYINT,
	"port" VARCHAR,
	"protocol" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" INT,
	"username" VARCHAR,
	"password" VARCHAR,
	"salt" CHAR,
	"name" VARCHAR,
	"email" VARCHAR,
	"phone" VARCHAR,
	"notes" VARCHAR,
	"access_setup" TINYINT,
	"access_remote" TINYINT,
	"access_web" TINYINT,
	"access_backup" TINYINT,
	"access_relay" TINYINT,
	"access_device_list" VARCHAR,
	"access_ptz_list" VARCHAR,
	"access_schedule" VARCHAR,
	"change_password" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "tagnames" (
	"id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "storage" (
	"priority" INT,
	"path" VARCHAR,
	"max_thresh" DECIMAL,
	"min_thresh" DECIMAL,
	 PRIMARY KEY ("priority")
);

CREATE TABLE "serverstatus" (
	"pid" INT,
	"timestamp" INT,
	"message" TEXT
);

CREATE TABLE "hlsauthtokens" (
	"user_id" INT,
	"token" VARCHAR,
	"date" TIMESTAMP
);

CREATE TABLE "rtspauthtokens" (
	"user_id" INT,
	"token" VARCHAR,
	"date" TIMESTAMP
);

CREATE TABLE "licenses" (
	"license" VARCHAR,
	"authorization" VARCHAR,
	"added" INT,
	 PRIMARY KEY ("license")
);

CREATE TABLE "globalsettings" (
	"parameter" VARCHAR,
	"value" VARCHAR,
	 PRIMARY KEY ("parameter")
);

CREATE TABLE "eventtypessys" (
	"id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "eventtypescam" (
	"id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "eventtags" (
	"id" INT,
	"time" INT,
	"event_id" INT,
	"tag_id" VARCHAR,
	"user_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "eventlevels" (
	"id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "eventssystem" (
	"id" INT,
	"time" INT,
	"level_id" VARCHAR,
	"type_id" VARCHAR,
	"more" VARCHAR,
	"details" TEXT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "EventsSystem_ibfk_1" FOREIGN KEY ("level_id") REFERENCES "eventlevels" ("id"),
	 CONSTRAINT "EventsSystem_ibfk_2" FOREIGN KEY ("type_id") REFERENCES "eventtypessys" ("id")
);

CREATE TABLE "eventcomments" (
	"id" INT,
	"time" INT,
	"event_id" INT,
	"user_id" INT,
	"comment" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "devices" (
	"id" INT,
	"device_name" VARCHAR,
	"protocol" VARCHAR,
	"device" VARBINARY,
	"driver" VARCHAR,
	"rtsp_username" VARBINARY,
	"rtsp_password" VARBINARY,
	"rtsp_rtp_prefer_tcp" TINYINT,
	"mjpeg_path" VARBINARY,
	"onvif_port" MEDIUMINT,
	"ptz_control_path" VARBINARY,
	"ptz_control_protocol" VARCHAR,
	"ptz_serial_values" VARCHAR,
	"resolutionx" SMALLINT,
	"resolutiony" SMALLINT,
	"model" VARCHAR,
	"channel" INT,
	"invert" TINYINT,
	"audio_volume" SMALLINT,
	"saturation" SMALLINT,
	"brightness" SMALLINT,
	"hue" SMALLINT,
	"contrast" SMALLINT,
	"video_quality" SMALLINT,
	"video_interval" SMALLINT,
	"signal_type" VARCHAR,
	"buffer_prerecording" SMALLINT,
	"buffer_postrecording" SMALLINT,
	"motion_map" VARCHAR,
	"motion_algorithm" TINYINT,
	"frame_downscale_factor" DECIMAL,
	"min_motion_area" SMALLINT,
	"max_motion_area" SMALLINT,
	"motion_analysis_ssw_length" INT,
	"motion_analysis_percentage" INT,
	"schedule" VARCHAR,
	"schedule_override_global" TINYINT,
	"disabled" TINYINT,
	"audio_disabled" TINYINT,
	"debug_level" TINYINT,
	"reencode_livestream" TINYINT,
	"reencode_bitrate" INT,
	"reencode_frame_width" SMALLINT,
	"reencode_frame_height" SMALLINT,
	"substream_mode" TINYINT,
	"substream_path" VARCHAR,
	"onvif_events_enabled" TINYINT,
	"min_motion_frames" SMALLINT,
	"max_motion_frames" SMALLINT,
	"motion_blend_ratio" SMALLINT,
	"motion_debug" TINYINT,
	"hls_segment_duration" DECIMAL,
	"hls_segment_size" INT,
	"hls_window_size" SMALLINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "ptzpresets" (
	"id" INT,
	"device_id" INT,
	"preset_id" INT,
	"preset_name" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "PTZPresets_ibfk_1" FOREIGN KEY ("device_id") REFERENCES "devices" ("id")
);

CREATE TABLE "onvifevents" (
	"id" INT,
	"device_id" INT,
	"event_time" DATETIME,
	"onvif_topic" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "OnvifEvents_ibfk_1" FOREIGN KEY ("device_id") REFERENCES "devices" ("id")
);

CREATE TABLE "media" (
	"id" INT,
	"start" INT,
	"end" INT,
	"size" INT,
	"device_id" INT,
	"filepath" VARCHAR,
	"archive" TINYINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "Media_ibfk_1" FOREIGN KEY ("device_id") REFERENCES "devices" ("id")
);

CREATE TABLE "eventscam" (
	"id" INT,
	"time" INT,
	"level_id" VARCHAR,
	"device_id" INT,
	"type_id" VARCHAR,
	"length" INT,
	"archive" TINYINT,
	"media_id" INT,
	"details" TEXT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "EventsCam_ibfk_3" FOREIGN KEY ("device_id") REFERENCES "devices" ("id"),
	 CONSTRAINT "EventsCam_ibfk_4" FOREIGN KEY ("type_id") REFERENCES "eventtypescam" ("id"),
	 CONSTRAINT "EventsCam_ibfk_2" FOREIGN KEY ("level_id") REFERENCES "eventlevels" ("id")
);

CREATE TABLE "availablesources" (
	"id" INT,
	"device" VARCHAR,
	"driver" VARCHAR,
	"card_id" VARCHAR,
	"video_type" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "activeusers" (
	"id" INT,
	"ip" VARCHAR,
	"from_client" TINYINT,
	"time" INT,
	"kick" TINYINT
);
