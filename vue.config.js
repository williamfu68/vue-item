// 前端代理配置
module.exports = {
    devServer: {
        proxy: {
            //代理访问服务器(更改代理配置后记得重启Vue服务)
            '/api': {
                target: 'http://127.0.0.1:8000',
                ws: true,
                changeOrigin: true,
            },
            '/storage': {
                target: 'http://127.0.0.1:8000',
                ws: true,
                changeOrigin: true
            },
        },
        host: '0.0.0.0',
        port: 8080,
    }
}