class CreateStandards < ActiveRecord::Migration[7.0]
  def change
    create_table :standards do |t|
      t.string :name

      t.timestamps
    end
  end
end
