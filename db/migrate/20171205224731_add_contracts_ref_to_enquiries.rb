class AddContractsRefToEnquiries < ActiveRecord::Migration[5.1]
  def change
    change_table :enquiries do |t|
      add_reference :enquiries, :Contract, foreign_key: true
    end
  end
end
