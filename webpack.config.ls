'use strict'
webpack = require \webpack
path = require \path
module.exports =
  output: 
    path: path.join(__dirname,\dist , \js )
    filename: '[name].js'
    publicPath: '/js/'
  cache: false
  debug: true
  devtool: false
  entry: 
    'webpack-dev-server/client?http://localhost:8000/',
    'webpack/hot/only-dev-server'
    './src/scripts/main.ls'
  stats: 
    colors: true
    reasons: true
  resolve: 
    modulesDirectories: ['node_modules', 'bower_components']
  
  module: 
    loaders: [
      *test: /\.ls$/,
       loaders: ['react-hot', 'livescript']
      *test: /\.sass/,
       loader: 'style!css!sass?sourceComments=normal&indentedSyntax=true&outputStyle=expanded&includePaths[]=' + path.resolve(__dirname, "./node_modules/compass-mixins/lib")
      *test: /\.css/,
       loader: 'style-loader!css-loader'
      *test: /\.(png|jpg)$/,
       loader: 'url-loader?limit=8192'
    ]
  

  plugins: 
    new webpack.HotModuleReplacementPlugin()
    new webpack.ResolverPlugin(
        new webpack.ResolverPlugin.DirectoryDescriptionFilePlugin(".bower.json", ["main"])
    )
    new webpack.NoErrorsPlugin()