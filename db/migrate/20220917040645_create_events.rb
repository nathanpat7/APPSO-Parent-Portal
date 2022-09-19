class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :eventID
      t.string :name
      t.string :time
      t.string :description

      t.timestamps
    end
  end
end
