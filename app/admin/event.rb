ActiveAdmin.register Event do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :name, :start_date, :period, :max_price, :low_price, :url, :url_gallery

index do
  selectable_column
  column :name
  column :start_date
  column :period
  column :url
  actions
end

end
