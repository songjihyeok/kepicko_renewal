ActiveAdmin.register Lv5Flatimage do
  before_filter :skip_sidebar!, :only => :index
  menu parent: "level5"
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :image, :position, :name, :level5_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:image, :position, :name, :level5_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  index do
    selectable_column
    id_column

    column :mainimage do |image|
      image_tag(image.mainimage.present? ? image.mainimage&.url : "" ,class: "admin-show-image", width: 100, height:100)
    end

    column :mobileimage do |image|
      image_tag(image.mobileimage.present? ? image.mobileimage&.url : "" ,class: "admin-show-image", width: 100, height:100)
    end
    column :level5_id do |image|
      Level5.find(image.level5_id).title
    end
    actions
  end


  show do
    attributes_table do
      row :mainimage do |image|
        image_tag(image.mainimage.present? ? image.mainimage&.url : "" ,class: "admin-show-image", width: 300, height:300)
      end

      row :mobileimage do |image|
        image_tag(image.mobileimage.present? ? image.mobileimage&.url : "" ,class: "admin-show-image", width: 300, height:300)
      end
      row :level5_id do |image|
        Level5.find(image.level5_id).title
      end
    end
  end

    permit_params :mainimage, :mobileimage, :level5_id
end
