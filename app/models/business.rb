class Business < ApplicationRecord
  has_many :contracts
  has_one :Enquiry
  has_one :Finance
end
