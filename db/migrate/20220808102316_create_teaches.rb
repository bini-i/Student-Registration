class CreateTeaches < ActiveRecord::Migration[7.0]
  def change
    create_table :teaches do |t|
      t.references :user, null: false, foreign_key: true
      t.references :course, null: false, foreign_key: true
      t.integer :semester
      t.integer :year

      t.timestamps
    end
  end
end
