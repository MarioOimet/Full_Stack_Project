ActiveAdmin.register Info do
  permit_params :about, :title, :phone_number_info, :address, :city, :province, :postal_code_info, :email_info
end
