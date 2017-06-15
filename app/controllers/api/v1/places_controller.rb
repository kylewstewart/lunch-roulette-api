class Api::V1::PlacesController < ApplicationController

  def index
    places = Places.all
    render json: places
  end

end
