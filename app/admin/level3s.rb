ActiveAdmin.register Level3 do

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
  permit_params :title, :description, :main_title, :sub_title, :main_image, :slogan_first_row_first, :slogan_first_row_second,
  :slogan_second_row_first, :slogan_second_row_second, :slogan_third_row_first, :slogan_third_row_second, :slogan_description,
  :character_title, :characteristics, :sub_image, :skill_title, :skill_first_title, :skill_second_title

end
