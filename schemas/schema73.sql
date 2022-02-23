DROP DATABASE IF EXISTS "schema73";
CREATE DATABASE "schema73";
USE "schema73";
CREATE TABLE "nanoformulations" (
	"formulation_id" VARCHAR,
	"methodology" VARCHAR,
	"researcher_id" VARCHAR,
	"sample_id" VARCHAR,
	"notes" VARCHAR,
	"date" DATE
);

CREATE TABLE "experiment" (
	"experiment_id" VARCHAR,
	"primary_researcher_id" VARCHAR,
	"experiment_name" VARCHAR,
	"collaborator_id" VARCHAR,
	 PRIMARY KEY ("experiment_id")
);

CREATE TABLE "nanoprecipitation" (
	"formulation_id" VARCHAR,
	"methodology" VARCHAR,
	"researcher_id" VARCHAR,
	"sample_id" VARCHAR,
	"notes" VARCHAR,
	"date" DATE,
	"polymer" VARCHAR,
	"polymer_mass" INTEGER,
	"organic" VARCHAR,
	"np_loading" VARCHAR,
	"loading_mass" VARCHAR,
	"sink_volume" INTEGER,
	"sink" VARCHAR,
	"sink_percent" VARCHAR
);

CREATE TABLE "np_charc" (
	"charc_id" VARCHAR,
	"formulation_id" VARCHAR,
	"researcher_id" VARCHAR,
	"notes" VARCHAR,
	"size_measurement" VARCHAR,
	"size" NUMERIC,
	"size_sem" NUMERIC,
	"pdi" NUMERIC,
	"pdi_sem" NUMERIC,
	"zp" NUMERIC,
	"zp_sem" NUMERIC,
	"np_activity" VARCHAR,
	"supernatant_activity" VARCHAR,
	"polymer_retention" VARCHAR,
	 PRIMARY KEY ("charc_id")
);

CREATE TABLE "reverse_formulation" (
	"formulation_id" VARCHAR,
	"methodology" VARCHAR,
	"researcher_id" VARCHAR,
	"sample_id" VARCHAR,
	"notes" VARCHAR,
	"date" DATE,
	"polymer" VARCHAR,
	"surfactant" VARCHAR
);

CREATE TABLE "single_emulsion" (
	"formulation_id" VARCHAR,
	"methodology" VARCHAR,
	"researcher_id" VARCHAR,
	"sample_id" VARCHAR,
	"notes" VARCHAR,
	"date" DATE,
	"polymer" VARCHAR,
	"polymer_mass" NUMERIC,
	"np_loading" VARCHAR,
	"loading_mass" NUMERIC,
	"time" INTEGER,
	"amplitude" INTEGER,
	"as_volume" INTEGER,
	"aqueous_solution" VARCHAR,
	"as_percent" INTEGER,
	"sink_volume" INTEGER,
	"sink" VARCHAR,
	"sink_percent" VARCHAR,
	"polymer_ratio" VARCHAR
);

CREATE TABLE "pup_info" (
	"specimen_id" VARCHAR,
	"researcher_id" VARCHAR,
	"mother_id" VARCHAR,
	"pup_idnum" VARCHAR,
	"dob" DATE,
	"dos" DATE,
	"age" VARCHAR,
	"gender" VARCHAR,
	"weight" INTEGER,
	 PRIMARY KEY ("specimen_id")
);

CREATE TABLE "ldh_assay" (
	"bcharc_id" VARCHAR,
	"ex_id" VARCHAR,
	"specimen_id" VARCHAR,
	"formulation_id" VARCHAR,
	"researcher_id" VARCHAR,
	"date" DATE,
	"treatment" VARCHAR,
	"1h" VARCHAR,
	"2h" VARCHAR,
	"4h" VARCHAR,
	"8h" VARCHAR,
	"1d" VARCHAR,
	 PRIMARY KEY ("bcharc_id")
);

CREATE TABLE "researcher" (
	"researcher_id" VARCHAR,
	"collaborator_id" VARCHAR,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"education_level" VARCHAR,
	 PRIMARY KEY ("researcher_id")
);

CREATE TABLE "collaborator" (
	"collab_id" VARCHAR,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"institution" VARCHAR,
	"education_level" VARCHAR,
	 PRIMARY KEY ("collab_id")
);

CREATE TABLE "double_emulsion" (
	"formulation_id" VARCHAR,
	"methodology" VARCHAR,
	"researcher_id" VARCHAR,
	"sample_id" VARCHAR,
	"notes" VARCHAR,
	"date" DATE,
	"polymer" VARCHAR,
	"polymer_mass" INTEGER,
	"np_loading" VARCHAR,
	"loading_mass" INTEGER,
	"time_1" INTEGER,
	"amplitude_1" INTEGER,
	"time_2" INTEGER,
	"amplitude_2" INTEGER,
	"as_volume1" NUMERIC,
	"aqueous_solution1" VARCHAR,
	"as_percent1" INTEGER,
	"as_volume2" INTEGER,
	"aqueous_solution2" VARCHAR,
	"as_percent2" INTEGER,
	"sink_volume" INTEGER,
	"sink" VARCHAR,
	"sink_percent" VARCHAR
);
