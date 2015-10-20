require 'yaml'
require 'json'
require 'uri'
require 'open-uri'

task default: %w[data]

task :data do

  # items
  open('data/items.yml', 'wb') do |file|
    items = JSON.parse(open('http://www.dota2.com/jsfeed/itemdata').read)["itemdata"]
    file << YAML.dump(items)
    items.map { |k, v| "http://cdn.dota2.com/apps/dota2/images/items/#{k}_lg.png" }.each do |url|
      filename = 'source/images/dota/items/' + File.basename(URI.parse(url).path).sub("_lg", "")
      IO.copy_stream(open(url), filename)
      puts "wrote file #{filename}"
    end
  end

  # heroes
  open('data/heroes.yml', 'wb') do |file|
    heroes = JSON.parse(open('http://www.dota2.com/jsfeed/heropediadata?feeds=herodata').read)["herodata"]
    file << YAML.dump(heroes)
    heroes.map { |k, v| "http://cdn.dota2.com/apps/dota2/images/heroes/#{k}_lg.png" }.each do |url|
      filename = 'source/images/dota/heroes/' + File.basename(URI.parse(url).path).sub("_lg", "")
      IO.copy_stream(open(url), filename)
      puts "wrote file #{filename}"
    end
  end

  # abilities
  open('data/abilities.yml', 'wb') do |file|
    abilities = JSON.parse(open('http://www.dota2.com/jsfeed/abilitydata').read)["abilitydata"]
    file << YAML.dump(abilities)
    abilities.map { |k, v| "http://cdn.dota2.com/apps/dota2/images/abilities/#{k}_lg.png" }.each do |url|
      filename = 'source/images/dota/abilities/' + File.basename(URI.parse(url).path).sub("_lg", "")
      IO.copy_stream(open(url), filename)
      puts "wrote file #{filename}"
    end
  end

end
