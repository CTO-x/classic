#! /bin/bash

clear
echo "添加文件"
git add .

read -p "添加日志[Default log: 当前时间]:" log
[ -z "$log" ] && log=`date '+%Y-%m-%d %H:%M:%S'`

git commit -m "$log"

echo "提交github"
git push origin master
