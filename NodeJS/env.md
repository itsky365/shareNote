### 本地开发环境搭建

1. nodejs安装

国内镜像下载地址

https://npm.taobao.org/mirrors/node

推荐下载 nodejs 6.10.x 版本

2. 设备镜像源

npm config set registry https://registry.npm.taobao.org

进入 node项目 目录

执行 npm install 安装node_modules包

[注意事项]
如果node-sass安装失败
请执行如下命令 npm install node-sass --sass-binary-site=http://npm.taobao.org/mirrors/node-sass 试试
或者多次执行 npm install node-sass 命令（国内防火墙导致访问 github.com 慢，引起超时）

3. 运行本地代码

执行 npm run dev
