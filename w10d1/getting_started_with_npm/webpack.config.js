var path = require('path');

module.exports = {
    entry: "./app.jsx",
    devtool: 'source-map',
    module: {
        rules: [
            {
                test: [/\.jsx?$/],
                exclude: /(node_modules)/,
                use: {
                    loader: 'babel-loader',
                    query: {
                        presets: ['@babel/env', '@babel/react']
                    }
                },
            }
        ]
    },
    resolve: {
        extensions: ['.js', '.jsx', '*']
    }
};