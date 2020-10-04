ActiveAdmin.register Level4 do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :main_title, :sub_title, :character_title, :character_image, :intro_title, :introduction, :composition, :composition_image, :perfomance_big, :perfomance_small, :perfomance_image, :control_big, :control_small, :control_image1, :control_image2, :control_image3, :control_image4, :intro_title_small
  #
  # or
  #
  # permit_params do
  #   permitted = [:main_title, :sub_title, :character_title, :character_image, :intro_title, :introduction, :composition, :composition_image, :perfomance_big, :perfomance_small, :perfomance_image, :control_big, :control_small, :control_image1, :control_image2, :control_image3, :control_image4, :intro_title_small]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  permit_params :main_title, :sub_title, :character_title, :character_image, :intro_title,
                :introduction, :composition, :composition_image, :perfomance_big, :perfomance_small,
                :perfomance_image, :control_big, :control_small, :control_image1,:control_image2,
                :control_image3, :control_image4, :intro_title_small, :description
end
