class RemoveDateFromContract < ActiveRecord::Migration[5.1]
  def change
    change_table :contracts do |t|
      t.remove :date_due
    end
  end
end
