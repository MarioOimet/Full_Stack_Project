class AddBusinessRefToEnquiries < ActiveRecord::Migration[5.1]
  def change
    add_reference :enquiries, :Business, foreign_key: true
  end
end
