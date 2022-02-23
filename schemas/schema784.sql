DROP DATABASE IF EXISTS "schema784";
CREATE DATABASE "schema784";
USE "schema784";
CREATE TABLE "oxwrapping" (
	"oxid" CHAR,
	"oxshopid" INT,
	"oxactive" TINYINT,
	"oxactive_1" TINYINT,
	"oxactive_2" TINYINT,
	"oxactive_3" TINYINT,
	"oxtype" VARCHAR,
	"oxname" VARCHAR,
	"oxname_1" VARCHAR,
	"oxname_2" VARCHAR,
	"oxname_3" VARCHAR,
	"oxpic" VARCHAR,
	"oxprice" DOUBLE,
	"oxtimestamp" TIMESTAMP,
	 PRIMARY KEY ("oxid")
);

CREATE TABLE "oxvoucherseries" (
	"oxid" CHAR,
	"oxshopid" INT,
	"oxserienr" VARCHAR,
	"oxseriedescription" VARCHAR,
	"oxdiscount" FLOAT,
	"oxdiscounttype" ENUM,
	"oxbegindate" DATETIME,
	"oxenddate" DATETIME,
	"oxallowsameseries" TINYINT,
	"oxallowotherseries" TINYINT,
	"oxallowuseanother" TINYINT,
	"oxminimumvalue" FLOAT,
	"oxcalculateonce" TINYINT,
	"oxtimestamp" TIMESTAMP,
	 PRIMARY KEY ("oxid")
);

CREATE TABLE "oxvouchers" (
	"oxdateused" DATE,
	"oxorderid" CHAR,
	"oxuserid" CHAR,
	"oxreserved" INT,
	"oxvouchernr" VARCHAR,
	"oxvoucherserieid" CHAR,
	"oxdiscount" FLOAT,
	"oxid" CHAR,
	"oxtimestamp" TIMESTAMP,
	 PRIMARY KEY ("oxid")
);

CREATE TABLE "oxvendor" (
	"oxid" CHAR,
	"oxshopid" INT,
	"oxactive" TINYINT,
	"oxicon" VARCHAR,
	"oxtitle" VARCHAR,
	"oxshortdesc" VARCHAR,
	"oxtitle_1" VARCHAR,
	"oxshortdesc_1" VARCHAR,
	"oxtitle_2" VARCHAR,
	"oxshortdesc_2" VARCHAR,
	"oxtitle_3" VARCHAR,
	"oxshortdesc_3" VARCHAR,
	"oxshowsuffix" TINYINT,
	"oxtimestamp" TIMESTAMP,
	 PRIMARY KEY ("oxid")
);

CREATE TABLE "oxuserpayments" (
	"oxid" CHAR,
	"oxuserid" CHAR,
	"oxpaymentsid" CHAR,
	"oxvalue" BLOB,
	"oxtimestamp" TIMESTAMP,
	 PRIMARY KEY ("oxid")
);

CREATE TABLE "oxuserbasketitems" (
	"oxid" CHAR,
	"oxbasketid" CHAR,
	"oxartid" CHAR,
	"oxamount" CHAR,
	"oxsellist" VARCHAR,
	"oxpersparam" TEXT,
	"oxtimestamp" TIMESTAMP,
	 PRIMARY KEY ("oxid")
);

CREATE TABLE "oxuserbaskets" (
	"oxid" CHAR,
	"oxuserid" CHAR,
	"oxtitle" VARCHAR,
	"oxtimestamp" TIMESTAMP,
	"oxpublic" TINYINT,
	"oxupdate" INT,
	 PRIMARY KEY ("oxid")
);

CREATE TABLE "oxuser" (
	"oxid" CHAR,
	"oxactive" TINYINT,
	"oxrights" CHAR,
	"oxshopid" INT,
	"oxusername" VARCHAR,
	"oxpassword" VARCHAR,
	"oxpasssalt" CHAR,
	"oxcustnr" INT,
	"oxustid" VARCHAR,
	"oxcompany" VARCHAR,
	"oxfname" VARCHAR,
	"oxlname" VARCHAR,
	"oxstreet" VARCHAR,
	"oxstreetnr" VARCHAR,
	"oxaddinfo" VARCHAR,
	"oxcity" VARCHAR,
	"oxcountryid" CHAR,
	"oxstateid" VARCHAR,
	"oxzip" VARCHAR,
	"oxfon" VARCHAR,
	"oxfax" VARCHAR,
	"oxsal" VARCHAR,
	"oxboni" INT,
	"oxcreate" DATETIME,
	"oxregister" DATETIME,
	"oxprivfon" VARCHAR,
	"oxmobfon" VARCHAR,
	"oxbirthdate" DATE,
	"oxurl" VARCHAR,
	"oxupdatekey" VARCHAR,
	"oxupdateexp" INT,
	"oxpoints" DOUBLE,
	"oxtimestamp" TIMESTAMP,
	 PRIMARY KEY ("oxid")
);

CREATE TABLE "oxtplblocks" (
	"oxid" CHAR,
	"oxactive" TINYINT,
	"oxshopid" INT,
	"oxtheme" CHAR,
	"oxtemplate" CHAR,
	"oxblockname" CHAR,
	"oxpos" INT,
	"oxfile" CHAR,
	"oxmodule" CHAR,
	"oxtimestamp" TIMESTAMP,
	 PRIMARY KEY ("oxid")
);

CREATE TABLE "oxstates" (
	"oxid" CHAR,
	"oxcountryid" CHAR,
	"oxtitle" CHAR,
	"oxisoalpha2" CHAR,
	"oxtitle_1" CHAR,
	"oxtitle_2" CHAR,
	"oxtitle_3" CHAR,
	"oxtimestamp" TIMESTAMP,
	 PRIMARY KEY ("oxid","oxcountryid")
);

CREATE TABLE "oxshops" (
	"oxid" INT,
	"oxactive" TINYINT,
	"oxproductive" TINYINT,
	"oxdefcurrency" VARCHAR,
	"oxdeflanguage" INT,
	"oxname" VARCHAR,
	"oxtitleprefix" VARCHAR,
	"oxtitleprefix_1" VARCHAR,
	"oxtitleprefix_2" VARCHAR,
	"oxtitleprefix_3" VARCHAR,
	"oxtitlesuffix" VARCHAR,
	"oxtitlesuffix_1" VARCHAR,
	"oxtitlesuffix_2" VARCHAR,
	"oxtitlesuffix_3" VARCHAR,
	"oxstarttitle" VARCHAR,
	"oxstarttitle_1" VARCHAR,
	"oxstarttitle_2" VARCHAR,
	"oxstarttitle_3" VARCHAR,
	"oxinfoemail" VARCHAR,
	"oxorderemail" VARCHAR,
	"oxowneremail" VARCHAR,
	"oxordersubject" VARCHAR,
	"oxregistersubject" VARCHAR,
	"oxforgotpwdsubject" VARCHAR,
	"oxsendednowsubject" VARCHAR,
	"oxordersubject_1" VARCHAR,
	"oxregistersubject_1" VARCHAR,
	"oxforgotpwdsubject_1" VARCHAR,
	"oxsendednowsubject_1" VARCHAR,
	"oxordersubject_2" VARCHAR,
	"oxregistersubject_2" VARCHAR,
	"oxforgotpwdsubject_2" VARCHAR,
	"oxsendednowsubject_2" VARCHAR,
	"oxordersubject_3" VARCHAR,
	"oxregistersubject_3" VARCHAR,
	"oxforgotpwdsubject_3" VARCHAR,
	"oxsendednowsubject_3" VARCHAR,
	"oxsmtp" VARCHAR,
	"oxsmtpuser" VARCHAR,
	"oxsmtppwd" VARCHAR,
	"oxcompany" VARCHAR,
	"oxstreet" VARCHAR,
	"oxzip" VARCHAR,
	"oxcity" VARCHAR,
	"oxcountry" VARCHAR,
	"oxbankname" VARCHAR,
	"oxbanknumber" VARCHAR,
	"oxbankcode" VARCHAR,
	"oxvatnumber" VARCHAR,
	"oxtaxnumber" VARCHAR,
	"oxbiccode" VARCHAR,
	"oxibannumber" VARCHAR,
	"oxfname" VARCHAR,
	"oxlname" VARCHAR,
	"oxtelefon" VARCHAR,
	"oxtelefax" VARCHAR,
	"oxurl" VARCHAR,
	"oxdefcat" CHAR,
	"oxhrbnr" VARCHAR,
	"oxcourt" VARCHAR,
	"oxadbutlerid" VARCHAR,
	"oxaffilinetid" VARCHAR,
	"oxsuperclicksid" VARCHAR,
	"oxaffiliweltid" VARCHAR,
	"oxaffili24id" VARCHAR,
	"oxedition" CHAR,
	"oxversion" CHAR,
	"oxseoactive" TINYINT,
	"oxseoactive_1" TINYINT,
	"oxseoactive_2" TINYINT,
	"oxseoactive_3" TINYINT,
	"oxtimestamp" TIMESTAMP,
	 PRIMARY KEY ("oxid")
);

CREATE TABLE "oxseologs" (
	"oxstdurl" TEXT,
	"oxident" CHAR,
	"oxshopid" INT,
	"oxlang" INT,
	"oxtimestamp" TIMESTAMP,
	 PRIMARY KEY ("oxident","oxshopid","oxlang")
);

CREATE TABLE "oxseohistory" (
	"oxobjectid" CHAR,
	"oxident" CHAR,
	"oxshopid" INT,
	"oxlang" INT,
	"oxhits" BIGINT,
	"oxinsert" TIMESTAMP,
	"oxtimestamp" TIMESTAMP,
	 PRIMARY KEY ("oxident","oxshopid","oxlang")
);

CREATE TABLE "oxseo" (
	"oxobjectid" CHAR,
	"oxident" CHAR,
	"oxshopid" INT,
	"oxlang" INT,
	"oxstdurl" VARCHAR,
	"oxseourl" VARCHAR,
	"oxtype" ENUM,
	"oxfixed" TINYINT,
	"oxexpired" TINYINT,
	"oxparams" CHAR,
	"oxtimestamp" TIMESTAMP,
	 PRIMARY KEY ("oxident","oxshopid","oxlang")
);

CREATE TABLE "oxselectlist" (
	"oxid" CHAR,
	"oxshopid" INT,
	"oxtitle" VARCHAR,
	"oxident" VARCHAR,
	"oxvaldesc" TEXT,
	"oxtitle_1" VARCHAR,
	"oxvaldesc_1" TEXT,
	"oxtitle_2" VARCHAR,
	"oxvaldesc_2" TEXT,
	"oxtitle_3" VARCHAR,
	"oxvaldesc_3" TEXT,
	"oxtimestamp" TIMESTAMP,
	 PRIMARY KEY ("oxid")
);

CREATE TABLE "oxreviews" (
	"oxid" CHAR,
	"oxactive" TINYINT,
	"oxobjectid" CHAR,
	"oxtype" ENUM,
	"oxtext" TEXT,
	"oxuserid" CHAR,
	"oxcreate" DATETIME,
	"oxlang" TINYINT,
	"oxrating" INT,
	"oxtimestamp" TIMESTAMP,
	 PRIMARY KEY ("oxid")
);

CREATE TABLE "oxremark" (
	"oxid" CHAR,
	"oxparentid" CHAR,
	"oxtype" ENUM,
	"oxheader" VARCHAR,
	"oxtext" TEXT,
	"oxcreate" DATETIME,
	"oxtimestamp" TIMESTAMP,
	 PRIMARY KEY ("oxid")
);

CREATE TABLE "oxrecommlists" (
	"oxid" CHAR,
	"oxshopid" INT,
	"oxuserid" CHAR,
	"oxauthor" VARCHAR,
	"oxtitle" VARCHAR,
	"oxdesc" TEXT,
	"oxratingcnt" INT,
	"oxrating" DOUBLE,
	"oxtimestamp" TIMESTAMP,
	 PRIMARY KEY ("oxid")
);

CREATE TABLE "oxratings" (
	"oxid" CHAR,
	"oxshopid" INT,
	"oxuserid" CHAR,
	"oxtype" ENUM,
	"oxobjectid" CHAR,
	"oxrating" INT,
	"oxtimestamp" TIMESTAMP,
	 PRIMARY KEY ("oxid")
);

CREATE TABLE "oxpricealarm" (
	"oxid" CHAR,
	"oxshopid" INT,
	"oxuserid" CHAR,
	"oxemail" VARCHAR,
	"oxartid" CHAR,
	"oxprice" DOUBLE,
	"oxcurrency" VARCHAR,
	"oxlang" INT,
	"oxinsert" DATETIME,
	"oxsended" DATETIME,
	"oxtimestamp" TIMESTAMP,
	 PRIMARY KEY ("oxid")
);

CREATE TABLE "oxprice2article" (
	"oxid" CHAR,
	"oxshopid" INT,
	"oxartid" CHAR,
	"oxaddabs" DOUBLE,
	"oxaddperc" DOUBLE,
	"oxamount" DOUBLE,
	"oxamountto" DOUBLE,
	"oxtimestamp" TIMESTAMP,
	 PRIMARY KEY ("oxid")
);

CREATE TABLE "oxpayments" (
	"oxid" CHAR,
	"oxactive" TINYINT,
	"oxdesc" VARCHAR,
	"oxaddsum" DOUBLE,
	"oxaddsumtype" ENUM,
	"oxaddsumrules" INT,
	"oxfromboni" INT,
	"oxfromamount" DOUBLE,
	"oxtoamount" DOUBLE,
	"oxvaldesc" TEXT,
	"oxchecked" TINYINT,
	"oxdesc_1" VARCHAR,
	"oxvaldesc_1" TEXT,
	"oxdesc_2" VARCHAR,
	"oxvaldesc_2" TEXT,
	"oxdesc_3" VARCHAR,
	"oxvaldesc_3" TEXT,
	"oxlongdesc" TEXT,
	"oxlongdesc_1" TEXT,
	"oxlongdesc_2" TEXT,
	"oxlongdesc_3" TEXT,
	"oxsort" INT,
	"oxtimestamp" TIMESTAMP,
	 PRIMARY KEY ("oxid")
);

CREATE TABLE "oxorderfiles" (
	"oxid" CHAR,
	"oxorderid" CHAR,
	"oxfilename" VARCHAR,
	"oxfileid" CHAR,
	"oxshopid" INT,
	"oxorderarticleid" CHAR,
	"oxfirstdownload" TIMESTAMP,
	"oxlastdownload" TIMESTAMP,
	"oxdownloadcount" INT,
	"oxmaxdownloadcount" INT,
	"oxdownloadexpirationtime" INT,
	"oxlinkexpirationtime" INT,
	"oxresetcount" INT,
	"oxvaliduntil" DATETIME,
	"oxtimestamp" TIMESTAMP,
	 PRIMARY KEY ("oxid")
);

CREATE TABLE "oxorderarticles" (
	"oxid" CHAR,
	"oxorderid" CHAR,
	"oxamount" DOUBLE,
	"oxartid" CHAR,
	"oxartnum" VARCHAR,
	"oxtitle" VARCHAR,
	"oxshortdesc" VARCHAR,
	"oxselvariant" VARCHAR,
	"oxnetprice" DOUBLE,
	"oxbrutprice" DOUBLE,
	"oxvatprice" DOUBLE,
	"oxvat" DOUBLE,
	"oxpersparam" TEXT,
	"oxprice" DOUBLE,
	"oxbprice" DOUBLE,
	"oxnprice" DOUBLE,
	"oxwrapid" VARCHAR,
	"oxexturl" VARCHAR,
	"oxurldesc" VARCHAR,
	"oxurlimg" VARCHAR,
	"oxthumb" VARCHAR,
	"oxpic1" VARCHAR,
	"oxpic2" VARCHAR,
	"oxpic3" VARCHAR,
	"oxpic4" VARCHAR,
	"oxpic5" VARCHAR,
	"oxweight" DOUBLE,
	"oxstock" DOUBLE,
	"oxdelivery" DATE,
	"oxinsert" DATE,
	"oxtimestamp" TIMESTAMP,
	"oxlength" DOUBLE,
	"oxwidth" DOUBLE,
	"oxheight" DOUBLE,
	"oxfile" VARCHAR,
	"oxsearchkeys" VARCHAR,
	"oxtemplate" VARCHAR,
	"oxquestionemail" VARCHAR,
	"oxissearch" TINYINT,
	"oxfolder" VARCHAR,
	"oxsubclass" VARCHAR,
	"oxstorno" TINYINT,
	"oxordershopid" INT,
	"oxisbundle" TINYINT,
	 PRIMARY KEY ("oxid")
);

CREATE TABLE "oxorder" (
	"oxid" CHAR,
	"oxshopid" INT,
	"oxuserid" CHAR,
	"oxorderdate" DATETIME,
	"oxordernr" INT,
	"oxbillcompany" VARCHAR,
	"oxbillemail" VARCHAR,
	"oxbillfname" VARCHAR,
	"oxbilllname" VARCHAR,
	"oxbillstreet" VARCHAR,
	"oxbillstreetnr" VARCHAR,
	"oxbilladdinfo" VARCHAR,
	"oxbillustid" VARCHAR,
	"oxbillcity" VARCHAR,
	"oxbillcountryid" VARCHAR,
	"oxbillstateid" VARCHAR,
	"oxbillzip" VARCHAR,
	"oxbillfon" VARCHAR,
	"oxbillfax" VARCHAR,
	"oxbillsal" VARCHAR,
	"oxdelcompany" VARCHAR,
	"oxdelfname" VARCHAR,
	"oxdellname" VARCHAR,
	"oxdelstreet" VARCHAR,
	"oxdelstreetnr" VARCHAR,
	"oxdeladdinfo" VARCHAR,
	"oxdelcity" VARCHAR,
	"oxdelcountryid" VARCHAR,
	"oxdelstateid" VARCHAR,
	"oxdelzip" VARCHAR,
	"oxdelfon" VARCHAR,
	"oxdelfax" VARCHAR,
	"oxdelsal" VARCHAR,
	"oxpaymentid" CHAR,
	"oxpaymenttype" CHAR,
	"oxtotalnetsum" DOUBLE,
	"oxtotalbrutsum" DOUBLE,
	"oxtotalordersum" DOUBLE,
	"oxartvat1" DOUBLE,
	"oxartvatprice1" DOUBLE,
	"oxartvat2" DOUBLE,
	"oxartvatprice2" DOUBLE,
	"oxdelcost" DOUBLE,
	"oxdelvat" DOUBLE,
	"oxpaycost" DOUBLE,
	"oxpayvat" DOUBLE,
	"oxwrapcost" DOUBLE,
	"oxwrapvat" DOUBLE,
	"oxgiftcardcost" DOUBLE,
	"oxgiftcardvat" DOUBLE,
	"oxcardid" VARCHAR,
	"oxcardtext" TEXT,
	"oxdiscount" DOUBLE,
	"oxexport" TINYINT,
	"oxbillnr" VARCHAR,
	"oxbilldate" DATE,
	"oxtrackcode" VARCHAR,
	"oxsenddate" DATETIME,
	"oxremark" TEXT,
	"oxvoucherdiscount" DOUBLE,
	"oxcurrency" VARCHAR,
	"oxcurrate" DOUBLE,
	"oxfolder" VARCHAR,
	"oxtransid" VARCHAR,
	"oxpayid" VARCHAR,
	"oxxid" VARCHAR,
	"oxpaid" DATETIME,
	"oxstorno" TINYINT,
	"oxip" VARCHAR,
	"oxtransstatus" VARCHAR,
	"oxlang" INT,
	"oxinvoicenr" INT,
	"oxdeltype" CHAR,
	"oxtimestamp" TIMESTAMP,
	"oxisnettomode" TINYINT,
	 PRIMARY KEY ("oxid")
);

CREATE TABLE "oxobject2seodata" (
	"oxobjectid" CHAR,
	"oxshopid" INT,
	"oxlang" INT,
	"oxkeywords" TEXT,
	"oxdescription" TEXT,
	"oxtimestamp" TIMESTAMP,
	 PRIMARY KEY ("oxobjectid","oxshopid","oxlang")
);

CREATE TABLE "oxobject2selectlist" (
	"oxid" CHAR,
	"oxobjectid" CHAR,
	"oxselnid" CHAR,
	"oxsort" INT,
	"oxtimestamp" TIMESTAMP,
	 PRIMARY KEY ("oxid")
);

CREATE TABLE "oxobject2payment" (
	"oxid" CHAR,
	"oxpaymentid" CHAR,
	"oxobjectid" CHAR,
	"oxtype" CHAR,
	"oxtimestamp" TIMESTAMP,
	 PRIMARY KEY ("oxid")
);

CREATE TABLE "oxobject2list" (
	"oxid" CHAR,
	"oxobjectid" CHAR,
	"oxlistid" CHAR,
	"oxdesc" TEXT,
	"oxtimestamp" TIMESTAMP,
	 PRIMARY KEY ("oxid")
);

CREATE TABLE "oxobject2group" (
	"oxid" CHAR,
	"oxshopid" INT,
	"oxobjectid" CHAR,
	"oxgroupsid" CHAR,
	"oxtimestamp" TIMESTAMP,
	 PRIMARY KEY ("oxid")
);

CREATE TABLE "oxobject2discount" (
	"oxid" CHAR,
	"oxdiscountid" CHAR,
	"oxobjectid" CHAR,
	"oxtype" CHAR,
	"oxtimestamp" TIMESTAMP,
	 PRIMARY KEY ("oxid")
);

CREATE TABLE "oxobject2delivery" (
	"oxid" CHAR,
	"oxdeliveryid" CHAR,
	"oxobjectid" CHAR,
	"oxtype" CHAR,
	"oxtimestamp" TIMESTAMP,
	 PRIMARY KEY ("oxid")
);

CREATE TABLE "oxobject2category" (
	"oxid" CHAR,
	"oxobjectid" CHAR,
	"oxcatnid" CHAR,
	"oxpos" INT,
	"oxtime" INT,
	"oxtimestamp" TIMESTAMP,
	 PRIMARY KEY ("oxid")
);

CREATE TABLE "oxobject2attribute" (
	"oxid" CHAR,
	"oxobjectid" CHAR,
	"oxattrid" CHAR,
	"oxvalue" VARCHAR,
	"oxpos" INT,
	"oxvalue_1" VARCHAR,
	"oxvalue_2" VARCHAR,
	"oxvalue_3" VARCHAR,
	"oxtimestamp" TIMESTAMP,
	 PRIMARY KEY ("oxid")
);

CREATE TABLE "oxobject2article" (
	"oxid" CHAR,
	"oxobjectid" CHAR,
	"oxarticlenid" CHAR,
	"oxsort" INT,
	"oxtimestamp" TIMESTAMP,
	 PRIMARY KEY ("oxid")
);

CREATE TABLE "oxobject2action" (
	"oxid" CHAR,
	"oxactionid" CHAR,
	"oxobjectid" CHAR,
	"oxclass" CHAR,
	"oxtimestamp" TIMESTAMP,
	 PRIMARY KEY ("oxid")
);

CREATE TABLE "oxnewssubscribed" (
	"oxid" CHAR,
	"oxuserid" CHAR,
	"oxsal" VARCHAR,
	"oxfname" CHAR,
	"oxlname" CHAR,
	"oxemail" CHAR,
	"oxdboptin" TINYINT,
	"oxemailfailed" TINYINT,
	"oxsubscribed" DATETIME,
	"oxunsubscribed" DATETIME,
	"oxtimestamp" TIMESTAMP,
	"oxshopid" INT,
	 PRIMARY KEY ("oxid")
);

CREATE TABLE "oxnewsletter" (
	"oxid" CHAR,
	"oxshopid" INT,
	"oxtitle" VARCHAR,
	"oxtemplate" MEDIUMTEXT,
	"oxplaintemplate" MEDIUMTEXT,
	"oxsubject" VARCHAR,
	"oxtimestamp" TIMESTAMP,
	 PRIMARY KEY ("oxid")
);

CREATE TABLE "oxnews" (
	"oxid" CHAR,
	"oxshopid" INT,
	"oxactive" TINYINT,
	"oxactivefrom" DATETIME,
	"oxactiveto" DATETIME,
	"oxdate" DATE,
	"oxshortdesc" VARCHAR,
	"oxlongdesc" TEXT,
	"oxactive_1" TINYINT,
	"oxshortdesc_1" VARCHAR,
	"oxlongdesc_1" TEXT,
	"oxactive_2" TINYINT,
	"oxshortdesc_2" VARCHAR,
	"oxlongdesc_2" TEXT,
	"oxactive_3" TINYINT,
	"oxshortdesc_3" VARCHAR,
	"oxlongdesc_3" TEXT,
	"oxtimestamp" TIMESTAMP,
	 PRIMARY KEY ("oxid")
);

CREATE TABLE "oxmediaurls" (
	"oxid" CHAR,
	"oxobjectid" CHAR,
	"oxurl" VARCHAR,
	"oxdesc" VARCHAR,
	"oxdesc_1" VARCHAR,
	"oxdesc_2" VARCHAR,
	"oxdesc_3" VARCHAR,
	"oxisuploaded" INT,
	"oxtimestamp" TIMESTAMP,
	 PRIMARY KEY ("oxid")
);

CREATE TABLE "oxmanufacturers" (
	"oxid" CHAR,
	"oxshopid" INT,
	"oxactive" TINYINT,
	"oxicon" VARCHAR,
	"oxtitle" VARCHAR,
	"oxshortdesc" VARCHAR,
	"oxtitle_1" VARCHAR,
	"oxshortdesc_1" VARCHAR,
	"oxtitle_2" VARCHAR,
	"oxshortdesc_2" VARCHAR,
	"oxtitle_3" VARCHAR,
	"oxshortdesc_3" VARCHAR,
	"oxshowsuffix" TINYINT,
	"oxtimestamp" TIMESTAMP,
	 PRIMARY KEY ("oxid")
);

CREATE TABLE "oxlinks" (
	"oxid" CHAR,
	"oxshopid" INT,
	"oxactive" TINYINT,
	"oxurl" VARCHAR,
	"oxurldesc" TEXT,
	"oxurldesc_1" TEXT,
	"oxurldesc_2" TEXT,
	"oxurldesc_3" TEXT,
	"oxinsert" DATETIME,
	"oxtimestamp" TIMESTAMP,
	 PRIMARY KEY ("oxid")
);

CREATE TABLE "oxinvitations" (
	"oxuserid" CHAR,
	"oxdate" DATE,
	"oxemail" VARCHAR,
	"oxpending" MEDIUMINT,
	"oxaccepted" MEDIUMINT,
	"oxtype" TINYINT,
	"oxtimestamp" TIMESTAMP
);

CREATE TABLE "oxgroups" (
	"oxid" CHAR,
	"oxactive" TINYINT,
	"oxtitle" VARCHAR,
	"oxtitle_1" VARCHAR,
	"oxtitle_2" VARCHAR,
	"oxtitle_3" VARCHAR,
	"oxtimestamp" TIMESTAMP,
	 PRIMARY KEY ("oxid")
);

CREATE TABLE "oxfiles" (
	"oxid" CHAR,
	"oxartid" CHAR,
	"oxfilename" VARCHAR,
	"oxstorehash" CHAR,
	"oxpurchasedonly" TINYINT,
	"oxmaxdownloads" INT,
	"oxmaxunregdownloads" INT,
	"oxlinkexptime" INT,
	"oxdownloadexptime" INT,
	"oxtimestamp" TIMESTAMP,
	 PRIMARY KEY ("oxid")
);

CREATE TABLE "oxdiscount" (
	"oxid" CHAR,
	"oxshopid" INT,
	"oxactive" TINYINT,
	"oxactivefrom" DATETIME,
	"oxactiveto" DATETIME,
	"oxtitle" VARCHAR,
	"oxtitle_1" VARCHAR,
	"oxtitle_2" VARCHAR,
	"oxtitle_3" VARCHAR,
	"oxamount" DOUBLE,
	"oxamountto" DOUBLE,
	"oxpriceto" DOUBLE,
	"oxprice" DOUBLE,
	"oxaddsumtype" ENUM,
	"oxaddsum" DOUBLE,
	"oxitmartid" CHAR,
	"oxitmamount" DOUBLE,
	"oxitmmultiple" INT,
	"oxsort" INT,
	"oxtimestamp" TIMESTAMP,
	 PRIMARY KEY ("oxid")
);

CREATE TABLE "oxdeliveryset" (
	"oxid" CHAR,
	"oxshopid" INT,
	"oxactive" TINYINT,
	"oxactivefrom" DATETIME,
	"oxactiveto" DATETIME,
	"oxtitle" VARCHAR,
	"oxtitle_1" VARCHAR,
	"oxtitle_2" VARCHAR,
	"oxtitle_3" VARCHAR,
	"oxpos" INT,
	"oxtimestamp" TIMESTAMP,
	 PRIMARY KEY ("oxid")
);

CREATE TABLE "oxdelivery" (
	"oxid" CHAR,
	"oxshopid" INT,
	"oxactive" TINYINT,
	"oxactivefrom" DATETIME,
	"oxactiveto" DATETIME,
	"oxtitle" VARCHAR,
	"oxtitle_1" VARCHAR,
	"oxtitle_2" VARCHAR,
	"oxtitle_3" VARCHAR,
	"oxaddsumtype" ENUM,
	"oxaddsum" DOUBLE,
	"oxdeltype" ENUM,
	"oxparam" DOUBLE,
	"oxparamend" DOUBLE,
	"oxfixed" TINYINT,
	"oxsort" INT,
	"oxfinalize" TINYINT,
	"oxtimestamp" TIMESTAMP,
	 PRIMARY KEY ("oxid")
);

CREATE TABLE "oxdel2delset" (
	"oxid" CHAR,
	"oxdelid" CHAR,
	"oxdelsetid" CHAR,
	"oxtimestamp" TIMESTAMP,
	 PRIMARY KEY ("oxid")
);

CREATE TABLE "oxcountry" (
	"oxid" CHAR,
	"oxactive" TINYINT,
	"oxtitle" VARCHAR,
	"oxisoalpha2" CHAR,
	"oxisoalpha3" CHAR,
	"oxunnum3" CHAR,
	"oxvatinprefix" CHAR,
	"oxorder" INT,
	"oxshortdesc" VARCHAR,
	"oxlongdesc" VARCHAR,
	"oxtitle_1" VARCHAR,
	"oxtitle_2" VARCHAR,
	"oxtitle_3" VARCHAR,
	"oxshortdesc_1" VARCHAR,
	"oxshortdesc_2" VARCHAR,
	"oxshortdesc_3" VARCHAR,
	"oxlongdesc_1" VARCHAR,
	"oxlongdesc_2" VARCHAR,
	"oxlongdesc_3" VARCHAR,
	"oxvatstatus" TINYINT,
	"oxtimestamp" TIMESTAMP,
	 PRIMARY KEY ("oxid")
);

CREATE TABLE "oxcounters" (
	"oxident" CHAR,
	"oxcount" INT,
	"oxtimestamp" TIMESTAMP,
	 PRIMARY KEY ("oxident")
);

CREATE TABLE "oxcontents" (
	"oxid" CHAR,
	"oxloadid" CHAR,
	"oxshopid" INT,
	"oxsnippet" TINYINT,
	"oxtype" TINYINT,
	"oxactive" TINYINT,
	"oxactive_1" TINYINT,
	"oxposition" VARCHAR,
	"oxtitle" VARCHAR,
	"oxcontent" TEXT,
	"oxtitle_1" VARCHAR,
	"oxcontent_1" TEXT,
	"oxactive_2" TINYINT,
	"oxtitle_2" VARCHAR,
	"oxcontent_2" TEXT,
	"oxactive_3" TINYINT,
	"oxtitle_3" VARCHAR,
	"oxcontent_3" TEXT,
	"oxcatid" VARCHAR,
	"oxfolder" VARCHAR,
	"oxtermversion" CHAR,
	"oxtimestamp" TIMESTAMP,
	 PRIMARY KEY ("oxid")
);

CREATE TABLE "oxconfigdisplay" (
	"oxid" CHAR,
	"oxcfgmodule" VARCHAR,
	"oxcfgvarname" VARCHAR,
	"oxgrouping" VARCHAR,
	"oxvarconstraint" VARCHAR,
	"oxpos" INT,
	"oxtimestamp" TIMESTAMP,
	 PRIMARY KEY ("oxid")
);

CREATE TABLE "oxconfig" (
	"oxid" CHAR,
	"oxshopid" INT,
	"oxmodule" VARCHAR,
	"oxvarname" VARCHAR,
	"oxvartype" VARCHAR,
	"oxvarvalue" BLOB,
	"oxtimestamp" TIMESTAMP,
	 PRIMARY KEY ("oxid")
);

CREATE TABLE "oxcategory2attribute" (
	"oxid" CHAR,
	"oxobjectid" CHAR,
	"oxattrid" CHAR,
	"oxsort" INT,
	"oxtimestamp" TIMESTAMP,
	 PRIMARY KEY ("oxid")
);

CREATE TABLE "oxcategories" (
	"oxid" CHAR,
	"oxparentid" CHAR,
	"oxleft" INT,
	"oxright" INT,
	"oxrootid" CHAR,
	"oxsort" INT,
	"oxactive" TINYINT,
	"oxhidden" TINYINT,
	"oxshopid" INT,
	"oxtitle" VARCHAR,
	"oxdesc" VARCHAR,
	"oxlongdesc" TEXT,
	"oxthumb" VARCHAR,
	"oxthumb_1" VARCHAR,
	"oxthumb_2" VARCHAR,
	"oxthumb_3" VARCHAR,
	"oxextlink" VARCHAR,
	"oxtemplate" VARCHAR,
	"oxdefsort" VARCHAR,
	"oxdefsortmode" TINYINT,
	"oxpricefrom" DOUBLE,
	"oxpriceto" DOUBLE,
	"oxactive_1" TINYINT,
	"oxtitle_1" VARCHAR,
	"oxdesc_1" VARCHAR,
	"oxlongdesc_1" TEXT,
	"oxactive_2" TINYINT,
	"oxtitle_2" VARCHAR,
	"oxdesc_2" VARCHAR,
	"oxlongdesc_2" TEXT,
	"oxactive_3" TINYINT,
	"oxtitle_3" VARCHAR,
	"oxdesc_3" VARCHAR,
	"oxlongdesc_3" TEXT,
	"oxicon" VARCHAR,
	"oxpromoicon" VARCHAR,
	"oxvat" FLOAT,
	"oxskipdiscounts" TINYINT,
	"oxshowsuffix" TINYINT,
	"oxtimestamp" TIMESTAMP,
	 PRIMARY KEY ("oxid")
);

CREATE TABLE "oxattribute" (
	"oxid" CHAR,
	"oxshopid" INT,
	"oxtitle" VARCHAR,
	"oxtitle_1" VARCHAR,
	"oxtitle_2" VARCHAR,
	"oxtitle_3" VARCHAR,
	"oxpos" INT,
	"oxtimestamp" TIMESTAMP,
	"oxdisplayinbasket" TINYINT,
	 PRIMARY KEY ("oxid")
);

CREATE TABLE "oxartextends" (
	"oxid" CHAR,
	"oxlongdesc" TEXT,
	"oxlongdesc_1" TEXT,
	"oxlongdesc_2" TEXT,
	"oxlongdesc_3" TEXT,
	"oxtimestamp" TIMESTAMP,
	 PRIMARY KEY ("oxid")
);

CREATE TABLE "oxarticles" (
	"oxid" CHAR,
	"oxshopid" INT,
	"oxparentid" CHAR,
	"oxactive" TINYINT,
	"oxhidden" TINYINT,
	"oxactivefrom" DATETIME,
	"oxactiveto" DATETIME,
	"oxartnum" VARCHAR,
	"oxean" VARCHAR,
	"oxdistean" VARCHAR,
	"oxmpn" VARCHAR,
	"oxtitle" VARCHAR,
	"oxshortdesc" VARCHAR,
	"oxprice" DOUBLE,
	"oxblfixedprice" TINYINT,
	"oxpricea" DOUBLE,
	"oxpriceb" DOUBLE,
	"oxpricec" DOUBLE,
	"oxbprice" DOUBLE,
	"oxtprice" DOUBLE,
	"oxunitname" VARCHAR,
	"oxunitquantity" DOUBLE,
	"oxexturl" VARCHAR,
	"oxurldesc" VARCHAR,
	"oxurlimg" VARCHAR,
	"oxvat" FLOAT,
	"oxthumb" VARCHAR,
	"oxicon" VARCHAR,
	"oxpic1" VARCHAR,
	"oxpic2" VARCHAR,
	"oxpic3" VARCHAR,
	"oxpic4" VARCHAR,
	"oxpic5" VARCHAR,
	"oxpic6" VARCHAR,
	"oxpic7" VARCHAR,
	"oxpic8" VARCHAR,
	"oxpic9" VARCHAR,
	"oxpic10" VARCHAR,
	"oxpic11" VARCHAR,
	"oxpic12" VARCHAR,
	"oxweight" DOUBLE,
	"oxstock" DOUBLE,
	"oxstockflag" TINYINT,
	"oxstocktext" VARCHAR,
	"oxnostocktext" VARCHAR,
	"oxdelivery" DATE,
	"oxinsert" DATE,
	"oxtimestamp" TIMESTAMP,
	"oxlength" DOUBLE,
	"oxwidth" DOUBLE,
	"oxheight" DOUBLE,
	"oxfile" VARCHAR,
	"oxsearchkeys" VARCHAR,
	"oxtemplate" VARCHAR,
	"oxquestionemail" VARCHAR,
	"oxissearch" TINYINT,
	"oxisconfigurable" TINYINT,
	"oxvarname" VARCHAR,
	"oxvarstock" INT,
	"oxvarcount" INT,
	"oxvarselect" VARCHAR,
	"oxvarminprice" DOUBLE,
	"oxvarmaxprice" DOUBLE,
	"oxvarname_1" VARCHAR,
	"oxvarselect_1" VARCHAR,
	"oxvarname_2" VARCHAR,
	"oxvarselect_2" VARCHAR,
	"oxvarname_3" VARCHAR,
	"oxvarselect_3" VARCHAR,
	"oxtitle_1" VARCHAR,
	"oxshortdesc_1" VARCHAR,
	"oxurldesc_1" VARCHAR,
	"oxsearchkeys_1" VARCHAR,
	"oxtitle_2" VARCHAR,
	"oxshortdesc_2" VARCHAR,
	"oxurldesc_2" VARCHAR,
	"oxsearchkeys_2" VARCHAR,
	"oxtitle_3" VARCHAR,
	"oxshortdesc_3" VARCHAR,
	"oxurldesc_3" VARCHAR,
	"oxsearchkeys_3" VARCHAR,
	"oxbundleid" VARCHAR,
	"oxfolder" VARCHAR,
	"oxsubclass" VARCHAR,
	"oxstocktext_1" VARCHAR,
	"oxstocktext_2" VARCHAR,
	"oxstocktext_3" VARCHAR,
	"oxnostocktext_1" VARCHAR,
	"oxnostocktext_2" VARCHAR,
	"oxnostocktext_3" VARCHAR,
	"oxsort" INT,
	"oxsoldamount" DOUBLE,
	"oxnonmaterial" INT,
	"oxfreeshipping" INT,
	"oxremindactive" INT,
	"oxremindamount" DOUBLE,
	"oxamitemid" VARCHAR,
	"oxamtaskid" VARCHAR,
	"oxvendorid" CHAR,
	"oxmanufacturerid" CHAR,
	"oxskipdiscounts" TINYINT,
	"oxrating" DOUBLE,
	"oxratingcnt" INT,
	"oxmindeltime" INT,
	"oxmaxdeltime" INT,
	"oxdeltimeunit" VARCHAR,
	"oxupdateprice" DOUBLE,
	"oxupdatepricea" DOUBLE,
	"oxupdatepriceb" DOUBLE,
	"oxupdatepricec" DOUBLE,
	"oxupdatepricetime" TIMESTAMP,
	"oxisdownloadable" TINYINT,
	"oxshowcustomagreement" TINYINT,
	 PRIMARY KEY ("oxid")
);

CREATE TABLE "oxadminlog" (
	"oxtimestamp" TIMESTAMP,
	"oxuserid" CHAR,
	"oxsql" TEXT
);

CREATE TABLE "oxaddress" (
	"oxid" CHAR,
	"oxuserid" CHAR,
	"oxaddressuserid" VARCHAR,
	"oxcompany" VARCHAR,
	"oxfname" VARCHAR,
	"oxlname" VARCHAR,
	"oxstreet" VARCHAR,
	"oxstreetnr" VARCHAR,
	"oxaddinfo" VARCHAR,
	"oxcity" VARCHAR,
	"oxcountry" VARCHAR,
	"oxcountryid" CHAR,
	"oxstateid" VARCHAR,
	"oxzip" VARCHAR,
	"oxfon" VARCHAR,
	"oxfax" VARCHAR,
	"oxsal" VARCHAR,
	"oxtimestamp" TIMESTAMP,
	 PRIMARY KEY ("oxid")
);

CREATE TABLE "oxactions2article" (
	"oxid" CHAR,
	"oxshopid" INT,
	"oxactionid" CHAR,
	"oxartid" CHAR,
	"oxsort" INT,
	"oxtimestamp" TIMESTAMP,
	 PRIMARY KEY ("oxid")
);

CREATE TABLE "oxactions" (
	"oxid" CHAR,
	"oxshopid" INT,
	"oxtype" TINYINT,
	"oxtitle" VARCHAR,
	"oxtitle_1" VARCHAR,
	"oxtitle_2" VARCHAR,
	"oxtitle_3" VARCHAR,
	"oxlongdesc" TEXT,
	"oxlongdesc_1" TEXT,
	"oxlongdesc_2" TEXT,
	"oxlongdesc_3" TEXT,
	"oxactive" TINYINT,
	"oxactivefrom" DATETIME,
	"oxactiveto" DATETIME,
	"oxpic" VARCHAR,
	"oxpic_1" VARCHAR,
	"oxpic_2" VARCHAR,
	"oxpic_3" VARCHAR,
	"oxlink" VARCHAR,
	"oxlink_1" VARCHAR,
	"oxlink_2" VARCHAR,
	"oxlink_3" VARCHAR,
	"oxsort" INT,
	"oxtimestamp" TIMESTAMP,
	 PRIMARY KEY ("oxid")
);

CREATE TABLE "oxaccessoire2article" (
	"oxid" CHAR,
	"oxobjectid" CHAR,
	"oxarticlenid" CHAR,
	"oxsort" INT,
	"oxtimestamp" TIMESTAMP,
	 PRIMARY KEY ("oxid")
);

CREATE TABLE "oxacceptedterms" (
	"oxuserid" CHAR,
	"oxshopid" INT,
	"oxtermversion" CHAR,
	"oxacceptedtime" DATETIME,
	"oxtimestamp" TIMESTAMP,
	 PRIMARY KEY ("oxuserid","oxshopid")
);
