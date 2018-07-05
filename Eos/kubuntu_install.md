
### eosio_build_ubuntu.sh

* eos/scripts/eosio_build_ubuntu.sh

CPU_CORE=4
	
JOBS=2
  
源代码取值为空,导致一直编译失败,也不提示

* 安装成功

export PATH=${HOME}/opt/mongodb/bin:$PATH

${HOME}/opt/mongodb/bin/mongod -f ${HOME}/opt/mongodb/mongod.conf &
