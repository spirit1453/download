#!/bin/bash

source config

#本地目录
SRCDIR=$(dirname "$PWD")"/generated"
#FTP目录
DESDIR=/opt/testing/LK-S/static/other
#输入上传文件名称
read -p "Input upload file name:" filename
FILE=$filename
sftp -P ${port} ${username}@${ip} << EOF
cd ${DESDIR}/
lcd ${SRCDIR}
put ${FILE}
by
EOF
echo "commit to ftp successfully"