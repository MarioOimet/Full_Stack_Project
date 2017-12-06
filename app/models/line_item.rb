class LineItem < ApplicationRecord
  # validates :price, presence:true
  belongs_to :enquiry, :class_name => 'Enquiry', :foreign_key => 'Enquiry_id'
  belongs_to :contract, :class_name => 'Contract', :foreign_key => 'Contract_id'
end
