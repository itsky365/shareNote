## 日志目录

* 生产

生产环境下 logger 会将日志默认打印到 $HOME/logs/${appname} 下面，而不是之前的应用根（开发）目录下

* 部署

后台运行index.js文件，将标准输出重定向到 stdout.log，错误输出重定向到 stderr.log，便于排查问题
```
EGG_SERVER_ENV=prod nohup node dispatch.js > stdout.log 2> stderr.log &
```

## 插件

* egg-development-proxyagent

默认只在本地开发环境才开启，如果需要在其他环境开启，在应用的 plugin.js 中配置：
```
// config/plugin.js
exports.proxyagent = {
    enable: true,
    package: 'egg-development-proxyagent',
    env: ['local', 'prod'] // 开启多环境
};
```
但不推荐在生产环境开启

web查看运行anyproxy `http://anyproxy.io/cn/`

## 内置指令

- 使用 `npm run lint` 来做代码风格检查。
- 使用 `npm run autod` 来自动检测依赖更新，详细参见 [autod](https://www.npmjs.com/package/autod) 。


### 验证码（改用java版，无须安装）

执行如下命令

```
npm install cnpm -g --registry=https://registry.npm.taobao.org

cnpm install node-gyp -g

cnpm install ccap
```

> centos

* yum install gcc-c++

https://github.com/DoubleSpout/ccap


### 生产环境启动node

使用 nohup 运行node 后台运行
```
cd awifi-np-show

EGG_SERVER_ENV=prod nohup node index.js > np-show20170220.log 2>&1 &
```

后台运行日志分开记录

EGG_SERVER_ENV=prod nohup node index.js > stdout.log 2> stderr.log &

代理抓包

EGG_SERVER_ENV=prod http_proxy=http://127.0.0.1:8888 nohup node index.js > stdout.log 2> stderr.log &

### 日志级别

ENV=prod
记录 logger.info 以上

ENV=dev
记录 logger.debug 以上

