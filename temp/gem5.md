## gem5学习记录
#### 目标：
>**在输出中添加更详细的cache命中信息，更改cache替换算法（管理方法）以及cache组织架构**
#### 源码分析
* /src/mem/cache/tags/fa_lru.hh
>/src/mem/cache/tags/fa_lru.hh文件是全相联LRU tag store的声明
>其中包括了两个类**FALRUBLK**和**FALUR**
* /src/mem/cache/tags/fa_lru.cc
FALRU::FALRU构造函数
FALRU::~FALRU析构函数
FALRU::tagsInit：
FALRU::accessBlock访问cache




### gem5 blog
learning.gem5.org网站[tutorial](http://learning.gem5.org/)
[Jason's Website](http://www.lowepower.com/jason/category/blog.html)
gem5 官网上给出了不同会议上的[Tutorials](http://www.gem5.org/Tutorials)
cs752给出的[gem5 tutorial](http://pages.cs.wisc.edu/~david/courses/cs752/Fall2015/gem5-tutorial/index.html)
[cs752 2015版的homework](http://pages.cs.wisc.edu/~david/courses/cs752/Spring2015/wiki/index.php?n=Main.Homework)
[cs752 2018版的homework](http://pages.cs.wisc.edu/~sinclair/courses/cs752/fall2018/handouts/hw1.html)
[gem5 SpecialPages](http://www.gem5.org/Special:SpecialPages)
[CSDN fandroid](https://blog.csdn.net/fandroid/article/category/2400961)
[CSD Nwyj](https://blog.csdn.net/wyj7260/article/category/1301132)
http://reviews.gem5.org/
[gem5类的继承关系树](http://www.gem5.org/docs/html/classSimObject.html)
[Memory System in gem5](http://pages.cs.wisc.edu/~swilson/gem5-docs/gem5MemorySystem.html)
[1调试gem5](http://www.gem5.org/Debugger_Based_Debugging)
[2调试gem5](http://www.gem5.org/Trace_Based_Debugging)
[gem5-issues](https://github.com/cirosantilli2/gem5-issues)
[eclipse调试gem5](https://web.archive.org/web/20160410222837/http://handsomemike.com/wp/?cat=4#eclipsegem5dev)
[gem5文件意义说明](https://blog.csdn.net/fandroid/article/details/45967857)

[gem5用户邮件列表](http://m5sim.org/cgi-bin/mailman/listinfo/gem5-users)
[一个博客介绍gem5启动和模块关系](https://blog.csdn.net/benben2301/article/category/2345057)
[gem5学习与分享](https://www.webfalse.com/read/204205/1367627.html)

[http://gem5.org/SimObjects](http://gem5.org/SimObjects)
[http://www.gem5.org/docs/html/gem5MemorySystem.html?tdsourcetag=s_pctim_aiomsg](http://www.gem5.org/docs/html/gem5MemorySystem.html?tdsourcetag=s_pctim_aiomsg)
[大佬的cache pdf](http://www.yuhaozhu.com/CacheMemory.pdf)
[提交记录中可以看到3级cache的配置方法](https://github.com/basicthinker/ThyNVM/commits/master)
[gem5与nvmain混合模拟](https://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=8341987&tag=1)
1. 命令行参数
	* 看不懂命令行参数怎么办？ ./build/ALPHA/gem5.opt ./configs/example/fs.py --help
		* --list-mem-types
		```
		Available memory classes:
			GDDR5_4000_x64
			NVMainMemory
			HMC_2500_x32
			DRAMCtrl
			HBM_1000_4H_x128
			LPDDR2_S4_1066_x32
			LPDDR3_1600_x32
			DDR3_1600_x64
			RubyMemoryControl
			DDR3_2133_x64
			HBM_1000_4H_x64
			SimpleMemory
			DDR4_2400_x64
			WideIO_200_x128
		```
		* --list-cpu-types
		```
		Available CPU classes:
			arm_detailed
			AtomicSimpleCPU
				Simple CPU model executing a configurable number of instructions per
				cycle. This model uses the simplified 'atomic' memory mode.
			TimingSimpleCPU
			DerivO3CPU
			MinorCPU

		CPU aliases:
			timing => TimingSimpleCPU
			detailed => DerivO3CPU
			atomic => AtomicSimpleCPU
			minor => MinorCPU
		```
		* -F FAST_FORWARD, --fast-forward=FAST_FORWARD
		```
		Number of instructions to fast forward before switching
		```
2. from --- import ---
	* 一般在两个路径下：./gem5/configs和./gem5/src/python
	* python的import导入模块方法方法，SConstruct（解决NVMain）
3. 如何添加自己的统计信息
	* 在类的regStats()函数中初始化并注册他们，
```
Here is a list of the various initialization functions. Note that all of these return a Stat& reference, thus enabling a clean looking way of calling them all.
	init(various args) //this differs for different types of stats.
	name(const std::string name) //the name of the stat
	desc(const std::string desc) //a brief description of the stat
	flags(FormatFlags f) //these are various flags you can pass to the stat, which i'll describe below.
		none -- no special formatting
		total -- this is for Vector based stats, if this flag is set, the total across the Vector will be printed at the end (for those stats which this is supported).
		pdf -- This will print the probability distribution of a stat
		nozero -- This will not print the stat if its value is zero
		nonan -- This will not print the stat if it's Not a Number (nan).
		cdf -- This will print the cumulative distribution of a stat
	subname(int index, const std::string subname) //this is for Vector based stats to give a subname to each index of the vector.
```
4.  利用Pydot查看系统配置图
	* 需要安装graphviz和pydot，第一次我安装的顺序好像反了，然后pydot没有安装成功，我以为安装成功了，然后很奇怪m5out里面没有生成.dot文件，这个文件`gem5/src/python/m5/util/dot_writer.py`就是输出.dot（还有.svg和.pdf）的，里面会import pydot模块
	* 命令行查看pdf文件的方法，`evince config.dot.pdf`
	* 4核3级缓存SE测试`./build/X86/gem5.opt  configs/example/se.py  -c tests/test-progs/hello/bin/x86/linux/hello -n 4 --caches --l2cache --l3cache`
	* 4核3级缓存FS测试``
5. scons
	* 
6. 利用swig实现将C/C++代码封装为python库
7. 将L1、L2 cache配置为私有的而L3 cache配置为共享的
8. 改变cache介质或者大小时，访问延迟和能耗可以通过其他模拟器（例如CACTI）或者实际产品参数获得




[http://www.m5sim.org/Build_System](http://www.m5sim.org/Build_System)


[http://gem5.org/O3CPU](http://gem5.org/O3CPU)




- - -
### 测试命令
./build/ALPHA/gem5.opt configs/example/se.py -c  tests/test-progs/hello/bin/alpha/linux/hello --mem-type=NVMainMemory  --nvmain-config=./nvmain/Config/PCM_ISSCC_2012_4GB.config

./build/ALPHA/gem5.opt ./configs/example/fs.py --script=./TR-09-32-parsec-2.1-alpha-files/blackscholes_1c_test.rcS --caches --l2cache -F 5000000000


/build/ALPHA/gem5.opt ./configs/example/fs.py --script=./TR-09-32-parsec-2.1-alpha-files/blackscholes_1c_test.rcS --mem-type=NVMainMemory --nvmain-config=./nvmain/Config/PCM_ISSCC_2012_4GB.config --caches --l2cache -F 5000000000

- - -
#### 搭建gem5与NVMain混合模拟环境
```
sudo apt-get install mercurial scons swig gcc m4 python python-dev libgoogle-perftools-dev g++ libprotobuf-dev
```
可能会出现源的问题，导致部分软件的依赖无法下载正常的版本，可以修改系统的update设置


