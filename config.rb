require "lib/rendering_hack"

###
# Config
###

set :css_dir, 'stylesheets'

set :js_dir, 'javascripts'

set :images_dir, 'images'

sprockets.append_path File.join root, 'bower_components'

sprockets.import_asset 'leaflet'

page "/404.html", :directory_index => false

###
# Extensions
###

activate :blog do |blog|
  blog.prefix = "blog"
  blog.layout = "blog"
end

activate :autoprefixer

activate :directory_indexes

###
# Dynamic Pages
###

data.items.map do |id, item|
  proxy "/items/#{id}.html", "/items/template.html", :locals => { :item => item, :id => id }
  proxy "/items/_#{id}.html", "/items/template_tooltip.html", :locals => { :item => item, :id => id }
end
ignore "/items/template.html"
ignore "/items/template_tooltip.html"

data.abilities.map do |id, ability|
  proxy "/abilities/#{id}.html", "/abilities/template.html", :locals => { :ability => ability, :id => id }
  proxy "/abilities/_#{id}.html", "/abilities/template_tooltip.html", :locals => { :ability => ability, :id => id }
end
ignore "/abilities/template.html"
ignore "/abilities/template_tooltip.html"

###
# Helpers
###

helpers do

  def youtube(id)
    %Q(<iframe width="783" height="440" src="https://www.youtube.com/embed/#{id}?rel=0" frameborder="0" allowfullscreen></iframe>)
  end


  def separator
    "<!--SENTRY_CONTENT_SEPARATOR-->"
  end

  def markdown(source)
    Tilt[:markdown].new { source }.render
  end

  def ability(id, options = {})
    a = data[:abilities][id]
    img = "/images/dota/abilities/#{id}.png"
    html = %Q(<a href="/abilities/#{id}" class="tooltip-link" data-url="/abilities/_#{id}/">)
    if options[:icon]
      options[:width] = options[:height] if options[:width] == :auto
      options[:height] = options[:width] if options[:height] == :auto
      html += %Q(
        <img src="#{img}" width="#{options[:width] || 32}" height="#{options[:height] || 32}">
      )
    else
      html += %Q(<img src="#{img}" height="16"> #{a["dname"]})
    end
    html + "</a>"
  end

  def item(id, options = {})
    i = data[:items][id]
    img = "/images/dota/items/#{id}.png"
    html = %Q(<a href="/items/#{id}" class="tooltip-link" data-url="/items/_#{id}/">)
    if options[:icon]
      options[:width] = options[:height] * 1.32 if options[:width] == :auto
      options[:height] = options[:width] / 1.32 if options[:height] == :auto
      html += %Q(
        <img src="#{img}" width="#{options[:width] || 32}" height="#{options[:height] || 32}" style="object-fit: cover">
      )
    else
      html += %Q(<img src="#{img}" height="16" style="object-fit: cover"> #{i["dname"]})
    end
    html + "</a>"
  end
end

###
# Targets
###

 configure :development do

   activate :livereload

 end

configure :build do

  activate :minify_css
  activate :minify_javascript

  # Enable cache buster
  activate :asset_hash, ignore: [/piwik\.js$/]

end
