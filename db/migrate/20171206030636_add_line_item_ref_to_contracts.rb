class AddLineItemRefToContracts < ActiveRecord::Migration[5.1]
  def change
    change_table :contracts do |t|
      add_reference :line_items, :Contract, foreign_key: true
    end
  end
end
