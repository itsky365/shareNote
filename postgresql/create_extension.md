# 安装扩展包 extension


## 查看 pg_config 位置

    which pg_config

推荐添加至 PATH 中 vi .bashrc

    # pgsql
    export PG_HOME=$HOME/local/pgsql/bin
    export PATH=$PG_HOME:$PATH

查看 libdir 目录

    pg_config --libdir
    pg_config --pkglibdir

通常在PG安装目录下lib目录

## 查看已安装扩展包

    select * from pg_language;


## plpythonu plpython2u

1) 编译选项 
    
    ./configure --with-python

2) 编译成功后，在对应的database拓展中添加扩展

    create extension plpythonu;
    create extension plpython2u;


## plv8

### ubuntu

1) 安装v8包

    apt-get install libv8-dev

2) 下载plv8.git
https://github.com/plv8/plv8/releases
9.5.3 请下载最新版 v1.4.8 (1.4版本make成功，1.5版本make出错)

在plv8目录中执行 **make** 后，会生成对应的 _.so .sql .control_

3) 复制文件

    cp plv8/plv8.so -> PGHOME/lib/
    cp plv8/plv8.control -> PGHOME/share/extension/
    cp plv8/plv8--1.4.8.sql -> PGHOME/share/extension/
    cp plv8/uninstall_plv8.sql -> PGHOME/share/extension/

4) 在相应的databas拓展下添加扩展

    create extension plv8;
    
执行成功，即完成extension的添加

plv8文档 http://pgxn.org/dist/plv8/doc/plv8.html