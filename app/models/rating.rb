class Rating < ApplicationRecord
  #has_one :Contract
  def name
    descrtiption_rating
  end
end
