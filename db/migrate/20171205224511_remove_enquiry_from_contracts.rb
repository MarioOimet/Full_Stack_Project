class RemoveEnquiryFromContracts < ActiveRecord::Migration[5.1]
  def change
    change_table :contracts do |t|
      t.remove :Enquiry_id
    end
  end
end
