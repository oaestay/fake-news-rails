ActiveAdmin.register Entry do
  permit_params :title, :summary, :body
end
