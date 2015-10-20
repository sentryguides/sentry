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

data.abilities.map do |index, ability|
  proxy "/abilities/#{index}.html", "/abilities/template.html", :locals => { :ability => ability, :index => index }
end
ignore "/abilities/template.html"

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

helpers do
  def separator
    "<!--SENTRY_CONTENT_SEPARATOR-->"
  end

  def markdown(source)
    Tilt[:markdown].new { source }.render
  end

  def ability(id, options = {})
    a = data[:abilities][id]
    img = "/images/dota/abilities/#{id}.png"

    tooltip = %Q(
      <img src="#{img}" width="32" height="32"> #{a["dname"]}</b>
      <br>#{a["desc"]}
      <br>#{a["dmg"]}#{if a["attrib"].empty? then "" else a["attrib"] + "<br>" end}#{a["cmb"]}
    ).gsub("'", "&#39;").gsub("\r", "").gsub("\n", "")

    html = %Q(<a href="/abilities/#{id}.html" class="tooltip-link" data-toggle="tooltip" data-html="true" data-placement="bottom" title='#{tooltip}'>)

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

    tooltip = %Q(
      <img src="#{img}" width="42.24" height="32"> #{i["dname"]}
      #{if i["desc"].empty? then "" else "<br>" + i["desc"] end}
      #{if i["attrib"].empty? then "" else "<br>" + i["attrib"] end}
    ).gsub("'", "&#39;").gsub("\r", "").gsub("\n", "")

    html = %Q(<a href="/items/#{id}.html" class="tooltip-link" data-toggle="tooltip" data-html="true" data-placement="bottom" title='#{tooltip}'>)

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
