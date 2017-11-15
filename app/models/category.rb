class Category < ApplicationRecord
  #has_one :Enquiry
  mount_uploader :image, ImageUploader
  validates :description_category, :image, presence:true
  def name
    description_category
  end
end
