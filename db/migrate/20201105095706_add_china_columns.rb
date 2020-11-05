class AddChinaColumns < ActiveRecord::Migration[6.0]
  def change
        add_column :level0s, :china_title, :string
        add_column :level0s, :china_first_title, :string
        add_column :level0s, :china_second_title, :string
        add_column :level0s, :china_third_title, :string
        add_column :level0s, :china_first_description, :text
        add_column :level0s, :china_second_description, :text
        add_column :level0s, :china_third_description, :text
        add_column :level0s, :china_button, :string
        add_column :level0s, :china_name, :string
        add_column :level0s, :china_bold_name, :string
        add_column :level1s, :china_title, :string
        add_column :level1s, :china_description, :text
        add_column :level1s, :china_main_description, :text
        add_column :level1s, :china_button, :string
        add_column :level2s, :china_title, :string
        add_column :level2s, :china_description, :text
        add_column :level2s, :china_main_title, :string
        add_column :level2s, :china_sub_title, :string
        add_column :level3s, :china_title, :string
        add_column :level3s, :china_description   , :text
        add_column :level3s, :china_main_title   , :string
        add_column :level3s, :china_sub_title   , :string
        add_column :level3s, :china_slogan_first_row_first   , :string
        add_column :level3s, :china_slogan_first_row_second   , :string
        add_column :level3s, :china_slogan_second_row_first   , :string
        add_column :level3s, :china_slogan_second_row_second   , :string
        add_column :level3s, :china_slogan_third_row_first   , :string
        add_column :level3s, :china_slogan_third_row_second   , :string
        add_column :level3s, :china_slogan_description   , :string
        add_column :level3s, :china_character_title   , :string
        add_column :level3s, :china_skill_title   , :string
        add_column :level3s, :china_skill_first_title   , :string
        add_column :level3s, :china_skill_second_title   , :string
        add_column :level3s, :china_first_button   , :string
        add_column :level3s, :china_second_button   , :string
        add_column :level3s, :china_first_package_title   , :string
        add_column :level3s, :china_bold_package_title   , :string
        add_column :level3s, :china_second_package_title   , :string
        add_column :level3s, :china_overview   , :string
        add_column :level3s, :china_sub_description   , :string
        add_column :level4s, :china_main_title, :string
        add_column :level4s, :china_sub_title,  :string
        add_column :level4s, :china_character_title, :string
        add_column :level4s, :china_intro_title, :string
        add_column :level4s, :china_introduction, :text
        add_column :level4s, :china_composition, :string
        add_column :level4s, :china_perfomance_big, :string
        add_column :level4s, :china_perfomance_small, :string
        add_column :level4s, :china_control_big, :string
        add_column :level4s, :china_control_small, :string
        add_column :level4s, :china_intro_title_small, :string
        add_column :level4s, :china_description, :string
        add_column :level4s, :china_title, :string
        add_column :level4s, :china_first_button, :string
        add_column :level4s, :china_second_button, :string
        add_column :level5s, :china_main_title   , :string
        add_column :level5s, :china_sub_title  , :string
        add_column :level5s, :china_main_image  , :string
        add_column :level5s, :china_mobile_main_image  , :string
        add_column :level5s, :china_title, :string
        add_column :level5s, :china_awards  , :text
        add_column :level5s, :china_main_description, :text
        add_column :level5s, :china_date  , :text
        add_column :level5s, :china_installation  , :string
        add_column :level5s, :china_feature  , :string
        add_column :level5s, :china_feature_small_title  , :string
        add_column :level5s, :china_performance_title  , :string
        add_column :level5s, :china_performance_detail  , :text
        add_column :level5s, :china_comparison_title  , :string
        add_column :level5s, :china_interview_title  , :string
        add_column :level5s, :china_interview_main_title  , :string
        add_column :level5s, :china_interview_detail  , :text
        add_column :level5s, :china_youtube_url  , :string
        add_column :level5s, :china_installation_small_title  , :string
        add_column :level5s, :china_description  , :string
        add_column :level5s, :china_first_button  , :string
        add_column :level5s, :china_second_button  , :string
        add_column :level5s, :china_customer_benefit_title  , :string
        add_column :level5s, :china_customer_benefit_detail  , :text
        add_column :tech_intros, :china_title, :string
        add_column :tech_intros, :china_sub_title, :string
        add_column :tech_intros, :china_description, :text
        add_column :tech_components, :china_title, :string
        add_column :systems, :china_title ,:string
        add_column :systems, :china_sub_title, :string
        add_column :systems, :china_description, :text
        add_column :systems, :china_button, :string
        add_column :packages, :china_title, :string
        add_column :issues, :china_title, :string
        add_column :issues, :china_description, :text
        add_column :skill_firsts, :china_title, :string
        add_column :skill_firsts, :china_description, :text
        add_column :skill_firsts, :china_button, :string
        add_column :skill_seconds,:china_title, :string
        add_column :skill_seconds,:china_description, :text
        add_column :skill_seconds, :china_button, :string
        add_column :products, :china_title, :string
        add_column :products, :china_sub_title, :string
        add_column :products, :china_button, :string
        add_column :interviewers, :china_position, :string
        add_column :interviewers, :china_name, :string

  end
end
