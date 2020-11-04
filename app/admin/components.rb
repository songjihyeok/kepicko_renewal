ActiveAdmin.register Component do
  menu parent: "level1"
  before_filter :skip_sidebar!, :only => :index
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :title, :image, :level2_id, :level1_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :image, :level2_id, :level1_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  show do
    attributes_table do
      row :image do |level1|
        image_tag(level1.image.present? ? level1.image.url : "", class: "admin-show-image", height: 150, width: 150)
      end
      row :title
      row :level2_id do |level2|
        Level2.find(level2.level2_id).title
      end
      row :level1_id do |level1|
        Level1.find(level1.level1_id).title
      end
    end
  end

   permit_params :title, :image, :level2_id, :level1_id
end
