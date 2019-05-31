#!/bin/bash

#本地目录
SRCDIR=$(dirname "$PWD")"/generated"
#FTP目录
DESDIR=/opt/testing/LK-S/static/other
#输入上传文件名称
FILE="console.zip"
sftp root@192.144.200.234<< EOF
cd ${DESDIR}/
lcd ${SRCDIR}
put ${FILE}
by
EOF

echo "upload console.zip to server successfully"
