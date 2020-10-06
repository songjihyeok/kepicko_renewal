ActiveAdmin.register Level4 do
  menu parent: "level4"
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

  index do
  selectable_column
  id_column

  column :title
  column :description
  actions
  end

  show do
    attributes_table do
      row :character_image do |level4|
        image_tag(level4.character_image.present? ? level4.character_image.url : "", height: 150, width: 150)
      end
      row :main_title
      row :sub_title
      row :character_title
      row :intro_title
      row :introduction
      row :composition
      row :composition_image do |level4|
        image_tag(level4.composition_image.present? ? level4.composition_image.url : "", height: 150, width: 150)
      end
      row :perfomance_big
      row :perfomance_small
      row :perfomance_image do |level4|
        image_tag(level4.perfomance_image.present? ? level4.perfomance_image.url : "", height: 150, width: 150)
      end
      row  :control_big
      row  :control_small
      row  :control_image1 do |level4|
        image_tag(level4.control_image1.present? ? level4.control_image1.url : "", height: 150, width: 150)
      end
      row  :control_image2 do
          image_tag(level4.control_image2.present? ? level4.control_image2.url : "", height: 150, width: 150)
      end
      row  :control_image3 do
          image_tag(level4.control_image3.present? ? level4.control_image3.url : "", height: 150, width: 150)
      end
      row  :control_image4 do
          image_tag(level4.control_image4.present? ? level4.control_image4.url : "", height: 150, width: 150)
      end
      row  :intro_title_small
      row  :description
      row  :title
    end
  end







  permit_params :main_title, :sub_title, :character_title, :character_image, :intro_title,
                :introduction, :composition, :composition_image, :perfomance_big, :perfomance_small,
                :perfomance_image, :control_big, :control_small, :control_image1,:control_image2,
                :control_image3, :control_image4, :intro_title_small, :description, :title
end
