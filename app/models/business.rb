class Business < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  
  # before_action :authenticate_business!

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :enquiries

  validates :name_business, :first_name_owner, :last_name_owner, :address_business, :city_business, :province_business, :postal_code_business, :phone_number_business, :email, :password, presence:true

  def name
    name_business
  end
end
