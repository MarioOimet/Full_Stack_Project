ActiveAdmin.register Contract do
  permit_params :description, :date_due, :Business_id, :Enquiry_id, :Rating_id, :Student_id
end
