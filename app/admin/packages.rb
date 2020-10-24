ActiveAdmin.register Package do
  menu parent: "level3"
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :image, :title, :level3_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:image, :title, :level3_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  show do
    attributes_table do
      row :image do |package|
        image_tag(package.image.present? ? package.image.url : "", class: "admin-show-image", height: 150, width: 150)
      end
      row :title
      row :level3_id do |package|
        Level3.find(package.level3_id).title
      end
      row :level4_id do |package|
        Level4.find(package.level4_id).title
      end
    end
  end





    permit_params :image, :title, :level3_id, :level4_id

end
