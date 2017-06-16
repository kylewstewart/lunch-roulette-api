class Api::V1::ReviewsController < ApplicationController

  def index
    place = Place.find(params["place_id"])
    reviews = place.reviews.all
    render json: reviews
  end

end
