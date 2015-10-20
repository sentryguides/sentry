require "lib/custom_helpers"
require "lib/rendering_hack"


activate :blog do |blog|
  blog.prefix = "blog"
  blog.layout = "blog"
end

activate :autoprefixer

data.items.map do |index, item|
  proxy "/items/#{index}.html", "/items/template.html", :locals => { :item => item, :index => index }
end
ignore "/items/template.html"


###
# Compass
###

# Change Compass configuration
# compass_config do |config|
#   config.output_style = :compact
# end

###
# Helpers
###

helpers CustomHelpers

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Reload the browser automatically whenever files change
 configure :development do
   activate :livereload
 end




set :css_dir, 'stylesheets'

set :js_dir, 'javascripts'

set :images_dir, 'images'

sprockets.append_path File.join root, 'bower_components'

# Build-specific configuration
configure :build do

  activate :minify_css
  activate :minify_javascript

  # Enable cache buster
  activate :asset_hash

  # Use relative URLs
  activate :relative_assets

end
