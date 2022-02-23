DROP DATABASE IF EXISTS "schema1095";
CREATE DATABASE "schema1095";
USE "schema1095";
CREATE TABLE "birds_data_raw" (
	"collection_num" INT,
	"birdid" INT,
	"sex" INT,
	"agey" FLOAT,
	"ageclass" VARCHAR,
	"birthfpid" INT,
	"u_plateid" INT,
	"rtl" FLOAT,
	"technician" INT,
	"terr" FLOAT,
	"fpid" INT,
	"mum" INT,
	"dad" INT,
	"mac" FLOAT,
	"pac" FLOAT,
	"brf" INT,
	"brm" INT,
	 PRIMARY KEY ("collection_num")
);

CREATE TABLE "dad_vs_age" (
	"dad" INT,
	"average_rtl" FLOAT,
	"average_age" FLOAT,
	 PRIMARY KEY ("dad"),
	 CONSTRAINT "fk_Dad_vs_Age_Dad" FOREIGN KEY ("dad") REFERENCES "birds_data_raw" ("dad")
);

CREATE TABLE "mum_vs_age" (
	"mum" INT,
	"average_rtl" FLOAT,
	"average_age" FLOAT,
	 PRIMARY KEY ("mum"),
	 CONSTRAINT "fk_Mum_vs_Age_Mum" FOREIGN KEY ("mum") REFERENCES "birds_data_raw" ("mum")
);

CREATE TABLE "bird_territory_data" (
	"birdid" INT,
	"sex" INT,
	"age" FLOAT,
	"rtl" FLOAT,
	"territory" INT,
	"dominant_female" INT,
	"dominant_male" INT,
	 PRIMARY KEY ("birdid"),
	 CONSTRAINT "fk_Bird_Territory_Data_BirdID" FOREIGN KEY ("birdid") REFERENCES "birds_data_raw" ("birdid")
);

CREATE TABLE "dominant_male_vs_age" (
	"dominant_male" INT,
	"average_rtl" FLOAT,
	"average_age" FLOAT,
	 PRIMARY KEY ("dominant_male"),
	 CONSTRAINT "fk_Dominant_Male_vs_Age_Dominant_Male" FOREIGN KEY ("dominant_male") REFERENCES "bird_territory_data" ("dominant_male")
);

CREATE TABLE "dominant_female_vs_age" (
	"dominant_female" INT,
	"average_rtl" FLOAT,
	"average_age" FLOAT,
	 PRIMARY KEY ("dominant_female"),
	 CONSTRAINT "fk_Dominant_Female_vs_Age_Dominant_Female" FOREIGN KEY ("dominant_female") REFERENCES "bird_territory_data" ("dominant_female")
);

CREATE TABLE "territory_vs_age" (
	"territory" INT,
	"average_rtl" FLOAT,
	"average_age" FLOAT,
	 PRIMARY KEY ("territory"),
	 CONSTRAINT "fk_Territory_vs_Age_Territory" FOREIGN KEY ("territory") REFERENCES "bird_territory_data" ("territory")
);

CREATE TABLE "bird_age_vs_telo" (
	"bird id" INT,
	"age" FLOAT,
	"rtl" FLOAT,
	 PRIMARY KEY ("bird id"),
	 CONSTRAINT "fk_Bird_Age_Vs_Telo_Bird ID" FOREIGN KEY ("bird id") REFERENCES "birds_data_raw" ("birdid")
);
