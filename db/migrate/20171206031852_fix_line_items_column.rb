class FixLineItemsColumn < ActiveRecord::Migration[5.1]
  def change
    change_table :line_items do |t|
      t.rename :Enquiries_id, :Enquiry_id
    end
  end
end
