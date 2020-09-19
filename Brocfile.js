var pickFiles = require('broccoli-funnel');
var mergeTrees = require('broccoli-merge-trees');
var compileSass = require('broccoli-sass');

var publicFiles = 'public';

var cssFiles = compileSass(
  [
    'styles',
    'node_modules/',
    'node_modules/@fortawesome/fontawesome-free/scss'
  ], // nodes
  'app.scss', // main css file
  'app.css', // output
  {'outputStyle': 'compressed'}
);

var fontFiles = pickFiles('fonts', {
  srcDir: '/',
  destDir: '/fonts'
});

var trees = [
  cssFiles,
  publicFiles,
  // faFiles,
  fontFiles
];

module.exports = mergeTrees(trees);
