gulp = require 'gulp'
requireDir = require 'require-dir'
requireDir './tasks'
runSequence = require 'run-sequence'

gulp.task 'build', (done) ->
  runSequence 'clean', 'concat', done

gulp.task 'build-dist', (done) ->
  runSequence 'clean', 'concat', 'minify', done

