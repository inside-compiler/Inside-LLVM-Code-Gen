cd llvm-project //进入当前代码仓
mkdir build   //创建build目录
cd build      //进入build目录，构建过程中的中间文件和结果都放在该目录中
cmake -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Debug -DLLVM_TARGETS_TO_BUILD=BPF -DLLVM_ENABLE_PROJECTS="clang" ../llvm   //生成makefile文件
make -j 32   //使用32线程进行并行构建