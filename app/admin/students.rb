ActiveAdmin.register Student do
  permit_params :first_name_student, :last_name_student, :middle_name_student, :city_student, :province_student, :phone_number_student, :e_mail_student, :pass_phrase
  def name
    last_name_student
  end
end
