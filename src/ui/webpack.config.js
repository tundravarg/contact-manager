const path = require('path');
const CopyPlugin = require("copy-webpack-plugin");


module.exports = env => {
    let TARGET = path.resolve(__dirname, '../../build/ui/static')
    if (env.watch) {
        TARGET = path.resolve(__dirname, '../../build/resources/main/static')
    }
    console.log(`TARGET: ${TARGET}`);

    return {
        entry: './src/index.js',
        output: {
            filename: 'contact-manager.js',
            path: TARGET,
        },
        plugins: [
            new CopyPlugin({
                patterns: [
                    { from: "static", to: TARGET },
                ],
            }),
        ],
    };
};