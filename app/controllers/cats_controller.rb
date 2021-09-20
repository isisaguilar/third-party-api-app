class CatsController < ApplicationController

  def index
    response = HTTP.get("https://api.thecatapi.com/v1/images/search")

    cats = response.parse(:json)
    render json: cats
 
 end

end
