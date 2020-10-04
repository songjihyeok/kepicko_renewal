ActiveAdmin.register System do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :title, :sub_title, :main_image, :description, :level2_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :sub_title, :main_image, :description, :level2_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  # form do |f|
  #   f.inputs do
  #   f.input :level2_id, required: true
  #   f.input :title, required: true
  #   f.input :sub_title, required: true
  #   f.input :description, required: true
  #   f.input :main_image
  #   end
  #   f.actions
  # end

  permit_params :title,:description, :sub_title, :sub_title, :main_image, :level2_id

end
