class CreateRatings < ActiveRecord::Migration[5.1]
  def change
    create_table :ratings do |t|
      t.string :descrtiption_rating
      t.integer :stars

      t.timestamps
    end
  end
end
