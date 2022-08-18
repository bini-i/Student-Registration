class AddCreditsToCourses < ActiveRecord::Migration[7.0]
  def change
    add_column :courses, :credits, :integer, null: false, default: 0
  end
end
