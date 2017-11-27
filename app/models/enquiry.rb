class Enquiry < ApplicationRecord

  belongs_to :business, :class_name => 'Business', :foreign_key => "Business_id"
  belongs_to :category, :class_name => 'Category', :foreign_key => "Category_id"

  validates :title, :content, presence:true

  def self.keyword_search(keywords)
    keywords = "%" + keywords + "%"
    @enquiry_found = Enquiry.includes(:category, :business).where("title LIKE ? OR content LIKE ?", keywords, keywords)
  end
end
