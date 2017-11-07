ActiveAdmin.register Enquiry do
  permit_params :title, :content, :Category_id, :Enquiry_id
end
