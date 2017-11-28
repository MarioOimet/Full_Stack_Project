class AddProvinceRefToBusiness < ActiveRecord::Migration[5.1]
  def change
    add_reference :businesses, :Province, foreign_key: true
  end
end
