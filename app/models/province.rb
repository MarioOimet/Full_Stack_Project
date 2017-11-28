class Province < ApplicationRecord
  validates :name, :gst, :pst, presence:true
end
