class AddServiceFeeColumnToCategories < ActiveRecord::Migration[5.1]
  def change
    add_column :categories, :service_fee, :decimal
  end
end
