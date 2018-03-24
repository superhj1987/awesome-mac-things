# HomeBrew隐藏命令

1. brew services [command] [formula]

	> 服务管理命令。command包括cleanup、list、restart、start、stop；formul是服务的名字，如nginx,mysql等。cleanup和list不用带有formula参数。
	
1. brew tap [github_user/repo]

	> 安装非官方扩展之前需要先使用这个命令添加github源。
	
1. brew commands

	> 可以查看所有命令，包括brew --help不包括的。