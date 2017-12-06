ActiveAdmin.register LineItem do
  permit_params :price, :Contract_id, :Enquiry_id
end
