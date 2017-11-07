class CreateBusinesses < ActiveRecord::Migration[5.1]
  def change
    create_table :businesses do |t|
      t.string :name_business
      t.string :first_name_owner
      t.string :last_name_owner
      t.string :middle_name_owner
      t.string :address_business
      t.string :city_business
      t.string :province_business
      t.string :postal_code_business
      t.string :phone_number_business
      t.string :e_mail_business
      t.string :pass_word

      t.timestamps
    end
  end
end
