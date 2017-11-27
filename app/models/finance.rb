class Finance < ApplicationRecord
  validates :finance_rating, :cra_submission, :date_cra_submitted, presence:true

  belongs_to :business, :class_name => 'Business', :foreign_key => "Business_id"

  def name
    finance_rating
  end
end
