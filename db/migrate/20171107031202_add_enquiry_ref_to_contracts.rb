class AddEnquiryRefToContracts < ActiveRecord::Migration[5.1]
  def change
    add_reference :contracts, :Enquiry, foreign_key: true
  end
end
