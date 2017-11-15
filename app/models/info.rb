class Info < ApplicationRecord
  validates :about, :title, :phone_number_info, :address, :city, :province, :postal_code_info, :email_info, presence:true
end
