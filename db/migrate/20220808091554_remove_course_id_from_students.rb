class RemoveCourseIdFromStudents < ActiveRecord::Migration[7.0]
  def change
    remove_column :students, :course_id, :bigint
  end
end
