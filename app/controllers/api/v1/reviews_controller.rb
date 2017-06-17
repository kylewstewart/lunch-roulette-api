class Api::V1::ReviewsController < ApplicationController

  def index
    place = Place.find(params["place_id"])
    reviews = place.reviews.all
    render json: reviews
  end

  def create
    review = Review.create(review_params)

    render json: review

  end

  private

  def review_params
    params.require(:review).permit(:place_id, :email, :authorization_code, :star_rating, :cost, :bodily_impact, :recommended_for)
  end

end
