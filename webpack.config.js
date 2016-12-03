var ExtractTextPlugin = require("extract-text-webpack-plugin");
var CopyPlugin = require("copy-webpack-plugin");

module.exports = {
	entry: ["./web/static/css/app.scss", "./web/static/js/app.js"],
	output: { path: "./priv/static", filename: "js/app.js" },

	resolve: {
		extensions: ['', '.js', '.vue']
	},

	module: {
		loaders: [
			{ test: /\.vue$/, loader: "vue" },
			{ test: /\.js$/, loader: "babel", exclude: /node_modules/, query: { presets: ["es2015"], plugins: ["transform-runtime"]}, comments: false },
			{ test: /\.s?css$/, loader: ExtractTextPlugin.extract("style", ["css-loader?-url", "sass"]) }
		]
	},

	plugins: [
		new ExtractTextPlugin("css/app.css"),
		new CopyPlugin([{ from: "./web/static/assets" }])
	],

	vue: {
		loaders: {
			css: ExtractTextPlugin.extract("style", ["css-loader?-url", "sass"])
		}
	}
};