ActiveAdmin.register Level3 do
  menu parent: "level3"
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :title, :description, :main_title, :sub_title, :main_image, :slogan_first_row_first, :slogan_first_row_second, :slogan_second_row_first, :slogan_second_row_second, :slogan_third_row_first, :slogan_third_row_second, :slogan_description, :character_title, :characteristics, :sub_image, :skill_title, :skill_first_title, :skill_second_title
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :description, :main_title, :sub_title, :main_image, :slogan_first_row_first, :slogan_first_row_second, :slogan_second_row_first, :slogan_second_row_second, :slogan_third_row_first, :slogan_third_row_second, :slogan_description, :character_title, :characteristics, :sub_image, :skill_title, :skill_first_title, :skill_second_title]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  index do
  selectable_column
  id_column

  column :title
  column :description
  actions
  end

  show do
    attributes_table do
      row :title
      row :description
      row :main_title
      row :sub_title
      row :main_image do |level3|
        image_tag(level3.main_image.present? ? level3.main_image.url : "", class: "admin-show-image", height: 150, width: 150)
      end
      row :slogan_first_row_first
      row :slogan_first_row_second
      row :slogan_second_row_first
      row :slogan_second_row_second
      row :slogan_third_row_first
      row :slogan_third_row_second
      row :slogan_description
      row :character_title
      row :characteristics do |level3|
        image_tag(level3.characteristics.present? ? level3.characteristics.url : "", class: "admin-show-image", height: 150, width: 150)
      end
      row :sub_image do |level3|
        image_tag(level3.sub_image.present? ? level3.sub_image.url : "", class: "admin-show-image", height: 150, width: 150)
      end
      row :skill_title
      row :skill_first_title
      row :skill_second_title
      row :first_button
      row :second_button
      row :first_package_title
      row :bold_package_title
      row :second_package_title
    end
  end




  permit_params :title, :description, :main_title, :sub_title, :main_image, :slogan_first_row_first, :slogan_first_row_second,
  :slogan_second_row_first, :slogan_second_row_second, :slogan_third_row_first, :slogan_third_row_second, :slogan_description,
  :character_title, :characteristics, :sub_image, :skill_title, :skill_first_title, :skill_second_title, :first_button, :second_button,
  :first_package_title, :bold_package_title, :second_package_title

end
