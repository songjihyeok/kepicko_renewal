ActiveAdmin.register Level2 do
  menu parent: "level2"
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :title, :description, :main_title, :sub_title, :main_image
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :description, :main_title, :sub_title, :main_image]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  show do
    attributes_table do
      row :main_image do |level2|
        image_tag(level2.main_image.present? ? level2.main_image.url : "", class: "admin-show-image", height: 150, width: 150)
      end
      row :title
      row :description
      row :main_title
      row :sub_title
    end
  end

  form do |f|
    f.inputs do
    f.input :title, required: true
    f.input :description, required: true
    f.input :main_title, required: true
    f.input :sub_title, required: true
    f.input :main_image
    end
    f.actions
  end

  index do
  selectable_column
  id_column

  column :title
  column :description

  actions
  end




  permit_params :title,:description, :main_title, :sub_title, :main_image

end
