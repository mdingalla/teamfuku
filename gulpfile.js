var gulp = require('gulp');
var spsave = require("spsave").spsave;
var vfs = require('vinyl-fs');
var map = require('map-stream');
var minify = require('gulp-minify');
var concat = require('gulp-concat');
var settings = require("./config.js");


var spusername = settings.online.username;
var sppassword = settings.online.password;
var spSiteUrl = 'http://www.teamfuku.com';
var spPageFolder = 'Pages';
var spSiteAssetsFolder = 'SiteAssets';

gulp.task("CopyAllSiteAssets",function()
{
  var options = {
    username:spusername,
    password:sppassword,
    glob:['SiteAssets/**/*.*'],
    base:'SiteAssets',
    siteUrl:spSiteUrl,
    folder:spSiteAssetsFolder
  };
  spsave(options)
  .then(function(){

  }).catch(function() {
    console.log('spsave error');
  })
});

gulp.task("CopyAllPages",function()
{
  var options = {
    username:spusername,
    password:sppassword,
    glob:['Pages/*.aspx'],
    base:'Pages',
    checkin:true,
    checkinType:1,
    siteUrl:spSiteUrl,
    folder:spPageFolder
  };
  spsave(options)
  .then(function(){

  }).catch(function() {
    console.log('spsave error');
  })
});

gulp.task("BuildAll",['CopyAllSiteAssets','CopyAllPages']);

gulp.task('watch',function()
{
  //watch js
  // gulp.watch(["SiteAssets/app/controllers/*.js","SiteAssets/app/services/*.js","SiteAssets/app/directives/*.js"]
  // ,['BuildControllers','BuildServices','BuildDirectives','CopyAppJS'])
  gulp.watch("SiteAssets/**/*.aspx",function(event)
  {
    console.log(event.path);
    vfs.src(event.path, { base: 'SiteAssets' })
    .pipe(map(function(file, cb) {
      spsave({
        siteUrl: spSiteUrl,  username: spusername, password: sppassword,
        file: file,
        checkin:true,
        checkinType:1,
        folder: spSiteAssetsFolder
      })
      .then(function(){ console.log('success'); })
      .finally(function(){ cb(); });
    }))
  })


  //watch non js
  gulp.watch(["SiteAssets/**/*.*","!SiteAssets/app/**/*.js"],function(event)
  {
    console.log(event.path);
    vfs.src(event.path, { base: 'SiteAssets' })
    .pipe(map(function(file, cb) {
      spsave({
        siteUrl: spSiteUrl,  username: spusername, password: sppassword,
        file: file,
        checkin:true,
        checkinType:1,
        folder: spSiteAssetsFolder
      })
      .then(function(){ console.log('success'); })
      .finally(function(){ cb(); });
    }))
  })

  //watch pages
  gulp.watch("Pages/**/*.aspx",function(event)
  {
    console.log(event.path);
    vfs.src(event.path, { base: 'Pages' })
    .pipe(map(function(file, cb) {
      spsave({
        siteUrl: spSiteUrl,  username: spusername, password: sppassword,
        file: file,
        checkin:true,
        checkinType:1,
        folder: spPageFolder
      })
      .then(function(){ console.log('success'); })
      .finally(function(){ cb(); });
    }))
  })
});

gulp.task("CopyAppJS",function()
{
  var options = {
    username:spusername,
    password:sppassword,
    glob:['SiteAssets/app/js/*.js'],
    base:'SiteAssets',
    siteUrl:spSiteUrl,
    folder:spSiteAssetsFolder
  };
  spsave(options)
  .then(function(){

  }).catch(function() {
    console.log('spsave error');
  })
})

gulp.task("BuildControllers",function()
{
  gulp.src('SiteAssets/app/controllers/*controller.js')
      .pipe(concat('controllers.js'))
      .pipe(minify({
          ext:{
              src:'-debug.js',
              min:'.js'
          }
          // exclude: ['tasks'],
          // ignoreFiles: ['.combo.js', '-min.js']
      }))
      .pipe(gulp.dest('SiteAssets/app/js'))
});

gulp.task("BuildServices",function()
{
  gulp.src('SiteAssets/app/services/*service.js')
      .pipe(concat('services.js'))
      .pipe(minify({
          ext:{
              src:'-debug.js',
              min:'.js'
          }
          // exclude: ['tasks'],
          // ignoreFiles: ['.combo.js', '-min.js']
      }))
      .pipe(gulp.dest('SiteAssets/app/js'))
});

gulp.task("BuildDirectives",function()
{
  gulp.src('SiteAssets/app/directives/*directive.js')
      .pipe(concat('directives.js'))
      .pipe(minify({
          ext:{
              src:'-debug.js',
              min:'.js'
          }
          // exclude: ['tasks'],
          // ignoreFiles: ['.combo.js', '-min.js']
      }))
      .pipe(gulp.dest('SiteAssets/app/js'))
});
