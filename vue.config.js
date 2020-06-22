module.exports = {
  devServer: {
    proxy: { '^/v2/': {
      target: "http://localhost:3000",
      pathRewrite: { "^/v2/": "/v2/" },
      changeOrigin: true,
      logLevel: "debug"
      }
    }
  }
}
