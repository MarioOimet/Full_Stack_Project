class AddCategoryToStudent < ActiveRecord::Migration[5.1]
  def change
      add_reference :students, :Category, foreign_key: true
  end
end
