class AddImageToCategories < ActiveRecord::Migration[5.1]
  def change
      add_column :categories, :image, :string
  end
end
