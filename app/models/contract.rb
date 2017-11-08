class Contract < ApplicationRecord
  belongs_to :student
  belongs_to :business
  belongs_to :rating #, :class_name => 'Rating', :foreign_key => 'Rating_id'
  belongs_to :enquiry #, :class_name => 'Enquiry', :foreign_key = > "Enquiry_id"
end
