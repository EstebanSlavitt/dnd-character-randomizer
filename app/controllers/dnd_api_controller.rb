require "net/http"
require "json"

class DndApiController < ApplicationController
  def fetch_data
    endpoint = params[:endpoint]
    url = URI("https://www.dnd5eapi.co/api/#{endpoint}")

    response = Net::HTTP.get(url)
    render json: JSON.parse(response)
  end
end
