#!/bin/sh  
exe="ePMC" #你需要发布的程序名称
des="./" #创建文件夹的位置
deplist=$(ldd $exe | awk  '{if (match($3,"/")){ printf("%s "),$3 } }')  
cp $deplist $des

