class FixColumnNames < ActiveRecord::Migration[5.1]
  def change
    change_table :businesses do |t|
      t.rename :e_mail_business, :email
      t.rename :pass_word, :password
    end
  end
end
