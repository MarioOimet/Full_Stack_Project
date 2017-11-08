class Business < ApplicationRecord
  #has_many :contracts
  #has_one :Enquiry
  #has_one :Finance
  def name
    name_business
  end
end
