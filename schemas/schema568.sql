DROP DATABASE IF EXISTS "schema568";
CREATE DATABASE "schema568";
USE "schema568";
CREATE TABLE "playlist" (
	"playlist_id" INTEGER,
	"name" NVARCHAR,
	 PRIMARY KEY ("playlist_id")
);

CREATE TABLE "mediatype" (
	"mediatype_id" INTEGER,
	"name" NVARCHAR,
	 PRIMARY KEY ("mediatype_id")
);

CREATE TABLE "genre" (
	"genre_id" INTEGER,
	"name" NVARCHAR,
	 PRIMARY KEY ("genre_id")
);

CREATE TABLE "employee" (
	"employee_id" INTEGER,
	"lastname" NVARCHAR,
	"firstname" NVARCHAR,
	"title" NVARCHAR,
	"reportsto" INTEGER,
	"birthdate" DATETIME,
	"hiredate" DATETIME,
	"address" NVARCHAR,
	"city" NVARCHAR,
	"state" NVARCHAR,
	"country" NVARCHAR,
	"postalcode" NVARCHAR,
	"phone" NVARCHAR,
	"fax" NVARCHAR,
	"email" NVARCHAR,
	 PRIMARY KEY ("employee_id"),
	 CONSTRAINT "fkeycon_employee_to_employee" FOREIGN KEY ("reportsto") REFERENCES "employee" ("employee_id")
);

CREATE TABLE "customer" (
	"customer_id" INTEGER,
	"firstname" NVARCHAR,
	"lastname" NVARCHAR,
	"company" NVARCHAR,
	"address" NVARCHAR,
	"city" NVARCHAR,
	"state" NVARCHAR,
	"country" NVARCHAR,
	"postalcode" NVARCHAR,
	"phone" NVARCHAR,
	"fax" NVARCHAR,
	"email" NVARCHAR,
	"supportrep_id" INTEGER,
	 PRIMARY KEY ("customer_id"),
	 CONSTRAINT "fkeycon_customer_to_employee" FOREIGN KEY ("supportrep_id") REFERENCES "employee" ("employee_id")
);

CREATE TABLE "invoice" (
	"invoice_id" INTEGER,
	"customer_id" INTEGER,
	"invoicedate" DATETIME,
	"billingaddress" NVARCHAR,
	"billingcity" NVARCHAR,
	"billingstate" NVARCHAR,
	"billingcountry" NVARCHAR,
	"billingpostalcode" NVARCHAR,
	"total" NUMERIC,
	 PRIMARY KEY ("invoice_id"),
	 CONSTRAINT "fkeycon_invoice_to_customer" FOREIGN KEY ("customer_id") REFERENCES "customer" ("customer_id")
);

CREATE TABLE "artist" (
	"artist_id" INTEGER,
	"name" NVARCHAR,
	 PRIMARY KEY ("artist_id")
);

CREATE TABLE "album" (
	"album_id" INTEGER,
	"title" NVARCHAR,
	"artist_id" INTEGER,
	 PRIMARY KEY ("album_id"),
	 CONSTRAINT "fkeycon_album_to_artist" FOREIGN KEY ("artist_id") REFERENCES "artist" ("artist_id")
);

CREATE TABLE "track" (
	"track_id" INTEGER,
	"name" NVARCHAR,
	"album_id" INTEGER,
	"mediatype_id" INTEGER,
	"genre_id" INTEGER,
	"composer" NVARCHAR,
	"milliseconds" INTEGER,
	"bytes" INTEGER,
	"unitprice" NUMERIC,
	 PRIMARY KEY ("track_id"),
	 CONSTRAINT "fkeycon_track_to_genre" FOREIGN KEY ("genre_id") REFERENCES "genre" ("genre_id"),
	 CONSTRAINT "fkeycon_track_to_album" FOREIGN KEY ("album_id") REFERENCES "album" ("album_id"),
	 CONSTRAINT "fkeycon_track_to_mediatype" FOREIGN KEY ("mediatype_id") REFERENCES "mediatype" ("mediatype_id")
);

CREATE TABLE "invoiceline" (
	"invoiceline_id" INTEGER,
	"invoice_id" INTEGER,
	"track_id" INTEGER,
	"unitprice" NUMERIC,
	"quantity" INTEGER,
	 PRIMARY KEY ("invoiceline_id"),
	 CONSTRAINT "fkeycon_invoiceline_to_invoice" FOREIGN KEY ("invoice_id") REFERENCES "invoice" ("invoice_id"),
	 CONSTRAINT "fkeycon_invoiceline_to_track" FOREIGN KEY ("track_id") REFERENCES "track" ("track_id")
);

CREATE TABLE "playlisttrack" (
	"playlist_id" INTEGER,
	"track_id" INTEGER,
	 PRIMARY KEY ("playlist_id","track_id"),
	 CONSTRAINT "fkeycon_playlisttrack_to_playlist" FOREIGN KEY ("playlist_id") REFERENCES "playlist" ("playlist_id"),
	 CONSTRAINT "fkeycon_playlisttrack_to_track" FOREIGN KEY ("track_id") REFERENCES "track" ("track_id")
);
