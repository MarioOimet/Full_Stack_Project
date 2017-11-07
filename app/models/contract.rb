class Contract < ApplicationRecord
  belongs_to :Student
  belongs_to :Business
  belongs_to :Rating, :class_name => 'Rating', :foreign_key => 'Rating_id'
  belongs_to :Enquiry, :class_name => 'Enquiry', :foreign_key = > "Enquiry_id"
end
