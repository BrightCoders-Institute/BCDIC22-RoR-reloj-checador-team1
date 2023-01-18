class CreateAttendances < ActiveRecord::Migration[7.0]
  def change
    create_table :attendances do |t|
      t.string :direction
      t.belongs_to :employee

      t.timestamps
    end
  end
end
