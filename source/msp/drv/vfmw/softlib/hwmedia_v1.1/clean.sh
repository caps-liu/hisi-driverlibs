#!/bin/sh
 
#cd ./src/hwimage
#echo "===========clean hwimage============="
#make clean

cd ./src/hwdec
echo "===========clean hwdec============="
make clean

#cd ../hwenc_h264
#echo "===========clean hwenc_h264============="
#make clean

cd ../
echo "===========clean hwmedia============="
make clean

#cd ../application/midprocessor
#echo "===========clean midprocessor============="
#make clean

cd ../application/decoder
echo "===========clean decoder============="
make clean

#cd ../encoder
#echo "===========clean encoder============="
#make clean

#cd ../transcoder
#echo "===========clean transcoder============="
#make clean