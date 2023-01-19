class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :email
      t.string :position
      t.integer :privateNumber
      t.boolean :statusActive
      t.belongs_to :store

      t.timestamps
    end
  end
end
