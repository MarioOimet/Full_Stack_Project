class Contract < ApplicationRecord
  validates :description, presence:true
  belongs_to :student, :class_name => 'Student', :foreign_key => 'Student_id'
  #belongs_to :business, :class_name => 'Business', :foreign_key => 'Business_id'
  belongs_to :rating, :class_name => 'Rating', :foreign_key => 'Rating_id'
  belongs_to :enquiry, :class_name => 'Enquiry', :foreign_key => "Enquiry_id"
end
