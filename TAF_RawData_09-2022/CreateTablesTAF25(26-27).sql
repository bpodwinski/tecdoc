/* 
changes in tables
25-12-2021  modified table 053
25-12-2021  modified table 331
25-12-2021  added table 214
25-12-2021  added table 216
25-12-2021  added table 218
25-12-2021  added table 900
25-12-2021  added table 990
23-06-2021  added table 340
28-09-2021  added table 005
28-09-2021  added table 180


*************************

Change name of columns from 2.4 to 2.5 ver

	NEW_NAME <= OLD_NAME
	--------------
	BRANDNO <= DLNR
	TABLENO <= SA
	VERSIONDATE <= DATUM
	FULL <= KZVOLL
	MANNO <= KHERNR
	MANNO <= HERNR
	BRANDNAME <= MARKE
	REFDATAVERSION <= REFERENZDATEN
	RESERVED <= VORVERSION
	DELETEFLAG <= LOSCH_FLAG
	COUNTRYCODE <= LKZ
	TERMNO <= BEZNR
	TRAFFIC <= VERKEHR
	CURNO <= WARNR
	CURCODE <= WKZ
	CURTERMNO <= WARBEZNR
	AREACODE <= VORWAHL
	ISGROUP <= ISTGRUPPE
	ISOCODENO <= ISOCODENR
	RESERVED <= RESERVIERT
	CTERMNO <= LBEZNR
	LANGUAGENO (LANGNO) <= SPRACHNR
	TERM (TERM1) <= BEZ
	TERM2 <= BEZ2
	COUNTRYGRP <= LKZGRP
	DOCTYPE <= DOKUMENTENART
	ISOCODE <= ISO_CODE
	CRITNO <= KRITNR
	TYPE <= TYP
	OKARTICLE <= OK_ARTIKEL
	TABNO (KEYTABNO) <= TABNR
	OKCV <= OK_NKW
	OKPC <= OK_PKW
	OKENGINE <= OK_MOTOR
	OKDRIVCAB <= OK_FAHRERHAUS
	PARTLSTCRIT <= STUCKLISTEN_CRITERION
	ACCCRIT <= ZUBEHOR_CRITERION
	MULTIPLE <= MEHRFACH_VERWENDUNG
	TERMNOABBR <= BEZNRABK
	TERMNOUNIT <= BEZNREINHEIT
	INTERVALCRIT <= INTERVALLCRITERION
	SUCCCRIT <= NACHFOLGE_CRITERION
	OKAXLE <= OK_ACHSE
	KEYTABTYPE <= TABTYP
	SORTNO <= SORTNR
	MANCODE <= HKZ
	PC <= PKW
	CV <= NKW
	COMPARE <= VGL
	AXLE <= ACHSE
	ENGINE <= MOTOR
	TRANSMISSION <= GETRIEBE
	LCV <= TRANSPORTER
	KBANO <= KBANR
	KMODNO <= KMODNR
	MODYFROM <= BJVON
	MODYTO <= BJBIS
	KTYPNO <= KTYPNR
	HP <= PS
	CCMTAX <= CCMSTEUER
	CYL <= ZYL
	DOORS <= TUEREN
	TANKCAP <= TANKINHALT
	VOLTAGE <= SPANNUNG
	TCS <= ASR
	ENGTYPE <= MOTART
	FUELMIXFORM <= KRAFTSTOFFAUFBEREITUNGSPRINZIP
	DRIVETYPE <= ANTRART
	BRAKETYPE <= BREMSART
	BRAKESYS <= BREMSSYS
	VALVES <= VENTILE_BRENNRAUM
	FUELTYPE <= KRSTOFFART
	CATTYPE <= KATART
	TRANSMTYPE <= GETRART
	BODYTYPE <= AUFBAUART
	ABENO <= ABENR
	ABEFROM <= ABEVON
	STATMAN <= STATHER
	STATTYPE <= STATTYP
	CTERMNO1 <= LBEZNR1
	CTERMNO2 <= LBEZNR1
	MODELTYPE (BODYTYPE) <= MUSTER
	NTYPNO <= NTYPNR
	SORTNO <= SORT
	BODYTYPE <= BAUART
	KWFROM <= KWVON
	KWTO <= KWBIS
	HPFROM <= PSVON
	HPTO <= PSBIS
	AXLECONFIG <= ACHSCONFIG
	NTYPSUBNO <= NTYPSUBNR
	MANIDNO <= HERIDNR
	SEQNO <= LFDNR
	DRIVCABNO <= FHAUSNR
	CABDESIGN <= BAUMUSTER
	TRANSMNO <= GETRNR
	TRANSMID <= ID
	SPEEDS <= GAENGE
	WHEELBASE <= RADSTAND
	AXLEPOS <= ACHSPOS
	SUSPTYPE <= FEDERNR
	TYPRETYPE <= REIFENNR
	CHASSIS <= PREFIX
	MANID <= HERID
	ENGNO <= MOTNR
	ENGCODE <= MCODE
	VALVES <= VENTILE
	COMPRFROM <= VERDICHTV
	COMPRTO <= VERDICHTB
	TORQFROM <= DREHMV
	TORQTO <= DREHMB
	CCTAXFROM <= CCMSTEUERV
	CCTAXTO <= CCMSTEUERB
	CCTECHFROM <= CCMTECHV
	CCTECHTO <= CCMTECHB
	LITTAXFROM <= LITSTEUERV
	LITTAXTO <= LITSTEUERB
	LITTECHFROM <= LITTECHV
	LITTECHTO <= LITTECHB
	ENGUSE <= MOTVERW
	ENGDESIGN <= MOTBAUFORM
	FUELMIXFORM <= KRSTOFFAUF
	ENGASP <= MOTBEATM
	RPMKWFROM <= UMINKWV
	RPMKWTO <= UMINKWB
	RPMTORQFROM <= UMINDREHMV
	RPMTORQTO <= UMINDREHMB
	CRANKBEARQUANT <= KURBEL
	BORE <= BOHRUNG
	STROKE <= HUB
	ENGTYPE <= MOTORART
	EXHNORM <= ABGASNORM
	CYLDESIGN <= ZYLBAUFORM
	ENGMNGMNT <= MOTSTEUER
	VALVECTRL <= VENTILSTEUER
	COOLTYPE <= KUEHLART
	SALESTERM <= VKBEZ
	ATYPNO <= ATYPNR
	TERM (BRTERM) <= BEZEICHNUNG  
	AXLETYPE <= ACHSART
	AXLESTYLE <= AUSFUHRUNG
	BRAKETYPE <= BREMSAUSF
	AXLEBODY <= ACHSKORPER
	MAXLOADFROM <= ZULLASTVON
	MAXLOADTO <= ZULLASTBIS
	WHEELMOUNT <= RADBEFESTIGUNG
	TRWIDTH <= SPURWEITE
	HUBWIDTH <= NABENSYSTEM
	DRIVHEIGHTFROM <= FAHRHOHE_VON
	DDRIVHEIGHTTO <= FAHRHOHE_BIS
	BRAKESZE <= BREMSENGROBE
	BRTERM <= BEZEICHNUNG
	TREETYPNO <= TREETYPNR
	LEVEL <= STUFE
	GENARTOK <= WERTOK
	GENARTNO <= GENARTNR
	CRITVAL <= KRITWERT
	DOCNAME <= BILDNAME
	NORMTERMNO <= NARTNR
	ASSGRPNO <= BGNR
	USAGENO <= VERWNR
	OKUNIVERSAL <= OK_UNIVERSAL
	OKIND <= OK_FZGUNAB
	ONLYCRIT (ART) <= ONLY210
	ONLYLNK (LNK) <= ONLY400
	TXTMODNO <= TBSNR
	STREET1 <= STRABE
	STREET2 <= STRASSE2
	POBOX <= POSTFACH
	COUNTRYPREFIX <= PLZLKZ
	POSTCODE <= PLZORT
	POSTCODEPOBOX <= PLZPF
	POSTCODECUS <= PLZGR
	CITY1 <= ORT
	CITY2 <= ORT2
	PHONE <= TELEFON
	ADRTYPE <= ADRESSART
	DOCNO <= BILDNR
	ARTNO <= ARTNR
	SELFSERV <= KZSB
	MATCERT <= KZMAT
	REMANUFACT <= KZAT
	ACCESSORY <= KZZUB
	BATCHSIZE1 <= LOSGR1
	BATCHSIZE2 <= LOSGR2
	PRICE <= PREIS
	PRUNIT <= PENR
	PRQUANTUNIT <= MENR
	VALIDFROM <= DATVON
	VALIDTO <= DATBIS
	PRTYPE <= PRART
	DISCGROUP <= RABATTGRUPPE
	DICOUNT <= MINDERRABATT
	REFNO <= REFNR
	ADDITIVE <= ADDITIV
	REFERENCEINFO <= REFERENZINFO
	SUPERSNO <= ERSATZNR
	PARTGENARTNO <= PARTGENARTNR
	PARTNO <= PARTNR
	QUANTITY <= MENGE
	INFTYPE <= INFART
	FIRSTPAGE <= ANZSOFORT
	TRADENO <= GEBRNR
	SEQNO1 <= LFDNR1
	GTIN <= EANNR
	FIRSTPAGE1 <= ANZSOFORT1
	QUANTUNIT <= VPE
	QUANTPERUNIT <= MENGEPROVPE
	COORDNO <= KOORDINATENNR
	LNKTYPE <= VKN_ART
	LNKVAL <= VKN_VALUE
	ACCARTNO <= ZARTNR
	ACCGENARTNO <= ZUBGENARTNR
	SEQNO1 <= LFDNR1
	SORTNO1 <= SORTNR1
	DOCCONTENTTYPE <= BILDTYPE
	DOCTERMNORM <= BEZNORM
	WIDTH <= BREIT
	HEIGHT <= HOCH
	COLORS <= FARBEN
	LNKTARGETTYPE <= VKNZIELART
	LNKTARGETNO <= VKNZIELNR
	CRITNOTYPE <= KRITNRTYPE
*/


CREATE TABLE IF NOT EXISTS `001` (
  `BRANDNO` smallint(4) NOT NULL COMMENT 'Data Supplier Number Constant (-> 100)',
  `TABLENO` smallint(3) NOT NULL DEFAULT '1' COMMENT 'Data Table Constant = 001	',
  `DATA_RELEASE` smallint(4) NOT NULL COMMENT 'Version (Data Release) in the format xxyy',
  `VERSIONDATE` int(8) NOT NULL COMMENT 'Version date in the format YYYYMMDD',
  `FULL` tinyint(1) NOT NULL DEFAULT '0' COMMENT '‘1’ when complete delivery, otherwise ‘0’',
  `MANNO` mediumint(6) NOT NULL COMMENT 'Vehicle Manufacturer Number	',
  `BRANDNAME` varchar(20) NOT NULL COMMENT 'Brand (specified by TecDoc)',
  `REFDATAVERSION` mediumint(4) NOT NULL COMMENT 'Reference data version in the format xxyy',
  `RESERVED` mediumint(4) DEFAULT NULL COMMENT 'If a delta-delivery, the Data Release to which the delta refers. - NOT USE MORE',
  `FORMAT` varchar(3) NOT NULL DEFAULT '2.x' COMMENT 'Constant “current format version”',
  `DELETEFLAG` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 = Delete all data records of the brand, otherwise ‘0’',
  PRIMARY KEY `BRANDNO` (`BRANDNO`),
  KEY `MANNO` (`MANNO`),
  KEY `BRANDNAME` (`BRANDNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Header stating version and date';

CREATE TABLE IF NOT EXISTS `005` (
  `BRANDNO` smallint(4) NOT NULL COMMENT 'Data Supplier Number Constant = 9999',
  `TABLENO` smallint(3) NOT NULL DEFAULT '5' COMMENT 'Data Table Constant = 005',  
  `DELTYPE` varchar(3) NOT NULL COMMENT 'Type of object to be announced for deletion (-> Key table 748)',
  `DELNO` int(9) NOT NULL COMMENT 'ID of object to be announced for deletion',
  `DELSTATUS` varchar(3) NOT NULL COMMENT 'Status information (-> Key Table 747)',
  `DELDATARELEASE` smallint(4) NOT NULL COMMENT 'Reference Data Version of deletion',
  `DELDATE` int(8) NOT NULL COMMENT 'Date of deletion YYYYMMDD (Publication)',
  `REPLACEMENTNO` int(9) DEFAULT NULL COMMENT 'Number of object that replaces the one that is (proposed to be) deleted',
  `REASON` varchar(3) NOT NULL COMMENT 'Reason for deletion (-> Key Table 749)',
  `COMMENT` varchar(100) DEFAULT '' COMMENT 'Additional comment (English)',  
  PRIMARY KEY (`DELTYPE`,`DELNO`,`DELSTATUS`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Announcements for Reference Data deletions';

CREATE TABLE IF NOT EXISTS `010` (
  `RESERVED` varchar(22) NOT NULL DEFAULT '' COMMENT 'Constantly blank',
  `BRANDNO` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `TABLENO` smallint(3) NOT NULL DEFAULT '10' COMMENT 'Data Table Constant = 010',
  `COUNTRYCODE` varchar(3) NOT NULL DEFAULT '' COMMENT 'Country Code (Vehicle Registration Number)',
  `TERMNO` int(9) NOT NULL COMMENT 'Description Number (-> 030)',
  `TRAFFIC` varchar(1) DEFAULT NULL COMMENT '‘L’ = Left-hand traffic, ‘R’ = Right-hand traffic',
  `CURNO` smallint(3) DEFAULT NULL COMMENT 'Int. currency number according to ISO',
  `CURCODE` varchar(3) DEFAULT NULL COMMENT 'Currency Code, i.e. EUR',
  `CURTERMNO` int(9) DEFAULT NULL COMMENT 'Currency Description Number (-> 030)',
  `AREACODE` varchar(5) DEFAULT NULL COMMENT 'International Telephone Code',
  `ISGROUP` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Country Groups = 1, otherwise 0',
  `ISOCODE2` varchar(2) DEFAULT NULL COMMENT '2-digit ISO 3166-Code of the country',
  `ISOCODE3` varchar(3) DEFAULT NULL COMMENT '3-digit ISO 3166-Code of the country',
  `ISOCODENO` smallint(3) DEFAULT NULL COMMENT 'Numeral ISO 3166-Code of the country',
  PRIMARY KEY (`COUNTRYCODE`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Description of all countries and relevant information';

CREATE TABLE IF NOT EXISTS `012` (
  `RESERVED` varchar(22) NOT NULL DEFAULT '' COMMENT 'Constantly blank',
  `BRANDNO` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `TABLENO` smallint(3) NOT NULL DEFAULT '12' COMMENT 'Data Table Constant = 012',
  `CTERMNO` int(9) NOT NULL COMMENT 'Description Number',
  `COUNTRYCODE` varchar(3) NOT NULL DEFAULT '' COMMENT 'Country Code (-> 010)',
  `LANGNO` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Language Number (-> 020)',
  `TERM` varchar(60) NOT NULL DEFAULT '' COMMENT 'Descriptions',
  PRIMARY KEY (`CTERMNO`,`COUNTRYCODE`,`LANGNO`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Country-dependent descriptions';

CREATE TABLE IF NOT EXISTS `013` (
  `RESERVED` varchar(22) NOT NULL DEFAULT '' COMMENT 'Constantly Blank',
  `BRANDNO` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `TABLENO` smallint(3) NOT NULL DEFAULT '13' COMMENT 'Data Table Constant = 013',
  `COUNTRYGRP` varchar(3) NOT NULL COMMENT 'Country Group Code (-> 010)',
  `COUNTRYCODE` varchar(3) NOT NULL DEFAULT '' COMMENT 'Country Code (-> 010)',
  PRIMARY KEY (`COUNTRYGRP`,`COUNTRYCODE`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Allocation of countries to country groups';

CREATE TABLE IF NOT EXISTS `014` (
  `RESERVED` varchar(22) NOT NULL DEFAULT '' COMMENT 'Constantly blank',
  `BRANDNO` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `TABLENO` smallint(3) NOT NULL DEFAULT '14' COMMENT 'Data Table Constant= 014',
  `DOCTYPE` smallint(2) NOT NULL COMMENT 'Unambiguous key of the document type',
  `TERMNO` int(9) NOT NULL COMMENT 'Description Number (->030)',
  `EXTENSION` varchar(3) DEFAULT NULL COMMENT 'File Extension (three blanks with document type “URL”)',
  PRIMARY KEY (`DOCTYPE`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Definition of document types';

CREATE TABLE IF NOT EXISTS `020` (
  `RESERVED` varchar(22) NOT NULL DEFAULT '' COMMENT 'Constantly blank',
  `BRANDNO` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `TABLENO` smallint(3) NOT NULL DEFAULT '20' COMMENT 'Data Table Constant = 020',
  `LANGNO` smallint(3) NOT NULL COMMENT 'Language Number',
  `TERMNO` int(9) NOT NULL COMMENT 'Description Number (-> 030)',
  `ISOCODE` varchar(2) DEFAULT NULL COMMENT 'Description Number (-> 030)',
  `CODEPAGE` smallint(4) DEFAULT NULL COMMENT 'Number of the Windows-Codepage for this language',
  PRIMARY KEY (`LANGNO`),
  KEY `isocode` (`ISOCODE`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Description of the languages used';

CREATE TABLE IF NOT EXISTS `030` (
  `RESERVED` varchar(22) NOT NULL DEFAULT '' COMMENT 'Constantly blank',
  `BRANDNO` smallint(4) NOT NULL COMMENT 'Data Supplier Number Constant (-> 100) and 9999 for reference data',
  `TABLENO` smallint(3) NOT NULL DEFAULT '30' COMMENT 'Data Table Constant = 030',
  `TERMNO` int(9) NOT NULL COMMENT 'Description Number',
  `LANGNO` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Language Number (-> 020)',
  `TERM` varchar(60) NOT NULL DEFAULT '' COMMENT 'Descriptions',
  `DELETEFLAG` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 = delete all data records for the Delta Key, otherwise = 0',
  PRIMARY KEY (`TERMNO`,`LANGNO`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Descriptions in different languages';
 
CREATE TABLE IF NOT EXISTS `031` (
  `BRANDNO` smallint(4) NOT NULL COMMENT 'Data Supplier Number Constant (-> 100)',
  `TABLENO` smallint(3) NOT NULL DEFAULT '31' COMMENT 'Data Table Constant = 031	',
  `TERMNO` int(9) NOT NULL COMMENT 'Description Number',
  `LANGNO` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Language Number (-> 020)',
  `TERM` varchar(60) NOT NULL DEFAULT '' COMMENT 'Descriptions',  
  PRIMARY KEY (`TERMNO`, `LANGNO`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Language Descriptions for Article Criteria';

CREATE TABLE IF NOT EXISTS `035` (
  `RESERVED` varchar(22) NOT NULL DEFAULT '' COMMENT 'Constantly Blank',
  `BRANDNO` smallint(4) NOT NULL COMMENT 'Data Supplier Number Constant (-> 100)',
  `TABLENO` smallint(3) NOT NULL DEFAULT '35' COMMENT 'Data Table Constant ‘035’',
  `TXTMODNO` varchar(6) NOT NULL COMMENT 'Match code of the text module',
  `LANGNO` smallint(3) NOT NULL COMMENT 'Language Number (-> 020)',
  `FIXED` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Fixed font = ‘1’: A non-proportional font is used to display such a text module on the CD system.',
  `SEQNO` smallint(3) NOT NULL DEFAULT '1' COMMENT 'Sequential number (= Line) of text',
  `TEXT` varchar(60) NOT NULL DEFAULT '' COMMENT 'Text Line',
  `DELETEFLAG` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 = delete all data records for the Delta Key, otherwise = 0',
  PRIMARY KEY (`BRANDNO`,`TXTMODNO`,`LANGNO`,`SEQNO`),
  KEY `TXTMODNO` (`TXTMODNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Text modules in various languages';

CREATE TABLE IF NOT EXISTS `040` (
  `BRANDNO` smallint(4) NOT NULL COMMENT 'Data Supplier Number Constant (->040), must correspond with the data supplier number from DT 001',
  `TABLENO` smallint(3) NOT NULL DEFAULT '40' COMMENT 'Data Table Constant ‘040’',
  `TERM1` varchar(40) NOT NULL DEFAULT '' COMMENT 'Description 1',
  `TERM2` varchar(40) DEFAULT NULL COMMENT 'Description 2',
  `STREET1` varchar(40) DEFAULT NULL COMMENT 'Street 1',
  `STREET2` varchar(40) DEFAULT NULL COMMENT 'Street 2',
  `POBOX` varchar(10) DEFAULT NULL COMMENT 'P. O. Box',
  `COUNTRYPREFIX` varchar(3) DEFAULT NULL COMMENT 'Country code for postal code PLZ, i.e. D-22926 (-> 010)',
  `POSTCODE` varchar(8) DEFAULT NULL COMMENT 'Postal code',
  `POSTCODEPOBOX` varchar(8) DEFAULT NULL COMMENT 'Postal code P.O. Box',
  `POSTCODECUS` varchar(8) DEFAULT NULL COMMENT 'Postal code key customer',
  `CITY1` varchar(40) DEFAULT NULL COMMENT 'City 1',
  `CITY2` varchar(40) DEFAULT NULL COMMENT 'City 2',
  `PHONE` varchar(20) DEFAULT NULL COMMENT 'Telephone',
  `FAX` varchar(20) DEFAULT NULL COMMENT 'Fax',
  `EMAIL` varchar(60) DEFAULT NULL COMMENT 'Email Address',
  `WEB` varchar(60) DEFAULT NULL COMMENT 'Web Site',
  `ADRTYPE` smallint(3) NOT NULL COMMENT 'Address type from KT 59 (-> SA 052)',  
  `DELETEFLAG` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 = delete all data records for the Delta Key, otherwise = 0',
  PRIMARY KEY (`BRANDNO`,`ADRTYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Main address of the data supplier';

CREATE TABLE IF NOT EXISTS `042` (
  `BRANDNO` smallint(4) NOT NULL COMMENT 'Data Supplier Number Constant (-> 100)',
  `TABLENO` smallint(3) NOT NULL DEFAULT '42' COMMENT 'Data Table Constant "042"',
  `COUNTRYCODE` varchar(3) NOT NULL DEFAULT '' COMMENT 'Country Code (-> 010)',
  `DOCNO` int(9) NOT NULL COMMENT 'Unambiguous Graphic Number (DT 231)	(>= 100.00 * DatSupNo, < 100.000 * (DatSupNo + 1))',
  `DOCTYPE` smallint(2) NOT NULL COMMENT '-> DT 014',
  `DELETEFLAG` tinyint(1) DEFAULT '0' COMMENT '1 = delete all data records for the Delta Key, otherwise = 0',
  PRIMARY KEY (`BRANDNO`,`COUNTRYCODE`,`DOCNO`,`DOCTYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Logo of the Data Supplier';

CREATE TABLE IF NOT EXISTS `043` (
  `BRANDNO` smallint(4) NOT NULL COMMENT 'Data Supplier Number Constant (->040), must correspond with the data supplier number from DT 001',
  `TABLENO` smallint(3) NOT NULL DEFAULT '43' COMMENT 'Data Table Constant "043"',
  `ADRTYPE` smallint(3) NOT NULL COMMENT 'Address type from KT 59 (-> DT 052)',
  `COUNTRYCODE` varchar(3) NOT NULL DEFAULT '' COMMENT 'Country Code (-> DT 010)',
  `TERM1` varchar(40) NOT NULL DEFAULT '' COMMENT 'Description 1',
  `TERM2` varchar(40) DEFAULT NULL COMMENT 'Description 2',
  `STREET1` varchar(40) DEFAULT NULL COMMENT 'Street 1',
  `STREET2` varchar(40) DEFAULT NULL COMMENT 'Street 2',
  `POBOX` varchar(10) DEFAULT NULL COMMENT 'P. O. Box',
  `COUNTRYPREFIX` varchar(3) DEFAULT NULL COMMENT 'Country code for postal code PLZ, i.e. D-22926 (-> 010)',
  `POSTCODE` varchar(8) DEFAULT NULL COMMENT 'Postal code',
  `POSTCODEPOBOX` varchar(8) DEFAULT NULL COMMENT 'Postal code for P.O. Box',
  `POSTCODECUS` varchar(8) DEFAULT NULL COMMENT 'Postal code for key customer',
  `CITY1` varchar(40) DEFAULT NULL COMMENT 'City 1',
  `CITY2` varchar(40) DEFAULT NULL COMMENT 'City 2',
  `PHONE` varchar(20) DEFAULT NULL COMMENT 'Telephone',
  `FAX` varchar(20) DEFAULT NULL COMMENT 'Fax',
  `EMAIL` varchar(60) DEFAULT NULL COMMENT 'E-mail Address',
  `WEB` varchar(60) DEFAULT NULL COMMENT 'Web Site',
  `DELETEFLAG` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 = delete all data records for the Delta Key, otherwise = 0',
  PRIMARY KEY (`BRANDNO`,`ADRTYPE`,`COUNTRYCODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Addresses of the Data Supplier';

CREATE TABLE IF NOT EXISTS `050` (
  `BRANDNO` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `TABLENO` smallint(3) NOT NULL DEFAULT '50' COMMENT 'Data Table Constant= 050',
  `CRITNO` smallint(4) NOT NULL COMMENT 'Criterion Number',
  `TERMNO` int(9) NOT NULL COMMENT 'Description Number (-> 030)',
  `TYPE` varchar(1) NOT NULL COMMENT 'Criterion Type (‘A’ = Alphanumerical, ‘N’ = Numerical, ‘D’ = Date ‘K’ = Key, ‘V’ = without value)',
  `MAXLEN` smallint(2) DEFAULT NULL COMMENT 'Maximum length of criterion value',
  `OKARTICLE` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Criterion may be used for article (SA 210)(0 = No, 1 = Yes)',
  `TABNO` smallint(3) DEFAULT NULL COMMENT 'Number of the Key Table for type ‘K’',
  `OKCV` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Criterion may be used for CV linkages(0 = No, 1 = Yes)',
  `OKPC` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Criterion may be used for PC linkages(0 = No, 1 = Yes)',
  `OKENGINE` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Criterion may be used for engine linkages(0 = No, 1 = Yes)',
  `OKDRIVCAB` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Criterion may be used for Driver Cab linkages(0 = No, 1 = Yes)',
  `PARTLSTCRIT` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Criterion may be used as Parts List criterion (SA208)(0 = No, 1 = Yes)',
  `ACCCRIT` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Criterion may be used as Accessory List criterion. (DT228) (0 = No, 1 = Yes)',
  `MULTIPLE` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Criterion may be used more than once within a linkage (0 = No, 1 = Yes)',
  `TERMNOABBR` int(9) DEFAULT NULL COMMENT 'Description number for the abbreviation (->030)',
  `TERMNOUNIT` int(9) DEFAULT NULL COMMENT 'BezNr for the unit (->030)',
  `INTERVALCRIT` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Criterion is an interval criterion (0 = No, 1 = Yes)',
  `SUCCCRIT` smallint(4) DEFAULT NULL COMMENT 'Criterion is successor to...',  
  `DELETE` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1: Criterion is proposed for deletion, otherwise 0',
  `OKAXLE` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Criterion may be used for Axle linkages(0 = No, 1 = Yes)',
  PRIMARY KEY (`BRANDNO`,`CRITNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Description of all criteria';

CREATE TABLE IF NOT EXISTS `051` (
  `RESERVED` varchar(22) NOT NULL DEFAULT '' COMMENT 'Table definition',
  `BRANDNO` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `TABLENO` smallint(3) NOT NULL DEFAULT '51' COMMENT 'Data Table Constant = 051',
  `KEYTABNO` smallint(3) NOT NULL COMMENT 'Key Table Number',
  `TERMNO` int(9) NOT NULL COMMENT 'Key Table Name1 -> SA 30',
  `KEYTABTYPE` varchar(1) DEFAULT 'N' COMMENT '‘A’ = Alphanumerical, ‘N’ = Numerical',
  `DELETE` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1: Key Table is proposed for deletion, otherwise 0',
  PRIMARY KEY (`KEYTABNO`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Table definition';

CREATE TABLE IF NOT EXISTS `052` (
  `RESERVED` varchar(22) NOT NULL DEFAULT '' COMMENT 'Constantly blank',
  `BRANDNO` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `TABLENO` smallint(3) NOT NULL DEFAULT '52' COMMENT 'Data Table Constant = 052',
  `KEYTABNO` smallint(3) NOT NULL COMMENT 'Key Table Number (->051)',
  `KEY` varchar(3) NOT NULL COMMENT 'Table Entry (numerical or alphanumerical depending on the Key Table type)',
  `TERMNO` int(9) NOT NULL COMMENT 'Description Number (->030)',
  `SORTNO` smallint(3) NOT NULL COMMENT 'Sort-Key for Sorting',
  `DELETE` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1: Key Table Entry is proposed for deletion, otherwise 0',
  PRIMARY KEY (`KEYTABNO`,`KEY`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Key Table Entries';

CREATE TABLE IF NOT EXISTS `053` (
  `BRANDNO` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `TABLENO` smallint(3) NOT NULL DEFAULT '53' COMMENT 'Data Table Constant= 053',
  `CRITNO` smallint(4) NOT NULL COMMENT 'Criterion Number',
  `TERMNO` int(9) NOT NULL COMMENT 'Description Number (-> 031)',
  `TYPE` varchar(1) NOT NULL COMMENT 'Criterion Type (‘A’ = Alphanumerical, ‘N’ = Numerical, ‘D’ = Date ‘K’ = Key, ‘V’ = without value)',
  `MAXLEN` smallint(2) DEFAULT NULL COMMENT 'Maximum length of criterion value',
  `OKARTICLE` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Criterion may be used for article (SA 213)(0 = No, 1 = Yes)',
  `TABNO` smallint(3) DEFAULT NULL COMMENT 'Number of the Key Table for type ‘K’',
  `OKCV` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Criterion may be used for CV linkages(0 = No, 1 = Yes)',
  `OKPC` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Criterion may be used for PC linkages(0 = No, 1 = Yes)',
  `OKENGINE` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Criterion may be used for engine linkages(0 = No, 1 = Yes)',
  `OKDRIVCAB` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Criterion may be used for Driver Cab linkages(0 = No, 1 = Yes)',
  `PARTLSTCRIT` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Criterion may be used as Parts List criterion (SA208)(0 = No, 1 = Yes)',
  `ACCCRIT` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Criterion may be used as Accessory List criterion. (DT228) (0 = No, 1 = Yes)',
  `MULTIPLE` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Criterion may be used more than once within a linkage (0 = No, 1 = Yes)',
  `TERMNOABBR` int(9) DEFAULT NULL COMMENT 'Description number for the abbreviation (->031)',
  `TERMNOUNIT` int(9) DEFAULT NULL COMMENT 'BezNr for the unit (->031)',
  `INTERVALCRIT` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Criterion is an interval criterion (0 = No, 1 = Yes)',
  `SUCCCRIT` smallint(4) DEFAULT NULL COMMENT 'Criterion is successor to...',
  `DELETE` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1: Criterion is proposed for deletion, otherwise 0',
  `CRITUSAGE` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Criterion may be used for : 0 - For end user unit (table 213), 1 - For packaging items (table 214) (*), 2 - For end user and packaging items (*)',
  PRIMARY KEY (`BRANDNO`,`CRITNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Criteria Table (Logistics) … New table in format version 2.5 - Description of all criteria';

CREATE TABLE IF NOT EXISTS `100` (
  `BRANDNO` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `TABLENO` smallint(3) NOT NULL DEFAULT '100' COMMENT 'Data Table Constant = 100',
  `MANNO` mediumint(6) NOT NULL COMMENT 'Manufacturer Number',
  `MANCODE` varchar(10) NOT NULL COMMENT 'Manufacturer Short Code',
  `CTERMNO` int(9) NOT NULL COMMENT 'Description Number (->012)',
  `PC` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'PC Manufacturer(0 = No, 1 = Yes)',
  `CV` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'CV Manufacturer	(0 = No, 1 = Yes)',
  `COMPARE` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Comparative Manufacturer(0 = No, 1 = Yes)',
  `AXLE` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Axle Manufacturer(0 = No, 1 = Yes)',
  `ENGINE` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Engine Manufacturer	(0 = No, 1 = Yes)',
  `TRANSMISSION` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Transmission Manufacturer(0 = No, 1 = Yes)',
  `LCV` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'LCV manufacturer( 0 = no, 1 = yes )',  
  `DELETE` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1: Manufacturer is proposed for deletion, otherwise 0',
  PRIMARY KEY (`MANNO`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Description of all manufacturers';

CREATE TABLE IF NOT EXISTS `103` (
  `RESERVED` varchar(22) NOT NULL DEFAULT '' COMMENT 'Constantly blank',
  `BRANDNO` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `TABLENO` smallint(3) NOT NULL DEFAULT '103' COMMENT 'Data Table Constant = 103',
  `KBANO` smallint(4) NOT NULL COMMENT 'KBA Manufacturer Code',
  `MANNO` mediumint(6) NOT NULL COMMENT 'Manufacturer Number',
  PRIMARY KEY (`KBANO`,`MANNO`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Allocation of KBA code to manufacturer';

CREATE TABLE IF NOT EXISTS `110` (
  `BRANDNO` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `TABLENO` smallint(3) NOT NULL DEFAULT '110' COMMENT 'Data Table Constant= 110',
  `KMODNO` mediumint(5) NOT NULL COMMENT 'Unambiguous number of the vehicle model series',
  `CTERMNO` int(9) NOT NULL COMMENT 'Description Number (-> 012)',
  `MANNO` mediumint(6) NOT NULL COMMENT 'Manufacturer (-> 100)',
  `SORTNO` smallint(3) NOT NULL COMMENT 'Sorting key for the sorting within one manufacturer (KHerNr)',
  `MODYFROM` mediumint(6) DEFAULT NULL COMMENT 'Model year from YYYYMM',
  `MODYTO` mediumint(6) DEFAULT NULL COMMENT 'Model year to YYYYMM',  
  `PC` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'PC model series =’1’',
  `CV` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'CV model series =’1’',
  `AXLE` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Axel model series =’1’',
  `DELETE` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1: Model series is proposed for deletion, otherwise 0',
  `LCV` tinyint(1) NOT NULL COMMENT 'LCV model series',
  PRIMARY KEY (`KMODNO`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Description of all vehicle model series';
 
CREATE TABLE IF NOT EXISTS `115` (	 	 
  `BRANDNO` smallint(4) NOT NULL DEFAULT '9999'  COMMENT 'Data Supplier Number Constant = 9999', 
  `TABLENO` smallint(3) NOT NULL DEFAULT '115'  COMMENT 'Data Table Constant= 115', 	
  `LinkageTargetNo` int(9) NOT NULL  COMMENT 'Unique number of vehicle type (kTyp or nTyp)',   
  `LinkageTargetTable` smallint(3) NOT NULL COMMENT 'Table where LinkageTargetNo is located (120 or 532)', 	
  `LTTypeOriginal` smallint(3) NOT NULL COMMENT '„Classic“ view on linkage targets : 2-PC, 16-CV, etc', 	
  `LTTypeExtended` smallint(3) NOT NULL COMMENT 'Linkage Target Type (KT 271) – extended classification according to chapter „Vehicle Classes“', 		 	  	  	  
  PRIMARY KEY (`LinkageTargetNo`, `LTTypeOriginal`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB   DEFAULT CHARSET=utf8  COMMENT 'Linkage Target Types – Mappings';

CREATE TABLE IF NOT EXISTS `120` (
  `BRANDNO` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `TABLENO` smallint(3) NOT NULL DEFAULT '120' COMMENT 'Data Table Constant= 120',
  `KTYPNO` int(9) NOT NULL COMMENT 'Unambiguous number of the vehicle type',
  `CTERMNO` int(9) NOT NULL COMMENT 'Description number (-> 012)',
  `KMODNO` mediumint(5) NOT NULL COMMENT 'Model Series (-> 110)',
  `SORTNO` smallint(2) NOT NULL COMMENT 'General Sorting Field',
  `MODYFROM` mediumint(6) DEFAULT NULL COMMENT 'Model Year from (YYYYMM)',
  `MODYTO` mediumint(6) DEFAULT NULL COMMENT 'Model Year to (YYYYMM)',
  `KW` smallint(4) DEFAULT NULL COMMENT 'Engine output in kW',
  `HP` smallint(4) DEFAULT NULL COMMENT 'Engine output in HP',
  `CCMTAX` mediumint(5) DEFAULT NULL COMMENT 'Engine capacity in cc (taxation value)',
  `CCMTECH` mediumint(5) DEFAULT NULL COMMENT 'Engine capacity in cc (technical value)',
  `LIT` smallint(4) DEFAULT NULL COMMENT 'Engine capacity in litre *100 (99V99)',
  `CYL` smallint(2) DEFAULT NULL COMMENT 'Number of cylinders',
  `DOORS` tinyint(1) DEFAULT NULL COMMENT 'Number of doors',
  `TANKCAP` smallint(4) DEFAULT NULL COMMENT 'Fuel tank capacity',
  `VOLTAGE` smallint(2) DEFAULT NULL COMMENT 'Main current voltage',  
  `ABS` tinyint(1) DEFAULT NULL COMMENT '0 = no, 1 = yes, 2 = optional, 9 = unknown',
  `TCS` tinyint(1) DEFAULT NULL COMMENT '0 = no, 1 = yes, 2 = optional, 9 = unknown',
  `ENGTYPE` smallint(3) DEFAULT NULL COMMENT 'Engine type (KT 080)',
  `FUELMIXFORM` smallint(3) DEFAULT NULL COMMENT 'Fuel mixture formation (KT 097)',
  `DRIVETYPE` smallint(3) DEFAULT NULL COMMENT 'Drive type (KT 082)',
  `BRAKETYPE` smallint(3) DEFAULT NULL COMMENT 'Brake type (KT 083)',
  `BRAKESYS` smallint(3) DEFAULT NULL COMMENT 'Brake system (KT 084)',
  `VALVES` smallint(2) DEFAULT NULL COMMENT 'Number of valves	',
  `FUELTYPE` smallint(3) DEFAULT NULL COMMENT 'Fuel type (KT 182)',
  `CATTYPE` smallint(3) DEFAULT NULL COMMENT 'Catalyst converter type (KT 089)',
  `TRANSMTYPE` smallint(3) DEFAULT NULL COMMENT 'Transmission type (KT 085)	',
  `BODYTYPE` smallint(3) DEFAULT NULL COMMENT 'Body type (KT 086)	',  
  `DELETE` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1: K-TypNr series is proposed for deletion, otherwise 0',
  PRIMARY KEY (`KTYPNO`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Description of all vehicle types';

CREATE TABLE IF NOT EXISTS `121` (
  `RESERVED` varchar(22) NOT NULL DEFAULT '' COMMENT 'Constantly blank',
  `BRANDNO` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `TABLENO` smallint(3) NOT NULL DEFAULT '121' COMMENT 'Data Table Constant= 121',
  `KBANO` varchar(7) NOT NULL DEFAULT '9999999' COMMENT 'German KBA No. (9999999)',
  `KTYPNO` int(9) NOT NULL COMMENT 'Vehicle type number (-> 120)',
  `BODYTYPE` smallint(3) DEFAULT NULL COMMENT 'Body type (KT 086)',
  `ABENO` varchar(25) DEFAULT NULL COMMENT 'General Approval Number',
  `ABEFROM` mediumint(6) DEFAULT NULL COMMENT 'ABE Month (YYYYMM)',
  `STATMAN` varchar(25) DEFAULT NULL COMMENT 'Stat. Manufacturer Description',
  `STATTYPE` varchar(25) DEFAULT NULL COMMENT 'Stat. Type Description',  
  PRIMARY KEY (`KBANO`,`KTYPNO`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Allocation of KBA codes to vehicle types';

CREATE TABLE IF NOT EXISTS `122` (
  `RESERVED` varchar(22) NOT NULL DEFAULT '' COMMENT 'Constantly blank',
  `BRANDNO` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `TABLENO` smallint(3) NOT NULL DEFAULT '122' COMMENT 'Data Table Constant =122',
  `KTYPNO` int(9) NOT NULL COMMENT 'Unambiguous number of the vehicle type',
  `COUNTRYCODE` varchar(3) NOT NULL DEFAULT '' COMMENT 'Country Code (-> 010)',
  `EXCLUDE` tinyint(1) NOT NULL DEFAULT '0' COMMENT '‘1’ = Country Code is an exclusion, ‘0’ = Country Code is an inclusion.',
  PRIMARY KEY (`KTYPNO`,`COUNTRYCODE`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Inclusion/Exclusion of certain countries for a vehicle';

CREATE TABLE IF NOT EXISTS `123` (
  `BRANDNO` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `TABLENO` smallint(3) NOT NULL DEFAULT '123' COMMENT 'Data Table Constant= 123',
  `TYPMINE` varchar(15) NOT NULL COMMENT 'French Type Mine Number',
  `KTYPNO` int(9) NOT NULL COMMENT 'Vehicle type number (-> 120)',
  PRIMARY KEY (`TYPMINE`,`KTYPNO`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Allocation of Type Mine numbers to vehicle types';

CREATE TABLE IF NOT EXISTS `124` (
  `RESERVED` varchar(22) NOT NULL DEFAULT '' COMMENT 'Constantly blank',
  `BRANDNO` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `TABLENO` smallint(3) NOT NULL DEFAULT '124' COMMENT 'Data Table Constant= 124',
  `KTYPNO` int(9) NOT NULL COMMENT 'Unambiguous number of the vehicle type',
  `COUNTRYCODE` varchar(3) NOT NULL DEFAULT '' COMMENT 'Country Code (-> 010)',
  `MODYFROM` mediumint(6) DEFAULT NULL COMMENT 'Model year from (YYYYMM)',
  `MODYTO` mediumint(6) DEFAULT NULL COMMENT 'Model year to (YYYYMM)',
  `CCMTAX` mediumint(5) DEFAULT NULL COMMENT 'Engine capacity in cc (taxation value)',
  `LIT` smallint(4) DEFAULT NULL COMMENT 'Engine capacity in litre (99,99)',
  `CYL` smallint(2) DEFAULT NULL COMMENT 'Number of cylinders',
  `DOORS` tinyint(1) DEFAULT NULL COMMENT 'Number of doors',
  `TANKCAP` smallint(4) DEFAULT NULL COMMENT 'Fuel tank capacity',
  `VOLTAGE` smallint(2) DEFAULT NULL COMMENT 'Main current voltage',
  `ABS` tinyint(1) DEFAULT NULL COMMENT '0 = no, 1 = yes, 2 = optional, 9 = unknown',
  `TCS` tinyint(1) DEFAULT NULL COMMENT '0 = no, 1 = yes, 2 = optional, 9 = unknown',
  `FUELTYPE` smallint(3) DEFAULT NULL COMMENT 'Fuel type (KT 182)',
  `CATTYPE` smallint(3) DEFAULT NULL COMMENT 'Catalyst converter type (KT 089)',
  `TRANSMTYPE` smallint(3) DEFAULT NULL COMMENT 'Transmission type (KT 085)',
  `BRAKETYPE` smallint(3) DEFAULT NULL COMMENT 'Brake type (KT 083)',
  `BRAKESYS` smallint(3) DEFAULT NULL COMMENT 'Brake system (KT 084)',
  PRIMARY KEY (`KTYPNO`,`COUNTRYCODE`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Description of all country specific deviations of vehicle types';

CREATE TABLE IF NOT EXISTS `125` (
  `RESERVED` varchar(22) NOT NULL DEFAULT '' COMMENT 'Constantly blank',
  `BRANDNO` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `TABLENO` smallint(3) NOT NULL DEFAULT '125' COMMENT 'Data Table Constant = 125',
  `KTYPNO` int(9) NOT NULL COMMENT 'Vehicle type number (-> 120)',
  `SEQNO` smallint(3) NOT NULL COMMENT 'Sequential number within the type',
  `ENGNO` mediumint(5) NOT NULL COMMENT 'Engine number (-> 155)',
  `MODYFROM` mediumint(6) DEFAULT NULL COMMENT 'Model Year from (YYYYMM)',
  `MODYTO` mediumint(6) DEFAULT NULL COMMENT 'Model Year to (YYYYMM)',
  `COUNTRYCODE` varchar(3) DEFAULT NULL COMMENT 'Country Code (-> 010)',
  `EXCLUDE` tinyint(1) DEFAULT NULL COMMENT '‘1’ = Country Code is an exclusion, ‘0’ = Country Code is an inclusion.',
  PRIMARY KEY (`KTYPNO`,`SEQNO`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Allocation of engine numbers to vehicle types';

CREATE TABLE IF NOT EXISTS `126` (
  `BRANDNO` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `TABLENO` smallint(3) NOT NULL DEFAULT '126' COMMENT 'Data Table Constant= 126',
  `CHTYP` varchar(7) NOT NULL COMMENT 'Swiss Type Number',
  `KTYPNO` int(9) NOT NULL COMMENT 'Allocation of Swiss type numbers to vehicle types',
  PRIMARY KEY (`CHTYP`,`KTYPNO`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Allocation of Swiss type numbers to vehicle types';

CREATE TABLE IF NOT EXISTS `127` (
  `BRANDNO` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `TABLENO` smallint(3) NOT NULL DEFAULT '127' COMMENT 'Data Table Constant = 127',
  `NLTYP` varchar(6) NOT NULL COMMENT 'Vehicle type number (-> 120)',
  `KTYPNO` int(9) NOT NULL COMMENT 'Vehicle type number (-> 120)',
  PRIMARY KEY (`NLTYP`,`KTYPNO`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Allocation of Netherlands number plates to vehicle types';

CREATE TABLE IF NOT EXISTS `128` (
  `BRANDNO` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `TABLENO` smallint(3) NOT NULL DEFAULT '128' COMMENT 'Data Table Constant= 128',
  `STYP` varchar(6) NOT NULL COMMENT 'Swedish Number Plate',
  `KTYPNO` int(9) NOT NULL COMMENT 'Vehicle type number (-> 120)',
  PRIMARY KEY (`STYP`,`KTYPNO`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Allocation of Swedish number plates to vehicle types';

CREATE TABLE IF NOT EXISTS `129` (
  `BRANDNO` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `TABLENO` smallint(3) NOT NULL DEFAULT '129' COMMENT 'Data Table Constant= 129	',
  `NATCODE` varchar(6) NOT NULL COMMENT 'Austrian NatCode',
  `KTYPNO` int(9) NOT NULL COMMENT 'Vehicle type number (-> 120)',
  PRIMARY KEY (`NATCODE`,`KTYPNO`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Allocation of Austrian NatCodes to vehicle types';

CREATE TABLE IF NOT EXISTS `140` (
  `BRANDNO` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `TABLENO` smallint(3) NOT NULL DEFAULT '140' COMMENT 'Data Table Constant= 140',
  `KMODNO` mediumint(5) NOT NULL COMMENT 'Unambiguous number of the vehicle model series',
  `CTERMNO1` int(9) NOT NULL COMMENT 'Description Number (->012) of the sales description',
  `CTERMNO2` int(9) NOT NULL COMMENT 'Description Number (->012) of the model generation',
  PRIMARY KEY (`KMODNO`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Additional information on all vehicle model series';

CREATE TABLE IF NOT EXISTS `143` (
  `BRANDNO` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `TABLENO` smallint(3) NOT NULL DEFAULT '143' COMMENT 'Data Table Constant= 143',
  `KMODNO` mediumint(5) NOT NULL COMMENT 'Unambiguous number of the vehicle model series',
  `COUNTRYCODE` varchar(3) NOT NULL DEFAULT '' COMMENT 'Country Code (-> 010)',
  `SORTNO` smallint(4) NOT NULL COMMENT 'Display sequence of the sample within one (Model Series, LKZ) – Group',
  `MODELTYPE` varchar(10) NOT NULL COMMENT 'Sample',
  PRIMARY KEY (`KMODNO`,`COUNTRYCODE`,`MODELTYPE`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Allocation of body types to model series';

CREATE TABLE IF NOT EXISTS `144` (
  `RESERVED` varchar(22) NOT NULL DEFAULT '' COMMENT 'Constantly blank',
  `BRANDNO` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `TABLENO` smallint(3) NOT NULL DEFAULT '144' COMMENT 'Data Table Constant = 144	',
  `KTYPNO` int(9) NOT NULL COMMENT 'Unambiguous number of the vehicle type',
  `CTERMNO1` int(9) NOT NULL COMMENT 'Description Number (->012) of the type description',
  `CTERMNO2` int(9) NOT NULL COMMENT 'Description Number (->012) of the Note',
  PRIMARY KEY (`KTYPNO`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Additional information on all vehicle types';

CREATE TABLE IF NOT EXISTS `145` (
  `RESERVED` varchar(22) NOT NULL DEFAULT '' COMMENT 'Constantly blank',
  `BRANDNO` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `TABLENO` smallint(3) NOT NULL DEFAULT '145' COMMENT 'Data Table Constant= 145',
  `KTYPNO` int(9) NOT NULL COMMENT 'Unambiguous number of the vehicle type',
  `COUNTRYCODE` varchar(3) NOT NULL DEFAULT '' COMMENT 'Country Code (-> 010)',
  `SORTNO` smallint(4) NOT NULL COMMENT 'Display sequence of the sample within one (Model Series, LKZ) – Group',
  `MODELTYPE` varchar(10) NOT NULL DEFAULT '' COMMENT 'Sample',
  PRIMARY KEY (`KTYPNO`,`COUNTRYCODE`,`MODELTYPE`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Allocation of body types to vehicle types';

CREATE TABLE IF NOT EXISTS `146` (
  `BRANDNO` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `TABLENO` smallint(3) NOT NULL DEFAULT '146' COMMENT 'Data Table Constant= 146',
  `BODYTYPE` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Body Type (KT 086)',
  `KMODNO` mediumint(5) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the vehicle model series',
  `CTERMNO` int(9) NOT NULL COMMENT 'Description Number (->012) of the synonym',
  PRIMARY KEY (`BODYTYPE`,`KMODNO`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Body Type Synonyms';

CREATE TABLE IF NOT EXISTS `147` (
  `RESERVED` varchar(22) NOT NULL DEFAULT '' COMMENT 'Constantly blank',
  `BRANDNO` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `TABLENO` smallint(3) NOT NULL DEFAULT '147' COMMENT 'Data Table Constant= 147',
  `DRIVETYPE` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Drive Type (082)',
  `KTYPNO` int(9) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the vehicle type',
  `CTERMNO` int(9) NOT NULL COMMENT 'Description Number (->012) of the synonym',
  PRIMARY KEY (`DRIVETYPE`,`KTYPNO`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Drive Type Synonyms';

CREATE TABLE IF NOT EXISTS `155` (
  `BRANDNO` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `TABLENO` smallint(3) NOT NULL DEFAULT '155' COMMENT 'Data Table Constant= 155',
  `MANNO` mediumint(6) NOT NULL DEFAULT '0' COMMENT 'Engine Manufacturer Number',
  `ENGNO` mediumint(5) NOT NULL DEFAULT '0' COMMENT 'Unambiguous engine number',
  `ENGCODE` varchar(60) NOT NULL DEFAULT '' COMMENT 'Engine description',
  `MODYFROM` mediumint(6) DEFAULT NULL COMMENT 'Model Year from (YYYYMM)',
  `MODYTO` mediumint(6) DEFAULT NULL COMMENT 'Model Year to (YYYYMM)',
  `KWFROM` smallint(4) DEFAULT NULL COMMENT 'Engine output in kW from',
  `KWTO` smallint(4) DEFAULT NULL COMMENT 'Engine output in kW to',
  `HPFROM` smallint(4) DEFAULT NULL COMMENT 'Engine output in HP from',
  `HPTO` smallint(4) DEFAULT NULL COMMENT 'Engine output in HP to',
  `VALVES` smallint(2) DEFAULT NULL COMMENT 'Number of valves',
  `CYL` smallint(2) DEFAULT NULL COMMENT 'Number of cylinders',
  `COMPRFROM` smallint(4) DEFAULT NULL COMMENT 'Compression * 100',
  `COMPRTO` mediumint(5) DEFAULT NULL COMMENT 'Compression to * 100',
  `TORQFROM` smallint(4) DEFAULT NULL COMMENT 'Torque from',
  `TORQTO` mediumint(5) DEFAULT NULL COMMENT 'Torque to',
  `CCTAXFROM` mediumint(5) DEFAULT NULL COMMENT 'Engine capacity in cc (taxation) from',
  `CCTAXTO` mediumint(5) DEFAULT NULL COMMENT 'Engine capacity in cc (taxation) to',
  `CCTECHFROM` mediumint(5) DEFAULT NULL COMMENT 'Engine capacity in cc (technical) from',
  `CCTECHTO` mediumint(5) DEFAULT NULL COMMENT 'Engine capacity in cc (technical) to',
  `LITTAXFROM` smallint(4) DEFAULT NULL COMMENT 'Engine capacity in litre (taxation) from',
  `LITTAXTO` smallint(4) DEFAULT NULL COMMENT 'Engine capacity in litre (taxation) to',
  `LITTECHFROM` smallint(4) DEFAULT NULL COMMENT 'Engine capacity in litre (technical) from',
  `LITTECHTO` smallint(4) DEFAULT NULL COMMENT 'Engine capacity in litre (technical) to',
  `ENGUSE` smallint(3) DEFAULT NULL COMMENT 'Engine usage (->KT 098)',
  `ENGDESIGN` smallint(3) DEFAULT NULL COMMENT 'Engine Design (->KT 096)',
  `FUELTYPE` smallint(3) DEFAULT NULL COMMENT 'Fuel Type (->KT 088)',
  `FUELMIXFORM` smallint(3) DEFAULT NULL COMMENT 'Fuel Mixture Formation (->KT 097)',
  `ENGASP` smallint(3) DEFAULT NULL COMMENT 'Engine aspiration (->KT 099); charger',
  `RPMKWFROM` mediumint(5) DEFAULT NULL COMMENT 'RPM kW from',
  `RPMKWTO` mediumint(5) DEFAULT NULL COMMENT 'RPM kW to',
  `RPMTORQFROM` mediumint(5) DEFAULT NULL COMMENT 'RPM torque from',
  `RPMTORQTO` mediumint(5) DEFAULT NULL COMMENT 'RPM torque to',
  `CRANKBEARQUANT` smallint(2) DEFAULT NULL COMMENT 'Number of crankshaft bearings',
  `BORE` mediumint(6) DEFAULT NULL COMMENT 'Bore * 1000',
  `STROKE` mediumint(6) DEFAULT NULL COMMENT 'Stroke * 1000Stroke * 1000',
  `ENGTYPE` smallint(3) DEFAULT NULL COMMENT 'Engine type (->KT 080)',
  `EXHNORM` smallint(3) DEFAULT NULL COMMENT 'Exhaust norm (-> KT 63)',
  `CYLDESIGN` smallint(3) DEFAULT NULL COMMENT 'Cylinder design (-> KT 79)',
  `ENGMNGMNT` smallint(3) DEFAULT NULL COMMENT 'Engine management (-> KT 77)',
  `VALVECTRL` smallint(3) DEFAULT NULL COMMENT 'Valve control (-> KT 78)',
  `COOLTYPE` smallint(3) DEFAULT NULL COMMENT 'Cooling type (-> KT 76)',
  `SALESTERM` varchar(30) DEFAULT NULL COMMENT 'Sales description',
  `EXCLUDE` tinyint(1) DEFAULT NULL COMMENT '0 = Inclusion, 1 = Exclusion of countries ( DT 156)',  
  `DELETE` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1: Engine series is proposed for deletion, otherwise 0',
  PRIMARY KEY (`ENGNO`),
  KEY `ENGCODE` (`ENGCODE`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Description of all engine types';

CREATE TABLE IF NOT EXISTS `156` (
  `BRANDNO` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `TABLENO` smallint(3) NOT NULL DEFAULT '156' COMMENT 'Data Table Constant= 156',
  `ENGNO` mediumint(5) NOT NULL DEFAULT '0' COMMENT 'Unambiguous engine numbers (DT 155)',
  `COUNTRYCODE` varchar(3) NOT NULL DEFAULT '' COMMENT 'Country Code (Key 010 or 013)',
  PRIMARY KEY (`ENGNO`,`COUNTRYCODE`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Country restrictions for engines';

CREATE TABLE IF NOT EXISTS `160` (
  `BRANDNO` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `TABLENO` smallint(3) NOT NULL DEFAULT '160' COMMENT 'Data Table Constant= 160',
  `ATYPNO` mediumint(5) NOT NULL DEFAULT '0' COMMENT 'Unambiguous Axle number',
  `TERM` varchar(30) NOT NULL COMMENT 'Description (Axle type)',
  `KMODNO` mediumint(5) NOT NULL COMMENT 'Model-Key (-> 110)',
  `SORTNO` smallint(4) NOT NULL COMMENT 'Sort-Key for Sorting',
  `MODYFROM` mediumint(6) DEFAULT NULL COMMENT 'Model Year from (YYYYMM)',
  `MODYTO` mediumint(6) DEFAULT NULL COMMENT 'Model Year to (YYYYMM)',
  `AXLETYPE` smallint(3) NOT NULL COMMENT 'Axle type (KT 68)',
  `AXLESTYLE` smallint(3) NOT NULL COMMENT 'Style (KT 95)',
  `BRAKETYPE` smallint(3) DEFAULT NULL COMMENT 'Brake type (KT 83)',
  `AXLEBODY` smallint(3) DEFAULT NULL COMMENT 'Axle-body (KT 214)',
  `MAXLOADFROM` mediumint(5) DEFAULT NULL COMMENT 'Maximum Axle Load in Kg from',
  `MAXLOADTO` mediumint(5) DEFAULT NULL COMMENT 'Maximum Axle Load in Kg to',
  `WHEELMOUNT` smallint(3) DEFAULT NULL COMMENT 'Wheel mounting (KT 213)',
  `TRWIDTH` smallint(4) DEFAULT NULL COMMENT 'Track width (mm)',
  `HUBWIDTH` varchar(20) DEFAULT NULL COMMENT 'Hub system',
  `DRIVHEIGHTFROM` smallint(4) DEFAULT NULL COMMENT 'Distance between road pavement and vehicle frame from',
  `DDRIVHEIGHTTO` smallint(4) DEFAULT NULL COMMENT 'Distance between road pavement and vehicle frame to',  
  `DELETE` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1: ATypNr series is proposed for deletion, otherwise 0',
  PRIMARY KEY (`ATYPNO`),
  KEY `TERM` (`TERM`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Description of all Axle types';

CREATE TABLE IF NOT EXISTS `161` (
  `BRANDNO` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `TABLENO` smallint(3) NOT NULL DEFAULT '161' COMMENT 'Data Table Constant= 161',
  `ATYPNO` mediumint(5) NOT NULL DEFAULT '0' COMMENT 'Unambiguous Axle number',
  `COUNTRYCODE` varchar(3) DEFAULT NULL COMMENT 'Country Code (-> 010)',
  `SORTNO` smallint(4) NOT NULL DEFAULT '0' COMMENT 'Display sequence of the sample within one Axle-type',
  `BODYTYPE` varchar(20) NOT NULL DEFAULT '' COMMENT 'Axle Body Type',
  PRIMARY KEY (`ATYPNO`,`SORTNO`,`BODYTYPE`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Allocation of body types to Axle types';

CREATE TABLE IF NOT EXISTS `162` (
  `BRANDNO` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `TABLENO` smallint(3) NOT NULL DEFAULT '162' COMMENT 'Data Table Constant= 162',
  `ATYPNO` mediumint(5) NOT NULL DEFAULT '0' COMMENT 'Unambiguous Axle number',
  `SEQNO` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Sequential number for the Axle-position within the Axle-type',
  `SORTNO` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Sequential number for the wheelbases within the Axle-position',
  `AXLEPOS` smallint(3) NOT NULL COMMENT 'Axle-position (KT 064)',
  `WHEELBASE` mediumint(6) NOT NULL COMMENT 'Wheelbase (mm)',
  PRIMARY KEY (`ATYPNO`,`SEQNO`,`SORTNO`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Allocation of wheelbases to Axle';

CREATE TABLE IF NOT EXISTS `163` (
  `BRANDNO` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `TABLENO` smallint(3) NOT NULL DEFAULT '163' COMMENT 'Data Table Constant= 163',
  `ATYPNO` mediumint(5) NOT NULL DEFAULT '0' COMMENT 'Unambiguous Axle number',
  `SEQNO` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Sequential number for the brake-size within the axle-type',
  `BRAKESZE` smallint(3) NOT NULL COMMENT 'brake-size (KT 216)',
  `BRTERM` varchar(20) DEFAULT NULL COMMENT 'brake-size description',
  PRIMARY KEY (`ATYPNO`,`SEQNO`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Allocation of Brake-sizes to Axles';

CREATE TABLE IF NOT EXISTS `164` (
  `BRANDNO` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `TABLENO` smallint(3) NOT NULL DEFAULT '164' COMMENT 'Data Table Constant= 164',
  `NTYPNO` int(9) NOT NULL DEFAULT '0' COMMENT 'Unambiguous CV Type number',
  `SEQNO` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Sequential number within the NtypNr',
  `SORTNO` smallint(3) NOT NULL COMMENT 'Sorting of the linkage within the Axle-position',
  `ATYPNO` mediumint(5) NOT NULL DEFAULT '0' COMMENT 'Axle-type-number (-> 160)',
  `AXLEPOS` smallint(3) NOT NULL COMMENT 'Axle-position (KT 064)',
  `MODYFROM` mediumint(6) DEFAULT NULL COMMENT 'Model Year from (YYYYMM)',
  `MODYTO` mediumint(6) DEFAULT NULL COMMENT 'Model Year to (YYYYMM)',
  `COUNTRYCODE` varchar(3) DEFAULT NULL COMMENT 'Country Code (-> 010)',
  `EXCLUDE` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 = Inclusion, 1 = Exclusion of countries',
  PRIMARY KEY (`NTYPNO`,`SEQNO`,`ATYPNO`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Allocation of Axle-types to primary CV Types';

CREATE TABLE IF NOT EXISTS `180` (
  `BRANDNO` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `TABLENO` smallint(3) NOT NULL DEFAULT '180' COMMENT 'Data Table Constant= 180',  
  `LNKTARGETTYPE` smallint(3) NOT NULL DEFAULT '0' COMMENT '2: KTyp vehicle in table 120 .. 16: NTyp vehicle in table 532 .. 14: EngNo in table 155',
  `LNKTARGETNO` int(9) NOT NULL DEFAULT '0' COMMENT 'Number of the linkage target (KTypeNr, NTypeNr, MotNr, HerIdNr, …)',
  `POWEROUTPUTTYPE` varchar(3) NOT NULL DEFAULT '' COMMENT 'KT 87',
  `FUELTYPE` varchar(3) NOT NULL DEFAULT '' COMMENT 'Fuel type (KT 182)',
  `KW` mediumint(5) DEFAULT NULL COMMENT 'Power output',
  PRIMARY KEY (`LNKTARGETTYPE`,`LNKTARGETNO`,`POWEROUTPUTTYPE`,`FUELTYPE`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Power Output';

CREATE TABLE IF NOT EXISTS `200` (
  `ARTNO` varchar(22) NOT NULL DEFAULT '' COMMENT 'Article Number in the data supplier format',
  `BRANDNO` smallint(4) NOT NULL COMMENT 'Data Supplier Number Constant (-> 040)',
  `TABLENO` smallint(3) NOT NULL DEFAULT '200' COMMENT 'Data Table Constant= 200',
  `TERMNO` int(9) DEFAULT NULL COMMENT 'Description text number in the language key table',
  `SELFSERV` tinyint(1) DEFAULT '0' COMMENT 'Self-service packing = 1, otherwise 0',
  `MATCERT` tinyint(1) DEFAULT '0' COMMENT 'Mandatory material certification = 1, otherwise 0',
  `REMANUFACT` tinyint(1) DEFAULT '0' COMMENT 'Remanufactured Part = 1, otherwise 0',
  `ACCESSORY` tinyint(1) DEFAULT '0' COMMENT 'Accessory = 1, otherwise 0',
  `BATCHSIZE1` mediumint(5) DEFAULT NULL COMMENT 'Batch size 1 (multiple of VPE)',
  `BATCHSIZE2` mediumint(5) DEFAULT NULL COMMENT 'Batch size 2 (multiple of LosGr1)',  
  `DELETEFLAG` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 = delete all data records for the Delta Key, otherwise = 0 (*)',
  PRIMARY KEY (`ARTNO`,`BRANDNO`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Main Article Data Table';

CREATE TABLE IF NOT EXISTS `201` (
  `ARTNO` varchar(22) NOT NULL DEFAULT '' COMMENT 'Article Number in the data supplier format',
  `BRANDNO` smallint(4) NOT NULL COMMENT 'Data Supplier Number Constant (-> 100)',
  `TABLENO` smallint(3) NOT NULL DEFAULT '201' COMMENT 'Data Table Constant= 201',
  `PRICE` bigint(10) DEFAULT NULL COMMENT 'Gross price with two decimal spaces or blank for price on demand',
  `PRUNIT` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Price Unit (KT 070)',
  `PRQUANTUNIT` varchar(3) NOT NULL DEFAULT '' COMMENT 'Quantity Unit (KT 071)',
  `VALIDFROM` int(8) NOT NULL DEFAULT '0' COMMENT 'Price valid from YYYYMMDD.',
  `VALIDTO` int(8) DEFAULT NULL COMMENT 'Price valid to YYYYMMDD',
  `COUNTRYCODE` varchar(3) NOT NULL DEFAULT '' COMMENT 'Country code for currency country (-> 010).',
  `PRTYPE` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Price Type (KT 074).',
  `RESERVED` varchar(10) DEFAULT NULL COMMENT 'Constantly blank',
  `CURCODE` varchar(3) NOT NULL DEFAULT '' COMMENT 'Currency Code',
  `DISCGROUP` varchar(5) DEFAULT NULL COMMENT 'Discount group',
  `DICOUNT` tinyint(1) DEFAULT NULL COMMENT 'Discount',  
  `DELETEFLAG` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 = delete all data records for the Delta Key, otherwise = 0 (*)',
  PRIMARY KEY (`ARTNO`,`BRANDNO`,`PRTYPE`,`COUNTRYCODE`,`CURCODE`,`VALIDFROM`,`PRUNIT`,`PRQUANTUNIT`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Article price table';

CREATE TABLE IF NOT EXISTS `202` (
  `ARTNO` varchar(22) NOT NULL DEFAULT '' COMMENT 'Article Number in the data supplier format',
  `BRANDNO` smallint(4) NOT NULL COMMENT 'Data Supplier Number Constant (-> 100)',
  `TABLENO` smallint(3) NOT NULL DEFAULT '202' COMMENT 'Data Table Constant= 202',
  `COUNTRYCODE` varchar(3) NOT NULL DEFAULT '' COMMENT 'Country Code (-> 010 or 012)',
  `EXCLUDE` tinyint(1) NOT NULL DEFAULT '0' COMMENT '‘1’ = Country Code is an exclusion, ‘0’ = Country Code is an inclusion.',
  `DELETEFLAG` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 = delete all data records for the Delta Key, otherwise = 0 (*)',
  PRIMARY KEY (`ARTNO`,`BRANDNO`,`COUNTRYCODE`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Inclusion/Exclusion of certain countries for an article';

CREATE TABLE IF NOT EXISTS `203` (
  `ARTNO` varchar(22) NOT NULL DEFAULT '' COMMENT 'Article Number in the data supplier format',
  `BRANDNO` smallint(4) NOT NULL COMMENT 'Data Supplier Number Constant (-> 100)',
  `TABLENO` smallint(3) NOT NULL DEFAULT '203' COMMENT 'Data Table Constant= 203',
  `MANNO` mediumint(6) NOT NULL DEFAULT '0' COMMENT 'Vehicle Manufacturer (-> 100)',
  `COUNTRYCODE` varchar(3) DEFAULT NULL COMMENT 'Country Code (-> 010 or 012).',
  `REFNO` varchar(22) NOT NULL DEFAULT '' COMMENT 'OE number for this manufacturer',
  `EXCLUDE` tinyint(1) DEFAULT '0' COMMENT '‘1’ = Country Code is an exclusion, ‘0’ = Country Code is an inclusion.',
  `SORTNO` mediumint(5) NOT NULL DEFAULT '0' COMMENT 'Display sequence of this record',
  `ADDITIVE` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0/1: Record builds a block with the parent',
  `REFERENCEINFO` varchar(3) DEFAULT NULL COMMENT 'Reference type (KT 270)',
  `DELETEFLAG` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 = delete all data records for the Delta Key, otherwise = 0 (*)',
  PRIMARY KEY (`ARTNO`,`BRANDNO`,`MANNO`,`SORTNO`),
  KEY `REFNO` (`REFNO`),
  KEY `MANNO` (`MANNO`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Reference numbers for articles by vehicle manufacturers';

CREATE TABLE IF NOT EXISTS `204` (
  `ARTNO` varchar(22) NOT NULL DEFAULT '' COMMENT 'Article Number in the data supplier format',
  `BRANDNO` smallint(4) NOT NULL COMMENT 'Data Supplier Number Constant (-> 100)',
  `TABLENO` smallint(3) NOT NULL DEFAULT '204' COMMENT 'Data Table Constant= 204',
  `COUNTRYCODE` varchar(3) DEFAULT NULL COMMENT 'Country Code (-> 010 or 012).',
  `SUPERSNO` varchar(22) NOT NULL DEFAULT '' COMMENT 'Article ArtNr supersedes Article ErsatzNr',
  `EXCLUDE` tinyint(1) DEFAULT '0' COMMENT '‘1’ = Country Code is an exclusion, ‘0’ = Country Code is an inclusion.',
  `SORTNO` mediumint(5) NOT NULL COMMENT 'Display sequence of this record',
  `DELETEFLAG` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 = delete all data records for the Delta Key, otherwise = 0',
  PRIMARY KEY (`ARTNO`,`BRANDNO`,`SUPERSNO`,`SORTNO`),
  KEY `SUPERSNO` (`SUPERSNO`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='The numbers of superseding articles';

CREATE TABLE IF NOT EXISTS `205` (
  `ARTNO` varchar(22) NOT NULL DEFAULT '' COMMENT 'Article Number in the data supplier format',
  `BRANDNO` smallint(4) NOT NULL COMMENT 'Data Supplier Number Constant (-> 100)',
  `TABLENO` smallint(3) NOT NULL DEFAULT '205' COMMENT 'Data Table Constant= 205',
  `PARTGENARTNO` mediumint(5) NOT NULL COMMENT 'Unambiguous number of the Part-Generic Article',
  `SEQNO` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Sequential number for sorting',
  `PARTNO` varchar(22) NOT NULL COMMENT 'Relevant component part',
  `QUANTITY` smallint(3) NOT NULL COMMENT 'Quantity of component part',
  `DELETEFLAG` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 = delete all data records for the Delta Key, otherwise = 0',
  PRIMARY KEY (`ARTNO`,`BRANDNO`,`SEQNO`),
  KEY `PARTNO` (`PARTNO`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Parts list information on articles';

CREATE TABLE IF NOT EXISTS `206` (
  `ARTNO` varchar(22) NOT NULL DEFAULT '' COMMENT 'Article Number in the data supplier format',
  `BRANDNO` smallint(4) NOT NULL COMMENT 'Data Supplier Number Constant (-> 100)',
  `TABLENO` smallint(3) NOT NULL DEFAULT '206' COMMENT 'Data Table Constant= 206',
  `RESERVED` varchar(5) DEFAULT NULL COMMENT 'Former GenArtNr',
  `COUNTRYCODE` varchar(3) DEFAULT NULL COMMENT 'Country Code (-> 010 or 012).',
  `SORTNO` smallint(2) NOT NULL DEFAULT '0' COMMENT 'Sorting for display',
  `INFTYPE` smallint(3) NOT NULL COMMENT 'Information Type (KT 072)',
  `FIRSTPAGE` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Immediate Display = 1: Information is displayed on the 1st article page on the presentation medium and is repeated boldly on the 2nd page.',
  `TXTMODNO` varchar(6) NOT NULL COMMENT 'Text Module Number',
  `EXCLUDE` tinyint(1) DEFAULT '0' COMMENT '‘1’ = Country Code is an exclusion, ‘0’ = Country Code is an inclusion.',
  `DELETEFLAG` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 = delete all data records for the Delta Key, otherwise = 0',
  PRIMARY KEY (`ARTNO`,`BRANDNO`,`SORTNO`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Information text for articles';

CREATE TABLE IF NOT EXISTS `207` (
  `ARTNO` varchar(22) NOT NULL DEFAULT '' COMMENT 'Article Number in the data supplier format',
  `BRANDNO` smallint(4) NOT NULL COMMENT 'Data Supplier Number Constant (-> 100)',
  `TABLENO` smallint(3) NOT NULL DEFAULT '207' COMMENT 'Data Table Constant= 207',
  `COUNTRYCODE` varchar(3) DEFAULT NULL COMMENT 'Country Code (-> 010 or 012).',
  `TRADENO` varchar(35) NOT NULL DEFAULT '' COMMENT 'Trade number of the article (short code)',
  `EXCLUDE` tinyint(1) DEFAULT '0' COMMENT '‘1’ = Country Code is an exclusion, ‘0’ = Country Code is an inclusion.',
  `FIRSTPAGE` tinyint(1) DEFAULT '0' COMMENT '0 = Trade number is only shown on the 2nd article page, 1 = Trade number is shown on the 1st article page.',
  `SORTNO` mediumint(5) NOT NULL DEFAULT '0' COMMENT 'Display sequence of this record',
  `DELETEFLAG` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 = delete all data records for the Delta Key, otherwise = 0',
  PRIMARY KEY (`ARTNO`,`BRANDNO`,`TRADENO`,`SORTNO`),
  KEY `TRADENO` (`TRADENO`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Trade Numbers';

CREATE TABLE IF NOT EXISTS `208` (
  `ARTNO` varchar(22) NOT NULL DEFAULT '' COMMENT 'Article Number in the data supplier format',
  `BRANDNO` smallint(4) NOT NULL COMMENT 'Data Supplier Number Constant (Key 040)',
  `TABLENO` smallint(3) NOT NULL DEFAULT '208' COMMENT 'Data Table Constant= 208',
  `RESERVED1` varchar(3) DEFAULT NULL COMMENT 'Former LKZ',
  `SEQNO` mediumint(5) NOT NULL DEFAULT '0' COMMENT 'Sequential Number',
  `SORTNO` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Sorting Order',
  `CRITNO` smallint(4) NOT NULL COMMENT 'Criterion Number (Key 050)',
  `CRITVAL` varchar(20) NOT NULL COMMENT 'Criterion Value',
  `RESERVED2` varchar(1) DEFAULT NULL COMMENT 'Former “Exlude”',
  `SEQNO1` smallint(3) NOT NULL DEFAULT '0' COMMENT 'LfdNr from DT205',
  `DELETEFLAG` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 = delete all data records for the Delta Key, otherwise = 0',
  PRIMARY KEY (`ARTNO`,`BRANDNO`,`SEQNO1`,`SEQNO`,`SORTNO`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Criteria for component parts in a parts list';

CREATE TABLE IF NOT EXISTS `209` (
  `ARTNO` varchar(22) NOT NULL DEFAULT '' COMMENT 'Article Number in the data supplier format',
  `BRANDNO` smallint(4) NOT NULL COMMENT 'Data Supplier Number Constant (-> 100)',
  `TABLENO` smallint(3) NOT NULL DEFAULT '209' COMMENT 'Data Table Constant= 209',
  `COUNTRYCODE` varchar(3) DEFAULT NULL COMMENT 'Country Code (-> 010 or 012).',
  `GTIN` varchar(13) NOT NULL DEFAULT '' COMMENT 'EAN of the article',
  `EXCLUDE` tinyint(1) DEFAULT '0' COMMENT '‘1’ = Country Code is an exclusion, ‘0’ = Country Code is an inclusion.',
  `DELETEFLAG` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 = delete all data records for the Delta Key, otherwise = 0',
  PRIMARY KEY (`ARTNO`,`BRANDNO`,`GTIN`),
  KEY `GTIN` (`GTIN`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='EAN list';

CREATE TABLE IF NOT EXISTS `210` (
  `ARTNO` varchar(22) NOT NULL DEFAULT '' COMMENT 'Article Number in the data supplier format',
  `BRANDNO` smallint(4) NOT NULL COMMENT 'Data Supplier Number Constant (-> 100)',
  `TABLENO` smallint(3) NOT NULL DEFAULT '210' COMMENT 'Data Table Constant= 210',
  `RESERVED` varchar(5) DEFAULT NULL COMMENT 'Former GenArtNr',
  `COUNTRYCODE` varchar(3) DEFAULT NULL COMMENT 'Country Code (-> 010 or 012).',
  `SORTNO` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Display Sequence',
  `CRITNO` smallint(4) NOT NULL COMMENT 'Criterion Number (Key 050)',
  `CRITVAL` varchar(20) NOT NULL COMMENT 'Criterion Value',
  `FIRSTPAGE1` tinyint(1) DEFAULT '0' COMMENT 'Display = ‘1’, otherwise ‘0’',
  `EXCLUDE` tinyint(1) DEFAULT '0' COMMENT '‘1’ = Country Code is an exclusion, ‘0’ = Country Code is an inclusion.',
  `DELETEFLAG` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 = delete all data records for the Delta Key, otherwise = 0',
  PRIMARY KEY (`ARTNO`,`BRANDNO`,`SORTNO`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Fixed article criteria that are not related to vehicle links';

CREATE TABLE IF NOT EXISTS `211` (
  `ARTNO` varchar(22) NOT NULL DEFAULT '' COMMENT 'Article Number in the data supplier format',
  `BRANDNO` smallint(4) NOT NULL COMMENT 'Data Supplier Number Constant (-> 100)',
  `TABLENO` smallint(3) NOT NULL DEFAULT '211' COMMENT 'Data Table Constant= 211',
  `GENARTNO` mediumint(5) NOT NULL COMMENT 'Unambiguous number of the generic article (->320)',
  `DELETEFLAG` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 = delete all data records for the Delta Key, otherwise = 0',
  PRIMARY KEY `ARTNO` (`ARTNO`,`BRANDNO`,`GENARTNO`),
  KEY `GENARTNO` (`GENARTNO`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Allocation of generic articles to data supplier article numbers';

CREATE TABLE IF NOT EXISTS `212` (
  `ARTNO` varchar(22) NOT NULL DEFAULT '' COMMENT 'Article Number in the data supplier format',
  `BRANDNO` smallint(4) NOT NULL COMMENT 'Data Supplier Number Constant (-> 100)',
  `TABLENO` smallint(3) NOT NULL DEFAULT '212' COMMENT 'Data Table Constant= 212',
  `COUNTRYCODE` varchar(3) NOT NULL DEFAULT '' COMMENT 'Country Code (Key 010 or 012)',
  `QUANTUNIT` varchar(5) DEFAULT '' COMMENT 'Packing unit (quantity per package)',
  `QUANTPERUNIT` mediumint(5) DEFAULT NULL COMMENT 'Quantity /part per unit',
  `ARTSTAT` smallint(3) DEFAULT NULL COMMENT 'Article Status (KT 073)',
  `STATUSDAT` int(8) DEFAULT NULL COMMENT 'Article status valid from YYYYMMDD',
  `DELETEFLAG` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 = delete all data records for the Delta Key, otherwise = 0',
  UNIQUE KEY `ARTNO` (`ARTNO`,`BRANDNO`,`COUNTRYCODE`,`QUANTUNIT`,`QUANTPERUNIT`,`ARTSTAT`,`STATUSDAT`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Country-Specific Article-data';

CREATE TABLE IF NOT EXISTS `213` (
  `ARTNO` varchar(22) NOT NULL DEFAULT '' COMMENT 'Article Number in the data supplier format',
  `BRANDNO` smallint(4) NOT NULL COMMENT 'Data Supplier Number Constant (-> 100)',
  `TABLENO` smallint(3) NOT NULL DEFAULT '213' COMMENT 'Data Table Constant= 213',  
  `COUNTRYCODE` varchar(3) DEFAULT NULL COMMENT 'Country Code (-> 010 or 012).',
  `SORTNO` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Display Sequence',
  `CRITNO` smallint(4) NOT NULL COMMENT 'Criterion Number (Key 053)',
  `CRITVAL` varchar(20) NOT NULL COMMENT 'Criterion Value',
  `FIRSTPAGE1` tinyint(1) DEFAULT '0' COMMENT 'Display = ‘1’, otherwise ‘0’',
  `EXCLUDE` tinyint(1) DEFAULT '0' COMMENT '‘1’ = Country Code is an exclusion, ‘0’ = Country Code is an inclusion.', 
  PRIMARY KEY (`ARTNO`,`BRANDNO`,`SORTNO`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT=' Article Criteria (Logistics) … New table in format version 2.5 - Fixed article criteria that are not related to vehicle links';

CREATE TABLE IF NOT EXISTS `214` (
  `PACKARTNO` varchar(22) NOT NULL DEFAULT '' COMMENT 'Article Number in the data supplier format',
  `BRANDNO` smallint(4) NOT NULL COMMENT 'Data Supplier Number Constant (-> 100)',
  `TABLENO` smallint(3) NOT NULL DEFAULT '214' COMMENT 'Data Table Constant= 214',  
  `PACKGTIN` varchar(14) DEFAULT '' COMMENT 'Package Level GTIN',  
  `AMOUNT` mediumint(6) DEFAULT NULL COMMENT 'Amount of objects of next lower level in package',
  `INCLARTNO` varchar(22) DEFAULT '' COMMENT 'Article Number (-> 200) if item contains end user unit',
  `INCLPACKARTNO` varchar(22) DEFAULT '' COMMENT 'Packaging Article Number (->214) if item contains another packaging item (e.g. a pallet that contains cardboard boxes)',  
  `PACKHEIGHT` smallint(4) DEFAULT NULL COMMENT 'Shipping Height of package [mm] (*)',
  `PACKWIDTH` smallint(4) DEFAULT NULL COMMENT 'Shipping Width of package [mm] (*)',
  `PACKDEPTH` smallint(4) DEFAULT NULL COMMENT 'Shipping depth of package [mm] (*)',  
  `PACKWEIGHT` int(9) DEFAULT NULL COMMENT 'Gross weight of unit[g]',   
  `PACKWEIGHTVAR` smallint(2) DEFAULT NULL COMMENT 'Possible variance in units gross weight in [%]',    
  `STACKINGFACTOR` smallint(3) DEFAULT NULL COMMENT 'Maximum levels the package may be stacked in storage', 
  `PACKAGINGTYPE` varchar(3) DEFAULT '' COMMENT 'Type of packaging according to Key Table 739',
  PRIMARY KEY (`PACKARTNO`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Packaging hierarchy incl. measurements and weight (shipping unit) - new in ver 2.6';


CREATE TABLE IF NOT EXISTS `215` (
  `ARTNO` varchar(22) NOT NULL DEFAULT '' COMMENT 'Article Number in the data supplier format',
  `BRANDNO` smallint(4) NOT NULL COMMENT 'Data Supplier Number Constant (Key 040)',
  `TABLENO` smallint(3) NOT NULL DEFAULT '215' COMMENT 'Data Table Constant= 215',
  `SEQNO` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Sequential number from DT205',
  `COUNTRYCODE` varchar(3) NOT NULL DEFAULT '' COMMENT 'Country Code (Key 010 or 012)',
  `EXCLUDE` tinyint(1) NOT NULL DEFAULT '0' COMMENT '‘1’ = Country Code is an exclusion, ‘0’ = Country Code is an inclusion.',
  `DELETEFLAG` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 = delete all data records for the Delta Key, otherwise = 0',
  PRIMARY KEY (`ARTNO`,`BRANDNO`,`SEQNO`,`COUNTRYCODE`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Country restrictions for parts lists information';

CREATE TABLE IF NOT EXISTS `216` (
  `PACKARTNO` varchar(22) NOT NULL DEFAULT '' COMMENT 'Article Number in the data supplier format',
  `BRANDNO` smallint(4) NOT NULL COMMENT 'Data Supplier Number Constant (-> 100)',
  `TABLENO` smallint(3) NOT NULL DEFAULT '216' COMMENT 'Data Table Constant= 216',  
  `COUNTRYCODE` varchar(3) NOT NULL DEFAULT '' COMMENT 'Country Code (-> 010)',
  PRIMARY KEY (`PACKARTNO`, `COUNTRYCODE`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Packaging units country restrictions (optional) - new in ver 2.6';


CREATE TABLE IF NOT EXISTS `217` (
  `ARTNO` varchar(22) NOT NULL DEFAULT '' COMMENT 'Article Number in the data supplier format',
  `BRANDNO` smallint(4) NOT NULL COMMENT 'Data Supplier Number Constant (Key 040)',
  `TABLENO` smallint(3) NOT NULL DEFAULT '217' COMMENT 'Data Table Constant= 217',
  `SEQNO` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Sequential number from DT205',
  `DOCNO` int(9) NOT NULL DEFAULT '0' COMMENT 'Unambiguous Graphics Number	( 100.000 * DatSupNo., < 100.000 * (DatSupNo. + 1))',
  `DOCTYPE` smallint(2) NOT NULL DEFAULT '0' COMMENT 'Document Type (014)',
  `LANGNO` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Language Number (Key 020)',
  `COORDNO` smallint(4) NOT NULL DEFAULT '0' COMMENT 'Coordinate Number',
  `DELETEFLAG` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 = delete all data records for the Delta Key, otherwise = 0',
  PRIMARY KEY (`ARTNO`,`BRANDNO`,`SEQNO`,`DOCNO`,`DOCTYPE`,`LANGNO`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='The allocation of coordinates to context-sensitive graphics';

CREATE TABLE IF NOT EXISTS `218` (
  `ITEMNO` varchar(22) NOT NULL DEFAULT '' COMMENT 'Article Number in the data supplier format',
  `ARTSWITCH` varchar(1) NOT NULL DEFAULT '' COMMENT '0: end user unit (->200) ; 1: packing unit (-> 214)', 
  `BRANDNO` smallint(4) NOT NULL COMMENT 'Data Supplier Number Constant (-> 100)',
  `TABLENO` smallint(3) NOT NULL DEFAULT '218' COMMENT 'Data Table Constant= 218', 
  `LOTSIZE` smallint(4) DEFAULT NULL COMMENT 'Amount of units specified by PackArtNo', 
  `RECIPIENTID` varchar(4) NOT NULL DEFAULT '' COMMENT 'Just for distribution control – for future use',
  PRIMARY KEY (`ITEMNO`, `RECIPIENTID`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Packaging units lot sizes (optional) - new in ver 2.6';

CREATE TABLE IF NOT EXISTS `222` (
  `ARTNO` varchar(22) NOT NULL DEFAULT '' COMMENT 'Article Number in the data supplier format',
  `BRANDNO` smallint(4) NOT NULL COMMENT 'Data Supplier Number Constant (Key 040)',
  `TABLENO` smallint(3) NOT NULL DEFAULT '222' COMMENT 'Data Table Constant= 222',
  `LNKTYPE` tinyint(1) DEFAULT NULL COMMENT 'Type of linkage (Vehicle Manufacturer, Model Series, PC, CV, Engine Manufacturer, Engine)',
  `LNKVAL` mediumint(6) DEFAULT NULL COMMENT 'KHerNr, MHerNr, KModNr, KTypNr, NTypNr or MotNr',
  `SEQNO` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Sequential Number',
  `SORTNO` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Sorting Number',
  `ACCARTNO` varchar(22) NOT NULL COMMENT 'Relevant accessory part, must be contained in the DT 200, KZZub must be ‘1’',
  `QUANTITY` smallint(3) NOT NULL COMMENT 'Quantity of accessory parts required',
  `ACCGENARTNO` mediumint(5) NOT NULL COMMENT 'Unambiguous number of the accessory generic article (-> SA320)',
  `RESERVED` varchar(1) DEFAULT NULL COMMENT 'Previously Exclude, became obsolete because of the deletion of table 225',
  `TERMNO` int(9) DEFAULT NULL COMMENT 'Description Number (->030)',
  `DELETEFLAG` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 = delete all data records for the Delta Key, otherwise = 0',
  PRIMARY KEY (`ARTNO`,`BRANDNO`,`SEQNO`,`SORTNO`),
  KEY `ACCARTNO` (`ACCARTNO`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Accessories information for articles';

CREATE TABLE IF NOT EXISTS `228` (
  `ARTNO` varchar(22) NOT NULL DEFAULT '' COMMENT 'Article Number in the data supplier format',
  `BRANDNO` smallint(4) NOT NULL COMMENT 'Data Supplier Number Constant (Key 040)',
  `TABLENO` smallint(3) NOT NULL DEFAULT '228' COMMENT 'Data Table Constant= 228',
  `COUNTRYCODE` varchar(3) DEFAULT NULL COMMENT 'Country Code (Key 010 or 012)',
  `SEQNO1` smallint(3) NOT NULL DEFAULT '0' COMMENT 'LfdNr from DT222',
  `SORTNO1` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Sorting Order',
  `SEQNO` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Sequential number for the accessory list criterion',
  `CRITNO` smallint(4) NOT NULL COMMENT 'Criterion Number (Key 050)',
  `CRITVAL` varchar(20) NOT NULL COMMENT 'Criterion Value',
  `EXCLUDE` tinyint(1) DEFAULT '0' COMMENT '‘1’ = Country Code is an exclusion, ‘0’ = Country Code is an inclusion.',
  `DELETEFLAG` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 = delete all data records for the Delta Key, otherwise = 0',
  PRIMARY KEY (`ARTNO`,`BRANDNO`,`SEQNO1`,`SORTNO1`,`SEQNO`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Criteria for the individual parts of an accessory list';

CREATE TABLE IF NOT EXISTS `231` (
  `RESERVED` varchar(22) DEFAULT NULL COMMENT 'Constantly blank',
  `BRANDNO` smallint(4) NOT NULL COMMENT 'Data Supplier Number Constant (Key 040)',
  `TABLENO` smallint(3) NOT NULL DEFAULT '231' COMMENT 'Data Table Constant= 231',
  `DOCNO` int(9) NOT NULL DEFAULT '0' COMMENT 'Unambiguous Picture Number	( 100.000 * DLNr, < 100.000 * (DLNr + 1))',
  `LANGNO` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Language Number (Key 020)',
  `DOCNAME` varchar(30) DEFAULT NULL COMMENT 'Graphic file number without extension',
  `DOCCONTENTTYPE` smallint(3) NOT NULL COMMENT '(KT 143) Article, Vehicle, etc',
  `DOCTERMNORM` smallint(3) NOT NULL COMMENT '(KT 141) Standardised Graphic Header',
  `WIDTH` smallint(4) DEFAULT NULL COMMENT 'Graphic width',
  `HEIGHT` smallint(4) DEFAULT NULL COMMENT 'Graphic height',
  `COLORS` smallint(3) DEFAULT NULL COMMENT 'Colour Quantity',  
  `DOCTYPE` smallint(2) NOT NULL DEFAULT '0' COMMENT '-> DT014',
  `TERMNO` int(9) DEFAULT NULL COMMENT 'Description –> SA 030',
  `DELETEFLAG` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 = delete all data records for the Delta Key, otherwise = 0',
  `URL` varchar(300) DEFAULT NULL COMMENT 'URL to which the link is made. Only if DokumentenArt = URL',
  PRIMARY KEY (`DOCNO`,`DOCTYPE`,`LANGNO`, `DOCCONTENTTYPE`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='The allocation of graphics/documents to picture numbers';

CREATE TABLE IF NOT EXISTS `232` (
  `ARTNO` varchar(22) NOT NULL DEFAULT '' COMMENT 'Article Number in the data supplier format',
  `BRANDNO` smallint(4) NOT NULL COMMENT 'Data Supplier Number Constant (Key 040)',
  `TABLENO` smallint(3) NOT NULL DEFAULT '232' COMMENT 'Data Table Constant= 232',
  `SORTNO` smallint(2) NOT NULL DEFAULT '0' COMMENT 'Sequential sorting number for graphics that belong to the same article, starting with 1 per article. Used to determine the order of display.',
  `COUNTRYCODE` varchar(3) DEFAULT NULL COMMENT 'Country Code (-> 010)',
  `EXCLUDE` tinyint(1) DEFAULT NULL COMMENT '‘1’ = Country Code is an exclusion, ‘0’ = Country Code is an inclusion.',
  `DOCNO` int(9) NOT NULL COMMENT 'Unambiguous Graphics Number (->231)',
  `DOCTYPE` smallint(2) NOT NULL COMMENT '-> DT014',
  `DELETEFLAG` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 = delete all data records for the Delta Key, otherwise = 0',
  PRIMARY KEY (`ARTNO`,`BRANDNO`,`DOCNO`,`DOCTYPE`),
  KEY `DOCNO` (`DOCNO`,`DOCTYPE`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='The allocation of graphics to article numbers';

CREATE TABLE IF NOT EXISTS `233` (
  `BRANDNO` smallint(4) NOT NULL COMMENT 'Data Supplier Number Constant (Key 040)',
  `TABLENO` smallint(3) NOT NULL DEFAULT '233' COMMENT 'Data Table Constant= 233',
  `DOCNO` int(9) NOT NULL DEFAULT '0' COMMENT 'Unambiguous Graphic Number	( 100.000 * DatSupNo., < 100.000 * (DatSupNo. + 1))',
  `DOCTYPE` smallint(2) NOT NULL DEFAULT '0' COMMENT '-> DT014',
  `COORDNO` smallint(4) NOT NULL DEFAULT '0' COMMENT 'Coordinate number',
  `SEQNO` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Sequential number when more than one Coordinate Number',
  `LANGNO` smallint(3) NOT NULL COMMENT 'Language Number (020)',
  `TYPE` tinyint(1) NOT NULL COMMENT '0=Circle, 1=Square',
  `X1` smallint(4) NOT NULL COMMENT 'X-Coordinate centre of the circle / 1. point of the square',
  `Y1` smallint(4) NOT NULL COMMENT 'Y-Coordinate centre of the circle / 1. point of the square',
  `X2` smallint(4) NOT NULL COMMENT 'Radius of the circle / X-Coordinate 2. point of the square',
  `Y2` smallint(4) DEFAULT NULL COMMENT 'Y-Coordinate 2. point of the square',
  `DELETEFLAG` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 = delete all data records for the Delta Key, otherwise = 0',
  PRIMARY KEY (`DOCNO`,`DOCTYPE`,`COORDNO`,`SEQNO`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Context sensitive graphics';

CREATE TABLE IF NOT EXISTS `301` (
  `RESERVED` varchar(22) DEFAULT NULL COMMENT 'Constantly blank',
  `BRANDNO` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `TABLENO` smallint(3) NOT NULL DEFAULT '301' COMMENT 'Data Table Constant= 301',
  `NODE_ID` int(7) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the search node',
  `TREETYPNO` smallint(3) NOT NULL COMMENT 'Product section of the search node (KT 999)',
  `LEVEL` smallint(2) NOT NULL COMMENT 'Number of the hierarchical level2 of the search',
  `NODE_PARENT_ID` int(7) DEFAULT NULL COMMENT 'Node_ID of an entry in the relevant superior hierarchy level that is allocated this search node3',
  `SORTNO` smallint(2) NOT NULL COMMENT 'Sorting order of the search node that belongs to a Node_Parent_ID.',
  `TERMNO` int(9) NOT NULL COMMENT 'Number of the description text (-> 030)',
  `GENARTOK` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0, when grouping, 1, when the generic article is allowed for this code |	2 Level 1 is the highest hierarchical level. The limitation to 4 hierarchical levels is removed with the Data Release 0914 (Quarter 04/2014) | 3 This field is empty when the data record describes an entry in the superior hierarchy level.',
  PRIMARY KEY (`NODE_ID`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Hierarchically structured search tree';

CREATE TABLE IF NOT EXISTS `302` (
  `RESERVED` varchar(22) DEFAULT NULL COMMENT 'Constantly blank',
  `BRANDNO` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `TABLENO` smallint(3) NOT NULL DEFAULT '302' COMMENT 'Data Table Constant= 302',
  `NODE_ID` int(7) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the search node (->301)',
  `SORTNO` smallint(2) NOT NULL COMMENT 'Sorting order within a search node',
  `GENARTNO` mediumint(5) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the generic article (->320)',
  PRIMARY KEY (`NODE_ID`,`GENARTNO`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Allocation of generic articles to the Tecdoc search structure';

CREATE TABLE IF NOT EXISTS `304` (
  `BRANDNO` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `TABLENO` smallint(3) NOT NULL DEFAULT '304' COMMENT 'Data Table Constant= 304',
  `NODE_ID` int(7) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the search node (->301)',
  `GENARTNO` mediumint(5) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the generic article (->320)',
  `SORTNO` smallint(3) NOT NULL COMMENT 'Sorting order within one search node',
  `CRITNO` smallint(4) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the criterion (DT050), must be of type ‘K’',
  `CRITVAL` varchar(20) NOT NULL DEFAULT '' COMMENT 'Criterion Value',
  PRIMARY KEY (`NODE_ID`,`GENARTNO`,`CRITNO`,`CRITVAL`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Allocation of criteria to combinations of search tree nodes and generic articles within the TecDoc search structure';

CREATE TABLE IF NOT EXISTS `305` (
  `BRANDNO` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `TABLENO` smallint(3) NOT NULL DEFAULT '305' COMMENT 'Data Table Constant= 305',
  `QS_ID` smallint(4) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the quick-start icons',
  `TERMNO` int(9) NOT NULL COMMENT 'Number of the description text (-> 030)',
  `DOCNAME` varchar(30) NOT NULL COMMENT 'Bildname with extension',
  PRIMARY KEY (`QS_ID`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Description of the quick-start icons';

CREATE TABLE IF NOT EXISTS `306` (
  `BRANDNO` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `TABLENO` smallint(3) NOT NULL DEFAULT '306' COMMENT 'Data Table Constant= 306',
  `TREETYPNO` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Product area of the search node',
  `QS_ID` smallint(4) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the quick-start icon -> 305',
  `SORTNO` smallint(3) NOT NULL COMMENT 'Quick-start icons sorting within the product area',
  PRIMARY KEY (`TREETYPNO`,`QS_ID`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='The allocation of quick-start icons to the product areas (PC, CV, etc.)';

CREATE TABLE IF NOT EXISTS `307` (
  `BRANDNO` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `TABLENO` smallint(3) NOT NULL DEFAULT '307' COMMENT 'Data Table Constant= 307',
  `TREETYPNO` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Product area of the search node',
  `QS_ID` smallint(4) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the quick-start icon -> 305',
  `NODE_ID` int(7) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the search node ->301',
  `SORTNO` smallint(3) NOT NULL COMMENT 'Sorting of nodes/leaves within one product area after calling the quick-start icons (separate search tree, may deviate from DT 301).',
  PRIMARY KEY (`TREETYPNO`,`QS_ID`,`NODE_ID`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Allocation of quick-start icons to Nodes/Leaves within one product area (PC, CV, etc.)';

CREATE TABLE IF NOT EXISTS `320` (
  `BRANDNO` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `TABLENO` smallint(3) NOT NULL DEFAULT '320' COMMENT 'Data Table Constant= 320',
  `GENARTNO` mediumint(5) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the generic article',
  `NORMTERMNO` mediumint(5) NOT NULL COMMENT 'Unambiguous number of the standardised article description (-> 323)',
  `ASSGRPNO` smallint(4) DEFAULT NULL COMMENT 'Unambiguous number of the assembly group (->324)',
  `USAGENO` smallint(4) DEFAULT NULL COMMENT 'Unambiguous number of the usage (->325)',   
  `TERMNO` int(9) NOT NULL COMMENT 'Description Number (-> 030) for description of the GenArt',
  `OKPC` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: not allowed in PC linkage (->400). Otherwise 1.',
  `OKCV` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: not allowed in CV linkage (->400). Otherwise 1.',
  `OKENGINE` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: not allowed in engine linkage (->400). Otherwise 1.',
  `OKUNIVERSAL` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: is not a universal generic article, otherwise 1',
  `OKIND` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: is not allowed for vehicle independent search, otherwise 1',
  `DELETE` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: is not allowed for vehicle independent search, otherwise 1',
  `OKAXLE` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: not allowed in Axle linkage (->400). Otherwise 1.',
  PRIMARY KEY (`GENARTNO`),
  KEY `TERMNO` (`TERMNO`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Generic Articles';

CREATE TABLE IF NOT EXISTS `323` (
  `RESERVED` varchar(22) NOT NULL DEFAULT '' COMMENT 'Constantly blank',
  `BRANDNO` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `TABLENO` smallint(3) NOT NULL DEFAULT '323' COMMENT 'Data Table Constant= 323',
  `NORMTERMNO` mediumint(5) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the standardised article description (-> 323)',
  `TERMNO` int(9) NOT NULL COMMENT 'Description Number (-> 030) for description of the GenArt',
  PRIMARY KEY (`NORMTERMNO`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Standardised article description';

CREATE TABLE IF NOT EXISTS `324` (
  `RESERVED` varchar(22) NOT NULL DEFAULT '' COMMENT 'Constantly blank',
  `BRANDNO` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `TABLENO` smallint(3) NOT NULL DEFAULT '324' COMMENT 'Data Table Constant= 324',
  `ASSGRPNO` smallint(4) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the assembly group',
  `TERMNO` int(9) NOT NULL COMMENT 'Description Number (-> 030) for description of the GenArt',
  PRIMARY KEY (`ASSGRPNO`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Assembly groups';

CREATE TABLE IF NOT EXISTS `325` (
  `RESERVED` varchar(22) NOT NULL DEFAULT '' COMMENT 'Constantly blank',
  `BRANDNO` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `TABLENO` smallint(3) NOT NULL DEFAULT '325' COMMENT 'Data Table Constant= 325',
  `USAGENO` smallint(4) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the usage purpose',
  `TERMNO` int(9) NOT NULL COMMENT 'Description Number (-> 030) for description of the GenArt',
  PRIMARY KEY (`USAGENO`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Purpose of use';

CREATE TABLE IF NOT EXISTS `327` (
  `RESERVED` varchar(22) NOT NULL DEFAULT '' COMMENT 'Constantly blank',
  `BRANDNO` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `TABLENO` smallint(3) NOT NULL DEFAULT '327' COMMENT 'Data Table Constant= 327',
  `GENARTNO` mediumint(5) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the generic article (->320)',
  `SEQNO` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Sequential number within a generic article',
  `LANGNO` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Language Number (-> 020)',
  `TERM` varchar(60) NOT NULL COMMENT 'Descriptions',
  KEY `GENARTNO` (`GENARTNO`,`SEQNO`,`LANGNO`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Synonyms of the generic articles';

CREATE TABLE IF NOT EXISTS `328` (
  `RESERVED` varchar(22) NOT NULL DEFAULT '' COMMENT 'Constantly blank',
  `BRANDNO` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `TABLENO` smallint(3) NOT NULL DEFAULT '328' COMMENT 'Data Table Constant= 328',
  `GENARTNO` mediumint(5) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the generic article (->320)',
  `SEQNO` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Sequential number within one GenartNr',
  `COUNTRYCODE` varchar(3) DEFAULT NULL COMMENT 'Country Code (-> 010)',
  `CRITNO` smallint(4) NOT NULL COMMENT 'Criterion Number (-> 050)',
  `ONLYCRIT` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1: must be specified as an article criterion (-> 210). Otherwise 0.',
  `ONLYLNK` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1: must be specified as linkage criterion (-> 400). Otherwise 0.',
  `EXCLUDE` tinyint(1) DEFAULT '0' COMMENT '‘1’ = Country Code is an exclusion, ‘0’ = Country Code is an inclusion.',
  KEY `GENARTNO` (`GENARTNO`,`SEQNO`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Mandatory criteria for generic articles';

CREATE TABLE IF NOT EXISTS `329` (
  `RESERVED` varchar(22) NOT NULL DEFAULT '' COMMENT 'Constantly blank',
  `BRANDNO` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `TABLENO` smallint(3) NOT NULL DEFAULT '329' COMMENT 'Data Table Constant= 329',
  `GENARTNO` mediumint(5) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the generic article (->320)',
  `SEQNO` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Sequential number within a GenArtNr',
  `COUNTRYCODE` varchar(3) DEFAULT NULL COMMENT 'Country Code (-> 010)',
  `CRITNO` smallint(4) NOT NULL COMMENT 'Criterion Number (-> 050)',
  `ART` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1: proposed as article criterion (-> 210). Otherwise 0.',
  `LNK` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1: proposed as linkage criterion (-> 400). Otherwise 0.',
  `EXCLUDE` tinyint(1) DEFAULT '0' COMMENT '‘1’ = Country Code is an exclusion, ‘0’ = Country Code is an inclusion.',
  KEY `GENARTNO` (`GENARTNO`,`SEQNO`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Proposed criteria for generic articles';

CREATE TABLE IF NOT EXISTS `330` (
  `BRANDNO` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `TABLENO` smallint(3) NOT NULL DEFAULT '330' COMMENT 'Data Table Constant= 330',
  `GENARTNO` mediumint(5) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the generic article (->320)',
  `SEQNO` smallint(3) NOT NULL DEFAULT '0' COMMENT 'LfdNr (DT328)',
  `SORTNO` smallint(3) NOT NULL COMMENT 'Sorting Order',
  `CRITVAL` varchar(3) NOT NULL DEFAULT '' COMMENT 'Criterion Value, criterion must be of type ‘K’',
  PRIMARY KEY (`GENARTNO`,`SEQNO`,`CRITVAL`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Allocation of criteria values to GA mandatory criteria';

-- new Tecdoc table from 07/2021 
CREATE TABLE IF NOT EXISTS `331` (
  `BRANDNO` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `TABLENO` smallint(3) NOT NULL DEFAULT '331' COMMENT 'Data Table Constant= 331',
  `GENARTNO` mediumint(5) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the generic article (->320)',
  `SORTNO` smallint(4) NOT NULL COMMENT 'Sort order for display of criteria on first catalogue page. Needs to be unique for all entries of one GA. Not required for usage=2 criteria',
  `CRITNO` smallint(4) NOT NULL COMMENT 'Criterion Number (-> 050)',
  `USAGE` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1=mandatory / 0=optional on 1st page / 2=recommended for second catalogue page / 9=not permitted at all on GA',
  `ONLYARTICLE` tinyint(1) DEFAULT NULL COMMENT 'Only allowed to be used on article level (**)',
  PRIMARY KEY (`GENARTNO`,`CRITNO`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Permitted Generic Article/Criteria combinations for use on first catalogue page';

-- new Tecdoc table from 07/2021
CREATE TABLE IF NOT EXISTS `332` (
  `BRANDNO` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `TABLENO` smallint(3) NOT NULL DEFAULT '332' COMMENT 'Data Table Constant= 332',
  `GENARTNO` mediumint(5) NOT NULL DEFAULT '0' COMMENT 'References entry in table 331',
  `CRITNO` smallint(4) NOT NULL COMMENT 'Criterion Number (-> 050)',
  `CRITVAL` varchar(3) NOT NULL DEFAULT '' COMMENT 'Criterion Value, criterion must be of type ‘K’',
  PRIMARY KEY (`GENARTNO`,`CRITNO`,`CRITVAL`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Allocation of criteria values to GA criteria (new TA DQM standard)';

-- new Tecdoc table from 07/2021
CREATE TABLE IF NOT EXISTS `333` (
  `BRANDNO` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `TABLENO` smallint(3) NOT NULL DEFAULT '333' COMMENT 'Data Table Constant= 333',
  `CRITNO` smallint(4) NOT NULL COMMENT 'Criterion Number (-> 050)',
  `CRITNOTYPE` varchar(3) NOT NULL DEFAULT '' COMMENT '“050”: CritNo contains reference to table 050, “053”: CritNo contains reference to table 053',
  `GENARTNO` mediumint(5) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the generic article (->320)',
  `CONSTRAINT` varchar(100) NOT NULL DEFAULT '' COMMENT 'Rule for value of CritNo used for article of GenArtNo. Provided as Regular Expression following <tbd> standard notation',
  PRIMARY KEY (`CRITNOTYPE`,`CRITNO`,`GENARTNO`),
  KEY (`GENARTNO`,`CRITNO`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Constraints to standardise the usage of (numeric) criteria';

		/*
		What it means COLUMMN "CONSTRAINT"? Regular expression [table 333]
		------
			For numerical mandatory fields of the exact length l: 					[\d]{l}
			For numerical mandatory fields up to the length l: 						[\d]{1,l}
			For numerical fields with n pre-decimal places and m decimal places		[0-9]{n}[\.][0-9]{m}
			For alphanumeric mandatory fields of the exact length l: 				[\w]{l}
			For alphanumeric mandatory fields up to the length l 					[\w]{1,l}
			For a fixed length field of length n with numeric characters
			and leading zeros (Classical TAF representation of numeric
			IDs, like kTypeNo)														(?!000000000)[0-9]{9}				Example with length = 9
			For a single-digit field with the permitted values “a”, “b” or “c”		[abc]
			For a date field in the yyyymm format 									(19|20)[0-9]{2} (0[1-9]|1[012])
			For fields of length l that are only permitted to contain 				[a-zA-Z]{l}
		*/

-- new Tecdoc table from 07/2021
CREATE TABLE IF NOT EXISTS `334` (
  `BRANDNO` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `TABLENO` smallint(3) NOT NULL DEFAULT '334' COMMENT 'Data Table Constant= 334',
  `RESERVED` varchar(27) NOT NULL DEFAULT '' COMMENT 'For future uses – filled with blank characters',
  `GENARTNO` mediumint(5) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the generic article (->320)',
  PRIMARY KEY (`GENARTNO`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Generic Articles requiring a safety data sheet';

-- new Tecdoc table from 06/2022
CREATE TABLE IF NOT EXISTS `340` (
  `BRANDNO` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `TABLENO` smallint(3) NOT NULL DEFAULT '340' COMMENT 'Data Table Constant= 340',
  `GENARTNO` mediumint(5) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the generic article (->320)',
  `ENGTYPE` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Engine type (KT 080)',
  PRIMARY KEY (`GENARTNO`,`ENGTYPE`),
  KEY (`ENGTYPE`),
  KEY (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Permitted allocations of Engine Types to Generic Articles';

CREATE TABLE IF NOT EXISTS `400` (
  `ARTNO` varchar(22) NOT NULL DEFAULT '' COMMENT 'Article Number in the data supplier format',
  `BRANDNO` smallint(4) NOT NULL COMMENT 'Data Supplier Number Constant (Key 040)',
  `TABLENO` smallint(3) NOT NULL DEFAULT '400' COMMENT 'Data Table Constant= 400',
  `GENARTNO` mediumint(5) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the generic article (->320)',
  `LNKTARGETTYPE` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Type of the linkage target (PC, CV, engine, …)',
  `LNKTARGETNO` int(9) NOT NULL DEFAULT '0' COMMENT 'Number of the linkage target (KTypeNr, NTypeNr, MotNr, HerIdNr, …)',  
  `SEQNO` int(9) NOT NULL DEFAULT '0' COMMENT 'Sequential number within the ArtNr-GenArtNr-VknZielNr-linkage',
  `DELETEFLAG` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 = delete all data records for the Delta Key, otherwise = 0 (*)',
  PRIMARY KEY (`LNKTARGETTYPE`,`LNKTARGETNO`,`GENARTNO`,`ARTNO`,`BRANDNO`,`SEQNO`),
  KEY `ARTNO` (`ARTNO`,`BRANDNO`),
  KEY `LNKTARGETTYPE` (`LNKTARGETTYPE`,`LNKTARGETNO`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Linkage of the articles with linkage targets';

CREATE TABLE IF NOT EXISTS `401` (
  `ARTNO` varchar(22) NOT NULL DEFAULT '' COMMENT 'Article Number in the data supplier format',
  `BRANDNO` smallint(4) NOT NULL COMMENT 'Data Supplier Number Constant (Key 040)',
  `TABLENO` smallint(3) NOT NULL DEFAULT '401' COMMENT 'Data Table Constant= 401',
  `GENARTNO` mediumint(5) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the generic article (->320)',
  `LNKTARGETTYPE` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Type of the linkage target (PC, CV, engine, …)',
  `LNKTARGETNO` int(9) NOT NULL DEFAULT '0' COMMENT 'Number of the linkage target (KTypeNr, NTypeNr, MotNr, HerIdNr, …)',
  `SEQNO` int(9) NOT NULL DEFAULT '0' COMMENT 'Sequential number within the ArtNr-GenArtNr-VknZielNr-linkage',
  `SORTNO` smallint(2) NOT NULL DEFAULT '0' COMMENT 'Display sequence',
  `COUNTRYCODE` varchar(3) DEFAULT NULL COMMENT 'Country Code (-> 010)',
  `INFTYPE` smallint(3) NOT NULL COMMENT 'Information Type (KT 072)',
  `FIRSTPAGE` tinyint(1) NOT NULL COMMENT 'Immediate Display = 1: Information is shown on the 1st article page of the presentation system and repeated in bold on the 2nd article page.',
  `TXTMODNO` varchar(6) NOT NULL COMMENT 'Text module',
  `EXCLUDE` tinyint(1) DEFAULT '0' COMMENT '‘1’ = Country Code is an exclusion, ‘0’ = Country Code is an inclusion.',
  `DELETEFLAG` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 = delete all data records for the Delta Key, otherwise = 0',
  PRIMARY KEY (`LNKTARGETTYPE`,`LNKTARGETNO`,`GENARTNO`,`ARTNO`,`BRANDNO`,`SEQNO`,`SORTNO`),
  KEY `ARTNO` (`ARTNO`,`BRANDNO`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Search menu dependent information texts';

CREATE TABLE IF NOT EXISTS `402` (
  `ARTNO` varchar(22) NOT NULL DEFAULT '' COMMENT 'Article Number in the data supplier format',
  `BRANDNO` smallint(4) NOT NULL COMMENT 'Data Supplier Number Constant (-> 100)',
  `TABLENO` smallint(3) NOT NULL DEFAULT '402' COMMENT 'Data Table Constant= 402',
  `GENARTNO` mediumint(5) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the generic article (->320)',
  `LNKTARGETTYPE` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Type of the linkage target (PC, CV, engine, …)',
  `LNKTARGETNO` int(9) NOT NULL DEFAULT '0' COMMENT 'Number of the linkage target (KTypeNr, NTypeNr, MotNr, HerIdNr, …)',
  `SEQNO` int(9) NOT NULL DEFAULT '0' COMMENT 'Sequential number within the ArtNr-GenArtNr-VknZielNr-linkage',
  `COUNTRYCODE` varchar(3) NOT NULL DEFAULT '' COMMENT 'Country Code (-> 010 or 012)',
  `DELETEFLAG` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 = delete all data records for the Delta Key, otherwise = 0',
  PRIMARY KEY (`LNKTARGETTYPE`,`LNKTARGETNO`,`GENARTNO`,`ARTNO`,`BRANDNO`,`SEQNO`,`COUNTRYCODE`),
  KEY `ARTNO` (`ARTNO`,`BRANDNO`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Linkages in DT400 that may not be displayed in certain countries.';

CREATE TABLE IF NOT EXISTS `403` (
  `ARTNO` varchar(22) NOT NULL DEFAULT '' COMMENT 'Article Number in the data supplier format',
  `BRANDNO` smallint(4) NOT NULL COMMENT 'Data supplier number (Key 040)',
  `TABLENO` smallint(3) NOT NULL DEFAULT '403' COMMENT 'Data Table Constant= 403',
  `GENARTNO` mediumint(5) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the generic article (->320)',
  `LNKTARGETTYPE` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Type of the linkage target (PC, CV, engine, …)',
  `LNKTARGETNO` int(9) NOT NULL DEFAULT '0' COMMENT 'Number of the linkage target (KTypeNr, NTypeNr, MotNr, HerIdNr, …)',
  `SEQNO` int(9) NOT NULL DEFAULT '0' COMMENT 'Sequential number within the ArtNr-GenArtNr-VknZielNr-linkage',
  `COUNTRYCODE` varchar(3) NOT NULL DEFAULT '' COMMENT 'Country Code (-> 010 or 012)',
  `EXCLUDE` tinyint(1) DEFAULT '0' COMMENT '1 = country code is an exclusion, "0" = country code is an inclusion.',
  `DELETEFLAG` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 = delete all data records for the Delta Key, otherwise = 0',
  PRIMARY KEY (`LNKTARGETTYPE`,`LNKTARGETNO`,`GENARTNO`,`ARTNO`,`BRANDNO`,`SEQNO`,`COUNTRYCODE`),
  KEY `ARTNO` (`ARTNO`,`BRANDNO`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Country restriction of the linkage';

CREATE TABLE IF NOT EXISTS `404` (
  `ARTNO` varchar(22) NOT NULL DEFAULT '' COMMENT 'Article Number in the data supplier format',
  `BRANDNO` smallint(4) NOT NULL COMMENT 'Data supplier number (Key 040)',
  `TABLENO` smallint(3) NOT NULL DEFAULT '404' COMMENT 'Data Table Constant= 404',
  `GENARTNO` mediumint(5) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the generic article (->320)',
  `LNKTARGETTYPE` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Type of the linkage target (PC, CV, engine, …)',
  `LNKTARGETNO` int(9) NOT NULL DEFAULT '0' COMMENT 'Number of the linkage target (KTypeNr, NTypeNr, MotNr, HerIdNr, …)',
  `SORTNO` int(9) NOT NULL COMMENT 'Display sequence',
  `DELETEFLAG` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 = delete all data records for the Delta Key, otherwise = 0',
  PRIMARY KEY (`LNKTARGETTYPE`,`LNKTARGETNO`,`GENARTNO`,`ARTNO`,`BRANDNO`),
  KEY `ARTNO` (`ARTNO`,`BRANDNO`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sorting of the article linkages';

CREATE TABLE IF NOT EXISTS `410` (
  `ARTNO` varchar(22) NOT NULL DEFAULT '' COMMENT 'Article Number in the data supplier format',
  `BRANDNO` smallint(4) NOT NULL COMMENT 'Data Supplier Number Constant (Key 040)',
  `TABLENO` smallint(3) NOT NULL DEFAULT '410' COMMENT 'Data Table Constant= 410',
  `GENARTNO` mediumint(5) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the generic article (->320)',
  `LNKTARGETTYPE` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Type of the linkage target (PC, CV, engine, …)',
  `LNKTARGETNO` int(9) NOT NULL DEFAULT '0' COMMENT 'Number of the linkage target (KTypeNr, NTypeNr, MotNr, HerIdNr, …)',
  `SEQNO` int(9) NOT NULL DEFAULT '0' COMMENT 'Sequential number within the ArtNr-GenArtNr-VknZielNr-linkage',
  `SORTNO` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Display sequence',
  `CRITNO` smallint(4) NOT NULL COMMENT 'Criterion number (-> 050)',
  `CRITVAL` varchar(20) NOT NULL COMMENT 'Criterion value',
  `FIRSTPAGE` tinyint(1) DEFAULT '0' COMMENT 'Immediate display = ‘1’, otherwise ‘0’',
  `COUNTRYCODE` varchar(3) DEFAULT NULL COMMENT 'Country code (-> 010 or 012)',
  `EXCLUDE` tinyint(1) DEFAULT '0' COMMENT '‘1’ = Country Code is an exclusion, ‘0’ = Country Code is an inclusion.',
  `DELETEFLAG` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 = delete all data records for the Delta Key, otherwise = 0',
  PRIMARY KEY (`LNKTARGETTYPE`,`LNKTARGETNO`,`GENARTNO`,`ARTNO`,`BRANDNO`,`SEQNO`,`SORTNO`),
  KEY `ARTNO` (`ARTNO`,`BRANDNO`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Attributes (criteria) for the linkage';

CREATE TABLE IF NOT EXISTS `432` (
  `ARTNO` varchar(22) NOT NULL DEFAULT '' COMMENT 'Article Number in the data supplier format',
  `BRANDNO` smallint(4) NOT NULL COMMENT 'Data Supplier Number Constant (Key 040)',
  `TABLENO` smallint(3) NOT NULL DEFAULT '432' COMMENT 'Data Table Constant= 432',
  `GENARTNO` mediumint(5) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the generic article (->320)',
  `LNKTARGETTYPE` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Type of the linkage target (PC, CV, engine, …)',
  `LNKTARGETNO` int(9) NOT NULL DEFAULT '0' COMMENT 'Number of the linkage target (KTypeNr, NTypeNr, MotNr, HerIdNr, …)',
  `SEQNO` int(9) NOT NULL DEFAULT '0' COMMENT 'Sequential number within the ArtNr-GenArtNr-VknZielNr-linkage',
  `COUNTRYCODE` varchar(3) DEFAULT NULL COMMENT 'Country code (-> 010 or 012)',
  `SORTNO` smallint(2) NOT NULL DEFAULT '0' COMMENT 'Sorting Order',
  `DOCNO` int(9) NOT NULL COMMENT 'Unambiguous BildNr (-> 231)',
  `DOCTYPE` smallint(2) NOT NULL COMMENT '-> DT 014.',
  `EXCLUDE` tinyint(1) DEFAULT '0' COMMENT '‘1’ = Country Code is an exclusion, ‘0’ = Country Code is an inclusion.',
  `DELETEFLAG` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 = delete all data records for the Delta Key, otherwise = 0',
  KEY `LNKTARGETTYPE` (`LNKTARGETTYPE`,`LNKTARGETNO`,`GENARTNO`,`ARTNO`,`BRANDNO`,`SEQNO`,`SORTNO`),
  KEY `ARTNO` (`ARTNO`,`BRANDNO`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='The allocation of graphics to vehicle linkages';

CREATE TABLE IF NOT EXISTS `532` (
  `RESERVED` varchar(22) NOT NULL DEFAULT '' COMMENT 'Constantly blank',
  `BRANDNO` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `TABLENO` smallint(3) NOT NULL DEFAULT '532' COMMENT 'Data Table Constant= 532',
  `NTYPNO` int(9) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the CV primary types',
  `KMODNO` mediumint(5) NOT NULL COMMENT 'Model Series CV (-> 110)',
  `SORTNO` smallint(4) NOT NULL COMMENT 'Sorting within one model series',
  `CTERMNO` int(9) NOT NULL COMMENT 'Description of the CV type (-> SA 012)',
  `MODYFROM` mediumint(6) DEFAULT NULL COMMENT 'Model Year from (YYYYMM)',
  `MODYTO` mediumint(6) DEFAULT NULL COMMENT 'Model Year to (YYYYMM)',
  `BODYTYPE` smallint(3) NOT NULL COMMENT 'Body Type (KT 067)',
  `ENGTYPE` smallint(3) NOT NULL COMMENT 'Engine Type (KT 080)',
  `KWFROM` smallint(4) NOT NULL COMMENT 'Engine output in kW from',
  `KWTO` smallint(4) DEFAULT NULL COMMENT 'Engine output in kW to',
  `HPFROM` smallint(4) NOT NULL COMMENT 'Engine output in HP from',
  `HPTO` smallint(4) DEFAULT NULL COMMENT 'Engine output in HP to',
  `CCMTECH` mediumint(5) NOT NULL COMMENT 'Engine capacity in cc (technical)',
  `TONNAGE` mediumint(5) NOT NULL COMMENT 'Tonnage in tonnes with 2 decimal spaces (999V99)',
  `AXLECONFIG` smallint(3) DEFAULT NULL COMMENT 'Axle Configuration (KT 065)',  
  `DELETE` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1: Criterion is proposed for deletion, otherwise 0',
  PRIMARY KEY (`NTYPNO`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Description of all CV primary types';

CREATE TABLE IF NOT EXISTS `533` (
  `RESERVED` varchar(22) NOT NULL DEFAULT '' COMMENT 'Constantly blank',
  `BRANDNO` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `TABLENO` smallint(3) NOT NULL DEFAULT '533' COMMENT 'Data Table Constant= 533',
  `NTYPNO` int(9) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the CV primary type (->532)',
  `COUNTRYCODE` varchar(3) NOT NULL DEFAULT '' COMMENT 'Country Code (-> 010)',
  `EXCLUDE` tinyint(1) NOT NULL DEFAULT '0' COMMENT '‘1’ = Country Code is an exclusion, ‘0’ = Country Code is an inclusion.',
  PRIMARY KEY (`NTYPNO`,`COUNTRYCODE`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Inclusion of certain countries for a CV type';

CREATE TABLE IF NOT EXISTS `534` (
  `RESERVED` varchar(22) NOT NULL DEFAULT '' COMMENT 'Constantly blank',
  `BRANDNO` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `TABLENO` smallint(3) NOT NULL DEFAULT '534' COMMENT 'Data Table Constant= 534',
  `NTYPNO` int(9) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the CV primary type (->532)',
  `COUNTRYCODE` varchar(3) NOT NULL DEFAULT '' COMMENT 'Country Code (-> 010)',
  `MODYFROM` mediumint(6) DEFAULT NULL COMMENT 'Model Year from (YYYYMM)',
  `MODYTO` mediumint(6) DEFAULT NULL COMMENT 'Model Year to (YYYYMM)',
  PRIMARY KEY (`NTYPNO`,`COUNTRYCODE`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Description of all country-specific deviations of CV types';

CREATE TABLE IF NOT EXISTS `535` (
  `RESERVED` varchar(22) NOT NULL DEFAULT '' COMMENT 'Constantly blank',
  `BRANDNO` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `TABLENO` smallint(3) NOT NULL DEFAULT '535' COMMENT 'Data Table Constant= 535',
  `NTYPNO` int(9) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the CV primary type (->532)',
  `NTYPSUBNO` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the secondary type within a primary type',
  `SORTNO` smallint(3) NOT NULL COMMENT 'Sorting within the primary type',
  `TERM` varchar(60) DEFAULT NULL COMMENT 'Description of the CV secondary type',
  `MODYFROM` mediumint(6) DEFAULT NULL COMMENT 'Model Year from (YYYYMM)',
  `MODYTO` mediumint(6) DEFAULT NULL COMMENT 'Model Year to (YYYYMM)',
  PRIMARY KEY (`NTYPNO`,`NTYPSUBNO`),
  KEY `TERM` (`TERM`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Description of all CV secondary types';

CREATE TABLE IF NOT EXISTS `536` (
  `RESERVED` varchar(22) NOT NULL DEFAULT '' COMMENT 'Constantly blank',
  `BRANDNO` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `TABLENO` smallint(3) NOT NULL DEFAULT '536' COMMENT 'Data Table Constant= 536',
  `NTYPNO` int(9) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the CV primary type (->532)',
  `NTYPSUBNO` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the secondary type within a primary type (->535)',
  `COUNTRYCODE` varchar(3) NOT NULL DEFAULT '' COMMENT 'Country Code (-> 010)',
  `EXCLUDE` tinyint(1) NOT NULL DEFAULT '0' COMMENT '‘1’ = Country Code is an exclusion, ‘0’ = Country Code is an inclusion.',
  PRIMARY KEY (`NTYPNO`,`NTYPSUBNO`,`COUNTRYCODE`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Inclusion of certain countries for CV secondary types';

CREATE TABLE IF NOT EXISTS `537` (
  `RESERVED` varchar(22) NOT NULL DEFAULT '' COMMENT 'Constantly blank',
  `BRANDNO` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `TABLENO` smallint(3) NOT NULL DEFAULT '537' COMMENT 'Data Table Constant= 537',
  `NTYPNO` int(9) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the CV primary type (->532)',
  `NTYPSUBNO` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the secondary type within a primary type (->535)',
  `SEQNO` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Sequential number within a NTypNr-NTypSubNr combination.',
  `ENGNO` mediumint(5) NOT NULL COMMENT 'Engine Number (-> 155)',
  `MODYFROM` mediumint(6) DEFAULT NULL COMMENT 'Model Year from (YYYYMM)',
  `MODYTO` mediumint(6) DEFAULT NULL COMMENT 'Model Year to (YYYYMM)',
  `COUNTRYCODE` varchar(3) DEFAULT NULL COMMENT 'Country Code (-> 010)',
  `EXCLUDE` tinyint(1) DEFAULT '0' COMMENT '‘1’ = Country Code is an exclusion, ‘0’ = Country Code is an inclusion.',
  PRIMARY KEY (`NTYPNO`,`NTYPSUBNO`,`SEQNO`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Allocation of engine numbers to CV primary and secondary types';

CREATE TABLE IF NOT EXISTS `538` (
  `RESERVED` varchar(22) NOT NULL DEFAULT '' COMMENT 'Constantly blank',
  `BRANDNO` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `TABLENO` smallint(3) NOT NULL DEFAULT '538' COMMENT 'Data Table Constant= 538',
  `NTYPNO` int(9) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the CV primary type (->532)',
  `NTYPSUBNO` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the secondary type within a primary type (->535)',
  `MANIDNO` mediumint(5) NOT NULL DEFAULT '0' COMMENT 'Manufacturer ID Number (-> 554)',
  PRIMARY KEY (`NTYPNO`,`NTYPSUBNO`,`MANIDNO`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='The allocation of CV primary and secondary types to manufacturer ID numbers';

CREATE TABLE IF NOT EXISTS `539` (
  `RESERVED` varchar(22) NOT NULL DEFAULT '' COMMENT 'Constantly blank',
  `BRANDNO` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `TABLENO` smallint(3) NOT NULL DEFAULT '539' COMMENT 'Data Table Constant= 539',
  `NTYPNO` int(9) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the CV primary type (->532)',
  `NTYPSUBNO` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the secondary type within a primary type (->535)',
  `MANIDNO` mediumint(5) NOT NULL DEFAULT '0' COMMENT 'Manufacturer ID Number (-> 554)',
  `COUNTRYCODE` varchar(3) NOT NULL DEFAULT '' COMMENT 'Country Code (-> 010)',
  `EXCLUDE` tinyint(1) NOT NULL DEFAULT '0' COMMENT '‘1’ = Country Code is an exclusion, ‘0’ = Country Code is an inclusion.',
  PRIMARY KEY (`NTYPNO`,`NTYPSUBNO`,`MANIDNO`,`COUNTRYCODE`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Inclusion of certain countries for the allocation of CV primary and secondary types to manufacturer ID numbers';

CREATE TABLE IF NOT EXISTS `540` (
  `RESERVED` varchar(22) NOT NULL DEFAULT '' COMMENT 'Constantly blank',
  `BRANDNO` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `TABLENO` smallint(3) NOT NULL DEFAULT '540' COMMENT 'Data Table Constant= 540',
  `NTYPNO` int(9) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the CV primary type (->532)',
  `NTYPSUBNO` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the secondary type within a primary type (->535)',
  `SEQNO` smallint(2) NOT NULL DEFAULT '0' COMMENT 'Sequential number within a NTypNr-NTypSubNr combination.',
  `VOLT` smallint(2) NOT NULL COMMENT 'Main Current Voltage',
  `COUNTRYCODE` varchar(3) DEFAULT NULL COMMENT 'Country Code (-> 010)',
  `EXCLUDE` tinyint(1) DEFAULT '0' COMMENT '‘1’ = Country Code is an exclusion, ‘0’ = Country Code is an inclusion.',
  PRIMARY KEY (`NTYPNO`,`NTYPSUBNO`,`SEQNO`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Allocation of different voltages for CV primary and secondary types and to manufacturer ID numbers.';

CREATE TABLE IF NOT EXISTS `541` (
  `BRANDNO` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `TABLENO` smallint(3) NOT NULL DEFAULT '541' COMMENT 'Data Table Constant= 541',
  `DRIVCABNO` mediumint(5) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the driver cab',
  `MANNO` mediumint(6) NOT NULL COMMENT 'Unambiguous number of the driver cab manufacturer (->100)',
  `KMODNO` mediumint(5) NOT NULL COMMENT 'Unambiguous number of the CV model series to which the driver cab is allocated (->110)',
  `CABDESIGN` varchar(30) DEFAULT NULL COMMENT 'Cab Design',
  `CTERMNO` int(9) NOT NULL COMMENT 'Description number (-> 012) for the sales description',
  `RESERVED` varchar(21) NOT NULL DEFAULT '' COMMENT 'Constantly blank',
  `SIZE` smallint(3) DEFAULT NULL COMMENT 'Driver Cab Size (-> 69)',
  `MODYFROM` mediumint(6) DEFAULT NULL COMMENT 'Model Year from (YYYYMM)',
  `MODYTO` mediumint(6) DEFAULT NULL COMMENT 'Model Year to (YYYYMM)',
  `LENGTH` int(7) DEFAULT NULL COMMENT 'Driver cab length in mm',
  `HEIGHT` int(7) DEFAULT NULL COMMENT 'Driver cab height in mm',
  `WIDTH` int(7) DEFAULT NULL COMMENT 'Driver cab width in mm',
  `DELETE` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1: Criterion is proposed for deletion, otherwise 0',
  PRIMARY KEY (`DRIVCABNO`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Description of all CV driver cabs';

CREATE TABLE IF NOT EXISTS `542` (
  `RESERVED` varchar(22) NOT NULL DEFAULT '' COMMENT 'Constantly blank',
  `BRANDNO` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `TABLENO` smallint(3) NOT NULL DEFAULT '542' COMMENT 'Data Table Constant= 542',
  `DRIVCABNO` mediumint(5) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the driver cab (->541)',
  `COUNTRYCODE` varchar(3) NOT NULL DEFAULT '' COMMENT 'Country Code (-> 010)',
  `EXCLUDE` tinyint(1) NOT NULL DEFAULT '0' COMMENT '‘1’ = Country Code is an exclusion, ‘0’ = Country Code is an inclusion.',
  PRIMARY KEY (`DRIVCABNO`,`COUNTRYCODE`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Inclusion of certain countries for a CV driver cab';

CREATE TABLE IF NOT EXISTS `543` (
  `RESERVED` varchar(22) NOT NULL DEFAULT '' COMMENT 'Constantly blank',
  `BRANDNO` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `TABLENO` smallint(3) NOT NULL DEFAULT '543' COMMENT 'Data Table Constant= 543',
  `NTYPNO` int(9) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the CV primary type (->532)',
  `NTYPSUBNO` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the secondary type within a primary type (->535)',
  `SEQNO` smallint(2) NOT NULL DEFAULT '0' COMMENT 'Sequential number within a NTypNr-NTypSubNr combination.',
  `DRIVCABNO` mediumint(5) NOT NULL COMMENT 'Unambiguous number of the driver cab (->541)',
  `MODYFROM` mediumint(6) DEFAULT NULL COMMENT 'Model Year from (YYYYMM)',
  `MODYTO` mediumint(6) DEFAULT NULL COMMENT 'Model Year to (YYYYMM)',
  `COUNTRYCODE` varchar(3) DEFAULT NULL COMMENT 'Country Code (-> 010)',
  `EXCLUDE` tinyint(1) DEFAULT '0' COMMENT '‘1’ = Country Code is an exclusion, ‘0’ = Country Code is an inclusion.',
  PRIMARY KEY (`NTYPNO`,`NTYPSUBNO`,`SEQNO`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='The allocation of driver cabs to CV primary and secondary types';

CREATE TABLE IF NOT EXISTS `544` (
  `BRANDNO` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `TABLENO` smallint(3) NOT NULL DEFAULT '544' COMMENT 'Data Table Constant= 544',
  `TRANSMNO` mediumint(5) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the transmission',
  `MANNO` mediumint(6) NOT NULL COMMENT 'Unambiguous number of the transmission manufacturer (->100)',
  `CODE` varchar(30) NOT NULL COMMENT 'Transmission Code',
  `TRANSMTYPE` smallint(3) DEFAULT NULL COMMENT 'Transmission Type (KT 85)',
  `MODYFROM` mediumint(6) DEFAULT NULL COMMENT 'Model Year from (YYYYMM)',
  `MODYTO` mediumint(6) DEFAULT NULL COMMENT 'Model Year to (YYYYMM)',
  `TRMIN` mediumint(5) DEFAULT NULL COMMENT 'Transmission Ratio Minimum',
  `TRMAX` mediumint(5) DEFAULT NULL COMMENT 'Transmission Ratio Maximum',
  `TRINV` mediumint(5) DEFAULT NULL COMMENT 'Transmission Ratio Reverse',
  `TRANSMID` varchar(10) DEFAULT NULL COMMENT 'Transmission ID',
  `SPEEDS` smallint(2) DEFAULT NULL COMMENT 'Number of gearbox speeds',
  PRIMARY KEY (`TRANSMNO`),
  KEY `CODE` (`CODE`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Description of all transmissions';

CREATE TABLE IF NOT EXISTS `545` (
  `RESERVED` varchar(22) NOT NULL DEFAULT '' COMMENT 'Constantly blank',
  `BRANDNO` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `TABLENO` smallint(3) NOT NULL DEFAULT '545' COMMENT 'Data Table Constant= 545',
  `TRANSMNO` mediumint(5) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the transmission (->544)',
  `COUNTRYCODE` varchar(3) NOT NULL DEFAULT '' COMMENT 'Country Code (-> 010)',
  `EXCLUDE` tinyint(1) NOT NULL DEFAULT '0' COMMENT '‘1’ = Country Code is an exclusion, ‘0’ = Country Code is an inclusion.',
  PRIMARY KEY (`TRANSMNO`,`COUNTRYCODE`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Inclusion of certain countries for a transmission';

CREATE TABLE IF NOT EXISTS `546` (
  `RESERVED` varchar(22) NOT NULL DEFAULT '' COMMENT 'Constantly blank',
  `BRANDNO` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `TABLENO` smallint(3) NOT NULL DEFAULT '546' COMMENT 'Data Table Constant= 546',
  `NTYPNO` int(9) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the CV primary type (->532)',
  `NTYPSUBNO` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the secondary type within a primary type (->535)',
  `SEQNO` smallint(2) NOT NULL DEFAULT '0' COMMENT 'Sequential number within a NTypNr-NTypSubNr combination.',
  `TRANSMNO` mediumint(5) NOT NULL COMMENT 'Unambiguous number of the transmission (->544)',
  `MODYFROM` mediumint(6) DEFAULT NULL COMMENT 'Model Year from (YYYYMM)',
  `MODYTO` mediumint(6) DEFAULT NULL COMMENT 'Model Year to (YYYYMM)',
  `COUNTRYCODE` varchar(3) DEFAULT NULL COMMENT 'Country Code (-> 010)',
  `EXCLUDE` tinyint(1) DEFAULT '0' COMMENT '‘1’ = Country Code is an exclusion, ‘0’ = Country Code is an inclusion.',
  PRIMARY KEY (`NTYPNO`,`NTYPSUBNO`,`SEQNO`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='The allocation of transmissions to CV primary and secondary types';

CREATE TABLE IF NOT EXISTS `550` (
  `RESERVED` varchar(22) NOT NULL DEFAULT '' COMMENT 'Constantly blank',
  `BRANDNO` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `TABLENO` smallint(3) NOT NULL DEFAULT '550' COMMENT 'Data Table Constant= 550',
  `NTYPNO` int(9) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the CV primary type (->532)',
  `NTYPSUBNO` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the secondary type within a primary type (->535)',
  `SEQNO` smallint(2) NOT NULL DEFAULT '0' COMMENT 'Sequential number within a NTypNr-NTypSubNr combination.',
  `WHEELBASE` mediumint(6) NOT NULL COMMENT 'Wheelbase in mm',
  `AXLEPOS` smallint(3) NOT NULL COMMENT 'Axle Position (KT 064)',
  `COUNTRYCODE` varchar(3) DEFAULT NULL COMMENT 'Country Code (-> 010)',
  `EXCLUDE` tinyint(1) DEFAULT '0' COMMENT '‘1’ = Country Code is an exclusion, ‘0’ = Country Code is an inclusion.',
  PRIMARY KEY (`NTYPNO`,`NTYPSUBNO`,`SEQNO`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Allocation of wheelbase information to CV primary and secondary types';

CREATE TABLE IF NOT EXISTS `551` (
  `RESERVED` varchar(22) NOT NULL DEFAULT '' COMMENT 'Constantly blank',
  `BRANDNO` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `TABLENO` smallint(3) NOT NULL DEFAULT '551' COMMENT 'Data Table Constant= 551',
  `NTYPNO` int(9) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the CV primary type (->532)',
  `NTYPSUBNO` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the secondary type within a primary type (->535)',
  `SEQNO` smallint(2) NOT NULL DEFAULT '0' COMMENT 'Sequential number within a NTypNr-NTypSubNr combination.',
  `SUSPTYPE` smallint(3) NOT NULL COMMENT 'Suspension Type (KT 066)',
  `AXLEPOS` smallint(3) NOT NULL COMMENT 'Axle Position (KT 064)',
  `COUNTRYCODE` varchar(3) DEFAULT NULL COMMENT 'Country Code (-> 010)',
  `EXCLUDE` tinyint(1) DEFAULT '0' COMMENT '‘1’ = Country Code is an exclusion, ‘0’ = Country Code is an inclusion.',
  PRIMARY KEY (`NTYPNO`,`NTYPSUBNO`,`SEQNO`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Allocation of suspension to CV primary and secondary types';

CREATE TABLE IF NOT EXISTS `552` (
  `RESERVED` varchar(22) NOT NULL DEFAULT '' COMMENT 'Constantly blank',
  `BRANDNO` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `TABLENO` smallint(3) NOT NULL DEFAULT '552' COMMENT 'Data Table Constant= 552',
  `NTYPNO` int(9) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the CV primary type (->532)',
  `NTYPSUBNO` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the secondary type within a primary type (->535)',
  `SEQNO` smallint(2) NOT NULL DEFAULT '0' COMMENT 'Sequential number within a NTypNr-NTypSubNr combination.',
  `TYPRETYPE` smallint(3) NOT NULL COMMENT 'Tyres (KT 060)',
  `AXLEPOS` smallint(3) NOT NULL COMMENT 'Axle Position (KT 064)',
  `COUNTRYCODE` varchar(3) DEFAULT NULL COMMENT 'Country Code (-> 010)',
  `EXCLUDE` tinyint(1) DEFAULT '0' COMMENT '‘1’ = Country Code is an exclusion, ‘0’ = Country Code is an inclusion.',
  PRIMARY KEY (`NTYPNO`,`NTYPSUBNO`,`SEQNO`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Allocation of tyres to CV primary and secondary types';

CREATE TABLE IF NOT EXISTS `553` (
  `RESERVED` varchar(22) NOT NULL DEFAULT '' COMMENT 'Constantly blank',
  `BRANDNO` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `TABLENO` smallint(3) NOT NULL DEFAULT '553' COMMENT 'Data Table Constant= 553',
  `NTYPNO` int(9) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the CV primary type (->532)',
  `NTYPSUBNO` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the secondary type within a primary type (->535)',
  `SEQNO` smallint(2) NOT NULL DEFAULT '0' COMMENT 'Sequential number within a NTypNr-NTypSubNr combination.',
  `CHASSIS` varchar(10) NOT NULL COMMENT 'Chassis',
  `COUNTRYCODE` varchar(3) DEFAULT NULL COMMENT 'Country Code (-> 010)',
  `EXCLUDE` tinyint(1) DEFAULT '0' COMMENT '‘1’ = Country Code is an exclusion, ‘0’ = Country Code is an inclusion.',
  PRIMARY KEY (`NTYPNO`,`NTYPSUBNO`,`SEQNO`),
  KEY `CHASSIS` (`CHASSIS`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Allocation of the chassis to CV primary and secondary types';

CREATE TABLE IF NOT EXISTS `554` (
  `BRANDNO` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `TABLENO` smallint(3) NOT NULL DEFAULT '554' COMMENT 'Data Table Constant= 554',
  `MANIDNO` mediumint(5) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the CV Producer-ID-Number',
  `MANNO` mediumint(6) NOT NULL COMMENT 'Number of the CV Producer (->100)',
  `MANID` varchar(20) NOT NULL COMMENT 'CV Producer-ID',
  `DELETE` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1: CV Producer-ID is proposed for deletion, otherwise 0',
  PRIMARY KEY (`MANIDNO`),
  KEY `MANID` (`MANID`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Allocation of the CV Producer-IDs';

CREATE TABLE IF NOT EXISTS `555` (
  `BRANDNO` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `TABLENO` smallint(3) NOT NULL DEFAULT '555' COMMENT 'Data Table Constant= 555',
  `MANIDNO` mediumint(5) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the CV Producer-ID-Number (-> 554)',
  `COUNTRYCODE` varchar(3) NOT NULL DEFAULT '' COMMENT '(-> 010)	',
  `EXCLUDE` tinyint(1) NOT NULL DEFAULT '0' COMMENT '‘1’ = Country Code is an exclusion, ‘0’ = Country Code is an inclusion.',
  PRIMARY KEY (`MANIDNO`,`COUNTRYCODE`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Includes of specivied countrys one CV Producer-IDs';

CREATE TABLE IF NOT EXISTS `900` (
  `BRANDNO` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `TABLENO` smallint(3) NOT NULL DEFAULT '900' COMMENT 'Data Table Constant= 900',
  `DQMUSAGE` varchar(2) NOT NULL DEFAULT '' COMMENT 'GenArtNo (‘01’), CritNo (‘02’), Combination of GenArtNo & CritNo (‘03’), Combination of CritNo & KeyTableValue (‘04’), Combination of GenArtNo & CritNo & KeyTableValue (‘05’) ',  
  `UNIQUENUMBER1` int(9) NOT NULL DEFAULT '0' COMMENT 'Unique number of GA or Attribute if usage is = ‘01’ or ‘02’, Unique number of GA if Usage is = ‘03’ or ‘05’, Unique number of Attribute if Usage is = ‘04’',
  `UNIQUENUMBER2` varchar(9) NOT NULL DEFAULT '' COMMENT 'Unique number of Attribute if Usage is = ‘03’, Unique number of KeyTableValue if Usage is = ‘04’, Unique number of Attribute if Usage is = ‘05’',
  `UNIQUENUMBER3` varchar(9) NOT NULL DEFAULT '' COMMENT 'Unique number of KeyTableValue if Usage is = ‘05’',
  `DQMTERMNO` int(9) NOT NULL DEFAULT '0' COMMENT 'Description Number (-> 990) for description of rules and guidelines',  
  PRIMARY KEY (`DQMUSAGE`,`UNIQUENUMBER1`,`UNIQUENUMBER2`,`UNIQUENUMBER3`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rules and guidelines for the correct use of specific TecDoc reference data content - new table ver 2.6';

CREATE TABLE IF NOT EXISTS `990` (
  `BRANDNO` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `TABLENO` smallint(3) NOT NULL DEFAULT '990' COMMENT 'Data Table Constant= 990',
  `DQMTERMNO` int(9) NOT NULL DEFAULT '0' COMMENT 'Description Number (-> 900) for description of rules and guidelines',
  `LANGNO` smallint(3) NOT NULL COMMENT 'Language Number -> 020',  
  `URL` varchar(100) DEFAULT '' COMMENT 'Link to more information of TecDoc® data guide content (*)',
  `TEXT` varchar(600) DEFAULT '' COMMENT 'Text containing TecDoc® data guide content (*)',
  `SEQNO` varchar(2) NOT NULL DEFAULT '' COMMENT 'For future uses (in case more than one entry is required)', 
  PRIMARY KEY (`DQMTERMNO`,`LANGNO`,`SEQNO`),
  KEY `BRANDNO` (`BRANDNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Content for TecDoc® data guide – as plain text or as reference to a document - new table ver 2.6';