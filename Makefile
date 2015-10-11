all: data deps

deps:
	git clone -b v4-dev https://github.com/twbs/bootstrap.git _sass/bootstrap

data:
	curl http://www.dota2.com/jsfeed/itemdata | ruby -ryaml -rjson -e 'puts YAML.dump(JSON.parse(STDIN.read)["itemdata"])' > data/items.yml
	curl http://www.dota2.com/jsfeed/heropediadata?feeds=herodata | ruby -ryaml -rjson -e 'puts YAML.dump(JSON.parse(STDIN.read)["herodata"])' > data/heroes.yml
	curl http://www.dota2.com/jsfeed/abilitydata | ruby -ryaml -rjson -e 'puts YAML.dump(JSON.parse(STDIN.read)["abilitydata"])' > data/abilities.yml

assets:
	files=`ruby -ryaml -e 'puts YAML.load_file("./data/items.yml").map { |k, v| "http://cdn.dota2.com/apps/dota2/images/items/#{k}_lg.png" }'` && \
	cd source/images/dota/items/ && \
	echo $$files | xargs -n 1 curl -O
	files=`ruby -ryaml -e 'puts YAML.load_file("./data/heroes.yml").map { |k, v| "http://cdn.dota2.com/apps/dota2/images/heroes/#{k}_lg.png" }'` && \
	cd source/images/dota/heroes/ && \
	echo $$files | xargs -n 1 curl -O
	files=`ruby -ryaml -e 'puts YAML.load_file("./data/abilities.yml").map { |k, v| "http://cdn.dota2.com/apps/dota2/images/abilities/#{k}_lg.png" }'` && \
	cd source/images/dota/abilities/ && \
	echo $$files | xargs -n 1 curl -O
