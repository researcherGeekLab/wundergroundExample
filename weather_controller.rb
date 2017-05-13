require ('open-uri')
require ('json')

class WeatherController < ApplicationController
    
    def index
        url = 'http://api.wunderground.com/api/ffc193d3e9ef91a7/conditions/q/zmw:00000.323.47108.json'
        url = url.force_encoding('binary')
        url=WEBrick::HTTPUtils.escape(url)
        image = JSON.parse(open(url).read)
        @main_pic = image['current_observation']['icon_url']
        
    end
    
end
