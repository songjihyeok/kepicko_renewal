ActiveAdmin.register TechComponent do
  before_filter :skip_sidebar!, :only => :index
  menu parent: "level0"
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :title, :image, :level1_id, :level0_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :image, :level1_id, :level0_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  show do
    attributes_table do
      row :image do |tech_component|
        image_tag(tech_component.image.present? ? tech_component.image.url : "", class: "admin-show-image", height: 150, width: 150)
      end
      row :title
      row :level1_id do |level1|
        Level1.find(level1.level1_id).title
      end
      row :level0_id do |level0|
        Level0.find(level0.level0_id).title
      end
    end
  end

  permit_params :title, :image, :level1_id, :level0_id
end
