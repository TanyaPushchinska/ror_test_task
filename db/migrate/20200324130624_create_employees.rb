class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.boolean :active
      t.string :department_id

      t.timestamps
    end
  end
end
