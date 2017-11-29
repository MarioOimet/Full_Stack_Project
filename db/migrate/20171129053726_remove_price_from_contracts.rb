class RemovePriceFromContracts < ActiveRecord::Migration[5.1]
  def change
    change_table :contracts do |t|
      t.remove :donation
    end
  end
end
