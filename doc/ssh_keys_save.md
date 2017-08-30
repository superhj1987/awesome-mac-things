1. 在`~/.ssh/config`中对Host进行配置
 
  ```
  Host * 
    AddKeysToAgent yes
    UseKeychain yes
    IdentityFile <key>
  ```
  
2. 先使用`ssh-add -K <key>`将私钥加入到keychain中，然后每次启动系统时自动执行`ssh-add -A`。可以通过在`~/Library/LaunchAgents/`下加入一个.plist文件自动执行：

  ```
  <?xml version="1.0" encoding="UTF-8"?>
  <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
  <plist version="1.0">
    <dict>
      <key>Label</key>
      <string>ssh-add-a</string>
      <key>ProgramArguments</key>
      <array>
        <string>ssh-add</string>
        <string>-A</string>
      </array>
      <key>RunAtLoad</key>
      <true/>
    </dict>
  </plist>
  ```
  
  更多信息见：<https://github.com/jirsbek/SSH-keys-in-macOS-Sierra-keychain>
