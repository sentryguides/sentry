# TODO rewrite this aka I don't know ruby

module CustomHelpers
  def img_src(type, id)
    return "/images/dota/#{type}/#{id}_lg.png"
  end

  def item_tooltip(id, item)
    %Q(
      <img src="#{img_src("items", id)}" width="42.24" height="32" class="img-rounded"> #{item["dname"]}
      #{if item["desc"].empty? then "" else "<br>" + item["desc"] end}
      #{if item["attrib"].empty? then "" else "<br>" + item["attrib"] end}
    ).gsub("'", "&#39;").gsub("\r", "").gsub("\n", "")
  end

  def ability_tooltip(id, ability)
    %Q(
      <img src="#{img_src("abilities", id)}" width="32" height="32" class="img-rounded"> #{ability["dname"]}</b>
      <br>#{ability["desc"]}
      <br>#{ability["dmg"]}#{if ability["attrib"].empty? then "" else ability["attrib"] + "<br>" end}#{ability["cmb"]}
    ).gsub("'", "&#39;").gsub("\r\n", "<br>")
  end

  def item_link(id, item, content)
    %Q(<a href="#" data-toggle="tooltip" data-html="true" data-placement="auto" title='#{item_tooltip(id, item)}'>#{content}</a>)
  end

  def ability_link(id, ability, content)
    %Q(<a href="#" data-toggle="tooltip" data-html="true" data-placement="auto" title='#{ability_tooltip(id, ability)}'>#{content}</a>)
  end

  def item_icon(id, item, width, height)
    item_link(id, item, %Q(<img src="#{img_src("items", id)}" width="#{width}" height="#{height}" class="img-rounded" style="object-fit: cover">))
  end

  def ability_icon(id, ability, width, height)
    ability_link(id, ability, %Q(<img src="#{img_src("abilities", id)}" width="#{width}" height="#{height}" class="img-rounded">))
  end

  def ability(id, options = {})
    a = data["abilities"][id]
    if options[:icon]
      options[:width] = options[:height] if options[:width] == :auto
      options[:height] = options[:width] if options[:height] == :auto
      ability_icon(id, a, options[:width] || 32, options[:height] || 32)
    else
      ability_link(id, a, %Q(<img src="#{img_src("abilities", id)}" height="16" class="img-rounded"> #{a["dname"]}))
    end
  end

  def item(id, options = {})
    i = data[:items][id]
    if options[:icon]
      options[:width] = options[:height] * 1.32 if options[:width] == :auto
      options[:height] = options[:width] / 1.32 if options[:height] == :auto
      item_icon(id, i, options[:width] || 32 * 1.32, options[:height] || 32)
    else
      item_link(id, i, %Q(<img src="#{img_src("items", id)}" height="16" class="img-rounded"> #{i["dname"]}))
    end
  end

  def hero_dname(id)
    data[:heroes][id][:dname]
  end

  def markdown(source)
    Tilt[:markdown].new { source }.render
  end

  def separator
    "<!--SENTRY_CONTENT_SEPARATOR-->"
  end
end
