class Finance < ApplicationRecord
  belongs_to :business, :class_name => 'Business', :foreign_key => "Business_id"
  def name
    finance_rating
  end
end
