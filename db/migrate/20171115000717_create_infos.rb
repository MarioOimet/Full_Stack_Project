class CreateInfos < ActiveRecord::Migration[5.1]
  def change
    create_table :infos do |t|
      t.string :about
      t.string :title
      t.string :phone_number_info
      t.string :address
      t.string :city
      t.string :province
      t.string :postal_code_info
      t.string :email_info

      t.timestamps
    end
  end
end
