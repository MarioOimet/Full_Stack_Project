class Enquiry < ApplicationRecord
  validates :title, :content, presence:true
  #has_one :Enquiry
  belongs_to :business, :class_name => 'Business', :foreign_key => "Business_id"
  belongs_to :category, :class_name => 'Category', :foreign_key => "Category_id"
end
