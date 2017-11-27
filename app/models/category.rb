class Category < ApplicationRecord
  has_many :students
  has_many :enquiries

  mount_uploader :image, ImageUploader

  validates :description_category, :image, presence:true

  def name
    description_category
  end
end
