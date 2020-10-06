ActiveAdmin.register SkillSecond do
  menu parent: "level3"
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
  show do
    attributes_table do
      row :image do |skill_second|
        image_tag(skill_second.image.present? ? skill_second.image.url : "", class: "admin-show-image", height: 150, width: 150)
      end
      row :title
      row :level3_id do |skill_second|
        Level3.find(skill_second.level3_id).title
      end
    end
  end


  permit_params :title, :image, :description, :level3_id

end
