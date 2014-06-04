#!/bin/sh
 
#cd ./src/hwimage
#echo "===========make hwimage============="
#make lib $*

cd ./src/hwdec
echo "===========make hwdec============="
make lib $*

#cd ../hwenc_h264
#echo "===========make hwenc_h264============="
#make $*

cd ../
echo "===========make hwmedia============="
make $*

#cd ../application/midprocessor
#echo "===========make midprocessor============="
#make $*

cd ../application/decoder
echo "===========make decoder============="
make $*

#cd ../encoder
#echo "===========make encoder============="
#make $*

#cd ../transcoder
#echo "===========make transcoder============="
#make $*