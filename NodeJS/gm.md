# graphicsmagick 下载并安装

http://www.graphicsmagick.org/

wget https://superb-sea2.dl.sourceforge.net/project/graphicsmagick/graphicsmagick/1.3.25/GraphicsMagick-1.3.25.tar.gz

tar zxvf GraphicsMagick-1.3.25.tar.gz
cd GraphicsMagick

* centos

安装编译环境

`yum groupinstall "Development tools"`

图像依赖包

`yum install freetype gd-devel libgomp libjpeg libjpeg-devel libpng libpng-devel`

编辑并安装

```
./configure --enable-shared=yes
make
make install
```

注意：必须安装libjpeg、libjpeg-devel、libpng、libpng-devel，在configure之后观察输出，确保图像处理项值为yes

验证

`gm display` 输出内容则安装成功

* node

npm i -g gm

测试是否成功

```
var gm = require('gm');

gm("nodejs.png")
    .resize(100, 100)
    .autoOrient()
    .write('./nodejs1.png', function (arg) { 
        console.log(arg); 
    });
```
