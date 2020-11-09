ActiveAdmin.register Level1 do
  before_filter :skip_sidebar!, :only => :index
  menu parent: "level1"
  
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :title, :description, :main_description
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :description, :main_description]
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
        row :image do |level1|
          image_tag(level1.image.present? ? level1.image.url : "", class: "admin-show-image", height: 150, width: 150)
        end
        row :title
        row :description
        row :main_description
        row :button
      end
    end

 permit_params :title, :description, :main_description, :image, :button
end
