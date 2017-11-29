class Province < ApplicationRecord
  validates :name, :gst, :pst, presence:true

  has_many :businesses
end
