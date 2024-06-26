class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.integer :age
      t.string :department

      t.timestamps
    end
    add_primary_key :employees, :id
    add_foreign_key :employees, :department
  end
end
