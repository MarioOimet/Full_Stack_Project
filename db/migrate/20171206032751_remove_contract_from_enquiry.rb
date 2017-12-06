class RemoveContractFromEnquiry < ActiveRecord::Migration[5.1]
  def change
    change_table :enquiries do |t|
      t.remove :Contract_id
    end
  end
end
