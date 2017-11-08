class Business < ApplicationRecord
  has_many :enquiries
  #has_one :Finance
  validates :name_business, :first_name_owner, :last_name_owner, :address_business, :city_business, :province_business, :postal_code_business, :phone_number_business, :e_mail_business, :pass_word, presence:true
  validates :pass_word, :length => { :in => 4..10 }
  validates :e_mail_business, :pass_word, :uniqueness => true
  def name
    name_business
  end
end
