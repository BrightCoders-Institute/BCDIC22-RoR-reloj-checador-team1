class CreateAdmins < ActiveRecord::Migration[7.0]
  def change
    create_table :admins do |t|
      t.integer :admin
      t.integer :privateNumber

      t.timestamps
    end
  end
end
