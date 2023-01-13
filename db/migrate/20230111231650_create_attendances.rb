class CreateAttendances < ActiveRecord::Migration[7.0]
  def change
    create_table :attendances do |t|
      t.date :date
      t.timestamp :timeEntrance
      t.timestamp :timeCheckout
      t.belongs_to :employee

      t.timestamps
    end
  end
end
