
# NodeJS 入门


## NodeJS安装


前提条件：
    * 安装 node.js (包含npm)
    * 安装 cnpm (安装依赖包时不会被墙)
    淘宝 NPM 镜像

    npm install -g cnpm --registry=https://registry.npm.taobao.org

    cnpm install [name]

### npm命令

``npm install <name>@<version>`` 安装nodejs的依赖包

加版本号的方式安装指定版本，如 ``npm install express@3.0.6``

``npm install gulp -g`` 将包安装到全局环境中

``npm install gulp --save`` 本地安装，安装的同时将信息写入package.json

``npm install gulp --save-dev`` 本地安装，安装的同时将信息写入package.json，只能在当前目录中运行

``npm install`` 方法就可以根据dependencies配置安装所有的依赖包


``npm remove <name>`` 卸载模块

``npm update <name>`` 更新模块

``npm ls`` 列出当前安装的了所有包

``npm root`` 查看当前包的安装路径

``npm root -g``  查看全局的包的安装路径

``npm help`` 帮助，如果要单独查看install命令的帮助，可以使用 ``npm help install``

### 生成package.json文件

``npm init`` 会引导你创建一个package.json文件，包括名称、版本、作者这些信息等

Package.json 属性说明

*name* - 包名

*version* - 包的版本号

*description* - 包的描述

*homepage* - 包的官网 url

*author* - 包的作者姓名

*contributors* - 包的其他贡献者姓名

*dependencies* - 依赖包列表。依赖包没有安装，npm 会自动将依赖包安装在 node_module 目录下

*repository* - 包代码存放的地方的类型，可以是 git 或 svn，git 可在 Github 上

*main* - main 字段是一个模块ID，它是一个指向你程序的主要项目。如果你包的名字叫 express，然后用户安装它，然后require("express")

*keywords* - 关键字

### package.json 生成内容


        {
          "name": "awifi_toe",
          "version": "1.0.0",
          "description": "awifi toe admin",
          "main": "Gulpfile.js",
          "scripts": {
            "test": "test"
          },
          "keywords": [
            "toe",
            "admin"
          ],
          "author": "toe group",
          "license": "ISC",
          "devDependencies": {
            "gulp": "^3.9.0",
            "gulp-clean": "^0.3.1",
            "gulp-concat": "^2.6.0",
            "gulp-jshint": "^2.0.0",
            "gulp-load-plugins": "^1.1.0",
            "gulp-minify": "0.0.5",
            "gulp-minify-css": "^1.2.2",
            "gulp-minify-html": "^1.0.4",
            "gulp-rename": "^1.2.2",
            "gulp-uglify": "^1.5.1",
            "jshint": "^2.8.0"
          }
        }
