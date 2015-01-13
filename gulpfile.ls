gulp = require \gulp
gutil = require \gulp-util
sass = require \gulp-sass
clean = require \gulp-clean
glue = require \gulp-sprite-glue
webpack = require \webpack
WebpackDevServer = require \webpack-dev-server
webpackConfig = require \./webpack.config

ratios = "2,1"

gulp.task('sass',->
    gulp.src(['./src/sass/style.sass'])
        .pipe(sass(
            sourcemap: true
            indentedSyntax:true
        ))
        .pipe(gulp.dest('./dist/css'))
)
gulp.task('cleanDoc',->
    gulp.src('./docs', {read: false})
        .pipe(clean({force: true}))
)
gulp.task('sprite-desktop',->
    gulp.src("./src/icons/desktop/**/*")
        .pipe(glue(
            css: './dist/css/sprite',
            img: './dist/images/sprite'
            ratios:ratios
            namespace:''
            spriteNamespace:'s'
            margin:'10'
            force:true
        ))
)
gulp.task('sprite-mobile',->
    gulp.src("./src/icons/mobile/**/*")
        .pipe(glue(
            css: './dist/css/sprite',
            img: './dist/images/sprite'
            ratios:ratios
            namespace:''
            spriteNamespace:'s'
            margin:'10'
            force:true
            
        ))
)
gulp.task('sprite-tablet',->
    gulp.src("./src/icons/tablet/**/*")
        .pipe(glue(
            css: './dist/css/sprite',
            img: './dist/images/sprite'
            ratios:ratios
            namespace:''
            spriteNamespace:'s'
            margin:'10'
            force:true
        ))
)
gulp.task('watch',->
    gulp.watch(['src/icons/desktop/**/*'], ['sprite-desktop']); 
    gulp.watch(['src/icons/mobile/**/*'], ['sprite-mobile']); 
    gulp.watch(['src/icons/tablet/**/*'], ['sprite-tablet']); 
)
gulp.task 'webpack',->
    webpackConfig = require \./webpack.config

    w = webpack(webpackConfig)
    wds = new WebpackDevServer(w,
        contentBase:'./dist'
        hot: true
        publicPath:\/js
        stats: webpackConfig.stats
    ).listen(8000, "localhost",(err)->
        
        throw new gutil.PluginError("webpack-dev-server", err) if err
        gutil.log "[webpack-dev-server]",\http://localhost:8000/webpack-dev-server/index.html 
        #open("http://localhost:8000/webpack-dev-server/");
    )

gulp.task('build', ['cleanDoc','sprite-desktop','sprite-mobile','sprite-tablet', 'sass'])
gulp.task('dev', ['sass', 'watch','webpack']);