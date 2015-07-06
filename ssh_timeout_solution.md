## Solution of ssh connection timeout in Mac

When using mac os to connect a sever with ssh,we often find that the connection will timeout after a period time. The reason is the config in server.
In /etc/ssh/sshd_config, ClientAliveCountMax(minute) represent the timout.U can modify the server config to solve the problem.But when u can't config the server,U can do follow things:

- Use terminal

open .ssh/config and add

    ServerAliveInterval 60
  
- Use zoc

Session Profile -> Idel Timer -> Afeter "3" sec. idle Send ^@.
