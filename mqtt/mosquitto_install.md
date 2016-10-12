# Ubuntu安装Mosquitto

## 包库依赖

编译找不到openssl/ssl.h 

安装openssl 

sudo apt-get install libssl-dev 

编译过程找不到ares.h 

sudo apt-get install libc-ares-dev 

编译过程找不到uuid/uuid.h 

sudo apt-get install uuid-dev 

使用过程中找不到libmosquitto.so.1 

error while loading shared libraries: libmosquitto.so.1: cannot open shared object file: No such file or directory 

修改libmosquitto.so位置 

创建链接 

sudo ln -s /usr/local/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 

更新动态链接库 

sudo ldconfig 


## 编辑安装

下载

wget http://mosquitto.org/files/source/mosquitto-1.4.10.tar.gz

解压

tar zxfv mosquitto-1.4.10.tar.gz

进入目录

cd mosquitto-1.4.10

编译

make

安装

sudo make install

安装至目录 

/usr/local/sbin/mosquitto 

/usr/local/sbin/mosquitto_sub 

/usr/local/sbin/mosquitto_pub 

配置文件

/etc/mosquitto/mosquitto.conf 


# CentOS安装Mosquitto
