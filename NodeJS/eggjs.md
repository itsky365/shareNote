## 日志目录

* 生产

生产环境下 logger 会将日志默认打印到 $HOME/logs/${appname} 下面，而不是之前的应用根（开发）目录下

* 部署

后台运行index.js文件，将标准输出重定向到 stdout.log，错误输出重定向到 stderr.log，便于排查问题
```
EGG_SERVER_ENV=prod nohup node dispatch.js > stdout.log 2> stderr.log &
```
