ActiveAdmin.register SkillFirst do
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
      row :image do |skill_first|
        image_tag(skill_first.image.present? ? skill_first.image.url : "", class: "admin-show-image", height: 150, width: 150)
      end
      row :title
      row :level3_id do |skill_first|
        Level3.find(skill_first.level3_id).title
      end
    end
  end



  permit_params :title,:image, :description, :level3_id

end
