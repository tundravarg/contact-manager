const path = require('path');
const CopyPlugin = require("copy-webpack-plugin");

const TARGET = path.resolve(__dirname, '../../build/ui/static')

module.exports = {
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