#!/bin/bash
###########################################
#This is a adobe flash player uploader
#Author:Maoyibo
#Email:maoyibo@gmail.com
#Lisence:AGPL
#Version:0.2
###########################################
echo "Close the firefox before running this script!"
mkdir .flashdown
cd ./.flashdown
a=$(uname -m)
bit_32="32"
bit_64="64"
if [ "$a" == "32" ];then
    echo "The system is 32bit.Get The Download url."
    aria2c "https://get.adobe.com/cn/flashplayer/download/?installer=Flash_Player_11.2_for_other_Linux_(.tar.gz)_32-bit&standalone=1" -o fpdowninfo.html
elif [ "$a" == "x86_64" ];then
    echo "The system is 64bit.Get The Download url."
    aria2c "https://get.adobe.com/cn/flashplayer/download/?installer=Flash_Player_11.2_for_other_Linux_(.tar.gz)_64-bit&standalone=1" -o fpdowninfo.html
else
    echo "Can't get the bit information of this computer!"
fi
tmp=`cat ./fpdowninfo.html|grep setTimeout|grep https`
tmp_1=${tmp//	/}
tmp_2=${tmp_1//"setTimeout(\"location.href = "/}
tmp_3=${tmp_2//";\", 2000);"/}
downurl=${tmp_3//\'/}
#echo $downurl
comm='aria2c '$downurl' -o flash.tar.gz -l flash.log'
#echo $comm
echo "Download the tar.gz file."
$comm
echo "Unzip and install the flashplayer"
tar zxf flash.tar.gz
sudo cp -r usr/* /usr
mkdir ~/.mozilla/plugins/
cp ./libflashplayer.so ~/.mozilla/plugins/
echo "Cleaning!"
cd ..
rm -vfr ./.flashdown
echo "The flash player installation is succeed!"


