class RemoveEmailAndPasswordFromBusiness < ActiveRecord::Migration[5.1]
  def change
    change_table :businesses do |t|
      t.remove :email
      t.remove :password
    end
  end
end
