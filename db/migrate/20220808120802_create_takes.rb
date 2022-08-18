class CreateTakes < ActiveRecord::Migration[7.0]
  def change
    create_table :takes do |t|
      t.references :student, null: false, foreign_key: true
      t.references :course, null: false, foreign_key: true
      t.integer :semester
      t.integer :year
      t.decimal :grade

      t.timestamps
    end
  end
end
