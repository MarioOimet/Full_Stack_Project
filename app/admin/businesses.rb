ActiveAdmin.register Business do
  permit_params :name_business, :first_name_owner, :last_name_owner, :middle_name_owner, :address_business, :Province_id, :city_business, :postal_code_business, :phone_number_business, :email, :password
end
