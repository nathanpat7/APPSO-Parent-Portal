class CreateAttendances < ActiveRecord::Migration[6.1]
  def change
    create_table :attendances do |t|
      t.string :index
      t.string :memID
      t.string :eventID

      t.timestamps
    end
  end
end
