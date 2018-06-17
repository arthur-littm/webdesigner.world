ActiveAdmin.register Resource do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
  permit_params :name, :url, :description, :category_id, :photo

  index do
    selectable_column
    column :id
    column :name
    column :url
    column :category
    actions
  end

end
