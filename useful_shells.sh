# 查看某个工具编译出来的时间
$(which appname)  

# 常用for循环
for i in 1 2 3 4 5; do echo "$i"; done；  

for((i=140;i<200;i++)); do git tag -d v1.3.$i;done; 

# 常用读取文件
cat filename | while read line  
do  
    echo $line  
done 

# "$@"的神奇之处 "$@" 的 参数如果是 “test test” 会直接输出。不会分开
for i in "$@"; do  

# mail和mutt的使用
echo hello| mail -s "test" "test@126.com" -f "no-reply@126.com"  
echo | mutt -a syslogs.tar.gz admin@domain.org  

# 删除当前目录下面所有 .DS_Store
find $PWD -name ".DS_Store" -exec rm -f {} \;

#查看当前文件夹的总大小
du -sh dirname
