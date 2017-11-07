class AddBusinessRefToFinances < ActiveRecord::Migration[5.1]
  def change
    add_reference :finances, :Business, foreign_key: true
  end
end
