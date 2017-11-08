class Category < ApplicationRecord
  #has_one :Enquiry
  def name
    description_category
  end
end
