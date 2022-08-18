class AddYearToStudents < ActiveRecord::Migration[7.0]
  def change
    add_column :students, :year, :integer
  end
end
