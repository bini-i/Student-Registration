class AddTotalCreditToStudents < ActiveRecord::Migration[7.0]
  def change
    add_column :students, :total_credit, :integer, default: 0
  end
end
