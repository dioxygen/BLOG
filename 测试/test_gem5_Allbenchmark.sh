#!/bin/sh
#integer compute
./build/X86/gem5.opt --redirect-stdout --outdir=./test/perlbench ./configs/example/se2.py --cpu-type=DerivO3CPU --caches --l1d_size=16kB --l1i_size=16kB --l2cache --l2_size=4MB --l1d_assoc=2 --l1i_assoc=2 --l2_assoc=16 --mem-type=NVMainMemory --mem-size=4GB --nvmain-config=./nvmain/Config/2D_DRAM_example.config -b perlbench -I 100000000 &

./build/X86/gem5.opt --redirect-stdout --outdir=./test/bzip2 ./configs/example/se2.py --cpu-type=DerivO3CPU --caches --l1d_size=16kB --l1i_size=16kB --l2cache --l2_size=4MB --l1d_assoc=2 --l1i_assoc=2 --l2_assoc=16 --mem-type=NVMainMemory --mem-size=4GB --nvmain-config=./nvmain/Config/2D_DRAM_example.config -b bzip2 -I 100000000 &

./build/X86/gem5.opt --redirect-stdout --outdir=./test/gcc ./configs/example/se2.py --cpu-type=DerivO3CPU --caches --l1d_size=16kB --l1i_size=16kB --l2cache --l2_size=4MB --l1d_assoc=2 --l1i_assoc=2 --l2_assoc=16 --mem-type=NVMainMemory --mem-size=4GB --nvmain-config=./nvmain/Config/2D_DRAM_example.config -b gcc -I 100000000 &

./build/X86/gem5.opt --redirect-stdout --outdir=./test/mcf ./configs/example/se2.py --cpu-type=DerivO3CPU --caches --l1d_size=16kB --l1i_size=16kB --l2cache --l2_size=4MB --l1d_assoc=2 --l1i_assoc=2 --l2_assoc=16 --mem-type=NVMainMemory --mem-size=4GB --nvmain-config=./nvmain/Config/2D_DRAM_example.config -b mcf -I 100000000 &

./build/X86/gem5.opt --redirect-stdout --outdir=./test/gobmk ./configs/example/se2.py --cpu-type=DerivO3CPU --caches --l1d_size=16kB --l1i_size=16kB --l2cache --l2_size=4MB --l1d_assoc=2 --l1i_assoc=2 --l2_assoc=16 --mem-type=NVMainMemory --mem-size=4GB --nvmain-config=./nvmain/Config/2D_DRAM_example.config -b gobmk -I 100000000 &

./build/X86/gem5.opt --redirect-stdout --outdir=./test/hmmer ./configs/example/se2.py --cpu-type=DerivO3CPU --caches --l1d_size=16kB --l1i_size=16kB --l2cache --l2_size=4MB --l1d_assoc=2 --l1i_assoc=2 --l2_assoc=16 --mem-type=NVMainMemory --mem-size=4GB --nvmain-config=./nvmain/Config/2D_DRAM_example.config -b hmmer -I 100000000 &

./build/X86/gem5.opt --redirect-stdout --outdir=./test/sjeng ./configs/example/se2.py --cpu-type=DerivO3CPU --caches --l1d_size=16kB --l1i_size=16kB --l2cache --l2_size=4MB --l1d_assoc=2 --l1i_assoc=2 --l2_assoc=16 --mem-type=NVMainMemory --mem-size=4GB --nvmain-config=./nvmain/Config/2D_DRAM_example.config -b sjeng -I 100000000 &

./build/X86/gem5.opt --redirect-stdout --outdir=./test/libquantum ./configs/example/se2.py --cpu-type=DerivO3CPU --caches --l1d_size=16kB --l1i_size=16kB --l2cache --l2_size=4MB --l1d_assoc=2 --l1i_assoc=2 --l2_assoc=16 --mem-type=NVMainMemory --mem-size=4GB --nvmain-config=./nvmain/Config/2D_DRAM_example.config -b libquantum -I 100000000 &

./build/X86/gem5.opt --redirect-stdout --outdir=./test/h264ref ./configs/example/se2.py --cpu-type=DerivO3CPU --caches --l1d_size=16kB --l1i_size=16kB --l2cache --l2_size=4MB --l1d_assoc=2 --l1i_assoc=2 --l2_assoc=16 --mem-type=NVMainMemory --mem-size=4GB --nvmain-config=./nvmain/Config/2D_DRAM_example.config -b h264ref -I 100000000 &

./build/X86/gem5.opt --redirect-stdout --outdir=./test/omnetpp ./configs/example/se2.py --cpu-type=DerivO3CPU --caches --l1d_size=16kB --l1i_size=16kB --l2cache --l2_size=4MB --l1d_assoc=2 --l1i_assoc=2 --l2_assoc=16 --mem-type=NVMainMemory --mem-size=4GB --nvmain-config=./nvmain/Config/2D_DRAM_example.config -b omnetpp -I 100000000 &

./build/X86/gem5.opt --redirect-stdout --outdir=./test/astar ./configs/example/se2.py --cpu-type=DerivO3CPU --caches --l1d_size=16kB --l1i_size=16kB --l2cache --l2_size=4MB --l1d_assoc=2 --l1i_assoc=2 --l2_assoc=16 --mem-type=NVMainMemory --mem-size=4GB --nvmain-config=./nvmain/Config/2D_DRAM_example.config -b astar -I 100000000 &

./build/X86/gem5.opt --redirect-stdout --outdir=./test/xalancbmk ./configs/example/se2.py --cpu-type=DerivO3CPU --caches --l1d_size=16kB --l1i_size=16kB --l2cache --l2_size=4MB --l1d_assoc=2 --l1i_assoc=2 --l2_assoc=16 --mem-type=NVMainMemory --mem-size=4GB --nvmain-config=./nvmain/Config/2D_DRAM_example.config -b xalancbmk -I 100000000 &

# float compute

./build/X86/gem5.opt --redirect-stdout --outdir=./test/bwaves ./configs/example/se2.py --cpu-type=DerivO3CPU --caches --l1d_size=16kB --l1i_size=16kB --l2cache --l2_size=4MB --l1d_assoc=2 --l1i_assoc=2 --l2_assoc=16 --mem-type=NVMainMemory --mem-size=4GB --nvmain-config=./nvmain/Config/2D_DRAM_example.config -b bwaves -I 100000000 &

./build/X86/gem5.opt --redirect-stdout --outdir=./test/gamess ./configs/example/se2.py --cpu-type=DerivO3CPU --caches --l1d_size=16kB --l1i_size=16kB --l2cache --l2_size=4MB --l1d_assoc=2 --l1i_assoc=2 --l2_assoc=16 --mem-type=NVMainMemory --mem-size=4GB --nvmain-config=./nvmain/Config/2D_DRAM_example.config -b gamess -I 100000000 &

./build/X86/gem5.opt --redirect-stdout --outdir=./test/milc ./configs/example/se2.py --cpu-type=DerivO3CPU --caches --l1d_size=16kB --l1i_size=16kB --l2cache --l2_size=4MB --l1d_assoc=2 --l1i_assoc=2 --l2_assoc=16 --mem-type=NVMainMemory --mem-size=4GB --nvmain-config=./nvmain/Config/2D_DRAM_example.config -b milc -I 100000000 &

./build/X86/gem5.opt --redirect-stdout --outdir=./test/zeusmp ./configs/example/se2.py --cpu-type=DerivO3CPU --caches --l1d_size=16kB --l1i_size=16kB --l2cache --l2_size=4MB --l1d_assoc=2 --l1i_assoc=2 --l2_assoc=16 --mem-type=NVMainMemory --mem-size=4GB --nvmain-config=./nvmain/Config/2D_DRAM_example.config -b zeusmp -I 100000000 &

./build/X86/gem5.opt --redirect-stdout --outdir=./test/gromacs ./configs/example/se2.py --cpu-type=DerivO3CPU --caches --l1d_size=16kB --l1i_size=16kB --l2cache --l2_size=4MB --l1d_assoc=2 --l1i_assoc=2 --l2_assoc=16 --mem-type=NVMainMemory --mem-size=4GB --nvmain-config=./nvmain/Config/2D_DRAM_example.config -b gromacs -I 100000000 &

./build/X86/gem5.opt --redirect-stdout --outdir=./test/cactusADM ./configs/example/se2.py --cpu-type=DerivO3CPU --caches --l1d_size=16kB --l1i_size=16kB --l2cache --l2_size=4MB --l1d_assoc=2 --l1i_assoc=2 --l2_assoc=16 --mem-type=NVMainMemory --mem-size=4GB --nvmain-config=./nvmain/Config/2D_DRAM_example.config -b cactusADM -I 100000000 &

./build/X86/gem5.opt --redirect-stdout --outdir=./test/leslie3d ./configs/example/se2.py --cpu-type=DerivO3CPU --caches --l1d_size=16kB --l1i_size=16kB --l2cache --l2_size=4MB --l1d_assoc=2 --l1i_assoc=2 --l2_assoc=16 --mem-type=NVMainMemory --mem-size=4GB --nvmain-config=./nvmain/Config/2D_DRAM_example.config -b leslie3d -I 100000000 &

./build/X86/gem5.opt --redirect-stdout --outdir=./test/namd ./configs/example/se2.py --cpu-type=DerivO3CPU --caches --l1d_size=16kB --l1i_size=16kB --l2cache --l2_size=4MB --l1d_assoc=2 --l1i_assoc=2 --l2_assoc=16 --mem-type=NVMainMemory --mem-size=4GB --nvmain-config=./nvmain/Config/2D_DRAM_example.config -b namd -I 100000000 &

./build/X86/gem5.opt --redirect-stdout --outdir=./test/dealII ./configs/example/se2.py --cpu-type=DerivO3CPU --caches --l1d_size=16kB --l1i_size=16kB --l2cache --l2_size=4MB --l1d_assoc=2 --l1i_assoc=2 --l2_assoc=16 --mem-type=NVMainMemory --mem-size=4GB --nvmain-config=./nvmain/Config/2D_DRAM_example.config -b dealII -I 100000000 &

./build/X86/gem5.opt --redirect-stdout --outdir=./test/soplex ./configs/example/se2.py --cpu-type=DerivO3CPU --caches --l1d_size=16kB --l1i_size=16kB --l2cache --l2_size=4MB --l1d_assoc=2 --l1i_assoc=2 --l2_assoc=16 --mem-type=NVMainMemory --mem-size=4GB --nvmain-config=./nvmain/Config/2D_DRAM_example.config -b soplex -I 100000000 &

./build/X86/gem5.opt --redirect-stdout --outdir=./test/povray ./configs/example/se2.py --cpu-type=DerivO3CPU --caches --l1d_size=16kB --l1i_size=16kB --l2cache --l2_size=4MB --l1d_assoc=2 --l1i_assoc=2 --l2_assoc=16 --mem-type=NVMainMemory --mem-size=4GB --nvmain-config=./nvmain/Config/2D_DRAM_example.config -b povray -I 100000000 &

./build/X86/gem5.opt --redirect-stdout --outdir=./test/calculix ./configs/example/se2.py --cpu-type=DerivO3CPU --caches --l1d_size=16kB --l1i_size=16kB --l2cache --l2_size=4MB --l1d_assoc=2 --l1i_assoc=2 --l2_assoc=16 --mem-type=NVMainMemory --mem-size=4GB --nvmain-config=./nvmain/Config/2D_DRAM_example.config -b calculix -I 100000000 &

./build/X86/gem5.opt --redirect-stdout --outdir=./test/GemsFDTD ./configs/example/se2.py --cpu-type=DerivO3CPU --caches --l1d_size=16kB --l1i_size=16kB --l2cache --l2_size=4MB --l1d_assoc=2 --l1i_assoc=2 --l2_assoc=16 --mem-type=NVMainMemory --mem-size=4GB --nvmain-config=./nvmain/Config/2D_DRAM_example.config -b GemsFDTD -I 100000000 &

./build/X86/gem5.opt --redirect-stdout --outdir=./test/tonto ./configs/example/se2.py --cpu-type=DerivO3CPU --caches --l1d_size=16kB --l1i_size=16kB --l2cache --l2_size=4MB --l1d_assoc=2 --l1i_assoc=2 --l2_assoc=16 --mem-type=NVMainMemory --mem-size=4GB --nvmain-config=./nvmain/Config/2D_DRAM_example.config -b tonto -I 100000000 &

./build/X86/gem5.opt --redirect-stdout --outdir=./test/lbm ./configs/example/se2.py --cpu-type=DerivO3CPU --caches --l1d_size=16kB --l1i_size=16kB --l2cache --l2_size=4MB --l1d_assoc=2 --l1i_assoc=2 --l2_assoc=16 --mem-type=NVMainMemory --mem-size=4GB --nvmain-config=./nvmain/Config/2D_DRAM_example.config -b lbm -I 100000000 &

./build/X86/gem5.opt --redirect-stdout --outdir=./test/wrf ./configs/example/se2.py --cpu-type=DerivO3CPU --caches --l1d_size=16kB --l1i_size=16kB --l2cache --l2_size=4MB --l1d_assoc=2 --l1i_assoc=2 --l2_assoc=16 --mem-type=NVMainMemory --mem-size=4GB --nvmain-config=./nvmain/Config/2D_DRAM_example.config -b wrf -I 100000000 &

./build/X86/gem5.opt --redirect-stdout --outdir=./test/sphinx3 ./configs/example/se2.py --cpu-type=DerivO3CPU --caches --l1d_size=16kB --l1i_size=16kB --l2cache --l2_size=4MB --l1d_assoc=2 --l1i_assoc=2 --l2_assoc=16 --mem-type=NVMainMemory --mem-size=4GB --nvmain-config=./nvmain/Config/2D_DRAM_example.config -b sphinx3 -I 100000000 &

./build/X86/gem5.opt --redirect-stdout --outdir=./test/specrand_i ./configs/example/se2.py --cpu-type=DerivO3CPU --caches --l1d_size=16kB --l1i_size=16kB --l2cache --l2_size=4MB --l1d_assoc=2 --l1i_assoc=2 --l2_assoc=16 --mem-type=NVMainMemory --mem-size=4GB --nvmain-config=./nvmain/Config/2D_DRAM_example.config -b specrand_i -I 100000000 &

./build/X86/gem5.opt --redirect-stdout --outdir=./test/specrand_f ./configs/example/se2.py --cpu-type=DerivO3CPU --caches --l1d_size=16kB --l1i_size=16kB --l2cache --l2_size=4MB --l1d_assoc=2 --l1i_assoc=2 --l2_assoc=16 --mem-type=NVMainMemory --mem-size=4GB --nvmain-config=./nvmain/Config/2D_DRAM_example.config -b specrand_f -I 100000000 &

