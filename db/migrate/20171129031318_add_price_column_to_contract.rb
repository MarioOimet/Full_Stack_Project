class AddPriceColumnToContract < ActiveRecord::Migration[5.1]
  def change
    add_column :contracts, :donation, :decimal
  end
end
