class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.integer :restaurant_id
      t.string :email
      t.string :authorization_code
      t.integer :star_rating
      t.string :cost
      t.string :bodily_impact
      t.string :recommended_for

      t.timestamps
    end
  end
end
