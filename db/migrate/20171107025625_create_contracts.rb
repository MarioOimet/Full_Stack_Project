class CreateContracts < ActiveRecord::Migration[5.1]
  def change
    create_table :contracts do |t|
      t.string :description
      t.date :date_due

      t.timestamps
    end
  end
end
