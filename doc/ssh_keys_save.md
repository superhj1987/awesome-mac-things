 Mac系统Yosemite版本之前，可以通过`ssh-add -K <key>`将私钥存入keychain中。但是之后的版本中由于OpenSSH版本升级，此方式不再生效，每次重启系统都需要再次ssh-add一次。

1. 在`~/.ssh/config`中对Host进行配置
 
  ```
  Host <*|hostName> 
    IdentityFile <key>
    UseKeychain yes
    AddKeysToAgent yes
  ```
  
2. 使用`ssh-add -K <key>`将私钥加入到keychain中，然后每次启动系统时自动执行`ssh-add -A`。

  ```
  <!-- ~/Library/LaunchAgents/ssh-add-a.plist -->
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
