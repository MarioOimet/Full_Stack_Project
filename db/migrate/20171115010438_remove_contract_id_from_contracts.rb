class RemoveContractIdFromContracts < ActiveRecord::Migration[5.1]
  def change
      remove_column :contracts, :Contract_id, :integer
  end
end
