ActiveAdmin.register Order do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#

# permit_params :name, :email, :phone, :condition, :wht,
#               :company_name, :company_address, :company_tax_id,
#               :ticket_early_bird, :ticket_regular,
#               :ticket_last_ticket, :payment_status, :payment_id,
#               :payment_total, :payment_method,
#               :payment_description, :payment_date, :event_id

permit_params do
  permitted = [:permitted, :attributes]
  permitted << :other if params[:action] == 'create' && current_user.admin?
  permitted
end

index do
  selectable_column
  column :name
  column :email
  column :condition
  column :wht
  column :ticket_early_bird
  column :ticket_regular
  column :ticket_last_ticket
  actions
end

end
