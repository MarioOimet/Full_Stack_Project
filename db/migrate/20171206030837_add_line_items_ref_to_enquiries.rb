class AddLineItemsRefToEnquiries < ActiveRecord::Migration[5.1]
  def change
    change_table :line_items do |t|
      add_reference :line_items, :Enquiries, foreign_key: true
    end
  end
end
