ActiveAdmin.register Alumni do
  permit_params :name, :position, :company, :company_url, :photo, :feedback

  form do |f|
    inputs do
      f.input :name, as: :string
      f.input :position, as: :string
      f.input :company, as: :string
      f.input :company_url, as: :string
      f.input :photo, as: :string
      f.input :feedback, as: :text
    end
    f.actions
  end

end
