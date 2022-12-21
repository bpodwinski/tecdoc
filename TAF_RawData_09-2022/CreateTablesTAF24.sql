/*
changes in tables
25-12-2021  added table 214
25-12-2021  added table 216
25-12-2021  added table 218
25-12-2021  modified table 331
25-12-2021  added table 900
25-12-2021  added table 990
23-06-2021  added table 340
28-09-2021  added table 005
28-09-2021  added table 180
*/

CREATE TABLE IF NOT EXISTS `001` (
  `DLNR` smallint(4) NOT NULL COMMENT 'Data Supplier Number Constant (-> 100)',
  `SA` smallint(3) NOT NULL DEFAULT '1' COMMENT 'Data Table Constant = 001	',
  `DATA_RELEASE` smallint(4) NOT NULL COMMENT 'Version (Data Release) in the format xxyy',
  `DATUM` int(8) NOT NULL COMMENT 'Version date in the format YYYYMMDD',
  `KZVOLL` tinyint(1) NOT NULL DEFAULT '0' COMMENT '‘1’ when complete delivery, otherwise ‘0’',
  `KHERNR` mediumint(6) NOT NULL COMMENT 'Vehicle Manufacturer Number	',
  `MARKE` varchar(20) NOT NULL COMMENT 'Brand (specified by TecDoc)',
  `REFERENZDATEN` mediumint(4) NOT NULL COMMENT 'Reference data version in the format xxyy',
  `VORVERSION` mediumint(4) DEFAULT NULL COMMENT 'If a delta-delivery, the Data Release to which the delta refers.',
  `FORMAT` varchar(3) NOT NULL DEFAULT '2.x' COMMENT 'Constant “current format version”',
  `LOSCH_FLAG` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 = Delete all data records of the brand, otherwise ‘0’',
  PRIMARY KEY `DLNR` (`DLNR`),
  KEY `KHERNR` (`KHERNR`),
  KEY `MARKE` (`MARKE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Header stating version and date'; 

CREATE TABLE IF NOT EXISTS `005` (
  `DLNR` smallint(4) NOT NULL COMMENT 'Data Supplier Number Constant = 9999',
  `SA` smallint(3) NOT NULL DEFAULT '5' COMMENT 'Data Table Constant = 005',  
  `DELTYPE` varchar(3) NOT NULL COMMENT 'Type of object to be announced for deletion (-> Key table 748)',
  `DELNO` int(9) NOT NULL COMMENT 'ID of object to be announced for deletion',
  `DELSTATUS` varchar(3) NOT NULL COMMENT 'Status information (-> Key Table 747)',
  `DELDATARELEASE` smallint(4) NOT NULL COMMENT 'Reference Data Version of deletion',
  `DELDATE` int(8) NOT NULL COMMENT 'Date of deletion YYYYMMDD (Publication)',
  `REPLACEMENTNO` int(9) DEFAULT NULL COMMENT 'Number of object that replaces the one that is (proposed to be) deleted',
  `REASON` varchar(3) NOT NULL COMMENT 'Reason for deletion (-> Key Table 749)',
  `COMMENT` varchar(100) DEFAULT '' COMMENT 'Additional comment (English)',  
  PRIMARY KEY (`DELTYPE`,`DELNO`,`DELSTATUS`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Announcements for Reference Data deletions'; 

CREATE TABLE IF NOT EXISTS `010` (
  `RESERVIERT` varchar(22) NOT NULL DEFAULT '' COMMENT 'Constantly blank',
  `DLNR` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `SA` smallint(3) NOT NULL DEFAULT '10' COMMENT 'Data Table Constant = 010',
  `LKZ` varchar(3) NOT NULL DEFAULT '' COMMENT 'Country Code (Vehicle Registration Number)',
  `BEZNR` int(9) NOT NULL COMMENT 'Description Number (-> 030)',
  `VERKEHR` varchar(1) DEFAULT NULL COMMENT '‘L’ = Left-hand traffic, ‘R’ = Right-hand traffic',
  `WARNR` smallint(3) DEFAULT NULL COMMENT 'Int. currency number according to ISO',
  `WKZ` varchar(3) DEFAULT NULL COMMENT 'Currency Code, i.e. EUR',
  `WARBEZNR` int(9) DEFAULT NULL COMMENT 'Currency Description Number (-> 030)',
  `VORWAHL` varchar(5) DEFAULT NULL COMMENT 'International Telephone Code',
  `ISTGRUPPE` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Country Groups = 1, otherwise 0',
  `ISOCODE2` varchar(2) DEFAULT NULL COMMENT '2-digit ISO 3166-Code of the country',
  `ISOCODE3` varchar(3) DEFAULT NULL COMMENT '3-digit ISO 3166-Code of the country',
  `ISOCODENR` smallint(3) DEFAULT NULL COMMENT 'Numeral ISO 3166-Code of the country',
  PRIMARY KEY (`LKZ`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Description of all countries and relevant information';

CREATE TABLE IF NOT EXISTS `012` (
  `RESERVIERT` varchar(22) NOT NULL DEFAULT '' COMMENT 'Constantly blank',
  `DLNR` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `SA` smallint(3) NOT NULL DEFAULT '12' COMMENT 'Data Table Constant = 012',
  `LBEZNR` int(9) NOT NULL COMMENT 'Description Number',
  `LKZ` varchar(3) NOT NULL DEFAULT '' COMMENT 'Country Code (-> 010)',
  `SPRACHNR` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Language Number (-> 020)',
  `BEZ` varchar(60) NOT NULL DEFAULT '' COMMENT 'Descriptions',
  PRIMARY KEY (`LBEZNR`,`LKZ`,`SPRACHNR`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Country-dependent descriptions';

CREATE TABLE IF NOT EXISTS `013` (
  `RESERVIERT` varchar(22) NOT NULL DEFAULT '' COMMENT 'Constantly Blank',
  `DLNR` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `SA` smallint(3) NOT NULL DEFAULT '13' COMMENT 'Data Table Constant = 013',
  `LKZGRP` varchar(3) NOT NULL COMMENT 'Country Group Code (-> 010)',
  `LKZ` varchar(3) NOT NULL DEFAULT '' COMMENT 'Country Code (-> 010)',
  PRIMARY KEY (`LKZGRP`,`LKZ`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Allocation of countries to country groups';

CREATE TABLE IF NOT EXISTS `014` (
  `RESERVIERT` varchar(22) NOT NULL DEFAULT '' COMMENT 'Constantly blank',
  `DLNR` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `SA` smallint(3) NOT NULL DEFAULT '14' COMMENT 'Data Table Constant= 014',
  `DOKUMENTENART` smallint(2) NOT NULL COMMENT 'Unambiguous key of the document type',
  `BEZNR` int(9) NOT NULL COMMENT 'Description Number (->030)',
  `EXTENSION` varchar(3) DEFAULT NULL COMMENT 'File Extension (three blanks with document type “URL”)',
  PRIMARY KEY (`DOKUMENTENART`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Definition of document types';

CREATE TABLE IF NOT EXISTS `020` (
  `RESERVIERT` varchar(22) NOT NULL DEFAULT '' COMMENT 'Constantly blank',
  `DLNR` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `SA` smallint(3) NOT NULL DEFAULT '20' COMMENT 'Data Table Constant = 020',
  `SPRACHNR` smallint(3) NOT NULL COMMENT 'Language Number',
  `BEZNR` int(9) NOT NULL COMMENT 'Description Number (-> 030)',
  `ISO_CODE` varchar(2) DEFAULT NULL COMMENT 'Description Number (-> 030)',
  `CODEPAGE` smallint(4) DEFAULT NULL COMMENT 'Number of the Windows-Codepage for this language',
  PRIMARY KEY (`SPRACHNR`),
  KEY `isocode` (`ISO_CODE`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Description of the languages used';

CREATE TABLE IF NOT EXISTS `030` (
  `RESERVIERT` varchar(22) NOT NULL DEFAULT '' COMMENT 'Constantly blank',
  `DLNR` smallint(4) NOT NULL COMMENT 'Data Supplier Number Constant (-> 100) and 9999 for reference data',
  `SA` smallint(3) NOT NULL DEFAULT '30' COMMENT 'Data Table Constant = 030',
  `BEZNR` int(9) NOT NULL COMMENT 'Description Number',
  `SPRACHNR` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Language Number (-> 020)',
  `BEZ` varchar(60) NOT NULL DEFAULT '' COMMENT 'Descriptions',
  `LOSCH_FLAG` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 = delete all data records for the Delta Key, otherwise = 0',
  PRIMARY KEY (`BEZNR`,`SPRACHNR`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Descriptions in different languages';
 
CREATE TABLE IF NOT EXISTS `031` (
  `DLNR` smallint(4) NOT NULL COMMENT 'Data Supplier Number Constant (-> 100)',
  `SA` smallint(3) NOT NULL DEFAULT '31' COMMENT 'Data Table Constant = 031	',
  `BEZNR` int(9) NOT NULL COMMENT 'Description Number',
  `SPRACHNR` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Language Number (-> 020)',
  `BEZ` varchar(60) NOT NULL DEFAULT '' COMMENT 'Descriptions',  
  PRIMARY KEY (`BEZNR`, `SPRACHNR`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Language Descriptions for Article Criteria';

CREATE TABLE IF NOT EXISTS `035` (
  `RESERVIERT` varchar(22) NOT NULL DEFAULT '' COMMENT 'Constantly Blank',
  `DLNR` smallint(4) NOT NULL COMMENT 'Data Supplier Number Constant (-> 100)',
  `SA` smallint(3) NOT NULL DEFAULT '35' COMMENT 'Data Table Constant ‘035’',
  `TBSNR` varchar(6) NOT NULL COMMENT 'Match code of the text module',
  `SPRACHNR` smallint(3) NOT NULL COMMENT 'Language Number (-> 020)',
  `FIXED` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Fixed font = ‘1’: A non-proportional font is used to display such a text module on the CD system.',
  `LFDNR` smallint(3) NOT NULL DEFAULT '1' COMMENT 'Sequential number (= Line) of text',
  `TEXT` varchar(60) NOT NULL DEFAULT '' COMMENT 'Text Line',
  `LOSCH_FLAG` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 = delete all data records for the Delta Key, otherwise = 0',
  PRIMARY KEY (`DLNR`,`TBSNR`,`SPRACHNR`,`LFDNR`),
  KEY `TBSNR` (`TBSNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Text modules in various languages';

CREATE TABLE IF NOT EXISTS `040` (
  `DLNR` smallint(4) NOT NULL COMMENT 'Data Supplier Number Constant (->040), must correspond with the data supplier number from DT 001',
  `SA` smallint(3) NOT NULL DEFAULT '40' COMMENT 'Data Table Constant ‘040’',
  `BEZ` varchar(40) NOT NULL DEFAULT '' COMMENT 'Description 1',
  `BEZ2` varchar(40) DEFAULT NULL COMMENT 'Description 2',
  `STRABE` varchar(40) DEFAULT NULL COMMENT 'Street 1',
  `STRASSE2` varchar(40) DEFAULT NULL COMMENT 'Street 2',
  `POSTFACH` varchar(10) DEFAULT NULL COMMENT 'P. O. Box',
  `PLZLKZ` varchar(3) DEFAULT NULL COMMENT 'Country code for postal code PLZ, i.e. D-22926 (-> 010)',
  `PLZORT` varchar(8) DEFAULT NULL COMMENT 'Postal code',
  `PLZPF` varchar(8) DEFAULT NULL COMMENT 'Postal code P.O. Box',
  `PLZGR` varchar(8) DEFAULT NULL COMMENT 'Postal code key customer',
  `ORT` varchar(40) DEFAULT NULL COMMENT 'City 1',
  `ORT2` varchar(40) DEFAULT NULL COMMENT 'City 2',
  `TELEFON` varchar(20) DEFAULT NULL COMMENT 'Telephone',
  `FAX` varchar(20) DEFAULT NULL COMMENT 'Fax',
  `EMAIL` varchar(60) DEFAULT NULL COMMENT 'Email Address',
  `WEB` varchar(60) DEFAULT NULL COMMENT 'Web Site',
  `ADRESSART` smallint(3) NOT NULL COMMENT 'Address type from KT 59 (-> SA 052)',
  `LOSCH_FLAG` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 = delete all data records for the Delta Key, otherwise = 0',
  PRIMARY KEY (`DLNR`,`ADRESSART`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Main address of the data supplier';

CREATE TABLE IF NOT EXISTS `042` (
  `DLNR` smallint(4) NOT NULL COMMENT 'Data Supplier Number Constant (-> 100)',
  `SA` smallint(3) NOT NULL DEFAULT '42' COMMENT 'Data Table Constant "042"',
  `LKZ` varchar(3) NOT NULL DEFAULT '' COMMENT 'Country Code (-> 010)',
  `BILDNR` int(9) NOT NULL COMMENT 'Unambiguous Graphic Number (DT 231)	(>= 100.00 * DatSupNo, < 100.000 * (DatSupNo + 1))',
  `DOKUMENTENART` smallint(2) NOT NULL COMMENT '-> DT 014',
  `LOSCH_FLAG` tinyint(1) DEFAULT '0' COMMENT '1 = delete all data records for the Delta Key, otherwise = 0',
  PRIMARY KEY (`DLNR`,`LKZ`,`BILDNR`,`DOKUMENTENART`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Logo of the Data Supplier';

CREATE TABLE IF NOT EXISTS `043` (
  `DLNR` smallint(4) NOT NULL COMMENT 'Data Supplier Number Constant (->040), must correspond with the data supplier number from DT 001',
  `SA` smallint(3) NOT NULL DEFAULT '43' COMMENT 'Data Table Constant "043"',
  `ADRESSART` smallint(3) NOT NULL COMMENT 'Address type from KT 59 (-> DT 052)',
  `LKZ` varchar(3) NOT NULL DEFAULT '' COMMENT 'Country Code (-> DT 010)',
  `BEZ` varchar(40) NOT NULL DEFAULT '' COMMENT 'Description 1',
  `BEZ2` varchar(40) DEFAULT NULL COMMENT 'Description 2',
  `STRABE` varchar(40) DEFAULT NULL COMMENT 'Street 1',
  `STRASSE2` varchar(40) DEFAULT NULL COMMENT 'Street 2',
  `POSTFACH` varchar(10) DEFAULT NULL COMMENT 'P. O. Box',
  `PLZLKZ` varchar(3) DEFAULT NULL COMMENT 'Country code for postal code PLZ, i.e. D-22926 (-> 010)',
  `PLZORT` varchar(8) DEFAULT NULL COMMENT 'Postal code',
  `PLZPF` varchar(8) DEFAULT NULL COMMENT 'Postal code for P.O. Box',
  `PLZGR` varchar(8) DEFAULT NULL COMMENT 'Postal code for key customer',
  `ORT` varchar(40) DEFAULT NULL COMMENT 'City 1',
  `ORT2` varchar(40) DEFAULT NULL COMMENT 'City 2',
  `TELEFON` varchar(20) DEFAULT NULL COMMENT 'Telephone',
  `FAX` varchar(20) DEFAULT NULL COMMENT 'Fax',
  `EMAIL` varchar(60) DEFAULT NULL COMMENT 'E-mail Address',
  `WEB` varchar(60) DEFAULT NULL COMMENT 'Web Site',
  `LOSCH_FLAG` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 = delete all data records for the Delta Key, otherwise = 0',
  PRIMARY KEY (`DLNR`,`ADRESSART`,`LKZ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Addresses of the Data Supplier';

CREATE TABLE IF NOT EXISTS `050` (
  `DLNR` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `SA` smallint(3) NOT NULL DEFAULT '50' COMMENT 'Data Table Constant= 050',
  `KRITNR` smallint(4) NOT NULL COMMENT 'Criterion Number',
  `BEZNR` int(9) NOT NULL COMMENT 'Description Number (-> 030)',
  `TYP` varchar(1) NOT NULL COMMENT 'Criterion Type (‘A’ = Alphanumerical, ‘N’ = Numerical, ‘D’ = Date ‘K’ = Key, ‘V’ = without value)',
  `MAXLEN` smallint(2) DEFAULT NULL COMMENT 'Maximum length of criterion value',
  `OK_ARTIKEL` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Criterion may be used for article (SA 210)(0 = No, 1 = Yes)',
  `TABNR` smallint(3) DEFAULT NULL COMMENT 'Number of the Key Table for type ‘K’',
  `OK_NKW` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Criterion may be used for CV linkages(0 = No, 1 = Yes)',
  `OK_PKW` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Criterion may be used for PC linkages(0 = No, 1 = Yes)',
  `OK_MOTOR` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Criterion may be used for engine linkages(0 = No, 1 = Yes)',
  `OK_FAHRERHAUS` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Criterion may be used for Driver Cab linkages(0 = No, 1 = Yes)',
  `STUCKLISTEN_CRITERION` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Criterion may be used as Parts List criterion (SA208)(0 = No, 1 = Yes)',
  `ZUBEHOR_CRITERION` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Criterion may be used as Accessory List criterion. (DT228) (0 = No, 1 = Yes)',
  `MEHRFACH_VERWENDUNG` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Criterion may be used more than once within a linkage (0 = No, 1 = Yes)',
  `BEZNRABK` int(9) DEFAULT NULL COMMENT 'Description number for the abbreviation (->030)',
  `BEZNREINHEIT` int(9) DEFAULT NULL COMMENT 'BezNr for the unit (->030)',
  `INTERVALLCRITERION` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Criterion is an interval criterion (0 = No, 1 = Yes)',
  `NACHFOLGE_CRITERION` smallint(4) DEFAULT NULL COMMENT 'Criterion is successor to...',
  `DELETE` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1: Criterion is proposed for deletion, otherwise 0',
  `OK_ACHSE` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Criterion may be used for Axle linkages(0 = No, 1 = Yes)',
  PRIMARY KEY (`DLNR`,`KRITNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Description of all criteria';

CREATE TABLE IF NOT EXISTS `051` (
  `RESERVIERT` varchar(22) NOT NULL DEFAULT '' COMMENT 'Table definition',
  `DLNR` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `SA` smallint(3) NOT NULL DEFAULT '51' COMMENT 'Data Table Constant = 051',
  `TABNR` smallint(3) NOT NULL COMMENT 'Key Table Number',
  `BEZNR` int(9) NOT NULL COMMENT 'Key Table Name1 -> SA 30',
  `TABTYP` varchar(1) DEFAULT 'N' COMMENT '‘A’ = Alphanumerical, ‘N’ = Numerical',
  `DELETE` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1: Key Table is proposed for deletion, otherwise 0',
  PRIMARY KEY (`TABNR`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Table definition';

CREATE TABLE IF NOT EXISTS `052` (
  `RESERVIERT` varchar(22) NOT NULL DEFAULT '' COMMENT 'Constantly blank',
  `DLNR` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `SA` smallint(3) NOT NULL DEFAULT '52' COMMENT 'Data Table Constant = 052',
  `TABNR` smallint(3) NOT NULL COMMENT 'Key Table Number (->051)',
  `KEY` varchar(3) NOT NULL COMMENT 'Table Entry (numerical or alphanumerical depending on the Key Table type)',
  `BEZNR` int(9) NOT NULL COMMENT 'Description Number (->030)',
  `SORTNR` smallint(3) NOT NULL COMMENT 'Sort-Key for Sorting',
  `DELETE` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1: Key Table Entry is proposed for deletion, otherwise 0',
  PRIMARY KEY (`TABNR`,`KEY`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Key Table Entries';

CREATE TABLE IF NOT EXISTS `053` (
  `DLNR` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `SA` smallint(3) NOT NULL DEFAULT '53' COMMENT 'Data Table Constant= 053',
  `KRITNR` smallint(4) NOT NULL COMMENT 'Criterion Number',
  `BEZNR` int(9) NOT NULL COMMENT 'Description Number (-> 031)',
  `TYP` varchar(1) NOT NULL COMMENT 'Criterion Type (‘A’ = Alphanumerical, ‘N’ = Numerical, ‘D’ = Date ‘K’ = Key, ‘V’ = without value)',
  `MAXLEN` smallint(2) DEFAULT NULL COMMENT 'Maximum length of criterion value',
  `OK_ARTIKEL` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Criterion may be used for article (SA 213)(0 = No, 1 = Yes)',
  `TABNR` smallint(3) DEFAULT NULL COMMENT 'Number of the Key Table for type ‘K’',
  `OK_NKW` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Criterion may be used for CV linkages(0 = No, 1 = Yes)',
  `OK_PKW` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Criterion may be used for PC linkages(0 = No, 1 = Yes)',
  `OK_MOTOR` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Criterion may be used for engine linkages(0 = No, 1 = Yes)',
  `OK_FAHRERHAUS` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Criterion may be used for Driver Cab linkages(0 = No, 1 = Yes)',
  `STUCKLISTEN_CRITERION` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Criterion may be used as Parts List criterion (SA208)(0 = No, 1 = Yes)',
  `ZUBEHOR_CRITERION` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Criterion may be used as Accessory List criterion. (DT228) (0 = No, 1 = Yes)',
  `MEHRFACH_VERWENDUNG` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Criterion may be used more than once within a linkage (0 = No, 1 = Yes)',
  `BEZNRABK` int(9) DEFAULT NULL COMMENT 'Description number for the abbreviation (->031)',
  `BEZNREINHEIT` int(9) DEFAULT NULL COMMENT 'BezNr for the unit (->031)',
  `INTERVALLCRITERION` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Criterion is an interval criterion (0 = No, 1 = Yes)',
  `NACHFOLGE_CRITERION` smallint(4) DEFAULT NULL COMMENT 'Criterion is successor to...',
  `DELETE` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1: Criterion is proposed for deletion, otherwise 0',
  `OK_ACHSE` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Criterion may be used for : 0 - For end user unit (table 213), 1 - For packaging items (table 214) (*), 2 - For end user and packaging items (*)',
  PRIMARY KEY (`DLNR`,`KRITNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Criteria Table (Logistics) … New table in format version 2.5 - Description of all criteria';

CREATE TABLE IF NOT EXISTS `100` (
  `DLNR` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `SA` smallint(3) NOT NULL DEFAULT '100' COMMENT 'Data Table Constant = 100',
  `HERNR` mediumint(6) NOT NULL COMMENT 'Manufacturer Number',
  `HKZ` varchar(10) NOT NULL COMMENT 'Manufacturer Short Code',
  `LBEZNR` int(9) NOT NULL COMMENT 'Description Number (->012)',
  `PKW` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'PC Manufacturer(0 = No, 1 = Yes)',
  `NKW` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'CV Manufacturer	(0 = No, 1 = Yes)',
  `VGL` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Comparative Manufacturer(0 = No, 1 = Yes)',
  `ACHSE` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Axle Manufacturer(0 = No, 1 = Yes)',
  `MOTOR` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Engine Manufacturer	(0 = No, 1 = Yes)',
  `GETRIEBE` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Transmission Manufacturer(0 = No, 1 = Yes)',
  `TRANSPORTER` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'LCV manufacturer( 0 = no, 1 = yes )',
  `DELETE` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1: Manufacturer is proposed for deletion, otherwise 0',
  PRIMARY KEY (`HERNR`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Description of all manufacturers';

CREATE TABLE IF NOT EXISTS `103` (
  `RESERVIERT` varchar(22) NOT NULL DEFAULT '' COMMENT 'Constantly blank',
  `DLNR` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `SA` smallint(3) NOT NULL DEFAULT '103' COMMENT 'Data Table Constant = 103',
  `KBANR` smallint(4) NOT NULL COMMENT 'KBA Manufacturer Code',
  `HERNR` mediumint(6) NOT NULL COMMENT 'Manufacturer Number',
  PRIMARY KEY (`KBANR`,`HERNR`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Allocation of KBA code to manufacturer';

CREATE TABLE IF NOT EXISTS `110` (
  `DLNR` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `SA` smallint(3) NOT NULL DEFAULT '110' COMMENT 'Data Table Constant= 110',
  `KMODNR` mediumint(5) NOT NULL COMMENT 'Unambiguous number of the vehicle model series',
  `LBEZNR` int(9) NOT NULL COMMENT 'Description Number (-> 012)',
  `HERNR` mediumint(6) NOT NULL COMMENT 'Manufacturer (-> 100)',
  `SORTNR` smallint(3) NOT NULL COMMENT 'Sorting key for the sorting within one manufacturer (KHerNr)',
  `BJVON` mediumint(6) DEFAULT NULL COMMENT 'Model year from YYYYMM',
  `BJBIS` mediumint(6) DEFAULT NULL COMMENT 'Model year to YYYYMM',
  `PKW` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'PC model series =’1’',
  `NKW` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'CV model series =’1’',
  `ACHSE` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Axel model series =’1’',
  `DELETE` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1: Model series is proposed for deletion, otherwise 0',
  `TRANSPORTER` tinyint(1) NOT NULL COMMENT 'LCV model series',
  PRIMARY KEY (`KMODNR`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Description of all vehicle model series';
 
CREATE TABLE IF NOT EXISTS `115` (	 	 
  `DLNR` smallint(4) NOT NULL DEFAULT '9999'  COMMENT 'Data Supplier Number Constant = 9999', 
  `SA` smallint(3) NOT NULL DEFAULT '115'  COMMENT 'Data Table Constant= 115', 	
  `LinkageTargetNo` int(9) NOT NULL  COMMENT 'Unique number of vehicle type (kTyp or nTyp)',   
  `LinkageTargetTable` smallint(3) NOT NULL COMMENT 'Table where LinkageTargetNo is located (120 or 532)', 	
  `LT_Type_Original` smallint(3) NOT NULL COMMENT '„Classic“ view on linkage targets : 2-PC, 16-CV, etc', 	
  `LT_Type_Extended` smallint(3) NOT NULL COMMENT 'Linkage Target Type (KT 271) – extended classification according to chapter „Vehicle Classes“', 		 	  	  	  
  PRIMARY KEY (`LinkageTargetNo`, `LT_Type_Original`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB   DEFAULT CHARSET=utf8  COMMENT 'Linkage Target Types – Mappings';

CREATE TABLE IF NOT EXISTS `120` (
  `DLNR` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `SA` smallint(3) NOT NULL DEFAULT '120' COMMENT 'Data Table Constant= 120',
  `KTYPNR` int(9) NOT NULL COMMENT 'Unambiguous number of the vehicle type',
  `LBEZNR` int(9) NOT NULL COMMENT 'Description number (-> 012)',
  `KMODNR` mediumint(5) NOT NULL COMMENT 'Model Series (-> 110)',
  `SORTNR` smallint(2) NOT NULL COMMENT 'General Sorting Field',
  `BJVON` mediumint(6) DEFAULT NULL COMMENT 'Model Year from (YYYYMM)',
  `BJBIS` mediumint(6) DEFAULT NULL COMMENT 'Model Year to (YYYYMM)',
  `KW` smallint(4) DEFAULT NULL COMMENT 'Engine output in kW',
  `PS` smallint(4) DEFAULT NULL COMMENT 'Engine output in HP',
  `CCMSTEUER` mediumint(5) DEFAULT NULL COMMENT 'Engine capacity in cc (taxation value)',
  `CCMTECH` mediumint(5) DEFAULT NULL COMMENT 'Engine capacity in cc (technical value)',
  `LIT` smallint(4) DEFAULT NULL COMMENT 'Engine capacity in litre *100 (99V99)',
  `ZYL` smallint(2) DEFAULT NULL COMMENT 'Number of cylinders',
  `TUEREN` tinyint(1) DEFAULT NULL COMMENT 'Number of doors',
  `TANKINHALT` smallint(4) DEFAULT NULL COMMENT 'Fuel tank capacity',
  `SPANNUNG` smallint(2) DEFAULT NULL COMMENT 'Main current voltage',
  `ABS` tinyint(1) DEFAULT NULL COMMENT '0 = no, 1 = yes, 2 = optional, 9 = unknown',
  `ASR` tinyint(1) DEFAULT NULL COMMENT '0 = no, 1 = yes, 2 = optional, 9 = unknown',
  `MOTART` smallint(3) DEFAULT NULL COMMENT 'Engine type (KT 080)',
  `KRAFTSTOFFAUFBEREITUNGSPRINZIP` smallint(3) DEFAULT NULL COMMENT 'Fuel mixture formation (KT 097)',
  `ANTRART` smallint(3) DEFAULT NULL COMMENT 'Drive type (KT 082)',
  `BREMSART` smallint(3) DEFAULT NULL COMMENT 'Brake type (KT 083)',
  `BREMSSYS` smallint(3) DEFAULT NULL COMMENT 'Brake system (KT 084)',
  `VENTILE_BRENNRAUM` smallint(2) DEFAULT NULL COMMENT 'Number of valves	',
  `KRSTOFFART` smallint(3) DEFAULT NULL COMMENT 'Fuel type (KT 182)',
  `KATART` smallint(3) DEFAULT NULL COMMENT 'Catalyst converter type (KT 089)',
  `GETRART` smallint(3) DEFAULT NULL COMMENT 'Transmission type (KT 085)	',
  `AUFBAUART` smallint(3) DEFAULT NULL COMMENT 'Body type (KT 086)	',
  `DELETE` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1: K-TypNr series is proposed for deletion, otherwise 0',
  PRIMARY KEY (`KTYPNR`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Description of all vehicle types';

CREATE TABLE IF NOT EXISTS `121` (
  `RESERVIERT` varchar(22) NOT NULL DEFAULT '' COMMENT 'Constantly blank',
  `DLNR` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `SA` smallint(3) NOT NULL DEFAULT '121' COMMENT 'Data Table Constant= 121',
  `KBANR` varchar(7) NOT NULL DEFAULT '9999999' COMMENT 'German KBA No. (9999999)',
  `KTYPNR` int(9) NOT NULL COMMENT 'Vehicle type number (-> 120)',
  `AUFBAUART` smallint(3) DEFAULT NULL COMMENT 'Body type (KT 086)',
  `ABENR` varchar(25) DEFAULT NULL COMMENT 'General Approval Number',
  `ABEVON` mediumint(6) DEFAULT NULL COMMENT 'ABE Month (YYYYMM)',
  `STATHER` varchar(25) DEFAULT NULL COMMENT 'Stat. Manufacturer Description',
  `STATTYP` varchar(25) DEFAULT NULL COMMENT 'Stat. Type Description',
  PRIMARY KEY (`KBANR`,`KTYPNR`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Allocation of KBA codes to vehicle types';

CREATE TABLE IF NOT EXISTS `122` (
  `RESERVIERT` varchar(22) NOT NULL DEFAULT '' COMMENT 'Constantly blank',
  `DLNR` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `SA` smallint(3) NOT NULL DEFAULT '122' COMMENT 'Data Table Constant =122',
  `KTYPNR` int(9) NOT NULL COMMENT 'Unambiguous number of the vehicle type',
  `LKZ` varchar(3) NOT NULL DEFAULT '' COMMENT 'Country Code (-> 010)',
  `EXCLUDE` tinyint(1) NOT NULL DEFAULT '0' COMMENT '‘1’ = Country Code is an exclusion, ‘0’ = Country Code is an inclusion.',
  PRIMARY KEY (`KTYPNR`,`LKZ`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Inclusion/Exclusion of certain countries for a vehicle';

CREATE TABLE IF NOT EXISTS `123` (
  `DLNR` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `SA` smallint(3) NOT NULL DEFAULT '123' COMMENT 'Data Table Constant= 123',
  `TYPMINE` varchar(15) NOT NULL COMMENT 'French Type Mine Number',
  `KTYPNR` int(9) NOT NULL COMMENT 'Vehicle type number (-> 120)',
  PRIMARY KEY (`TYPMINE`,`KTYPNR`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Allocation of Type Mine numbers to vehicle types';

CREATE TABLE IF NOT EXISTS `124` (
  `RESERVIERT` varchar(22) NOT NULL DEFAULT '' COMMENT 'Constantly blank',
  `DLNR` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `SA` smallint(3) NOT NULL DEFAULT '124' COMMENT 'Data Table Constant= 124',
  `KTYPNR` int(9) NOT NULL COMMENT 'Unambiguous number of the vehicle type',
  `LKZ` varchar(3) NOT NULL DEFAULT '' COMMENT 'Country Code (-> 010)',
  `BJVON` mediumint(6) DEFAULT NULL COMMENT 'Model year from (YYYYMM)',
  `BJBIS` mediumint(6) DEFAULT NULL COMMENT 'Model year to (YYYYMM)',
  `CCMSTEUER` mediumint(5) DEFAULT NULL COMMENT 'Engine capacity in cc (taxation value)',
  `LIT` smallint(4) DEFAULT NULL COMMENT 'Engine capacity in litre (99,99)',
  `ZYL` smallint(2) DEFAULT NULL COMMENT 'Number of cylinders',
  `TUEREN` tinyint(1) DEFAULT NULL COMMENT 'Number of doors',
  `TANKINHALT` smallint(4) DEFAULT NULL COMMENT 'Fuel tank capacity',
  `SPANNUNG` smallint(2) DEFAULT NULL COMMENT 'Main current voltage',
  `ABS` tinyint(1) DEFAULT NULL COMMENT '0 = no, 1 = yes, 2 = optional, 9 = unknown',
  `ASR` tinyint(1) DEFAULT NULL COMMENT '0 = no, 1 = yes, 2 = optional, 9 = unknown',
  `KRSTOFFART` smallint(3) DEFAULT NULL COMMENT 'Fuel type (KT 182)',
  `KATART` smallint(3) DEFAULT NULL COMMENT 'Catalyst converter type (KT 089)',
  `GETRART` smallint(3) DEFAULT NULL COMMENT 'Transmission type (KT 085)',
  `BREMSART` smallint(3) DEFAULT NULL COMMENT 'Brake type (KT 083)',
  `BREMSSYS` smallint(3) DEFAULT NULL COMMENT 'Brake system (KT 084)',
  PRIMARY KEY (`KTYPNR`,`LKZ`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Description of all country specific deviations of vehicle types';

CREATE TABLE IF NOT EXISTS `125` (
  `RESERVIERT` varchar(22) NOT NULL DEFAULT '' COMMENT 'Constantly blank',
  `DLNR` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `SA` smallint(3) NOT NULL DEFAULT '125' COMMENT 'Data Table Constant = 125',
  `KTYPNR` int(9) NOT NULL COMMENT 'Vehicle type number (-> 120)',
  `LFDNR` smallint(3) NOT NULL COMMENT 'Sequential number within the type',
  `MOTNR` mediumint(5) NOT NULL COMMENT 'Engine number (-> 155)',
  `BJVON` mediumint(6) DEFAULT NULL COMMENT 'Model Year from (YYYYMM)',
  `BJBIS` mediumint(6) DEFAULT NULL COMMENT 'Model Year to (YYYYMM)',
  `LKZ` varchar(3) DEFAULT NULL COMMENT 'Country Code (-> 010)',
  `EXCLUDE` tinyint(1) DEFAULT NULL COMMENT '‘1’ = Country Code is an exclusion, ‘0’ = Country Code is an inclusion.',
  PRIMARY KEY (`KTYPNR`,`LFDNR`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Allocation of engine numbers to vehicle types';

CREATE TABLE IF NOT EXISTS `126` (
  `DLNR` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `SA` smallint(3) NOT NULL DEFAULT '126' COMMENT 'Data Table Constant= 126',
  `CHTYP` varchar(7) NOT NULL COMMENT 'Swiss Type Number',
  `KTYPNR` int(9) NOT NULL COMMENT 'Allocation of Swiss type numbers to vehicle types',
  PRIMARY KEY (`CHTYP`,`KTYPNR`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Allocation of Swiss type numbers to vehicle types';

CREATE TABLE IF NOT EXISTS `127` (
  `DLNR` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `SA` smallint(3) NOT NULL DEFAULT '127' COMMENT 'Data Table Constant = 127',
  `NLTYP` varchar(6) NOT NULL COMMENT 'Vehicle type number (-> 120)',
  `KTYPNR` int(9) NOT NULL COMMENT 'Vehicle type number (-> 120)',
  PRIMARY KEY (`NLTYP`,`KTYPNR`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Allocation of Netherlands number plates to vehicle types';

CREATE TABLE IF NOT EXISTS `128` (
  `DLNR` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `SA` smallint(3) NOT NULL DEFAULT '128' COMMENT 'Data Table Constant= 128',
  `STYP` varchar(6) NOT NULL COMMENT 'Swedish Number Plate',
  `KTYPNR` int(9) NOT NULL COMMENT 'Vehicle type number (-> 120)',
  PRIMARY KEY (`STYP`,`KTYPNR`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Allocation of Swedish number plates to vehicle types';

CREATE TABLE IF NOT EXISTS `129` (
  `DLNR` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `SA` smallint(3) NOT NULL DEFAULT '129' COMMENT 'Data Table Constant= 129	',
  `NATCODE` varchar(6) NOT NULL COMMENT 'Austrian NatCode',
  `KTYPNR` int(9) NOT NULL COMMENT 'Vehicle type number (-> 120)',
  PRIMARY KEY (`NATCODE`,`KTYPNR`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Allocation of Austrian NatCodes to vehicle types';

CREATE TABLE IF NOT EXISTS `140` (
  `DLNR` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `SA` smallint(3) NOT NULL DEFAULT '140' COMMENT 'Data Table Constant= 140',
  `KMODNR` mediumint(5) NOT NULL COMMENT 'Unambiguous number of the vehicle model series',
  `LBEZNR1` int(9) NOT NULL COMMENT 'Description Number (->012) of the sales description',
  `LBEZNR2` int(9) NOT NULL COMMENT 'Description Number (->012) of the model generation',
  PRIMARY KEY (`KMODNR`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Additional information on all vehicle model series';

CREATE TABLE IF NOT EXISTS `143` (
  `DLNR` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `SA` smallint(3) NOT NULL DEFAULT '143' COMMENT 'Data Table Constant= 143',
  `KMODNR` mediumint(5) NOT NULL COMMENT 'Unambiguous number of the vehicle model series',
  `LKZ` varchar(3) NOT NULL DEFAULT '' COMMENT 'Country Code (-> 010)',
  `SORTNR` smallint(4) NOT NULL COMMENT 'Display sequence of the sample within one (Model Series, LKZ) – Group',
  `MUSTER` varchar(10) NOT NULL COMMENT 'Sample',
  PRIMARY KEY (`KMODNR`,`LKZ`,`MUSTER`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Allocation of body types to model series';

CREATE TABLE IF NOT EXISTS `144` (
  `RESERVIERT` varchar(22) NOT NULL DEFAULT '' COMMENT 'Constantly blank',
  `DLNR` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `SA` smallint(3) NOT NULL DEFAULT '144' COMMENT 'Data Table Constant = 144	',
  `KTYPNR` int(9) NOT NULL COMMENT 'Unambiguous number of the vehicle type',
  `LBEZNR1` int(9) NOT NULL COMMENT 'Description Number (->012) of the type description',
  `LBEZNR2` int(9) NOT NULL COMMENT 'Description Number (->012) of the Note',
  PRIMARY KEY (`KTYPNR`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Additional information on all vehicle types';

CREATE TABLE IF NOT EXISTS `145` (
  `RESERVIERT` varchar(22) NOT NULL DEFAULT '' COMMENT 'Constantly blank',
  `DLNR` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `SA` smallint(3) NOT NULL DEFAULT '145' COMMENT 'Data Table Constant= 145',
  `KTYPNR` int(9) NOT NULL COMMENT 'Unambiguous number of the vehicle type',
  `LKZ` varchar(3) NOT NULL DEFAULT '' COMMENT 'Country Code (-> 010)',
  `SORTNR` smallint(4) NOT NULL COMMENT 'Display sequence of the sample within one (Model Series, LKZ) – Group',
  `MUSTER` varchar(10) NOT NULL DEFAULT '' COMMENT 'Sample',
  PRIMARY KEY (`KTYPNR`,`LKZ`,`MUSTER`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Allocation of body types to vehicle types';

CREATE TABLE IF NOT EXISTS `146` (
  `DLNR` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `SA` smallint(3) NOT NULL DEFAULT '146' COMMENT 'Data Table Constant= 146',
  `AUFBAUART` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Body Type (KT 086)',
  `KMODNR` mediumint(5) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the vehicle model series',
  `LBEZNR` int(9) NOT NULL COMMENT 'Description Number (->012) of the synonym',
  PRIMARY KEY (`AUFBAUART`,`KMODNR`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Body Type Synonyms';

CREATE TABLE IF NOT EXISTS `147` (
  `RESERVIERT` varchar(22) NOT NULL DEFAULT '' COMMENT 'Constantly blank',
  `DLNR` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `SA` smallint(3) NOT NULL DEFAULT '147' COMMENT 'Data Table Constant= 147',
  `ANTRART` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Drive Type (082)',
  `KTYPNR` int(9) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the vehicle type',
  `LBEZNR` int(9) NOT NULL COMMENT 'Description Number (->012) of the synonym',
  PRIMARY KEY (`ANTRART`,`KTYPNR`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Drive Type Synonyms';

CREATE TABLE IF NOT EXISTS `155` (
  `DLNR` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `SA` smallint(3) NOT NULL DEFAULT '155' COMMENT 'Data Table Constant= 155',
  `HERNR` mediumint(6) NOT NULL DEFAULT '0' COMMENT 'Engine Manufacturer Number',
  `MOTNR` mediumint(5) NOT NULL DEFAULT '0' COMMENT 'Unambiguous engine number',
  `MCODE` varchar(60) NOT NULL DEFAULT '' COMMENT 'Engine description',
  `BJVON` mediumint(6) DEFAULT NULL COMMENT 'Model Year from (YYYYMM)',
  `BJBIS` mediumint(6) DEFAULT NULL COMMENT 'Model Year to (YYYYMM)',
  `KWVON` smallint(4) DEFAULT NULL COMMENT 'Engine output in kW from',
  `KWBIS` smallint(4) DEFAULT NULL COMMENT 'Engine output in kW to',
  `PSVON` smallint(4) DEFAULT NULL COMMENT 'Engine output in HP from',
  `PSBIS` smallint(4) DEFAULT NULL COMMENT 'Engine output in HP to',
  `VENTILE` smallint(2) DEFAULT NULL COMMENT 'Number of valves',
  `ZYL` smallint(2) DEFAULT NULL COMMENT 'Number of cylinders',
  `VERDICHTV` smallint(4) DEFAULT NULL COMMENT 'Compression * 100',
  `VERDICHTB` mediumint(5) DEFAULT NULL COMMENT 'Compression to * 100',
  `DREHMV` smallint(4) DEFAULT NULL COMMENT 'Torque from',
  `DREHMB` mediumint(5) DEFAULT NULL COMMENT 'Torque to',
  `CCMSTEUERV` mediumint(5) DEFAULT NULL COMMENT 'Engine capacity in cc (taxation) from',
  `CCMSTEUERB` mediumint(5) DEFAULT NULL COMMENT 'Engine capacity in cc (taxation) to',
  `CCMTECHV` mediumint(5) DEFAULT NULL COMMENT 'Engine capacity in cc (technical) from',
  `CCMTECHB` mediumint(5) DEFAULT NULL COMMENT 'Engine capacity in cc (technical) to',
  `LITSTEUERV` smallint(4) DEFAULT NULL COMMENT 'Engine capacity in litre (taxation) from',
  `LITSTEUERB` smallint(4) DEFAULT NULL COMMENT 'Engine capacity in litre (taxation) to',
  `LITTECHV` smallint(4) DEFAULT NULL COMMENT 'Engine capacity in litre (technical) from',
  `LITTECHB` smallint(4) DEFAULT NULL COMMENT 'Engine capacity in litre (technical) to',
  `MOTVERW` smallint(3) DEFAULT NULL COMMENT 'Engine usage (->KT 098)',
  `MOTBAUFORM` smallint(3) DEFAULT NULL COMMENT 'Engine Design (->KT 096)',
  `KRSTOFFART` smallint(3) DEFAULT NULL COMMENT 'Fuel Type (->KT 088)',
  `KRSTOFFAUF` smallint(3) DEFAULT NULL COMMENT 'Fuel Mixture Formation (->KT 097)',
  `MOTBEATM` smallint(3) DEFAULT NULL COMMENT 'Engine aspiration (->KT 099); charger',
  `UMINKWV` mediumint(5) DEFAULT NULL COMMENT 'RPM kW from',
  `UMINKWB` mediumint(5) DEFAULT NULL COMMENT 'RPM kW to',
  `UMINDREHMV` mediumint(5) DEFAULT NULL COMMENT 'RPM torque from',
  `UMINDREHMB` mediumint(5) DEFAULT NULL COMMENT 'RPM torque to',
  `KURBEL` smallint(2) DEFAULT NULL COMMENT 'Number of crankshaft bearings',
  `BOHRUNG` mediumint(6) DEFAULT NULL COMMENT 'Bore * 1000',
  `HUB` mediumint(6) DEFAULT NULL COMMENT 'Stroke * 1000Stroke * 1000',
  `MOTORART` smallint(3) DEFAULT NULL COMMENT 'Engine type (->KT 080)',
  `ABGASNORM` smallint(3) DEFAULT NULL COMMENT 'Exhaust norm (-> KT 63)',
  `ZYLBAUFORM` smallint(3) DEFAULT NULL COMMENT 'Cylinder design (-> KT 79)',
  `MOTSTEUER` smallint(3) DEFAULT NULL COMMENT 'Engine management (-> KT 77)',
  `VENTILSTEUER` smallint(3) DEFAULT NULL COMMENT 'Valve control (-> KT 78)',
  `KUEHLART` smallint(3) DEFAULT NULL COMMENT 'Cooling type (-> KT 76)',
  `VKBEZ` varchar(30) DEFAULT NULL COMMENT 'Sales description',
  `EXCLUDE` tinyint(1) DEFAULT NULL COMMENT '0 = Inclusion, 1 = Exclusion of countries ( DT 156)',
  `DELETE` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1: Engine series is proposed for deletion, otherwise 0',
  PRIMARY KEY (`MOTNR`),
  KEY `MCODE` (`MCODE`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Description of all engine types';

CREATE TABLE IF NOT EXISTS `156` (
  `DLNR` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `SA` smallint(3) NOT NULL DEFAULT '156' COMMENT 'Data Table Constant= 156',
  `MOTNR` mediumint(5) NOT NULL DEFAULT '0' COMMENT 'Unambiguous engine numbers (DT 155)',
  `LKZ` varchar(3) NOT NULL DEFAULT '' COMMENT 'Country Code (Key 010 or 013)',
  PRIMARY KEY (`MOTNR`,`LKZ`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Country restrictions for engines';

CREATE TABLE IF NOT EXISTS `160` (
  `DLNR` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `SA` smallint(3) NOT NULL DEFAULT '160' COMMENT 'Data Table Constant= 160',
  `ATYPNR` mediumint(5) NOT NULL DEFAULT '0' COMMENT 'Unambiguous Axle number',
  `BEZEICHNUNG` varchar(30) NOT NULL COMMENT 'Description (Axle type)',
  `KMODNR` mediumint(5) NOT NULL COMMENT 'Model-Key (-> 110)',
  `SORTNR` smallint(4) NOT NULL COMMENT 'Sort-Key for Sorting',
  `BJVON` mediumint(6) DEFAULT NULL COMMENT 'Model Year from (YYYYMM)',
  `BJBIS` mediumint(6) DEFAULT NULL COMMENT 'Model Year to (YYYYMM)',
  `ACHSART` smallint(3) NOT NULL COMMENT 'Axle type (KT 68)',
  `AUSFUHRUNG` smallint(3) NOT NULL COMMENT 'Style (KT 95)',
  `BREMSAUSF` smallint(3) DEFAULT NULL COMMENT 'Brake type (KT 83)',
  `ACHSKORPER` smallint(3) DEFAULT NULL COMMENT 'Axle-body (KT 214)',
  `ZULLASTVON` mediumint(5) DEFAULT NULL COMMENT 'Maximum Axle Load in Kg from',
  `ZULLASTBIS` mediumint(5) DEFAULT NULL COMMENT 'Maximum Axle Load in Kg to',
  `RADBEFESTIGUNG` smallint(3) DEFAULT NULL COMMENT 'Wheel mounting (KT 213)',
  `SPURWEITE` smallint(4) DEFAULT NULL COMMENT 'Track width (mm)',
  `NABENSYSTEM` varchar(20) DEFAULT NULL COMMENT 'Hub system',
  `FAHRHOHE_VON` smallint(4) DEFAULT NULL COMMENT 'Distance between road pavement and vehicle frame from',
  `FAHRHOHE_BIS` smallint(4) DEFAULT NULL COMMENT 'Distance between road pavement and vehicle frame to',
  `DELETE` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1: ATypNr series is proposed for deletion, otherwise 0',
  PRIMARY KEY (`ATYPNR`),
  KEY `BEZEICHNUNG` (`BEZEICHNUNG`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Description of all Axle types';

CREATE TABLE IF NOT EXISTS `161` (
  `DLNR` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `SA` smallint(3) NOT NULL DEFAULT '161' COMMENT 'Data Table Constant= 161',
  `ATYPNR` mediumint(5) NOT NULL DEFAULT '0' COMMENT 'Unambiguous Axle number',
  `LKZ` varchar(3) DEFAULT NULL COMMENT 'Country Code (-> 010)',
  `SORTNR` smallint(4) NOT NULL DEFAULT '0' COMMENT 'Display sequence of the sample within one Axle-type',
  `MUSTER` varchar(20) NOT NULL DEFAULT '' COMMENT 'Sample',
  PRIMARY KEY (`ATYPNR`,`SORTNR`,`MUSTER`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Allocation of body types to Axle types';

CREATE TABLE IF NOT EXISTS `162` (
  `DLNR` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `SA` smallint(3) NOT NULL DEFAULT '162' COMMENT 'Data Table Constant= 162',
  `ATYPNR` mediumint(5) NOT NULL DEFAULT '0' COMMENT 'Unambiguous Axle number',
  `LFDNR` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Sequential number for the Axle-position within the Axle-type',
  `SORTNR` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Sequential number for the wheelbases within the Axle-position',
  `ACHSPOS` smallint(3) NOT NULL COMMENT 'Axle-position (KT 064)',
  `RADSTAND` mediumint(6) NOT NULL COMMENT 'Wheelbase (mm)',
  PRIMARY KEY (`ATYPNR`,`LFDNR`,`SORTNR`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Allocation of wheelbases to Axle';

CREATE TABLE IF NOT EXISTS `163` (
  `DLNR` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `SA` smallint(3) NOT NULL DEFAULT '163' COMMENT 'Data Table Constant= 163',
  `ATYPNR` mediumint(5) NOT NULL DEFAULT '0' COMMENT 'Unambiguous Axle number',
  `LFDNR` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Sequential number for the brake-size within the axle-type',
  `BREMSENGROBE` smallint(3) NOT NULL COMMENT 'brake-size (KT 216)',
  `BEZEICHNUNG` varchar(20) DEFAULT NULL COMMENT 'brake-size description',
  PRIMARY KEY (`ATYPNR`,`LFDNR`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Allocation of Brake-sizes to Axles';

CREATE TABLE IF NOT EXISTS `164` (
  `DLNR` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `SA` smallint(3) NOT NULL DEFAULT '164' COMMENT 'Data Table Constant= 164',
  `NTYPNR` int(9) NOT NULL DEFAULT '0' COMMENT 'Unambiguous CV Type number',
  `LFDNR` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Sequential number within the NtypNr',
  `SORTNR` smallint(3) NOT NULL COMMENT 'Sorting of the linkage within the Axle-position',
  `ATYPNR` mediumint(5) NOT NULL DEFAULT '0' COMMENT 'Axle-type-number (-> 160)',
  `ACHSPOS` smallint(3) NOT NULL COMMENT 'Axle-position (KT 064)',
  `BJVON` mediumint(6) DEFAULT NULL COMMENT 'Model Year from (YYYYMM)',
  `BJBIS` mediumint(6) DEFAULT NULL COMMENT 'Model Year to (YYYYMM)',
  `LKZ` varchar(3) DEFAULT NULL COMMENT 'Country Code (-> 010)',
  `EXCLUDE` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 = Inclusion, 1 = Exclusion of countries',
  PRIMARY KEY (`NTYPNR`,`LFDNR`,`ATYPNR`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Allocation of Axle-types to primary CV Types';

CREATE TABLE IF NOT EXISTS `180` (
  `DLNR` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `SA` smallint(3) NOT NULL DEFAULT '180' COMMENT 'Data Table Constant= 180',  
  `VKNZIELART` smallint(3) NOT NULL DEFAULT '0' COMMENT '2: KTyp vehicle in table 120 .. 16: NTyp vehicle in table 532 .. 14: EngNo in table 155',
  `VKNZIELNR` int(9) NOT NULL DEFAULT '0' COMMENT 'Number of the linkage target (KTypeNr, NTypeNr, MotNr, HerIdNr, …)',
  `POWEROUTPUTTYPE` varchar(3) NOT NULL DEFAULT '' COMMENT 'KT 87',
  `KRSTOFFART` varchar(3) NOT NULL DEFAULT '' COMMENT 'Fuel type (KT 182)',
  `KW` mediumint(5) DEFAULT NULL COMMENT 'Power output',
  PRIMARY KEY (`VKNZIELART`,`VKNZIELNR`,`POWEROUTPUTTYPE`,`KRSTOFFART`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Power Output';

CREATE TABLE IF NOT EXISTS `200` (
  `ARTNR` varchar(22) NOT NULL DEFAULT '' COMMENT 'Article Number in the data supplier format',
  `DLNR` smallint(4) NOT NULL COMMENT 'Data Supplier Number Constant (-> 040)',
  `SA` smallint(3) NOT NULL DEFAULT '200' COMMENT 'Data Table Constant= 200',
  `BEZNR` int(9) DEFAULT NULL COMMENT 'Description text number in the language key table',
  `KZSB` tinyint(1) DEFAULT '0' COMMENT 'Self-service packing = 1, otherwise 0',
  `KZMAT` tinyint(1) DEFAULT '0' COMMENT 'Mandatory material certification = 1, otherwise 0',
  `KZAT` tinyint(1) DEFAULT '0' COMMENT 'Remanufactured Part = 1, otherwise 0',
  `KZZUB` tinyint(1) DEFAULT '0' COMMENT 'Accessory = 1, otherwise 0',
  `LOSGR1` mediumint(5) DEFAULT NULL COMMENT 'Batch size 1 (multiple of VPE)',
  `LOSGR2` mediumint(5) DEFAULT NULL COMMENT 'Batch size 2 (multiple of LosGr1)',
  `LOSCH_FLAG` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 = delete all data records for the Delta Key, otherwise = 0 (*)',
  PRIMARY KEY (`ARTNR`,`DLNR`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Main Article Data Table';

CREATE TABLE IF NOT EXISTS `201` (
  `ARTNR` varchar(22) NOT NULL DEFAULT '' COMMENT 'Article Number in the data supplier format',
  `DLNR` smallint(4) NOT NULL COMMENT 'Data Supplier Number Constant (-> 100)',
  `SA` smallint(3) NOT NULL DEFAULT '201' COMMENT 'Data Table Constant= 201',
  `PREIS` bigint(10) DEFAULT NULL COMMENT 'Gross price with two decimal spaces or blank for price on demand',
  `PENR` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Price Unit (KT 070)',
  `MENR` varchar(3) NOT NULL DEFAULT '' COMMENT 'Quantity Unit (KT 071)',
  `DATVON` int(8) NOT NULL DEFAULT '0' COMMENT 'Price valid from YYYYMMDD.',
  `DATBIS` int(8) DEFAULT NULL COMMENT 'Price valid to YYYYMMDD',
  `LKZ` varchar(3) NOT NULL DEFAULT '' COMMENT 'Country code for currency country (-> 010).',
  `PRART` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Price Type (KT 074).',
  `RESERVIERT` varchar(10) DEFAULT NULL COMMENT 'Constantly blank',
  `WKZ` varchar(3) NOT NULL DEFAULT '' COMMENT 'Currency Code',
  `RABATTGRUPPE` varchar(5) DEFAULT NULL COMMENT 'Discount group',
  `MINDERRABATT` tinyint(1) DEFAULT NULL COMMENT 'Discount',
  `LOSCH_FLAG` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 = delete all data records for the Delta Key, otherwise = 0 (*)',
  PRIMARY KEY (`ARTNR`,`DLNR`,`PRART`,`LKZ`,`WKZ`,`DATVON`,`PENR`,`MENR`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Article price table';

CREATE TABLE IF NOT EXISTS `202` (
  `ARTNR` varchar(22) NOT NULL DEFAULT '' COMMENT 'Article Number in the data supplier format',
  `DLNR` smallint(4) NOT NULL COMMENT 'Data Supplier Number Constant (-> 100)',
  `SA` smallint(3) NOT NULL DEFAULT '202' COMMENT 'Data Table Constant= 202',
  `LKZ` varchar(3) NOT NULL DEFAULT '' COMMENT 'Country Code (-> 010 or 012)',
  `EXCLUDE` tinyint(1) NOT NULL DEFAULT '0' COMMENT '‘1’ = Country Code is an exclusion, ‘0’ = Country Code is an inclusion.',
  `LOSCH_FLAG` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 = delete all data records for the Delta Key, otherwise = 0 (*)',
  PRIMARY KEY (`ARTNR`,`DLNR`,`LKZ`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Inclusion/Exclusion of certain countries for an article';

CREATE TABLE IF NOT EXISTS `203` (
  `ARTNR` varchar(22) NOT NULL DEFAULT '' COMMENT 'Article Number in the data supplier format',
  `DLNR` smallint(4) NOT NULL COMMENT 'Data Supplier Number Constant (-> 100)',
  `SA` smallint(3) NOT NULL DEFAULT '203' COMMENT 'Data Table Constant= 203',
  `KHERNR` mediumint(6) NOT NULL DEFAULT '0' COMMENT 'Vehicle Manufacturer (-> 100)',
  `LKZ` varchar(3) DEFAULT NULL COMMENT 'Country Code (-> 010 or 012).',
  `REFNR` varchar(22) NOT NULL DEFAULT '' COMMENT 'OE number for this manufacturer',
  `EXCLUDE` tinyint(1) DEFAULT '0' COMMENT '‘1’ = Country Code is an exclusion, ‘0’ = Country Code is an inclusion.',
  `SORT` mediumint(5) NOT NULL DEFAULT '0' COMMENT 'Display sequence of this record',
  `ADDITIV` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0/1: Record builds a block with the parent',
  `REFERENZINFO` varchar(3) DEFAULT NULL COMMENT 'Reference type (KT 270)',
  `LOSCH_FLAG` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 = delete all data records for the Delta Key, otherwise = 0 (*)',
  PRIMARY KEY (`ARTNR`,`DLNR`,`KHERNR`,`SORT`),
  KEY `REFNR` (`REFNR`),
  KEY `KHERNR` (`KHERNR`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Reference numbers for articles by vehicle manufacturers';

CREATE TABLE IF NOT EXISTS `204` (
  `ARTNR` varchar(22) NOT NULL DEFAULT '' COMMENT 'Article Number in the data supplier format',
  `DLNR` smallint(4) NOT NULL COMMENT 'Data Supplier Number Constant (-> 100)',
  `SA` smallint(3) NOT NULL DEFAULT '204' COMMENT 'Data Table Constant= 204',
  `LKZ` varchar(3) DEFAULT NULL COMMENT 'Country Code (-> 010 or 012).',
  `ERSATZNR` varchar(22) NOT NULL DEFAULT '' COMMENT 'Article ArtNr supersedes Article ErsatzNr',
  `EXCLUDE` tinyint(1) DEFAULT '0' COMMENT '‘1’ = Country Code is an exclusion, ‘0’ = Country Code is an inclusion.',
  `SORT` mediumint(5) NOT NULL COMMENT 'Display sequence of this record',
  `LOSCH_FLAG` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 = delete all data records for the Delta Key, otherwise = 0',
  PRIMARY KEY (`ARTNR`,`DLNR`,`ERSATZNR`,`SORT`),
  KEY `ERSATZNR` (`ERSATZNR`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='The numbers of superseding articles';

CREATE TABLE IF NOT EXISTS `205` (
  `ARTNR` varchar(22) NOT NULL DEFAULT '' COMMENT 'Article Number in the data supplier format',
  `DLNR` smallint(4) NOT NULL COMMENT 'Data Supplier Number Constant (-> 100)',
  `SA` smallint(3) NOT NULL DEFAULT '205' COMMENT 'Data Table Constant= 205',
  `PARTGENARTNR` mediumint(5) NOT NULL COMMENT 'Unambiguous number of the Part-Generic Article',
  `LFDNR` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Sequential number for sorting',
  `PARTNR` varchar(22) NOT NULL COMMENT 'Relevant component part',
  `MENGE` smallint(3) NOT NULL COMMENT 'Quantity of component part',
  `LOSCH_FLAG` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 = delete all data records for the Delta Key, otherwise = 0',
  PRIMARY KEY (`ARTNR`,`DLNR`,`LFDNR`),
  KEY `PARTNR` (`PARTNR`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Parts list information on articles';

CREATE TABLE IF NOT EXISTS `206` (
  `ARTNR` varchar(22) NOT NULL DEFAULT '' COMMENT 'Article Number in the data supplier format',
  `DLNR` smallint(4) NOT NULL COMMENT 'Data Supplier Number Constant (-> 100)',
  `SA` smallint(3) NOT NULL DEFAULT '206' COMMENT 'Data Table Constant= 206',
  `RESERVIERT` varchar(5) DEFAULT NULL COMMENT 'Former GenArtNr',
  `LKZ` varchar(3) DEFAULT NULL COMMENT 'Country Code (-> 010 or 012).',
  `SORTNR` smallint(2) NOT NULL DEFAULT '0' COMMENT 'Sorting for display',
  `INFART` smallint(3) NOT NULL COMMENT 'Information Type (KT 072)',
  `ANZSOFORT` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Immediate Display = 1: Information is displayed on the 1st article page on the presentation medium and is repeated boldly on the 2nd page.',
  `TBSNR` varchar(6) NOT NULL COMMENT 'Text Module Number',
  `EXCLUDE` tinyint(1) DEFAULT '0' COMMENT '‘1’ = Country Code is an exclusion, ‘0’ = Country Code is an inclusion.',
  `LOSCH_FLAG` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 = delete all data records for the Delta Key, otherwise = 0',
  PRIMARY KEY (`ARTNR`,`DLNR`,`SORTNR`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Information text for articles';

CREATE TABLE IF NOT EXISTS `207` (
  `ARTNR` varchar(22) NOT NULL DEFAULT '' COMMENT 'Article Number in the data supplier format',
  `DLNR` smallint(4) NOT NULL COMMENT 'Data Supplier Number Constant (-> 100)',
  `SA` smallint(3) NOT NULL DEFAULT '207' COMMENT 'Data Table Constant= 207',
  `LKZ` varchar(3) DEFAULT NULL COMMENT 'Country Code (-> 010 or 012).',
  `GEBRNR` varchar(35) NOT NULL DEFAULT '' COMMENT 'Trade number of the article (short code)',
  `EXCLUDE` tinyint(1) DEFAULT '0' COMMENT '‘1’ = Country Code is an exclusion, ‘0’ = Country Code is an inclusion.',
  `ANZSOFORT` tinyint(1) DEFAULT '0' COMMENT '0 = Trade number is only shown on the 2nd article page, 1 = Trade number is shown on the 1st article page.',
  `SORTNR` mediumint(5) NOT NULL DEFAULT '0' COMMENT 'Display sequence of this record',
  `LOSCH_FLAG` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 = delete all data records for the Delta Key, otherwise = 0',
  PRIMARY KEY (`ARTNR`,`DLNR`,`GEBRNR`,`SORTNR`),
  KEY `GEBRNR` (`GEBRNR`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Trade Numbers';

CREATE TABLE IF NOT EXISTS `208` (
  `ARTNR` varchar(22) NOT NULL DEFAULT '' COMMENT 'Article Number in the data supplier format',
  `DLNR` smallint(4) NOT NULL COMMENT 'Data Supplier Number Constant (Key 040)',
  `SA` smallint(3) NOT NULL DEFAULT '208' COMMENT 'Data Table Constant= 208',
  `RESERVED_LKZ` varchar(3) DEFAULT NULL COMMENT 'Former LKZ',
  `LFDNR` mediumint(5) NOT NULL DEFAULT '0' COMMENT 'Sequential Number',
  `SORTNR` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Sorting Order',
  `KRITNR` smallint(4) NOT NULL COMMENT 'Criterion Number (Key 050)',
  `KRITWERT` varchar(20) NOT NULL COMMENT 'Criterion Value',
  `RESERVED_EXLUDE` varchar(1) DEFAULT NULL COMMENT 'Former “Exlude”',
  `LFDNR1` smallint(3) NOT NULL DEFAULT '0' COMMENT 'LfdNr from DT205',
  `LOSCH_FLAG` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 = delete all data records for the Delta Key, otherwise = 0',
  PRIMARY KEY (`ARTNR`,`DLNR`,`LFDNR1`,`LFDNR`,`SORTNR`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Criteria for component parts in a parts list';

CREATE TABLE IF NOT EXISTS `209` (
  `ARTNR` varchar(22) NOT NULL DEFAULT '' COMMENT 'Article Number in the data supplier format',
  `DLNR` smallint(4) NOT NULL COMMENT 'Data Supplier Number Constant (-> 100)',
  `SA` smallint(3) NOT NULL DEFAULT '209' COMMENT 'Data Table Constant= 209',
  `LKZ` varchar(3) DEFAULT NULL COMMENT 'Country Code (-> 010 or 012).',
  `EANNR` varchar(13) NOT NULL DEFAULT '' COMMENT 'EAN of the article',
  `EXCLUDE` tinyint(1) DEFAULT '0' COMMENT '‘1’ = Country Code is an exclusion, ‘0’ = Country Code is an inclusion.',
  `LOSCH_FLAG` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 = delete all data records for the Delta Key, otherwise = 0',
  PRIMARY KEY (`ARTNR`,`DLNR`,`EANNR`),
  KEY `EANNR` (`EANNR`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='EAN list';

CREATE TABLE IF NOT EXISTS `210` (
  `ARTNR` varchar(22) NOT NULL DEFAULT '' COMMENT 'Article Number in the data supplier format',
  `DLNR` smallint(4) NOT NULL COMMENT 'Data Supplier Number Constant (-> 100)',
  `SA` smallint(3) NOT NULL DEFAULT '210' COMMENT 'Data Table Constant= 210',
  `RESERVIERT` varchar(5) DEFAULT NULL COMMENT 'Former GenArtNr',
  `LKZ` varchar(3) DEFAULT NULL COMMENT 'Country Code (-> 010 or 012).',
  `SORTNR` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Display Sequence',
  `KRITNR` smallint(4) NOT NULL COMMENT 'Criterion Number (Key 050)',
  `KRITWERT` varchar(20) NOT NULL COMMENT 'Criterion Value',
  `ANZSOFORT1` tinyint(1) DEFAULT '0' COMMENT 'Display = ‘1’, otherwise ‘0’',
  `EXCLUDE` tinyint(1) DEFAULT '0' COMMENT '‘1’ = Country Code is an exclusion, ‘0’ = Country Code is an inclusion.',
  `LOSCH_FLAG` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 = delete all data records for the Delta Key, otherwise = 0',
  PRIMARY KEY (`ARTNR`,`DLNR`,`SORTNR`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Fixed article criteria that are not related to vehicle links';

CREATE TABLE IF NOT EXISTS `211` (
  `ARTNR` varchar(22) NOT NULL DEFAULT '' COMMENT 'Article Number in the data supplier format',
  `DLNR` smallint(4) NOT NULL COMMENT 'Data Supplier Number Constant (-> 100)',
  `SA` smallint(3) NOT NULL DEFAULT '211' COMMENT 'Data Table Constant= 211',
  `GENARTNR` mediumint(5) NOT NULL COMMENT 'Unambiguous number of the generic article (->320)',
  `LOSCH_FLAG` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 = delete all data records for the Delta Key, otherwise = 0',
  PRIMARY KEY `ARTNR` (`ARTNR`,`DLNR`,`GENARTNR`),
  KEY `GENARTNR` (`GENARTNR`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Allocation of generic articles to data supplier article numbers';

CREATE TABLE IF NOT EXISTS `212` (
  `ARTNR` varchar(22) NOT NULL DEFAULT '' COMMENT 'Article Number in the data supplier format',
  `DLNR` smallint(4) NOT NULL COMMENT 'Data Supplier Number Constant (-> 100)',
  `SA` smallint(3) NOT NULL DEFAULT '212' COMMENT 'Data Table Constant= 212',
  `LKZ` varchar(3) NOT NULL DEFAULT '' COMMENT 'Country Code (Key 010 or 012)',
  `VPE` varchar(5) DEFAULT '' COMMENT 'Packing unit (quantity per package)',
  `MENGEPROVPE` mediumint(5) DEFAULT NULL COMMENT 'Quantity /part per unit',
  `ARTSTAT` smallint(3) DEFAULT NULL COMMENT 'Article Status (KT 073)',
  `STATUSDAT` int(8) DEFAULT NULL COMMENT 'Article status valid from YYYYMMDD',
  `LOSCH_FLAG` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 = delete all data records for the Delta Key, otherwise = 0',
  UNIQUE KEY `ARTNR` (`ARTNR`,`DLNR`,`LKZ`,`VPE`,`MENGEPROVPE`,`ARTSTAT`,`STATUSDAT`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Country-Specific Article-data';

CREATE TABLE IF NOT EXISTS `213` (
  `ARTNR` varchar(22) NOT NULL DEFAULT '' COMMENT 'Article Number in the data supplier format',
  `DLNR` smallint(4) NOT NULL COMMENT 'Data Supplier Number Constant (-> 100)',
  `SA` smallint(3) NOT NULL DEFAULT '213' COMMENT 'Data Table Constant= 213',  
  `LKZ` varchar(3) DEFAULT NULL COMMENT 'Country Code (-> 010 or 012).',
  `SORTNR` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Display Sequence',
  `KRITNR` smallint(4) NOT NULL COMMENT 'Criterion Number (Key 053)',
  `KRITWERT` varchar(20) NOT NULL COMMENT 'Criterion Value',
  `ANZSOFORT1` tinyint(1) DEFAULT '0' COMMENT 'Display = ‘1’, otherwise ‘0’',
  `EXCLUDE` tinyint(1) DEFAULT '0' COMMENT '‘1’ = Country Code is an exclusion, ‘0’ = Country Code is an inclusion.', 
  PRIMARY KEY (`ARTNR`,`DLNR`,`SORTNR`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT=' Article Criteria (Logistics) … New table in format version 2.5 - Fixed article criteria that are not related to vehicle links';

CREATE TABLE IF NOT EXISTS `214` (
  `PACKARTNO` varchar(22) NOT NULL DEFAULT '' COMMENT 'Article Number in the data supplier format',
  `DLNR` smallint(4) NOT NULL COMMENT 'Data Supplier Number Constant (-> 100)',
  `SA` smallint(3) NOT NULL DEFAULT '214' COMMENT 'Data Table Constant= 214',  
  `EAN` varchar(14) DEFAULT '' COMMENT 'Package Level GTIN',  
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
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Packaging hierarchy incl. measurements and weight (shipping unit) - new in ver 2.6';


CREATE TABLE IF NOT EXISTS `215` (
  `ARTNR` varchar(22) NOT NULL DEFAULT '' COMMENT 'Article Number in the data supplier format',
  `DLNR` smallint(4) NOT NULL COMMENT 'Data Supplier Number Constant (Key 040)',
  `SA` smallint(3) NOT NULL DEFAULT '215' COMMENT 'Data Table Constant= 215',
  `LFDNR` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Sequential number from DT205',
  `LKZ` varchar(3) NOT NULL DEFAULT '' COMMENT 'Country Code (Key 010 or 012)',
  `EXCLUDE` tinyint(1) NOT NULL DEFAULT '0' COMMENT '‘1’ = Country Code is an exclusion, ‘0’ = Country Code is an inclusion.',
  `LOSCH_FLAG` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 = delete all data records for the Delta Key, otherwise = 0',
  PRIMARY KEY (`ARTNR`,`DLNR`,`LFDNR`,`LKZ`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Country restrictions for parts lists information';

CREATE TABLE IF NOT EXISTS `216` (
  `PACKARTNO` varchar(22) NOT NULL DEFAULT '' COMMENT 'Article Number in the data supplier format',
  `DLNR` smallint(4) NOT NULL COMMENT 'Data Supplier Number Constant (-> 100)',
  `SA` smallint(3) NOT NULL DEFAULT '216' COMMENT 'Data Table Constant= 216',  
  `LKZ` varchar(3) NOT NULL DEFAULT '' COMMENT 'Country Code (-> 010)',
  PRIMARY KEY (`PACKARTNO`, `LKZ`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Packaging units country restrictions (optional) - new in ver 2.6';

CREATE TABLE IF NOT EXISTS `217` (
  `ARTNR` varchar(22) NOT NULL DEFAULT '' COMMENT 'Article Number in the data supplier format',
  `DLNR` smallint(4) NOT NULL COMMENT 'Data Supplier Number Constant (Key 040)',
  `SA` smallint(3) NOT NULL DEFAULT '217' COMMENT 'Data Table Constant= 217',
  `LFDNR` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Sequential number from DT205',
  `BILDNR` int(9) NOT NULL DEFAULT '0' COMMENT 'Unambiguous Graphics Number	( 100.000 * DatSupNo., < 100.000 * (DatSupNo. + 1))',
  `DOKUMENTENART` smallint(2) NOT NULL DEFAULT '0' COMMENT 'Document Type (014)',
  `SPRACHNR` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Language Number (Key 020)',
  `KOORDINATENNR` smallint(4) NOT NULL DEFAULT '0' COMMENT 'Coordinate Number',
  `LOSCH_FLAG` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 = delete all data records for the Delta Key, otherwise = 0',
  PRIMARY KEY (`ARTNR`,`DLNR`,`LFDNR`,`BILDNR`,`DOKUMENTENART`,`SPRACHNR`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='The allocation of coordinates to context-sensitive graphics';

CREATE TABLE IF NOT EXISTS `218` (
  `ARTNR` varchar(22) NOT NULL DEFAULT '' COMMENT 'Article Number in the data supplier format',
  `ARTSWITCH` varchar(1) NOT NULL DEFAULT '' COMMENT '0: end user unit (->200) ; 1: packing unit (-> 214)', 
  `DLNR` smallint(4) NOT NULL COMMENT 'Data Supplier Number Constant (-> 100)',
  `SA` smallint(3) NOT NULL DEFAULT '218' COMMENT 'Data Table Constant= 218', 
  `LOTSIZE` smallint(4) DEFAULT NULL COMMENT 'Amount of units specified by PackArtNo', 
  `RECIPIENTID` varchar(4) NOT NULL DEFAULT '' COMMENT 'Just for distribution control – for future use',
  PRIMARY KEY (`ARTNR`, `RECIPIENTID`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Packaging units lot sizes (optional) - new in ver 2.6';

CREATE TABLE IF NOT EXISTS `222` (
  `ARTNR` varchar(22) NOT NULL DEFAULT '' COMMENT 'Article Number in the data supplier format',
  `DLNR` smallint(4) NOT NULL COMMENT 'Data Supplier Number Constant (Key 040)',
  `SA` smallint(3) NOT NULL DEFAULT '222' COMMENT 'Data Table Constant= 222',
  `VKN_ART` tinyint(1) DEFAULT NULL COMMENT 'Type of linkage (Vehicle Manufacturer, Model Series, PC, CV, Engine Manufacturer, Engine)',
  `VKN_VALUE` mediumint(6) DEFAULT NULL COMMENT 'KHerNr, MHerNr, KModNr, KTypNr, NTypNr or MotNr',
  `LFDNR` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Sequential Number',
  `SORTNR` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Sorting Number',
  `ZARTNR` varchar(22) NOT NULL COMMENT 'Relevant accessory part, must be contained in the DT 200, KZZub must be ‘1’',
  `MENGE` smallint(3) NOT NULL COMMENT 'Quantity of accessory parts required',
  `ZUBGENARTNR` mediumint(5) NOT NULL COMMENT 'Unambiguous number of the accessory generic article (-> SA320)',
  `RESERVED` varchar(1) DEFAULT NULL COMMENT 'Previously Exclude, became obsolete because of the deletion of table 225',
  `BEZNR` int(9) DEFAULT NULL COMMENT 'Description Number (->030)',
  `LOSCH_FLAG` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 = delete all data records for the Delta Key, otherwise = 0',
  PRIMARY KEY (`ARTNR`,`DLNR`,`LFDNR`,`SORTNR`),
  KEY `ZARTNR` (`ZARTNR`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Accessories information for articles';

CREATE TABLE IF NOT EXISTS `228` (
  `ARTNR` varchar(22) NOT NULL DEFAULT '' COMMENT 'Article Number in the data supplier format',
  `DLNR` smallint(4) NOT NULL COMMENT 'Data Supplier Number Constant (Key 040)',
  `SA` smallint(3) NOT NULL DEFAULT '228' COMMENT 'Data Table Constant= 228',
  `LKZ` varchar(3) DEFAULT NULL COMMENT 'Country Code (Key 010 or 012)',
  `LFDNR1` smallint(3) NOT NULL DEFAULT '0' COMMENT 'LfdNr from DT222',
  `SORTNR1` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Sorting Order',
  `LFDNR` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Sequential number for the accessory list criterion',
  `KRITNR` smallint(4) NOT NULL COMMENT 'Criterion Number (Key 050)',
  `KRITWERT` varchar(20) NOT NULL COMMENT 'Criterion Value',
  `EXCLUDE` tinyint(1) DEFAULT '0' COMMENT '‘1’ = Country Code is an exclusion, ‘0’ = Country Code is an inclusion.',
  `LOSCH_FLAG` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 = delete all data records for the Delta Key, otherwise = 0',
  PRIMARY KEY (`ARTNR`,`DLNR`,`LFDNR1`,`SORTNR1`,`LFDNR`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Criteria for the individual parts of an accessory list';

CREATE TABLE IF NOT EXISTS `231` (
  `RESERVIERT` varchar(22) DEFAULT NULL COMMENT 'Constantly blank',
  `DLNR` smallint(4) NOT NULL COMMENT 'Data Supplier Number Constant (Key 040)',
  `SA` smallint(3) NOT NULL DEFAULT '231' COMMENT 'Data Table Constant= 231',
  `BILDNR` int(9) NOT NULL DEFAULT '0' COMMENT 'Unambiguous Picture Number	( 100.000 * DLNr, < 100.000 * (DLNr + 1))',
  `SPRACHNR` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Language Number (Key 020)',
  `BILDNAME` varchar(30) DEFAULT NULL COMMENT 'Graphic file number without extension',
  `BILDTYPE` smallint(3) NOT NULL COMMENT '(KT 143) Article, Vehicle, etc',
  `BEZNORM` smallint(3) NOT NULL COMMENT '(KT 141) Standardised Graphic Header',
  `BREIT` smallint(4) DEFAULT NULL COMMENT 'Graphic width',
  `HOCH` smallint(4) DEFAULT NULL COMMENT 'Graphic height',
  `FARBEN` smallint(3) DEFAULT NULL COMMENT 'Colour Quantity',
  `DOKUMENTENART` smallint(2) NOT NULL DEFAULT '0' COMMENT '-> DT014',
  `BEZNR` int(9) DEFAULT NULL COMMENT 'Description –> SA 030',
  `LOSCH_FLAG` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 = delete all data records for the Delta Key, otherwise = 0',
  `URL` varchar(300) DEFAULT NULL COMMENT 'URL to which the link is made. Only if DokumentenArt = URL',
  PRIMARY KEY (`BILDNR`,`DOKUMENTENART`,`SPRACHNR`, `BILDTYPE`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='The allocation of graphics/documents to picture numbers';

CREATE TABLE IF NOT EXISTS `232` (
  `ARTNR` varchar(22) NOT NULL DEFAULT '' COMMENT 'Article Number in the data supplier format',
  `DLNR` smallint(4) NOT NULL COMMENT 'Data Supplier Number Constant (Key 040)',
  `SA` smallint(3) NOT NULL DEFAULT '232' COMMENT 'Data Table Constant= 232',
  `SORTNR` smallint(2) NOT NULL DEFAULT '0' COMMENT 'Sequential sorting number for graphics that belong to the same article, starting with 1 per article. Used to determine the order of display.',
  `LKZ` varchar(3) DEFAULT NULL COMMENT 'Country Code (-> 010)',
  `EXCLUDE` tinyint(1) DEFAULT NULL COMMENT '‘1’ = Country Code is an exclusion, ‘0’ = Country Code is an inclusion.',
  `BILDNR` int(9) NOT NULL COMMENT 'Unambiguous Graphics Number (->231)',
  `DOKUMENTENART` smallint(2) NOT NULL COMMENT '-> DT014',
  `LOSCH_FLAG` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 = delete all data records for the Delta Key, otherwise = 0',
  PRIMARY KEY (`ARTNR`,`DLNR`,`BILDNR`,`DOKUMENTENART`),
  KEY `bildnr` (`BILDNR`,`DOKUMENTENART`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='The allocation of graphics to article numbers';

CREATE TABLE IF NOT EXISTS `233` (
  `DLNR` smallint(4) NOT NULL COMMENT 'Data Supplier Number Constant (Key 040)',
  `SA` smallint(3) NOT NULL DEFAULT '233' COMMENT 'Data Table Constant= 233',
  `BILDNR` int(9) NOT NULL DEFAULT '0' COMMENT 'Unambiguous Graphic Number	( 100.000 * DatSupNo., < 100.000 * (DatSupNo. + 1))',
  `DOKUMENTENART` smallint(2) NOT NULL DEFAULT '0' COMMENT '-> DT014',
  `KOORDINATENNR` smallint(4) NOT NULL DEFAULT '0' COMMENT 'Coordinate number',
  `LFDNR` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Sequential number when more than one Coordinate Number',
  `SPRACHNR` smallint(3) NOT NULL COMMENT 'Language Number (020)',
  `TYP` tinyint(1) NOT NULL COMMENT '0=Circle, 1=Square',
  `X1` smallint(4) NOT NULL COMMENT 'X-Coordinate centre of the circle / 1. point of the square',
  `Y1` smallint(4) NOT NULL COMMENT 'Y-Coordinate centre of the circle / 1. point of the square',
  `X2` smallint(4) NOT NULL COMMENT 'Radius of the circle / X-Coordinate 2. point of the square',
  `Y2` smallint(4) DEFAULT NULL COMMENT 'Y-Coordinate 2. point of the square',
  `LOSCH_FLAG` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 = delete all data records for the Delta Key, otherwise = 0',
  PRIMARY KEY (`BILDNR`,`DOKUMENTENART`,`KOORDINATENNR`,`LFDNR`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Context sensitive graphics';

CREATE TABLE IF NOT EXISTS `301` (
  `RESERVIERT` varchar(22) DEFAULT NULL COMMENT 'Constantly blank',
  `DLNR` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `SA` smallint(3) NOT NULL DEFAULT '301' COMMENT 'Data Table Constant= 301',
  `NODE_ID` int(7) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the search node',
  `TREETYPNR` smallint(3) NOT NULL COMMENT 'Product section of the search node (KT 999)',
  `STUFE` smallint(2) NOT NULL COMMENT 'Number of the hierarchical level2 of the search',
  `NODE_PARENT_ID` int(7) DEFAULT NULL COMMENT 'Node_ID of an entry in the relevant superior hierarchy level that is allocated this search node3',
  `SORTNR` smallint(2) NOT NULL COMMENT 'Sorting order of the search node that belongs to a Node_Parent_ID.',
  `BEZNR` int(9) NOT NULL COMMENT 'Number of the description text (-> 030)',
  `WERTOK` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0, when grouping, 1, when the generic article is allowed for this code |	2 Level 1 is the highest hierarchical level. The limitation to 4 hierarchical levels is removed with the Data Release 0914 (Quarter 04/2014) | 3 This field is empty when the data record describes an entry in the superior hierarchy level.',
  PRIMARY KEY (`NODE_ID`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Hierarchically structured search tree';

CREATE TABLE IF NOT EXISTS `302` (
  `RESERVIERT` varchar(22) DEFAULT NULL COMMENT 'Constantly blank',
  `DLNR` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `SA` smallint(3) NOT NULL DEFAULT '302' COMMENT 'Data Table Constant= 302',
  `NODE_ID` int(7) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the search node (->301)',
  `SORTNR` smallint(2) NOT NULL COMMENT 'Sorting order within a search node',
  `GENARTNR` mediumint(5) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the generic article (->320)',
  PRIMARY KEY (`NODE_ID`,`GENARTNR`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Allocation of generic articles to the Tecdoc search structure';

CREATE TABLE IF NOT EXISTS `304` (
  `DLNR` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `SA` smallint(3) NOT NULL DEFAULT '304' COMMENT 'Data Table Constant= 304',
  `NODE_ID` int(7) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the search node (->301)',
  `GENARTNR` mediumint(5) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the generic article (->320)',
  `SORTNR` smallint(3) NOT NULL COMMENT 'Sorting order within one search node',
  `KRITNR` smallint(4) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the criterion (DT050), must be of type ‘K’',
  `KRITWERT` varchar(20) NOT NULL DEFAULT '' COMMENT 'Criterion Value',
  PRIMARY KEY (`NODE_ID`,`GENARTNR`,`KRITNR`,`KRITWERT`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Allocation of criteria to combinations of search tree nodes and generic articles within the TecDoc search structure';

CREATE TABLE IF NOT EXISTS `305` (
  `DLNR` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `SA` smallint(3) NOT NULL DEFAULT '305' COMMENT 'Data Table Constant= 305',
  `QS_ID` smallint(4) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the quick-start icons',
  `BEZNR` int(9) NOT NULL COMMENT 'Number of the description text (-> 030)',
  `BILDNAME` varchar(30) NOT NULL COMMENT 'Bildname with extension',
  PRIMARY KEY (`QS_ID`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Description of the quick-start icons';

CREATE TABLE IF NOT EXISTS `306` (
  `DLNR` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `SA` smallint(3) NOT NULL DEFAULT '306' COMMENT 'Data Table Constant= 306',
  `TREETYPNR` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Product area of the search node',
  `QS_ID` smallint(4) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the quick-start icon -> 305',
  `SORTNR` smallint(3) NOT NULL COMMENT 'Quick-start icons sorting within the product area',
  PRIMARY KEY (`TREETYPNR`,`QS_ID`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='The allocation of quick-start icons to the product areas (PC, CV, etc.)';

CREATE TABLE IF NOT EXISTS `307` (
  `DLNR` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `SA` smallint(3) NOT NULL DEFAULT '307' COMMENT 'Data Table Constant= 307',
  `TREETYPNR` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Product area of the search node',
  `QS_ID` smallint(4) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the quick-start icon -> 305',
  `NODE_ID` int(7) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the search node ->301',
  `SORTNR` smallint(3) NOT NULL COMMENT 'Sorting of nodes/leaves within one product area after calling the quick-start icons (separate search tree, may deviate from DT 301).',
  PRIMARY KEY (`TREETYPNR`,`QS_ID`,`NODE_ID`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Allocation of quick-start icons to Nodes/Leaves within one product area (PC, CV, etc.)';

CREATE TABLE IF NOT EXISTS `320` (
  `DLNR` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `SA` smallint(3) NOT NULL DEFAULT '320' COMMENT 'Data Table Constant= 320',
  `GENARTNR` mediumint(5) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the generic article',
  `NARTNR` mediumint(5) NOT NULL COMMENT 'Unambiguous number of the standardised article description (-> 323)',
  `BGNR` smallint(4) DEFAULT NULL COMMENT 'Unambiguous number of the assembly group (->324)',
  `VERWNR` smallint(4) DEFAULT NULL COMMENT 'Unambiguous number of the usage (->325)',
  `BEZNR` int(9) NOT NULL COMMENT 'Description Number (-> 030) for description of the GenArt',
  `OK_PKW` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: not allowed in PC linkage (->400). Otherwise 1.',
  `OK_NKW` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: not allowed in CV linkage (->400). Otherwise 1.',
  `OK_MOTOR` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: not allowed in engine linkage (->400). Otherwise 1.',
  `OK_UNIVERSAL` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: is not a universal generic article, otherwise 1',
  `OK_FZGUNAB` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: is not allowed for vehicle independent search, otherwise 1',
  `DELETE` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: is not allowed for vehicle independent search, otherwise 1',
  `OK_ACHSE` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: not allowed in Axle linkage (->400). Otherwise 1.',
  PRIMARY KEY (`GENARTNR`),
  KEY `BEZNR` (`BEZNR`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Generic Articles';

CREATE TABLE IF NOT EXISTS `323` (
  `RESERVIERT` varchar(22) NOT NULL DEFAULT '' COMMENT 'Constantly blank',
  `DLNR` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `SA` smallint(3) NOT NULL DEFAULT '323' COMMENT 'Data Table Constant= 323',
  `NARTNR` mediumint(5) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the standardised article description (-> 323)',
  `BEZNR` int(9) NOT NULL COMMENT 'Description Number (-> 030) for description of the GenArt',
  PRIMARY KEY (`NARTNR`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Standardised article description';

CREATE TABLE IF NOT EXISTS `324` (
  `RESERVIERT` varchar(22) NOT NULL DEFAULT '' COMMENT 'Constantly blank',
  `DLNR` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `SA` smallint(3) NOT NULL DEFAULT '324' COMMENT 'Data Table Constant= 324',
  `BGNR` smallint(4) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the assembly group',
  `BEZNR` int(9) NOT NULL COMMENT 'Description Number (-> 030) for description of the GenArt',
  PRIMARY KEY (`BGNR`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Assembly groups';

CREATE TABLE IF NOT EXISTS `325` (
  `RESERVIERT` varchar(22) NOT NULL DEFAULT '' COMMENT 'Constantly blank',
  `DLNR` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `SA` smallint(3) NOT NULL DEFAULT '325' COMMENT 'Data Table Constant= 325',
  `VERWNR` smallint(4) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the usage purpose',
  `BEZNR` int(9) NOT NULL COMMENT 'Description Number (-> 030) for description of the GenArt',
  PRIMARY KEY (`VERWNR`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Purpose of use';

CREATE TABLE IF NOT EXISTS `327` (
  `RESERVIERT` varchar(22) NOT NULL DEFAULT '' COMMENT 'Constantly blank',
  `DLNR` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `SA` smallint(3) NOT NULL DEFAULT '327' COMMENT 'Data Table Constant= 327',
  `GENARTNR` mediumint(5) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the generic article (->320)',
  `LFDNR` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Sequential number within a generic article',
  `SPRACHNR` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Language Number (-> 020)',
  `BEZ` varchar(60) NOT NULL COMMENT 'Descriptions',
  KEY `GENARTNR` (`GENARTNR`,`LFDNR`,`SPRACHNR`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Synonyms of the generic articles';

CREATE TABLE IF NOT EXISTS `328` (
  `RESERVIERT` varchar(22) NOT NULL DEFAULT '' COMMENT 'Constantly blank',
  `DLNR` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `SA` smallint(3) NOT NULL DEFAULT '328' COMMENT 'Data Table Constant= 328',
  `GENARTNR` mediumint(5) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the generic article (->320)',
  `LFDNR` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Sequential number within one GenartNr',
  `LKZ` varchar(3) DEFAULT NULL COMMENT 'Country Code (-> 010)',
  `KRITNR` smallint(4) NOT NULL COMMENT 'Criterion Number (-> 050)',
  `ONLY210` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1: must be specified as an article criterion (-> 210). Otherwise 0.',
  `ONLY400` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1: must be specified as linkage criterion (-> 400). Otherwise 0.',
  `EXCLUDE` tinyint(1) DEFAULT '0' COMMENT '‘1’ = Country Code is an exclusion, ‘0’ = Country Code is an inclusion.',
  KEY `GENARTNR` (`GENARTNR`,`LFDNR`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Mandatory criteria for generic articles';

CREATE TABLE IF NOT EXISTS `329` (
  `RESERVIERT` varchar(22) NOT NULL DEFAULT '' COMMENT 'Constantly blank',
  `DLNR` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `SA` smallint(3) NOT NULL DEFAULT '329' COMMENT 'Data Table Constant= 329',
  `GENARTNR` mediumint(5) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the generic article (->320)',
  `LFDNR` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Sequential number within a GenArtNr',
  `LKZ` varchar(3) DEFAULT NULL COMMENT 'Country Code (-> 010)',
  `KRITNR` smallint(4) NOT NULL COMMENT 'Criterion Number (-> 050)',
  `ONLY210` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1: proposed as article criterion (-> 210). Otherwise 0.',
  `ONLY400` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1: proposed as linkage criterion (-> 400). Otherwise 0.',
  `EXCLUDE` tinyint(1) DEFAULT '0' COMMENT '‘1’ = Country Code is an exclusion, ‘0’ = Country Code is an inclusion.',
  KEY `GENARTNR` (`GENARTNR`,`LFDNR`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Proposed criteria for generic articles';

CREATE TABLE IF NOT EXISTS `330` (
  `DLNR` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `SA` smallint(3) NOT NULL DEFAULT '330' COMMENT 'Data Table Constant= 330',
  `GENARTNR` mediumint(5) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the generic article (->320)',
  `LFDNR` smallint(3) NOT NULL DEFAULT '0' COMMENT 'LfdNr (DT328)',
  `SORTNR` smallint(3) NOT NULL COMMENT 'Sorting Order',
  `KRITWERT` varchar(3) NOT NULL DEFAULT '' COMMENT 'Criterion Value, criterion must be of type ‘K’',
  PRIMARY KEY (`GENARTNR`,`LFDNR`,`KRITWERT`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Allocation of criteria values to GA mandatory criteria';

-- new Tecdoc table from 07/2021
CREATE TABLE IF NOT EXISTS `331` (
  `DLNR` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `SA` smallint(3) NOT NULL DEFAULT '331' COMMENT 'Data Table Constant= 331',
  `GENARTNR` mediumint(5) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the generic article (->320)',
  `SORTNR` smallint(4) NOT NULL COMMENT 'Sort order for display of criteria on first catalogue page. Needs to be unique for all entries of one GA. Not required for usage=2 criteria',
  `KRITNR` smallint(4) NOT NULL COMMENT 'Criterion Number (-> 050)',
  `USAGE` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1=mandatory / 0=optional on 1st page / 2=recommended for second catalogue page / 9=not permitted at all on GA',
  `ONLYARTICLE` tinyint(1) DEFAULT NULL COMMENT 'Only allowed to be used on article level (**)',
  PRIMARY KEY (`GENARTNR`,`KRITNR`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Permitted Generic Article/Criteria combinations for use on first catalogue page';


-- new Tecdoc table from 07/2021
CREATE TABLE IF NOT EXISTS `332` (
  `DLNR` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `SA` smallint(3) NOT NULL DEFAULT '332' COMMENT 'Data Table Constant= 332',
  `GENARTNR` mediumint(5) NOT NULL DEFAULT '0' COMMENT 'References entry in table 331',
  `KRITNR` smallint(4) NOT NULL COMMENT 'Criterion Number (-> 050)',
  `KRITWERT` varchar(3) NOT NULL DEFAULT '' COMMENT 'Criterion Value, criterion must be of type ‘K’',
  PRIMARY KEY (`GENARTNR`,`KRITNR`,`KRITWERT`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Allocation of criteria values to GA criteria (new TA DQM standard)';

-- new Tecdoc table from 07/2021
CREATE TABLE IF NOT EXISTS `333` (
  `DLNR` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `SA` smallint(3) NOT NULL DEFAULT '333' COMMENT 'Data Table Constant= 333',
  `KRITNR` smallint(4) NOT NULL COMMENT 'Criterion Number (-> 050)',
  `KRITNRTYPE` varchar(3) NOT NULL DEFAULT '' COMMENT '“050”: CritNo contains reference to table 050, “053”: CritNo contains reference to table 053',
  `GENARTNR` mediumint(5) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the generic article (->320)',
  `CONSTRAINT` varchar(100) NOT NULL DEFAULT '' COMMENT 'Rule for value of CritNo used for article of GenArtNo. Provided as Regular Expression following <tbd> standard notation',
  PRIMARY KEY (`KRITNRTYPE`,`KRITNR`,`GENARTNR`),
  KEY (`GENARTNR`,`KRITNR`),
  KEY `DLNR` (`DLNR`)
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
  `DLNR` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `SA` smallint(3) NOT NULL DEFAULT '334' COMMENT 'Data Table Constant= 334',
  `RESERVIERT` varchar(27) NOT NULL DEFAULT '' COMMENT 'For future uses – filled with blank characters',
  `GENARTNR` mediumint(5) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the generic article (->320)',
  PRIMARY KEY (`GENARTNR`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Generic Articles requiring a safety data sheet';

-- new Tecdoc table from 06/2022
CREATE TABLE IF NOT EXISTS `340` (
  `DLNR` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `SA` smallint(3) NOT NULL DEFAULT '340' COMMENT 'Data Table Constant= 340',
  `GENARTNR` mediumint(5) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the generic article (->320)',
  `MOTART` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Engine type (KT 080)',
  PRIMARY KEY (`GENARTNR`,`MOTART`),
  KEY (`MOTART`),
  KEY (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Permitted allocations of Engine Types to Generic Articles';

CREATE TABLE IF NOT EXISTS `400` (
  `ARTNR` varchar(22) NOT NULL DEFAULT '' COMMENT 'Article Number in the data supplier format',
  `DLNR` smallint(4) NOT NULL COMMENT 'Data Supplier Number Constant (Key 040)',
  `SA` smallint(3) NOT NULL DEFAULT '400' COMMENT 'Data Table Constant= 400',
  `GENARTNR` mediumint(5) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the generic article (->320)',
  `VKNZIELART` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Type of the linkage target (PC, CV, engine, …)',
  `VKNZIELNR` int(9) NOT NULL DEFAULT '0' COMMENT 'Number of the linkage target (KTypeNr, NTypeNr, MotNr, HerIdNr, …)',
  `LFDNR` int(9) NOT NULL DEFAULT '0' COMMENT 'Sequential number within the ArtNr-GenArtNr-VknZielNr-linkage',
  `LOSCH_FLAG` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 = delete all data records for the Delta Key, otherwise = 0 (*)',
  PRIMARY KEY (`VKNZIELART`,`VKNZIELNR`,`GENARTNR`,`ARTNR`,`DLNR`,`LFDNR`),
  KEY `ARTNR` (`ARTNR`,`DLNR`),
  KEY `VKNZIELART` (`VKNZIELART`,`VKNZIELNR`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Linkage of the articles with linkage targets';

CREATE TABLE IF NOT EXISTS `401` (
  `ARTNR` varchar(22) NOT NULL DEFAULT '' COMMENT 'Article Number in the data supplier format',
  `DLNR` smallint(4) NOT NULL COMMENT 'Data Supplier Number Constant (Key 040)',
  `SA` smallint(3) NOT NULL DEFAULT '401' COMMENT 'Data Table Constant= 401',
  `GENARTNR` mediumint(5) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the generic article (->320)',
  `VKNZIELART` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Type of the linkage target (PC, CV, engine, …)',
  `VKNZIELNR` int(9) NOT NULL DEFAULT '0' COMMENT 'Number of the linkage target (KTypeNr, NTypeNr, MotNr, HerIdNr, …)',
  `LFDNR` int(9) NOT NULL DEFAULT '0' COMMENT 'Sequential number within the ArtNr-GenArtNr-VknZielNr-linkage',
  `SORTNR` smallint(2) NOT NULL DEFAULT '0' COMMENT 'Display sequence',
  `LKZ` varchar(3) DEFAULT NULL COMMENT 'Country Code (-> 010)',
  `INFART` smallint(3) NOT NULL COMMENT 'Information Type (KT 072)',
  `ANZSOFORT` tinyint(1) NOT NULL COMMENT 'Immediate Display = 1: Information is shown on the 1st article page of the presentation system and repeated in bold on the 2nd article page.',
  `TBSNR` varchar(6) NOT NULL COMMENT 'Text module',
  `EXCLUDE` tinyint(1) DEFAULT '0' COMMENT '‘1’ = Country Code is an exclusion, ‘0’ = Country Code is an inclusion.',
  `LOSCH_FLAG` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 = delete all data records for the Delta Key, otherwise = 0',
  PRIMARY KEY (`VKNZIELART`,`VKNZIELNR`,`GENARTNR`,`ARTNR`,`DLNR`,`LFDNR`,`SORTNR`),
  KEY `ARTNR` (`ARTNR`,`DLNR`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Search menu dependent information texts';

CREATE TABLE IF NOT EXISTS `402` (
  `ARTNR` varchar(22) NOT NULL DEFAULT '' COMMENT 'Article Number in the data supplier format',
  `DLNR` smallint(4) NOT NULL COMMENT 'Data Supplier Number Constant (-> 100)',
  `SA` smallint(3) NOT NULL DEFAULT '402' COMMENT 'Data Table Constant= 402',
  `GENARTNR` mediumint(5) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the generic article (->320)',
  `VKNZIELART` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Type of the linkage target (PC, CV, engine, …)',
  `VKNZIELNR` int(9) NOT NULL DEFAULT '0' COMMENT 'Number of the linkage target (KTypeNr, NTypeNr, MotNr, HerIdNr, …)',
  `LFDNR` int(9) NOT NULL DEFAULT '0' COMMENT 'Sequential number within the ArtNr-GenArtNr-VknZielNr-linkage',
  `LKZ` varchar(3) NOT NULL DEFAULT '' COMMENT 'Country Code (-> 010 or 012)',
  `LOSCH_FLAG` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 = delete all data records for the Delta Key, otherwise = 0',
  PRIMARY KEY (`VKNZIELART`,`VKNZIELNR`,`GENARTNR`,`ARTNR`,`DLNR`,`LFDNR`,`LKZ`),
  KEY `ARTNR` (`ARTNR`,`DLNR`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Linkages in DT400 that may not be displayed in certain countries.';

CREATE TABLE IF NOT EXISTS `403` (
  `ARTNR` varchar(22) NOT NULL DEFAULT '' COMMENT 'Article Number in the data supplier format',
  `DLNR` smallint(4) NOT NULL COMMENT 'Data supplier number (Key 040)',
  `SA` smallint(3) NOT NULL DEFAULT '403' COMMENT 'Data Table Constant= 403',
  `GENARTNR` mediumint(5) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the generic article (->320)',
  `VKNZIELART` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Type of the linkage target (PC, CV, engine, …)',
  `VKNZIELNR` int(9) NOT NULL DEFAULT '0' COMMENT 'Number of the linkage target (KTypeNr, NTypeNr, MotNr, HerIdNr, …)',
  `LFDNR` int(9) NOT NULL DEFAULT '0' COMMENT 'Sequential number within the ArtNr-GenArtNr-VknZielNr-linkage',
  `LKZ` varchar(3) NOT NULL DEFAULT '' COMMENT 'Country Code (-> 010 or 012)',
  `EXCLUDE` tinyint(1) DEFAULT '0' COMMENT '1 = country code is an exclusion, "0" = country code is an inclusion.',
  `LOSCH_FLAG` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 = delete all data records for the Delta Key, otherwise = 0',
  PRIMARY KEY (`VKNZIELART`,`VKNZIELNR`,`GENARTNR`,`ARTNR`,`DLNR`,`LFDNR`,`LKZ`),
  KEY `ARTNR` (`ARTNR`,`DLNR`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Country restriction of the linkage';

CREATE TABLE IF NOT EXISTS `404` (
  `ARTNR` varchar(22) NOT NULL DEFAULT '' COMMENT 'Article Number in the data supplier format',
  `DLNR` smallint(4) NOT NULL COMMENT 'Data supplier number (Key 040)',
  `SA` smallint(3) NOT NULL DEFAULT '404' COMMENT 'Data Table Constant= 404',
  `GENARTNR` mediumint(5) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the generic article (->320)',
  `VKNZIELART` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Type of the linkage target (PC, CV, engine, …)',
  `VKNZIELNR` int(9) NOT NULL DEFAULT '0' COMMENT 'Number of the linkage target (KTypeNr, NTypeNr, MotNr, HerIdNr, …)',
  `SORTNR` int(9) NOT NULL COMMENT 'Display sequence',
  `LOSCH_FLAG` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 = delete all data records for the Delta Key, otherwise = 0',
  PRIMARY KEY (`VKNZIELART`,`VKNZIELNR`,`GENARTNR`,`ARTNR`,`DLNR`),
  KEY `ARTNR` (`ARTNR`,`DLNR`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sorting of the article linkages';

CREATE TABLE IF NOT EXISTS `410` (
  `ARTNR` varchar(22) NOT NULL DEFAULT '' COMMENT 'Article Number in the data supplier format',
  `DLNR` smallint(4) NOT NULL COMMENT 'Data Supplier Number Constant (Key 040)',
  `SA` smallint(3) NOT NULL DEFAULT '410' COMMENT 'Data Table Constant= 410',
  `GENARTNR` mediumint(5) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the generic article (->320)',
  `VKNZIELART` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Type of the linkage target (PC, CV, engine, …)',
  `VKNZIELNR` int(9) NOT NULL DEFAULT '0' COMMENT 'Number of the linkage target (KTypeNr, NTypeNr, MotNr, HerIdNr, …)',
  `LFDNR` int(9) NOT NULL DEFAULT '0' COMMENT 'Sequential number within the ArtNr-GenArtNr-VknZielNr-linkage',
  `SORTNR` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Display sequence',
  `KRITNR` smallint(4) NOT NULL COMMENT 'Criterion number (-> 050)',
  `KRITWERT` varchar(20) NOT NULL COMMENT 'Criterion value',
  `ANZSOFORT` tinyint(1) DEFAULT '0' COMMENT 'Immediate display = ‘1’, otherwise ‘0’',
  `LKZ` varchar(3) DEFAULT NULL COMMENT 'Country code (-> 010 or 012)',
  `EXCLUDE` tinyint(1) DEFAULT '0' COMMENT '‘1’ = Country Code is an exclusion, ‘0’ = Country Code is an inclusion.',
  `LOSCH_FLAG` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 = delete all data records for the Delta Key, otherwise = 0',
  PRIMARY KEY (`VKNZIELART`,`VKNZIELNR`,`GENARTNR`,`ARTNR`,`DLNR`,`LFDNR`,`SORTNR`),
  KEY `ARTNR` (`ARTNR`,`DLNR`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Attributes (criteria) for the linkage';

CREATE TABLE IF NOT EXISTS `432` (
  `ARTNR` varchar(22) NOT NULL DEFAULT '' COMMENT 'Article Number in the data supplier format',
  `DLNR` smallint(4) NOT NULL COMMENT 'Data Supplier Number Constant (Key 040)',
  `SA` smallint(3) NOT NULL DEFAULT '432' COMMENT 'Data Table Constant= 432',
  `GENARTNR` mediumint(5) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the generic article (->320)',
  `VKNZIELART` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Type of the linkage target (PC, CV, engine, …)',
  `VKNZIELNR` int(9) NOT NULL DEFAULT '0' COMMENT 'Number of the linkage target (KTypeNr, NTypeNr, MotNr, HerIdNr, …)',
  `LFDNR` int(9) NOT NULL DEFAULT '0' COMMENT 'Sequential number within the ArtNr-GenArtNr-VknZielNr-linkage',
  `LKZ` varchar(3) DEFAULT NULL COMMENT 'Country code (-> 010 or 012)',
  `SORTNR` smallint(2) NOT NULL DEFAULT '0' COMMENT 'Sorting Order',
  `BILDNR` int(9) NOT NULL COMMENT 'Unambiguous BildNr (-> 231)',
  `DOKUMENTENART` smallint(2) NOT NULL COMMENT '-> DT 014.',
  `EXCLUDE` tinyint(1) DEFAULT '0' COMMENT '‘1’ = Country Code is an exclusion, ‘0’ = Country Code is an inclusion.',
  `LOSCH_FLAG` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 = delete all data records for the Delta Key, otherwise = 0',
  KEY `VKNZIELART` (`VKNZIELART`,`VKNZIELNR`,`GENARTNR`,`ARTNR`,`DLNR`,`LFDNR`,`SORTNR`),
  KEY `ARTNR` (`ARTNR`,`DLNR`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='The allocation of graphics to vehicle linkages';

CREATE TABLE IF NOT EXISTS `532` (
  `RESERVIERT` varchar(22) NOT NULL DEFAULT '' COMMENT 'Constantly blank',
  `DLNR` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `SA` smallint(3) NOT NULL DEFAULT '532' COMMENT 'Data Table Constant= 532',
  `NTYPNR` int(9) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the CV primary types',
  `KMODNR` mediumint(5) NOT NULL COMMENT 'Model Series CV (-> 110)',
  `SORT` smallint(4) NOT NULL COMMENT 'Sorting within one model series',
  `LBEZNR` int(9) NOT NULL COMMENT 'Description of the CV type (-> SA 012)',
  `BJVON` mediumint(6) DEFAULT NULL COMMENT 'Model Year from (YYYYMM)',
  `BJBIS` mediumint(6) DEFAULT NULL COMMENT 'Model Year to (YYYYMM)',
  `BAUART` smallint(3) NOT NULL COMMENT 'Body Type (KT 067)',
  `MOTART` smallint(3) NOT NULL COMMENT 'Engine Type (KT 080)',
  `KWVON` smallint(4) NOT NULL COMMENT 'Engine output in kW from',
  `KWBIS` smallint(4) DEFAULT NULL COMMENT 'Engine output in kW to',
  `PSVON` smallint(4) NOT NULL COMMENT 'Engine output in HP from',
  `PSBIS` smallint(4) DEFAULT NULL COMMENT 'Engine output in HP to',
  `CCMTECH` mediumint(5) NOT NULL COMMENT 'Engine capacity in cc (technical)',
  `TONNAGE` mediumint(5) NOT NULL COMMENT 'Tonnage in tonnes with 2 decimal spaces (999V99)',
  `ACHSCONFIG` smallint(3) DEFAULT NULL COMMENT 'Axle Configuration (KT 065)',
  `DELETE` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1: Criterion is proposed for deletion, otherwise 0',
  PRIMARY KEY (`NTYPNR`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Description of all CV primary types';

CREATE TABLE IF NOT EXISTS `533` (
  `RESERVIERT` varchar(22) NOT NULL DEFAULT '' COMMENT 'Constantly blank',
  `DLNR` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `SA` smallint(3) NOT NULL DEFAULT '533' COMMENT 'Data Table Constant= 533',
  `NTYPNR` int(9) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the CV primary type (->532)',
  `LKZ` varchar(3) NOT NULL DEFAULT '' COMMENT 'Country Code (-> 010)',
  `EXCLUDE` tinyint(1) NOT NULL DEFAULT '0' COMMENT '‘1’ = Country Code is an exclusion, ‘0’ = Country Code is an inclusion.',
  PRIMARY KEY (`NTYPNR`,`LKZ`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Inclusion of certain countries for a CV type';

CREATE TABLE IF NOT EXISTS `534` (
  `RESERVIERT` varchar(22) NOT NULL DEFAULT '' COMMENT 'Constantly blank',
  `DLNR` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `SA` smallint(3) NOT NULL DEFAULT '534' COMMENT 'Data Table Constant= 534',
  `NTYPNR` int(9) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the CV primary type (->532)',
  `LKZ` varchar(3) NOT NULL DEFAULT '' COMMENT 'Country Code (-> 010)',
  `BJVON` mediumint(6) DEFAULT NULL COMMENT 'Model Year from (YYYYMM)',
  `BJBIS` mediumint(6) DEFAULT NULL COMMENT 'Model Year to (YYYYMM)',
  PRIMARY KEY (`NTYPNR`,`LKZ`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Description of all country-specific deviations of CV types';

CREATE TABLE IF NOT EXISTS `535` (
  `RESERVIERT` varchar(22) NOT NULL DEFAULT '' COMMENT 'Constantly blank',
  `DLNR` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `SA` smallint(3) NOT NULL DEFAULT '535' COMMENT 'Data Table Constant= 535',
  `NTYPNR` int(9) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the CV primary type (->532)',
  `NTYPSUBNR` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the secondary type within a primary type',
  `SORTNR` smallint(3) NOT NULL COMMENT 'Sorting within the primary type',
  `BEZ` varchar(60) DEFAULT NULL COMMENT 'Description of the CV secondary type',
  `BJVON` mediumint(6) DEFAULT NULL COMMENT 'Model Year from (YYYYMM)',
  `BJBIS` mediumint(6) DEFAULT NULL COMMENT 'Model Year to (YYYYMM)',
  PRIMARY KEY (`NTYPNR`,`NTYPSUBNR`),
  KEY `BEZ` (`BEZ`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Description of all CV secondary types';

CREATE TABLE IF NOT EXISTS `536` (
  `RESERVIERT` varchar(22) NOT NULL DEFAULT '' COMMENT 'Constantly blank',
  `DLNR` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `SA` smallint(3) NOT NULL DEFAULT '536' COMMENT 'Data Table Constant= 536',
  `NTYPNR` int(9) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the CV primary type (->532)',
  `NTYPSUBNR` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the secondary type within a primary type (->535)',
  `LKZ` varchar(3) NOT NULL DEFAULT '' COMMENT 'Country Code (-> 010)',
  `EXCLUDE` tinyint(1) NOT NULL DEFAULT '0' COMMENT '‘1’ = Country Code is an exclusion, ‘0’ = Country Code is an inclusion.',
  PRIMARY KEY (`NTYPNR`,`NTYPSUBNR`,`LKZ`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Inclusion of certain countries for CV secondary types';

CREATE TABLE IF NOT EXISTS `537` (
  `RESERVIERT` varchar(22) NOT NULL DEFAULT '' COMMENT 'Constantly blank',
  `DLNR` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `SA` smallint(3) NOT NULL DEFAULT '537' COMMENT 'Data Table Constant= 537',
  `NTYPNR` int(9) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the CV primary type (->532)',
  `NTYPSUBNR` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the secondary type within a primary type (->535)',
  `LFDNR` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Sequential number within a NTypNr-NTypSubNr combination.',
  `MOTNR` mediumint(5) NOT NULL COMMENT 'Engine Number (-> 155)',
  `BJVON` mediumint(6) DEFAULT NULL COMMENT 'Model Year from (YYYYMM)',
  `BJBIS` mediumint(6) DEFAULT NULL COMMENT 'Model Year to (YYYYMM)',
  `LKZ` varchar(3) DEFAULT NULL COMMENT 'Country Code (-> 010)',
  `EXCLUDE` tinyint(1) DEFAULT '0' COMMENT '‘1’ = Country Code is an exclusion, ‘0’ = Country Code is an inclusion.',
  PRIMARY KEY (`NTYPNR`,`NTYPSUBNR`,`LFDNR`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Allocation of engine numbers to CV primary and secondary types';

CREATE TABLE IF NOT EXISTS `538` (
  `RESERVIERT` varchar(22) NOT NULL DEFAULT '' COMMENT 'Constantly blank',
  `DLNR` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `SA` smallint(3) NOT NULL DEFAULT '538' COMMENT 'Data Table Constant= 538',
  `NTYPNR` int(9) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the CV primary type (->532)',
  `NTYPSUBNR` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the secondary type within a primary type (->535)',
  `HERIDNR` mediumint(5) NOT NULL DEFAULT '0' COMMENT 'Manufacturer ID Number (-> 554)',
  PRIMARY KEY (`NTYPNR`,`NTYPSUBNR`,`HERIDNR`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='The allocation of CV primary and secondary types to manufacturer ID numbers';

CREATE TABLE IF NOT EXISTS `539` (
  `RESERVIERT` varchar(22) NOT NULL DEFAULT '' COMMENT 'Constantly blank',
  `DLNR` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `SA` smallint(3) NOT NULL DEFAULT '539' COMMENT 'Data Table Constant= 539',
  `NTYPNR` int(9) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the CV primary type (->532)',
  `NTYPSUBNR` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the secondary type within a primary type (->535)',
  `HERIDNR` mediumint(5) NOT NULL DEFAULT '0' COMMENT 'Manufacturer ID Number (-> 554)',
  `LKZ` varchar(3) NOT NULL DEFAULT '' COMMENT 'Country Code (-> 010)',
  `EXCLUDE` tinyint(1) NOT NULL DEFAULT '0' COMMENT '‘1’ = Country Code is an exclusion, ‘0’ = Country Code is an inclusion.',
  PRIMARY KEY (`NTYPNR`,`NTYPSUBNR`,`HERIDNR`,`LKZ`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Inclusion of certain countries for the allocation of CV primary and secondary types to manufacturer ID numbers';

CREATE TABLE IF NOT EXISTS `540` (
  `RESERVIERT` varchar(22) NOT NULL DEFAULT '' COMMENT 'Constantly blank',
  `DLNR` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `SA` smallint(3) NOT NULL DEFAULT '540' COMMENT 'Data Table Constant= 540',
  `NTYPNR` int(9) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the CV primary type (->532)',
  `NTYPSUBNR` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the secondary type within a primary type (->535)',
  `LFDNR` smallint(2) NOT NULL DEFAULT '0' COMMENT 'Sequential number within a NTypNr-NTypSubNr combination.',
  `VOLT` smallint(2) NOT NULL COMMENT 'Main Current Voltage',
  `LKZ` varchar(3) DEFAULT NULL COMMENT 'Country Code (-> 010)',
  `EXCLUDE` tinyint(1) DEFAULT '0' COMMENT '‘1’ = Country Code is an exclusion, ‘0’ = Country Code is an inclusion.',
  PRIMARY KEY (`NTYPNR`,`NTYPSUBNR`,`LFDNR`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Allocation of different voltages for CV primary and secondary types and to manufacturer ID numbers.';

CREATE TABLE IF NOT EXISTS `541` (
  `DLNR` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `SA` smallint(3) NOT NULL DEFAULT '541' COMMENT 'Data Table Constant= 541',
  `FHAUSNR` mediumint(5) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the driver cab',
  `HERNR` mediumint(6) NOT NULL COMMENT 'Unambiguous number of the driver cab manufacturer (->100)',
  `KMODNR` mediumint(5) NOT NULL COMMENT 'Unambiguous number of the CV model series to which the driver cab is allocated (->110)',
  `BAUMUSTER` varchar(30) DEFAULT NULL COMMENT 'Cab Design',
  `LBEZNR` int(9) NOT NULL COMMENT 'Description number (-> 012) for the sales description',
  `RESERVIERT` varchar(21) NOT NULL DEFAULT '' COMMENT 'Constantly blank',
  `SIZE` smallint(3) DEFAULT NULL COMMENT 'Driver Cab Size (-> 69)',
  `BJVON` mediumint(6) DEFAULT NULL COMMENT 'Model Year from (YYYYMM)',
  `BJBIS` mediumint(6) DEFAULT NULL COMMENT 'Model Year to (YYYYMM)',
  `LENGTH` int(7) DEFAULT NULL COMMENT 'Driver cab length in mm',
  `HEIGHT` int(7) DEFAULT NULL COMMENT 'Driver cab height in mm',
  `WIDTH` int(7) DEFAULT NULL COMMENT 'Driver cab width in mm',
  `DELETE` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1: Criterion is proposed for deletion, otherwise 0',
  PRIMARY KEY (`FHAUSNR`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Description of all CV driver cabs';

CREATE TABLE IF NOT EXISTS `542` (
  `RESERVIERT` varchar(22) NOT NULL DEFAULT '' COMMENT 'Constantly blank',
  `DLNR` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `SA` smallint(3) NOT NULL DEFAULT '542' COMMENT 'Data Table Constant= 542',
  `FHAUSNR` mediumint(5) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the driver cab (->541)',
  `LKZ` varchar(3) NOT NULL DEFAULT '' COMMENT 'Country Code (-> 010)',
  `EXCLUDE` tinyint(1) NOT NULL DEFAULT '0' COMMENT '‘1’ = Country Code is an exclusion, ‘0’ = Country Code is an inclusion.',
  PRIMARY KEY (`FHAUSNR`,`LKZ`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Inclusion of certain countries for a CV driver cab';

CREATE TABLE IF NOT EXISTS `543` (
  `RESERVIERT` varchar(22) NOT NULL DEFAULT '' COMMENT 'Constantly blank',
  `DLNR` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `SA` smallint(3) NOT NULL DEFAULT '543' COMMENT 'Data Table Constant= 543',
  `NTYPNR` int(9) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the CV primary type (->532)',
  `NTYPSUBNR` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the secondary type within a primary type (->535)',
  `LFDNR` smallint(2) NOT NULL DEFAULT '0' COMMENT 'Sequential number within a NTypNr-NTypSubNr combination.',
  `FHAUSNR` mediumint(5) NOT NULL COMMENT 'Unambiguous number of the driver cab (->541)',
  `BJVON` mediumint(6) DEFAULT NULL COMMENT 'Model Year from (YYYYMM)',
  `BJBIS` mediumint(6) DEFAULT NULL COMMENT 'Model Year to (YYYYMM)',
  `LKZ` varchar(3) DEFAULT NULL COMMENT 'Country Code (-> 010)',
  `EXCLUDE` tinyint(1) DEFAULT '0' COMMENT '‘1’ = Country Code is an exclusion, ‘0’ = Country Code is an inclusion.',
  PRIMARY KEY (`NTYPNR`,`NTYPSUBNR`,`LFDNR`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='The allocation of driver cabs to CV primary and secondary types';

CREATE TABLE IF NOT EXISTS `544` (
  `DLNR` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `SA` smallint(3) NOT NULL DEFAULT '544' COMMENT 'Data Table Constant= 544',
  `GETRNR` mediumint(5) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the transmission',
  `HERNR` mediumint(6) NOT NULL COMMENT 'Unambiguous number of the transmission manufacturer (->100)',
  `CODE` varchar(30) NOT NULL COMMENT 'Transmission Code',
  `GETRART` smallint(3) DEFAULT NULL COMMENT 'Transmission Type (KT 85)',
  `BJVON` mediumint(6) DEFAULT NULL COMMENT 'Model Year from (YYYYMM)',
  `BJBIS` mediumint(6) DEFAULT NULL COMMENT 'Model Year to (YYYYMM)',
  `TRMIN` mediumint(5) DEFAULT NULL COMMENT 'Transmission Ratio Minimum',
  `TRMAX` mediumint(5) DEFAULT NULL COMMENT 'Transmission Ratio Maximum',
  `TRINV` mediumint(5) DEFAULT NULL COMMENT 'Transmission Ratio Reverse',
  `ID` varchar(10) DEFAULT NULL COMMENT 'Transmission ID',
  `GAENGE` smallint(2) DEFAULT NULL COMMENT 'Number of gearbox speeds',
  PRIMARY KEY (`GETRNR`),
  KEY `CODE` (`CODE`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Description of all transmissions';

CREATE TABLE IF NOT EXISTS `545` (
  `RESERVIERT` varchar(22) NOT NULL DEFAULT '' COMMENT 'Constantly blank',
  `DLNR` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `SA` smallint(3) NOT NULL DEFAULT '545' COMMENT 'Data Table Constant= 545',
  `GETRNR` mediumint(5) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the transmission (->544)',
  `LKZ` varchar(3) NOT NULL DEFAULT '' COMMENT 'Country Code (-> 010)',
  `EXCLUDE` tinyint(1) NOT NULL DEFAULT '0' COMMENT '‘1’ = Country Code is an exclusion, ‘0’ = Country Code is an inclusion.',
  PRIMARY KEY (`GETRNR`,`LKZ`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Inclusion of certain countries for a transmission';

CREATE TABLE IF NOT EXISTS `546` (
  `RESERVIERT` varchar(22) NOT NULL DEFAULT '' COMMENT 'Constantly blank',
  `DLNR` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `SA` smallint(3) NOT NULL DEFAULT '546' COMMENT 'Data Table Constant= 546',
  `NTYPNR` int(9) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the CV primary type (->532)',
  `NTYPSUBNR` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the secondary type within a primary type (->535)',
  `LFDNR` smallint(2) NOT NULL DEFAULT '0' COMMENT 'Sequential number within a NTypNr-NTypSubNr combination.',
  `GETRNR` mediumint(5) NOT NULL COMMENT 'Unambiguous number of the transmission (->544)',
  `BJVON` mediumint(6) DEFAULT NULL COMMENT 'Model Year from (YYYYMM)',
  `BJBIS` mediumint(6) DEFAULT NULL COMMENT 'Model Year to (YYYYMM)',
  `LKZ` varchar(3) DEFAULT NULL COMMENT 'Country Code (-> 010)',
  `EXCLUDE` tinyint(1) DEFAULT '0' COMMENT '‘1’ = Country Code is an exclusion, ‘0’ = Country Code is an inclusion.',
  PRIMARY KEY (`NTYPNR`,`NTYPSUBNR`,`LFDNR`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='The allocation of transmissions to CV primary and secondary types';

CREATE TABLE IF NOT EXISTS `550` (
  `RESERVIERT` varchar(22) NOT NULL DEFAULT '' COMMENT 'Constantly blank',
  `DLNR` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `SA` smallint(3) NOT NULL DEFAULT '550' COMMENT 'Data Table Constant= 550',
  `NTYPNR` int(9) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the CV primary type (->532)',
  `NTYPSUBNR` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the secondary type within a primary type (->535)',
  `LFDNR` smallint(2) NOT NULL DEFAULT '0' COMMENT 'Sequential number within a NTypNr-NTypSubNr combination.',
  `RADSTAND` mediumint(6) NOT NULL COMMENT 'Wheelbase in mm',
  `ACHSPOS` smallint(3) NOT NULL COMMENT 'Axle Position (KT 064)',
  `LKZ` varchar(3) DEFAULT NULL COMMENT 'Country Code (-> 010)',
  `EXCLUDE` tinyint(1) DEFAULT '0' COMMENT '‘1’ = Country Code is an exclusion, ‘0’ = Country Code is an inclusion.',
  PRIMARY KEY (`NTYPNR`,`NTYPSUBNR`,`LFDNR`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Allocation of wheelbase information to CV primary and secondary types';

CREATE TABLE IF NOT EXISTS `551` (
  `RESERVIERT` varchar(22) NOT NULL DEFAULT '' COMMENT 'Constantly blank',
  `DLNR` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `SA` smallint(3) NOT NULL DEFAULT '551' COMMENT 'Data Table Constant= 551',
  `NTYPNR` int(9) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the CV primary type (->532)',
  `NTYPSUBNR` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the secondary type within a primary type (->535)',
  `LFDNR` smallint(2) NOT NULL DEFAULT '0' COMMENT 'Sequential number within a NTypNr-NTypSubNr combination.',
  `FEDERNR` smallint(3) NOT NULL COMMENT 'Suspension Type (KT 066)',
  `ACHSPOS` smallint(3) NOT NULL COMMENT 'Axle Position (KT 064)',
  `LKZ` varchar(3) DEFAULT NULL COMMENT 'Country Code (-> 010)',
  `EXCLUDE` tinyint(1) DEFAULT '0' COMMENT '‘1’ = Country Code is an exclusion, ‘0’ = Country Code is an inclusion.',
  PRIMARY KEY (`NTYPNR`,`NTYPSUBNR`,`LFDNR`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Allocation of suspension to CV primary and secondary types';

CREATE TABLE IF NOT EXISTS `552` (
  `RESERVIERT` varchar(22) NOT NULL DEFAULT '' COMMENT 'Constantly blank',
  `DLNR` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `SA` smallint(3) NOT NULL DEFAULT '552' COMMENT 'Data Table Constant= 552',
  `NTYPNR` int(9) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the CV primary type (->532)',
  `NTYPSUBNR` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the secondary type within a primary type (->535)',
  `LFDNR` smallint(2) NOT NULL DEFAULT '0' COMMENT 'Sequential number within a NTypNr-NTypSubNr combination.',
  `REIFENNR` smallint(3) NOT NULL COMMENT 'Tyres (KT 060)',
  `ACHSPOS` smallint(3) NOT NULL COMMENT 'Axle Position (KT 064)',
  `LKZ` varchar(3) DEFAULT NULL COMMENT 'Country Code (-> 010)',
  `EXCLUDE` tinyint(1) DEFAULT '0' COMMENT '‘1’ = Country Code is an exclusion, ‘0’ = Country Code is an inclusion.',
  PRIMARY KEY (`NTYPNR`,`NTYPSUBNR`,`LFDNR`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Allocation of tyres to CV primary and secondary types';

CREATE TABLE IF NOT EXISTS `553` (
  `RESERVIERT` varchar(22) NOT NULL DEFAULT '' COMMENT 'Constantly blank',
  `DLNR` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `SA` smallint(3) NOT NULL DEFAULT '553' COMMENT 'Data Table Constant= 553',
  `NTYPNR` int(9) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the CV primary type (->532)',
  `NTYPSUBNR` smallint(3) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the secondary type within a primary type (->535)',
  `LFDNR` smallint(2) NOT NULL DEFAULT '0' COMMENT 'Sequential number within a NTypNr-NTypSubNr combination.',
  `PREFIX` varchar(10) NOT NULL COMMENT 'Chassis',
  `LKZ` varchar(3) DEFAULT NULL COMMENT 'Country Code (-> 010)',
  `EXCLUDE` tinyint(1) DEFAULT '0' COMMENT '‘1’ = Country Code is an exclusion, ‘0’ = Country Code is an inclusion.',
  PRIMARY KEY (`NTYPNR`,`NTYPSUBNR`,`LFDNR`),
  KEY `PREFIX` (`PREFIX`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Allocation of the chassis to CV primary and secondary types';

CREATE TABLE IF NOT EXISTS `554` (
  `DLNR` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `SA` smallint(3) NOT NULL DEFAULT '554' COMMENT 'Data Table Constant= 554',
  `HERIDNR` mediumint(5) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the CV Producer-ID-Number',
  `HERNR` mediumint(6) NOT NULL COMMENT 'Number of the CV Producer (->100)',
  `HERID` varchar(20) NOT NULL COMMENT 'CV Producer-ID',
  `DELETE` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1: CV Producer-ID is proposed for deletion, otherwise 0',
  PRIMARY KEY (`HERIDNR`),
  KEY `HERID` (`HERID`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Allocation of the CV Producer-IDs';

CREATE TABLE IF NOT EXISTS `555` (
  `DLNR` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `SA` smallint(3) NOT NULL DEFAULT '555' COMMENT 'Data Table Constant= 555',
  `HERIDNR` mediumint(5) NOT NULL DEFAULT '0' COMMENT 'Unambiguous number of the CV Producer-ID-Number (-> 554)',
  `LKZ` varchar(3) NOT NULL DEFAULT '' COMMENT '(-> 010)	',
  `Exclude` tinyint(1) NOT NULL DEFAULT '0' COMMENT '‘1’ = Country Code is an exclusion, ‘0’ = Country Code is an inclusion.',
  PRIMARY KEY (`HERIDNR`,`LKZ`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Includes of specivied countrys one CV Producer-IDs';

CREATE TABLE IF NOT EXISTS `900` (
  `DLNR` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `SA` smallint(3) NOT NULL DEFAULT '900' COMMENT 'Data Table Constant= 900',
  `DQMUSAGE` varchar(2) NOT NULL DEFAULT '' COMMENT 'GenArtNo (‘01’), CritNo (‘02’), Combination of GenArtNo & CritNo (‘03’), Combination of CritNo & KeyTableValue (‘04’), Combination of GenArtNo & CritNo & KeyTableValue (‘05’) ',  
  `UNIQUENUMBER1` int(9) NOT NULL DEFAULT '0' COMMENT 'Unique number of GA or Attribute if usage is = ‘01’ or ‘02’, Unique number of GA if Usage is = ‘03’ or ‘05’, Unique number of Attribute if Usage is = ‘04’',
  `UNIQUENUMBER2` varchar(9) NOT NULL DEFAULT '' COMMENT 'Unique number of Attribute if Usage is = ‘03’, Unique number of KeyTableValue if Usage is = ‘04’, Unique number of Attribute if Usage is = ‘05’',
  `UNIQUENUMBER3` varchar(9) NOT NULL DEFAULT '' COMMENT 'Unique number of KeyTableValue if Usage is = ‘05’',
  `DQMTERMNO` int(9) NOT NULL DEFAULT '0' COMMENT 'Description Number (-> 990) for description of rules and guidelines',  
  PRIMARY KEY (`DQMUSAGE`,`UNIQUENUMBER1`,`UNIQUENUMBER2`,`UNIQUENUMBER3`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rules and guidelines for the correct use of specific TecDoc reference data content - new table ver 2.6';

CREATE TABLE IF NOT EXISTS `990` (
  `DLNR` smallint(4) NOT NULL DEFAULT '9999' COMMENT 'Data Supplier Number Constant = 9999',
  `SA` smallint(3) NOT NULL DEFAULT '990' COMMENT 'Data Table Constant= 990',
  `DQMTERMNO` int(9) NOT NULL DEFAULT '0' COMMENT 'Description Number (-> 900) for description of rules and guidelines',
  `SPRACHNR` smallint(3) NOT NULL COMMENT 'Language Number -> 020',  
  `URL` varchar(100) DEFAULT '' COMMENT 'Link to more information of TecDoc® data guide content (*)',
  `TEXT` varchar(600) DEFAULT '' COMMENT 'Text containing TecDoc® data guide content (*)',
  `LFDNR` varchar(2) NOT NULL DEFAULT '' COMMENT 'For future uses (in case more than one entry is required)', 
  PRIMARY KEY (`DQMTERMNO`,`SPRACHNR`,`LFDNR`),
  KEY `DLNR` (`DLNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Content for TecDoc® data guide – as plain text or as reference to a document - new table ver 2.6';