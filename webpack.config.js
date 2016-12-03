var ExtractTextPlugin = require("extract-text-webpack-plugin");
var CopyPlugin = require("copy-webpack-plugin");
var Webpack = require('webpack');

// __________________________________ BASE-CONFIG __________________________________ 

var webpackConfig = {
	entry: ["./web/static/css/app.scss", "./web/static/js/app.js"],
	output: { path: "./priv/static", filename: "js/app.js" },

	resolve: {
		extensions: ['', '.js', '.vue']
	},

	module: {
		loaders: [
			{ test: /\.vue$/, loader: "vue" },
			{ test: /\.js$/, loader: "babel", exclude: /node_modules/, query: { presets: ["es2015"], plugins: ["transform-runtime"]}, comments: false }
		]
	},

	plugins: [
		new CopyPlugin([{ from: "./web/static/assets" }])
	],

	vue: {
		loaders: {}
	}
};



if(process.env.NODE_ENV.indexOf('development') > -1 ) {
	// __________________________________ DEVELOPMENT __________________________________ 

	console.log("+++ USING DEFAULT CONFIG +++ " + process.env.NODE_ENV );

	webpackConfig.devtool = 'cheap-eval-source-map';
	webpackConfig.output.publicPath = 'http://localhost:4001/';
	webpackConfig.vue.loaders.css = "style!css-loader?-url!sass";
	webpackConfig.module.loaders.push(
		{ test: /\.s?css$/, loader: "style!css-loader?-url!sass" }
	);
	webpackConfig.devServer = {
		contentBase: '/',
		hot: true,
		port: 4001,
		inline: true,
		progress: true
	};

} else {
	// __________________________________ PRODUCTION __________________________________ 

	console.log("+++ USING PRODUCTION CONFIG +++ " + process.env.NODE_ENV );

	webpackConfig.plugins.push(new Webpack.optimize.DedupePlugin());
	webpackConfig.vue.loaders.css = ExtractTextPlugin.extract("style", ["css-loader?-url", "sass"]);
	webpackConfig.module.loaders.push(
		{ test: /\.s?css$/, loader: ExtractTextPlugin.extract("style", ["css-loader?-url", "sass"]) }
	);
	webpackConfig.plugins.push(new ExtractTextPlugin("css/app.css"));
}

module.exports = webpackConfig;