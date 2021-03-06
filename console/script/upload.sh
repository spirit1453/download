#!/bin/bash

STARTTIME=$(date +'%s')
#本地目录
SRCDIR=$(dirname "$PWD")"/generated"
#FTP目录
DESDIR=/opt/testing/LK-S/static/other
#输入上传文件名称
FILE="console.zip"
cached="console_cached.zip"
old="console_old.zip"
sftp root@192.144.200.234<< EOF
cd ${DESDIR}/
lcd ${SRCDIR}
put ${FILE} ${cached}
rename ${FILE} ${old}
rename ${cached} ${FILE}
exit
EOF
echo "upload console.zip to server successfully"
ENDTIME=$(date +%s)
echo "It takes $(expr $ENDTIME - $STARTTIME) seconds to complete this task"
