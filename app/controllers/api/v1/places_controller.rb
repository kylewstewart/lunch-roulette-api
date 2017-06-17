class Api::V1::PlacesController < ApplicationController

  def index
    places = Place.all
    render json: places
  end

  def create
    filters = params['filters']

    reviews = Review.where(cost: filters["cost"], bodily_impact: filters['bodily_impact'], recommended_for: filters['recommended_for'])
    places = reviews.map{|review| Place.find(review.place_id)}.uniq.shuffle
    data = places.map do |place|
      avg_star = Float(place.reviews.average(:star_rating))
      mode_cost = Review.where(place_id: place.id).group(:cost).count.max_by{|k, v| v}
      mode_bodily_impact = Review.where(place_id: place.id).group(:bodily_impact).count.max_by{|k, v| v}
      mode_recommended_for = Review.where(place_id: place.id).group(:recommended_for).count.max_by{|k, v| v}
      placeObject = {
          place_id: place.id,
          name: place.name,
          location: place.location,
          image: place.image,
          authorization_code: "password",
          avg_star_rating: avg_star,
          mode_cost: mode_cost,
          mode_bodily_impact: mode_bodily_impact,
          mode_recommended_for: mode_recommended_for
        }
    end

    render json: data

  end

end
