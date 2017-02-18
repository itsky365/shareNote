# html文件压缩

// webpack.config.js

```
const HtmlWebpackPlugin = require('html-webpack-plugin');
const webpack = require('webpack');
const path = require('path');

const config = {
  entry: './src/entry.js',
  output: {
    path: path.resolve(__dirname, 'dist'),
    filename: 'bundle-html.js'
  },
  module: {
    rules: [
      { test: /\.(js|jsx)$/, use: 'babel-loader' },
      { test: /\.css$/, use: 'css-loader' }
    ]
  },
  plugins: [
    new webpack.optimize.UglifyJsPlugin(), // 默认生成html5示例 -> index.html 文件
    new HtmlWebpackPlugin({
        minify: {
          // collapseBooleanAttributes: true,
          // collapseInlineTagWhitespace: true,
          collapseWhitespace: true, // html压缩
          minifyCSS: true, // 压缩css
          minifyJS: true, // 压缩js
        },
        template: './src/my.html', // 模板源文件
        filename: 'my2.html', // 输出html文件名
    })
  ]
};

module.exports = config;
```

* 参考

https://github.com/jantimon/html-webpack-plugin

Why is my HTML minified?

https://github.com/jantimon/html-webpack-plugin/blob/master/docs/template-option.md

https://github.com/kangax/html-minifier#options-quick-reference
