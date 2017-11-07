class Enquiry < ApplicationRecord
  has_one :Enquiry
  belongs_to :Business #, :class_name => 'Business', :foreign_key = > "Business_id"
  belongs_to :Category #, :class_name => 'Category', :foreign_key = > "Category_id"
end
