const mix = require('laravel-mix');

/*
 |--------------------------------------------------------------------------
 | Mix Asset Management
 |--------------------------------------------------------------------------
 |
 | Mix provides a clean, fluent API for defining some Webpack build steps
 | for your Laravel application. By default, we are compiling the Sass
 | file for the application as well as bundling up all the JS files.
 |
 */

mix.js('resources/js/app.js', 'public/js')
    .js('resources/js/custom.js', 'public/js')
    .js('resources/js/login.js', 'public/js')
    .js('resources/js/settings.js', 'public/js')
    .js('resources/js/channels.js', 'public/js')
    .js('resources/js/live-streams.js', 'public/js')
    .js('resources/js/podcast.js', 'public/js')
    .js('resources/js/broadcaster.js', 'public/js')
    .js('resources/js/viewer.js', 'public/js')
    .js('resources/js/view.js', 'public/js')
    .js('resources/js/history.js', 'public/js')
    .js('resources/js/search.js', 'public/js')
    .js('resources/js/loademoji.js', 'public/js')
    .js('resources/js/emoji/config.js', 'public/js/emoji')
    .js('resources/js/emoji/util.js', 'public/js/emoji')
    .js('resources/js/emoji/jquery.emojiarea.js', 'public/js/emoji')
    .js('resources/js/emoji/emoji-picker.js', 'public/js/emoji')
mix.postCss('resources/css/emoji/emoji.css', 'public/css')
   .postCss('resources/css/spinkit.css', 'public/css')
    // .js('resources/js/bootstrap-tagsinput.js', 'public/js')
    // .js('resources/js/plugins-jquery.js', 'public/js')
    /*.styles(['resources/css/osahan.css'], 'public/css/app.css')
    .styles(['resources/css/dropzone.css'], 'public/css/dropzone.css')
    .styles(['resources/css/bootstrap-tagsinput.css'], 'public/css/bootstrap-tagsinput.css')
    .styles(['resources/css/admin/style.css'], 'public/css/admin/styles.css')*/;
