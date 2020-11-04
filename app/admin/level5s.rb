ActiveAdmin.register Level5 do
  menu parent: "level5"
  before_filter :skip_sidebar!, :only => :index
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :title, :description, :main_title, :sub_title, :main_image, :awards, :main_description, :date, :installation, :installation_image, :feature, :feature_small_title, :feature_image1, :feature_image2, :feature_image3, :performance_title, :performance_detail, :comparison_title, :comparison_image, :interview_title, :interview_main_title, :interview_detail, :youtube_url
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :description, :main_title, :sub_title, :main_image, :awards, :main_description, :date, :installation, :installation_image, :feature, :feature_small_title, :feature_image1, :feature_image2, :feature_image3, :performance_title, :performance_detail, :comparison_title, :comparison_image, :interview_title, :interview_main_title, :interview_detail, :youtube_url]
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
      row :main_image do |level5|
        iframe(src:level5.main_image ,class: "admin-show-image", height: 500, width: 500)
      end
      row :title
      row :description
      row :main_title
      row :sub_title
      row :awards
      row :main_description
      row :date
      row :installation
      row :installation_small_title
      row :installation_image do |level5|
        image_tag(level5.installation_image.present? ? level5.installation_image.url : "" ,class: "admin-show-image", width: 300, height:300)
      end
      row :feature
      row :feature_small_title
      row :feature_image1 do |level5|
        image_tag(level5.feature_image1.present? ? level5.feature_image1&.url : "",class: "admin-show-image", width: 300, height:300)
      end
      row :feature_image2 do |level5|
        image_tag(level5.feature_image2.present? ? level5.feature_image2&.url : "" ,class: "admin-show-image", width: 300, height:300)
      end
      row :feature_image3 do |level5|
        image_tag(level5.feature_image3.present? ? level5.feature_image3&.url : "" ,class: "admin-show-image", width: 300, height:300)
      end
      row :performance_title
      row :performance_detail
      row :comparison_title
      row :comparison_image do |level5|
        image_tag(level5.comparison_image.present? ? level5.comparison_image&.url : "" ,class: "admin-show-image", width: 300, height:300)
      end
      row :interview_title
      row :interview_main_title
      row :interview_detail
      row :youtube_url
      row :first_button
      row :second_button
    end

  end




  form do |f|

    f.inputs do
      f.input :title
      f.input :description
      f.input :main_title
      f.input :sub_title
      f.input :first_button
      f.input :second_button
      f.input :main_image
      f.input :mobile_main_image
      f.input :awards
      f.input :main_description
      f.input :date
      f.input :installation
      f.input :installation_small_title
      f.input :feature
      f.input :feature_small_title
      f.input :performance_title
      f.input :performance_detail
      f.input :customer_benefit_title
      f.input :customer_benefit_detail
      f.input :comparison_title
      f.input :interview_title
      f.input :interview_main_title
      f.input :interview_detail
      f.input :youtube_url
    end

    f.actions
  end

  member_action :delete_the_image, method: :delete do
    @pic = ActiveStorage::Attachment.find(params[:id])
    @pic.purge_later
    redirect_back(fallback_location: edit_admin_level5_path)
  end



  permit_params :title, :description, :main_title, :sub_title, :main_image, :awards,:main_description, :date ,:installation, :installation_image, :feature ,:feature_small_title,:feature_image1,:feature_image2,:feature_image3 ,:performance_title, :performance_detail,
  :comparison_title, :comparison_image, :interview_title, :interview_main_title,
  :interview_detail, :youtube_url, :installation_small_title, :description, :first_button, :second_button, :flat_image,
  :customer_benefit_title, :customer_benefit_detail,
  :remove_flat_image
end
