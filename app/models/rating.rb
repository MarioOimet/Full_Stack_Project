class Rating < ApplicationRecord
  validates :description_rating, :stars, presence:true
  def name
    descrtiption_rating
  end
end
