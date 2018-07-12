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

#查看当前文件夹的总大小
du -sh dirname

# 使用caffeinate阻止Mac运行屏幕保护和睡眠
caffeinate -t 3600

# 使用pkgutil解压PKG文件
pkgutil --expand macx.pkg ~/Desktop/

# 使用purge命令释放内存
purge

# 使用open命令开启多个相同应用
open -n /Applications/Safari.app/

# 不通过App Store更新OS X
sudo softwareupdate -i -a

# 将所有下载过的文件列出来
sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* 'select LSQuarantineDataURLString from LSQuarantineEvent' |more

# 使用chflags命令隐藏文件或文件夹,如果你想再次看到文件夹，只需将hidden改为nohidden即可。
chflags hidden ~/Desktop/macx

# 创建有密码保护的压缩文件
zip -e protected.zip ~/Desktop/macx.txt

## .DS_store

.DS_Store是Mac OS保存文件夹的自定义属性的隐藏文件，如文件的图标位置或背景色，相当于Windows的desktop.ini。

- 禁止.DS_store生成：defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool TRUE
- 恢复.DS_store生成： defaults delete com.apple.desktopservices DSDontWriteNetworkStores
