### 待办事件
论文信息|描述
-|-




- - -
### 待读论文
论文信息|描述|状态
-|-|-
Palangappa, Poovaiah M., and Kartik Mohanram. "Flip-Mirror-Rotate: An architecture for bit-write reduction and wear leveling in non-volatile memories." Proceedings of the 25th edition on Great Lakes Symposium on VLSI. ACM, 2015.|FPC和FNW，同时提到了自适应的FNW粒度设置方法，镜像翻转(顺序问题)，磨损均衡|√
Seyedzadeh, SeyedMohammad, Alex Jones, and Rami Melhem. "Enabling fine-grain restricted coset coding through word-level compression for pcm." 2018 IEEE International Symposium on High Performance Computer Architecture (HPCA). IEEE, 2018.||
Li, Yanbin, et al. "A three-stage-write scheme with flip-bit for PCM main memory." The 20th Asia and South Pacific Design Automation Conference. IEEE, 2015.|三段写，结合FNW与二段写|


- - -
### 读论文过程中遇到不懂的知识点
论文题目|描述
-|-
Flip-Mirror-Rotate: An architecture for bit-write reduction and wear leveling in non-volatile memories|RNW operates at cache line granularity since most data transactions between the last level cache and the main memory are in units of cache lines, either due to ‘write-through’ or cache evictions. Hence, all the words in a cache line are subjected to the same access patterns. This implies that for any intra-word wear leveling scheme, it is sufficient to maintain a common set of tag bits for all words in the cache line.
