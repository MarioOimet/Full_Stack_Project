class CreateFinances < ActiveRecord::Migration[5.1]
  def change
    create_table :finances do |t|
      t.string :finance_rating
      t.string :cra_submission
      t.date :date_cra_submitted

      t.timestamps
    end
  end
end
