ActiveAdmin.register SkillSecond do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :title, :image, :description, :level3_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :image, :description, :level3_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  permit_params :title, :image, :description, :level3_id

end
