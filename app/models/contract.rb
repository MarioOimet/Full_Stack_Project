class Contract < ApplicationRecord

  belongs_to :student, :class_name => 'Student', :foreign_key => 'Student_id'
  belongs_to :rating, :class_name => 'Rating', :foreign_key => 'Rating_id'
  has_many :enquiries

  # validates :description, presence:true

end
