ActiveAdmin.register System do
  menu parent: "level2"
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :title, :sub_title, :main_image, :description, :level2_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :sub_title, :main_image, :description, :level2_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  # form do |f|
  #   f.inputs do
  #   f.input :level2_id, required: true
  #   f.input :title, required: true
  #   f.input :sub_title, required: true
  #   f.input :description, required: true
  #   f.input :main_image
  #   end
  #   f.actions
  # end


    show do
      attributes_table do
        row :main_image do |level2|
          image_tag(level2.main_image.present? ? level2.main_image.url : "", class: "admin-show-image", height: 150, width: 150)
        end
        row :title
        row :sub_title
        row :description
        row :button
        row :level2_id do |level2|
          Level2.find(level2.level2_id).title
        end
      end
    end

  permit_params :title,:description, :sub_title, :main_image, :level2_id, :button, :level3_id

end
