@ECHO OFF
REM chcp 65001


REM SCRIPT FOR UNZIP ARHIVE FILES WITH IMAGES AND PDF FILES AND PLACED IN SEPARATE FOLDER WITH NAMES AS ID_SUPPLIER
REM -------------------------------------------------
REM NOTE 
REM 1. NEED DOANLOAD ALL FILES THAT PLACED IN FOLDER "PIC_FILES"  IN SEPARATE FOLDER ON YOUR PC
REM 2. THIS SCRIPT MOVE IN SAME FOLDER
REM 3. FIX BELOW SOME VALUES, AS LIKE PATH TO 7Z-TOOL

		REM NOTES :
		REM - "PATH_TO_7Z" PATH TO 7Z-TOOL (IF NOT HAVE INSTALLED THEN HERE https://www.7-zip.org/download.html CAN DOWNLOAD)	
	
		SET "PATH_TO_7Z=C:\Program Files\7-Zip\7z.exe"		

REM -------------------------------------------------

set "FOLDER_OUTPUT=%~dp0"
SET READYFORCONVERT=1

REM CHECKING NECESSARY PARAMETERS (FILES AND FOLDERS)
ECHO **** CHECKING NECESSARY PARAMETERS FOR WORK ****
ECHO.
IF NOT EXIST "%PATH_TO_7Z%" (
	ECHO ^    [error] - not found program "7z.exe"
	SET READYFORCONVERT=0
	)	
IF NOT EXIST "%FOLDER_OUTPUT%" (
	ECHO ^    [error] - not found output folder "%FOLDER_OUTPUT%"
	SET READYFORCONVERT=0
	)	
ECHO INPUT PARAMETERS
ECHO ^    PATH_TO_7Z = [%PATH_TO_7Z%]
ECHO ^    FOLDER_OUTPUT = [%FOLDER_OUTPUT%]
ECHO.
	 
IF %READYFORCONVERT% == 1 ECHO ALL NECESSARY PARAMETERS ARE CHECKED ... OK
IF %READYFORCONVERT% == 0 (
	ECHO !!!!! NEED FIX PROBLEMS !!!! See below description
	)
ECHO.
ECHO ------------------------------------------------

REM DESCRIPTION FIXING PROBLEMS
IF [%READYFORCONVERT%] == [0] (	
	ECHO **** SHORT INFO ABOUT NECESSARY STEPS FOR FIXING PROBLEMS IN WORK WITH TECDOC TAF 2.4 FILES ****
	ECHO.
	ECHO ^   1. Need doanload all files that placed in folder "PIC_FILES" on FTP server in separate folder on your PC
	ECHO ^   2. Need have installed arhivator tool 7z ^(download https://www.7-zip.org/download.html^)
	ECHO ^   3. This script "UNZIPPING-IMAGES-PDF.CMD" move in same folder where placed downloaded files and run this script from there
	ECHO.	
	
	PAUSE
	EXIT
	)
	
REM CHECKING FILES IN FOLDERS
ECHO **** CALCULATE FILES IN FOLDERS ****
ECHO.

powershell -c "[System.IO.Directory]::GetFiles('%FOLDER_OUTPUT%', '*_PIC.7z.001').Count"> "counter.txt"
set /p counter_PIC=<"counter.txt"
powershell -c "[System.IO.Directory]::GetFiles('%FOLDER_OUTPUT%', '*_DOC.7z.001').Count"> "counter.txt"
set /p counter_DOC=<"counter.txt"
IF EXIST "counter.txt" DEL "counter.txt"
IF "%counter_PIC%%counter_DOC%" == "00" (
	ECHO In folder "%FOLDER_OUTPUT%" not found downloaded PIC and DOC files !!!! NEED FIX THIS AND AGAIN RUN THIS SCRIPT !!!!
	PAUSE
	EXIT
	)
		
ECHO ^    [%counter_PIC%] brands with IMAGES
ECHO ^    [%counter_DOC%] brands with PDF-files

ECHO.
ECHO IF YOU CHECKED INPUT PARAMETERS [COUNT FILES FOR CONVERT] THEN ALL THINGS ARE READY FOR WORK, AND YOU CAN START CONVERT
ECHO Need press necessary value "number + enter" for continue. All unzipped files will placed in output folder "%FOLDER_OUTPUT%" in separate folders "IMAGES" and "PDF"
ECHO.
ECHO ^    1 - if need unzipp files for images and pdf-files
ECHO ^    2 - if need unzipp files only for images
ECHO ^    3 - if need unzipp files only for pdf-files
ECHO.
ECHO ^    4 - if need unzipp files for images and pdf-files only for specific supplier [on next page need will enter id-supplier DLNR]
ECHO ^    5 - if need unzipp files only images and only for specific supplier [on next page need will enter id-supplier DLNR]
ECHO ^    6 - if need unzipp files only pdf-files and only for specific supplier [on next page need will enter id-supplier DLNR]
ECHO.
ECHO ^    0 - if need exit from convert
ECHO.

REM ENTER NECESSARY VALUE FOR PROCESS FUNCTION
set /P id=Enter number (0/1/2/3/4/5/6): 

REM EXIT
IF "%id%" == "0" (
	EXIT
	)
	
REM CREATE WORK FOLDERS
IF NOT EXIST "%FOLDER_OUTPUT%IMAGES\" MD "%FOLDER_OUTPUT%IMAGES"
IF NOT EXIST "%FOLDER_OUTPUT%PDF\" MD "%FOLDER_OUTPUT%PDF"
	
SET NEEDONLYIMAGES=0
SET NEEDONLYPDF=0
SET NEEDUSEDLNR=0
IF "%id%" == "1" SET NEEDONLYIMAGES=1
IF "%id%" == "2" SET NEEDONLYIMAGES=1
IF "%id%" == "4" (
	SET NEEDONLYIMAGES=1
	SET NEEDUSEDLNR=1
	)
IF "%id%" == "5" (
	SET NEEDONLYIMAGES=1
	SET NEEDUSEDLNR=1
	)
IF "%id%" == "1" SET NEEDONLYPDF=1
IF "%id%" == "3" SET NEEDONLYPDF=1
IF "%id%" == "4" (
	SET NEEDONLYPDF=1
	SET NEEDUSEDLNR=1
	)
IF "%id%" == "6" (
	SET NEEDONLYPDF=1
	SET NEEDUSEDLNR=1
	)

REM GENERATE TEMP FILES WITH LIST PIC FILES
dir /B "%FOLDER_OUTPUT%*_PIC.7z.001"> "TEMP-LIST-PIC-FILES.txt"
REM GENERATE TEMP FILES WITH LIST DOC FILES
dir /B "%FOLDER_OUTPUT%*_DOC.7z.001"> "TEMP-LIST-DOC-FILES.txt"

ECHO.
ECHO -------------------------------

REM CONVERT TWO FOLDERS
SetLocal enabledelayedexpansion

:ENTERID
SET DLNR=0
IF "%id%" == "4" set /P DLNR=Enter DLNR id-supplier (for example you can use as "0041" or "41" that will same value): 
IF "%id%" == "5" set /P DLNR=Enter DLNR id-supplier (for example you can use as "0041" or "41" that will same value): 
IF "%id%" == "6" set /P DLNR=Enter DLNR id-supplier (for example you can use as "0041" or "41" that will same value): 

powershell -c "Try{[convert]::ToInt32('!DLNR!', 10)} Catch {[int]'0'}"> "DLNR.txt"
set /p DLNRasint=<"DLNR.txt"
IF EXIST "DLNR.txt" DEL "DLNR.txt"

IF "%NEEDUSEDLNR%" == "1" (
	IF "!DLNRasint!" == "0" (
		ECHO WAS ENTERED WRONG VALUE "DLNR". TRY AGAIN ENTER NECESSARY VALUE ID-SUPPLIER
		GOTO ENTERID
	)
)

REM START UNZIP IMAGE FILES 
IF "%NEEDONLYIMAGES%" == "1" (
	ECHO START WORK WITH PIC-FILES
	ECHO.
	
	REM READING TEMP FILE WITH LIST FILES
	For /F "tokens=* usebackq delims=" %%b In ("TEMP-LIST-PIC-FILES.txt") Do (
		set "namefile=%%b"
		REM GET DLNR FROM NAME FILE (COPY FIRST 4 SYMBOLS)
		set DLNRfile=!namefile:~0,4!
		REM CONVERT IN INT		
		powershell -c "Try{[convert]::ToInt32('!DLNRfile!', 10)} Catch {[int]'0'}"> "DLNRfile.txt"
		set /p DLNRfileINT=<"DLNRfile.txt"
		IF EXIST "DLNRfile.txt" DEL "DLNRfile.txt"
		
		IF "!DLNRfileINT!" == "0" ECHO ^   MISSE PROCESS UNZIPPING FILE "!namefile!" AS IS WRONG NAME FILE
		IF "!DLNRfileINT!" NEQ "0" (
			REM CHECKING OPTION ONLY NECESSARY DLNR
			IF "%NEEDUSEDLNR%" == "0" (
				REM CREATE FOLDER IF IS NOT EXIST
				IF NOT EXIST "%FOLDER_OUTPUT%IMAGES\!DLNRfileINT!\" MD "%FOLDER_OUTPUT%IMAGES\!DLNRfileINT!"
				REM RUN 7Z FOR UNZIPPING
				ECHO ^   START UNZIP FILES FROM ARHIVE "%FOLDER_OUTPUT%!namefile!" TO FOLDER "%FOLDER_OUTPUT%IMAGES\!DLNRfileINT!\"
				"%PATH_TO_7Z%"  X  "%FOLDER_OUTPUT%!namefile!" -O"%FOLDER_OUTPUT%IMAGES\!DLNRfileINT!\"
				ECHO ^   START FIXING CASE EXTENSION FOR IMAGES IN FOLDER "%FOLDER_OUTPUT%IMAGES\!DLNRfileINT!\"				
				RENAME "%FOLDER_OUTPUT%IMAGES\!DLNRfileINT!\*.jpg" *.JPG
				RENAME "%FOLDER_OUTPUT%IMAGES\!DLNRfileINT!\*.bmp" *.BMP
				RENAME "%FOLDER_OUTPUT%IMAGES\!DLNRfileINT!\*.png" *.PNG
				RENAME "%FOLDER_OUTPUT%IMAGES\!DLNRfileINT!\*.gif" *.GIF
				)
			IF "%NEEDUSEDLNR%" == "1" (
				IF "!DLNRasint!" == "!DLNRfileINT!" (
					REM CREATE FOLDER IF IS NOT EXIST
					IF NOT EXIST "%FOLDER_OUTPUT%IMAGES\!DLNRfileINT!\" MD "%FOLDER_OUTPUT%IMAGES\!DLNRfileINT!"
					REM RUN 7Z FOR UNZIPPING
					ECHO ^   START UNZIP FILES FROM ARHIVE "%FOLDER_OUTPUT%!namefile!" TO FOLDER "%FOLDER_OUTPUT%IMAGES\!DLNRfileINT!\"
					"%PATH_TO_7Z%"  X  "%FOLDER_OUTPUT%!namefile!" -O"%FOLDER_OUTPUT%IMAGES\!DLNRfileINT!\"
					ECHO ^   START FIXING CASE EXTENSION FOR IMAGES IN FOLDER "%FOLDER_OUTPUT%IMAGES\!DLNRfileINT!\"				
					RENAME "%FOLDER_OUTPUT%IMAGES\!DLNRfileINT!\*.jpg" *.JPG
					RENAME "%FOLDER_OUTPUT%IMAGES\!DLNRfileINT!\*.bmp" *.BMP
					RENAME "%FOLDER_OUTPUT%IMAGES\!DLNRfileINT!\*.png" *.PNG
					RENAME "%FOLDER_OUTPUT%IMAGES\!DLNRfileINT!\*.gif" *.GIF
					)
				)			
			)
		)	
	ECHO.
	ECHO -------------------------------		
	ECHO.
)
REM START UNZIP PDF FILES
IF "%NEEDONLYPDF%" == "1" (
	ECHO START WORK WITH PDF-FILES
	ECHO.
	
	REM READING TEMP FILE WITH LIST FILES
	For /F "tokens=* usebackq delims=" %%b In ("TEMP-LIST-DOC-FILES.txt") Do (
		set "namefile=%%b"
		REM GET DLNR FROM NAME FILE (COPY FIRST 4 SYMBOLS)
		set DLNRfile=!namefile:~0,4!
		REM CONVERT IN INT		
		powershell -c "Try{[convert]::ToInt32('!DLNRfile!', 10)} Catch {[int]'0'}"> "DLNRfile.txt"
		set /p DLNRfileINT=<"DLNRfile.txt"
		IF EXIST "DLNRfile.txt" DEL "DLNRfile.txt"
		
		IF "!DLNRfileINT!" == "0" ECHO ^   MISSE PROCESS UNZIPPING FILE "!namefile!" AS IS WRONG NAME FILE
		IF "!DLNRfileINT!" NEQ "0" (
			REM CHECKING OPTION ONLY NECESSARY DLNR
			IF "%NEEDUSEDLNR%" == "0" (
				REM CREATE FOLDER IF IS NOT EXIST
				IF NOT EXIST "%FOLDER_OUTPUT%PDF\!DLNRfileINT!\" MD "%FOLDER_OUTPUT%PDF\!DLNRfileINT!"
				REM RUN 7Z FOR UNZIPPING
				ECHO ^   START UNZIP FILES FROM ARHIVE "%FOLDER_OUTPUT%!namefile!" TO FOLDER "%FOLDER_OUTPUT%PDF\!DLNRfileINT!\"
				"%PATH_TO_7Z%"  X  "%FOLDER_OUTPUT%!namefile!" -O"%FOLDER_OUTPUT%PDF\!DLNRfileINT!\"
				)
			IF "%NEEDUSEDLNR%" == "1" (
				IF "!DLNRasint!" == "!DLNRfileINT!" (
					REM CREATE FOLDER IF IS NOT EXIST
					IF NOT EXIST "%FOLDER_OUTPUT%PDF\!DLNRfileINT!\" MD "%FOLDER_OUTPUT%PDF\!DLNRfileINT!"
					REM RUN 7Z FOR UNZIPPING
					ECHO ^   START UNZIP FILES FROM ARHIVE "%FOLDER_OUTPUT%!namefile!" TO FOLDER "%FOLDER_OUTPUT%PDF\!DLNRfileINT!\"
					"%PATH_TO_7Z%"  X  "%FOLDER_OUTPUT%!namefile!" -O"%FOLDER_OUTPUT%PDF\!DLNRfileINT!\"
					)
				)			
			)
		)
	ECHO.
	ECHO -------------------------------		
	ECHO.
)

endlocal

IF EXIST "TEMP-LIST-PIC-FILES.txt" DEL "TEMP-LIST-PIC-FILES.txt"
IF EXIST "TEMP-LIST-DOC-FILES.txt" DEL "TEMP-LIST-DOC-FILES.txt"
ECHO.
ECHO PROCESS UNZIPPING AND MOVING FILES IS FINISHED
ECHO.
pause




