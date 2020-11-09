ActiveAdmin.register Interviewer do
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
  column :image do |interviewer|
    image_tag(interviewer.image.present? ? interviewer.image.url : "", class: "admin-show-image", height: 150, width: 150)
  end
  column :postion
  column :name
  actions
  end



  show do
    attributes_table do
      row :image do |interviewer|
        image_tag(interviewer.image.present? ? interviewer.image.url : "", class: "admin-show-image", height: 150, width: 150)
      end
      row :position
      row :name
      row :level5_id do |interviewer|
        Level5.find(interviewer.level5_id).title
      end
    end
  end

    permit_params :image, :position, :name, :level5_id
end
