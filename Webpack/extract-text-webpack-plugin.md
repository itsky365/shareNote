# 输出css文件

// webpack.config.js

```
const webpack = require('webpack'); //to access built-in plugins
const ExtractTextPlugin = require('extract-text-webpack-plugin');
const path = require('path');

const config = {
  entry: './src/entry.js',
  output: {
    path: path.resolve(__dirname, 'dist'),
    filename: 'bundle-html.js'
  },
  module: {
    rules: [
      { test: /\.(js|jsx)$/, loader: 'babel-loader' },
      // { test: /\.css$/, loader: 'style-loader!css-loader' }
      { test: /\.css$/, use: ExtractTextPlugin.extract({ use: 'css-loader' }) },
    ]
  },
  plugins: [
    new ExtractTextPlugin('my.css'),
  ]
};

module.exports = config;
```

# 参考资料

https://npm.taobao.org/package/extract-text-webpack-plugin

# FAQ

使用webpack2和extract-text-webpack-plugin时遇到Chunk.entry was removed. Use hasRuntime()错误的解决方法

使用了webpack的2.1.0-beta.25版本和 webpack-dev-server的2.1.0-beta.0版本。

在安装extract-text-webpack-plugin模块的时候，我使用了采用默认版本的npm安装命令：

`npm install --save-dev extract-text-webpack-plugin`

然而上面那个命令默认安装的版本是1.0.1 这个版本和webpack 2有冲突。我得把版本改成2.0.0-beta.4。

因为我已经安装了错误的extract-text-webpack-plugin版本，所以我得

先卸载它  `npm uninstall --save-dev extract-text-webpack-plugin` 

再重新安装 `npm install --save-dev extract-text-webpack-plugin@2.0.0-rc3`

查看版本列表 `npm info extract-text-webpack-plugin`
