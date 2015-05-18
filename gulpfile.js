
var postcss = require('gulp-postcss');
var customProperties = require("postcss-custom-properties")

var gulp = require('gulp');
var cssgrace = require('cssgrace')
var nested = require('postcss-nested') 
var autoprefixer = require('autoprefixer-core');
var atImport = require("postcss-import")
var vars   = require('postcss-simple-vars')
var simpleExtend = require('postcss-simple-extend');
var mixins = require('postcss-mixins');
var calc = require('postcss-calc');
//var mqpacker = require('css-mqpacker');
//var csswring = require('csswring');

gulp.task('css', function () {
    
    var processors = [
        atImport,
        mixins,
        customProperties(),
        autoprefixer({browsers: ['> 5%']}),
        cssgrace,
        nested,
        simpleExtend,
        calc()
    ];
    return gulp.src(['./**/*.css','!./node_modules/**/*','!./test/**/*'])
        .pipe(postcss(processors))
        .on('error', function (error) {
          console.log(error)
        })
        .pipe(gulp.dest('./test'))
        
});
