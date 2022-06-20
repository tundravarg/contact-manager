const path = require('path');

module.exports = {
    entry: './src/index.js',
    output: {
        filename: 'contact-manager.js',
        path: path.resolve(__dirname, '../../build/ui/static'),
    },
};