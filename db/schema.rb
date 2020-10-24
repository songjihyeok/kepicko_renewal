# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_10_22_152543) do

  create_table "components", force: :cascade do |t|
    t.string "title"
    t.string "image"
    t.integer "level2_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "level1_id"
    t.index ["level1_id"], name: "index_components_on_level1_id"
  end

  create_table "interviewers", force: :cascade do |t|
    t.string "image"
    t.string "position"
    t.string "name"
    t.integer "level5_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "issues", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "level3_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "level0s", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_title"
    t.string "second_title"
    t.string "third_title"
    t.text "first_description"
    t.text "second_description"
    t.text "third_description"
    t.string "button"
    t.string "name"
    t.string "bold_name"
  end

  create_table "level1s", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "main_description"
    t.string "image"
    t.string "button"
  end

  create_table "level2s", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "main_title"
    t.string "sub_title"
    t.string "main_image"
  end

  create_table "level3s", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "main_title"
    t.string "sub_title"
    t.string "main_image"
    t.string "slogan_first_row_first"
    t.string "slogan_first_row_second"
    t.string "slogan_second_row_first"
    t.string "slogan_second_row_second"
    t.string "slogan_third_row_first"
    t.string "slogan_third_row_second"
    t.string "slogan_description"
    t.string "character_title"
    t.string "characteristics"
    t.string "sub_image"
    t.string "skill_title"
    t.string "skill_first_title"
    t.string "skill_second_title"
    t.string "first_button"
    t.string "second_button"
    t.string "first_package_title"
    t.string "bold_package_title"
    t.string "second_package_title"
    t.string "overview"
  end

  create_table "level4s", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "main_title"
    t.string "sub_title"
    t.string "character_title"
    t.string "character_image"
    t.string "intro_title"
    t.text "introduction"
    t.string "composition"
    t.string "composition_image"
    t.string "perfomance_big"
    t.string "perfomance_small"
    t.string "perfomance_image"
    t.string "control_big"
    t.string "control_small"
    t.string "control_image1"
    t.string "control_image2"
    t.string "control_image3"
    t.string "control_image4"
    t.string "intro_title_small"
    t.string "description"
    t.string "title"
    t.string "first_button"
    t.string "second_button"
  end

  create_table "level5s", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "main_title"
    t.string "sub_title"
    t.string "main_image"
    t.text "awards"
    t.text "main_description"
    t.text "date"
    t.string "installation"
    t.string "installation_image"
    t.string "feature"
    t.string "feature_small_title"
    t.string "feature_image1"
    t.string "feature_image2"
    t.string "feature_image3"
    t.string "performance_title"
    t.text "performance_detail"
    t.string "comparison_title"
    t.string "comparison_image"
    t.string "interview_title"
    t.string "interview_main_title"
    t.text "interview_detail"
    t.string "youtube_url"
    t.string "installation_small_title"
    t.string "description"
    t.string "title"
    t.string "first_button"
    t.string "second_button"
    t.string "mobile_main_image"
    t.string "flat_image"
    t.string "customer_benefit_title"
    t.text "customer_benefit_detail"
  end

  create_table "packages", force: :cascade do |t|
    t.string "image"
    t.string "title"
    t.integer "level3_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "level4_id"
    t.index ["level4_id"], name: "index_packages_on_level4_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "title"
    t.string "sub_title"
    t.string "image"
    t.integer "level4_id"
    t.integer "level5_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "button"
  end

  create_table "skill_firsts", force: :cascade do |t|
    t.string "title"
    t.string "image"
    t.text "description"
    t.integer "level3_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "button"
    t.string "link"
  end

  create_table "skill_seconds", force: :cascade do |t|
    t.string "title"
    t.string "image"
    t.text "description"
    t.integer "level3_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "button"
    t.string "link"
  end

  create_table "systems", force: :cascade do |t|
    t.string "title"
    t.string "sub_title"
    t.string "main_image"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "level2_id"
    t.string "button"
    t.integer "level3_id"
    t.index ["level2_id"], name: "index_systems_on_level2_id"
    t.index ["level3_id"], name: "index_systems_on_level3_id"
  end

  create_table "tech_components", force: :cascade do |t|
    t.string "title"
    t.string "image"
    t.integer "level1_id"
    t.integer "level0_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tech_intros", force: :cascade do |t|
    t.string "title"
    t.string "image"
    t.string "sub_title"
    t.text "description"
    t.integer "level1_id"
    t.integer "level0_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
