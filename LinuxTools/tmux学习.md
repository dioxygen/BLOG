### tmux
ubuntu安装方法：sudo apt-get install tmux
一张解释tmux中session、window和pane关系的图片
![](https://pic1.zhimg.com/v2-2880e71f5686eb34582e8011370c6db4_b.jpg)
1. session
	* 新建方法：
		>approach 1:
		```
		$  tmux new  -s  <name-of-my-session>
		```
		>approach 2:
		```
		<prefix> ：
		new  -s  <name-of-my-new-session>
		```
	* 移动/切换方法:以下两种方法均可以显示出当前所有的session，按下数字编号即可进入对应的session，也可以移动光标回车选中的方式进入对应的session
		>approach 1:
		```
		<prefix> s
		```
		>approach 2:
		```
		<prefix> w
		```
	* 查看方法：`tmux ls`
	* 不同session切换方法：
		```
		<prefix> + ( //跳到上一个 seesion
		<prefix> + ) //跳到下一个 seesion
		```
	* 断开当前session
		>approach 1:
		```
		$ tmux detach # 断开当前session，session在后台运行
		```
		>approach 2:
		```
		<prefix> d # 断开当前session，session在后台运行
		```
	* 重新attach断开的session
		```
		tmux a # 默认进入第一个session
		tmux a -t demo # 进入到名称为demo的session
		```
	* 关闭session
		```
		tmux kill-session -t demo # 关闭demo session
		tmux kill-server # 关闭服务器，所有的session都将关闭
		kill pane 快捷键 <prefix> &
		kill window 快捷键 <prefix> x 
		```
2. window
	* 新建方法
		```
		<prefix> c  //新建window
		```
	* 移动方法
		```
		<prefix> n  //切换到下一个window
		<prefix> p  //切换到上一个window
		<prefix> + num[1-9] //切换到编号为num的window
		```
3. pane
	* 新建方法
		>approach 1:
		```
		<prefix> %  //当前pane左右一分为二，右侧新建pane
		```
		>approach 2:
		```
		<prefix> “  //当前pane上下一分为二，下侧新建pane
		```	
	* 移动方法
		>approach 1:
		```
		<prefix> o  //选择下一面板
		```
		>approach 2:
		```
		<prefix> 方向键  //移动光标切换pane
		```
		>approach 3:
		```
		<prefix> q  //会给当前window中的不同pane编号在编号消失前按编号即可切换到对应的pane
		```
	* 最大化当前pane
		```
			<prefix> z //重复一次后恢复正常
		```
4. 默认配置不方便，我们改一改吧！(~/.tmux.conf)
### todo:
- [ ] 改一下底部状态栏
- [ ] 增加分享/多人编辑功能
- [ ] 复制模式
- [ ] 鼠标支持

参考博客: [http://louiszhai.github.io/2017/09/30/tmux/](http://louiszhai.github.io/2017/09/30/tmux/)
tmux cheatsheet[https://github.com/skywind3000/awesome-cheatsheets/blob/master/tools/tmux.txt](https://github.com/skywind3000/awesome-cheatsheets/blob/master/tools/tmux.txt)