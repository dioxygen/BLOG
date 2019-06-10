```
git init
git add .
git commit -m "init"
git remote add origin git@github.com:用户名/Git仓库名称.git
```

记录下今天遇到的一个小问题，git clone时发生错误：
```
oxygen@oxygen-virtual-machine:~/workspace$ git clone git@github.com:dfpcscheme/DFPCScheme.git
Cloning into 'DFPCScheme'...
The authenticity of host 'github.com (13.229.188.59)' can't be established.
RSA key fingerprint is SHA256:nThbg6kXUpJWGl7E1IGOCspRomTxdCARLviKw6E5SY8.
Are you sure you want to continue connecting (yes/no)? 
Host key verification failed.
fatal: Could not read from remote repository.

Please make sure you have the correct access rights
and the repository exists.
```
解决方法：
```
oxygen@oxygen-virtual-machine:~/workspace$ ssh git@github.com
The authenticity of host 'github.com (13.229.188.59)' can't be established.
RSA key fingerprint is SHA256:nThbg6kXUpJWGl7E1IGOCspRomTxdCARLviKw6E5SY8.
Are you sure you want to continue connecting (yes/no)? yes
Warning: Permanently added 'github.com,13.229.188.59' (RSA) to the list of known hosts.
PTY allocation request failed on channel 0
Hi dioxygen! You've successfully authenticated, but GitHub does not provide shell access.
Connection to github.com closed.
```
完成后~/.ssh/文件加下多出一个文件，并且能够正常git clone项目了