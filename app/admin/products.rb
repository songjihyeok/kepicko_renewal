ActiveAdmin.register Product do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :title, :sub_title, :image, :level4_id, :level5_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :sub_title, :image, :level4_id, :level5_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  permit_params :title, :sub_title, :image, :level4_id, :level5_id
end
