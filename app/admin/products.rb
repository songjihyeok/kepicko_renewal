ActiveAdmin.register Product do
  before_filter :skip_sidebar!, :only => :index
  menu parent: "level4"
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :title, :sub_title, :image, :level4_id, :level5_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :sub_title, :image, :level4_id, :level5_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  show do
    attributes_table do
      row :image do |product|
        image_tag(product.image.present? ? product.image.url : "", class: "admin-show-image", height: 150, width: 150)
      end
      row :title
      row :sub_title
      row :level4_id do |product|
        Level4.find(product.level4_id).title
      end
      row :level5_id do |product|
        Level5.find(product.level5_id).title
      end
      row :button
    end
  end



  permit_params :title, :sub_title, :image, :level4_id, :level5_id, :button
end
