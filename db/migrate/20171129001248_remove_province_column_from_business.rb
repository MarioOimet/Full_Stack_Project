class RemoveProvinceColumnFromBusiness < ActiveRecord::Migration[5.1]
  def change
    change_table :businesses do |t|
      t.remove :province_business
    end
  end
end
