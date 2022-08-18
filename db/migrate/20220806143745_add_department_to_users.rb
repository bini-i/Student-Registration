class AddDepartmentToUsers < ActiveRecord::Migration[7.0]
  def up
    default_department_id = Class.new(ApplicationRecord)
                            .tap { |c| c.table_name = :departments }
                            .find_or_create_by(department_name: 'Default department')
                            .id
    add_reference :users, :department, null: false, foreign_key: true, default: default_department_id
    change_column_default :users, :department_id, nil
  end

  def down
    remove_reference :users, :group
  end
end
