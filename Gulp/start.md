
Gulp使用
=======


安装gulp
---------
* 安装 node.js (前提条件，包含npm)
* ``npm install gulp -g``
* ``npm install gulp --save``
* ``npm install gulp --save-dev``

gulp命令
---------
* ``gulp.task(name, fn)`` - 定义任务，第一个参数是任务名，第二个参数是任务内容
* ``gulp.src(path)`` - 选择文件，传入参数是文件路径
* ``gulp.dest(path)`` - 输出文件
* ``gulp.pipe()`` - 管道，你可以暂时将 pipe 理解为将操作加入执行队列

gulp插件
---------
``var uglify = require("gulp-uglify");``  // js混淆压缩模块

``var minify_css = require("gulp-minify-css");``  // css混淆压缩模块

``var minify_html = require("gulp-minify-html");``  // html混淆压缩模块

``var gulp_concat = require("gulp-concat");``  // 文件合并模块

``var rename = require("gulp-rename");``  // 文件重命名模板

是不是每次都要加载plug都声明一次太累

``var plug = require("gulp-load-plugins")();``

或 ``$ = require("gulp-load-plugins")();``


gulp示例
--------------------

- 验证js文件是否符合jshint ::

        gulp.task('jshint', function () {
            gulp.src(js_src + '/**/*.js')
                .pipe(plug.jshint()) // 检查js
                .pipe(plug.jshint.reporter()); // 输出检查结果信息
        });

- login.js 文件压缩、重命名 ::

        gulp.task('js_login', function () {
            gulp.src(js_src + '/login/login.js')
                //.pipe(plug.jshint())
                //.pipe(plug.jshint.reporter())
                .pipe(plug.uglify())
                .pipe(plug.rename({extname: '.min.js'}))
                .pipe(gulp.dest(js_dest)); // 输出到此目录
        });

- js/src 文件压缩、文件合并、重命名 ::

        gulp.task('js_src', function () {
           gulp.src([js_src + '/index/index/index.js',
                        js_src + '/base/**/*.js', js_src + '/index/**/*.js'])
               .pipe(plug.concat(pkg_name + '.js')) // 多文件合并成1个文件
               .pipe(plug.uglify()) // 文件压缩
               .pipe(plug.rename({extname: '.min.js'})) // 文件重命名为min.js
               .pipe(gulp.dest(js_dest)); // 输出到此目录
        });

- html 文件压缩 ::

        gulp.task('html_src', function () {
            gulp.src(html_src + '/template/**/*.html')
                .pipe(plug.minifyHtml())
                .pipe(gulp.dest(html_dest))
        });

- 删除js文件

        gulp.task('clean_js', function () {
            return gulp.src(js_dest + '/*.js')
                .pipe(plug.clean({force: true}));
        });

- 自定义任务 ::

        // login 任务
        gulp.task('login', ['css_login', 'js_login']);
        // src 任务
        gulp.task('src', ['css_src', 'js_src']);
        // html 任务
        gulp.task('html', ['html_index', 'html_src']);
        // clean 任务
        gulp.task('clean', ['clean_css', 'clean_js', 'clean_html']);
        // build 任务
        gulp.task('build', ['jshint', 'login', 'src', 'html']);
