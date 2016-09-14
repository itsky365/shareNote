# gulp 常用插件

## gulp-htmlmin 压缩html，可以压缩页面js、css，去除页面空隔，删除多余属性等操作

    npm install --save-dev gulp-htmlmin

    var htmlmin_options = {
      // 清除HTML注释
      removeComments: true,
      // 压缩HTML
      collapseWhitespace: true,
      // 省略布尔属性的值 <input checked="true"/> ==> <input />
      collapseBooleanAttributes: true,
      // 删除所有空格作属性值 <input id="" /> ==> <input />
      removeEmptyAttributes: true,
      // 删除<script>的type="text/javascript"
      removeScriptTypeAttributes: true,
      // 删除<style>和<link>的type="text/css"
      removeStyleLinkTypeAttributes: true,
      // 压缩页面JS
      minifyJS: true,
      // 压缩页面CSS
      minifyCSS: true
    }

    var gulp = require('gulp'),
      htmlmin = require('gulp-htmlmin');

    gulp.task('testHtmlmin', function () {
      gulp.src('src/html/*.html')
          .pipe(htmlmin(htmlmin_options))
          .pipe(gulp.dest('dist/html'));
    });
