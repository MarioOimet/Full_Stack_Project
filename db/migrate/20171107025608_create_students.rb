class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :first_name_student
      t.string :last_name_student
      t.string :middle_name_student
      t.string :city_student
      t.string :province_student
      t.string :phone_number_student
      t.string :e_mail_student
      t.string :pass_phrase

      t.timestamps
    end
  end
end
