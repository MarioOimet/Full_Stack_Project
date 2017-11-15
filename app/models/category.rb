class Category < ApplicationRecord
  #has_one :Enquiry
  validates :description_category, :image, presence:true
  def name
    description_category
  end
end
