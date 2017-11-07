class AddBusinessRefToContracts < ActiveRecord::Migration[5.1]
  def change
    add_reference :contracts, :Business, foreign_key: true
  end
end
