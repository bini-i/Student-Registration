class AddCourseCodeToCourse < ActiveRecord::Migration[7.0]
  def change
    add_column :courses, :course_code, :string, null: false, default: "default course code"
    change_column :courses, :course_code, :string, null: false, default: nil
  end
end




