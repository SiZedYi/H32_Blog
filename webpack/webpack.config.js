const path = require('path');
const HtmlWebpackPlugin = require('html-webpack-plugin');

module.exports = {
  entry: path.resolve(__dirname, '../client/src/index.js'),
  output: {
    filename: 'bundle.js',
    path: path.resolve(__dirname, '../client/dist'),
  },
  plugins: [
    new HtmlWebpackPlugin({
      template: path.resolve(__dirname, '../client/public/index.html'),
      filename: 'index.html',
      inject: 'body',
    }),
  ],
};
