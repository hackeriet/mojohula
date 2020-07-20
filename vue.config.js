// This file sets up the Vue.js developer environment so it uses the
// Mojolicious backend for accessing the OpenAPI endpoints.

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
