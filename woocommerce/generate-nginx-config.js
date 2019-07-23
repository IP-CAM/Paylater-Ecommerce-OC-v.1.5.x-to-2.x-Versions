const nunjucks = require("nunjucks");
const yaml = require("js-yaml");
const fs = require("fs");

function generateNginxConfig() {
    const result = nunjucks.render("woocommerce.conf.njk", {
        build_directory: __dirname + "/upload/",
        host: process.env.HOST,
        port: process.env.PORT
    });
    const outputFd = fs.openSync("/etc/nginx/conf.d/woocommerce.conf", "w");
    fs.writeSync(outputFd, result);
}

generateNginxConfig();
