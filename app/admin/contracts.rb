ActiveAdmin.register Contract do
  permit_params :description, :date_due, :Contract_id, :Enquiry_id, :Rating_id, :Student_id
end
