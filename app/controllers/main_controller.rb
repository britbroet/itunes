require 'httparty' #to be able to use httparty to make a call
require 'json' #this makes returned data readable

class MainController < ApplicationController
  include MainHelper, HTTParty
  def index
  	flash.now[:success] = 'Sup'
  end

  def show
  	id = params[:id]

  	response = HTTParty.get('https://itunes.apple.com/lookup?id=' + id + '&entity=song')

  	@single_track = JSON.parse(response.body)["results"]
  	@fav = Favorite.new
  end

  def search 
  	artist = params[:artist]

  	artist = verify_input(artist)

  	response = HTTParty.get('https://itunes.apple.com/search?term=' + artist)

  	@http_party_json = JSON.parse(response.body)

  	@results = @http_party_json["results"]

  	if @results.length <= 0
  		flash.now[:danger] = 'You got no results - try again.'
  	end
  end
end
