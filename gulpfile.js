var gulp = require('gulp');
var gutil = require('gulp-util')
var coffee = require('gulp-coffee');
var connect = require('gulp-connect');
var clean = require('gulp-clean');

//使用connect启动一个Web服务器
gulp.task('connect', function () {
  connect.server({
    livereload: true
  });
});

gulp.task('coffee', function() {
  gulp.src('./app/**/*.coffee')
    .pipe(coffee({bare: true}).on('error', gutil.log))
    .pipe(gulp.dest('./dist/'));
});

gulp.task('watch', function () {
  gulp.watch(['./app/**/*.coffee'], ['coffee']);
});

gulp.task('clean', function() {
  return gulp.src('dist')
      .pipe(clean({force: true}));
});

gulp.task('default', ['clean', 'coffee', 'watch', 'connect'], function() {

});
