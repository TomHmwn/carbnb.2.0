module.exports = {
  content: [
    './app/views/**/*.html.erb',
    './app/helpers/**/*.rb',
    './app/assets/stylesheets/**/*.css',
    './app/javascript/**/*.js',
    './app/views/**/*',
  ],
  theme: {
    extend: {
        backgroundImage: {
            'banner-mercedes': "url('mono-filter-car.png')"
        }
    }
  },
}
