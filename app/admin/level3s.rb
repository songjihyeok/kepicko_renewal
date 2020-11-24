ActiveAdmin.register Level3 do
  before_filter :skip_sidebar!, :only => :index
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
      row :sub_description
      row :main_title
      row :sub_title
      row :slogan_first_row_first
      row :slogan_first_row_second
      row :slogan_second_row_first
      row :slogan_second_row_second
      row :slogan_third_row_first
      row :slogan_third_row_second
      row :slogan_description
      row :character_title
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

  form do |f|

    f.inputs do
      f.input :title
      f.input :description
      f.input :sub_description
      f.input :main_title
      f.input :sub_title
      f.input :slogan_first_row_first
      f.input :slogan_first_row_second
      f.input :slogan_second_row_first
      f.input :slogan_second_row_second
      f.input :slogan_third_row_first
      f.input :slogan_third_row_second
      f.input :slogan_description
      f.input :character_title
      f.input :skill_title
      f.input :skill_first_title
      f.input :skill_second_title
      f.input :first_button
      f.input :second_button
      f.input :first_package_title
      f.input :bold_package_title
      f.input :second_package_title
      f.input :overview
    end
    f.actions
  end



  permit_params :title, :description, :main_title, :sub_title, :slogan_first_row_first, :slogan_first_row_second,
  :slogan_second_row_first, :slogan_second_row_second, :slogan_third_row_first, :slogan_third_row_second, :slogan_description,
  :character_title, :skill_title, :skill_first_title, :skill_second_title, :first_button, :second_button,
  :first_package_title, :bold_package_title, :second_package_title, :sub_description, :overview

end
