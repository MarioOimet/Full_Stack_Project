ActiveAdmin.register Enquiry do
  permit_params :title, :content, :Category_id, :Business_id, :Contract_id
end
