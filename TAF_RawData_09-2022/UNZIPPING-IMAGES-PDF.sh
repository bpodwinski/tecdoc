#!/bin/bash
# uzip images and pdf files in separate folders according name archives

PATH_TO_7Z_FILES="/path_to_folder_with_archive_files/"
PATH_TO_UNZIP_FILES="/path_to_folder_where_unzip/"
PATH_TO_UNZIP_IMG_FILES=$PATH_TO_UNZIP_FILES"img/"
PATH_TO_UNZIP_PDF_FILES=$PATH_TO_UNZIP_FILES"pdf/"

# create img folder if not exist
if [ -d $PATH_TO_UNZIP_IMG_FILES ] ; then echo "Directory [$PATH_TO_UNZIP_IMG_FILES] exist" ; else mkdir $PATH_TO_UNZIP_IMG_FILES ; echo "Directory [$PATH_TO_UNZIP_IMG_FILES] created" ; fi
# create pdf folder if not exist
if [ -d $PATH_TO_UNZIP_PDF_FILES ] ; then echo "Directory [$PATH_TO_UNZIP_PDF_FILES] exist" ; else mkdir $PATH_TO_UNZIP_PDF_FILES ; echo "Directory [$PATH_TO_UNZIP_PDF_FILES] created" ; fi

# unzip images
for file_7z in $PATH_TO_7Z_FILES*_PIC.7z.001 ; do namefile=$(basename $file_7z) ; if [ "${namefile:0:3}" == "000" ] ; then dlnr=${namefile:3:1} ; elif [ "${namefile:0:2}" == "00" ] ; then dlnr=${namefile:2:2} ; elif [ "${namefile:0:1}" == "0" ] ; then dlnr=${namefile:1:3} ; else dlnr=${namefile:0:4} ; fi ; echo "Processing DLNR [$dlnr]" ; if [ ! -d $PATH_TO_UNZIP_IMG_FILES"$dlnr/" ] ; then mkdir $PATH_TO_UNZIP_IMG_FILES"$dlnr/" ; fi; 7za e $file_7z -aos -o$PATH_TO_UNZIP_IMG_FILES"$dlnr/" ; done
for file_7z in $PATH_TO_7Z_FILES*_pic.7z.001 ; do namefile=$(basename $file_7z) ; if [ "${namefile:0:3}" == "000" ] ; then dlnr=${namefile:3:1} ; elif [ "${namefile:0:2}" == "00" ] ; then dlnr=${namefile:2:2} ; elif [ "${namefile:0:1}" == "0" ] ; then dlnr=${namefile:1:3} ; else dlnr=${namefile:0:4} ; fi ; echo "Processing DLNR [$dlnr]" ; if [ ! -d $PATH_TO_UNZIP_IMG_FILES"$dlnr/" ] ; then mkdir $PATH_TO_UNZIP_IMG_FILES"$dlnr/" ; fi; 7za e $file_7z -aos -o$PATH_TO_UNZIP_IMG_FILES"$dlnr/" ; 
	echo "CONVERTING EXTENSION FILES IN UPPERCASE" ;
	find $PATH_TO_UNZIP_IMG_FILES"$dlnr/" -depth -name "*.jpg" -exec bash -c 'mv "$1" "${1%.jpg}".JPG' - '{}' \;
	find $PATH_TO_UNZIP_IMG_FILES"$dlnr/" -depth -name "*.bmp" -exec bash -c 'mv "$1" "${1%.bmp}".BMP' - '{}' \;
	find $PATH_TO_UNZIP_IMG_FILES"$dlnr/" -depth -name "*.png" -exec bash -c 'mv "$1" "${1%.png}".PNG' - '{}' \;
	find $PATH_TO_UNZIP_IMG_FILES"$dlnr/" -depth -name "*.gif" -exec bash -c 'mv "$1" "${1%.gif}".GIF' - '{}' \;
done

# unzip PDF FILES
for file_7z in $PATH_TO_7Z_FILES*_DOC.7z.001 ; do namefile=$(basename $file_7z) ; if [ "${namefile:0:3}" == "000" ] ; then dlnr=${namefile:3:1} ; elif [ "${namefile:0:2}" == "00" ] ; then dlnr=${namefile:2:2} ; elif [ "${namefile:0:1}" == "0" ] ; then dlnr=${namefile:1:3} ; else dlnr=${namefile:0:4} ; fi ; echo "Processing DLNR [$dlnr]" ; if [ ! -d $PATH_TO_UNZIP_PDF_FILES"$dlnr/" ] ; then mkdir $PATH_TO_UNZIP_PDF_FILES"$dlnr/" ; fi; 7za e $file_7z -aos -o$PATH_TO_UNZIP_PDF_FILES"$dlnr/" ; done
for file_7z in $PATH_TO_7Z_FILES*_doc.7z.001 ; do namefile=$(basename $file_7z) ; if [ "${namefile:0:3}" == "000" ] ; then dlnr=${namefile:3:1} ; elif [ "${namefile:0:2}" == "00" ] ; then dlnr=${namefile:2:2} ; elif [ "${namefile:0:1}" == "0" ] ; then dlnr=${namefile:1:3} ; else dlnr=${namefile:0:4} ; fi ; echo "Processing DLNR [$dlnr]" ; if [ ! -d $PATH_TO_UNZIP_PDF_FILES"$dlnr/" ] ; then mkdir $PATH_TO_UNZIP_PDF_FILES"$dlnr/" ; fi; 7za e $file_7z -aos -o$PATH_TO_UNZIP_PDF_FILES"$dlnr/" ; 
	echo "CONVERTING EXTENSION FILES IN UPPERCASE" ;
	find $PATH_TO_UNZIP_PDF_FILES"$dlnr/" -depth -name "*.pdf" -exec bash -c 'mv "$1" "${1%.pdf}".PDF' - '{}' \;
done

echo FINISHED