class AddBusinessRefToEnquiries2 < ActiveRecord::Migration[5.1]
  def change
    change_table :enquiries do |t|
      t.rename :Enquiry_id, :Business_id
    end
  end
end
