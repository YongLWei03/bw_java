'use strict'
// Template version: 1.3.1
// see http://vuejs-templates.github.io/webpack for documentation.    和后台分离部署是时配置
const path = require('path')
const ApiUrl = require('../static/serverconfig').ApiUrl
module.exports = {
    dev: {
        // Paths
        // 编译输出的二级目录
        assetsSubDirectory: 'static',
        // 编译发布上线路径的根目录，可配置为资源服务器域名或 CDN 域名
        assetsPublicPath: '/',
        env: require('./dev.env'),
        proxyTable: {
            '/MaxTunnel-Web': {
                target: ApiUrl,
                // secure: false,      // 如果是https接口，需要配置这个参数
                changeOrigin: true,
                pathRewrite: {
                    '^/MaxTunnel-Web': ''
                }
            }
        },
        // Various Dev Server settings
        host: 'localhost', // can be overwritten by process.env.HOST
        port: 8081, // can be overwritten by process.env.PORT, if port is in use, a free one will be determined
        autoOpenBrowser: false,
        errorOverlay: true,
        notifyOnErrors: true,
        poll: false, // https://webpack.js.org/configuration/dev-server/#devserver-watchoptions-


        /**
         * Source Maps
         */

        // https://webpack.js.org/configuration/devtool/#development
        devtool: 'cheap-module-eval-source-map',

        // If you have problems debugging vue-files in devtools,
        // set this to false - it *may* help
        // https://vue-loader.vuejs.org/en/options.html#cachebusting
        cacheBusting: true,

        cssSourceMap: true
    },

    build: {
        // Template for index.html  必须是绝对路径
        index: path.resolve(__dirname, '../html/index.html'),

        //  编译输出的静态资源根路径 绝对路径
        assetsRoot: path.resolve(__dirname, '../../dist'),
        //编译输出的二级目录
        assetsSubDirectory: 'static',
        // 编译发布上线路径的根目录，可配置为资源服务器域名或 CDN 域名
        assetsPublicPath: '/dist/',

        /**
         * Source Maps
         */

        productionSourceMap: true,
        // https://webpack.js.org/configuration/devtool/#production
        devtool: '#source-map',

        // Gzip off by default as many popular static hosts such as
        // Surge or Netlify already gzip all static assets for you.
        // Before setting to `true`, make sure to:
        // npm install --save-dev compression-webpack-plugin
        productionGzip: false,
        productionGzipExtensions: ['js', 'css'],

        // Run the build command with an extra argument to
        // View the bundle analyzer report after build finishes:
        // `npm run build --report`
        // Set to `true` or `false` to always turn it on or off
        bundleAnalyzerReport: process.env.npm_config_report
    }
}