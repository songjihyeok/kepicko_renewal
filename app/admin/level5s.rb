ActiveAdmin.register Level5 do

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
  permit_params :title, :description, :main_title, :sub_title, :main_image, :awards,:main_description, :date ,:installation, :installation_image, :feature ,:feature_small_title,:feature_image1,:feature_image2,:feature_image3 ,:performance_title, :performance_detail,
  :comparison_title, :comparison_image, :interview_title, :interview_main_title,
  :interview_detail, :youtube_url, :installation_small_title, :description
end
