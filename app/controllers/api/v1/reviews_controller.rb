class Api::V1::ReviewsController < ApplicationController

  def index
    place = Place.find(params["place_id"])
    reviews = place.reviews.all
    render json: reviews
  end

  def create
    review = Review.new(review_params)
    user = User.where(email: "#{review.email}@flatironschool.com").first
    if user.authorization_code == review.authorization_code
      review.save
      render json: review
    else
      render json: {errors: "Authorization Code Did Not Match"}
    end
    user.destroy
  end


  private

  def review_params
    params.require(:review).permit(:place_id, :email, :authorization_code, :star_rating, :cost, :bodily_impact, :recommended_for)
  end

end
